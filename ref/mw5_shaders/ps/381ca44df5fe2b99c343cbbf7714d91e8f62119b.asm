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
; shader hash: 0a73d1ca15425a21e99eef5aa1552602
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
;                                   sampler      NA          NA      S7             s6     1
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
;                                   texture     f32          2d     T10             t2     1
;                                   texture     f32          2d     T11     t58,space2     1
;                                   texture     f32          2d     T12     t59,space2     1
;                                   texture     f32          2d     T13     t60,space2     1
;                                   texture    byte         r/o     T14     t45,space1     1
;                                   texture    byte         r/o     T15     t46,space1     1
;                                   texture    byte         r/o     T16     t47,space1     1
;                                   texture    byte         r/o     T17     t48,space1     1
;                                   texture     f32          2d     T18     t57,space2     1
;                                   texture    byte         r/o     T19     t69,space1     1
;                                   texture     u32          2d     T20     t56,space2     1
;                                   texture     f32          2d     T21     t34,space2     1
;                                   texture    byte         r/o     T22     t10,space1     1
;                                   texture    byte         r/o     T23      t1,space1     1
;                                   texture     f32          1d     T24     t32,space2     1
;                                   texture     f32     2darray     T25      t8,space2     1
;                                   texture     f32          2d     T26      t2,space2     1
;                                   texture     f32          2d     T27      t3,space2     1
;                                   texture     f32          2d     T28      t4,space2     1
;                                   textureunorm_f32     2darray     T29     t80,space2     1
;                                   texture    byte         r/o     T30     t67,space1     1
;                                   texture     f32          2d     T31      t7,space2     1
;                                   texture     f32          2d     T32      t6,space2     1
;                                   texture     f32          2d     T33      t5,space2     1
;                                   texture     f32          2d     T34     t38,space2     1
;                                   texture    byte         r/o     T35     t12,space1     1
;                                   texture    byte         r/o     T36     t13,space1     1
;                                   texture     f32          1d     T37     t30,space2     1
;                                   texture     f32          3d     T38     t44,space2     1
;                                   texture     f32          3d     T39     t45,space2     1
;                                   texture     f32     2darray     T40     t47,space2     1
;                                   textureunorm_f32     2darray     T41     t85,space2     1
;                                   texture     f32          2d     T42     t83,space2     1
;                                   texture     f32          2d     T43     t86,space2     1
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = alloca [4 x i32], align 4
  %52 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = icmp ne i32 %52, 0
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = alloca [12 x float], align 4
  %80 = alloca [12 x float], align 4
  %81 = alloca [3 x float], align 4
  %82 = alloca [3 x float], align 4
  %83 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %84 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = fmul fast float %86, %75
  %88 = fmul fast float %86, %76
  %89 = select i1 %53, float 1.000000e+00, float -1.000000e+00
  %90 = fmul fast float %70, %89
  %91 = fmul fast float %71, %89
  %92 = fmul fast float %72, %89
  %93 = fmul fast float %71, %68
  %94 = fmul fast float %72, %67
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %72, %66
  %97 = fmul fast float %70, %68
  %98 = fsub fast float %96, %97
  %99 = fmul fast float %70, %67
  %100 = fmul fast float %71, %66
  %101 = fsub fast float %99, %100
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 3
  %105 = fmul fast float %103, 2.000000e+00
  %106 = fmul fast float %105, %87
  %107 = fmul fast float %104, 2.000000e+00
  %108 = fmul fast float %107, %88
  %109 = fsub fast float 1.000000e+00, %106
  %110 = fsub fast float 1.000000e+00, %108
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %114 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %115 = fmul fast float %109, %112
  %116 = fmul fast float %109, %113
  %117 = fmul fast float %109, %114
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = fmul fast float %110, %119
  %123 = fmul fast float %110, %120
  %124 = fmul fast float %110, %121
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %129 = fadd fast float %122, %126
  %130 = fadd fast float %129, %115
  %131 = fadd fast float %123, %127
  %132 = fadd fast float %131, %116
  %133 = fadd fast float %124, %128
  %134 = fadd fast float %133, %117
  %135 = fmul fast float %130, %78
  %136 = fmul fast float %132, %78
  %137 = fmul fast float %134, %78
  %138 = fmul fast float %87, 5.000000e-01
  %139 = fmul fast float %88, 5.000000e-01
  %140 = fptosi float %138 to i32
  %141 = fptosi float %139 to i32
  %142 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %140, i32 %141, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  %144 = lshr i32 %143, 18
  %145 = uitofp i32 %144 to float
  %146 = fmul fast float %145, 0x3F4C00EBA0000000
  %147 = call float @dx.op.unary.f32(i32 21, float %146)  ; Exp(value)
  %148 = fadd fast float %147, -1.000000e+00
  %149 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %150 = extractvalue %dx.types.Dimensions %149, 0
  %151 = sitofp i32 %150 to float
  %152 = extractvalue %dx.types.Dimensions %149, 1
  %153 = sitofp i32 %152 to float
  %154 = fcmp fast oge float %138, %151
  %155 = fcmp fast oge float %139, %153
  %156 = or i1 %154, %155
  %157 = select i1 %156, float 0x4197782600000000, float %148
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 3
  %161 = fmul fast float %159, %87
  %162 = fmul fast float %160, %88
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = and i32 %164, 114688
  %166 = icmp ne i32 %165, 0
  %167 = select i1 %166, float %161, float 0.000000e+00
  %168 = select i1 %166, float %162, float 0.000000e+00
  %169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %47, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = fmul fast float %170, 2.550000e+02
  %172 = fptoui float %171 to i32
  %173 = select i1 %166, i32 %172, i32 0
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.i32 %175, 3
  %177 = and i32 %176, 3
  %178 = icmp ne i32 %177, 0
  %179 = and i32 %176, 4
  %180 = icmp ne i32 %179, 0
  %181 = and i1 %178, %180
  br i1 %181, label %182, label %193

; <label>:182                                     ; preds = %0
  %183 = extractvalue %dx.types.CBufRet.f32 %174, 3
  %184 = fmul fast float %183, %88
  %185 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %186 = fmul fast float %185, %87
  %187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %46, float %186, float %184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %188 = extractvalue %dx.types.ResRet.f32 %187, 0
  %189 = fsub fast float 1.000000e+00, %188
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = fcmp fast olt float %189, %191
  br label %196

; <label>:193                                     ; preds = %0
  %194 = icmp eq i32 %179, 0
  %195 = and i1 %178, %194
  br label %196

; <label>:196                                     ; preds = %193, %182
  %197 = phi i1 [ %192, %182 ], [ %195, %193 ]
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 2
  %200 = fmul fast float %199, 0x3FE3C6EF40000000
  %201 = frem fast float %87, 2.560000e+02
  %202 = frem fast float %88, 2.560000e+02
  %203 = fptoui float %201 to i32
  %204 = fptoui float %202 to i32
  %205 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %203, i32 %204, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = extractvalue %dx.types.ResRet.f32 %205, 1
  %208 = fadd fast float %206, %200
  %209 = fadd fast float %207, %200
  %210 = call float @dx.op.unary.f32(i32 22, float %208)  ; Frc(value)
  %211 = call float @dx.op.unary.f32(i32 22, float %209)  ; Frc(value)
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = shl i32 %213, 4
  %215 = and i32 %214, 32752
  %216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %215)  ; LegacyF16ToF32(value)
  %217 = lshr i32 %213, 7
  %218 = and i32 %217, 32752
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = lshr i32 %213, 22
  %221 = shl nuw nsw i32 %220, 5
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = and i32 %237, 65535
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = lshr i32 %237, 16
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 65535
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %243, 16
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = fmul fast float %245, 0x3F50624DE0000000
  %249 = fmul fast float %247, 0x3F50624DE0000000
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = and i32 %251, 2
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %261, label %254

; <label>:254                                     ; preds = %196
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = add i32 %256, 0
  %258 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %257, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %259 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %258, %dx.types.Handle %84, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 3
  br label %261

; <label>:261                                     ; preds = %254, %196
  %262 = phi float [ 1.000000e+00, %196 ], [ %260, %254 ]
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = or i32 %266, %264
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %882, label %269

; <label>:269                                     ; preds = %261
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = lshr i32 %271, 16
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = fmul fast float %273, 0x3F50624DE0000000
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = lshr i32 %276, 16
  %278 = and i32 %277, 255
  %279 = lshr i32 %276, 24
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = and i32 %281, 65535
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %281, 16
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = lshr i32 %287, 22
  %289 = shl nuw nsw i32 %288, 5
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = shl i32 %287, 4
  %292 = and i32 %291, 32752
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %287, 7
  %295 = and i32 %294, 32752
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 3
  %299 = fmul fast float %298, 1.000000e+03
  %300 = fmul fast float %248, %299
  %301 = call float @dx.op.unary.f32(i32 22, float %300)  ; Frc(value)
  %302 = fadd fast float %301, %239
  %303 = fmul fast float %249, %299
  %304 = call float @dx.op.unary.f32(i32 22, float %303)  ; Frc(value)
  %305 = fadd fast float %304, %241
  %306 = fmul fast float %274, %299
  %307 = call float @dx.op.unary.f32(i32 22, float %306)  ; Frc(value)
  %308 = fmul fast float %307, 0x401921FB60000000
  %309 = fadd fast float %308, %290
  %310 = call float @dx.op.unary.f32(i32 13, float %309)  ; Sin(value)
  %311 = call float @dx.op.unary.f32(i32 12, float %309)  ; Cos(value)
  %312 = fsub fast float -0.000000e+00, %310
  %313 = fadd fast float %73, -5.000000e-01
  %314 = fadd fast float %74, -5.000000e-01
  %315 = fmul fast float %283, %313
  %316 = fmul fast float %285, %314
  %317 = fadd fast float %315, 5.000000e-01
  %318 = fadd fast float %316, 5.000000e-01
  %319 = fmul fast float %293, %317
  %320 = fmul fast float %296, %318
  %321 = fmul fast float %311, %319
  %322 = call float @dx.op.tertiary.f32(i32 46, float %312, float %320, float %321)  ; FMad(a,b,c)
  %323 = fmul fast float %310, %319
  %324 = call float @dx.op.tertiary.f32(i32 46, float %311, float %320, float %323)  ; FMad(a,b,c)
  %325 = fadd fast float %302, %322
  %326 = fadd fast float %305, %324
  %327 = icmp ugt i32 %278, 1
  %328 = icmp ugt i32 %276, 33554431
  %329 = or i1 %328, %327
  br i1 %329, label %330, label %354

; <label>:330                                     ; preds = %269
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = lshr i32 %332, 16
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = fmul fast float %298, %334
  %336 = call float @dx.op.unary.f32(i32 22, float %335)  ; Frc(value)
  %337 = mul nuw nsw i32 %278, %279
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %336, %338
  %340 = call float @dx.op.unary.f32(i32 27, float %339)  ; Round_ni(value)
  %341 = fptoui float %340 to i32
  %342 = urem i32 %341, %278
  %343 = udiv i32 %341, %279
  %344 = call float @dx.op.unary.f32(i32 22, float %325)  ; Frc(value)
  %345 = call float @dx.op.unary.f32(i32 22, float %326)  ; Frc(value)
  %346 = uitofp i32 %342 to float
  %347 = uitofp i32 %343 to float
  %348 = fadd fast float %344, %346
  %349 = fadd fast float %345, %347
  %350 = uitofp i32 %278 to float
  %351 = uitofp i32 %279 to float
  %352 = fdiv fast float %348, %350
  %353 = fdiv fast float %349, %351
  br label %354

; <label>:354                                     ; preds = %330, %269
  %355 = phi float [ %352, %330 ], [ %325, %269 ]
  %356 = phi float [ %353, %330 ], [ %326, %269 ]
  %357 = and i32 %264, 256
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %403, label %359

; <label>:359                                     ; preds = %354
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = add i32 %361, 0
  %363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %364 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %363, %dx.types.Handle %84, float %355, float %356, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = shl i32 %367, 4
  %369 = and i32 %368, 32752
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %367, 7
  %372 = and i32 %371, 32752
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = fsub fast float 1.000000e+00, %262
  %375 = call float @dx.op.binary.f32(i32 35, float %374, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %376 = bitcast float %262 to i32
  %377 = sitofp i32 %376 to float
  %378 = fadd fast float %377, 0xC1CFBF8940000000
  %379 = fmul fast float %373, %378
  %380 = fadd fast float %379, 0x41CFBF8940000000
  %381 = fptosi float %380 to i32
  %382 = bitcast i32 %381 to float
  %383 = bitcast float %375 to i32
  %384 = sitofp i32 %383 to float
  %385 = fadd fast float %384, 0xC1CFBF8940000000
  %386 = fmul fast float %385, %373
  %387 = fadd fast float %386, 0x41CFBF8940000000
  %388 = fptosi float %387 to i32
  %389 = bitcast i32 %388 to float
  %390 = fmul fast float %382, %370
  %391 = fmul fast float %389, %370
  %392 = fsub fast float %375, %390
  %393 = fadd fast float %391, %375
  %394 = call float @dx.op.unary.f32(i32 7, float %392)  ; Saturate(value)
  %395 = call float @dx.op.unary.f32(i32 7, float %393)  ; Saturate(value)
  %396 = fsub fast float %365, %394
  %397 = fsub fast float %395, %394
  %398 = bitcast float %397 to i32
  %399 = sub nsw i32 2129859010, %398
  %400 = bitcast i32 %399 to float
  %401 = fmul fast float %400, %396
  %402 = call float @dx.op.unary.f32(i32 7, float %401)  ; Saturate(value)
  br label %403

; <label>:403                                     ; preds = %359, %354
  %404 = phi float [ %402, %359 ], [ %262, %354 ]
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 128
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %424, label %409

; <label>:409                                     ; preds = %403
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = add i32 %411, 0
  %413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %412, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %414 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %413, %dx.types.Handle %84, float %355, float %356, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 524288
  %419 = icmp ne i32 %418, 0
  %420 = fcmp fast ogt float %415, 0x3FE0101020000000
  %421 = select i1 %420, float 1.000000e+00, float 0.000000e+00
  %422 = select i1 %419, float %421, float %415
  %423 = fmul fast float %422, %404
  br label %424

; <label>:424                                     ; preds = %409, %403
  %425 = phi float [ %423, %409 ], [ %404, %403 ]
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = and i32 %427, 16
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %623, label %430

; <label>:430                                     ; preds = %424
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = add i32 %434, 0
  %436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %437 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %436, %dx.types.Handle %83, float %355, float %356, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %438 = extractvalue %dx.types.ResRet.f32 %437, 0
  %439 = extractvalue %dx.types.ResRet.f32 %437, 1
  %440 = extractvalue %dx.types.ResRet.f32 %437, 2
  %441 = extractvalue %dx.types.ResRet.f32 %437, 3
  %442 = and i32 %432, 255
  %443 = uitofp i32 %442 to float
  %444 = lshr i32 %432, 8
  %445 = and i32 %444, 255
  %446 = uitofp i32 %445 to float
  %447 = fmul fast float %441, %443
  %448 = fadd fast float %447, %446
  %449 = fmul fast float %448, 0x3F70101000000000
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 512
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %461, label %454

; <label>:454                                     ; preds = %430
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = add i32 %456, 0
  %458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %457, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %459 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %458, %dx.types.Handle %84, float %355, float %356, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  br label %461

; <label>:461                                     ; preds = %454, %430
  %462 = phi float [ %460, %454 ], [ 1.000000e+00, %430 ]
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = and i32 %464, 33554432
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %570, label %467

; <label>:467                                     ; preds = %461
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = and i32 %469, 65535
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = lshr i32 %469, 16
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = and i32 %475, 65535
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = lshr i32 %479, 24
  %481 = uitofp i32 %480 to float
  %482 = fmul fast float %481, 0x3F70101020000000
  %483 = and i32 %479, 255
  %484 = uitofp i32 %483 to float
  %485 = fmul fast float %484, 0x3F70101020000000
  %486 = lshr i32 %479, 8
  %487 = and i32 %486, 255
  %488 = uitofp i32 %487 to float
  %489 = fmul fast float %488, 0x3F70101020000000
  %490 = lshr i32 %479, 16
  %491 = and i32 %490, 255
  %492 = uitofp i32 %491 to float
  %493 = fmul fast float %492, 0x3F70101020000000
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = lshr i32 %495, 24
  %497 = uitofp i32 %496 to float
  %498 = fmul fast float %497, 0x3F70101020000000
  %499 = and i32 %495, 255
  %500 = uitofp i32 %499 to float
  %501 = fmul fast float %500, 0x3F70101020000000
  %502 = lshr i32 %495, 8
  %503 = and i32 %502, 255
  %504 = uitofp i32 %503 to float
  %505 = fmul fast float %504, 0x3F70101020000000
  %506 = lshr i32 %495, 16
  %507 = and i32 %506, 255
  %508 = uitofp i32 %507 to float
  %509 = fmul fast float %508, 0x3F70101020000000
  %510 = bitcast float %438 to i32
  %511 = ashr i32 %510, 1
  %512 = sub nsw i32 1597463174, %511
  %513 = bitcast i32 %512 to float
  %514 = fmul fast float %438, 5.000000e-01
  %515 = fmul fast float %513, %513
  %516 = fmul fast float %515, %514
  %517 = fsub fast float 1.500000e+00, %516
  %518 = fmul fast float %513, %438
  %519 = fmul fast float %518, %517
  %520 = bitcast float %439 to i32
  %521 = ashr i32 %520, 1
  %522 = sub nsw i32 1597463174, %521
  %523 = bitcast i32 %522 to float
  %524 = fmul fast float %439, 5.000000e-01
  %525 = fmul fast float %523, %523
  %526 = fmul fast float %525, %524
  %527 = fsub fast float 1.500000e+00, %526
  %528 = fmul fast float %523, %439
  %529 = fmul fast float %528, %527
  %530 = bitcast float %440 to i32
  %531 = ashr i32 %530, 1
  %532 = sub nsw i32 1597463174, %531
  %533 = bitcast i32 %532 to float
  %534 = fmul fast float %440, 5.000000e-01
  %535 = fmul fast float %533, %533
  %536 = fmul fast float %535, %534
  %537 = fsub fast float 1.500000e+00, %536
  %538 = fmul fast float %533, %440
  %539 = fmul fast float %538, %537
  %540 = fsub fast float %519, %501
  %541 = fsub fast float %529, %505
  %542 = fsub fast float %539, %509
  %543 = fmul fast float %540, %471
  %544 = fmul fast float %541, %473
  %545 = fmul fast float %542, %477
  %546 = fadd fast float %543, %485
  %547 = fadd fast float %544, %489
  %548 = fadd fast float %545, %493
  %549 = call float @dx.op.unary.f32(i32 7, float %546)  ; Saturate(value)
  %550 = call float @dx.op.unary.f32(i32 7, float %547)  ; Saturate(value)
  %551 = call float @dx.op.unary.f32(i32 7, float %548)  ; Saturate(value)
  %552 = fmul fast float %549, %549
  %553 = fmul fast float %550, %550
  %554 = fmul fast float %551, %551
  %555 = fsub fast float %552, %438
  %556 = fsub fast float %553, %439
  %557 = fsub fast float %554, %440
  %558 = fmul fast float %555, %462
  %559 = fmul fast float %556, %462
  %560 = fmul fast float %557, %462
  %561 = fadd fast float %558, %438
  %562 = fadd fast float %559, %439
  %563 = fadd fast float %560, %440
  %564 = fadd fast float %482, %449
  %565 = fsub fast float %564, %498
  %566 = call float @dx.op.unary.f32(i32 7, float %565)  ; Saturate(value)
  %567 = fsub fast float %566, %449
  %568 = fmul fast float %567, %462
  %569 = fadd fast float %568, %449
  br label %623

; <label>:570                                     ; preds = %461
  %571 = and i32 %464, 134217728
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %607, label %573

; <label>:573                                     ; preds = %570
  %574 = call float @dx.op.unary.f32(i32 24, float %227)  ; Sqrt(value)
  %575 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %576 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %577 = fadd fast float %574, -5.000000e-01
  %578 = fadd fast float %575, -5.000000e-01
  %579 = fadd fast float %576, -5.000000e-01
  %580 = fmul fast float %577, %462
  %581 = fmul fast float %578, %462
  %582 = fmul fast float %579, %462
  %583 = fadd fast float %580, 5.000000e-01
  %584 = fadd fast float %581, 5.000000e-01
  %585 = fadd fast float %582, 5.000000e-01
  %586 = call float @dx.op.unary.f32(i32 24, float %438)  ; Sqrt(value)
  %587 = call float @dx.op.unary.f32(i32 24, float %439)  ; Sqrt(value)
  %588 = call float @dx.op.unary.f32(i32 24, float %440)  ; Sqrt(value)
  %589 = fmul fast float %583, 2.000000e+00
  %590 = fsub fast float 1.000000e+00, %589
  %591 = fmul fast float %590, %586
  %592 = fadd fast float %591, %589
  %593 = fmul fast float %592, %586
  %594 = fmul fast float %584, 2.000000e+00
  %595 = fsub fast float 1.000000e+00, %594
  %596 = fmul fast float %595, %587
  %597 = fadd fast float %596, %594
  %598 = fmul fast float %597, %587
  %599 = fmul fast float %585, 2.000000e+00
  %600 = fsub fast float 1.000000e+00, %599
  %601 = fmul fast float %600, %588
  %602 = fadd fast float %601, %599
  %603 = fmul fast float %602, %588
  %604 = fmul fast float %593, %593
  %605 = fmul fast float %598, %598
  %606 = fmul fast float %603, %603
  br label %623

; <label>:607                                     ; preds = %570
  %608 = fmul fast float %227, %227
  %609 = fmul fast float %231, %231
  %610 = fmul fast float %235, %235
  %611 = fadd fast float %608, -1.000000e+00
  %612 = fadd fast float %609, -1.000000e+00
  %613 = fadd fast float %610, -1.000000e+00
  %614 = fmul fast float %462, %611
  %615 = fmul fast float %462, %612
  %616 = fmul fast float %462, %613
  %617 = fadd fast float %614, 1.000000e+00
  %618 = fadd fast float %615, 1.000000e+00
  %619 = fadd fast float %616, 1.000000e+00
  %620 = fmul fast float %617, %438
  %621 = fmul fast float %618, %439
  %622 = fmul fast float %619, %440
  br label %623

; <label>:623                                     ; preds = %607, %573, %467, %424
  %624 = phi float [ %569, %467 ], [ %449, %573 ], [ %449, %607 ], [ 0x3FA23C0BE0000000, %424 ]
  %625 = phi float [ %561, %467 ], [ %604, %573 ], [ %620, %607 ], [ 1.000000e+00, %424 ]
  %626 = phi float [ %562, %467 ], [ %605, %573 ], [ %621, %607 ], [ 1.000000e+00, %424 ]
  %627 = phi float [ %563, %467 ], [ %606, %573 ], [ %622, %607 ], [ 1.000000e+00, %424 ]
  %628 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.i32 %628, 1
  %630 = and i32 %629, 1
  %631 = icmp ne i32 %630, 0
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = and i32 %633, 32
  %635 = icmp ne i32 %634, 0
  %636 = and i1 %631, %635
  %637 = select i1 %636, float 1.000000e+00, float %625
  %638 = select i1 %636, float 0x3FD3333340000000, float %626
  %639 = select i1 %636, float 0x3FD3333340000000, float %627
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = and i32 %641, 32
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %713, label %644

; <label>:644                                     ; preds = %623
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = add i32 %648, 0
  %650 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %649, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %651 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %650, %dx.types.Handle %83, float %355, float %356, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %652 = extractvalue %dx.types.ResRet.f32 %651, 0
  %653 = extractvalue %dx.types.ResRet.f32 %651, 1
  %654 = extractvalue %dx.types.ResRet.f32 %651, 2
  %655 = extractvalue %dx.types.ResRet.f32 %651, 3
  %656 = and i32 %646, 255
  %657 = uitofp i32 %656 to float
  %658 = lshr i32 %646, 8
  %659 = and i32 %658, 255
  %660 = uitofp i32 %659 to float
  %661 = lshr i32 %646, 16
  %662 = and i32 %661, 255
  %663 = uitofp i32 %662 to float
  %664 = fmul fast float %663, 0x3F70101000000000
  %665 = fmul fast float %652, %657
  %666 = fadd fast float %665, %660
  %667 = fmul fast float %666, 0x3F70101000000000
  %668 = fadd fast float %653, -5.000000e-01
  %669 = fadd fast float %655, -5.000000e-01
  %670 = fmul fast float %668, %664
  %671 = fmul fast float %669, %664
  %672 = fadd fast float %670, 5.000000e-01
  %673 = fadd fast float %671, 5.000000e-01
  %674 = fmul fast float %672, 2.000000e+00
  %675 = fadd fast float %674, -1.000000e+00
  %676 = fmul fast float %673, 2.000000e+00
  %677 = fadd fast float %676, -1.000000e+00
  %678 = fadd fast float %675, %677
  %679 = fmul fast float %678, 5.000000e-01
  %680 = fsub fast float %675, %677
  %681 = fmul fast float %680, 5.000000e-01
  %682 = call float @dx.op.unary.f32(i32 6, float %679)  ; FAbs(value)
  %683 = fsub fast float 1.000000e+00, %682
  %684 = call float @dx.op.unary.f32(i32 6, float %681)  ; FAbs(value)
  %685 = fsub fast float %683, %684
  %686 = call float @dx.op.dot3.f32(i32 55, float %679, float %681, float %685, float %679, float %681, float %685)  ; Dot3(ax,ay,az,bx,by,bz)
  %687 = call float @dx.op.unary.f32(i32 25, float %686)  ; Rsqrt(value)
  %688 = fmul fast float %679, %687
  %689 = fmul fast float %681, %687
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = and i32 %691, 67108864
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %709, label %694

; <label>:694                                     ; preds = %644
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = and i32 %696, 65535
  %698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %697)  ; LegacyF16ToF32(value)
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = and i32 %700, 65535
  %702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %701)  ; LegacyF16ToF32(value)
  %703 = lshr i32 %696, 16
  %704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %703)  ; LegacyF16ToF32(value)
  %705 = fsub fast float %667, %704
  %706 = fmul fast float %705, %698
  %707 = fadd fast float %706, %702
  %708 = call float @dx.op.unary.f32(i32 7, float %707)  ; Saturate(value)
  br label %709

; <label>:709                                     ; preds = %694, %644
  %710 = phi float [ %708, %694 ], [ %667, %644 ]
  %711 = call float @dx.op.dot2.f32(i32 54, float %688, float %689, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %712 = call float @dx.op.dot2.f32(i32 54, float %688, float %689, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %713

; <label>:713                                     ; preds = %709, %623
  %714 = phi float [ %710, %709 ], [ 0x3FD6666660000000, %623 ]
  %715 = phi float [ %711, %709 ], [ 0.000000e+00, %623 ]
  %716 = phi float [ %712, %709 ], [ 0.000000e+00, %623 ]
  %717 = phi float [ %654, %709 ], [ 1.000000e+00, %623 ]
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = lshr i32 %719, 22
  %721 = shl nuw nsw i32 %720, 5
  %722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %721)  ; LegacyF16ToF32(value)
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = and i32 %724, 64
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %759, label %727

; <label>:727                                     ; preds = %713
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = add i32 %729, 0
  %731 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %730, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = and i32 %733, 131072
  %735 = icmp eq i32 %734, 0
  %736 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %731, %dx.types.Handle %83, float %355, float %356, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %737 = extractvalue %dx.types.ResRet.f32 %736, 0
  %738 = extractvalue %dx.types.ResRet.f32 %736, 1
  %739 = extractvalue %dx.types.ResRet.f32 %736, 2
  %740 = fmul fast float %737, %216
  %741 = fmul fast float %738, %219
  %742 = fmul fast float %739, %222
  br i1 %735, label %749, label %743

; <label>:743                                     ; preds = %727
  %744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %745 = extractvalue %dx.types.CBufRet.f32 %744, 0
  %746 = fmul fast float %745, %740
  %747 = fmul fast float %745, %741
  %748 = fmul fast float %745, %742
  br label %749

; <label>:749                                     ; preds = %743, %727
  %750 = phi float [ %746, %743 ], [ %740, %727 ]
  %751 = phi float [ %747, %743 ], [ %741, %727 ]
  %752 = phi float [ %748, %743 ], [ %742, %727 ]
  %753 = fmul fast float %750, %722
  %754 = select i1 %197, float %753, float %750
  %755 = call float @dx.op.dot3.f32(i32 55, float %754, float %751, float %752, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %756 = select i1 %197, float 0.000000e+00, float %750
  %757 = select i1 %197, float %755, float %751
  %758 = select i1 %197, float 0.000000e+00, float %752
  br label %759

; <label>:759                                     ; preds = %749, %713
  %760 = phi float [ %756, %749 ], [ 0.000000e+00, %713 ]
  %761 = phi float [ %757, %749 ], [ 0.000000e+00, %713 ]
  %762 = phi float [ %758, %749 ], [ 0.000000e+00, %713 ]
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = and i32 %764, 1024
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %795, label %767

; <label>:767                                     ; preds = %759
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = and i32 %769, 255
  %771 = uitofp i32 %770 to float
  %772 = fmul fast float %771, 0x3F70101020000000
  %773 = lshr i32 %769, 8
  %774 = and i32 %773, 255
  %775 = uitofp i32 %774 to float
  %776 = fmul fast float %775, 0x3F70101020000000
  %777 = lshr i32 %769, 16
  %778 = and i32 %777, 255
  %779 = uitofp i32 %778 to float
  %780 = fmul fast float %779, 0x3F70101020000000
  %781 = fmul fast float %772, %772
  %782 = fmul fast float %776, %776
  %783 = fmul fast float %780, %780
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = add i32 %785, 0
  %787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %786, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %788 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %787, %dx.types.Handle %84, float %355, float %356, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %789 = extractvalue %dx.types.ResRet.f32 %788, 0
  %790 = extractvalue %dx.types.ResRet.f32 %788, 1
  %791 = extractvalue %dx.types.ResRet.f32 %788, 2
  %792 = fmul fast float %781, %789
  %793 = fmul fast float %782, %790
  %794 = fmul fast float %783, %791
  br label %795

; <label>:795                                     ; preds = %767, %759
  %796 = phi float [ %792, %767 ], [ 0.000000e+00, %759 ]
  %797 = phi float [ %793, %767 ], [ 0.000000e+00, %759 ]
  %798 = phi float [ %794, %767 ], [ 0.000000e+00, %759 ]
  %799 = fcmp fast ogt float %796, 0.000000e+00
  %800 = fcmp fast ogt float %797, 0.000000e+00
  %801 = fcmp fast ogt float %798, 0.000000e+00
  %802 = call float @dx.op.unary.f32(i32 23, float %796)  ; Log(value)
  %803 = call float @dx.op.unary.f32(i32 23, float %797)  ; Log(value)
  %804 = call float @dx.op.unary.f32(i32 23, float %798)  ; Log(value)
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = lshr i32 %806, 7
  %808 = and i32 %807, 32752
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = fmul fast float %802, 0xBFE62E4300000000
  %811 = fmul fast float %810, %809
  %812 = fmul fast float %803, 0xBFE62E4300000000
  %813 = fmul fast float %812, %809
  %814 = fmul fast float %804, 0xBFE62E4300000000
  %815 = fmul fast float %814, %809
  %816 = select i1 %799, float %811, float 1.270000e+02
  %817 = select i1 %800, float %813, float 1.270000e+02
  %818 = select i1 %801, float %815, float 1.270000e+02
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = and i32 %820, 10240
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %865, label %823

; <label>:823                                     ; preds = %795
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = add i32 %825, 0
  %827 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %826, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %828 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %827, %dx.types.Handle %84, float %355, float %356, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %829 = extractvalue %dx.types.ResRet.f32 %828, 1
  %830 = extractvalue %dx.types.ResRet.f32 %828, 3
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = and i32 %832, 1048576
  %834 = icmp ne i32 %833, 0
  %835 = and i32 %832, 8192
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %851, label %837

; <label>:837                                     ; preds = %823
  %838 = extractvalue %dx.types.ResRet.f32 %828, 2
  %839 = select i1 %834, float %838, float %829
  %840 = extractvalue %dx.types.ResRet.f32 %828, 0
  %841 = select i1 %834, float %840, float %829
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = lshr i32 %843, 16
  %845 = and i32 %844, 255
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %846, 0x3F80101020000000
  %848 = fmul fast float %847, %841
  %849 = fmul fast float %847, %829
  %850 = fmul fast float %847, %839
  br label %851

; <label>:851                                     ; preds = %837, %823
  %852 = phi float [ %848, %837 ], [ 0.000000e+00, %823 ]
  %853 = phi float [ %849, %837 ], [ 0.000000e+00, %823 ]
  %854 = phi float [ %850, %837 ], [ 0.000000e+00, %823 ]
  %855 = and i32 %832, 2048
  %856 = icmp eq i32 %855, 0
  br i1 %856, label %865, label %857

; <label>:857                                     ; preds = %851
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = shl i32 %859, 4
  %861 = and i32 %860, 32752
  %862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %861)  ; LegacyF16ToF32(value)
  %863 = fmul fast float %862, %830
  %864 = call float @dx.op.binary.f32(i32 35, float %863, float 0x3F70101020000000)  ; FMax(a,b)
  br label %865

; <label>:865                                     ; preds = %857, %851, %795
  %866 = phi float [ %852, %857 ], [ %852, %851 ], [ 0.000000e+00, %795 ]
  %867 = phi float [ %853, %857 ], [ %853, %851 ], [ 0.000000e+00, %795 ]
  %868 = phi float [ %854, %857 ], [ %854, %851 ], [ 0.000000e+00, %795 ]
  %869 = phi float [ %864, %857 ], [ 0x3F70101020000000, %851 ], [ 0x3F70101020000000, %795 ]
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = and i32 %871, 255
  %873 = uitofp i32 %872 to float
  %874 = lshr i32 %871, 8
  %875 = and i32 %874, 255
  %876 = uitofp i32 %875 to float
  %877 = call float @dx.op.dot3.f32(i32 55, float %637, float %638, float %639, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %878 = fmul fast float %876, %877
  %879 = fadd fast float %878, %873
  %880 = fmul fast float %879, 0x3F70101020000000
  %881 = call float @dx.op.unary.f32(i32 7, float %880)  ; Saturate(value)
  br label %882

; <label>:882                                     ; preds = %865, %261
  %883 = phi float [ 0.000000e+00, %261 ], [ %715, %865 ]
  %884 = phi float [ 0.000000e+00, %261 ], [ %716, %865 ]
  %885 = phi float [ 0.000000e+00, %261 ], [ %637, %865 ]
  %886 = phi float [ 0.000000e+00, %261 ], [ %638, %865 ]
  %887 = phi float [ 0.000000e+00, %261 ], [ %639, %865 ]
  %888 = phi float [ 0.000000e+00, %261 ], [ %866, %865 ]
  %889 = phi float [ 0.000000e+00, %261 ], [ %867, %865 ]
  %890 = phi float [ 0.000000e+00, %261 ], [ %868, %865 ]
  %891 = phi float [ 0.000000e+00, %261 ], [ %760, %865 ]
  %892 = phi float [ 0.000000e+00, %261 ], [ %761, %865 ]
  %893 = phi float [ 0.000000e+00, %261 ], [ %762, %865 ]
  %894 = phi float [ 0.000000e+00, %261 ], [ %816, %865 ]
  %895 = phi float [ 0.000000e+00, %261 ], [ %817, %865 ]
  %896 = phi float [ 0.000000e+00, %261 ], [ %818, %865 ]
  %897 = phi float [ 0.000000e+00, %261 ], [ %624, %865 ]
  %898 = phi float [ 0.000000e+00, %261 ], [ %425, %865 ]
  %899 = phi float [ 0.000000e+00, %261 ], [ %714, %865 ]
  %900 = phi float [ 0.000000e+00, %261 ], [ %717, %865 ]
  %901 = phi float [ 0.000000e+00, %261 ], [ %869, %865 ]
  %902 = phi float [ 0.000000e+00, %261 ], [ %881, %865 ]
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 0
  %905 = call float @dx.op.dot2.f32(i32 54, float %883, float %884, float %883, float %884)  ; Dot2(ax,ay,bx,by)
  %906 = fmul fast float %905, 0x3FE3333340000000
  %907 = fsub fast float 1.000000e+00, %906
  %908 = call float @dx.op.dot3.f32(i32 55, float %883, float %884, float %907, float %883, float %884, float %907)  ; Dot3(ax,ay,az,bx,by,bz)
  %909 = call float @dx.op.unary.f32(i32 25, float %908)  ; Rsqrt(value)
  %910 = fmul fast float %909, %883
  %911 = fmul fast float %909, %884
  %912 = fmul fast float %907, %909
  %913 = fmul fast float %912, %90
  %914 = fmul fast float %912, %91
  %915 = fmul fast float %912, %92
  %916 = fmul fast float %910, %66
  %917 = fmul fast float %910, %67
  %918 = fmul fast float %910, %68
  %919 = fmul fast float %95, %69
  %920 = fmul fast float %919, %911
  %921 = fmul fast float %98, %69
  %922 = fmul fast float %921, %911
  %923 = fmul fast float %101, %69
  %924 = fmul fast float %923, %911
  %925 = fadd fast float %920, %916
  %926 = fmul fast float %925, %89
  %927 = fadd fast float %926, %913
  %928 = fadd fast float %922, %917
  %929 = fmul fast float %928, %89
  %930 = fadd fast float %929, %914
  %931 = fadd fast float %924, %918
  %932 = fmul fast float %931, %89
  %933 = fadd fast float %932, %915
  %934 = call float @dx.op.dot3.f32(i32 55, float %927, float %930, float %933, float %927, float %930, float %933)  ; Dot3(ax,ay,az,bx,by,bz)
  %935 = call float @dx.op.unary.f32(i32 25, float %934)  ; Rsqrt(value)
  %936 = fmul fast float %927, %935
  %937 = fmul fast float %930, %935
  %938 = fmul fast float %933, %935
  %939 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %940 = call float @dx.op.unary.f32(i32 83, float %136)  ; DerivCoarseX(value)
  %941 = call float @dx.op.unary.f32(i32 83, float %137)  ; DerivCoarseX(value)
  %942 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %943 = call float @dx.op.unary.f32(i32 84, float %136)  ; DerivCoarseY(value)
  %944 = call float @dx.op.unary.f32(i32 84, float %137)  ; DerivCoarseY(value)
  %945 = fadd fast float %939, %135
  %946 = fadd fast float %940, %136
  %947 = fadd fast float %941, %137
  %948 = fadd fast float %942, %135
  %949 = fadd fast float %943, %136
  %950 = fadd fast float %944, %137
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 0
  %953 = extractvalue %dx.types.CBufRet.f32 %951, 1
  %954 = extractvalue %dx.types.CBufRet.f32 %951, 2
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 2
  %957 = extractvalue %dx.types.CBufRet.f32 %955, 3
  %958 = fmul fast float %952, %87
  %959 = fmul fast float %958, %956
  %960 = fmul fast float %953, %88
  %961 = fmul fast float %960, %957
  %962 = fptoui float %959 to i32
  %963 = fptoui float %961 to i32
  %964 = fadd fast float %952, -1.000000e+00
  %965 = fadd fast float %953, -1.000000e+00
  %966 = fptoui float %964 to i32
  %967 = fptoui float %965 to i32
  %968 = call i32 @dx.op.binary.i32(i32 40, i32 %962, i32 %966)  ; UMin(a,b)
  %969 = call i32 @dx.op.binary.i32(i32 40, i32 %963, i32 %967)  ; UMin(a,b)
  %970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.f32 %970, 2
  %972 = extractvalue %dx.types.CBufRet.f32 %970, 3
  %973 = fmul fast float %971, %78
  %974 = fsub fast float %973, %972
  %975 = fadd fast float %954, -1.000000e+00
  %976 = call float @dx.op.binary.f32(i32 36, float %974, float %975)  ; FMin(a,b)
  %977 = fptoui float %976 to i32
  %978 = fptoui float %952 to i32
  %979 = fptoui float %953 to i32
  %980 = mul i32 %977, %979
  %981 = add i32 %980, %969
  %982 = mul i32 %981, %978
  %983 = add i32 %982, %968
  %984 = shl i32 %983, 2
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = and i32 %986, 1023
  %988 = lshr i32 %986, 10
  %989 = icmp eq i32 %987, 0
  br i1 %989, label %1493, label %990

; <label>:990                                     ; preds = %882
  %991 = and i32 %986, 1023
  br label %992

; <label>:992                                     ; preds = %1124, %990
  %993 = phi i32 [ %1074, %1124 ], [ 0, %990 ]
  %994 = phi float [ %1125, %1124 ], [ 0.000000e+00, %990 ]
  %995 = phi float [ %1126, %1124 ], [ %904, %990 ]
  %996 = phi float [ %1127, %1124 ], [ %902, %990 ]
  %997 = phi float [ %1128, %1124 ], [ %894, %990 ]
  %998 = phi float [ %1129, %1124 ], [ %895, %990 ]
  %999 = phi float [ %1130, %1124 ], [ %896, %990 ]
  %1000 = phi float [ %1131, %1124 ], [ 0.000000e+00, %990 ]
  %1001 = phi float [ %1132, %1124 ], [ 0.000000e+00, %990 ]
  %1002 = phi float [ %1133, %1124 ], [ %888, %990 ]
  %1003 = phi float [ %1134, %1124 ], [ %889, %990 ]
  %1004 = phi float [ %1135, %1124 ], [ %890, %990 ]
  %1005 = phi float [ %1136, %1124 ], [ %891, %990 ]
  %1006 = phi float [ %1137, %1124 ], [ %892, %990 ]
  %1007 = phi float [ %1138, %1124 ], [ %893, %990 ]
  %1008 = phi float [ %1139, %1124 ], [ %936, %990 ]
  %1009 = phi float [ %1140, %1124 ], [ %937, %990 ]
  %1010 = phi float [ %1141, %1124 ], [ %938, %990 ]
  %1011 = phi float [ %1142, %1124 ], [ %900, %990 ]
  %1012 = phi float [ %1143, %1124 ], [ %899, %990 ]
  %1013 = phi float [ %1144, %1124 ], [ 0.000000e+00, %990 ]
  %1014 = phi float [ %1145, %1124 ], [ %897, %990 ]
  %1015 = phi float [ %1146, %1124 ], [ %885, %990 ]
  %1016 = phi float [ %1147, %1124 ], [ %886, %990 ]
  %1017 = phi float [ %1148, %1124 ], [ %887, %990 ]
  %1018 = add nuw nsw i32 %993, %988
  %1019 = shl i32 %1018, 2
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = shl i32 %1021, 8
  %1023 = or i32 %1022, 48
  %1024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.ResRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.ResRet.f32 %1024, 2
  %1028 = extractvalue %dx.types.ResRet.f32 %1024, 3
  %1029 = or i32 %1022, 64
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = extractvalue %dx.types.ResRet.i32 %1030, 1
  %1033 = or i32 %1022, 80
  %1034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 2
  %1036 = extractvalue %dx.types.ResRet.f32 %1034, 3
  %1037 = or i32 %1022, 96
  %1038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.f32 %1038, 0
  %1040 = extractvalue %dx.types.ResRet.f32 %1038, 1
  %1041 = extractvalue %dx.types.ResRet.f32 %1038, 2
  %1042 = extractvalue %dx.types.ResRet.f32 %1038, 3
  %1043 = or i32 %1022, 112
  %1044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 2
  %1046 = or i32 %1022, 128
  %1047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.ResRet.f32 %1047, 1
  %1050 = extractvalue %dx.types.ResRet.f32 %1047, 2
  %1051 = extractvalue %dx.types.ResRet.f32 %1047, 3
  %1052 = or i32 %1022, 144
  %1053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.ResRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.ResRet.f32 %1053, 2
  %1057 = extractvalue %dx.types.ResRet.f32 %1053, 3
  %1058 = or i32 %1022, 160
  %1059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.ResRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.ResRet.f32 %1059, 2
  %1063 = extractvalue %dx.types.ResRet.f32 %1059, 3
  %1064 = or i32 %1022, 192
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = or i32 %1022, 208
  %1068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.f32 %1068, 0
  %1070 = or i32 %1022, 248
  %1071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.ResRet.f32 %1071, 1
  %1074 = add nuw nsw i32 %993, 1
  %1075 = bitcast float %1028 to i32
  %1076 = and i32 %1075, 512
  %1077 = icmp eq i32 %1076, 0
  %1078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.ResRet.f32 %1078, 1
  %1081 = extractvalue %dx.types.ResRet.f32 %1078, 2
  %1082 = extractvalue %dx.types.ResRet.f32 %1078, 3
  %1083 = call float @dx.op.dot4.f32(i32 56, float %1079, float %1080, float %1081, float %1082, float %135, float %136, float %137, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1084 = or i32 %1022, 16
  %1085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.f32 %1085, 0
  %1087 = extractvalue %dx.types.ResRet.f32 %1085, 1
  %1088 = extractvalue %dx.types.ResRet.f32 %1085, 2
  %1089 = extractvalue %dx.types.ResRet.f32 %1085, 3
  %1090 = call float @dx.op.dot4.f32(i32 56, float %1086, float %1087, float %1088, float %1089, float %135, float %136, float %137, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1091 = or i32 %1022, 32
  %1092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.ResRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.ResRet.f32 %1092, 2
  %1096 = extractvalue %dx.types.ResRet.f32 %1092, 3
  %1097 = call float @dx.op.dot4.f32(i32 56, float %1093, float %1094, float %1095, float %1096, float %135, float %136, float %137, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1098 = call float @dx.op.unary.f32(i32 27, float %1083)  ; Round_ni(value)
  %1099 = call float @dx.op.unary.f32(i32 6, float %1098)  ; FAbs(value)
  %1100 = call float @dx.op.unary.f32(i32 27, float %1090)  ; Round_ni(value)
  %1101 = call float @dx.op.unary.f32(i32 6, float %1100)  ; FAbs(value)
  %1102 = call float @dx.op.unary.f32(i32 6, float %1097)  ; FAbs(value)
  %1103 = call float @dx.op.unary.f32(i32 27, float %1102)  ; Round_ni(value)
  %1104 = fadd fast float %1101, %1099
  %1105 = fadd fast float %1104, %1103
  %1106 = fcmp fast oeq float %1105, 0.000000e+00
  %1107 = call float @dx.op.dot4.f32(i32 56, float %1079, float %1080, float %1081, float %1082, float %945, float %946, float %947, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1108 = call float @dx.op.dot4.f32(i32 56, float %1086, float %1087, float %1088, float %1089, float %945, float %946, float %947, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1109 = call float @dx.op.dot4.f32(i32 56, float %1079, float %1080, float %1081, float %1082, float %948, float %949, float %950, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1110 = call float @dx.op.dot4.f32(i32 56, float %1086, float %1087, float %1088, float %1089, float %948, float %949, float %950, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1111 = fsub fast float %1107, %1083
  %1112 = fsub fast float %1109, %1083
  %1113 = fsub fast float %1108, %1090
  %1114 = fsub fast float %1110, %1090
  %1115 = call float @dx.op.dot3.f32(i32 55, float %1025, float %1026, float %1027, float %90, float %91, float %92)  ; Dot3(ax,ay,az,bx,by,bz)
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 2
  %1118 = fadd fast float %1117, %1115
  %1119 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1116, 0
  %1121 = fcmp fast ogt float %1119, %1120
  %1122 = and i1 %1106, %1121
  %1123 = and i1 %1077, %1122
  br i1 %1123, label %1150, label %1124

; <label>:1124                                    ; preds = %1479, %1231, %1150, %992
  %1125 = phi float [ %994, %1150 ], [ %1234, %1231 ], [ %1234, %1479 ], [ %994, %992 ]
  %1126 = phi float [ %995, %1150 ], [ %995, %1231 ], [ %1455, %1479 ], [ %995, %992 ]
  %1127 = phi float [ %996, %1150 ], [ %996, %1231 ], [ %1453, %1479 ], [ %996, %992 ]
  %1128 = phi float [ %997, %1150 ], [ %997, %1231 ], [ %1431, %1479 ], [ %997, %992 ]
  %1129 = phi float [ %998, %1150 ], [ %998, %1231 ], [ %1432, %1479 ], [ %998, %992 ]
  %1130 = phi float [ %999, %1150 ], [ %999, %1231 ], [ %1433, %1479 ], [ %999, %992 ]
  %1131 = phi float [ %1000, %1150 ], [ %1000, %1231 ], [ %1358, %1479 ], [ %1000, %992 ]
  %1132 = phi float [ %1001, %1150 ], [ %1001, %1231 ], [ %1356, %1479 ], [ %1001, %992 ]
  %1133 = phi float [ %1002, %1150 ], [ %1002, %1231 ], [ %1401, %1479 ], [ %1002, %992 ]
  %1134 = phi float [ %1003, %1150 ], [ %1003, %1231 ], [ %1402, %1479 ], [ %1003, %992 ]
  %1135 = phi float [ %1004, %1150 ], [ %1004, %1231 ], [ %1403, %1479 ], [ %1004, %992 ]
  %1136 = phi float [ %1005, %1150 ], [ %1005, %1231 ], [ %1489, %1479 ], [ %1005, %992 ]
  %1137 = phi float [ %1006, %1150 ], [ %1006, %1231 ], [ %1490, %1479 ], [ %1006, %992 ]
  %1138 = phi float [ %1007, %1150 ], [ %1007, %1231 ], [ %1491, %1479 ], [ %1007, %992 ]
  %1139 = phi float [ %1008, %1150 ], [ %1008, %1231 ], [ %1337, %1479 ], [ %1008, %992 ]
  %1140 = phi float [ %1009, %1150 ], [ %1009, %1231 ], [ %1338, %1479 ], [ %1009, %992 ]
  %1141 = phi float [ %1010, %1150 ], [ %1010, %1231 ], [ %1339, %1479 ], [ %1010, %992 ]
  %1142 = phi float [ %1011, %1150 ], [ %1011, %1231 ], [ %1411, %1479 ], [ %1011, %992 ]
  %1143 = phi float [ %1012, %1150 ], [ %1012, %1231 ], [ %1408, %1479 ], [ %1012, %992 ]
  %1144 = phi float [ %1013, %1150 ], [ %1013, %1231 ], [ %1405, %1479 ], [ %1013, %992 ]
  %1145 = phi float [ %1014, %1150 ], [ %1014, %1231 ], [ %1354, %1479 ], [ %1014, %992 ]
  %1146 = phi float [ %1015, %1150 ], [ %1015, %1231 ], [ %1349, %1479 ], [ %1015, %992 ]
  %1147 = phi float [ %1016, %1150 ], [ %1016, %1231 ], [ %1350, %1479 ], [ %1016, %992 ]
  %1148 = phi float [ %1017, %1150 ], [ %1017, %1231 ], [ %1351, %1479 ], [ %1017, %992 ]
  %1149 = icmp eq i32 %1074, %991
  br i1 %1149, label %1492, label %992

; <label>:1150                                    ; preds = %992
  %1151 = extractvalue %dx.types.ResRet.f32 %1044, 3
  %1152 = extractvalue %dx.types.ResRet.f32 %1044, 1
  %1153 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1154 = extractvalue %dx.types.ResRet.f32 %1034, 1
  %1155 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1156 = extractvalue %dx.types.ResRet.i32 %1030, 3
  %1157 = extractvalue %dx.types.ResRet.i32 %1030, 2
  %1158 = add i32 %1156, 0
  %1159 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1158, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1160 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1161 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1159, %dx.types.Handle %1160, float %1083, float %1090, float undef, float undef, i32 0, i32 0, i32 undef, float %1111, float %1113, float undef, float %1112, float %1114, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1162 = extractvalue %dx.types.ResRet.f32 %1161, 0
  %1163 = fmul fast float %1162, %1155
  %1164 = fadd fast float %1163, %1154
  %1165 = call float @dx.op.unary.f32(i32 7, float %1164)  ; Saturate(value)
  %1166 = fmul fast float %1083, %1039
  %1167 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %1090, float %1166)  ; FMad(a,b,c)
  %1168 = fadd fast float %1167, %1153
  %1169 = fmul fast float %1083, %1041
  %1170 = call float @dx.op.tertiary.f32(i32 46, float %1042, float %1090, float %1169)  ; FMad(a,b,c)
  %1171 = fadd fast float %1170, %1152
  %1172 = fmul fast float %1111, %1039
  %1173 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %1113, float %1172)  ; FMad(a,b,c)
  %1174 = fmul fast float %1111, %1041
  %1175 = call float @dx.op.tertiary.f32(i32 46, float %1042, float %1113, float %1174)  ; FMad(a,b,c)
  %1176 = fmul fast float %1112, %1039
  %1177 = call float @dx.op.tertiary.f32(i32 46, float %1040, float %1114, float %1176)  ; FMad(a,b,c)
  %1178 = fmul fast float %1112, %1041
  %1179 = call float @dx.op.tertiary.f32(i32 46, float %1042, float %1114, float %1178)  ; FMad(a,b,c)
  %1180 = add i32 %1157, 0
  %1181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1180, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1182 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1181, %dx.types.Handle %1160, float %1168, float %1171, float undef, float undef, i32 0, i32 0, i32 undef, float %1173, float %1175, float undef, float %1177, float %1179, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1183 = extractvalue %dx.types.ResRet.f32 %1182, 0
  %1184 = and i32 %1075, 1024
  %1185 = icmp ne i32 %1184, 0
  %1186 = fcmp fast ogt float %1183, 0x3FE0101020000000
  %1187 = uitofp i1 %1186 to float
  %1188 = select i1 %1185, float %1187, float %1183
  %1189 = and i32 %1075, 8192
  %1190 = icmp ne i32 %1189, 0
  %1191 = select i1 %1190, float %1151, float 1.000000e+00
  %1192 = fmul fast float %1083, 2.000000e+00
  %1193 = fadd fast float %1192, -1.000000e+00
  %1194 = call float @dx.op.unary.f32(i32 6, float %1193)  ; FAbs(value)
  %1195 = fmul fast float %1194, %1072
  %1196 = fsub fast float %1195, %1072
  %1197 = call float @dx.op.unary.f32(i32 7, float %1196)  ; Saturate(value)
  %1198 = fmul fast float %1090, 2.000000e+00
  %1199 = fadd fast float %1198, -1.000000e+00
  %1200 = call float @dx.op.unary.f32(i32 6, float %1199)  ; FAbs(value)
  %1201 = fmul fast float %1200, %1073
  %1202 = fsub fast float %1201, %1073
  %1203 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  %1204 = fmul fast float %1102, %1035
  %1205 = fsub fast float %1204, %1035
  %1206 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  %1207 = fmul fast float %1165, %1191
  %1208 = fmul fast float %1207, %1162
  %1209 = fmul fast float %1208, %1197
  %1210 = fmul fast float %1209, %1188
  %1211 = fmul fast float %1210, %1203
  %1212 = fmul fast float %1211, %1206
  %1213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.f32 %1213, 1
  %1215 = extractvalue %dx.types.CBufRet.f32 %1213, 0
  %1216 = fsub fast float %1119, %1215
  %1217 = fmul fast float %1216, %1214
  %1218 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1219 = fmul fast float %1212, %1036
  %1220 = fadd fast float %1212, %1036
  %1221 = fmul fast float %1220, %1045
  %1222 = fsub fast float %1221, %1045
  %1223 = call float @dx.op.unary.f32(i32 7, float %1222)  ; Saturate(value)
  %1224 = and i32 %1075, 128
  %1225 = icmp ne i32 %1224, 0
  %1226 = select i1 %1225, float %1223, float %1219
  %1227 = fmul fast float %1226, %1218
  %1228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1229 = extractvalue %dx.types.CBufRet.f32 %1228, 0
  %1230 = fcmp fast ugt float %1227, %1229
  br i1 %1230, label %1231, label %1124

; <label>:1231                                    ; preds = %1150
  %1232 = select i1 %1190, float %1227, float 0.000000e+00
  %1233 = fadd fast float %1232, %994
  %1234 = call float @dx.op.unary.f32(i32 7, float %1233)  ; Saturate(value)
  br i1 %1190, label %1124, label %1235

; <label>:1235                                    ; preds = %1231
  %1236 = and i32 %1075, 4
  %1237 = and i32 %1075, 8
  %1238 = add i32 %1031, 0
  %1239 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1238, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1241 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1239, %dx.types.Handle %1240, float %1168, float %1171, float undef, float undef, i32 0, i32 0, i32 undef, float %1173, float %1175, float undef, float %1177, float %1179, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 0
  %1243 = extractvalue %dx.types.ResRet.f32 %1241, 1
  %1244 = extractvalue %dx.types.ResRet.f32 %1241, 2
  %1245 = extractvalue %dx.types.ResRet.f32 %1241, 3
  %1246 = bitcast float %1057 to i32
  %1247 = and i32 %1246, 255
  %1248 = uitofp i32 %1247 to float
  %1249 = lshr i32 %1246, 8
  %1250 = and i32 %1249, 255
  %1251 = uitofp i32 %1250 to float
  %1252 = fmul fast float %1245, %1248
  %1253 = fadd fast float %1252, %1251
  %1254 = fmul fast float %1253, 0x3F70101000000000
  %1255 = add i32 %1032, 0
  %1256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1255, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1257 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1256, %dx.types.Handle %1240, float %1168, float %1171, float undef, float undef, i32 0, i32 0, i32 undef, float %1173, float %1175, float undef, float %1177, float %1179, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1258 = extractvalue %dx.types.ResRet.f32 %1257, 0
  %1259 = extractvalue %dx.types.ResRet.f32 %1257, 1
  %1260 = extractvalue %dx.types.ResRet.f32 %1257, 2
  %1261 = extractvalue %dx.types.ResRet.f32 %1257, 3
  %1262 = bitcast float %1051 to i32
  %1263 = and i32 %1262, 255
  %1264 = uitofp i32 %1263 to float
  %1265 = lshr i32 %1262, 8
  %1266 = and i32 %1265, 255
  %1267 = uitofp i32 %1266 to float
  %1268 = lshr i32 %1262, 16
  %1269 = and i32 %1268, 255
  %1270 = uitofp i32 %1269 to float
  %1271 = fmul fast float %1270, 0x3F70101000000000
  %1272 = fmul fast float %1258, %1264
  %1273 = fadd fast float %1272, %1267
  %1274 = fmul fast float %1273, 0x3F70101000000000
  %1275 = fadd fast float %1259, -5.000000e-01
  %1276 = fadd fast float %1261, -5.000000e-01
  %1277 = fmul fast float %1275, %1271
  %1278 = fmul fast float %1276, %1271
  %1279 = fadd fast float %1277, 5.000000e-01
  %1280 = fadd fast float %1278, 5.000000e-01
  %1281 = fmul fast float %1242, %1060
  %1282 = fmul fast float %1243, %1061
  %1283 = fmul fast float %1244, %1062
  %1284 = fmul fast float %1279, 2.000000e+00
  %1285 = fadd fast float %1284, -1.000000e+00
  %1286 = fmul fast float %1280, 2.000000e+00
  %1287 = fadd fast float %1286, -1.000000e+00
  %1288 = fadd fast float %1285, %1287
  %1289 = fmul fast float %1288, 5.000000e-01
  %1290 = fsub fast float %1285, %1287
  %1291 = fmul fast float %1290, 5.000000e-01
  %1292 = call float @dx.op.unary.f32(i32 6, float %1289)  ; FAbs(value)
  %1293 = fsub fast float 1.000000e+00, %1292
  %1294 = call float @dx.op.unary.f32(i32 6, float %1291)  ; FAbs(value)
  %1295 = fsub fast float %1293, %1294
  %1296 = call float @dx.op.dot3.f32(i32 55, float %1289, float %1291, float %1295, float %1289, float %1291, float %1295)  ; Dot3(ax,ay,az,bx,by,bz)
  %1297 = call float @dx.op.unary.f32(i32 25, float %1296)  ; Rsqrt(value)
  %1298 = fmul fast float %1289, %1297
  %1299 = fmul fast float %1291, %1297
  %1300 = fmul fast float %1297, %1295
  %1301 = fmul fast float %1300, %1025
  %1302 = fmul fast float %1300, %1026
  %1303 = fmul fast float %1300, %1027
  %1304 = fmul fast float %1298, %1048
  %1305 = fmul fast float %1298, %1049
  %1306 = fmul fast float %1298, %1050
  %1307 = fadd fast float %1304, %1301
  %1308 = fadd fast float %1305, %1302
  %1309 = fadd fast float %1306, %1303
  %1310 = fmul fast float %1299, %1054
  %1311 = fmul fast float %1299, %1055
  %1312 = fmul fast float %1299, %1056
  %1313 = fadd fast float %1307, %1310
  %1314 = fadd fast float %1308, %1311
  %1315 = fadd fast float %1309, %1312
  %1316 = call float @dx.op.dot3.f32(i32 55, float %1313, float %1314, float %1315, float %1313, float %1314, float %1315)  ; Dot3(ax,ay,az,bx,by,bz)
  %1317 = call float @dx.op.unary.f32(i32 25, float %1316)  ; Rsqrt(value)
  %1318 = fmul fast float %1313, %1317
  %1319 = fmul fast float %1314, %1317
  %1320 = fmul fast float %1315, %1317
  %1321 = icmp ne i32 %1237, 0
  %1322 = select i1 %1321, float 1.000000e+00, float 0.000000e+00
  %1323 = fmul fast float %1227, %1322
  %1324 = and i32 %1075, 1
  %1325 = icmp eq i32 %1324, 0
  br i1 %1325, label %1326, label %1330

; <label>:1326                                    ; preds = %1235
  %1327 = fsub fast float %1318, %1008
  %1328 = fsub fast float %1319, %1009
  %1329 = fsub fast float %1320, %1010
  br label %1330

; <label>:1330                                    ; preds = %1326, %1235
  %1331 = phi float [ %1327, %1326 ], [ %1318, %1235 ]
  %1332 = phi float [ %1328, %1326 ], [ %1319, %1235 ]
  %1333 = phi float [ %1329, %1326 ], [ %1320, %1235 ]
  %1334 = fmul float %1333, %1323
  %1335 = fmul float %1332, %1323
  %1336 = fmul float %1331, %1323
  %1337 = fadd fast float %1336, %1008
  %1338 = fadd fast float %1335, %1009
  %1339 = fadd fast float %1334, %1010
  %1340 = icmp ne i32 %1236, 0
  %1341 = select i1 %1340, float 1.000000e+00, float 0.000000e+00
  %1342 = fmul fast float %1227, %1341
  %1343 = fsub fast float %1281, %1015
  %1344 = fsub fast float %1282, %1016
  %1345 = fsub fast float %1283, %1017
  %1346 = fmul fast float %1343, %1342
  %1347 = fmul fast float %1344, %1342
  %1348 = fmul fast float %1345, %1342
  %1349 = fadd fast float %1346, %1015
  %1350 = fadd fast float %1347, %1016
  %1351 = fadd fast float %1348, %1017
  %1352 = fsub fast float %1254, %1014
  %1353 = fmul fast float %1352, %1342
  %1354 = fadd fast float %1353, %1014
  %1355 = fmul fast float %1342, %1001
  %1356 = fsub fast float %1001, %1355
  %1357 = fmul fast float %1342, %1000
  %1358 = fsub fast float %1000, %1357
  %1359 = bitcast float %1069 to i32
  %1360 = lshr i32 %1359, 16
  %1361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1360)  ; LegacyF16ToF32(value)
  %1362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.i32 %1362, 0
  %1364 = and i32 %1363, 1
  %1365 = icmp eq i32 %1364, 0
  br i1 %1365, label %1366, label %1391

; <label>:1366                                    ; preds = %1330
  %1367 = fadd fast float %1254, 0xBFB99999A0000000
  %1368 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  %1369 = fmul fast float %1368, 0x3FF1C71C80000000
  %1370 = fsub fast float 1.000000e+00, %1369
  %1371 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1372 = fmul fast float %1371, %1281
  %1373 = fmul fast float %1371, %1282
  %1374 = fmul fast float %1371, %1283
  %1375 = call float @dx.op.unary.f32(i32 7, float %1372)  ; Saturate(value)
  %1376 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1377 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  %1378 = call float @dx.op.binary.f32(i32 35, float %1376, float %1377)  ; FMax(a,b)
  %1379 = call float @dx.op.binary.f32(i32 35, float %1375, float %1378)  ; FMax(a,b)
  %1380 = fcmp fast ogt float %1379, 0.000000e+00
  %1381 = bitcast float %1379 to i32
  %1382 = sub nsw i32 2129859010, %1381
  %1383 = bitcast i32 %1382 to float
  %1384 = select i1 %1380, float %1383, float 0.000000e+00
  %1385 = fmul fast float %1375, %1361
  %1386 = fmul fast float %1376, %1361
  %1387 = fmul fast float %1377, %1361
  %1388 = fmul fast float %1385, %1384
  %1389 = fmul fast float %1386, %1384
  %1390 = fmul fast float %1387, %1384
  br label %1391

; <label>:1391                                    ; preds = %1366, %1330
  %1392 = phi float [ %1361, %1330 ], [ %1388, %1366 ]
  %1393 = phi float [ %1361, %1330 ], [ %1389, %1366 ]
  %1394 = phi float [ %1361, %1330 ], [ %1390, %1366 ]
  %1395 = fsub fast float %1392, %1002
  %1396 = fsub fast float %1393, %1003
  %1397 = fsub fast float %1394, %1004
  %1398 = fmul fast float %1395, %1342
  %1399 = fmul fast float %1396, %1342
  %1400 = fmul fast float %1397, %1342
  %1401 = fadd fast float %1398, %1002
  %1402 = fadd fast float %1399, %1003
  %1403 = fadd fast float %1400, %1004
  %1404 = fadd fast float %1227, %1013
  %1405 = call float @dx.op.unary.f32(i32 7, float %1404)  ; Saturate(value)
  %1406 = fsub fast float %1274, %1012
  %1407 = fmul fast float %1406, %1323
  %1408 = fadd fast float %1407, %1012
  %1409 = fsub fast float %1260, %1011
  %1410 = fmul fast float %1409, %1323
  %1411 = fadd fast float %1410, %1011
  br i1 %1325, label %1420, label %1412

; <label>:1412                                    ; preds = %1391
  %1413 = and i32 %1075, 32768
  %1414 = icmp eq i32 %1413, 0
  br i1 %1414, label %1430, label %1415

; <label>:1415                                    ; preds = %1412
  %1416 = fmul fast float %1323, 1.270000e+02
  %1417 = fadd fast float %1416, %997
  %1418 = fadd fast float %1416, %998
  %1419 = fadd fast float %1416, %999
  br label %1430

; <label>:1420                                    ; preds = %1391
  %1421 = fsub fast float 1.270000e+02, %997
  %1422 = fsub fast float 1.270000e+02, %998
  %1423 = fsub fast float 1.270000e+02, %999
  %1424 = fmul fast float %1323, %1421
  %1425 = fmul fast float %1323, %1422
  %1426 = fmul fast float %1323, %1423
  %1427 = fadd fast float %1424, %997
  %1428 = fadd fast float %1425, %998
  %1429 = fadd fast float %1426, %999
  br label %1430

; <label>:1430                                    ; preds = %1420, %1415, %1412
  %1431 = phi float [ %1417, %1415 ], [ %997, %1412 ], [ %1427, %1420 ]
  %1432 = phi float [ %1418, %1415 ], [ %998, %1412 ], [ %1428, %1420 ]
  %1433 = phi float [ %1419, %1415 ], [ %999, %1412 ], [ %1429, %1420 ]
  %1434 = call float @dx.op.dot3.f32(i32 55, float %1281, float %1282, float %1283, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1436 = extractvalue %dx.types.CBufRet.f32 %1435, 0
  %1437 = extractvalue %dx.types.CBufRet.f32 %1435, 1
  %1438 = fmul fast float %1437, %1434
  %1439 = fadd fast float %1438, %1436
  %1440 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  %1441 = bitcast float %1063 to i32
  %1442 = and i32 %1441, 65535
  %1443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1442)  ; LegacyF16ToF32(value)
  %1444 = lshr i32 %1441, 16
  %1445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1444)  ; LegacyF16ToF32(value)
  %1446 = fcmp fast oge float %1443, 0.000000e+00
  %1447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.f32 %1447, 0
  %1449 = select i1 %1446, float %1443, float %1448
  %1450 = fadd fast float %1449, %1445
  %1451 = fsub fast float %1440, %996
  %1452 = fmul fast float %1451, %1227
  %1453 = fadd fast float %1452, %996
  %1454 = fmul fast float %1450, %1227
  %1455 = call float @dx.op.binary.f32(i32 35, float %995, float %1454)  ; FMax(a,b)
  %1456 = and i32 %1075, 16
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1479, label %1458

; <label>:1458                                    ; preds = %1430
  %1459 = add i32 %1066, 0
  %1460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1459, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1461 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1460, %dx.types.Handle %1240, float %1168, float %1171, float undef, float undef, i32 0, i32 0, i32 undef, float %1173, float %1175, float undef, float %1177, float %1179, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1462 = extractvalue %dx.types.ResRet.f32 %1461, 0
  %1463 = extractvalue %dx.types.ResRet.f32 %1461, 1
  %1464 = extractvalue %dx.types.ResRet.f32 %1461, 2
  %1465 = and i32 %1359, 65535
  %1466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1465)  ; LegacyF16ToF32(value)
  %1467 = fmul fast float %1462, %1060
  %1468 = fmul fast float %1463, %1061
  %1469 = fmul fast float %1464, %1062
  %1470 = and i32 %1075, 16384
  %1471 = icmp ne i32 %1470, 0
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 0
  %1474 = select i1 %1471, float %1473, float 1.000000e+00
  %1475 = fmul fast float %1474, %1466
  %1476 = fmul fast float %1467, %1475
  %1477 = fmul fast float %1468, %1475
  %1478 = fmul fast float %1469, %1475
  br label %1479

; <label>:1479                                    ; preds = %1458, %1430
  %1480 = phi float [ %1476, %1458 ], [ 0.000000e+00, %1430 ]
  %1481 = phi float [ %1477, %1458 ], [ 0.000000e+00, %1430 ]
  %1482 = phi float [ %1478, %1458 ], [ 0.000000e+00, %1430 ]
  %1483 = fsub fast float %1480, %1005
  %1484 = fsub fast float %1481, %1006
  %1485 = fsub fast float %1482, %1007
  %1486 = fmul fast float %1483, %1227
  %1487 = fmul fast float %1484, %1227
  %1488 = fmul fast float %1485, %1227
  %1489 = fadd fast float %1486, %1005
  %1490 = fadd fast float %1487, %1006
  %1491 = fadd fast float %1488, %1007
  br label %1124

; <label>:1492                                    ; preds = %1124
  br label %1493

; <label>:1493                                    ; preds = %1492, %882
  %1494 = phi float [ 0.000000e+00, %882 ], [ %1125, %1492 ]
  %1495 = phi float [ %904, %882 ], [ %1126, %1492 ]
  %1496 = phi float [ %902, %882 ], [ %1127, %1492 ]
  %1497 = phi float [ %894, %882 ], [ %1128, %1492 ]
  %1498 = phi float [ %895, %882 ], [ %1129, %1492 ]
  %1499 = phi float [ %896, %882 ], [ %1130, %1492 ]
  %1500 = phi float [ 0.000000e+00, %882 ], [ %1131, %1492 ]
  %1501 = phi float [ 0.000000e+00, %882 ], [ %1132, %1492 ]
  %1502 = phi float [ %888, %882 ], [ %1133, %1492 ]
  %1503 = phi float [ %889, %882 ], [ %1134, %1492 ]
  %1504 = phi float [ %890, %882 ], [ %1135, %1492 ]
  %1505 = phi float [ %891, %882 ], [ %1136, %1492 ]
  %1506 = phi float [ %892, %882 ], [ %1137, %1492 ]
  %1507 = phi float [ %893, %882 ], [ %1138, %1492 ]
  %1508 = phi float [ %936, %882 ], [ %1139, %1492 ]
  %1509 = phi float [ %937, %882 ], [ %1140, %1492 ]
  %1510 = phi float [ %938, %882 ], [ %1141, %1492 ]
  %1511 = phi float [ %900, %882 ], [ %1142, %1492 ]
  %1512 = phi float [ %899, %882 ], [ %1143, %1492 ]
  %1513 = phi float [ 0.000000e+00, %882 ], [ %1144, %1492 ]
  %1514 = phi float [ %897, %882 ], [ %1145, %1492 ]
  %1515 = phi float [ %885, %882 ], [ %1146, %1492 ]
  %1516 = phi float [ %886, %882 ], [ %1147, %1492 ]
  %1517 = phi float [ %887, %882 ], [ %1148, %1492 ]
  %1518 = call float @dx.op.dot3.f32(i32 55, float %1508, float %1509, float %1510, float %1508, float %1509, float %1510)  ; Dot3(ax,ay,az,bx,by,bz)
  %1519 = call float @dx.op.unary.f32(i32 25, float %1518)  ; Rsqrt(value)
  %1520 = fmul fast float %1519, %1508
  %1521 = fmul fast float %1519, %1509
  %1522 = fmul fast float %1519, %1510
  %1523 = fadd fast float %1513, %898
  %1524 = call float @dx.op.unary.f32(i32 7, float %1523)  ; Saturate(value)
  %1525 = call float @dx.op.dot3.f32(i32 55, float %1520, float %1521, float %1522, float %1520, float %1521, float %1522)  ; Dot3(ax,ay,az,bx,by,bz)
  %1526 = call float @dx.op.unary.f32(i32 25, float %1525)  ; Rsqrt(value)
  %1527 = fmul fast float %1526, %1520
  %1528 = fmul fast float %1526, %1521
  %1529 = fmul fast float %1526, %1522
  %1530 = fadd fast float %1514, 0xBFB99999A0000000
  %1531 = call float @dx.op.unary.f32(i32 7, float %1530)  ; Saturate(value)
  %1532 = fmul fast float %1531, 0x3FF1C71C80000000
  %1533 = call float @dx.op.binary.f32(i32 36, float %1514, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1534 = fsub fast float 1.000000e+00, %1532
  %1535 = call float @dx.op.unary.f32(i32 7, float %1534)  ; Saturate(value)
  %1536 = fmul fast float %1535, %1515
  %1537 = fmul fast float %1535, %1516
  %1538 = fmul fast float %1535, %1517
  %1539 = call float @dx.op.unary.f32(i32 7, float %1536)  ; Saturate(value)
  %1540 = call float @dx.op.unary.f32(i32 7, float %1537)  ; Saturate(value)
  %1541 = call float @dx.op.unary.f32(i32 7, float %1538)  ; Saturate(value)
  %1542 = fmul fast float %1532, %1515
  %1543 = fmul fast float %1532, %1516
  %1544 = fmul fast float %1532, %1517
  %1545 = fadd fast float %1542, %1533
  %1546 = fadd fast float %1543, %1533
  %1547 = fadd fast float %1544, %1533
  %1548 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1549 = call float @dx.op.unary.f32(i32 7, float %1546)  ; Saturate(value)
  %1550 = call float @dx.op.unary.f32(i32 7, float %1547)  ; Saturate(value)
  %1551 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = and i32 %1553, 1
  %1555 = icmp eq i32 %1554, 0
  br i1 %1555, label %1570, label %1556

; <label>:1556                                    ; preds = %1493
  %1557 = call float @dx.op.binary.f32(i32 35, float %1540, float %1541)  ; FMax(a,b)
  %1558 = call float @dx.op.binary.f32(i32 35, float %1539, float %1557)  ; FMax(a,b)
  %1559 = fcmp fast ogt float %1558, 0.000000e+00
  %1560 = bitcast float %1558 to i32
  %1561 = sub nsw i32 2129859010, %1560
  %1562 = bitcast i32 %1561 to float
  %1563 = select i1 %1559, float %1562, float 0.000000e+00
  %1564 = fmul fast float %1539, %1502
  %1565 = fmul fast float %1540, %1503
  %1566 = fmul fast float %1541, %1504
  %1567 = fmul fast float %1564, %1563
  %1568 = fmul fast float %1565, %1563
  %1569 = fmul fast float %1566, %1563
  br label %1570

; <label>:1570                                    ; preds = %1556, %1493
  %1571 = phi float [ %1567, %1556 ], [ %1502, %1493 ]
  %1572 = phi float [ %1568, %1556 ], [ %1503, %1493 ]
  %1573 = phi float [ %1569, %1556 ], [ %1504, %1493 ]
  %1574 = call float @dx.op.binary.f32(i32 36, float %1497, float 1.270000e+02)  ; FMin(a,b)
  %1575 = call float @dx.op.binary.f32(i32 36, float %1498, float 1.270000e+02)  ; FMin(a,b)
  %1576 = call float @dx.op.binary.f32(i32 36, float %1499, float 1.270000e+02)  ; FMin(a,b)
  %1577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1578 = extractvalue %dx.types.CBufRet.i32 %1577, 3
  %1579 = and i32 %1578, 8
  %1580 = icmp ne i32 %1579, 0
  %1581 = call float @dx.op.binary.f32(i32 35, float %1539, float %1515)  ; FMax(a,b)
  %1582 = call float @dx.op.binary.f32(i32 35, float %1540, float %1515)  ; FMax(a,b)
  %1583 = call float @dx.op.binary.f32(i32 35, float %1541, float %1515)  ; FMax(a,b)
  %1584 = call float @dx.op.dot3.f32(i32 55, float %1539, float %1540, float %1541, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1585 = select i1 %197, float %1515, float %1539
  %1586 = select i1 %197, float %1584, float %1540
  %1587 = select i1 %197, float 1.000000e+00, float %1541
  %1588 = select i1 %1580, float %1581, float %1585
  %1589 = select i1 %1580, float %1582, float %1586
  %1590 = select i1 %1580, float %1583, float %1587
  %1591 = call float @dx.op.dot3.f32(i32 55, float %1571, float %1572, float %1573, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1592 = select i1 %197, float %1591, float %1571
  %1593 = select i1 %197, float %1591, float %1572
  %1594 = select i1 %197, float %1591, float %1573
  %1595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1596 = extractvalue %dx.types.CBufRet.f32 %1595, 0
  %1597 = extractvalue %dx.types.CBufRet.f32 %1595, 1
  %1598 = extractvalue %dx.types.CBufRet.f32 %1595, 2
  %1599 = fadd fast float %1596, %135
  %1600 = fadd fast float %1597, %136
  %1601 = fadd fast float %1598, %137
  %1602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1603 = extractvalue %dx.types.CBufRet.f32 %1602, 0
  %1604 = extractvalue %dx.types.CBufRet.f32 %1602, 1
  %1605 = fsub fast float %1599, %1603
  %1606 = fsub fast float %1600, %1604
  %1607 = fmul fast float %1605, %1605
  %1608 = fmul fast float %1606, %1606
  %1609 = fadd fast float %1607, %1608
  %1610 = call float @dx.op.unary.f32(i32 24, float %1609)  ; Sqrt(value)
  %1611 = extractvalue %dx.types.CBufRet.f32 %1602, 2
  %1612 = fcmp fast olt float %1610, %1611
  br i1 %1612, label %1613, label %1680

; <label>:1613                                    ; preds = %1570
  %1614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1615 = extractvalue %dx.types.CBufRet.f32 %1614, 0
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 0
  %1618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1619 = extractvalue %dx.types.CBufRet.f32 %1618, 0
  %1620 = extractvalue %dx.types.CBufRet.f32 %1614, 1
  %1621 = extractvalue %dx.types.CBufRet.f32 %1616, 1
  %1622 = extractvalue %dx.types.CBufRet.f32 %1618, 1
  %1623 = extractvalue %dx.types.CBufRet.f32 %1614, 3
  %1624 = extractvalue %dx.types.CBufRet.f32 %1616, 3
  %1625 = extractvalue %dx.types.CBufRet.f32 %1618, 3
  %1626 = fadd fast float %1623, %1599
  %1627 = fadd fast float %1624, %1600
  %1628 = fadd fast float %1625, %1601
  %1629 = fmul fast float %1626, %1615
  %1630 = call float @dx.op.tertiary.f32(i32 46, float %1627, float %1617, float %1629)  ; FMad(a,b,c)
  %1631 = call float @dx.op.tertiary.f32(i32 46, float %1628, float %1619, float %1630)  ; FMad(a,b,c)
  %1632 = fmul fast float %1626, %1620
  %1633 = call float @dx.op.tertiary.f32(i32 46, float %1627, float %1621, float %1632)  ; FMad(a,b,c)
  %1634 = call float @dx.op.tertiary.f32(i32 46, float %1628, float %1622, float %1633)  ; FMad(a,b,c)
  %1635 = fsub fast float %1631, %1623
  %1636 = fsub fast float %1634, %1624
  %1637 = fsub fast float %1635, %1603
  %1638 = fadd fast float %1637, %1611
  %1639 = fsub fast float %1636, %1604
  %1640 = fadd fast float %1639, %1611
  %1641 = extractvalue %dx.types.CBufRet.f32 %1602, 3
  %1642 = fmul fast float %1638, %1641
  %1643 = fmul fast float %1640, %1641
  %1644 = call float @dx.op.unary.f32(i32 7, float %1642)  ; Saturate(value)
  %1645 = call float @dx.op.unary.f32(i32 7, float %1643)  ; Saturate(value)
  %1646 = fsub fast float 1.000000e+00, %1644
  %1647 = fsub fast float 1.000000e+00, %1645
  %1648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %46, float %1646, float %1647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1649 = extractvalue %dx.types.ResRet.f32 %1648, 0
  %1650 = fcmp fast ugt float %1649, 0.000000e+00
  br i1 %1650, label %1651, label %1954

; <label>:1651                                    ; preds = %1613
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 2
  %1654 = fmul fast float %1653, %1649
  %1655 = extractvalue %dx.types.CBufRet.f32 %1652, 3
  %1656 = fadd fast float %1655, %1654
  %1657 = extractvalue %dx.types.CBufRet.f32 %1618, 2
  %1658 = fadd fast float %1656, %1625
  %1659 = fmul fast float %1631, %1619
  %1660 = call float @dx.op.tertiary.f32(i32 46, float %1634, float %1622, float %1659)  ; FMad(a,b,c)
  %1661 = call float @dx.op.tertiary.f32(i32 46, float %1658, float %1657, float %1660)  ; FMad(a,b,c)
  %1662 = fsub fast float %1661, %1625
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 2
  %1665 = fsub fast float %1662, %1664
  %1666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %46, float %1646, float %1647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1667 = extractvalue %dx.types.ResRet.f32 %1666, 0
  %1668 = extractvalue %dx.types.ResRet.f32 %1666, 1
  %1669 = extractvalue %dx.types.ResRet.f32 %1666, 2
  %1670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %46, float %1646, float %1647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1671 = extractvalue %dx.types.ResRet.f32 %1670, 0
  %1672 = extractvalue %dx.types.ResRet.f32 %1670, 1
  %1673 = extractvalue %dx.types.ResRet.f32 %1670, 2
  %1674 = fadd fast float %1671, %1667
  %1675 = fmul fast float %1674, 0x3F847AE140000000
  %1676 = fadd fast float %1672, %1668
  %1677 = fmul fast float %1676, 0x3F847AE140000000
  %1678 = fadd fast float %1673, %1669
  %1679 = fmul fast float %1678, 0x3F847AE140000000
  br label %1954

; <label>:1680                                    ; preds = %1570
  %1681 = and i32 %173, 1
  %1682 = icmp eq i32 %1681, 0
  br i1 %1682, label %1954, label %1683

; <label>:1683                                    ; preds = %1680
  %1684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1685 = extractvalue %dx.types.CBufRet.f32 %1684, 0
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 0
  %1688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1689 = extractvalue %dx.types.CBufRet.f32 %1688, 0
  %1690 = extractvalue %dx.types.CBufRet.f32 %1684, 1
  %1691 = extractvalue %dx.types.CBufRet.f32 %1686, 1
  %1692 = extractvalue %dx.types.CBufRet.f32 %1688, 1
  %1693 = extractvalue %dx.types.CBufRet.f32 %1684, 3
  %1694 = extractvalue %dx.types.CBufRet.f32 %1686, 3
  %1695 = extractvalue %dx.types.CBufRet.f32 %1688, 3
  %1696 = fadd fast float %1693, %1599
  %1697 = fadd fast float %1694, %1600
  %1698 = fadd fast float %1695, %1601
  %1699 = fmul fast float %1696, %1685
  %1700 = call float @dx.op.tertiary.f32(i32 46, float %1697, float %1687, float %1699)  ; FMad(a,b,c)
  %1701 = call float @dx.op.tertiary.f32(i32 46, float %1698, float %1689, float %1700)  ; FMad(a,b,c)
  %1702 = fmul fast float %1696, %1690
  %1703 = call float @dx.op.tertiary.f32(i32 46, float %1697, float %1691, float %1702)  ; FMad(a,b,c)
  %1704 = call float @dx.op.tertiary.f32(i32 46, float %1698, float %1692, float %1703)  ; FMad(a,b,c)
  %1705 = fsub fast float %1701, %1693
  %1706 = fsub fast float %1704, %1694
  %1707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1708 = extractvalue %dx.types.CBufRet.f32 %1707, 0
  %1709 = extractvalue %dx.types.CBufRet.f32 %1707, 1
  %1710 = extractvalue %dx.types.CBufRet.f32 %1707, 2
  %1711 = extractvalue %dx.types.CBufRet.f32 %1707, 3
  %1712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1713 = extractvalue %dx.types.CBufRet.f32 %1712, 3
  %1714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1715 = extractvalue %dx.types.CBufRet.i32 %1714, 0
  %1716 = extractvalue %dx.types.CBufRet.i32 %1714, 1
  %1717 = udiv i32 %1716, %1715
  %1718 = fsub fast float %1705, %1708
  %1719 = fsub fast float %1706, %1709
  %1720 = call float @dx.op.binary.f32(i32 35, float %1718, float 0.000000e+00)  ; FMax(a,b)
  %1721 = call float @dx.op.binary.f32(i32 35, float %1719, float 0.000000e+00)  ; FMax(a,b)
  %1722 = call float @dx.op.binary.f32(i32 36, float %1720, float %1710)  ; FMin(a,b)
  %1723 = call float @dx.op.binary.f32(i32 36, float %1721, float %1711)  ; FMin(a,b)
  %1724 = add i32 %1715, -1
  %1725 = add i32 %1717, -1
  %1726 = fmul fast float %1722, %1713
  %1727 = fmul fast float %1723, %1713
  %1728 = fptoui float %1726 to i32
  %1729 = fptoui float %1727 to i32
  %1730 = call i32 @dx.op.binary.i32(i32 40, i32 %1728, i32 %1724)  ; UMin(a,b)
  %1731 = call i32 @dx.op.binary.i32(i32 40, i32 %1729, i32 %1725)  ; UMin(a,b)
  %1732 = mul i32 %1731, %1715
  %1733 = add i32 %1732, %1730
  %1734 = shl i32 %1733, 2
  %1735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %1734, i32 undef)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.i32 %1735, 0
  %1737 = icmp eq i32 %1736, -1
  br i1 %1737, label %1954, label %1738

; <label>:1738                                    ; preds = %1683
  %1739 = mul i32 %1736, 148
  %1740 = add i32 %1739, 4
  %1741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1742 = extractvalue %dx.types.ResRet.f32 %1741, 0
  %1743 = add i32 %1739, 8
  %1744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.f32 %1744, 0
  %1746 = add i32 %1739, 36
  %1747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.f32 %1747, 0
  %1749 = add i32 %1739, 60
  %1750 = add i32 %1739, 92
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = add i32 %1739, 116
  %1754 = fsub fast float %1705, %1742
  %1755 = fsub fast float %1706, %1745
  %1756 = fmul fast float %1713, %1754
  %1757 = fmul fast float %1713, %1755
  %1758 = call float @dx.op.unary.f32(i32 7, float %1756)  ; Saturate(value)
  %1759 = call float @dx.op.unary.f32(i32 7, float %1757)  ; Saturate(value)
  %1760 = fsub fast float 1.000000e+00, %1759
  %1761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.f32 %1761, 2
  %1763 = call float @dx.op.unary.f32(i32 83, float %1758)  ; DerivCoarseX(value)
  %1764 = call float @dx.op.unary.f32(i32 83, float %1760)  ; DerivCoarseX(value)
  %1765 = call float @dx.op.unary.f32(i32 84, float %1758)  ; DerivCoarseY(value)
  %1766 = call float @dx.op.unary.f32(i32 84, float %1760)  ; DerivCoarseY(value)
  %1767 = fmul fast float %1763, %1762
  %1768 = fmul fast float %1764, %1762
  %1769 = fmul fast float %1765, %1762
  %1770 = fmul fast float %1766, %1762
  %1771 = call float @dx.op.dot2.f32(i32 54, float %1769, float %1770, float %1769, float %1770)  ; Dot2(ax,ay,bx,by)
  %1772 = call float @dx.op.dot2.f32(i32 54, float %1767, float %1768, float %1767, float %1768)  ; Dot2(ax,ay,bx,by)
  %1773 = call float @dx.op.binary.f32(i32 35, float %1772, float %1771)  ; FMax(a,b)
  %1774 = call float @dx.op.unary.f32(i32 23, float %1773)  ; Log(value)
  %1775 = fmul fast float %1774, 5.000000e-01
  %1776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1777 = extractvalue %dx.types.CBufRet.f32 %1776, 1
  %1778 = fadd fast float %1777, %1775
  %1779 = call float @dx.op.binary.f32(i32 35, float %1778, float 0.000000e+00)  ; FMax(a,b)
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 3
  %1782 = fadd fast float %1781, %1779
  %1783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1784 = extractvalue %dx.types.CBufRet.f32 %1783, 3
  %1785 = fadd fast float %1782, %1784
  %1786 = add i32 %1752, 0
  %1787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1786, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1788 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1787, i32 0)  ; GetDimensions(handle,mipLevel)
  %1789 = extractvalue %dx.types.Dimensions %1788, 0
  %1790 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1789)  ; FirstbitLo(value)
  %1791 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.i32 %1791, 1
  %1793 = sub nsw i32 %1792, %1790
  %1794 = sitofp i32 %1793 to float
  %1795 = fsub fast float %1785, %1794
  %1796 = call float @dx.op.binary.f32(i32 35, float %1795, float 0.000000e+00)  ; FMax(a,b)
  %1797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1787, %dx.types.Handle %44, float %1758, float %1760, float %1748, float undef, i32 0, i32 0, i32 undef, float %1796)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1798 = extractvalue %dx.types.ResRet.f32 %1797, 0
  %1799 = fcmp ule float %1798, 0x3FE0101020000000
  %1800 = extractvalue %dx.types.CBufRet.i32 %1791, 0
  %1801 = and i32 %1800, 128
  %1802 = icmp ne i32 %1801, 0
  %1803 = and i1 %1799, %1802
  br i1 %1803, label %1954, label %1804

; <label>:1804                                    ; preds = %1738
  %1805 = add i32 %1739, 20
  %1806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.f32 %1806, 0
  %1808 = add i32 %1739, 24
  %1809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.f32 %1809, 0
  %1811 = add i32 %1739, 40
  %1812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.f32 %1812, 0
  %1814 = add i32 %1739, 96
  %1815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.i32 %1815, 0
  %1817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1818 = extractvalue %dx.types.CBufRet.f32 %1817, 2
  %1819 = fmul fast float %1818, %1758
  %1820 = fmul fast float %1818, %1760
  %1821 = extractvalue %dx.types.CBufRet.f32 %1817, 3
  %1822 = fadd fast float %1819, %1821
  %1823 = fadd fast float %1820, %1821
  %1824 = add i32 %1816, 0
  %1825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1824, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1826 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1825, i32 0)  ; GetDimensions(handle,mipLevel)
  %1827 = extractvalue %dx.types.Dimensions %1826, 0
  %1828 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1827)  ; FirstbitLo(value)
  %1829 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1830 = extractvalue %dx.types.CBufRet.i32 %1829, 1
  %1831 = sub nsw i32 %1830, %1828
  %1832 = sitofp i32 %1831 to float
  %1833 = fsub fast float %1782, %1832
  %1834 = call float @dx.op.binary.f32(i32 35, float %1833, float 0.000000e+00)  ; FMax(a,b)
  %1835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1825, %dx.types.Handle %44, float %1822, float %1823, float %1813, float undef, i32 0, i32 0, i32 undef, float %1834)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1836 = extractvalue %dx.types.ResRet.f32 %1835, 0
  %1837 = fmul fast float %1836, %1807
  %1838 = fadd fast float %1837, %1810
  %1839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1840 = extractvalue %dx.types.CBufRet.f32 %1839, 0
  %1841 = extractvalue %dx.types.CBufRet.f32 %1839, 1
  %1842 = extractvalue %dx.types.CBufRet.f32 %1839, 2
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 3
  %1845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1846 = extractvalue %dx.types.CBufRet.f32 %1845, 3
  %1847 = extractvalue %dx.types.CBufRet.f32 %1839, 3
  %1848 = fadd fast float %1844, %1705
  %1849 = fadd fast float %1846, %1706
  %1850 = fadd fast float %1838, %1847
  %1851 = fmul fast float %1848, %1840
  %1852 = call float @dx.op.tertiary.f32(i32 46, float %1849, float %1841, float %1851)  ; FMad(a,b,c)
  %1853 = call float @dx.op.tertiary.f32(i32 46, float %1850, float %1842, float %1852)  ; FMad(a,b,c)
  %1854 = fsub fast float %1853, %1847
  %1855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.f32 %1855, 2
  %1857 = fsub fast float %1854, %1856
  %1858 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1859 = extractvalue %dx.types.CBufRet.i32 %1858, 0
  %1860 = call i32 @dx.op.binary.i32(i32 40, i32 %1736, i32 %1859)  ; UMin(a,b)
  %1861 = mul i32 %1860, 36
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = add i32 %1861, 4
  %1865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1866 = extractvalue %dx.types.CBufRet.f32 %1865, 0
  %1867 = fmul fast float %1866, %1758
  %1868 = fmul fast float %1866, %1760
  %1869 = extractvalue %dx.types.CBufRet.f32 %1865, 1
  %1870 = fadd fast float %1867, %1869
  %1871 = fadd fast float %1868, %1869
  %1872 = icmp eq i32 %1863, 0
  br i1 %1872, label %1941, label %1873

; <label>:1873                                    ; preds = %1804
  br label %1874

; <label>:1874                                    ; preds = %1931, %1873
  %1875 = phi float [ %1932, %1931 ], [ 0.000000e+00, %1873 ]
  %1876 = phi float [ %1933, %1931 ], [ 0.000000e+00, %1873 ]
  %1877 = phi float [ %1934, %1931 ], [ 0.000000e+00, %1873 ]
  %1878 = phi float [ %1935, %1931 ], [ 0.000000e+00, %1873 ]
  %1879 = phi float [ %1936, %1931 ], [ 0.000000e+00, %1873 ]
  %1880 = phi float [ %1937, %1931 ], [ 0.000000e+00, %1873 ]
  %1881 = phi i32 [ %1938, %1931 ], [ 0, %1873 ]
  %1882 = shl i32 %1881, 2
  %1883 = add i32 %1749, %1882
  %1884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.f32 %1884, 0
  %1886 = add i32 %1753, %1882
  %1887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1888 = extractvalue %dx.types.ResRet.i32 %1887, 0
  %1889 = add i32 %1888, 0
  %1890 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1889, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1891 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1890, i32 0)  ; GetDimensions(handle,mipLevel)
  %1892 = extractvalue %dx.types.Dimensions %1891, 0
  %1893 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1892)  ; FirstbitLo(value)
  %1894 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1895 = extractvalue %dx.types.CBufRet.i32 %1894, 1
  %1896 = sub nsw i32 %1895, %1893
  %1897 = sitofp i32 %1896 to float
  %1898 = fsub fast float %1782, %1897
  %1899 = call float @dx.op.binary.f32(i32 35, float %1898, float 0.000000e+00)  ; FMax(a,b)
  %1900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1890, %dx.types.Handle %44, float %1870, float %1871, float %1885, float undef, i32 0, i32 0, i32 undef, float %1899)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1901 = extractvalue %dx.types.ResRet.f32 %1900, 0
  %1902 = fcmp fast ogt float %1901, 0.000000e+00
  br i1 %1902, label %1903, label %1931

; <label>:1903                                    ; preds = %1874
  %1904 = add i32 %1864, %1882
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = and i32 %1906, 32767
  %1908 = mul nuw nsw i32 %1907, 928
  %1909 = add nuw nsw i32 %1908, 48
  %1910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.f32 %1910, 0
  %1912 = extractvalue %dx.types.ResRet.f32 %1910, 1
  %1913 = extractvalue %dx.types.ResRet.f32 %1910, 2
  %1914 = add nuw nsw i32 %1908, 60
  %1915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %1914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1916 = extractvalue %dx.types.ResRet.f32 %1915, 0
  %1917 = extractvalue %dx.types.ResRet.f32 %1915, 1
  %1918 = extractvalue %dx.types.ResRet.f32 %1915, 2
  %1919 = fmul fast float %1911, %1901
  %1920 = fmul fast float %1912, %1901
  %1921 = fmul fast float %1913, %1901
  %1922 = fadd fast float %1919, %1875
  %1923 = fadd fast float %1920, %1876
  %1924 = fadd fast float %1921, %1877
  %1925 = fmul fast float %1916, %1901
  %1926 = fmul fast float %1917, %1901
  %1927 = fmul fast float %1918, %1901
  %1928 = fadd fast float %1925, %1878
  %1929 = fadd fast float %1926, %1879
  %1930 = fadd fast float %1927, %1880
  br label %1931

; <label>:1931                                    ; preds = %1903, %1874
  %1932 = phi float [ %1922, %1903 ], [ %1875, %1874 ]
  %1933 = phi float [ %1923, %1903 ], [ %1876, %1874 ]
  %1934 = phi float [ %1924, %1903 ], [ %1877, %1874 ]
  %1935 = phi float [ %1928, %1903 ], [ %1878, %1874 ]
  %1936 = phi float [ %1929, %1903 ], [ %1879, %1874 ]
  %1937 = phi float [ %1930, %1903 ], [ %1880, %1874 ]
  %1938 = add nuw i32 %1881, 1
  %1939 = icmp eq i32 %1938, %1863
  br i1 %1939, label %1940, label %1874

; <label>:1940                                    ; preds = %1931
  br label %1941

; <label>:1941                                    ; preds = %1940, %1804
  %1942 = phi float [ 0.000000e+00, %1804 ], [ %1932, %1940 ]
  %1943 = phi float [ 0.000000e+00, %1804 ], [ %1933, %1940 ]
  %1944 = phi float [ 0.000000e+00, %1804 ], [ %1934, %1940 ]
  %1945 = phi float [ 0.000000e+00, %1804 ], [ %1935, %1940 ]
  %1946 = phi float [ 0.000000e+00, %1804 ], [ %1936, %1940 ]
  %1947 = phi float [ 0.000000e+00, %1804 ], [ %1937, %1940 ]
  %1948 = fadd fast float %1945, %1942
  %1949 = fmul fast float %1948, 0x3F847AE140000000
  %1950 = fadd fast float %1946, %1943
  %1951 = fmul fast float %1950, 0x3F847AE140000000
  %1952 = fadd fast float %1947, %1944
  %1953 = fmul fast float %1952, 0x3F847AE140000000
  br label %1954

; <label>:1954                                    ; preds = %1941, %1738, %1683, %1680, %1651, %1613
  %1955 = phi float [ %1665, %1651 ], [ -1.310720e+05, %1613 ], [ %1857, %1941 ], [ -1.310720e+05, %1683 ], [ -1.310720e+05, %1738 ], [ -1.310720e+05, %1680 ]
  %1956 = phi float [ %1675, %1651 ], [ 0.000000e+00, %1613 ], [ %1949, %1941 ], [ 0.000000e+00, %1683 ], [ 0.000000e+00, %1738 ], [ 0.000000e+00, %1680 ]
  %1957 = phi float [ %1677, %1651 ], [ 0.000000e+00, %1613 ], [ %1951, %1941 ], [ 0.000000e+00, %1683 ], [ 0.000000e+00, %1738 ], [ 0.000000e+00, %1680 ]
  %1958 = phi float [ %1679, %1651 ], [ 0.000000e+00, %1613 ], [ %1953, %1941 ], [ 0.000000e+00, %1683 ], [ 0.000000e+00, %1738 ], [ 0.000000e+00, %1680 ]
  %1959 = phi i1 [ true, %1651 ], [ false, %1613 ], [ true, %1941 ], [ false, %1683 ], [ false, %1738 ], [ false, %1680 ]
  %1960 = and i32 %173, 3
  %1961 = icmp eq i32 %1960, 1
  %1962 = select i1 %1961, float 1.000000e+00, float 0.000000e+00
  %1963 = fsub fast float %1955, %137
  %1964 = call float @dx.op.unary.f32(i32 7, float %1963)  ; Saturate(value)
  %1965 = select i1 %1959, float %1964, float 1.000000e+00
  %1966 = fmul fast float %1965, %1962
  %1967 = icmp eq i32 %1960, 3
  %1968 = select i1 %1967, float 1.000000e+00, float %1966
  %1969 = call float @dx.op.binary.f32(i32 35, float %1494, float %1968)  ; FMax(a,b)
  %1970 = call float @dx.op.unary.f32(i32 7, float %1969)  ; Saturate(value)
  %1971 = fcmp fast une float %1970, 0.000000e+00
  %1972 = call float @dx.op.dot3.f32(i32 55, float %135, float %136, float %137, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %1973 = call float @dx.op.unary.f32(i32 25, float %1972)  ; Rsqrt(value)
  br i1 %1971, label %1981, label %1974

; <label>:1974                                    ; preds = %1954
  %1975 = fmul fast float %1973, %135
  %1976 = fmul fast float %1973, %136
  %1977 = fmul fast float %1973, %137
  %1978 = fsub fast float -0.000000e+00, %1975
  %1979 = fsub fast float -0.000000e+00, %1976
  %1980 = fsub fast float -0.000000e+00, %1977
  br label %2149

; <label>:1981                                    ; preds = %1954
  %1982 = fmul fast float %135, %1973
  %1983 = fsub fast float -0.000000e+00, %1982
  %1984 = fmul fast float %136, %1973
  %1985 = fsub fast float -0.000000e+00, %1984
  %1986 = fmul fast float %137, %1973
  %1987 = fsub fast float -0.000000e+00, %1986
  %1988 = call float @dx.op.dot3.f32(i32 55, float %1983, float %1985, float %1987, float %90, float %91, float %92)  ; Dot3(ax,ay,az,bx,by,bz)
  %1989 = fmul fast float %1970, 2.500000e+00
  %1990 = call float @dx.op.unary.f32(i32 7, float %1989)  ; Saturate(value)
  %1991 = fmul fast float %1970, 0x4013FFFFE0000000
  %1992 = fadd fast float %1991, 0xBFFFFFFFE0000000
  %1993 = call float @dx.op.unary.f32(i32 7, float %1992)  ; Saturate(value)
  %1994 = fmul fast float %1970, 0x4004000020000000
  %1995 = fadd fast float %1994, 0xBFF8000040000000
  %1996 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  %1997 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1998 = fmul fast float %1530, 1.000000e+01
  %1999 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  %2000 = fmul fast float %1999, 2.000000e+00
  %2001 = fsub fast float 3.000000e+00, %2000
  %2002 = fmul fast float %1999, %1999
  %2003 = fmul fast float %2002, %2001
  %2004 = fsub fast float 1.000000e+00, %2003
  %2005 = fsub fast float 0x3FE3333340000000, %1551
  %2006 = fmul fast float %2005, 0x400AAAAAA0000000
  %2007 = call float @dx.op.unary.f32(i32 7, float %2006)  ; Saturate(value)
  %2008 = fmul fast float %2004, %2007
  %2009 = fmul fast float %1588, 0x3FEA2B8620000000
  %2010 = fmul fast float %1589, 0x3FEA2B8620000000
  %2011 = fmul fast float %1590, 0x3FEA2B8620000000
  %2012 = fadd fast float %2009, 0x3FC81DFBA0000000
  %2013 = fmul fast float %2012, %1588
  %2014 = fadd fast float %2013, 0x3F910E6020000000
  %2015 = fadd fast float %2010, 0x3FC81DFBA0000000
  %2016 = fmul fast float %2015, %1589
  %2017 = fadd fast float %2016, 0x3F910E6020000000
  %2018 = fadd fast float %2011, 0x3FC81DFBA0000000
  %2019 = fmul fast float %2018, %1590
  %2020 = fadd fast float %2019, 0x3F910E6020000000
  %2021 = call float @dx.op.unary.f32(i32 7, float %2014)  ; Saturate(value)
  %2022 = call float @dx.op.unary.f32(i32 7, float %2017)  ; Saturate(value)
  %2023 = call float @dx.op.unary.f32(i32 7, float %2020)  ; Saturate(value)
  %2024 = fsub fast float %2021, %1588
  %2025 = fsub fast float %2022, %1589
  %2026 = fsub fast float %2023, %1590
  %2027 = fmul fast float %2024, %1997
  %2028 = fmul fast float %2027, %2008
  %2029 = fmul fast float %2025, %1997
  %2030 = fmul fast float %2029, %2008
  %2031 = fmul fast float %2026, %1997
  %2032 = fmul fast float %2031, %2008
  %2033 = fadd fast float %2028, %1588
  %2034 = fadd fast float %2030, %1589
  %2035 = fadd fast float %2032, %1590
  %2036 = fmul fast float %1511, %1511
  %2037 = fmul fast float %2036, %2036
  %2038 = fadd fast float %1993, 1.000000e+00
  %2039 = fsub fast float %2038, %2008
  %2040 = call float @dx.op.unary.f32(i32 7, float %2039)  ; Saturate(value)
  %2041 = call float @dx.op.dot3.f32(i32 55, float %90, float %91, float %92, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2042 = call float @dx.op.unary.f32(i32 7, float %2041)  ; Saturate(value)
  %2043 = fsub fast float 1.000000e+00, %2037
  %2044 = call float @dx.op.binary.f32(i32 36, float %2040, float %2043)  ; FMin(a,b)
  %2045 = call float @dx.op.unary.f32(i32 7, float %1996)  ; Saturate(value)
  %2046 = call float @dx.op.binary.f32(i32 35, float %2044, float %2045)  ; FMax(a,b)
  %2047 = fadd fast float %2042, 0xBFE4CCCCC0000000
  %2048 = fmul fast float %2047, 0x4006DB6DA0000000
  %2049 = call float @dx.op.unary.f32(i32 7, float %2048)  ; Saturate(value)
  %2050 = fmul fast float %2049, 2.000000e+00
  %2051 = fsub fast float 3.000000e+00, %2050
  %2052 = bitcast float %1548 to i32
  %2053 = ashr i32 %2052, 1
  %2054 = add nsw i32 %2053, 532487669
  %2055 = bitcast i32 %2054 to float
  %2056 = fsub fast float 1.000000e+00, %2055
  %2057 = bitcast float %2056 to i32
  %2058 = sub nsw i32 2129859010, %2057
  %2059 = bitcast i32 %2058 to float
  %2060 = fmul fast float %2059, 2.000000e+00
  %2061 = bitcast float %1549 to i32
  %2062 = ashr i32 %2061, 1
  %2063 = add nsw i32 %2062, 532487669
  %2064 = bitcast i32 %2063 to float
  %2065 = fsub fast float 1.000000e+00, %2064
  %2066 = bitcast float %2065 to i32
  %2067 = sub nsw i32 2129859010, %2066
  %2068 = bitcast i32 %2067 to float
  %2069 = fmul fast float %2068, 2.000000e+00
  %2070 = bitcast float %1550 to i32
  %2071 = ashr i32 %2070, 1
  %2072 = add nsw i32 %2071, 532487669
  %2073 = bitcast i32 %2072 to float
  %2074 = fsub fast float 1.000000e+00, %2073
  %2075 = bitcast float %2074 to i32
  %2076 = sub nsw i32 2129859010, %2075
  %2077 = bitcast i32 %2076 to float
  %2078 = fmul fast float %2077, 2.000000e+00
  %2079 = fsub fast float 0x4002A9FBE0000000, %2060
  %2080 = fadd fast float %2060, 0x3FD54FDF00000000
  %2081 = bitcast float %2080 to i32
  %2082 = sub nsw i32 2129859010, %2081
  %2083 = bitcast i32 %2082 to float
  %2084 = fmul fast float %2083, %2079
  %2085 = fmul fast float %2084, %2084
  %2086 = fsub fast float 0x4002A9FBE0000000, %2069
  %2087 = fadd fast float %2069, 0x3FD54FDF00000000
  %2088 = bitcast float %2087 to i32
  %2089 = sub nsw i32 2129859010, %2088
  %2090 = bitcast i32 %2089 to float
  %2091 = fmul fast float %2090, %2086
  %2092 = fmul fast float %2091, %2091
  %2093 = fsub fast float 0x4002A9FBE0000000, %2078
  %2094 = fadd fast float %2078, 0x3FD54FDF00000000
  %2095 = bitcast float %2094 to i32
  %2096 = sub nsw i32 2129859010, %2095
  %2097 = bitcast i32 %2096 to float
  %2098 = fmul fast float %2097, %2093
  %2099 = fmul fast float %2098, %2098
  %2100 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2085)  ; FMax(a,b)
  %2101 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2092)  ; FMax(a,b)
  %2102 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2099)  ; FMax(a,b)
  %2103 = fsub fast float 1.000000e+00, %1988
  %2104 = fadd fast float %2103, %2004
  %2105 = call float @dx.op.unary.f32(i32 7, float %2104)  ; Saturate(value)
  %2106 = fsub fast float 1.000000e+00, %1968
  %2107 = fmul fast float %2046, %2106
  %2108 = fmul fast float %2049, %2049
  %2109 = fmul fast float %2108, %2107
  %2110 = fmul fast float %2109, %2051
  %2111 = fmul fast float %2106, 0xBFE99999A0000000
  %2112 = fmul fast float %2111, %1997
  %2113 = fmul fast float %2112, %2008
  %2114 = fadd fast float %2113, 1.000000e+00
  %2115 = fadd fast float %1551, -1.000000e+00
  %2116 = fmul fast float %2114, %2115
  %2117 = fadd fast float %2116, 1.000000e+00
  %2118 = fsub fast float %2100, %1548
  %2119 = fsub fast float %2101, %1549
  %2120 = fsub fast float %2102, %1550
  %2121 = fmul fast float %2110, %2118
  %2122 = fmul fast float %2110, %2119
  %2123 = fmul fast float %2110, %2120
  %2124 = fadd fast float %2121, %1548
  %2125 = fadd fast float %2122, %1549
  %2126 = fadd fast float %2123, %1550
  %2127 = fsub fast float %90, %1527
  %2128 = fsub fast float %91, %1528
  %2129 = fsub fast float %92, %1529
  %2130 = fmul fast float %2110, %2127
  %2131 = fmul fast float %2110, %2128
  %2132 = fmul fast float %2110, %2129
  %2133 = fadd fast float %2130, %1527
  %2134 = fadd fast float %2131, %1528
  %2135 = fadd fast float %2132, %1529
  %2136 = fmul fast float %2110, %2105
  %2137 = call float @dx.op.unary.f32(i32 7, float %2117)  ; Saturate(value)
  %2138 = fsub fast float 1.000000e+00, %2137
  %2139 = fmul fast float %2136, %2138
  %2140 = fadd fast float %2139, %2137
  %2141 = fsub fast float 1.000000e+00, %1511
  %2142 = fmul fast float %2110, %2141
  %2143 = fadd fast float %2142, %1511
  %2144 = call float @dx.op.dot3.f32(i32 55, float %2133, float %2134, float %2135, float %2133, float %2134, float %2135)  ; Dot3(ax,ay,az,bx,by,bz)
  %2145 = call float @dx.op.unary.f32(i32 25, float %2144)  ; Rsqrt(value)
  %2146 = fmul fast float %2133, %2145
  %2147 = fmul fast float %2134, %2145
  %2148 = fmul fast float %2135, %2145
  br label %2149

; <label>:2149                                    ; preds = %1981, %1974
  %2150 = phi float [ %1980, %1974 ], [ %1987, %1981 ]
  %2151 = phi float [ %1979, %1974 ], [ %1985, %1981 ]
  %2152 = phi float [ %1978, %1974 ], [ %1983, %1981 ]
  %2153 = phi float [ %1977, %1974 ], [ %1986, %1981 ]
  %2154 = phi float [ %1976, %1974 ], [ %1984, %1981 ]
  %2155 = phi float [ %1975, %1974 ], [ %1982, %1981 ]
  %2156 = phi float [ %1548, %1974 ], [ %2124, %1981 ]
  %2157 = phi float [ %1549, %1974 ], [ %2125, %1981 ]
  %2158 = phi float [ %1550, %1974 ], [ %2126, %1981 ]
  %2159 = phi float [ %1527, %1974 ], [ %2146, %1981 ]
  %2160 = phi float [ %1528, %1974 ], [ %2147, %1981 ]
  %2161 = phi float [ %1529, %1974 ], [ %2148, %1981 ]
  %2162 = phi float [ %1588, %1974 ], [ %2033, %1981 ]
  %2163 = phi float [ %1589, %1974 ], [ %2034, %1981 ]
  %2164 = phi float [ %1590, %1974 ], [ %2035, %1981 ]
  %2165 = phi float [ %1551, %1974 ], [ %2140, %1981 ]
  %2166 = phi float [ %1511, %1974 ], [ %2143, %1981 ]
  %2167 = fsub fast float -0.000000e+00, %137
  %2168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2169 = extractvalue %dx.types.CBufRet.f32 %2168, 2
  %2170 = extractvalue %dx.types.CBufRet.f32 %2168, 3
  %2171 = fmul fast float %87, 2.000000e+00
  %2172 = fmul fast float %2171, %2169
  %2173 = fmul fast float %88, 2.000000e+00
  %2174 = fmul fast float %2173, %2170
  %2175 = fsub fast float 1.000000e+00, %2172
  %2176 = fsub fast float 1.000000e+00, %2174
  %2177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %2178 = extractvalue %dx.types.CBufRet.f32 %2177, 0
  %2179 = extractvalue %dx.types.CBufRet.f32 %2177, 1
  %2180 = extractvalue %dx.types.CBufRet.f32 %2177, 2
  %2181 = fmul fast float %2175, %2178
  %2182 = fmul fast float %2175, %2179
  %2183 = fmul fast float %2175, %2180
  %2184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %2185 = extractvalue %dx.types.CBufRet.f32 %2184, 0
  %2186 = extractvalue %dx.types.CBufRet.f32 %2184, 1
  %2187 = extractvalue %dx.types.CBufRet.f32 %2184, 2
  %2188 = fmul fast float %2176, %2185
  %2189 = fmul fast float %2176, %2186
  %2190 = fmul fast float %2176, %2187
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 0
  %2193 = extractvalue %dx.types.CBufRet.f32 %2191, 1
  %2194 = extractvalue %dx.types.CBufRet.f32 %2191, 2
  %2195 = fadd fast float %2188, %2192
  %2196 = fadd fast float %2195, %2181
  %2197 = fadd fast float %2189, %2193
  %2198 = fadd fast float %2197, %2182
  %2199 = fadd fast float %2190, %2194
  %2200 = fadd fast float %2199, %2183
  %2201 = fmul fast float %2196, %78
  %2202 = fmul fast float %2198, %78
  %2203 = fmul fast float %2200, %78
  %2204 = select i1 %197, float 0.000000e+00, float %2158
  %2205 = call float @dx.op.dot3.f32(i32 55, float %2159, float %2160, float %2161, float %2152, float %2151, float %2150)  ; Dot3(ax,ay,az,bx,by,bz)
  %2206 = call float @dx.op.unary.f32(i32 7, float %2205)  ; Saturate(value)
  %2207 = call float @dx.op.dot3.f32(i32 55, float %2155, float %2154, float %2153, float %2159, float %2160, float %2161)  ; Dot3(ax,ay,az,bx,by,bz)
  %2208 = fmul fast float %2207, 2.000000e+00
  %2209 = fmul fast float %2208, %2159
  %2210 = fmul fast float %2208, %2160
  %2211 = fmul fast float %2208, %2161
  %2212 = fsub fast float %2155, %2209
  %2213 = fsub fast float %2154, %2210
  %2214 = fsub fast float %2153, %2211
  %2215 = call float @dx.op.binary.f32(i32 36, float %2166, float 1.000000e+00)  ; FMin(a,b)
  %2216 = fsub fast float 1.000000e+00, %2166
  %2217 = bitcast float %2216 to i32
  %2218 = sub nsw i32 2129859010, %2217
  %2219 = bitcast i32 %2218 to float
  %2220 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %2221 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %2222 = fcmp fast oeq float %2221, 0.000000e+00
  %2223 = fcmp fast oeq float %2220, 0.000000e+00
  %2224 = or i1 %2223, %2222
  br i1 %2224, label %2254, label %2225

; <label>:2225                                    ; preds = %2149
  %2226 = fsub fast float -0.000000e+00, %65
  %2227 = fsub fast float -0.000000e+00, %63
  %2228 = call float @dx.op.unary.f32(i32 24, float %2221)  ; Sqrt(value)
  %2229 = fdiv fast float %2228, %2220
  %2230 = fcmp fast ogt float %2229, 0x3FFB6F8900000000
  %2231 = select i1 %2230, float 0x3FFB6F8900000000, float %2229
  %2232 = fmul fast float %2231, 0x3FE8A23460000000
  %2233 = call float @dx.op.unary.f32(i32 7, float %2232)  ; Saturate(value)
  %2234 = call float @dx.op.binary.f32(i32 35, float %2231, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2235 = fmul fast float %2233, %2220
  %2236 = fmul fast float %2234, 0x3FF279A740000000
  %2237 = fadd fast float %2236, -1.000000e+00
  %2238 = call float @dx.op.dot3.f32(i32 55, float %2226, float %2227, float %64, float %2226, float %2227, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %2239 = call float @dx.op.unary.f32(i32 25, float %2238)  ; Rsqrt(value)
  %2240 = fmul fast float %2239, %2226
  %2241 = fmul fast float %2239, %2227
  %2242 = fmul fast float %2239, %64
  %2243 = fmul fast float %2237, %2237
  %2244 = fsub fast float 1.000000e+00, %2243
  %2245 = fmul fast float %2234, 0x40005F8BE0000000
  %2246 = fsub fast float 0x400C5BF8A0000000, %2245
  %2247 = fdiv fast float %2235, %2246
  %2248 = fmul fast float %2247, 0x3FEE31C3C0000000
  %2249 = fmul fast float %2248, %2244
  %2250 = fmul fast float %2234, 0x3FDACB7480000000
  %2251 = fadd fast float %2250, 0xBFD7347680000000
  %2252 = fmul fast float %2251, %2247
  %2253 = fmul fast float %2252, %2244
  br label %2254

; <label>:2254                                    ; preds = %2225, %2149
  %2255 = phi float [ %2240, %2225 ], [ 0.000000e+00, %2149 ]
  %2256 = phi float [ %2241, %2225 ], [ 0.000000e+00, %2149 ]
  %2257 = phi float [ %2242, %2225 ], [ 0.000000e+00, %2149 ]
  %2258 = phi float [ %2249, %2225 ], [ 0.000000e+00, %2149 ]
  %2259 = phi float [ %2253, %2225 ], [ 0.000000e+00, %2149 ]
  %2260 = call float @dx.op.dot3.f32(i32 55, float %2255, float %2256, float %2257, float %2159, float %2160, float %2161)  ; Dot3(ax,ay,az,bx,by,bz)
  %2261 = fmul fast float %2260, %2260
  %2262 = fmul fast float %2261, 0x3FEE471020000000
  %2263 = fadd fast float %2262, 0xBFD42F6020000000
  %2264 = fmul fast float %2220, 0x3FD20DD760000000
  %2265 = fmul fast float %2263, %2259
  %2266 = fmul fast float %2258, 0x3FDF454380000000
  %2267 = fmul fast float %2266, %2260
  %2268 = fadd fast float %2267, %2264
  %2269 = fadd fast float %2268, %2265
  %2270 = call float @dx.op.dot3.f32(i32 55, float %2255, float %2256, float %2257, float %2212, float %2213, float %2214)  ; Dot3(ax,ay,az,bx,by,bz)
  %2271 = fmul fast float %2270, 0x3FDF454380000000
  %2272 = fmul fast float %2270, %2270
  %2273 = fmul fast float %2272, 0x3FEE471020000000
  %2274 = fadd fast float %2273, 0xBFD42F6020000000
  %2275 = call float @dx.op.dot3.f32(i32 55, float %2220, float %2258, float %2259, float 0x3FD20DD760000000, float %2271, float %2274)  ; Dot3(ax,ay,az,bx,by,bz)
  %2276 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %2277 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %2278 = fcmp fast oeq float %2277, 0.000000e+00
  %2279 = fcmp fast oeq float %2276, 0.000000e+00
  %2280 = or i1 %2279, %2278
  br i1 %2280, label %2310, label %2281

; <label>:2281                                    ; preds = %2254
  %2282 = fsub fast float -0.000000e+00, %61
  %2283 = fsub fast float -0.000000e+00, %59
  %2284 = call float @dx.op.unary.f32(i32 24, float %2277)  ; Sqrt(value)
  %2285 = fdiv fast float %2284, %2276
  %2286 = fcmp fast ogt float %2285, 0x3FFB6F8900000000
  %2287 = select i1 %2286, float 0x3FFB6F8900000000, float %2285
  %2288 = fmul fast float %2287, 0x3FE8A23460000000
  %2289 = call float @dx.op.unary.f32(i32 7, float %2288)  ; Saturate(value)
  %2290 = call float @dx.op.binary.f32(i32 35, float %2287, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2291 = fmul fast float %2289, %2276
  %2292 = fmul fast float %2290, 0x3FF279A740000000
  %2293 = fadd fast float %2292, -1.000000e+00
  %2294 = call float @dx.op.dot3.f32(i32 55, float %2282, float %2283, float %60, float %2282, float %2283, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %2295 = call float @dx.op.unary.f32(i32 25, float %2294)  ; Rsqrt(value)
  %2296 = fmul fast float %2295, %2282
  %2297 = fmul fast float %2295, %2283
  %2298 = fmul fast float %2295, %60
  %2299 = fmul fast float %2293, %2293
  %2300 = fsub fast float 1.000000e+00, %2299
  %2301 = fmul fast float %2290, 0x40005F8BE0000000
  %2302 = fsub fast float 0x400C5BF8A0000000, %2301
  %2303 = fdiv fast float %2291, %2302
  %2304 = fmul fast float %2303, 0x3FEE31C3C0000000
  %2305 = fmul fast float %2304, %2300
  %2306 = fmul fast float %2290, 0x3FDACB7480000000
  %2307 = fadd fast float %2306, 0xBFD7347680000000
  %2308 = fmul fast float %2307, %2303
  %2309 = fmul fast float %2308, %2300
  br label %2310

; <label>:2310                                    ; preds = %2281, %2254
  %2311 = phi float [ %2296, %2281 ], [ 0.000000e+00, %2254 ]
  %2312 = phi float [ %2297, %2281 ], [ 0.000000e+00, %2254 ]
  %2313 = phi float [ %2298, %2281 ], [ 0.000000e+00, %2254 ]
  %2314 = phi float [ %2305, %2281 ], [ 0.000000e+00, %2254 ]
  %2315 = phi float [ %2309, %2281 ], [ 0.000000e+00, %2254 ]
  %2316 = call float @dx.op.dot3.f32(i32 55, float %2311, float %2312, float %2313, float %2159, float %2160, float %2161)  ; Dot3(ax,ay,az,bx,by,bz)
  %2317 = fmul fast float %2316, %2316
  %2318 = fmul fast float %2317, 0x3FEE471020000000
  %2319 = fadd fast float %2318, 0xBFD42F6020000000
  %2320 = fmul fast float %2276, 0x3FD20DD760000000
  %2321 = fmul fast float %2319, %2315
  %2322 = fmul fast float %2314, 0x3FDF454380000000
  %2323 = fmul fast float %2322, %2316
  %2324 = fadd fast float %2323, %2320
  %2325 = fadd fast float %2324, %2321
  %2326 = call float @dx.op.dot3.f32(i32 55, float %2311, float %2312, float %2313, float %2212, float %2213, float %2214)  ; Dot3(ax,ay,az,bx,by,bz)
  %2327 = fmul fast float %2326, 0x3FDF454380000000
  %2328 = fmul fast float %2326, %2326
  %2329 = fmul fast float %2328, 0x3FEE471020000000
  %2330 = fadd fast float %2329, 0xBFD42F6020000000
  %2331 = call float @dx.op.dot3.f32(i32 55, float %2276, float %2314, float %2315, float 0x3FD20DD760000000, float %2327, float %2330)  ; Dot3(ax,ay,az,bx,by,bz)
  %2332 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %2333 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %2334 = fcmp fast oeq float %2333, 0.000000e+00
  %2335 = fcmp fast oeq float %2332, 0.000000e+00
  %2336 = or i1 %2335, %2334
  br i1 %2336, label %2366, label %2337

; <label>:2337                                    ; preds = %2310
  %2338 = fsub fast float -0.000000e+00, %57
  %2339 = fsub fast float -0.000000e+00, %55
  %2340 = call float @dx.op.unary.f32(i32 24, float %2333)  ; Sqrt(value)
  %2341 = fdiv fast float %2340, %2332
  %2342 = fcmp fast ogt float %2341, 0x3FFB6F8900000000
  %2343 = select i1 %2342, float 0x3FFB6F8900000000, float %2341
  %2344 = fmul fast float %2343, 0x3FE8A23460000000
  %2345 = call float @dx.op.unary.f32(i32 7, float %2344)  ; Saturate(value)
  %2346 = call float @dx.op.binary.f32(i32 35, float %2343, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2347 = fmul fast float %2345, %2332
  %2348 = fmul fast float %2346, 0x3FF279A740000000
  %2349 = fadd fast float %2348, -1.000000e+00
  %2350 = call float @dx.op.dot3.f32(i32 55, float %2338, float %2339, float %56, float %2338, float %2339, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %2351 = call float @dx.op.unary.f32(i32 25, float %2350)  ; Rsqrt(value)
  %2352 = fmul fast float %2351, %2338
  %2353 = fmul fast float %2351, %2339
  %2354 = fmul fast float %2351, %56
  %2355 = fmul fast float %2349, %2349
  %2356 = fsub fast float 1.000000e+00, %2355
  %2357 = fmul fast float %2346, 0x40005F8BE0000000
  %2358 = fsub fast float 0x400C5BF8A0000000, %2357
  %2359 = fdiv fast float %2347, %2358
  %2360 = fmul fast float %2359, 0x3FEE31C3C0000000
  %2361 = fmul fast float %2360, %2356
  %2362 = fmul fast float %2346, 0x3FDACB7480000000
  %2363 = fadd fast float %2362, 0xBFD7347680000000
  %2364 = fmul fast float %2363, %2359
  %2365 = fmul fast float %2364, %2356
  br label %2366

; <label>:2366                                    ; preds = %2337, %2310
  %2367 = phi float [ %2352, %2337 ], [ 0.000000e+00, %2310 ]
  %2368 = phi float [ %2353, %2337 ], [ 0.000000e+00, %2310 ]
  %2369 = phi float [ %2354, %2337 ], [ 0.000000e+00, %2310 ]
  %2370 = phi float [ %2361, %2337 ], [ 0.000000e+00, %2310 ]
  %2371 = phi float [ %2365, %2337 ], [ 0.000000e+00, %2310 ]
  %2372 = call float @dx.op.dot3.f32(i32 55, float %2367, float %2368, float %2369, float %2159, float %2160, float %2161)  ; Dot3(ax,ay,az,bx,by,bz)
  %2373 = fmul fast float %2372, %2372
  %2374 = fmul fast float %2373, 0x3FEE471020000000
  %2375 = fadd fast float %2374, 0xBFD42F6020000000
  %2376 = fmul fast float %2332, 0x3FD20DD760000000
  %2377 = fmul fast float %2375, %2371
  %2378 = fmul fast float %2370, 0x3FDF454380000000
  %2379 = fmul fast float %2378, %2372
  %2380 = fadd fast float %2379, %2376
  %2381 = fadd fast float %2380, %2377
  %2382 = call float @dx.op.dot3.f32(i32 55, float %2367, float %2368, float %2369, float %2212, float %2213, float %2214)  ; Dot3(ax,ay,az,bx,by,bz)
  %2383 = fmul fast float %2382, 0x3FDF454380000000
  %2384 = fmul fast float %2382, %2382
  %2385 = fmul fast float %2384, 0x3FEE471020000000
  %2386 = fadd fast float %2385, 0xBFD42F6020000000
  %2387 = call float @dx.op.dot3.f32(i32 55, float %2332, float %2370, float %2371, float 0x3FD20DD760000000, float %2383, float %2386)  ; Dot3(ax,ay,az,bx,by,bz)
  %2388 = call float @dx.op.binary.f32(i32 35, float %2269, float 0.000000e+00)  ; FMax(a,b)
  %2389 = call float @dx.op.binary.f32(i32 35, float %2325, float 0.000000e+00)  ; FMax(a,b)
  %2390 = call float @dx.op.binary.f32(i32 35, float %2381, float 0.000000e+00)  ; FMax(a,b)
  %2391 = call float @dx.op.binary.f32(i32 35, float %2275, float 0.000000e+00)  ; FMax(a,b)
  %2392 = call float @dx.op.binary.f32(i32 35, float %2331, float 0.000000e+00)  ; FMax(a,b)
  %2393 = call float @dx.op.binary.f32(i32 35, float %2387, float 0.000000e+00)  ; FMax(a,b)
  %2394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2395 = extractvalue %dx.types.CBufRet.f32 %2394, 0
  %2396 = call float @dx.op.binary.f32(i32 36, float %2162, float %2395)  ; FMin(a,b)
  %2397 = fsub fast float 1.000000e+00, %2215
  %2398 = fmul fast float %2396, %2397
  %2399 = fsub fast float 1.000000e+00, %2398
  %2400 = bitcast float %2399 to i32
  %2401 = sub nsw i32 2129859010, %2400
  %2402 = bitcast i32 %2401 to float
  %2403 = call float @dx.op.binary.f32(i32 36, float %2163, float %2395)  ; FMin(a,b)
  %2404 = fmul fast float %2403, %2397
  %2405 = fsub fast float 1.000000e+00, %2404
  %2406 = bitcast float %2405 to i32
  %2407 = sub nsw i32 2129859010, %2406
  %2408 = bitcast i32 %2407 to float
  %2409 = call float @dx.op.binary.f32(i32 36, float %2164, float %2395)  ; FMin(a,b)
  %2410 = fmul fast float %2409, %2397
  %2411 = fsub fast float 1.000000e+00, %2410
  %2412 = bitcast float %2411 to i32
  %2413 = sub nsw i32 2129859010, %2412
  %2414 = bitcast i32 %2413 to float
  %2415 = fmul fast float %2388, %2215
  %2416 = fmul fast float %2415, %2402
  %2417 = fmul fast float %2389, %2215
  %2418 = fmul fast float %2417, %2408
  %2419 = fmul fast float %2390, %2215
  %2420 = fmul fast float %2419, %2414
  %2421 = call float @dx.op.binary.f32(i32 36, float %2156, float %2395)  ; FMin(a,b)
  %2422 = fmul fast float %2421, %2397
  %2423 = fsub fast float 1.000000e+00, %2422
  %2424 = bitcast float %2423 to i32
  %2425 = sub nsw i32 2129859010, %2424
  %2426 = bitcast i32 %2425 to float
  %2427 = call float @dx.op.binary.f32(i32 36, float %2157, float %2395)  ; FMin(a,b)
  %2428 = fmul fast float %2427, %2397
  %2429 = fsub fast float 1.000000e+00, %2428
  %2430 = bitcast float %2429 to i32
  %2431 = sub nsw i32 2129859010, %2430
  %2432 = bitcast i32 %2431 to float
  %2433 = call float @dx.op.binary.f32(i32 36, float %2204, float %2395)  ; FMin(a,b)
  %2434 = fmul fast float %2433, %2397
  %2435 = fsub fast float 1.000000e+00, %2434
  %2436 = bitcast float %2435 to i32
  %2437 = sub nsw i32 2129859010, %2436
  %2438 = bitcast i32 %2437 to float
  %2439 = fmul fast float %2391, %2215
  %2440 = fmul fast float %2439, %2426
  %2441 = fmul fast float %2392, %2215
  %2442 = fmul fast float %2441, %2432
  %2443 = fmul fast float %2393, %2215
  %2444 = fmul fast float %2443, %2438
  %2445 = call float @dx.op.dot3.f32(i32 55, float %2416, float %2418, float %2420, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2446 = select i1 %197, float 0.000000e+00, float %2416
  %2447 = select i1 %197, float %2445, float %2418
  %2448 = select i1 %197, float 0.000000e+00, float %2420
  %2449 = call float @dx.op.dot3.f32(i32 55, float %2440, float %2442, float %2444, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2450 = select i1 %197, float 0.000000e+00, float %2440
  %2451 = select i1 %197, float %2449, float %2442
  %2452 = select i1 %197, float 0.000000e+00, float %2444
  %2453 = fmul fast float %901, %901
  %2454 = call float @dx.op.unary.f32(i32 7, float %2453)  ; Saturate(value)
  %2455 = fmul fast float %2206, 9.843750e-01
  %2456 = fmul fast float %2165, 9.843750e-01
  %2457 = fadd fast float %2455, 7.812500e-03
  %2458 = fadd fast float %2456, 7.812500e-03
  %2459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %46, float %2457, float %2458, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2460 = extractvalue %dx.types.ResRet.f32 %2459, 0
  %2461 = extractvalue %dx.types.ResRet.f32 %2459, 1
  %2462 = extractvalue %dx.types.ResRet.f32 %2459, 2
  %2463 = extractvalue %dx.types.ResRet.f32 %2459, 3
  %2464 = fsub fast float 1.000000e+00, %2454
  %2465 = fsub fast float %2462, %2460
  %2466 = fsub fast float %2463, %2461
  %2467 = fmul fast float %2465, %2464
  %2468 = fmul fast float %2466, %2464
  %2469 = fadd fast float %2467, %2460
  %2470 = fadd fast float %2468, %2461
  %2471 = fmul fast float %2469, %2156
  %2472 = fmul fast float %2469, %2157
  %2473 = fmul fast float %2469, %2204
  %2474 = fadd fast float %2471, %2470
  %2475 = fadd fast float %2472, %2470
  %2476 = fadd fast float %2473, %2470
  %2477 = fcmp fast ogt float %1501, 0.000000e+00
  br i1 %2477, label %2478, label %2504

; <label>:2478                                    ; preds = %2366
  %2479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %46, float %1501, float %2206, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2480 = extractvalue %dx.types.ResRet.f32 %2479, 0
  %2481 = extractvalue %dx.types.ResRet.f32 %2479, 1
  %2482 = extractvalue %dx.types.ResRet.f32 %2479, 2
  %2483 = fadd fast float %2480, -5.000000e-01
  %2484 = fadd fast float %2481, -5.000000e-01
  %2485 = fadd fast float %2482, -5.000000e-01
  %2486 = fsub fast float 1.000000e+00, %2156
  %2487 = fsub fast float 1.000000e+00, %2157
  %2488 = fsub fast float 1.000000e+00, %2204
  %2489 = fmul fast float %2156, 4.000000e+00
  %2490 = fmul fast float %2489, %2486
  %2491 = fmul fast float %2490, %2483
  %2492 = fmul fast float %2157, 4.000000e+00
  %2493 = fmul fast float %2492, %2487
  %2494 = fmul fast float %2493, %2484
  %2495 = fmul fast float %2204, 4.000000e+00
  %2496 = fmul fast float %2495, %2488
  %2497 = fmul fast float %2496, %2485
  %2498 = fadd fast float %2491, %2474
  %2499 = fadd fast float %2494, %2475
  %2500 = fadd fast float %2497, %2476
  %2501 = call float @dx.op.unary.f32(i32 7, float %2498)  ; Saturate(value)
  %2502 = call float @dx.op.unary.f32(i32 7, float %2499)  ; Saturate(value)
  %2503 = call float @dx.op.unary.f32(i32 7, float %2500)  ; Saturate(value)
  br label %2504

; <label>:2504                                    ; preds = %2478, %2366
  %2505 = phi float [ %2501, %2478 ], [ %2474, %2366 ]
  %2506 = phi float [ %2502, %2478 ], [ %2475, %2366 ]
  %2507 = phi float [ %2503, %2478 ], [ %2476, %2366 ]
  %2508 = call float @dx.op.binary.f32(i32 35, float %2506, float %2507)  ; FMax(a,b)
  %2509 = call float @dx.op.binary.f32(i32 35, float %2505, float %2508)  ; FMax(a,b)
  %2510 = fsub fast float 1.000000e+00, %2509
  %2511 = fmul fast float %2510, %2446
  %2512 = fmul fast float %2510, %2447
  %2513 = fmul fast float %2510, %2448
  %2514 = call float @dx.op.dot3.f32(i32 55, float %2162, float %2163, float %2164, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2515 = fcmp fast ogt float %2514, 0x3E7FF19E20000000
  %2516 = fdiv fast float 1.000000e+00, %2514
  %2517 = select i1 %2515, float %2516, float 0.000000e+00
  %2518 = fmul fast float %2517, %2162
  %2519 = fmul fast float %2517, %2163
  %2520 = fmul fast float %2517, %2164
  %2521 = fadd fast float %2518, -1.000000e+00
  %2522 = fadd fast float %2519, -1.000000e+00
  %2523 = fadd fast float %2520, -1.000000e+00
  %2524 = fmul fast float %2521, 5.000000e-01
  %2525 = fmul fast float %2522, 5.000000e-01
  %2526 = fmul fast float %2523, 5.000000e-01
  %2527 = fadd fast float %2524, 1.000000e+00
  %2528 = fadd fast float %2525, 1.000000e+00
  %2529 = fadd fast float %2526, 1.000000e+00
  %2530 = call float @dx.op.binary.f32(i32 35, float %2206, float 0x3F50624DE0000000)  ; FMax(a,b)
  %2531 = fdiv fast float %901, %2530
  %2532 = fcmp fast olt float %1574, 1.270000e+02
  %2533 = fcmp fast olt float %1575, 1.270000e+02
  %2534 = fcmp fast olt float %1576, 1.270000e+02
  %2535 = fmul fast float %1574, 0xBFF7154760000000
  %2536 = fmul fast float %2535, %2531
  %2537 = fmul fast float %1575, 0xBFF7154760000000
  %2538 = fmul fast float %2537, %2531
  %2539 = fmul fast float %1576, 0xBFF7154760000000
  %2540 = fmul fast float %2539, %2531
  %2541 = call float @dx.op.unary.f32(i32 21, float %2536)  ; Exp(value)
  %2542 = call float @dx.op.unary.f32(i32 21, float %2538)  ; Exp(value)
  %2543 = call float @dx.op.unary.f32(i32 21, float %2540)  ; Exp(value)
  %2544 = call float @dx.op.unary.f32(i32 7, float %2541)  ; Saturate(value)
  %2545 = call float @dx.op.unary.f32(i32 7, float %2542)  ; Saturate(value)
  %2546 = call float @dx.op.unary.f32(i32 7, float %2543)  ; Saturate(value)
  %2547 = select i1 %2532, float %2544, float 0.000000e+00
  %2548 = select i1 %2533, float %2545, float 0.000000e+00
  %2549 = select i1 %2534, float %2546, float 0.000000e+00
  %2550 = fmul fast float %2547, %2510
  %2551 = fmul fast float %2548, %2510
  %2552 = fmul fast float %2549, %2510
  %2553 = fadd fast float %2550, -1.000000e+00
  %2554 = fadd fast float %2551, -1.000000e+00
  %2555 = fadd fast float %2552, -1.000000e+00
  %2556 = fmul fast float %2553, %1524
  %2557 = fmul fast float %2554, %1524
  %2558 = fmul fast float %2555, %1524
  %2559 = fadd fast float %2556, 1.000000e+00
  %2560 = fadd fast float %2557, 1.000000e+00
  %2561 = fadd fast float %2558, 1.000000e+00
  %2562 = fmul fast float %2157, 0x401CF23780000000
  %2563 = fadd fast float %2562, 0x3FF32641C0000000
  %2564 = fdiv fast float 1.000000e+00, %2563
  %2565 = call float @dx.op.dot3.f32(i32 55, float %2152, float %2151, float %2150, float %2159, float %2160, float %2161)  ; Dot3(ax,ay,az,bx,by,bz)
  %2566 = fmul fast float %2564, %2564
  %2567 = fmul fast float %2565, %2565
  %2568 = fsub fast float 1.000000e+00, %2567
  %2569 = fmul fast float %2566, %2568
  %2570 = fsub fast float 1.000000e+00, %2569
  %2571 = fcmp fast oge float %2570, 0.000000e+00
  %2572 = fmul fast float %2564, %2152
  %2573 = fmul fast float %2564, %2151
  %2574 = fmul fast float %2564, %2150
  %2575 = call float @dx.op.unary.f32(i32 24, float %2570)  ; Sqrt(value)
  %2576 = fmul fast float %2565, %2564
  %2577 = fadd fast float %2576, %2575
  %2578 = fmul fast float %2577, %2159
  %2579 = fmul fast float %2577, %2160
  %2580 = fmul fast float %2577, %2161
  %2581 = fsub fast float %2572, %2578
  %2582 = fsub fast float %2573, %2579
  %2583 = fsub fast float %2574, %2580
  %2584 = select i1 %2571, float %2581, float 0.000000e+00
  %2585 = select i1 %2571, float %2582, float 0.000000e+00
  %2586 = select i1 %2571, float %2583, float 0.000000e+00
  %2587 = fmul fast float %2584, %901
  %2588 = fmul fast float %2585, %901
  %2589 = fmul fast float %2586, %901
  %2590 = fadd fast float %2587, %2201
  %2591 = fadd fast float %2588, %2202
  %2592 = fadd fast float %2589, %2203
  %2593 = call float @dx.op.dot3.f32(i32 55, float %1592, float %1593, float %1594, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2594 = fsub fast float 1.000000e+00, %2165
  %2595 = fmul fast float %2594, %1524
  %2596 = fsub fast float 1.000000e+00, %2595
  %2597 = call float @dx.op.unary.f32(i32 7, float %2596)  ; Saturate(value)
  %2598 = fsub fast float 1.000000e+00, %2597
  %2599 = fmul fast float %2157, 0x4012D0A400000000
  %2600 = fadd fast float %2599, 0x3FDB6377A0000000
  %2601 = fmul fast float %2598, %2600
  %2602 = fadd fast float %2601, %2593
  %2603 = call float @dx.op.unary.f32(i32 7, float %2602)  ; Saturate(value)
  %2604 = fmul fast float %2505, %2450
  %2605 = fmul fast float %2506, %2451
  %2606 = fmul fast float %2507, %2452
  %2607 = fsub fast float 1.000000e+00, %2206
  %2608 = bitcast float %2607 to i32
  %2609 = sitofp i32 %2608 to float
  %2610 = fmul fast float %2609, 5.000000e+00
  %2611 = fadd fast float %2610, 0xC1EFBF8940000000
  %2612 = fptosi float %2611 to i32
  %2613 = bitcast i32 %2612 to float
  %2614 = fmul fast float %2613, %1500
  %2615 = fmul fast float %2446, %2614
  %2616 = fmul fast float %2615, %2510
  %2617 = fmul fast float %2616, %2527
  %2618 = fmul fast float %2447, %2614
  %2619 = fmul fast float %2618, %2510
  %2620 = fmul fast float %2619, %2528
  %2621 = fmul fast float %2448, %2614
  %2622 = fmul fast float %2621, %2510
  %2623 = fmul fast float %2622, %2529
  %2624 = fmul fast float %2511, %1524
  %2625 = fmul fast float %2512, %1524
  %2626 = fmul fast float %2513, %1524
  %2627 = fsub fast float 1.000000e+00, %2603
  %2628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %2629 = extractvalue %dx.types.CBufRet.f32 %2628, 0
  %2630 = extractvalue %dx.types.CBufRet.f32 %2628, 1
  %2631 = extractvalue %dx.types.CBufRet.f32 %2628, 2
  %2632 = extractvalue %dx.types.CBufRet.f32 %2628, 3
  %2633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %2634 = extractvalue %dx.types.CBufRet.f32 %2633, 0
  %2635 = extractvalue %dx.types.CBufRet.f32 %2633, 1
  %2636 = extractvalue %dx.types.CBufRet.f32 %2633, 2
  %2637 = extractvalue %dx.types.CBufRet.f32 %2633, 3
  %2638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %2639 = extractvalue %dx.types.CBufRet.f32 %2638, 0
  %2640 = extractvalue %dx.types.CBufRet.f32 %2638, 1
  %2641 = extractvalue %dx.types.CBufRet.f32 %2638, 2
  %2642 = extractvalue %dx.types.CBufRet.f32 %2638, 3
  %2643 = fmul fast float %2590, %2629
  %2644 = call float @dx.op.tertiary.f32(i32 46, float %2591, float %2630, float %2643)  ; FMad(a,b,c)
  %2645 = call float @dx.op.tertiary.f32(i32 46, float %2592, float %2631, float %2644)  ; FMad(a,b,c)
  %2646 = fadd fast float %2645, %2632
  %2647 = fmul fast float %2590, %2634
  %2648 = call float @dx.op.tertiary.f32(i32 46, float %2591, float %2635, float %2647)  ; FMad(a,b,c)
  %2649 = call float @dx.op.tertiary.f32(i32 46, float %2592, float %2636, float %2648)  ; FMad(a,b,c)
  %2650 = fadd fast float %2649, %2637
  %2651 = fmul fast float %2590, %2639
  %2652 = call float @dx.op.tertiary.f32(i32 46, float %2591, float %2640, float %2651)  ; FMad(a,b,c)
  %2653 = call float @dx.op.tertiary.f32(i32 46, float %2592, float %2641, float %2652)  ; FMad(a,b,c)
  %2654 = fadd fast float %2653, %2642
  %2655 = fdiv fast float %2646, %2654
  %2656 = fdiv fast float %2650, %2654
  %2657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2658 = extractvalue %dx.types.CBufRet.f32 %2657, 0
  %2659 = extractvalue %dx.types.CBufRet.f32 %2657, 1
  %2660 = fmul fast float %2658, %2655
  %2661 = fmul fast float %2659, %2656
  %2662 = extractvalue %dx.types.CBufRet.f32 %2657, 2
  %2663 = extractvalue %dx.types.CBufRet.f32 %2657, 3
  %2664 = fadd fast float %2660, %2662
  %2665 = fadd fast float %2661, %2663
  %2666 = call float @dx.op.unary.f32(i32 7, float %2664)  ; Saturate(value)
  %2667 = call float @dx.op.unary.f32(i32 7, float %2665)  ; Saturate(value)
  %2668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2669 = extractvalue %dx.types.CBufRet.f32 %2668, 0
  %2670 = extractvalue %dx.types.CBufRet.f32 %2668, 1
  %2671 = fmul fast float %2669, %2666
  %2672 = fmul fast float %2670, %2667
  %2673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %2674 = extractvalue %dx.types.CBufRet.f32 %2673, 1
  %2675 = extractvalue %dx.types.CBufRet.f32 %2673, 2
  %2676 = fsub fast float %2674, %2675
  %2677 = fmul fast float %2676, %2627
  %2678 = fadd fast float %2677, %2675
  %2679 = fmul fast float %210, 2.000000e+00
  %2680 = fmul fast float %211, 2.000000e+00
  %2681 = fadd fast float %2679, -1.000000e+00
  %2682 = fadd fast float %2680, -1.000000e+00
  %2683 = fmul fast float %2678, %2681
  %2684 = fmul fast float %2678, %2682
  %2685 = fadd fast float %2683, %2671
  %2686 = fadd fast float %2684, %2672
  %2687 = extractvalue %dx.types.CBufRet.f32 %2668, 2
  %2688 = extractvalue %dx.types.CBufRet.f32 %2668, 3
  %2689 = fmul fast float %2685, %2687
  %2690 = fmul fast float %2686, %2688
  %2691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %47, float %2689, float %2690, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2692 = extractvalue %dx.types.ResRet.f32 %2691, 0
  %2693 = fcmp fast ogt float %2692, -1.000000e+00
  %2694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2695 = extractvalue %dx.types.CBufRet.f32 %2694, 1
  %2696 = select i1 %2693, float %2695, float 1.000000e+00
  %2697 = fadd fast float %2692, 1.000000e+00
  %2698 = fmul fast float %2696, %2697
  %2699 = call float @dx.op.unary.f32(i32 6, float %2698)  ; FAbs(value)
  %2700 = fsub fast float %2699, %2654
  %2701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %2702 = extractvalue %dx.types.CBufRet.f32 %2701, 2
  %2703 = fmul fast float %2702, %2699
  %2704 = fdiv fast float 1.600000e+02, %2703
  %2705 = fmul fast float %2603, %2603
  %2706 = fmul fast float %2705, 0xBFB5B17960000000
  %2707 = fmul fast float %2706, %2700
  %2708 = fmul fast float %2707, %2704
  %2709 = call float @dx.op.unary.f32(i32 21, float %2708)  ; Exp(value)
  %2710 = fmul fast float %2709, 0x3FF04B2960000000
  %2711 = fsub fast float 0x3FF04B2960000000, %2710
  %2712 = call float @dx.op.unary.f32(i32 7, float %2711)  ; Saturate(value)
  %2713 = fmul fast float %2712, 4.000000e+00
  %2714 = fadd fast float %210, -5.000000e-01
  %2715 = fadd fast float %211, -5.000000e-01
  %2716 = fmul fast float %2712, 0x3FBEB851E0000000
  %2717 = call float @dx.op.unary.f32(i32 7, float %2716)  ; Saturate(value)
  %2718 = fmul fast float %2717, %2714
  %2719 = fmul fast float %2717, %2715
  %2720 = fadd fast float %2718, %2664
  %2721 = fadd fast float %2719, %2665
  %2722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %2723 = extractvalue %dx.types.CBufRet.i32 %2722, 0
  %2724 = icmp eq i32 %2723, 0
  br i1 %2724, label %2730, label %2725, !dx.controlflow.hints !86

; <label>:2725                                    ; preds = %2504
  %2726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %42, float %2720, float %2721, float undef, float undef, i32 0, i32 0, i32 undef, float %2713)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2727 = extractvalue %dx.types.ResRet.f32 %2726, 0
  %2728 = extractvalue %dx.types.ResRet.f32 %2726, 1
  %2729 = extractvalue %dx.types.ResRet.f32 %2726, 2
  br label %2735

; <label>:2730                                    ; preds = %2504
  %2731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %44, float %2720, float %2721, float undef, float undef, i32 0, i32 0, i32 undef, float %2713)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2732 = extractvalue %dx.types.ResRet.f32 %2731, 0
  %2733 = extractvalue %dx.types.ResRet.f32 %2731, 1
  %2734 = extractvalue %dx.types.ResRet.f32 %2731, 2
  br label %2735

; <label>:2735                                    ; preds = %2730, %2725
  %2736 = phi float [ %2727, %2725 ], [ %2732, %2730 ]
  %2737 = phi float [ %2728, %2725 ], [ %2733, %2730 ]
  %2738 = phi float [ %2729, %2725 ], [ %2734, %2730 ]
  %2739 = select i1 %197, float 0.000000e+00, float %2737
  %2740 = select i1 %197, float 0.000000e+00, float %2738
  %2741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2742 = extractvalue %dx.types.CBufRet.f32 %2741, 1
  %2743 = fmul fast float %2736, %2559
  %2744 = fmul fast float %2743, %2742
  %2745 = fmul fast float %2739, %2560
  %2746 = fmul fast float %2745, %2742
  %2747 = fmul fast float %2740, %2561
  %2748 = fmul fast float %2747, %2742
  %2749 = fadd fast float %2604, %1505
  %2750 = fadd fast float %2749, %2617
  %2751 = fadd fast float %2750, %2744
  %2752 = fmul fast float %2751, %1524
  %2753 = fadd fast float %2605, %1506
  %2754 = fadd fast float %2753, %2620
  %2755 = fadd fast float %2754, %2746
  %2756 = fmul fast float %2755, %1524
  %2757 = fadd fast float %2606, %1507
  %2758 = fadd fast float %2757, %2623
  %2759 = fadd fast float %2758, %2748
  %2760 = fmul fast float %2759, %1524
  %2761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2762 = extractvalue %dx.types.CBufRet.f32 %2761, 3
  %2763 = fcmp fast oeq float %2762, 0.000000e+00
  br i1 %2763, label %3968, label %2764

; <label>:2764                                    ; preds = %2735
  %2765 = extractvalue %dx.types.CBufRet.f32 %2761, 0
  %2766 = extractvalue %dx.types.CBufRet.f32 %2761, 1
  %2767 = extractvalue %dx.types.CBufRet.f32 %2761, 2
  %2768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2769 = extractvalue %dx.types.CBufRet.f32 %2768, 0
  %2770 = extractvalue %dx.types.CBufRet.f32 %2768, 1
  %2771 = extractvalue %dx.types.CBufRet.f32 %2768, 2
  %2772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2773 = extractvalue %dx.types.CBufRet.f32 %2772, 0
  %2774 = extractvalue %dx.types.CBufRet.f32 %2772, 1
  %2775 = call float @dx.op.dot3.f32(i32 55, float %2769, float %2770, float %2771, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2776 = select i1 %197, float %2773, float %2769
  %2777 = select i1 %197, float %2775, float %2770
  %2778 = select i1 %197, float %2774, float %2771
  %2779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2780 = extractvalue %dx.types.CBufRet.f32 %2779, 2
  %2781 = fmul fast float %2780, %90
  %2782 = fmul fast float %2780, %91
  %2783 = fmul fast float %2780, %92
  %2784 = fadd fast float %2781, %135
  %2785 = fadd fast float %2782, %136
  %2786 = fadd fast float %2783, %137
  %2787 = fcmp fast olt float %2762, 0.000000e+00
  br i1 %2787, label %3412, label %2788

; <label>:2788                                    ; preds = %2764
  %2789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2790 = extractvalue %dx.types.CBufRet.f32 %2789, 0
  %2791 = extractvalue %dx.types.CBufRet.f32 %2789, 1
  %2792 = extractvalue %dx.types.CBufRet.f32 %2789, 2
  %2793 = extractvalue %dx.types.CBufRet.f32 %2789, 3
  %2794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2795 = extractvalue %dx.types.CBufRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.CBufRet.f32 %2794, 1
  %2797 = extractvalue %dx.types.CBufRet.f32 %2794, 2
  %2798 = extractvalue %dx.types.CBufRet.f32 %2794, 3
  %2799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2800 = extractvalue %dx.types.CBufRet.f32 %2799, 0
  %2801 = extractvalue %dx.types.CBufRet.f32 %2799, 1
  %2802 = extractvalue %dx.types.CBufRet.f32 %2799, 2
  %2803 = extractvalue %dx.types.CBufRet.f32 %2799, 3
  %2804 = fmul fast float %2790, %2784
  %2805 = call float @dx.op.tertiary.f32(i32 46, float %2785, float %2791, float %2804)  ; FMad(a,b,c)
  %2806 = call float @dx.op.tertiary.f32(i32 46, float %2786, float %2792, float %2805)  ; FMad(a,b,c)
  %2807 = fadd fast float %2806, %2793
  %2808 = fmul fast float %2795, %2784
  %2809 = call float @dx.op.tertiary.f32(i32 46, float %2785, float %2796, float %2808)  ; FMad(a,b,c)
  %2810 = call float @dx.op.tertiary.f32(i32 46, float %2786, float %2797, float %2809)  ; FMad(a,b,c)
  %2811 = fadd fast float %2810, %2798
  %2812 = fmul fast float %2800, %2784
  %2813 = call float @dx.op.tertiary.f32(i32 46, float %2785, float %2801, float %2812)  ; FMad(a,b,c)
  %2814 = call float @dx.op.tertiary.f32(i32 46, float %2786, float %2802, float %2813)  ; FMad(a,b,c)
  %2815 = fadd fast float %2814, %2803
  %2816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2817 = extractvalue %dx.types.CBufRet.f32 %2816, 0
  %2818 = extractvalue %dx.types.CBufRet.f32 %2816, 1
  %2819 = extractvalue %dx.types.CBufRet.f32 %2816, 3
  %2820 = fmul fast float %2819, %2807
  %2821 = fmul fast float %2819, %2811
  %2822 = fadd fast float %2820, %2817
  %2823 = fadd fast float %2821, %2818
  %2824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2825 = extractvalue %dx.types.CBufRet.f32 %2824, 0
  %2826 = extractvalue %dx.types.CBufRet.f32 %2824, 1
  %2827 = extractvalue %dx.types.CBufRet.f32 %2824, 3
  %2828 = fmul fast float %2827, %2807
  %2829 = fmul fast float %2827, %2811
  %2830 = fadd fast float %2828, %2825
  %2831 = fadd fast float %2829, %2826
  %2832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2833 = extractvalue %dx.types.CBufRet.f32 %2832, 1
  %2834 = fsub fast float %2833, %2815
  %2835 = extractvalue %dx.types.CBufRet.f32 %2832, 2
  %2836 = fmul fast float %2834, %2835
  %2837 = fsub fast float 1.000000e+00, %2836
  %2838 = call float @dx.op.unary.f32(i32 7, float %2837)  ; Saturate(value)
  %2839 = extractvalue %dx.types.CBufRet.f32 %2824, 2
  %2840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2841 = extractvalue %dx.types.CBufRet.f32 %2840, 2
  %2842 = fadd fast float %2841, %2839
  %2843 = fcmp fast ogt float %2842, 0.000000e+00
  br i1 %2843, label %2844, label %2868

; <label>:2844                                    ; preds = %2788
  %2845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2846 = extractvalue %dx.types.CBufRet.f32 %2845, 0
  %2847 = extractvalue %dx.types.CBufRet.f32 %2845, 1
  %2848 = fsub fast float %2830, %2846
  %2849 = fsub fast float %2831, %2847
  %2850 = fcmp fast olt float %2848, 0.000000e+00
  %2851 = fcmp fast olt float %2849, 0.000000e+00
  %2852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2853 = extractvalue %dx.types.CBufRet.f32 %2852, 0
  %2854 = extractvalue %dx.types.CBufRet.f32 %2852, 1
  %2855 = extractvalue %dx.types.CBufRet.f32 %2852, 2
  %2856 = extractvalue %dx.types.CBufRet.f32 %2852, 3
  %2857 = select i1 %2850, float %2853, float %2855
  %2858 = select i1 %2851, float %2854, float %2856
  %2859 = fmul fast float %2857, %2848
  %2860 = fmul fast float %2858, %2849
  %2861 = call float @dx.op.unary.f32(i32 6, float %2859)  ; FAbs(value)
  %2862 = call float @dx.op.unary.f32(i32 6, float %2860)  ; FAbs(value)
  %2863 = extractvalue %dx.types.CBufRet.f32 %2779, 0
  %2864 = call float @dx.op.binary.f32(i32 35, float %2861, float %2862)  ; FMax(a,b)
  %2865 = fsub fast float %2863, %2864
  %2866 = call float @dx.op.unary.f32(i32 7, float %2865)  ; Saturate(value)
  %2867 = fmul fast float %2866, %2838
  br label %2868

; <label>:2868                                    ; preds = %2844, %2788
  %2869 = phi float [ %2867, %2844 ], [ 0.000000e+00, %2788 ]
  %2870 = extractvalue %dx.types.CBufRet.f32 %2816, 2
  %2871 = extractvalue %dx.types.CBufRet.f32 %2840, 1
  %2872 = fadd fast float %2871, %2870
  %2873 = fcmp fast ogt float %2872, 0.000000e+00
  %2874 = extractvalue %dx.types.CBufRet.f32 %2779, 0
  br i1 %2873, label %2875, label %2898

; <label>:2875                                    ; preds = %2868
  %2876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2877 = extractvalue %dx.types.CBufRet.f32 %2876, 0
  %2878 = extractvalue %dx.types.CBufRet.f32 %2876, 1
  %2879 = fsub fast float %2822, %2877
  %2880 = fsub fast float %2823, %2878
  %2881 = fcmp fast olt float %2879, 0.000000e+00
  %2882 = fcmp fast olt float %2880, 0.000000e+00
  %2883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2884 = extractvalue %dx.types.CBufRet.f32 %2883, 0
  %2885 = extractvalue %dx.types.CBufRet.f32 %2883, 1
  %2886 = extractvalue %dx.types.CBufRet.f32 %2883, 2
  %2887 = extractvalue %dx.types.CBufRet.f32 %2883, 3
  %2888 = select i1 %2881, float %2884, float %2886
  %2889 = select i1 %2882, float %2885, float %2887
  %2890 = fmul fast float %2888, %2879
  %2891 = fmul fast float %2889, %2880
  %2892 = call float @dx.op.unary.f32(i32 6, float %2890)  ; FAbs(value)
  %2893 = call float @dx.op.unary.f32(i32 6, float %2891)  ; FAbs(value)
  %2894 = call float @dx.op.binary.f32(i32 35, float %2892, float %2893)  ; FMax(a,b)
  %2895 = fsub fast float %2874, %2894
  %2896 = call float @dx.op.unary.f32(i32 7, float %2895)  ; Saturate(value)
  %2897 = fmul fast float %2896, %2838
  br label %2898

; <label>:2898                                    ; preds = %2875, %2868
  %2899 = phi float [ %2897, %2875 ], [ 0.000000e+00, %2868 ]
  %2900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2901 = extractvalue %dx.types.CBufRet.f32 %2900, 1
  %2902 = call float @dx.op.unary.f32(i32 7, float %2901)  ; Saturate(value)
  %2903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2904 = extractvalue %dx.types.CBufRet.f32 %2903, 0
  %2905 = extractvalue %dx.types.CBufRet.f32 %2903, 1
  %2906 = fsub fast float %2807, %2904
  %2907 = fsub fast float %2811, %2905
  %2908 = fcmp fast olt float %2906, 0.000000e+00
  %2909 = fcmp fast olt float %2907, 0.000000e+00
  %2910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2911 = extractvalue %dx.types.CBufRet.f32 %2910, 0
  %2912 = extractvalue %dx.types.CBufRet.f32 %2910, 1
  %2913 = extractvalue %dx.types.CBufRet.f32 %2910, 2
  %2914 = extractvalue %dx.types.CBufRet.f32 %2910, 3
  %2915 = select i1 %2908, float %2911, float %2913
  %2916 = select i1 %2909, float %2912, float %2914
  %2917 = fmul fast float %2915, %2906
  %2918 = fmul fast float %2916, %2907
  %2919 = call float @dx.op.unary.f32(i32 6, float %2917)  ; FAbs(value)
  %2920 = call float @dx.op.unary.f32(i32 6, float %2918)  ; FAbs(value)
  %2921 = call float @dx.op.binary.f32(i32 35, float %2919, float %2920)  ; FMax(a,b)
  %2922 = fsub fast float %2874, %2921
  %2923 = call float @dx.op.unary.f32(i32 7, float %2922)  ; Saturate(value)
  %2924 = call float @dx.op.binary.f32(i32 36, float %2923, float %2902)  ; FMin(a,b)
  %2925 = fmul fast float %2924, %2838
  %2926 = fsub fast float %2899, %2925
  %2927 = fsub fast float %2869, %2899
  %2928 = fsub fast float %2927, %2925
  %2929 = call float @dx.op.binary.f32(i32 35, float %2899, float %2869)  ; FMax(a,b)
  %2930 = call float @dx.op.binary.f32(i32 35, float %2925, float %2929)  ; FMax(a,b)
  %2931 = fcmp fast olt float %2930, 1.000000e+00
  br i1 %2931, label %2932, label %3330, !dx.controlflow.hints !87

; <label>:2932                                    ; preds = %2898
  %2933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2934 = extractvalue %dx.types.CBufRet.f32 %2933, 0
  %2935 = fcmp fast une float %2934, 0.000000e+00
  br i1 %2935, label %2936, label %3330, !dx.controlflow.hints !88

; <label>:2936                                    ; preds = %2932
  %2937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2938 = extractvalue %dx.types.CBufRet.f32 %2937, 0
  %2939 = extractvalue %dx.types.CBufRet.f32 %2937, 1
  %2940 = extractvalue %dx.types.CBufRet.f32 %2937, 2
  %2941 = extractvalue %dx.types.CBufRet.f32 %2937, 3
  %2942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2943 = extractvalue %dx.types.CBufRet.f32 %2942, 0
  %2944 = extractvalue %dx.types.CBufRet.f32 %2942, 1
  %2945 = extractvalue %dx.types.CBufRet.f32 %2942, 2
  %2946 = extractvalue %dx.types.CBufRet.f32 %2942, 3
  %2947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2948 = extractvalue %dx.types.CBufRet.f32 %2947, 0
  %2949 = extractvalue %dx.types.CBufRet.f32 %2947, 1
  %2950 = extractvalue %dx.types.CBufRet.f32 %2947, 2
  %2951 = extractvalue %dx.types.CBufRet.f32 %2947, 3
  %2952 = fmul fast float %2938, %2784
  %2953 = call float @dx.op.tertiary.f32(i32 46, float %2785, float %2939, float %2952)  ; FMad(a,b,c)
  %2954 = call float @dx.op.tertiary.f32(i32 46, float %2786, float %2940, float %2953)  ; FMad(a,b,c)
  %2955 = fadd fast float %2954, %2941
  %2956 = fmul fast float %2943, %2784
  %2957 = call float @dx.op.tertiary.f32(i32 46, float %2785, float %2944, float %2956)  ; FMad(a,b,c)
  %2958 = call float @dx.op.tertiary.f32(i32 46, float %2786, float %2945, float %2957)  ; FMad(a,b,c)
  %2959 = fadd fast float %2958, %2946
  %2960 = fmul fast float %2948, %2784
  %2961 = call float @dx.op.tertiary.f32(i32 46, float %2785, float %2949, float %2960)  ; FMad(a,b,c)
  %2962 = call float @dx.op.tertiary.f32(i32 46, float %2786, float %2950, float %2961)  ; FMad(a,b,c)
  %2963 = fadd fast float %2962, %2951
  %2964 = fcmp fast oge float %2955, 1.000000e+00
  %2965 = fcmp fast oge float %2959, 1.000000e+00
  %2966 = or i1 %2964, %2965
  %2967 = fcmp fast olt float %2955, 0.000000e+00
  %2968 = fcmp fast olt float %2959, 0.000000e+00
  %2969 = or i1 %2967, %2968
  %2970 = or i1 %2966, %2969
  br i1 %2970, label %3330, label %2971, !dx.controlflow.hints !89

; <label>:2971                                    ; preds = %2936
  %2972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2973 = extractvalue %dx.types.CBufRet.f32 %2972, 0
  %2974 = extractvalue %dx.types.CBufRet.f32 %2972, 1
  %2975 = extractvalue %dx.types.CBufRet.f32 %2972, 2
  %2976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2977 = extractvalue %dx.types.CBufRet.i32 %2976, 2
  %2978 = uitofp i32 %2977 to float
  %2979 = extractvalue %dx.types.CBufRet.i32 %2976, 3
  %2980 = uitofp i32 %2979 to float
  %2981 = extractvalue %dx.types.CBufRet.f32 %2972, 3
  %2982 = fmul fast float %2981, 2.000000e+00
  %2983 = fsub fast float %2955, %2973
  %2984 = fsub fast float %2959, %2974
  %2985 = fmul fast float %2982, %2983
  %2986 = fmul fast float %2982, %2984
  %2987 = fdiv fast float 1.000000e+00, %2767
  %2988 = fmul fast float %2986, %2987
  %2989 = call float @dx.op.unary.f32(i32 6, float %2988)  ; FAbs(value)
  %2990 = fmul fast float %2975, %2786
  %2991 = fmul fast float %2990, %2982
  %2992 = call float @dx.op.unary.f32(i32 6, float %2991)  ; FAbs(value)
  %2993 = call float @dx.op.unary.f32(i32 6, float %2985)  ; FAbs(value)
  %2994 = call float @dx.op.binary.f32(i32 35, float %2992, float %2989)  ; FMax(a,b)
  %2995 = call float @dx.op.binary.f32(i32 35, float %2993, float %2994)  ; FMax(a,b)
  %2996 = fmul fast float %2995, 2.000000e+00
  %2997 = call float @dx.op.unary.f32(i32 23, float %2996)  ; Log(value)
  %2998 = call float @dx.op.binary.f32(i32 35, float %2997, float %2978)  ; FMax(a,b)
  %2999 = call float @dx.op.unary.f32(i32 22, float %2998)  ; Frc(value)
  %3000 = fadd fast float %2999, 0xBFEA666660000000
  %3001 = fmul fast float %3000, 8.000000e+00
  %3002 = call float @dx.op.unary.f32(i32 7, float %3001)  ; Saturate(value)
  %3003 = call float @dx.op.unary.f32(i32 27, float %2998)  ; Round_ni(value)
  %3004 = fadd fast float %3003, %3002
  %3005 = call float @dx.op.binary.f32(i32 36, float %3004, float %2980)  ; FMin(a,b)
  %3006 = call float @dx.op.unary.f32(i32 27, float %3005)  ; Round_ni(value)
  %3007 = fsub fast float -0.000000e+00, %3006
  %3008 = call float @dx.op.unary.f32(i32 21, float %3007)  ; Exp(value)
  %3009 = fmul fast float %3008, %2982
  %3010 = fmul fast float %3009, %2955
  %3011 = fmul fast float %3009, %2959
  %3012 = fmul fast float %3010, 2.500000e-01
  %3013 = fmul fast float %3011, 2.500000e-01
  %3014 = fadd fast float %3012, 5.000000e-01
  %3015 = fadd fast float %3013, 5.000000e-01
  %3016 = fsub fast float %2980, %2978
  %3017 = fptoui float %3016 to i32
  %3018 = add i32 %3017, 320
  %3019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 %3018)  ; CBufferLoadLegacy(handle,regIndex)
  %3020 = extractvalue %dx.types.CBufRet.f32 %3019, 0
  %3021 = extractvalue %dx.types.CBufRet.f32 %3019, 1
  %3022 = fcmp fast une float %3005, %2980
  %3023 = fsub fast float %2955, %3020
  %3024 = fsub fast float %2959, %3021
  %3025 = call float @dx.op.unary.f32(i32 6, float %3023)  ; FAbs(value)
  %3026 = call float @dx.op.unary.f32(i32 6, float %3024)  ; FAbs(value)
  %3027 = fmul fast float %3025, %3009
  %3028 = fmul fast float %3026, %3009
  %3029 = fcmp fast olt float %3027, 1.000000e+00
  %3030 = fcmp fast olt float %3028, 1.000000e+00
  %3031 = and i1 %3029, %3030
  %3032 = or i1 %3022, %3031
  br i1 %3032, label %3033, label %3330, !dx.controlflow.hints !90

; <label>:3033                                    ; preds = %2971
  %3034 = fmul fast float %3011, 5.000000e-01
  %3035 = fmul fast float %3010, 5.000000e-01
  %3036 = fadd fast float %3034, 5.000000e-01
  %3037 = fadd fast float %3035, 5.000000e-01
  %3038 = sitofp i32 %2977 to float
  %3039 = fsub fast float %3005, %3038
  %3040 = call float @dx.op.unary.f32(i32 27, float %3039)  ; Round_ni(value)
  %3041 = call float @dx.op.unary.f32(i32 22, float %3005)  ; Frc(value)
  %3042 = call float @dx.op.unary.f32(i32 22, float %3037)  ; Frc(value)
  %3043 = call float @dx.op.unary.f32(i32 22, float %3036)  ; Frc(value)
  %3044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %45, float %3042, float %3043, float %3040, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3045 = extractvalue %dx.types.ResRet.f32 %3044, 0
  %3046 = extractvalue %dx.types.ResRet.f32 %3044, 1
  %3047 = extractvalue %dx.types.ResRet.f32 %3044, 2
  %3048 = extractvalue %dx.types.ResRet.f32 %3044, 3
  %3049 = fcmp fast ogt float %3041, 0.000000e+00
  br i1 %3049, label %3050, label %3071, !dx.controlflow.hints !91

; <label>:3050                                    ; preds = %3033
  %3051 = fadd fast float %3040, 1.000000e+00
  %3052 = call float @dx.op.unary.f32(i32 22, float %3014)  ; Frc(value)
  %3053 = call float @dx.op.unary.f32(i32 22, float %3015)  ; Frc(value)
  %3054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %45, float %3052, float %3053, float %3051, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3055 = extractvalue %dx.types.ResRet.f32 %3054, 0
  %3056 = extractvalue %dx.types.ResRet.f32 %3054, 1
  %3057 = extractvalue %dx.types.ResRet.f32 %3054, 2
  %3058 = extractvalue %dx.types.ResRet.f32 %3054, 3
  %3059 = fsub fast float %3055, %3045
  %3060 = fsub fast float %3056, %3046
  %3061 = fsub fast float %3057, %3047
  %3062 = fsub fast float %3058, %3048
  %3063 = fmul fast float %3059, %3041
  %3064 = fmul fast float %3060, %3041
  %3065 = fmul fast float %3061, %3041
  %3066 = fmul fast float %3062, %3041
  %3067 = fadd fast float %3063, %3045
  %3068 = fadd fast float %3064, %3046
  %3069 = fadd fast float %3065, %3047
  %3070 = fadd fast float %3066, %3048
  br label %3071

; <label>:3071                                    ; preds = %3050, %3033
  %3072 = phi float [ %3067, %3050 ], [ %3045, %3033 ]
  %3073 = phi float [ %3068, %3050 ], [ %3046, %3033 ]
  %3074 = phi float [ %3069, %3050 ], [ %3047, %3033 ]
  %3075 = phi float [ %3070, %3050 ], [ %3048, %3033 ]
  %3076 = fadd fast float %3072, -5.000000e-01
  %3077 = fadd fast float %3074, -5.000000e-01
  %3078 = fmul fast float %3076, 0xBFD5555560000000
  %3079 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3077, float %3078)  ; FMad(a,b,c)
  %3080 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3073, float 0.000000e+00)  ; FMad(a,b,c)
  %3081 = fadd fast float %3080, %3075
  %3082 = fmul fast float %3076, -7.500000e-01
  %3083 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3077, float %3082)  ; FMad(a,b,c)
  %3084 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3073, float 0.000000e+00)  ; FMad(a,b,c)
  %3085 = fadd fast float %3084, %3075
  %3086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3087 = extractvalue %dx.types.CBufRet.f32 %3086, 0
  %3088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3089 = extractvalue %dx.types.CBufRet.f32 %3088, 0
  %3090 = extractvalue %dx.types.CBufRet.f32 %3088, 1
  %3091 = extractvalue %dx.types.CBufRet.f32 %3088, 2
  %3092 = extractvalue %dx.types.CBufRet.f32 %3088, 3
  %3093 = fsub fast float %3089, %3079
  %3094 = fsub fast float %3090, %3081
  %3095 = fsub fast float %3091, %3083
  %3096 = fsub fast float %3092, %3085
  %3097 = fmul fast float %3093, %3087
  %3098 = fmul fast float %3094, %3087
  %3099 = fmul fast float %3095, %3087
  %3100 = fmul fast float %3096, %3087
  %3101 = fadd fast float %3097, %3079
  %3102 = fadd fast float %3098, %3081
  %3103 = fadd fast float %3099, %3083
  %3104 = fadd fast float %3100, %3085
  %3105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3106 = extractvalue %dx.types.ResRet.i32 %3105, 0
  %3107 = and i32 %3106, 536870911
  %3108 = uitofp i32 %3107 to float
  %3109 = fmul fast float %3108, %2955
  %3110 = fmul fast float %3108, %2959
  %3111 = fptoui float %3109 to i32
  %3112 = fptoui float %3110 to i32
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = and i32 %3114, 31
  %3116 = lshr i32 %3111, %3115
  %3117 = lshr i32 %3112, %3115
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = and i32 %3119, 31
  %3121 = shl i32 1, %3120
  %3122 = call i32 @dx.op.binary.i32(i32 40, i32 %3121, i32 4)  ; UMin(a,b)
  %3123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.i32 %3123, 0
  %3125 = extractvalue %dx.types.ResRet.i32 %3123, 1
  %3126 = icmp eq i32 %3122, 0
  br i1 %3126, label %3168, label %3127

; <label>:3127                                    ; preds = %3071
  br label %3128

; <label>:3128                                    ; preds = %3156, %3127
  %3129 = phi i32 [ %3159, %3156 ], [ 0, %3127 ]
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = lshr i32 %3131, 16
  %3133 = and i32 %3132, 31
  %3134 = shl i32 %3117, %3133
  %3135 = add i32 %3134, %3116
  %3136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3137 = extractvalue %dx.types.ResRet.i32 %3136, 0
  %3138 = and i32 %3137, 31
  %3139 = shl i32 %3135, %3138
  %3140 = add i32 %3139, %3129
  %3141 = shl i32 %3140, 2
  %3142 = add i32 %3141, 32
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = icmp slt i32 %3144, 0
  %3146 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %3129
  %3147 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %3129
  %3148 = bitcast float* %3146 to i32*
  %3149 = bitcast float* %3147 to i32*
  br i1 %3145, label %3150, label %3156

; <label>:3150                                    ; preds = %3128
  %3151 = and i32 %3144, 1073741823
  %3152 = add nuw nsw i32 %3151, 20
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3152, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = extractvalue %dx.types.ResRet.i32 %3153, 1
  br label %3156

; <label>:3156                                    ; preds = %3150, %3128
  %3157 = phi i32 [ %3154, %3150 ], [ %3124, %3128 ]
  %3158 = phi i32 [ %3155, %3150 ], [ %3125, %3128 ]
  store i32 %3157, i32* %3148, align 4
  store i32 %3158, i32* %3149, align 4
  %3159 = add nuw i32 %3129, 1
  %3160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3161 = extractvalue %dx.types.CBufRet.i32 %3160, 2
  %3162 = icmp eq i32 %3161, 0
  %3163 = icmp ugt i32 %3144, -1073741825
  %3164 = and i1 %3163, %3162
  %3165 = icmp ult i32 %3159, %3122
  %3166 = and i1 %3164, %3165
  br i1 %3166, label %3128, label %3167

; <label>:3167                                    ; preds = %3156
  br label %3168

; <label>:3168                                    ; preds = %3167, %3071
  %3169 = phi i32 [ 0, %3071 ], [ %3159, %3167 ]
  %3170 = extractvalue %dx.types.CBufRet.f32 %2933, 2
  %3171 = fptoui float %3170 to i32
  %3172 = icmp eq i32 %3171, 0
  br i1 %3172, label %3224, label %3173

; <label>:3173                                    ; preds = %3168
  br label %3174

; <label>:3174                                    ; preds = %3219, %3173
  %3175 = phi i32 [ %3220, %3219 ], [ %3169, %3173 ]
  %3176 = phi i32 [ %3221, %3219 ], [ 0, %3173 ]
  %3177 = lshr i32 %3176, 2
  %3178 = and i32 %3176, 3
  %3179 = add nuw nsw i32 %3177, 83
  %3180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 %3179)  ; CBufferLoadLegacy(handle,regIndex)
  %3181 = extractvalue %dx.types.CBufRet.i32 %3180, 0
  %3182 = extractvalue %dx.types.CBufRet.i32 %3180, 1
  %3183 = extractvalue %dx.types.CBufRet.i32 %3180, 2
  %3184 = extractvalue %dx.types.CBufRet.i32 %3180, 3
  %3185 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 0
  store i32 %3181, i32* %3185, align 4
  %3186 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 1
  store i32 %3182, i32* %3186, align 4
  %3187 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 2
  store i32 %3183, i32* %3187, align 4
  %3188 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 3
  store i32 %3184, i32* %3188, align 4
  %3189 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i32 0, i32 %3178
  %3190 = load i32, i32* %3189, align 4, !tbaa !92, !noalias !96
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = lshr i32 %3192, 16
  %3194 = and i32 %3193, 31
  %3195 = shl i32 %3117, %3194
  %3196 = add i32 %3195, %3116
  %3197 = shl i32 %3196, 2
  %3198 = add i32 %3197, %3190
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3198, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = icmp eq i32 %3200, 0
  br i1 %3201, label %3219, label %3202

; <label>:3202                                    ; preds = %3174
  %3203 = icmp slt i32 %3200, 0
  %3204 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %3175
  %3205 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %3175
  %3206 = bitcast float* %3204 to i32*
  %3207 = bitcast float* %3205 to i32*
  br i1 %3203, label %3208, label %3215

; <label>:3208                                    ; preds = %3202
  %3209 = and i32 %3200, 1073741823
  %3210 = add i32 %3190, 20
  %3211 = add i32 %3210, %3209
  %3212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3211, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.i32 %3212, 0
  %3214 = extractvalue %dx.types.ResRet.i32 %3212, 1
  br label %3215

; <label>:3215                                    ; preds = %3208, %3202
  %3216 = phi i32 [ %3213, %3208 ], [ %3124, %3202 ]
  %3217 = phi i32 [ %3214, %3208 ], [ %3125, %3202 ]
  store i32 %3216, i32* %3206, align 4
  store i32 %3217, i32* %3207, align 4
  %3218 = add i32 %3175, 1
  br label %3219

; <label>:3219                                    ; preds = %3215, %3174
  %3220 = phi i32 [ %3175, %3174 ], [ %3218, %3215 ]
  %3221 = add nuw i32 %3176, 1
  %3222 = icmp eq i32 %3221, %3171
  br i1 %3222, label %3223, label %3174

; <label>:3223                                    ; preds = %3219
  br label %3224

; <label>:3224                                    ; preds = %3223, %3168
  %3225 = phi i32 [ %3169, %3168 ], [ %3220, %3223 ]
  %3226 = icmp eq i32 %3225, 1
  %3227 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 0
  %3228 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 0
  br i1 %3226, label %3229, label %3232

; <label>:3229                                    ; preds = %3224
  %3230 = load float, float* %3227, align 4
  %3231 = load float, float* %3228, align 4
  br label %3259

; <label>:3232                                    ; preds = %3224
  %3233 = load float, float* %3227, align 4
  %3234 = load float, float* %3228, align 4
  %3235 = fdiv fast float 1.000000e+00, %3234
  %3236 = fsub fast float %3233, %3235
  %3237 = icmp ugt i32 %3225, 1
  br i1 %3237, label %3238, label %3254

; <label>:3238                                    ; preds = %3232
  br label %3239

; <label>:3239                                    ; preds = %3239, %3238
  %3240 = phi float [ %3249, %3239 ], [ %3236, %3238 ]
  %3241 = phi float [ %3250, %3239 ], [ %3233, %3238 ]
  %3242 = phi i32 [ %3251, %3239 ], [ 1, %3238 ]
  %3243 = getelementptr [12 x float], [12 x float]* %79, i32 0, i32 %3242
  %3244 = load float, float* %3243, align 4
  %3245 = getelementptr [12 x float], [12 x float]* %80, i32 0, i32 %3242
  %3246 = load float, float* %3245, align 4
  %3247 = fdiv fast float 1.000000e+00, %3246
  %3248 = fsub fast float %3244, %3247
  %3249 = call float @dx.op.binary.f32(i32 36, float %3240, float %3248)  ; FMin(a,b)
  %3250 = call float @dx.op.binary.f32(i32 35, float %3241, float %3244)  ; FMax(a,b)
  %3251 = add nuw i32 %3242, 1
  %3252 = icmp eq i32 %3251, %3225
  br i1 %3252, label %3253, label %3239

; <label>:3253                                    ; preds = %3239
  br label %3254

; <label>:3254                                    ; preds = %3253, %3232
  %3255 = phi float [ %3236, %3232 ], [ %3249, %3253 ]
  %3256 = phi float [ %3233, %3232 ], [ %3250, %3253 ]
  %3257 = fsub fast float %3256, %3255
  %3258 = fdiv fast float 1.000000e+00, %3257
  br label %3259

; <label>:3259                                    ; preds = %3254, %3229
  %3260 = phi float [ %3230, %3229 ], [ %3256, %3254 ]
  %3261 = phi float [ %3231, %3229 ], [ %3258, %3254 ]
  %3262 = fadd fast float %2963, %3260
  %3263 = fmul fast float %3262, %3261
  %3264 = call float @dx.op.unary.f32(i32 7, float %3263)  ; Saturate(value)
  %3265 = fmul fast float %3264, 2.000000e+00
  %3266 = fsub fast float 1.000000e+00, %3265
  %3267 = fmul fast float %3101, %3101
  %3268 = fsub fast float %3102, %3267
  %3269 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3268)  ; FMax(a,b)
  %3270 = fdiv fast float 1.000000e+00, %3269
  %3271 = fmul fast float %3102, %3101
  %3272 = fsub fast float %3103, %3271
  %3273 = fsub fast float %3266, %3101
  %3274 = fmul fast float %3266, %3266
  %3275 = fsub fast float %3274, %3102
  %3276 = fmul fast float %3270, %3272
  %3277 = fmul fast float %3276, %3273
  %3278 = fsub fast float %3275, %3277
  %3279 = fmul fast float %3102, %3102
  %3280 = fsub fast float %3104, %3279
  %3281 = fmul fast float %3272, %3272
  %3282 = fmul fast float %3281, %3270
  %3283 = fsub fast float %3280, %3282
  %3284 = fdiv fast float %3278, %3283
  %3285 = fmul fast float %3284, %3272
  %3286 = fsub fast float %3273, %3285
  %3287 = fmul fast float %3286, %3270
  %3288 = fmul fast float %3287, %3101
  %3289 = fsub fast float 1.000000e+00, %3288
  %3290 = fmul fast float %3284, %3102
  %3291 = fsub fast float %3289, %3290
  %3292 = fmul fast float %3287, %3287
  %3293 = fmul fast float %3284, 4.000000e+00
  %3294 = fmul fast float %3293, %3291
  %3295 = fsub fast float %3292, %3294
  %3296 = call float @dx.op.unary.f32(i32 24, float %3295)  ; Sqrt(value)
  %3297 = fcmp fast oge float %3287, 0.000000e+00
  %3298 = fsub fast float -0.000000e+00, %3296
  %3299 = select i1 %3297, float %3298, float %3296
  %3300 = fsub fast float %3299, %3287
  %3301 = fdiv fast float %3300, %3284
  %3302 = fdiv fast float %3291, %3300
  %3303 = fmul fast float %3301, 5.000000e-01
  %3304 = fmul fast float %3302, 2.000000e+00
  %3305 = select i1 %3297, float %3303, float %3304
  %3306 = select i1 %3297, float %3304, float %3303
  %3307 = call float @dx.op.binary.f32(i32 35, float %3305, float %3306)  ; FMax(a,b)
  %3308 = call float @dx.op.binary.f32(i32 36, float %3305, float %3306)  ; FMin(a,b)
  %3309 = fcmp fast ogt float %3266, %3307
  %3310 = fsub fast float %3266, %3308
  %3311 = fsub fast float %3266, %3307
  %3312 = fsub fast float %3307, %3308
  %3313 = select i1 %3309, float %3311, float %3312
  %3314 = fmul float %3310, %3313
  %3315 = select i1 %3309, float %3308, float %3266
  %3316 = fcmp fast ogt float %3266, %3308
  %3317 = fmul fast float %3315, %3307
  %3318 = fadd fast float %3315, %3307
  %3319 = fmul fast float %3318, %3101
  %3320 = fadd fast float %3317, %3102
  %3321 = fsub fast float %3320, %3319
  %3322 = fdiv fast float %3321, %3314
  %3323 = select i1 %3316, float %3322, float 0.000000e+00
  %3324 = fsub fast float 1.000000e+00, %3323
  %3325 = select i1 %3309, float %3324, float %3323
  %3326 = call float @dx.op.unary.f32(i32 7, float %3325)  ; Saturate(value)
  %3327 = extractvalue %dx.types.CBufRet.f32 %3086, 3
  %3328 = fmul fast float %3327, %3326
  %3329 = fsub fast float 1.000000e+00, %3328
  br label %3330

; <label>:3330                                    ; preds = %3259, %2971, %2936, %2932, %2898
  %3331 = phi float [ 1.000000e+00, %2898 ], [ %3329, %3259 ], [ 1.000000e+00, %2936 ], [ 1.000000e+00, %2971 ], [ 1.000000e+00, %2932 ]
  %3332 = fcmp fast ogt float %2928, 0.000000e+00
  br i1 %3332, label %3333, label %3339, !dx.controlflow.hints !105

; <label>:3333                                    ; preds = %3330
  %3334 = fadd fast float %2841, %2815
  %3335 = call float @dx.op.binary.f32(i32 35, float %3334, float 0.000000e+00)  ; FMax(a,b)
  %3336 = fadd fast float %3335, 0x3F10000000000000
  %3337 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %48, float %2830, float %2831, float undef, float undef, i32 0, i32 0, i32 undef, float %3336)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3338 = extractvalue %dx.types.ResRet.f32 %3337, 0
  br label %3339

; <label>:3339                                    ; preds = %3333, %3330
  %3340 = phi float [ %3338, %3333 ], [ 1.000000e+00, %3330 ]
  %3341 = fcmp fast ogt float %2926, 0.000000e+00
  br i1 %3341, label %3342, label %3348, !dx.controlflow.hints !106

; <label>:3342                                    ; preds = %3339
  %3343 = fadd fast float %2871, %2815
  %3344 = call float @dx.op.binary.f32(i32 35, float %3343, float 0.000000e+00)  ; FMax(a,b)
  %3345 = fadd fast float %3344, 0x3F10000000000000
  %3346 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %48, float %2822, float %2823, float undef, float undef, i32 0, i32 0, i32 undef, float %3345)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3347 = extractvalue %dx.types.ResRet.f32 %3346, 0
  br label %3348

; <label>:3348                                    ; preds = %3342, %3339
  %3349 = phi float [ %3347, %3342 ], [ 1.000000e+00, %3339 ]
  %3350 = fcmp fast ogt float %2925, 0.000000e+00
  br i1 %3350, label %3351, label %3358, !dx.controlflow.hints !107

; <label>:3351                                    ; preds = %3348
  %3352 = extractvalue %dx.types.CBufRet.f32 %2840, 0
  %3353 = fadd fast float %3352, %2815
  %3354 = call float @dx.op.binary.f32(i32 35, float %3353, float 0.000000e+00)  ; FMax(a,b)
  %3355 = fadd fast float %3354, 0x3F10000000000000
  %3356 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %48, float %2807, float %2811, float undef, float undef, i32 0, i32 0, i32 undef, float %3355)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3357 = extractvalue %dx.types.ResRet.f32 %3356, 0
  br label %3358

; <label>:3358                                    ; preds = %3351, %3348
  %3359 = phi float [ %3357, %3351 ], [ 1.000000e+00, %3348 ]
  %3360 = fsub fast float %3340, %3331
  %3361 = fmul fast float %3360, %2869
  %3362 = fadd fast float %3361, %3331
  %3363 = fsub fast float %3349, %3362
  %3364 = fmul fast float %3363, %2899
  %3365 = fadd fast float %3364, %3362
  %3366 = fsub fast float %3359, %3365
  %3367 = fmul fast float %3366, %2925
  %3368 = fadd fast float %3367, %3365
  %3369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3370 = extractvalue %dx.types.CBufRet.f32 %3369, 2
  %3371 = fcmp fast ogt float %3370, 0.000000e+00
  br i1 %3371, label %3372, label %3412, !dx.controlflow.hints !108

; <label>:3372                                    ; preds = %3358
  %3373 = fcmp fast ugt float %3370, 0.000000e+00
  br i1 %3373, label %3374, label %3409

; <label>:3374                                    ; preds = %3372
  %3375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3376 = extractvalue %dx.types.CBufRet.f32 %3375, 0
  %3377 = extractvalue %dx.types.CBufRet.f32 %3375, 1
  %3378 = extractvalue %dx.types.CBufRet.f32 %3375, 2
  %3379 = extractvalue %dx.types.CBufRet.f32 %3375, 3
  %3380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3381 = extractvalue %dx.types.CBufRet.f32 %3380, 0
  %3382 = extractvalue %dx.types.CBufRet.f32 %3380, 1
  %3383 = extractvalue %dx.types.CBufRet.f32 %3380, 2
  %3384 = extractvalue %dx.types.CBufRet.f32 %3380, 3
  %3385 = extractvalue %dx.types.CBufRet.f32 %3369, 0
  %3386 = extractvalue %dx.types.CBufRet.f32 %3369, 1
  %3387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3388 = extractvalue %dx.types.CBufRet.f32 %3387, 0
  %3389 = extractvalue %dx.types.CBufRet.f32 %3387, 1
  %3390 = extractvalue %dx.types.CBufRet.f32 %3387, 2
  %3391 = fadd fast float %3388, %2784
  %3392 = fadd fast float %3389, %2785
  %3393 = fadd fast float %3390, %2786
  %3394 = fmul fast float %3391, %3376
  %3395 = call float @dx.op.tertiary.f32(i32 46, float %3377, float %3392, float %3394)  ; FMad(a,b,c)
  %3396 = call float @dx.op.tertiary.f32(i32 46, float %3378, float %3393, float %3395)  ; FMad(a,b,c)
  %3397 = fadd fast float %3396, %3379
  %3398 = fmul fast float %3391, %3381
  %3399 = call float @dx.op.tertiary.f32(i32 46, float %3382, float %3392, float %3398)  ; FMad(a,b,c)
  %3400 = call float @dx.op.tertiary.f32(i32 46, float %3383, float %3393, float %3399)  ; FMad(a,b,c)
  %3401 = fadd fast float %3400, %3384
  %3402 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %43, float %3397, float %3401, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3403 = extractvalue %dx.types.ResRet.f32 %3402, 0
  %3404 = fmul fast float %3403, %3386
  %3405 = fadd fast float %3404, %3385
  %3406 = call float @dx.op.unary.f32(i32 7, float %3405)  ; Saturate(value)
  %3407 = fmul fast float %3406, %3370
  %3408 = fsub fast float 1.000000e+00, %3407
  br label %3409

; <label>:3409                                    ; preds = %3374, %3372
  %3410 = phi float [ %3408, %3374 ], [ 1.000000e+00, %3372 ]
  %3411 = fmul fast float %3410, %3368
  br label %3412

; <label>:3412                                    ; preds = %3409, %3358, %2764
  %3413 = phi float [ 1.000000e+00, %2764 ], [ %3411, %3409 ], [ %3368, %3358 ]
  %3414 = call float @dx.op.binary.f32(i32 36, float %3413, float %3413)  ; FMin(a,b)
  %3415 = call float @dx.op.binary.f32(i32 36, float %3413, float %3414)  ; FMin(a,b)
  %3416 = fcmp fast ogt float %3415, 0.000000e+00
  br i1 %3416, label %3417, label %3577, !dx.controlflow.hints !109

; <label>:3417                                    ; preds = %3412
  %3418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3419 = extractvalue %dx.types.CBufRet.f32 %3418, 0
  %3420 = extractvalue %dx.types.CBufRet.f32 %3418, 1
  %3421 = extractvalue %dx.types.CBufRet.f32 %3418, 2
  %3422 = extractvalue %dx.types.CBufRet.f32 %3418, 3
  %3423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3424 = extractvalue %dx.types.CBufRet.f32 %3423, 0
  %3425 = extractvalue %dx.types.CBufRet.f32 %3423, 1
  %3426 = extractvalue %dx.types.CBufRet.f32 %3423, 2
  %3427 = extractvalue %dx.types.CBufRet.f32 %3423, 3
  %3428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3429 = extractvalue %dx.types.CBufRet.f32 %3428, 0
  %3430 = extractvalue %dx.types.CBufRet.f32 %3428, 1
  %3431 = extractvalue %dx.types.CBufRet.f32 %3428, 2
  %3432 = extractvalue %dx.types.CBufRet.f32 %3428, 3
  %3433 = fmul fast float %3419, %2784
  %3434 = call float @dx.op.tertiary.f32(i32 46, float %2785, float %3420, float %3433)  ; FMad(a,b,c)
  %3435 = call float @dx.op.tertiary.f32(i32 46, float %2786, float %3421, float %3434)  ; FMad(a,b,c)
  %3436 = fadd fast float %3435, %3422
  %3437 = fmul fast float %3424, %2784
  %3438 = call float @dx.op.tertiary.f32(i32 46, float %2785, float %3425, float %3437)  ; FMad(a,b,c)
  %3439 = call float @dx.op.tertiary.f32(i32 46, float %2786, float %3426, float %3438)  ; FMad(a,b,c)
  %3440 = fadd fast float %3439, %3427
  %3441 = fmul fast float %3429, %2784
  %3442 = call float @dx.op.tertiary.f32(i32 46, float %2785, float %3430, float %3441)  ; FMad(a,b,c)
  %3443 = call float @dx.op.tertiary.f32(i32 46, float %2786, float %3431, float %3442)  ; FMad(a,b,c)
  %3444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3445 = extractvalue %dx.types.CBufRet.f32 %3444, 0
  %3446 = extractvalue %dx.types.CBufRet.f32 %3444, 1
  %3447 = extractvalue %dx.types.CBufRet.f32 %3444, 3
  %3448 = fmul fast float %3447, %3436
  %3449 = fmul fast float %3447, %3440
  %3450 = fadd fast float %3448, %3445
  %3451 = fadd fast float %3449, %3446
  %3452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3453 = extractvalue %dx.types.CBufRet.f32 %3452, 0
  %3454 = extractvalue %dx.types.CBufRet.f32 %3452, 1
  %3455 = fsub fast float %3450, %3453
  %3456 = fsub fast float %3451, %3454
  %3457 = fcmp fast olt float %3455, 0.000000e+00
  %3458 = fcmp fast olt float %3456, 0.000000e+00
  %3459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3460 = extractvalue %dx.types.CBufRet.f32 %3459, 0
  %3461 = extractvalue %dx.types.CBufRet.f32 %3459, 1
  %3462 = extractvalue %dx.types.CBufRet.f32 %3459, 2
  %3463 = extractvalue %dx.types.CBufRet.f32 %3459, 3
  %3464 = select i1 %3457, float %3460, float %3462
  %3465 = select i1 %3458, float %3461, float %3463
  %3466 = fmul fast float %3464, %3455
  %3467 = fmul fast float %3465, %3456
  %3468 = call float @dx.op.unary.f32(i32 6, float %3466)  ; FAbs(value)
  %3469 = call float @dx.op.unary.f32(i32 6, float %3467)  ; FAbs(value)
  %3470 = extractvalue %dx.types.CBufRet.f32 %2779, 0
  %3471 = call float @dx.op.binary.f32(i32 35, float %3468, float %3469)  ; FMax(a,b)
  %3472 = fsub fast float %3470, %3471
  %3473 = call float @dx.op.unary.f32(i32 7, float %3472)  ; Saturate(value)
  %3474 = fcmp fast ogt float %3473, 0.000000e+00
  br i1 %3474, label %3475, label %3516, !dx.controlflow.hints !110

; <label>:3475                                    ; preds = %3417
  %3476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %46, float %3450, float %3451, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 1
  %3478 = fcmp fast ogt float %3477, 0.000000e+00
  br i1 %3478, label %3479, label %3511

; <label>:3479                                    ; preds = %3475
  %3480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %46, float %3450, float %3451, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3481 = extractvalue %dx.types.ResRet.f32 %3480, 0
  %3482 = extractvalue %dx.types.ResRet.f32 %3480, 1
  %3483 = extractvalue %dx.types.ResRet.f32 %3480, 2
  %3484 = extractvalue %dx.types.ResRet.f32 %3480, 3
  %3485 = fsub fast float 1.000000e+00, %3432
  %3486 = fsub fast float %3485, %3443
  %3487 = fmul fast float %3486, 0x400921FB60000000
  %3488 = fadd fast float %3487, 0x3FF921FB60000000
  %3489 = call float @dx.op.unary.f32(i32 13, float %3488)  ; Sin(value)
  %3490 = fadd fast float %3489, -1.000000e+00
  %3491 = fmul fast float %3490, 0x3FD45F3060000000
  %3492 = fmul fast float %3486, 0x401921FB60000000
  %3493 = fadd fast float %3492, 0x400921FB60000000
  %3494 = call float @dx.op.unary.f32(i32 13, float %3493)  ; Sin(value)
  %3495 = fadd fast float %3494, 0x3E7777A5C0000000
  %3496 = fmul fast float %3495, 0x3FC45F3060000000
  %3497 = fmul fast float %3486, 0x4022D97C80000000
  %3498 = fadd fast float %3497, 0x4012D97C80000000
  %3499 = call float @dx.op.unary.f32(i32 13, float %3498)  ; Sin(value)
  %3500 = fadd fast float %3499, 1.000000e+00
  %3501 = fmul fast float %3500, 0x3FBB2995E0000000
  %3502 = fmul fast float %3486, 0x402921FB60000000
  %3503 = fadd fast float %3502, 0x401921FB60000000
  %3504 = call float @dx.op.unary.f32(i32 13, float %3503)  ; Sin(value)
  %3505 = fadd fast float %3504, 0xBE8777A5C0000000
  %3506 = fmul fast float %3505, 0x3FB45F3060000000
  %3507 = call float @dx.op.dot4.f32(i32 56, float %3481, float %3482, float %3483, float %3484, float %3491, float %3496, float %3501, float %3506)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3508 = fmul fast float %3507, 0xBFF7154760000000
  %3509 = call float @dx.op.unary.f32(i32 21, float %3508)  ; Exp(value)
  %3510 = call float @dx.op.unary.f32(i32 7, float %3509)  ; Saturate(value)
  br label %3511

; <label>:3511                                    ; preds = %3479, %3475
  %3512 = phi float [ %3510, %3479 ], [ 1.000000e+00, %3475 ]
  %3513 = fadd fast float %3512, -1.000000e+00
  %3514 = fmul fast float %3513, %3473
  %3515 = fadd fast float %3514, 1.000000e+00
  br label %3516

; <label>:3516                                    ; preds = %3511, %3417
  %3517 = phi float [ %3515, %3511 ], [ 1.000000e+00, %3417 ]
  %3518 = fmul fast float %3517, %3413
  %3519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3520 = extractvalue %dx.types.CBufRet.f32 %3519, 0
  %3521 = extractvalue %dx.types.CBufRet.f32 %3519, 1
  %3522 = extractvalue %dx.types.CBufRet.f32 %3519, 2
  %3523 = fadd fast float %3520, %135
  %3524 = fadd fast float %3521, %136
  %3525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3526 = extractvalue %dx.types.CBufRet.f32 %3525, 1
  %3527 = fsub fast float -0.000000e+00, %3523
  %3528 = fsub fast float -0.000000e+00, %3524
  %3529 = fsub fast float %2167, %3522
  %3530 = fadd fast float %3529, %3526
  %3531 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3527, float %3528, float %3530)  ; Dot3(ax,ay,az,bx,by,bz)
  %3532 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2765, float %2766, float %2767)  ; Dot3(ax,ay,az,bx,by,bz)
  %3533 = fdiv fast float 1.000000e+00, %3532
  %3534 = fmul fast float %3533, %3531
  %3535 = fmul fast float %2765, %3534
  %3536 = fmul fast float %2766, %3534
  %3537 = fadd fast float %3535, %3523
  %3538 = fadd fast float %3536, %3524
  %3539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3540 = extractvalue %dx.types.CBufRet.f32 %3539, 0
  %3541 = extractvalue %dx.types.CBufRet.f32 %3539, 1
  %3542 = fsub fast float %3537, %3540
  %3543 = fsub fast float %3538, %3541
  %3544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3545 = extractvalue %dx.types.CBufRet.f32 %3544, 2
  %3546 = extractvalue %dx.types.CBufRet.f32 %3544, 3
  %3547 = fmul fast float %3542, %3545
  %3548 = fmul fast float %3543, %3546
  %3549 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3550 = extractvalue %dx.types.CBufRet.i32 %3549, 3
  %3551 = icmp eq i32 %3550, 0
  br i1 %3551, label %3557, label %3552

; <label>:3552                                    ; preds = %3516
  %3553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %3547, float %3548, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3554 = extractvalue %dx.types.ResRet.f32 %3553, 0
  %3555 = extractvalue %dx.types.ResRet.f32 %3553, 1
  %3556 = extractvalue %dx.types.ResRet.f32 %3553, 2
  br label %3562

; <label>:3557                                    ; preds = %3516
  %3558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %46, float %3547, float %3548, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3559 = extractvalue %dx.types.ResRet.f32 %3558, 0
  %3560 = extractvalue %dx.types.ResRet.f32 %3558, 1
  %3561 = extractvalue %dx.types.ResRet.f32 %3558, 2
  br label %3562

; <label>:3562                                    ; preds = %3557, %3552
  %3563 = phi float [ %3554, %3552 ], [ %3559, %3557 ]
  %3564 = phi float [ %3555, %3552 ], [ %3560, %3557 ]
  %3565 = phi float [ %3556, %3552 ], [ %3561, %3557 ]
  %3566 = extractvalue %dx.types.CBufRet.f32 %3525, 2
  %3567 = fmul fast float %3566, %3563
  %3568 = extractvalue %dx.types.CBufRet.f32 %3525, 0
  %3569 = fsub fast float %3534, %3568
  %3570 = fsub fast float %3569, %3567
  %3571 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3570)  ; FMax(a,b)
  %3572 = fmul fast float %3571, %3564
  %3573 = call float @dx.op.binary.f32(i32 36, float %3565, float %3572)  ; FMin(a,b)
  %3574 = fmul fast float %3573, 0xBFF7154760000000
  %3575 = call float @dx.op.unary.f32(i32 21, float %3574)  ; Exp(value)
  %3576 = fmul fast float %3518, %3575
  br label %3577

; <label>:3577                                    ; preds = %3562, %3412
  %3578 = phi float [ %3576, %3562 ], [ %3413, %3412 ]
  %3579 = call float @dx.op.binary.f32(i32 36, float %3578, float %3578)  ; FMin(a,b)
  %3580 = call float @dx.op.binary.f32(i32 36, float %3578, float %3579)  ; FMin(a,b)
  %3581 = fcmp fast ogt float %3580, 0.000000e+00
  br i1 %3581, label %3582, label %3968, !dx.controlflow.hints !111

; <label>:3582                                    ; preds = %3577
  %3583 = fmul fast float %3578, %2776
  %3584 = fmul fast float %3578, %2777
  %3585 = fmul fast float %3578, %2778
  %3586 = fsub fast float %137, %1955
  %3587 = fcmp fast ogt float %3586, 0.000000e+00
  %3588 = fmul fast float %2765, 5.120000e+02
  %3589 = fmul fast float %2766, 5.120000e+02
  %3590 = fmul fast float %2767, 5.120000e+02
  %3591 = fadd fast float %3590, %137
  %3592 = fsub fast float %1955, %3591
  %3593 = fmul fast float %3592, 2.000000e+00
  %3594 = fadd fast float %3593, %3591
  %3595 = select i1 %3587, float %3594, float %3591
  %3596 = fsub fast float %3595, %137
  %3597 = call float @dx.op.dot3.f32(i32 55, float %3588, float %3589, float %3596, float %3588, float %3589, float %3596)  ; Dot3(ax,ay,az,bx,by,bz)
  %3598 = call float @dx.op.unary.f32(i32 25, float %3597)  ; Rsqrt(value)
  %3599 = fmul fast float %3598, %3588
  %3600 = fmul fast float %3598, %3589
  %3601 = fmul fast float %3598, %3596
  %3602 = fsub fast float %1955, %137
  %3603 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3602)  ; Dot3(ax,ay,az,bx,by,bz)
  %3604 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3599, float %3600, float %3601)  ; Dot3(ax,ay,az,bx,by,bz)
  %3605 = fdiv fast float 1.000000e+00, %3604
  %3606 = fmul fast float %3605, %3603
  %3607 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3586, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3608 = fcmp fast ogt float %3607, 0.000000e+00
  %3609 = fcmp fast olt float %3607, 0.000000e+00
  %3610 = zext i1 %3608 to i32
  %3611 = zext i1 %3609 to i32
  %3612 = sub nsw i32 %3610, %3611
  %3613 = sitofp i32 %3612 to float
  %3614 = fsub fast float %3595, %1955
  %3615 = call float @dx.op.dot3.f32(i32 55, float %3588, float %3589, float %3614, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3616 = fcmp fast ogt float %3615, 0.000000e+00
  %3617 = fcmp fast olt float %3615, 0.000000e+00
  %3618 = zext i1 %3616 to i32
  %3619 = zext i1 %3617 to i32
  %3620 = sub nsw i32 %3618, %3619
  %3621 = sitofp i32 %3620 to float
  %3622 = fcmp fast une float %3613, %3621
  br i1 %3622, label %3623, label %3633

; <label>:3623                                    ; preds = %3582
  %3624 = fmul fast float %3606, %3601
  %3625 = fmul fast float %3606, %3600
  %3626 = fmul fast float %3606, %3599
  %3627 = fmul fast float %3626, %3626
  %3628 = fmul fast float %3625, %3625
  %3629 = fadd fast float %3627, %3628
  %3630 = fmul fast float %3624, %3624
  %3631 = fadd fast float %3629, %3630
  %3632 = call float @dx.op.unary.f32(i32 24, float %3631)  ; Sqrt(value)
  br label %3643

; <label>:3633                                    ; preds = %3582
  %3634 = icmp slt i32 %3612, 0
  br i1 %3634, label %3635, label %3643

; <label>:3635                                    ; preds = %3633
  %3636 = fsub fast float %137, %3595
  %3637 = fmul fast float %3588, %3588
  %3638 = fmul fast float %3589, %3589
  %3639 = fadd fast float %3637, %3638
  %3640 = fmul fast float %3636, %3636
  %3641 = fadd fast float %3639, %3640
  %3642 = call float @dx.op.unary.f32(i32 24, float %3641)  ; Sqrt(value)
  br label %3643

; <label>:3643                                    ; preds = %3635, %3633, %3623
  %3644 = phi float [ %3632, %3623 ], [ %3642, %3635 ], [ 0.000000e+00, %3633 ]
  %3645 = fsub fast float -0.000000e+00, %3644
  %3646 = select i1 %3587, float -0.000000e+00, float %3645
  %3647 = fmul fast float %1956, 0x3FF7154760000000
  %3648 = fmul fast float %3647, %3646
  %3649 = fmul fast float %1957, 0x3FF7154760000000
  %3650 = fmul fast float %3649, %3646
  %3651 = fmul fast float %1958, 0x3FF7154760000000
  %3652 = fmul fast float %3651, %3646
  %3653 = call float @dx.op.unary.f32(i32 21, float %3648)  ; Exp(value)
  %3654 = call float @dx.op.unary.f32(i32 21, float %3650)  ; Exp(value)
  %3655 = call float @dx.op.unary.f32(i32 21, float %3652)  ; Exp(value)
  %3656 = call float @dx.op.unary.f32(i32 7, float %3653)  ; Saturate(value)
  %3657 = call float @dx.op.unary.f32(i32 7, float %3654)  ; Saturate(value)
  %3658 = call float @dx.op.unary.f32(i32 7, float %3655)  ; Saturate(value)
  %3659 = fmul fast float %3583, %3656
  %3660 = fmul fast float %3584, %3657
  %3661 = fmul fast float %3585, %3658
  %3662 = fsub fast float %2765, %2155
  %3663 = fsub fast float %2766, %2154
  %3664 = fsub fast float %2767, %2153
  %3665 = call float @dx.op.dot3.f32(i32 55, float %3662, float %3663, float %3664, float %3662, float %3663, float %3664)  ; Dot3(ax,ay,az,bx,by,bz)
  %3666 = call float @dx.op.unary.f32(i32 25, float %3665)  ; Rsqrt(value)
  %3667 = fmul fast float %3666, %3662
  %3668 = fmul fast float %3666, %3663
  %3669 = fmul fast float %3666, %3664
  %3670 = call float @dx.op.dot3.f32(i32 55, float %2765, float %2766, float %2767, float %2159, float %2160, float %2161)  ; Dot3(ax,ay,az,bx,by,bz)
  %3671 = call float @dx.op.dot3.f32(i32 55, float %2152, float %2151, float %2150, float %3667, float %3668, float %3669)  ; Dot3(ax,ay,az,bx,by,bz)
  %3672 = call float @dx.op.unary.f32(i32 7, float %3670)  ; Saturate(value)
  %3673 = fmul fast float %3672, %3672
  %3674 = fmul fast float %3673, %2219
  %3675 = call float @dx.op.unary.f32(i32 7, float %3674)  ; Saturate(value)
  %3676 = fmul fast float %3675, %3672
  %3677 = call float @dx.op.dot3.f32(i32 55, float %2159, float %2160, float %2161, float %3667, float %3668, float %3669)  ; Dot3(ax,ay,az,bx,by,bz)
  %3678 = fmul fast float %3677, %3677
  %3679 = call float @dx.op.unary.f32(i32 6, float %3670)  ; FAbs(value)
  %3680 = call float @dx.op.binary.f32(i32 35, float %2594, float 0x3F847AE140000000)  ; FMax(a,b)
  %3681 = fmul fast float %3680, %3680
  %3682 = fmul fast float %3681, %3681
  %3683 = fsub fast float 1.000000e+00, %3682
  %3684 = fmul fast float %2206, %2206
  %3685 = fmul fast float %3684, %3683
  %3686 = fadd fast float %3685, %3682
  %3687 = bitcast float %3686 to i32
  %3688 = ashr i32 %3687, 1
  %3689 = add nsw i32 %3688, 532487669
  %3690 = bitcast i32 %3689 to float
  %3691 = fadd fast float %3690, %2206
  %3692 = fmul fast float %3682, %3678
  %3693 = fsub fast float 1.000000e+00, %3678
  %3694 = fadd fast float %3693, %3692
  %3695 = fmul fast float %3679, %3679
  %3696 = fmul fast float %3695, %3683
  %3697 = fadd fast float %3696, %3682
  %3698 = bitcast float %3697 to i32
  %3699 = ashr i32 %3698, 1
  %3700 = add nsw i32 %3699, 532487669
  %3701 = bitcast i32 %3700 to float
  %3702 = fadd fast float %3701, %3679
  %3703 = fmul fast float %3694, %3694
  %3704 = fmul fast float %3703, %3691
  %3705 = fmul fast float %3704, %3702
  %3706 = fdiv fast float 0x3FF0A00000000000, %3705
  %3707 = fmul fast float %3706, %3682
  %3708 = fmul fast float %2454, 0x3FF9999980000000
  %3709 = fsub fast float 5.000000e+00, %3708
  %3710 = call float @dx.op.unary.f32(i32 6, float %3671)  ; FAbs(value)
  %3711 = fsub fast float 1.000000e+00, %3710
  %3712 = fmul fast float %2454, 0x41D9660740000000
  %3713 = fadd fast float %3712, 0xC1EFBF8940000000
  %3714 = bitcast float %3711 to i32
  %3715 = sitofp i32 %3714 to float
  %3716 = fmul fast float %3715, %3709
  %3717 = fadd fast float %3713, %3716
  %3718 = fptosi float %3717 to i32
  %3719 = bitcast i32 %3718 to float
  %3720 = fsub fast float 1.000000e+00, %2156
  %3721 = fsub fast float 1.000000e+00, %2157
  %3722 = fsub fast float 1.000000e+00, %2204
  %3723 = fmul fast float %3719, %3720
  %3724 = fmul fast float %3719, %3721
  %3725 = fmul fast float %3719, %3722
  %3726 = fadd fast float %3723, %2156
  %3727 = fadd fast float %3724, %2157
  %3728 = fadd fast float %3725, %2204
  br i1 %2477, label %3729, label %3752

; <label>:3729                                    ; preds = %3643
  %3730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %46, float %1501, float %3710, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3731 = extractvalue %dx.types.ResRet.f32 %3730, 0
  %3732 = extractvalue %dx.types.ResRet.f32 %3730, 1
  %3733 = extractvalue %dx.types.ResRet.f32 %3730, 2
  %3734 = fadd fast float %3731, -5.000000e-01
  %3735 = fadd fast float %3732, -5.000000e-01
  %3736 = fadd fast float %3733, -5.000000e-01
  %3737 = fmul fast float %2156, 4.000000e+00
  %3738 = fmul fast float %3737, %3720
  %3739 = fmul fast float %3738, %3734
  %3740 = fmul fast float %2157, 4.000000e+00
  %3741 = fmul fast float %3740, %3721
  %3742 = fmul fast float %3741, %3735
  %3743 = fmul fast float %2204, 4.000000e+00
  %3744 = fmul fast float %3743, %3722
  %3745 = fmul fast float %3744, %3736
  %3746 = fadd fast float %3739, %3726
  %3747 = fadd fast float %3742, %3727
  %3748 = fadd fast float %3745, %3728
  %3749 = call float @dx.op.unary.f32(i32 7, float %3746)  ; Saturate(value)
  %3750 = call float @dx.op.unary.f32(i32 7, float %3747)  ; Saturate(value)
  %3751 = call float @dx.op.unary.f32(i32 7, float %3748)  ; Saturate(value)
  br label %3752

; <label>:3752                                    ; preds = %3729, %3643
  %3753 = phi float [ %3749, %3729 ], [ %3726, %3643 ]
  %3754 = phi float [ %3750, %3729 ], [ %3727, %3643 ]
  %3755 = phi float [ %3751, %3729 ], [ %3728, %3643 ]
  %3756 = fmul fast float %3670, 9.843750e-01
  %3757 = fadd fast float %3756, 7.812500e-03
  %3758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %46, float %3757, float %2458, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3759 = extractvalue %dx.types.ResRet.f32 %3758, 0
  %3760 = extractvalue %dx.types.ResRet.f32 %3758, 1
  %3761 = extractvalue %dx.types.ResRet.f32 %3758, 2
  %3762 = extractvalue %dx.types.ResRet.f32 %3758, 3
  %3763 = fsub fast float %3761, %3759
  %3764 = fsub fast float %3762, %3760
  %3765 = fmul fast float %3763, %2464
  %3766 = fmul fast float %3764, %2464
  %3767 = fadd fast float %3765, %3759
  %3768 = fadd fast float %3766, %3760
  %3769 = fmul fast float %3767, %2156
  %3770 = fmul fast float %3767, %2157
  %3771 = fmul fast float %3767, %2204
  %3772 = fadd fast float %3769, %3768
  %3773 = fadd fast float %3770, %3768
  %3774 = fadd fast float %3771, %3768
  br i1 %2477, label %3775, label %3798

; <label>:3775                                    ; preds = %3752
  %3776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %46, float %1501, float %3670, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3777 = extractvalue %dx.types.ResRet.f32 %3776, 0
  %3778 = extractvalue %dx.types.ResRet.f32 %3776, 1
  %3779 = extractvalue %dx.types.ResRet.f32 %3776, 2
  %3780 = fadd fast float %3777, -5.000000e-01
  %3781 = fadd fast float %3778, -5.000000e-01
  %3782 = fadd fast float %3779, -5.000000e-01
  %3783 = fmul fast float %2156, 4.000000e+00
  %3784 = fmul fast float %3783, %3720
  %3785 = fmul fast float %3784, %3780
  %3786 = fmul fast float %2157, 4.000000e+00
  %3787 = fmul fast float %3786, %3721
  %3788 = fmul fast float %3787, %3781
  %3789 = fmul fast float %2204, 4.000000e+00
  %3790 = fmul fast float %3789, %3722
  %3791 = fmul fast float %3790, %3782
  %3792 = fadd fast float %3785, %3772
  %3793 = fadd fast float %3788, %3773
  %3794 = fadd fast float %3791, %3774
  %3795 = call float @dx.op.unary.f32(i32 7, float %3792)  ; Saturate(value)
  %3796 = call float @dx.op.unary.f32(i32 7, float %3793)  ; Saturate(value)
  %3797 = call float @dx.op.unary.f32(i32 7, float %3794)  ; Saturate(value)
  br label %3798

; <label>:3798                                    ; preds = %3775, %3752
  %3799 = phi float [ %3795, %3775 ], [ %3772, %3752 ]
  %3800 = phi float [ %3796, %3775 ], [ %3773, %3752 ]
  %3801 = phi float [ %3797, %3775 ], [ %3774, %3752 ]
  %3802 = call float @dx.op.binary.f32(i32 35, float %3800, float %3801)  ; FMax(a,b)
  %3803 = call float @dx.op.binary.f32(i32 35, float %3799, float %3802)  ; FMax(a,b)
  %3804 = fsub fast float 1.000000e+00, %3803
  %3805 = call float @dx.op.binary.f32(i32 35, float %3679, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3806 = fdiv fast float %901, %3805
  %3807 = fmul fast float %2535, %3806
  %3808 = fmul fast float %2537, %3806
  %3809 = fmul fast float %2539, %3806
  %3810 = call float @dx.op.unary.f32(i32 21, float %3807)  ; Exp(value)
  %3811 = call float @dx.op.unary.f32(i32 21, float %3808)  ; Exp(value)
  %3812 = call float @dx.op.unary.f32(i32 21, float %3809)  ; Exp(value)
  %3813 = call float @dx.op.unary.f32(i32 7, float %3810)  ; Saturate(value)
  %3814 = call float @dx.op.unary.f32(i32 7, float %3811)  ; Saturate(value)
  %3815 = call float @dx.op.unary.f32(i32 7, float %3812)  ; Saturate(value)
  %3816 = select i1 %2532, float %3813, float 0.000000e+00
  %3817 = select i1 %2533, float %3814, float 0.000000e+00
  %3818 = select i1 %2534, float %3815, float 0.000000e+00
  %3819 = fsub fast float -0.000000e+00, %2159
  %3820 = fsub fast float -0.000000e+00, %2160
  %3821 = fsub fast float -0.000000e+00, %2161
  %3822 = call float @dx.op.dot3.f32(i32 55, float %2765, float %2766, float %2767, float %3819, float %3820, float %3821)  ; Dot3(ax,ay,az,bx,by,bz)
  %3823 = call float @dx.op.unary.f32(i32 7, float %3822)  ; Saturate(value)
  %3824 = fmul fast float %3823, 9.843750e-01
  %3825 = fadd fast float %3824, 7.812500e-03
  %3826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %46, float %3825, float %2458, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3827 = extractvalue %dx.types.ResRet.f32 %3826, 0
  %3828 = extractvalue %dx.types.ResRet.f32 %3826, 1
  %3829 = extractvalue %dx.types.ResRet.f32 %3826, 2
  %3830 = extractvalue %dx.types.ResRet.f32 %3826, 3
  %3831 = fsub fast float %3829, %3827
  %3832 = fsub fast float %3830, %3828
  %3833 = fmul fast float %3831, %2464
  %3834 = fmul fast float %3832, %2464
  %3835 = fadd fast float %3833, %3827
  %3836 = fadd fast float %3834, %3828
  %3837 = fmul fast float %3835, %2156
  %3838 = fmul fast float %3835, %2157
  %3839 = fmul fast float %3835, %2204
  %3840 = fadd fast float %3837, %3836
  %3841 = fadd fast float %3838, %3836
  %3842 = fadd fast float %3839, %3836
  br i1 %2477, label %3843, label %3866

; <label>:3843                                    ; preds = %3798
  %3844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %46, float %1501, float %3823, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3845 = extractvalue %dx.types.ResRet.f32 %3844, 0
  %3846 = extractvalue %dx.types.ResRet.f32 %3844, 1
  %3847 = extractvalue %dx.types.ResRet.f32 %3844, 2
  %3848 = fadd fast float %3845, -5.000000e-01
  %3849 = fadd fast float %3846, -5.000000e-01
  %3850 = fadd fast float %3847, -5.000000e-01
  %3851 = fmul fast float %2156, 4.000000e+00
  %3852 = fmul fast float %3851, %3720
  %3853 = fmul fast float %3852, %3848
  %3854 = fmul fast float %2157, 4.000000e+00
  %3855 = fmul fast float %3854, %3721
  %3856 = fmul fast float %3855, %3849
  %3857 = fmul fast float %2204, 4.000000e+00
  %3858 = fmul fast float %3857, %3722
  %3859 = fmul fast float %3858, %3850
  %3860 = fadd fast float %3853, %3840
  %3861 = fadd fast float %3856, %3841
  %3862 = fadd fast float %3859, %3842
  %3863 = call float @dx.op.unary.f32(i32 7, float %3860)  ; Saturate(value)
  %3864 = call float @dx.op.unary.f32(i32 7, float %3861)  ; Saturate(value)
  %3865 = call float @dx.op.unary.f32(i32 7, float %3862)  ; Saturate(value)
  br label %3866

; <label>:3866                                    ; preds = %3843, %3798
  %3867 = phi float [ %3863, %3843 ], [ %3840, %3798 ]
  %3868 = phi float [ %3864, %3843 ], [ %3841, %3798 ]
  %3869 = phi float [ %3865, %3843 ], [ %3842, %3798 ]
  %3870 = call float @dx.op.binary.f32(i32 35, float %3868, float %3869)  ; FMax(a,b)
  %3871 = call float @dx.op.binary.f32(i32 35, float %3867, float %3870)  ; FMax(a,b)
  %3872 = fsub fast float 1.000000e+00, %3871
  %3873 = fmul fast float %2594, %2600
  %3874 = fadd fast float %2593, %3873
  %3875 = call float @dx.op.unary.f32(i32 7, float %3874)  ; Saturate(value)
  %3876 = fsub fast float %2765, %2212
  %3877 = fsub fast float %2766, %2213
  %3878 = fsub fast float %2767, %2214
  %3879 = call float @dx.op.dot3.f32(i32 55, float %3876, float %3877, float %3878, float %3876, float %3877, float %3878)  ; Dot3(ax,ay,az,bx,by,bz)
  %3880 = call float @dx.op.unary.f32(i32 25, float %3879)  ; Rsqrt(value)
  %3881 = fmul fast float %3880, %3876
  %3882 = fmul fast float %3880, %3877
  %3883 = fmul fast float %3880, %3878
  %3884 = call float @dx.op.dot3.f32(i32 55, float %3819, float %3820, float %3821, float %3881, float %3882, float %3883)  ; Dot3(ax,ay,az,bx,by,bz)
  %3885 = fmul fast float %3884, %3884
  %3886 = call float @dx.op.unary.f32(i32 6, float %3823)  ; FAbs(value)
  %3887 = call float @dx.op.binary.f32(i32 35, float %3875, float 0x3F847AE140000000)  ; FMax(a,b)
  %3888 = fmul fast float %3887, %3887
  %3889 = fmul fast float %3888, %3888
  %3890 = fsub fast float 1.000000e+00, %3889
  %3891 = fmul fast float %3684, %3890
  %3892 = fadd fast float %3891, %3889
  %3893 = bitcast float %3892 to i32
  %3894 = ashr i32 %3893, 1
  %3895 = add nsw i32 %3894, 532487669
  %3896 = bitcast i32 %3895 to float
  %3897 = fadd fast float %3896, %2206
  %3898 = fmul fast float %3889, %3885
  %3899 = fsub fast float 1.000000e+00, %3885
  %3900 = fadd fast float %3899, %3898
  %3901 = fmul fast float %3886, %3886
  %3902 = fmul fast float %3901, %3890
  %3903 = fadd fast float %3902, %3889
  %3904 = bitcast float %3903 to i32
  %3905 = ashr i32 %3904, 1
  %3906 = add nsw i32 %3905, 532487669
  %3907 = bitcast i32 %3906 to float
  %3908 = fadd fast float %3907, %3886
  %3909 = fmul fast float %3900, %3900
  %3910 = fmul fast float %3909, %3897
  %3911 = fmul fast float %3910, %3908
  %3912 = fdiv fast float 0x3FF0A00000000000, %3911
  %3913 = fmul fast float %3912, %3889
  %3914 = fmul fast float %3823, %3816
  %3915 = fmul fast float %3823, %3817
  %3916 = fmul fast float %3823, %3818
  %3917 = fmul fast float %3914, %3872
  %3918 = fmul fast float %3917, %3913
  %3919 = fmul fast float %3915, %3872
  %3920 = fmul fast float %3919, %3913
  %3921 = fmul fast float %3916, %3872
  %3922 = fmul fast float %3921, %3913
  %3923 = fmul fast float %3753, %3707
  %3924 = fmul fast float %3754, %3707
  %3925 = fmul fast float %3755, %3707
  %3926 = fsub fast float 1.000000e+00, %3671
  %3927 = bitcast float %3926 to i32
  %3928 = sitofp i32 %3927 to float
  %3929 = fmul fast float %3928, 5.000000e+00
  %3930 = fadd fast float %3929, 0xC1EFBF8940000000
  %3931 = fptosi float %3930 to i32
  %3932 = bitcast i32 %3931 to float
  %3933 = fmul fast float %3932, %1500
  %3934 = fmul fast float %3804, %3933
  %3935 = fmul fast float %3934, %2527
  %3936 = fmul fast float %3934, %2528
  %3937 = fmul fast float %3934, %2529
  %3938 = fadd fast float %3935, %3923
  %3939 = fadd fast float %3936, %3924
  %3940 = fadd fast float %3937, %3925
  %3941 = fmul fast float %3938, %3676
  %3942 = fmul fast float %3939, %3676
  %3943 = fmul fast float %3940, %3676
  %3944 = fmul fast float %3676, %3659
  %3945 = fmul fast float %3944, %3804
  %3946 = fmul fast float %3676, %3660
  %3947 = fmul fast float %3946, %3804
  %3948 = fmul fast float %3676, %3661
  %3949 = fmul fast float %3948, %3804
  %3950 = fadd fast float %3941, %3918
  %3951 = fadd fast float %3942, %3920
  %3952 = fadd fast float %3943, %3922
  %3953 = fmul fast float %3950, %3659
  %3954 = fmul fast float %3951, %3660
  %3955 = fmul fast float %3952, %3661
  %3956 = fadd fast float %3945, %2511
  %3957 = fmul fast float %3956, %1524
  %3958 = fadd fast float %3947, %2512
  %3959 = fmul fast float %3958, %1524
  %3960 = fadd fast float %3949, %2513
  %3961 = fmul fast float %3960, %1524
  %3962 = fadd fast float %3953, %2751
  %3963 = fmul fast float %3962, %1524
  %3964 = fadd fast float %3954, %2755
  %3965 = fmul fast float %3964, %1524
  %3966 = fadd fast float %3955, %2759
  %3967 = fmul fast float %3966, %1524
  br label %3968

; <label>:3968                                    ; preds = %3866, %3577, %2735
  %3969 = phi float [ %2752, %2735 ], [ %2752, %3577 ], [ %3963, %3866 ]
  %3970 = phi float [ %2756, %2735 ], [ %2756, %3577 ], [ %3965, %3866 ]
  %3971 = phi float [ %2760, %2735 ], [ %2760, %3577 ], [ %3967, %3866 ]
  %3972 = phi float [ %2624, %2735 ], [ %2624, %3577 ], [ %3957, %3866 ]
  %3973 = phi float [ %2625, %2735 ], [ %2625, %3577 ], [ %3959, %3866 ]
  %3974 = phi float [ %2626, %2735 ], [ %2626, %3577 ], [ %3961, %3866 ]
  %3975 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3976 = extractvalue %dx.types.CBufRet.i32 %3975, 0
  %3977 = icmp eq i32 %3976, 0
  br i1 %3977, label %4752, label %3978

; <label>:3978                                    ; preds = %3968
  %3979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3980 = extractvalue %dx.types.CBufRet.f32 %3979, 2
  %3981 = extractvalue %dx.types.CBufRet.f32 %3979, 3
  %3982 = fmul fast float %3980, %87
  %3983 = fmul fast float %3981, %88
  %3984 = fptoui float %3982 to i32
  %3985 = fptoui float %3983 to i32
  %3986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3987 = extractvalue %dx.types.CBufRet.f32 %3986, 0
  %3988 = extractvalue %dx.types.CBufRet.f32 %3986, 2
  %3989 = extractvalue %dx.types.CBufRet.f32 %3986, 3
  %3990 = fadd fast float %78, -4.000000e+00
  %3991 = call float @dx.op.binary.f32(i32 35, float %3990, float 0.000000e+00)  ; FMax(a,b)
  %3992 = fadd fast float %3991, %3987
  %3993 = fmul fast float %3992, %3988
  %3994 = call float @dx.op.unary.f32(i32 23, float %3993)  ; Log(value)
  %3995 = fmul fast float %3994, %3989
  %3996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3997 = extractvalue %dx.types.CBufRet.f32 %3996, 2
  %3998 = fmul fast float %3995, %3997
  %3999 = call float @dx.op.unary.f32(i32 7, float %3998)  ; Saturate(value)
  %4000 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4001 = extractvalue %dx.types.CBufRet.i32 %4000, 1
  %4002 = add i32 %4001, -1
  %4003 = uitofp i32 %4001 to float
  %4004 = fmul fast float %4003, %3999
  %4005 = fptoui float %4004 to i32
  %4006 = call i32 @dx.op.binary.i32(i32 40, i32 %4005, i32 %4002)  ; UMin(a,b)
  %4007 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4008 = extractvalue %dx.types.CBufRet.i32 %4007, 2
  %4009 = extractvalue %dx.types.CBufRet.i32 %4007, 3
  %4010 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3985, i32 %4008, i32 %3984)  ; UMad(a,b,c)
  %4011 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4006, i32 %4009, i32 %4010)  ; UMad(a,b,c)
  %4012 = add nsw i32 %3976, -1
  %4013 = call i32 @dx.op.binary.i32(i32 37, i32 %4012, i32 0)  ; IMax(a,b)
  %4014 = call float @dx.op.binary.f32(i32 35, float %78, float 0.000000e+00)  ; FMax(a,b)
  %4015 = fptoui float %4014 to i32
  %4016 = lshr i32 %4015, 5
  %4017 = call i32 @dx.op.binary.i32(i32 40, i32 %4016, i32 8191)  ; UMin(a,b)
  %4018 = shl i32 %4017, 2
  %4019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4018, i32 undef)  ; BufferLoad(srv,index,wot)
  %4020 = extractvalue %dx.types.ResRet.i32 %4019, 0
  %4021 = lshr i32 %4020, 16
  %4022 = and i32 %4020, 65535
  %4023 = lshr i32 %4020, 21
  %4024 = lshr i32 %4022, 5
  %4025 = call i32 @dx.op.binary.i32(i32 40, i32 %4024, i32 %4013)  ; UMin(a,b)
  %4026 = icmp ugt i32 %4023, %4025
  br i1 %4026, label %4752, label %4027

; <label>:4027                                    ; preds = %3978
  br label %4028

; <label>:4028                                    ; preds = %4742, %4027
  %4029 = phi i32 [ %4749, %4742 ], [ %4023, %4027 ]
  %4030 = phi float [ %4743, %4742 ], [ %3969, %4027 ]
  %4031 = phi float [ %4744, %4742 ], [ %3970, %4027 ]
  %4032 = phi float [ %4745, %4742 ], [ %3971, %4027 ]
  %4033 = phi float [ %4746, %4742 ], [ %3972, %4027 ]
  %4034 = phi float [ %4747, %4742 ], [ %3973, %4027 ]
  %4035 = phi float [ %4748, %4742 ], [ %3974, %4027 ]
  %4036 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4037 = extractvalue %dx.types.CBufRet.i32 %4036, 0
  %4038 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4011, i32 %4037, i32 %4029)  ; UMad(a,b,c)
  %4039 = shl i32 %4038, 2
  %4040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4039, i32 undef)  ; BufferLoad(srv,index,wot)
  %4041 = extractvalue %dx.types.ResRet.i32 %4040, 0
  %4042 = shl i32 %4029, 5
  %4043 = sub nsw i32 %4021, %4042
  %4044 = call i32 @dx.op.binary.i32(i32 37, i32 %4043, i32 0)  ; IMax(a,b)
  %4045 = call i32 @dx.op.binary.i32(i32 38, i32 %4044, i32 31)  ; IMin(a,b)
  %4046 = sub nsw i32 1, %4021
  %4047 = add nsw i32 %4046, %4022
  %4048 = call i32 @dx.op.binary.i32(i32 37, i32 %4047, i32 0)  ; IMax(a,b)
  %4049 = call i32 @dx.op.binary.i32(i32 38, i32 %4048, i32 32)  ; IMin(a,b)
  %4050 = and i32 %4049, 31
  %4051 = shl i32 -1, %4050
  %4052 = xor i32 %4051, -1
  %4053 = and i32 %4045, 31
  %4054 = shl i32 %4052, %4053
  %4055 = icmp eq i32 %4049, 32
  %4056 = select i1 %4055, i32 -1, i32 %4054
  %4057 = and i32 %4056, %4041
  %4058 = icmp eq i32 %4057, 0
  br i1 %4058, label %4742, label %4059

; <label>:4059                                    ; preds = %4028
  br label %4060

; <label>:4060                                    ; preds = %4195, %4059
  %4061 = phi i32 [ %4072, %4195 ], [ %4057, %4059 ]
  %4062 = phi float [ %4196, %4195 ], [ %4030, %4059 ]
  %4063 = phi float [ %4197, %4195 ], [ %4031, %4059 ]
  %4064 = phi float [ %4198, %4195 ], [ %4032, %4059 ]
  %4065 = phi float [ %4199, %4195 ], [ %4033, %4059 ]
  %4066 = phi float [ %4200, %4195 ], [ %4034, %4059 ]
  %4067 = phi float [ %4201, %4195 ], [ %4035, %4059 ]
  %4068 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4061)  ; FirstbitLo(value)
  %4069 = add i32 %4068, %4042
  %4070 = and i32 %4068, 31
  %4071 = shl i32 1, %4070
  %4072 = xor i32 %4071, %4061
  %4073 = mul i32 %4069, 112
  %4074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.f32 %4074, 0
  %4076 = extractvalue %dx.types.ResRet.f32 %4074, 1
  %4077 = extractvalue %dx.types.ResRet.f32 %4074, 2
  %4078 = or i32 %4073, 12
  %4079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4078, i32 undef)  ; BufferLoad(srv,index,wot)
  %4080 = extractvalue %dx.types.ResRet.f32 %4079, 0
  %4081 = add i32 %4073, 16
  %4082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4081, i32 undef)  ; BufferLoad(srv,index,wot)
  %4083 = extractvalue %dx.types.ResRet.f32 %4082, 0
  %4084 = extractvalue %dx.types.ResRet.f32 %4082, 1
  %4085 = extractvalue %dx.types.ResRet.f32 %4082, 2
  %4086 = add i32 %4073, 28
  %4087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4086, i32 undef)  ; BufferLoad(srv,index,wot)
  %4088 = extractvalue %dx.types.ResRet.i32 %4087, 0
  %4089 = add i32 %4073, 44
  %4090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.f32 %4090, 0
  %4092 = add i32 %4073, 48
  %4093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4092, i32 undef)  ; BufferLoad(srv,index,wot)
  %4094 = extractvalue %dx.types.ResRet.f32 %4093, 0
  %4095 = extractvalue %dx.types.ResRet.f32 %4093, 1
  %4096 = extractvalue %dx.types.ResRet.f32 %4093, 2
  %4097 = extractvalue %dx.types.ResRet.f32 %4093, 3
  %4098 = add i32 %4073, 64
  %4099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4098, i32 undef)  ; BufferLoad(srv,index,wot)
  %4100 = extractvalue %dx.types.ResRet.f32 %4099, 0
  %4101 = extractvalue %dx.types.ResRet.f32 %4099, 1
  %4102 = extractvalue %dx.types.ResRet.f32 %4099, 2
  %4103 = extractvalue %dx.types.ResRet.f32 %4099, 3
  %4104 = add i32 %4073, 80
  %4105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4104, i32 undef)  ; BufferLoad(srv,index,wot)
  %4106 = extractvalue %dx.types.ResRet.f32 %4105, 1
  %4107 = extractvalue %dx.types.ResRet.f32 %4105, 2
  %4108 = add i32 %4073, 92
  %4109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4108, i32 undef)  ; BufferLoad(srv,index,wot)
  %4110 = extractvalue %dx.types.ResRet.i32 %4109, 0
  %4111 = call float @dx.op.dot3.f32(i32 55, float %4075, float %4076, float %4077, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4112 = select i1 %197, float %4106, float %4075
  %4113 = select i1 %197, float %4111, float %4076
  %4114 = select i1 %197, float %4107, float %4077
  %4115 = and i32 %4110, 65535
  %4116 = uitofp i32 %4115 to float
  %4117 = lshr i32 %4110, 16
  %4118 = uitofp i32 %4117 to float
  %4119 = and i32 %4088, 65535
  %4120 = and i32 %4088, 50331648
  %4121 = icmp slt i32 %4088, 0
  %4122 = icmp eq i32 %4120, 33554432
  %4123 = fsub fast float %4094, %135
  %4124 = fsub fast float %4095, %136
  %4125 = fsub fast float %4096, %137
  %4126 = call float @dx.op.dot3.f32(i32 55, float %4123, float %4124, float %4125, float %4123, float %4124, float %4125)  ; Dot3(ax,ay,az,bx,by,bz)
  %4127 = call float @dx.op.unary.f32(i32 24, float %4126)  ; Sqrt(value)
  %4128 = fdiv fast float 1.000000e+00, %4127
  %4129 = fmul fast float %4128, %4123
  %4130 = fmul fast float %4128, %4124
  %4131 = fmul fast float %4128, %4125
  %4132 = fadd fast float %4127, %4080
  %4133 = fdiv fast float 1.000000e+00, %4132
  %4134 = fmul float %4091, %4133
  %4135 = fmul float %4134, %4134
  %4136 = call float @dx.op.unary.f32(i32 7, float %4135)  ; Saturate(value)
  br i1 %4122, label %4137, label %4158

; <label>:4137                                    ; preds = %4060
  %4138 = fmul fast float %4102, %4083
  %4139 = fmul fast float %4102, %4084
  %4140 = fmul fast float %4102, %4085
  %4141 = fadd fast float %4123, %4138
  %4142 = fadd fast float %4124, %4139
  %4143 = fadd fast float %4125, %4140
  %4144 = call float @dx.op.dot3.f32(i32 55, float %4141, float %4142, float %4143, float %4141, float %4142, float %4143)  ; Dot3(ax,ay,az,bx,by,bz)
  %4145 = call float @dx.op.unary.f32(i32 25, float %4144)  ; Rsqrt(value)
  %4146 = fmul fast float %4145, %4141
  %4147 = fmul fast float %4145, %4142
  %4148 = fmul fast float %4145, %4143
  %4149 = fsub fast float %135, %4094
  %4150 = fsub fast float %136, %4095
  %4151 = fsub fast float %137, %4096
  %4152 = fsub fast float -0.000000e+00, %4149
  %4153 = fsub fast float -0.000000e+00, %4150
  %4154 = fsub fast float -0.000000e+00, %4151
  %4155 = call float @dx.op.dot3.f32(i32 55, float %4152, float %4153, float %4154, float %4083, float %4084, float %4085)  ; Dot3(ax,ay,az,bx,by,bz)
  %4156 = fcmp fast ogt float %4155, 0.000000e+00
  %4157 = uitofp i1 %4156 to float
  br label %4158

; <label>:4158                                    ; preds = %4137, %4060
  %4159 = phi float [ %4157, %4137 ], [ 1.000000e+00, %4060 ]
  %4160 = phi float [ %4146, %4137 ], [ %4129, %4060 ]
  %4161 = phi float [ %4147, %4137 ], [ %4130, %4060 ]
  %4162 = phi float [ %4148, %4137 ], [ %4131, %4060 ]
  %4163 = call float @dx.op.dot3.f32(i32 55, float %4083, float %4084, float %4085, float %4160, float %4161, float %4162)  ; Dot3(ax,ay,az,bx,by,bz)
  %4164 = fmul fast float %4163, %4163
  %4165 = call float @dx.op.unary.f32(i32 7, float %4164)  ; Saturate(value)
  %4166 = fsub fast float 1.000000e+00, %4165
  %4167 = fmul fast float %4166, 5.000000e-01
  %4168 = fcmp fast ogt float %4163, 0.000000e+00
  %4169 = fsub fast float 1.000000e+00, %4167
  %4170 = select i1 %4168, float %4167, float %4169
  %4171 = fmul fast float %4170, %4118
  %4172 = fadd fast float %4171, %4116
  %4173 = fmul fast float %4172, 0x3EF0001000000000
  %4174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %46, float %4173, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4175 = extractvalue %dx.types.ResRet.f32 %4174, 0
  %4176 = fmul fast float %4163, %4100
  %4177 = fadd fast float %4176, %4101
  %4178 = call float @dx.op.unary.f32(i32 7, float %4177)  ; Saturate(value)
  %4179 = select i1 %4122, float 1.000000e+00, float %4178
  %4180 = select i1 %4122, float %4178, float 1.000000e+00
  %4181 = fmul fast float %4127, %4097
  %4182 = fsub fast float 1.000000e+00, %4181
  %4183 = fmul fast float %4182, %4103
  %4184 = call float @dx.op.unary.f32(i32 7, float %4183)  ; Saturate(value)
  %4185 = fmul fast float %4184, %4180
  %4186 = fmul fast float %4185, 2.000000e+00
  %4187 = fsub fast float 3.000000e+00, %4186
  %4188 = fmul fast float %4175, %4159
  %4189 = fmul fast float %4185, %4185
  %4190 = fmul fast float %4189, %4188
  %4191 = fmul fast float %4190, %4187
  %4192 = call float @dx.op.binary.f32(i32 36, float %4191, float %4191)  ; FMin(a,b)
  %4193 = call float @dx.op.binary.f32(i32 36, float %4191, float %4192)  ; FMin(a,b)
  %4194 = fcmp fast ogt float %4193, 0.000000e+00
  br i1 %4194, label %4203, label %4195, !dx.controlflow.hints !112

; <label>:4195                                    ; preds = %4695, %4303, %4158
  %4196 = phi float [ %4062, %4303 ], [ %4062, %4158 ], [ %4738, %4695 ]
  %4197 = phi float [ %4063, %4303 ], [ %4063, %4158 ], [ %4739, %4695 ]
  %4198 = phi float [ %4064, %4303 ], [ %4064, %4158 ], [ %4740, %4695 ]
  %4199 = phi float [ %4065, %4303 ], [ %4065, %4158 ], [ %4732, %4695 ]
  %4200 = phi float [ %4066, %4303 ], [ %4066, %4158 ], [ %4733, %4695 ]
  %4201 = phi float [ %4067, %4303 ], [ %4067, %4158 ], [ %4734, %4695 ]
  %4202 = icmp eq i32 %4061, %4071
  br i1 %4202, label %4741, label %4060

; <label>:4203                                    ; preds = %4158
  %4204 = icmp eq i32 %4119, 255
  br i1 %4204, label %4303, label %4205, !dx.controlflow.hints !113

; <label>:4205                                    ; preds = %4203
  %4206 = mul nuw nsw i32 %4119, 176
  %4207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4206, i32 undef)  ; BufferLoad(srv,index,wot)
  %4208 = extractvalue %dx.types.ResRet.f32 %4207, 0
  %4209 = extractvalue %dx.types.ResRet.f32 %4207, 1
  %4210 = extractvalue %dx.types.ResRet.f32 %4207, 2
  %4211 = extractvalue %dx.types.ResRet.f32 %4207, 3
  %4212 = add nuw nsw i32 %4206, 16
  %4213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4212, i32 undef)  ; BufferLoad(srv,index,wot)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 0
  %4215 = extractvalue %dx.types.ResRet.f32 %4213, 1
  %4216 = add nuw nsw i32 %4206, 32
  %4217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4216, i32 undef)  ; BufferLoad(srv,index,wot)
  %4218 = extractvalue %dx.types.ResRet.f32 %4217, 0
  %4219 = extractvalue %dx.types.ResRet.f32 %4217, 1
  %4220 = extractvalue %dx.types.ResRet.f32 %4217, 2
  %4221 = add nuw nsw i32 %4206, 48
  %4222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4221, i32 undef)  ; BufferLoad(srv,index,wot)
  %4223 = extractvalue %dx.types.ResRet.f32 %4222, 0
  %4224 = extractvalue %dx.types.ResRet.f32 %4222, 1
  %4225 = extractvalue %dx.types.ResRet.f32 %4222, 2
  %4226 = extractvalue %dx.types.ResRet.f32 %4222, 3
  %4227 = add nuw nsw i32 %4206, 64
  %4228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4227, i32 undef)  ; BufferLoad(srv,index,wot)
  %4229 = extractvalue %dx.types.ResRet.f32 %4228, 0
  %4230 = extractvalue %dx.types.ResRet.f32 %4228, 1
  %4231 = extractvalue %dx.types.ResRet.f32 %4228, 2
  %4232 = extractvalue %dx.types.ResRet.f32 %4228, 3
  %4233 = add nuw nsw i32 %4206, 80
  %4234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4233, i32 undef)  ; BufferLoad(srv,index,wot)
  %4235 = extractvalue %dx.types.ResRet.f32 %4234, 0
  %4236 = extractvalue %dx.types.ResRet.f32 %4234, 1
  %4237 = extractvalue %dx.types.ResRet.f32 %4234, 2
  %4238 = extractvalue %dx.types.ResRet.f32 %4234, 3
  %4239 = add nuw nsw i32 %4206, 96
  %4240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4239, i32 undef)  ; BufferLoad(srv,index,wot)
  %4241 = extractvalue %dx.types.ResRet.f32 %4240, 0
  %4242 = extractvalue %dx.types.ResRet.f32 %4240, 1
  %4243 = extractvalue %dx.types.ResRet.f32 %4240, 2
  %4244 = extractvalue %dx.types.ResRet.f32 %4240, 3
  %4245 = bitcast float %4215 to i32
  %4246 = fmul fast float %4220, %90
  %4247 = fmul fast float %4220, %91
  %4248 = fmul fast float %4220, %92
  %4249 = fadd fast float %4246, %135
  %4250 = fadd fast float %4247, %136
  %4251 = fadd fast float %4248, %137
  %4252 = fmul fast float %4249, %4223
  %4253 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %4229, float %4252)  ; FMad(a,b,c)
  %4254 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %4235, float %4253)  ; FMad(a,b,c)
  %4255 = fadd fast float %4254, %4241
  %4256 = fmul fast float %4249, %4224
  %4257 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %4230, float %4256)  ; FMad(a,b,c)
  %4258 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %4236, float %4257)  ; FMad(a,b,c)
  %4259 = fadd fast float %4258, %4242
  %4260 = fmul fast float %4249, %4225
  %4261 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %4231, float %4260)  ; FMad(a,b,c)
  %4262 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %4237, float %4261)  ; FMad(a,b,c)
  %4263 = fadd fast float %4262, %4243
  %4264 = fmul fast float %4249, %4226
  %4265 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %4232, float %4264)  ; FMad(a,b,c)
  %4266 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %4238, float %4265)  ; FMad(a,b,c)
  %4267 = fadd fast float %4266, %4244
  %4268 = fdiv fast float %4255, %4267
  %4269 = fdiv fast float %4259, %4267
  %4270 = fdiv fast float %4263, %4267
  %4271 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4270)  ; FMax(a,b)
  %4272 = fmul fast float %210, 0x401921FB60000000
  %4273 = call float @dx.op.unary.f32(i32 13, float %4272)  ; Sin(value)
  %4274 = call float @dx.op.unary.f32(i32 12, float %4272)  ; Cos(value)
  %4275 = fsub fast float -0.000000e+00, %4273
  %4276 = fmul fast float %4210, 5.000000e-01
  %4277 = call float @dx.op.dot2.f32(i32 54, float %210, float %210, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %4278 = call float @dx.op.unary.f32(i32 22, float %4277)  ; Frc(value)
  %4279 = fmul fast float %4278, 0x404A7DD040000000
  %4280 = call float @dx.op.unary.f32(i32 22, float %4279)  ; Frc(value)
  %4281 = fmul fast float %4280, %4219
  %4282 = fadd fast float %4281, %4276
  %4283 = call float @dx.op.tertiary.f32(i32 46, float %4282, float %4275, float 0.000000e+00)  ; FMad(a,b,c)
  %4284 = call float @dx.op.tertiary.f32(i32 46, float %4282, float %4274, float 0.000000e+00)  ; FMad(a,b,c)
  %4285 = fadd fast float %4283, %4268
  %4286 = fadd fast float %4284, %4269
  %4287 = fmul fast float %4285, %4214
  %4288 = fmul fast float %4286, %4214
  %4289 = call float @dx.op.binary.f32(i32 35, float %4287, float %4210)  ; FMax(a,b)
  %4290 = call float @dx.op.binary.f32(i32 35, float %4288, float %4210)  ; FMax(a,b)
  %4291 = call float @dx.op.binary.f32(i32 36, float %4289, float %4211)  ; FMin(a,b)
  %4292 = call float @dx.op.binary.f32(i32 36, float %4290, float %4211)  ; FMin(a,b)
  %4293 = fadd fast float %4291, %4208
  %4294 = fadd fast float %4292, %4209
  %4295 = uitofp i32 %4245 to float
  %4296 = fadd fast float %4271, %4218
  %4297 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %48, float %4293, float %4294, float %4295, float undef, i32 0, i32 0, i32 undef, float %4296)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4298 = extractvalue %dx.types.ResRet.f32 %4297, 0
  %4299 = fadd fast float %4298, -1.000000e+00
  %4300 = fmul fast float %4299, %4179
  %4301 = fadd fast float %4300, 1.000000e+00
  %4302 = fmul fast float %4301, %4191
  br label %4303

; <label>:4303                                    ; preds = %4205, %4203
  %4304 = phi float [ %4302, %4205 ], [ %4191, %4203 ]
  %4305 = call float @dx.op.binary.f32(i32 36, float %4304, float %4304)  ; FMin(a,b)
  %4306 = call float @dx.op.binary.f32(i32 36, float %4304, float %4305)  ; FMin(a,b)
  %4307 = fcmp fast ogt float %4306, 0.000000e+00
  br i1 %4307, label %4308, label %4195, !dx.controlflow.hints !114

; <label>:4308                                    ; preds = %4303
  %4309 = fmul fast float %4304, %4112
  %4310 = fmul fast float %4304, %4113
  %4311 = fmul fast float %4304, %4114
  %4312 = fsub fast float %4096, %1955
  %4313 = fcmp fast ogt float %4312, 0.000000e+00
  %4314 = fsub fast float %137, %1955
  %4315 = fcmp fast ogt float %4314, 0.000000e+00
  %4316 = xor i1 %4315, %4313
  %4317 = fsub fast float %1955, %4096
  %4318 = fmul fast float %4317, 2.000000e+00
  %4319 = fadd fast float %4318, %4096
  %4320 = select i1 %4316, float %4096, float %4319
  %4321 = fsub fast float %4320, %137
  %4322 = call float @dx.op.dot3.f32(i32 55, float %4123, float %4124, float %4321, float %4123, float %4124, float %4321)  ; Dot3(ax,ay,az,bx,by,bz)
  %4323 = call float @dx.op.unary.f32(i32 25, float %4322)  ; Rsqrt(value)
  %4324 = fmul fast float %4323, %4123
  %4325 = fmul fast float %4323, %4124
  %4326 = fmul fast float %4323, %4321
  %4327 = fsub fast float %1955, %137
  %4328 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4327)  ; Dot3(ax,ay,az,bx,by,bz)
  %4329 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4324, float %4325, float %4326)  ; Dot3(ax,ay,az,bx,by,bz)
  %4330 = fdiv fast float 1.000000e+00, %4329
  %4331 = fmul fast float %4330, %4328
  %4332 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4314, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4333 = fcmp fast ogt float %4332, 0.000000e+00
  %4334 = fcmp fast olt float %4332, 0.000000e+00
  %4335 = zext i1 %4333 to i32
  %4336 = zext i1 %4334 to i32
  %4337 = sub nsw i32 %4335, %4336
  %4338 = sitofp i32 %4337 to float
  %4339 = fsub fast float %4320, %1955
  %4340 = call float @dx.op.dot3.f32(i32 55, float %4123, float %4124, float %4339, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4341 = fcmp fast ogt float %4340, 0.000000e+00
  %4342 = fcmp fast olt float %4340, 0.000000e+00
  %4343 = zext i1 %4341 to i32
  %4344 = zext i1 %4342 to i32
  %4345 = sub nsw i32 %4343, %4344
  %4346 = sitofp i32 %4345 to float
  %4347 = fcmp fast une float %4338, %4346
  br i1 %4347, label %4348, label %4358

; <label>:4348                                    ; preds = %4308
  %4349 = fmul fast float %4331, %4326
  %4350 = fmul fast float %4331, %4325
  %4351 = fmul fast float %4331, %4324
  %4352 = fmul fast float %4351, %4351
  %4353 = fmul fast float %4350, %4350
  %4354 = fadd fast float %4352, %4353
  %4355 = fmul fast float %4349, %4349
  %4356 = fadd fast float %4354, %4355
  %4357 = call float @dx.op.unary.f32(i32 24, float %4356)  ; Sqrt(value)
  br label %4370

; <label>:4358                                    ; preds = %4308
  %4359 = icmp slt i32 %4337, 0
  br i1 %4359, label %4360, label %4370

; <label>:4360                                    ; preds = %4358
  %4361 = fsub fast float %135, %4094
  %4362 = fsub fast float %136, %4095
  %4363 = fsub fast float %137, %4320
  %4364 = fmul fast float %4361, %4361
  %4365 = fmul fast float %4362, %4362
  %4366 = fadd fast float %4364, %4365
  %4367 = fmul fast float %4363, %4363
  %4368 = fadd fast float %4366, %4367
  %4369 = call float @dx.op.unary.f32(i32 24, float %4368)  ; Sqrt(value)
  br label %4370

; <label>:4370                                    ; preds = %4360, %4358, %4348
  %4371 = phi float [ %4357, %4348 ], [ %4369, %4360 ], [ 0.000000e+00, %4358 ]
  %4372 = and i1 %4315, %4313
  %4373 = fsub fast float -0.000000e+00, %4371
  %4374 = select i1 %4372, float -0.000000e+00, float %4373
  %4375 = fmul fast float %1956, 0x3FF7154760000000
  %4376 = fmul fast float %4375, %4374
  %4377 = fmul fast float %1957, 0x3FF7154760000000
  %4378 = fmul fast float %4377, %4374
  %4379 = fmul fast float %1958, 0x3FF7154760000000
  %4380 = fmul fast float %4379, %4374
  %4381 = call float @dx.op.unary.f32(i32 21, float %4376)  ; Exp(value)
  %4382 = call float @dx.op.unary.f32(i32 21, float %4378)  ; Exp(value)
  %4383 = call float @dx.op.unary.f32(i32 21, float %4380)  ; Exp(value)
  %4384 = call float @dx.op.unary.f32(i32 7, float %4381)  ; Saturate(value)
  %4385 = call float @dx.op.unary.f32(i32 7, float %4382)  ; Saturate(value)
  %4386 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4387 = fmul fast float %4309, %4384
  %4388 = fmul fast float %4310, %4385
  %4389 = fmul fast float %4311, %4386
  %4390 = fsub fast float %4129, %2155
  %4391 = fsub fast float %4130, %2154
  %4392 = fsub fast float %4131, %2153
  %4393 = call float @dx.op.dot3.f32(i32 55, float %4390, float %4391, float %4392, float %4390, float %4391, float %4392)  ; Dot3(ax,ay,az,bx,by,bz)
  %4394 = call float @dx.op.unary.f32(i32 25, float %4393)  ; Rsqrt(value)
  %4395 = fmul fast float %4394, %4390
  %4396 = fmul fast float %4394, %4391
  %4397 = fmul fast float %4394, %4392
  %4398 = call float @dx.op.dot3.f32(i32 55, float %4129, float %4130, float %4131, float %2159, float %2160, float %2161)  ; Dot3(ax,ay,az,bx,by,bz)
  %4399 = call float @dx.op.dot3.f32(i32 55, float %2152, float %2151, float %2150, float %4395, float %4396, float %4397)  ; Dot3(ax,ay,az,bx,by,bz)
  %4400 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4401 = fmul fast float %4400, %4136
  %4402 = fmul fast float %4400, %4400
  %4403 = fmul fast float %4402, %2219
  %4404 = call float @dx.op.unary.f32(i32 7, float %4403)  ; Saturate(value)
  %4405 = fmul fast float %4401, %4404
  %4406 = bitcast float %4126 to i32
  %4407 = ashr i32 %4406, 1
  %4408 = sub nsw i32 1597463007, %4407
  %4409 = bitcast i32 %4408 to float
  %4410 = fmul fast float %4409, %4123
  %4411 = fmul fast float %4409, %4124
  %4412 = fmul fast float %4409, %4125
  %4413 = fsub fast float %4410, %2155
  %4414 = fsub fast float %4411, %2154
  %4415 = fsub fast float %4412, %2153
  %4416 = call float @dx.op.dot3.f32(i32 55, float %4413, float %4414, float %4415, float %4413, float %4414, float %4415)  ; Dot3(ax,ay,az,bx,by,bz)
  %4417 = call float @dx.op.unary.f32(i32 25, float %4416)  ; Rsqrt(value)
  %4418 = fmul fast float %4413, %4417
  %4419 = fmul fast float %4414, %4417
  %4420 = fmul fast float %4415, %4417
  %4421 = call float @dx.op.dot3.f32(i32 55, float %2159, float %2160, float %2161, float %4418, float %4419, float %4420)  ; Dot3(ax,ay,az,bx,by,bz)
  %4422 = fmul fast float %4421, %4421
  %4423 = call float @dx.op.unary.f32(i32 6, float %4398)  ; FAbs(value)
  %4424 = call float @dx.op.binary.f32(i32 35, float %2594, float 0x3F847AE140000000)  ; FMax(a,b)
  %4425 = fmul fast float %4424, %4424
  %4426 = fmul fast float %4425, %4425
  %4427 = fsub fast float 1.000000e+00, %4426
  %4428 = fmul fast float %2206, %2206
  %4429 = fmul fast float %4428, %4427
  %4430 = fadd fast float %4429, %4426
  %4431 = bitcast float %4430 to i32
  %4432 = ashr i32 %4431, 1
  %4433 = add nsw i32 %4432, 532487669
  %4434 = bitcast i32 %4433 to float
  %4435 = fadd fast float %4434, %2206
  %4436 = fmul fast float %4426, %4422
  %4437 = fsub fast float 1.000000e+00, %4422
  %4438 = fadd fast float %4437, %4436
  %4439 = fmul fast float %4423, %4423
  %4440 = fmul fast float %4439, %4427
  %4441 = fadd fast float %4440, %4426
  %4442 = bitcast float %4441 to i32
  %4443 = ashr i32 %4442, 1
  %4444 = add nsw i32 %4443, 532487669
  %4445 = bitcast i32 %4444 to float
  %4446 = fadd fast float %4445, %4423
  %4447 = fmul fast float %4438, %4438
  %4448 = fmul fast float %4447, %4435
  %4449 = fmul fast float %4448, %4446
  %4450 = fdiv fast float 1.000000e+00, %4449
  %4451 = bitcast float %4426 to i32
  %4452 = sitofp i32 %4451 to float
  %4453 = fmul fast float %4452, 0x3FE7F73180000000
  %4454 = fadd fast float %4453, 0x41AFE27C40000000
  %4455 = fptosi float %4454 to i32
  %4456 = bitcast i32 %4455 to float
  %4457 = fmul fast float %4091, 0x3FD80E9D60000000
  %4458 = fmul fast float %4457, %4409
  %4459 = fadd fast float %4456, %4458
  %4460 = bitcast float %4459 to i32
  %4461 = sub nsw i32 2129859010, %4460
  %4462 = bitcast i32 %4461 to float
  %4463 = fmul fast float %4426, %4450
  %4464 = fmul fast float %4463, %4456
  %4465 = fmul fast float %4464, %4462
  %4466 = fmul fast float %2454, 0x3FF9999980000000
  %4467 = fsub fast float 5.000000e+00, %4466
  %4468 = call float @dx.op.unary.f32(i32 6, float %4399)  ; FAbs(value)
  %4469 = fsub fast float 1.000000e+00, %4468
  %4470 = fmul fast float %2454, 0x41D9660740000000
  %4471 = fadd fast float %4470, 0xC1EFBF8940000000
  %4472 = bitcast float %4469 to i32
  %4473 = sitofp i32 %4472 to float
  %4474 = fmul fast float %4473, %4467
  %4475 = fadd fast float %4471, %4474
  %4476 = fptosi float %4475 to i32
  %4477 = bitcast i32 %4476 to float
  %4478 = fsub fast float 1.000000e+00, %2156
  %4479 = fsub fast float 1.000000e+00, %2157
  %4480 = fsub fast float 1.000000e+00, %2204
  %4481 = fmul fast float %4477, %4478
  %4482 = fmul fast float %4477, %4479
  %4483 = fmul fast float %4477, %4480
  %4484 = fadd fast float %4481, %2156
  %4485 = fadd fast float %4482, %2157
  %4486 = fadd fast float %4483, %2204
  br i1 %2477, label %4487, label %4510

; <label>:4487                                    ; preds = %4370
  %4488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %46, float %1501, float %4468, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4489 = extractvalue %dx.types.ResRet.f32 %4488, 0
  %4490 = extractvalue %dx.types.ResRet.f32 %4488, 1
  %4491 = extractvalue %dx.types.ResRet.f32 %4488, 2
  %4492 = fadd fast float %4489, -5.000000e-01
  %4493 = fadd fast float %4490, -5.000000e-01
  %4494 = fadd fast float %4491, -5.000000e-01
  %4495 = fmul fast float %2156, 4.000000e+00
  %4496 = fmul fast float %4495, %4478
  %4497 = fmul fast float %4496, %4492
  %4498 = fmul fast float %2157, 4.000000e+00
  %4499 = fmul fast float %4498, %4479
  %4500 = fmul fast float %4499, %4493
  %4501 = fmul fast float %2204, 4.000000e+00
  %4502 = fmul fast float %4501, %4480
  %4503 = fmul fast float %4502, %4494
  %4504 = fadd fast float %4497, %4484
  %4505 = fadd fast float %4500, %4485
  %4506 = fadd fast float %4503, %4486
  %4507 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4508 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4509 = call float @dx.op.unary.f32(i32 7, float %4506)  ; Saturate(value)
  br label %4510

; <label>:4510                                    ; preds = %4487, %4370
  %4511 = phi float [ %4507, %4487 ], [ %4484, %4370 ]
  %4512 = phi float [ %4508, %4487 ], [ %4485, %4370 ]
  %4513 = phi float [ %4509, %4487 ], [ %4486, %4370 ]
  %4514 = fmul fast float %4398, 9.843750e-01
  %4515 = fadd fast float %4514, 7.812500e-03
  %4516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %46, float %4515, float %2458, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4517 = extractvalue %dx.types.ResRet.f32 %4516, 0
  %4518 = extractvalue %dx.types.ResRet.f32 %4516, 1
  %4519 = extractvalue %dx.types.ResRet.f32 %4516, 2
  %4520 = extractvalue %dx.types.ResRet.f32 %4516, 3
  %4521 = fsub fast float %4519, %4517
  %4522 = fsub fast float %4520, %4518
  %4523 = fmul fast float %4521, %2464
  %4524 = fmul fast float %4522, %2464
  %4525 = fadd fast float %4523, %4517
  %4526 = fadd fast float %4524, %4518
  %4527 = fmul fast float %4525, %2156
  %4528 = fmul fast float %4525, %2157
  %4529 = fmul fast float %4525, %2204
  %4530 = fadd fast float %4527, %4526
  %4531 = fadd fast float %4528, %4526
  %4532 = fadd fast float %4529, %4526
  br i1 %2477, label %4533, label %4556

; <label>:4533                                    ; preds = %4510
  %4534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %46, float %1501, float %4398, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4535 = extractvalue %dx.types.ResRet.f32 %4534, 0
  %4536 = extractvalue %dx.types.ResRet.f32 %4534, 1
  %4537 = extractvalue %dx.types.ResRet.f32 %4534, 2
  %4538 = fadd fast float %4535, -5.000000e-01
  %4539 = fadd fast float %4536, -5.000000e-01
  %4540 = fadd fast float %4537, -5.000000e-01
  %4541 = fmul fast float %2156, 4.000000e+00
  %4542 = fmul fast float %4541, %4478
  %4543 = fmul fast float %4542, %4538
  %4544 = fmul fast float %2157, 4.000000e+00
  %4545 = fmul fast float %4544, %4479
  %4546 = fmul fast float %4545, %4539
  %4547 = fmul fast float %2204, 4.000000e+00
  %4548 = fmul fast float %4547, %4480
  %4549 = fmul fast float %4548, %4540
  %4550 = fadd fast float %4543, %4530
  %4551 = fadd fast float %4546, %4531
  %4552 = fadd fast float %4549, %4532
  %4553 = call float @dx.op.unary.f32(i32 7, float %4550)  ; Saturate(value)
  %4554 = call float @dx.op.unary.f32(i32 7, float %4551)  ; Saturate(value)
  %4555 = call float @dx.op.unary.f32(i32 7, float %4552)  ; Saturate(value)
  br label %4556

; <label>:4556                                    ; preds = %4533, %4510
  %4557 = phi float [ %4553, %4533 ], [ %4530, %4510 ]
  %4558 = phi float [ %4554, %4533 ], [ %4531, %4510 ]
  %4559 = phi float [ %4555, %4533 ], [ %4532, %4510 ]
  %4560 = call float @dx.op.binary.f32(i32 35, float %4558, float %4559)  ; FMax(a,b)
  %4561 = call float @dx.op.binary.f32(i32 35, float %4557, float %4560)  ; FMax(a,b)
  %4562 = fsub fast float 1.000000e+00, %4561
  %4563 = call float @dx.op.binary.f32(i32 35, float %4423, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4564 = fdiv fast float %901, %4563
  %4565 = fmul fast float %2535, %4564
  %4566 = fmul fast float %2537, %4564
  %4567 = fmul fast float %2539, %4564
  %4568 = call float @dx.op.unary.f32(i32 21, float %4565)  ; Exp(value)
  %4569 = call float @dx.op.unary.f32(i32 21, float %4566)  ; Exp(value)
  %4570 = call float @dx.op.unary.f32(i32 21, float %4567)  ; Exp(value)
  %4571 = call float @dx.op.unary.f32(i32 7, float %4568)  ; Saturate(value)
  %4572 = call float @dx.op.unary.f32(i32 7, float %4569)  ; Saturate(value)
  %4573 = call float @dx.op.unary.f32(i32 7, float %4570)  ; Saturate(value)
  %4574 = select i1 %2532, float %4571, float 0.000000e+00
  %4575 = select i1 %2533, float %4572, float 0.000000e+00
  %4576 = select i1 %2534, float %4573, float 0.000000e+00
  %4577 = fsub fast float -0.000000e+00, %2159
  %4578 = fsub fast float -0.000000e+00, %2160
  %4579 = fsub fast float -0.000000e+00, %2161
  %4580 = call float @dx.op.dot3.f32(i32 55, float %4129, float %4130, float %4131, float %4577, float %4578, float %4579)  ; Dot3(ax,ay,az,bx,by,bz)
  %4581 = call float @dx.op.unary.f32(i32 7, float %4580)  ; Saturate(value)
  %4582 = fmul fast float %4581, %4136
  %4583 = fmul fast float %4581, 9.843750e-01
  %4584 = fadd fast float %4583, 7.812500e-03
  %4585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %46, float %4584, float %2458, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4586 = extractvalue %dx.types.ResRet.f32 %4585, 0
  %4587 = extractvalue %dx.types.ResRet.f32 %4585, 1
  %4588 = extractvalue %dx.types.ResRet.f32 %4585, 2
  %4589 = extractvalue %dx.types.ResRet.f32 %4585, 3
  %4590 = fsub fast float %4588, %4586
  %4591 = fsub fast float %4589, %4587
  %4592 = fmul fast float %4590, %2464
  %4593 = fmul fast float %4591, %2464
  %4594 = fadd fast float %4592, %4586
  %4595 = fadd fast float %4593, %4587
  %4596 = fmul fast float %4594, %2156
  %4597 = fmul fast float %4594, %2157
  %4598 = fmul fast float %4594, %2204
  %4599 = fadd fast float %4596, %4595
  %4600 = fadd fast float %4597, %4595
  %4601 = fadd fast float %4598, %4595
  br i1 %2477, label %4602, label %4625

; <label>:4602                                    ; preds = %4556
  %4603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %46, float %1501, float %4581, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4604 = extractvalue %dx.types.ResRet.f32 %4603, 0
  %4605 = extractvalue %dx.types.ResRet.f32 %4603, 1
  %4606 = extractvalue %dx.types.ResRet.f32 %4603, 2
  %4607 = fadd fast float %4604, -5.000000e-01
  %4608 = fadd fast float %4605, -5.000000e-01
  %4609 = fadd fast float %4606, -5.000000e-01
  %4610 = fmul fast float %2156, 4.000000e+00
  %4611 = fmul fast float %4610, %4478
  %4612 = fmul fast float %4611, %4607
  %4613 = fmul fast float %2157, 4.000000e+00
  %4614 = fmul fast float %4613, %4479
  %4615 = fmul fast float %4614, %4608
  %4616 = fmul fast float %2204, 4.000000e+00
  %4617 = fmul fast float %4616, %4480
  %4618 = fmul fast float %4617, %4609
  %4619 = fadd fast float %4612, %4599
  %4620 = fadd fast float %4615, %4600
  %4621 = fadd fast float %4618, %4601
  %4622 = call float @dx.op.unary.f32(i32 7, float %4619)  ; Saturate(value)
  %4623 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4624 = call float @dx.op.unary.f32(i32 7, float %4621)  ; Saturate(value)
  br label %4625

; <label>:4625                                    ; preds = %4602, %4556
  %4626 = phi float [ %4622, %4602 ], [ %4599, %4556 ]
  %4627 = phi float [ %4623, %4602 ], [ %4600, %4556 ]
  %4628 = phi float [ %4624, %4602 ], [ %4601, %4556 ]
  %4629 = call float @dx.op.binary.f32(i32 35, float %4627, float %4628)  ; FMax(a,b)
  %4630 = call float @dx.op.binary.f32(i32 35, float %4626, float %4629)  ; FMax(a,b)
  %4631 = fsub fast float 1.000000e+00, %4630
  %4632 = fmul fast float %2594, %2600
  %4633 = fadd fast float %2593, %4632
  %4634 = call float @dx.op.unary.f32(i32 7, float %4633)  ; Saturate(value)
  %4635 = fsub fast float %4410, %2212
  %4636 = fsub fast float %4411, %2213
  %4637 = fsub fast float %4412, %2214
  %4638 = call float @dx.op.dot3.f32(i32 55, float %4635, float %4636, float %4637, float %4635, float %4636, float %4637)  ; Dot3(ax,ay,az,bx,by,bz)
  %4639 = call float @dx.op.unary.f32(i32 25, float %4638)  ; Rsqrt(value)
  %4640 = fmul fast float %4635, %4639
  %4641 = fmul fast float %4636, %4639
  %4642 = fmul fast float %4637, %4639
  %4643 = call float @dx.op.dot3.f32(i32 55, float %4577, float %4578, float %4579, float %4640, float %4641, float %4642)  ; Dot3(ax,ay,az,bx,by,bz)
  %4644 = fmul fast float %4643, %4643
  %4645 = call float @dx.op.unary.f32(i32 6, float %4581)  ; FAbs(value)
  %4646 = call float @dx.op.binary.f32(i32 35, float %4634, float 0x3F847AE140000000)  ; FMax(a,b)
  %4647 = fmul fast float %4646, %4646
  %4648 = fmul fast float %4647, %4647
  %4649 = fsub fast float 1.000000e+00, %4648
  %4650 = fmul fast float %4428, %4649
  %4651 = fadd fast float %4650, %4648
  %4652 = bitcast float %4651 to i32
  %4653 = ashr i32 %4652, 1
  %4654 = add nsw i32 %4653, 532487669
  %4655 = bitcast i32 %4654 to float
  %4656 = fadd fast float %4655, %2206
  %4657 = fmul fast float %4648, %4644
  %4658 = fsub fast float 1.000000e+00, %4644
  %4659 = fadd fast float %4658, %4657
  %4660 = fmul fast float %4645, %4645
  %4661 = fmul fast float %4660, %4649
  %4662 = fadd fast float %4661, %4648
  %4663 = bitcast float %4662 to i32
  %4664 = ashr i32 %4663, 1
  %4665 = add nsw i32 %4664, 532487669
  %4666 = bitcast i32 %4665 to float
  %4667 = fadd fast float %4666, %4645
  %4668 = fmul fast float %4659, %4659
  %4669 = fmul fast float %4668, %4656
  %4670 = fmul fast float %4669, %4667
  %4671 = fdiv fast float 1.000000e+00, %4670
  %4672 = bitcast float %4648 to i32
  %4673 = sitofp i32 %4672 to float
  %4674 = fmul fast float %4673, 0x3FE7F73180000000
  %4675 = fadd fast float %4674, 0x41AFE27C40000000
  %4676 = fptosi float %4675 to i32
  %4677 = bitcast i32 %4676 to float
  %4678 = fadd fast float %4677, %4458
  %4679 = bitcast float %4678 to i32
  %4680 = sub nsw i32 2129859010, %4679
  %4681 = bitcast i32 %4680 to float
  %4682 = fmul fast float %4648, %4671
  %4683 = fmul fast float %4682, %4677
  %4684 = fmul fast float %4683, %4681
  br i1 %4121, label %4685, label %4695

; <label>:4685                                    ; preds = %4625
  %4686 = fmul fast float %4582, %4574
  %4687 = fmul fast float %4582, %4575
  %4688 = fmul fast float %4582, %4576
  %4689 = fmul fast float %4686, %4631
  %4690 = fmul fast float %4689, %4684
  %4691 = fmul fast float %4687, %4631
  %4692 = fmul fast float %4691, %4684
  %4693 = fmul fast float %4688, %4631
  %4694 = fmul fast float %4693, %4684
  br label %4695

; <label>:4695                                    ; preds = %4685, %4625
  %4696 = phi float [ %4690, %4685 ], [ 0.000000e+00, %4625 ]
  %4697 = phi float [ %4692, %4685 ], [ 0.000000e+00, %4625 ]
  %4698 = phi float [ %4694, %4685 ], [ 0.000000e+00, %4625 ]
  %4699 = fmul fast float %4511, %4465
  %4700 = fmul fast float %4512, %4465
  %4701 = fmul fast float %4513, %4465
  %4702 = fsub fast float 1.000000e+00, %4399
  %4703 = bitcast float %4702 to i32
  %4704 = sitofp i32 %4703 to float
  %4705 = fmul fast float %4704, 5.000000e+00
  %4706 = fadd fast float %4705, 0xC1EFBF8940000000
  %4707 = fptosi float %4706 to i32
  %4708 = bitcast i32 %4707 to float
  %4709 = fmul fast float %4708, %1500
  %4710 = fmul fast float %4562, %4709
  %4711 = fmul fast float %4710, %2527
  %4712 = fmul fast float %4710, %2528
  %4713 = fmul fast float %4710, %2529
  %4714 = fadd fast float %4711, %4699
  %4715 = fadd fast float %4712, %4700
  %4716 = fadd fast float %4713, %4701
  %4717 = fmul fast float %4714, %4405
  %4718 = fmul fast float %4715, %4405
  %4719 = fmul fast float %4716, %4405
  %4720 = fadd fast float %4717, %4696
  %4721 = fadd fast float %4718, %4697
  %4722 = fadd fast float %4719, %4698
  %4723 = fmul fast float %4387, %1524
  %4724 = fmul fast float %4723, %4405
  %4725 = fmul fast float %4724, %4562
  %4726 = fmul fast float %4388, %1524
  %4727 = fmul fast float %4726, %4405
  %4728 = fmul fast float %4727, %4562
  %4729 = fmul fast float %4389, %1524
  %4730 = fmul fast float %4729, %4405
  %4731 = fmul fast float %4730, %4562
  %4732 = fadd fast float %4725, %4065
  %4733 = fadd fast float %4728, %4066
  %4734 = fadd fast float %4731, %4067
  %4735 = fmul fast float %4723, %4720
  %4736 = fmul fast float %4726, %4721
  %4737 = fmul fast float %4729, %4722
  %4738 = fadd fast float %4735, %4062
  %4739 = fadd fast float %4736, %4063
  %4740 = fadd fast float %4737, %4064
  br label %4195

; <label>:4741                                    ; preds = %4195
  br label %4742

; <label>:4742                                    ; preds = %4741, %4028
  %4743 = phi float [ %4030, %4028 ], [ %4196, %4741 ]
  %4744 = phi float [ %4031, %4028 ], [ %4197, %4741 ]
  %4745 = phi float [ %4032, %4028 ], [ %4198, %4741 ]
  %4746 = phi float [ %4033, %4028 ], [ %4199, %4741 ]
  %4747 = phi float [ %4034, %4028 ], [ %4200, %4741 ]
  %4748 = phi float [ %4035, %4028 ], [ %4201, %4741 ]
  %4749 = add i32 %4029, 1
  %4750 = icmp ugt i32 %4749, %4025
  br i1 %4750, label %4751, label %4028

; <label>:4751                                    ; preds = %4742
  br label %4752

; <label>:4752                                    ; preds = %4751, %3978, %3968
  %4753 = phi float [ %3969, %3968 ], [ %3969, %3978 ], [ %4743, %4751 ]
  %4754 = phi float [ %3970, %3968 ], [ %3970, %3978 ], [ %4744, %4751 ]
  %4755 = phi float [ %3971, %3968 ], [ %3971, %3978 ], [ %4745, %4751 ]
  %4756 = phi float [ %3972, %3968 ], [ %3972, %3978 ], [ %4746, %4751 ]
  %4757 = phi float [ %3973, %3968 ], [ %3973, %3978 ], [ %4747, %4751 ]
  %4758 = phi float [ %3974, %3968 ], [ %3974, %3978 ], [ %4748, %4751 ]
  %4759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4760 = extractvalue %dx.types.CBufRet.f32 %4759, 0
  %4761 = fmul fast float %4760, %2607
  %4762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.f32 %4762, 3
  %4764 = fsub fast float 1.000000e+00, %1496
  %4765 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4766 = fadd fast float %4758, %1495
  %4767 = fmul fast float %4766, %1496
  %4768 = fmul fast float %4765, %4763
  %4769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %4770 = extractvalue %dx.types.CBufRet.f32 %4769, 3
  %4771 = fmul fast float %4756, %2162
  %4772 = fmul fast float %4757, %2163
  %4773 = fmul fast float %4758, %2164
  %4774 = fcmp fast ogt float %78, %157
  %4775 = and i1 %4774, %1961
  %4776 = or i1 %1967, %4775
  %4777 = icmp eq i32 %1960, 2
  %4778 = fcmp fast ole float %78, %157
  %4779 = and i1 %4778, %4777
  %4780 = or i1 %4779, %4776
  br i1 %4775, label %4781, label %5030

; <label>:4781                                    ; preds = %4752
  %4782 = fmul fast float %2687, %87
  %4783 = fmul fast float %2688, %88
  %4784 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4785 = call float @dx.op.unary.f32(i32 7, float %4783)  ; Saturate(value)
  %4786 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %46, float %4784, float %4785, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4787 = extractvalue %dx.types.ResRet.f32 %4786, 0
  %4788 = extractvalue %dx.types.ResRet.f32 %4786, 1
  %4789 = extractvalue %dx.types.ResRet.f32 %4786, 2
  %4790 = extractvalue %dx.types.ResRet.f32 %4786, 3
  %4791 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %46, float %4784, float %4785, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4792 = extractvalue %dx.types.ResRet.f32 %4791, 0
  %4793 = extractvalue %dx.types.ResRet.f32 %4791, 1
  %4794 = extractvalue %dx.types.ResRet.f32 %4791, 2
  %4795 = extractvalue %dx.types.ResRet.f32 %4791, 3
  %4796 = call float @dx.op.binary.f32(i32 35, float %4788, float %4789)  ; FMax(a,b)
  %4797 = call float @dx.op.binary.f32(i32 35, float %4787, float %4796)  ; FMax(a,b)
  %4798 = call float @dx.op.binary.f32(i32 35, float %4797, float %4790)  ; FMax(a,b)
  %4799 = call float @dx.op.binary.f32(i32 36, float %4793, float %4794)  ; FMin(a,b)
  %4800 = call float @dx.op.binary.f32(i32 36, float %4792, float %4799)  ; FMin(a,b)
  %4801 = call float @dx.op.binary.f32(i32 36, float %4800, float %4795)  ; FMin(a,b)
  %4802 = fmul fast float %4798, 2.550000e+02
  %4803 = fadd fast float %4802, 0x3F70101020000000
  %4804 = fptoui float %4803 to i32
  %4805 = fmul fast float %4801, 2.550000e+02
  %4806 = fadd fast float %4805, 0x3F70101020000000
  %4807 = fptoui float %4806 to i32
  %4808 = icmp ult i32 %4804, %4807
  br i1 %4808, label %4809, label %4975

; <label>:4809                                    ; preds = %4781
  %4810 = fcmp fast ogt float %77, 9.843750e-01
  %4811 = fadd fast float %78, -4.000000e+00
  %4812 = select i1 %4810, float -4.000000e+00, float %4811
  %4813 = call float @dx.op.binary.f32(i32 35, float %4812, float 0.000000e+00)  ; FMax(a,b)
  %4814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4815 = extractvalue %dx.types.CBufRet.f32 %4814, 0
  %4816 = fadd fast float %4815, %4813
  %4817 = extractvalue %dx.types.CBufRet.f32 %4814, 2
  %4818 = fmul fast float %4816, %4817
  %4819 = call float @dx.op.unary.f32(i32 23, float %4818)  ; Log(value)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4814, 3
  %4821 = fmul fast float %4820, %4819
  %4822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4823 = extractvalue %dx.types.CBufRet.f32 %4822, 2
  %4824 = fmul fast float %4821, %4823
  %4825 = call float @dx.op.unary.f32(i32 7, float %4824)  ; Saturate(value)
  %4826 = uitofp i32 %4804 to float
  %4827 = uitofp i32 %4807 to float
  %4828 = fadd fast float %4826, 5.000000e-01
  %4829 = fadd fast float %4827, 5.000000e-01
  %4830 = fmul fast float %4823, %4828
  %4831 = fmul fast float %4823, %4829
  %4832 = fadd fast float %4830, 0x3F0FFB4800000000
  %4833 = fadd fast float %4831, 0xBF0FFB4800000000
  %4834 = call float @dx.op.binary.f32(i32 35, float %4825, float %4832)  ; FMax(a,b)
  %4835 = call float @dx.op.binary.f32(i32 36, float %4834, float %4833)  ; FMin(a,b)
  %4836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4837 = extractvalue %dx.types.CBufRet.f32 %4836, 1
  %4838 = extractvalue %dx.types.CBufRet.f32 %4836, 2
  %4839 = extractvalue %dx.types.CBufRet.f32 %4836, 0
  %4840 = fmul fast float %4837, %4835
  %4841 = fadd fast float %4839, %4840
  %4842 = fadd fast float %4839, %4838
  %4843 = fsub fast float %4837, %4838
  %4844 = fadd fast float %4843, %4839
  %4845 = call float @dx.op.binary.f32(i32 35, float %4841, float %4842)  ; FMax(a,b)
  %4846 = call float @dx.op.binary.f32(i32 36, float %4845, float %4844)  ; FMin(a,b)
  %4847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %44, float %4784, float %4785, float %4846, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4848 = extractvalue %dx.types.ResRet.f32 %4847, 0
  %4849 = extractvalue %dx.types.ResRet.f32 %4847, 1
  %4850 = extractvalue %dx.types.ResRet.f32 %4847, 2
  %4851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.i32 %4851, 0
  %4853 = extractvalue %dx.types.CBufRet.i32 %4851, 1
  %4854 = uitofp i32 %4852 to float
  %4855 = uitofp i32 %4853 to float
  %4856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4857 = extractvalue %dx.types.CBufRet.f32 %4856, 0
  %4858 = extractvalue %dx.types.CBufRet.f32 %4856, 1
  %4859 = fmul fast float %4854, %4784
  %4860 = fmul fast float %4855, %4785
  %4861 = fadd fast float %4859, -5.000000e-01
  %4862 = fadd fast float %4860, -5.000000e-01
  %4863 = call float @dx.op.unary.f32(i32 22, float %4861)  ; Frc(value)
  %4864 = call float @dx.op.unary.f32(i32 22, float %4862)  ; Frc(value)
  %4865 = fmul fast float %4863, %4863
  %4866 = fmul fast float %4865, %4863
  %4867 = fsub fast float 3.000000e+00, %4863
  %4868 = fmul fast float %4865, %4867
  %4869 = fmul fast float %4863, 3.000000e+00
  %4870 = fmul fast float %4866, 3.000000e+00
  %4871 = fmul fast float %4865, 6.000000e+00
  %4872 = fsub fast float %4870, %4871
  %4873 = fadd fast float %4872, 4.000000e+00
  %4874 = fmul fast float %4873, 0x3FC5555560000000
  %4875 = fmul fast float %4866, -3.000000e+00
  %4876 = fadd fast float %4865, %4863
  %4877 = fmul fast float %4876, 3.000000e+00
  %4878 = fadd fast float %4875, 1.000000e+00
  %4879 = fadd fast float %4878, %4877
  %4880 = fmul fast float %4866, 0x3FC5555560000000
  %4881 = fmul fast float %4864, %4864
  %4882 = fmul fast float %4881, %4864
  %4883 = fsub fast float 3.000000e+00, %4864
  %4884 = fmul fast float %4881, %4883
  %4885 = fmul fast float %4864, 3.000000e+00
  %4886 = fmul fast float %4882, 3.000000e+00
  %4887 = fmul fast float %4881, 6.000000e+00
  %4888 = fsub fast float %4886, %4887
  %4889 = fadd fast float %4888, 4.000000e+00
  %4890 = fmul fast float %4889, 0x3FC5555560000000
  %4891 = fmul fast float %4882, -3.000000e+00
  %4892 = fadd fast float %4881, %4864
  %4893 = fmul fast float %4892, 3.000000e+00
  %4894 = fadd fast float %4891, 1.000000e+00
  %4895 = fadd fast float %4894, %4893
  %4896 = fmul fast float %4882, 0x3FC5555560000000
  %4897 = fadd fast float %4863, 1.000000e+00
  %4898 = fsub fast float 1.000000e+00, %4869
  %4899 = fadd fast float %4898, %4868
  %4900 = fadd fast float %4899, %4873
  %4901 = fmul fast float %4900, 0x3FC5555560000000
  %4902 = fdiv fast float %4874, %4901
  %4903 = fsub fast float %4897, %4902
  %4904 = fsub fast float 1.000000e+00, %4863
  %4905 = fadd fast float %4879, %4866
  %4906 = fmul fast float %4905, 0x3FC5555560000000
  %4907 = fdiv fast float %4880, %4906
  %4908 = fadd fast float %4904, %4907
  %4909 = fadd fast float %4864, 1.000000e+00
  %4910 = fsub fast float 1.000000e+00, %4885
  %4911 = fadd fast float %4910, %4884
  %4912 = fadd fast float %4911, %4889
  %4913 = fmul fast float %4912, 0x3FC5555560000000
  %4914 = fdiv fast float %4890, %4913
  %4915 = fsub fast float %4909, %4914
  %4916 = fsub fast float 1.000000e+00, %4864
  %4917 = fadd fast float %4895, %4882
  %4918 = fmul fast float %4917, 0x3FC5555560000000
  %4919 = fdiv fast float %4896, %4918
  %4920 = fadd fast float %4919, %4916
  %4921 = fmul fast float %4903, %4857
  %4922 = fsub fast float %4784, %4921
  %4923 = fmul fast float %4908, %4857
  %4924 = fadd fast float %4923, %4784
  %4925 = fmul fast float %4920, %4858
  %4926 = fadd fast float %4925, %4785
  %4927 = fmul fast float %4915, %4858
  %4928 = fsub fast float %4785, %4927
  %4929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %44, float %4922, float %4928, float %4846, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4930 = extractvalue %dx.types.ResRet.f32 %4929, 0
  %4931 = extractvalue %dx.types.ResRet.f32 %4929, 1
  %4932 = extractvalue %dx.types.ResRet.f32 %4929, 2
  %4933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %44, float %4924, float %4928, float %4846, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4934 = extractvalue %dx.types.ResRet.f32 %4933, 0
  %4935 = extractvalue %dx.types.ResRet.f32 %4933, 1
  %4936 = extractvalue %dx.types.ResRet.f32 %4933, 2
  %4937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %44, float %4922, float %4926, float %4846, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4938 = extractvalue %dx.types.ResRet.f32 %4937, 0
  %4939 = extractvalue %dx.types.ResRet.f32 %4937, 1
  %4940 = extractvalue %dx.types.ResRet.f32 %4937, 2
  %4941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %44, float %4924, float %4926, float %4846, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4942 = extractvalue %dx.types.ResRet.f32 %4941, 0
  %4943 = extractvalue %dx.types.ResRet.f32 %4941, 1
  %4944 = extractvalue %dx.types.ResRet.f32 %4941, 2
  %4945 = fsub fast float %4938, %4930
  %4946 = fsub fast float %4939, %4931
  %4947 = fsub fast float %4940, %4932
  %4948 = fmul fast float %4945, %4918
  %4949 = fmul fast float %4946, %4918
  %4950 = fmul fast float %4947, %4918
  %4951 = fadd fast float %4948, %4930
  %4952 = fadd fast float %4949, %4931
  %4953 = fadd fast float %4950, %4932
  %4954 = fsub fast float %4942, %4934
  %4955 = fsub fast float %4943, %4935
  %4956 = fsub fast float %4944, %4936
  %4957 = fmul fast float %4954, %4918
  %4958 = fmul fast float %4955, %4918
  %4959 = fmul fast float %4956, %4918
  %4960 = fsub fast float %4934, %4951
  %4961 = fadd fast float %4960, %4957
  %4962 = fsub fast float %4935, %4952
  %4963 = fadd fast float %4962, %4958
  %4964 = fsub fast float %4936, %4953
  %4965 = fadd fast float %4964, %4959
  %4966 = fmul fast float %4961, %4906
  %4967 = fmul fast float %4963, %4906
  %4968 = fmul fast float %4965, %4906
  %4969 = fadd fast float %4966, %4951
  %4970 = fadd fast float %4967, %4952
  %4971 = fadd fast float %4968, %4953
  %4972 = fmul fast float %4969, %2742
  %4973 = fmul fast float %4970, %2742
  %4974 = fmul fast float %4971, %2742
  br label %4975

; <label>:4975                                    ; preds = %4809, %4781
  %4976 = phi float [ %4848, %4809 ], [ 1.000000e+00, %4781 ]
  %4977 = phi float [ %4849, %4809 ], [ 1.000000e+00, %4781 ]
  %4978 = phi float [ %4850, %4809 ], [ 1.000000e+00, %4781 ]
  %4979 = phi float [ %4972, %4809 ], [ 0.000000e+00, %4781 ]
  %4980 = phi float [ %4973, %4809 ], [ 0.000000e+00, %4781 ]
  %4981 = phi float [ %4974, %4809 ], [ 0.000000e+00, %4781 ]
  %4982 = call float @dx.op.dot3.f32(i32 55, float %4976, float %4977, float %4978, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4983 = call float @dx.op.dot3.f32(i32 55, float %4979, float %4980, float %4981, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4984 = select i1 %197, float %4982, float %4976
  %4985 = select i1 %197, float %4982, float %4977
  %4986 = select i1 %197, float 1.000000e+00, float %4978
  %4987 = select i1 %197, float %4983, float %4979
  %4988 = select i1 %197, float 0.000000e+00, float %4980
  %4989 = select i1 %197, float 0.000000e+00, float %4981
  %4990 = fmul fast float %4984, %4771
  %4991 = fmul fast float %4985, %4772
  %4992 = fmul fast float %4986, %4773
  %4993 = fadd fast float %4990, %4987
  %4994 = fadd fast float %4991, %4988
  %4995 = fadd fast float %4989, %4992
  %4996 = fmul fast float %4984, %4753
  %4997 = fmul fast float %4985, %4754
  %4998 = fmul fast float %4986, %4755
  %4999 = fmul fast float %2171, %2687
  %5000 = fmul fast float %2173, %2688
  %5001 = fsub fast float 1.000000e+00, %4999
  %5002 = fsub fast float 1.000000e+00, %5000
  %5003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5004 = extractvalue %dx.types.CBufRet.f32 %5003, 0
  %5005 = extractvalue %dx.types.CBufRet.f32 %5003, 1
  %5006 = extractvalue %dx.types.CBufRet.f32 %5003, 2
  %5007 = fmul fast float %5001, %5004
  %5008 = fmul fast float %5001, %5005
  %5009 = fmul fast float %5001, %5006
  %5010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.f32 %5010, 0
  %5012 = extractvalue %dx.types.CBufRet.f32 %5010, 1
  %5013 = extractvalue %dx.types.CBufRet.f32 %5010, 2
  %5014 = fmul fast float %5002, %5011
  %5015 = fmul fast float %5002, %5012
  %5016 = fmul fast float %5002, %5013
  %5017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5018 = extractvalue %dx.types.CBufRet.f32 %5017, 0
  %5019 = extractvalue %dx.types.CBufRet.f32 %5017, 1
  %5020 = extractvalue %dx.types.CBufRet.f32 %5017, 2
  %5021 = fadd fast float %5014, %5018
  %5022 = fadd fast float %5021, %5007
  %5023 = fadd fast float %5015, %5019
  %5024 = fadd fast float %5023, %5008
  %5025 = fadd fast float %5016, %5020
  %5026 = fadd fast float %5025, %5009
  %5027 = fmul fast float %5022, %157
  %5028 = fmul fast float %5024, %157
  %5029 = fmul fast float %5026, %157
  br label %5030

; <label>:5030                                    ; preds = %4975, %4752
  %5031 = phi float [ %5027, %4975 ], [ %135, %4752 ]
  %5032 = phi float [ %5028, %4975 ], [ %136, %4752 ]
  %5033 = phi float [ %5029, %4975 ], [ %137, %4752 ]
  %5034 = phi float [ %157, %4975 ], [ %78, %4752 ]
  %5035 = phi float [ %4993, %4975 ], [ %4771, %4752 ]
  %5036 = phi float [ %4994, %4975 ], [ %4772, %4752 ]
  %5037 = phi float [ %4995, %4975 ], [ %4773, %4752 ]
  %5038 = phi float [ %4996, %4975 ], [ %4753, %4752 ]
  %5039 = phi float [ %4997, %4975 ], [ %4754, %4752 ]
  %5040 = phi float [ %4998, %4975 ], [ %4755, %4752 ]
  %5041 = phi float [ %4976, %4975 ], [ 1.000000e+00, %4752 ]
  br i1 %4780, label %6183, label %5042

; <label>:5042                                    ; preds = %5030
  %5043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5044 = extractvalue %dx.types.CBufRet.f32 %5043, 0
  %5045 = extractvalue %dx.types.CBufRet.f32 %5043, 1
  %5046 = extractvalue %dx.types.CBufRet.f32 %5043, 2
  %5047 = extractvalue %dx.types.CBufRet.f32 %5043, 3
  %5048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5049 = extractvalue %dx.types.CBufRet.f32 %5048, 0
  %5050 = extractvalue %dx.types.CBufRet.f32 %5048, 1
  %5051 = extractvalue %dx.types.CBufRet.f32 %5048, 2
  %5052 = extractvalue %dx.types.CBufRet.f32 %5048, 3
  %5053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5054 = extractvalue %dx.types.CBufRet.f32 %5053, 0
  %5055 = extractvalue %dx.types.CBufRet.f32 %5053, 1
  %5056 = extractvalue %dx.types.CBufRet.f32 %5053, 2
  %5057 = extractvalue %dx.types.CBufRet.f32 %5053, 3
  %5058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5059 = extractvalue %dx.types.CBufRet.f32 %5058, 0
  %5060 = extractvalue %dx.types.CBufRet.f32 %5058, 1
  %5061 = extractvalue %dx.types.CBufRet.f32 %5058, 2
  %5062 = extractvalue %dx.types.CBufRet.f32 %5058, 3
  %5063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5064 = extractvalue %dx.types.CBufRet.f32 %5063, 3
  %5065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5066 = extractvalue %dx.types.CBufRet.f32 %5065, 3
  %5067 = extractvalue %dx.types.CBufRet.f32 %5065, 0
  %5068 = extractvalue %dx.types.CBufRet.f32 %5065, 1
  %5069 = extractvalue %dx.types.CBufRet.f32 %5065, 2
  %5070 = fcmp fast olt float %5069, -5.000000e-01
  %5071 = call float @dx.op.dot3.f32(i32 55, float %5031, float %5032, float %5033, float %5031, float %5032, float %5033)  ; Dot3(ax,ay,az,bx,by,bz)
  %5072 = call float @dx.op.unary.f32(i32 25, float %5071)  ; Rsqrt(value)
  %5073 = fmul fast float %5072, %5071
  %5074 = fmul fast float %5072, %5031
  %5075 = fmul fast float %5072, %5032
  %5076 = fmul fast float %5072, %5033
  %5077 = fadd fast float %5073, %5047
  %5078 = call float @dx.op.dot3.f32(i32 55, float %5074, float %5075, float %5076, float %5044, float %5045, float %5046)  ; Dot3(ax,ay,az,bx,by,bz)
  %5079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5080 = extractvalue %dx.types.CBufRet.i32 %5079, 1
  %5081 = and i32 %5080, 1
  %5082 = icmp ne i32 %5081, 0
  %5083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5084 = extractvalue %dx.types.CBufRet.f32 %5083, 2
  %5085 = fcmp fast ogt float %5084, 0.000000e+00
  %5086 = and i1 %5082, %5085
  br i1 %5086, label %5087, label %5493, !dx.controlflow.hints !115

; <label>:5087                                    ; preds = %5042
  %5088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5089 = extractvalue %dx.types.CBufRet.f32 %5088, 3
  %5090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5091 = extractvalue %dx.types.CBufRet.f32 %5090, 2
  %5092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5093 = extractvalue %dx.types.CBufRet.f32 %5092, 2
  %5094 = fsub fast float %5091, %5093
  %5095 = and i32 %5080, 2
  %5096 = extractvalue %dx.types.CBufRet.i32 %5079, 0
  %5097 = call i32 @dx.op.binary.i32(i32 40, i32 %5096, i32 3)  ; UMin(a,b)
  %5098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5099 = extractvalue %dx.types.CBufRet.f32 %5098, 0
  %5100 = extractvalue %dx.types.CBufRet.f32 %5098, 1
  %5101 = extractvalue %dx.types.CBufRet.f32 %5092, 0
  %5102 = extractvalue %dx.types.CBufRet.f32 %5092, 1
  %5103 = fsub fast float %5099, %5101
  %5104 = fsub fast float %5100, %5102
  %5105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5106 = extractvalue %dx.types.CBufRet.f32 %5105, 0
  %5107 = fcmp fast ogt float %5106, 0.000000e+00
  %5108 = fsub fast float -0.000000e+00, %5103
  %5109 = fsub fast float -0.000000e+00, %5104
  %5110 = call float @dx.op.dot2.f32(i32 54, float %5074, float %5075, float %5074, float %5075)  ; Dot2(ax,ay,bx,by)
  %5111 = call float @dx.op.dot2.f32(i32 54, float %5074, float %5075, float %5108, float %5109)  ; Dot2(ax,ay,bx,by)
  %5112 = fmul fast float %5111, 2.000000e+00
  %5113 = call float @dx.op.dot2.f32(i32 54, float %5108, float %5109, float %5108, float %5109)  ; Dot2(ax,ay,bx,by)
  %5114 = fmul fast float %5106, %5106
  %5115 = fsub fast float %5113, %5114
  %5116 = fmul fast float %5112, %5112
  %5117 = fmul fast float %5110, 4.000000e+00
  %5118 = fmul fast float %5117, %5115
  %5119 = fsub fast float %5116, %5118
  %5120 = fcmp fast ogt float %5119, 0.000000e+00
  br i1 %5120, label %5121, label %5136

; <label>:5121                                    ; preds = %5087
  %5122 = fcmp fast ogt float %5112, 0.000000e+00
  %5123 = call float @dx.op.unary.f32(i32 24, float %5119)  ; Sqrt(value)
  %5124 = fsub fast float -0.000000e+00, %5123
  %5125 = select i1 %5122, float %5123, float %5124
  %5126 = fadd fast float %5125, %5112
  %5127 = fmul float %5126, -5.000000e-01
  %5128 = fdiv fast float %5127, %5110
  %5129 = call float @dx.op.binary.f32(i32 35, float %5128, float 0.000000e+00)  ; FMax(a,b)
  %5130 = call float @dx.op.binary.f32(i32 36, float %5073, float %5129)  ; FMin(a,b)
  %5131 = fdiv fast float %5115, %5127
  %5132 = call float @dx.op.binary.f32(i32 35, float %5131, float 0.000000e+00)  ; FMax(a,b)
  %5133 = call float @dx.op.binary.f32(i32 36, float %5073, float %5132)  ; FMin(a,b)
  %5134 = call float @dx.op.binary.f32(i32 36, float %5130, float %5133)  ; FMin(a,b)
  %5135 = call float @dx.op.binary.f32(i32 35, float %5130, float %5133)  ; FMax(a,b)
  br label %5136

; <label>:5136                                    ; preds = %5121, %5087
  %5137 = phi float [ %5135, %5121 ], [ -1.000000e+00, %5087 ]
  %5138 = phi float [ %5134, %5121 ], [ -1.000000e+00, %5087 ]
  %5139 = phi i1 [ true, %5121 ], [ false, %5087 ]
  %5140 = and i1 %5107, %5139
  br i1 %5140, label %5141, label %5143

; <label>:5141                                    ; preds = %5136
  %5142 = fcmp fast oeq float %5138, %5137
  br i1 %5142, label %5446, label %5144

; <label>:5143                                    ; preds = %5136
  br i1 %5107, label %5446, label %5144

; <label>:5144                                    ; preds = %5143, %5141
  %5145 = phi float [ %5073, %5143 ], [ %5137, %5141 ]
  %5146 = phi float [ 0.000000e+00, %5143 ], [ %5138, %5141 ]
  %5147 = icmp ne i32 %5095, 0
  %5148 = fmul fast float %5145, %5076
  %5149 = fadd fast float %5148, %5089
  %5150 = fmul fast float %5149, %5145
  %5151 = select i1 %5147, float 0.000000e+00, float %5150
  %5152 = fcmp fast oeq float %5076, 0.000000e+00
  %5153 = fdiv fast float %5094, %5076
  %5154 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5153)  ; FMax(a,b)
  %5155 = select i1 %5152, float %5145, float %5154
  %5156 = call float @dx.op.binary.f32(i32 36, float %5145, float %5155)  ; FMin(a,b)
  %5157 = fcmp fast ogt float %5076, 0.000000e+00
  %5158 = fcmp fast olt float %5094, 0.000000e+00
  br i1 %5157, label %5159, label %5216

; <label>:5159                                    ; preds = %5144
  %5160 = icmp eq i32 %5095, 0
  br i1 %5158, label %5161, label %5205

; <label>:5161                                    ; preds = %5159
  %5162 = select i1 %5160, float %5145, float 0.000000e+00
  %5163 = fsub fast float -0.000000e+00, %5162
  %5164 = call float @dx.op.unary.f32(i32 6, float %5163)  ; FAbs(value)
  %5165 = fmul fast float %5162, %5076
  %5166 = fadd fast float %5165, %5089
  %5167 = fmul fast float %5164, %5166
  %5168 = fsub fast float %5151, %5167
  %5169 = fsub fast float %5145, %5164
  %5170 = select i1 %5160, float %5169, float 0.000000e+00
  %5171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5172 = extractvalue %dx.types.CBufRet.f32 %5171, 0
  %5173 = extractvalue %dx.types.CBufRet.f32 %5171, 1
  %5174 = extractvalue %dx.types.CBufRet.f32 %5171, 2
  %5175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5176 = extractvalue %dx.types.CBufRet.f32 %5175, 0
  %5177 = extractvalue %dx.types.CBufRet.f32 %5175, 1
  %5178 = extractvalue %dx.types.CBufRet.f32 %5175, 2
  %5179 = extractvalue %dx.types.CBufRet.f32 %5175, 3
  %5180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5181 = extractvalue %dx.types.CBufRet.f32 %5180, 3
  %5182 = call float @dx.op.binary.f32(i32 36, float %5168, float %5181)  ; FMin(a,b)
  %5183 = fmul fast float %5179, %5170
  %5184 = call float @dx.op.unary.f32(i32 7, float %5183)  ; Saturate(value)
  %5185 = fsub fast float %5176, %5172
  %5186 = fsub fast float %5177, %5173
  %5187 = fsub fast float %5178, %5174
  %5188 = fmul fast float %5184, %5185
  %5189 = fmul fast float %5184, %5186
  %5190 = fmul fast float %5184, %5187
  %5191 = fadd fast float %5188, %5172
  %5192 = fadd fast float %5189, %5173
  %5193 = fadd fast float %5190, %5174
  %5194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5194, 0
  %5196 = extractvalue %dx.types.CBufRet.f32 %5194, 1
  %5197 = fadd fast float %5196, %5195
  %5198 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5199 = extractvalue %dx.types.CBufRet.f32 %5194, 2
  %5200 = extractvalue %dx.types.CBufRet.f32 %5194, 3
  %5201 = fadd fast float %5200, %5199
  %5202 = call float @dx.op.unary.f32(i32 7, float %5201)  ; Saturate(value)
  %5203 = fmul fast float %5198, %5182
  %5204 = fmul fast float %5203, %5202
  br label %5446

; <label>:5205                                    ; preds = %5159
  br i1 %5160, label %5206, label %5227

; <label>:5206                                    ; preds = %5205
  %5207 = call float @dx.op.binary.f32(i32 36, float %5156, float %5146)  ; FMin(a,b)
  %5208 = fsub fast float %5156, %5207
  %5209 = fsub fast float %5208, %5145
  %5210 = call float @dx.op.unary.f32(i32 6, float %5209)  ; FAbs(value)
  %5211 = fadd fast float %5208, %5145
  %5212 = fmul fast float %5211, %5076
  %5213 = fadd fast float %5212, %5089
  %5214 = fmul fast float %5213, %5210
  %5215 = fsub fast float %5151, %5214
  br label %5227

; <label>:5216                                    ; preds = %5144
  br i1 %5158, label %5217, label %5227

; <label>:5217                                    ; preds = %5216
  %5218 = call float @dx.op.binary.f32(i32 35, float %5146, float %5156)  ; FMax(a,b)
  %5219 = icmp eq i32 %5095, 0
  %5220 = select i1 %5219, float %5156, float 0.000000e+00
  %5221 = fsub fast float -0.000000e+00, %5220
  %5222 = call float @dx.op.unary.f32(i32 6, float %5221)  ; FAbs(value)
  %5223 = fmul fast float %5220, %5076
  %5224 = fadd fast float %5223, %5089
  %5225 = fmul fast float %5222, %5224
  %5226 = fsub fast float %5151, %5225
  br label %5227

; <label>:5227                                    ; preds = %5217, %5216, %5206, %5205
  %5228 = phi float [ %5146, %5205 ], [ %5146, %5206 ], [ %5218, %5217 ], [ %5146, %5216 ]
  %5229 = phi float [ 0.000000e+00, %5205 ], [ %5210, %5206 ], [ %5222, %5217 ], [ 0.000000e+00, %5216 ]
  %5230 = phi float [ %5151, %5205 ], [ %5215, %5206 ], [ %5226, %5217 ], [ %5151, %5216 ]
  %5231 = phi float [ %5156, %5205 ], [ %5156, %5206 ], [ %5145, %5217 ], [ %5145, %5216 ]
  %5232 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 0
  store float -1.000000e+00, float* %5232, align 4, !tbaa !116, !noalias !118
  %5233 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 1
  store float -1.000000e+00, float* %5233, align 4, !tbaa !116, !noalias !118
  %5234 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 2
  store float -1.000000e+00, float* %5234, align 4, !tbaa !116, !noalias !118
  %5235 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 0
  store float -1.000000e+00, float* %5235, align 4, !tbaa !116, !noalias !118
  %5236 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 1
  store float -1.000000e+00, float* %5236, align 4, !tbaa !116, !noalias !118
  %5237 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 2
  store float -1.000000e+00, float* %5237, align 4, !tbaa !116, !noalias !118
  %5238 = icmp sgt i32 %5097, 0
  br i1 %5238, label %5239, label %5300

; <label>:5239                                    ; preds = %5227
  br label %5240

; <label>:5240                                    ; preds = %5289, %5239
  %5241 = phi i32 [ %5290, %5289 ], [ 0, %5239 ]
  %5242 = phi i32 [ %5291, %5289 ], [ 0, %5239 ]
  %5243 = add nuw i32 %5242, 171
  %5244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 %5243)  ; CBufferLoadLegacy(handle,regIndex)
  %5245 = extractvalue %dx.types.CBufRet.f32 %5244, 0
  %5246 = extractvalue %dx.types.CBufRet.f32 %5244, 1
  %5247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5248 = extractvalue %dx.types.CBufRet.f32 %5247, 0
  %5249 = extractvalue %dx.types.CBufRet.f32 %5247, 1
  %5250 = fsub fast float %5245, %5248
  %5251 = fsub fast float %5246, %5249
  %5252 = extractvalue %dx.types.CBufRet.f32 %5244, 2
  %5253 = fsub fast float -0.000000e+00, %5250
  %5254 = fsub fast float -0.000000e+00, %5251
  %5255 = call float @dx.op.dot2.f32(i32 54, float %5074, float %5075, float %5253, float %5254)  ; Dot2(ax,ay,bx,by)
  %5256 = fmul fast float %5255, 2.000000e+00
  %5257 = call float @dx.op.dot2.f32(i32 54, float %5253, float %5254, float %5253, float %5254)  ; Dot2(ax,ay,bx,by)
  %5258 = fmul fast float %5252, %5252
  %5259 = fsub fast float %5257, %5258
  %5260 = fmul fast float %5256, %5256
  %5261 = fmul fast float %5117, %5259
  %5262 = fsub fast float %5260, %5261
  %5263 = fcmp fast ogt float %5262, 0.000000e+00
  br i1 %5263, label %5264, label %5279

; <label>:5264                                    ; preds = %5240
  %5265 = fcmp fast ogt float %5256, 0.000000e+00
  %5266 = call float @dx.op.unary.f32(i32 24, float %5262)  ; Sqrt(value)
  %5267 = fsub fast float -0.000000e+00, %5266
  %5268 = select i1 %5265, float %5266, float %5267
  %5269 = fadd fast float %5268, %5256
  %5270 = fmul float %5269, -5.000000e-01
  %5271 = fdiv fast float %5270, %5110
  %5272 = call float @dx.op.binary.f32(i32 35, float %5271, float 0.000000e+00)  ; FMax(a,b)
  %5273 = call float @dx.op.binary.f32(i32 36, float %5145, float %5272)  ; FMin(a,b)
  %5274 = fdiv fast float %5259, %5270
  %5275 = call float @dx.op.binary.f32(i32 35, float %5274, float 0.000000e+00)  ; FMax(a,b)
  %5276 = call float @dx.op.binary.f32(i32 36, float %5145, float %5275)  ; FMin(a,b)
  %5277 = call float @dx.op.binary.f32(i32 36, float %5273, float %5276)  ; FMin(a,b)
  %5278 = call float @dx.op.binary.f32(i32 35, float %5273, float %5276)  ; FMax(a,b)
  br label %5279

; <label>:5279                                    ; preds = %5264, %5240
  %5280 = phi float [ %5278, %5264 ], [ -1.000000e+00, %5240 ]
  %5281 = phi float [ %5277, %5264 ], [ -1.000000e+00, %5240 ]
  %5282 = phi i1 [ true, %5264 ], [ false, %5240 ]
  br i1 %5282, label %5283, label %5289

; <label>:5283                                    ; preds = %5279
  %5284 = call float @dx.op.binary.f32(i32 35, float %5228, float %5281)  ; FMax(a,b)
  %5285 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %5242
  store float %5284, float* %5285, align 4, !tbaa !116, !noalias !118
  %5286 = call float @dx.op.binary.f32(i32 35, float %5228, float %5280)  ; FMax(a,b)
  %5287 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %5242
  store float %5286, float* %5287, align 4, !tbaa !116, !noalias !118
  %5288 = add nsw i32 %5241, 1
  br label %5289

; <label>:5289                                    ; preds = %5283, %5279
  %5290 = phi i32 [ %5288, %5283 ], [ %5241, %5279 ]
  %5291 = add nuw nsw i32 %5242, 1
  %5292 = icmp eq i32 %5291, %5097
  br i1 %5292, label %5293, label %5240

; <label>:5293                                    ; preds = %5289
  %5294 = load float, float* %5234, align 4, !tbaa !116, !alias.scope !134, !noalias !137
  %5295 = load float, float* %5233, align 4, !tbaa !116, !alias.scope !140, !noalias !141
  %5296 = load float, float* %5232, align 4, !tbaa !116, !alias.scope !142, !noalias !143
  %5297 = load float, float* %5237, align 4, !tbaa !116, !alias.scope !144, !noalias !147
  %5298 = load float, float* %5236, align 4, !tbaa !116, !alias.scope !150, !noalias !151
  %5299 = load float, float* %5235, align 4, !tbaa !116, !alias.scope !152, !noalias !153
  br label %5300

; <label>:5300                                    ; preds = %5293, %5227
  %5301 = phi float [ -1.000000e+00, %5227 ], [ %5299, %5293 ]
  %5302 = phi float [ -1.000000e+00, %5227 ], [ %5298, %5293 ]
  %5303 = phi float [ -1.000000e+00, %5227 ], [ %5297, %5293 ]
  %5304 = phi float [ -1.000000e+00, %5227 ], [ %5296, %5293 ]
  %5305 = phi float [ -1.000000e+00, %5227 ], [ %5295, %5293 ]
  %5306 = phi float [ -1.000000e+00, %5227 ], [ %5294, %5293 ]
  %5307 = phi i32 [ 0, %5227 ], [ %5290, %5293 ]
  %5308 = call float @dx.op.binary.f32(i32 36, float %5305, float %5306)  ; FMin(a,b)
  %5309 = call float @dx.op.binary.f32(i32 36, float %5304, float %5308)  ; FMin(a,b)
  %5310 = call float @dx.op.binary.f32(i32 35, float %5304, float %5305)  ; FMax(a,b)
  %5311 = call float @dx.op.binary.f32(i32 36, float %5310, float %5306)  ; FMin(a,b)
  %5312 = call float @dx.op.binary.f32(i32 36, float %5304, float %5305)  ; FMin(a,b)
  %5313 = call float @dx.op.binary.f32(i32 35, float %5312, float %5311)  ; FMax(a,b)
  %5314 = call float @dx.op.binary.f32(i32 35, float %5305, float %5306)  ; FMax(a,b)
  %5315 = call float @dx.op.binary.f32(i32 35, float %5304, float %5314)  ; FMax(a,b)
  store float %5309, float* %5232, align 4, !tbaa !116, !alias.scope !142, !noalias !143
  store float %5313, float* %5233, align 4, !tbaa !116, !alias.scope !140, !noalias !141
  store float %5315, float* %5234, align 4, !tbaa !116, !alias.scope !134, !noalias !137
  %5316 = call float @dx.op.binary.f32(i32 36, float %5302, float %5303)  ; FMin(a,b)
  %5317 = call float @dx.op.binary.f32(i32 36, float %5301, float %5316)  ; FMin(a,b)
  %5318 = call float @dx.op.binary.f32(i32 35, float %5301, float %5302)  ; FMax(a,b)
  %5319 = call float @dx.op.binary.f32(i32 36, float %5318, float %5303)  ; FMin(a,b)
  %5320 = call float @dx.op.binary.f32(i32 36, float %5301, float %5302)  ; FMin(a,b)
  %5321 = call float @dx.op.binary.f32(i32 35, float %5320, float %5319)  ; FMax(a,b)
  %5322 = call float @dx.op.binary.f32(i32 35, float %5302, float %5303)  ; FMax(a,b)
  %5323 = call float @dx.op.binary.f32(i32 35, float %5301, float %5322)  ; FMax(a,b)
  store float %5317, float* %5235, align 4, !tbaa !116, !alias.scope !152, !noalias !153
  store float %5321, float* %5236, align 4, !tbaa !116, !alias.scope !150, !noalias !151
  store float %5323, float* %5237, align 4, !tbaa !116, !alias.scope !144, !noalias !147
  %5324 = sub nsw i32 3, %5307
  %5325 = icmp sgt i32 %5324, 2
  br i1 %5325, label %5326, label %5364

; <label>:5326                                    ; preds = %5300
  %5327 = icmp eq i32 %5095, 0
  %5328 = fsub fast float %5145, %5229
  %5329 = select i1 %5327, float %5328, float %5229
  %5330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5331 = extractvalue %dx.types.CBufRet.f32 %5330, 0
  %5332 = extractvalue %dx.types.CBufRet.f32 %5330, 1
  %5333 = extractvalue %dx.types.CBufRet.f32 %5330, 2
  %5334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5335 = extractvalue %dx.types.CBufRet.f32 %5334, 0
  %5336 = extractvalue %dx.types.CBufRet.f32 %5334, 1
  %5337 = extractvalue %dx.types.CBufRet.f32 %5334, 2
  %5338 = extractvalue %dx.types.CBufRet.f32 %5334, 3
  %5339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5340 = extractvalue %dx.types.CBufRet.f32 %5339, 3
  %5341 = call float @dx.op.binary.f32(i32 36, float %5230, float %5340)  ; FMin(a,b)
  %5342 = fmul fast float %5338, %5329
  %5343 = call float @dx.op.unary.f32(i32 7, float %5342)  ; Saturate(value)
  %5344 = fsub fast float %5335, %5331
  %5345 = fsub fast float %5336, %5332
  %5346 = fsub fast float %5337, %5333
  %5347 = fmul fast float %5343, %5344
  %5348 = fmul fast float %5343, %5345
  %5349 = fmul fast float %5343, %5346
  %5350 = fadd fast float %5347, %5331
  %5351 = fadd fast float %5348, %5332
  %5352 = fadd fast float %5349, %5333
  %5353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5354 = extractvalue %dx.types.CBufRet.f32 %5353, 0
  %5355 = extractvalue %dx.types.CBufRet.f32 %5353, 1
  %5356 = fadd fast float %5355, %5354
  %5357 = call float @dx.op.unary.f32(i32 7, float %5356)  ; Saturate(value)
  %5358 = extractvalue %dx.types.CBufRet.f32 %5353, 2
  %5359 = extractvalue %dx.types.CBufRet.f32 %5353, 3
  %5360 = fadd fast float %5359, %5358
  %5361 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  %5362 = fmul fast float %5357, %5341
  %5363 = fmul fast float %5362, %5361
  br label %5446

; <label>:5364                                    ; preds = %5300
  %5365 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %5324
  %5366 = load float, float* %5365, align 4, !tbaa !116, !noalias !118
  %5367 = fcmp fast olt float %5366, %5231
  %5368 = icmp sgt i32 %5307, 0
  %5369 = and i1 %5368, %5367
  br i1 %5369, label %5370, label %5407

; <label>:5370                                    ; preds = %5364
  br label %5371

; <label>:5371                                    ; preds = %5400, %5370
  %5372 = phi float [ %5401, %5400 ], [ %5229, %5370 ]
  %5373 = phi float [ %5402, %5400 ], [ %5230, %5370 ]
  %5374 = phi float [ %5382, %5400 ], [ %5366, %5370 ]
  %5375 = phi i32 [ %5379, %5400 ], [ %5324, %5370 ]
  %5376 = getelementptr inbounds [3 x float], [3 x float]* %82, i32 0, i32 %5375
  %5377 = load float, float* %5376, align 4, !tbaa !116, !noalias !118
  %5378 = icmp slt i32 %5375, 2
  %5379 = add nsw i32 %5375, 1
  %5380 = getelementptr inbounds [3 x float], [3 x float]* %81, i32 0, i32 %5379
  %5381 = load float, float* %5380, align 4, !tbaa !116, !noalias !118
  %5382 = select i1 %5378, float %5381, float %5145
  %5383 = call float @dx.op.binary.f32(i32 36, float %5382, float %5377)  ; FMin(a,b)
  %5384 = call float @dx.op.binary.f32(i32 36, float %5231, float %5383)  ; FMin(a,b)
  %5385 = icmp eq i32 %5095, 0
  %5386 = fadd fast float %5384, %5374
  %5387 = fmul fast float %5386, %5076
  %5388 = fadd fast float %5387, %5089
  br i1 %5385, label %5394, label %5389

; <label>:5389                                    ; preds = %5371
  %5390 = fsub fast float %5384, %5374
  %5391 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5390)  ; FMax(a,b)
  %5392 = fmul fast float %5391, %5388
  %5393 = fadd fast float %5392, %5373
  br label %5400

; <label>:5394                                    ; preds = %5371
  %5395 = fsub fast float %5374, %5384
  %5396 = call float @dx.op.unary.f32(i32 6, float %5395)  ; FAbs(value)
  %5397 = fadd fast float %5396, %5372
  %5398 = fmul fast float %5396, %5388
  %5399 = fsub fast float %5373, %5398
  br label %5400

; <label>:5400                                    ; preds = %5394, %5389
  %5401 = phi float [ %5391, %5389 ], [ %5397, %5394 ]
  %5402 = phi float [ %5393, %5389 ], [ %5399, %5394 ]
  %5403 = fcmp fast olt float %5382, %5231
  %5404 = icmp slt i32 %5379, 3
  %5405 = and i1 %5404, %5403
  br i1 %5405, label %5371, label %5406

; <label>:5406                                    ; preds = %5400
  br label %5407

; <label>:5407                                    ; preds = %5406, %5364
  %5408 = phi float [ %5229, %5364 ], [ %5401, %5406 ]
  %5409 = phi float [ %5230, %5364 ], [ %5402, %5406 ]
  %5410 = fsub fast float %5145, %5408
  %5411 = select i1 %5147, float %5408, float %5410
  %5412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5413 = extractvalue %dx.types.CBufRet.f32 %5412, 0
  %5414 = extractvalue %dx.types.CBufRet.f32 %5412, 1
  %5415 = extractvalue %dx.types.CBufRet.f32 %5412, 2
  %5416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5417 = extractvalue %dx.types.CBufRet.f32 %5416, 0
  %5418 = extractvalue %dx.types.CBufRet.f32 %5416, 1
  %5419 = extractvalue %dx.types.CBufRet.f32 %5416, 2
  %5420 = extractvalue %dx.types.CBufRet.f32 %5416, 3
  %5421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5422 = extractvalue %dx.types.CBufRet.f32 %5421, 3
  %5423 = call float @dx.op.binary.f32(i32 36, float %5409, float %5422)  ; FMin(a,b)
  %5424 = fmul fast float %5420, %5411
  %5425 = call float @dx.op.unary.f32(i32 7, float %5424)  ; Saturate(value)
  %5426 = fsub fast float %5417, %5413
  %5427 = fsub fast float %5418, %5414
  %5428 = fsub fast float %5419, %5415
  %5429 = fmul fast float %5425, %5426
  %5430 = fmul fast float %5425, %5427
  %5431 = fmul fast float %5425, %5428
  %5432 = fadd fast float %5429, %5413
  %5433 = fadd fast float %5430, %5414
  %5434 = fadd fast float %5431, %5415
  %5435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5436 = extractvalue %dx.types.CBufRet.f32 %5435, 0
  %5437 = extractvalue %dx.types.CBufRet.f32 %5435, 1
  %5438 = fadd fast float %5437, %5436
  %5439 = call float @dx.op.unary.f32(i32 7, float %5438)  ; Saturate(value)
  %5440 = extractvalue %dx.types.CBufRet.f32 %5435, 2
  %5441 = extractvalue %dx.types.CBufRet.f32 %5435, 3
  %5442 = fadd fast float %5441, %5440
  %5443 = call float @dx.op.unary.f32(i32 7, float %5442)  ; Saturate(value)
  %5444 = fmul fast float %5439, %5423
  %5445 = fmul fast float %5444, %5443
  br label %5446

; <label>:5446                                    ; preds = %5407, %5326, %5161, %5143, %5141
  %5447 = phi float [ %5170, %5161 ], [ %5329, %5326 ], [ %5411, %5407 ], [ 0.000000e+00, %5141 ], [ 0.000000e+00, %5143 ]
  %5448 = phi float [ %5204, %5161 ], [ %5363, %5326 ], [ %5445, %5407 ], [ 0.000000e+00, %5141 ], [ 0.000000e+00, %5143 ]
  %5449 = phi float [ %5191, %5161 ], [ %5350, %5326 ], [ %5432, %5407 ], [ 0.000000e+00, %5141 ], [ 0.000000e+00, %5143 ]
  %5450 = phi float [ %5192, %5161 ], [ %5351, %5326 ], [ %5433, %5407 ], [ 0.000000e+00, %5141 ], [ 0.000000e+00, %5143 ]
  %5451 = phi float [ %5193, %5161 ], [ %5352, %5326 ], [ %5434, %5407 ], [ 0.000000e+00, %5141 ], [ 0.000000e+00, %5143 ]
  %5452 = fmul fast float %5084, %5448
  %5453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5454 = extractvalue %dx.types.CBufRet.f32 %5453, 2
  %5455 = fsub fast float %5091, %5454
  %5456 = fcmp fast olt float %5452, -2.000000e+01
  %5457 = call float @dx.op.unary.f32(i32 21, float %5452)  ; Exp(value)
  %5458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5459 = extractvalue %dx.types.CBufRet.f32 %5458, 2
  %5460 = extractvalue %dx.types.CBufRet.f32 %5458, 3
  %5461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5462 = extractvalue %dx.types.CBufRet.f32 %5461, 2
  %5463 = fmul fast float %5460, %5455
  %5464 = call float @dx.op.unary.f32(i32 7, float %5463)  ; Saturate(value)
  %5465 = fsub fast float 1.000000e+00, %5464
  %5466 = fmul fast float %5076, 5.000000e-01
  %5467 = fadd fast float %5466, 5.000000e-01
  %5468 = call float @dx.op.unary.f32(i32 7, float %5467)  ; Saturate(value)
  %5469 = fsub fast float 1.000000e+00, %5468
  %5470 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5465)  ; FMax(a,b)
  %5471 = fdiv fast float %5469, %5470
  %5472 = fsub fast float %5455, %5033
  %5473 = call float @dx.op.unary.f32(i32 6, float %5472)  ; FAbs(value)
  %5474 = fmul fast float %5473, %5459
  %5475 = call float @dx.op.unary.f32(i32 7, float %5471)  ; Saturate(value)
  %5476 = fsub fast float 1.000000e+00, %5474
  %5477 = fmul fast float %5476, %5475
  %5478 = fadd fast float %5477, %5474
  %5479 = fmul fast float %5462, %5455
  %5480 = call float @dx.op.unary.f32(i32 7, float %5479)  ; Saturate(value)
  %5481 = fsub fast float 1.000000e+00, %5478
  %5482 = fmul fast float %5481, %5480
  %5483 = fadd fast float %5482, %5478
  %5484 = call float @dx.op.unary.f32(i32 7, float %5483)  ; Saturate(value)
  %5485 = fadd fast float %5457, -1.000000e+00
  %5486 = select i1 %5456, float -1.000000e+00, float %5485
  %5487 = fmul fast float %5484, %5486
  %5488 = fadd fast float %5487, 1.000000e+00
  %5489 = fsub fast float -0.000000e+00, %5487
  %5490 = fmul fast float %5449, %5489
  %5491 = fmul fast float %5450, %5489
  %5492 = fmul fast float %5451, %5489
  br label %5493

; <label>:5493                                    ; preds = %5446, %5042
  %5494 = phi float [ %5447, %5446 ], [ 0.000000e+00, %5042 ]
  %5495 = phi float [ %5488, %5446 ], [ 1.000000e+00, %5042 ]
  %5496 = phi float [ %5490, %5446 ], [ 0.000000e+00, %5042 ]
  %5497 = phi float [ %5491, %5446 ], [ 0.000000e+00, %5042 ]
  %5498 = phi float [ %5492, %5446 ], [ 0.000000e+00, %5042 ]
  %5499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5500 = extractvalue %dx.types.CBufRet.f32 %5499, 1
  %5501 = fsub fast float 1.000000e+00, %5495
  %5502 = fmul fast float %5501, %5077
  %5503 = fmul fast float %5502, %5500
  %5504 = fsub fast float %5077, %5503
  br i1 %5070, label %5505, label %5534, !dx.controlflow.hints !154

; <label>:5505                                    ; preds = %5493
  %5506 = fmul fast float %5078, %5067
  %5507 = fadd fast float %5506, %5068
  %5508 = call float @dx.op.unary.f32(i32 7, float %5507)  ; Saturate(value)
  %5509 = fmul fast float %5049, %5504
  %5510 = fsub fast float -0.000000e+00, %5509
  %5511 = fmul fast float %5050, %5504
  %5512 = fsub fast float -0.000000e+00, %5511
  %5513 = call float @dx.op.unary.f32(i32 21, float %5510)  ; Exp(value)
  %5514 = call float @dx.op.unary.f32(i32 21, float %5512)  ; Exp(value)
  %5515 = call float @dx.op.binary.f32(i32 35, float %5057, float %5513)  ; FMax(a,b)
  %5516 = call float @dx.op.binary.f32(i32 35, float %5057, float %5514)  ; FMax(a,b)
  %5517 = fsub fast float %5516, %5515
  %5518 = fmul fast float %5517, %5508
  %5519 = fadd fast float %5518, %5515
  %5520 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  %5521 = fsub fast float %5054, %5059
  %5522 = fsub fast float %5055, %5060
  %5523 = fsub fast float %5056, %5061
  %5524 = fmul fast float %5508, %5521
  %5525 = fmul fast float %5508, %5522
  %5526 = fmul fast float %5508, %5523
  %5527 = fadd fast float %5524, %5059
  %5528 = fadd fast float %5525, %5060
  %5529 = fadd fast float %5526, %5061
  %5530 = fsub fast float 1.000000e+00, %5520
  %5531 = fmul fast float %5530, %5527
  %5532 = fmul fast float %5530, %5528
  %5533 = fmul fast float %5530, %5529
  br label %5593

; <label>:5534                                    ; preds = %5493
  %5535 = fmul fast float %5504, %5066
  %5536 = call float @dx.op.unary.f32(i32 7, float %5535)  ; Saturate(value)
  %5537 = fsub fast float 2.000000e+00, %5536
  %5538 = fmul fast float %5536, 9.921875e-01
  %5539 = fmul fast float %5538, %5537
  %5540 = fadd fast float %5539, 3.906250e-03
  %5541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %46, float %5540, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5542 = extractvalue %dx.types.ResRet.f32 %5541, 0
  %5543 = fsub fast float %5536, %5542
  %5544 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5543)  ; FMax(a,b)
  %5545 = fmul fast float %5052, %5033
  %5546 = call float @dx.op.unary.f32(i32 6, float %5545)  ; FAbs(value)
  %5547 = fcmp fast ogt float %5546, 0x3EB0C6F7A0000000
  br i1 %5547, label %5548, label %5554, !dx.controlflow.hints !155

; <label>:5548                                    ; preds = %5534
  %5549 = fmul fast float %5545, 0xBFF7154760000000
  %5550 = call float @dx.op.unary.f32(i32 21, float %5549)  ; Exp(value)
  %5551 = fsub fast float 1.000000e+00, %5550
  %5552 = fdiv fast float %5551, %5545
  %5553 = fmul fast float %5552, %5062
  br label %5554

; <label>:5554                                    ; preds = %5548, %5534
  %5555 = phi float [ %5553, %5548 ], [ %5062, %5534 ]
  %5556 = fadd fast float %5555, %5064
  %5557 = fmul fast float %5556, %5544
  %5558 = fmul fast float %5049, %5557
  %5559 = fsub fast float -0.000000e+00, %5558
  %5560 = fmul fast float %5050, %5557
  %5561 = fsub fast float -0.000000e+00, %5560
  %5562 = fmul fast float %5051, %5557
  %5563 = fsub fast float -0.000000e+00, %5562
  %5564 = call float @dx.op.unary.f32(i32 21, float %5559)  ; Exp(value)
  %5565 = call float @dx.op.unary.f32(i32 21, float %5561)  ; Exp(value)
  %5566 = call float @dx.op.unary.f32(i32 21, float %5563)  ; Exp(value)
  %5567 = fmul fast float %5078, %5078
  %5568 = fadd fast float %5567, 1.000000e+00
  %5569 = fmul fast float %5568, 0x3FAE8EC8A0000000
  %5570 = fmul fast float %5569, %5059
  %5571 = fmul fast float %5569, %5060
  %5572 = fmul fast float %5569, %5061
  %5573 = fmul fast float %5078, %5057
  %5574 = fsub fast float 1.000000e+00, %5573
  %5575 = fmul fast float %5057, %5057
  %5576 = fsub fast float 1.000000e+00, %5575
  %5577 = fmul fast float %5576, 0x3FB45F3060000000
  %5578 = fmul fast float %5574, %5574
  %5579 = fdiv fast float 1.000000e+00, %5578
  %5580 = fmul fast float %5577, %5579
  %5581 = fmul fast float %5580, %5054
  %5582 = fmul fast float %5580, %5055
  %5583 = fmul fast float %5580, %5056
  %5584 = fadd fast float %5581, %5570
  %5585 = fadd fast float %5582, %5571
  %5586 = fadd fast float %5583, %5572
  %5587 = fsub fast float 1.000000e+00, %5564
  %5588 = fsub fast float 1.000000e+00, %5565
  %5589 = fsub fast float 1.000000e+00, %5566
  %5590 = fmul fast float %5584, %5587
  %5591 = fmul fast float %5585, %5588
  %5592 = fmul fast float %5586, %5589
  br label %5593

; <label>:5593                                    ; preds = %5554, %5505
  %5594 = phi float [ %5531, %5505 ], [ %5590, %5554 ]
  %5595 = phi float [ %5532, %5505 ], [ %5591, %5554 ]
  %5596 = phi float [ %5533, %5505 ], [ %5592, %5554 ]
  %5597 = phi float [ %5520, %5505 ], [ %5564, %5554 ]
  %5598 = phi float [ %5520, %5505 ], [ %5565, %5554 ]
  %5599 = phi float [ %5520, %5505 ], [ %5566, %5554 ]
  br i1 %5086, label %5600, label %5798, !dx.controlflow.hints !156

; <label>:5600                                    ; preds = %5593
  %5601 = extractvalue %dx.types.CBufRet.f32 %5499, 0
  %5602 = fmul fast float %5601, %5501
  %5603 = fsub fast float %5496, %5594
  %5604 = fsub fast float %5497, %5595
  %5605 = fsub fast float %5498, %5596
  %5606 = fmul fast float %5602, %5603
  %5607 = fmul fast float %5602, %5604
  %5608 = fmul fast float %5602, %5605
  %5609 = fadd fast float %5606, %5594
  %5610 = fadd fast float %5607, %5595
  %5611 = fadd fast float %5608, %5596
  %5612 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5597)  ; FMax(a,b)
  %5613 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5598)  ; FMax(a,b)
  %5614 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5599)  ; FMax(a,b)
  %5615 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5495)  ; FMax(a,b)
  %5616 = call float @dx.op.binary.f32(i32 35, float %5494, float %5504)  ; FMax(a,b)
  %5617 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5616)  ; FMax(a,b)
  %5618 = fdiv fast float %5494, %5617
  %5619 = call float @dx.op.unary.f32(i32 7, float %5618)  ; Saturate(value)
  %5620 = fdiv fast float %5504, %5617
  %5621 = call float @dx.op.unary.f32(i32 7, float %5620)  ; Saturate(value)
  %5622 = fcmp fast une float %5615, 1.000000e+00
  br i1 %5622, label %5623, label %5636, !dx.controlflow.hints !157

; <label>:5623                                    ; preds = %5600
  %5624 = call float @dx.op.unary.f32(i32 23, float %5615)  ; Log(value)
  %5625 = fmul fast float %5624, 0x3FE62E4300000000
  %5626 = fmul fast float %5496, %5625
  %5627 = fsub fast float -0.000000e+00, %5626
  %5628 = fmul fast float %5497, %5625
  %5629 = fsub fast float -0.000000e+00, %5628
  %5630 = fmul fast float %5498, %5625
  %5631 = fsub fast float -0.000000e+00, %5630
  %5632 = fsub fast float 1.000000e+00, %5615
  %5633 = fdiv fast float %5627, %5632
  %5634 = fdiv fast float %5629, %5632
  %5635 = fdiv fast float %5631, %5632
  br label %5636

; <label>:5636                                    ; preds = %5623, %5600
  %5637 = phi float [ %5633, %5623 ], [ %5496, %5600 ]
  %5638 = phi float [ %5634, %5623 ], [ %5497, %5600 ]
  %5639 = phi float [ %5635, %5623 ], [ %5498, %5600 ]
  %5640 = phi float [ %5625, %5623 ], [ 0.000000e+00, %5600 ]
  %5641 = fcmp fast une float %5612, 1.000000e+00
  br i1 %5641, label %5642, label %5649, !dx.controlflow.hints !158

; <label>:5642                                    ; preds = %5636
  %5643 = call float @dx.op.unary.f32(i32 23, float %5612)  ; Log(value)
  %5644 = fmul fast float %5643, 0x3FE62E4300000000
  %5645 = fmul fast float %5609, %5644
  %5646 = fsub fast float -0.000000e+00, %5645
  %5647 = fsub fast float 1.000000e+00, %5612
  %5648 = fdiv fast float %5646, %5647
  br label %5649

; <label>:5649                                    ; preds = %5642, %5636
  %5650 = phi float [ %5648, %5642 ], [ %5609, %5636 ]
  %5651 = phi float [ %5644, %5642 ], [ 0.000000e+00, %5636 ]
  %5652 = fcmp fast une float %5613, 1.000000e+00
  br i1 %5652, label %5653, label %5660, !dx.controlflow.hints !158

; <label>:5653                                    ; preds = %5649
  %5654 = call float @dx.op.unary.f32(i32 23, float %5613)  ; Log(value)
  %5655 = fmul fast float %5654, 0x3FE62E4300000000
  %5656 = fmul fast float %5610, %5655
  %5657 = fsub fast float -0.000000e+00, %5656
  %5658 = fsub fast float 1.000000e+00, %5613
  %5659 = fdiv fast float %5657, %5658
  br label %5660

; <label>:5660                                    ; preds = %5653, %5649
  %5661 = phi float [ %5659, %5653 ], [ %5610, %5649 ]
  %5662 = phi float [ %5655, %5653 ], [ 0.000000e+00, %5649 ]
  %5663 = fcmp fast une float %5614, 1.000000e+00
  br i1 %5663, label %5664, label %5671, !dx.controlflow.hints !158

; <label>:5664                                    ; preds = %5660
  %5665 = call float @dx.op.unary.f32(i32 23, float %5614)  ; Log(value)
  %5666 = fmul fast float %5665, 0x3FE62E4300000000
  %5667 = fmul fast float %5611, %5666
  %5668 = fsub fast float -0.000000e+00, %5667
  %5669 = fsub fast float 1.000000e+00, %5614
  %5670 = fdiv fast float %5668, %5669
  br label %5671

; <label>:5671                                    ; preds = %5664, %5660
  %5672 = phi float [ %5670, %5664 ], [ %5611, %5660 ]
  %5673 = phi float [ %5666, %5664 ], [ 0.000000e+00, %5660 ]
  %5674 = fmul fast float %5637, %5621
  %5675 = fmul fast float %5638, %5621
  %5676 = fmul fast float %5639, %5621
  %5677 = fmul fast float %5640, %5621
  %5678 = fmul fast float %5650, %5619
  %5679 = fmul fast float %5661, %5619
  %5680 = fmul fast float %5672, %5619
  %5681 = fmul fast float %5651, %5619
  %5682 = fmul fast float %5662, %5619
  %5683 = fmul fast float %5673, %5619
  %5684 = fadd fast float %5678, %5674
  %5685 = fadd fast float %5679, %5675
  %5686 = fadd fast float %5680, %5676
  %5687 = fadd fast float %5681, %5677
  %5688 = fadd fast float %5682, %5677
  %5689 = fadd fast float %5683, %5677
  %5690 = fcmp fast une float %5687, 0.000000e+00
  br i1 %5690, label %5691, label %5698, !dx.controlflow.hints !159

; <label>:5691                                    ; preds = %5671
  %5692 = fmul fast float %5687, 0x3FF7154760000000
  %5693 = call float @dx.op.unary.f32(i32 21, float %5692)  ; Exp(value)
  %5694 = fsub fast float 1.000000e+00, %5693
  %5695 = fmul fast float %5684, %5694
  %5696 = fsub fast float -0.000000e+00, %5695
  %5697 = fdiv fast float %5696, %5687
  br label %5698

; <label>:5698                                    ; preds = %5691, %5671
  %5699 = phi float [ %5693, %5691 ], [ 1.000000e+00, %5671 ]
  %5700 = phi float [ %5697, %5691 ], [ %5684, %5671 ]
  %5701 = fcmp fast une float %5688, 0.000000e+00
  br i1 %5701, label %5702, label %5709, !dx.controlflow.hints !159

; <label>:5702                                    ; preds = %5698
  %5703 = fmul fast float %5688, 0x3FF7154760000000
  %5704 = call float @dx.op.unary.f32(i32 21, float %5703)  ; Exp(value)
  %5705 = fsub fast float 1.000000e+00, %5704
  %5706 = fmul fast float %5685, %5705
  %5707 = fsub fast float -0.000000e+00, %5706
  %5708 = fdiv fast float %5707, %5688
  br label %5709

; <label>:5709                                    ; preds = %5702, %5698
  %5710 = phi float [ %5704, %5702 ], [ 1.000000e+00, %5698 ]
  %5711 = phi float [ %5708, %5702 ], [ %5685, %5698 ]
  %5712 = fcmp fast une float %5689, 0.000000e+00
  br i1 %5712, label %5713, label %5720, !dx.controlflow.hints !159

; <label>:5713                                    ; preds = %5709
  %5714 = fmul fast float %5689, 0x3FF7154760000000
  %5715 = call float @dx.op.unary.f32(i32 21, float %5714)  ; Exp(value)
  %5716 = fsub fast float 1.000000e+00, %5715
  %5717 = fmul fast float %5686, %5716
  %5718 = fsub fast float -0.000000e+00, %5717
  %5719 = fdiv fast float %5718, %5689
  br label %5720

; <label>:5720                                    ; preds = %5713, %5709
  %5721 = phi float [ %5715, %5713 ], [ 1.000000e+00, %5709 ]
  %5722 = phi float [ %5719, %5713 ], [ %5686, %5709 ]
  %5723 = fcmp fast ogt float %5619, %5621
  br i1 %5723, label %5724, label %5744

; <label>:5724                                    ; preds = %5720
  %5725 = fsub fast float 1.000000e+00, %5621
  %5726 = fmul fast float %5637, %5725
  %5727 = fmul fast float %5638, %5725
  %5728 = fmul fast float %5639, %5725
  %5729 = fmul fast float %5640, %5725
  %5730 = fcmp fast une float %5729, 0.000000e+00
  br i1 %5730, label %5731, label %5782, !dx.controlflow.hints !160

; <label>:5731                                    ; preds = %5724
  %5732 = fmul fast float %5729, 0x3FF7154760000000
  %5733 = call float @dx.op.unary.f32(i32 21, float %5732)  ; Exp(value)
  %5734 = fsub fast float 1.000000e+00, %5733
  %5735 = fmul fast float %5726, %5734
  %5736 = fsub fast float -0.000000e+00, %5735
  %5737 = fmul fast float %5727, %5734
  %5738 = fsub fast float -0.000000e+00, %5737
  %5739 = fmul fast float %5728, %5734
  %5740 = fsub fast float -0.000000e+00, %5739
  %5741 = fdiv fast float %5736, %5729
  %5742 = fdiv fast float %5738, %5729
  %5743 = fdiv fast float %5740, %5729
  br label %5782

; <label>:5744                                    ; preds = %5720
  %5745 = fsub fast float 1.000000e+00, %5619
  %5746 = fmul fast float %5650, %5745
  %5747 = fmul fast float %5661, %5745
  %5748 = fmul fast float %5672, %5745
  %5749 = fmul fast float %5651, %5745
  %5750 = fmul fast float %5662, %5745
  %5751 = fmul fast float %5673, %5745
  %5752 = fcmp fast une float %5749, 0.000000e+00
  br i1 %5752, label %5753, label %5760, !dx.controlflow.hints !159

; <label>:5753                                    ; preds = %5744
  %5754 = fmul fast float %5749, 0x3FF7154760000000
  %5755 = call float @dx.op.unary.f32(i32 21, float %5754)  ; Exp(value)
  %5756 = fsub fast float 1.000000e+00, %5755
  %5757 = fmul fast float %5746, %5756
  %5758 = fsub fast float -0.000000e+00, %5757
  %5759 = fdiv fast float %5758, %5749
  br label %5760

; <label>:5760                                    ; preds = %5753, %5744
  %5761 = phi float [ %5759, %5753 ], [ %5746, %5744 ]
  %5762 = phi float [ %5755, %5753 ], [ 1.000000e+00, %5744 ]
  %5763 = fcmp fast une float %5750, 0.000000e+00
  br i1 %5763, label %5764, label %5771, !dx.controlflow.hints !159

; <label>:5764                                    ; preds = %5760
  %5765 = fmul fast float %5750, 0x3FF7154760000000
  %5766 = call float @dx.op.unary.f32(i32 21, float %5765)  ; Exp(value)
  %5767 = fsub fast float 1.000000e+00, %5766
  %5768 = fmul fast float %5747, %5767
  %5769 = fsub fast float -0.000000e+00, %5768
  %5770 = fdiv fast float %5769, %5750
  br label %5771

; <label>:5771                                    ; preds = %5764, %5760
  %5772 = phi float [ %5770, %5764 ], [ %5747, %5760 ]
  %5773 = phi float [ %5766, %5764 ], [ 1.000000e+00, %5760 ]
  %5774 = fcmp fast une float %5751, 0.000000e+00
  br i1 %5774, label %5775, label %5782, !dx.controlflow.hints !159

; <label>:5775                                    ; preds = %5771
  %5776 = fmul fast float %5751, 0x3FF7154760000000
  %5777 = call float @dx.op.unary.f32(i32 21, float %5776)  ; Exp(value)
  %5778 = fsub fast float 1.000000e+00, %5777
  %5779 = fmul fast float %5748, %5778
  %5780 = fsub fast float -0.000000e+00, %5779
  %5781 = fdiv fast float %5780, %5751
  br label %5782

; <label>:5782                                    ; preds = %5775, %5771, %5731, %5724
  %5783 = phi float [ %5781, %5775 ], [ %5743, %5731 ], [ %5728, %5724 ], [ %5748, %5771 ]
  %5784 = phi float [ %5772, %5775 ], [ %5742, %5731 ], [ %5727, %5724 ], [ %5772, %5771 ]
  %5785 = phi float [ %5761, %5775 ], [ %5741, %5731 ], [ %5726, %5724 ], [ %5761, %5771 ]
  %5786 = phi float [ %5777, %5775 ], [ %5733, %5731 ], [ 1.000000e+00, %5724 ], [ 1.000000e+00, %5771 ]
  %5787 = phi float [ %5773, %5775 ], [ %5733, %5731 ], [ 1.000000e+00, %5724 ], [ %5773, %5771 ]
  %5788 = phi float [ %5762, %5775 ], [ %5733, %5731 ], [ 1.000000e+00, %5724 ], [ %5762, %5771 ]
  %5789 = fmul fast float %5788, %5700
  %5790 = fmul fast float %5787, %5711
  %5791 = fmul fast float %5786, %5722
  %5792 = fadd fast float %5789, %5785
  %5793 = fadd fast float %5790, %5784
  %5794 = fadd fast float %5791, %5783
  %5795 = fmul fast float %5788, %5699
  %5796 = fmul fast float %5787, %5710
  %5797 = fmul fast float %5786, %5721
  br label %5798

; <label>:5798                                    ; preds = %5782, %5593
  %5799 = phi float [ %5797, %5782 ], [ %5599, %5593 ]
  %5800 = phi float [ %5796, %5782 ], [ %5598, %5593 ]
  %5801 = phi float [ %5795, %5782 ], [ %5597, %5593 ]
  %5802 = phi float [ %5794, %5782 ], [ %5596, %5593 ]
  %5803 = phi float [ %5793, %5782 ], [ %5595, %5593 ]
  %5804 = phi float [ %5792, %5782 ], [ %5594, %5593 ]
  %5805 = fmul fast float %5801, %5041
  %5806 = call float @dx.op.dot3.f32(i32 55, float %5801, float %5800, float %5799, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5807 = call float @dx.op.dot3.f32(i32 55, float %5804, float %5803, float %5802, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5808 = select i1 %197, float %5806, float %5801
  %5809 = select i1 %197, float %5806, float %5800
  %5810 = select i1 %197, float 1.000000e+00, float %5799
  %5811 = select i1 %197, float %5807, float %5804
  %5812 = select i1 %197, float 0.000000e+00, float %5803
  %5813 = select i1 %197, float 0.000000e+00, float %5802
  %5814 = fmul fast float %5808, %5035
  %5815 = fmul fast float %5809, %5036
  %5816 = fmul fast float %5810, %5037
  %5817 = fadd fast float %5814, %5811
  %5818 = fadd fast float %5815, %5812
  %5819 = fadd fast float %5813, %5816
  %5820 = fmul fast float %5808, %5038
  %5821 = fmul fast float %5809, %5039
  %5822 = fmul fast float %5810, %5040
  %5823 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.i32 %5823, 0
  %5825 = icmp eq i32 %5824, 0
  br i1 %5825, label %6183, label %5826, !dx.controlflow.hints !161

; <label>:5826                                    ; preds = %5798
  %5827 = fmul fast float %2687, %87
  %5828 = fmul fast float %2688, %88
  %5829 = fmul fast float %5827, 2.000000e+00
  %5830 = fmul fast float %5828, 2.000000e+00
  %5831 = fsub fast float 1.000000e+00, %5829
  %5832 = fsub fast float 1.000000e+00, %5830
  %5833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5834 = extractvalue %dx.types.CBufRet.f32 %5833, 0
  %5835 = extractvalue %dx.types.CBufRet.f32 %5833, 1
  %5836 = extractvalue %dx.types.CBufRet.f32 %5833, 2
  %5837 = fmul fast float %5831, %5834
  %5838 = fmul fast float %5831, %5835
  %5839 = fmul fast float %5831, %5836
  %5840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5841 = extractvalue %dx.types.CBufRet.f32 %5840, 0
  %5842 = extractvalue %dx.types.CBufRet.f32 %5840, 1
  %5843 = extractvalue %dx.types.CBufRet.f32 %5840, 2
  %5844 = fmul fast float %5832, %5841
  %5845 = fmul fast float %5832, %5842
  %5846 = fmul fast float %5832, %5843
  %5847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.f32 %5847, 0
  %5849 = extractvalue %dx.types.CBufRet.f32 %5847, 1
  %5850 = extractvalue %dx.types.CBufRet.f32 %5847, 2
  %5851 = fadd fast float %5844, %5848
  %5852 = fadd fast float %5851, %5837
  %5853 = fadd fast float %5845, %5849
  %5854 = fadd fast float %5853, %5838
  %5855 = fadd fast float %5846, %5850
  %5856 = fadd fast float %5855, %5839
  %5857 = fmul fast float %5852, %5034
  %5858 = fmul fast float %5854, %5034
  %5859 = fmul fast float %5856, %5034
  %5860 = fmul fast float %5857, %5857
  %5861 = fmul fast float %5858, %5858
  %5862 = fadd fast float %5860, %5861
  %5863 = fmul fast float %5859, %5859
  %5864 = fadd fast float %5862, %5863
  %5865 = call float @dx.op.unary.f32(i32 24, float %5864)  ; Sqrt(value)
  %5866 = extractvalue %dx.types.CBufRet.f32 %4769, 0
  %5867 = fsub fast float %5865, %5866
  %5868 = extractvalue %dx.types.CBufRet.f32 %4769, 2
  %5869 = fmul fast float %5867, %5868
  %5870 = call float @dx.op.unary.f32(i32 7, float %5869)  ; Saturate(value)
  %5871 = fadd fast float %5870, -5.000000e-01
  %5872 = fmul fast float %5871, 2.000000e+00
  %5873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %5874 = extractvalue %dx.types.CBufRet.f32 %5873, 2
  %5875 = call float @dx.op.binary.f32(i32 36, float %5874, float %5872)  ; FMin(a,b)
  %5876 = fsub fast float -0.000000e+00, %5874
  %5877 = fcmp fast ogt float %5875, %5876
  br i1 %5877, label %5878, label %6183, !dx.controlflow.hints !162

; <label>:5878                                    ; preds = %5826
  %5879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %5880 = extractvalue %dx.types.CBufRet.f32 %5879, 3
  %5881 = fcmp fast ogt float %5880, 0.000000e+00
  br i1 %5881, label %5882, label %5955, !dx.controlflow.hints !163

; <label>:5882                                    ; preds = %5878
  %5883 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
  %5884 = extractvalue %dx.types.Dimensions %5883, 0
  %5885 = sitofp i32 %5884 to float
  %5886 = extractvalue %dx.types.Dimensions %5883, 1
  %5887 = sitofp i32 %5886 to float
  %5888 = fmul fast float %5827, %5885
  %5889 = fmul fast float %5828, %5887
  %5890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5891 = extractvalue %dx.types.CBufRet.f32 %5890, 1
  %5892 = fsub fast float -0.000000e+00, %5891
  %5893 = fptoui float %5892 to i32
  %5894 = fptoui float %5888 to i32
  %5895 = fptoui float %5889 to i32
  %5896 = and i32 %5893, 31
  %5897 = lshr i32 %5894, %5896
  %5898 = lshr i32 %5895, %5896
  %5899 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 %5893, i32 %5897, i32 %5898, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5900 = extractvalue %dx.types.ResRet.f32 %5899, 0
  %5901 = fcmp fast olt float %5900, -1.000000e+00
  %5902 = fcmp fast ogt float %5900, -1.000000e+00
  %5903 = select i1 %5902, float %2695, float 1.000000e+00
  %5904 = fadd fast float %5900, 1.000000e+00
  %5905 = fmul fast float %5903, %5904
  %5906 = call float @dx.op.unary.f32(i32 6, float %5905)  ; FAbs(value)
  %5907 = extractvalue %dx.types.CBufRet.f32 %2694, 3
  %5908 = fcmp fast oge float %5906, %5907
  %5909 = select i1 %5908, float 0x4197782600000000, float %5906
  %5910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %5911 = extractvalue %dx.types.CBufRet.f32 %5910, 0
  %5912 = extractvalue %dx.types.CBufRet.f32 %5910, 1
  %5913 = extractvalue %dx.types.CBufRet.f32 %5910, 2
  %5914 = select i1 %5901, float %5911, float %5834
  %5915 = select i1 %5901, float %5912, float %5835
  %5916 = select i1 %5901, float %5913, float %5836
  %5917 = fmul fast float %5914, %5831
  %5918 = fmul fast float %5915, %5831
  %5919 = fmul fast float %5916, %5831
  %5920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %5921 = extractvalue %dx.types.CBufRet.f32 %5920, 0
  %5922 = extractvalue %dx.types.CBufRet.f32 %5920, 1
  %5923 = extractvalue %dx.types.CBufRet.f32 %5920, 2
  %5924 = select i1 %5901, float %5921, float %5841
  %5925 = select i1 %5901, float %5922, float %5842
  %5926 = select i1 %5901, float %5923, float %5843
  %5927 = fmul fast float %5924, %5832
  %5928 = fmul fast float %5925, %5832
  %5929 = fmul fast float %5926, %5832
  %5930 = fadd fast float %5927, %5917
  %5931 = fadd fast float %5928, %5918
  %5932 = fadd fast float %5929, %5919
  %5933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %5934 = extractvalue %dx.types.CBufRet.f32 %5933, 0
  %5935 = extractvalue %dx.types.CBufRet.f32 %5933, 1
  %5936 = extractvalue %dx.types.CBufRet.f32 %5933, 2
  %5937 = select i1 %5901, float %5934, float %5848
  %5938 = select i1 %5901, float %5935, float %5849
  %5939 = select i1 %5901, float %5936, float %5850
  %5940 = fadd fast float %5930, %5937
  %5941 = fadd fast float %5931, %5938
  %5942 = fadd fast float %5932, %5939
  %5943 = fmul fast float %5940, %5909
  %5944 = fmul fast float %5941, %5909
  %5945 = fmul fast float %5942, %5909
  %5946 = fmul fast float %5943, %5943
  %5947 = fmul fast float %5944, %5944
  %5948 = fadd fast float %5946, %5947
  %5949 = fmul fast float %5945, %5945
  %5950 = fadd fast float %5948, %5949
  %5951 = call float @dx.op.unary.f32(i32 24, float %5950)  ; Sqrt(value)
  %5952 = fsub fast float %5951, %5866
  %5953 = fmul fast float %5952, %5868
  %5954 = call float @dx.op.unary.f32(i32 7, float %5953)  ; Saturate(value)
  br label %5955

; <label>:5955                                    ; preds = %5882, %5878
  %5956 = phi float [ %5954, %5882 ], [ 1.000000e+00, %5878 ]
  %5957 = fmul fast float %5875, 5.000000e-01
  %5958 = fadd fast float %5957, 5.000000e-01
  %5959 = call float @dx.op.unary.f32(i32 22, float %5958)  ; Frc(value)
  %5960 = call float @dx.op.unary.f32(i32 27, float %5959)  ; Round_ni(value)
  %5961 = call float @dx.op.unary.f32(i32 22, float %5959)  ; Frc(value)
  %5962 = fmul fast float %5961, 2.000000e+00
  %5963 = fadd fast float %5962, -1.000000e+00
  %5964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %46, float %5827, float %5828, float %5960, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5965 = extractvalue %dx.types.ResRet.f32 %5964, 0
  %5966 = extractvalue %dx.types.ResRet.f32 %5964, 1
  %5967 = extractvalue %dx.types.ResRet.f32 %5964, 2
  %5968 = extractvalue %dx.types.ResRet.f32 %5964, 3
  %5969 = fadd fast float %5965, -5.000000e-01
  %5970 = fadd fast float %5967, -5.000000e-01
  %5971 = fmul fast float %5969, 0xBFD5555560000000
  %5972 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5970, float %5971)  ; FMad(a,b,c)
  %5973 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5966, float 0.000000e+00)  ; FMad(a,b,c)
  %5974 = fadd fast float %5973, %5968
  %5975 = fmul fast float %5969, -7.500000e-01
  %5976 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5970, float %5975)  ; FMad(a,b,c)
  %5977 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5966, float 0.000000e+00)  ; FMad(a,b,c)
  %5978 = fadd fast float %5977, %5968
  %5979 = call float @dx.op.binary.f32(i32 35, float %5972, float -1.000000e+00)  ; FMax(a,b)
  %5980 = call float @dx.op.binary.f32(i32 35, float %5974, float -1.000000e+00)  ; FMax(a,b)
  %5981 = call float @dx.op.binary.f32(i32 35, float %5976, float -1.000000e+00)  ; FMax(a,b)
  %5982 = call float @dx.op.binary.f32(i32 35, float %5978, float -1.000000e+00)  ; FMax(a,b)
  %5983 = call float @dx.op.binary.f32(i32 36, float %5979, float 1.000000e+00)  ; FMin(a,b)
  %5984 = call float @dx.op.binary.f32(i32 36, float %5980, float 1.000000e+00)  ; FMin(a,b)
  %5985 = call float @dx.op.binary.f32(i32 36, float %5981, float 1.000000e+00)  ; FMin(a,b)
  %5986 = call float @dx.op.binary.f32(i32 36, float %5982, float 1.000000e+00)  ; FMin(a,b)
  %5987 = fcmp fast olt float %5983, 0x3FEFFF8020000000
  br i1 %5987, label %5988, label %6103, !dx.controlflow.hints !164

; <label>:5988                                    ; preds = %5955
  %5989 = extractvalue %dx.types.CBufRet.f32 %5873, 3
  %5990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %5991 = extractvalue %dx.types.CBufRet.f32 %5990, 0
  %5992 = extractvalue %dx.types.CBufRet.f32 %5990, 1
  %5993 = extractvalue %dx.types.CBufRet.f32 %5990, 2
  %5994 = extractvalue %dx.types.CBufRet.f32 %5990, 3
  %5995 = fsub fast float %5991, %5983
  %5996 = fsub fast float %5992, %5984
  %5997 = fsub fast float %5993, %5985
  %5998 = fsub fast float %5994, %5986
  %5999 = fmul fast float %5995, %5989
  %6000 = fmul fast float %5996, %5989
  %6001 = fmul fast float %5997, %5989
  %6002 = fmul fast float %5998, %5989
  %6003 = fadd fast float %5999, %5983
  %6004 = fadd fast float %6000, %5984
  %6005 = fsub fast float -0.000000e+00, %6004
  %6006 = fadd fast float %6001, %5985
  %6007 = fadd fast float %6002, %5986
  %6008 = fmul fast float %6003, %6003
  %6009 = fsub fast float %6004, %6008
  %6010 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6009)  ; FMax(a,b)
  %6011 = fdiv fast float 1.000000e+00, %6010
  %6012 = fmul fast float %6004, %6003
  %6013 = fsub fast float %6006, %6012
  %6014 = fsub fast float %5963, %6003
  %6015 = fmul fast float %5963, %5963
  %6016 = fsub fast float %6015, %6004
  %6017 = fmul fast float %6014, %6011
  %6018 = fmul fast float %6017, %6013
  %6019 = fsub fast float %6016, %6018
  %6020 = fmul fast float %6004, %6004
  %6021 = fsub fast float %6007, %6020
  %6022 = fmul fast float %6013, %6013
  %6023 = fmul fast float %6022, %6011
  %6024 = fsub fast float %6021, %6023
  %6025 = fdiv fast float %6019, %6024
  %6026 = fmul fast float %6013, %6025
  %6027 = fsub fast float %6014, %6026
  %6028 = fmul fast float %6027, %6011
  %6029 = fmul fast float %6028, %6003
  %6030 = fsub fast float 1.000000e+00, %6029
  %6031 = fmul fast float %6004, %6025
  %6032 = fsub fast float %6030, %6031
  %6033 = fmul fast float %6028, %6028
  %6034 = fmul fast float %6025, 4.000000e+00
  %6035 = fmul fast float %6034, %6032
  %6036 = fsub fast float %6033, %6035
  %6037 = call float @dx.op.unary.f32(i32 24, float %6036)  ; Sqrt(value)
  %6038 = fcmp fast oge float %6028, 0.000000e+00
  %6039 = fsub fast float -0.000000e+00, %6037
  %6040 = select i1 %6038, float %6039, float %6037
  %6041 = fsub fast float %6040, %6028
  %6042 = fdiv fast float %6041, %6025
  %6043 = fdiv fast float %6032, %6041
  %6044 = fmul fast float %6042, 5.000000e-01
  %6045 = fmul fast float %6043, 2.000000e+00
  %6046 = select i1 %6038, float %6044, float %6045
  %6047 = select i1 %6038, float %6045, float %6044
  %6048 = call float @dx.op.binary.f32(i32 35, float %6046, float %6047)  ; FMax(a,b)
  %6049 = call float @dx.op.binary.f32(i32 36, float %6046, float %6047)  ; FMin(a,b)
  %6050 = fcmp fast ogt float %5963, %6049
  br i1 %6050, label %6051, label %6061

; <label>:6051                                    ; preds = %5988
  %6052 = fsub fast float %5963, %6049
  %6053 = fsub fast float %6048, %6049
  %6054 = fmul fast float %6052, %6053
  %6055 = fmul fast float %6048, %5963
  %6056 = fadd fast float %6048, %5963
  %6057 = fmul fast float %6056, %6003
  %6058 = fadd fast float %6055, %6004
  %6059 = fsub fast float %6058, %6057
  %6060 = fdiv fast float %6059, %6054
  br label %6061

; <label>:6061                                    ; preds = %6051, %5988
  %6062 = phi float [ %6060, %6051 ], [ 0.000000e+00, %5988 ]
  %6063 = fcmp fast ogt float %5963, %6048
  %6064 = fsub fast float %5963, %6048
  br i1 %6063, label %6065, label %6075

; <label>:6065                                    ; preds = %6061
  %6066 = fsub fast float %6048, %6049
  %6067 = fmul fast float %6066, %6064
  %6068 = fmul fast float %6049, %5963
  %6069 = fadd fast float %6049, %5963
  %6070 = fmul fast float %6069, %6003
  %6071 = fsub fast float %6005, %6068
  %6072 = fadd fast float %6071, %6070
  %6073 = fdiv fast float %6072, %6067
  %6074 = fadd fast float %6073, %6062
  br label %6075

; <label>:6075                                    ; preds = %6065, %6061
  %6076 = phi float [ %6074, %6065 ], [ %6062, %6061 ]
  %6077 = fsub fast float %5963, %6049
  %6078 = fmul fast float %6077, %6064
  %6079 = fmul fast float %6049, %6048
  %6080 = fadd fast float %6049, %6048
  %6081 = fmul fast float %6080, %6003
  %6082 = fadd fast float %6079, %6004
  %6083 = fsub fast float %6082, %6081
  %6084 = fdiv fast float %6083, %6078
  %6085 = call float @dx.op.unary.f32(i32 7, float %6076)  ; Saturate(value)
  %6086 = fcmp fast oeq float %4770, 0.000000e+00
  %6087 = extractvalue %dx.types.CBufRet.f32 %5873, 0
  %6088 = fcmp fast oeq float %6087, 0.000000e+00
  %6089 = or i1 %6086, %6088
  %6090 = fmul fast float %6087, 2.000000e+00
  %6091 = fadd fast float %5874, %5875
  %6092 = fdiv fast float %6091, %6090
  %6093 = call float @dx.op.unary.f32(i32 7, float %6092)  ; Saturate(value)
  %6094 = fmul fast float %6093, 2.000000e+00
  %6095 = fsub fast float 3.000000e+00, %6094
  %6096 = fmul fast float %6093, %6093
  %6097 = fmul fast float %6096, %6095
  %6098 = select i1 %6089, float 1.000000e+00, float %6097
  %6099 = fmul fast float %6084, %4770
  %6100 = fadd fast float %6085, %6099
  %6101 = call float @dx.op.unary.f32(i32 7, float %6100)  ; Saturate(value)
  %6102 = fmul fast float %6098, %6101
  br label %6103

; <label>:6103                                    ; preds = %6075, %5955
  %6104 = phi float [ %6102, %6075 ], [ 0.000000e+00, %5955 ]
  %6105 = fsub fast float 1.000000e+00, %6104
  %6106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %46, float %5827, float %5828, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6107 = extractvalue %dx.types.ResRet.f32 %6106, 0
  %6108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6109 = extractvalue %dx.types.CBufRet.i32 %6108, 2
  %6110 = icmp eq i32 %6109, 0
  br i1 %6110, label %6116, label %6111

; <label>:6111                                    ; preds = %6103
  %6112 = call float @dx.op.unary.f32(i32 7, float %6104)  ; Saturate(value)
  %6113 = fadd fast float %6107, -1.000000e+00
  %6114 = fmul fast float %6112, %6113
  %6115 = fadd fast float %6114, 1.000000e+00
  br label %6116

; <label>:6116                                    ; preds = %6111, %6103
  %6117 = phi float [ %6115, %6111 ], [ %6105, %6103 ]
  br i1 %5881, label %6118, label %6136

; <label>:6118                                    ; preds = %6116
  %6119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6120 = extractvalue %dx.types.CBufRet.f32 %6119, 1
  %6121 = fsub fast float %5956, %6120
  %6122 = call float @dx.op.unary.f32(i32 7, float %6121)  ; Saturate(value)
  %6123 = fsub fast float %5956, %5880
  %6124 = call float @dx.op.unary.f32(i32 7, float %6123)  ; Saturate(value)
  %6125 = fsub fast float %6122, %6124
  %6126 = fsub fast float %5958, %6124
  %6127 = fdiv fast float %6126, %6125
  %6128 = call float @dx.op.unary.f32(i32 7, float %6127)  ; Saturate(value)
  %6129 = fmul fast float %6128, 2.000000e+00
  %6130 = fsub fast float 3.000000e+00, %6129
  %6131 = fsub fast float %6107, %6117
  %6132 = fmul fast float %6128, %6128
  %6133 = fmul fast float %6132, %6131
  %6134 = fmul fast float %6133, %6130
  %6135 = fadd fast float %6134, %6117
  br label %6136

; <label>:6136                                    ; preds = %6118, %6116
  %6137 = phi float [ %6135, %6118 ], [ %6117, %6116 ]
  %6138 = call float @dx.op.binary.f32(i32 35, float %6107, float %6137)  ; FMax(a,b)
  %6139 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6140 = extractvalue %dx.types.CBufRet.i32 %6139, 2
  %6141 = and i32 %6140, 1
  %6142 = icmp eq i32 %6141, 0
  %6143 = fcmp fast une float %6138, 1.000000e+00
  %6144 = and i1 %6143, %6142
  br i1 %6144, label %6145, label %6162

; <label>:6145                                    ; preds = %6136
  %6146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %46, float %5827, float %5828, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6147 = extractvalue %dx.types.ResRet.f32 %6146, 0
  %6148 = extractvalue %dx.types.ResRet.f32 %6146, 1
  %6149 = extractvalue %dx.types.ResRet.f32 %6146, 2
  %6150 = fmul fast float %2742, %6147
  %6151 = fmul fast float %2742, %6148
  %6152 = fmul fast float %2742, %6149
  %6153 = fcmp fast ogt float %6107, 0x3FEFFF2E40000000
  %6154 = fsub fast float 1.000000e+00, %6138
  %6155 = fsub fast float 1.000000e+00, %6107
  %6156 = fdiv fast float %6154, %6155
  %6157 = call float @dx.op.unary.f32(i32 7, float %6156)  ; Saturate(value)
  %6158 = select i1 %6153, float 0.000000e+00, float %6157
  %6159 = fmul fast float %6150, %6158
  %6160 = fmul fast float %6151, %6158
  %6161 = fmul fast float %6152, %6158
  br label %6162

; <label>:6162                                    ; preds = %6145, %6136
  %6163 = phi float [ 0.000000e+00, %6136 ], [ %6159, %6145 ]
  %6164 = phi float [ 0.000000e+00, %6136 ], [ %6160, %6145 ]
  %6165 = phi float [ 0.000000e+00, %6136 ], [ %6161, %6145 ]
  %6166 = fmul fast float %6138, %5805
  %6167 = call float @dx.op.dot3.f32(i32 55, float %6138, float %6138, float %6138, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6168 = call float @dx.op.dot3.f32(i32 55, float %6163, float %6164, float %6165, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6169 = select i1 %197, float %6167, float %6138
  %6170 = select i1 %197, float 1.000000e+00, float %6138
  %6171 = select i1 %197, float %6168, float %6163
  %6172 = select i1 %197, float 0.000000e+00, float %6164
  %6173 = select i1 %197, float 0.000000e+00, float %6165
  %6174 = fmul fast float %6169, %5817
  %6175 = fmul fast float %6169, %5818
  %6176 = fmul fast float %6170, %5819
  %6177 = fadd fast float %6174, %6171
  %6178 = fadd fast float %6175, %6172
  %6179 = fadd fast float %6173, %6176
  %6180 = fmul fast float %6169, %5820
  %6181 = fmul fast float %6169, %5821
  %6182 = fmul fast float %6170, %5822
  br label %6183

; <label>:6183                                    ; preds = %6162, %5826, %5798, %5030
  %6184 = phi float [ %5035, %5030 ], [ %5817, %5798 ], [ %6177, %6162 ], [ %5817, %5826 ]
  %6185 = phi float [ %5036, %5030 ], [ %5818, %5798 ], [ %6178, %6162 ], [ %5818, %5826 ]
  %6186 = phi float [ %5037, %5030 ], [ %5819, %5798 ], [ %6179, %6162 ], [ %5819, %5826 ]
  %6187 = phi float [ %5038, %5030 ], [ %5820, %5798 ], [ %6180, %6162 ], [ %5820, %5826 ]
  %6188 = phi float [ %5039, %5030 ], [ %5821, %5798 ], [ %6181, %6162 ], [ %5821, %5826 ]
  %6189 = phi float [ %5040, %5030 ], [ %5822, %5798 ], [ %6182, %6162 ], [ %5822, %5826 ]
  %6190 = phi float [ %5041, %5030 ], [ %5805, %5798 ], [ %6166, %6162 ], [ %5805, %5826 ]
  %6191 = fmul fast float %2687, %87
  %6192 = fmul fast float %2688, %88
  %6193 = call float @dx.op.unary.f32(i32 7, float %6191)  ; Saturate(value)
  %6194 = call float @dx.op.unary.f32(i32 7, float %6192)  ; Saturate(value)
  %6195 = select i1 %4780, i32 2, i32 0
  %6196 = or i32 %6195, 1
  %6197 = uitofp i32 %6196 to float
  %6198 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %46, float %6193, float %6194, float %6197, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6199 = extractvalue %dx.types.ResRet.f32 %6198, 0
  %6200 = extractvalue %dx.types.ResRet.f32 %6198, 1
  %6201 = extractvalue %dx.types.ResRet.f32 %6198, 2
  %6202 = extractvalue %dx.types.ResRet.f32 %6198, 3
  %6203 = add nuw nsw i32 %6195, 2
  %6204 = uitofp i32 %6203 to float
  %6205 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %46, float %6193, float %6194, float %6204, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6206 = extractvalue %dx.types.ResRet.f32 %6205, 0
  %6207 = extractvalue %dx.types.ResRet.f32 %6205, 1
  %6208 = extractvalue %dx.types.ResRet.f32 %6205, 2
  %6209 = extractvalue %dx.types.ResRet.f32 %6205, 3
  %6210 = call float @dx.op.binary.f32(i32 35, float %6200, float %6201)  ; FMax(a,b)
  %6211 = call float @dx.op.binary.f32(i32 35, float %6199, float %6210)  ; FMax(a,b)
  %6212 = call float @dx.op.binary.f32(i32 35, float %6211, float %6202)  ; FMax(a,b)
  %6213 = call float @dx.op.binary.f32(i32 36, float %6207, float %6208)  ; FMin(a,b)
  %6214 = call float @dx.op.binary.f32(i32 36, float %6206, float %6213)  ; FMin(a,b)
  %6215 = call float @dx.op.binary.f32(i32 36, float %6214, float %6209)  ; FMin(a,b)
  %6216 = fmul fast float %6212, 2.550000e+02
  %6217 = fadd fast float %6216, 0x3F70101020000000
  %6218 = fptoui float %6217 to i32
  %6219 = fmul fast float %6215, 2.550000e+02
  %6220 = fadd fast float %6219, 0x3F70101020000000
  %6221 = fptoui float %6220 to i32
  %6222 = icmp ult i32 %6218, %6221
  br i1 %6222, label %6223, label %6390

; <label>:6223                                    ; preds = %6183
  %6224 = fcmp fast ogt float %77, 9.843750e-01
  %6225 = fadd fast float %5034, -4.000000e+00
  %6226 = select i1 %6224, float -4.000000e+00, float %6225
  %6227 = call float @dx.op.binary.f32(i32 35, float %6226, float 0.000000e+00)  ; FMax(a,b)
  %6228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6229 = extractvalue %dx.types.CBufRet.f32 %6228, 0
  %6230 = fadd fast float %6229, %6227
  %6231 = extractvalue %dx.types.CBufRet.f32 %6228, 2
  %6232 = fmul fast float %6230, %6231
  %6233 = call float @dx.op.unary.f32(i32 23, float %6232)  ; Log(value)
  %6234 = extractvalue %dx.types.CBufRet.f32 %6228, 3
  %6235 = fmul fast float %6234, %6233
  %6236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6236, 2
  %6238 = fmul fast float %6235, %6237
  %6239 = call float @dx.op.unary.f32(i32 7, float %6238)  ; Saturate(value)
  %6240 = uitofp i32 %6218 to float
  %6241 = uitofp i32 %6221 to float
  %6242 = fadd fast float %6240, 5.000000e-01
  %6243 = fadd fast float %6241, 5.000000e-01
  %6244 = fmul fast float %6237, %6242
  %6245 = fmul fast float %6237, %6243
  %6246 = fadd fast float %6244, 0x3F0FFB4800000000
  %6247 = fadd fast float %6245, 0xBF0FFB4800000000
  %6248 = call float @dx.op.binary.f32(i32 35, float %6239, float %6246)  ; FMax(a,b)
  %6249 = call float @dx.op.binary.f32(i32 36, float %6248, float %6247)  ; FMin(a,b)
  %6250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6251 = extractvalue %dx.types.CBufRet.f32 %6250, 1
  %6252 = extractvalue %dx.types.CBufRet.f32 %6250, 2
  %6253 = extractvalue %dx.types.CBufRet.f32 %6250, 0
  %6254 = select i1 %4780, float %6253, float 0.000000e+00
  %6255 = fmul fast float %6251, %6249
  %6256 = fadd fast float %6254, %6255
  %6257 = fadd fast float %6254, %6252
  %6258 = fsub fast float %6251, %6252
  %6259 = fadd fast float %6258, %6254
  %6260 = call float @dx.op.binary.f32(i32 35, float %6256, float %6257)  ; FMax(a,b)
  %6261 = call float @dx.op.binary.f32(i32 36, float %6260, float %6259)  ; FMin(a,b)
  %6262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %44, float %6193, float %6194, float %6261, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6263 = extractvalue %dx.types.ResRet.f32 %6262, 0
  %6264 = extractvalue %dx.types.ResRet.f32 %6262, 1
  %6265 = extractvalue %dx.types.ResRet.f32 %6262, 2
  %6266 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6267 = extractvalue %dx.types.CBufRet.i32 %6266, 0
  %6268 = extractvalue %dx.types.CBufRet.i32 %6266, 1
  %6269 = uitofp i32 %6267 to float
  %6270 = uitofp i32 %6268 to float
  %6271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6272 = extractvalue %dx.types.CBufRet.f32 %6271, 0
  %6273 = extractvalue %dx.types.CBufRet.f32 %6271, 1
  %6274 = fmul fast float %6269, %6193
  %6275 = fmul fast float %6270, %6194
  %6276 = fadd fast float %6274, -5.000000e-01
  %6277 = fadd fast float %6275, -5.000000e-01
  %6278 = call float @dx.op.unary.f32(i32 22, float %6276)  ; Frc(value)
  %6279 = call float @dx.op.unary.f32(i32 22, float %6277)  ; Frc(value)
  %6280 = fmul fast float %6278, %6278
  %6281 = fmul fast float %6280, %6278
  %6282 = fsub fast float 3.000000e+00, %6278
  %6283 = fmul fast float %6280, %6282
  %6284 = fmul fast float %6278, 3.000000e+00
  %6285 = fmul fast float %6281, 3.000000e+00
  %6286 = fmul fast float %6280, 6.000000e+00
  %6287 = fsub fast float %6285, %6286
  %6288 = fadd fast float %6287, 4.000000e+00
  %6289 = fmul fast float %6288, 0x3FC5555560000000
  %6290 = fmul fast float %6281, -3.000000e+00
  %6291 = fadd fast float %6280, %6278
  %6292 = fmul fast float %6291, 3.000000e+00
  %6293 = fadd fast float %6290, 1.000000e+00
  %6294 = fadd fast float %6293, %6292
  %6295 = fmul fast float %6281, 0x3FC5555560000000
  %6296 = fmul fast float %6279, %6279
  %6297 = fmul fast float %6296, %6279
  %6298 = fsub fast float 3.000000e+00, %6279
  %6299 = fmul fast float %6296, %6298
  %6300 = fmul fast float %6279, 3.000000e+00
  %6301 = fmul fast float %6297, 3.000000e+00
  %6302 = fmul fast float %6296, 6.000000e+00
  %6303 = fsub fast float %6301, %6302
  %6304 = fadd fast float %6303, 4.000000e+00
  %6305 = fmul fast float %6304, 0x3FC5555560000000
  %6306 = fmul fast float %6297, -3.000000e+00
  %6307 = fadd fast float %6296, %6279
  %6308 = fmul fast float %6307, 3.000000e+00
  %6309 = fadd fast float %6306, 1.000000e+00
  %6310 = fadd fast float %6309, %6308
  %6311 = fmul fast float %6297, 0x3FC5555560000000
  %6312 = fadd fast float %6278, 1.000000e+00
  %6313 = fsub fast float 1.000000e+00, %6284
  %6314 = fadd fast float %6313, %6283
  %6315 = fadd fast float %6314, %6288
  %6316 = fmul fast float %6315, 0x3FC5555560000000
  %6317 = fdiv fast float %6289, %6316
  %6318 = fsub fast float %6312, %6317
  %6319 = fsub fast float 1.000000e+00, %6278
  %6320 = fadd fast float %6294, %6281
  %6321 = fmul fast float %6320, 0x3FC5555560000000
  %6322 = fdiv fast float %6295, %6321
  %6323 = fadd fast float %6319, %6322
  %6324 = fadd fast float %6279, 1.000000e+00
  %6325 = fsub fast float 1.000000e+00, %6300
  %6326 = fadd fast float %6325, %6299
  %6327 = fadd fast float %6326, %6304
  %6328 = fmul fast float %6327, 0x3FC5555560000000
  %6329 = fdiv fast float %6305, %6328
  %6330 = fsub fast float %6324, %6329
  %6331 = fsub fast float 1.000000e+00, %6279
  %6332 = fadd fast float %6310, %6297
  %6333 = fmul fast float %6332, 0x3FC5555560000000
  %6334 = fdiv fast float %6311, %6333
  %6335 = fadd fast float %6334, %6331
  %6336 = fmul fast float %6318, %6272
  %6337 = fsub fast float %6193, %6336
  %6338 = fmul fast float %6323, %6272
  %6339 = fadd fast float %6338, %6193
  %6340 = fmul fast float %6335, %6273
  %6341 = fadd fast float %6340, %6194
  %6342 = fmul fast float %6330, %6273
  %6343 = fsub fast float %6194, %6342
  %6344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %44, float %6337, float %6343, float %6261, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6345 = extractvalue %dx.types.ResRet.f32 %6344, 0
  %6346 = extractvalue %dx.types.ResRet.f32 %6344, 1
  %6347 = extractvalue %dx.types.ResRet.f32 %6344, 2
  %6348 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %44, float %6339, float %6343, float %6261, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6349 = extractvalue %dx.types.ResRet.f32 %6348, 0
  %6350 = extractvalue %dx.types.ResRet.f32 %6348, 1
  %6351 = extractvalue %dx.types.ResRet.f32 %6348, 2
  %6352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %44, float %6337, float %6341, float %6261, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6353 = extractvalue %dx.types.ResRet.f32 %6352, 0
  %6354 = extractvalue %dx.types.ResRet.f32 %6352, 1
  %6355 = extractvalue %dx.types.ResRet.f32 %6352, 2
  %6356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %44, float %6339, float %6341, float %6261, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6357 = extractvalue %dx.types.ResRet.f32 %6356, 0
  %6358 = extractvalue %dx.types.ResRet.f32 %6356, 1
  %6359 = extractvalue %dx.types.ResRet.f32 %6356, 2
  %6360 = fsub fast float %6353, %6345
  %6361 = fsub fast float %6354, %6346
  %6362 = fsub fast float %6355, %6347
  %6363 = fmul fast float %6360, %6333
  %6364 = fmul fast float %6361, %6333
  %6365 = fmul fast float %6362, %6333
  %6366 = fadd fast float %6363, %6345
  %6367 = fadd fast float %6364, %6346
  %6368 = fadd fast float %6365, %6347
  %6369 = fsub fast float %6357, %6349
  %6370 = fsub fast float %6358, %6350
  %6371 = fsub fast float %6359, %6351
  %6372 = fmul fast float %6369, %6333
  %6373 = fmul fast float %6370, %6333
  %6374 = fmul fast float %6371, %6333
  %6375 = fsub fast float %6349, %6366
  %6376 = fadd fast float %6375, %6372
  %6377 = fsub fast float %6350, %6367
  %6378 = fadd fast float %6377, %6373
  %6379 = fsub fast float %6351, %6368
  %6380 = fadd fast float %6379, %6374
  %6381 = fmul fast float %6376, %6321
  %6382 = fmul fast float %6378, %6321
  %6383 = fmul fast float %6380, %6321
  %6384 = fadd fast float %6381, %6366
  %6385 = fadd fast float %6382, %6367
  %6386 = fadd fast float %6383, %6368
  %6387 = fmul fast float %6384, %2742
  %6388 = fmul fast float %6385, %2742
  %6389 = fmul fast float %6386, %2742
  br label %6390

; <label>:6390                                    ; preds = %6223, %6183
  %6391 = phi float [ %6263, %6223 ], [ 1.000000e+00, %6183 ]
  %6392 = phi float [ %6264, %6223 ], [ 1.000000e+00, %6183 ]
  %6393 = phi float [ %6265, %6223 ], [ 1.000000e+00, %6183 ]
  %6394 = phi float [ %6387, %6223 ], [ 0.000000e+00, %6183 ]
  %6395 = phi float [ %6388, %6223 ], [ 0.000000e+00, %6183 ]
  %6396 = phi float [ %6389, %6223 ], [ 0.000000e+00, %6183 ]
  %6397 = fmul fast float %6391, %6190
  %6398 = call float @dx.op.dot3.f32(i32 55, float %6391, float %6392, float %6393, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6399 = call float @dx.op.dot3.f32(i32 55, float %6394, float %6395, float %6396, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6400 = select i1 %197, float %6398, float %6391
  %6401 = select i1 %197, float %6398, float %6392
  %6402 = select i1 %197, float 1.000000e+00, float %6393
  %6403 = select i1 %197, float %6399, float %6394
  %6404 = select i1 %197, float 0.000000e+00, float %6395
  %6405 = select i1 %197, float 0.000000e+00, float %6396
  %6406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %50, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6407 = extractvalue %dx.types.CBufRet.i32 %6406, 3
  %6408 = and i32 %6407, 3
  %6409 = icmp ne i32 %6408, 0
  %6410 = and i32 %6407, 4
  %6411 = icmp ne i32 %6410, 0
  %6412 = and i1 %6409, %6411
  %6413 = and i1 %197, %6412
  br i1 %6413, label %6414, label %6420

; <label>:6414                                    ; preds = %6390
  %6415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6416 = extractvalue %dx.types.CBufRet.f32 %6415, 1
  %6417 = fadd fast float %6397, -1.000000e+00
  %6418 = fmul fast float %6416, %6417
  %6419 = fadd fast float %6418, 1.000000e+00
  br label %6420

; <label>:6420                                    ; preds = %6414, %6390
  %6421 = phi float [ %6419, %6414 ], [ %6397, %6390 ]
  %6422 = fadd fast float %6187, %6184
  %6423 = fmul fast float %6400, %6422
  %6424 = fadd fast float %6423, %6403
  %6425 = fadd fast float %6188, %6185
  %6426 = fmul fast float %6401, %6425
  %6427 = fadd fast float %6426, %6404
  %6428 = extractvalue %dx.types.CBufRet.f32 %2741, 0
  br i1 %197, label %6429, label %6444

; <label>:6429                                    ; preds = %6420
  %6430 = fadd fast float %6424, %6427
  %6431 = fmul fast float %6428, %6430
  %6432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6433 = extractvalue %dx.types.CBufRet.f32 %6432, 3
  %6434 = extractvalue %dx.types.CBufRet.f32 %4762, 1
  %6435 = fsub fast float %4767, %4761
  %6436 = fadd fast float %6435, %4768
  %6437 = fsub fast float %6436, %6434
  %6438 = extractvalue %dx.types.CBufRet.f32 %4762, 2
  %6439 = fmul fast float %6437, %6438
  %6440 = call float @dx.op.unary.f32(i32 7, float %6439)  ; Saturate(value)
  %6441 = fsub fast float %6440, %6433
  %6442 = fmul fast float %6441, %6421
  %6443 = fadd fast float %6442, %6433
  br label %6467

; <label>:6444                                    ; preds = %6420
  %6445 = fadd fast float %6189, %6186
  %6446 = fmul fast float %6402, %6445
  %6447 = fadd fast float %6446, %6405
  %6448 = fmul fast float %6428, %6424
  %6449 = fmul fast float %6428, %6427
  %6450 = fmul fast float %6428, %6447
  %6451 = call float @dx.op.binary.f32(i32 35, float %6449, float %6450)  ; FMax(a,b)
  %6452 = call float @dx.op.binary.f32(i32 35, float %6448, float %6451)  ; FMax(a,b)
  %6453 = call float @dx.op.binary.f32(i32 35, float %6452, float 1.000000e+00)  ; FMax(a,b)
  %6454 = fcmp fast ugt float %6453, 0x3F10000000000000
  br i1 %6454, label %6456, label %6455

; <label>:6455                                    ; preds = %6444
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6456

; <label>:6456                                    ; preds = %6455, %6444
  %6457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %6458 = extractvalue %dx.types.ResRet.i32 %6457, 0
  %6459 = and i32 %6458, 32
  %6460 = icmp eq i32 %6459, 0
  br i1 %6460, label %6467, label %6461

; <label>:6461                                    ; preds = %6456
  %6462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %50, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6463 = extractvalue %dx.types.CBufRet.f32 %6462, 0
  %6464 = fmul fast float %6463, 0x3FE99999A0000000
  %6465 = fadd fast float %6463, %6448
  %6466 = fadd fast float %6464, %6450
  br label %6467

; <label>:6467                                    ; preds = %6461, %6456, %6429
  %6468 = phi float [ %6431, %6429 ], [ %6465, %6461 ], [ %6448, %6456 ]
  %6469 = phi float [ %6443, %6429 ], [ %6449, %6461 ], [ %6449, %6456 ]
  %6470 = phi float [ 1.000000e+00, %6429 ], [ %6466, %6461 ], [ %6450, %6456 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6471 = call float @dx.op.binary.f32(i32 36, float %6468, float 3.225500e+04)  ; FMin(a,b)
  %6472 = call float @dx.op.binary.f32(i32 36, float %6469, float 3.225500e+04)  ; FMin(a,b)
  %6473 = call float @dx.op.binary.f32(i32 36, float %6470, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6471)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6472)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6473)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!65}
!dx.entryPoints = !{!66}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !53, !56}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
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
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!24 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !28}
!28 = !{i32 0, i32 5}
!29 = !{i32 21, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!33 = !{i32 25, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !38}
!38 = !{i32 0, i32 14}
!39 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!40 = !{i32 31, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!41 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!43 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!45 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!46 = !{i32 37, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!47 = !{i32 38, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!48 = !{i32 39, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!49 = !{i32 40, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!50 = !{i32 41, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !38}
!51 = !{i32 42, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!53 = !{!54, !55}
!54 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!55 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64}
!57 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!58 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!59 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!60 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!61 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!62 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!63 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!64 = !{i32 7, %struct.SamplerState* undef, !"", i32 0, i32 6, i32 1, i32 0, null}
!65 = !{[31 x i32] [i32 29, i32 4, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7]}
!66 = !{void ()* @ps_main, !"ps_main", !67, !4, !85}
!67 = !{!68, !83, null}
!68 = !{!69, !72, !74, !76, !77, !78, !79, !80, !82}
!69 = !{i32 0, !"SV_Position", i8 9, i8 3, !70, i8 4, i32 1, i8 4, i32 0, i8 0, !71}
!70 = !{i32 0}
!71 = !{i32 3, i32 15}
!72 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !70, i8 2, i32 1, i8 2, i32 1, i8 0, !73}
!73 = !{i32 3, i32 3}
!74 = !{i32 2, !"NORMAL", i8 9, i8 0, !70, i8 2, i32 1, i8 3, i32 2, i8 0, !75}
!75 = !{i32 3, i32 7}
!76 = !{i32 3, !"TANGENT", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 3, i8 0, !71}
!77 = !{i32 4, !"SH_RED", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 4, i8 0, !71}
!78 = !{i32 5, !"SH_GREEN", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 5, i8 0, !71}
!79 = !{i32 6, !"SH_BLUE", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 6, i8 0, !71}
!80 = !{i32 7, !"SV_IsFrontFace", i8 5, i8 13, !70, i8 1, i32 1, i8 1, i32 7, i8 0, !81}
!81 = !{i32 3, i32 1}
!82 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !70, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!83 = !{!84}
!84 = !{i32 0, !"SV_Target", i8 9, i8 16, !70, i8 0, i32 1, i8 4, i32 0, i8 0, !71}
!85 = !{i32 0, i64 16}
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
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = !{!117, !117, i64 0}
!117 = !{!"float", !94, i64 0}
!118 = !{!119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!119 = distinct !{!119, !120, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!120 = distinct !{!120, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!121 = distinct !{!121, !122, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!122 = distinct !{!122, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!123 = distinct !{!123, !122, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!124 = distinct !{!124, !125, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!125 = distinct !{!125, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!126 = distinct !{!126, !125, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!127 = distinct !{!127, !125, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!128 = distinct !{!128, !129, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!129 = distinct !{!129, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!130 = distinct !{!130, !129, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!131 = distinct !{!131, !129, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!132 = distinct !{!132, !133, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!133 = distinct !{!133, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"\01?sort@@YAXAIAM00@Z: %c"}
!136 = distinct !{!136, !"\01?sort@@YAXAIAM00@Z"}
!137 = !{!138, !139, !119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!138 = distinct !{!138, !136, !"\01?sort@@YAXAIAM00@Z: %a"}
!139 = distinct !{!139, !136, !"\01?sort@@YAXAIAM00@Z: %b"}
!140 = !{!139}
!141 = !{!138, !135, !119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!142 = !{!138}
!143 = !{!139, !135, !119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!144 = !{!145}
!145 = distinct !{!145, !146, !"\01?sort@@YAXAIAM00@Z: %c"}
!146 = distinct !{!146, !"\01?sort@@YAXAIAM00@Z"}
!147 = !{!148, !149, !119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!148 = distinct !{!148, !146, !"\01?sort@@YAXAIAM00@Z: %a"}
!149 = distinct !{!149, !146, !"\01?sort@@YAXAIAM00@Z: %b"}
!150 = !{!149}
!151 = !{!148, !145, !119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!152 = !{!148}
!153 = !{!149, !145, !119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 2}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}

