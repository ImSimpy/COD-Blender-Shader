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
; shader hash: b0c48110e49e01e247f590d12a6d9809
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
  %136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %137 = extractvalue %dx.types.ResRet.i32 %136, 0
  %138 = extractvalue %dx.types.ResRet.i32 %136, 1
  %139 = extractvalue %dx.types.ResRet.i32 %136, 2
  %140 = extractvalue %dx.types.ResRet.i32 %136, 3
  %141 = bitcast i32 %137 to float
  %142 = bitcast i32 %138 to float
  %143 = bitcast i32 %139 to float
  %144 = bitcast i32 %140 to float
  %145 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %146 = call float @dx.op.unary.f32(i32 25, float %145)  ; Rsqrt(value)
  %147 = fmul fast float %146, %88
  %148 = fmul fast float %146, %89
  %149 = fmul fast float %146, %90
  %150 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %151 = call float @dx.op.unary.f32(i32 25, float %150)  ; Rsqrt(value)
  %152 = fmul fast float %151, %133
  %153 = fmul fast float %151, %134
  %154 = fmul fast float %151, %135
  %155 = call float @dx.op.dot3.f32(i32 55, float %152, float %153, float %154, float %147, float %148, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %156 = fmul fast float %155, %155
  %157 = fmul fast float %156, %143
  %158 = fadd fast float %157, %144
  %159 = call float @dx.op.unary.f32(i32 7, float %158)  ; Saturate(value)
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 3
  %162 = fmul fast float %161, %150
  %163 = fsub fast float %141, %162
  %164 = fmul fast float %163, %142
  %165 = call float @dx.op.unary.f32(i32 7, float %164)  ; Saturate(value)
  %166 = fmul fast float %165, %159
  %167 = fmul fast float %85, 5.000000e-01
  %168 = fmul fast float %86, 5.000000e-01
  %169 = fptosi float %167 to i32
  %170 = fptosi float %168 to i32
  %171 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %169, i32 %170, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = lshr i32 %172, 18
  %174 = uitofp i32 %173 to float
  %175 = fmul fast float %174, 0x3F4C00EBA0000000
  %176 = call float @dx.op.unary.f32(i32 21, float %175)  ; Exp(value)
  %177 = fadd fast float %176, -1.000000e+00
  %178 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %179 = extractvalue %dx.types.Dimensions %178, 0
  %180 = sitofp i32 %179 to float
  %181 = extractvalue %dx.types.Dimensions %178, 1
  %182 = sitofp i32 %181 to float
  %183 = fcmp fast oge float %167, %180
  %184 = fcmp fast oge float %168, %182
  %185 = or i1 %183, %184
  %186 = select i1 %185, float 0x4197782600000000, float %177
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %189 = extractvalue %dx.types.CBufRet.f32 %187, 3
  %190 = fmul fast float %188, %85
  %191 = fmul fast float %189, %86
  %192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = and i32 %193, 114688
  %195 = icmp ne i32 %194, 0
  %196 = select i1 %195, float %190, float 0.000000e+00
  %197 = select i1 %195, float %191, float 0.000000e+00
  %198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %196, float %197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 0
  %200 = fmul fast float %199, 2.550000e+02
  %201 = fptoui float %200 to i32
  %202 = select i1 %195, i32 %201, i32 0
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.i32 %204, 3
  %206 = and i32 %205, 3
  %207 = icmp ne i32 %206, 0
  %208 = and i32 %205, 4
  %209 = icmp ne i32 %208, 0
  %210 = and i1 %207, %209
  br i1 %210, label %211, label %222

; <label>:211                                     ; preds = %0
  %212 = extractvalue %dx.types.CBufRet.f32 %203, 3
  %213 = fmul fast float %212, %86
  %214 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %215 = fmul fast float %214, %85
  %216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %215, float %213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = fsub fast float 1.000000e+00, %217
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %221 = fcmp fast olt float %218, %220
  br label %225

; <label>:222                                     ; preds = %0
  %223 = icmp eq i32 %208, 0
  %224 = and i1 %207, %223
  br label %225

; <label>:225                                     ; preds = %222, %211
  %226 = phi i1 [ %221, %211 ], [ %224, %222 ]
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 2
  %229 = fmul fast float %228, 0x3FE3C6EF40000000
  %230 = frem fast float %85, 2.560000e+02
  %231 = frem fast float %86, 2.560000e+02
  %232 = fptoui float %230 to i32
  %233 = fptoui float %231 to i32
  %234 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %232, i32 %233, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = extractvalue %dx.types.ResRet.f32 %234, 2
  %237 = fadd fast float %235, %229
  %238 = fadd fast float %236, %229
  %239 = call float @dx.op.unary.f32(i32 22, float %237)  ; Frc(value)
  %240 = call float @dx.op.unary.f32(i32 22, float %238)  ; Frc(value)
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = shl i32 %242, 4
  %244 = and i32 %243, 32752
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %242, 7
  %247 = and i32 %246, 32752
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %242, 22
  %250 = shl nuw nsw i32 %249, 5
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = and i32 %253, 255
  %255 = uitofp i32 %254 to float
  %256 = fmul fast float %255, 0x3F70101020000000
  %257 = lshr i32 %253, 8
  %258 = and i32 %257, 255
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F70101020000000
  %261 = lshr i32 %253, 16
  %262 = and i32 %261, 255
  %263 = uitofp i32 %262 to float
  %264 = fmul fast float %263, 0x3F70101020000000
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 65535
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %266, 16
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = and i32 %272, 65535
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = lshr i32 %272, 16
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = fmul fast float %274, 0x3F50624DE0000000
  %278 = fmul fast float %276, 0x3F50624DE0000000
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = and i32 %280, 2
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %290, label %283

; <label>:283                                     ; preds = %225
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = add i32 %285, 0
  %287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %286, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %288 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %287, %dx.types.Handle %82, float %71, float %72, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 3
  br label %290

; <label>:290                                     ; preds = %283, %225
  %291 = phi float [ 1.000000e+00, %225 ], [ %289, %283 ]
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = or i32 %295, %293
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %911, label %298

; <label>:298                                     ; preds = %290
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = lshr i32 %300, 16
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = fmul fast float %302, 0x3F50624DE0000000
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = lshr i32 %305, 16
  %307 = and i32 %306, 255
  %308 = lshr i32 %305, 24
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 65535
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %310, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = lshr i32 %316, 22
  %318 = shl nuw nsw i32 %317, 5
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = shl i32 %316, 4
  %321 = and i32 %320, 32752
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %316, 7
  %324 = and i32 %323, 32752
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 3
  %328 = fmul fast float %327, 1.000000e+03
  %329 = fmul fast float %277, %328
  %330 = call float @dx.op.unary.f32(i32 22, float %329)  ; Frc(value)
  %331 = fadd fast float %330, %268
  %332 = fmul fast float %278, %328
  %333 = call float @dx.op.unary.f32(i32 22, float %332)  ; Frc(value)
  %334 = fadd fast float %333, %270
  %335 = fmul fast float %303, %328
  %336 = call float @dx.op.unary.f32(i32 22, float %335)  ; Frc(value)
  %337 = fmul fast float %336, 0x401921FB60000000
  %338 = fadd fast float %337, %319
  %339 = call float @dx.op.unary.f32(i32 13, float %338)  ; Sin(value)
  %340 = call float @dx.op.unary.f32(i32 12, float %338)  ; Cos(value)
  %341 = fsub fast float -0.000000e+00, %339
  %342 = fadd fast float %71, -5.000000e-01
  %343 = fadd fast float %72, -5.000000e-01
  %344 = fmul fast float %312, %342
  %345 = fmul fast float %314, %343
  %346 = fadd fast float %344, 5.000000e-01
  %347 = fadd fast float %345, 5.000000e-01
  %348 = fmul fast float %322, %346
  %349 = fmul fast float %325, %347
  %350 = fmul fast float %340, %348
  %351 = call float @dx.op.tertiary.f32(i32 46, float %341, float %349, float %350)  ; FMad(a,b,c)
  %352 = fmul fast float %339, %348
  %353 = call float @dx.op.tertiary.f32(i32 46, float %340, float %349, float %352)  ; FMad(a,b,c)
  %354 = fadd fast float %331, %351
  %355 = fadd fast float %334, %353
  %356 = icmp ugt i32 %307, 1
  %357 = icmp ugt i32 %305, 33554431
  %358 = or i1 %357, %356
  br i1 %358, label %359, label %383

; <label>:359                                     ; preds = %298
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = lshr i32 %361, 16
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = fmul fast float %327, %363
  %365 = call float @dx.op.unary.f32(i32 22, float %364)  ; Frc(value)
  %366 = mul nuw nsw i32 %307, %308
  %367 = uitofp i32 %366 to float
  %368 = fmul fast float %365, %367
  %369 = call float @dx.op.unary.f32(i32 27, float %368)  ; Round_ni(value)
  %370 = fptoui float %369 to i32
  %371 = urem i32 %370, %307
  %372 = udiv i32 %370, %308
  %373 = call float @dx.op.unary.f32(i32 22, float %354)  ; Frc(value)
  %374 = call float @dx.op.unary.f32(i32 22, float %355)  ; Frc(value)
  %375 = uitofp i32 %371 to float
  %376 = uitofp i32 %372 to float
  %377 = fadd fast float %373, %375
  %378 = fadd fast float %374, %376
  %379 = uitofp i32 %307 to float
  %380 = uitofp i32 %308 to float
  %381 = fdiv fast float %377, %379
  %382 = fdiv fast float %378, %380
  br label %383

; <label>:383                                     ; preds = %359, %298
  %384 = phi float [ %381, %359 ], [ %354, %298 ]
  %385 = phi float [ %382, %359 ], [ %355, %298 ]
  %386 = and i32 %293, 256
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %432, label %388

; <label>:388                                     ; preds = %383
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = add i32 %390, 0
  %392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %393 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %392, %dx.types.Handle %82, float %384, float %385, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %394 = extractvalue %dx.types.ResRet.f32 %393, 0
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = shl i32 %396, 4
  %398 = and i32 %397, 32752
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = lshr i32 %396, 7
  %401 = and i32 %400, 32752
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = fsub fast float 1.000000e+00, %291
  %404 = call float @dx.op.binary.f32(i32 35, float %403, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %405 = bitcast float %291 to i32
  %406 = sitofp i32 %405 to float
  %407 = fadd fast float %406, 0xC1CFBF8940000000
  %408 = fmul fast float %402, %407
  %409 = fadd fast float %408, 0x41CFBF8940000000
  %410 = fptosi float %409 to i32
  %411 = bitcast i32 %410 to float
  %412 = bitcast float %404 to i32
  %413 = sitofp i32 %412 to float
  %414 = fadd fast float %413, 0xC1CFBF8940000000
  %415 = fmul fast float %414, %402
  %416 = fadd fast float %415, 0x41CFBF8940000000
  %417 = fptosi float %416 to i32
  %418 = bitcast i32 %417 to float
  %419 = fmul fast float %411, %399
  %420 = fmul fast float %418, %399
  %421 = fsub fast float %404, %419
  %422 = fadd fast float %420, %404
  %423 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  %424 = call float @dx.op.unary.f32(i32 7, float %422)  ; Saturate(value)
  %425 = fsub fast float %394, %423
  %426 = fsub fast float %424, %423
  %427 = bitcast float %426 to i32
  %428 = sub nsw i32 2129859010, %427
  %429 = bitcast i32 %428 to float
  %430 = fmul fast float %429, %425
  %431 = call float @dx.op.unary.f32(i32 7, float %430)  ; Saturate(value)
  br label %432

; <label>:432                                     ; preds = %388, %383
  %433 = phi float [ %431, %388 ], [ %291, %383 ]
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 128
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %453, label %438

; <label>:438                                     ; preds = %432
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 180, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = add i32 %440, 0
  %442 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %441, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %443 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %442, %dx.types.Handle %82, float %384, float %385, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %444 = extractvalue %dx.types.ResRet.f32 %443, 0
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 524288
  %448 = icmp ne i32 %447, 0
  %449 = fcmp fast ogt float %444, 0x3FE0101020000000
  %450 = select i1 %449, float 1.000000e+00, float 0.000000e+00
  %451 = select i1 %448, float %450, float %444
  %452 = fmul fast float %451, %433
  br label %453

; <label>:453                                     ; preds = %438, %432
  %454 = phi float [ %452, %438 ], [ %433, %432 ]
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = and i32 %456, 16
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %652, label %459

; <label>:459                                     ; preds = %453
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = add i32 %463, 0
  %465 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %464, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %466 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %465, %dx.types.Handle %81, float %384, float %385, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 0
  %468 = extractvalue %dx.types.ResRet.f32 %466, 1
  %469 = extractvalue %dx.types.ResRet.f32 %466, 2
  %470 = extractvalue %dx.types.ResRet.f32 %466, 3
  %471 = and i32 %461, 255
  %472 = uitofp i32 %471 to float
  %473 = lshr i32 %461, 8
  %474 = and i32 %473, 255
  %475 = uitofp i32 %474 to float
  %476 = fmul fast float %470, %472
  %477 = fadd fast float %476, %475
  %478 = fmul fast float %477, 0x3F70101000000000
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = and i32 %480, 512
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %490, label %483

; <label>:483                                     ; preds = %459
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = add i32 %485, 0
  %487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %487, %dx.types.Handle %82, float %384, float %385, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %489 = extractvalue %dx.types.ResRet.f32 %488, 0
  br label %490

; <label>:490                                     ; preds = %483, %459
  %491 = phi float [ %489, %483 ], [ 1.000000e+00, %459 ]
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = and i32 %493, 33554432
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %599, label %496

; <label>:496                                     ; preds = %490
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = and i32 %498, 65535
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = lshr i32 %498, 16
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.i32 %503, 0
  %505 = and i32 %504, 65535
  %506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %505)  ; LegacyF16ToF32(value)
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = lshr i32 %508, 24
  %510 = uitofp i32 %509 to float
  %511 = fmul fast float %510, 0x3F70101020000000
  %512 = and i32 %508, 255
  %513 = uitofp i32 %512 to float
  %514 = fmul fast float %513, 0x3F70101020000000
  %515 = lshr i32 %508, 8
  %516 = and i32 %515, 255
  %517 = uitofp i32 %516 to float
  %518 = fmul fast float %517, 0x3F70101020000000
  %519 = lshr i32 %508, 16
  %520 = and i32 %519, 255
  %521 = uitofp i32 %520 to float
  %522 = fmul fast float %521, 0x3F70101020000000
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = lshr i32 %524, 24
  %526 = uitofp i32 %525 to float
  %527 = fmul fast float %526, 0x3F70101020000000
  %528 = and i32 %524, 255
  %529 = uitofp i32 %528 to float
  %530 = fmul fast float %529, 0x3F70101020000000
  %531 = lshr i32 %524, 8
  %532 = and i32 %531, 255
  %533 = uitofp i32 %532 to float
  %534 = fmul fast float %533, 0x3F70101020000000
  %535 = lshr i32 %524, 16
  %536 = and i32 %535, 255
  %537 = uitofp i32 %536 to float
  %538 = fmul fast float %537, 0x3F70101020000000
  %539 = bitcast float %467 to i32
  %540 = ashr i32 %539, 1
  %541 = sub nsw i32 1597463174, %540
  %542 = bitcast i32 %541 to float
  %543 = fmul fast float %467, 5.000000e-01
  %544 = fmul fast float %542, %542
  %545 = fmul fast float %544, %543
  %546 = fsub fast float 1.500000e+00, %545
  %547 = fmul fast float %542, %467
  %548 = fmul fast float %547, %546
  %549 = bitcast float %468 to i32
  %550 = ashr i32 %549, 1
  %551 = sub nsw i32 1597463174, %550
  %552 = bitcast i32 %551 to float
  %553 = fmul fast float %468, 5.000000e-01
  %554 = fmul fast float %552, %552
  %555 = fmul fast float %554, %553
  %556 = fsub fast float 1.500000e+00, %555
  %557 = fmul fast float %552, %468
  %558 = fmul fast float %557, %556
  %559 = bitcast float %469 to i32
  %560 = ashr i32 %559, 1
  %561 = sub nsw i32 1597463174, %560
  %562 = bitcast i32 %561 to float
  %563 = fmul fast float %469, 5.000000e-01
  %564 = fmul fast float %562, %562
  %565 = fmul fast float %564, %563
  %566 = fsub fast float 1.500000e+00, %565
  %567 = fmul fast float %562, %469
  %568 = fmul fast float %567, %566
  %569 = fsub fast float %548, %530
  %570 = fsub fast float %558, %534
  %571 = fsub fast float %568, %538
  %572 = fmul fast float %569, %500
  %573 = fmul fast float %570, %502
  %574 = fmul fast float %571, %506
  %575 = fadd fast float %572, %514
  %576 = fadd fast float %573, %518
  %577 = fadd fast float %574, %522
  %578 = call float @dx.op.unary.f32(i32 7, float %575)  ; Saturate(value)
  %579 = call float @dx.op.unary.f32(i32 7, float %576)  ; Saturate(value)
  %580 = call float @dx.op.unary.f32(i32 7, float %577)  ; Saturate(value)
  %581 = fmul fast float %578, %578
  %582 = fmul fast float %579, %579
  %583 = fmul fast float %580, %580
  %584 = fsub fast float %581, %467
  %585 = fsub fast float %582, %468
  %586 = fsub fast float %583, %469
  %587 = fmul fast float %584, %491
  %588 = fmul fast float %585, %491
  %589 = fmul fast float %586, %491
  %590 = fadd fast float %587, %467
  %591 = fadd fast float %588, %468
  %592 = fadd fast float %589, %469
  %593 = fadd fast float %511, %478
  %594 = fsub fast float %593, %527
  %595 = call float @dx.op.unary.f32(i32 7, float %594)  ; Saturate(value)
  %596 = fsub fast float %595, %478
  %597 = fmul fast float %596, %491
  %598 = fadd fast float %597, %478
  br label %652

; <label>:599                                     ; preds = %490
  %600 = and i32 %493, 134217728
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %636, label %602

; <label>:602                                     ; preds = %599
  %603 = call float @dx.op.unary.f32(i32 24, float %256)  ; Sqrt(value)
  %604 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %605 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %606 = fadd fast float %603, -5.000000e-01
  %607 = fadd fast float %604, -5.000000e-01
  %608 = fadd fast float %605, -5.000000e-01
  %609 = fmul fast float %606, %491
  %610 = fmul fast float %607, %491
  %611 = fmul fast float %608, %491
  %612 = fadd fast float %609, 5.000000e-01
  %613 = fadd fast float %610, 5.000000e-01
  %614 = fadd fast float %611, 5.000000e-01
  %615 = call float @dx.op.unary.f32(i32 24, float %467)  ; Sqrt(value)
  %616 = call float @dx.op.unary.f32(i32 24, float %468)  ; Sqrt(value)
  %617 = call float @dx.op.unary.f32(i32 24, float %469)  ; Sqrt(value)
  %618 = fmul fast float %612, 2.000000e+00
  %619 = fsub fast float 1.000000e+00, %618
  %620 = fmul fast float %619, %615
  %621 = fadd fast float %620, %618
  %622 = fmul fast float %621, %615
  %623 = fmul fast float %613, 2.000000e+00
  %624 = fsub fast float 1.000000e+00, %623
  %625 = fmul fast float %624, %616
  %626 = fadd fast float %625, %623
  %627 = fmul fast float %626, %616
  %628 = fmul fast float %614, 2.000000e+00
  %629 = fsub fast float 1.000000e+00, %628
  %630 = fmul fast float %629, %617
  %631 = fadd fast float %630, %628
  %632 = fmul fast float %631, %617
  %633 = fmul fast float %622, %622
  %634 = fmul fast float %627, %627
  %635 = fmul fast float %632, %632
  br label %652

; <label>:636                                     ; preds = %599
  %637 = fmul fast float %256, %256
  %638 = fmul fast float %260, %260
  %639 = fmul fast float %264, %264
  %640 = fadd fast float %637, -1.000000e+00
  %641 = fadd fast float %638, -1.000000e+00
  %642 = fadd fast float %639, -1.000000e+00
  %643 = fmul fast float %491, %640
  %644 = fmul fast float %491, %641
  %645 = fmul fast float %491, %642
  %646 = fadd fast float %643, 1.000000e+00
  %647 = fadd fast float %644, 1.000000e+00
  %648 = fadd fast float %645, 1.000000e+00
  %649 = fmul fast float %646, %467
  %650 = fmul fast float %647, %468
  %651 = fmul fast float %648, %469
  br label %652

; <label>:652                                     ; preds = %636, %602, %496, %453
  %653 = phi float [ %598, %496 ], [ %478, %602 ], [ %478, %636 ], [ 0x3FA23C0BE0000000, %453 ]
  %654 = phi float [ %590, %496 ], [ %633, %602 ], [ %649, %636 ], [ 1.000000e+00, %453 ]
  %655 = phi float [ %591, %496 ], [ %634, %602 ], [ %650, %636 ], [ 1.000000e+00, %453 ]
  %656 = phi float [ %592, %496 ], [ %635, %602 ], [ %651, %636 ], [ 1.000000e+00, %453 ]
  %657 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.i32 %657, 1
  %659 = and i32 %658, 1
  %660 = icmp ne i32 %659, 0
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = and i32 %662, 32
  %664 = icmp ne i32 %663, 0
  %665 = and i1 %660, %664
  %666 = select i1 %665, float 1.000000e+00, float %654
  %667 = select i1 %665, float 0x3FD3333340000000, float %655
  %668 = select i1 %665, float 0x3FD3333340000000, float %656
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = and i32 %670, 32
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %742, label %673

; <label>:673                                     ; preds = %652
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = add i32 %677, 0
  %679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %678, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %680 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %679, %dx.types.Handle %81, float %384, float %385, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %681 = extractvalue %dx.types.ResRet.f32 %680, 0
  %682 = extractvalue %dx.types.ResRet.f32 %680, 1
  %683 = extractvalue %dx.types.ResRet.f32 %680, 2
  %684 = extractvalue %dx.types.ResRet.f32 %680, 3
  %685 = and i32 %675, 255
  %686 = uitofp i32 %685 to float
  %687 = lshr i32 %675, 8
  %688 = and i32 %687, 255
  %689 = uitofp i32 %688 to float
  %690 = lshr i32 %675, 16
  %691 = and i32 %690, 255
  %692 = uitofp i32 %691 to float
  %693 = fmul fast float %692, 0x3F70101000000000
  %694 = fmul fast float %681, %686
  %695 = fadd fast float %694, %689
  %696 = fmul fast float %695, 0x3F70101000000000
  %697 = fadd fast float %682, -5.000000e-01
  %698 = fadd fast float %684, -5.000000e-01
  %699 = fmul fast float %697, %693
  %700 = fmul fast float %698, %693
  %701 = fadd fast float %699, 5.000000e-01
  %702 = fadd fast float %700, 5.000000e-01
  %703 = fmul fast float %701, 2.000000e+00
  %704 = fadd fast float %703, -1.000000e+00
  %705 = fmul fast float %702, 2.000000e+00
  %706 = fadd fast float %705, -1.000000e+00
  %707 = fadd fast float %704, %706
  %708 = fmul fast float %707, 5.000000e-01
  %709 = fsub fast float %704, %706
  %710 = fmul fast float %709, 5.000000e-01
  %711 = call float @dx.op.unary.f32(i32 6, float %708)  ; FAbs(value)
  %712 = fsub fast float 1.000000e+00, %711
  %713 = call float @dx.op.unary.f32(i32 6, float %710)  ; FAbs(value)
  %714 = fsub fast float %712, %713
  %715 = call float @dx.op.dot3.f32(i32 55, float %708, float %710, float %714, float %708, float %710, float %714)  ; Dot3(ax,ay,az,bx,by,bz)
  %716 = call float @dx.op.unary.f32(i32 25, float %715)  ; Rsqrt(value)
  %717 = fmul fast float %708, %716
  %718 = fmul fast float %710, %716
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = and i32 %720, 67108864
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %738, label %723

; <label>:723                                     ; preds = %673
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = and i32 %725, 65535
  %727 = call float @dx.op.legacyF16ToF32(i32 131, i32 %726)  ; LegacyF16ToF32(value)
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 65535
  %731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %730)  ; LegacyF16ToF32(value)
  %732 = lshr i32 %725, 16
  %733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %732)  ; LegacyF16ToF32(value)
  %734 = fsub fast float %696, %733
  %735 = fmul fast float %734, %727
  %736 = fadd fast float %735, %731
  %737 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  br label %738

; <label>:738                                     ; preds = %723, %673
  %739 = phi float [ %737, %723 ], [ %696, %673 ]
  %740 = call float @dx.op.dot2.f32(i32 54, float %717, float %718, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %741 = call float @dx.op.dot2.f32(i32 54, float %717, float %718, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %742

; <label>:742                                     ; preds = %738, %652
  %743 = phi float [ %739, %738 ], [ 0x3FD6666660000000, %652 ]
  %744 = phi float [ %740, %738 ], [ 0.000000e+00, %652 ]
  %745 = phi float [ %741, %738 ], [ 0.000000e+00, %652 ]
  %746 = phi float [ %683, %738 ], [ 1.000000e+00, %652 ]
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = lshr i32 %748, 22
  %750 = shl nuw nsw i32 %749, 5
  %751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %750)  ; LegacyF16ToF32(value)
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = and i32 %753, 64
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %788, label %756

; <label>:756                                     ; preds = %742
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 176, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = add i32 %758, 0
  %760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %759, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = and i32 %762, 131072
  %764 = icmp eq i32 %763, 0
  %765 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %760, %dx.types.Handle %81, float %384, float %385, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %766 = extractvalue %dx.types.ResRet.f32 %765, 0
  %767 = extractvalue %dx.types.ResRet.f32 %765, 1
  %768 = extractvalue %dx.types.ResRet.f32 %765, 2
  %769 = fmul fast float %766, %245
  %770 = fmul fast float %767, %248
  %771 = fmul fast float %768, %251
  br i1 %764, label %778, label %772

; <label>:772                                     ; preds = %756
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 0
  %775 = fmul fast float %774, %769
  %776 = fmul fast float %774, %770
  %777 = fmul fast float %774, %771
  br label %778

; <label>:778                                     ; preds = %772, %756
  %779 = phi float [ %775, %772 ], [ %769, %756 ]
  %780 = phi float [ %776, %772 ], [ %770, %756 ]
  %781 = phi float [ %777, %772 ], [ %771, %756 ]
  %782 = fmul fast float %779, %751
  %783 = select i1 %226, float %782, float %779
  %784 = call float @dx.op.dot3.f32(i32 55, float %783, float %780, float %781, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %785 = select i1 %226, float 0.000000e+00, float %779
  %786 = select i1 %226, float %784, float %780
  %787 = select i1 %226, float 0.000000e+00, float %781
  br label %788

; <label>:788                                     ; preds = %778, %742
  %789 = phi float [ %785, %778 ], [ 0.000000e+00, %742 ]
  %790 = phi float [ %786, %778 ], [ 0.000000e+00, %742 ]
  %791 = phi float [ %787, %778 ], [ 0.000000e+00, %742 ]
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = and i32 %793, 1024
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %824, label %796

; <label>:796                                     ; preds = %788
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = and i32 %798, 255
  %800 = uitofp i32 %799 to float
  %801 = fmul fast float %800, 0x3F70101020000000
  %802 = lshr i32 %798, 8
  %803 = and i32 %802, 255
  %804 = uitofp i32 %803 to float
  %805 = fmul fast float %804, 0x3F70101020000000
  %806 = lshr i32 %798, 16
  %807 = and i32 %806, 255
  %808 = uitofp i32 %807 to float
  %809 = fmul fast float %808, 0x3F70101020000000
  %810 = fmul fast float %801, %801
  %811 = fmul fast float %805, %805
  %812 = fmul fast float %809, %809
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 192, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = add i32 %814, 0
  %816 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %815, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %817 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %816, %dx.types.Handle %82, float %384, float %385, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %818 = extractvalue %dx.types.ResRet.f32 %817, 0
  %819 = extractvalue %dx.types.ResRet.f32 %817, 1
  %820 = extractvalue %dx.types.ResRet.f32 %817, 2
  %821 = fmul fast float %810, %818
  %822 = fmul fast float %811, %819
  %823 = fmul fast float %812, %820
  br label %824

; <label>:824                                     ; preds = %796, %788
  %825 = phi float [ %821, %796 ], [ 0.000000e+00, %788 ]
  %826 = phi float [ %822, %796 ], [ 0.000000e+00, %788 ]
  %827 = phi float [ %823, %796 ], [ 0.000000e+00, %788 ]
  %828 = fcmp fast ogt float %825, 0.000000e+00
  %829 = fcmp fast ogt float %826, 0.000000e+00
  %830 = fcmp fast ogt float %827, 0.000000e+00
  %831 = call float @dx.op.unary.f32(i32 23, float %825)  ; Log(value)
  %832 = call float @dx.op.unary.f32(i32 23, float %826)  ; Log(value)
  %833 = call float @dx.op.unary.f32(i32 23, float %827)  ; Log(value)
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = lshr i32 %835, 7
  %837 = and i32 %836, 32752
  %838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %837)  ; LegacyF16ToF32(value)
  %839 = fmul fast float %831, 0xBFE62E4300000000
  %840 = fmul fast float %839, %838
  %841 = fmul fast float %832, 0xBFE62E4300000000
  %842 = fmul fast float %841, %838
  %843 = fmul fast float %833, 0xBFE62E4300000000
  %844 = fmul fast float %843, %838
  %845 = select i1 %828, float %840, float 1.270000e+02
  %846 = select i1 %829, float %842, float 1.270000e+02
  %847 = select i1 %830, float %844, float 1.270000e+02
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = and i32 %849, 10240
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %894, label %852

; <label>:852                                     ; preds = %824
  %853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.i32 %853, 0
  %855 = add i32 %854, 0
  %856 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %855, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %857 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %856, %dx.types.Handle %82, float %384, float %385, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %858 = extractvalue %dx.types.ResRet.f32 %857, 1
  %859 = extractvalue %dx.types.ResRet.f32 %857, 3
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = and i32 %861, 1048576
  %863 = icmp ne i32 %862, 0
  %864 = and i32 %861, 8192
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %880, label %866

; <label>:866                                     ; preds = %852
  %867 = extractvalue %dx.types.ResRet.f32 %857, 2
  %868 = select i1 %863, float %867, float %858
  %869 = extractvalue %dx.types.ResRet.f32 %857, 0
  %870 = select i1 %863, float %869, float %858
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = lshr i32 %872, 16
  %874 = and i32 %873, 255
  %875 = uitofp i32 %874 to float
  %876 = fmul fast float %875, 0x3F80101020000000
  %877 = fmul fast float %876, %870
  %878 = fmul fast float %876, %858
  %879 = fmul fast float %876, %868
  br label %880

; <label>:880                                     ; preds = %866, %852
  %881 = phi float [ %877, %866 ], [ 0.000000e+00, %852 ]
  %882 = phi float [ %878, %866 ], [ 0.000000e+00, %852 ]
  %883 = phi float [ %879, %866 ], [ 0.000000e+00, %852 ]
  %884 = and i32 %861, 2048
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %894, label %886

; <label>:886                                     ; preds = %880
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = shl i32 %888, 4
  %890 = and i32 %889, 32752
  %891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %890)  ; LegacyF16ToF32(value)
  %892 = fmul fast float %891, %859
  %893 = call float @dx.op.binary.f32(i32 35, float %892, float 0x3F70101020000000)  ; FMax(a,b)
  br label %894

; <label>:894                                     ; preds = %886, %880, %824
  %895 = phi float [ %881, %886 ], [ %881, %880 ], [ 0.000000e+00, %824 ]
  %896 = phi float [ %882, %886 ], [ %882, %880 ], [ 0.000000e+00, %824 ]
  %897 = phi float [ %883, %886 ], [ %883, %880 ], [ 0.000000e+00, %824 ]
  %898 = phi float [ %893, %886 ], [ 0x3F70101020000000, %880 ], [ 0x3F70101020000000, %824 ]
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = and i32 %900, 255
  %902 = uitofp i32 %901 to float
  %903 = lshr i32 %900, 8
  %904 = and i32 %903, 255
  %905 = uitofp i32 %904 to float
  %906 = call float @dx.op.dot3.f32(i32 55, float %666, float %667, float %668, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %907 = fmul fast float %905, %906
  %908 = fadd fast float %907, %902
  %909 = fmul fast float %908, 0x3F70101020000000
  %910 = call float @dx.op.unary.f32(i32 7, float %909)  ; Saturate(value)
  br label %911

; <label>:911                                     ; preds = %894, %290
  %912 = phi float [ 0.000000e+00, %290 ], [ %744, %894 ]
  %913 = phi float [ 0.000000e+00, %290 ], [ %745, %894 ]
  %914 = phi float [ 0.000000e+00, %290 ], [ %666, %894 ]
  %915 = phi float [ 0.000000e+00, %290 ], [ %667, %894 ]
  %916 = phi float [ 0.000000e+00, %290 ], [ %668, %894 ]
  %917 = phi float [ 0.000000e+00, %290 ], [ %895, %894 ]
  %918 = phi float [ 0.000000e+00, %290 ], [ %896, %894 ]
  %919 = phi float [ 0.000000e+00, %290 ], [ %897, %894 ]
  %920 = phi float [ 0.000000e+00, %290 ], [ %789, %894 ]
  %921 = phi float [ 0.000000e+00, %290 ], [ %790, %894 ]
  %922 = phi float [ 0.000000e+00, %290 ], [ %791, %894 ]
  %923 = phi float [ 0.000000e+00, %290 ], [ %845, %894 ]
  %924 = phi float [ 0.000000e+00, %290 ], [ %846, %894 ]
  %925 = phi float [ 0.000000e+00, %290 ], [ %847, %894 ]
  %926 = phi float [ 0.000000e+00, %290 ], [ %653, %894 ]
  %927 = phi float [ 0.000000e+00, %290 ], [ %454, %894 ]
  %928 = phi float [ 0.000000e+00, %290 ], [ %743, %894 ]
  %929 = phi float [ 0.000000e+00, %290 ], [ %746, %894 ]
  %930 = phi float [ 0.000000e+00, %290 ], [ %898, %894 ]
  %931 = phi float [ 0.000000e+00, %290 ], [ %910, %894 ]
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 0
  %934 = call float @dx.op.dot2.f32(i32 54, float %912, float %913, float %912, float %913)  ; Dot2(ax,ay,bx,by)
  %935 = fmul fast float %934, 0x3FE3333340000000
  %936 = fsub fast float 1.000000e+00, %935
  %937 = call float @dx.op.dot3.f32(i32 55, float %912, float %913, float %936, float %912, float %913, float %936)  ; Dot3(ax,ay,az,bx,by,bz)
  %938 = call float @dx.op.unary.f32(i32 25, float %937)  ; Rsqrt(value)
  %939 = fmul fast float %938, %912
  %940 = fmul fast float %938, %913
  %941 = fmul fast float %936, %938
  %942 = fmul fast float %941, %88
  %943 = fmul fast float %941, %89
  %944 = fmul fast float %941, %90
  %945 = fmul fast float %939, %64
  %946 = fmul fast float %939, %65
  %947 = fmul fast float %939, %66
  %948 = fmul fast float %93, %67
  %949 = fmul fast float %948, %940
  %950 = fmul fast float %96, %67
  %951 = fmul fast float %950, %940
  %952 = fmul fast float %99, %67
  %953 = fmul fast float %952, %940
  %954 = fadd fast float %949, %945
  %955 = fmul fast float %954, %87
  %956 = fadd fast float %955, %942
  %957 = fadd fast float %951, %946
  %958 = fmul fast float %957, %87
  %959 = fadd fast float %958, %943
  %960 = fadd fast float %953, %947
  %961 = fmul fast float %960, %87
  %962 = fadd fast float %961, %944
  %963 = call float @dx.op.dot3.f32(i32 55, float %956, float %959, float %962, float %956, float %959, float %962)  ; Dot3(ax,ay,az,bx,by,bz)
  %964 = call float @dx.op.unary.f32(i32 25, float %963)  ; Rsqrt(value)
  %965 = fmul fast float %956, %964
  %966 = fmul fast float %959, %964
  %967 = fmul fast float %962, %964
  %968 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %969 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %970 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %971 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %972 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %973 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %974 = fadd fast float %968, %133
  %975 = fadd fast float %969, %134
  %976 = fadd fast float %970, %135
  %977 = fadd fast float %971, %133
  %978 = fadd fast float %972, %134
  %979 = fadd fast float %973, %135
  %980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %981 = extractvalue %dx.types.CBufRet.f32 %980, 0
  %982 = extractvalue %dx.types.CBufRet.f32 %980, 1
  %983 = extractvalue %dx.types.CBufRet.f32 %980, 2
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 2
  %986 = extractvalue %dx.types.CBufRet.f32 %984, 3
  %987 = fmul fast float %981, %85
  %988 = fmul fast float %987, %985
  %989 = fmul fast float %982, %86
  %990 = fmul fast float %989, %986
  %991 = fptoui float %988 to i32
  %992 = fptoui float %990 to i32
  %993 = fadd fast float %981, -1.000000e+00
  %994 = fadd fast float %982, -1.000000e+00
  %995 = fptoui float %993 to i32
  %996 = fptoui float %994 to i32
  %997 = call i32 @dx.op.binary.i32(i32 40, i32 %991, i32 %995)  ; UMin(a,b)
  %998 = call i32 @dx.op.binary.i32(i32 40, i32 %992, i32 %996)  ; UMin(a,b)
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 2
  %1001 = extractvalue %dx.types.CBufRet.f32 %999, 3
  %1002 = fmul fast float %1000, %76
  %1003 = fsub fast float %1002, %1001
  %1004 = fadd fast float %983, -1.000000e+00
  %1005 = call float @dx.op.binary.f32(i32 36, float %1003, float %1004)  ; FMin(a,b)
  %1006 = fptoui float %1005 to i32
  %1007 = fptoui float %981 to i32
  %1008 = fptoui float %982 to i32
  %1009 = mul i32 %1006, %1008
  %1010 = add i32 %1009, %998
  %1011 = mul i32 %1010, %1007
  %1012 = add i32 %1011, %997
  %1013 = shl i32 %1012, 2
  %1014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1013, i32 undef)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.i32 %1014, 0
  %1016 = and i32 %1015, 1023
  %1017 = lshr i32 %1015, 10
  %1018 = icmp eq i32 %1016, 0
  br i1 %1018, label %1522, label %1019

; <label>:1019                                    ; preds = %911
  %1020 = and i32 %1015, 1023
  br label %1021

; <label>:1021                                    ; preds = %1153, %1019
  %1022 = phi float [ %1154, %1153 ], [ 0.000000e+00, %1019 ]
  %1023 = phi float [ %1155, %1153 ], [ %933, %1019 ]
  %1024 = phi float [ %1156, %1153 ], [ %931, %1019 ]
  %1025 = phi float [ %1157, %1153 ], [ %923, %1019 ]
  %1026 = phi float [ %1158, %1153 ], [ %924, %1019 ]
  %1027 = phi float [ %1159, %1153 ], [ %925, %1019 ]
  %1028 = phi float [ %1160, %1153 ], [ 0.000000e+00, %1019 ]
  %1029 = phi float [ %1161, %1153 ], [ 0.000000e+00, %1019 ]
  %1030 = phi float [ %1162, %1153 ], [ %917, %1019 ]
  %1031 = phi float [ %1163, %1153 ], [ %918, %1019 ]
  %1032 = phi float [ %1164, %1153 ], [ %919, %1019 ]
  %1033 = phi float [ %1165, %1153 ], [ %920, %1019 ]
  %1034 = phi float [ %1166, %1153 ], [ %921, %1019 ]
  %1035 = phi float [ %1167, %1153 ], [ %922, %1019 ]
  %1036 = phi float [ %1168, %1153 ], [ %965, %1019 ]
  %1037 = phi float [ %1169, %1153 ], [ %966, %1019 ]
  %1038 = phi float [ %1170, %1153 ], [ %967, %1019 ]
  %1039 = phi float [ %1171, %1153 ], [ %929, %1019 ]
  %1040 = phi float [ %1172, %1153 ], [ %928, %1019 ]
  %1041 = phi float [ %1173, %1153 ], [ 0.000000e+00, %1019 ]
  %1042 = phi float [ %1174, %1153 ], [ %926, %1019 ]
  %1043 = phi float [ %1175, %1153 ], [ %914, %1019 ]
  %1044 = phi float [ %1176, %1153 ], [ %915, %1019 ]
  %1045 = phi float [ %1177, %1153 ], [ %916, %1019 ]
  %1046 = phi i32 [ %1103, %1153 ], [ 0, %1019 ]
  %1047 = add nuw nsw i32 %1046, %1017
  %1048 = shl i32 %1047, 2
  %1049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1048, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.i32 %1049, 0
  %1051 = shl i32 %1050, 8
  %1052 = or i32 %1051, 48
  %1053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.ResRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.ResRet.f32 %1053, 2
  %1057 = extractvalue %dx.types.ResRet.f32 %1053, 3
  %1058 = or i32 %1051, 64
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = extractvalue %dx.types.ResRet.i32 %1059, 1
  %1062 = or i32 %1051, 80
  %1063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.f32 %1063, 2
  %1065 = extractvalue %dx.types.ResRet.f32 %1063, 3
  %1066 = or i32 %1051, 96
  %1067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.f32 %1067, 0
  %1069 = extractvalue %dx.types.ResRet.f32 %1067, 1
  %1070 = extractvalue %dx.types.ResRet.f32 %1067, 2
  %1071 = extractvalue %dx.types.ResRet.f32 %1067, 3
  %1072 = or i32 %1051, 112
  %1073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.f32 %1073, 2
  %1075 = or i32 %1051, 128
  %1076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.ResRet.f32 %1076, 2
  %1080 = extractvalue %dx.types.ResRet.f32 %1076, 3
  %1081 = or i32 %1051, 144
  %1082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.f32 %1082, 0
  %1084 = extractvalue %dx.types.ResRet.f32 %1082, 1
  %1085 = extractvalue %dx.types.ResRet.f32 %1082, 2
  %1086 = extractvalue %dx.types.ResRet.f32 %1082, 3
  %1087 = or i32 %1051, 160
  %1088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %1088, 2
  %1092 = extractvalue %dx.types.ResRet.f32 %1088, 3
  %1093 = or i32 %1051, 192
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = or i32 %1051, 208
  %1097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.f32 %1097, 0
  %1099 = or i32 %1051, 248
  %1100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.f32 %1100, 0
  %1102 = extractvalue %dx.types.ResRet.f32 %1100, 1
  %1103 = add nuw nsw i32 %1046, 1
  %1104 = bitcast float %1057 to i32
  %1105 = and i32 %1104, 512
  %1106 = icmp eq i32 %1105, 0
  %1107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 0
  %1109 = extractvalue %dx.types.ResRet.f32 %1107, 1
  %1110 = extractvalue %dx.types.ResRet.f32 %1107, 2
  %1111 = extractvalue %dx.types.ResRet.f32 %1107, 3
  %1112 = call float @dx.op.dot4.f32(i32 56, float %1108, float %1109, float %1110, float %1111, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1113 = or i32 %1051, 16
  %1114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1113, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = extractvalue %dx.types.ResRet.f32 %1114, 3
  %1119 = call float @dx.op.dot4.f32(i32 56, float %1115, float %1116, float %1117, float %1118, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1120 = or i32 %1051, 32
  %1121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.f32 %1121, 0
  %1123 = extractvalue %dx.types.ResRet.f32 %1121, 1
  %1124 = extractvalue %dx.types.ResRet.f32 %1121, 2
  %1125 = extractvalue %dx.types.ResRet.f32 %1121, 3
  %1126 = call float @dx.op.dot4.f32(i32 56, float %1122, float %1123, float %1124, float %1125, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1127 = call float @dx.op.unary.f32(i32 27, float %1112)  ; Round_ni(value)
  %1128 = call float @dx.op.unary.f32(i32 6, float %1127)  ; FAbs(value)
  %1129 = call float @dx.op.unary.f32(i32 27, float %1119)  ; Round_ni(value)
  %1130 = call float @dx.op.unary.f32(i32 6, float %1129)  ; FAbs(value)
  %1131 = call float @dx.op.unary.f32(i32 6, float %1126)  ; FAbs(value)
  %1132 = call float @dx.op.unary.f32(i32 27, float %1131)  ; Round_ni(value)
  %1133 = fadd fast float %1130, %1128
  %1134 = fadd fast float %1133, %1132
  %1135 = fcmp fast oeq float %1134, 0.000000e+00
  %1136 = call float @dx.op.dot4.f32(i32 56, float %1108, float %1109, float %1110, float %1111, float %974, float %975, float %976, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1137 = call float @dx.op.dot4.f32(i32 56, float %1115, float %1116, float %1117, float %1118, float %974, float %975, float %976, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1138 = call float @dx.op.dot4.f32(i32 56, float %1108, float %1109, float %1110, float %1111, float %977, float %978, float %979, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1139 = call float @dx.op.dot4.f32(i32 56, float %1115, float %1116, float %1117, float %1118, float %977, float %978, float %979, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1140 = fsub fast float %1136, %1112
  %1141 = fsub fast float %1138, %1112
  %1142 = fsub fast float %1137, %1119
  %1143 = fsub fast float %1139, %1119
  %1144 = call float @dx.op.dot3.f32(i32 55, float %1054, float %1055, float %1056, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %1145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1146 = extractvalue %dx.types.CBufRet.f32 %1145, 2
  %1147 = fadd fast float %1146, %1144
  %1148 = call float @dx.op.unary.f32(i32 7, float %1147)  ; Saturate(value)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1145, 0
  %1150 = fcmp fast ogt float %1148, %1149
  %1151 = and i1 %1135, %1150
  %1152 = and i1 %1106, %1151
  br i1 %1152, label %1179, label %1153

; <label>:1153                                    ; preds = %1508, %1260, %1179, %1021
  %1154 = phi float [ %1022, %1179 ], [ %1263, %1260 ], [ %1263, %1508 ], [ %1022, %1021 ]
  %1155 = phi float [ %1023, %1179 ], [ %1023, %1260 ], [ %1484, %1508 ], [ %1023, %1021 ]
  %1156 = phi float [ %1024, %1179 ], [ %1024, %1260 ], [ %1482, %1508 ], [ %1024, %1021 ]
  %1157 = phi float [ %1025, %1179 ], [ %1025, %1260 ], [ %1460, %1508 ], [ %1025, %1021 ]
  %1158 = phi float [ %1026, %1179 ], [ %1026, %1260 ], [ %1461, %1508 ], [ %1026, %1021 ]
  %1159 = phi float [ %1027, %1179 ], [ %1027, %1260 ], [ %1462, %1508 ], [ %1027, %1021 ]
  %1160 = phi float [ %1028, %1179 ], [ %1028, %1260 ], [ %1387, %1508 ], [ %1028, %1021 ]
  %1161 = phi float [ %1029, %1179 ], [ %1029, %1260 ], [ %1385, %1508 ], [ %1029, %1021 ]
  %1162 = phi float [ %1030, %1179 ], [ %1030, %1260 ], [ %1430, %1508 ], [ %1030, %1021 ]
  %1163 = phi float [ %1031, %1179 ], [ %1031, %1260 ], [ %1431, %1508 ], [ %1031, %1021 ]
  %1164 = phi float [ %1032, %1179 ], [ %1032, %1260 ], [ %1432, %1508 ], [ %1032, %1021 ]
  %1165 = phi float [ %1033, %1179 ], [ %1033, %1260 ], [ %1518, %1508 ], [ %1033, %1021 ]
  %1166 = phi float [ %1034, %1179 ], [ %1034, %1260 ], [ %1519, %1508 ], [ %1034, %1021 ]
  %1167 = phi float [ %1035, %1179 ], [ %1035, %1260 ], [ %1520, %1508 ], [ %1035, %1021 ]
  %1168 = phi float [ %1036, %1179 ], [ %1036, %1260 ], [ %1366, %1508 ], [ %1036, %1021 ]
  %1169 = phi float [ %1037, %1179 ], [ %1037, %1260 ], [ %1367, %1508 ], [ %1037, %1021 ]
  %1170 = phi float [ %1038, %1179 ], [ %1038, %1260 ], [ %1368, %1508 ], [ %1038, %1021 ]
  %1171 = phi float [ %1039, %1179 ], [ %1039, %1260 ], [ %1440, %1508 ], [ %1039, %1021 ]
  %1172 = phi float [ %1040, %1179 ], [ %1040, %1260 ], [ %1437, %1508 ], [ %1040, %1021 ]
  %1173 = phi float [ %1041, %1179 ], [ %1041, %1260 ], [ %1434, %1508 ], [ %1041, %1021 ]
  %1174 = phi float [ %1042, %1179 ], [ %1042, %1260 ], [ %1383, %1508 ], [ %1042, %1021 ]
  %1175 = phi float [ %1043, %1179 ], [ %1043, %1260 ], [ %1378, %1508 ], [ %1043, %1021 ]
  %1176 = phi float [ %1044, %1179 ], [ %1044, %1260 ], [ %1379, %1508 ], [ %1044, %1021 ]
  %1177 = phi float [ %1045, %1179 ], [ %1045, %1260 ], [ %1380, %1508 ], [ %1045, %1021 ]
  %1178 = icmp eq i32 %1103, %1020
  br i1 %1178, label %1521, label %1021

; <label>:1179                                    ; preds = %1021
  %1180 = extractvalue %dx.types.ResRet.f32 %1073, 3
  %1181 = extractvalue %dx.types.ResRet.f32 %1073, 1
  %1182 = extractvalue %dx.types.ResRet.f32 %1073, 0
  %1183 = extractvalue %dx.types.ResRet.f32 %1063, 1
  %1184 = extractvalue %dx.types.ResRet.f32 %1063, 0
  %1185 = extractvalue %dx.types.ResRet.i32 %1059, 3
  %1186 = extractvalue %dx.types.ResRet.i32 %1059, 2
  %1187 = add i32 %1185, 0
  %1188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1187, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1190 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1188, %dx.types.Handle %1189, float %1112, float %1119, float undef, float undef, i32 0, i32 0, i32 undef, float %1140, float %1142, float undef, float %1141, float %1143, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1191 = extractvalue %dx.types.ResRet.f32 %1190, 0
  %1192 = fmul fast float %1191, %1184
  %1193 = fadd fast float %1192, %1183
  %1194 = call float @dx.op.unary.f32(i32 7, float %1193)  ; Saturate(value)
  %1195 = fmul fast float %1112, %1068
  %1196 = call float @dx.op.tertiary.f32(i32 46, float %1069, float %1119, float %1195)  ; FMad(a,b,c)
  %1197 = fadd fast float %1196, %1182
  %1198 = fmul fast float %1112, %1070
  %1199 = call float @dx.op.tertiary.f32(i32 46, float %1071, float %1119, float %1198)  ; FMad(a,b,c)
  %1200 = fadd fast float %1199, %1181
  %1201 = fmul fast float %1140, %1068
  %1202 = call float @dx.op.tertiary.f32(i32 46, float %1069, float %1142, float %1201)  ; FMad(a,b,c)
  %1203 = fmul fast float %1140, %1070
  %1204 = call float @dx.op.tertiary.f32(i32 46, float %1071, float %1142, float %1203)  ; FMad(a,b,c)
  %1205 = fmul fast float %1141, %1068
  %1206 = call float @dx.op.tertiary.f32(i32 46, float %1069, float %1143, float %1205)  ; FMad(a,b,c)
  %1207 = fmul fast float %1141, %1070
  %1208 = call float @dx.op.tertiary.f32(i32 46, float %1071, float %1143, float %1207)  ; FMad(a,b,c)
  %1209 = add i32 %1186, 0
  %1210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1209, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1211 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1210, %dx.types.Handle %1189, float %1197, float %1200, float undef, float undef, i32 0, i32 0, i32 undef, float %1202, float %1204, float undef, float %1206, float %1208, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1212 = extractvalue %dx.types.ResRet.f32 %1211, 0
  %1213 = and i32 %1104, 1024
  %1214 = icmp ne i32 %1213, 0
  %1215 = fcmp fast ogt float %1212, 0x3FE0101020000000
  %1216 = uitofp i1 %1215 to float
  %1217 = select i1 %1214, float %1216, float %1212
  %1218 = and i32 %1104, 8192
  %1219 = icmp ne i32 %1218, 0
  %1220 = select i1 %1219, float %1180, float 1.000000e+00
  %1221 = fmul fast float %1112, 2.000000e+00
  %1222 = fadd fast float %1221, -1.000000e+00
  %1223 = call float @dx.op.unary.f32(i32 6, float %1222)  ; FAbs(value)
  %1224 = fmul fast float %1223, %1101
  %1225 = fsub fast float %1224, %1101
  %1226 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1227 = fmul fast float %1119, 2.000000e+00
  %1228 = fadd fast float %1227, -1.000000e+00
  %1229 = call float @dx.op.unary.f32(i32 6, float %1228)  ; FAbs(value)
  %1230 = fmul fast float %1229, %1102
  %1231 = fsub fast float %1230, %1102
  %1232 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  %1233 = fmul fast float %1131, %1064
  %1234 = fsub fast float %1233, %1064
  %1235 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  %1236 = fmul fast float %1194, %1220
  %1237 = fmul fast float %1236, %1191
  %1238 = fmul fast float %1237, %1226
  %1239 = fmul fast float %1238, %1217
  %1240 = fmul fast float %1239, %1232
  %1241 = fmul fast float %1240, %1235
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 1
  %1244 = extractvalue %dx.types.CBufRet.f32 %1242, 0
  %1245 = fsub fast float %1148, %1244
  %1246 = fmul fast float %1245, %1243
  %1247 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  %1248 = fmul fast float %1241, %1065
  %1249 = fadd fast float %1241, %1065
  %1250 = fmul fast float %1249, %1074
  %1251 = fsub fast float %1250, %1074
  %1252 = call float @dx.op.unary.f32(i32 7, float %1251)  ; Saturate(value)
  %1253 = and i32 %1104, 128
  %1254 = icmp ne i32 %1253, 0
  %1255 = select i1 %1254, float %1252, float %1248
  %1256 = fmul fast float %1255, %1247
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = fcmp fast ugt float %1256, %1258
  br i1 %1259, label %1260, label %1153

; <label>:1260                                    ; preds = %1179
  %1261 = select i1 %1219, float %1256, float 0.000000e+00
  %1262 = fadd fast float %1261, %1022
  %1263 = call float @dx.op.unary.f32(i32 7, float %1262)  ; Saturate(value)
  br i1 %1219, label %1153, label %1264

; <label>:1264                                    ; preds = %1260
  %1265 = and i32 %1104, 4
  %1266 = and i32 %1104, 8
  %1267 = add i32 %1060, 0
  %1268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1267, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1270 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1268, %dx.types.Handle %1269, float %1197, float %1200, float undef, float undef, i32 0, i32 0, i32 undef, float %1202, float %1204, float undef, float %1206, float %1208, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1271 = extractvalue %dx.types.ResRet.f32 %1270, 0
  %1272 = extractvalue %dx.types.ResRet.f32 %1270, 1
  %1273 = extractvalue %dx.types.ResRet.f32 %1270, 2
  %1274 = extractvalue %dx.types.ResRet.f32 %1270, 3
  %1275 = bitcast float %1086 to i32
  %1276 = and i32 %1275, 255
  %1277 = uitofp i32 %1276 to float
  %1278 = lshr i32 %1275, 8
  %1279 = and i32 %1278, 255
  %1280 = uitofp i32 %1279 to float
  %1281 = fmul fast float %1274, %1277
  %1282 = fadd fast float %1281, %1280
  %1283 = fmul fast float %1282, 0x3F70101000000000
  %1284 = add i32 %1061, 0
  %1285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1284, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1286 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1285, %dx.types.Handle %1269, float %1197, float %1200, float undef, float undef, i32 0, i32 0, i32 undef, float %1202, float %1204, float undef, float %1206, float %1208, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1287 = extractvalue %dx.types.ResRet.f32 %1286, 0
  %1288 = extractvalue %dx.types.ResRet.f32 %1286, 1
  %1289 = extractvalue %dx.types.ResRet.f32 %1286, 2
  %1290 = extractvalue %dx.types.ResRet.f32 %1286, 3
  %1291 = bitcast float %1080 to i32
  %1292 = and i32 %1291, 255
  %1293 = uitofp i32 %1292 to float
  %1294 = lshr i32 %1291, 8
  %1295 = and i32 %1294, 255
  %1296 = uitofp i32 %1295 to float
  %1297 = lshr i32 %1291, 16
  %1298 = and i32 %1297, 255
  %1299 = uitofp i32 %1298 to float
  %1300 = fmul fast float %1299, 0x3F70101000000000
  %1301 = fmul fast float %1287, %1293
  %1302 = fadd fast float %1301, %1296
  %1303 = fmul fast float %1302, 0x3F70101000000000
  %1304 = fadd fast float %1288, -5.000000e-01
  %1305 = fadd fast float %1290, -5.000000e-01
  %1306 = fmul fast float %1304, %1300
  %1307 = fmul fast float %1305, %1300
  %1308 = fadd fast float %1306, 5.000000e-01
  %1309 = fadd fast float %1307, 5.000000e-01
  %1310 = fmul fast float %1271, %1089
  %1311 = fmul fast float %1272, %1090
  %1312 = fmul fast float %1273, %1091
  %1313 = fmul fast float %1308, 2.000000e+00
  %1314 = fadd fast float %1313, -1.000000e+00
  %1315 = fmul fast float %1309, 2.000000e+00
  %1316 = fadd fast float %1315, -1.000000e+00
  %1317 = fadd fast float %1314, %1316
  %1318 = fmul fast float %1317, 5.000000e-01
  %1319 = fsub fast float %1314, %1316
  %1320 = fmul fast float %1319, 5.000000e-01
  %1321 = call float @dx.op.unary.f32(i32 6, float %1318)  ; FAbs(value)
  %1322 = fsub fast float 1.000000e+00, %1321
  %1323 = call float @dx.op.unary.f32(i32 6, float %1320)  ; FAbs(value)
  %1324 = fsub fast float %1322, %1323
  %1325 = call float @dx.op.dot3.f32(i32 55, float %1318, float %1320, float %1324, float %1318, float %1320, float %1324)  ; Dot3(ax,ay,az,bx,by,bz)
  %1326 = call float @dx.op.unary.f32(i32 25, float %1325)  ; Rsqrt(value)
  %1327 = fmul fast float %1318, %1326
  %1328 = fmul fast float %1320, %1326
  %1329 = fmul fast float %1326, %1324
  %1330 = fmul fast float %1329, %1054
  %1331 = fmul fast float %1329, %1055
  %1332 = fmul fast float %1329, %1056
  %1333 = fmul fast float %1327, %1077
  %1334 = fmul fast float %1327, %1078
  %1335 = fmul fast float %1327, %1079
  %1336 = fadd fast float %1333, %1330
  %1337 = fadd fast float %1334, %1331
  %1338 = fadd fast float %1335, %1332
  %1339 = fmul fast float %1328, %1083
  %1340 = fmul fast float %1328, %1084
  %1341 = fmul fast float %1328, %1085
  %1342 = fadd fast float %1336, %1339
  %1343 = fadd fast float %1337, %1340
  %1344 = fadd fast float %1338, %1341
  %1345 = call float @dx.op.dot3.f32(i32 55, float %1342, float %1343, float %1344, float %1342, float %1343, float %1344)  ; Dot3(ax,ay,az,bx,by,bz)
  %1346 = call float @dx.op.unary.f32(i32 25, float %1345)  ; Rsqrt(value)
  %1347 = fmul fast float %1342, %1346
  %1348 = fmul fast float %1343, %1346
  %1349 = fmul fast float %1344, %1346
  %1350 = icmp ne i32 %1266, 0
  %1351 = select i1 %1350, float 1.000000e+00, float 0.000000e+00
  %1352 = fmul fast float %1256, %1351
  %1353 = and i32 %1104, 1
  %1354 = icmp eq i32 %1353, 0
  br i1 %1354, label %1355, label %1359

; <label>:1355                                    ; preds = %1264
  %1356 = fsub fast float %1347, %1036
  %1357 = fsub fast float %1348, %1037
  %1358 = fsub fast float %1349, %1038
  br label %1359

; <label>:1359                                    ; preds = %1355, %1264
  %1360 = phi float [ %1356, %1355 ], [ %1347, %1264 ]
  %1361 = phi float [ %1357, %1355 ], [ %1348, %1264 ]
  %1362 = phi float [ %1358, %1355 ], [ %1349, %1264 ]
  %1363 = fmul float %1362, %1352
  %1364 = fmul float %1361, %1352
  %1365 = fmul float %1360, %1352
  %1366 = fadd fast float %1365, %1036
  %1367 = fadd fast float %1364, %1037
  %1368 = fadd fast float %1363, %1038
  %1369 = icmp ne i32 %1265, 0
  %1370 = select i1 %1369, float 1.000000e+00, float 0.000000e+00
  %1371 = fmul fast float %1256, %1370
  %1372 = fsub fast float %1310, %1043
  %1373 = fsub fast float %1311, %1044
  %1374 = fsub fast float %1312, %1045
  %1375 = fmul fast float %1372, %1371
  %1376 = fmul fast float %1373, %1371
  %1377 = fmul fast float %1374, %1371
  %1378 = fadd fast float %1375, %1043
  %1379 = fadd fast float %1376, %1044
  %1380 = fadd fast float %1377, %1045
  %1381 = fsub fast float %1283, %1042
  %1382 = fmul fast float %1381, %1371
  %1383 = fadd fast float %1382, %1042
  %1384 = fmul fast float %1371, %1029
  %1385 = fsub fast float %1029, %1384
  %1386 = fmul fast float %1371, %1028
  %1387 = fsub fast float %1028, %1386
  %1388 = bitcast float %1098 to i32
  %1389 = lshr i32 %1388, 16
  %1390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1389)  ; LegacyF16ToF32(value)
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = and i32 %1392, 1
  %1394 = icmp eq i32 %1393, 0
  br i1 %1394, label %1395, label %1420

; <label>:1395                                    ; preds = %1359
  %1396 = fadd fast float %1283, 0xBFB99999A0000000
  %1397 = call float @dx.op.unary.f32(i32 7, float %1396)  ; Saturate(value)
  %1398 = fmul fast float %1397, 0x3FF1C71C80000000
  %1399 = fsub fast float 1.000000e+00, %1398
  %1400 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  %1401 = fmul fast float %1400, %1310
  %1402 = fmul fast float %1400, %1311
  %1403 = fmul fast float %1400, %1312
  %1404 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1405 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1406 = call float @dx.op.unary.f32(i32 7, float %1403)  ; Saturate(value)
  %1407 = call float @dx.op.binary.f32(i32 35, float %1405, float %1406)  ; FMax(a,b)
  %1408 = call float @dx.op.binary.f32(i32 35, float %1404, float %1407)  ; FMax(a,b)
  %1409 = fcmp fast ogt float %1408, 0.000000e+00
  %1410 = bitcast float %1408 to i32
  %1411 = sub nsw i32 2129859010, %1410
  %1412 = bitcast i32 %1411 to float
  %1413 = select i1 %1409, float %1412, float 0.000000e+00
  %1414 = fmul fast float %1404, %1390
  %1415 = fmul fast float %1405, %1390
  %1416 = fmul fast float %1406, %1390
  %1417 = fmul fast float %1414, %1413
  %1418 = fmul fast float %1415, %1413
  %1419 = fmul fast float %1416, %1413
  br label %1420

; <label>:1420                                    ; preds = %1395, %1359
  %1421 = phi float [ %1390, %1359 ], [ %1417, %1395 ]
  %1422 = phi float [ %1390, %1359 ], [ %1418, %1395 ]
  %1423 = phi float [ %1390, %1359 ], [ %1419, %1395 ]
  %1424 = fsub fast float %1421, %1030
  %1425 = fsub fast float %1422, %1031
  %1426 = fsub fast float %1423, %1032
  %1427 = fmul fast float %1424, %1371
  %1428 = fmul fast float %1425, %1371
  %1429 = fmul fast float %1426, %1371
  %1430 = fadd fast float %1427, %1030
  %1431 = fadd fast float %1428, %1031
  %1432 = fadd fast float %1429, %1032
  %1433 = fadd fast float %1256, %1041
  %1434 = call float @dx.op.unary.f32(i32 7, float %1433)  ; Saturate(value)
  %1435 = fsub fast float %1303, %1040
  %1436 = fmul fast float %1435, %1352
  %1437 = fadd fast float %1436, %1040
  %1438 = fsub fast float %1289, %1039
  %1439 = fmul fast float %1438, %1352
  %1440 = fadd fast float %1439, %1039
  br i1 %1354, label %1449, label %1441

; <label>:1441                                    ; preds = %1420
  %1442 = and i32 %1104, 32768
  %1443 = icmp eq i32 %1442, 0
  br i1 %1443, label %1459, label %1444

; <label>:1444                                    ; preds = %1441
  %1445 = fmul fast float %1352, 1.270000e+02
  %1446 = fadd fast float %1445, %1025
  %1447 = fadd fast float %1445, %1026
  %1448 = fadd fast float %1445, %1027
  br label %1459

; <label>:1449                                    ; preds = %1420
  %1450 = fsub fast float 1.270000e+02, %1025
  %1451 = fsub fast float 1.270000e+02, %1026
  %1452 = fsub fast float 1.270000e+02, %1027
  %1453 = fmul fast float %1352, %1450
  %1454 = fmul fast float %1352, %1451
  %1455 = fmul fast float %1352, %1452
  %1456 = fadd fast float %1453, %1025
  %1457 = fadd fast float %1454, %1026
  %1458 = fadd fast float %1455, %1027
  br label %1459

; <label>:1459                                    ; preds = %1449, %1444, %1441
  %1460 = phi float [ %1446, %1444 ], [ %1025, %1441 ], [ %1456, %1449 ]
  %1461 = phi float [ %1447, %1444 ], [ %1026, %1441 ], [ %1457, %1449 ]
  %1462 = phi float [ %1448, %1444 ], [ %1027, %1441 ], [ %1458, %1449 ]
  %1463 = call float @dx.op.dot3.f32(i32 55, float %1310, float %1311, float %1312, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1465 = extractvalue %dx.types.CBufRet.f32 %1464, 0
  %1466 = extractvalue %dx.types.CBufRet.f32 %1464, 1
  %1467 = fmul fast float %1466, %1463
  %1468 = fadd fast float %1467, %1465
  %1469 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  %1470 = bitcast float %1092 to i32
  %1471 = and i32 %1470, 65535
  %1472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1471)  ; LegacyF16ToF32(value)
  %1473 = lshr i32 %1470, 16
  %1474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1473)  ; LegacyF16ToF32(value)
  %1475 = fcmp fast oge float %1472, 0.000000e+00
  %1476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1477 = extractvalue %dx.types.CBufRet.f32 %1476, 0
  %1478 = select i1 %1475, float %1472, float %1477
  %1479 = fadd fast float %1478, %1474
  %1480 = fsub fast float %1469, %1024
  %1481 = fmul fast float %1480, %1256
  %1482 = fadd fast float %1481, %1024
  %1483 = fmul fast float %1479, %1256
  %1484 = call float @dx.op.binary.f32(i32 35, float %1023, float %1483)  ; FMax(a,b)
  %1485 = and i32 %1104, 16
  %1486 = icmp eq i32 %1485, 0
  br i1 %1486, label %1508, label %1487

; <label>:1487                                    ; preds = %1459
  %1488 = add i32 %1095, 0
  %1489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1488, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1490 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1489, %dx.types.Handle %1269, float %1197, float %1200, float undef, float undef, i32 0, i32 0, i32 undef, float %1202, float %1204, float undef, float %1206, float %1208, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1491 = extractvalue %dx.types.ResRet.f32 %1490, 0
  %1492 = extractvalue %dx.types.ResRet.f32 %1490, 1
  %1493 = extractvalue %dx.types.ResRet.f32 %1490, 2
  %1494 = and i32 %1388, 65535
  %1495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1494)  ; LegacyF16ToF32(value)
  %1496 = fmul fast float %1491, %1089
  %1497 = fmul fast float %1492, %1090
  %1498 = fmul fast float %1493, %1091
  %1499 = and i32 %1104, 16384
  %1500 = icmp ne i32 %1499, 0
  %1501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1502 = extractvalue %dx.types.CBufRet.f32 %1501, 0
  %1503 = select i1 %1500, float %1502, float 1.000000e+00
  %1504 = fmul fast float %1503, %1495
  %1505 = fmul fast float %1496, %1504
  %1506 = fmul fast float %1497, %1504
  %1507 = fmul fast float %1498, %1504
  br label %1508

; <label>:1508                                    ; preds = %1487, %1459
  %1509 = phi float [ %1505, %1487 ], [ 0.000000e+00, %1459 ]
  %1510 = phi float [ %1506, %1487 ], [ 0.000000e+00, %1459 ]
  %1511 = phi float [ %1507, %1487 ], [ 0.000000e+00, %1459 ]
  %1512 = fsub fast float %1509, %1033
  %1513 = fsub fast float %1510, %1034
  %1514 = fsub fast float %1511, %1035
  %1515 = fmul fast float %1512, %1256
  %1516 = fmul fast float %1513, %1256
  %1517 = fmul fast float %1514, %1256
  %1518 = fadd fast float %1515, %1033
  %1519 = fadd fast float %1516, %1034
  %1520 = fadd fast float %1517, %1035
  br label %1153

; <label>:1521                                    ; preds = %1153
  br label %1522

; <label>:1522                                    ; preds = %1521, %911
  %1523 = phi float [ 0.000000e+00, %911 ], [ %1154, %1521 ]
  %1524 = phi float [ %933, %911 ], [ %1155, %1521 ]
  %1525 = phi float [ %931, %911 ], [ %1156, %1521 ]
  %1526 = phi float [ %923, %911 ], [ %1157, %1521 ]
  %1527 = phi float [ %924, %911 ], [ %1158, %1521 ]
  %1528 = phi float [ %925, %911 ], [ %1159, %1521 ]
  %1529 = phi float [ 0.000000e+00, %911 ], [ %1160, %1521 ]
  %1530 = phi float [ 0.000000e+00, %911 ], [ %1161, %1521 ]
  %1531 = phi float [ %917, %911 ], [ %1162, %1521 ]
  %1532 = phi float [ %918, %911 ], [ %1163, %1521 ]
  %1533 = phi float [ %919, %911 ], [ %1164, %1521 ]
  %1534 = phi float [ %920, %911 ], [ %1165, %1521 ]
  %1535 = phi float [ %921, %911 ], [ %1166, %1521 ]
  %1536 = phi float [ %922, %911 ], [ %1167, %1521 ]
  %1537 = phi float [ %965, %911 ], [ %1168, %1521 ]
  %1538 = phi float [ %966, %911 ], [ %1169, %1521 ]
  %1539 = phi float [ %967, %911 ], [ %1170, %1521 ]
  %1540 = phi float [ %929, %911 ], [ %1171, %1521 ]
  %1541 = phi float [ %928, %911 ], [ %1172, %1521 ]
  %1542 = phi float [ 0.000000e+00, %911 ], [ %1173, %1521 ]
  %1543 = phi float [ %926, %911 ], [ %1174, %1521 ]
  %1544 = phi float [ %914, %911 ], [ %1175, %1521 ]
  %1545 = phi float [ %915, %911 ], [ %1176, %1521 ]
  %1546 = phi float [ %916, %911 ], [ %1177, %1521 ]
  %1547 = call float @dx.op.dot3.f32(i32 55, float %1537, float %1538, float %1539, float %1537, float %1538, float %1539)  ; Dot3(ax,ay,az,bx,by,bz)
  %1548 = call float @dx.op.unary.f32(i32 25, float %1547)  ; Rsqrt(value)
  %1549 = fmul fast float %1548, %1537
  %1550 = fmul fast float %1548, %1538
  %1551 = fmul fast float %1548, %1539
  %1552 = fadd fast float %1542, %927
  %1553 = call float @dx.op.unary.f32(i32 7, float %1552)  ; Saturate(value)
  %1554 = call float @dx.op.dot3.f32(i32 55, float %1549, float %1550, float %1551, float %1549, float %1550, float %1551)  ; Dot3(ax,ay,az,bx,by,bz)
  %1555 = call float @dx.op.unary.f32(i32 25, float %1554)  ; Rsqrt(value)
  %1556 = fmul fast float %1555, %1549
  %1557 = fmul fast float %1555, %1550
  %1558 = fmul fast float %1555, %1551
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = extractvalue %dx.types.ResRet.i32 %1559, 1
  %1562 = extractvalue %dx.types.ResRet.i32 %1559, 2
  %1563 = bitcast i32 %1560 to float
  %1564 = bitcast i32 %1561 to float
  %1565 = bitcast i32 %1562 to float
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = extractvalue %dx.types.ResRet.i32 %1566, 1
  %1569 = extractvalue %dx.types.ResRet.i32 %1566, 2
  %1570 = bitcast i32 %1567 to float
  %1571 = bitcast i32 %1568 to float
  %1572 = bitcast i32 %1569 to float
  %1573 = fsub fast float %1570, %1563
  %1574 = fsub fast float %1571, %1564
  %1575 = fsub fast float %1572, %1565
  %1576 = fmul fast float %1573, %166
  %1577 = fmul fast float %1574, %166
  %1578 = fmul fast float %1575, %166
  %1579 = fadd fast float %1576, %1563
  %1580 = fadd fast float %1577, %1564
  %1581 = fadd fast float %1578, %1565
  %1582 = fmul fast float %1579, %1544
  %1583 = fmul fast float %1580, %1545
  %1584 = fmul fast float %1581, %1546
  %1585 = fmul fast float %1553, %166
  %1586 = fadd fast float %1543, 0xBFB99999A0000000
  %1587 = call float @dx.op.unary.f32(i32 7, float %1586)  ; Saturate(value)
  %1588 = fmul fast float %1587, 0x3FF1C71C80000000
  %1589 = call float @dx.op.binary.f32(i32 36, float %1543, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1590 = fsub fast float 1.000000e+00, %1588
  %1591 = call float @dx.op.unary.f32(i32 7, float %1590)  ; Saturate(value)
  %1592 = fmul fast float %1582, %1591
  %1593 = fmul fast float %1583, %1591
  %1594 = fmul fast float %1584, %1591
  %1595 = call float @dx.op.unary.f32(i32 7, float %1592)  ; Saturate(value)
  %1596 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  %1597 = call float @dx.op.unary.f32(i32 7, float %1594)  ; Saturate(value)
  %1598 = fmul fast float %1582, %1588
  %1599 = fmul fast float %1583, %1588
  %1600 = fmul fast float %1584, %1588
  %1601 = fadd fast float %1598, %1589
  %1602 = fadd fast float %1599, %1589
  %1603 = fadd fast float %1600, %1589
  %1604 = call float @dx.op.unary.f32(i32 7, float %1601)  ; Saturate(value)
  %1605 = call float @dx.op.unary.f32(i32 7, float %1602)  ; Saturate(value)
  %1606 = call float @dx.op.unary.f32(i32 7, float %1603)  ; Saturate(value)
  %1607 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = and i32 %1609, 1
  %1611 = icmp eq i32 %1610, 0
  br i1 %1611, label %1626, label %1612

; <label>:1612                                    ; preds = %1522
  %1613 = call float @dx.op.binary.f32(i32 35, float %1596, float %1597)  ; FMax(a,b)
  %1614 = call float @dx.op.binary.f32(i32 35, float %1595, float %1613)  ; FMax(a,b)
  %1615 = fcmp fast ogt float %1614, 0.000000e+00
  %1616 = bitcast float %1614 to i32
  %1617 = sub nsw i32 2129859010, %1616
  %1618 = bitcast i32 %1617 to float
  %1619 = select i1 %1615, float %1618, float 0.000000e+00
  %1620 = fmul fast float %1595, %1531
  %1621 = fmul fast float %1596, %1532
  %1622 = fmul fast float %1597, %1533
  %1623 = fmul fast float %1620, %1619
  %1624 = fmul fast float %1621, %1619
  %1625 = fmul fast float %1622, %1619
  br label %1626

; <label>:1626                                    ; preds = %1612, %1522
  %1627 = phi float [ %1623, %1612 ], [ %1531, %1522 ]
  %1628 = phi float [ %1624, %1612 ], [ %1532, %1522 ]
  %1629 = phi float [ %1625, %1612 ], [ %1533, %1522 ]
  %1630 = call float @dx.op.binary.f32(i32 36, float %1526, float 1.270000e+02)  ; FMin(a,b)
  %1631 = call float @dx.op.binary.f32(i32 36, float %1527, float 1.270000e+02)  ; FMin(a,b)
  %1632 = call float @dx.op.binary.f32(i32 36, float %1528, float 1.270000e+02)  ; FMin(a,b)
  %1633 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1634 = extractvalue %dx.types.CBufRet.i32 %1633, 3
  %1635 = and i32 %1634, 8
  %1636 = icmp ne i32 %1635, 0
  %1637 = call float @dx.op.binary.f32(i32 35, float %1595, float %1582)  ; FMax(a,b)
  %1638 = call float @dx.op.binary.f32(i32 35, float %1596, float %1582)  ; FMax(a,b)
  %1639 = call float @dx.op.binary.f32(i32 35, float %1597, float %1582)  ; FMax(a,b)
  %1640 = call float @dx.op.dot3.f32(i32 55, float %1595, float %1596, float %1597, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1641 = select i1 %226, float %1582, float %1595
  %1642 = select i1 %226, float %1640, float %1596
  %1643 = select i1 %226, float 1.000000e+00, float %1597
  %1644 = select i1 %1636, float %1637, float %1641
  %1645 = select i1 %1636, float %1638, float %1642
  %1646 = select i1 %1636, float %1639, float %1643
  %1647 = call float @dx.op.dot3.f32(i32 55, float %1627, float %1628, float %1629, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1648 = select i1 %226, float %1647, float %1627
  %1649 = select i1 %226, float %1647, float %1628
  %1650 = select i1 %226, float %1647, float %1629
  %1651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.f32 %1651, 0
  %1653 = extractvalue %dx.types.CBufRet.f32 %1651, 1
  %1654 = extractvalue %dx.types.CBufRet.f32 %1651, 2
  %1655 = fadd fast float %1652, %133
  %1656 = fadd fast float %1653, %134
  %1657 = fadd fast float %1654, %135
  %1658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1659 = extractvalue %dx.types.CBufRet.f32 %1658, 0
  %1660 = extractvalue %dx.types.CBufRet.f32 %1658, 1
  %1661 = fsub fast float %1655, %1659
  %1662 = fsub fast float %1656, %1660
  %1663 = fmul fast float %1661, %1661
  %1664 = fmul fast float %1662, %1662
  %1665 = fadd fast float %1663, %1664
  %1666 = call float @dx.op.unary.f32(i32 24, float %1665)  ; Sqrt(value)
  %1667 = extractvalue %dx.types.CBufRet.f32 %1658, 2
  %1668 = fcmp fast olt float %1666, %1667
  br i1 %1668, label %1669, label %1736

; <label>:1669                                    ; preds = %1626
  %1670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1671 = extractvalue %dx.types.CBufRet.f32 %1670, 0
  %1672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.f32 %1672, 0
  %1674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1675 = extractvalue %dx.types.CBufRet.f32 %1674, 0
  %1676 = extractvalue %dx.types.CBufRet.f32 %1670, 1
  %1677 = extractvalue %dx.types.CBufRet.f32 %1672, 1
  %1678 = extractvalue %dx.types.CBufRet.f32 %1674, 1
  %1679 = extractvalue %dx.types.CBufRet.f32 %1670, 3
  %1680 = extractvalue %dx.types.CBufRet.f32 %1672, 3
  %1681 = extractvalue %dx.types.CBufRet.f32 %1674, 3
  %1682 = fadd fast float %1679, %1655
  %1683 = fadd fast float %1680, %1656
  %1684 = fadd fast float %1681, %1657
  %1685 = fmul fast float %1682, %1671
  %1686 = call float @dx.op.tertiary.f32(i32 46, float %1683, float %1673, float %1685)  ; FMad(a,b,c)
  %1687 = call float @dx.op.tertiary.f32(i32 46, float %1684, float %1675, float %1686)  ; FMad(a,b,c)
  %1688 = fmul fast float %1682, %1676
  %1689 = call float @dx.op.tertiary.f32(i32 46, float %1683, float %1677, float %1688)  ; FMad(a,b,c)
  %1690 = call float @dx.op.tertiary.f32(i32 46, float %1684, float %1678, float %1689)  ; FMad(a,b,c)
  %1691 = fsub fast float %1687, %1679
  %1692 = fsub fast float %1690, %1680
  %1693 = fsub fast float %1691, %1659
  %1694 = fadd fast float %1693, %1667
  %1695 = fsub fast float %1692, %1660
  %1696 = fadd fast float %1695, %1667
  %1697 = extractvalue %dx.types.CBufRet.f32 %1658, 3
  %1698 = fmul fast float %1694, %1697
  %1699 = fmul fast float %1696, %1697
  %1700 = call float @dx.op.unary.f32(i32 7, float %1698)  ; Saturate(value)
  %1701 = call float @dx.op.unary.f32(i32 7, float %1699)  ; Saturate(value)
  %1702 = fsub fast float 1.000000e+00, %1700
  %1703 = fsub fast float 1.000000e+00, %1701
  %1704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %44, float %1702, float %1703, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1705 = extractvalue %dx.types.ResRet.f32 %1704, 0
  %1706 = fcmp fast ugt float %1705, 0.000000e+00
  br i1 %1706, label %1707, label %2010

; <label>:1707                                    ; preds = %1669
  %1708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1709 = extractvalue %dx.types.CBufRet.f32 %1708, 2
  %1710 = fmul fast float %1709, %1705
  %1711 = extractvalue %dx.types.CBufRet.f32 %1708, 3
  %1712 = fadd fast float %1711, %1710
  %1713 = extractvalue %dx.types.CBufRet.f32 %1674, 2
  %1714 = fadd fast float %1712, %1681
  %1715 = fmul fast float %1687, %1675
  %1716 = call float @dx.op.tertiary.f32(i32 46, float %1690, float %1678, float %1715)  ; FMad(a,b,c)
  %1717 = call float @dx.op.tertiary.f32(i32 46, float %1714, float %1713, float %1716)  ; FMad(a,b,c)
  %1718 = fsub fast float %1717, %1681
  %1719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1720 = extractvalue %dx.types.CBufRet.f32 %1719, 2
  %1721 = fsub fast float %1718, %1720
  %1722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %44, float %1702, float %1703, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1723 = extractvalue %dx.types.ResRet.f32 %1722, 0
  %1724 = extractvalue %dx.types.ResRet.f32 %1722, 1
  %1725 = extractvalue %dx.types.ResRet.f32 %1722, 2
  %1726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %44, float %1702, float %1703, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1727 = extractvalue %dx.types.ResRet.f32 %1726, 0
  %1728 = extractvalue %dx.types.ResRet.f32 %1726, 1
  %1729 = extractvalue %dx.types.ResRet.f32 %1726, 2
  %1730 = fadd fast float %1727, %1723
  %1731 = fmul fast float %1730, 0x3F847AE140000000
  %1732 = fadd fast float %1728, %1724
  %1733 = fmul fast float %1732, 0x3F847AE140000000
  %1734 = fadd fast float %1729, %1725
  %1735 = fmul fast float %1734, 0x3F847AE140000000
  br label %2010

; <label>:1736                                    ; preds = %1626
  %1737 = and i32 %202, 1
  %1738 = icmp eq i32 %1737, 0
  br i1 %1738, label %2010, label %1739

; <label>:1739                                    ; preds = %1736
  %1740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1741 = extractvalue %dx.types.CBufRet.f32 %1740, 0
  %1742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1743 = extractvalue %dx.types.CBufRet.f32 %1742, 0
  %1744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.f32 %1744, 0
  %1746 = extractvalue %dx.types.CBufRet.f32 %1740, 1
  %1747 = extractvalue %dx.types.CBufRet.f32 %1742, 1
  %1748 = extractvalue %dx.types.CBufRet.f32 %1744, 1
  %1749 = extractvalue %dx.types.CBufRet.f32 %1740, 3
  %1750 = extractvalue %dx.types.CBufRet.f32 %1742, 3
  %1751 = extractvalue %dx.types.CBufRet.f32 %1744, 3
  %1752 = fadd fast float %1749, %1655
  %1753 = fadd fast float %1750, %1656
  %1754 = fadd fast float %1751, %1657
  %1755 = fmul fast float %1752, %1741
  %1756 = call float @dx.op.tertiary.f32(i32 46, float %1753, float %1743, float %1755)  ; FMad(a,b,c)
  %1757 = call float @dx.op.tertiary.f32(i32 46, float %1754, float %1745, float %1756)  ; FMad(a,b,c)
  %1758 = fmul fast float %1752, %1746
  %1759 = call float @dx.op.tertiary.f32(i32 46, float %1753, float %1747, float %1758)  ; FMad(a,b,c)
  %1760 = call float @dx.op.tertiary.f32(i32 46, float %1754, float %1748, float %1759)  ; FMad(a,b,c)
  %1761 = fsub fast float %1757, %1749
  %1762 = fsub fast float %1760, %1750
  %1763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.CBufRet.f32 %1763, 1
  %1766 = extractvalue %dx.types.CBufRet.f32 %1763, 2
  %1767 = extractvalue %dx.types.CBufRet.f32 %1763, 3
  %1768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1769 = extractvalue %dx.types.CBufRet.f32 %1768, 3
  %1770 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = extractvalue %dx.types.CBufRet.i32 %1770, 0
  %1772 = extractvalue %dx.types.CBufRet.i32 %1770, 1
  %1773 = udiv i32 %1772, %1771
  %1774 = fsub fast float %1761, %1764
  %1775 = fsub fast float %1762, %1765
  %1776 = call float @dx.op.binary.f32(i32 35, float %1774, float 0.000000e+00)  ; FMax(a,b)
  %1777 = call float @dx.op.binary.f32(i32 35, float %1775, float 0.000000e+00)  ; FMax(a,b)
  %1778 = call float @dx.op.binary.f32(i32 36, float %1776, float %1766)  ; FMin(a,b)
  %1779 = call float @dx.op.binary.f32(i32 36, float %1777, float %1767)  ; FMin(a,b)
  %1780 = add i32 %1771, -1
  %1781 = add i32 %1773, -1
  %1782 = fmul fast float %1778, %1769
  %1783 = fmul fast float %1779, %1769
  %1784 = fptoui float %1782 to i32
  %1785 = fptoui float %1783 to i32
  %1786 = call i32 @dx.op.binary.i32(i32 40, i32 %1784, i32 %1780)  ; UMin(a,b)
  %1787 = call i32 @dx.op.binary.i32(i32 40, i32 %1785, i32 %1781)  ; UMin(a,b)
  %1788 = mul i32 %1787, %1771
  %1789 = add i32 %1788, %1786
  %1790 = shl i32 %1789, 2
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = icmp eq i32 %1792, -1
  br i1 %1793, label %2010, label %1794

; <label>:1794                                    ; preds = %1739
  %1795 = mul i32 %1792, 148
  %1796 = add i32 %1795, 4
  %1797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1796, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.f32 %1797, 0
  %1799 = add i32 %1795, 8
  %1800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.f32 %1800, 0
  %1802 = add i32 %1795, 36
  %1803 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.f32 %1803, 0
  %1805 = add i32 %1795, 60
  %1806 = add i32 %1795, 92
  %1807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %1808 = extractvalue %dx.types.ResRet.i32 %1807, 0
  %1809 = add i32 %1795, 116
  %1810 = fsub fast float %1761, %1798
  %1811 = fsub fast float %1762, %1801
  %1812 = fmul fast float %1769, %1810
  %1813 = fmul fast float %1769, %1811
  %1814 = call float @dx.op.unary.f32(i32 7, float %1812)  ; Saturate(value)
  %1815 = call float @dx.op.unary.f32(i32 7, float %1813)  ; Saturate(value)
  %1816 = fsub fast float 1.000000e+00, %1815
  %1817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1818 = extractvalue %dx.types.CBufRet.f32 %1817, 2
  %1819 = call float @dx.op.unary.f32(i32 83, float %1814)  ; DerivCoarseX(value)
  %1820 = call float @dx.op.unary.f32(i32 83, float %1816)  ; DerivCoarseX(value)
  %1821 = call float @dx.op.unary.f32(i32 84, float %1814)  ; DerivCoarseY(value)
  %1822 = call float @dx.op.unary.f32(i32 84, float %1816)  ; DerivCoarseY(value)
  %1823 = fmul fast float %1819, %1818
  %1824 = fmul fast float %1820, %1818
  %1825 = fmul fast float %1821, %1818
  %1826 = fmul fast float %1822, %1818
  %1827 = call float @dx.op.dot2.f32(i32 54, float %1825, float %1826, float %1825, float %1826)  ; Dot2(ax,ay,bx,by)
  %1828 = call float @dx.op.dot2.f32(i32 54, float %1823, float %1824, float %1823, float %1824)  ; Dot2(ax,ay,bx,by)
  %1829 = call float @dx.op.binary.f32(i32 35, float %1828, float %1827)  ; FMax(a,b)
  %1830 = call float @dx.op.unary.f32(i32 23, float %1829)  ; Log(value)
  %1831 = fmul fast float %1830, 5.000000e-01
  %1832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1833 = extractvalue %dx.types.CBufRet.f32 %1832, 1
  %1834 = fadd fast float %1833, %1831
  %1835 = call float @dx.op.binary.f32(i32 35, float %1834, float 0.000000e+00)  ; FMax(a,b)
  %1836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1837 = extractvalue %dx.types.CBufRet.f32 %1836, 3
  %1838 = fadd fast float %1837, %1835
  %1839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1840 = extractvalue %dx.types.CBufRet.f32 %1839, 3
  %1841 = fadd fast float %1838, %1840
  %1842 = add i32 %1808, 0
  %1843 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1842, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1844 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1843, i32 0)  ; GetDimensions(handle,mipLevel)
  %1845 = extractvalue %dx.types.Dimensions %1844, 0
  %1846 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1845)  ; FirstbitLo(value)
  %1847 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.i32 %1847, 1
  %1849 = sub nsw i32 %1848, %1846
  %1850 = sitofp i32 %1849 to float
  %1851 = fsub fast float %1841, %1850
  %1852 = call float @dx.op.binary.f32(i32 35, float %1851, float 0.000000e+00)  ; FMax(a,b)
  %1853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1843, %dx.types.Handle %42, float %1814, float %1816, float %1804, float undef, i32 0, i32 0, i32 undef, float %1852)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1854 = extractvalue %dx.types.ResRet.f32 %1853, 0
  %1855 = fcmp ule float %1854, 0x3FE0101020000000
  %1856 = extractvalue %dx.types.CBufRet.i32 %1847, 0
  %1857 = and i32 %1856, 128
  %1858 = icmp ne i32 %1857, 0
  %1859 = and i1 %1855, %1858
  br i1 %1859, label %2010, label %1860

; <label>:1860                                    ; preds = %1794
  %1861 = add i32 %1795, 20
  %1862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.f32 %1862, 0
  %1864 = add i32 %1795, 24
  %1865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.f32 %1865, 0
  %1867 = add i32 %1795, 40
  %1868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.f32 %1868, 0
  %1870 = add i32 %1795, 96
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 2
  %1875 = fmul fast float %1874, %1814
  %1876 = fmul fast float %1874, %1816
  %1877 = extractvalue %dx.types.CBufRet.f32 %1873, 3
  %1878 = fadd fast float %1875, %1877
  %1879 = fadd fast float %1876, %1877
  %1880 = add i32 %1872, 0
  %1881 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1880, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1882 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1881, i32 0)  ; GetDimensions(handle,mipLevel)
  %1883 = extractvalue %dx.types.Dimensions %1882, 0
  %1884 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1883)  ; FirstbitLo(value)
  %1885 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.i32 %1885, 1
  %1887 = sub nsw i32 %1886, %1884
  %1888 = sitofp i32 %1887 to float
  %1889 = fsub fast float %1838, %1888
  %1890 = call float @dx.op.binary.f32(i32 35, float %1889, float 0.000000e+00)  ; FMax(a,b)
  %1891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1881, %dx.types.Handle %42, float %1878, float %1879, float %1869, float undef, i32 0, i32 0, i32 undef, float %1890)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1892 = extractvalue %dx.types.ResRet.f32 %1891, 0
  %1893 = fmul fast float %1892, %1863
  %1894 = fadd fast float %1893, %1866
  %1895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1896 = extractvalue %dx.types.CBufRet.f32 %1895, 0
  %1897 = extractvalue %dx.types.CBufRet.f32 %1895, 1
  %1898 = extractvalue %dx.types.CBufRet.f32 %1895, 2
  %1899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1900 = extractvalue %dx.types.CBufRet.f32 %1899, 3
  %1901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1902 = extractvalue %dx.types.CBufRet.f32 %1901, 3
  %1903 = extractvalue %dx.types.CBufRet.f32 %1895, 3
  %1904 = fadd fast float %1900, %1761
  %1905 = fadd fast float %1902, %1762
  %1906 = fadd fast float %1894, %1903
  %1907 = fmul fast float %1904, %1896
  %1908 = call float @dx.op.tertiary.f32(i32 46, float %1905, float %1897, float %1907)  ; FMad(a,b,c)
  %1909 = call float @dx.op.tertiary.f32(i32 46, float %1906, float %1898, float %1908)  ; FMad(a,b,c)
  %1910 = fsub fast float %1909, %1903
  %1911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.f32 %1911, 2
  %1913 = fsub fast float %1910, %1912
  %1914 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1915 = extractvalue %dx.types.CBufRet.i32 %1914, 0
  %1916 = call i32 @dx.op.binary.i32(i32 40, i32 %1792, i32 %1915)  ; UMin(a,b)
  %1917 = mul i32 %1916, 36
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = add i32 %1917, 4
  %1921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.f32 %1921, 0
  %1923 = fmul fast float %1922, %1814
  %1924 = fmul fast float %1922, %1816
  %1925 = extractvalue %dx.types.CBufRet.f32 %1921, 1
  %1926 = fadd fast float %1923, %1925
  %1927 = fadd fast float %1924, %1925
  %1928 = icmp eq i32 %1919, 0
  br i1 %1928, label %1997, label %1929

; <label>:1929                                    ; preds = %1860
  br label %1930

; <label>:1930                                    ; preds = %1987, %1929
  %1931 = phi float [ %1988, %1987 ], [ 0.000000e+00, %1929 ]
  %1932 = phi float [ %1989, %1987 ], [ 0.000000e+00, %1929 ]
  %1933 = phi float [ %1990, %1987 ], [ 0.000000e+00, %1929 ]
  %1934 = phi float [ %1991, %1987 ], [ 0.000000e+00, %1929 ]
  %1935 = phi float [ %1992, %1987 ], [ 0.000000e+00, %1929 ]
  %1936 = phi float [ %1993, %1987 ], [ 0.000000e+00, %1929 ]
  %1937 = phi i32 [ %1994, %1987 ], [ 0, %1929 ]
  %1938 = shl i32 %1937, 2
  %1939 = add i32 %1805, %1938
  %1940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.f32 %1940, 0
  %1942 = add i32 %1809, %1938
  %1943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.i32 %1943, 0
  %1945 = add i32 %1944, 0
  %1946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1945, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1947 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1946, i32 0)  ; GetDimensions(handle,mipLevel)
  %1948 = extractvalue %dx.types.Dimensions %1947, 0
  %1949 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1948)  ; FirstbitLo(value)
  %1950 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1951 = extractvalue %dx.types.CBufRet.i32 %1950, 1
  %1952 = sub nsw i32 %1951, %1949
  %1953 = sitofp i32 %1952 to float
  %1954 = fsub fast float %1838, %1953
  %1955 = call float @dx.op.binary.f32(i32 35, float %1954, float 0.000000e+00)  ; FMax(a,b)
  %1956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1946, %dx.types.Handle %42, float %1926, float %1927, float %1941, float undef, i32 0, i32 0, i32 undef, float %1955)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1957 = extractvalue %dx.types.ResRet.f32 %1956, 0
  %1958 = fcmp fast ogt float %1957, 0.000000e+00
  br i1 %1958, label %1959, label %1987

; <label>:1959                                    ; preds = %1930
  %1960 = add i32 %1920, %1938
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = and i32 %1962, 32767
  %1964 = mul nuw nsw i32 %1963, 928
  %1965 = add nuw nsw i32 %1964, 48
  %1966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.f32 %1966, 0
  %1968 = extractvalue %dx.types.ResRet.f32 %1966, 1
  %1969 = extractvalue %dx.types.ResRet.f32 %1966, 2
  %1970 = add nuw nsw i32 %1964, 60
  %1971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 0
  %1973 = extractvalue %dx.types.ResRet.f32 %1971, 1
  %1974 = extractvalue %dx.types.ResRet.f32 %1971, 2
  %1975 = fmul fast float %1967, %1957
  %1976 = fmul fast float %1968, %1957
  %1977 = fmul fast float %1969, %1957
  %1978 = fadd fast float %1975, %1931
  %1979 = fadd fast float %1976, %1932
  %1980 = fadd fast float %1977, %1933
  %1981 = fmul fast float %1972, %1957
  %1982 = fmul fast float %1973, %1957
  %1983 = fmul fast float %1974, %1957
  %1984 = fadd fast float %1981, %1934
  %1985 = fadd fast float %1982, %1935
  %1986 = fadd fast float %1983, %1936
  br label %1987

; <label>:1987                                    ; preds = %1959, %1930
  %1988 = phi float [ %1978, %1959 ], [ %1931, %1930 ]
  %1989 = phi float [ %1979, %1959 ], [ %1932, %1930 ]
  %1990 = phi float [ %1980, %1959 ], [ %1933, %1930 ]
  %1991 = phi float [ %1984, %1959 ], [ %1934, %1930 ]
  %1992 = phi float [ %1985, %1959 ], [ %1935, %1930 ]
  %1993 = phi float [ %1986, %1959 ], [ %1936, %1930 ]
  %1994 = add nuw i32 %1937, 1
  %1995 = icmp eq i32 %1994, %1919
  br i1 %1995, label %1996, label %1930

; <label>:1996                                    ; preds = %1987
  br label %1997

; <label>:1997                                    ; preds = %1996, %1860
  %1998 = phi float [ 0.000000e+00, %1860 ], [ %1988, %1996 ]
  %1999 = phi float [ 0.000000e+00, %1860 ], [ %1989, %1996 ]
  %2000 = phi float [ 0.000000e+00, %1860 ], [ %1990, %1996 ]
  %2001 = phi float [ 0.000000e+00, %1860 ], [ %1991, %1996 ]
  %2002 = phi float [ 0.000000e+00, %1860 ], [ %1992, %1996 ]
  %2003 = phi float [ 0.000000e+00, %1860 ], [ %1993, %1996 ]
  %2004 = fadd fast float %2001, %1998
  %2005 = fmul fast float %2004, 0x3F847AE140000000
  %2006 = fadd fast float %2002, %1999
  %2007 = fmul fast float %2006, 0x3F847AE140000000
  %2008 = fadd fast float %2003, %2000
  %2009 = fmul fast float %2008, 0x3F847AE140000000
  br label %2010

; <label>:2010                                    ; preds = %1997, %1794, %1739, %1736, %1707, %1669
  %2011 = phi float [ %1721, %1707 ], [ -1.310720e+05, %1669 ], [ %1913, %1997 ], [ -1.310720e+05, %1739 ], [ -1.310720e+05, %1794 ], [ -1.310720e+05, %1736 ]
  %2012 = phi float [ %1731, %1707 ], [ 0.000000e+00, %1669 ], [ %2005, %1997 ], [ 0.000000e+00, %1739 ], [ 0.000000e+00, %1794 ], [ 0.000000e+00, %1736 ]
  %2013 = phi float [ %1733, %1707 ], [ 0.000000e+00, %1669 ], [ %2007, %1997 ], [ 0.000000e+00, %1739 ], [ 0.000000e+00, %1794 ], [ 0.000000e+00, %1736 ]
  %2014 = phi float [ %1735, %1707 ], [ 0.000000e+00, %1669 ], [ %2009, %1997 ], [ 0.000000e+00, %1739 ], [ 0.000000e+00, %1794 ], [ 0.000000e+00, %1736 ]
  %2015 = phi i1 [ true, %1707 ], [ false, %1669 ], [ true, %1997 ], [ false, %1739 ], [ false, %1794 ], [ false, %1736 ]
  %2016 = and i32 %202, 3
  %2017 = icmp eq i32 %2016, 1
  %2018 = select i1 %2017, float 1.000000e+00, float 0.000000e+00
  %2019 = fsub fast float %2011, %135
  %2020 = call float @dx.op.unary.f32(i32 7, float %2019)  ; Saturate(value)
  %2021 = select i1 %2015, float %2020, float 1.000000e+00
  %2022 = fmul fast float %2021, %2018
  %2023 = icmp eq i32 %2016, 3
  %2024 = select i1 %2023, float 1.000000e+00, float %2022
  %2025 = call float @dx.op.binary.f32(i32 35, float %1523, float %2024)  ; FMax(a,b)
  %2026 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2027 = fcmp fast une float %2026, 0.000000e+00
  %2028 = fsub fast float -0.000000e+00, %152
  %2029 = fsub fast float -0.000000e+00, %153
  %2030 = fsub fast float -0.000000e+00, %154
  br i1 %2027, label %2031, label %2193

; <label>:2031                                    ; preds = %2010
  %2032 = call float @dx.op.dot3.f32(i32 55, float %2028, float %2029, float %2030, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %2033 = fmul fast float %2026, 2.500000e+00
  %2034 = call float @dx.op.unary.f32(i32 7, float %2033)  ; Saturate(value)
  %2035 = fmul fast float %2026, 0x4013FFFFE0000000
  %2036 = fadd fast float %2035, 0xBFFFFFFFE0000000
  %2037 = call float @dx.op.unary.f32(i32 7, float %2036)  ; Saturate(value)
  %2038 = fmul fast float %2026, 0x4004000020000000
  %2039 = fadd fast float %2038, 0xBFF8000040000000
  %2040 = call float @dx.op.unary.f32(i32 7, float %2039)  ; Saturate(value)
  %2041 = call float @dx.op.unary.f32(i32 7, float %2034)  ; Saturate(value)
  %2042 = fmul fast float %1586, 1.000000e+01
  %2043 = call float @dx.op.unary.f32(i32 7, float %2042)  ; Saturate(value)
  %2044 = fmul fast float %2043, 2.000000e+00
  %2045 = fsub fast float 3.000000e+00, %2044
  %2046 = fmul fast float %2043, %2043
  %2047 = fmul fast float %2046, %2045
  %2048 = fsub fast float 1.000000e+00, %2047
  %2049 = fsub fast float 0x3FE3333340000000, %1607
  %2050 = fmul fast float %2049, 0x400AAAAAA0000000
  %2051 = call float @dx.op.unary.f32(i32 7, float %2050)  ; Saturate(value)
  %2052 = fmul fast float %2048, %2051
  %2053 = fmul fast float %1644, 0x3FEA2B8620000000
  %2054 = fmul fast float %1645, 0x3FEA2B8620000000
  %2055 = fmul fast float %1646, 0x3FEA2B8620000000
  %2056 = fadd fast float %2053, 0x3FC81DFBA0000000
  %2057 = fmul fast float %2056, %1644
  %2058 = fadd fast float %2057, 0x3F910E6020000000
  %2059 = fadd fast float %2054, 0x3FC81DFBA0000000
  %2060 = fmul fast float %2059, %1645
  %2061 = fadd fast float %2060, 0x3F910E6020000000
  %2062 = fadd fast float %2055, 0x3FC81DFBA0000000
  %2063 = fmul fast float %2062, %1646
  %2064 = fadd fast float %2063, 0x3F910E6020000000
  %2065 = call float @dx.op.unary.f32(i32 7, float %2058)  ; Saturate(value)
  %2066 = call float @dx.op.unary.f32(i32 7, float %2061)  ; Saturate(value)
  %2067 = call float @dx.op.unary.f32(i32 7, float %2064)  ; Saturate(value)
  %2068 = fsub fast float %2065, %1644
  %2069 = fsub fast float %2066, %1645
  %2070 = fsub fast float %2067, %1646
  %2071 = fmul fast float %2068, %2041
  %2072 = fmul fast float %2071, %2052
  %2073 = fmul fast float %2069, %2041
  %2074 = fmul fast float %2073, %2052
  %2075 = fmul fast float %2070, %2041
  %2076 = fmul fast float %2075, %2052
  %2077 = fadd fast float %2072, %1644
  %2078 = fadd fast float %2074, %1645
  %2079 = fadd fast float %2076, %1646
  %2080 = fmul fast float %1540, %1540
  %2081 = fmul fast float %2080, %2080
  %2082 = fadd fast float %2037, 1.000000e+00
  %2083 = fsub fast float %2082, %2052
  %2084 = call float @dx.op.unary.f32(i32 7, float %2083)  ; Saturate(value)
  %2085 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2086 = call float @dx.op.unary.f32(i32 7, float %2085)  ; Saturate(value)
  %2087 = fsub fast float 1.000000e+00, %2081
  %2088 = call float @dx.op.binary.f32(i32 36, float %2084, float %2087)  ; FMin(a,b)
  %2089 = call float @dx.op.unary.f32(i32 7, float %2040)  ; Saturate(value)
  %2090 = call float @dx.op.binary.f32(i32 35, float %2088, float %2089)  ; FMax(a,b)
  %2091 = fadd fast float %2086, 0xBFE4CCCCC0000000
  %2092 = fmul fast float %2091, 0x4006DB6DA0000000
  %2093 = call float @dx.op.unary.f32(i32 7, float %2092)  ; Saturate(value)
  %2094 = fmul fast float %2093, 2.000000e+00
  %2095 = fsub fast float 3.000000e+00, %2094
  %2096 = bitcast float %1604 to i32
  %2097 = ashr i32 %2096, 1
  %2098 = add nsw i32 %2097, 532487669
  %2099 = bitcast i32 %2098 to float
  %2100 = fsub fast float 1.000000e+00, %2099
  %2101 = bitcast float %2100 to i32
  %2102 = sub nsw i32 2129859010, %2101
  %2103 = bitcast i32 %2102 to float
  %2104 = fmul fast float %2103, 2.000000e+00
  %2105 = bitcast float %1605 to i32
  %2106 = ashr i32 %2105, 1
  %2107 = add nsw i32 %2106, 532487669
  %2108 = bitcast i32 %2107 to float
  %2109 = fsub fast float 1.000000e+00, %2108
  %2110 = bitcast float %2109 to i32
  %2111 = sub nsw i32 2129859010, %2110
  %2112 = bitcast i32 %2111 to float
  %2113 = fmul fast float %2112, 2.000000e+00
  %2114 = bitcast float %1606 to i32
  %2115 = ashr i32 %2114, 1
  %2116 = add nsw i32 %2115, 532487669
  %2117 = bitcast i32 %2116 to float
  %2118 = fsub fast float 1.000000e+00, %2117
  %2119 = bitcast float %2118 to i32
  %2120 = sub nsw i32 2129859010, %2119
  %2121 = bitcast i32 %2120 to float
  %2122 = fmul fast float %2121, 2.000000e+00
  %2123 = fsub fast float 0x4002A9FBE0000000, %2104
  %2124 = fadd fast float %2104, 0x3FD54FDF00000000
  %2125 = bitcast float %2124 to i32
  %2126 = sub nsw i32 2129859010, %2125
  %2127 = bitcast i32 %2126 to float
  %2128 = fmul fast float %2127, %2123
  %2129 = fmul fast float %2128, %2128
  %2130 = fsub fast float 0x4002A9FBE0000000, %2113
  %2131 = fadd fast float %2113, 0x3FD54FDF00000000
  %2132 = bitcast float %2131 to i32
  %2133 = sub nsw i32 2129859010, %2132
  %2134 = bitcast i32 %2133 to float
  %2135 = fmul fast float %2134, %2130
  %2136 = fmul fast float %2135, %2135
  %2137 = fsub fast float 0x4002A9FBE0000000, %2122
  %2138 = fadd fast float %2122, 0x3FD54FDF00000000
  %2139 = bitcast float %2138 to i32
  %2140 = sub nsw i32 2129859010, %2139
  %2141 = bitcast i32 %2140 to float
  %2142 = fmul fast float %2141, %2137
  %2143 = fmul fast float %2142, %2142
  %2144 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2129)  ; FMax(a,b)
  %2145 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2136)  ; FMax(a,b)
  %2146 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2143)  ; FMax(a,b)
  %2147 = fsub fast float 1.000000e+00, %2032
  %2148 = fadd fast float %2147, %2048
  %2149 = call float @dx.op.unary.f32(i32 7, float %2148)  ; Saturate(value)
  %2150 = fsub fast float 1.000000e+00, %2024
  %2151 = fmul fast float %2090, %2150
  %2152 = fmul fast float %2093, %2093
  %2153 = fmul fast float %2152, %2151
  %2154 = fmul fast float %2153, %2095
  %2155 = fmul fast float %2150, 0xBFE99999A0000000
  %2156 = fmul fast float %2155, %2041
  %2157 = fmul fast float %2156, %2052
  %2158 = fadd fast float %2157, 1.000000e+00
  %2159 = fadd fast float %1607, -1.000000e+00
  %2160 = fmul fast float %2158, %2159
  %2161 = fadd fast float %2160, 1.000000e+00
  %2162 = fsub fast float %2144, %1604
  %2163 = fsub fast float %2145, %1605
  %2164 = fsub fast float %2146, %1606
  %2165 = fmul fast float %2154, %2162
  %2166 = fmul fast float %2154, %2163
  %2167 = fmul fast float %2154, %2164
  %2168 = fadd fast float %2165, %1604
  %2169 = fadd fast float %2166, %1605
  %2170 = fadd fast float %2167, %1606
  %2171 = fsub fast float %88, %1556
  %2172 = fsub fast float %89, %1557
  %2173 = fsub fast float %90, %1558
  %2174 = fmul fast float %2154, %2171
  %2175 = fmul fast float %2154, %2172
  %2176 = fmul fast float %2154, %2173
  %2177 = fadd fast float %2174, %1556
  %2178 = fadd fast float %2175, %1557
  %2179 = fadd fast float %2176, %1558
  %2180 = fmul fast float %2154, %2149
  %2181 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  %2182 = fsub fast float 1.000000e+00, %2181
  %2183 = fmul fast float %2180, %2182
  %2184 = fadd fast float %2183, %2181
  %2185 = fsub fast float 1.000000e+00, %1540
  %2186 = fmul fast float %2154, %2185
  %2187 = fadd fast float %2186, %1540
  %2188 = call float @dx.op.dot3.f32(i32 55, float %2177, float %2178, float %2179, float %2177, float %2178, float %2179)  ; Dot3(ax,ay,az,bx,by,bz)
  %2189 = call float @dx.op.unary.f32(i32 25, float %2188)  ; Rsqrt(value)
  %2190 = fmul fast float %2177, %2189
  %2191 = fmul fast float %2178, %2189
  %2192 = fmul fast float %2179, %2189
  br label %2193

; <label>:2193                                    ; preds = %2031, %2010
  %2194 = phi float [ %2168, %2031 ], [ %1604, %2010 ]
  %2195 = phi float [ %2169, %2031 ], [ %1605, %2010 ]
  %2196 = phi float [ %2170, %2031 ], [ %1606, %2010 ]
  %2197 = phi float [ %2190, %2031 ], [ %1556, %2010 ]
  %2198 = phi float [ %2191, %2031 ], [ %1557, %2010 ]
  %2199 = phi float [ %2192, %2031 ], [ %1558, %2010 ]
  %2200 = phi float [ %2077, %2031 ], [ %1644, %2010 ]
  %2201 = phi float [ %2078, %2031 ], [ %1645, %2010 ]
  %2202 = phi float [ %2079, %2031 ], [ %1646, %2010 ]
  %2203 = phi float [ %2184, %2031 ], [ %1607, %2010 ]
  %2204 = phi float [ %2187, %2031 ], [ %1540, %2010 ]
  %2205 = fsub fast float -0.000000e+00, %135
  %2206 = call float @dx.op.unary.f32(i32 84, float %76)  ; DerivCoarseY(value)
  %2207 = call float @dx.op.unary.f32(i32 6, float %2206)  ; FAbs(value)
  %2208 = call float @dx.op.unary.f32(i32 83, float %76)  ; DerivCoarseX(value)
  %2209 = call float @dx.op.unary.f32(i32 6, float %2208)  ; FAbs(value)
  %2210 = call float @dx.op.binary.f32(i32 35, float %2209, float %2207)  ; FMax(a,b)
  %2211 = fcmp fast ogt float %75, 9.843750e-01
  %2212 = select i1 %226, float 0.000000e+00, float %2196
  %2213 = call float @dx.op.dot3.f32(i32 55, float %2197, float %2198, float %2199, float %2028, float %2029, float %2030)  ; Dot3(ax,ay,az,bx,by,bz)
  %2214 = call float @dx.op.unary.f32(i32 7, float %2213)  ; Saturate(value)
  %2215 = call float @dx.op.dot3.f32(i32 55, float %152, float %153, float %154, float %2197, float %2198, float %2199)  ; Dot3(ax,ay,az,bx,by,bz)
  %2216 = fmul fast float %2215, 2.000000e+00
  %2217 = fmul fast float %2216, %2197
  %2218 = fmul fast float %2216, %2198
  %2219 = fmul fast float %2216, %2199
  %2220 = fsub fast float %152, %2217
  %2221 = fsub fast float %153, %2218
  %2222 = fsub fast float %154, %2219
  %2223 = call float @dx.op.binary.f32(i32 36, float %2204, float 1.000000e+00)  ; FMin(a,b)
  %2224 = fsub fast float 1.000000e+00, %2204
  %2225 = bitcast float %2224 to i32
  %2226 = sub nsw i32 2129859010, %2225
  %2227 = bitcast i32 %2226 to float
  %2228 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  %2229 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %2230 = fcmp fast oeq float %2229, 0.000000e+00
  %2231 = fcmp fast oeq float %2228, 0.000000e+00
  %2232 = or i1 %2231, %2230
  br i1 %2232, label %2262, label %2233

; <label>:2233                                    ; preds = %2193
  %2234 = fsub fast float -0.000000e+00, %63
  %2235 = fsub fast float -0.000000e+00, %61
  %2236 = call float @dx.op.unary.f32(i32 24, float %2229)  ; Sqrt(value)
  %2237 = fdiv fast float %2236, %2228
  %2238 = fcmp fast ogt float %2237, 0x3FFB6F8900000000
  %2239 = select i1 %2238, float 0x3FFB6F8900000000, float %2237
  %2240 = fmul fast float %2239, 0x3FE8A23460000000
  %2241 = call float @dx.op.unary.f32(i32 7, float %2240)  ; Saturate(value)
  %2242 = call float @dx.op.binary.f32(i32 35, float %2239, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2243 = fmul fast float %2241, %2228
  %2244 = fmul fast float %2242, 0x3FF279A740000000
  %2245 = fadd fast float %2244, -1.000000e+00
  %2246 = call float @dx.op.dot3.f32(i32 55, float %2234, float %2235, float %62, float %2234, float %2235, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %2247 = call float @dx.op.unary.f32(i32 25, float %2246)  ; Rsqrt(value)
  %2248 = fmul fast float %2247, %2234
  %2249 = fmul fast float %2247, %2235
  %2250 = fmul fast float %2247, %62
  %2251 = fmul fast float %2245, %2245
  %2252 = fsub fast float 1.000000e+00, %2251
  %2253 = fmul fast float %2242, 0x40005F8BE0000000
  %2254 = fsub fast float 0x400C5BF8A0000000, %2253
  %2255 = fdiv fast float %2243, %2254
  %2256 = fmul fast float %2255, 0x3FEE31C3C0000000
  %2257 = fmul fast float %2256, %2252
  %2258 = fmul fast float %2242, 0x3FDACB7480000000
  %2259 = fadd fast float %2258, 0xBFD7347680000000
  %2260 = fmul fast float %2259, %2255
  %2261 = fmul fast float %2260, %2252
  br label %2262

; <label>:2262                                    ; preds = %2233, %2193
  %2263 = phi float [ %2248, %2233 ], [ 0.000000e+00, %2193 ]
  %2264 = phi float [ %2249, %2233 ], [ 0.000000e+00, %2193 ]
  %2265 = phi float [ %2250, %2233 ], [ 0.000000e+00, %2193 ]
  %2266 = phi float [ %2257, %2233 ], [ 0.000000e+00, %2193 ]
  %2267 = phi float [ %2261, %2233 ], [ 0.000000e+00, %2193 ]
  %2268 = call float @dx.op.dot3.f32(i32 55, float %2263, float %2264, float %2265, float %2197, float %2198, float %2199)  ; Dot3(ax,ay,az,bx,by,bz)
  %2269 = fmul fast float %2268, 0x3FDF454380000000
  %2270 = fmul fast float %2268, %2268
  %2271 = fmul fast float %2270, 0x3FEE471020000000
  %2272 = fadd fast float %2271, 0xBFD42F6020000000
  %2273 = fmul fast float %2228, 0x3FD20DD760000000
  %2274 = fmul fast float %2272, %2267
  %2275 = fadd fast float %2274, %2273
  %2276 = fmul fast float %2269, %2266
  %2277 = fadd fast float %2275, %2276
  %2278 = fsub fast float %2275, %2276
  %2279 = call float @dx.op.dot3.f32(i32 55, float %2263, float %2264, float %2265, float %2220, float %2221, float %2222)  ; Dot3(ax,ay,az,bx,by,bz)
  %2280 = fmul fast float %2279, 0x3FDF454380000000
  %2281 = fmul fast float %2279, %2279
  %2282 = fmul fast float %2281, 0x3FEE471020000000
  %2283 = fadd fast float %2282, 0xBFD42F6020000000
  %2284 = call float @dx.op.dot3.f32(i32 55, float %2228, float %2266, float %2267, float 0x3FD20DD760000000, float %2280, float %2283)  ; Dot3(ax,ay,az,bx,by,bz)
  %2285 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %56)  ; FMax(a,b)
  %2286 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %2287 = fcmp fast oeq float %2286, 0.000000e+00
  %2288 = fcmp fast oeq float %2285, 0.000000e+00
  %2289 = or i1 %2288, %2287
  br i1 %2289, label %2319, label %2290

; <label>:2290                                    ; preds = %2262
  %2291 = fsub fast float -0.000000e+00, %59
  %2292 = fsub fast float -0.000000e+00, %57
  %2293 = call float @dx.op.unary.f32(i32 24, float %2286)  ; Sqrt(value)
  %2294 = fdiv fast float %2293, %2285
  %2295 = fcmp fast ogt float %2294, 0x3FFB6F8900000000
  %2296 = select i1 %2295, float 0x3FFB6F8900000000, float %2294
  %2297 = fmul fast float %2296, 0x3FE8A23460000000
  %2298 = call float @dx.op.unary.f32(i32 7, float %2297)  ; Saturate(value)
  %2299 = call float @dx.op.binary.f32(i32 35, float %2296, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2300 = fmul fast float %2298, %2285
  %2301 = fmul fast float %2299, 0x3FF279A740000000
  %2302 = fadd fast float %2301, -1.000000e+00
  %2303 = call float @dx.op.dot3.f32(i32 55, float %2291, float %2292, float %58, float %2291, float %2292, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %2304 = call float @dx.op.unary.f32(i32 25, float %2303)  ; Rsqrt(value)
  %2305 = fmul fast float %2304, %2291
  %2306 = fmul fast float %2304, %2292
  %2307 = fmul fast float %2304, %58
  %2308 = fmul fast float %2302, %2302
  %2309 = fsub fast float 1.000000e+00, %2308
  %2310 = fmul fast float %2299, 0x40005F8BE0000000
  %2311 = fsub fast float 0x400C5BF8A0000000, %2310
  %2312 = fdiv fast float %2300, %2311
  %2313 = fmul fast float %2312, 0x3FEE31C3C0000000
  %2314 = fmul fast float %2313, %2309
  %2315 = fmul fast float %2299, 0x3FDACB7480000000
  %2316 = fadd fast float %2315, 0xBFD7347680000000
  %2317 = fmul fast float %2316, %2312
  %2318 = fmul fast float %2317, %2309
  br label %2319

; <label>:2319                                    ; preds = %2290, %2262
  %2320 = phi float [ %2305, %2290 ], [ 0.000000e+00, %2262 ]
  %2321 = phi float [ %2306, %2290 ], [ 0.000000e+00, %2262 ]
  %2322 = phi float [ %2307, %2290 ], [ 0.000000e+00, %2262 ]
  %2323 = phi float [ %2314, %2290 ], [ 0.000000e+00, %2262 ]
  %2324 = phi float [ %2318, %2290 ], [ 0.000000e+00, %2262 ]
  %2325 = call float @dx.op.dot3.f32(i32 55, float %2320, float %2321, float %2322, float %2197, float %2198, float %2199)  ; Dot3(ax,ay,az,bx,by,bz)
  %2326 = fmul fast float %2325, 0x3FDF454380000000
  %2327 = fmul fast float %2325, %2325
  %2328 = fmul fast float %2327, 0x3FEE471020000000
  %2329 = fadd fast float %2328, 0xBFD42F6020000000
  %2330 = fmul fast float %2285, 0x3FD20DD760000000
  %2331 = fmul fast float %2329, %2324
  %2332 = fadd fast float %2331, %2330
  %2333 = fmul fast float %2326, %2323
  %2334 = fadd fast float %2332, %2333
  %2335 = fsub fast float %2332, %2333
  %2336 = call float @dx.op.dot3.f32(i32 55, float %2320, float %2321, float %2322, float %2220, float %2221, float %2222)  ; Dot3(ax,ay,az,bx,by,bz)
  %2337 = fmul fast float %2336, 0x3FDF454380000000
  %2338 = fmul fast float %2336, %2336
  %2339 = fmul fast float %2338, 0x3FEE471020000000
  %2340 = fadd fast float %2339, 0xBFD42F6020000000
  %2341 = call float @dx.op.dot3.f32(i32 55, float %2285, float %2323, float %2324, float 0x3FD20DD760000000, float %2337, float %2340)  ; Dot3(ax,ay,az,bx,by,bz)
  %2342 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %2343 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %2344 = fcmp fast oeq float %2343, 0.000000e+00
  %2345 = fcmp fast oeq float %2342, 0.000000e+00
  %2346 = or i1 %2345, %2344
  br i1 %2346, label %2376, label %2347

; <label>:2347                                    ; preds = %2319
  %2348 = fsub fast float -0.000000e+00, %55
  %2349 = fsub fast float -0.000000e+00, %53
  %2350 = call float @dx.op.unary.f32(i32 24, float %2343)  ; Sqrt(value)
  %2351 = fdiv fast float %2350, %2342
  %2352 = fcmp fast ogt float %2351, 0x3FFB6F8900000000
  %2353 = select i1 %2352, float 0x3FFB6F8900000000, float %2351
  %2354 = fmul fast float %2353, 0x3FE8A23460000000
  %2355 = call float @dx.op.unary.f32(i32 7, float %2354)  ; Saturate(value)
  %2356 = call float @dx.op.binary.f32(i32 35, float %2353, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2357 = fmul fast float %2355, %2342
  %2358 = fmul fast float %2356, 0x3FF279A740000000
  %2359 = fadd fast float %2358, -1.000000e+00
  %2360 = call float @dx.op.dot3.f32(i32 55, float %2348, float %2349, float %54, float %2348, float %2349, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %2361 = call float @dx.op.unary.f32(i32 25, float %2360)  ; Rsqrt(value)
  %2362 = fmul fast float %2361, %2348
  %2363 = fmul fast float %2361, %2349
  %2364 = fmul fast float %2361, %54
  %2365 = fmul fast float %2359, %2359
  %2366 = fsub fast float 1.000000e+00, %2365
  %2367 = fmul fast float %2356, 0x40005F8BE0000000
  %2368 = fsub fast float 0x400C5BF8A0000000, %2367
  %2369 = fdiv fast float %2357, %2368
  %2370 = fmul fast float %2369, 0x3FEE31C3C0000000
  %2371 = fmul fast float %2370, %2366
  %2372 = fmul fast float %2356, 0x3FDACB7480000000
  %2373 = fadd fast float %2372, 0xBFD7347680000000
  %2374 = fmul fast float %2373, %2369
  %2375 = fmul fast float %2374, %2366
  br label %2376

; <label>:2376                                    ; preds = %2347, %2319
  %2377 = phi float [ %2362, %2347 ], [ 0.000000e+00, %2319 ]
  %2378 = phi float [ %2363, %2347 ], [ 0.000000e+00, %2319 ]
  %2379 = phi float [ %2364, %2347 ], [ 0.000000e+00, %2319 ]
  %2380 = phi float [ %2371, %2347 ], [ 0.000000e+00, %2319 ]
  %2381 = phi float [ %2375, %2347 ], [ 0.000000e+00, %2319 ]
  %2382 = call float @dx.op.dot3.f32(i32 55, float %2377, float %2378, float %2379, float %2197, float %2198, float %2199)  ; Dot3(ax,ay,az,bx,by,bz)
  %2383 = fmul fast float %2382, 0x3FDF454380000000
  %2384 = fmul fast float %2382, %2382
  %2385 = fmul fast float %2384, 0x3FEE471020000000
  %2386 = fadd fast float %2385, 0xBFD42F6020000000
  %2387 = fmul fast float %2342, 0x3FD20DD760000000
  %2388 = fmul fast float %2386, %2381
  %2389 = fadd fast float %2388, %2387
  %2390 = fmul fast float %2383, %2380
  %2391 = fadd fast float %2389, %2390
  %2392 = fsub fast float %2389, %2390
  %2393 = call float @dx.op.dot3.f32(i32 55, float %2377, float %2378, float %2379, float %2220, float %2221, float %2222)  ; Dot3(ax,ay,az,bx,by,bz)
  %2394 = fmul fast float %2393, 0x3FDF454380000000
  %2395 = fmul fast float %2393, %2393
  %2396 = fmul fast float %2395, 0x3FEE471020000000
  %2397 = fadd fast float %2396, 0xBFD42F6020000000
  %2398 = call float @dx.op.dot3.f32(i32 55, float %2342, float %2380, float %2381, float 0x3FD20DD760000000, float %2394, float %2397)  ; Dot3(ax,ay,az,bx,by,bz)
  %2399 = call float @dx.op.binary.f32(i32 35, float %2277, float 0.000000e+00)  ; FMax(a,b)
  %2400 = call float @dx.op.binary.f32(i32 35, float %2334, float 0.000000e+00)  ; FMax(a,b)
  %2401 = call float @dx.op.binary.f32(i32 35, float %2391, float 0.000000e+00)  ; FMax(a,b)
  %2402 = call float @dx.op.binary.f32(i32 35, float %2278, float 0.000000e+00)  ; FMax(a,b)
  %2403 = call float @dx.op.binary.f32(i32 35, float %2335, float 0.000000e+00)  ; FMax(a,b)
  %2404 = call float @dx.op.binary.f32(i32 35, float %2392, float 0.000000e+00)  ; FMax(a,b)
  %2405 = call float @dx.op.binary.f32(i32 35, float %2284, float 0.000000e+00)  ; FMax(a,b)
  %2406 = call float @dx.op.binary.f32(i32 35, float %2341, float 0.000000e+00)  ; FMax(a,b)
  %2407 = call float @dx.op.binary.f32(i32 35, float %2398, float 0.000000e+00)  ; FMax(a,b)
  %2408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2409 = extractvalue %dx.types.CBufRet.f32 %2408, 0
  %2410 = call float @dx.op.binary.f32(i32 36, float %2200, float %2409)  ; FMin(a,b)
  %2411 = fsub fast float 1.000000e+00, %2223
  %2412 = fmul fast float %2410, %2411
  %2413 = fsub fast float 1.000000e+00, %2412
  %2414 = bitcast float %2413 to i32
  %2415 = sub nsw i32 2129859010, %2414
  %2416 = bitcast i32 %2415 to float
  %2417 = call float @dx.op.binary.f32(i32 36, float %2201, float %2409)  ; FMin(a,b)
  %2418 = fmul fast float %2417, %2411
  %2419 = fsub fast float 1.000000e+00, %2418
  %2420 = bitcast float %2419 to i32
  %2421 = sub nsw i32 2129859010, %2420
  %2422 = bitcast i32 %2421 to float
  %2423 = call float @dx.op.binary.f32(i32 36, float %2202, float %2409)  ; FMin(a,b)
  %2424 = fmul fast float %2423, %2411
  %2425 = fsub fast float 1.000000e+00, %2424
  %2426 = bitcast float %2425 to i32
  %2427 = sub nsw i32 2129859010, %2426
  %2428 = bitcast i32 %2427 to float
  %2429 = fmul fast float %2399, %2223
  %2430 = fmul fast float %2429, %2416
  %2431 = fmul fast float %2400, %2223
  %2432 = fmul fast float %2431, %2422
  %2433 = fmul fast float %2401, %2223
  %2434 = fmul fast float %2433, %2428
  %2435 = call float @dx.op.binary.f32(i32 36, float %2194, float %2409)  ; FMin(a,b)
  %2436 = fmul fast float %2435, %2411
  %2437 = fsub fast float 1.000000e+00, %2436
  %2438 = bitcast float %2437 to i32
  %2439 = sub nsw i32 2129859010, %2438
  %2440 = bitcast i32 %2439 to float
  %2441 = call float @dx.op.binary.f32(i32 36, float %2195, float %2409)  ; FMin(a,b)
  %2442 = fmul fast float %2441, %2411
  %2443 = fsub fast float 1.000000e+00, %2442
  %2444 = bitcast float %2443 to i32
  %2445 = sub nsw i32 2129859010, %2444
  %2446 = bitcast i32 %2445 to float
  %2447 = call float @dx.op.binary.f32(i32 36, float %2212, float %2409)  ; FMin(a,b)
  %2448 = fmul fast float %2447, %2411
  %2449 = fsub fast float 1.000000e+00, %2448
  %2450 = bitcast float %2449 to i32
  %2451 = sub nsw i32 2129859010, %2450
  %2452 = bitcast i32 %2451 to float
  %2453 = fmul fast float %2405, %2223
  %2454 = fmul fast float %2453, %2440
  %2455 = fmul fast float %2406, %2223
  %2456 = fmul fast float %2455, %2446
  %2457 = fmul fast float %2407, %2223
  %2458 = fmul fast float %2457, %2452
  %2459 = call float @dx.op.dot3.f32(i32 55, float %2430, float %2432, float %2434, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2460 = select i1 %226, float 0.000000e+00, float %2430
  %2461 = select i1 %226, float %2459, float %2432
  %2462 = select i1 %226, float 0.000000e+00, float %2434
  %2463 = call float @dx.op.dot3.f32(i32 55, float %2402, float %2403, float %2404, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2464 = select i1 %226, float 0.000000e+00, float %2402
  %2465 = select i1 %226, float %2463, float %2403
  %2466 = select i1 %226, float 0.000000e+00, float %2404
  %2467 = call float @dx.op.dot3.f32(i32 55, float %2454, float %2456, float %2458, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2468 = select i1 %226, float 0.000000e+00, float %2454
  %2469 = select i1 %226, float %2467, float %2456
  %2470 = select i1 %226, float 0.000000e+00, float %2458
  %2471 = fmul fast float %930, %930
  %2472 = call float @dx.op.unary.f32(i32 7, float %2471)  ; Saturate(value)
  %2473 = fmul fast float %2214, 9.843750e-01
  %2474 = fmul fast float %2203, 9.843750e-01
  %2475 = fadd fast float %2473, 7.812500e-03
  %2476 = fadd fast float %2474, 7.812500e-03
  %2477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %2475, float %2476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2478 = extractvalue %dx.types.ResRet.f32 %2477, 0
  %2479 = extractvalue %dx.types.ResRet.f32 %2477, 1
  %2480 = extractvalue %dx.types.ResRet.f32 %2477, 2
  %2481 = extractvalue %dx.types.ResRet.f32 %2477, 3
  %2482 = fsub fast float 1.000000e+00, %2472
  %2483 = fsub fast float %2480, %2478
  %2484 = fsub fast float %2481, %2479
  %2485 = fmul fast float %2483, %2482
  %2486 = fmul fast float %2484, %2482
  %2487 = fadd fast float %2485, %2478
  %2488 = fadd fast float %2486, %2479
  %2489 = fmul fast float %2487, %2194
  %2490 = fmul fast float %2487, %2195
  %2491 = fmul fast float %2487, %2212
  %2492 = fadd fast float %2489, %2488
  %2493 = fadd fast float %2490, %2488
  %2494 = fadd fast float %2491, %2488
  %2495 = fcmp fast ogt float %1530, 0.000000e+00
  br i1 %2495, label %2496, label %2522

; <label>:2496                                    ; preds = %2376
  %2497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1530, float %2214, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2498 = extractvalue %dx.types.ResRet.f32 %2497, 0
  %2499 = extractvalue %dx.types.ResRet.f32 %2497, 1
  %2500 = extractvalue %dx.types.ResRet.f32 %2497, 2
  %2501 = fadd fast float %2498, -5.000000e-01
  %2502 = fadd fast float %2499, -5.000000e-01
  %2503 = fadd fast float %2500, -5.000000e-01
  %2504 = fsub fast float 1.000000e+00, %2194
  %2505 = fsub fast float 1.000000e+00, %2195
  %2506 = fsub fast float 1.000000e+00, %2212
  %2507 = fmul fast float %2194, 4.000000e+00
  %2508 = fmul fast float %2507, %2504
  %2509 = fmul fast float %2508, %2501
  %2510 = fmul fast float %2195, 4.000000e+00
  %2511 = fmul fast float %2510, %2505
  %2512 = fmul fast float %2511, %2502
  %2513 = fmul fast float %2212, 4.000000e+00
  %2514 = fmul fast float %2513, %2506
  %2515 = fmul fast float %2514, %2503
  %2516 = fadd fast float %2509, %2492
  %2517 = fadd fast float %2512, %2493
  %2518 = fadd fast float %2515, %2494
  %2519 = call float @dx.op.unary.f32(i32 7, float %2516)  ; Saturate(value)
  %2520 = call float @dx.op.unary.f32(i32 7, float %2517)  ; Saturate(value)
  %2521 = call float @dx.op.unary.f32(i32 7, float %2518)  ; Saturate(value)
  br label %2522

; <label>:2522                                    ; preds = %2496, %2376
  %2523 = phi float [ %2519, %2496 ], [ %2492, %2376 ]
  %2524 = phi float [ %2520, %2496 ], [ %2493, %2376 ]
  %2525 = phi float [ %2521, %2496 ], [ %2494, %2376 ]
  %2526 = call float @dx.op.binary.f32(i32 35, float %2524, float %2525)  ; FMax(a,b)
  %2527 = call float @dx.op.binary.f32(i32 35, float %2523, float %2526)  ; FMax(a,b)
  %2528 = fsub fast float 1.000000e+00, %2527
  %2529 = call float @dx.op.dot3.f32(i32 55, float %2200, float %2201, float %2202, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2530 = fcmp fast ogt float %2529, 0x3E7FF19E20000000
  %2531 = fdiv fast float 1.000000e+00, %2529
  %2532 = select i1 %2530, float %2531, float 0.000000e+00
  %2533 = fmul fast float %2532, %2200
  %2534 = fmul fast float %2532, %2201
  %2535 = fmul fast float %2532, %2202
  %2536 = fadd fast float %2533, -1.000000e+00
  %2537 = fadd fast float %2534, -1.000000e+00
  %2538 = fadd fast float %2535, -1.000000e+00
  %2539 = fmul fast float %2536, 5.000000e-01
  %2540 = fmul fast float %2537, 5.000000e-01
  %2541 = fmul fast float %2538, 5.000000e-01
  %2542 = fadd fast float %2539, 1.000000e+00
  %2543 = fadd fast float %2540, 1.000000e+00
  %2544 = fadd fast float %2541, 1.000000e+00
  %2545 = call float @dx.op.binary.f32(i32 35, float %2214, float 0x3F50624DE0000000)  ; FMax(a,b)
  %2546 = fdiv fast float %930, %2545
  %2547 = fcmp fast olt float %1630, 1.270000e+02
  %2548 = fcmp fast olt float %1631, 1.270000e+02
  %2549 = fcmp fast olt float %1632, 1.270000e+02
  %2550 = fmul fast float %1630, 0xBFF7154760000000
  %2551 = fmul fast float %2550, %2546
  %2552 = fmul fast float %1631, 0xBFF7154760000000
  %2553 = fmul fast float %2552, %2546
  %2554 = fmul fast float %1632, 0xBFF7154760000000
  %2555 = fmul fast float %2554, %2546
  %2556 = call float @dx.op.unary.f32(i32 21, float %2551)  ; Exp(value)
  %2557 = call float @dx.op.unary.f32(i32 21, float %2553)  ; Exp(value)
  %2558 = call float @dx.op.unary.f32(i32 21, float %2555)  ; Exp(value)
  %2559 = call float @dx.op.unary.f32(i32 7, float %2556)  ; Saturate(value)
  %2560 = call float @dx.op.unary.f32(i32 7, float %2557)  ; Saturate(value)
  %2561 = call float @dx.op.unary.f32(i32 7, float %2558)  ; Saturate(value)
  %2562 = select i1 %2547, float %2559, float 0.000000e+00
  %2563 = select i1 %2548, float %2560, float 0.000000e+00
  %2564 = select i1 %2549, float %2561, float 0.000000e+00
  %2565 = fmul fast float %2562, %2528
  %2566 = fmul fast float %2563, %2528
  %2567 = fmul fast float %2564, %2528
  %2568 = fadd fast float %2565, -1.000000e+00
  %2569 = fadd fast float %2566, -1.000000e+00
  %2570 = fadd fast float %2567, -1.000000e+00
  %2571 = fmul fast float %2568, %1585
  %2572 = fmul fast float %2569, %1585
  %2573 = fmul fast float %2570, %1585
  %2574 = fmul fast float %2523, %2468
  %2575 = fmul fast float %2524, %2469
  %2576 = fmul fast float %2525, %2470
  %2577 = fsub fast float 1.000000e+00, %2214
  %2578 = bitcast float %2577 to i32
  %2579 = sitofp i32 %2578 to float
  %2580 = fmul fast float %2579, 5.000000e+00
  %2581 = fadd fast float %2580, 0xC1EFBF8940000000
  %2582 = fptosi float %2581 to i32
  %2583 = bitcast i32 %2582 to float
  %2584 = fmul fast float %2583, %1529
  %2585 = fmul fast float %2460, %2584
  %2586 = fmul fast float %2585, %2528
  %2587 = fmul fast float %2586, %2542
  %2588 = fmul fast float %2461, %2584
  %2589 = fmul fast float %2588, %2528
  %2590 = fmul fast float %2589, %2543
  %2591 = fmul fast float %2462, %2584
  %2592 = fmul fast float %2591, %2528
  %2593 = fmul fast float %2592, %2544
  %2594 = fadd fast float %2574, %1534
  %2595 = fadd fast float %2594, %2587
  %2596 = fmul fast float %2595, %1585
  %2597 = fadd fast float %2575, %1535
  %2598 = fadd fast float %2597, %2590
  %2599 = fmul fast float %2598, %1585
  %2600 = fadd fast float %2576, %1536
  %2601 = fadd fast float %2600, %2593
  %2602 = fmul fast float %2601, %1585
  %2603 = fmul fast float %2195, 0x4012D0A400000000
  %2604 = fadd fast float %2573, 1.000000e+00
  %2605 = fadd fast float %2572, 1.000000e+00
  %2606 = fadd fast float %2571, 1.000000e+00
  %2607 = fmul fast float %2528, %2462
  %2608 = fmul fast float %2528, %2461
  %2609 = fmul fast float %2528, %2460
  %2610 = fsub fast float 1.000000e+00, %2203
  %2611 = fmul fast float %2610, %1585
  %2612 = fsub fast float 1.000000e+00, %2611
  %2613 = call float @dx.op.unary.f32(i32 7, float %2612)  ; Saturate(value)
  %2614 = fsub fast float 1.000000e+00, %2613
  %2615 = fadd fast float %2603, 0x3FDB6377A0000000
  %2616 = fmul fast float %2614, %2615
  %2617 = call float @dx.op.dot3.f32(i32 55, float %1648, float %1649, float %1650, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2618 = fadd fast float %2616, %2617
  %2619 = call float @dx.op.unary.f32(i32 7, float %2618)  ; Saturate(value)
  %2620 = call float @dx.op.binary.f32(i32 35, float %2619, float 0x3F847AE140000000)  ; FMax(a,b)
  %2621 = fmul fast float %2620, %2620
  %2622 = fmul fast float %2621, %2621
  %2623 = fmul fast float %2622, 0xC00A935000000000
  %2624 = call float @dx.op.unary.f32(i32 21, float %2623)  ; Exp(value)
  %2625 = fsub fast float 1.000000e+00, %2624
  %2626 = fmul fast float %2606, %2464
  %2627 = fmul fast float %2626, %2625
  %2628 = fmul fast float %2605, %2465
  %2629 = fmul fast float %2628, %2625
  %2630 = fmul fast float %2604, %2466
  %2631 = fmul fast float %2630, %2625
  %2632 = fadd fast float %2627, %2609
  %2633 = fmul fast float %2632, %1585
  %2634 = fadd fast float %2629, %2608
  %2635 = fmul fast float %2634, %1585
  %2636 = fadd fast float %2631, %2607
  %2637 = fmul fast float %2636, %1585
  %2638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2639 = extractvalue %dx.types.CBufRet.f32 %2638, 3
  %2640 = fcmp fast oeq float %2639, 0.000000e+00
  br i1 %2640, label %4036, label %2641

; <label>:2641                                    ; preds = %2522
  %2642 = extractvalue %dx.types.CBufRet.f32 %2638, 0
  %2643 = extractvalue %dx.types.CBufRet.f32 %2638, 1
  %2644 = extractvalue %dx.types.CBufRet.f32 %2638, 2
  %2645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2646 = extractvalue %dx.types.CBufRet.f32 %2645, 0
  %2647 = extractvalue %dx.types.CBufRet.f32 %2645, 1
  %2648 = extractvalue %dx.types.CBufRet.f32 %2645, 2
  %2649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2650 = extractvalue %dx.types.CBufRet.f32 %2649, 0
  %2651 = extractvalue %dx.types.CBufRet.f32 %2649, 1
  %2652 = call float @dx.op.dot3.f32(i32 55, float %2646, float %2647, float %2648, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2653 = select i1 %226, float %2650, float %2646
  %2654 = select i1 %226, float %2652, float %2647
  %2655 = select i1 %226, float %2651, float %2648
  %2656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2657 = extractvalue %dx.types.CBufRet.f32 %2656, 2
  %2658 = fmul fast float %2657, %88
  %2659 = fmul fast float %2657, %89
  %2660 = fmul fast float %2657, %90
  %2661 = fadd fast float %2658, %133
  %2662 = fadd fast float %2659, %134
  %2663 = fadd fast float %2660, %135
  %2664 = fcmp fast olt float %2639, 0.000000e+00
  br i1 %2664, label %3289, label %2665

; <label>:2665                                    ; preds = %2641
  %2666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2667 = extractvalue %dx.types.CBufRet.f32 %2666, 0
  %2668 = extractvalue %dx.types.CBufRet.f32 %2666, 1
  %2669 = extractvalue %dx.types.CBufRet.f32 %2666, 2
  %2670 = extractvalue %dx.types.CBufRet.f32 %2666, 3
  %2671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2672 = extractvalue %dx.types.CBufRet.f32 %2671, 0
  %2673 = extractvalue %dx.types.CBufRet.f32 %2671, 1
  %2674 = extractvalue %dx.types.CBufRet.f32 %2671, 2
  %2675 = extractvalue %dx.types.CBufRet.f32 %2671, 3
  %2676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2677 = extractvalue %dx.types.CBufRet.f32 %2676, 0
  %2678 = extractvalue %dx.types.CBufRet.f32 %2676, 1
  %2679 = extractvalue %dx.types.CBufRet.f32 %2676, 2
  %2680 = extractvalue %dx.types.CBufRet.f32 %2676, 3
  %2681 = fmul fast float %2667, %2661
  %2682 = call float @dx.op.tertiary.f32(i32 46, float %2662, float %2668, float %2681)  ; FMad(a,b,c)
  %2683 = call float @dx.op.tertiary.f32(i32 46, float %2663, float %2669, float %2682)  ; FMad(a,b,c)
  %2684 = fadd fast float %2683, %2670
  %2685 = fmul fast float %2672, %2661
  %2686 = call float @dx.op.tertiary.f32(i32 46, float %2662, float %2673, float %2685)  ; FMad(a,b,c)
  %2687 = call float @dx.op.tertiary.f32(i32 46, float %2663, float %2674, float %2686)  ; FMad(a,b,c)
  %2688 = fadd fast float %2687, %2675
  %2689 = fmul fast float %2677, %2661
  %2690 = call float @dx.op.tertiary.f32(i32 46, float %2662, float %2678, float %2689)  ; FMad(a,b,c)
  %2691 = call float @dx.op.tertiary.f32(i32 46, float %2663, float %2679, float %2690)  ; FMad(a,b,c)
  %2692 = fadd fast float %2691, %2680
  %2693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2694 = extractvalue %dx.types.CBufRet.f32 %2693, 0
  %2695 = extractvalue %dx.types.CBufRet.f32 %2693, 1
  %2696 = extractvalue %dx.types.CBufRet.f32 %2693, 3
  %2697 = fmul fast float %2696, %2684
  %2698 = fmul fast float %2696, %2688
  %2699 = fadd fast float %2697, %2694
  %2700 = fadd fast float %2698, %2695
  %2701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2702 = extractvalue %dx.types.CBufRet.f32 %2701, 0
  %2703 = extractvalue %dx.types.CBufRet.f32 %2701, 1
  %2704 = extractvalue %dx.types.CBufRet.f32 %2701, 3
  %2705 = fmul fast float %2704, %2684
  %2706 = fmul fast float %2704, %2688
  %2707 = fadd fast float %2705, %2702
  %2708 = fadd fast float %2706, %2703
  %2709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2710 = extractvalue %dx.types.CBufRet.f32 %2709, 1
  %2711 = fsub fast float %2710, %2692
  %2712 = extractvalue %dx.types.CBufRet.f32 %2709, 2
  %2713 = fmul fast float %2711, %2712
  %2714 = fsub fast float 1.000000e+00, %2713
  %2715 = call float @dx.op.unary.f32(i32 7, float %2714)  ; Saturate(value)
  %2716 = extractvalue %dx.types.CBufRet.f32 %2701, 2
  %2717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2718 = extractvalue %dx.types.CBufRet.f32 %2717, 2
  %2719 = fadd fast float %2718, %2716
  %2720 = fcmp fast ogt float %2719, 0.000000e+00
  br i1 %2720, label %2721, label %2745

; <label>:2721                                    ; preds = %2665
  %2722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2723 = extractvalue %dx.types.CBufRet.f32 %2722, 0
  %2724 = extractvalue %dx.types.CBufRet.f32 %2722, 1
  %2725 = fsub fast float %2707, %2723
  %2726 = fsub fast float %2708, %2724
  %2727 = fcmp fast olt float %2725, 0.000000e+00
  %2728 = fcmp fast olt float %2726, 0.000000e+00
  %2729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2730 = extractvalue %dx.types.CBufRet.f32 %2729, 0
  %2731 = extractvalue %dx.types.CBufRet.f32 %2729, 1
  %2732 = extractvalue %dx.types.CBufRet.f32 %2729, 2
  %2733 = extractvalue %dx.types.CBufRet.f32 %2729, 3
  %2734 = select i1 %2727, float %2730, float %2732
  %2735 = select i1 %2728, float %2731, float %2733
  %2736 = fmul fast float %2734, %2725
  %2737 = fmul fast float %2735, %2726
  %2738 = call float @dx.op.unary.f32(i32 6, float %2736)  ; FAbs(value)
  %2739 = call float @dx.op.unary.f32(i32 6, float %2737)  ; FAbs(value)
  %2740 = extractvalue %dx.types.CBufRet.f32 %2656, 0
  %2741 = call float @dx.op.binary.f32(i32 35, float %2738, float %2739)  ; FMax(a,b)
  %2742 = fsub fast float %2740, %2741
  %2743 = call float @dx.op.unary.f32(i32 7, float %2742)  ; Saturate(value)
  %2744 = fmul fast float %2743, %2715
  br label %2745

; <label>:2745                                    ; preds = %2721, %2665
  %2746 = phi float [ %2744, %2721 ], [ 0.000000e+00, %2665 ]
  %2747 = extractvalue %dx.types.CBufRet.f32 %2693, 2
  %2748 = extractvalue %dx.types.CBufRet.f32 %2717, 1
  %2749 = fadd fast float %2748, %2747
  %2750 = fcmp fast ogt float %2749, 0.000000e+00
  %2751 = extractvalue %dx.types.CBufRet.f32 %2656, 0
  br i1 %2750, label %2752, label %2775

; <label>:2752                                    ; preds = %2745
  %2753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2754 = extractvalue %dx.types.CBufRet.f32 %2753, 0
  %2755 = extractvalue %dx.types.CBufRet.f32 %2753, 1
  %2756 = fsub fast float %2699, %2754
  %2757 = fsub fast float %2700, %2755
  %2758 = fcmp fast olt float %2756, 0.000000e+00
  %2759 = fcmp fast olt float %2757, 0.000000e+00
  %2760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2761 = extractvalue %dx.types.CBufRet.f32 %2760, 0
  %2762 = extractvalue %dx.types.CBufRet.f32 %2760, 1
  %2763 = extractvalue %dx.types.CBufRet.f32 %2760, 2
  %2764 = extractvalue %dx.types.CBufRet.f32 %2760, 3
  %2765 = select i1 %2758, float %2761, float %2763
  %2766 = select i1 %2759, float %2762, float %2764
  %2767 = fmul fast float %2765, %2756
  %2768 = fmul fast float %2766, %2757
  %2769 = call float @dx.op.unary.f32(i32 6, float %2767)  ; FAbs(value)
  %2770 = call float @dx.op.unary.f32(i32 6, float %2768)  ; FAbs(value)
  %2771 = call float @dx.op.binary.f32(i32 35, float %2769, float %2770)  ; FMax(a,b)
  %2772 = fsub fast float %2751, %2771
  %2773 = call float @dx.op.unary.f32(i32 7, float %2772)  ; Saturate(value)
  %2774 = fmul fast float %2773, %2715
  br label %2775

; <label>:2775                                    ; preds = %2752, %2745
  %2776 = phi float [ %2774, %2752 ], [ 0.000000e+00, %2745 ]
  %2777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2778 = extractvalue %dx.types.CBufRet.f32 %2777, 1
  %2779 = call float @dx.op.unary.f32(i32 7, float %2778)  ; Saturate(value)
  %2780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2781 = extractvalue %dx.types.CBufRet.f32 %2780, 0
  %2782 = extractvalue %dx.types.CBufRet.f32 %2780, 1
  %2783 = fsub fast float %2684, %2781
  %2784 = fsub fast float %2688, %2782
  %2785 = fcmp fast olt float %2783, 0.000000e+00
  %2786 = fcmp fast olt float %2784, 0.000000e+00
  %2787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2788 = extractvalue %dx.types.CBufRet.f32 %2787, 0
  %2789 = extractvalue %dx.types.CBufRet.f32 %2787, 1
  %2790 = extractvalue %dx.types.CBufRet.f32 %2787, 2
  %2791 = extractvalue %dx.types.CBufRet.f32 %2787, 3
  %2792 = select i1 %2785, float %2788, float %2790
  %2793 = select i1 %2786, float %2789, float %2791
  %2794 = fmul fast float %2792, %2783
  %2795 = fmul fast float %2793, %2784
  %2796 = call float @dx.op.unary.f32(i32 6, float %2794)  ; FAbs(value)
  %2797 = call float @dx.op.unary.f32(i32 6, float %2795)  ; FAbs(value)
  %2798 = call float @dx.op.binary.f32(i32 35, float %2796, float %2797)  ; FMax(a,b)
  %2799 = fsub fast float %2751, %2798
  %2800 = call float @dx.op.unary.f32(i32 7, float %2799)  ; Saturate(value)
  %2801 = call float @dx.op.binary.f32(i32 36, float %2800, float %2779)  ; FMin(a,b)
  %2802 = fmul fast float %2801, %2715
  %2803 = fsub fast float %2776, %2802
  %2804 = fsub fast float %2746, %2776
  %2805 = fsub fast float %2804, %2802
  %2806 = call float @dx.op.binary.f32(i32 35, float %2802, float %2776)  ; FMax(a,b)
  %2807 = call float @dx.op.binary.f32(i32 35, float %2806, float %2746)  ; FMax(a,b)
  %2808 = fcmp fast olt float %2807, 1.000000e+00
  br i1 %2808, label %2809, label %3207, !dx.controlflow.hints !84

; <label>:2809                                    ; preds = %2775
  %2810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2811 = extractvalue %dx.types.CBufRet.f32 %2810, 0
  %2812 = fcmp fast une float %2811, 0.000000e+00
  br i1 %2812, label %2813, label %3207, !dx.controlflow.hints !85

; <label>:2813                                    ; preds = %2809
  %2814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2815 = extractvalue %dx.types.CBufRet.f32 %2814, 0
  %2816 = extractvalue %dx.types.CBufRet.f32 %2814, 1
  %2817 = extractvalue %dx.types.CBufRet.f32 %2814, 2
  %2818 = extractvalue %dx.types.CBufRet.f32 %2814, 3
  %2819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2820 = extractvalue %dx.types.CBufRet.f32 %2819, 0
  %2821 = extractvalue %dx.types.CBufRet.f32 %2819, 1
  %2822 = extractvalue %dx.types.CBufRet.f32 %2819, 2
  %2823 = extractvalue %dx.types.CBufRet.f32 %2819, 3
  %2824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2825 = extractvalue %dx.types.CBufRet.f32 %2824, 0
  %2826 = extractvalue %dx.types.CBufRet.f32 %2824, 1
  %2827 = extractvalue %dx.types.CBufRet.f32 %2824, 2
  %2828 = extractvalue %dx.types.CBufRet.f32 %2824, 3
  %2829 = fmul fast float %2815, %2661
  %2830 = call float @dx.op.tertiary.f32(i32 46, float %2662, float %2816, float %2829)  ; FMad(a,b,c)
  %2831 = call float @dx.op.tertiary.f32(i32 46, float %2663, float %2817, float %2830)  ; FMad(a,b,c)
  %2832 = fadd fast float %2831, %2818
  %2833 = fmul fast float %2820, %2661
  %2834 = call float @dx.op.tertiary.f32(i32 46, float %2662, float %2821, float %2833)  ; FMad(a,b,c)
  %2835 = call float @dx.op.tertiary.f32(i32 46, float %2663, float %2822, float %2834)  ; FMad(a,b,c)
  %2836 = fadd fast float %2835, %2823
  %2837 = fmul fast float %2825, %2661
  %2838 = call float @dx.op.tertiary.f32(i32 46, float %2662, float %2826, float %2837)  ; FMad(a,b,c)
  %2839 = call float @dx.op.tertiary.f32(i32 46, float %2663, float %2827, float %2838)  ; FMad(a,b,c)
  %2840 = fadd fast float %2839, %2828
  %2841 = fcmp fast oge float %2832, 1.000000e+00
  %2842 = fcmp fast oge float %2836, 1.000000e+00
  %2843 = or i1 %2841, %2842
  %2844 = fcmp fast olt float %2832, 0.000000e+00
  %2845 = fcmp fast olt float %2836, 0.000000e+00
  %2846 = or i1 %2844, %2845
  %2847 = or i1 %2843, %2846
  br i1 %2847, label %3207, label %2848, !dx.controlflow.hints !86

; <label>:2848                                    ; preds = %2813
  %2849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2850 = extractvalue %dx.types.CBufRet.f32 %2849, 0
  %2851 = extractvalue %dx.types.CBufRet.f32 %2849, 1
  %2852 = extractvalue %dx.types.CBufRet.f32 %2849, 2
  %2853 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2854 = extractvalue %dx.types.CBufRet.i32 %2853, 2
  %2855 = uitofp i32 %2854 to float
  %2856 = extractvalue %dx.types.CBufRet.i32 %2853, 3
  %2857 = uitofp i32 %2856 to float
  %2858 = extractvalue %dx.types.CBufRet.f32 %2849, 3
  %2859 = fmul fast float %2858, 2.000000e+00
  %2860 = fsub fast float %2832, %2850
  %2861 = fsub fast float %2836, %2851
  %2862 = fmul fast float %2859, %2860
  %2863 = fmul fast float %2859, %2861
  %2864 = fdiv fast float 1.000000e+00, %2644
  %2865 = fmul fast float %2863, %2864
  %2866 = call float @dx.op.unary.f32(i32 6, float %2865)  ; FAbs(value)
  %2867 = fmul fast float %2852, %2663
  %2868 = fmul fast float %2867, %2859
  %2869 = call float @dx.op.unary.f32(i32 6, float %2868)  ; FAbs(value)
  %2870 = call float @dx.op.unary.f32(i32 6, float %2862)  ; FAbs(value)
  %2871 = call float @dx.op.binary.f32(i32 35, float %2870, float %2869)  ; FMax(a,b)
  %2872 = call float @dx.op.binary.f32(i32 35, float %2871, float %2866)  ; FMax(a,b)
  %2873 = fmul fast float %2872, 2.000000e+00
  %2874 = call float @dx.op.unary.f32(i32 23, float %2873)  ; Log(value)
  %2875 = call float @dx.op.binary.f32(i32 35, float %2874, float %2855)  ; FMax(a,b)
  %2876 = call float @dx.op.unary.f32(i32 22, float %2875)  ; Frc(value)
  %2877 = fadd fast float %2876, 0xBFEA666660000000
  %2878 = fmul fast float %2877, 8.000000e+00
  %2879 = call float @dx.op.unary.f32(i32 7, float %2878)  ; Saturate(value)
  %2880 = call float @dx.op.unary.f32(i32 27, float %2875)  ; Round_ni(value)
  %2881 = fadd fast float %2880, %2879
  %2882 = call float @dx.op.binary.f32(i32 36, float %2881, float %2857)  ; FMin(a,b)
  %2883 = call float @dx.op.unary.f32(i32 27, float %2882)  ; Round_ni(value)
  %2884 = fsub fast float -0.000000e+00, %2883
  %2885 = call float @dx.op.unary.f32(i32 21, float %2884)  ; Exp(value)
  %2886 = fmul fast float %2885, %2859
  %2887 = fmul fast float %2886, %2832
  %2888 = fmul fast float %2886, %2836
  %2889 = fmul fast float %2887, 2.500000e-01
  %2890 = fmul fast float %2888, 2.500000e-01
  %2891 = fadd fast float %2889, 5.000000e-01
  %2892 = fadd fast float %2890, 5.000000e-01
  %2893 = fsub fast float %2857, %2855
  %2894 = fptoui float %2893 to i32
  %2895 = add i32 %2894, 320
  %2896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %2895)  ; CBufferLoadLegacy(handle,regIndex)
  %2897 = extractvalue %dx.types.CBufRet.f32 %2896, 0
  %2898 = extractvalue %dx.types.CBufRet.f32 %2896, 1
  %2899 = fcmp fast une float %2882, %2857
  %2900 = fsub fast float %2832, %2897
  %2901 = fsub fast float %2836, %2898
  %2902 = call float @dx.op.unary.f32(i32 6, float %2900)  ; FAbs(value)
  %2903 = call float @dx.op.unary.f32(i32 6, float %2901)  ; FAbs(value)
  %2904 = fmul fast float %2902, %2886
  %2905 = fmul fast float %2903, %2886
  %2906 = fcmp fast olt float %2904, 1.000000e+00
  %2907 = fcmp fast olt float %2905, 1.000000e+00
  %2908 = and i1 %2906, %2907
  %2909 = or i1 %2899, %2908
  br i1 %2909, label %2910, label %3207, !dx.controlflow.hints !87

; <label>:2910                                    ; preds = %2848
  %2911 = fmul fast float %2888, 5.000000e-01
  %2912 = fmul fast float %2887, 5.000000e-01
  %2913 = fadd fast float %2911, 5.000000e-01
  %2914 = fadd fast float %2912, 5.000000e-01
  %2915 = sitofp i32 %2854 to float
  %2916 = fsub fast float %2882, %2915
  %2917 = call float @dx.op.unary.f32(i32 27, float %2916)  ; Round_ni(value)
  %2918 = call float @dx.op.unary.f32(i32 22, float %2882)  ; Frc(value)
  %2919 = call float @dx.op.unary.f32(i32 22, float %2914)  ; Frc(value)
  %2920 = call float @dx.op.unary.f32(i32 22, float %2913)  ; Frc(value)
  %2921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %2919, float %2920, float %2917, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2922 = extractvalue %dx.types.ResRet.f32 %2921, 0
  %2923 = extractvalue %dx.types.ResRet.f32 %2921, 1
  %2924 = extractvalue %dx.types.ResRet.f32 %2921, 2
  %2925 = extractvalue %dx.types.ResRet.f32 %2921, 3
  %2926 = fcmp fast ogt float %2918, 0.000000e+00
  br i1 %2926, label %2927, label %2948, !dx.controlflow.hints !88

; <label>:2927                                    ; preds = %2910
  %2928 = fadd fast float %2917, 1.000000e+00
  %2929 = call float @dx.op.unary.f32(i32 22, float %2891)  ; Frc(value)
  %2930 = call float @dx.op.unary.f32(i32 22, float %2892)  ; Frc(value)
  %2931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %2929, float %2930, float %2928, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2932 = extractvalue %dx.types.ResRet.f32 %2931, 0
  %2933 = extractvalue %dx.types.ResRet.f32 %2931, 1
  %2934 = extractvalue %dx.types.ResRet.f32 %2931, 2
  %2935 = extractvalue %dx.types.ResRet.f32 %2931, 3
  %2936 = fsub fast float %2932, %2922
  %2937 = fsub fast float %2933, %2923
  %2938 = fsub fast float %2934, %2924
  %2939 = fsub fast float %2935, %2925
  %2940 = fmul fast float %2936, %2918
  %2941 = fmul fast float %2937, %2918
  %2942 = fmul fast float %2938, %2918
  %2943 = fmul fast float %2939, %2918
  %2944 = fadd fast float %2940, %2922
  %2945 = fadd fast float %2941, %2923
  %2946 = fadd fast float %2942, %2924
  %2947 = fadd fast float %2943, %2925
  br label %2948

; <label>:2948                                    ; preds = %2927, %2910
  %2949 = phi float [ %2944, %2927 ], [ %2922, %2910 ]
  %2950 = phi float [ %2945, %2927 ], [ %2923, %2910 ]
  %2951 = phi float [ %2946, %2927 ], [ %2924, %2910 ]
  %2952 = phi float [ %2947, %2927 ], [ %2925, %2910 ]
  %2953 = fadd fast float %2949, -5.000000e-01
  %2954 = fadd fast float %2951, -5.000000e-01
  %2955 = fmul fast float %2953, 0xBFD5555560000000
  %2956 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2954, float %2955)  ; FMad(a,b,c)
  %2957 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2950, float 0.000000e+00)  ; FMad(a,b,c)
  %2958 = fadd fast float %2957, %2952
  %2959 = fmul fast float %2953, -7.500000e-01
  %2960 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2954, float %2959)  ; FMad(a,b,c)
  %2961 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2950, float 0.000000e+00)  ; FMad(a,b,c)
  %2962 = fadd fast float %2961, %2952
  %2963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2964 = extractvalue %dx.types.CBufRet.f32 %2963, 0
  %2965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2966 = extractvalue %dx.types.CBufRet.f32 %2965, 0
  %2967 = extractvalue %dx.types.CBufRet.f32 %2965, 1
  %2968 = extractvalue %dx.types.CBufRet.f32 %2965, 2
  %2969 = extractvalue %dx.types.CBufRet.f32 %2965, 3
  %2970 = fsub fast float %2966, %2956
  %2971 = fsub fast float %2967, %2958
  %2972 = fsub fast float %2968, %2960
  %2973 = fsub fast float %2969, %2962
  %2974 = fmul fast float %2970, %2964
  %2975 = fmul fast float %2971, %2964
  %2976 = fmul fast float %2972, %2964
  %2977 = fmul fast float %2973, %2964
  %2978 = fadd fast float %2974, %2956
  %2979 = fadd fast float %2975, %2958
  %2980 = fadd fast float %2976, %2960
  %2981 = fadd fast float %2977, %2962
  %2982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2983 = extractvalue %dx.types.ResRet.i32 %2982, 0
  %2984 = and i32 %2983, 536870911
  %2985 = uitofp i32 %2984 to float
  %2986 = fmul fast float %2985, %2832
  %2987 = fmul fast float %2985, %2836
  %2988 = fptoui float %2986 to i32
  %2989 = fptoui float %2987 to i32
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = and i32 %2991, 31
  %2993 = lshr i32 %2988, %2992
  %2994 = lshr i32 %2989, %2992
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = and i32 %2996, 31
  %2998 = shl i32 1, %2997
  %2999 = call i32 @dx.op.binary.i32(i32 40, i32 %2998, i32 4)  ; UMin(a,b)
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = extractvalue %dx.types.ResRet.i32 %3000, 1
  %3003 = icmp eq i32 %2999, 0
  br i1 %3003, label %3045, label %3004

; <label>:3004                                    ; preds = %2948
  br label %3005

; <label>:3005                                    ; preds = %3033, %3004
  %3006 = phi i32 [ %3036, %3033 ], [ 0, %3004 ]
  %3007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3008 = extractvalue %dx.types.ResRet.i32 %3007, 0
  %3009 = lshr i32 %3008, 16
  %3010 = and i32 %3009, 31
  %3011 = shl i32 %2994, %3010
  %3012 = add i32 %3011, %2993
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = and i32 %3014, 31
  %3016 = shl i32 %3012, %3015
  %3017 = add i32 %3016, %3006
  %3018 = shl i32 %3017, 2
  %3019 = add i32 %3018, 32
  %3020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3019, i32 undef)  ; BufferLoad(srv,index,wot)
  %3021 = extractvalue %dx.types.ResRet.i32 %3020, 0
  %3022 = icmp slt i32 %3021, 0
  %3023 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %3006
  %3024 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3006
  %3025 = bitcast float* %3023 to i32*
  %3026 = bitcast float* %3024 to i32*
  br i1 %3022, label %3027, label %3033

; <label>:3027                                    ; preds = %3005
  %3028 = and i32 %3021, 1073741823
  %3029 = add nuw nsw i32 %3028, 20
  %3030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3029, i32 undef)  ; BufferLoad(srv,index,wot)
  %3031 = extractvalue %dx.types.ResRet.i32 %3030, 0
  %3032 = extractvalue %dx.types.ResRet.i32 %3030, 1
  br label %3033

; <label>:3033                                    ; preds = %3027, %3005
  %3034 = phi i32 [ %3031, %3027 ], [ %3001, %3005 ]
  %3035 = phi i32 [ %3032, %3027 ], [ %3002, %3005 ]
  store i32 %3034, i32* %3025, align 4
  store i32 %3035, i32* %3026, align 4
  %3036 = add nuw i32 %3006, 1
  %3037 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3038 = extractvalue %dx.types.CBufRet.i32 %3037, 2
  %3039 = icmp eq i32 %3038, 0
  %3040 = icmp ugt i32 %3021, -1073741825
  %3041 = and i1 %3040, %3039
  %3042 = icmp ult i32 %3036, %2999
  %3043 = and i1 %3041, %3042
  br i1 %3043, label %3005, label %3044

; <label>:3044                                    ; preds = %3033
  br label %3045

; <label>:3045                                    ; preds = %3044, %2948
  %3046 = phi i32 [ 0, %2948 ], [ %3036, %3044 ]
  %3047 = extractvalue %dx.types.CBufRet.f32 %2810, 2
  %3048 = fptoui float %3047 to i32
  %3049 = icmp eq i32 %3048, 0
  br i1 %3049, label %3101, label %3050

; <label>:3050                                    ; preds = %3045
  br label %3051

; <label>:3051                                    ; preds = %3096, %3050
  %3052 = phi i32 [ %3097, %3096 ], [ %3046, %3050 ]
  %3053 = phi i32 [ %3098, %3096 ], [ 0, %3050 ]
  %3054 = lshr i32 %3053, 2
  %3055 = and i32 %3053, 3
  %3056 = add nuw nsw i32 %3054, 83
  %3057 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %3056)  ; CBufferLoadLegacy(handle,regIndex)
  %3058 = extractvalue %dx.types.CBufRet.i32 %3057, 0
  %3059 = extractvalue %dx.types.CBufRet.i32 %3057, 1
  %3060 = extractvalue %dx.types.CBufRet.i32 %3057, 2
  %3061 = extractvalue %dx.types.CBufRet.i32 %3057, 3
  %3062 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %3058, i32* %3062, align 4
  %3063 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %3059, i32* %3063, align 4
  %3064 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %3060, i32* %3064, align 4
  %3065 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %3061, i32* %3065, align 4
  %3066 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %3055
  %3067 = load i32, i32* %3066, align 4, !tbaa !89, !noalias !93
  %3068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3069 = extractvalue %dx.types.ResRet.i32 %3068, 0
  %3070 = lshr i32 %3069, 16
  %3071 = and i32 %3070, 31
  %3072 = shl i32 %2994, %3071
  %3073 = add i32 %3072, %2993
  %3074 = shl i32 %3073, 2
  %3075 = add i32 %3074, %3067
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3075, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = icmp eq i32 %3077, 0
  br i1 %3078, label %3096, label %3079

; <label>:3079                                    ; preds = %3051
  %3080 = icmp slt i32 %3077, 0
  %3081 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %3052
  %3082 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3052
  %3083 = bitcast float* %3081 to i32*
  %3084 = bitcast float* %3082 to i32*
  br i1 %3080, label %3085, label %3092

; <label>:3085                                    ; preds = %3079
  %3086 = and i32 %3077, 1073741823
  %3087 = add i32 %3067, 20
  %3088 = add i32 %3087, %3086
  %3089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.i32 %3089, 0
  %3091 = extractvalue %dx.types.ResRet.i32 %3089, 1
  br label %3092

; <label>:3092                                    ; preds = %3085, %3079
  %3093 = phi i32 [ %3090, %3085 ], [ %3001, %3079 ]
  %3094 = phi i32 [ %3091, %3085 ], [ %3002, %3079 ]
  store i32 %3093, i32* %3083, align 4
  store i32 %3094, i32* %3084, align 4
  %3095 = add i32 %3052, 1
  br label %3096

; <label>:3096                                    ; preds = %3092, %3051
  %3097 = phi i32 [ %3052, %3051 ], [ %3095, %3092 ]
  %3098 = add nuw i32 %3053, 1
  %3099 = icmp eq i32 %3098, %3048
  br i1 %3099, label %3100, label %3051

; <label>:3100                                    ; preds = %3096
  br label %3101

; <label>:3101                                    ; preds = %3100, %3045
  %3102 = phi i32 [ %3046, %3045 ], [ %3097, %3100 ]
  %3103 = icmp eq i32 %3102, 1
  %3104 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 0
  %3105 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 0
  br i1 %3103, label %3106, label %3109

; <label>:3106                                    ; preds = %3101
  %3107 = load float, float* %3104, align 4
  %3108 = load float, float* %3105, align 4
  br label %3136

; <label>:3109                                    ; preds = %3101
  %3110 = load float, float* %3104, align 4
  %3111 = load float, float* %3105, align 4
  %3112 = fdiv fast float 1.000000e+00, %3111
  %3113 = fsub fast float %3110, %3112
  %3114 = icmp ugt i32 %3102, 1
  br i1 %3114, label %3115, label %3131

; <label>:3115                                    ; preds = %3109
  br label %3116

; <label>:3116                                    ; preds = %3116, %3115
  %3117 = phi float [ %3126, %3116 ], [ %3113, %3115 ]
  %3118 = phi float [ %3127, %3116 ], [ %3110, %3115 ]
  %3119 = phi i32 [ %3128, %3116 ], [ 1, %3115 ]
  %3120 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %3119
  %3121 = load float, float* %3120, align 4
  %3122 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3119
  %3123 = load float, float* %3122, align 4
  %3124 = fdiv fast float 1.000000e+00, %3123
  %3125 = fsub fast float %3121, %3124
  %3126 = call float @dx.op.binary.f32(i32 36, float %3117, float %3125)  ; FMin(a,b)
  %3127 = call float @dx.op.binary.f32(i32 35, float %3118, float %3121)  ; FMax(a,b)
  %3128 = add nuw i32 %3119, 1
  %3129 = icmp eq i32 %3128, %3102
  br i1 %3129, label %3130, label %3116

; <label>:3130                                    ; preds = %3116
  br label %3131

; <label>:3131                                    ; preds = %3130, %3109
  %3132 = phi float [ %3113, %3109 ], [ %3126, %3130 ]
  %3133 = phi float [ %3110, %3109 ], [ %3127, %3130 ]
  %3134 = fsub fast float %3133, %3132
  %3135 = fdiv fast float 1.000000e+00, %3134
  br label %3136

; <label>:3136                                    ; preds = %3131, %3106
  %3137 = phi float [ %3107, %3106 ], [ %3133, %3131 ]
  %3138 = phi float [ %3108, %3106 ], [ %3135, %3131 ]
  %3139 = fadd fast float %2840, %3137
  %3140 = fmul fast float %3139, %3138
  %3141 = call float @dx.op.unary.f32(i32 7, float %3140)  ; Saturate(value)
  %3142 = fmul fast float %3141, 2.000000e+00
  %3143 = fsub fast float 1.000000e+00, %3142
  %3144 = fmul fast float %2978, %2978
  %3145 = fsub fast float %2979, %3144
  %3146 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3145)  ; FMax(a,b)
  %3147 = fdiv fast float 1.000000e+00, %3146
  %3148 = fmul fast float %2979, %2978
  %3149 = fsub fast float %2980, %3148
  %3150 = fsub fast float %3143, %2978
  %3151 = fmul fast float %3143, %3143
  %3152 = fsub fast float %3151, %2979
  %3153 = fmul fast float %3147, %3149
  %3154 = fmul fast float %3153, %3150
  %3155 = fsub fast float %3152, %3154
  %3156 = fmul fast float %2979, %2979
  %3157 = fsub fast float %2981, %3156
  %3158 = fmul fast float %3149, %3149
  %3159 = fmul fast float %3158, %3147
  %3160 = fsub fast float %3157, %3159
  %3161 = fdiv fast float %3155, %3160
  %3162 = fmul fast float %3161, %3149
  %3163 = fsub fast float %3150, %3162
  %3164 = fmul fast float %3163, %3147
  %3165 = fmul fast float %3164, %2978
  %3166 = fsub fast float 1.000000e+00, %3165
  %3167 = fmul fast float %3161, %2979
  %3168 = fsub fast float %3166, %3167
  %3169 = fmul fast float %3164, %3164
  %3170 = fmul fast float %3161, 4.000000e+00
  %3171 = fmul fast float %3170, %3168
  %3172 = fsub fast float %3169, %3171
  %3173 = call float @dx.op.unary.f32(i32 24, float %3172)  ; Sqrt(value)
  %3174 = fcmp fast oge float %3164, 0.000000e+00
  %3175 = fsub fast float -0.000000e+00, %3173
  %3176 = select i1 %3174, float %3175, float %3173
  %3177 = fsub fast float %3176, %3164
  %3178 = fdiv fast float %3177, %3161
  %3179 = fdiv fast float %3168, %3177
  %3180 = fmul fast float %3178, 5.000000e-01
  %3181 = fmul fast float %3179, 2.000000e+00
  %3182 = select i1 %3174, float %3180, float %3181
  %3183 = select i1 %3174, float %3181, float %3180
  %3184 = call float @dx.op.binary.f32(i32 35, float %3182, float %3183)  ; FMax(a,b)
  %3185 = call float @dx.op.binary.f32(i32 36, float %3182, float %3183)  ; FMin(a,b)
  %3186 = fcmp fast ogt float %3143, %3184
  %3187 = fsub fast float %3143, %3185
  %3188 = fsub fast float %3143, %3184
  %3189 = fsub fast float %3184, %3185
  %3190 = select i1 %3186, float %3188, float %3189
  %3191 = fmul float %3187, %3190
  %3192 = select i1 %3186, float %3185, float %3143
  %3193 = fcmp fast ogt float %3143, %3185
  %3194 = fmul fast float %3192, %3184
  %3195 = fadd fast float %3192, %3184
  %3196 = fmul fast float %3195, %2978
  %3197 = fadd fast float %3194, %2979
  %3198 = fsub fast float %3197, %3196
  %3199 = fdiv fast float %3198, %3191
  %3200 = select i1 %3193, float %3199, float 0.000000e+00
  %3201 = fsub fast float 1.000000e+00, %3200
  %3202 = select i1 %3186, float %3201, float %3200
  %3203 = call float @dx.op.unary.f32(i32 7, float %3202)  ; Saturate(value)
  %3204 = extractvalue %dx.types.CBufRet.f32 %2963, 3
  %3205 = fmul fast float %3204, %3203
  %3206 = fsub fast float 1.000000e+00, %3205
  br label %3207

; <label>:3207                                    ; preds = %3136, %2848, %2813, %2809, %2775
  %3208 = phi float [ 1.000000e+00, %2775 ], [ %3206, %3136 ], [ 1.000000e+00, %2813 ], [ 1.000000e+00, %2848 ], [ 1.000000e+00, %2809 ]
  %3209 = fcmp fast ogt float %2805, 0.000000e+00
  br i1 %3209, label %3210, label %3216, !dx.controlflow.hints !102

; <label>:3210                                    ; preds = %3207
  %3211 = fadd fast float %2718, %2692
  %3212 = call float @dx.op.binary.f32(i32 35, float %3211, float 0.000000e+00)  ; FMax(a,b)
  %3213 = fadd fast float %3212, 0x3F10000000000000
  %3214 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %2707, float %2708, float undef, float undef, i32 0, i32 0, i32 undef, float %3213)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3215 = extractvalue %dx.types.ResRet.f32 %3214, 0
  br label %3216

; <label>:3216                                    ; preds = %3210, %3207
  %3217 = phi float [ %3215, %3210 ], [ 1.000000e+00, %3207 ]
  %3218 = fcmp fast ogt float %2803, 0.000000e+00
  br i1 %3218, label %3219, label %3225, !dx.controlflow.hints !103

; <label>:3219                                    ; preds = %3216
  %3220 = fadd fast float %2748, %2692
  %3221 = call float @dx.op.binary.f32(i32 35, float %3220, float 0.000000e+00)  ; FMax(a,b)
  %3222 = fadd fast float %3221, 0x3F10000000000000
  %3223 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 undef, float %3222)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3224 = extractvalue %dx.types.ResRet.f32 %3223, 0
  br label %3225

; <label>:3225                                    ; preds = %3219, %3216
  %3226 = phi float [ %3224, %3219 ], [ 1.000000e+00, %3216 ]
  %3227 = fcmp fast ogt float %2802, 0.000000e+00
  br i1 %3227, label %3228, label %3235, !dx.controlflow.hints !104

; <label>:3228                                    ; preds = %3225
  %3229 = extractvalue %dx.types.CBufRet.f32 %2717, 0
  %3230 = fadd fast float %3229, %2692
  %3231 = call float @dx.op.binary.f32(i32 35, float %3230, float 0.000000e+00)  ; FMax(a,b)
  %3232 = fadd fast float %3231, 0x3F10000000000000
  %3233 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %2684, float %2688, float undef, float undef, i32 0, i32 0, i32 undef, float %3232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3234 = extractvalue %dx.types.ResRet.f32 %3233, 0
  br label %3235

; <label>:3235                                    ; preds = %3228, %3225
  %3236 = phi float [ %3234, %3228 ], [ 1.000000e+00, %3225 ]
  %3237 = fsub fast float %3217, %3208
  %3238 = fmul fast float %3237, %2746
  %3239 = fadd fast float %3238, %3208
  %3240 = fsub fast float %3226, %3239
  %3241 = fmul fast float %3240, %2776
  %3242 = fadd fast float %3241, %3239
  %3243 = fsub fast float %3236, %3242
  %3244 = fmul fast float %3243, %2802
  %3245 = fadd fast float %3244, %3242
  %3246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3247 = extractvalue %dx.types.CBufRet.f32 %3246, 2
  %3248 = fcmp fast ogt float %3247, 0.000000e+00
  br i1 %3248, label %3249, label %3289, !dx.controlflow.hints !105

; <label>:3249                                    ; preds = %3235
  %3250 = fcmp fast ugt float %3247, 0.000000e+00
  br i1 %3250, label %3251, label %3286

; <label>:3251                                    ; preds = %3249
  %3252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3253 = extractvalue %dx.types.CBufRet.f32 %3252, 0
  %3254 = extractvalue %dx.types.CBufRet.f32 %3252, 1
  %3255 = extractvalue %dx.types.CBufRet.f32 %3252, 2
  %3256 = extractvalue %dx.types.CBufRet.f32 %3252, 3
  %3257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3258 = extractvalue %dx.types.CBufRet.f32 %3257, 0
  %3259 = extractvalue %dx.types.CBufRet.f32 %3257, 1
  %3260 = extractvalue %dx.types.CBufRet.f32 %3257, 2
  %3261 = extractvalue %dx.types.CBufRet.f32 %3257, 3
  %3262 = extractvalue %dx.types.CBufRet.f32 %3246, 0
  %3263 = extractvalue %dx.types.CBufRet.f32 %3246, 1
  %3264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3265 = extractvalue %dx.types.CBufRet.f32 %3264, 0
  %3266 = extractvalue %dx.types.CBufRet.f32 %3264, 1
  %3267 = extractvalue %dx.types.CBufRet.f32 %3264, 2
  %3268 = fadd fast float %3265, %2661
  %3269 = fadd fast float %3266, %2662
  %3270 = fadd fast float %3267, %2663
  %3271 = fmul fast float %3268, %3253
  %3272 = call float @dx.op.tertiary.f32(i32 46, float %3254, float %3269, float %3271)  ; FMad(a,b,c)
  %3273 = call float @dx.op.tertiary.f32(i32 46, float %3255, float %3270, float %3272)  ; FMad(a,b,c)
  %3274 = fadd fast float %3273, %3256
  %3275 = fmul fast float %3268, %3258
  %3276 = call float @dx.op.tertiary.f32(i32 46, float %3259, float %3269, float %3275)  ; FMad(a,b,c)
  %3277 = call float @dx.op.tertiary.f32(i32 46, float %3260, float %3270, float %3276)  ; FMad(a,b,c)
  %3278 = fadd fast float %3277, %3261
  %3279 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %41, float %3274, float %3278, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3280 = extractvalue %dx.types.ResRet.f32 %3279, 0
  %3281 = fmul fast float %3280, %3263
  %3282 = fadd fast float %3281, %3262
  %3283 = call float @dx.op.unary.f32(i32 7, float %3282)  ; Saturate(value)
  %3284 = fmul fast float %3283, %3247
  %3285 = fsub fast float 1.000000e+00, %3284
  br label %3286

; <label>:3286                                    ; preds = %3251, %3249
  %3287 = phi float [ %3285, %3251 ], [ 1.000000e+00, %3249 ]
  %3288 = fmul fast float %3287, %3245
  br label %3289

; <label>:3289                                    ; preds = %3286, %3235, %2641
  %3290 = phi float [ 1.000000e+00, %2641 ], [ %3288, %3286 ], [ %3245, %3235 ]
  %3291 = call float @dx.op.binary.f32(i32 36, float %3290, float %3290)  ; FMin(a,b)
  %3292 = call float @dx.op.binary.f32(i32 36, float %3290, float %3291)  ; FMin(a,b)
  %3293 = fcmp fast ogt float %3292, 0.000000e+00
  br i1 %3293, label %3294, label %3645, !dx.controlflow.hints !106

; <label>:3294                                    ; preds = %3289
  %3295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3296 = extractvalue %dx.types.CBufRet.f32 %3295, 0
  %3297 = extractvalue %dx.types.CBufRet.f32 %3295, 1
  %3298 = extractvalue %dx.types.CBufRet.f32 %3295, 2
  %3299 = extractvalue %dx.types.CBufRet.f32 %3295, 3
  %3300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3301 = extractvalue %dx.types.CBufRet.f32 %3300, 0
  %3302 = extractvalue %dx.types.CBufRet.f32 %3300, 1
  %3303 = extractvalue %dx.types.CBufRet.f32 %3300, 2
  %3304 = extractvalue %dx.types.CBufRet.f32 %3300, 3
  %3305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3306 = extractvalue %dx.types.CBufRet.f32 %3305, 0
  %3307 = extractvalue %dx.types.CBufRet.f32 %3305, 1
  %3308 = extractvalue %dx.types.CBufRet.f32 %3305, 2
  %3309 = extractvalue %dx.types.CBufRet.f32 %3305, 3
  %3310 = fmul fast float %3296, %2661
  %3311 = call float @dx.op.tertiary.f32(i32 46, float %2662, float %3297, float %3310)  ; FMad(a,b,c)
  %3312 = call float @dx.op.tertiary.f32(i32 46, float %2663, float %3298, float %3311)  ; FMad(a,b,c)
  %3313 = fadd fast float %3312, %3299
  %3314 = fmul fast float %3301, %2661
  %3315 = call float @dx.op.tertiary.f32(i32 46, float %2662, float %3302, float %3314)  ; FMad(a,b,c)
  %3316 = call float @dx.op.tertiary.f32(i32 46, float %2663, float %3303, float %3315)  ; FMad(a,b,c)
  %3317 = fadd fast float %3316, %3304
  %3318 = fmul fast float %3306, %2661
  %3319 = call float @dx.op.tertiary.f32(i32 46, float %2662, float %3307, float %3318)  ; FMad(a,b,c)
  %3320 = call float @dx.op.tertiary.f32(i32 46, float %2663, float %3308, float %3319)  ; FMad(a,b,c)
  %3321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3322 = extractvalue %dx.types.CBufRet.f32 %3321, 0
  %3323 = extractvalue %dx.types.CBufRet.f32 %3321, 1
  %3324 = extractvalue %dx.types.CBufRet.f32 %3321, 3
  %3325 = fmul fast float %3324, %3313
  %3326 = fmul fast float %3324, %3317
  %3327 = fadd fast float %3325, %3322
  %3328 = fadd fast float %3326, %3323
  %3329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3330 = extractvalue %dx.types.CBufRet.f32 %3329, 0
  %3331 = extractvalue %dx.types.CBufRet.f32 %3329, 1
  %3332 = fsub fast float %3327, %3330
  %3333 = fsub fast float %3328, %3331
  %3334 = fcmp fast olt float %3332, 0.000000e+00
  %3335 = fcmp fast olt float %3333, 0.000000e+00
  %3336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3337 = extractvalue %dx.types.CBufRet.f32 %3336, 0
  %3338 = extractvalue %dx.types.CBufRet.f32 %3336, 1
  %3339 = extractvalue %dx.types.CBufRet.f32 %3336, 2
  %3340 = extractvalue %dx.types.CBufRet.f32 %3336, 3
  %3341 = select i1 %3334, float %3337, float %3339
  %3342 = select i1 %3335, float %3338, float %3340
  %3343 = fmul fast float %3341, %3332
  %3344 = fmul fast float %3342, %3333
  %3345 = call float @dx.op.unary.f32(i32 6, float %3343)  ; FAbs(value)
  %3346 = call float @dx.op.unary.f32(i32 6, float %3344)  ; FAbs(value)
  %3347 = extractvalue %dx.types.CBufRet.f32 %2656, 0
  %3348 = call float @dx.op.binary.f32(i32 35, float %3345, float %3346)  ; FMax(a,b)
  %3349 = fsub fast float %3347, %3348
  %3350 = call float @dx.op.unary.f32(i32 7, float %3349)  ; Saturate(value)
  %3351 = fcmp fast ogt float %3350, 0.000000e+00
  br i1 %3351, label %3352, label %3393, !dx.controlflow.hints !107

; <label>:3352                                    ; preds = %3294
  %3353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %44, float %3327, float %3328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3354 = extractvalue %dx.types.ResRet.f32 %3353, 1
  %3355 = fcmp fast ogt float %3354, 0.000000e+00
  br i1 %3355, label %3356, label %3388

; <label>:3356                                    ; preds = %3352
  %3357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %44, float %3327, float %3328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3358 = extractvalue %dx.types.ResRet.f32 %3357, 0
  %3359 = extractvalue %dx.types.ResRet.f32 %3357, 1
  %3360 = extractvalue %dx.types.ResRet.f32 %3357, 2
  %3361 = extractvalue %dx.types.ResRet.f32 %3357, 3
  %3362 = fsub fast float 1.000000e+00, %3309
  %3363 = fsub fast float %3362, %3320
  %3364 = fmul fast float %3363, 0x400921FB60000000
  %3365 = fadd fast float %3364, 0x3FF921FB60000000
  %3366 = call float @dx.op.unary.f32(i32 13, float %3365)  ; Sin(value)
  %3367 = fadd fast float %3366, -1.000000e+00
  %3368 = fmul fast float %3367, 0x3FD45F3060000000
  %3369 = fmul fast float %3363, 0x401921FB60000000
  %3370 = fadd fast float %3369, 0x400921FB60000000
  %3371 = call float @dx.op.unary.f32(i32 13, float %3370)  ; Sin(value)
  %3372 = fadd fast float %3371, 0x3E7777A5C0000000
  %3373 = fmul fast float %3372, 0x3FC45F3060000000
  %3374 = fmul fast float %3363, 0x4022D97C80000000
  %3375 = fadd fast float %3374, 0x4012D97C80000000
  %3376 = call float @dx.op.unary.f32(i32 13, float %3375)  ; Sin(value)
  %3377 = fadd fast float %3376, 1.000000e+00
  %3378 = fmul fast float %3377, 0x3FBB2995E0000000
  %3379 = fmul fast float %3363, 0x402921FB60000000
  %3380 = fadd fast float %3379, 0x401921FB60000000
  %3381 = call float @dx.op.unary.f32(i32 13, float %3380)  ; Sin(value)
  %3382 = fadd fast float %3381, 0xBE8777A5C0000000
  %3383 = fmul fast float %3382, 0x3FB45F3060000000
  %3384 = call float @dx.op.dot4.f32(i32 56, float %3358, float %3359, float %3360, float %3361, float %3368, float %3373, float %3378, float %3383)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3385 = fmul fast float %3384, 0xBFF7154760000000
  %3386 = call float @dx.op.unary.f32(i32 21, float %3385)  ; Exp(value)
  %3387 = call float @dx.op.unary.f32(i32 7, float %3386)  ; Saturate(value)
  br label %3388

; <label>:3388                                    ; preds = %3356, %3352
  %3389 = phi float [ %3387, %3356 ], [ 1.000000e+00, %3352 ]
  %3390 = fadd fast float %3389, -1.000000e+00
  %3391 = fmul fast float %3390, %3350
  %3392 = fadd fast float %3391, 1.000000e+00
  br label %3393

; <label>:3393                                    ; preds = %3388, %3294
  %3394 = phi float [ %3392, %3388 ], [ 1.000000e+00, %3294 ]
  %3395 = fmul fast float %3394, %3290
  %3396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3397 = extractvalue %dx.types.CBufRet.f32 %3396, 0
  %3398 = extractvalue %dx.types.CBufRet.f32 %3396, 1
  %3399 = extractvalue %dx.types.CBufRet.f32 %3396, 2
  %3400 = fadd fast float %3397, %133
  %3401 = fadd fast float %3398, %134
  %3402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3403 = extractvalue %dx.types.CBufRet.f32 %3402, 1
  %3404 = fsub fast float -0.000000e+00, %3400
  %3405 = fsub fast float -0.000000e+00, %3401
  %3406 = fsub fast float %2205, %3399
  %3407 = fadd fast float %3406, %3403
  %3408 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3404, float %3405, float %3407)  ; Dot3(ax,ay,az,bx,by,bz)
  %3409 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2642, float %2643, float %2644)  ; Dot3(ax,ay,az,bx,by,bz)
  %3410 = fdiv fast float 1.000000e+00, %3409
  %3411 = fmul fast float %3410, %3408
  %3412 = fmul fast float %2642, %3411
  %3413 = fmul fast float %2643, %3411
  %3414 = fadd fast float %3412, %3400
  %3415 = fadd fast float %3413, %3401
  %3416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3417 = extractvalue %dx.types.CBufRet.f32 %3416, 0
  %3418 = extractvalue %dx.types.CBufRet.f32 %3416, 1
  %3419 = fsub fast float %3414, %3417
  %3420 = fsub fast float %3415, %3418
  %3421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3422 = extractvalue %dx.types.CBufRet.f32 %3421, 2
  %3423 = extractvalue %dx.types.CBufRet.f32 %3421, 3
  %3424 = fmul fast float %3419, %3422
  %3425 = fmul fast float %3420, %3423
  %3426 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3427 = extractvalue %dx.types.CBufRet.i32 %3426, 3
  %3428 = icmp eq i32 %3427, 0
  br i1 %3428, label %3434, label %3429

; <label>:3429                                    ; preds = %3393
  %3430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %3424, float %3425, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3431 = extractvalue %dx.types.ResRet.f32 %3430, 0
  %3432 = extractvalue %dx.types.ResRet.f32 %3430, 1
  %3433 = extractvalue %dx.types.ResRet.f32 %3430, 2
  br label %3439

; <label>:3434                                    ; preds = %3393
  %3435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %3424, float %3425, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3436 = extractvalue %dx.types.ResRet.f32 %3435, 0
  %3437 = extractvalue %dx.types.ResRet.f32 %3435, 1
  %3438 = extractvalue %dx.types.ResRet.f32 %3435, 2
  br label %3439

; <label>:3439                                    ; preds = %3434, %3429
  %3440 = phi float [ %3431, %3429 ], [ %3436, %3434 ]
  %3441 = phi float [ %3432, %3429 ], [ %3437, %3434 ]
  %3442 = phi float [ %3433, %3429 ], [ %3438, %3434 ]
  %3443 = extractvalue %dx.types.CBufRet.f32 %3402, 2
  %3444 = fmul fast float %3443, %3440
  %3445 = extractvalue %dx.types.CBufRet.f32 %3402, 0
  %3446 = fsub fast float %3411, %3445
  %3447 = fsub fast float %3446, %3444
  %3448 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3447)  ; FMax(a,b)
  %3449 = fmul fast float %3448, %3441
  %3450 = call float @dx.op.binary.f32(i32 36, float %3442, float %3449)  ; FMin(a,b)
  %3451 = fmul fast float %3450, 0xBFF7154760000000
  %3452 = call float @dx.op.unary.f32(i32 21, float %3451)  ; Exp(value)
  %3453 = fmul fast float %3395, %3452
  %3454 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %2642, float %2643, float %2644)  ; Dot3(ax,ay,az,bx,by,bz)
  %3455 = fcmp fast ogt float %3454, 0.000000e+00
  br i1 %3455, label %3456, label %3645, !dx.controlflow.hints !108

; <label>:3456                                    ; preds = %3439
  %3457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %3458 = extractvalue %dx.types.CBufRet.f32 %3457, 1
  %3459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %3460 = extractvalue %dx.types.CBufRet.f32 %3459, 1
  %3461 = select i1 %2211, float %3458, float %3460
  %3462 = extractvalue %dx.types.CBufRet.f32 %3457, 2
  %3463 = extractvalue %dx.types.CBufRet.f32 %3459, 2
  %3464 = select i1 %2211, float %3462, float %3463
  %3465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %3466 = extractvalue %dx.types.CBufRet.i32 %3465, 0
  %3467 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %3468 = extractvalue %dx.types.CBufRet.i32 %3467, 0
  %3469 = select i1 %2211, i32 %3466, i32 %3468
  %3470 = fcmp fast olt float %3461, 5.000000e-01
  %3471 = icmp eq i32 %3469, 0
  %3472 = or i1 %3470, %3471
  br i1 %3472, label %3642, label %3473

; <label>:3473                                    ; preds = %3456
  %3474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %3475 = extractvalue %dx.types.CBufRet.i32 %3474, 0
  %3476 = uitofp i32 %3475 to float
  %3477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %3478 = extractvalue %dx.types.CBufRet.f32 %3477, 0
  %3479 = extractvalue %dx.types.CBufRet.f32 %3477, 1
  %3480 = extractvalue %dx.types.CBufRet.f32 %3477, 2
  %3481 = extractvalue %dx.types.CBufRet.f32 %3477, 3
  %3482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.f32 %3482, 0
  %3484 = extractvalue %dx.types.CBufRet.f32 %3482, 1
  %3485 = extractvalue %dx.types.CBufRet.f32 %3482, 2
  %3486 = extractvalue %dx.types.CBufRet.f32 %3482, 3
  %3487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %3488 = extractvalue %dx.types.CBufRet.f32 %3487, 0
  %3489 = extractvalue %dx.types.CBufRet.f32 %3487, 1
  %3490 = extractvalue %dx.types.CBufRet.f32 %3487, 2
  %3491 = extractvalue %dx.types.CBufRet.f32 %3487, 3
  %3492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %3493 = extractvalue %dx.types.CBufRet.f32 %3492, 0
  %3494 = extractvalue %dx.types.CBufRet.f32 %3492, 1
  %3495 = extractvalue %dx.types.CBufRet.f32 %3492, 2
  %3496 = extractvalue %dx.types.CBufRet.f32 %3492, 3
  %3497 = fdiv fast float 1.000000e+00, %76
  %3498 = fmul fast float %3495, %85
  %3499 = fmul fast float %3496, %86
  %3500 = fmul fast float %3461, %2642
  %3501 = fmul fast float %3461, %2643
  %3502 = fmul fast float %3461, %2644
  %3503 = fadd fast float %3500, %133
  %3504 = fadd fast float %3501, %134
  %3505 = fadd fast float %3502, %135
  %3506 = fmul fast float %3478, %3503
  %3507 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %3479, float %3506)  ; FMad(a,b,c)
  %3508 = call float @dx.op.tertiary.f32(i32 46, float %3505, float %3480, float %3507)  ; FMad(a,b,c)
  %3509 = fadd fast float %3508, %3481
  %3510 = fmul fast float %3483, %3503
  %3511 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %3484, float %3510)  ; FMad(a,b,c)
  %3512 = call float @dx.op.tertiary.f32(i32 46, float %3505, float %3485, float %3511)  ; FMad(a,b,c)
  %3513 = fadd fast float %3512, %3486
  %3514 = fmul fast float %3488, %3503
  %3515 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %3489, float %3514)  ; FMad(a,b,c)
  %3516 = call float @dx.op.tertiary.f32(i32 46, float %3505, float %3490, float %3515)  ; FMad(a,b,c)
  %3517 = fadd fast float %3516, %3491
  %3518 = fdiv fast float 1.000000e+00, %3517
  %3519 = fmul fast float %3509, 5.000000e-01
  %3520 = fmul fast float %3513, -5.000000e-01
  %3521 = fmul fast float %3519, %3518
  %3522 = fmul fast float %3520, %3518
  %3523 = fsub fast float 5.000000e-01, %3498
  %3524 = fadd fast float %3523, %3521
  %3525 = fsub fast float 5.000000e-01, %3499
  %3526 = fadd fast float %3525, %3522
  %3527 = fsub fast float %3518, %3497
  %3528 = call float @dx.op.dot2.f32(i32 54, float %3524, float %3526, float %3524, float %3526)  ; Dot2(ax,ay,bx,by)
  %3529 = call float @dx.op.binary.f32(i32 35, float %3528, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %3530 = call float @dx.op.dot2.f32(i32 54, float %3493, float %3494, float %3493, float %3494)  ; Dot2(ax,ay,bx,by)
  %3531 = fmul fast float %3530, %3529
  %3532 = call float @dx.op.unary.f32(i32 25, float %3531)  ; Rsqrt(value)
  %3533 = fmul fast float %3532, %3524
  %3534 = fmul fast float %3532, %3526
  %3535 = fadd fast float %3533, %3498
  %3536 = fadd fast float %3534, %3499
  %3537 = fmul fast float %3524, %3493
  %3538 = fmul fast float %3526, %3494
  %3539 = fmul fast float %3537, %3537
  %3540 = fmul fast float %3538, %3538
  %3541 = fadd fast float %3539, %3540
  %3542 = call float @dx.op.unary.f32(i32 24, float %3541)  ; Sqrt(value)
  %3543 = fdiv fast float 1.000000e+00, %3542
  %3544 = fmul fast float %3542, 3.906250e-03
  %3545 = fmul fast float %2210, 0x3F70624DE0000000
  %3546 = fadd fast float %3545, 0x3F70624DE0000000
  %3547 = icmp sgt i32 %3469, -1
  br i1 %3547, label %3548, label %3607

; <label>:3548                                    ; preds = %3473
  br label %3549

; <label>:3549                                    ; preds = %3603, %3548
  %3550 = phi float [ %3581, %3603 ], [ %76, %3548 ]
  %3551 = phi float [ %3568, %3603 ], [ %76, %3548 ]
  %3552 = phi float [ %3551, %3603 ], [ %76, %3548 ]
  %3553 = phi i32 [ %3604, %3603 ], [ 0, %3548 ]
  %3554 = sitofp i32 %3553 to float
  %3555 = fadd fast float %240, 5.000000e-01
  %3556 = call float @dx.op.unary.f32(i32 22, float %3555)  ; Frc(value)
  %3557 = fadd fast float %3554, %3556
  %3558 = sitofp i32 %3469 to float
  %3559 = fdiv fast float %3557, %3558
  %3560 = fmul fast float %3559, %3559
  %3561 = call float @dx.op.binary.f32(i32 36, float %3560, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %3562 = fmul fast float %3561, %3524
  %3563 = fmul fast float %3561, %3526
  %3564 = fmul fast float %3561, %3527
  %3565 = fadd fast float %3562, %3535
  %3566 = fadd fast float %3563, %3536
  %3567 = fadd fast float %3564, %3497
  %3568 = fdiv fast float 1.000000e+00, %3567
  %3569 = icmp ne i32 %3475, 0
  %3570 = fmul fast float %3544, %3561
  %3571 = call float @dx.op.binary.f32(i32 36, float %3570, float %3476)  ; FMin(a,b)
  %3572 = select i1 %3569, float %3571, float 0.000000e+00
  %3573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %3565, float %3566, float undef, float undef, i32 0, i32 0, i32 undef, float %3572)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3574 = extractvalue %dx.types.ResRet.f32 %3573, 0
  %3575 = fcmp fast ogt float %3574, -1.000000e+00
  %3576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3577 = extractvalue %dx.types.CBufRet.f32 %3576, 1
  %3578 = select i1 %3575, float %3577, float 1.000000e+00
  %3579 = fadd fast float %3574, 1.000000e+00
  %3580 = fmul fast float %3578, %3579
  %3581 = call float @dx.op.unary.f32(i32 6, float %3580)  ; FAbs(value)
  %3582 = fmul fast float %3581, %3546
  %3583 = fsub fast float %3568, %3581
  %3584 = fsub fast float %3583, %3582
  %3585 = fcmp fast ogt float %3584, 0.000000e+00
  %3586 = fcmp fast ogt float %3464, 0.000000e+00
  br i1 %3586, label %3587, label %3590

; <label>:3587                                    ; preds = %3549
  %3588 = fsub fast float %3568, %3552
  %3589 = call float @dx.op.binary.f32(i32 35, float %3588, float %3464)  ; FMax(a,b)
  br label %3590

; <label>:3590                                    ; preds = %3587, %3549
  %3591 = phi float [ %3589, %3587 ], [ %3461, %3549 ]
  %3592 = fcmp fast olt float %3584, %3591
  %3593 = call float @dx.op.unary.f32(i32 7, float %3565)  ; Saturate(value)
  %3594 = call float @dx.op.unary.f32(i32 7, float %3566)  ; Saturate(value)
  %3595 = fcmp fast oeq float %3565, %3593
  %3596 = fcmp fast oeq float %3566, %3594
  %3597 = and i1 %3595, %3596
  %3598 = and i1 %3585, %3592
  %3599 = and i1 %3598, %3597
  %3600 = fcmp fast ogt float %3561, %3543
  %3601 = and i1 %3600, %3599
  %3602 = zext i1 %3601 to i32
  br i1 %3601, label %3606, label %3603

; <label>:3603                                    ; preds = %3590
  %3604 = add nuw nsw i32 %3553, 1
  %3605 = icmp slt i32 %3553, %3469
  br i1 %3605, label %3549, label %3606

; <label>:3606                                    ; preds = %3603, %3590
  br label %3607

; <label>:3607                                    ; preds = %3606, %3473
  %3608 = phi i32 [ 0, %3473 ], [ %3602, %3606 ]
  %3609 = phi float [ %76, %3473 ], [ %3581, %3606 ]
  %3610 = phi float [ %76, %3473 ], [ %3550, %3606 ]
  %3611 = phi float [ %76, %3473 ], [ %3568, %3606 ]
  %3612 = phi float [ %76, %3473 ], [ %3551, %3606 ]
  %3613 = fsub fast float %3612, %3610
  %3614 = fsub fast float %3611, %3609
  %3615 = fsub fast float %3613, %3614
  %3616 = fcmp fast une float %3615, 0.000000e+00
  %3617 = fmul fast float %3613, %3611
  %3618 = fmul fast float %3612, %3614
  %3619 = fsub fast float %3617, %3618
  %3620 = fdiv fast float 1.000000e+00, %3615
  %3621 = fmul fast float %3619, %3620
  %3622 = select i1 %3616, float %3621, float %3611
  %3623 = fdiv fast float 1.000000e+00, %3622
  %3624 = fsub fast float %3623, %3497
  %3625 = fdiv fast float %3624, %3527
  %3626 = call float @dx.op.unary.f32(i32 7, float %3625)  ; Saturate(value)
  %3627 = fmul fast float %3626, %3524
  %3628 = fmul fast float %3626, %3526
  %3629 = fadd fast float %3535, -5.000000e-01
  %3630 = fadd fast float %3629, %3627
  %3631 = fadd fast float %3536, -5.000000e-01
  %3632 = fadd fast float %3631, %3628
  %3633 = call float @dx.op.unary.f32(i32 6, float %3630)  ; FAbs(value)
  %3634 = call float @dx.op.unary.f32(i32 6, float %3632)  ; FAbs(value)
  %3635 = fadd fast float %3633, -5.000000e-01
  %3636 = fadd fast float %3634, -5.000000e-01
  %3637 = call float @dx.op.binary.f32(i32 35, float %3635, float %3636)  ; FMax(a,b)
  %3638 = fcmp fast olt float %3637, 0.000000e+00
  %3639 = icmp ne i32 %3608, 0
  %3640 = and i1 %3639, %3638
  %3641 = select i1 %3640, float 0.000000e+00, float 1.000000e+00
  br label %3642

; <label>:3642                                    ; preds = %3607, %3456
  %3643 = phi float [ %3641, %3607 ], [ 1.000000e+00, %3456 ]
  %3644 = fmul fast float %3643, %3453
  br label %3645

; <label>:3645                                    ; preds = %3642, %3439, %3289
  %3646 = phi float [ %3644, %3642 ], [ %3453, %3439 ], [ %3290, %3289 ]
  %3647 = call float @dx.op.binary.f32(i32 36, float %3646, float %3646)  ; FMin(a,b)
  %3648 = call float @dx.op.binary.f32(i32 36, float %3646, float %3647)  ; FMin(a,b)
  %3649 = fcmp fast ogt float %3648, 0.000000e+00
  br i1 %3649, label %3650, label %4036, !dx.controlflow.hints !109

; <label>:3650                                    ; preds = %3645
  %3651 = fmul fast float %3646, %2653
  %3652 = fmul fast float %3646, %2654
  %3653 = fmul fast float %3646, %2655
  %3654 = fsub fast float %135, %2011
  %3655 = fcmp fast ogt float %3654, 0.000000e+00
  %3656 = fmul fast float %2642, 5.120000e+02
  %3657 = fmul fast float %2643, 5.120000e+02
  %3658 = fmul fast float %2644, 5.120000e+02
  %3659 = fadd fast float %3658, %135
  %3660 = fsub fast float %2011, %3659
  %3661 = fmul fast float %3660, 2.000000e+00
  %3662 = fadd fast float %3661, %3659
  %3663 = select i1 %3655, float %3662, float %3659
  %3664 = fsub fast float %3663, %135
  %3665 = call float @dx.op.dot3.f32(i32 55, float %3656, float %3657, float %3664, float %3656, float %3657, float %3664)  ; Dot3(ax,ay,az,bx,by,bz)
  %3666 = call float @dx.op.unary.f32(i32 25, float %3665)  ; Rsqrt(value)
  %3667 = fmul fast float %3666, %3656
  %3668 = fmul fast float %3666, %3657
  %3669 = fmul fast float %3666, %3664
  %3670 = fsub fast float %2011, %135
  %3671 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3670)  ; Dot3(ax,ay,az,bx,by,bz)
  %3672 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3667, float %3668, float %3669)  ; Dot3(ax,ay,az,bx,by,bz)
  %3673 = fdiv fast float 1.000000e+00, %3672
  %3674 = fmul fast float %3673, %3671
  %3675 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3654, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3676 = fcmp fast ogt float %3675, 0.000000e+00
  %3677 = fcmp fast olt float %3675, 0.000000e+00
  %3678 = zext i1 %3676 to i32
  %3679 = zext i1 %3677 to i32
  %3680 = sub nsw i32 %3678, %3679
  %3681 = sitofp i32 %3680 to float
  %3682 = fsub fast float %3663, %2011
  %3683 = call float @dx.op.dot3.f32(i32 55, float %3656, float %3657, float %3682, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3684 = fcmp fast ogt float %3683, 0.000000e+00
  %3685 = fcmp fast olt float %3683, 0.000000e+00
  %3686 = zext i1 %3684 to i32
  %3687 = zext i1 %3685 to i32
  %3688 = sub nsw i32 %3686, %3687
  %3689 = sitofp i32 %3688 to float
  %3690 = fcmp fast une float %3681, %3689
  br i1 %3690, label %3691, label %3701

; <label>:3691                                    ; preds = %3650
  %3692 = fmul fast float %3674, %3669
  %3693 = fmul fast float %3674, %3668
  %3694 = fmul fast float %3674, %3667
  %3695 = fmul fast float %3694, %3694
  %3696 = fmul fast float %3693, %3693
  %3697 = fadd fast float %3695, %3696
  %3698 = fmul fast float %3692, %3692
  %3699 = fadd fast float %3697, %3698
  %3700 = call float @dx.op.unary.f32(i32 24, float %3699)  ; Sqrt(value)
  br label %3711

; <label>:3701                                    ; preds = %3650
  %3702 = icmp slt i32 %3680, 0
  br i1 %3702, label %3703, label %3711

; <label>:3703                                    ; preds = %3701
  %3704 = fsub fast float %135, %3663
  %3705 = fmul fast float %3656, %3656
  %3706 = fmul fast float %3657, %3657
  %3707 = fadd fast float %3705, %3706
  %3708 = fmul fast float %3704, %3704
  %3709 = fadd fast float %3707, %3708
  %3710 = call float @dx.op.unary.f32(i32 24, float %3709)  ; Sqrt(value)
  br label %3711

; <label>:3711                                    ; preds = %3703, %3701, %3691
  %3712 = phi float [ %3700, %3691 ], [ %3710, %3703 ], [ 0.000000e+00, %3701 ]
  %3713 = fsub fast float -0.000000e+00, %3712
  %3714 = select i1 %3655, float -0.000000e+00, float %3713
  %3715 = fmul fast float %2012, 0x3FF7154760000000
  %3716 = fmul fast float %3715, %3714
  %3717 = fmul fast float %2013, 0x3FF7154760000000
  %3718 = fmul fast float %3717, %3714
  %3719 = fmul fast float %2014, 0x3FF7154760000000
  %3720 = fmul fast float %3719, %3714
  %3721 = call float @dx.op.unary.f32(i32 21, float %3716)  ; Exp(value)
  %3722 = call float @dx.op.unary.f32(i32 21, float %3718)  ; Exp(value)
  %3723 = call float @dx.op.unary.f32(i32 21, float %3720)  ; Exp(value)
  %3724 = call float @dx.op.unary.f32(i32 7, float %3721)  ; Saturate(value)
  %3725 = call float @dx.op.unary.f32(i32 7, float %3722)  ; Saturate(value)
  %3726 = call float @dx.op.unary.f32(i32 7, float %3723)  ; Saturate(value)
  %3727 = fmul fast float %3651, %3724
  %3728 = fmul fast float %3652, %3725
  %3729 = fmul fast float %3653, %3726
  %3730 = fsub fast float %2642, %152
  %3731 = fsub fast float %2643, %153
  %3732 = fsub fast float %2644, %154
  %3733 = call float @dx.op.dot3.f32(i32 55, float %3730, float %3731, float %3732, float %3730, float %3731, float %3732)  ; Dot3(ax,ay,az,bx,by,bz)
  %3734 = call float @dx.op.unary.f32(i32 25, float %3733)  ; Rsqrt(value)
  %3735 = fmul fast float %3734, %3730
  %3736 = fmul fast float %3734, %3731
  %3737 = fmul fast float %3734, %3732
  %3738 = call float @dx.op.dot3.f32(i32 55, float %2642, float %2643, float %2644, float %2197, float %2198, float %2199)  ; Dot3(ax,ay,az,bx,by,bz)
  %3739 = call float @dx.op.dot3.f32(i32 55, float %2028, float %2029, float %2030, float %3735, float %3736, float %3737)  ; Dot3(ax,ay,az,bx,by,bz)
  %3740 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  %3741 = fmul fast float %3740, %3740
  %3742 = fmul fast float %3741, %2227
  %3743 = call float @dx.op.unary.f32(i32 7, float %3742)  ; Saturate(value)
  %3744 = fmul fast float %3743, %3740
  %3745 = call float @dx.op.dot3.f32(i32 55, float %2197, float %2198, float %2199, float %3735, float %3736, float %3737)  ; Dot3(ax,ay,az,bx,by,bz)
  %3746 = fmul fast float %3745, %3745
  %3747 = call float @dx.op.unary.f32(i32 6, float %3738)  ; FAbs(value)
  %3748 = call float @dx.op.binary.f32(i32 35, float %2610, float 0x3F847AE140000000)  ; FMax(a,b)
  %3749 = fmul fast float %3748, %3748
  %3750 = fmul fast float %3749, %3749
  %3751 = fsub fast float 1.000000e+00, %3750
  %3752 = fmul fast float %2214, %2214
  %3753 = fmul fast float %3752, %3751
  %3754 = fadd fast float %3753, %3750
  %3755 = bitcast float %3754 to i32
  %3756 = ashr i32 %3755, 1
  %3757 = add nsw i32 %3756, 532487669
  %3758 = bitcast i32 %3757 to float
  %3759 = fadd fast float %3758, %2214
  %3760 = fmul fast float %3750, %3746
  %3761 = fsub fast float 1.000000e+00, %3746
  %3762 = fadd fast float %3761, %3760
  %3763 = fmul fast float %3747, %3747
  %3764 = fmul fast float %3763, %3751
  %3765 = fadd fast float %3764, %3750
  %3766 = bitcast float %3765 to i32
  %3767 = ashr i32 %3766, 1
  %3768 = add nsw i32 %3767, 532487669
  %3769 = bitcast i32 %3768 to float
  %3770 = fadd fast float %3769, %3747
  %3771 = fmul fast float %3762, %3762
  %3772 = fmul fast float %3771, %3759
  %3773 = fmul fast float %3772, %3770
  %3774 = fdiv fast float 0x3FF0A00000000000, %3773
  %3775 = fmul fast float %3774, %3750
  %3776 = fmul fast float %2472, 0x3FF9999980000000
  %3777 = fsub fast float 5.000000e+00, %3776
  %3778 = call float @dx.op.unary.f32(i32 6, float %3739)  ; FAbs(value)
  %3779 = fsub fast float 1.000000e+00, %3778
  %3780 = fmul fast float %2472, 0x41D9660740000000
  %3781 = fadd fast float %3780, 0xC1EFBF8940000000
  %3782 = bitcast float %3779 to i32
  %3783 = sitofp i32 %3782 to float
  %3784 = fmul fast float %3783, %3777
  %3785 = fadd fast float %3781, %3784
  %3786 = fptosi float %3785 to i32
  %3787 = bitcast i32 %3786 to float
  %3788 = fsub fast float 1.000000e+00, %2194
  %3789 = fsub fast float 1.000000e+00, %2195
  %3790 = fsub fast float 1.000000e+00, %2212
  %3791 = fmul fast float %3787, %3788
  %3792 = fmul fast float %3787, %3789
  %3793 = fmul fast float %3787, %3790
  %3794 = fadd fast float %3791, %2194
  %3795 = fadd fast float %3792, %2195
  %3796 = fadd fast float %3793, %2212
  br i1 %2495, label %3797, label %3820

; <label>:3797                                    ; preds = %3711
  %3798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1530, float %3778, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3799 = extractvalue %dx.types.ResRet.f32 %3798, 0
  %3800 = extractvalue %dx.types.ResRet.f32 %3798, 1
  %3801 = extractvalue %dx.types.ResRet.f32 %3798, 2
  %3802 = fadd fast float %3799, -5.000000e-01
  %3803 = fadd fast float %3800, -5.000000e-01
  %3804 = fadd fast float %3801, -5.000000e-01
  %3805 = fmul fast float %2194, 4.000000e+00
  %3806 = fmul fast float %3805, %3788
  %3807 = fmul fast float %3806, %3802
  %3808 = fmul fast float %2195, 4.000000e+00
  %3809 = fmul fast float %3808, %3789
  %3810 = fmul fast float %3809, %3803
  %3811 = fmul fast float %2212, 4.000000e+00
  %3812 = fmul fast float %3811, %3790
  %3813 = fmul fast float %3812, %3804
  %3814 = fadd fast float %3807, %3794
  %3815 = fadd fast float %3810, %3795
  %3816 = fadd fast float %3813, %3796
  %3817 = call float @dx.op.unary.f32(i32 7, float %3814)  ; Saturate(value)
  %3818 = call float @dx.op.unary.f32(i32 7, float %3815)  ; Saturate(value)
  %3819 = call float @dx.op.unary.f32(i32 7, float %3816)  ; Saturate(value)
  br label %3820

; <label>:3820                                    ; preds = %3797, %3711
  %3821 = phi float [ %3817, %3797 ], [ %3794, %3711 ]
  %3822 = phi float [ %3818, %3797 ], [ %3795, %3711 ]
  %3823 = phi float [ %3819, %3797 ], [ %3796, %3711 ]
  %3824 = fmul fast float %3738, 9.843750e-01
  %3825 = fadd fast float %3824, 7.812500e-03
  %3826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %3825, float %2476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3827 = extractvalue %dx.types.ResRet.f32 %3826, 0
  %3828 = extractvalue %dx.types.ResRet.f32 %3826, 1
  %3829 = extractvalue %dx.types.ResRet.f32 %3826, 2
  %3830 = extractvalue %dx.types.ResRet.f32 %3826, 3
  %3831 = fsub fast float %3829, %3827
  %3832 = fsub fast float %3830, %3828
  %3833 = fmul fast float %3831, %2482
  %3834 = fmul fast float %3832, %2482
  %3835 = fadd fast float %3833, %3827
  %3836 = fadd fast float %3834, %3828
  %3837 = fmul fast float %3835, %2194
  %3838 = fmul fast float %3835, %2195
  %3839 = fmul fast float %3835, %2212
  %3840 = fadd fast float %3837, %3836
  %3841 = fadd fast float %3838, %3836
  %3842 = fadd fast float %3839, %3836
  br i1 %2495, label %3843, label %3866

; <label>:3843                                    ; preds = %3820
  %3844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1530, float %3738, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3845 = extractvalue %dx.types.ResRet.f32 %3844, 0
  %3846 = extractvalue %dx.types.ResRet.f32 %3844, 1
  %3847 = extractvalue %dx.types.ResRet.f32 %3844, 2
  %3848 = fadd fast float %3845, -5.000000e-01
  %3849 = fadd fast float %3846, -5.000000e-01
  %3850 = fadd fast float %3847, -5.000000e-01
  %3851 = fmul fast float %2194, 4.000000e+00
  %3852 = fmul fast float %3851, %3788
  %3853 = fmul fast float %3852, %3848
  %3854 = fmul fast float %2195, 4.000000e+00
  %3855 = fmul fast float %3854, %3789
  %3856 = fmul fast float %3855, %3849
  %3857 = fmul fast float %2212, 4.000000e+00
  %3858 = fmul fast float %3857, %3790
  %3859 = fmul fast float %3858, %3850
  %3860 = fadd fast float %3853, %3840
  %3861 = fadd fast float %3856, %3841
  %3862 = fadd fast float %3859, %3842
  %3863 = call float @dx.op.unary.f32(i32 7, float %3860)  ; Saturate(value)
  %3864 = call float @dx.op.unary.f32(i32 7, float %3861)  ; Saturate(value)
  %3865 = call float @dx.op.unary.f32(i32 7, float %3862)  ; Saturate(value)
  br label %3866

; <label>:3866                                    ; preds = %3843, %3820
  %3867 = phi float [ %3863, %3843 ], [ %3840, %3820 ]
  %3868 = phi float [ %3864, %3843 ], [ %3841, %3820 ]
  %3869 = phi float [ %3865, %3843 ], [ %3842, %3820 ]
  %3870 = call float @dx.op.binary.f32(i32 35, float %3868, float %3869)  ; FMax(a,b)
  %3871 = call float @dx.op.binary.f32(i32 35, float %3867, float %3870)  ; FMax(a,b)
  %3872 = fsub fast float 1.000000e+00, %3871
  %3873 = call float @dx.op.binary.f32(i32 35, float %3747, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3874 = fdiv fast float %930, %3873
  %3875 = fmul fast float %2550, %3874
  %3876 = fmul fast float %2552, %3874
  %3877 = fmul fast float %2554, %3874
  %3878 = call float @dx.op.unary.f32(i32 21, float %3875)  ; Exp(value)
  %3879 = call float @dx.op.unary.f32(i32 21, float %3876)  ; Exp(value)
  %3880 = call float @dx.op.unary.f32(i32 21, float %3877)  ; Exp(value)
  %3881 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3882 = call float @dx.op.unary.f32(i32 7, float %3879)  ; Saturate(value)
  %3883 = call float @dx.op.unary.f32(i32 7, float %3880)  ; Saturate(value)
  %3884 = select i1 %2547, float %3881, float 0.000000e+00
  %3885 = select i1 %2548, float %3882, float 0.000000e+00
  %3886 = select i1 %2549, float %3883, float 0.000000e+00
  %3887 = fsub fast float -0.000000e+00, %2197
  %3888 = fsub fast float -0.000000e+00, %2198
  %3889 = fsub fast float -0.000000e+00, %2199
  %3890 = call float @dx.op.dot3.f32(i32 55, float %2642, float %2643, float %2644, float %3887, float %3888, float %3889)  ; Dot3(ax,ay,az,bx,by,bz)
  %3891 = call float @dx.op.unary.f32(i32 7, float %3890)  ; Saturate(value)
  %3892 = fmul fast float %3891, 9.843750e-01
  %3893 = fadd fast float %3892, 7.812500e-03
  %3894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %3893, float %2476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3895 = extractvalue %dx.types.ResRet.f32 %3894, 0
  %3896 = extractvalue %dx.types.ResRet.f32 %3894, 1
  %3897 = extractvalue %dx.types.ResRet.f32 %3894, 2
  %3898 = extractvalue %dx.types.ResRet.f32 %3894, 3
  %3899 = fsub fast float %3897, %3895
  %3900 = fsub fast float %3898, %3896
  %3901 = fmul fast float %3899, %2482
  %3902 = fmul fast float %3900, %2482
  %3903 = fadd fast float %3901, %3895
  %3904 = fadd fast float %3902, %3896
  %3905 = fmul fast float %3903, %2194
  %3906 = fmul fast float %3903, %2195
  %3907 = fmul fast float %3903, %2212
  %3908 = fadd fast float %3905, %3904
  %3909 = fadd fast float %3906, %3904
  %3910 = fadd fast float %3907, %3904
  br i1 %2495, label %3911, label %3934

; <label>:3911                                    ; preds = %3866
  %3912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1530, float %3891, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3913 = extractvalue %dx.types.ResRet.f32 %3912, 0
  %3914 = extractvalue %dx.types.ResRet.f32 %3912, 1
  %3915 = extractvalue %dx.types.ResRet.f32 %3912, 2
  %3916 = fadd fast float %3913, -5.000000e-01
  %3917 = fadd fast float %3914, -5.000000e-01
  %3918 = fadd fast float %3915, -5.000000e-01
  %3919 = fmul fast float %2194, 4.000000e+00
  %3920 = fmul fast float %3919, %3788
  %3921 = fmul fast float %3920, %3916
  %3922 = fmul fast float %2195, 4.000000e+00
  %3923 = fmul fast float %3922, %3789
  %3924 = fmul fast float %3923, %3917
  %3925 = fmul fast float %2212, 4.000000e+00
  %3926 = fmul fast float %3925, %3790
  %3927 = fmul fast float %3926, %3918
  %3928 = fadd fast float %3921, %3908
  %3929 = fadd fast float %3924, %3909
  %3930 = fadd fast float %3927, %3910
  %3931 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  %3932 = call float @dx.op.unary.f32(i32 7, float %3929)  ; Saturate(value)
  %3933 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  br label %3934

; <label>:3934                                    ; preds = %3911, %3866
  %3935 = phi float [ %3931, %3911 ], [ %3908, %3866 ]
  %3936 = phi float [ %3932, %3911 ], [ %3909, %3866 ]
  %3937 = phi float [ %3933, %3911 ], [ %3910, %3866 ]
  %3938 = call float @dx.op.binary.f32(i32 35, float %3936, float %3937)  ; FMax(a,b)
  %3939 = call float @dx.op.binary.f32(i32 35, float %3935, float %3938)  ; FMax(a,b)
  %3940 = fsub fast float 1.000000e+00, %3939
  %3941 = fmul fast float %2610, %2615
  %3942 = fadd fast float %2617, %3941
  %3943 = call float @dx.op.unary.f32(i32 7, float %3942)  ; Saturate(value)
  %3944 = fsub fast float %2642, %2220
  %3945 = fsub fast float %2643, %2221
  %3946 = fsub fast float %2644, %2222
  %3947 = call float @dx.op.dot3.f32(i32 55, float %3944, float %3945, float %3946, float %3944, float %3945, float %3946)  ; Dot3(ax,ay,az,bx,by,bz)
  %3948 = call float @dx.op.unary.f32(i32 25, float %3947)  ; Rsqrt(value)
  %3949 = fmul fast float %3948, %3944
  %3950 = fmul fast float %3948, %3945
  %3951 = fmul fast float %3948, %3946
  %3952 = call float @dx.op.dot3.f32(i32 55, float %3887, float %3888, float %3889, float %3949, float %3950, float %3951)  ; Dot3(ax,ay,az,bx,by,bz)
  %3953 = fmul fast float %3952, %3952
  %3954 = call float @dx.op.unary.f32(i32 6, float %3891)  ; FAbs(value)
  %3955 = call float @dx.op.binary.f32(i32 35, float %3943, float 0x3F847AE140000000)  ; FMax(a,b)
  %3956 = fmul fast float %3955, %3955
  %3957 = fmul fast float %3956, %3956
  %3958 = fsub fast float 1.000000e+00, %3957
  %3959 = fmul fast float %3752, %3958
  %3960 = fadd fast float %3959, %3957
  %3961 = bitcast float %3960 to i32
  %3962 = ashr i32 %3961, 1
  %3963 = add nsw i32 %3962, 532487669
  %3964 = bitcast i32 %3963 to float
  %3965 = fadd fast float %3964, %2214
  %3966 = fmul fast float %3957, %3953
  %3967 = fsub fast float 1.000000e+00, %3953
  %3968 = fadd fast float %3967, %3966
  %3969 = fmul fast float %3954, %3954
  %3970 = fmul fast float %3969, %3958
  %3971 = fadd fast float %3970, %3957
  %3972 = bitcast float %3971 to i32
  %3973 = ashr i32 %3972, 1
  %3974 = add nsw i32 %3973, 532487669
  %3975 = bitcast i32 %3974 to float
  %3976 = fadd fast float %3975, %3954
  %3977 = fmul fast float %3968, %3968
  %3978 = fmul fast float %3977, %3965
  %3979 = fmul fast float %3978, %3976
  %3980 = fdiv fast float 0x3FF0A00000000000, %3979
  %3981 = fmul fast float %3980, %3957
  %3982 = fmul fast float %3891, %3884
  %3983 = fmul fast float %3891, %3885
  %3984 = fmul fast float %3891, %3886
  %3985 = fmul fast float %3982, %3940
  %3986 = fmul fast float %3985, %3981
  %3987 = fmul fast float %3983, %3940
  %3988 = fmul fast float %3987, %3981
  %3989 = fmul fast float %3984, %3940
  %3990 = fmul fast float %3989, %3981
  %3991 = fmul fast float %3821, %3775
  %3992 = fmul fast float %3822, %3775
  %3993 = fmul fast float %3823, %3775
  %3994 = fsub fast float 1.000000e+00, %3739
  %3995 = bitcast float %3994 to i32
  %3996 = sitofp i32 %3995 to float
  %3997 = fmul fast float %3996, 5.000000e+00
  %3998 = fadd fast float %3997, 0xC1EFBF8940000000
  %3999 = fptosi float %3998 to i32
  %4000 = bitcast i32 %3999 to float
  %4001 = fmul fast float %4000, %1529
  %4002 = fmul fast float %3872, %4001
  %4003 = fmul fast float %4002, %2542
  %4004 = fmul fast float %4002, %2543
  %4005 = fmul fast float %4002, %2544
  %4006 = fadd fast float %4003, %3991
  %4007 = fadd fast float %4004, %3992
  %4008 = fadd fast float %4005, %3993
  %4009 = fmul fast float %4006, %3744
  %4010 = fmul fast float %4007, %3744
  %4011 = fmul fast float %4008, %3744
  %4012 = fmul fast float %3744, %3727
  %4013 = fmul fast float %4012, %3872
  %4014 = fmul fast float %3744, %3728
  %4015 = fmul fast float %4014, %3872
  %4016 = fmul fast float %3744, %3729
  %4017 = fmul fast float %4016, %3872
  %4018 = fadd fast float %4009, %3986
  %4019 = fadd fast float %4010, %3988
  %4020 = fadd fast float %4011, %3990
  %4021 = fmul fast float %4018, %3727
  %4022 = fmul fast float %4019, %3728
  %4023 = fmul fast float %4020, %3729
  %4024 = fadd fast float %4013, %2632
  %4025 = fmul fast float %4024, %1585
  %4026 = fadd fast float %4015, %2634
  %4027 = fmul fast float %4026, %1585
  %4028 = fadd fast float %4017, %2636
  %4029 = fmul fast float %4028, %1585
  %4030 = fadd fast float %4021, %2595
  %4031 = fmul fast float %4030, %1585
  %4032 = fadd fast float %4022, %2598
  %4033 = fmul fast float %4032, %1585
  %4034 = fadd fast float %4023, %2601
  %4035 = fmul fast float %4034, %1585
  br label %4036

; <label>:4036                                    ; preds = %3934, %3645, %2522
  %4037 = phi float [ %2596, %2522 ], [ %2596, %3645 ], [ %4031, %3934 ]
  %4038 = phi float [ %2599, %2522 ], [ %2599, %3645 ], [ %4033, %3934 ]
  %4039 = phi float [ %2602, %2522 ], [ %2602, %3645 ], [ %4035, %3934 ]
  %4040 = phi float [ %2633, %2522 ], [ %2633, %3645 ], [ %4025, %3934 ]
  %4041 = phi float [ %2635, %2522 ], [ %2635, %3645 ], [ %4027, %3934 ]
  %4042 = phi float [ %2637, %2522 ], [ %2637, %3645 ], [ %4029, %3934 ]
  %4043 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4044 = extractvalue %dx.types.CBufRet.i32 %4043, 0
  %4045 = icmp eq i32 %4044, 0
  br i1 %4045, label %5066, label %4046

; <label>:4046                                    ; preds = %4036
  %4047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4048 = extractvalue %dx.types.CBufRet.f32 %4047, 2
  %4049 = extractvalue %dx.types.CBufRet.f32 %4047, 3
  %4050 = fmul fast float %4048, %85
  %4051 = fmul fast float %4049, %86
  %4052 = fptoui float %4050 to i32
  %4053 = fptoui float %4051 to i32
  %4054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4055 = extractvalue %dx.types.CBufRet.f32 %4054, 0
  %4056 = extractvalue %dx.types.CBufRet.f32 %4054, 2
  %4057 = extractvalue %dx.types.CBufRet.f32 %4054, 3
  %4058 = fadd fast float %76, -4.000000e+00
  %4059 = call float @dx.op.binary.f32(i32 35, float %4058, float 0.000000e+00)  ; FMax(a,b)
  %4060 = fadd fast float %4059, %4055
  %4061 = fmul fast float %4060, %4056
  %4062 = call float @dx.op.unary.f32(i32 23, float %4061)  ; Log(value)
  %4063 = fmul fast float %4062, %4057
  %4064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4065 = extractvalue %dx.types.CBufRet.f32 %4064, 2
  %4066 = fmul fast float %4063, %4065
  %4067 = call float @dx.op.unary.f32(i32 7, float %4066)  ; Saturate(value)
  %4068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.i32 %4068, 1
  %4070 = add i32 %4069, -1
  %4071 = uitofp i32 %4069 to float
  %4072 = fmul fast float %4071, %4067
  %4073 = fptoui float %4072 to i32
  %4074 = call i32 @dx.op.binary.i32(i32 40, i32 %4073, i32 %4070)  ; UMin(a,b)
  %4075 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4076 = extractvalue %dx.types.CBufRet.i32 %4075, 2
  %4077 = extractvalue %dx.types.CBufRet.i32 %4075, 3
  %4078 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4053, i32 %4076, i32 %4052)  ; UMad(a,b,c)
  %4079 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4074, i32 %4077, i32 %4078)  ; UMad(a,b,c)
  %4080 = add nsw i32 %4044, -1
  %4081 = call i32 @dx.op.binary.i32(i32 37, i32 %4080, i32 0)  ; IMax(a,b)
  %4082 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %4083 = fptoui float %4082 to i32
  %4084 = lshr i32 %4083, 5
  %4085 = call i32 @dx.op.binary.i32(i32 40, i32 %4084, i32 8191)  ; UMin(a,b)
  %4086 = shl i32 %4085, 2
  %4087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4086, i32 undef)  ; BufferLoad(srv,index,wot)
  %4088 = extractvalue %dx.types.ResRet.i32 %4087, 0
  %4089 = lshr i32 %4088, 16
  %4090 = and i32 %4088, 65535
  %4091 = lshr i32 %4088, 21
  %4092 = lshr i32 %4090, 5
  %4093 = call i32 @dx.op.binary.i32(i32 40, i32 %4092, i32 %4081)  ; UMin(a,b)
  %4094 = icmp ugt i32 %4091, %4093
  br i1 %4094, label %5066, label %4095

; <label>:4095                                    ; preds = %4046
  br label %4096

; <label>:4096                                    ; preds = %5056, %4095
  %4097 = phi i32 [ %5063, %5056 ], [ %4091, %4095 ]
  %4098 = phi float [ %5057, %5056 ], [ %4037, %4095 ]
  %4099 = phi float [ %5058, %5056 ], [ %4038, %4095 ]
  %4100 = phi float [ %5059, %5056 ], [ %4039, %4095 ]
  %4101 = phi float [ %5060, %5056 ], [ %4040, %4095 ]
  %4102 = phi float [ %5061, %5056 ], [ %4041, %4095 ]
  %4103 = phi float [ %5062, %5056 ], [ %4042, %4095 ]
  %4104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4105 = extractvalue %dx.types.CBufRet.i32 %4104, 0
  %4106 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4079, i32 %4105, i32 %4097)  ; UMad(a,b,c)
  %4107 = shl i32 %4106, 2
  %4108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4107, i32 undef)  ; BufferLoad(srv,index,wot)
  %4109 = extractvalue %dx.types.ResRet.i32 %4108, 0
  %4110 = shl i32 %4097, 5
  %4111 = sub nsw i32 %4089, %4110
  %4112 = call i32 @dx.op.binary.i32(i32 37, i32 %4111, i32 0)  ; IMax(a,b)
  %4113 = call i32 @dx.op.binary.i32(i32 38, i32 %4112, i32 31)  ; IMin(a,b)
  %4114 = sub nsw i32 1, %4089
  %4115 = add nsw i32 %4114, %4090
  %4116 = call i32 @dx.op.binary.i32(i32 37, i32 %4115, i32 0)  ; IMax(a,b)
  %4117 = call i32 @dx.op.binary.i32(i32 38, i32 %4116, i32 32)  ; IMin(a,b)
  %4118 = and i32 %4117, 31
  %4119 = shl i32 -1, %4118
  %4120 = xor i32 %4119, -1
  %4121 = and i32 %4113, 31
  %4122 = shl i32 %4120, %4121
  %4123 = icmp eq i32 %4117, 32
  %4124 = select i1 %4123, i32 -1, i32 %4122
  %4125 = and i32 %4124, %4109
  %4126 = icmp eq i32 %4125, 0
  br i1 %4126, label %5056, label %4127

; <label>:4127                                    ; preds = %4096
  br label %4128

; <label>:4128                                    ; preds = %4263, %4127
  %4129 = phi i32 [ %4140, %4263 ], [ %4125, %4127 ]
  %4130 = phi float [ %4264, %4263 ], [ %4098, %4127 ]
  %4131 = phi float [ %4265, %4263 ], [ %4099, %4127 ]
  %4132 = phi float [ %4266, %4263 ], [ %4100, %4127 ]
  %4133 = phi float [ %4267, %4263 ], [ %4101, %4127 ]
  %4134 = phi float [ %4268, %4263 ], [ %4102, %4127 ]
  %4135 = phi float [ %4269, %4263 ], [ %4103, %4127 ]
  %4136 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4129)  ; FirstbitLo(value)
  %4137 = add i32 %4136, %4110
  %4138 = and i32 %4136, 31
  %4139 = shl i32 1, %4138
  %4140 = xor i32 %4139, %4129
  %4141 = mul i32 %4137, 112
  %4142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4141, i32 undef)  ; BufferLoad(srv,index,wot)
  %4143 = extractvalue %dx.types.ResRet.f32 %4142, 0
  %4144 = extractvalue %dx.types.ResRet.f32 %4142, 1
  %4145 = extractvalue %dx.types.ResRet.f32 %4142, 2
  %4146 = or i32 %4141, 12
  %4147 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4146, i32 undef)  ; BufferLoad(srv,index,wot)
  %4148 = extractvalue %dx.types.ResRet.f32 %4147, 0
  %4149 = add i32 %4141, 16
  %4150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4149, i32 undef)  ; BufferLoad(srv,index,wot)
  %4151 = extractvalue %dx.types.ResRet.f32 %4150, 0
  %4152 = extractvalue %dx.types.ResRet.f32 %4150, 1
  %4153 = extractvalue %dx.types.ResRet.f32 %4150, 2
  %4154 = add i32 %4141, 28
  %4155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4154, i32 undef)  ; BufferLoad(srv,index,wot)
  %4156 = extractvalue %dx.types.ResRet.i32 %4155, 0
  %4157 = add i32 %4141, 44
  %4158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4157, i32 undef)  ; BufferLoad(srv,index,wot)
  %4159 = extractvalue %dx.types.ResRet.f32 %4158, 0
  %4160 = add i32 %4141, 48
  %4161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4160, i32 undef)  ; BufferLoad(srv,index,wot)
  %4162 = extractvalue %dx.types.ResRet.f32 %4161, 0
  %4163 = extractvalue %dx.types.ResRet.f32 %4161, 1
  %4164 = extractvalue %dx.types.ResRet.f32 %4161, 2
  %4165 = extractvalue %dx.types.ResRet.f32 %4161, 3
  %4166 = add i32 %4141, 64
  %4167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4166, i32 undef)  ; BufferLoad(srv,index,wot)
  %4168 = extractvalue %dx.types.ResRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.ResRet.f32 %4167, 1
  %4170 = extractvalue %dx.types.ResRet.f32 %4167, 2
  %4171 = extractvalue %dx.types.ResRet.f32 %4167, 3
  %4172 = add i32 %4141, 80
  %4173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4172, i32 undef)  ; BufferLoad(srv,index,wot)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 1
  %4175 = extractvalue %dx.types.ResRet.f32 %4173, 2
  %4176 = add i32 %4141, 92
  %4177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4176, i32 undef)  ; BufferLoad(srv,index,wot)
  %4178 = extractvalue %dx.types.ResRet.i32 %4177, 0
  %4179 = call float @dx.op.dot3.f32(i32 55, float %4143, float %4144, float %4145, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4180 = select i1 %226, float %4174, float %4143
  %4181 = select i1 %226, float %4179, float %4144
  %4182 = select i1 %226, float %4175, float %4145
  %4183 = and i32 %4178, 65535
  %4184 = uitofp i32 %4183 to float
  %4185 = lshr i32 %4178, 16
  %4186 = uitofp i32 %4185 to float
  %4187 = and i32 %4156, 65535
  %4188 = and i32 %4156, 50331648
  %4189 = icmp slt i32 %4156, 0
  %4190 = icmp eq i32 %4188, 33554432
  %4191 = fsub fast float %4162, %133
  %4192 = fsub fast float %4163, %134
  %4193 = fsub fast float %4164, %135
  %4194 = call float @dx.op.dot3.f32(i32 55, float %4191, float %4192, float %4193, float %4191, float %4192, float %4193)  ; Dot3(ax,ay,az,bx,by,bz)
  %4195 = call float @dx.op.unary.f32(i32 24, float %4194)  ; Sqrt(value)
  %4196 = fdiv fast float 1.000000e+00, %4195
  %4197 = fmul fast float %4196, %4191
  %4198 = fmul fast float %4196, %4192
  %4199 = fmul fast float %4196, %4193
  %4200 = fadd fast float %4195, %4148
  %4201 = fdiv fast float 1.000000e+00, %4200
  %4202 = fmul float %4159, %4201
  %4203 = fmul float %4202, %4202
  %4204 = call float @dx.op.unary.f32(i32 7, float %4203)  ; Saturate(value)
  br i1 %4190, label %4205, label %4226

; <label>:4205                                    ; preds = %4128
  %4206 = fmul fast float %4170, %4151
  %4207 = fmul fast float %4170, %4152
  %4208 = fmul fast float %4170, %4153
  %4209 = fadd fast float %4191, %4206
  %4210 = fadd fast float %4192, %4207
  %4211 = fadd fast float %4193, %4208
  %4212 = call float @dx.op.dot3.f32(i32 55, float %4209, float %4210, float %4211, float %4209, float %4210, float %4211)  ; Dot3(ax,ay,az,bx,by,bz)
  %4213 = call float @dx.op.unary.f32(i32 25, float %4212)  ; Rsqrt(value)
  %4214 = fmul fast float %4213, %4209
  %4215 = fmul fast float %4213, %4210
  %4216 = fmul fast float %4213, %4211
  %4217 = fsub fast float %133, %4162
  %4218 = fsub fast float %134, %4163
  %4219 = fsub fast float %135, %4164
  %4220 = fsub fast float -0.000000e+00, %4217
  %4221 = fsub fast float -0.000000e+00, %4218
  %4222 = fsub fast float -0.000000e+00, %4219
  %4223 = call float @dx.op.dot3.f32(i32 55, float %4220, float %4221, float %4222, float %4151, float %4152, float %4153)  ; Dot3(ax,ay,az,bx,by,bz)
  %4224 = fcmp fast ogt float %4223, 0.000000e+00
  %4225 = uitofp i1 %4224 to float
  br label %4226

; <label>:4226                                    ; preds = %4205, %4128
  %4227 = phi float [ %4225, %4205 ], [ 1.000000e+00, %4128 ]
  %4228 = phi float [ %4214, %4205 ], [ %4197, %4128 ]
  %4229 = phi float [ %4215, %4205 ], [ %4198, %4128 ]
  %4230 = phi float [ %4216, %4205 ], [ %4199, %4128 ]
  %4231 = call float @dx.op.dot3.f32(i32 55, float %4151, float %4152, float %4153, float %4228, float %4229, float %4230)  ; Dot3(ax,ay,az,bx,by,bz)
  %4232 = fmul fast float %4231, %4231
  %4233 = call float @dx.op.unary.f32(i32 7, float %4232)  ; Saturate(value)
  %4234 = fsub fast float 1.000000e+00, %4233
  %4235 = fmul fast float %4234, 5.000000e-01
  %4236 = fcmp fast ogt float %4231, 0.000000e+00
  %4237 = fsub fast float 1.000000e+00, %4235
  %4238 = select i1 %4236, float %4235, float %4237
  %4239 = fmul fast float %4238, %4186
  %4240 = fadd fast float %4239, %4184
  %4241 = fmul fast float %4240, 0x3EF0001000000000
  %4242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %44, float %4241, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4243 = extractvalue %dx.types.ResRet.f32 %4242, 0
  %4244 = fmul fast float %4231, %4168
  %4245 = fadd fast float %4244, %4169
  %4246 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  %4247 = select i1 %4190, float 1.000000e+00, float %4246
  %4248 = select i1 %4190, float %4246, float 1.000000e+00
  %4249 = fmul fast float %4195, %4165
  %4250 = fsub fast float 1.000000e+00, %4249
  %4251 = fmul fast float %4250, %4171
  %4252 = call float @dx.op.unary.f32(i32 7, float %4251)  ; Saturate(value)
  %4253 = fmul fast float %4252, %4248
  %4254 = fmul fast float %4253, 2.000000e+00
  %4255 = fsub fast float 3.000000e+00, %4254
  %4256 = fmul fast float %4243, %4227
  %4257 = fmul fast float %4253, %4253
  %4258 = fmul fast float %4257, %4256
  %4259 = fmul fast float %4258, %4255
  %4260 = call float @dx.op.binary.f32(i32 36, float %4259, float %4259)  ; FMin(a,b)
  %4261 = call float @dx.op.binary.f32(i32 36, float %4259, float %4260)  ; FMin(a,b)
  %4262 = fcmp fast ogt float %4261, 0.000000e+00
  br i1 %4262, label %4271, label %4263, !dx.controlflow.hints !110

; <label>:4263                                    ; preds = %5009, %4615, %4226
  %4264 = phi float [ %4130, %4615 ], [ %4130, %4226 ], [ %5052, %5009 ]
  %4265 = phi float [ %4131, %4615 ], [ %4131, %4226 ], [ %5053, %5009 ]
  %4266 = phi float [ %4132, %4615 ], [ %4132, %4226 ], [ %5054, %5009 ]
  %4267 = phi float [ %4133, %4615 ], [ %4133, %4226 ], [ %5046, %5009 ]
  %4268 = phi float [ %4134, %4615 ], [ %4134, %4226 ], [ %5047, %5009 ]
  %4269 = phi float [ %4135, %4615 ], [ %4135, %4226 ], [ %5048, %5009 ]
  %4270 = icmp eq i32 %4129, %4139
  br i1 %4270, label %5055, label %4128

; <label>:4271                                    ; preds = %4226
  %4272 = icmp eq i32 %4187, 255
  br i1 %4272, label %4371, label %4273, !dx.controlflow.hints !111

; <label>:4273                                    ; preds = %4271
  %4274 = mul nuw nsw i32 %4187, 176
  %4275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4274, i32 undef)  ; BufferLoad(srv,index,wot)
  %4276 = extractvalue %dx.types.ResRet.f32 %4275, 0
  %4277 = extractvalue %dx.types.ResRet.f32 %4275, 1
  %4278 = extractvalue %dx.types.ResRet.f32 %4275, 2
  %4279 = extractvalue %dx.types.ResRet.f32 %4275, 3
  %4280 = add nuw nsw i32 %4274, 16
  %4281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4280, i32 undef)  ; BufferLoad(srv,index,wot)
  %4282 = extractvalue %dx.types.ResRet.f32 %4281, 0
  %4283 = extractvalue %dx.types.ResRet.f32 %4281, 1
  %4284 = add nuw nsw i32 %4274, 32
  %4285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4284, i32 undef)  ; BufferLoad(srv,index,wot)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = extractvalue %dx.types.ResRet.f32 %4285, 1
  %4288 = extractvalue %dx.types.ResRet.f32 %4285, 2
  %4289 = add nuw nsw i32 %4274, 48
  %4290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4289, i32 undef)  ; BufferLoad(srv,index,wot)
  %4291 = extractvalue %dx.types.ResRet.f32 %4290, 0
  %4292 = extractvalue %dx.types.ResRet.f32 %4290, 1
  %4293 = extractvalue %dx.types.ResRet.f32 %4290, 2
  %4294 = extractvalue %dx.types.ResRet.f32 %4290, 3
  %4295 = add nuw nsw i32 %4274, 64
  %4296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4295, i32 undef)  ; BufferLoad(srv,index,wot)
  %4297 = extractvalue %dx.types.ResRet.f32 %4296, 0
  %4298 = extractvalue %dx.types.ResRet.f32 %4296, 1
  %4299 = extractvalue %dx.types.ResRet.f32 %4296, 2
  %4300 = extractvalue %dx.types.ResRet.f32 %4296, 3
  %4301 = add nuw nsw i32 %4274, 80
  %4302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4301, i32 undef)  ; BufferLoad(srv,index,wot)
  %4303 = extractvalue %dx.types.ResRet.f32 %4302, 0
  %4304 = extractvalue %dx.types.ResRet.f32 %4302, 1
  %4305 = extractvalue %dx.types.ResRet.f32 %4302, 2
  %4306 = extractvalue %dx.types.ResRet.f32 %4302, 3
  %4307 = add nuw nsw i32 %4274, 96
  %4308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4307, i32 undef)  ; BufferLoad(srv,index,wot)
  %4309 = extractvalue %dx.types.ResRet.f32 %4308, 0
  %4310 = extractvalue %dx.types.ResRet.f32 %4308, 1
  %4311 = extractvalue %dx.types.ResRet.f32 %4308, 2
  %4312 = extractvalue %dx.types.ResRet.f32 %4308, 3
  %4313 = bitcast float %4283 to i32
  %4314 = fmul fast float %4288, %88
  %4315 = fmul fast float %4288, %89
  %4316 = fmul fast float %4288, %90
  %4317 = fadd fast float %4314, %133
  %4318 = fadd fast float %4315, %134
  %4319 = fadd fast float %4316, %135
  %4320 = fmul fast float %4317, %4291
  %4321 = call float @dx.op.tertiary.f32(i32 46, float %4318, float %4297, float %4320)  ; FMad(a,b,c)
  %4322 = call float @dx.op.tertiary.f32(i32 46, float %4319, float %4303, float %4321)  ; FMad(a,b,c)
  %4323 = fadd fast float %4322, %4309
  %4324 = fmul fast float %4317, %4292
  %4325 = call float @dx.op.tertiary.f32(i32 46, float %4318, float %4298, float %4324)  ; FMad(a,b,c)
  %4326 = call float @dx.op.tertiary.f32(i32 46, float %4319, float %4304, float %4325)  ; FMad(a,b,c)
  %4327 = fadd fast float %4326, %4310
  %4328 = fmul fast float %4317, %4293
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4318, float %4299, float %4328)  ; FMad(a,b,c)
  %4330 = call float @dx.op.tertiary.f32(i32 46, float %4319, float %4305, float %4329)  ; FMad(a,b,c)
  %4331 = fadd fast float %4330, %4311
  %4332 = fmul fast float %4317, %4294
  %4333 = call float @dx.op.tertiary.f32(i32 46, float %4318, float %4300, float %4332)  ; FMad(a,b,c)
  %4334 = call float @dx.op.tertiary.f32(i32 46, float %4319, float %4306, float %4333)  ; FMad(a,b,c)
  %4335 = fadd fast float %4334, %4312
  %4336 = fdiv fast float %4323, %4335
  %4337 = fdiv fast float %4327, %4335
  %4338 = fdiv fast float %4331, %4335
  %4339 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4338)  ; FMax(a,b)
  %4340 = fmul fast float %239, 0x401921FB60000000
  %4341 = call float @dx.op.unary.f32(i32 13, float %4340)  ; Sin(value)
  %4342 = call float @dx.op.unary.f32(i32 12, float %4340)  ; Cos(value)
  %4343 = fsub fast float -0.000000e+00, %4341
  %4344 = fmul fast float %4278, 5.000000e-01
  %4345 = call float @dx.op.dot2.f32(i32 54, float %239, float %239, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %4346 = call float @dx.op.unary.f32(i32 22, float %4345)  ; Frc(value)
  %4347 = fmul fast float %4346, 0x404A7DD040000000
  %4348 = call float @dx.op.unary.f32(i32 22, float %4347)  ; Frc(value)
  %4349 = fmul fast float %4348, %4287
  %4350 = fadd fast float %4349, %4344
  %4351 = call float @dx.op.tertiary.f32(i32 46, float %4350, float %4343, float 0.000000e+00)  ; FMad(a,b,c)
  %4352 = call float @dx.op.tertiary.f32(i32 46, float %4350, float %4342, float 0.000000e+00)  ; FMad(a,b,c)
  %4353 = fadd fast float %4351, %4336
  %4354 = fadd fast float %4352, %4337
  %4355 = fmul fast float %4353, %4282
  %4356 = fmul fast float %4354, %4282
  %4357 = call float @dx.op.binary.f32(i32 35, float %4355, float %4278)  ; FMax(a,b)
  %4358 = call float @dx.op.binary.f32(i32 35, float %4356, float %4278)  ; FMax(a,b)
  %4359 = call float @dx.op.binary.f32(i32 36, float %4357, float %4279)  ; FMin(a,b)
  %4360 = call float @dx.op.binary.f32(i32 36, float %4358, float %4279)  ; FMin(a,b)
  %4361 = fadd fast float %4359, %4276
  %4362 = fadd fast float %4360, %4277
  %4363 = uitofp i32 %4313 to float
  %4364 = fadd fast float %4339, %4286
  %4365 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %46, float %4361, float %4362, float %4363, float undef, i32 0, i32 0, i32 undef, float %4364)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4366 = extractvalue %dx.types.ResRet.f32 %4365, 0
  %4367 = fadd fast float %4366, -1.000000e+00
  %4368 = fmul fast float %4367, %4247
  %4369 = fadd fast float %4368, 1.000000e+00
  %4370 = fmul fast float %4369, %4259
  br label %4371

; <label>:4371                                    ; preds = %4273, %4271
  %4372 = phi float [ %4370, %4273 ], [ %4259, %4271 ]
  %4373 = call float @dx.op.binary.f32(i32 36, float %4372, float %4372)  ; FMin(a,b)
  %4374 = call float @dx.op.binary.f32(i32 36, float %4372, float %4373)  ; FMin(a,b)
  %4375 = fcmp fast ogt float %4374, 0.000000e+00
  %4376 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %4197, float %4198, float %4199)  ; Dot3(ax,ay,az,bx,by,bz)
  %4377 = fcmp fast ogt float %4376, 0.000000e+00
  %4378 = and i1 %4375, %4377
  br i1 %4378, label %4379, label %4615, !dx.controlflow.hints !112

; <label>:4379                                    ; preds = %4371
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 1
  %4382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.f32 %4382, 1
  %4384 = select i1 %2211, float %4381, float %4383
  %4385 = extractvalue %dx.types.CBufRet.f32 %4380, 2
  %4386 = extractvalue %dx.types.CBufRet.f32 %4382, 2
  %4387 = select i1 %2211, float %4385, float %4386
  %4388 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.i32 %4388, 0
  %4390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %4391 = extractvalue %dx.types.CBufRet.i32 %4390, 0
  %4392 = select i1 %2211, i32 %4389, i32 %4391
  %4393 = fcmp fast olt float %4384, 5.000000e-01
  %4394 = icmp eq i32 %4392, 0
  %4395 = or i1 %4393, %4394
  br i1 %4395, label %4610, label %4396

; <label>:4396                                    ; preds = %4379
  %4397 = fmul fast float %4191, %4191
  %4398 = fmul fast float %4192, %4192
  %4399 = fadd fast float %4397, %4398
  %4400 = fmul fast float %4193, %4193
  %4401 = fadd fast float %4399, %4400
  %4402 = call float @dx.op.unary.f32(i32 24, float %4401)  ; Sqrt(value)
  %4403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.i32 %4403, 0
  %4405 = uitofp i32 %4404 to float
  %4406 = fmul fast float %4384, %4159
  %4407 = fdiv fast float %4406, %4402
  %4408 = call float @dx.op.binary.f32(i32 36, float %4407, float 1.000000e+01)  ; FMin(a,b)
  %4409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %4410 = extractvalue %dx.types.CBufRet.f32 %4409, 0
  %4411 = extractvalue %dx.types.CBufRet.f32 %4409, 1
  %4412 = extractvalue %dx.types.CBufRet.f32 %4409, 2
  %4413 = extractvalue %dx.types.CBufRet.f32 %4409, 3
  %4414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.f32 %4414, 0
  %4416 = extractvalue %dx.types.CBufRet.f32 %4414, 1
  %4417 = extractvalue %dx.types.CBufRet.f32 %4414, 2
  %4418 = extractvalue %dx.types.CBufRet.f32 %4414, 3
  %4419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %4420 = extractvalue %dx.types.CBufRet.f32 %4419, 0
  %4421 = extractvalue %dx.types.CBufRet.f32 %4419, 1
  %4422 = extractvalue %dx.types.CBufRet.f32 %4419, 2
  %4423 = extractvalue %dx.types.CBufRet.f32 %4419, 3
  %4424 = fmul fast float %240, 0x401061CAC0000000
  %4425 = fmul fast float %240, 0x4023E1D7E0000000
  %4426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %4427 = extractvalue %dx.types.CBufRet.f32 %4426, 0
  %4428 = extractvalue %dx.types.CBufRet.f32 %4426, 1
  %4429 = extractvalue %dx.types.CBufRet.f32 %4426, 2
  %4430 = extractvalue %dx.types.CBufRet.f32 %4426, 3
  %4431 = fsub fast float -0.000000e+00, %4197
  %4432 = fmul fast float %4199, %4431
  %4433 = fmul fast float %4197, %4431
  %4434 = fmul fast float %4198, %4198
  %4435 = fsub fast float %4433, %4434
  %4436 = fdiv fast float 1.000000e+00, %76
  %4437 = fmul fast float %4429, %85
  %4438 = fmul fast float %4430, %86
  %4439 = fmul fast float %4384, %4197
  %4440 = fmul fast float %4384, %4199
  %4441 = fadd fast float %4439, %133
  %4442 = fadd fast float %4440, %135
  %4443 = fadd fast float %4425, 5.000000e-01
  %4444 = call float @dx.op.unary.f32(i32 22, float %4443)  ; Frc(value)
  %4445 = bitcast float %4444 to i32
  %4446 = ashr i32 %4445, 1
  %4447 = add nsw i32 %4446, 532487669
  %4448 = bitcast i32 %4447 to float
  %4449 = fmul fast float %4448, %4408
  %4450 = fadd fast float %4424, 5.000000e-01
  %4451 = call float @dx.op.unary.f32(i32 22, float %4450)  ; Frc(value)
  %4452 = fmul fast float %4451, 0x401921FB60000000
  %4453 = call float @dx.op.unary.f32(i32 12, float %4452)  ; Cos(value)
  %4454 = fmul fast float %4453, %4453
  %4455 = fsub fast float 1.000000e+00, %4454
  %4456 = bitcast float %4455 to i32
  %4457 = ashr i32 %4456, 1
  %4458 = add nsw i32 %4457, 532487669
  %4459 = bitcast i32 %4458 to float
  %4460 = fmul fast float %4449, %4453
  %4461 = fmul fast float %4460, %4198
  %4462 = fmul fast float %4460, %4431
  %4463 = fadd fast float %4441, %4461
  %4464 = fmul fast float %4459, %4449
  %4465 = fmul fast float %4432, %4464
  %4466 = fmul fast float %4464, %4199
  %4467 = fmul fast float %4464, %4435
  %4468 = fsub fast float %4463, %4465
  %4469 = fadd fast float %4466, %4384
  %4470 = fmul fast float %4469, %4198
  %4471 = fadd fast float %4462, %134
  %4472 = fadd fast float %4471, %4470
  %4473 = fadd fast float %4442, %4467
  %4474 = fmul fast float %4468, %4410
  %4475 = call float @dx.op.tertiary.f32(i32 46, float %4472, float %4411, float %4474)  ; FMad(a,b,c)
  %4476 = call float @dx.op.tertiary.f32(i32 46, float %4473, float %4412, float %4475)  ; FMad(a,b,c)
  %4477 = fadd fast float %4476, %4413
  %4478 = fmul fast float %4468, %4415
  %4479 = call float @dx.op.tertiary.f32(i32 46, float %4472, float %4416, float %4478)  ; FMad(a,b,c)
  %4480 = call float @dx.op.tertiary.f32(i32 46, float %4473, float %4417, float %4479)  ; FMad(a,b,c)
  %4481 = fadd fast float %4480, %4418
  %4482 = fmul fast float %4468, %4420
  %4483 = call float @dx.op.tertiary.f32(i32 46, float %4472, float %4421, float %4482)  ; FMad(a,b,c)
  %4484 = call float @dx.op.tertiary.f32(i32 46, float %4473, float %4422, float %4483)  ; FMad(a,b,c)
  %4485 = fadd fast float %4484, %4423
  %4486 = fdiv fast float 1.000000e+00, %4485
  %4487 = fmul fast float %4477, 5.000000e-01
  %4488 = fmul fast float %4481, -5.000000e-01
  %4489 = fmul fast float %4487, %4486
  %4490 = fmul fast float %4488, %4486
  %4491 = fsub fast float 5.000000e-01, %4437
  %4492 = fadd fast float %4491, %4489
  %4493 = fsub fast float 5.000000e-01, %4438
  %4494 = fadd fast float %4493, %4490
  %4495 = fsub fast float %4486, %4436
  %4496 = call float @dx.op.dot2.f32(i32 54, float %4492, float %4494, float %4492, float %4494)  ; Dot2(ax,ay,bx,by)
  %4497 = call float @dx.op.binary.f32(i32 35, float %4496, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %4498 = call float @dx.op.dot2.f32(i32 54, float %4427, float %4428, float %4427, float %4428)  ; Dot2(ax,ay,bx,by)
  %4499 = fmul fast float %4498, %4497
  %4500 = call float @dx.op.unary.f32(i32 25, float %4499)  ; Rsqrt(value)
  %4501 = fmul fast float %4500, %4492
  %4502 = fmul fast float %4500, %4494
  %4503 = fadd fast float %4501, %4437
  %4504 = fadd fast float %4502, %4438
  %4505 = fmul fast float %4492, %4427
  %4506 = fmul fast float %4494, %4428
  %4507 = fmul fast float %4505, %4505
  %4508 = fmul fast float %4506, %4506
  %4509 = fadd fast float %4507, %4508
  %4510 = call float @dx.op.unary.f32(i32 24, float %4509)  ; Sqrt(value)
  %4511 = fdiv fast float 1.000000e+00, %4510
  %4512 = fmul fast float %4510, 3.906250e-03
  %4513 = fmul fast float %2210, 0x3F70624DE0000000
  %4514 = fadd fast float %4513, 0x3F70624DE0000000
  %4515 = icmp sgt i32 %4392, -1
  br i1 %4515, label %4516, label %4575

; <label>:4516                                    ; preds = %4396
  br label %4517

; <label>:4517                                    ; preds = %4571, %4516
  %4518 = phi float [ %4549, %4571 ], [ %76, %4516 ]
  %4519 = phi float [ %4536, %4571 ], [ %76, %4516 ]
  %4520 = phi float [ %4519, %4571 ], [ %76, %4516 ]
  %4521 = phi i32 [ %4572, %4571 ], [ 0, %4516 ]
  %4522 = sitofp i32 %4521 to float
  %4523 = fadd fast float %240, 5.000000e-01
  %4524 = call float @dx.op.unary.f32(i32 22, float %4523)  ; Frc(value)
  %4525 = fadd fast float %4522, %4524
  %4526 = sitofp i32 %4392 to float
  %4527 = fdiv fast float %4525, %4526
  %4528 = fmul fast float %4527, %4527
  %4529 = call float @dx.op.binary.f32(i32 36, float %4528, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %4530 = fmul fast float %4529, %4492
  %4531 = fmul fast float %4529, %4494
  %4532 = fmul fast float %4529, %4495
  %4533 = fadd fast float %4530, %4503
  %4534 = fadd fast float %4531, %4504
  %4535 = fadd fast float %4532, %4436
  %4536 = fdiv fast float 1.000000e+00, %4535
  %4537 = icmp ne i32 %4404, 0
  %4538 = fmul fast float %4512, %4529
  %4539 = call float @dx.op.binary.f32(i32 36, float %4538, float %4405)  ; FMin(a,b)
  %4540 = select i1 %4537, float %4539, float 0.000000e+00
  %4541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %45, float %4533, float %4534, float undef, float undef, i32 0, i32 0, i32 undef, float %4540)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4542 = extractvalue %dx.types.ResRet.f32 %4541, 0
  %4543 = fcmp fast ogt float %4542, -1.000000e+00
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 1
  %4546 = select i1 %4543, float %4545, float 1.000000e+00
  %4547 = fadd fast float %4542, 1.000000e+00
  %4548 = fmul fast float %4546, %4547
  %4549 = call float @dx.op.unary.f32(i32 6, float %4548)  ; FAbs(value)
  %4550 = fmul fast float %4549, %4514
  %4551 = fsub fast float %4536, %4549
  %4552 = fsub fast float %4551, %4550
  %4553 = fcmp fast ogt float %4552, 0.000000e+00
  %4554 = fcmp fast ogt float %4387, 0.000000e+00
  br i1 %4554, label %4555, label %4558

; <label>:4555                                    ; preds = %4517
  %4556 = fsub fast float %4536, %4520
  %4557 = call float @dx.op.binary.f32(i32 35, float %4556, float %4387)  ; FMax(a,b)
  br label %4558

; <label>:4558                                    ; preds = %4555, %4517
  %4559 = phi float [ %4557, %4555 ], [ %4384, %4517 ]
  %4560 = fcmp fast olt float %4552, %4559
  %4561 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4562 = call float @dx.op.unary.f32(i32 7, float %4534)  ; Saturate(value)
  %4563 = fcmp fast oeq float %4533, %4561
  %4564 = fcmp fast oeq float %4534, %4562
  %4565 = and i1 %4563, %4564
  %4566 = and i1 %4553, %4560
  %4567 = and i1 %4566, %4565
  %4568 = fcmp fast ogt float %4529, %4511
  %4569 = and i1 %4568, %4567
  %4570 = zext i1 %4569 to i32
  br i1 %4569, label %4574, label %4571

; <label>:4571                                    ; preds = %4558
  %4572 = add nuw nsw i32 %4521, 1
  %4573 = icmp slt i32 %4521, %4392
  br i1 %4573, label %4517, label %4574

; <label>:4574                                    ; preds = %4571, %4558
  br label %4575

; <label>:4575                                    ; preds = %4574, %4396
  %4576 = phi i32 [ 0, %4396 ], [ %4570, %4574 ]
  %4577 = phi float [ %76, %4396 ], [ %4549, %4574 ]
  %4578 = phi float [ %76, %4396 ], [ %4518, %4574 ]
  %4579 = phi float [ %76, %4396 ], [ %4536, %4574 ]
  %4580 = phi float [ %76, %4396 ], [ %4519, %4574 ]
  %4581 = fsub fast float %4580, %4578
  %4582 = fsub fast float %4579, %4577
  %4583 = fsub fast float %4581, %4582
  %4584 = fcmp fast une float %4583, 0.000000e+00
  %4585 = fmul fast float %4581, %4579
  %4586 = fmul fast float %4580, %4582
  %4587 = fsub fast float %4585, %4586
  %4588 = fdiv fast float 1.000000e+00, %4583
  %4589 = fmul fast float %4587, %4588
  %4590 = select i1 %4584, float %4589, float %4579
  %4591 = fdiv fast float 1.000000e+00, %4590
  %4592 = fsub fast float %4591, %4436
  %4593 = fdiv fast float %4592, %4495
  %4594 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4595 = fmul fast float %4594, %4492
  %4596 = fmul fast float %4594, %4494
  %4597 = fadd fast float %4595, %4503
  %4598 = fadd fast float %4596, %4504
  %4599 = fadd fast float %4597, -5.000000e-01
  %4600 = fadd fast float %4598, -5.000000e-01
  %4601 = call float @dx.op.unary.f32(i32 6, float %4599)  ; FAbs(value)
  %4602 = call float @dx.op.unary.f32(i32 6, float %4600)  ; FAbs(value)
  %4603 = fadd fast float %4601, -5.000000e-01
  %4604 = fadd fast float %4602, -5.000000e-01
  %4605 = call float @dx.op.binary.f32(i32 35, float %4603, float %4604)  ; FMax(a,b)
  %4606 = fcmp fast olt float %4605, 0.000000e+00
  %4607 = icmp ne i32 %4576, 0
  %4608 = and i1 %4607, %4606
  %4609 = select i1 %4608, float 0.000000e+00, float 1.000000e+00
  br label %4610

; <label>:4610                                    ; preds = %4575, %4379
  %4611 = phi float [ %4609, %4575 ], [ 1.000000e+00, %4379 ]
  %4612 = fmul fast float %4611, %4372
  %4613 = fmul fast float %4611, %4372
  %4614 = fmul fast float %4611, %4372
  br label %4615

; <label>:4615                                    ; preds = %4610, %4371
  %4616 = phi float [ %4612, %4610 ], [ %4372, %4371 ]
  %4617 = phi float [ %4613, %4610 ], [ %4372, %4371 ]
  %4618 = phi float [ %4614, %4610 ], [ %4372, %4371 ]
  %4619 = call float @dx.op.binary.f32(i32 36, float %4617, float %4618)  ; FMin(a,b)
  %4620 = call float @dx.op.binary.f32(i32 36, float %4616, float %4619)  ; FMin(a,b)
  %4621 = fcmp fast ogt float %4620, 0.000000e+00
  br i1 %4621, label %4622, label %4263, !dx.controlflow.hints !113

; <label>:4622                                    ; preds = %4615
  %4623 = fmul fast float %4616, %4180
  %4624 = fmul fast float %4616, %4181
  %4625 = fmul fast float %4616, %4182
  %4626 = fsub fast float %4164, %2011
  %4627 = fcmp fast ogt float %4626, 0.000000e+00
  %4628 = fsub fast float %135, %2011
  %4629 = fcmp fast ogt float %4628, 0.000000e+00
  %4630 = xor i1 %4629, %4627
  %4631 = fsub fast float %2011, %4164
  %4632 = fmul fast float %4631, 2.000000e+00
  %4633 = fadd fast float %4632, %4164
  %4634 = select i1 %4630, float %4164, float %4633
  %4635 = fsub fast float %4634, %135
  %4636 = call float @dx.op.dot3.f32(i32 55, float %4191, float %4192, float %4635, float %4191, float %4192, float %4635)  ; Dot3(ax,ay,az,bx,by,bz)
  %4637 = call float @dx.op.unary.f32(i32 25, float %4636)  ; Rsqrt(value)
  %4638 = fmul fast float %4637, %4191
  %4639 = fmul fast float %4637, %4192
  %4640 = fmul fast float %4637, %4635
  %4641 = fsub fast float %2011, %135
  %4642 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4641)  ; Dot3(ax,ay,az,bx,by,bz)
  %4643 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4644 = fdiv fast float 1.000000e+00, %4643
  %4645 = fmul fast float %4644, %4642
  %4646 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4628, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4647 = fcmp fast ogt float %4646, 0.000000e+00
  %4648 = fcmp fast olt float %4646, 0.000000e+00
  %4649 = zext i1 %4647 to i32
  %4650 = zext i1 %4648 to i32
  %4651 = sub nsw i32 %4649, %4650
  %4652 = sitofp i32 %4651 to float
  %4653 = fsub fast float %4634, %2011
  %4654 = call float @dx.op.dot3.f32(i32 55, float %4191, float %4192, float %4653, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4655 = fcmp fast ogt float %4654, 0.000000e+00
  %4656 = fcmp fast olt float %4654, 0.000000e+00
  %4657 = zext i1 %4655 to i32
  %4658 = zext i1 %4656 to i32
  %4659 = sub nsw i32 %4657, %4658
  %4660 = sitofp i32 %4659 to float
  %4661 = fcmp fast une float %4652, %4660
  br i1 %4661, label %4662, label %4672

; <label>:4662                                    ; preds = %4622
  %4663 = fmul fast float %4645, %4640
  %4664 = fmul fast float %4645, %4639
  %4665 = fmul fast float %4645, %4638
  %4666 = fmul fast float %4665, %4665
  %4667 = fmul fast float %4664, %4664
  %4668 = fadd fast float %4666, %4667
  %4669 = fmul fast float %4663, %4663
  %4670 = fadd fast float %4668, %4669
  %4671 = call float @dx.op.unary.f32(i32 24, float %4670)  ; Sqrt(value)
  br label %4684

; <label>:4672                                    ; preds = %4622
  %4673 = icmp slt i32 %4651, 0
  br i1 %4673, label %4674, label %4684

; <label>:4674                                    ; preds = %4672
  %4675 = fsub fast float %133, %4162
  %4676 = fsub fast float %134, %4163
  %4677 = fsub fast float %135, %4634
  %4678 = fmul fast float %4675, %4675
  %4679 = fmul fast float %4676, %4676
  %4680 = fadd fast float %4678, %4679
  %4681 = fmul fast float %4677, %4677
  %4682 = fadd fast float %4680, %4681
  %4683 = call float @dx.op.unary.f32(i32 24, float %4682)  ; Sqrt(value)
  br label %4684

; <label>:4684                                    ; preds = %4674, %4672, %4662
  %4685 = phi float [ %4671, %4662 ], [ %4683, %4674 ], [ 0.000000e+00, %4672 ]
  %4686 = and i1 %4629, %4627
  %4687 = fsub fast float -0.000000e+00, %4685
  %4688 = select i1 %4686, float -0.000000e+00, float %4687
  %4689 = fmul fast float %2012, 0x3FF7154760000000
  %4690 = fmul fast float %4689, %4688
  %4691 = fmul fast float %2013, 0x3FF7154760000000
  %4692 = fmul fast float %4691, %4688
  %4693 = fmul fast float %2014, 0x3FF7154760000000
  %4694 = fmul fast float %4693, %4688
  %4695 = call float @dx.op.unary.f32(i32 21, float %4690)  ; Exp(value)
  %4696 = call float @dx.op.unary.f32(i32 21, float %4692)  ; Exp(value)
  %4697 = call float @dx.op.unary.f32(i32 21, float %4694)  ; Exp(value)
  %4698 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4699 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4700 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4701 = fmul fast float %4623, %4698
  %4702 = fmul fast float %4624, %4699
  %4703 = fmul fast float %4625, %4700
  %4704 = fsub fast float %4197, %152
  %4705 = fsub fast float %4198, %153
  %4706 = fsub fast float %4199, %154
  %4707 = call float @dx.op.dot3.f32(i32 55, float %4704, float %4705, float %4706, float %4704, float %4705, float %4706)  ; Dot3(ax,ay,az,bx,by,bz)
  %4708 = call float @dx.op.unary.f32(i32 25, float %4707)  ; Rsqrt(value)
  %4709 = fmul fast float %4708, %4704
  %4710 = fmul fast float %4708, %4705
  %4711 = fmul fast float %4708, %4706
  %4712 = call float @dx.op.dot3.f32(i32 55, float %4197, float %4198, float %4199, float %2197, float %2198, float %2199)  ; Dot3(ax,ay,az,bx,by,bz)
  %4713 = call float @dx.op.dot3.f32(i32 55, float %2028, float %2029, float %2030, float %4709, float %4710, float %4711)  ; Dot3(ax,ay,az,bx,by,bz)
  %4714 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4715 = fmul fast float %4714, %4204
  %4716 = fmul fast float %4714, %4714
  %4717 = fmul fast float %4716, %2227
  %4718 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4719 = fmul fast float %4715, %4718
  %4720 = bitcast float %4194 to i32
  %4721 = ashr i32 %4720, 1
  %4722 = sub nsw i32 1597463007, %4721
  %4723 = bitcast i32 %4722 to float
  %4724 = fmul fast float %4723, %4191
  %4725 = fmul fast float %4723, %4192
  %4726 = fmul fast float %4723, %4193
  %4727 = fsub fast float %4724, %152
  %4728 = fsub fast float %4725, %153
  %4729 = fsub fast float %4726, %154
  %4730 = call float @dx.op.dot3.f32(i32 55, float %4727, float %4728, float %4729, float %4727, float %4728, float %4729)  ; Dot3(ax,ay,az,bx,by,bz)
  %4731 = call float @dx.op.unary.f32(i32 25, float %4730)  ; Rsqrt(value)
  %4732 = fmul fast float %4727, %4731
  %4733 = fmul fast float %4728, %4731
  %4734 = fmul fast float %4729, %4731
  %4735 = call float @dx.op.dot3.f32(i32 55, float %2197, float %2198, float %2199, float %4732, float %4733, float %4734)  ; Dot3(ax,ay,az,bx,by,bz)
  %4736 = fmul fast float %4735, %4735
  %4737 = call float @dx.op.unary.f32(i32 6, float %4712)  ; FAbs(value)
  %4738 = call float @dx.op.binary.f32(i32 35, float %2610, float 0x3F847AE140000000)  ; FMax(a,b)
  %4739 = fmul fast float %4738, %4738
  %4740 = fmul fast float %4739, %4739
  %4741 = fsub fast float 1.000000e+00, %4740
  %4742 = fmul fast float %2214, %2214
  %4743 = fmul fast float %4742, %4741
  %4744 = fadd fast float %4743, %4740
  %4745 = bitcast float %4744 to i32
  %4746 = ashr i32 %4745, 1
  %4747 = add nsw i32 %4746, 532487669
  %4748 = bitcast i32 %4747 to float
  %4749 = fadd fast float %4748, %2214
  %4750 = fmul fast float %4740, %4736
  %4751 = fsub fast float 1.000000e+00, %4736
  %4752 = fadd fast float %4751, %4750
  %4753 = fmul fast float %4737, %4737
  %4754 = fmul fast float %4753, %4741
  %4755 = fadd fast float %4754, %4740
  %4756 = bitcast float %4755 to i32
  %4757 = ashr i32 %4756, 1
  %4758 = add nsw i32 %4757, 532487669
  %4759 = bitcast i32 %4758 to float
  %4760 = fadd fast float %4759, %4737
  %4761 = fmul fast float %4752, %4752
  %4762 = fmul fast float %4761, %4749
  %4763 = fmul fast float %4762, %4760
  %4764 = fdiv fast float 1.000000e+00, %4763
  %4765 = bitcast float %4740 to i32
  %4766 = sitofp i32 %4765 to float
  %4767 = fmul fast float %4766, 0x3FE7F73180000000
  %4768 = fadd fast float %4767, 0x41AFE27C40000000
  %4769 = fptosi float %4768 to i32
  %4770 = bitcast i32 %4769 to float
  %4771 = fmul fast float %4159, 0x3FD80E9D60000000
  %4772 = fmul fast float %4771, %4723
  %4773 = fadd fast float %4770, %4772
  %4774 = bitcast float %4773 to i32
  %4775 = sub nsw i32 2129859010, %4774
  %4776 = bitcast i32 %4775 to float
  %4777 = fmul fast float %4740, %4764
  %4778 = fmul fast float %4777, %4770
  %4779 = fmul fast float %4778, %4776
  %4780 = fmul fast float %2472, 0x3FF9999980000000
  %4781 = fsub fast float 5.000000e+00, %4780
  %4782 = call float @dx.op.unary.f32(i32 6, float %4713)  ; FAbs(value)
  %4783 = fsub fast float 1.000000e+00, %4782
  %4784 = fmul fast float %2472, 0x41D9660740000000
  %4785 = fadd fast float %4784, 0xC1EFBF8940000000
  %4786 = bitcast float %4783 to i32
  %4787 = sitofp i32 %4786 to float
  %4788 = fmul fast float %4787, %4781
  %4789 = fadd fast float %4785, %4788
  %4790 = fptosi float %4789 to i32
  %4791 = bitcast i32 %4790 to float
  %4792 = fsub fast float 1.000000e+00, %2194
  %4793 = fsub fast float 1.000000e+00, %2195
  %4794 = fsub fast float 1.000000e+00, %2212
  %4795 = fmul fast float %4791, %4792
  %4796 = fmul fast float %4791, %4793
  %4797 = fmul fast float %4791, %4794
  %4798 = fadd fast float %4795, %2194
  %4799 = fadd fast float %4796, %2195
  %4800 = fadd fast float %4797, %2212
  br i1 %2495, label %4801, label %4824

; <label>:4801                                    ; preds = %4684
  %4802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1530, float %4782, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4803 = extractvalue %dx.types.ResRet.f32 %4802, 0
  %4804 = extractvalue %dx.types.ResRet.f32 %4802, 1
  %4805 = extractvalue %dx.types.ResRet.f32 %4802, 2
  %4806 = fadd fast float %4803, -5.000000e-01
  %4807 = fadd fast float %4804, -5.000000e-01
  %4808 = fadd fast float %4805, -5.000000e-01
  %4809 = fmul fast float %2194, 4.000000e+00
  %4810 = fmul fast float %4809, %4792
  %4811 = fmul fast float %4810, %4806
  %4812 = fmul fast float %2195, 4.000000e+00
  %4813 = fmul fast float %4812, %4793
  %4814 = fmul fast float %4813, %4807
  %4815 = fmul fast float %2212, 4.000000e+00
  %4816 = fmul fast float %4815, %4794
  %4817 = fmul fast float %4816, %4808
  %4818 = fadd fast float %4811, %4798
  %4819 = fadd fast float %4814, %4799
  %4820 = fadd fast float %4817, %4800
  %4821 = call float @dx.op.unary.f32(i32 7, float %4818)  ; Saturate(value)
  %4822 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4823 = call float @dx.op.unary.f32(i32 7, float %4820)  ; Saturate(value)
  br label %4824

; <label>:4824                                    ; preds = %4801, %4684
  %4825 = phi float [ %4821, %4801 ], [ %4798, %4684 ]
  %4826 = phi float [ %4822, %4801 ], [ %4799, %4684 ]
  %4827 = phi float [ %4823, %4801 ], [ %4800, %4684 ]
  %4828 = fmul fast float %4712, 9.843750e-01
  %4829 = fadd fast float %4828, 7.812500e-03
  %4830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %4829, float %2476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4831 = extractvalue %dx.types.ResRet.f32 %4830, 0
  %4832 = extractvalue %dx.types.ResRet.f32 %4830, 1
  %4833 = extractvalue %dx.types.ResRet.f32 %4830, 2
  %4834 = extractvalue %dx.types.ResRet.f32 %4830, 3
  %4835 = fsub fast float %4833, %4831
  %4836 = fsub fast float %4834, %4832
  %4837 = fmul fast float %4835, %2482
  %4838 = fmul fast float %4836, %2482
  %4839 = fadd fast float %4837, %4831
  %4840 = fadd fast float %4838, %4832
  %4841 = fmul fast float %4839, %2194
  %4842 = fmul fast float %4839, %2195
  %4843 = fmul fast float %4839, %2212
  %4844 = fadd fast float %4841, %4840
  %4845 = fadd fast float %4842, %4840
  %4846 = fadd fast float %4843, %4840
  br i1 %2495, label %4847, label %4870

; <label>:4847                                    ; preds = %4824
  %4848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1530, float %4712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4849 = extractvalue %dx.types.ResRet.f32 %4848, 0
  %4850 = extractvalue %dx.types.ResRet.f32 %4848, 1
  %4851 = extractvalue %dx.types.ResRet.f32 %4848, 2
  %4852 = fadd fast float %4849, -5.000000e-01
  %4853 = fadd fast float %4850, -5.000000e-01
  %4854 = fadd fast float %4851, -5.000000e-01
  %4855 = fmul fast float %2194, 4.000000e+00
  %4856 = fmul fast float %4855, %4792
  %4857 = fmul fast float %4856, %4852
  %4858 = fmul fast float %2195, 4.000000e+00
  %4859 = fmul fast float %4858, %4793
  %4860 = fmul fast float %4859, %4853
  %4861 = fmul fast float %2212, 4.000000e+00
  %4862 = fmul fast float %4861, %4794
  %4863 = fmul fast float %4862, %4854
  %4864 = fadd fast float %4857, %4844
  %4865 = fadd fast float %4860, %4845
  %4866 = fadd fast float %4863, %4846
  %4867 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4868 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4869 = call float @dx.op.unary.f32(i32 7, float %4866)  ; Saturate(value)
  br label %4870

; <label>:4870                                    ; preds = %4847, %4824
  %4871 = phi float [ %4867, %4847 ], [ %4844, %4824 ]
  %4872 = phi float [ %4868, %4847 ], [ %4845, %4824 ]
  %4873 = phi float [ %4869, %4847 ], [ %4846, %4824 ]
  %4874 = call float @dx.op.binary.f32(i32 35, float %4872, float %4873)  ; FMax(a,b)
  %4875 = call float @dx.op.binary.f32(i32 35, float %4871, float %4874)  ; FMax(a,b)
  %4876 = fsub fast float 1.000000e+00, %4875
  %4877 = call float @dx.op.binary.f32(i32 35, float %4737, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4878 = fdiv fast float %930, %4877
  %4879 = fmul fast float %2550, %4878
  %4880 = fmul fast float %2552, %4878
  %4881 = fmul fast float %2554, %4878
  %4882 = call float @dx.op.unary.f32(i32 21, float %4879)  ; Exp(value)
  %4883 = call float @dx.op.unary.f32(i32 21, float %4880)  ; Exp(value)
  %4884 = call float @dx.op.unary.f32(i32 21, float %4881)  ; Exp(value)
  %4885 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4886 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4887 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4888 = select i1 %2547, float %4885, float 0.000000e+00
  %4889 = select i1 %2548, float %4886, float 0.000000e+00
  %4890 = select i1 %2549, float %4887, float 0.000000e+00
  %4891 = fsub fast float -0.000000e+00, %2197
  %4892 = fsub fast float -0.000000e+00, %2198
  %4893 = fsub fast float -0.000000e+00, %2199
  %4894 = call float @dx.op.dot3.f32(i32 55, float %4197, float %4198, float %4199, float %4891, float %4892, float %4893)  ; Dot3(ax,ay,az,bx,by,bz)
  %4895 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4896 = fmul fast float %4895, %4204
  %4897 = fmul fast float %4895, 9.843750e-01
  %4898 = fadd fast float %4897, 7.812500e-03
  %4899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %4898, float %2476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4900 = extractvalue %dx.types.ResRet.f32 %4899, 0
  %4901 = extractvalue %dx.types.ResRet.f32 %4899, 1
  %4902 = extractvalue %dx.types.ResRet.f32 %4899, 2
  %4903 = extractvalue %dx.types.ResRet.f32 %4899, 3
  %4904 = fsub fast float %4902, %4900
  %4905 = fsub fast float %4903, %4901
  %4906 = fmul fast float %4904, %2482
  %4907 = fmul fast float %4905, %2482
  %4908 = fadd fast float %4906, %4900
  %4909 = fadd fast float %4907, %4901
  %4910 = fmul fast float %4908, %2194
  %4911 = fmul fast float %4908, %2195
  %4912 = fmul fast float %4908, %2212
  %4913 = fadd fast float %4910, %4909
  %4914 = fadd fast float %4911, %4909
  %4915 = fadd fast float %4912, %4909
  br i1 %2495, label %4916, label %4939

; <label>:4916                                    ; preds = %4870
  %4917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1530, float %4895, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4918 = extractvalue %dx.types.ResRet.f32 %4917, 0
  %4919 = extractvalue %dx.types.ResRet.f32 %4917, 1
  %4920 = extractvalue %dx.types.ResRet.f32 %4917, 2
  %4921 = fadd fast float %4918, -5.000000e-01
  %4922 = fadd fast float %4919, -5.000000e-01
  %4923 = fadd fast float %4920, -5.000000e-01
  %4924 = fmul fast float %2194, 4.000000e+00
  %4925 = fmul fast float %4924, %4792
  %4926 = fmul fast float %4925, %4921
  %4927 = fmul fast float %2195, 4.000000e+00
  %4928 = fmul fast float %4927, %4793
  %4929 = fmul fast float %4928, %4922
  %4930 = fmul fast float %2212, 4.000000e+00
  %4931 = fmul fast float %4930, %4794
  %4932 = fmul fast float %4931, %4923
  %4933 = fadd fast float %4926, %4913
  %4934 = fadd fast float %4929, %4914
  %4935 = fadd fast float %4932, %4915
  %4936 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4937 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4938 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  br label %4939

; <label>:4939                                    ; preds = %4916, %4870
  %4940 = phi float [ %4936, %4916 ], [ %4913, %4870 ]
  %4941 = phi float [ %4937, %4916 ], [ %4914, %4870 ]
  %4942 = phi float [ %4938, %4916 ], [ %4915, %4870 ]
  %4943 = call float @dx.op.binary.f32(i32 35, float %4941, float %4942)  ; FMax(a,b)
  %4944 = call float @dx.op.binary.f32(i32 35, float %4940, float %4943)  ; FMax(a,b)
  %4945 = fsub fast float 1.000000e+00, %4944
  %4946 = fmul fast float %2610, %2615
  %4947 = fadd fast float %2617, %4946
  %4948 = call float @dx.op.unary.f32(i32 7, float %4947)  ; Saturate(value)
  %4949 = fsub fast float %4724, %2220
  %4950 = fsub fast float %4725, %2221
  %4951 = fsub fast float %4726, %2222
  %4952 = call float @dx.op.dot3.f32(i32 55, float %4949, float %4950, float %4951, float %4949, float %4950, float %4951)  ; Dot3(ax,ay,az,bx,by,bz)
  %4953 = call float @dx.op.unary.f32(i32 25, float %4952)  ; Rsqrt(value)
  %4954 = fmul fast float %4949, %4953
  %4955 = fmul fast float %4950, %4953
  %4956 = fmul fast float %4951, %4953
  %4957 = call float @dx.op.dot3.f32(i32 55, float %4891, float %4892, float %4893, float %4954, float %4955, float %4956)  ; Dot3(ax,ay,az,bx,by,bz)
  %4958 = fmul fast float %4957, %4957
  %4959 = call float @dx.op.unary.f32(i32 6, float %4895)  ; FAbs(value)
  %4960 = call float @dx.op.binary.f32(i32 35, float %4948, float 0x3F847AE140000000)  ; FMax(a,b)
  %4961 = fmul fast float %4960, %4960
  %4962 = fmul fast float %4961, %4961
  %4963 = fsub fast float 1.000000e+00, %4962
  %4964 = fmul fast float %4742, %4963
  %4965 = fadd fast float %4964, %4962
  %4966 = bitcast float %4965 to i32
  %4967 = ashr i32 %4966, 1
  %4968 = add nsw i32 %4967, 532487669
  %4969 = bitcast i32 %4968 to float
  %4970 = fadd fast float %4969, %2214
  %4971 = fmul fast float %4962, %4958
  %4972 = fsub fast float 1.000000e+00, %4958
  %4973 = fadd fast float %4972, %4971
  %4974 = fmul fast float %4959, %4959
  %4975 = fmul fast float %4974, %4963
  %4976 = fadd fast float %4975, %4962
  %4977 = bitcast float %4976 to i32
  %4978 = ashr i32 %4977, 1
  %4979 = add nsw i32 %4978, 532487669
  %4980 = bitcast i32 %4979 to float
  %4981 = fadd fast float %4980, %4959
  %4982 = fmul fast float %4973, %4973
  %4983 = fmul fast float %4982, %4970
  %4984 = fmul fast float %4983, %4981
  %4985 = fdiv fast float 1.000000e+00, %4984
  %4986 = bitcast float %4962 to i32
  %4987 = sitofp i32 %4986 to float
  %4988 = fmul fast float %4987, 0x3FE7F73180000000
  %4989 = fadd fast float %4988, 0x41AFE27C40000000
  %4990 = fptosi float %4989 to i32
  %4991 = bitcast i32 %4990 to float
  %4992 = fadd fast float %4991, %4772
  %4993 = bitcast float %4992 to i32
  %4994 = sub nsw i32 2129859010, %4993
  %4995 = bitcast i32 %4994 to float
  %4996 = fmul fast float %4962, %4985
  %4997 = fmul fast float %4996, %4991
  %4998 = fmul fast float %4997, %4995
  br i1 %4189, label %4999, label %5009

; <label>:4999                                    ; preds = %4939
  %5000 = fmul fast float %4896, %4888
  %5001 = fmul fast float %4896, %4889
  %5002 = fmul fast float %4896, %4890
  %5003 = fmul fast float %5000, %4945
  %5004 = fmul fast float %5003, %4998
  %5005 = fmul fast float %5001, %4945
  %5006 = fmul fast float %5005, %4998
  %5007 = fmul fast float %5002, %4945
  %5008 = fmul fast float %5007, %4998
  br label %5009

; <label>:5009                                    ; preds = %4999, %4939
  %5010 = phi float [ %5004, %4999 ], [ 0.000000e+00, %4939 ]
  %5011 = phi float [ %5006, %4999 ], [ 0.000000e+00, %4939 ]
  %5012 = phi float [ %5008, %4999 ], [ 0.000000e+00, %4939 ]
  %5013 = fmul fast float %4825, %4779
  %5014 = fmul fast float %4826, %4779
  %5015 = fmul fast float %4827, %4779
  %5016 = fsub fast float 1.000000e+00, %4713
  %5017 = bitcast float %5016 to i32
  %5018 = sitofp i32 %5017 to float
  %5019 = fmul fast float %5018, 5.000000e+00
  %5020 = fadd fast float %5019, 0xC1EFBF8940000000
  %5021 = fptosi float %5020 to i32
  %5022 = bitcast i32 %5021 to float
  %5023 = fmul fast float %5022, %1529
  %5024 = fmul fast float %4876, %5023
  %5025 = fmul fast float %5024, %2542
  %5026 = fmul fast float %5024, %2543
  %5027 = fmul fast float %5024, %2544
  %5028 = fadd fast float %5025, %5013
  %5029 = fadd fast float %5026, %5014
  %5030 = fadd fast float %5027, %5015
  %5031 = fmul fast float %5028, %4719
  %5032 = fmul fast float %5029, %4719
  %5033 = fmul fast float %5030, %4719
  %5034 = fadd fast float %5031, %5010
  %5035 = fadd fast float %5032, %5011
  %5036 = fadd fast float %5033, %5012
  %5037 = fmul fast float %4701, %1585
  %5038 = fmul fast float %5037, %4719
  %5039 = fmul fast float %5038, %4876
  %5040 = fmul fast float %4702, %1585
  %5041 = fmul fast float %5040, %4719
  %5042 = fmul fast float %5041, %4876
  %5043 = fmul fast float %4703, %1585
  %5044 = fmul fast float %5043, %4719
  %5045 = fmul fast float %5044, %4876
  %5046 = fadd fast float %5039, %4133
  %5047 = fadd fast float %5042, %4134
  %5048 = fadd fast float %5045, %4135
  %5049 = fmul fast float %5037, %5034
  %5050 = fmul fast float %5040, %5035
  %5051 = fmul fast float %5043, %5036
  %5052 = fadd fast float %5049, %4130
  %5053 = fadd fast float %5050, %4131
  %5054 = fadd fast float %5051, %4132
  br label %4263

; <label>:5055                                    ; preds = %4263
  br label %5056

; <label>:5056                                    ; preds = %5055, %4096
  %5057 = phi float [ %4098, %4096 ], [ %4264, %5055 ]
  %5058 = phi float [ %4099, %4096 ], [ %4265, %5055 ]
  %5059 = phi float [ %4100, %4096 ], [ %4266, %5055 ]
  %5060 = phi float [ %4101, %4096 ], [ %4267, %5055 ]
  %5061 = phi float [ %4102, %4096 ], [ %4268, %5055 ]
  %5062 = phi float [ %4103, %4096 ], [ %4269, %5055 ]
  %5063 = add i32 %4097, 1
  %5064 = icmp ugt i32 %5063, %4093
  br i1 %5064, label %5065, label %4096

; <label>:5065                                    ; preds = %5056
  br label %5066

; <label>:5066                                    ; preds = %5065, %4046, %4036
  %5067 = phi float [ %4037, %4036 ], [ %4037, %4046 ], [ %5057, %5065 ]
  %5068 = phi float [ %4038, %4036 ], [ %4038, %4046 ], [ %5058, %5065 ]
  %5069 = phi float [ %4039, %4036 ], [ %4039, %4046 ], [ %5059, %5065 ]
  %5070 = phi float [ %4040, %4036 ], [ %4040, %4046 ], [ %5060, %5065 ]
  %5071 = phi float [ %4041, %4036 ], [ %4041, %4046 ], [ %5061, %5065 ]
  %5072 = phi float [ %4042, %4036 ], [ %4042, %4046 ], [ %5062, %5065 ]
  %5073 = fmul fast float %2571, %1585
  %5074 = fmul fast float %2572, %1585
  %5075 = fmul fast float %2573, %1585
  %5076 = fadd fast float %5073, 1.000000e+00
  %5077 = fadd fast float %5074, 1.000000e+00
  %5078 = fadd fast float %5075, 1.000000e+00
  %5079 = call float @dx.op.dot3.f32(i32 55, float %5076, float %5077, float %5078, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5080 = fsub fast float 1.000000e+00, %5079
  %5081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5082 = extractvalue %dx.types.CBufRet.f32 %5081, 0
  %5083 = fmul fast float %5082, %2577
  %5084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.f32 %5084, 3
  %5086 = fsub fast float 1.000000e+00, %1525
  %5087 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5088 = fadd fast float %5072, %1524
  %5089 = fmul fast float %5088, %1525
  %5090 = fmul fast float %5087, %5085
  %5091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5092 = extractvalue %dx.types.CBufRet.f32 %5091, 3
  %5093 = fmul fast float %5070, %2200
  %5094 = fmul fast float %5071, %2201
  %5095 = fmul fast float %5072, %2202
  %5096 = fcmp fast ogt float %76, %186
  %5097 = and i1 %5096, %2017
  %5098 = or i1 %2023, %5097
  %5099 = icmp eq i32 %2016, 2
  %5100 = fcmp fast ole float %76, %186
  %5101 = and i1 %5100, %5099
  %5102 = or i1 %5101, %5098
  br i1 %5097, label %5103, label %5361

; <label>:5103                                    ; preds = %5066
  %5104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.f32 %5104, 2
  %5106 = extractvalue %dx.types.CBufRet.f32 %5104, 3
  %5107 = fmul fast float %5105, %85
  %5108 = fmul fast float %5106, %86
  %5109 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5110 = call float @dx.op.unary.f32(i32 7, float %5108)  ; Saturate(value)
  %5111 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %5109, float %5110, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5112 = extractvalue %dx.types.ResRet.f32 %5111, 0
  %5113 = extractvalue %dx.types.ResRet.f32 %5111, 1
  %5114 = extractvalue %dx.types.ResRet.f32 %5111, 2
  %5115 = extractvalue %dx.types.ResRet.f32 %5111, 3
  %5116 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %5109, float %5110, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5117 = extractvalue %dx.types.ResRet.f32 %5116, 0
  %5118 = extractvalue %dx.types.ResRet.f32 %5116, 1
  %5119 = extractvalue %dx.types.ResRet.f32 %5116, 2
  %5120 = extractvalue %dx.types.ResRet.f32 %5116, 3
  %5121 = call float @dx.op.binary.f32(i32 35, float %5113, float %5114)  ; FMax(a,b)
  %5122 = call float @dx.op.binary.f32(i32 35, float %5112, float %5121)  ; FMax(a,b)
  %5123 = call float @dx.op.binary.f32(i32 35, float %5122, float %5115)  ; FMax(a,b)
  %5124 = call float @dx.op.binary.f32(i32 36, float %5118, float %5119)  ; FMin(a,b)
  %5125 = call float @dx.op.binary.f32(i32 36, float %5117, float %5124)  ; FMin(a,b)
  %5126 = call float @dx.op.binary.f32(i32 36, float %5125, float %5120)  ; FMin(a,b)
  %5127 = fmul fast float %5123, 2.550000e+02
  %5128 = fadd fast float %5127, 0x3F70101020000000
  %5129 = fptoui float %5128 to i32
  %5130 = fmul fast float %5126, 2.550000e+02
  %5131 = fadd fast float %5130, 0x3F70101020000000
  %5132 = fptoui float %5131 to i32
  %5133 = icmp ult i32 %5129, %5132
  br i1 %5133, label %5134, label %5301

; <label>:5134                                    ; preds = %5103
  %5135 = fadd fast float %76, -4.000000e+00
  %5136 = select i1 %2211, float -4.000000e+00, float %5135
  %5137 = call float @dx.op.binary.f32(i32 35, float %5136, float 0.000000e+00)  ; FMax(a,b)
  %5138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.f32 %5138, 0
  %5140 = fadd fast float %5139, %5137
  %5141 = extractvalue %dx.types.CBufRet.f32 %5138, 2
  %5142 = fmul fast float %5140, %5141
  %5143 = call float @dx.op.unary.f32(i32 23, float %5142)  ; Log(value)
  %5144 = extractvalue %dx.types.CBufRet.f32 %5138, 3
  %5145 = fmul fast float %5144, %5143
  %5146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5147 = extractvalue %dx.types.CBufRet.f32 %5146, 2
  %5148 = fmul fast float %5145, %5147
  %5149 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5150 = uitofp i32 %5129 to float
  %5151 = uitofp i32 %5132 to float
  %5152 = fadd fast float %5150, 5.000000e-01
  %5153 = fadd fast float %5151, 5.000000e-01
  %5154 = fmul fast float %5147, %5152
  %5155 = fmul fast float %5147, %5153
  %5156 = fadd fast float %5154, 0x3F0FFB4800000000
  %5157 = fadd fast float %5155, 0xBF0FFB4800000000
  %5158 = call float @dx.op.binary.f32(i32 35, float %5149, float %5156)  ; FMax(a,b)
  %5159 = call float @dx.op.binary.f32(i32 36, float %5158, float %5157)  ; FMin(a,b)
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5162 = extractvalue %dx.types.CBufRet.f32 %5160, 2
  %5163 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5164 = fmul fast float %5161, %5159
  %5165 = fadd fast float %5163, %5164
  %5166 = fadd fast float %5163, %5162
  %5167 = fsub fast float %5161, %5162
  %5168 = fadd fast float %5167, %5163
  %5169 = call float @dx.op.binary.f32(i32 35, float %5165, float %5166)  ; FMax(a,b)
  %5170 = call float @dx.op.binary.f32(i32 36, float %5169, float %5168)  ; FMin(a,b)
  %5171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %5109, float %5110, float %5170, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5172 = extractvalue %dx.types.ResRet.f32 %5171, 0
  %5173 = extractvalue %dx.types.ResRet.f32 %5171, 1
  %5174 = extractvalue %dx.types.ResRet.f32 %5171, 2
  %5175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5176 = extractvalue %dx.types.CBufRet.i32 %5175, 0
  %5177 = extractvalue %dx.types.CBufRet.i32 %5175, 1
  %5178 = uitofp i32 %5176 to float
  %5179 = uitofp i32 %5177 to float
  %5180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5181 = extractvalue %dx.types.CBufRet.f32 %5180, 0
  %5182 = extractvalue %dx.types.CBufRet.f32 %5180, 1
  %5183 = fmul fast float %5178, %5109
  %5184 = fmul fast float %5179, %5110
  %5185 = fadd fast float %5183, -5.000000e-01
  %5186 = fadd fast float %5184, -5.000000e-01
  %5187 = call float @dx.op.unary.f32(i32 22, float %5185)  ; Frc(value)
  %5188 = call float @dx.op.unary.f32(i32 22, float %5186)  ; Frc(value)
  %5189 = fmul fast float %5187, %5187
  %5190 = fmul fast float %5189, %5187
  %5191 = fsub fast float 3.000000e+00, %5187
  %5192 = fmul fast float %5189, %5191
  %5193 = fmul fast float %5187, 3.000000e+00
  %5194 = fmul fast float %5190, 3.000000e+00
  %5195 = fmul fast float %5189, 6.000000e+00
  %5196 = fsub fast float %5194, %5195
  %5197 = fadd fast float %5196, 4.000000e+00
  %5198 = fmul fast float %5197, 0x3FC5555560000000
  %5199 = fmul fast float %5190, -3.000000e+00
  %5200 = fadd fast float %5189, %5187
  %5201 = fmul fast float %5200, 3.000000e+00
  %5202 = fadd fast float %5199, 1.000000e+00
  %5203 = fadd fast float %5202, %5201
  %5204 = fmul fast float %5190, 0x3FC5555560000000
  %5205 = fmul fast float %5188, %5188
  %5206 = fmul fast float %5205, %5188
  %5207 = fsub fast float 3.000000e+00, %5188
  %5208 = fmul fast float %5205, %5207
  %5209 = fmul fast float %5188, 3.000000e+00
  %5210 = fmul fast float %5206, 3.000000e+00
  %5211 = fmul fast float %5205, 6.000000e+00
  %5212 = fsub fast float %5210, %5211
  %5213 = fadd fast float %5212, 4.000000e+00
  %5214 = fmul fast float %5213, 0x3FC5555560000000
  %5215 = fmul fast float %5206, -3.000000e+00
  %5216 = fadd fast float %5205, %5188
  %5217 = fmul fast float %5216, 3.000000e+00
  %5218 = fadd fast float %5215, 1.000000e+00
  %5219 = fadd fast float %5218, %5217
  %5220 = fmul fast float %5206, 0x3FC5555560000000
  %5221 = fadd fast float %5187, 1.000000e+00
  %5222 = fsub fast float 1.000000e+00, %5193
  %5223 = fadd fast float %5222, %5192
  %5224 = fadd fast float %5223, %5197
  %5225 = fmul fast float %5224, 0x3FC5555560000000
  %5226 = fdiv fast float %5198, %5225
  %5227 = fsub fast float %5221, %5226
  %5228 = fsub fast float 1.000000e+00, %5187
  %5229 = fadd fast float %5203, %5190
  %5230 = fmul fast float %5229, 0x3FC5555560000000
  %5231 = fdiv fast float %5204, %5230
  %5232 = fadd fast float %5228, %5231
  %5233 = fadd fast float %5188, 1.000000e+00
  %5234 = fsub fast float 1.000000e+00, %5209
  %5235 = fadd fast float %5234, %5208
  %5236 = fadd fast float %5235, %5213
  %5237 = fmul fast float %5236, 0x3FC5555560000000
  %5238 = fdiv fast float %5214, %5237
  %5239 = fsub fast float %5233, %5238
  %5240 = fsub fast float 1.000000e+00, %5188
  %5241 = fadd fast float %5219, %5206
  %5242 = fmul fast float %5241, 0x3FC5555560000000
  %5243 = fdiv fast float %5220, %5242
  %5244 = fadd fast float %5243, %5240
  %5245 = fmul fast float %5227, %5181
  %5246 = fsub fast float %5109, %5245
  %5247 = fmul fast float %5232, %5181
  %5248 = fadd fast float %5247, %5109
  %5249 = fmul fast float %5244, %5182
  %5250 = fadd fast float %5249, %5110
  %5251 = fmul fast float %5239, %5182
  %5252 = fsub fast float %5110, %5251
  %5253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %5246, float %5252, float %5170, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5254 = extractvalue %dx.types.ResRet.f32 %5253, 0
  %5255 = extractvalue %dx.types.ResRet.f32 %5253, 1
  %5256 = extractvalue %dx.types.ResRet.f32 %5253, 2
  %5257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %5248, float %5252, float %5170, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5258 = extractvalue %dx.types.ResRet.f32 %5257, 0
  %5259 = extractvalue %dx.types.ResRet.f32 %5257, 1
  %5260 = extractvalue %dx.types.ResRet.f32 %5257, 2
  %5261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %5246, float %5250, float %5170, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5262 = extractvalue %dx.types.ResRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.ResRet.f32 %5261, 1
  %5264 = extractvalue %dx.types.ResRet.f32 %5261, 2
  %5265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %5248, float %5250, float %5170, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5266 = extractvalue %dx.types.ResRet.f32 %5265, 0
  %5267 = extractvalue %dx.types.ResRet.f32 %5265, 1
  %5268 = extractvalue %dx.types.ResRet.f32 %5265, 2
  %5269 = fsub fast float %5262, %5254
  %5270 = fsub fast float %5263, %5255
  %5271 = fsub fast float %5264, %5256
  %5272 = fmul fast float %5269, %5242
  %5273 = fmul fast float %5270, %5242
  %5274 = fmul fast float %5271, %5242
  %5275 = fadd fast float %5272, %5254
  %5276 = fadd fast float %5273, %5255
  %5277 = fadd fast float %5274, %5256
  %5278 = fsub fast float %5266, %5258
  %5279 = fsub fast float %5267, %5259
  %5280 = fsub fast float %5268, %5260
  %5281 = fmul fast float %5278, %5242
  %5282 = fmul fast float %5279, %5242
  %5283 = fmul fast float %5280, %5242
  %5284 = fsub fast float %5258, %5275
  %5285 = fadd fast float %5284, %5281
  %5286 = fsub fast float %5259, %5276
  %5287 = fadd fast float %5286, %5282
  %5288 = fsub fast float %5260, %5277
  %5289 = fadd fast float %5288, %5283
  %5290 = fmul fast float %5285, %5230
  %5291 = fmul fast float %5287, %5230
  %5292 = fmul fast float %5289, %5230
  %5293 = fadd fast float %5290, %5275
  %5294 = fadd fast float %5291, %5276
  %5295 = fadd fast float %5292, %5277
  %5296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5297 = extractvalue %dx.types.CBufRet.f32 %5296, 1
  %5298 = fmul fast float %5293, %5297
  %5299 = fmul fast float %5294, %5297
  %5300 = fmul fast float %5295, %5297
  br label %5301

; <label>:5301                                    ; preds = %5134, %5103
  %5302 = phi float [ %5172, %5134 ], [ 1.000000e+00, %5103 ]
  %5303 = phi float [ %5173, %5134 ], [ 1.000000e+00, %5103 ]
  %5304 = phi float [ %5174, %5134 ], [ 1.000000e+00, %5103 ]
  %5305 = phi float [ %5298, %5134 ], [ 0.000000e+00, %5103 ]
  %5306 = phi float [ %5299, %5134 ], [ 0.000000e+00, %5103 ]
  %5307 = phi float [ %5300, %5134 ], [ 0.000000e+00, %5103 ]
  %5308 = fmul fast float %5305, %5080
  %5309 = fmul fast float %5306, %5080
  %5310 = fmul fast float %5307, %5080
  %5311 = call float @dx.op.dot3.f32(i32 55, float %5302, float %5303, float %5304, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5312 = call float @dx.op.dot3.f32(i32 55, float %5308, float %5309, float %5310, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5313 = select i1 %226, float %5311, float %5302
  %5314 = select i1 %226, float %5311, float %5303
  %5315 = select i1 %226, float 1.000000e+00, float %5304
  %5316 = select i1 %226, float %5312, float %5308
  %5317 = select i1 %226, float 0.000000e+00, float %5309
  %5318 = select i1 %226, float 0.000000e+00, float %5310
  %5319 = fmul fast float %5313, %5093
  %5320 = fmul fast float %5314, %5094
  %5321 = fmul fast float %5315, %5095
  %5322 = fadd fast float %5319, %5316
  %5323 = fadd fast float %5320, %5317
  %5324 = fadd fast float %5318, %5321
  %5325 = fmul fast float %5313, %5067
  %5326 = fmul fast float %5314, %5068
  %5327 = fmul fast float %5315, %5069
  %5328 = fmul fast float %85, 2.000000e+00
  %5329 = fmul fast float %5328, %5105
  %5330 = fmul fast float %86, 2.000000e+00
  %5331 = fmul fast float %5330, %5106
  %5332 = fsub fast float 1.000000e+00, %5329
  %5333 = fsub fast float 1.000000e+00, %5331
  %5334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5335 = extractvalue %dx.types.CBufRet.f32 %5334, 0
  %5336 = extractvalue %dx.types.CBufRet.f32 %5334, 1
  %5337 = extractvalue %dx.types.CBufRet.f32 %5334, 2
  %5338 = fmul fast float %5332, %5335
  %5339 = fmul fast float %5332, %5336
  %5340 = fmul fast float %5332, %5337
  %5341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5342 = extractvalue %dx.types.CBufRet.f32 %5341, 0
  %5343 = extractvalue %dx.types.CBufRet.f32 %5341, 1
  %5344 = extractvalue %dx.types.CBufRet.f32 %5341, 2
  %5345 = fmul fast float %5333, %5342
  %5346 = fmul fast float %5333, %5343
  %5347 = fmul fast float %5333, %5344
  %5348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5349 = extractvalue %dx.types.CBufRet.f32 %5348, 0
  %5350 = extractvalue %dx.types.CBufRet.f32 %5348, 1
  %5351 = extractvalue %dx.types.CBufRet.f32 %5348, 2
  %5352 = fadd fast float %5345, %5349
  %5353 = fadd fast float %5352, %5338
  %5354 = fadd fast float %5346, %5350
  %5355 = fadd fast float %5354, %5339
  %5356 = fadd fast float %5347, %5351
  %5357 = fadd fast float %5356, %5340
  %5358 = fmul fast float %5353, %186
  %5359 = fmul fast float %5355, %186
  %5360 = fmul fast float %5357, %186
  br label %5361

; <label>:5361                                    ; preds = %5301, %5066
  %5362 = phi float [ %5358, %5301 ], [ %133, %5066 ]
  %5363 = phi float [ %5359, %5301 ], [ %134, %5066 ]
  %5364 = phi float [ %5360, %5301 ], [ %135, %5066 ]
  %5365 = phi float [ %186, %5301 ], [ %76, %5066 ]
  %5366 = phi float [ %5322, %5301 ], [ %5093, %5066 ]
  %5367 = phi float [ %5323, %5301 ], [ %5094, %5066 ]
  %5368 = phi float [ %5324, %5301 ], [ %5095, %5066 ]
  %5369 = phi float [ %5325, %5301 ], [ %5067, %5066 ]
  %5370 = phi float [ %5326, %5301 ], [ %5068, %5066 ]
  %5371 = phi float [ %5327, %5301 ], [ %5069, %5066 ]
  %5372 = phi float [ %5302, %5301 ], [ 1.000000e+00, %5066 ]
  br i1 %5102, label %6523, label %5373

; <label>:5373                                    ; preds = %5361
  %5374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.f32 %5374, 0
  %5376 = extractvalue %dx.types.CBufRet.f32 %5374, 1
  %5377 = extractvalue %dx.types.CBufRet.f32 %5374, 2
  %5378 = extractvalue %dx.types.CBufRet.f32 %5374, 3
  %5379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5380 = extractvalue %dx.types.CBufRet.f32 %5379, 0
  %5381 = extractvalue %dx.types.CBufRet.f32 %5379, 1
  %5382 = extractvalue %dx.types.CBufRet.f32 %5379, 2
  %5383 = extractvalue %dx.types.CBufRet.f32 %5379, 3
  %5384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5385 = extractvalue %dx.types.CBufRet.f32 %5384, 0
  %5386 = extractvalue %dx.types.CBufRet.f32 %5384, 1
  %5387 = extractvalue %dx.types.CBufRet.f32 %5384, 2
  %5388 = extractvalue %dx.types.CBufRet.f32 %5384, 3
  %5389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5390 = extractvalue %dx.types.CBufRet.f32 %5389, 0
  %5391 = extractvalue %dx.types.CBufRet.f32 %5389, 1
  %5392 = extractvalue %dx.types.CBufRet.f32 %5389, 2
  %5393 = extractvalue %dx.types.CBufRet.f32 %5389, 3
  %5394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5395 = extractvalue %dx.types.CBufRet.f32 %5394, 3
  %5396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5397 = extractvalue %dx.types.CBufRet.f32 %5396, 3
  %5398 = extractvalue %dx.types.CBufRet.f32 %5396, 0
  %5399 = extractvalue %dx.types.CBufRet.f32 %5396, 1
  %5400 = extractvalue %dx.types.CBufRet.f32 %5396, 2
  %5401 = fcmp fast olt float %5400, -5.000000e-01
  %5402 = call float @dx.op.dot3.f32(i32 55, float %5362, float %5363, float %5364, float %5362, float %5363, float %5364)  ; Dot3(ax,ay,az,bx,by,bz)
  %5403 = call float @dx.op.unary.f32(i32 25, float %5402)  ; Rsqrt(value)
  %5404 = fmul fast float %5403, %5402
  %5405 = fmul fast float %5403, %5362
  %5406 = fmul fast float %5403, %5363
  %5407 = fmul fast float %5403, %5364
  %5408 = fadd fast float %5404, %5378
  %5409 = call float @dx.op.dot3.f32(i32 55, float %5405, float %5406, float %5407, float %5375, float %5376, float %5377)  ; Dot3(ax,ay,az,bx,by,bz)
  %5410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5411 = extractvalue %dx.types.CBufRet.i32 %5410, 1
  %5412 = and i32 %5411, 1
  %5413 = icmp ne i32 %5412, 0
  %5414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5415 = extractvalue %dx.types.CBufRet.f32 %5414, 2
  %5416 = fcmp fast ogt float %5415, 0.000000e+00
  %5417 = and i1 %5413, %5416
  br i1 %5417, label %5418, label %5820, !dx.controlflow.hints !114

; <label>:5418                                    ; preds = %5373
  %5419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5420 = extractvalue %dx.types.CBufRet.f32 %5419, 3
  %5421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5422 = extractvalue %dx.types.CBufRet.f32 %5421, 2
  %5423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5424 = extractvalue %dx.types.CBufRet.f32 %5423, 2
  %5425 = fsub fast float %5422, %5424
  %5426 = and i32 %5411, 2
  %5427 = extractvalue %dx.types.CBufRet.i32 %5410, 0
  %5428 = call i32 @dx.op.binary.i32(i32 40, i32 %5427, i32 3)  ; UMin(a,b)
  %5429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5430 = extractvalue %dx.types.CBufRet.f32 %5429, 0
  %5431 = extractvalue %dx.types.CBufRet.f32 %5429, 1
  %5432 = extractvalue %dx.types.CBufRet.f32 %5423, 0
  %5433 = extractvalue %dx.types.CBufRet.f32 %5423, 1
  %5434 = fsub fast float %5430, %5432
  %5435 = fsub fast float %5431, %5433
  %5436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5437 = extractvalue %dx.types.CBufRet.f32 %5436, 0
  %5438 = fcmp fast ogt float %5437, 0.000000e+00
  %5439 = fsub fast float -0.000000e+00, %5434
  %5440 = fsub fast float -0.000000e+00, %5435
  %5441 = call float @dx.op.dot2.f32(i32 54, float %5405, float %5406, float %5405, float %5406)  ; Dot2(ax,ay,bx,by)
  %5442 = call float @dx.op.dot2.f32(i32 54, float %5405, float %5406, float %5439, float %5440)  ; Dot2(ax,ay,bx,by)
  %5443 = fmul fast float %5442, 2.000000e+00
  %5444 = call float @dx.op.dot2.f32(i32 54, float %5439, float %5440, float %5439, float %5440)  ; Dot2(ax,ay,bx,by)
  %5445 = fmul fast float %5437, %5437
  %5446 = fsub fast float %5444, %5445
  %5447 = fmul fast float %5443, %5443
  %5448 = fmul fast float %5441, 4.000000e+00
  %5449 = fmul fast float %5448, %5446
  %5450 = fsub fast float %5447, %5449
  %5451 = fcmp fast ogt float %5450, 0.000000e+00
  br i1 %5451, label %5452, label %5467

; <label>:5452                                    ; preds = %5418
  %5453 = fcmp fast ogt float %5443, 0.000000e+00
  %5454 = call float @dx.op.unary.f32(i32 24, float %5450)  ; Sqrt(value)
  %5455 = fsub fast float -0.000000e+00, %5454
  %5456 = select i1 %5453, float %5454, float %5455
  %5457 = fadd fast float %5456, %5443
  %5458 = fmul float %5457, -5.000000e-01
  %5459 = fdiv fast float %5458, %5441
  %5460 = call float @dx.op.binary.f32(i32 35, float %5459, float 0.000000e+00)  ; FMax(a,b)
  %5461 = call float @dx.op.binary.f32(i32 36, float %5404, float %5460)  ; FMin(a,b)
  %5462 = fdiv fast float %5446, %5458
  %5463 = call float @dx.op.binary.f32(i32 35, float %5462, float 0.000000e+00)  ; FMax(a,b)
  %5464 = call float @dx.op.binary.f32(i32 36, float %5404, float %5463)  ; FMin(a,b)
  %5465 = call float @dx.op.binary.f32(i32 36, float %5461, float %5464)  ; FMin(a,b)
  %5466 = call float @dx.op.binary.f32(i32 35, float %5461, float %5464)  ; FMax(a,b)
  br label %5467

; <label>:5467                                    ; preds = %5452, %5418
  %5468 = phi float [ %5466, %5452 ], [ -1.000000e+00, %5418 ]
  %5469 = phi float [ %5465, %5452 ], [ -1.000000e+00, %5418 ]
  %5470 = phi i1 [ true, %5452 ], [ false, %5418 ]
  %5471 = and i1 %5438, %5470
  br i1 %5471, label %5472, label %5474

; <label>:5472                                    ; preds = %5467
  %5473 = fcmp fast oeq float %5469, %5468
  br i1 %5473, label %5773, label %5475

; <label>:5474                                    ; preds = %5467
  br i1 %5438, label %5773, label %5475

; <label>:5475                                    ; preds = %5474, %5472
  %5476 = phi float [ %5404, %5474 ], [ %5468, %5472 ]
  %5477 = phi float [ 0.000000e+00, %5474 ], [ %5469, %5472 ]
  %5478 = icmp ne i32 %5426, 0
  %5479 = fmul fast float %5476, %5407
  %5480 = fadd fast float %5479, %5420
  %5481 = fmul fast float %5480, %5476
  %5482 = select i1 %5478, float 0.000000e+00, float %5481
  %5483 = fcmp fast oeq float %5407, 0.000000e+00
  %5484 = fdiv fast float %5425, %5407
  %5485 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5484)  ; FMax(a,b)
  %5486 = select i1 %5483, float %5476, float %5485
  %5487 = call float @dx.op.binary.f32(i32 36, float %5476, float %5486)  ; FMin(a,b)
  %5488 = fcmp fast ogt float %5407, 0.000000e+00
  %5489 = fcmp fast olt float %5425, 0.000000e+00
  br i1 %5488, label %5490, label %5547

; <label>:5490                                    ; preds = %5475
  %5491 = icmp eq i32 %5426, 0
  br i1 %5489, label %5492, label %5536

; <label>:5492                                    ; preds = %5490
  %5493 = select i1 %5491, float %5476, float 0.000000e+00
  %5494 = fsub fast float -0.000000e+00, %5493
  %5495 = call float @dx.op.unary.f32(i32 6, float %5494)  ; FAbs(value)
  %5496 = fmul fast float %5493, %5407
  %5497 = fadd fast float %5496, %5420
  %5498 = fmul fast float %5495, %5497
  %5499 = fsub fast float %5482, %5498
  %5500 = fsub fast float %5476, %5495
  %5501 = select i1 %5491, float %5500, float 0.000000e+00
  %5502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5503 = extractvalue %dx.types.CBufRet.f32 %5502, 0
  %5504 = extractvalue %dx.types.CBufRet.f32 %5502, 1
  %5505 = extractvalue %dx.types.CBufRet.f32 %5502, 2
  %5506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5507 = extractvalue %dx.types.CBufRet.f32 %5506, 0
  %5508 = extractvalue %dx.types.CBufRet.f32 %5506, 1
  %5509 = extractvalue %dx.types.CBufRet.f32 %5506, 2
  %5510 = extractvalue %dx.types.CBufRet.f32 %5506, 3
  %5511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5512 = extractvalue %dx.types.CBufRet.f32 %5511, 3
  %5513 = call float @dx.op.binary.f32(i32 36, float %5499, float %5512)  ; FMin(a,b)
  %5514 = fmul fast float %5510, %5501
  %5515 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5516 = fsub fast float %5507, %5503
  %5517 = fsub fast float %5508, %5504
  %5518 = fsub fast float %5509, %5505
  %5519 = fmul fast float %5515, %5516
  %5520 = fmul fast float %5515, %5517
  %5521 = fmul fast float %5515, %5518
  %5522 = fadd fast float %5519, %5503
  %5523 = fadd fast float %5520, %5504
  %5524 = fadd fast float %5521, %5505
  %5525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.f32 %5525, 0
  %5527 = extractvalue %dx.types.CBufRet.f32 %5525, 1
  %5528 = fadd fast float %5527, %5526
  %5529 = call float @dx.op.unary.f32(i32 7, float %5528)  ; Saturate(value)
  %5530 = extractvalue %dx.types.CBufRet.f32 %5525, 2
  %5531 = extractvalue %dx.types.CBufRet.f32 %5525, 3
  %5532 = fadd fast float %5531, %5530
  %5533 = call float @dx.op.unary.f32(i32 7, float %5532)  ; Saturate(value)
  %5534 = fmul fast float %5529, %5513
  %5535 = fmul fast float %5534, %5533
  br label %5773

; <label>:5536                                    ; preds = %5490
  br i1 %5491, label %5537, label %5558

; <label>:5537                                    ; preds = %5536
  %5538 = call float @dx.op.binary.f32(i32 36, float %5487, float %5477)  ; FMin(a,b)
  %5539 = fsub fast float %5487, %5538
  %5540 = fsub fast float %5539, %5476
  %5541 = call float @dx.op.unary.f32(i32 6, float %5540)  ; FAbs(value)
  %5542 = fadd fast float %5539, %5476
  %5543 = fmul fast float %5542, %5407
  %5544 = fadd fast float %5543, %5420
  %5545 = fmul fast float %5544, %5541
  %5546 = fsub fast float %5482, %5545
  br label %5558

; <label>:5547                                    ; preds = %5475
  br i1 %5489, label %5548, label %5558

; <label>:5548                                    ; preds = %5547
  %5549 = call float @dx.op.binary.f32(i32 35, float %5477, float %5487)  ; FMax(a,b)
  %5550 = icmp eq i32 %5426, 0
  %5551 = select i1 %5550, float %5487, float 0.000000e+00
  %5552 = fsub fast float -0.000000e+00, %5551
  %5553 = call float @dx.op.unary.f32(i32 6, float %5552)  ; FAbs(value)
  %5554 = fmul fast float %5551, %5407
  %5555 = fadd fast float %5554, %5420
  %5556 = fmul fast float %5553, %5555
  %5557 = fsub fast float %5482, %5556
  br label %5558

; <label>:5558                                    ; preds = %5548, %5547, %5537, %5536
  %5559 = phi float [ %5477, %5536 ], [ %5477, %5537 ], [ %5549, %5548 ], [ %5477, %5547 ]
  %5560 = phi float [ 0.000000e+00, %5536 ], [ %5541, %5537 ], [ %5553, %5548 ], [ 0.000000e+00, %5547 ]
  %5561 = phi float [ %5482, %5536 ], [ %5546, %5537 ], [ %5557, %5548 ], [ %5482, %5547 ]
  %5562 = phi float [ %5487, %5536 ], [ %5487, %5537 ], [ %5476, %5548 ], [ %5476, %5547 ]
  %5563 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 0
  store float -1.000000e+00, float* %5563, align 4, !tbaa !115, !noalias !117
  %5564 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 1
  store float -1.000000e+00, float* %5564, align 4, !tbaa !115, !noalias !117
  %5565 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 2
  store float -1.000000e+00, float* %5565, align 4, !tbaa !115, !noalias !117
  %5566 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 0
  store float -1.000000e+00, float* %5566, align 4, !tbaa !115, !noalias !117
  %5567 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 1
  store float -1.000000e+00, float* %5567, align 4, !tbaa !115, !noalias !117
  %5568 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 2
  store float -1.000000e+00, float* %5568, align 4, !tbaa !115, !noalias !117
  %5569 = icmp sgt i32 %5428, 0
  br i1 %5569, label %5570, label %5631

; <label>:5570                                    ; preds = %5558
  br label %5571

; <label>:5571                                    ; preds = %5620, %5570
  %5572 = phi i32 [ %5621, %5620 ], [ 0, %5570 ]
  %5573 = phi i32 [ %5622, %5620 ], [ 0, %5570 ]
  %5574 = add nuw i32 %5573, 171
  %5575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %5574)  ; CBufferLoadLegacy(handle,regIndex)
  %5576 = extractvalue %dx.types.CBufRet.f32 %5575, 0
  %5577 = extractvalue %dx.types.CBufRet.f32 %5575, 1
  %5578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5579 = extractvalue %dx.types.CBufRet.f32 %5578, 0
  %5580 = extractvalue %dx.types.CBufRet.f32 %5578, 1
  %5581 = fsub fast float %5576, %5579
  %5582 = fsub fast float %5577, %5580
  %5583 = extractvalue %dx.types.CBufRet.f32 %5575, 2
  %5584 = fsub fast float -0.000000e+00, %5581
  %5585 = fsub fast float -0.000000e+00, %5582
  %5586 = call float @dx.op.dot2.f32(i32 54, float %5405, float %5406, float %5584, float %5585)  ; Dot2(ax,ay,bx,by)
  %5587 = fmul fast float %5586, 2.000000e+00
  %5588 = call float @dx.op.dot2.f32(i32 54, float %5584, float %5585, float %5584, float %5585)  ; Dot2(ax,ay,bx,by)
  %5589 = fmul fast float %5583, %5583
  %5590 = fsub fast float %5588, %5589
  %5591 = fmul fast float %5587, %5587
  %5592 = fmul fast float %5448, %5590
  %5593 = fsub fast float %5591, %5592
  %5594 = fcmp fast ogt float %5593, 0.000000e+00
  br i1 %5594, label %5595, label %5610

; <label>:5595                                    ; preds = %5571
  %5596 = fcmp fast ogt float %5587, 0.000000e+00
  %5597 = call float @dx.op.unary.f32(i32 24, float %5593)  ; Sqrt(value)
  %5598 = fsub fast float -0.000000e+00, %5597
  %5599 = select i1 %5596, float %5597, float %5598
  %5600 = fadd fast float %5599, %5587
  %5601 = fmul float %5600, -5.000000e-01
  %5602 = fdiv fast float %5601, %5441
  %5603 = call float @dx.op.binary.f32(i32 35, float %5602, float 0.000000e+00)  ; FMax(a,b)
  %5604 = call float @dx.op.binary.f32(i32 36, float %5476, float %5603)  ; FMin(a,b)
  %5605 = fdiv fast float %5590, %5601
  %5606 = call float @dx.op.binary.f32(i32 35, float %5605, float 0.000000e+00)  ; FMax(a,b)
  %5607 = call float @dx.op.binary.f32(i32 36, float %5476, float %5606)  ; FMin(a,b)
  %5608 = call float @dx.op.binary.f32(i32 36, float %5604, float %5607)  ; FMin(a,b)
  %5609 = call float @dx.op.binary.f32(i32 35, float %5604, float %5607)  ; FMax(a,b)
  br label %5610

; <label>:5610                                    ; preds = %5595, %5571
  %5611 = phi float [ %5609, %5595 ], [ -1.000000e+00, %5571 ]
  %5612 = phi float [ %5608, %5595 ], [ -1.000000e+00, %5571 ]
  %5613 = phi i1 [ true, %5595 ], [ false, %5571 ]
  br i1 %5613, label %5614, label %5620

; <label>:5614                                    ; preds = %5610
  %5615 = call float @dx.op.binary.f32(i32 35, float %5559, float %5612)  ; FMax(a,b)
  %5616 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5573
  store float %5615, float* %5616, align 4, !tbaa !115, !noalias !117
  %5617 = call float @dx.op.binary.f32(i32 35, float %5559, float %5611)  ; FMax(a,b)
  %5618 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %5573
  store float %5617, float* %5618, align 4, !tbaa !115, !noalias !117
  %5619 = add nsw i32 %5572, 1
  br label %5620

; <label>:5620                                    ; preds = %5614, %5610
  %5621 = phi i32 [ %5619, %5614 ], [ %5572, %5610 ]
  %5622 = add nuw nsw i32 %5573, 1
  %5623 = icmp eq i32 %5622, %5428
  br i1 %5623, label %5624, label %5571

; <label>:5624                                    ; preds = %5620
  %5625 = load float, float* %5565, align 4, !tbaa !115, !alias.scope !133, !noalias !136
  %5626 = load float, float* %5564, align 4, !tbaa !115, !alias.scope !139, !noalias !140
  %5627 = load float, float* %5563, align 4, !tbaa !115, !alias.scope !141, !noalias !142
  %5628 = load float, float* %5568, align 4, !tbaa !115, !alias.scope !143, !noalias !146
  %5629 = load float, float* %5567, align 4, !tbaa !115, !alias.scope !149, !noalias !150
  %5630 = load float, float* %5566, align 4, !tbaa !115, !alias.scope !151, !noalias !152
  br label %5631

; <label>:5631                                    ; preds = %5624, %5558
  %5632 = phi float [ -1.000000e+00, %5558 ], [ %5630, %5624 ]
  %5633 = phi float [ -1.000000e+00, %5558 ], [ %5629, %5624 ]
  %5634 = phi float [ -1.000000e+00, %5558 ], [ %5628, %5624 ]
  %5635 = phi float [ -1.000000e+00, %5558 ], [ %5627, %5624 ]
  %5636 = phi float [ -1.000000e+00, %5558 ], [ %5626, %5624 ]
  %5637 = phi float [ -1.000000e+00, %5558 ], [ %5625, %5624 ]
  %5638 = phi i32 [ 0, %5558 ], [ %5621, %5624 ]
  %5639 = call float @dx.op.binary.f32(i32 36, float %5635, float %5636)  ; FMin(a,b)
  %5640 = call float @dx.op.binary.f32(i32 36, float %5639, float %5637)  ; FMin(a,b)
  %5641 = call float @dx.op.binary.f32(i32 35, float %5635, float %5636)  ; FMax(a,b)
  %5642 = call float @dx.op.binary.f32(i32 36, float %5641, float %5637)  ; FMin(a,b)
  %5643 = call float @dx.op.binary.f32(i32 35, float %5639, float %5642)  ; FMax(a,b)
  %5644 = call float @dx.op.binary.f32(i32 35, float %5641, float %5637)  ; FMax(a,b)
  store float %5640, float* %5563, align 4, !tbaa !115, !alias.scope !141, !noalias !142
  store float %5643, float* %5564, align 4, !tbaa !115, !alias.scope !139, !noalias !140
  store float %5644, float* %5565, align 4, !tbaa !115, !alias.scope !133, !noalias !136
  %5645 = call float @dx.op.binary.f32(i32 36, float %5632, float %5633)  ; FMin(a,b)
  %5646 = call float @dx.op.binary.f32(i32 36, float %5645, float %5634)  ; FMin(a,b)
  %5647 = call float @dx.op.binary.f32(i32 35, float %5632, float %5633)  ; FMax(a,b)
  %5648 = call float @dx.op.binary.f32(i32 36, float %5647, float %5634)  ; FMin(a,b)
  %5649 = call float @dx.op.binary.f32(i32 35, float %5645, float %5648)  ; FMax(a,b)
  %5650 = call float @dx.op.binary.f32(i32 35, float %5647, float %5634)  ; FMax(a,b)
  store float %5646, float* %5566, align 4, !tbaa !115, !alias.scope !151, !noalias !152
  store float %5649, float* %5567, align 4, !tbaa !115, !alias.scope !149, !noalias !150
  store float %5650, float* %5568, align 4, !tbaa !115, !alias.scope !143, !noalias !146
  %5651 = sub nsw i32 3, %5638
  %5652 = icmp sgt i32 %5651, 2
  br i1 %5652, label %5653, label %5691

; <label>:5653                                    ; preds = %5631
  %5654 = icmp eq i32 %5426, 0
  %5655 = fsub fast float %5476, %5560
  %5656 = select i1 %5654, float %5655, float %5560
  %5657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5658 = extractvalue %dx.types.CBufRet.f32 %5657, 0
  %5659 = extractvalue %dx.types.CBufRet.f32 %5657, 1
  %5660 = extractvalue %dx.types.CBufRet.f32 %5657, 2
  %5661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5662 = extractvalue %dx.types.CBufRet.f32 %5661, 0
  %5663 = extractvalue %dx.types.CBufRet.f32 %5661, 1
  %5664 = extractvalue %dx.types.CBufRet.f32 %5661, 2
  %5665 = extractvalue %dx.types.CBufRet.f32 %5661, 3
  %5666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5667 = extractvalue %dx.types.CBufRet.f32 %5666, 3
  %5668 = call float @dx.op.binary.f32(i32 36, float %5561, float %5667)  ; FMin(a,b)
  %5669 = fmul fast float %5665, %5656
  %5670 = call float @dx.op.unary.f32(i32 7, float %5669)  ; Saturate(value)
  %5671 = fsub fast float %5662, %5658
  %5672 = fsub fast float %5663, %5659
  %5673 = fsub fast float %5664, %5660
  %5674 = fmul fast float %5670, %5671
  %5675 = fmul fast float %5670, %5672
  %5676 = fmul fast float %5670, %5673
  %5677 = fadd fast float %5674, %5658
  %5678 = fadd fast float %5675, %5659
  %5679 = fadd fast float %5676, %5660
  %5680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5681 = extractvalue %dx.types.CBufRet.f32 %5680, 0
  %5682 = extractvalue %dx.types.CBufRet.f32 %5680, 1
  %5683 = fadd fast float %5682, %5681
  %5684 = call float @dx.op.unary.f32(i32 7, float %5683)  ; Saturate(value)
  %5685 = extractvalue %dx.types.CBufRet.f32 %5680, 2
  %5686 = extractvalue %dx.types.CBufRet.f32 %5680, 3
  %5687 = fadd fast float %5686, %5685
  %5688 = call float @dx.op.unary.f32(i32 7, float %5687)  ; Saturate(value)
  %5689 = fmul fast float %5684, %5668
  %5690 = fmul fast float %5689, %5688
  br label %5773

; <label>:5691                                    ; preds = %5631
  %5692 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5651
  %5693 = load float, float* %5692, align 4, !tbaa !115, !noalias !117
  %5694 = fcmp fast olt float %5693, %5562
  %5695 = icmp sgt i32 %5638, 0
  %5696 = and i1 %5695, %5694
  br i1 %5696, label %5697, label %5734

; <label>:5697                                    ; preds = %5691
  br label %5698

; <label>:5698                                    ; preds = %5727, %5697
  %5699 = phi float [ %5728, %5727 ], [ %5560, %5697 ]
  %5700 = phi float [ %5729, %5727 ], [ %5561, %5697 ]
  %5701 = phi float [ %5709, %5727 ], [ %5693, %5697 ]
  %5702 = phi i32 [ %5706, %5727 ], [ %5651, %5697 ]
  %5703 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %5702
  %5704 = load float, float* %5703, align 4, !tbaa !115, !noalias !117
  %5705 = icmp slt i32 %5702, 2
  %5706 = add nsw i32 %5702, 1
  %5707 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5706
  %5708 = load float, float* %5707, align 4, !tbaa !115, !noalias !117
  %5709 = select i1 %5705, float %5708, float %5476
  %5710 = call float @dx.op.binary.f32(i32 36, float %5709, float %5704)  ; FMin(a,b)
  %5711 = call float @dx.op.binary.f32(i32 36, float %5562, float %5710)  ; FMin(a,b)
  %5712 = icmp eq i32 %5426, 0
  %5713 = fadd fast float %5711, %5701
  %5714 = fmul fast float %5713, %5407
  %5715 = fadd fast float %5714, %5420
  br i1 %5712, label %5721, label %5716

; <label>:5716                                    ; preds = %5698
  %5717 = fsub fast float %5711, %5701
  %5718 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5717)  ; FMax(a,b)
  %5719 = fmul fast float %5718, %5715
  %5720 = fadd fast float %5719, %5700
  br label %5727

; <label>:5721                                    ; preds = %5698
  %5722 = fsub fast float %5701, %5711
  %5723 = call float @dx.op.unary.f32(i32 6, float %5722)  ; FAbs(value)
  %5724 = fadd fast float %5723, %5699
  %5725 = fmul fast float %5723, %5715
  %5726 = fsub fast float %5700, %5725
  br label %5727

; <label>:5727                                    ; preds = %5721, %5716
  %5728 = phi float [ %5718, %5716 ], [ %5724, %5721 ]
  %5729 = phi float [ %5720, %5716 ], [ %5726, %5721 ]
  %5730 = fcmp fast olt float %5709, %5562
  %5731 = icmp slt i32 %5706, 3
  %5732 = and i1 %5731, %5730
  br i1 %5732, label %5698, label %5733

; <label>:5733                                    ; preds = %5727
  br label %5734

; <label>:5734                                    ; preds = %5733, %5691
  %5735 = phi float [ %5560, %5691 ], [ %5728, %5733 ]
  %5736 = phi float [ %5561, %5691 ], [ %5729, %5733 ]
  %5737 = fsub fast float %5476, %5735
  %5738 = select i1 %5478, float %5735, float %5737
  %5739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5740 = extractvalue %dx.types.CBufRet.f32 %5739, 0
  %5741 = extractvalue %dx.types.CBufRet.f32 %5739, 1
  %5742 = extractvalue %dx.types.CBufRet.f32 %5739, 2
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.CBufRet.f32 %5743, 1
  %5746 = extractvalue %dx.types.CBufRet.f32 %5743, 2
  %5747 = extractvalue %dx.types.CBufRet.f32 %5743, 3
  %5748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5749 = extractvalue %dx.types.CBufRet.f32 %5748, 3
  %5750 = call float @dx.op.binary.f32(i32 36, float %5736, float %5749)  ; FMin(a,b)
  %5751 = fmul fast float %5747, %5738
  %5752 = call float @dx.op.unary.f32(i32 7, float %5751)  ; Saturate(value)
  %5753 = fsub fast float %5744, %5740
  %5754 = fsub fast float %5745, %5741
  %5755 = fsub fast float %5746, %5742
  %5756 = fmul fast float %5752, %5753
  %5757 = fmul fast float %5752, %5754
  %5758 = fmul fast float %5752, %5755
  %5759 = fadd fast float %5756, %5740
  %5760 = fadd fast float %5757, %5741
  %5761 = fadd fast float %5758, %5742
  %5762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5763 = extractvalue %dx.types.CBufRet.f32 %5762, 0
  %5764 = extractvalue %dx.types.CBufRet.f32 %5762, 1
  %5765 = fadd fast float %5764, %5763
  %5766 = call float @dx.op.unary.f32(i32 7, float %5765)  ; Saturate(value)
  %5767 = extractvalue %dx.types.CBufRet.f32 %5762, 2
  %5768 = extractvalue %dx.types.CBufRet.f32 %5762, 3
  %5769 = fadd fast float %5768, %5767
  %5770 = call float @dx.op.unary.f32(i32 7, float %5769)  ; Saturate(value)
  %5771 = fmul fast float %5766, %5750
  %5772 = fmul fast float %5771, %5770
  br label %5773

; <label>:5773                                    ; preds = %5734, %5653, %5492, %5474, %5472
  %5774 = phi float [ %5501, %5492 ], [ %5656, %5653 ], [ %5738, %5734 ], [ 0.000000e+00, %5472 ], [ 0.000000e+00, %5474 ]
  %5775 = phi float [ %5535, %5492 ], [ %5690, %5653 ], [ %5772, %5734 ], [ 0.000000e+00, %5472 ], [ 0.000000e+00, %5474 ]
  %5776 = phi float [ %5522, %5492 ], [ %5677, %5653 ], [ %5759, %5734 ], [ 0.000000e+00, %5472 ], [ 0.000000e+00, %5474 ]
  %5777 = phi float [ %5523, %5492 ], [ %5678, %5653 ], [ %5760, %5734 ], [ 0.000000e+00, %5472 ], [ 0.000000e+00, %5474 ]
  %5778 = phi float [ %5524, %5492 ], [ %5679, %5653 ], [ %5761, %5734 ], [ 0.000000e+00, %5472 ], [ 0.000000e+00, %5474 ]
  %5779 = fmul fast float %5415, %5775
  %5780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5781 = extractvalue %dx.types.CBufRet.f32 %5780, 2
  %5782 = fsub fast float %5422, %5781
  %5783 = fcmp fast olt float %5779, -2.000000e+01
  %5784 = call float @dx.op.unary.f32(i32 21, float %5779)  ; Exp(value)
  %5785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5786 = extractvalue %dx.types.CBufRet.f32 %5785, 2
  %5787 = extractvalue %dx.types.CBufRet.f32 %5785, 3
  %5788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5789 = extractvalue %dx.types.CBufRet.f32 %5788, 2
  %5790 = fmul fast float %5787, %5782
  %5791 = call float @dx.op.unary.f32(i32 7, float %5790)  ; Saturate(value)
  %5792 = fsub fast float 1.000000e+00, %5791
  %5793 = fmul fast float %5407, 5.000000e-01
  %5794 = fadd fast float %5793, 5.000000e-01
  %5795 = call float @dx.op.unary.f32(i32 7, float %5794)  ; Saturate(value)
  %5796 = fsub fast float 1.000000e+00, %5795
  %5797 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5792)  ; FMax(a,b)
  %5798 = fdiv fast float %5796, %5797
  %5799 = fsub fast float %5782, %5364
  %5800 = call float @dx.op.unary.f32(i32 6, float %5799)  ; FAbs(value)
  %5801 = fmul fast float %5800, %5786
  %5802 = call float @dx.op.unary.f32(i32 7, float %5798)  ; Saturate(value)
  %5803 = fsub fast float 1.000000e+00, %5801
  %5804 = fmul fast float %5803, %5802
  %5805 = fadd fast float %5804, %5801
  %5806 = fmul fast float %5789, %5782
  %5807 = call float @dx.op.unary.f32(i32 7, float %5806)  ; Saturate(value)
  %5808 = fsub fast float 1.000000e+00, %5805
  %5809 = fmul fast float %5808, %5807
  %5810 = fadd fast float %5809, %5805
  %5811 = call float @dx.op.unary.f32(i32 7, float %5810)  ; Saturate(value)
  %5812 = fadd fast float %5784, -1.000000e+00
  %5813 = select i1 %5783, float -1.000000e+00, float %5812
  %5814 = fmul fast float %5811, %5813
  %5815 = fadd fast float %5814, 1.000000e+00
  %5816 = fsub fast float -0.000000e+00, %5814
  %5817 = fmul fast float %5776, %5816
  %5818 = fmul fast float %5777, %5816
  %5819 = fmul fast float %5778, %5816
  br label %5820

; <label>:5820                                    ; preds = %5773, %5373
  %5821 = phi float [ %5774, %5773 ], [ 0.000000e+00, %5373 ]
  %5822 = phi float [ %5815, %5773 ], [ 1.000000e+00, %5373 ]
  %5823 = phi float [ %5817, %5773 ], [ 0.000000e+00, %5373 ]
  %5824 = phi float [ %5818, %5773 ], [ 0.000000e+00, %5373 ]
  %5825 = phi float [ %5819, %5773 ], [ 0.000000e+00, %5373 ]
  %5826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5827 = extractvalue %dx.types.CBufRet.f32 %5826, 1
  %5828 = fsub fast float 1.000000e+00, %5822
  %5829 = fmul fast float %5828, %5408
  %5830 = fmul fast float %5829, %5827
  %5831 = fsub fast float %5408, %5830
  br i1 %5401, label %5832, label %5861, !dx.controlflow.hints !153

; <label>:5832                                    ; preds = %5820
  %5833 = fmul fast float %5409, %5398
  %5834 = fadd fast float %5833, %5399
  %5835 = call float @dx.op.unary.f32(i32 7, float %5834)  ; Saturate(value)
  %5836 = fmul fast float %5380, %5831
  %5837 = fsub fast float -0.000000e+00, %5836
  %5838 = fmul fast float %5381, %5831
  %5839 = fsub fast float -0.000000e+00, %5838
  %5840 = call float @dx.op.unary.f32(i32 21, float %5837)  ; Exp(value)
  %5841 = call float @dx.op.unary.f32(i32 21, float %5839)  ; Exp(value)
  %5842 = call float @dx.op.binary.f32(i32 35, float %5388, float %5840)  ; FMax(a,b)
  %5843 = call float @dx.op.binary.f32(i32 35, float %5388, float %5841)  ; FMax(a,b)
  %5844 = fsub fast float %5843, %5842
  %5845 = fmul fast float %5844, %5835
  %5846 = fadd fast float %5845, %5842
  %5847 = call float @dx.op.unary.f32(i32 7, float %5846)  ; Saturate(value)
  %5848 = fsub fast float %5385, %5390
  %5849 = fsub fast float %5386, %5391
  %5850 = fsub fast float %5387, %5392
  %5851 = fmul fast float %5835, %5848
  %5852 = fmul fast float %5835, %5849
  %5853 = fmul fast float %5835, %5850
  %5854 = fadd fast float %5851, %5390
  %5855 = fadd fast float %5852, %5391
  %5856 = fadd fast float %5853, %5392
  %5857 = fsub fast float 1.000000e+00, %5847
  %5858 = fmul fast float %5857, %5854
  %5859 = fmul fast float %5857, %5855
  %5860 = fmul fast float %5857, %5856
  br label %5920

; <label>:5861                                    ; preds = %5820
  %5862 = fmul fast float %5831, %5397
  %5863 = call float @dx.op.unary.f32(i32 7, float %5862)  ; Saturate(value)
  %5864 = fsub fast float 2.000000e+00, %5863
  %5865 = fmul fast float %5863, 9.921875e-01
  %5866 = fmul fast float %5865, %5864
  %5867 = fadd fast float %5866, 3.906250e-03
  %5868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %5867, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5869 = extractvalue %dx.types.ResRet.f32 %5868, 0
  %5870 = fsub fast float %5863, %5869
  %5871 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5870)  ; FMax(a,b)
  %5872 = fmul fast float %5383, %5364
  %5873 = call float @dx.op.unary.f32(i32 6, float %5872)  ; FAbs(value)
  %5874 = fcmp fast ogt float %5873, 0x3EB0C6F7A0000000
  br i1 %5874, label %5875, label %5881, !dx.controlflow.hints !154

; <label>:5875                                    ; preds = %5861
  %5876 = fmul fast float %5872, 0xBFF7154760000000
  %5877 = call float @dx.op.unary.f32(i32 21, float %5876)  ; Exp(value)
  %5878 = fsub fast float 1.000000e+00, %5877
  %5879 = fdiv fast float %5878, %5872
  %5880 = fmul fast float %5879, %5393
  br label %5881

; <label>:5881                                    ; preds = %5875, %5861
  %5882 = phi float [ %5880, %5875 ], [ %5393, %5861 ]
  %5883 = fadd fast float %5882, %5395
  %5884 = fmul fast float %5883, %5871
  %5885 = fmul fast float %5380, %5884
  %5886 = fsub fast float -0.000000e+00, %5885
  %5887 = fmul fast float %5381, %5884
  %5888 = fsub fast float -0.000000e+00, %5887
  %5889 = fmul fast float %5382, %5884
  %5890 = fsub fast float -0.000000e+00, %5889
  %5891 = call float @dx.op.unary.f32(i32 21, float %5886)  ; Exp(value)
  %5892 = call float @dx.op.unary.f32(i32 21, float %5888)  ; Exp(value)
  %5893 = call float @dx.op.unary.f32(i32 21, float %5890)  ; Exp(value)
  %5894 = fmul fast float %5409, %5409
  %5895 = fadd fast float %5894, 1.000000e+00
  %5896 = fmul fast float %5895, 0x3FAE8EC8A0000000
  %5897 = fmul fast float %5896, %5390
  %5898 = fmul fast float %5896, %5391
  %5899 = fmul fast float %5896, %5392
  %5900 = fmul fast float %5409, %5388
  %5901 = fsub fast float 1.000000e+00, %5900
  %5902 = fmul fast float %5388, %5388
  %5903 = fsub fast float 1.000000e+00, %5902
  %5904 = fmul fast float %5903, 0x3FB45F3060000000
  %5905 = fmul fast float %5901, %5901
  %5906 = fdiv fast float 1.000000e+00, %5905
  %5907 = fmul fast float %5904, %5906
  %5908 = fmul fast float %5907, %5385
  %5909 = fmul fast float %5907, %5386
  %5910 = fmul fast float %5907, %5387
  %5911 = fadd fast float %5908, %5897
  %5912 = fadd fast float %5909, %5898
  %5913 = fadd fast float %5910, %5899
  %5914 = fsub fast float 1.000000e+00, %5891
  %5915 = fsub fast float 1.000000e+00, %5892
  %5916 = fsub fast float 1.000000e+00, %5893
  %5917 = fmul fast float %5911, %5914
  %5918 = fmul fast float %5912, %5915
  %5919 = fmul fast float %5913, %5916
  br label %5920

; <label>:5920                                    ; preds = %5881, %5832
  %5921 = phi float [ %5858, %5832 ], [ %5917, %5881 ]
  %5922 = phi float [ %5859, %5832 ], [ %5918, %5881 ]
  %5923 = phi float [ %5860, %5832 ], [ %5919, %5881 ]
  %5924 = phi float [ %5847, %5832 ], [ %5891, %5881 ]
  %5925 = phi float [ %5847, %5832 ], [ %5892, %5881 ]
  %5926 = phi float [ %5847, %5832 ], [ %5893, %5881 ]
  br i1 %5417, label %5927, label %6125, !dx.controlflow.hints !155

; <label>:5927                                    ; preds = %5920
  %5928 = extractvalue %dx.types.CBufRet.f32 %5826, 0
  %5929 = fmul fast float %5928, %5828
  %5930 = fsub fast float %5823, %5921
  %5931 = fsub fast float %5824, %5922
  %5932 = fsub fast float %5825, %5923
  %5933 = fmul fast float %5929, %5930
  %5934 = fmul fast float %5929, %5931
  %5935 = fmul fast float %5929, %5932
  %5936 = fadd fast float %5933, %5921
  %5937 = fadd fast float %5934, %5922
  %5938 = fadd fast float %5935, %5923
  %5939 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5924)  ; FMax(a,b)
  %5940 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5925)  ; FMax(a,b)
  %5941 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5926)  ; FMax(a,b)
  %5942 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5822)  ; FMax(a,b)
  %5943 = call float @dx.op.binary.f32(i32 35, float %5821, float %5831)  ; FMax(a,b)
  %5944 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5943)  ; FMax(a,b)
  %5945 = fdiv fast float %5821, %5944
  %5946 = call float @dx.op.unary.f32(i32 7, float %5945)  ; Saturate(value)
  %5947 = fdiv fast float %5831, %5944
  %5948 = call float @dx.op.unary.f32(i32 7, float %5947)  ; Saturate(value)
  %5949 = fcmp fast une float %5942, 1.000000e+00
  br i1 %5949, label %5950, label %5963, !dx.controlflow.hints !156

; <label>:5950                                    ; preds = %5927
  %5951 = call float @dx.op.unary.f32(i32 23, float %5942)  ; Log(value)
  %5952 = fmul fast float %5951, 0x3FE62E4300000000
  %5953 = fmul fast float %5823, %5952
  %5954 = fsub fast float -0.000000e+00, %5953
  %5955 = fmul fast float %5824, %5952
  %5956 = fsub fast float -0.000000e+00, %5955
  %5957 = fmul fast float %5825, %5952
  %5958 = fsub fast float -0.000000e+00, %5957
  %5959 = fsub fast float 1.000000e+00, %5942
  %5960 = fdiv fast float %5954, %5959
  %5961 = fdiv fast float %5956, %5959
  %5962 = fdiv fast float %5958, %5959
  br label %5963

; <label>:5963                                    ; preds = %5950, %5927
  %5964 = phi float [ %5960, %5950 ], [ %5823, %5927 ]
  %5965 = phi float [ %5961, %5950 ], [ %5824, %5927 ]
  %5966 = phi float [ %5962, %5950 ], [ %5825, %5927 ]
  %5967 = phi float [ %5952, %5950 ], [ 0.000000e+00, %5927 ]
  %5968 = fcmp fast une float %5939, 1.000000e+00
  br i1 %5968, label %5969, label %5976, !dx.controlflow.hints !157

; <label>:5969                                    ; preds = %5963
  %5970 = call float @dx.op.unary.f32(i32 23, float %5939)  ; Log(value)
  %5971 = fmul fast float %5970, 0x3FE62E4300000000
  %5972 = fmul fast float %5936, %5971
  %5973 = fsub fast float -0.000000e+00, %5972
  %5974 = fsub fast float 1.000000e+00, %5939
  %5975 = fdiv fast float %5973, %5974
  br label %5976

; <label>:5976                                    ; preds = %5969, %5963
  %5977 = phi float [ %5975, %5969 ], [ %5936, %5963 ]
  %5978 = phi float [ %5971, %5969 ], [ 0.000000e+00, %5963 ]
  %5979 = fcmp fast une float %5940, 1.000000e+00
  br i1 %5979, label %5980, label %5987, !dx.controlflow.hints !157

; <label>:5980                                    ; preds = %5976
  %5981 = call float @dx.op.unary.f32(i32 23, float %5940)  ; Log(value)
  %5982 = fmul fast float %5981, 0x3FE62E4300000000
  %5983 = fmul fast float %5937, %5982
  %5984 = fsub fast float -0.000000e+00, %5983
  %5985 = fsub fast float 1.000000e+00, %5940
  %5986 = fdiv fast float %5984, %5985
  br label %5987

; <label>:5987                                    ; preds = %5980, %5976
  %5988 = phi float [ %5986, %5980 ], [ %5937, %5976 ]
  %5989 = phi float [ %5982, %5980 ], [ 0.000000e+00, %5976 ]
  %5990 = fcmp fast une float %5941, 1.000000e+00
  br i1 %5990, label %5991, label %5998, !dx.controlflow.hints !157

; <label>:5991                                    ; preds = %5987
  %5992 = call float @dx.op.unary.f32(i32 23, float %5941)  ; Log(value)
  %5993 = fmul fast float %5992, 0x3FE62E4300000000
  %5994 = fmul fast float %5938, %5993
  %5995 = fsub fast float -0.000000e+00, %5994
  %5996 = fsub fast float 1.000000e+00, %5941
  %5997 = fdiv fast float %5995, %5996
  br label %5998

; <label>:5998                                    ; preds = %5991, %5987
  %5999 = phi float [ %5997, %5991 ], [ %5938, %5987 ]
  %6000 = phi float [ %5993, %5991 ], [ 0.000000e+00, %5987 ]
  %6001 = fmul fast float %5964, %5948
  %6002 = fmul fast float %5965, %5948
  %6003 = fmul fast float %5966, %5948
  %6004 = fmul fast float %5967, %5948
  %6005 = fmul fast float %5977, %5946
  %6006 = fmul fast float %5988, %5946
  %6007 = fmul fast float %5999, %5946
  %6008 = fmul fast float %5978, %5946
  %6009 = fmul fast float %5989, %5946
  %6010 = fmul fast float %6000, %5946
  %6011 = fadd fast float %6005, %6001
  %6012 = fadd fast float %6006, %6002
  %6013 = fadd fast float %6007, %6003
  %6014 = fadd fast float %6008, %6004
  %6015 = fadd fast float %6009, %6004
  %6016 = fadd fast float %6010, %6004
  %6017 = fcmp fast une float %6014, 0.000000e+00
  br i1 %6017, label %6018, label %6025, !dx.controlflow.hints !158

; <label>:6018                                    ; preds = %5998
  %6019 = fmul fast float %6014, 0x3FF7154760000000
  %6020 = call float @dx.op.unary.f32(i32 21, float %6019)  ; Exp(value)
  %6021 = fsub fast float 1.000000e+00, %6020
  %6022 = fmul fast float %6011, %6021
  %6023 = fsub fast float -0.000000e+00, %6022
  %6024 = fdiv fast float %6023, %6014
  br label %6025

; <label>:6025                                    ; preds = %6018, %5998
  %6026 = phi float [ %6020, %6018 ], [ 1.000000e+00, %5998 ]
  %6027 = phi float [ %6024, %6018 ], [ %6011, %5998 ]
  %6028 = fcmp fast une float %6015, 0.000000e+00
  br i1 %6028, label %6029, label %6036, !dx.controlflow.hints !158

; <label>:6029                                    ; preds = %6025
  %6030 = fmul fast float %6015, 0x3FF7154760000000
  %6031 = call float @dx.op.unary.f32(i32 21, float %6030)  ; Exp(value)
  %6032 = fsub fast float 1.000000e+00, %6031
  %6033 = fmul fast float %6012, %6032
  %6034 = fsub fast float -0.000000e+00, %6033
  %6035 = fdiv fast float %6034, %6015
  br label %6036

; <label>:6036                                    ; preds = %6029, %6025
  %6037 = phi float [ %6031, %6029 ], [ 1.000000e+00, %6025 ]
  %6038 = phi float [ %6035, %6029 ], [ %6012, %6025 ]
  %6039 = fcmp fast une float %6016, 0.000000e+00
  br i1 %6039, label %6040, label %6047, !dx.controlflow.hints !158

; <label>:6040                                    ; preds = %6036
  %6041 = fmul fast float %6016, 0x3FF7154760000000
  %6042 = call float @dx.op.unary.f32(i32 21, float %6041)  ; Exp(value)
  %6043 = fsub fast float 1.000000e+00, %6042
  %6044 = fmul fast float %6013, %6043
  %6045 = fsub fast float -0.000000e+00, %6044
  %6046 = fdiv fast float %6045, %6016
  br label %6047

; <label>:6047                                    ; preds = %6040, %6036
  %6048 = phi float [ %6042, %6040 ], [ 1.000000e+00, %6036 ]
  %6049 = phi float [ %6046, %6040 ], [ %6013, %6036 ]
  %6050 = fcmp fast ogt float %5946, %5948
  br i1 %6050, label %6051, label %6071

; <label>:6051                                    ; preds = %6047
  %6052 = fsub fast float 1.000000e+00, %5948
  %6053 = fmul fast float %5964, %6052
  %6054 = fmul fast float %5965, %6052
  %6055 = fmul fast float %5966, %6052
  %6056 = fmul fast float %5967, %6052
  %6057 = fcmp fast une float %6056, 0.000000e+00
  br i1 %6057, label %6058, label %6109, !dx.controlflow.hints !159

; <label>:6058                                    ; preds = %6051
  %6059 = fmul fast float %6056, 0x3FF7154760000000
  %6060 = call float @dx.op.unary.f32(i32 21, float %6059)  ; Exp(value)
  %6061 = fsub fast float 1.000000e+00, %6060
  %6062 = fmul fast float %6053, %6061
  %6063 = fsub fast float -0.000000e+00, %6062
  %6064 = fmul fast float %6054, %6061
  %6065 = fsub fast float -0.000000e+00, %6064
  %6066 = fmul fast float %6055, %6061
  %6067 = fsub fast float -0.000000e+00, %6066
  %6068 = fdiv fast float %6063, %6056
  %6069 = fdiv fast float %6065, %6056
  %6070 = fdiv fast float %6067, %6056
  br label %6109

; <label>:6071                                    ; preds = %6047
  %6072 = fsub fast float 1.000000e+00, %5946
  %6073 = fmul fast float %5977, %6072
  %6074 = fmul fast float %5988, %6072
  %6075 = fmul fast float %5999, %6072
  %6076 = fmul fast float %5978, %6072
  %6077 = fmul fast float %5989, %6072
  %6078 = fmul fast float %6000, %6072
  %6079 = fcmp fast une float %6076, 0.000000e+00
  br i1 %6079, label %6080, label %6087, !dx.controlflow.hints !158

; <label>:6080                                    ; preds = %6071
  %6081 = fmul fast float %6076, 0x3FF7154760000000
  %6082 = call float @dx.op.unary.f32(i32 21, float %6081)  ; Exp(value)
  %6083 = fsub fast float 1.000000e+00, %6082
  %6084 = fmul fast float %6073, %6083
  %6085 = fsub fast float -0.000000e+00, %6084
  %6086 = fdiv fast float %6085, %6076
  br label %6087

; <label>:6087                                    ; preds = %6080, %6071
  %6088 = phi float [ %6086, %6080 ], [ %6073, %6071 ]
  %6089 = phi float [ %6082, %6080 ], [ 1.000000e+00, %6071 ]
  %6090 = fcmp fast une float %6077, 0.000000e+00
  br i1 %6090, label %6091, label %6098, !dx.controlflow.hints !158

; <label>:6091                                    ; preds = %6087
  %6092 = fmul fast float %6077, 0x3FF7154760000000
  %6093 = call float @dx.op.unary.f32(i32 21, float %6092)  ; Exp(value)
  %6094 = fsub fast float 1.000000e+00, %6093
  %6095 = fmul fast float %6074, %6094
  %6096 = fsub fast float -0.000000e+00, %6095
  %6097 = fdiv fast float %6096, %6077
  br label %6098

; <label>:6098                                    ; preds = %6091, %6087
  %6099 = phi float [ %6097, %6091 ], [ %6074, %6087 ]
  %6100 = phi float [ %6093, %6091 ], [ 1.000000e+00, %6087 ]
  %6101 = fcmp fast une float %6078, 0.000000e+00
  br i1 %6101, label %6102, label %6109, !dx.controlflow.hints !158

; <label>:6102                                    ; preds = %6098
  %6103 = fmul fast float %6078, 0x3FF7154760000000
  %6104 = call float @dx.op.unary.f32(i32 21, float %6103)  ; Exp(value)
  %6105 = fsub fast float 1.000000e+00, %6104
  %6106 = fmul fast float %6075, %6105
  %6107 = fsub fast float -0.000000e+00, %6106
  %6108 = fdiv fast float %6107, %6078
  br label %6109

; <label>:6109                                    ; preds = %6102, %6098, %6058, %6051
  %6110 = phi float [ %6108, %6102 ], [ %6070, %6058 ], [ %6055, %6051 ], [ %6075, %6098 ]
  %6111 = phi float [ %6099, %6102 ], [ %6069, %6058 ], [ %6054, %6051 ], [ %6099, %6098 ]
  %6112 = phi float [ %6088, %6102 ], [ %6068, %6058 ], [ %6053, %6051 ], [ %6088, %6098 ]
  %6113 = phi float [ %6104, %6102 ], [ %6060, %6058 ], [ 1.000000e+00, %6051 ], [ 1.000000e+00, %6098 ]
  %6114 = phi float [ %6100, %6102 ], [ %6060, %6058 ], [ 1.000000e+00, %6051 ], [ %6100, %6098 ]
  %6115 = phi float [ %6089, %6102 ], [ %6060, %6058 ], [ 1.000000e+00, %6051 ], [ %6089, %6098 ]
  %6116 = fmul fast float %6115, %6027
  %6117 = fmul fast float %6114, %6038
  %6118 = fmul fast float %6113, %6049
  %6119 = fadd fast float %6116, %6112
  %6120 = fadd fast float %6117, %6111
  %6121 = fadd fast float %6118, %6110
  %6122 = fmul fast float %6115, %6026
  %6123 = fmul fast float %6114, %6037
  %6124 = fmul fast float %6113, %6048
  br label %6125

; <label>:6125                                    ; preds = %6109, %5920
  %6126 = phi float [ %6124, %6109 ], [ %5926, %5920 ]
  %6127 = phi float [ %6123, %6109 ], [ %5925, %5920 ]
  %6128 = phi float [ %6122, %6109 ], [ %5924, %5920 ]
  %6129 = phi float [ %6121, %6109 ], [ %5923, %5920 ]
  %6130 = phi float [ %6120, %6109 ], [ %5922, %5920 ]
  %6131 = phi float [ %6119, %6109 ], [ %5921, %5920 ]
  %6132 = fmul fast float %6131, %5080
  %6133 = fmul fast float %6130, %5080
  %6134 = fmul fast float %6129, %5080
  %6135 = fmul fast float %6128, %5372
  %6136 = call float @dx.op.dot3.f32(i32 55, float %6128, float %6127, float %6126, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6137 = call float @dx.op.dot3.f32(i32 55, float %6132, float %6133, float %6134, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6138 = select i1 %226, float %6136, float %6128
  %6139 = select i1 %226, float %6136, float %6127
  %6140 = select i1 %226, float 1.000000e+00, float %6126
  %6141 = select i1 %226, float %6137, float %6132
  %6142 = select i1 %226, float 0.000000e+00, float %6133
  %6143 = select i1 %226, float 0.000000e+00, float %6134
  %6144 = fmul fast float %6138, %5366
  %6145 = fmul fast float %6139, %5367
  %6146 = fmul fast float %6140, %5368
  %6147 = fadd fast float %6144, %6141
  %6148 = fadd fast float %6145, %6142
  %6149 = fadd fast float %6143, %6146
  %6150 = fmul fast float %6138, %5369
  %6151 = fmul fast float %6139, %5370
  %6152 = fmul fast float %6140, %5371
  %6153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6154 = extractvalue %dx.types.CBufRet.i32 %6153, 0
  %6155 = icmp eq i32 %6154, 0
  br i1 %6155, label %6523, label %6156, !dx.controlflow.hints !160

; <label>:6156                                    ; preds = %6125
  %6157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.f32 %6157, 2
  %6159 = extractvalue %dx.types.CBufRet.f32 %6157, 3
  %6160 = fmul fast float %6158, %85
  %6161 = fmul fast float %6159, %86
  %6162 = fmul fast float %6160, 2.000000e+00
  %6163 = fmul fast float %6161, 2.000000e+00
  %6164 = fsub fast float 1.000000e+00, %6162
  %6165 = fsub fast float 1.000000e+00, %6163
  %6166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6167 = extractvalue %dx.types.CBufRet.f32 %6166, 0
  %6168 = extractvalue %dx.types.CBufRet.f32 %6166, 1
  %6169 = extractvalue %dx.types.CBufRet.f32 %6166, 2
  %6170 = fmul fast float %6164, %6167
  %6171 = fmul fast float %6164, %6168
  %6172 = fmul fast float %6164, %6169
  %6173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6174 = extractvalue %dx.types.CBufRet.f32 %6173, 0
  %6175 = extractvalue %dx.types.CBufRet.f32 %6173, 1
  %6176 = extractvalue %dx.types.CBufRet.f32 %6173, 2
  %6177 = fmul fast float %6165, %6174
  %6178 = fmul fast float %6165, %6175
  %6179 = fmul fast float %6165, %6176
  %6180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6181 = extractvalue %dx.types.CBufRet.f32 %6180, 0
  %6182 = extractvalue %dx.types.CBufRet.f32 %6180, 1
  %6183 = extractvalue %dx.types.CBufRet.f32 %6180, 2
  %6184 = fadd fast float %6177, %6181
  %6185 = fadd fast float %6184, %6170
  %6186 = fadd fast float %6178, %6182
  %6187 = fadd fast float %6186, %6171
  %6188 = fadd fast float %6179, %6183
  %6189 = fadd fast float %6188, %6172
  %6190 = fmul fast float %6185, %5365
  %6191 = fmul fast float %6187, %5365
  %6192 = fmul fast float %6189, %5365
  %6193 = fmul fast float %6190, %6190
  %6194 = fmul fast float %6191, %6191
  %6195 = fadd fast float %6193, %6194
  %6196 = fmul fast float %6192, %6192
  %6197 = fadd fast float %6195, %6196
  %6198 = call float @dx.op.unary.f32(i32 24, float %6197)  ; Sqrt(value)
  %6199 = extractvalue %dx.types.CBufRet.f32 %5091, 0
  %6200 = fsub fast float %6198, %6199
  %6201 = extractvalue %dx.types.CBufRet.f32 %5091, 2
  %6202 = fmul fast float %6200, %6201
  %6203 = call float @dx.op.unary.f32(i32 7, float %6202)  ; Saturate(value)
  %6204 = fadd fast float %6203, -5.000000e-01
  %6205 = fmul fast float %6204, 2.000000e+00
  %6206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6207 = extractvalue %dx.types.CBufRet.f32 %6206, 2
  %6208 = call float @dx.op.binary.f32(i32 36, float %6207, float %6205)  ; FMin(a,b)
  %6209 = fsub fast float -0.000000e+00, %6207
  %6210 = fcmp fast ogt float %6208, %6209
  br i1 %6210, label %6211, label %6523, !dx.controlflow.hints !161

; <label>:6211                                    ; preds = %6156
  %6212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6213 = extractvalue %dx.types.CBufRet.f32 %6212, 3
  %6214 = fcmp fast ogt float %6213, 0.000000e+00
  br i1 %6214, label %6215, label %6290, !dx.controlflow.hints !162

; <label>:6215                                    ; preds = %6211
  %6216 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %6217 = extractvalue %dx.types.Dimensions %6216, 0
  %6218 = sitofp i32 %6217 to float
  %6219 = extractvalue %dx.types.Dimensions %6216, 1
  %6220 = sitofp i32 %6219 to float
  %6221 = fmul fast float %6160, %6218
  %6222 = fmul fast float %6161, %6220
  %6223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6224 = extractvalue %dx.types.CBufRet.f32 %6223, 1
  %6225 = fsub fast float -0.000000e+00, %6224
  %6226 = fptoui float %6225 to i32
  %6227 = fptoui float %6221 to i32
  %6228 = fptoui float %6222 to i32
  %6229 = and i32 %6226, 31
  %6230 = lshr i32 %6227, %6229
  %6231 = lshr i32 %6228, %6229
  %6232 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %6226, i32 %6230, i32 %6231, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6233 = extractvalue %dx.types.ResRet.f32 %6232, 0
  %6234 = fcmp fast olt float %6233, -1.000000e+00
  %6235 = fcmp fast ogt float %6233, -1.000000e+00
  %6236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6236, 1
  %6238 = select i1 %6235, float %6237, float 1.000000e+00
  %6239 = fadd fast float %6233, 1.000000e+00
  %6240 = fmul fast float %6238, %6239
  %6241 = call float @dx.op.unary.f32(i32 6, float %6240)  ; FAbs(value)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6236, 3
  %6243 = fcmp fast oge float %6241, %6242
  %6244 = select i1 %6243, float 0x4197782600000000, float %6241
  %6245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6245, 0
  %6247 = extractvalue %dx.types.CBufRet.f32 %6245, 1
  %6248 = extractvalue %dx.types.CBufRet.f32 %6245, 2
  %6249 = select i1 %6234, float %6246, float %6167
  %6250 = select i1 %6234, float %6247, float %6168
  %6251 = select i1 %6234, float %6248, float %6169
  %6252 = fmul fast float %6249, %6164
  %6253 = fmul fast float %6250, %6164
  %6254 = fmul fast float %6251, %6164
  %6255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6256 = extractvalue %dx.types.CBufRet.f32 %6255, 0
  %6257 = extractvalue %dx.types.CBufRet.f32 %6255, 1
  %6258 = extractvalue %dx.types.CBufRet.f32 %6255, 2
  %6259 = select i1 %6234, float %6256, float %6174
  %6260 = select i1 %6234, float %6257, float %6175
  %6261 = select i1 %6234, float %6258, float %6176
  %6262 = fmul fast float %6259, %6165
  %6263 = fmul fast float %6260, %6165
  %6264 = fmul fast float %6261, %6165
  %6265 = fadd fast float %6262, %6252
  %6266 = fadd fast float %6263, %6253
  %6267 = fadd fast float %6264, %6254
  %6268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6269 = extractvalue %dx.types.CBufRet.f32 %6268, 0
  %6270 = extractvalue %dx.types.CBufRet.f32 %6268, 1
  %6271 = extractvalue %dx.types.CBufRet.f32 %6268, 2
  %6272 = select i1 %6234, float %6269, float %6181
  %6273 = select i1 %6234, float %6270, float %6182
  %6274 = select i1 %6234, float %6271, float %6183
  %6275 = fadd fast float %6265, %6272
  %6276 = fadd fast float %6266, %6273
  %6277 = fadd fast float %6267, %6274
  %6278 = fmul fast float %6275, %6244
  %6279 = fmul fast float %6276, %6244
  %6280 = fmul fast float %6277, %6244
  %6281 = fmul fast float %6278, %6278
  %6282 = fmul fast float %6279, %6279
  %6283 = fadd fast float %6281, %6282
  %6284 = fmul fast float %6280, %6280
  %6285 = fadd fast float %6283, %6284
  %6286 = call float @dx.op.unary.f32(i32 24, float %6285)  ; Sqrt(value)
  %6287 = fsub fast float %6286, %6199
  %6288 = fmul fast float %6287, %6201
  %6289 = call float @dx.op.unary.f32(i32 7, float %6288)  ; Saturate(value)
  br label %6290

; <label>:6290                                    ; preds = %6215, %6211
  %6291 = phi float [ %6289, %6215 ], [ 1.000000e+00, %6211 ]
  %6292 = fmul fast float %6208, 5.000000e-01
  %6293 = fadd fast float %6292, 5.000000e-01
  %6294 = call float @dx.op.unary.f32(i32 22, float %6293)  ; Frc(value)
  %6295 = call float @dx.op.unary.f32(i32 27, float %6294)  ; Round_ni(value)
  %6296 = call float @dx.op.unary.f32(i32 22, float %6294)  ; Frc(value)
  %6297 = fmul fast float %6296, 2.000000e+00
  %6298 = fadd fast float %6297, -1.000000e+00
  %6299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %6160, float %6161, float %6295, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6300 = extractvalue %dx.types.ResRet.f32 %6299, 0
  %6301 = extractvalue %dx.types.ResRet.f32 %6299, 1
  %6302 = extractvalue %dx.types.ResRet.f32 %6299, 2
  %6303 = extractvalue %dx.types.ResRet.f32 %6299, 3
  %6304 = fadd fast float %6300, -5.000000e-01
  %6305 = fadd fast float %6302, -5.000000e-01
  %6306 = fmul fast float %6304, 0xBFD5555560000000
  %6307 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6305, float %6306)  ; FMad(a,b,c)
  %6308 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6301, float 0.000000e+00)  ; FMad(a,b,c)
  %6309 = fadd fast float %6308, %6303
  %6310 = fmul fast float %6304, -7.500000e-01
  %6311 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6305, float %6310)  ; FMad(a,b,c)
  %6312 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6301, float 0.000000e+00)  ; FMad(a,b,c)
  %6313 = fadd fast float %6312, %6303
  %6314 = call float @dx.op.binary.f32(i32 35, float %6307, float -1.000000e+00)  ; FMax(a,b)
  %6315 = call float @dx.op.binary.f32(i32 35, float %6309, float -1.000000e+00)  ; FMax(a,b)
  %6316 = call float @dx.op.binary.f32(i32 35, float %6311, float -1.000000e+00)  ; FMax(a,b)
  %6317 = call float @dx.op.binary.f32(i32 35, float %6313, float -1.000000e+00)  ; FMax(a,b)
  %6318 = call float @dx.op.binary.f32(i32 36, float %6314, float 1.000000e+00)  ; FMin(a,b)
  %6319 = call float @dx.op.binary.f32(i32 36, float %6315, float 1.000000e+00)  ; FMin(a,b)
  %6320 = call float @dx.op.binary.f32(i32 36, float %6316, float 1.000000e+00)  ; FMin(a,b)
  %6321 = call float @dx.op.binary.f32(i32 36, float %6317, float 1.000000e+00)  ; FMin(a,b)
  %6322 = fcmp fast olt float %6318, 0x3FEFFF8020000000
  br i1 %6322, label %6323, label %6438, !dx.controlflow.hints !163

; <label>:6323                                    ; preds = %6290
  %6324 = extractvalue %dx.types.CBufRet.f32 %6206, 3
  %6325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.f32 %6325, 0
  %6327 = extractvalue %dx.types.CBufRet.f32 %6325, 1
  %6328 = extractvalue %dx.types.CBufRet.f32 %6325, 2
  %6329 = extractvalue %dx.types.CBufRet.f32 %6325, 3
  %6330 = fsub fast float %6326, %6318
  %6331 = fsub fast float %6327, %6319
  %6332 = fsub fast float %6328, %6320
  %6333 = fsub fast float %6329, %6321
  %6334 = fmul fast float %6330, %6324
  %6335 = fmul fast float %6331, %6324
  %6336 = fmul fast float %6332, %6324
  %6337 = fmul fast float %6333, %6324
  %6338 = fadd fast float %6334, %6318
  %6339 = fadd fast float %6335, %6319
  %6340 = fsub fast float -0.000000e+00, %6339
  %6341 = fadd fast float %6336, %6320
  %6342 = fadd fast float %6337, %6321
  %6343 = fmul fast float %6338, %6338
  %6344 = fsub fast float %6339, %6343
  %6345 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6344)  ; FMax(a,b)
  %6346 = fdiv fast float 1.000000e+00, %6345
  %6347 = fmul fast float %6339, %6338
  %6348 = fsub fast float %6341, %6347
  %6349 = fsub fast float %6298, %6338
  %6350 = fmul fast float %6298, %6298
  %6351 = fsub fast float %6350, %6339
  %6352 = fmul fast float %6349, %6346
  %6353 = fmul fast float %6352, %6348
  %6354 = fsub fast float %6351, %6353
  %6355 = fmul fast float %6339, %6339
  %6356 = fsub fast float %6342, %6355
  %6357 = fmul fast float %6348, %6348
  %6358 = fmul fast float %6357, %6346
  %6359 = fsub fast float %6356, %6358
  %6360 = fdiv fast float %6354, %6359
  %6361 = fmul fast float %6348, %6360
  %6362 = fsub fast float %6349, %6361
  %6363 = fmul fast float %6362, %6346
  %6364 = fmul fast float %6363, %6338
  %6365 = fsub fast float 1.000000e+00, %6364
  %6366 = fmul fast float %6339, %6360
  %6367 = fsub fast float %6365, %6366
  %6368 = fmul fast float %6363, %6363
  %6369 = fmul fast float %6360, 4.000000e+00
  %6370 = fmul fast float %6369, %6367
  %6371 = fsub fast float %6368, %6370
  %6372 = call float @dx.op.unary.f32(i32 24, float %6371)  ; Sqrt(value)
  %6373 = fcmp fast oge float %6363, 0.000000e+00
  %6374 = fsub fast float -0.000000e+00, %6372
  %6375 = select i1 %6373, float %6374, float %6372
  %6376 = fsub fast float %6375, %6363
  %6377 = fdiv fast float %6376, %6360
  %6378 = fdiv fast float %6367, %6376
  %6379 = fmul fast float %6377, 5.000000e-01
  %6380 = fmul fast float %6378, 2.000000e+00
  %6381 = select i1 %6373, float %6379, float %6380
  %6382 = select i1 %6373, float %6380, float %6379
  %6383 = call float @dx.op.binary.f32(i32 35, float %6381, float %6382)  ; FMax(a,b)
  %6384 = call float @dx.op.binary.f32(i32 36, float %6381, float %6382)  ; FMin(a,b)
  %6385 = fcmp fast ogt float %6298, %6384
  br i1 %6385, label %6386, label %6396

; <label>:6386                                    ; preds = %6323
  %6387 = fsub fast float %6298, %6384
  %6388 = fsub fast float %6383, %6384
  %6389 = fmul fast float %6387, %6388
  %6390 = fmul fast float %6383, %6298
  %6391 = fadd fast float %6383, %6298
  %6392 = fmul fast float %6391, %6338
  %6393 = fadd fast float %6390, %6339
  %6394 = fsub fast float %6393, %6392
  %6395 = fdiv fast float %6394, %6389
  br label %6396

; <label>:6396                                    ; preds = %6386, %6323
  %6397 = phi float [ %6395, %6386 ], [ 0.000000e+00, %6323 ]
  %6398 = fcmp fast ogt float %6298, %6383
  %6399 = fsub fast float %6298, %6383
  br i1 %6398, label %6400, label %6410

; <label>:6400                                    ; preds = %6396
  %6401 = fsub fast float %6383, %6384
  %6402 = fmul fast float %6401, %6399
  %6403 = fmul fast float %6384, %6298
  %6404 = fadd fast float %6384, %6298
  %6405 = fmul fast float %6404, %6338
  %6406 = fsub fast float %6340, %6403
  %6407 = fadd fast float %6406, %6405
  %6408 = fdiv fast float %6407, %6402
  %6409 = fadd fast float %6408, %6397
  br label %6410

; <label>:6410                                    ; preds = %6400, %6396
  %6411 = phi float [ %6409, %6400 ], [ %6397, %6396 ]
  %6412 = fsub fast float %6298, %6384
  %6413 = fmul fast float %6412, %6399
  %6414 = fmul fast float %6384, %6383
  %6415 = fadd fast float %6384, %6383
  %6416 = fmul fast float %6415, %6338
  %6417 = fadd fast float %6414, %6339
  %6418 = fsub fast float %6417, %6416
  %6419 = fdiv fast float %6418, %6413
  %6420 = call float @dx.op.unary.f32(i32 7, float %6411)  ; Saturate(value)
  %6421 = fcmp fast oeq float %5092, 0.000000e+00
  %6422 = extractvalue %dx.types.CBufRet.f32 %6206, 0
  %6423 = fcmp fast oeq float %6422, 0.000000e+00
  %6424 = or i1 %6421, %6423
  %6425 = fmul fast float %6422, 2.000000e+00
  %6426 = fadd fast float %6207, %6208
  %6427 = fdiv fast float %6426, %6425
  %6428 = call float @dx.op.unary.f32(i32 7, float %6427)  ; Saturate(value)
  %6429 = fmul fast float %6428, 2.000000e+00
  %6430 = fsub fast float 3.000000e+00, %6429
  %6431 = fmul fast float %6428, %6428
  %6432 = fmul fast float %6431, %6430
  %6433 = select i1 %6424, float 1.000000e+00, float %6432
  %6434 = fmul fast float %6419, %5092
  %6435 = fadd fast float %6420, %6434
  %6436 = call float @dx.op.unary.f32(i32 7, float %6435)  ; Saturate(value)
  %6437 = fmul fast float %6433, %6436
  br label %6438

; <label>:6438                                    ; preds = %6410, %6290
  %6439 = phi float [ %6437, %6410 ], [ 0.000000e+00, %6290 ]
  %6440 = fsub fast float 1.000000e+00, %6439
  %6441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %44, float %6160, float %6161, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6442 = extractvalue %dx.types.ResRet.f32 %6441, 0
  %6443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6444 = extractvalue %dx.types.CBufRet.i32 %6443, 2
  %6445 = icmp eq i32 %6444, 0
  br i1 %6445, label %6451, label %6446

; <label>:6446                                    ; preds = %6438
  %6447 = call float @dx.op.unary.f32(i32 7, float %6439)  ; Saturate(value)
  %6448 = fadd fast float %6442, -1.000000e+00
  %6449 = fmul fast float %6447, %6448
  %6450 = fadd fast float %6449, 1.000000e+00
  br label %6451

; <label>:6451                                    ; preds = %6446, %6438
  %6452 = phi float [ %6450, %6446 ], [ %6440, %6438 ]
  br i1 %6214, label %6453, label %6471

; <label>:6453                                    ; preds = %6451
  %6454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6455 = extractvalue %dx.types.CBufRet.f32 %6454, 1
  %6456 = fsub fast float %6291, %6455
  %6457 = call float @dx.op.unary.f32(i32 7, float %6456)  ; Saturate(value)
  %6458 = fsub fast float %6291, %6213
  %6459 = call float @dx.op.unary.f32(i32 7, float %6458)  ; Saturate(value)
  %6460 = fsub fast float %6457, %6459
  %6461 = fsub fast float %6293, %6459
  %6462 = fdiv fast float %6461, %6460
  %6463 = call float @dx.op.unary.f32(i32 7, float %6462)  ; Saturate(value)
  %6464 = fmul fast float %6463, 2.000000e+00
  %6465 = fsub fast float 3.000000e+00, %6464
  %6466 = fsub fast float %6442, %6452
  %6467 = fmul fast float %6463, %6463
  %6468 = fmul fast float %6467, %6466
  %6469 = fmul fast float %6468, %6465
  %6470 = fadd fast float %6469, %6452
  br label %6471

; <label>:6471                                    ; preds = %6453, %6451
  %6472 = phi float [ %6470, %6453 ], [ %6452, %6451 ]
  %6473 = call float @dx.op.binary.f32(i32 35, float %6442, float %6472)  ; FMax(a,b)
  %6474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6475 = extractvalue %dx.types.CBufRet.i32 %6474, 2
  %6476 = and i32 %6475, 1
  %6477 = icmp eq i32 %6476, 0
  %6478 = fcmp fast une float %6473, 1.000000e+00
  %6479 = and i1 %6478, %6477
  br i1 %6479, label %6480, label %6499

; <label>:6480                                    ; preds = %6471
  %6481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %6160, float %6161, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6482 = extractvalue %dx.types.ResRet.f32 %6481, 0
  %6483 = extractvalue %dx.types.ResRet.f32 %6481, 1
  %6484 = extractvalue %dx.types.ResRet.f32 %6481, 2
  %6485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6486 = extractvalue %dx.types.CBufRet.f32 %6485, 1
  %6487 = fmul fast float %6486, %6482
  %6488 = fmul fast float %6486, %6483
  %6489 = fmul fast float %6486, %6484
  %6490 = fcmp fast ogt float %6442, 0x3FEFFF2E40000000
  %6491 = fsub fast float 1.000000e+00, %6473
  %6492 = fsub fast float 1.000000e+00, %6442
  %6493 = fdiv fast float %6491, %6492
  %6494 = call float @dx.op.unary.f32(i32 7, float %6493)  ; Saturate(value)
  %6495 = select i1 %6490, float 0.000000e+00, float %6494
  %6496 = fmul fast float %6487, %6495
  %6497 = fmul fast float %6488, %6495
  %6498 = fmul fast float %6489, %6495
  br label %6499

; <label>:6499                                    ; preds = %6480, %6471
  %6500 = phi float [ 0.000000e+00, %6471 ], [ %6496, %6480 ]
  %6501 = phi float [ 0.000000e+00, %6471 ], [ %6497, %6480 ]
  %6502 = phi float [ 0.000000e+00, %6471 ], [ %6498, %6480 ]
  %6503 = fmul fast float %6500, %5080
  %6504 = fmul fast float %6501, %5080
  %6505 = fmul fast float %6502, %5080
  %6506 = fmul fast float %6473, %6135
  %6507 = call float @dx.op.dot3.f32(i32 55, float %6473, float %6473, float %6473, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6508 = call float @dx.op.dot3.f32(i32 55, float %6503, float %6504, float %6505, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6509 = select i1 %226, float %6507, float %6473
  %6510 = select i1 %226, float 1.000000e+00, float %6473
  %6511 = select i1 %226, float %6508, float %6503
  %6512 = select i1 %226, float 0.000000e+00, float %6504
  %6513 = select i1 %226, float 0.000000e+00, float %6505
  %6514 = fmul fast float %6509, %6147
  %6515 = fmul fast float %6509, %6148
  %6516 = fmul fast float %6510, %6149
  %6517 = fadd fast float %6514, %6511
  %6518 = fadd fast float %6515, %6512
  %6519 = fadd fast float %6513, %6516
  %6520 = fmul fast float %6509, %6150
  %6521 = fmul fast float %6509, %6151
  %6522 = fmul fast float %6510, %6152
  br label %6523

; <label>:6523                                    ; preds = %6499, %6156, %6125, %5361
  %6524 = phi float [ %5366, %5361 ], [ %6147, %6125 ], [ %6517, %6499 ], [ %6147, %6156 ]
  %6525 = phi float [ %5367, %5361 ], [ %6148, %6125 ], [ %6518, %6499 ], [ %6148, %6156 ]
  %6526 = phi float [ %5368, %5361 ], [ %6149, %6125 ], [ %6519, %6499 ], [ %6149, %6156 ]
  %6527 = phi float [ %5369, %5361 ], [ %6150, %6125 ], [ %6520, %6499 ], [ %6150, %6156 ]
  %6528 = phi float [ %5370, %5361 ], [ %6151, %6125 ], [ %6521, %6499 ], [ %6151, %6156 ]
  %6529 = phi float [ %5371, %5361 ], [ %6152, %6125 ], [ %6522, %6499 ], [ %6152, %6156 ]
  %6530 = phi float [ %5372, %5361 ], [ %6135, %6125 ], [ %6506, %6499 ], [ %6135, %6156 ]
  %6531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6532 = extractvalue %dx.types.CBufRet.f32 %6531, 2
  %6533 = extractvalue %dx.types.CBufRet.f32 %6531, 3
  %6534 = fmul fast float %6532, %85
  %6535 = fmul fast float %6533, %86
  %6536 = call float @dx.op.unary.f32(i32 7, float %6534)  ; Saturate(value)
  %6537 = call float @dx.op.unary.f32(i32 7, float %6535)  ; Saturate(value)
  %6538 = select i1 %5102, i32 2, i32 0
  %6539 = or i32 %6538, 1
  %6540 = uitofp i32 %6539 to float
  %6541 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %6536, float %6537, float %6540, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6542 = extractvalue %dx.types.ResRet.f32 %6541, 0
  %6543 = extractvalue %dx.types.ResRet.f32 %6541, 1
  %6544 = extractvalue %dx.types.ResRet.f32 %6541, 2
  %6545 = extractvalue %dx.types.ResRet.f32 %6541, 3
  %6546 = add nuw nsw i32 %6538, 2
  %6547 = uitofp i32 %6546 to float
  %6548 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %6536, float %6537, float %6547, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6549 = extractvalue %dx.types.ResRet.f32 %6548, 0
  %6550 = extractvalue %dx.types.ResRet.f32 %6548, 1
  %6551 = extractvalue %dx.types.ResRet.f32 %6548, 2
  %6552 = extractvalue %dx.types.ResRet.f32 %6548, 3
  %6553 = call float @dx.op.binary.f32(i32 35, float %6543, float %6544)  ; FMax(a,b)
  %6554 = call float @dx.op.binary.f32(i32 35, float %6542, float %6553)  ; FMax(a,b)
  %6555 = call float @dx.op.binary.f32(i32 35, float %6554, float %6545)  ; FMax(a,b)
  %6556 = call float @dx.op.binary.f32(i32 36, float %6550, float %6551)  ; FMin(a,b)
  %6557 = call float @dx.op.binary.f32(i32 36, float %6549, float %6556)  ; FMin(a,b)
  %6558 = call float @dx.op.binary.f32(i32 36, float %6557, float %6552)  ; FMin(a,b)
  %6559 = fmul fast float %6555, 2.550000e+02
  %6560 = fadd fast float %6559, 0x3F70101020000000
  %6561 = fptoui float %6560 to i32
  %6562 = fmul fast float %6558, 2.550000e+02
  %6563 = fadd fast float %6562, 0x3F70101020000000
  %6564 = fptoui float %6563 to i32
  %6565 = icmp ult i32 %6561, %6564
  br i1 %6565, label %6566, label %6734

; <label>:6566                                    ; preds = %6523
  %6567 = fadd fast float %5365, -4.000000e+00
  %6568 = select i1 %2211, float -4.000000e+00, float %6567
  %6569 = call float @dx.op.binary.f32(i32 35, float %6568, float 0.000000e+00)  ; FMax(a,b)
  %6570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6571 = extractvalue %dx.types.CBufRet.f32 %6570, 0
  %6572 = fadd fast float %6571, %6569
  %6573 = extractvalue %dx.types.CBufRet.f32 %6570, 2
  %6574 = fmul fast float %6572, %6573
  %6575 = call float @dx.op.unary.f32(i32 23, float %6574)  ; Log(value)
  %6576 = extractvalue %dx.types.CBufRet.f32 %6570, 3
  %6577 = fmul fast float %6576, %6575
  %6578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6579 = extractvalue %dx.types.CBufRet.f32 %6578, 2
  %6580 = fmul fast float %6577, %6579
  %6581 = call float @dx.op.unary.f32(i32 7, float %6580)  ; Saturate(value)
  %6582 = uitofp i32 %6561 to float
  %6583 = uitofp i32 %6564 to float
  %6584 = fadd fast float %6582, 5.000000e-01
  %6585 = fadd fast float %6583, 5.000000e-01
  %6586 = fmul fast float %6579, %6584
  %6587 = fmul fast float %6579, %6585
  %6588 = fadd fast float %6586, 0x3F0FFB4800000000
  %6589 = fadd fast float %6587, 0xBF0FFB4800000000
  %6590 = call float @dx.op.binary.f32(i32 35, float %6581, float %6588)  ; FMax(a,b)
  %6591 = call float @dx.op.binary.f32(i32 36, float %6590, float %6589)  ; FMin(a,b)
  %6592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6593 = extractvalue %dx.types.CBufRet.f32 %6592, 1
  %6594 = extractvalue %dx.types.CBufRet.f32 %6592, 2
  %6595 = extractvalue %dx.types.CBufRet.f32 %6592, 0
  %6596 = select i1 %5102, float %6595, float 0.000000e+00
  %6597 = fmul fast float %6593, %6591
  %6598 = fadd fast float %6596, %6597
  %6599 = fadd fast float %6596, %6594
  %6600 = fsub fast float %6593, %6594
  %6601 = fadd fast float %6600, %6596
  %6602 = call float @dx.op.binary.f32(i32 35, float %6598, float %6599)  ; FMax(a,b)
  %6603 = call float @dx.op.binary.f32(i32 36, float %6602, float %6601)  ; FMin(a,b)
  %6604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %6536, float %6537, float %6603, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6605 = extractvalue %dx.types.ResRet.f32 %6604, 0
  %6606 = extractvalue %dx.types.ResRet.f32 %6604, 1
  %6607 = extractvalue %dx.types.ResRet.f32 %6604, 2
  %6608 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6609 = extractvalue %dx.types.CBufRet.i32 %6608, 0
  %6610 = extractvalue %dx.types.CBufRet.i32 %6608, 1
  %6611 = uitofp i32 %6609 to float
  %6612 = uitofp i32 %6610 to float
  %6613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6614 = extractvalue %dx.types.CBufRet.f32 %6613, 0
  %6615 = extractvalue %dx.types.CBufRet.f32 %6613, 1
  %6616 = fmul fast float %6611, %6536
  %6617 = fmul fast float %6612, %6537
  %6618 = fadd fast float %6616, -5.000000e-01
  %6619 = fadd fast float %6617, -5.000000e-01
  %6620 = call float @dx.op.unary.f32(i32 22, float %6618)  ; Frc(value)
  %6621 = call float @dx.op.unary.f32(i32 22, float %6619)  ; Frc(value)
  %6622 = fmul fast float %6620, %6620
  %6623 = fmul fast float %6622, %6620
  %6624 = fsub fast float 3.000000e+00, %6620
  %6625 = fmul fast float %6622, %6624
  %6626 = fmul fast float %6620, 3.000000e+00
  %6627 = fmul fast float %6623, 3.000000e+00
  %6628 = fmul fast float %6622, 6.000000e+00
  %6629 = fsub fast float %6627, %6628
  %6630 = fadd fast float %6629, 4.000000e+00
  %6631 = fmul fast float %6630, 0x3FC5555560000000
  %6632 = fmul fast float %6623, -3.000000e+00
  %6633 = fadd fast float %6622, %6620
  %6634 = fmul fast float %6633, 3.000000e+00
  %6635 = fadd fast float %6632, 1.000000e+00
  %6636 = fadd fast float %6635, %6634
  %6637 = fmul fast float %6623, 0x3FC5555560000000
  %6638 = fmul fast float %6621, %6621
  %6639 = fmul fast float %6638, %6621
  %6640 = fsub fast float 3.000000e+00, %6621
  %6641 = fmul fast float %6638, %6640
  %6642 = fmul fast float %6621, 3.000000e+00
  %6643 = fmul fast float %6639, 3.000000e+00
  %6644 = fmul fast float %6638, 6.000000e+00
  %6645 = fsub fast float %6643, %6644
  %6646 = fadd fast float %6645, 4.000000e+00
  %6647 = fmul fast float %6646, 0x3FC5555560000000
  %6648 = fmul fast float %6639, -3.000000e+00
  %6649 = fadd fast float %6638, %6621
  %6650 = fmul fast float %6649, 3.000000e+00
  %6651 = fadd fast float %6648, 1.000000e+00
  %6652 = fadd fast float %6651, %6650
  %6653 = fmul fast float %6639, 0x3FC5555560000000
  %6654 = fadd fast float %6620, 1.000000e+00
  %6655 = fsub fast float 1.000000e+00, %6626
  %6656 = fadd fast float %6655, %6625
  %6657 = fadd fast float %6656, %6630
  %6658 = fmul fast float %6657, 0x3FC5555560000000
  %6659 = fdiv fast float %6631, %6658
  %6660 = fsub fast float %6654, %6659
  %6661 = fsub fast float 1.000000e+00, %6620
  %6662 = fadd fast float %6636, %6623
  %6663 = fmul fast float %6662, 0x3FC5555560000000
  %6664 = fdiv fast float %6637, %6663
  %6665 = fadd fast float %6661, %6664
  %6666 = fadd fast float %6621, 1.000000e+00
  %6667 = fsub fast float 1.000000e+00, %6642
  %6668 = fadd fast float %6667, %6641
  %6669 = fadd fast float %6668, %6646
  %6670 = fmul fast float %6669, 0x3FC5555560000000
  %6671 = fdiv fast float %6647, %6670
  %6672 = fsub fast float %6666, %6671
  %6673 = fsub fast float 1.000000e+00, %6621
  %6674 = fadd fast float %6652, %6639
  %6675 = fmul fast float %6674, 0x3FC5555560000000
  %6676 = fdiv fast float %6653, %6675
  %6677 = fadd fast float %6676, %6673
  %6678 = fmul fast float %6660, %6614
  %6679 = fsub fast float %6536, %6678
  %6680 = fmul fast float %6665, %6614
  %6681 = fadd fast float %6680, %6536
  %6682 = fmul fast float %6677, %6615
  %6683 = fadd fast float %6682, %6537
  %6684 = fmul fast float %6672, %6615
  %6685 = fsub fast float %6537, %6684
  %6686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6679, float %6685, float %6603, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6687 = extractvalue %dx.types.ResRet.f32 %6686, 0
  %6688 = extractvalue %dx.types.ResRet.f32 %6686, 1
  %6689 = extractvalue %dx.types.ResRet.f32 %6686, 2
  %6690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6681, float %6685, float %6603, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6691 = extractvalue %dx.types.ResRet.f32 %6690, 0
  %6692 = extractvalue %dx.types.ResRet.f32 %6690, 1
  %6693 = extractvalue %dx.types.ResRet.f32 %6690, 2
  %6694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6679, float %6683, float %6603, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6695 = extractvalue %dx.types.ResRet.f32 %6694, 0
  %6696 = extractvalue %dx.types.ResRet.f32 %6694, 1
  %6697 = extractvalue %dx.types.ResRet.f32 %6694, 2
  %6698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6681, float %6683, float %6603, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6699 = extractvalue %dx.types.ResRet.f32 %6698, 0
  %6700 = extractvalue %dx.types.ResRet.f32 %6698, 1
  %6701 = extractvalue %dx.types.ResRet.f32 %6698, 2
  %6702 = fsub fast float %6695, %6687
  %6703 = fsub fast float %6696, %6688
  %6704 = fsub fast float %6697, %6689
  %6705 = fmul fast float %6702, %6675
  %6706 = fmul fast float %6703, %6675
  %6707 = fmul fast float %6704, %6675
  %6708 = fadd fast float %6705, %6687
  %6709 = fadd fast float %6706, %6688
  %6710 = fadd fast float %6707, %6689
  %6711 = fsub fast float %6699, %6691
  %6712 = fsub fast float %6700, %6692
  %6713 = fsub fast float %6701, %6693
  %6714 = fmul fast float %6711, %6675
  %6715 = fmul fast float %6712, %6675
  %6716 = fmul fast float %6713, %6675
  %6717 = fsub fast float %6691, %6708
  %6718 = fadd fast float %6717, %6714
  %6719 = fsub fast float %6692, %6709
  %6720 = fadd fast float %6719, %6715
  %6721 = fsub fast float %6693, %6710
  %6722 = fadd fast float %6721, %6716
  %6723 = fmul fast float %6718, %6663
  %6724 = fmul fast float %6720, %6663
  %6725 = fmul fast float %6722, %6663
  %6726 = fadd fast float %6723, %6708
  %6727 = fadd fast float %6724, %6709
  %6728 = fadd fast float %6725, %6710
  %6729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6730 = extractvalue %dx.types.CBufRet.f32 %6729, 1
  %6731 = fmul fast float %6726, %6730
  %6732 = fmul fast float %6727, %6730
  %6733 = fmul fast float %6728, %6730
  br label %6734

; <label>:6734                                    ; preds = %6566, %6523
  %6735 = phi float [ %6605, %6566 ], [ 1.000000e+00, %6523 ]
  %6736 = phi float [ %6606, %6566 ], [ 1.000000e+00, %6523 ]
  %6737 = phi float [ %6607, %6566 ], [ 1.000000e+00, %6523 ]
  %6738 = phi float [ %6731, %6566 ], [ 0.000000e+00, %6523 ]
  %6739 = phi float [ %6732, %6566 ], [ 0.000000e+00, %6523 ]
  %6740 = phi float [ %6733, %6566 ], [ 0.000000e+00, %6523 ]
  %6741 = fmul fast float %6738, %5080
  %6742 = fmul fast float %6739, %5080
  %6743 = fmul fast float %6740, %5080
  %6744 = fmul fast float %6735, %6530
  %6745 = call float @dx.op.dot3.f32(i32 55, float %6735, float %6736, float %6737, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6746 = call float @dx.op.dot3.f32(i32 55, float %6741, float %6742, float %6743, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6747 = select i1 %226, float %6745, float %6735
  %6748 = select i1 %226, float %6745, float %6736
  %6749 = select i1 %226, float 1.000000e+00, float %6737
  %6750 = select i1 %226, float %6746, float %6741
  %6751 = select i1 %226, float 0.000000e+00, float %6742
  %6752 = select i1 %226, float 0.000000e+00, float %6743
  %6753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6754 = extractvalue %dx.types.CBufRet.i32 %6753, 3
  %6755 = and i32 %6754, 3
  %6756 = icmp ne i32 %6755, 0
  %6757 = and i32 %6754, 4
  %6758 = icmp ne i32 %6757, 0
  %6759 = and i1 %6756, %6758
  %6760 = and i1 %226, %6759
  br i1 %6760, label %6761, label %6767

; <label>:6761                                    ; preds = %6734
  %6762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6763 = extractvalue %dx.types.CBufRet.f32 %6762, 1
  %6764 = fadd fast float %6744, -1.000000e+00
  %6765 = fmul fast float %6763, %6764
  %6766 = fadd fast float %6765, 1.000000e+00
  br label %6767

; <label>:6767                                    ; preds = %6761, %6734
  %6768 = phi float [ %6766, %6761 ], [ %6744, %6734 ]
  %6769 = fadd fast float %6527, %6524
  %6770 = fmul fast float %6747, %6769
  %6771 = fadd fast float %6770, %6750
  %6772 = fadd fast float %6528, %6525
  %6773 = fmul fast float %6748, %6772
  %6774 = fadd fast float %6773, %6751
  %6775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6776 = extractvalue %dx.types.CBufRet.f32 %6775, 0
  br i1 %226, label %6777, label %6800

; <label>:6777                                    ; preds = %6767
  %6778 = fadd fast float %6771, %6774
  %6779 = fmul fast float %6776, %6778
  %6780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6781 = extractvalue %dx.types.CBufRet.f32 %6780, 3
  %6782 = extractvalue %dx.types.CBufRet.f32 %5084, 1
  %6783 = fsub fast float %5089, %5083
  %6784 = fadd fast float %6783, %5090
  %6785 = fsub fast float %6784, %6782
  %6786 = extractvalue %dx.types.CBufRet.f32 %5084, 2
  %6787 = fmul fast float %6785, %6786
  %6788 = call float @dx.op.unary.f32(i32 7, float %6787)  ; Saturate(value)
  %6789 = fsub fast float %6788, %6781
  %6790 = fmul fast float %6789, %6768
  %6791 = fadd fast float %6790, %6781
  %6792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6793 = extractvalue %dx.types.CBufRet.f32 %6792, 0
  %6794 = fsub fast float %6791, %6793
  %6795 = fmul fast float %6794, 1.000000e+01
  %6796 = call float @dx.op.unary.f32(i32 7, float %6795)  ; Saturate(value)
  %6797 = fmul fast float %6796, %5079
  %6798 = fadd fast float %6797, %5080
  %6799 = fmul fast float %6798, %6791
  br label %6823

; <label>:6800                                    ; preds = %6767
  %6801 = fadd fast float %6529, %6526
  %6802 = fmul fast float %6749, %6801
  %6803 = fadd fast float %6802, %6752
  %6804 = fmul fast float %6776, %6771
  %6805 = fmul fast float %6776, %6774
  %6806 = fmul fast float %6776, %6803
  %6807 = call float @dx.op.binary.f32(i32 35, float %6804, float %6805)  ; FMax(a,b)
  %6808 = call float @dx.op.binary.f32(i32 35, float %6807, float %6806)  ; FMax(a,b)
  %6809 = call float @dx.op.binary.f32(i32 35, float %6808, float %5080)  ; FMax(a,b)
  %6810 = fcmp fast ugt float %6809, 0x3F10000000000000
  br i1 %6810, label %6812, label %6811

; <label>:6811                                    ; preds = %6800
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6812

; <label>:6812                                    ; preds = %6811, %6800
  %6813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %6814 = extractvalue %dx.types.ResRet.i32 %6813, 0
  %6815 = and i32 %6814, 32
  %6816 = icmp eq i32 %6815, 0
  br i1 %6816, label %6823, label %6817

; <label>:6817                                    ; preds = %6812
  %6818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6819 = extractvalue %dx.types.CBufRet.f32 %6818, 0
  %6820 = fmul fast float %6819, 0x3FE99999A0000000
  %6821 = fadd fast float %6819, %6804
  %6822 = fadd fast float %6820, %6806
  br label %6823

; <label>:6823                                    ; preds = %6817, %6812, %6777
  %6824 = phi float [ %6779, %6777 ], [ %6821, %6817 ], [ %6804, %6812 ]
  %6825 = phi float [ %6799, %6777 ], [ %6805, %6817 ], [ %6805, %6812 ]
  %6826 = phi float [ %6798, %6777 ], [ %6822, %6817 ], [ %6806, %6812 ]
  %6827 = phi float [ %6798, %6777 ], [ %5080, %6817 ], [ %5080, %6812 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6828 = call float @dx.op.binary.f32(i32 36, float %6824, float 3.225500e+04)  ; FMin(a,b)
  %6829 = call float @dx.op.binary.f32(i32 36, float %6825, float 3.225500e+04)  ; FMin(a,b)
  %6830 = call float @dx.op.binary.f32(i32 36, float %6826, float 3.225500e+04)  ; FMin(a,b)
  %6831 = call float @dx.op.binary.f32(i32 36, float %6827, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6828)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6829)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6830)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6831)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

