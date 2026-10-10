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
; shader hash: b9bcc9ec2e7474404a5cb0f9d2ebb6be
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
  %91 = fmul fast float %69, %66
  %92 = fmul fast float %70, %65
  %93 = fsub fast float %91, %92
  %94 = fmul fast float %70, %64
  %95 = fmul fast float %68, %66
  %96 = fsub fast float %94, %95
  %97 = fmul fast float %68, %65
  %98 = fmul fast float %69, %64
  %99 = fsub fast float %97, %98
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %886 = phi float [ 0.000000e+00, %256 ], [ %861, %860 ]
  %887 = phi float [ 0.000000e+00, %256 ], [ %862, %860 ]
  %888 = phi float [ 0.000000e+00, %256 ], [ %863, %860 ]
  %889 = phi float [ 0.000000e+00, %256 ], [ %811, %860 ]
  %890 = phi float [ 0.000000e+00, %256 ], [ %812, %860 ]
  %891 = phi float [ 0.000000e+00, %256 ], [ %813, %860 ]
  %892 = phi float [ 0.000000e+00, %256 ], [ %619, %860 ]
  %893 = phi float [ 0.000000e+00, %256 ], [ %420, %860 ]
  %894 = phi float [ 0.000000e+00, %256 ], [ %709, %860 ]
  %895 = phi float [ 0.000000e+00, %256 ], [ %712, %860 ]
  %896 = phi float [ 0.000000e+00, %256 ], [ %864, %860 ]
  %897 = phi float [ 0.000000e+00, %256 ], [ %876, %860 ]
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = bitcast i32 %899 to float
  %901 = fcmp fast oge float %900, 0.000000e+00
  %902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.f32 %902, 0
  %904 = select i1 %901, float %900, float %903
  %905 = call float @dx.op.dot2.f32(i32 54, float %878, float %879, float %878, float %879)  ; Dot2(ax,ay,bx,by)
  %906 = fmul fast float %905, 0x3FE3333340000000
  %907 = fsub fast float 1.000000e+00, %906
  %908 = call float @dx.op.dot3.f32(i32 55, float %878, float %879, float %907, float %878, float %879, float %907)  ; Dot3(ax,ay,az,bx,by,bz)
  %909 = call float @dx.op.unary.f32(i32 25, float %908)  ; Rsqrt(value)
  %910 = fmul fast float %909, %878
  %911 = fmul fast float %909, %879
  %912 = fmul fast float %907, %909
  %913 = fmul fast float %912, %88
  %914 = fmul fast float %912, %89
  %915 = fmul fast float %912, %90
  %916 = fmul fast float %910, %64
  %917 = fmul fast float %910, %65
  %918 = fmul fast float %910, %66
  %919 = fmul fast float %93, %67
  %920 = fmul fast float %919, %911
  %921 = fmul fast float %96, %67
  %922 = fmul fast float %921, %911
  %923 = fmul fast float %99, %67
  %924 = fmul fast float %923, %911
  %925 = fadd fast float %920, %916
  %926 = fmul fast float %925, %87
  %927 = fadd fast float %926, %913
  %928 = fadd fast float %922, %917
  %929 = fmul fast float %928, %87
  %930 = fadd fast float %929, %914
  %931 = fadd fast float %924, %918
  %932 = fmul fast float %931, %87
  %933 = fadd fast float %932, %915
  %934 = call float @dx.op.dot3.f32(i32 55, float %927, float %930, float %933, float %927, float %930, float %933)  ; Dot3(ax,ay,az,bx,by,bz)
  %935 = call float @dx.op.unary.f32(i32 25, float %934)  ; Rsqrt(value)
  %936 = fmul fast float %927, %935
  %937 = fmul fast float %930, %935
  %938 = fmul fast float %933, %935
  %939 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %940 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %941 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %942 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %943 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %944 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %945 = fadd fast float %939, %133
  %946 = fadd fast float %940, %134
  %947 = fadd fast float %941, %135
  %948 = fadd fast float %942, %133
  %949 = fadd fast float %943, %134
  %950 = fadd fast float %944, %135
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 0
  %953 = extractvalue %dx.types.CBufRet.f32 %951, 1
  %954 = extractvalue %dx.types.CBufRet.f32 %951, 2
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 2
  %957 = extractvalue %dx.types.CBufRet.f32 %955, 3
  %958 = fmul fast float %952, %85
  %959 = fmul fast float %958, %956
  %960 = fmul fast float %953, %86
  %961 = fmul fast float %960, %957
  %962 = fptoui float %959 to i32
  %963 = fptoui float %961 to i32
  %964 = fadd fast float %952, -1.000000e+00
  %965 = fadd fast float %953, -1.000000e+00
  %966 = fptoui float %964 to i32
  %967 = fptoui float %965 to i32
  %968 = call i32 @dx.op.binary.i32(i32 40, i32 %962, i32 %966)  ; UMin(a,b)
  %969 = call i32 @dx.op.binary.i32(i32 40, i32 %963, i32 %967)  ; UMin(a,b)
  %970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.f32 %970, 2
  %972 = extractvalue %dx.types.CBufRet.f32 %970, 3
  %973 = fmul fast float %971, %76
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
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = and i32 %986, 1023
  %988 = lshr i32 %986, 10
  %989 = icmp eq i32 %987, 0
  br i1 %989, label %1493, label %990

; <label>:990                                     ; preds = %877
  %991 = and i32 %986, 1023
  br label %992

; <label>:992                                     ; preds = %1124, %990
  %993 = phi i32 [ %1074, %1124 ], [ 0, %990 ]
  %994 = phi float [ %1125, %1124 ], [ 0.000000e+00, %990 ]
  %995 = phi float [ %1126, %1124 ], [ %904, %990 ]
  %996 = phi float [ %1127, %1124 ], [ %897, %990 ]
  %997 = phi float [ %1128, %1124 ], [ %889, %990 ]
  %998 = phi float [ %1129, %1124 ], [ %890, %990 ]
  %999 = phi float [ %1130, %1124 ], [ %891, %990 ]
  %1000 = phi float [ %1131, %1124 ], [ 0.000000e+00, %990 ]
  %1001 = phi float [ %1132, %1124 ], [ 0.000000e+00, %990 ]
  %1002 = phi float [ %1133, %1124 ], [ %886, %990 ]
  %1003 = phi float [ %1134, %1124 ], [ %887, %990 ]
  %1004 = phi float [ %1135, %1124 ], [ %888, %990 ]
  %1005 = phi float [ %1136, %1124 ], [ %883, %990 ]
  %1006 = phi float [ %1137, %1124 ], [ %884, %990 ]
  %1007 = phi float [ %1138, %1124 ], [ %885, %990 ]
  %1008 = phi float [ %1139, %1124 ], [ %936, %990 ]
  %1009 = phi float [ %1140, %1124 ], [ %937, %990 ]
  %1010 = phi float [ %1141, %1124 ], [ %938, %990 ]
  %1011 = phi float [ %1142, %1124 ], [ %895, %990 ]
  %1012 = phi float [ %1143, %1124 ], [ %894, %990 ]
  %1013 = phi float [ %1144, %1124 ], [ 0.000000e+00, %990 ]
  %1014 = phi float [ %1145, %1124 ], [ %892, %990 ]
  %1015 = phi float [ %1146, %1124 ], [ %880, %990 ]
  %1016 = phi float [ %1147, %1124 ], [ %881, %990 ]
  %1017 = phi float [ %1148, %1124 ], [ %882, %990 ]
  %1018 = add nuw nsw i32 %993, %988
  %1019 = shl i32 %1018, 2
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = shl i32 %1021, 8
  %1023 = or i32 %1022, 48
  %1024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.ResRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.ResRet.f32 %1024, 2
  %1028 = extractvalue %dx.types.ResRet.f32 %1024, 3
  %1029 = or i32 %1022, 64
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = extractvalue %dx.types.ResRet.i32 %1030, 1
  %1033 = or i32 %1022, 80
  %1034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 2
  %1036 = extractvalue %dx.types.ResRet.f32 %1034, 3
  %1037 = or i32 %1022, 96
  %1038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.f32 %1038, 0
  %1040 = extractvalue %dx.types.ResRet.f32 %1038, 1
  %1041 = extractvalue %dx.types.ResRet.f32 %1038, 2
  %1042 = extractvalue %dx.types.ResRet.f32 %1038, 3
  %1043 = or i32 %1022, 112
  %1044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 2
  %1046 = or i32 %1022, 128
  %1047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.ResRet.f32 %1047, 1
  %1050 = extractvalue %dx.types.ResRet.f32 %1047, 2
  %1051 = extractvalue %dx.types.ResRet.f32 %1047, 3
  %1052 = or i32 %1022, 144
  %1053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.ResRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.ResRet.f32 %1053, 2
  %1057 = extractvalue %dx.types.ResRet.f32 %1053, 3
  %1058 = or i32 %1022, 160
  %1059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.ResRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.ResRet.f32 %1059, 2
  %1063 = extractvalue %dx.types.ResRet.f32 %1059, 3
  %1064 = or i32 %1022, 192
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = or i32 %1022, 208
  %1068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.f32 %1068, 0
  %1070 = or i32 %1022, 248
  %1071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.ResRet.f32 %1071, 1
  %1074 = add nuw nsw i32 %993, 1
  %1075 = bitcast float %1028 to i32
  %1076 = and i32 %1075, 512
  %1077 = icmp eq i32 %1076, 0
  %1078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.ResRet.f32 %1078, 1
  %1081 = extractvalue %dx.types.ResRet.f32 %1078, 2
  %1082 = extractvalue %dx.types.ResRet.f32 %1078, 3
  %1083 = call float @dx.op.dot4.f32(i32 56, float %1079, float %1080, float %1081, float %1082, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1084 = or i32 %1022, 16
  %1085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.f32 %1085, 0
  %1087 = extractvalue %dx.types.ResRet.f32 %1085, 1
  %1088 = extractvalue %dx.types.ResRet.f32 %1085, 2
  %1089 = extractvalue %dx.types.ResRet.f32 %1085, 3
  %1090 = call float @dx.op.dot4.f32(i32 56, float %1086, float %1087, float %1088, float %1089, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1091 = or i32 %1022, 32
  %1092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.ResRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.ResRet.f32 %1092, 2
  %1096 = extractvalue %dx.types.ResRet.f32 %1092, 3
  %1097 = call float @dx.op.dot4.f32(i32 56, float %1093, float %1094, float %1095, float %1096, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
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
  %1115 = call float @dx.op.dot3.f32(i32 55, float %1025, float %1026, float %1027, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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

; <label>:1493                                    ; preds = %1492, %877
  %1494 = phi float [ 0.000000e+00, %877 ], [ %1125, %1492 ]
  %1495 = phi float [ %904, %877 ], [ %1126, %1492 ]
  %1496 = phi float [ %897, %877 ], [ %1127, %1492 ]
  %1497 = phi float [ %889, %877 ], [ %1128, %1492 ]
  %1498 = phi float [ %890, %877 ], [ %1129, %1492 ]
  %1499 = phi float [ %891, %877 ], [ %1130, %1492 ]
  %1500 = phi float [ 0.000000e+00, %877 ], [ %1131, %1492 ]
  %1501 = phi float [ 0.000000e+00, %877 ], [ %1132, %1492 ]
  %1502 = phi float [ %886, %877 ], [ %1133, %1492 ]
  %1503 = phi float [ %887, %877 ], [ %1134, %1492 ]
  %1504 = phi float [ %888, %877 ], [ %1135, %1492 ]
  %1505 = phi float [ %883, %877 ], [ %1136, %1492 ]
  %1506 = phi float [ %884, %877 ], [ %1137, %1492 ]
  %1507 = phi float [ %885, %877 ], [ %1138, %1492 ]
  %1508 = phi float [ %936, %877 ], [ %1139, %1492 ]
  %1509 = phi float [ %937, %877 ], [ %1140, %1492 ]
  %1510 = phi float [ %938, %877 ], [ %1141, %1492 ]
  %1511 = phi float [ %895, %877 ], [ %1142, %1492 ]
  %1512 = phi float [ %894, %877 ], [ %1143, %1492 ]
  %1513 = phi float [ 0.000000e+00, %877 ], [ %1144, %1492 ]
  %1514 = phi float [ %892, %877 ], [ %1145, %1492 ]
  %1515 = phi float [ %880, %877 ], [ %1146, %1492 ]
  %1516 = phi float [ %881, %877 ], [ %1147, %1492 ]
  %1517 = phi float [ %882, %877 ], [ %1148, %1492 ]
  %1518 = call float @dx.op.dot3.f32(i32 55, float %1508, float %1509, float %1510, float %1508, float %1509, float %1510)  ; Dot3(ax,ay,az,bx,by,bz)
  %1519 = call float @dx.op.unary.f32(i32 25, float %1518)  ; Rsqrt(value)
  %1520 = fmul fast float %1519, %1508
  %1521 = fmul fast float %1519, %1509
  %1522 = fmul fast float %1519, %1510
  %1523 = fadd fast float %1513, %893
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
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1578 = extractvalue %dx.types.CBufRet.i32 %1577, 3
  %1579 = and i32 %1578, 8
  %1580 = icmp ne i32 %1579, 0
  %1581 = call float @dx.op.binary.f32(i32 35, float %1539, float %1515)  ; FMax(a,b)
  %1582 = call float @dx.op.binary.f32(i32 35, float %1540, float %1515)  ; FMax(a,b)
  %1583 = call float @dx.op.binary.f32(i32 35, float %1541, float %1515)  ; FMax(a,b)
  %1584 = call float @dx.op.dot3.f32(i32 55, float %1539, float %1540, float %1541, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1585 = select i1 %195, float %1515, float %1539
  %1586 = select i1 %195, float %1584, float %1540
  %1587 = select i1 %195, float 1.000000e+00, float %1541
  %1588 = select i1 %1580, float %1581, float %1585
  %1589 = select i1 %1580, float %1582, float %1586
  %1590 = select i1 %1580, float %1583, float %1587
  %1591 = call float @dx.op.dot3.f32(i32 55, float %1571, float %1572, float %1573, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1592 = select i1 %195, float %1591, float %1571
  %1593 = select i1 %195, float %1591, float %1572
  %1594 = select i1 %195, float %1591, float %1573
  %1595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1596 = extractvalue %dx.types.CBufRet.f32 %1595, 0
  %1597 = extractvalue %dx.types.CBufRet.f32 %1595, 1
  %1598 = extractvalue %dx.types.CBufRet.f32 %1595, 2
  %1599 = fadd fast float %1596, %133
  %1600 = fadd fast float %1597, %134
  %1601 = fadd fast float %1598, %135
  %1602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1615 = extractvalue %dx.types.CBufRet.f32 %1614, 0
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 0
  %1618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %44, float %1646, float %1647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1649 = extractvalue %dx.types.ResRet.f32 %1648, 0
  %1650 = fcmp fast ugt float %1649, 0.000000e+00
  br i1 %1650, label %1651, label %1954

; <label>:1651                                    ; preds = %1613
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 2
  %1665 = fsub fast float %1662, %1664
  %1666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %44, float %1646, float %1647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1667 = extractvalue %dx.types.ResRet.f32 %1666, 0
  %1668 = extractvalue %dx.types.ResRet.f32 %1666, 1
  %1669 = extractvalue %dx.types.ResRet.f32 %1666, 2
  %1670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %44, float %1646, float %1647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %1681 = and i32 %171, 1
  %1682 = icmp eq i32 %1681, 0
  br i1 %1682, label %1954, label %1683

; <label>:1683                                    ; preds = %1680
  %1684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1685 = extractvalue %dx.types.CBufRet.f32 %1684, 0
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 0
  %1688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1708 = extractvalue %dx.types.CBufRet.f32 %1707, 0
  %1709 = extractvalue %dx.types.CBufRet.f32 %1707, 1
  %1710 = extractvalue %dx.types.CBufRet.f32 %1707, 2
  %1711 = extractvalue %dx.types.CBufRet.f32 %1707, 3
  %1712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1713 = extractvalue %dx.types.CBufRet.f32 %1712, 3
  %1714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1777 = extractvalue %dx.types.CBufRet.f32 %1776, 1
  %1778 = fadd fast float %1777, %1775
  %1779 = call float @dx.op.binary.f32(i32 35, float %1778, float 0.000000e+00)  ; FMax(a,b)
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 3
  %1782 = fadd fast float %1781, %1779
  %1783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1784 = extractvalue %dx.types.CBufRet.f32 %1783, 3
  %1785 = fadd fast float %1782, %1784
  %1786 = add i32 %1752, 0
  %1787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1786, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1788 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1787, i32 0)  ; GetDimensions(handle,mipLevel)
  %1789 = extractvalue %dx.types.Dimensions %1788, 0
  %1790 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1789)  ; FirstbitLo(value)
  %1791 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.i32 %1791, 1
  %1793 = sub nsw i32 %1792, %1790
  %1794 = sitofp i32 %1793 to float
  %1795 = fsub fast float %1785, %1794
  %1796 = call float @dx.op.binary.f32(i32 35, float %1795, float 0.000000e+00)  ; FMax(a,b)
  %1797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1787, %dx.types.Handle %42, float %1758, float %1760, float %1748, float undef, i32 0, i32 0, i32 undef, float %1796)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %1817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1829 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1830 = extractvalue %dx.types.CBufRet.i32 %1829, 1
  %1831 = sub nsw i32 %1830, %1828
  %1832 = sitofp i32 %1831 to float
  %1833 = fsub fast float %1782, %1832
  %1834 = call float @dx.op.binary.f32(i32 35, float %1833, float 0.000000e+00)  ; FMax(a,b)
  %1835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1825, %dx.types.Handle %42, float %1822, float %1823, float %1813, float undef, i32 0, i32 0, i32 undef, float %1834)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1836 = extractvalue %dx.types.ResRet.f32 %1835, 0
  %1837 = fmul fast float %1836, %1807
  %1838 = fadd fast float %1837, %1810
  %1839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1840 = extractvalue %dx.types.CBufRet.f32 %1839, 0
  %1841 = extractvalue %dx.types.CBufRet.f32 %1839, 1
  %1842 = extractvalue %dx.types.CBufRet.f32 %1839, 2
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 3
  %1845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1846 = extractvalue %dx.types.CBufRet.f32 %1845, 3
  %1847 = extractvalue %dx.types.CBufRet.f32 %1839, 3
  %1848 = fadd fast float %1844, %1705
  %1849 = fadd fast float %1846, %1706
  %1850 = fadd fast float %1838, %1847
  %1851 = fmul fast float %1848, %1840
  %1852 = call float @dx.op.tertiary.f32(i32 46, float %1849, float %1841, float %1851)  ; FMad(a,b,c)
  %1853 = call float @dx.op.tertiary.f32(i32 46, float %1850, float %1842, float %1852)  ; FMad(a,b,c)
  %1854 = fsub fast float %1853, %1847
  %1855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.f32 %1855, 2
  %1857 = fsub fast float %1854, %1856
  %1858 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1859 = extractvalue %dx.types.CBufRet.i32 %1858, 0
  %1860 = call i32 @dx.op.binary.i32(i32 40, i32 %1736, i32 %1859)  ; UMin(a,b)
  %1861 = mul i32 %1860, 36
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = add i32 %1861, 4
  %1865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1894 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1895 = extractvalue %dx.types.CBufRet.i32 %1894, 1
  %1896 = sub nsw i32 %1895, %1893
  %1897 = sitofp i32 %1896 to float
  %1898 = fsub fast float %1782, %1897
  %1899 = call float @dx.op.binary.f32(i32 35, float %1898, float 0.000000e+00)  ; FMax(a,b)
  %1900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1890, %dx.types.Handle %42, float %1870, float %1871, float %1885, float undef, i32 0, i32 0, i32 undef, float %1899)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %1960 = and i32 %171, 3
  %1961 = icmp eq i32 %1960, 1
  %1962 = select i1 %1961, float 1.000000e+00, float 0.000000e+00
  %1963 = fsub fast float %1955, %135
  %1964 = call float @dx.op.unary.f32(i32 7, float %1963)  ; Saturate(value)
  %1965 = select i1 %1959, float %1964, float 1.000000e+00
  %1966 = fmul fast float %1965, %1962
  %1967 = icmp eq i32 %1960, 3
  %1968 = select i1 %1967, float 1.000000e+00, float %1966
  %1969 = call float @dx.op.binary.f32(i32 35, float %1494, float %1968)  ; FMax(a,b)
  %1970 = call float @dx.op.unary.f32(i32 7, float %1969)  ; Saturate(value)
  %1971 = fcmp fast une float %1970, 0.000000e+00
  %1972 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %1973 = call float @dx.op.unary.f32(i32 25, float %1972)  ; Rsqrt(value)
  br i1 %1971, label %1981, label %1974

; <label>:1974                                    ; preds = %1954
  %1975 = fmul fast float %1973, %133
  %1976 = fmul fast float %1973, %134
  %1977 = fmul fast float %1973, %135
  %1978 = fsub fast float -0.000000e+00, %1975
  %1979 = fsub fast float -0.000000e+00, %1976
  %1980 = fsub fast float -0.000000e+00, %1977
  br label %2149

; <label>:1981                                    ; preds = %1954
  %1982 = fmul fast float %133, %1973
  %1983 = fsub fast float -0.000000e+00, %1982
  %1984 = fmul fast float %134, %1973
  %1985 = fsub fast float -0.000000e+00, %1984
  %1986 = fmul fast float %135, %1973
  %1987 = fsub fast float -0.000000e+00, %1986
  %1988 = call float @dx.op.dot3.f32(i32 55, float %1983, float %1985, float %1987, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %2041 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %2127 = fsub fast float %88, %1527
  %2128 = fsub fast float %89, %1528
  %2129 = fsub fast float %90, %1529
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
  %2156 = phi float [ %1588, %1974 ], [ %2033, %1981 ]
  %2157 = phi float [ %1589, %1974 ], [ %2034, %1981 ]
  %2158 = phi float [ %1590, %1974 ], [ %2035, %1981 ]
  %2159 = phi float [ %1527, %1974 ], [ %2146, %1981 ]
  %2160 = phi float [ %1528, %1974 ], [ %2147, %1981 ]
  %2161 = phi float [ %1529, %1974 ], [ %2148, %1981 ]
  %2162 = phi float [ %1548, %1974 ], [ %2124, %1981 ]
  %2163 = phi float [ %1549, %1974 ], [ %2125, %1981 ]
  %2164 = phi float [ %1550, %1974 ], [ %2126, %1981 ]
  %2165 = phi float [ %1551, %1974 ], [ %2140, %1981 ]
  %2166 = phi float [ %1511, %1974 ], [ %2143, %1981 ]
  %2167 = fsub fast float -0.000000e+00, %135
  %2168 = select i1 %195, float 0.000000e+00, float %2164
  %2169 = call float @dx.op.dot3.f32(i32 55, float %2159, float %2160, float %2161, float %2152, float %2151, float %2150)  ; Dot3(ax,ay,az,bx,by,bz)
  %2170 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  %2171 = call float @dx.op.dot3.f32(i32 55, float %2155, float %2154, float %2153, float %2159, float %2160, float %2161)  ; Dot3(ax,ay,az,bx,by,bz)
  %2172 = fmul fast float %2171, 2.000000e+00
  %2173 = fmul fast float %2172, %2159
  %2174 = fmul fast float %2172, %2160
  %2175 = fmul fast float %2172, %2161
  %2176 = fsub fast float %2155, %2173
  %2177 = fsub fast float %2154, %2174
  %2178 = fsub fast float %2153, %2175
  %2179 = call float @dx.op.binary.f32(i32 36, float %2166, float 1.000000e+00)  ; FMin(a,b)
  %2180 = fsub fast float 1.000000e+00, %2166
  %2181 = bitcast float %2180 to i32
  %2182 = sub nsw i32 2129859010, %2181
  %2183 = bitcast i32 %2182 to float
  %2184 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %60)  ; FMax(a,b)
  %2185 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %2186 = fcmp fast oeq float %2185, 0.000000e+00
  %2187 = fcmp fast oeq float %2184, 0.000000e+00
  %2188 = or i1 %2187, %2186
  br i1 %2188, label %2218, label %2189

; <label>:2189                                    ; preds = %2149
  %2190 = fsub fast float -0.000000e+00, %63
  %2191 = fsub fast float -0.000000e+00, %61
  %2192 = call float @dx.op.unary.f32(i32 24, float %2185)  ; Sqrt(value)
  %2193 = fdiv fast float %2192, %2184
  %2194 = fcmp fast ogt float %2193, 0x3FFB6F8900000000
  %2195 = select i1 %2194, float 0x3FFB6F8900000000, float %2193
  %2196 = fmul fast float %2195, 0x3FE8A23460000000
  %2197 = call float @dx.op.unary.f32(i32 7, float %2196)  ; Saturate(value)
  %2198 = call float @dx.op.binary.f32(i32 35, float %2195, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2199 = fmul fast float %2197, %2184
  %2200 = fmul fast float %2198, 0x3FF279A740000000
  %2201 = fadd fast float %2200, -1.000000e+00
  %2202 = call float @dx.op.dot3.f32(i32 55, float %2190, float %2191, float %62, float %2190, float %2191, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %2203 = call float @dx.op.unary.f32(i32 25, float %2202)  ; Rsqrt(value)
  %2204 = fmul fast float %2203, %2190
  %2205 = fmul fast float %2203, %2191
  %2206 = fmul fast float %2203, %62
  %2207 = fmul fast float %2201, %2201
  %2208 = fsub fast float 1.000000e+00, %2207
  %2209 = fmul fast float %2198, 0x40005F8BE0000000
  %2210 = fsub fast float 0x400C5BF8A0000000, %2209
  %2211 = fdiv fast float %2199, %2210
  %2212 = fmul fast float %2211, 0x3FEE31C3C0000000
  %2213 = fmul fast float %2212, %2208
  %2214 = fmul fast float %2198, 0x3FDACB7480000000
  %2215 = fadd fast float %2214, 0xBFD7347680000000
  %2216 = fmul fast float %2215, %2211
  %2217 = fmul fast float %2216, %2208
  br label %2218

; <label>:2218                                    ; preds = %2189, %2149
  %2219 = phi float [ %2204, %2189 ], [ 0.000000e+00, %2149 ]
  %2220 = phi float [ %2205, %2189 ], [ 0.000000e+00, %2149 ]
  %2221 = phi float [ %2206, %2189 ], [ 0.000000e+00, %2149 ]
  %2222 = phi float [ %2213, %2189 ], [ 0.000000e+00, %2149 ]
  %2223 = phi float [ %2217, %2189 ], [ 0.000000e+00, %2149 ]
  %2224 = call float @dx.op.dot3.f32(i32 55, float %2219, float %2220, float %2221, float %2159, float %2160, float %2161)  ; Dot3(ax,ay,az,bx,by,bz)
  %2225 = fmul fast float %2224, 0x3FDF454380000000
  %2226 = fmul fast float %2224, %2224
  %2227 = fmul fast float %2226, 0x3FEE471020000000
  %2228 = fadd fast float %2227, 0xBFD42F6020000000
  %2229 = fmul fast float %2184, 0x3FD20DD760000000
  %2230 = fmul fast float %2228, %2223
  %2231 = fadd fast float %2230, %2229
  %2232 = fmul fast float %2225, %2222
  %2233 = fadd fast float %2231, %2232
  %2234 = fsub fast float %2231, %2232
  %2235 = call float @dx.op.dot3.f32(i32 55, float %2219, float %2220, float %2221, float %2176, float %2177, float %2178)  ; Dot3(ax,ay,az,bx,by,bz)
  %2236 = fmul fast float %2235, 0x3FDF454380000000
  %2237 = fmul fast float %2235, %2235
  %2238 = fmul fast float %2237, 0x3FEE471020000000
  %2239 = fadd fast float %2238, 0xBFD42F6020000000
  %2240 = call float @dx.op.dot3.f32(i32 55, float %2184, float %2222, float %2223, float 0x3FD20DD760000000, float %2236, float %2239)  ; Dot3(ax,ay,az,bx,by,bz)
  %2241 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %56)  ; FMax(a,b)
  %2242 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %2243 = fcmp fast oeq float %2242, 0.000000e+00
  %2244 = fcmp fast oeq float %2241, 0.000000e+00
  %2245 = or i1 %2244, %2243
  br i1 %2245, label %2275, label %2246

; <label>:2246                                    ; preds = %2218
  %2247 = fsub fast float -0.000000e+00, %59
  %2248 = fsub fast float -0.000000e+00, %57
  %2249 = call float @dx.op.unary.f32(i32 24, float %2242)  ; Sqrt(value)
  %2250 = fdiv fast float %2249, %2241
  %2251 = fcmp fast ogt float %2250, 0x3FFB6F8900000000
  %2252 = select i1 %2251, float 0x3FFB6F8900000000, float %2250
  %2253 = fmul fast float %2252, 0x3FE8A23460000000
  %2254 = call float @dx.op.unary.f32(i32 7, float %2253)  ; Saturate(value)
  %2255 = call float @dx.op.binary.f32(i32 35, float %2252, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2256 = fmul fast float %2254, %2241
  %2257 = fmul fast float %2255, 0x3FF279A740000000
  %2258 = fadd fast float %2257, -1.000000e+00
  %2259 = call float @dx.op.dot3.f32(i32 55, float %2247, float %2248, float %58, float %2247, float %2248, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %2260 = call float @dx.op.unary.f32(i32 25, float %2259)  ; Rsqrt(value)
  %2261 = fmul fast float %2260, %2247
  %2262 = fmul fast float %2260, %2248
  %2263 = fmul fast float %2260, %58
  %2264 = fmul fast float %2258, %2258
  %2265 = fsub fast float 1.000000e+00, %2264
  %2266 = fmul fast float %2255, 0x40005F8BE0000000
  %2267 = fsub fast float 0x400C5BF8A0000000, %2266
  %2268 = fdiv fast float %2256, %2267
  %2269 = fmul fast float %2268, 0x3FEE31C3C0000000
  %2270 = fmul fast float %2269, %2265
  %2271 = fmul fast float %2255, 0x3FDACB7480000000
  %2272 = fadd fast float %2271, 0xBFD7347680000000
  %2273 = fmul fast float %2272, %2268
  %2274 = fmul fast float %2273, %2265
  br label %2275

; <label>:2275                                    ; preds = %2246, %2218
  %2276 = phi float [ %2261, %2246 ], [ 0.000000e+00, %2218 ]
  %2277 = phi float [ %2262, %2246 ], [ 0.000000e+00, %2218 ]
  %2278 = phi float [ %2263, %2246 ], [ 0.000000e+00, %2218 ]
  %2279 = phi float [ %2270, %2246 ], [ 0.000000e+00, %2218 ]
  %2280 = phi float [ %2274, %2246 ], [ 0.000000e+00, %2218 ]
  %2281 = call float @dx.op.dot3.f32(i32 55, float %2276, float %2277, float %2278, float %2159, float %2160, float %2161)  ; Dot3(ax,ay,az,bx,by,bz)
  %2282 = fmul fast float %2281, 0x3FDF454380000000
  %2283 = fmul fast float %2281, %2281
  %2284 = fmul fast float %2283, 0x3FEE471020000000
  %2285 = fadd fast float %2284, 0xBFD42F6020000000
  %2286 = fmul fast float %2241, 0x3FD20DD760000000
  %2287 = fmul fast float %2285, %2280
  %2288 = fadd fast float %2287, %2286
  %2289 = fmul fast float %2282, %2279
  %2290 = fadd fast float %2288, %2289
  %2291 = fsub fast float %2288, %2289
  %2292 = call float @dx.op.dot3.f32(i32 55, float %2276, float %2277, float %2278, float %2176, float %2177, float %2178)  ; Dot3(ax,ay,az,bx,by,bz)
  %2293 = fmul fast float %2292, 0x3FDF454380000000
  %2294 = fmul fast float %2292, %2292
  %2295 = fmul fast float %2294, 0x3FEE471020000000
  %2296 = fadd fast float %2295, 0xBFD42F6020000000
  %2297 = call float @dx.op.dot3.f32(i32 55, float %2241, float %2279, float %2280, float 0x3FD20DD760000000, float %2293, float %2296)  ; Dot3(ax,ay,az,bx,by,bz)
  %2298 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %2299 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %2300 = fcmp fast oeq float %2299, 0.000000e+00
  %2301 = fcmp fast oeq float %2298, 0.000000e+00
  %2302 = or i1 %2301, %2300
  br i1 %2302, label %2332, label %2303

; <label>:2303                                    ; preds = %2275
  %2304 = fsub fast float -0.000000e+00, %55
  %2305 = fsub fast float -0.000000e+00, %53
  %2306 = call float @dx.op.unary.f32(i32 24, float %2299)  ; Sqrt(value)
  %2307 = fdiv fast float %2306, %2298
  %2308 = fcmp fast ogt float %2307, 0x3FFB6F8900000000
  %2309 = select i1 %2308, float 0x3FFB6F8900000000, float %2307
  %2310 = fmul fast float %2309, 0x3FE8A23460000000
  %2311 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2312 = call float @dx.op.binary.f32(i32 35, float %2309, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2313 = fmul fast float %2311, %2298
  %2314 = fmul fast float %2312, 0x3FF279A740000000
  %2315 = fadd fast float %2314, -1.000000e+00
  %2316 = call float @dx.op.dot3.f32(i32 55, float %2304, float %2305, float %54, float %2304, float %2305, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %2317 = call float @dx.op.unary.f32(i32 25, float %2316)  ; Rsqrt(value)
  %2318 = fmul fast float %2317, %2304
  %2319 = fmul fast float %2317, %2305
  %2320 = fmul fast float %2317, %54
  %2321 = fmul fast float %2315, %2315
  %2322 = fsub fast float 1.000000e+00, %2321
  %2323 = fmul fast float %2312, 0x40005F8BE0000000
  %2324 = fsub fast float 0x400C5BF8A0000000, %2323
  %2325 = fdiv fast float %2313, %2324
  %2326 = fmul fast float %2325, 0x3FEE31C3C0000000
  %2327 = fmul fast float %2326, %2322
  %2328 = fmul fast float %2312, 0x3FDACB7480000000
  %2329 = fadd fast float %2328, 0xBFD7347680000000
  %2330 = fmul fast float %2329, %2325
  %2331 = fmul fast float %2330, %2322
  br label %2332

; <label>:2332                                    ; preds = %2303, %2275
  %2333 = phi float [ %2318, %2303 ], [ 0.000000e+00, %2275 ]
  %2334 = phi float [ %2319, %2303 ], [ 0.000000e+00, %2275 ]
  %2335 = phi float [ %2320, %2303 ], [ 0.000000e+00, %2275 ]
  %2336 = phi float [ %2327, %2303 ], [ 0.000000e+00, %2275 ]
  %2337 = phi float [ %2331, %2303 ], [ 0.000000e+00, %2275 ]
  %2338 = call float @dx.op.dot3.f32(i32 55, float %2333, float %2334, float %2335, float %2159, float %2160, float %2161)  ; Dot3(ax,ay,az,bx,by,bz)
  %2339 = fmul fast float %2338, 0x3FDF454380000000
  %2340 = fmul fast float %2338, %2338
  %2341 = fmul fast float %2340, 0x3FEE471020000000
  %2342 = fadd fast float %2341, 0xBFD42F6020000000
  %2343 = fmul fast float %2298, 0x3FD20DD760000000
  %2344 = fmul fast float %2342, %2337
  %2345 = fadd fast float %2344, %2343
  %2346 = fmul fast float %2339, %2336
  %2347 = fadd fast float %2345, %2346
  %2348 = fsub fast float %2345, %2346
  %2349 = call float @dx.op.dot3.f32(i32 55, float %2333, float %2334, float %2335, float %2176, float %2177, float %2178)  ; Dot3(ax,ay,az,bx,by,bz)
  %2350 = fmul fast float %2349, 0x3FDF454380000000
  %2351 = fmul fast float %2349, %2349
  %2352 = fmul fast float %2351, 0x3FEE471020000000
  %2353 = fadd fast float %2352, 0xBFD42F6020000000
  %2354 = call float @dx.op.dot3.f32(i32 55, float %2298, float %2336, float %2337, float 0x3FD20DD760000000, float %2350, float %2353)  ; Dot3(ax,ay,az,bx,by,bz)
  %2355 = call float @dx.op.binary.f32(i32 35, float %2233, float 0.000000e+00)  ; FMax(a,b)
  %2356 = call float @dx.op.binary.f32(i32 35, float %2290, float 0.000000e+00)  ; FMax(a,b)
  %2357 = call float @dx.op.binary.f32(i32 35, float %2347, float 0.000000e+00)  ; FMax(a,b)
  %2358 = call float @dx.op.binary.f32(i32 35, float %2234, float 0.000000e+00)  ; FMax(a,b)
  %2359 = call float @dx.op.binary.f32(i32 35, float %2291, float 0.000000e+00)  ; FMax(a,b)
  %2360 = call float @dx.op.binary.f32(i32 35, float %2348, float 0.000000e+00)  ; FMax(a,b)
  %2361 = call float @dx.op.binary.f32(i32 35, float %2240, float 0.000000e+00)  ; FMax(a,b)
  %2362 = call float @dx.op.binary.f32(i32 35, float %2297, float 0.000000e+00)  ; FMax(a,b)
  %2363 = call float @dx.op.binary.f32(i32 35, float %2354, float 0.000000e+00)  ; FMax(a,b)
  %2364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2365 = extractvalue %dx.types.CBufRet.f32 %2364, 0
  %2366 = call float @dx.op.binary.f32(i32 36, float %2156, float %2365)  ; FMin(a,b)
  %2367 = fsub fast float 1.000000e+00, %2179
  %2368 = fmul fast float %2366, %2367
  %2369 = fsub fast float 1.000000e+00, %2368
  %2370 = bitcast float %2369 to i32
  %2371 = sub nsw i32 2129859010, %2370
  %2372 = bitcast i32 %2371 to float
  %2373 = call float @dx.op.binary.f32(i32 36, float %2157, float %2365)  ; FMin(a,b)
  %2374 = fmul fast float %2373, %2367
  %2375 = fsub fast float 1.000000e+00, %2374
  %2376 = bitcast float %2375 to i32
  %2377 = sub nsw i32 2129859010, %2376
  %2378 = bitcast i32 %2377 to float
  %2379 = call float @dx.op.binary.f32(i32 36, float %2158, float %2365)  ; FMin(a,b)
  %2380 = fmul fast float %2379, %2367
  %2381 = fsub fast float 1.000000e+00, %2380
  %2382 = bitcast float %2381 to i32
  %2383 = sub nsw i32 2129859010, %2382
  %2384 = bitcast i32 %2383 to float
  %2385 = fmul fast float %2355, %2179
  %2386 = fmul fast float %2385, %2372
  %2387 = fmul fast float %2356, %2179
  %2388 = fmul fast float %2387, %2378
  %2389 = fmul fast float %2357, %2179
  %2390 = fmul fast float %2389, %2384
  %2391 = call float @dx.op.binary.f32(i32 36, float %2162, float %2365)  ; FMin(a,b)
  %2392 = fmul fast float %2391, %2367
  %2393 = fsub fast float 1.000000e+00, %2392
  %2394 = bitcast float %2393 to i32
  %2395 = sub nsw i32 2129859010, %2394
  %2396 = bitcast i32 %2395 to float
  %2397 = call float @dx.op.binary.f32(i32 36, float %2163, float %2365)  ; FMin(a,b)
  %2398 = fmul fast float %2397, %2367
  %2399 = fsub fast float 1.000000e+00, %2398
  %2400 = bitcast float %2399 to i32
  %2401 = sub nsw i32 2129859010, %2400
  %2402 = bitcast i32 %2401 to float
  %2403 = call float @dx.op.binary.f32(i32 36, float %2168, float %2365)  ; FMin(a,b)
  %2404 = fmul fast float %2403, %2367
  %2405 = fsub fast float 1.000000e+00, %2404
  %2406 = bitcast float %2405 to i32
  %2407 = sub nsw i32 2129859010, %2406
  %2408 = bitcast i32 %2407 to float
  %2409 = fmul fast float %2361, %2179
  %2410 = fmul fast float %2409, %2396
  %2411 = fmul fast float %2362, %2179
  %2412 = fmul fast float %2411, %2402
  %2413 = fmul fast float %2363, %2179
  %2414 = fmul fast float %2413, %2408
  %2415 = call float @dx.op.dot3.f32(i32 55, float %2386, float %2388, float %2390, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2416 = select i1 %195, float 0.000000e+00, float %2386
  %2417 = select i1 %195, float %2415, float %2388
  %2418 = select i1 %195, float 0.000000e+00, float %2390
  %2419 = call float @dx.op.dot3.f32(i32 55, float %2358, float %2359, float %2360, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2420 = select i1 %195, float 0.000000e+00, float %2358
  %2421 = select i1 %195, float %2419, float %2359
  %2422 = select i1 %195, float 0.000000e+00, float %2360
  %2423 = call float @dx.op.dot3.f32(i32 55, float %2410, float %2412, float %2414, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2424 = select i1 %195, float 0.000000e+00, float %2410
  %2425 = select i1 %195, float %2423, float %2412
  %2426 = select i1 %195, float 0.000000e+00, float %2414
  %2427 = fmul fast float %896, %896
  %2428 = call float @dx.op.unary.f32(i32 7, float %2427)  ; Saturate(value)
  %2429 = fmul fast float %2170, 9.843750e-01
  %2430 = fmul fast float %2165, 9.843750e-01
  %2431 = fadd fast float %2429, 7.812500e-03
  %2432 = fadd fast float %2430, 7.812500e-03
  %2433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %2431, float %2432, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2434 = extractvalue %dx.types.ResRet.f32 %2433, 0
  %2435 = extractvalue %dx.types.ResRet.f32 %2433, 1
  %2436 = extractvalue %dx.types.ResRet.f32 %2433, 2
  %2437 = extractvalue %dx.types.ResRet.f32 %2433, 3
  %2438 = fsub fast float 1.000000e+00, %2428
  %2439 = fsub fast float %2436, %2434
  %2440 = fsub fast float %2437, %2435
  %2441 = fmul fast float %2439, %2438
  %2442 = fmul fast float %2440, %2438
  %2443 = fadd fast float %2441, %2434
  %2444 = fadd fast float %2442, %2435
  %2445 = fmul fast float %2443, %2162
  %2446 = fmul fast float %2443, %2163
  %2447 = fmul fast float %2443, %2168
  %2448 = fadd fast float %2445, %2444
  %2449 = fadd fast float %2446, %2444
  %2450 = fadd fast float %2447, %2444
  %2451 = fcmp fast ogt float %1501, 0.000000e+00
  br i1 %2451, label %2452, label %2478

; <label>:2452                                    ; preds = %2332
  %2453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1501, float %2170, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2454 = extractvalue %dx.types.ResRet.f32 %2453, 0
  %2455 = extractvalue %dx.types.ResRet.f32 %2453, 1
  %2456 = extractvalue %dx.types.ResRet.f32 %2453, 2
  %2457 = fadd fast float %2454, -5.000000e-01
  %2458 = fadd fast float %2455, -5.000000e-01
  %2459 = fadd fast float %2456, -5.000000e-01
  %2460 = fsub fast float 1.000000e+00, %2162
  %2461 = fsub fast float 1.000000e+00, %2163
  %2462 = fsub fast float 1.000000e+00, %2168
  %2463 = fmul fast float %2162, 4.000000e+00
  %2464 = fmul fast float %2463, %2460
  %2465 = fmul fast float %2464, %2457
  %2466 = fmul fast float %2163, 4.000000e+00
  %2467 = fmul fast float %2466, %2461
  %2468 = fmul fast float %2467, %2458
  %2469 = fmul fast float %2168, 4.000000e+00
  %2470 = fmul fast float %2469, %2462
  %2471 = fmul fast float %2470, %2459
  %2472 = fadd fast float %2465, %2448
  %2473 = fadd fast float %2468, %2449
  %2474 = fadd fast float %2471, %2450
  %2475 = call float @dx.op.unary.f32(i32 7, float %2472)  ; Saturate(value)
  %2476 = call float @dx.op.unary.f32(i32 7, float %2473)  ; Saturate(value)
  %2477 = call float @dx.op.unary.f32(i32 7, float %2474)  ; Saturate(value)
  br label %2478

; <label>:2478                                    ; preds = %2452, %2332
  %2479 = phi float [ %2475, %2452 ], [ %2448, %2332 ]
  %2480 = phi float [ %2476, %2452 ], [ %2449, %2332 ]
  %2481 = phi float [ %2477, %2452 ], [ %2450, %2332 ]
  %2482 = call float @dx.op.binary.f32(i32 35, float %2480, float %2481)  ; FMax(a,b)
  %2483 = call float @dx.op.binary.f32(i32 35, float %2479, float %2482)  ; FMax(a,b)
  %2484 = fsub fast float 1.000000e+00, %2483
  %2485 = call float @dx.op.dot3.f32(i32 55, float %2156, float %2157, float %2158, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2486 = fcmp fast ogt float %2485, 0x3E7FF19E20000000
  %2487 = fdiv fast float 1.000000e+00, %2485
  %2488 = select i1 %2486, float %2487, float 0.000000e+00
  %2489 = fmul fast float %2488, %2156
  %2490 = fmul fast float %2488, %2157
  %2491 = fmul fast float %2488, %2158
  %2492 = fadd fast float %2489, -1.000000e+00
  %2493 = fadd fast float %2490, -1.000000e+00
  %2494 = fadd fast float %2491, -1.000000e+00
  %2495 = fmul fast float %2492, 5.000000e-01
  %2496 = fmul fast float %2493, 5.000000e-01
  %2497 = fmul fast float %2494, 5.000000e-01
  %2498 = fadd fast float %2495, 1.000000e+00
  %2499 = fadd fast float %2496, 1.000000e+00
  %2500 = fadd fast float %2497, 1.000000e+00
  %2501 = call float @dx.op.binary.f32(i32 35, float %2170, float 0x3F50624DE0000000)  ; FMax(a,b)
  %2502 = fdiv fast float %896, %2501
  %2503 = fcmp fast olt float %1574, 1.270000e+02
  %2504 = fcmp fast olt float %1575, 1.270000e+02
  %2505 = fcmp fast olt float %1576, 1.270000e+02
  %2506 = fmul fast float %1574, 0xBFF7154760000000
  %2507 = fmul fast float %2506, %2502
  %2508 = fmul fast float %1575, 0xBFF7154760000000
  %2509 = fmul fast float %2508, %2502
  %2510 = fmul fast float %1576, 0xBFF7154760000000
  %2511 = fmul fast float %2510, %2502
  %2512 = call float @dx.op.unary.f32(i32 21, float %2507)  ; Exp(value)
  %2513 = call float @dx.op.unary.f32(i32 21, float %2509)  ; Exp(value)
  %2514 = call float @dx.op.unary.f32(i32 21, float %2511)  ; Exp(value)
  %2515 = call float @dx.op.unary.f32(i32 7, float %2512)  ; Saturate(value)
  %2516 = call float @dx.op.unary.f32(i32 7, float %2513)  ; Saturate(value)
  %2517 = call float @dx.op.unary.f32(i32 7, float %2514)  ; Saturate(value)
  %2518 = select i1 %2503, float %2515, float 0.000000e+00
  %2519 = select i1 %2504, float %2516, float 0.000000e+00
  %2520 = select i1 %2505, float %2517, float 0.000000e+00
  %2521 = fmul fast float %2518, %2484
  %2522 = fmul fast float %2519, %2484
  %2523 = fmul fast float %2520, %2484
  %2524 = fadd fast float %2521, -1.000000e+00
  %2525 = fadd fast float %2522, -1.000000e+00
  %2526 = fadd fast float %2523, -1.000000e+00
  %2527 = fmul fast float %2524, %1524
  %2528 = fmul fast float %2525, %1524
  %2529 = fmul fast float %2526, %1524
  %2530 = fmul fast float %2479, %2424
  %2531 = fmul fast float %2480, %2425
  %2532 = fmul fast float %2481, %2426
  %2533 = fsub fast float 1.000000e+00, %2170
  %2534 = bitcast float %2533 to i32
  %2535 = sitofp i32 %2534 to float
  %2536 = fmul fast float %2535, 5.000000e+00
  %2537 = fadd fast float %2536, 0xC1EFBF8940000000
  %2538 = fptosi float %2537 to i32
  %2539 = bitcast i32 %2538 to float
  %2540 = fmul fast float %2539, %1500
  %2541 = fmul fast float %2416, %2540
  %2542 = fmul fast float %2541, %2484
  %2543 = fmul fast float %2542, %2498
  %2544 = fmul fast float %2417, %2540
  %2545 = fmul fast float %2544, %2484
  %2546 = fmul fast float %2545, %2499
  %2547 = fmul fast float %2418, %2540
  %2548 = fmul fast float %2547, %2484
  %2549 = fmul fast float %2548, %2500
  %2550 = fadd fast float %2530, %1505
  %2551 = fadd fast float %2550, %2543
  %2552 = fmul fast float %2551, %1524
  %2553 = fadd fast float %2531, %1506
  %2554 = fadd fast float %2553, %2546
  %2555 = fmul fast float %2554, %1524
  %2556 = fadd fast float %2532, %1507
  %2557 = fadd fast float %2556, %2549
  %2558 = fmul fast float %2557, %1524
  %2559 = fmul fast float %2163, 0x4012D0A400000000
  %2560 = fadd fast float %2529, 1.000000e+00
  %2561 = fadd fast float %2528, 1.000000e+00
  %2562 = fadd fast float %2527, 1.000000e+00
  %2563 = fmul fast float %2484, %2418
  %2564 = fmul fast float %2484, %2417
  %2565 = fmul fast float %2484, %2416
  %2566 = fsub fast float 1.000000e+00, %2165
  %2567 = fmul fast float %2566, %1524
  %2568 = fsub fast float 1.000000e+00, %2567
  %2569 = call float @dx.op.unary.f32(i32 7, float %2568)  ; Saturate(value)
  %2570 = fsub fast float 1.000000e+00, %2569
  %2571 = fadd fast float %2559, 0x3FDB6377A0000000
  %2572 = fmul fast float %2570, %2571
  %2573 = call float @dx.op.dot3.f32(i32 55, float %1592, float %1593, float %1594, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2574 = fadd fast float %2572, %2573
  %2575 = call float @dx.op.unary.f32(i32 7, float %2574)  ; Saturate(value)
  %2576 = call float @dx.op.binary.f32(i32 35, float %2575, float 0x3F847AE140000000)  ; FMax(a,b)
  %2577 = fmul fast float %2576, %2576
  %2578 = fmul fast float %2577, %2577
  %2579 = fmul fast float %2578, 0xC00A935000000000
  %2580 = call float @dx.op.unary.f32(i32 21, float %2579)  ; Exp(value)
  %2581 = fsub fast float 1.000000e+00, %2580
  %2582 = fmul fast float %2562, %2420
  %2583 = fmul fast float %2582, %2581
  %2584 = fmul fast float %2561, %2421
  %2585 = fmul fast float %2584, %2581
  %2586 = fmul fast float %2560, %2422
  %2587 = fmul fast float %2586, %2581
  %2588 = fadd fast float %2583, %2565
  %2589 = fmul fast float %2588, %1524
  %2590 = fadd fast float %2585, %2564
  %2591 = fmul fast float %2590, %1524
  %2592 = fadd fast float %2587, %2563
  %2593 = fmul fast float %2592, %1524
  %2594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2595 = extractvalue %dx.types.CBufRet.f32 %2594, 3
  %2596 = fcmp fast oeq float %2595, 0.000000e+00
  br i1 %2596, label %3801, label %2597

; <label>:2597                                    ; preds = %2478
  %2598 = extractvalue %dx.types.CBufRet.f32 %2594, 0
  %2599 = extractvalue %dx.types.CBufRet.f32 %2594, 1
  %2600 = extractvalue %dx.types.CBufRet.f32 %2594, 2
  %2601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2602 = extractvalue %dx.types.CBufRet.f32 %2601, 0
  %2603 = extractvalue %dx.types.CBufRet.f32 %2601, 1
  %2604 = extractvalue %dx.types.CBufRet.f32 %2601, 2
  %2605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2606 = extractvalue %dx.types.CBufRet.f32 %2605, 0
  %2607 = extractvalue %dx.types.CBufRet.f32 %2605, 1
  %2608 = call float @dx.op.dot3.f32(i32 55, float %2602, float %2603, float %2604, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2609 = select i1 %195, float %2606, float %2602
  %2610 = select i1 %195, float %2608, float %2603
  %2611 = select i1 %195, float %2607, float %2604
  %2612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2613 = extractvalue %dx.types.CBufRet.f32 %2612, 2
  %2614 = fmul fast float %2613, %88
  %2615 = fmul fast float %2613, %89
  %2616 = fmul fast float %2613, %90
  %2617 = fadd fast float %2614, %133
  %2618 = fadd fast float %2615, %134
  %2619 = fadd fast float %2616, %135
  %2620 = fcmp fast olt float %2595, 0.000000e+00
  br i1 %2620, label %3245, label %2621

; <label>:2621                                    ; preds = %2597
  %2622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2623 = extractvalue %dx.types.CBufRet.f32 %2622, 0
  %2624 = extractvalue %dx.types.CBufRet.f32 %2622, 1
  %2625 = extractvalue %dx.types.CBufRet.f32 %2622, 2
  %2626 = extractvalue %dx.types.CBufRet.f32 %2622, 3
  %2627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2628 = extractvalue %dx.types.CBufRet.f32 %2627, 0
  %2629 = extractvalue %dx.types.CBufRet.f32 %2627, 1
  %2630 = extractvalue %dx.types.CBufRet.f32 %2627, 2
  %2631 = extractvalue %dx.types.CBufRet.f32 %2627, 3
  %2632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2633 = extractvalue %dx.types.CBufRet.f32 %2632, 0
  %2634 = extractvalue %dx.types.CBufRet.f32 %2632, 1
  %2635 = extractvalue %dx.types.CBufRet.f32 %2632, 2
  %2636 = extractvalue %dx.types.CBufRet.f32 %2632, 3
  %2637 = fmul fast float %2623, %2617
  %2638 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %2624, float %2637)  ; FMad(a,b,c)
  %2639 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %2625, float %2638)  ; FMad(a,b,c)
  %2640 = fadd fast float %2639, %2626
  %2641 = fmul fast float %2628, %2617
  %2642 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %2629, float %2641)  ; FMad(a,b,c)
  %2643 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %2630, float %2642)  ; FMad(a,b,c)
  %2644 = fadd fast float %2643, %2631
  %2645 = fmul fast float %2633, %2617
  %2646 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %2634, float %2645)  ; FMad(a,b,c)
  %2647 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %2635, float %2646)  ; FMad(a,b,c)
  %2648 = fadd fast float %2647, %2636
  %2649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2650 = extractvalue %dx.types.CBufRet.f32 %2649, 0
  %2651 = extractvalue %dx.types.CBufRet.f32 %2649, 1
  %2652 = extractvalue %dx.types.CBufRet.f32 %2649, 3
  %2653 = fmul fast float %2652, %2640
  %2654 = fmul fast float %2652, %2644
  %2655 = fadd fast float %2653, %2650
  %2656 = fadd fast float %2654, %2651
  %2657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2658 = extractvalue %dx.types.CBufRet.f32 %2657, 0
  %2659 = extractvalue %dx.types.CBufRet.f32 %2657, 1
  %2660 = extractvalue %dx.types.CBufRet.f32 %2657, 3
  %2661 = fmul fast float %2660, %2640
  %2662 = fmul fast float %2660, %2644
  %2663 = fadd fast float %2661, %2658
  %2664 = fadd fast float %2662, %2659
  %2665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2666 = extractvalue %dx.types.CBufRet.f32 %2665, 1
  %2667 = fsub fast float %2666, %2648
  %2668 = extractvalue %dx.types.CBufRet.f32 %2665, 2
  %2669 = fmul fast float %2667, %2668
  %2670 = fsub fast float 1.000000e+00, %2669
  %2671 = call float @dx.op.unary.f32(i32 7, float %2670)  ; Saturate(value)
  %2672 = extractvalue %dx.types.CBufRet.f32 %2657, 2
  %2673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2674 = extractvalue %dx.types.CBufRet.f32 %2673, 2
  %2675 = fadd fast float %2674, %2672
  %2676 = fcmp fast ogt float %2675, 0.000000e+00
  br i1 %2676, label %2677, label %2701

; <label>:2677                                    ; preds = %2621
  %2678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2679 = extractvalue %dx.types.CBufRet.f32 %2678, 0
  %2680 = extractvalue %dx.types.CBufRet.f32 %2678, 1
  %2681 = fsub fast float %2663, %2679
  %2682 = fsub fast float %2664, %2680
  %2683 = fcmp fast olt float %2681, 0.000000e+00
  %2684 = fcmp fast olt float %2682, 0.000000e+00
  %2685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2686 = extractvalue %dx.types.CBufRet.f32 %2685, 0
  %2687 = extractvalue %dx.types.CBufRet.f32 %2685, 1
  %2688 = extractvalue %dx.types.CBufRet.f32 %2685, 2
  %2689 = extractvalue %dx.types.CBufRet.f32 %2685, 3
  %2690 = select i1 %2683, float %2686, float %2688
  %2691 = select i1 %2684, float %2687, float %2689
  %2692 = fmul fast float %2690, %2681
  %2693 = fmul fast float %2691, %2682
  %2694 = call float @dx.op.unary.f32(i32 6, float %2692)  ; FAbs(value)
  %2695 = call float @dx.op.unary.f32(i32 6, float %2693)  ; FAbs(value)
  %2696 = extractvalue %dx.types.CBufRet.f32 %2612, 0
  %2697 = call float @dx.op.binary.f32(i32 35, float %2694, float %2695)  ; FMax(a,b)
  %2698 = fsub fast float %2696, %2697
  %2699 = call float @dx.op.unary.f32(i32 7, float %2698)  ; Saturate(value)
  %2700 = fmul fast float %2699, %2671
  br label %2701

; <label>:2701                                    ; preds = %2677, %2621
  %2702 = phi float [ %2700, %2677 ], [ 0.000000e+00, %2621 ]
  %2703 = extractvalue %dx.types.CBufRet.f32 %2649, 2
  %2704 = extractvalue %dx.types.CBufRet.f32 %2673, 1
  %2705 = fadd fast float %2704, %2703
  %2706 = fcmp fast ogt float %2705, 0.000000e+00
  %2707 = extractvalue %dx.types.CBufRet.f32 %2612, 0
  br i1 %2706, label %2708, label %2731

; <label>:2708                                    ; preds = %2701
  %2709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2710 = extractvalue %dx.types.CBufRet.f32 %2709, 0
  %2711 = extractvalue %dx.types.CBufRet.f32 %2709, 1
  %2712 = fsub fast float %2655, %2710
  %2713 = fsub fast float %2656, %2711
  %2714 = fcmp fast olt float %2712, 0.000000e+00
  %2715 = fcmp fast olt float %2713, 0.000000e+00
  %2716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2717 = extractvalue %dx.types.CBufRet.f32 %2716, 0
  %2718 = extractvalue %dx.types.CBufRet.f32 %2716, 1
  %2719 = extractvalue %dx.types.CBufRet.f32 %2716, 2
  %2720 = extractvalue %dx.types.CBufRet.f32 %2716, 3
  %2721 = select i1 %2714, float %2717, float %2719
  %2722 = select i1 %2715, float %2718, float %2720
  %2723 = fmul fast float %2721, %2712
  %2724 = fmul fast float %2722, %2713
  %2725 = call float @dx.op.unary.f32(i32 6, float %2723)  ; FAbs(value)
  %2726 = call float @dx.op.unary.f32(i32 6, float %2724)  ; FAbs(value)
  %2727 = call float @dx.op.binary.f32(i32 35, float %2725, float %2726)  ; FMax(a,b)
  %2728 = fsub fast float %2707, %2727
  %2729 = call float @dx.op.unary.f32(i32 7, float %2728)  ; Saturate(value)
  %2730 = fmul fast float %2729, %2671
  br label %2731

; <label>:2731                                    ; preds = %2708, %2701
  %2732 = phi float [ %2730, %2708 ], [ 0.000000e+00, %2701 ]
  %2733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2734 = extractvalue %dx.types.CBufRet.f32 %2733, 1
  %2735 = call float @dx.op.unary.f32(i32 7, float %2734)  ; Saturate(value)
  %2736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2737 = extractvalue %dx.types.CBufRet.f32 %2736, 0
  %2738 = extractvalue %dx.types.CBufRet.f32 %2736, 1
  %2739 = fsub fast float %2640, %2737
  %2740 = fsub fast float %2644, %2738
  %2741 = fcmp fast olt float %2739, 0.000000e+00
  %2742 = fcmp fast olt float %2740, 0.000000e+00
  %2743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2744 = extractvalue %dx.types.CBufRet.f32 %2743, 0
  %2745 = extractvalue %dx.types.CBufRet.f32 %2743, 1
  %2746 = extractvalue %dx.types.CBufRet.f32 %2743, 2
  %2747 = extractvalue %dx.types.CBufRet.f32 %2743, 3
  %2748 = select i1 %2741, float %2744, float %2746
  %2749 = select i1 %2742, float %2745, float %2747
  %2750 = fmul fast float %2748, %2739
  %2751 = fmul fast float %2749, %2740
  %2752 = call float @dx.op.unary.f32(i32 6, float %2750)  ; FAbs(value)
  %2753 = call float @dx.op.unary.f32(i32 6, float %2751)  ; FAbs(value)
  %2754 = call float @dx.op.binary.f32(i32 35, float %2752, float %2753)  ; FMax(a,b)
  %2755 = fsub fast float %2707, %2754
  %2756 = call float @dx.op.unary.f32(i32 7, float %2755)  ; Saturate(value)
  %2757 = call float @dx.op.binary.f32(i32 36, float %2756, float %2735)  ; FMin(a,b)
  %2758 = fmul fast float %2757, %2671
  %2759 = fsub fast float %2732, %2758
  %2760 = fsub fast float %2702, %2732
  %2761 = fsub fast float %2760, %2758
  %2762 = call float @dx.op.binary.f32(i32 35, float %2732, float %2702)  ; FMax(a,b)
  %2763 = call float @dx.op.binary.f32(i32 35, float %2758, float %2762)  ; FMax(a,b)
  %2764 = fcmp fast olt float %2763, 1.000000e+00
  br i1 %2764, label %2765, label %3163, !dx.controlflow.hints !84

; <label>:2765                                    ; preds = %2731
  %2766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2767 = extractvalue %dx.types.CBufRet.f32 %2766, 0
  %2768 = fcmp fast une float %2767, 0.000000e+00
  br i1 %2768, label %2769, label %3163, !dx.controlflow.hints !85

; <label>:2769                                    ; preds = %2765
  %2770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2771 = extractvalue %dx.types.CBufRet.f32 %2770, 0
  %2772 = extractvalue %dx.types.CBufRet.f32 %2770, 1
  %2773 = extractvalue %dx.types.CBufRet.f32 %2770, 2
  %2774 = extractvalue %dx.types.CBufRet.f32 %2770, 3
  %2775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2775, 0
  %2777 = extractvalue %dx.types.CBufRet.f32 %2775, 1
  %2778 = extractvalue %dx.types.CBufRet.f32 %2775, 2
  %2779 = extractvalue %dx.types.CBufRet.f32 %2775, 3
  %2780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2781 = extractvalue %dx.types.CBufRet.f32 %2780, 0
  %2782 = extractvalue %dx.types.CBufRet.f32 %2780, 1
  %2783 = extractvalue %dx.types.CBufRet.f32 %2780, 2
  %2784 = extractvalue %dx.types.CBufRet.f32 %2780, 3
  %2785 = fmul fast float %2771, %2617
  %2786 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %2772, float %2785)  ; FMad(a,b,c)
  %2787 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %2773, float %2786)  ; FMad(a,b,c)
  %2788 = fadd fast float %2787, %2774
  %2789 = fmul fast float %2776, %2617
  %2790 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %2777, float %2789)  ; FMad(a,b,c)
  %2791 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %2778, float %2790)  ; FMad(a,b,c)
  %2792 = fadd fast float %2791, %2779
  %2793 = fmul fast float %2781, %2617
  %2794 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %2782, float %2793)  ; FMad(a,b,c)
  %2795 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %2783, float %2794)  ; FMad(a,b,c)
  %2796 = fadd fast float %2795, %2784
  %2797 = fcmp fast oge float %2788, 1.000000e+00
  %2798 = fcmp fast oge float %2792, 1.000000e+00
  %2799 = or i1 %2797, %2798
  %2800 = fcmp fast olt float %2788, 0.000000e+00
  %2801 = fcmp fast olt float %2792, 0.000000e+00
  %2802 = or i1 %2800, %2801
  %2803 = or i1 %2799, %2802
  br i1 %2803, label %3163, label %2804, !dx.controlflow.hints !86

; <label>:2804                                    ; preds = %2769
  %2805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2806 = extractvalue %dx.types.CBufRet.f32 %2805, 0
  %2807 = extractvalue %dx.types.CBufRet.f32 %2805, 1
  %2808 = extractvalue %dx.types.CBufRet.f32 %2805, 2
  %2809 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.i32 %2809, 2
  %2811 = uitofp i32 %2810 to float
  %2812 = extractvalue %dx.types.CBufRet.i32 %2809, 3
  %2813 = uitofp i32 %2812 to float
  %2814 = extractvalue %dx.types.CBufRet.f32 %2805, 3
  %2815 = fmul fast float %2814, 2.000000e+00
  %2816 = fsub fast float %2788, %2806
  %2817 = fsub fast float %2792, %2807
  %2818 = fmul fast float %2815, %2816
  %2819 = fmul fast float %2815, %2817
  %2820 = fdiv fast float 1.000000e+00, %2600
  %2821 = fmul fast float %2819, %2820
  %2822 = call float @dx.op.unary.f32(i32 6, float %2821)  ; FAbs(value)
  %2823 = fmul fast float %2808, %2619
  %2824 = fmul fast float %2823, %2815
  %2825 = call float @dx.op.unary.f32(i32 6, float %2824)  ; FAbs(value)
  %2826 = call float @dx.op.unary.f32(i32 6, float %2818)  ; FAbs(value)
  %2827 = call float @dx.op.binary.f32(i32 35, float %2825, float %2822)  ; FMax(a,b)
  %2828 = call float @dx.op.binary.f32(i32 35, float %2826, float %2827)  ; FMax(a,b)
  %2829 = fmul fast float %2828, 2.000000e+00
  %2830 = call float @dx.op.unary.f32(i32 23, float %2829)  ; Log(value)
  %2831 = call float @dx.op.binary.f32(i32 35, float %2830, float %2811)  ; FMax(a,b)
  %2832 = call float @dx.op.unary.f32(i32 22, float %2831)  ; Frc(value)
  %2833 = fadd fast float %2832, 0xBFEA666660000000
  %2834 = fmul fast float %2833, 8.000000e+00
  %2835 = call float @dx.op.unary.f32(i32 7, float %2834)  ; Saturate(value)
  %2836 = call float @dx.op.unary.f32(i32 27, float %2831)  ; Round_ni(value)
  %2837 = fadd fast float %2836, %2835
  %2838 = call float @dx.op.binary.f32(i32 36, float %2837, float %2813)  ; FMin(a,b)
  %2839 = call float @dx.op.unary.f32(i32 27, float %2838)  ; Round_ni(value)
  %2840 = fsub fast float -0.000000e+00, %2839
  %2841 = call float @dx.op.unary.f32(i32 21, float %2840)  ; Exp(value)
  %2842 = fmul fast float %2841, %2815
  %2843 = fmul fast float %2842, %2788
  %2844 = fmul fast float %2842, %2792
  %2845 = fmul fast float %2843, 2.500000e-01
  %2846 = fmul fast float %2844, 2.500000e-01
  %2847 = fadd fast float %2845, 5.000000e-01
  %2848 = fadd fast float %2846, 5.000000e-01
  %2849 = fsub fast float %2813, %2811
  %2850 = fptoui float %2849 to i32
  %2851 = add i32 %2850, 320
  %2852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %2851)  ; CBufferLoadLegacy(handle,regIndex)
  %2853 = extractvalue %dx.types.CBufRet.f32 %2852, 0
  %2854 = extractvalue %dx.types.CBufRet.f32 %2852, 1
  %2855 = fcmp fast une float %2838, %2813
  %2856 = fsub fast float %2788, %2853
  %2857 = fsub fast float %2792, %2854
  %2858 = call float @dx.op.unary.f32(i32 6, float %2856)  ; FAbs(value)
  %2859 = call float @dx.op.unary.f32(i32 6, float %2857)  ; FAbs(value)
  %2860 = fmul fast float %2858, %2842
  %2861 = fmul fast float %2859, %2842
  %2862 = fcmp fast olt float %2860, 1.000000e+00
  %2863 = fcmp fast olt float %2861, 1.000000e+00
  %2864 = and i1 %2862, %2863
  %2865 = or i1 %2855, %2864
  br i1 %2865, label %2866, label %3163, !dx.controlflow.hints !87

; <label>:2866                                    ; preds = %2804
  %2867 = fmul fast float %2844, 5.000000e-01
  %2868 = fmul fast float %2843, 5.000000e-01
  %2869 = fadd fast float %2867, 5.000000e-01
  %2870 = fadd fast float %2868, 5.000000e-01
  %2871 = sitofp i32 %2810 to float
  %2872 = fsub fast float %2838, %2871
  %2873 = call float @dx.op.unary.f32(i32 27, float %2872)  ; Round_ni(value)
  %2874 = call float @dx.op.unary.f32(i32 22, float %2838)  ; Frc(value)
  %2875 = call float @dx.op.unary.f32(i32 22, float %2870)  ; Frc(value)
  %2876 = call float @dx.op.unary.f32(i32 22, float %2869)  ; Frc(value)
  %2877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %2875, float %2876, float %2873, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2878 = extractvalue %dx.types.ResRet.f32 %2877, 0
  %2879 = extractvalue %dx.types.ResRet.f32 %2877, 1
  %2880 = extractvalue %dx.types.ResRet.f32 %2877, 2
  %2881 = extractvalue %dx.types.ResRet.f32 %2877, 3
  %2882 = fcmp fast ogt float %2874, 0.000000e+00
  br i1 %2882, label %2883, label %2904, !dx.controlflow.hints !88

; <label>:2883                                    ; preds = %2866
  %2884 = fadd fast float %2873, 1.000000e+00
  %2885 = call float @dx.op.unary.f32(i32 22, float %2847)  ; Frc(value)
  %2886 = call float @dx.op.unary.f32(i32 22, float %2848)  ; Frc(value)
  %2887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %2885, float %2886, float %2884, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2888 = extractvalue %dx.types.ResRet.f32 %2887, 0
  %2889 = extractvalue %dx.types.ResRet.f32 %2887, 1
  %2890 = extractvalue %dx.types.ResRet.f32 %2887, 2
  %2891 = extractvalue %dx.types.ResRet.f32 %2887, 3
  %2892 = fsub fast float %2888, %2878
  %2893 = fsub fast float %2889, %2879
  %2894 = fsub fast float %2890, %2880
  %2895 = fsub fast float %2891, %2881
  %2896 = fmul fast float %2892, %2874
  %2897 = fmul fast float %2893, %2874
  %2898 = fmul fast float %2894, %2874
  %2899 = fmul fast float %2895, %2874
  %2900 = fadd fast float %2896, %2878
  %2901 = fadd fast float %2897, %2879
  %2902 = fadd fast float %2898, %2880
  %2903 = fadd fast float %2899, %2881
  br label %2904

; <label>:2904                                    ; preds = %2883, %2866
  %2905 = phi float [ %2900, %2883 ], [ %2878, %2866 ]
  %2906 = phi float [ %2901, %2883 ], [ %2879, %2866 ]
  %2907 = phi float [ %2902, %2883 ], [ %2880, %2866 ]
  %2908 = phi float [ %2903, %2883 ], [ %2881, %2866 ]
  %2909 = fadd fast float %2905, -5.000000e-01
  %2910 = fadd fast float %2907, -5.000000e-01
  %2911 = fmul fast float %2909, 0xBFD5555560000000
  %2912 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2910, float %2911)  ; FMad(a,b,c)
  %2913 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2906, float 0.000000e+00)  ; FMad(a,b,c)
  %2914 = fadd fast float %2913, %2908
  %2915 = fmul fast float %2909, -7.500000e-01
  %2916 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2910, float %2915)  ; FMad(a,b,c)
  %2917 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2906, float 0.000000e+00)  ; FMad(a,b,c)
  %2918 = fadd fast float %2917, %2908
  %2919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2920 = extractvalue %dx.types.CBufRet.f32 %2919, 0
  %2921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2922 = extractvalue %dx.types.CBufRet.f32 %2921, 0
  %2923 = extractvalue %dx.types.CBufRet.f32 %2921, 1
  %2924 = extractvalue %dx.types.CBufRet.f32 %2921, 2
  %2925 = extractvalue %dx.types.CBufRet.f32 %2921, 3
  %2926 = fsub fast float %2922, %2912
  %2927 = fsub fast float %2923, %2914
  %2928 = fsub fast float %2924, %2916
  %2929 = fsub fast float %2925, %2918
  %2930 = fmul fast float %2926, %2920
  %2931 = fmul fast float %2927, %2920
  %2932 = fmul fast float %2928, %2920
  %2933 = fmul fast float %2929, %2920
  %2934 = fadd fast float %2930, %2912
  %2935 = fadd fast float %2931, %2914
  %2936 = fadd fast float %2932, %2916
  %2937 = fadd fast float %2933, %2918
  %2938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2939 = extractvalue %dx.types.ResRet.i32 %2938, 0
  %2940 = and i32 %2939, 536870911
  %2941 = uitofp i32 %2940 to float
  %2942 = fmul fast float %2941, %2788
  %2943 = fmul fast float %2941, %2792
  %2944 = fptoui float %2942 to i32
  %2945 = fptoui float %2943 to i32
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = and i32 %2947, 31
  %2949 = lshr i32 %2944, %2948
  %2950 = lshr i32 %2945, %2948
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = and i32 %2952, 31
  %2954 = shl i32 1, %2953
  %2955 = call i32 @dx.op.binary.i32(i32 40, i32 %2954, i32 4)  ; UMin(a,b)
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = extractvalue %dx.types.ResRet.i32 %2956, 1
  %2959 = icmp eq i32 %2955, 0
  br i1 %2959, label %3001, label %2960

; <label>:2960                                    ; preds = %2904
  br label %2961

; <label>:2961                                    ; preds = %2989, %2960
  %2962 = phi i32 [ %2992, %2989 ], [ 0, %2960 ]
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = lshr i32 %2964, 16
  %2966 = and i32 %2965, 31
  %2967 = shl i32 %2950, %2966
  %2968 = add i32 %2967, %2949
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = and i32 %2970, 31
  %2972 = shl i32 %2968, %2971
  %2973 = add i32 %2972, %2962
  %2974 = shl i32 %2973, 2
  %2975 = add i32 %2974, 32
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = icmp slt i32 %2977, 0
  %2979 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %2962
  %2980 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %2962
  %2981 = bitcast float* %2979 to i32*
  %2982 = bitcast float* %2980 to i32*
  br i1 %2978, label %2983, label %2989

; <label>:2983                                    ; preds = %2961
  %2984 = and i32 %2977, 1073741823
  %2985 = add nuw nsw i32 %2984, 20
  %2986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %2985, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.i32 %2986, 0
  %2988 = extractvalue %dx.types.ResRet.i32 %2986, 1
  br label %2989

; <label>:2989                                    ; preds = %2983, %2961
  %2990 = phi i32 [ %2987, %2983 ], [ %2957, %2961 ]
  %2991 = phi i32 [ %2988, %2983 ], [ %2958, %2961 ]
  store i32 %2990, i32* %2981, align 4
  store i32 %2991, i32* %2982, align 4
  %2992 = add nuw i32 %2962, 1
  %2993 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2994 = extractvalue %dx.types.CBufRet.i32 %2993, 2
  %2995 = icmp eq i32 %2994, 0
  %2996 = icmp ugt i32 %2977, -1073741825
  %2997 = and i1 %2996, %2995
  %2998 = icmp ult i32 %2992, %2955
  %2999 = and i1 %2997, %2998
  br i1 %2999, label %2961, label %3000

; <label>:3000                                    ; preds = %2989
  br label %3001

; <label>:3001                                    ; preds = %3000, %2904
  %3002 = phi i32 [ 0, %2904 ], [ %2992, %3000 ]
  %3003 = extractvalue %dx.types.CBufRet.f32 %2766, 2
  %3004 = fptoui float %3003 to i32
  %3005 = icmp eq i32 %3004, 0
  br i1 %3005, label %3057, label %3006

; <label>:3006                                    ; preds = %3001
  br label %3007

; <label>:3007                                    ; preds = %3052, %3006
  %3008 = phi i32 [ %3053, %3052 ], [ %3002, %3006 ]
  %3009 = phi i32 [ %3054, %3052 ], [ 0, %3006 ]
  %3010 = lshr i32 %3009, 2
  %3011 = and i32 %3009, 3
  %3012 = add nuw nsw i32 %3010, 83
  %3013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %3012)  ; CBufferLoadLegacy(handle,regIndex)
  %3014 = extractvalue %dx.types.CBufRet.i32 %3013, 0
  %3015 = extractvalue %dx.types.CBufRet.i32 %3013, 1
  %3016 = extractvalue %dx.types.CBufRet.i32 %3013, 2
  %3017 = extractvalue %dx.types.CBufRet.i32 %3013, 3
  %3018 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %3014, i32* %3018, align 4
  %3019 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %3015, i32* %3019, align 4
  %3020 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %3016, i32* %3020, align 4
  %3021 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %3017, i32* %3021, align 4
  %3022 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %3011
  %3023 = load i32, i32* %3022, align 4, !tbaa !89, !noalias !93
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = lshr i32 %3025, 16
  %3027 = and i32 %3026, 31
  %3028 = shl i32 %2950, %3027
  %3029 = add i32 %3028, %2949
  %3030 = shl i32 %3029, 2
  %3031 = add i32 %3030, %3023
  %3032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3031, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.i32 %3032, 0
  %3034 = icmp eq i32 %3033, 0
  br i1 %3034, label %3052, label %3035

; <label>:3035                                    ; preds = %3007
  %3036 = icmp slt i32 %3033, 0
  %3037 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %3008
  %3038 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3008
  %3039 = bitcast float* %3037 to i32*
  %3040 = bitcast float* %3038 to i32*
  br i1 %3036, label %3041, label %3048

; <label>:3041                                    ; preds = %3035
  %3042 = and i32 %3033, 1073741823
  %3043 = add i32 %3023, 20
  %3044 = add i32 %3043, %3042
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = extractvalue %dx.types.ResRet.i32 %3045, 1
  br label %3048

; <label>:3048                                    ; preds = %3041, %3035
  %3049 = phi i32 [ %3046, %3041 ], [ %2957, %3035 ]
  %3050 = phi i32 [ %3047, %3041 ], [ %2958, %3035 ]
  store i32 %3049, i32* %3039, align 4
  store i32 %3050, i32* %3040, align 4
  %3051 = add i32 %3008, 1
  br label %3052

; <label>:3052                                    ; preds = %3048, %3007
  %3053 = phi i32 [ %3008, %3007 ], [ %3051, %3048 ]
  %3054 = add nuw i32 %3009, 1
  %3055 = icmp eq i32 %3054, %3004
  br i1 %3055, label %3056, label %3007

; <label>:3056                                    ; preds = %3052
  br label %3057

; <label>:3057                                    ; preds = %3056, %3001
  %3058 = phi i32 [ %3002, %3001 ], [ %3053, %3056 ]
  %3059 = icmp eq i32 %3058, 1
  %3060 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 0
  %3061 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 0
  br i1 %3059, label %3062, label %3065

; <label>:3062                                    ; preds = %3057
  %3063 = load float, float* %3060, align 4
  %3064 = load float, float* %3061, align 4
  br label %3092

; <label>:3065                                    ; preds = %3057
  %3066 = load float, float* %3060, align 4
  %3067 = load float, float* %3061, align 4
  %3068 = fdiv fast float 1.000000e+00, %3067
  %3069 = fsub fast float %3066, %3068
  %3070 = icmp ugt i32 %3058, 1
  br i1 %3070, label %3071, label %3087

; <label>:3071                                    ; preds = %3065
  br label %3072

; <label>:3072                                    ; preds = %3072, %3071
  %3073 = phi float [ %3082, %3072 ], [ %3069, %3071 ]
  %3074 = phi float [ %3083, %3072 ], [ %3066, %3071 ]
  %3075 = phi i32 [ %3084, %3072 ], [ 1, %3071 ]
  %3076 = getelementptr [12 x float], [12 x float]* %77, i32 0, i32 %3075
  %3077 = load float, float* %3076, align 4
  %3078 = getelementptr [12 x float], [12 x float]* %78, i32 0, i32 %3075
  %3079 = load float, float* %3078, align 4
  %3080 = fdiv fast float 1.000000e+00, %3079
  %3081 = fsub fast float %3077, %3080
  %3082 = call float @dx.op.binary.f32(i32 36, float %3073, float %3081)  ; FMin(a,b)
  %3083 = call float @dx.op.binary.f32(i32 35, float %3074, float %3077)  ; FMax(a,b)
  %3084 = add nuw i32 %3075, 1
  %3085 = icmp eq i32 %3084, %3058
  br i1 %3085, label %3086, label %3072

; <label>:3086                                    ; preds = %3072
  br label %3087

; <label>:3087                                    ; preds = %3086, %3065
  %3088 = phi float [ %3069, %3065 ], [ %3082, %3086 ]
  %3089 = phi float [ %3066, %3065 ], [ %3083, %3086 ]
  %3090 = fsub fast float %3089, %3088
  %3091 = fdiv fast float 1.000000e+00, %3090
  br label %3092

; <label>:3092                                    ; preds = %3087, %3062
  %3093 = phi float [ %3063, %3062 ], [ %3089, %3087 ]
  %3094 = phi float [ %3064, %3062 ], [ %3091, %3087 ]
  %3095 = fadd fast float %2796, %3093
  %3096 = fmul fast float %3095, %3094
  %3097 = call float @dx.op.unary.f32(i32 7, float %3096)  ; Saturate(value)
  %3098 = fmul fast float %3097, 2.000000e+00
  %3099 = fsub fast float 1.000000e+00, %3098
  %3100 = fmul fast float %2934, %2934
  %3101 = fsub fast float %2935, %3100
  %3102 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3101)  ; FMax(a,b)
  %3103 = fdiv fast float 1.000000e+00, %3102
  %3104 = fmul fast float %2935, %2934
  %3105 = fsub fast float %2936, %3104
  %3106 = fsub fast float %3099, %2934
  %3107 = fmul fast float %3099, %3099
  %3108 = fsub fast float %3107, %2935
  %3109 = fmul fast float %3103, %3105
  %3110 = fmul fast float %3109, %3106
  %3111 = fsub fast float %3108, %3110
  %3112 = fmul fast float %2935, %2935
  %3113 = fsub fast float %2937, %3112
  %3114 = fmul fast float %3105, %3105
  %3115 = fmul fast float %3114, %3103
  %3116 = fsub fast float %3113, %3115
  %3117 = fdiv fast float %3111, %3116
  %3118 = fmul fast float %3117, %3105
  %3119 = fsub fast float %3106, %3118
  %3120 = fmul fast float %3119, %3103
  %3121 = fmul fast float %3120, %2934
  %3122 = fsub fast float 1.000000e+00, %3121
  %3123 = fmul fast float %3117, %2935
  %3124 = fsub fast float %3122, %3123
  %3125 = fmul fast float %3120, %3120
  %3126 = fmul fast float %3117, 4.000000e+00
  %3127 = fmul fast float %3126, %3124
  %3128 = fsub fast float %3125, %3127
  %3129 = call float @dx.op.unary.f32(i32 24, float %3128)  ; Sqrt(value)
  %3130 = fcmp fast oge float %3120, 0.000000e+00
  %3131 = fsub fast float -0.000000e+00, %3129
  %3132 = select i1 %3130, float %3131, float %3129
  %3133 = fsub fast float %3132, %3120
  %3134 = fdiv fast float %3133, %3117
  %3135 = fdiv fast float %3124, %3133
  %3136 = fmul fast float %3134, 5.000000e-01
  %3137 = fmul fast float %3135, 2.000000e+00
  %3138 = select i1 %3130, float %3136, float %3137
  %3139 = select i1 %3130, float %3137, float %3136
  %3140 = call float @dx.op.binary.f32(i32 35, float %3138, float %3139)  ; FMax(a,b)
  %3141 = call float @dx.op.binary.f32(i32 36, float %3138, float %3139)  ; FMin(a,b)
  %3142 = fcmp fast ogt float %3099, %3140
  %3143 = fsub fast float %3099, %3141
  %3144 = fsub fast float %3099, %3140
  %3145 = fsub fast float %3140, %3141
  %3146 = select i1 %3142, float %3144, float %3145
  %3147 = fmul float %3143, %3146
  %3148 = select i1 %3142, float %3141, float %3099
  %3149 = fcmp fast ogt float %3099, %3141
  %3150 = fmul fast float %3148, %3140
  %3151 = fadd fast float %3148, %3140
  %3152 = fmul fast float %3151, %2934
  %3153 = fadd fast float %3150, %2935
  %3154 = fsub fast float %3153, %3152
  %3155 = fdiv fast float %3154, %3147
  %3156 = select i1 %3149, float %3155, float 0.000000e+00
  %3157 = fsub fast float 1.000000e+00, %3156
  %3158 = select i1 %3142, float %3157, float %3156
  %3159 = call float @dx.op.unary.f32(i32 7, float %3158)  ; Saturate(value)
  %3160 = extractvalue %dx.types.CBufRet.f32 %2919, 3
  %3161 = fmul fast float %3160, %3159
  %3162 = fsub fast float 1.000000e+00, %3161
  br label %3163

; <label>:3163                                    ; preds = %3092, %2804, %2769, %2765, %2731
  %3164 = phi float [ 1.000000e+00, %2731 ], [ %3162, %3092 ], [ 1.000000e+00, %2769 ], [ 1.000000e+00, %2804 ], [ 1.000000e+00, %2765 ]
  %3165 = fcmp fast ogt float %2761, 0.000000e+00
  br i1 %3165, label %3166, label %3172, !dx.controlflow.hints !102

; <label>:3166                                    ; preds = %3163
  %3167 = fadd fast float %2674, %2648
  %3168 = call float @dx.op.binary.f32(i32 35, float %3167, float 0.000000e+00)  ; FMax(a,b)
  %3169 = fadd fast float %3168, 0x3F10000000000000
  %3170 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %2663, float %2664, float undef, float undef, i32 0, i32 0, i32 undef, float %3169)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3171 = extractvalue %dx.types.ResRet.f32 %3170, 0
  br label %3172

; <label>:3172                                    ; preds = %3166, %3163
  %3173 = phi float [ %3171, %3166 ], [ 1.000000e+00, %3163 ]
  %3174 = fcmp fast ogt float %2759, 0.000000e+00
  br i1 %3174, label %3175, label %3181, !dx.controlflow.hints !103

; <label>:3175                                    ; preds = %3172
  %3176 = fadd fast float %2704, %2648
  %3177 = call float @dx.op.binary.f32(i32 35, float %3176, float 0.000000e+00)  ; FMax(a,b)
  %3178 = fadd fast float %3177, 0x3F10000000000000
  %3179 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %2655, float %2656, float undef, float undef, i32 0, i32 0, i32 undef, float %3178)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3180 = extractvalue %dx.types.ResRet.f32 %3179, 0
  br label %3181

; <label>:3181                                    ; preds = %3175, %3172
  %3182 = phi float [ %3180, %3175 ], [ 1.000000e+00, %3172 ]
  %3183 = fcmp fast ogt float %2758, 0.000000e+00
  br i1 %3183, label %3184, label %3191, !dx.controlflow.hints !104

; <label>:3184                                    ; preds = %3181
  %3185 = extractvalue %dx.types.CBufRet.f32 %2673, 0
  %3186 = fadd fast float %3185, %2648
  %3187 = call float @dx.op.binary.f32(i32 35, float %3186, float 0.000000e+00)  ; FMax(a,b)
  %3188 = fadd fast float %3187, 0x3F10000000000000
  %3189 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %2640, float %2644, float undef, float undef, i32 0, i32 0, i32 undef, float %3188)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3190 = extractvalue %dx.types.ResRet.f32 %3189, 0
  br label %3191

; <label>:3191                                    ; preds = %3184, %3181
  %3192 = phi float [ %3190, %3184 ], [ 1.000000e+00, %3181 ]
  %3193 = fsub fast float %3173, %3164
  %3194 = fmul fast float %3193, %2702
  %3195 = fadd fast float %3194, %3164
  %3196 = fsub fast float %3182, %3195
  %3197 = fmul fast float %3196, %2732
  %3198 = fadd fast float %3197, %3195
  %3199 = fsub fast float %3192, %3198
  %3200 = fmul fast float %3199, %2758
  %3201 = fadd fast float %3200, %3198
  %3202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3203 = extractvalue %dx.types.CBufRet.f32 %3202, 2
  %3204 = fcmp fast ogt float %3203, 0.000000e+00
  br i1 %3204, label %3205, label %3245, !dx.controlflow.hints !105

; <label>:3205                                    ; preds = %3191
  %3206 = fcmp fast ugt float %3203, 0.000000e+00
  br i1 %3206, label %3207, label %3242

; <label>:3207                                    ; preds = %3205
  %3208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3209 = extractvalue %dx.types.CBufRet.f32 %3208, 0
  %3210 = extractvalue %dx.types.CBufRet.f32 %3208, 1
  %3211 = extractvalue %dx.types.CBufRet.f32 %3208, 2
  %3212 = extractvalue %dx.types.CBufRet.f32 %3208, 3
  %3213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3214 = extractvalue %dx.types.CBufRet.f32 %3213, 0
  %3215 = extractvalue %dx.types.CBufRet.f32 %3213, 1
  %3216 = extractvalue %dx.types.CBufRet.f32 %3213, 2
  %3217 = extractvalue %dx.types.CBufRet.f32 %3213, 3
  %3218 = extractvalue %dx.types.CBufRet.f32 %3202, 0
  %3219 = extractvalue %dx.types.CBufRet.f32 %3202, 1
  %3220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3221 = extractvalue %dx.types.CBufRet.f32 %3220, 0
  %3222 = extractvalue %dx.types.CBufRet.f32 %3220, 1
  %3223 = extractvalue %dx.types.CBufRet.f32 %3220, 2
  %3224 = fadd fast float %3221, %2617
  %3225 = fadd fast float %3222, %2618
  %3226 = fadd fast float %3223, %2619
  %3227 = fmul fast float %3224, %3209
  %3228 = call float @dx.op.tertiary.f32(i32 46, float %3210, float %3225, float %3227)  ; FMad(a,b,c)
  %3229 = call float @dx.op.tertiary.f32(i32 46, float %3211, float %3226, float %3228)  ; FMad(a,b,c)
  %3230 = fadd fast float %3229, %3212
  %3231 = fmul fast float %3224, %3214
  %3232 = call float @dx.op.tertiary.f32(i32 46, float %3215, float %3225, float %3231)  ; FMad(a,b,c)
  %3233 = call float @dx.op.tertiary.f32(i32 46, float %3216, float %3226, float %3232)  ; FMad(a,b,c)
  %3234 = fadd fast float %3233, %3217
  %3235 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %41, float %3230, float %3234, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3236 = extractvalue %dx.types.ResRet.f32 %3235, 0
  %3237 = fmul fast float %3236, %3219
  %3238 = fadd fast float %3237, %3218
  %3239 = call float @dx.op.unary.f32(i32 7, float %3238)  ; Saturate(value)
  %3240 = fmul fast float %3239, %3203
  %3241 = fsub fast float 1.000000e+00, %3240
  br label %3242

; <label>:3242                                    ; preds = %3207, %3205
  %3243 = phi float [ %3241, %3207 ], [ 1.000000e+00, %3205 ]
  %3244 = fmul fast float %3243, %3201
  br label %3245

; <label>:3245                                    ; preds = %3242, %3191, %2597
  %3246 = phi float [ 1.000000e+00, %2597 ], [ %3244, %3242 ], [ %3201, %3191 ]
  %3247 = call float @dx.op.binary.f32(i32 36, float %3246, float %3246)  ; FMin(a,b)
  %3248 = call float @dx.op.binary.f32(i32 36, float %3246, float %3247)  ; FMin(a,b)
  %3249 = fcmp fast ogt float %3248, 0.000000e+00
  br i1 %3249, label %3250, label %3410, !dx.controlflow.hints !106

; <label>:3250                                    ; preds = %3245
  %3251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3252 = extractvalue %dx.types.CBufRet.f32 %3251, 0
  %3253 = extractvalue %dx.types.CBufRet.f32 %3251, 1
  %3254 = extractvalue %dx.types.CBufRet.f32 %3251, 2
  %3255 = extractvalue %dx.types.CBufRet.f32 %3251, 3
  %3256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3257 = extractvalue %dx.types.CBufRet.f32 %3256, 0
  %3258 = extractvalue %dx.types.CBufRet.f32 %3256, 1
  %3259 = extractvalue %dx.types.CBufRet.f32 %3256, 2
  %3260 = extractvalue %dx.types.CBufRet.f32 %3256, 3
  %3261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3262 = extractvalue %dx.types.CBufRet.f32 %3261, 0
  %3263 = extractvalue %dx.types.CBufRet.f32 %3261, 1
  %3264 = extractvalue %dx.types.CBufRet.f32 %3261, 2
  %3265 = extractvalue %dx.types.CBufRet.f32 %3261, 3
  %3266 = fmul fast float %3252, %2617
  %3267 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %3253, float %3266)  ; FMad(a,b,c)
  %3268 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %3254, float %3267)  ; FMad(a,b,c)
  %3269 = fadd fast float %3268, %3255
  %3270 = fmul fast float %3257, %2617
  %3271 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %3258, float %3270)  ; FMad(a,b,c)
  %3272 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %3259, float %3271)  ; FMad(a,b,c)
  %3273 = fadd fast float %3272, %3260
  %3274 = fmul fast float %3262, %2617
  %3275 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %3263, float %3274)  ; FMad(a,b,c)
  %3276 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %3264, float %3275)  ; FMad(a,b,c)
  %3277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3278 = extractvalue %dx.types.CBufRet.f32 %3277, 0
  %3279 = extractvalue %dx.types.CBufRet.f32 %3277, 1
  %3280 = extractvalue %dx.types.CBufRet.f32 %3277, 3
  %3281 = fmul fast float %3280, %3269
  %3282 = fmul fast float %3280, %3273
  %3283 = fadd fast float %3281, %3278
  %3284 = fadd fast float %3282, %3279
  %3285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3286 = extractvalue %dx.types.CBufRet.f32 %3285, 0
  %3287 = extractvalue %dx.types.CBufRet.f32 %3285, 1
  %3288 = fsub fast float %3283, %3286
  %3289 = fsub fast float %3284, %3287
  %3290 = fcmp fast olt float %3288, 0.000000e+00
  %3291 = fcmp fast olt float %3289, 0.000000e+00
  %3292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3293 = extractvalue %dx.types.CBufRet.f32 %3292, 0
  %3294 = extractvalue %dx.types.CBufRet.f32 %3292, 1
  %3295 = extractvalue %dx.types.CBufRet.f32 %3292, 2
  %3296 = extractvalue %dx.types.CBufRet.f32 %3292, 3
  %3297 = select i1 %3290, float %3293, float %3295
  %3298 = select i1 %3291, float %3294, float %3296
  %3299 = fmul fast float %3297, %3288
  %3300 = fmul fast float %3298, %3289
  %3301 = call float @dx.op.unary.f32(i32 6, float %3299)  ; FAbs(value)
  %3302 = call float @dx.op.unary.f32(i32 6, float %3300)  ; FAbs(value)
  %3303 = extractvalue %dx.types.CBufRet.f32 %2612, 0
  %3304 = call float @dx.op.binary.f32(i32 35, float %3301, float %3302)  ; FMax(a,b)
  %3305 = fsub fast float %3303, %3304
  %3306 = call float @dx.op.unary.f32(i32 7, float %3305)  ; Saturate(value)
  %3307 = fcmp fast ogt float %3306, 0.000000e+00
  br i1 %3307, label %3308, label %3349, !dx.controlflow.hints !107

; <label>:3308                                    ; preds = %3250
  %3309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %44, float %3283, float %3284, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3310 = extractvalue %dx.types.ResRet.f32 %3309, 1
  %3311 = fcmp fast ogt float %3310, 0.000000e+00
  br i1 %3311, label %3312, label %3344

; <label>:3312                                    ; preds = %3308
  %3313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %44, float %3283, float %3284, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3314 = extractvalue %dx.types.ResRet.f32 %3313, 0
  %3315 = extractvalue %dx.types.ResRet.f32 %3313, 1
  %3316 = extractvalue %dx.types.ResRet.f32 %3313, 2
  %3317 = extractvalue %dx.types.ResRet.f32 %3313, 3
  %3318 = fsub fast float 1.000000e+00, %3265
  %3319 = fsub fast float %3318, %3276
  %3320 = fmul fast float %3319, 0x400921FB60000000
  %3321 = fadd fast float %3320, 0x3FF921FB60000000
  %3322 = call float @dx.op.unary.f32(i32 13, float %3321)  ; Sin(value)
  %3323 = fadd fast float %3322, -1.000000e+00
  %3324 = fmul fast float %3323, 0x3FD45F3060000000
  %3325 = fmul fast float %3319, 0x401921FB60000000
  %3326 = fadd fast float %3325, 0x400921FB60000000
  %3327 = call float @dx.op.unary.f32(i32 13, float %3326)  ; Sin(value)
  %3328 = fadd fast float %3327, 0x3E7777A5C0000000
  %3329 = fmul fast float %3328, 0x3FC45F3060000000
  %3330 = fmul fast float %3319, 0x4022D97C80000000
  %3331 = fadd fast float %3330, 0x4012D97C80000000
  %3332 = call float @dx.op.unary.f32(i32 13, float %3331)  ; Sin(value)
  %3333 = fadd fast float %3332, 1.000000e+00
  %3334 = fmul fast float %3333, 0x3FBB2995E0000000
  %3335 = fmul fast float %3319, 0x402921FB60000000
  %3336 = fadd fast float %3335, 0x401921FB60000000
  %3337 = call float @dx.op.unary.f32(i32 13, float %3336)  ; Sin(value)
  %3338 = fadd fast float %3337, 0xBE8777A5C0000000
  %3339 = fmul fast float %3338, 0x3FB45F3060000000
  %3340 = call float @dx.op.dot4.f32(i32 56, float %3314, float %3315, float %3316, float %3317, float %3324, float %3329, float %3334, float %3339)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3341 = fmul fast float %3340, 0xBFF7154760000000
  %3342 = call float @dx.op.unary.f32(i32 21, float %3341)  ; Exp(value)
  %3343 = call float @dx.op.unary.f32(i32 7, float %3342)  ; Saturate(value)
  br label %3344

; <label>:3344                                    ; preds = %3312, %3308
  %3345 = phi float [ %3343, %3312 ], [ 1.000000e+00, %3308 ]
  %3346 = fadd fast float %3345, -1.000000e+00
  %3347 = fmul fast float %3346, %3306
  %3348 = fadd fast float %3347, 1.000000e+00
  br label %3349

; <label>:3349                                    ; preds = %3344, %3250
  %3350 = phi float [ %3348, %3344 ], [ 1.000000e+00, %3250 ]
  %3351 = fmul fast float %3350, %3246
  %3352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3353 = extractvalue %dx.types.CBufRet.f32 %3352, 0
  %3354 = extractvalue %dx.types.CBufRet.f32 %3352, 1
  %3355 = extractvalue %dx.types.CBufRet.f32 %3352, 2
  %3356 = fadd fast float %3353, %133
  %3357 = fadd fast float %3354, %134
  %3358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3359 = extractvalue %dx.types.CBufRet.f32 %3358, 1
  %3360 = fsub fast float -0.000000e+00, %3356
  %3361 = fsub fast float -0.000000e+00, %3357
  %3362 = fsub fast float %2167, %3355
  %3363 = fadd fast float %3362, %3359
  %3364 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3360, float %3361, float %3363)  ; Dot3(ax,ay,az,bx,by,bz)
  %3365 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2598, float %2599, float %2600)  ; Dot3(ax,ay,az,bx,by,bz)
  %3366 = fdiv fast float 1.000000e+00, %3365
  %3367 = fmul fast float %3366, %3364
  %3368 = fmul fast float %2598, %3367
  %3369 = fmul fast float %2599, %3367
  %3370 = fadd fast float %3368, %3356
  %3371 = fadd fast float %3369, %3357
  %3372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3373 = extractvalue %dx.types.CBufRet.f32 %3372, 0
  %3374 = extractvalue %dx.types.CBufRet.f32 %3372, 1
  %3375 = fsub fast float %3370, %3373
  %3376 = fsub fast float %3371, %3374
  %3377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3378 = extractvalue %dx.types.CBufRet.f32 %3377, 2
  %3379 = extractvalue %dx.types.CBufRet.f32 %3377, 3
  %3380 = fmul fast float %3375, %3378
  %3381 = fmul fast float %3376, %3379
  %3382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3383 = extractvalue %dx.types.CBufRet.i32 %3382, 3
  %3384 = icmp eq i32 %3383, 0
  br i1 %3384, label %3390, label %3385

; <label>:3385                                    ; preds = %3349
  %3386 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %3380, float %3381, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3387 = extractvalue %dx.types.ResRet.f32 %3386, 0
  %3388 = extractvalue %dx.types.ResRet.f32 %3386, 1
  %3389 = extractvalue %dx.types.ResRet.f32 %3386, 2
  br label %3395

; <label>:3390                                    ; preds = %3349
  %3391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %3380, float %3381, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3392 = extractvalue %dx.types.ResRet.f32 %3391, 0
  %3393 = extractvalue %dx.types.ResRet.f32 %3391, 1
  %3394 = extractvalue %dx.types.ResRet.f32 %3391, 2
  br label %3395

; <label>:3395                                    ; preds = %3390, %3385
  %3396 = phi float [ %3387, %3385 ], [ %3392, %3390 ]
  %3397 = phi float [ %3388, %3385 ], [ %3393, %3390 ]
  %3398 = phi float [ %3389, %3385 ], [ %3394, %3390 ]
  %3399 = extractvalue %dx.types.CBufRet.f32 %3358, 2
  %3400 = fmul fast float %3399, %3396
  %3401 = extractvalue %dx.types.CBufRet.f32 %3358, 0
  %3402 = fsub fast float %3367, %3401
  %3403 = fsub fast float %3402, %3400
  %3404 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3403)  ; FMax(a,b)
  %3405 = fmul fast float %3404, %3397
  %3406 = call float @dx.op.binary.f32(i32 36, float %3398, float %3405)  ; FMin(a,b)
  %3407 = fmul fast float %3406, 0xBFF7154760000000
  %3408 = call float @dx.op.unary.f32(i32 21, float %3407)  ; Exp(value)
  %3409 = fmul fast float %3351, %3408
  br label %3410

; <label>:3410                                    ; preds = %3395, %3245
  %3411 = phi float [ %3409, %3395 ], [ %3246, %3245 ]
  %3412 = call float @dx.op.binary.f32(i32 36, float %3411, float %3411)  ; FMin(a,b)
  %3413 = call float @dx.op.binary.f32(i32 36, float %3411, float %3412)  ; FMin(a,b)
  %3414 = fcmp fast ogt float %3413, 0.000000e+00
  br i1 %3414, label %3415, label %3801, !dx.controlflow.hints !108

; <label>:3415                                    ; preds = %3410
  %3416 = fmul fast float %3411, %2609
  %3417 = fmul fast float %3411, %2610
  %3418 = fmul fast float %3411, %2611
  %3419 = fsub fast float %135, %1955
  %3420 = fcmp fast ogt float %3419, 0.000000e+00
  %3421 = fmul fast float %2598, 5.120000e+02
  %3422 = fmul fast float %2599, 5.120000e+02
  %3423 = fmul fast float %2600, 5.120000e+02
  %3424 = fadd fast float %3423, %135
  %3425 = fsub fast float %1955, %3424
  %3426 = fmul fast float %3425, 2.000000e+00
  %3427 = fadd fast float %3426, %3424
  %3428 = select i1 %3420, float %3427, float %3424
  %3429 = fsub fast float %3428, %135
  %3430 = call float @dx.op.dot3.f32(i32 55, float %3421, float %3422, float %3429, float %3421, float %3422, float %3429)  ; Dot3(ax,ay,az,bx,by,bz)
  %3431 = call float @dx.op.unary.f32(i32 25, float %3430)  ; Rsqrt(value)
  %3432 = fmul fast float %3431, %3421
  %3433 = fmul fast float %3431, %3422
  %3434 = fmul fast float %3431, %3429
  %3435 = fsub fast float %1955, %135
  %3436 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3435)  ; Dot3(ax,ay,az,bx,by,bz)
  %3437 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3432, float %3433, float %3434)  ; Dot3(ax,ay,az,bx,by,bz)
  %3438 = fdiv fast float 1.000000e+00, %3437
  %3439 = fmul fast float %3438, %3436
  %3440 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3419, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3441 = fcmp fast ogt float %3440, 0.000000e+00
  %3442 = fcmp fast olt float %3440, 0.000000e+00
  %3443 = zext i1 %3441 to i32
  %3444 = zext i1 %3442 to i32
  %3445 = sub nsw i32 %3443, %3444
  %3446 = sitofp i32 %3445 to float
  %3447 = fsub fast float %3428, %1955
  %3448 = call float @dx.op.dot3.f32(i32 55, float %3421, float %3422, float %3447, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3449 = fcmp fast ogt float %3448, 0.000000e+00
  %3450 = fcmp fast olt float %3448, 0.000000e+00
  %3451 = zext i1 %3449 to i32
  %3452 = zext i1 %3450 to i32
  %3453 = sub nsw i32 %3451, %3452
  %3454 = sitofp i32 %3453 to float
  %3455 = fcmp fast une float %3446, %3454
  br i1 %3455, label %3456, label %3466

; <label>:3456                                    ; preds = %3415
  %3457 = fmul fast float %3439, %3434
  %3458 = fmul fast float %3439, %3433
  %3459 = fmul fast float %3439, %3432
  %3460 = fmul fast float %3459, %3459
  %3461 = fmul fast float %3458, %3458
  %3462 = fadd fast float %3460, %3461
  %3463 = fmul fast float %3457, %3457
  %3464 = fadd fast float %3462, %3463
  %3465 = call float @dx.op.unary.f32(i32 24, float %3464)  ; Sqrt(value)
  br label %3476

; <label>:3466                                    ; preds = %3415
  %3467 = icmp slt i32 %3445, 0
  br i1 %3467, label %3468, label %3476

; <label>:3468                                    ; preds = %3466
  %3469 = fsub fast float %135, %3428
  %3470 = fmul fast float %3421, %3421
  %3471 = fmul fast float %3422, %3422
  %3472 = fadd fast float %3470, %3471
  %3473 = fmul fast float %3469, %3469
  %3474 = fadd fast float %3472, %3473
  %3475 = call float @dx.op.unary.f32(i32 24, float %3474)  ; Sqrt(value)
  br label %3476

; <label>:3476                                    ; preds = %3468, %3466, %3456
  %3477 = phi float [ %3465, %3456 ], [ %3475, %3468 ], [ 0.000000e+00, %3466 ]
  %3478 = fsub fast float -0.000000e+00, %3477
  %3479 = select i1 %3420, float -0.000000e+00, float %3478
  %3480 = fmul fast float %1956, 0x3FF7154760000000
  %3481 = fmul fast float %3480, %3479
  %3482 = fmul fast float %1957, 0x3FF7154760000000
  %3483 = fmul fast float %3482, %3479
  %3484 = fmul fast float %1958, 0x3FF7154760000000
  %3485 = fmul fast float %3484, %3479
  %3486 = call float @dx.op.unary.f32(i32 21, float %3481)  ; Exp(value)
  %3487 = call float @dx.op.unary.f32(i32 21, float %3483)  ; Exp(value)
  %3488 = call float @dx.op.unary.f32(i32 21, float %3485)  ; Exp(value)
  %3489 = call float @dx.op.unary.f32(i32 7, float %3486)  ; Saturate(value)
  %3490 = call float @dx.op.unary.f32(i32 7, float %3487)  ; Saturate(value)
  %3491 = call float @dx.op.unary.f32(i32 7, float %3488)  ; Saturate(value)
  %3492 = fmul fast float %3416, %3489
  %3493 = fmul fast float %3417, %3490
  %3494 = fmul fast float %3418, %3491
  %3495 = fsub fast float %2598, %2155
  %3496 = fsub fast float %2599, %2154
  %3497 = fsub fast float %2600, %2153
  %3498 = call float @dx.op.dot3.f32(i32 55, float %3495, float %3496, float %3497, float %3495, float %3496, float %3497)  ; Dot3(ax,ay,az,bx,by,bz)
  %3499 = call float @dx.op.unary.f32(i32 25, float %3498)  ; Rsqrt(value)
  %3500 = fmul fast float %3499, %3495
  %3501 = fmul fast float %3499, %3496
  %3502 = fmul fast float %3499, %3497
  %3503 = call float @dx.op.dot3.f32(i32 55, float %2598, float %2599, float %2600, float %2159, float %2160, float %2161)  ; Dot3(ax,ay,az,bx,by,bz)
  %3504 = call float @dx.op.dot3.f32(i32 55, float %2152, float %2151, float %2150, float %3500, float %3501, float %3502)  ; Dot3(ax,ay,az,bx,by,bz)
  %3505 = call float @dx.op.unary.f32(i32 7, float %3503)  ; Saturate(value)
  %3506 = fmul fast float %3505, %3505
  %3507 = fmul fast float %3506, %2183
  %3508 = call float @dx.op.unary.f32(i32 7, float %3507)  ; Saturate(value)
  %3509 = fmul fast float %3508, %3505
  %3510 = call float @dx.op.dot3.f32(i32 55, float %2159, float %2160, float %2161, float %3500, float %3501, float %3502)  ; Dot3(ax,ay,az,bx,by,bz)
  %3511 = fmul fast float %3510, %3510
  %3512 = call float @dx.op.unary.f32(i32 6, float %3503)  ; FAbs(value)
  %3513 = call float @dx.op.binary.f32(i32 35, float %2566, float 0x3F847AE140000000)  ; FMax(a,b)
  %3514 = fmul fast float %3513, %3513
  %3515 = fmul fast float %3514, %3514
  %3516 = fsub fast float 1.000000e+00, %3515
  %3517 = fmul fast float %2170, %2170
  %3518 = fmul fast float %3517, %3516
  %3519 = fadd fast float %3518, %3515
  %3520 = bitcast float %3519 to i32
  %3521 = ashr i32 %3520, 1
  %3522 = add nsw i32 %3521, 532487669
  %3523 = bitcast i32 %3522 to float
  %3524 = fadd fast float %3523, %2170
  %3525 = fmul fast float %3515, %3511
  %3526 = fsub fast float 1.000000e+00, %3511
  %3527 = fadd fast float %3526, %3525
  %3528 = fmul fast float %3512, %3512
  %3529 = fmul fast float %3528, %3516
  %3530 = fadd fast float %3529, %3515
  %3531 = bitcast float %3530 to i32
  %3532 = ashr i32 %3531, 1
  %3533 = add nsw i32 %3532, 532487669
  %3534 = bitcast i32 %3533 to float
  %3535 = fadd fast float %3534, %3512
  %3536 = fmul fast float %3527, %3527
  %3537 = fmul fast float %3536, %3524
  %3538 = fmul fast float %3537, %3535
  %3539 = fdiv fast float 0x3FF0A00000000000, %3538
  %3540 = fmul fast float %3539, %3515
  %3541 = fmul fast float %2428, 0x3FF9999980000000
  %3542 = fsub fast float 5.000000e+00, %3541
  %3543 = call float @dx.op.unary.f32(i32 6, float %3504)  ; FAbs(value)
  %3544 = fsub fast float 1.000000e+00, %3543
  %3545 = fmul fast float %2428, 0x41D9660740000000
  %3546 = fadd fast float %3545, 0xC1EFBF8940000000
  %3547 = bitcast float %3544 to i32
  %3548 = sitofp i32 %3547 to float
  %3549 = fmul fast float %3548, %3542
  %3550 = fadd fast float %3546, %3549
  %3551 = fptosi float %3550 to i32
  %3552 = bitcast i32 %3551 to float
  %3553 = fsub fast float 1.000000e+00, %2162
  %3554 = fsub fast float 1.000000e+00, %2163
  %3555 = fsub fast float 1.000000e+00, %2168
  %3556 = fmul fast float %3552, %3553
  %3557 = fmul fast float %3552, %3554
  %3558 = fmul fast float %3552, %3555
  %3559 = fadd fast float %3556, %2162
  %3560 = fadd fast float %3557, %2163
  %3561 = fadd fast float %3558, %2168
  br i1 %2451, label %3562, label %3585

; <label>:3562                                    ; preds = %3476
  %3563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1501, float %3543, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3564 = extractvalue %dx.types.ResRet.f32 %3563, 0
  %3565 = extractvalue %dx.types.ResRet.f32 %3563, 1
  %3566 = extractvalue %dx.types.ResRet.f32 %3563, 2
  %3567 = fadd fast float %3564, -5.000000e-01
  %3568 = fadd fast float %3565, -5.000000e-01
  %3569 = fadd fast float %3566, -5.000000e-01
  %3570 = fmul fast float %2162, 4.000000e+00
  %3571 = fmul fast float %3570, %3553
  %3572 = fmul fast float %3571, %3567
  %3573 = fmul fast float %2163, 4.000000e+00
  %3574 = fmul fast float %3573, %3554
  %3575 = fmul fast float %3574, %3568
  %3576 = fmul fast float %2168, 4.000000e+00
  %3577 = fmul fast float %3576, %3555
  %3578 = fmul fast float %3577, %3569
  %3579 = fadd fast float %3572, %3559
  %3580 = fadd fast float %3575, %3560
  %3581 = fadd fast float %3578, %3561
  %3582 = call float @dx.op.unary.f32(i32 7, float %3579)  ; Saturate(value)
  %3583 = call float @dx.op.unary.f32(i32 7, float %3580)  ; Saturate(value)
  %3584 = call float @dx.op.unary.f32(i32 7, float %3581)  ; Saturate(value)
  br label %3585

; <label>:3585                                    ; preds = %3562, %3476
  %3586 = phi float [ %3582, %3562 ], [ %3559, %3476 ]
  %3587 = phi float [ %3583, %3562 ], [ %3560, %3476 ]
  %3588 = phi float [ %3584, %3562 ], [ %3561, %3476 ]
  %3589 = fmul fast float %3503, 9.843750e-01
  %3590 = fadd fast float %3589, 7.812500e-03
  %3591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %3590, float %2432, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 0
  %3593 = extractvalue %dx.types.ResRet.f32 %3591, 1
  %3594 = extractvalue %dx.types.ResRet.f32 %3591, 2
  %3595 = extractvalue %dx.types.ResRet.f32 %3591, 3
  %3596 = fsub fast float %3594, %3592
  %3597 = fsub fast float %3595, %3593
  %3598 = fmul fast float %3596, %2438
  %3599 = fmul fast float %3597, %2438
  %3600 = fadd fast float %3598, %3592
  %3601 = fadd fast float %3599, %3593
  %3602 = fmul fast float %3600, %2162
  %3603 = fmul fast float %3600, %2163
  %3604 = fmul fast float %3600, %2168
  %3605 = fadd fast float %3602, %3601
  %3606 = fadd fast float %3603, %3601
  %3607 = fadd fast float %3604, %3601
  br i1 %2451, label %3608, label %3631

; <label>:3608                                    ; preds = %3585
  %3609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1501, float %3503, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3610 = extractvalue %dx.types.ResRet.f32 %3609, 0
  %3611 = extractvalue %dx.types.ResRet.f32 %3609, 1
  %3612 = extractvalue %dx.types.ResRet.f32 %3609, 2
  %3613 = fadd fast float %3610, -5.000000e-01
  %3614 = fadd fast float %3611, -5.000000e-01
  %3615 = fadd fast float %3612, -5.000000e-01
  %3616 = fmul fast float %2162, 4.000000e+00
  %3617 = fmul fast float %3616, %3553
  %3618 = fmul fast float %3617, %3613
  %3619 = fmul fast float %2163, 4.000000e+00
  %3620 = fmul fast float %3619, %3554
  %3621 = fmul fast float %3620, %3614
  %3622 = fmul fast float %2168, 4.000000e+00
  %3623 = fmul fast float %3622, %3555
  %3624 = fmul fast float %3623, %3615
  %3625 = fadd fast float %3618, %3605
  %3626 = fadd fast float %3621, %3606
  %3627 = fadd fast float %3624, %3607
  %3628 = call float @dx.op.unary.f32(i32 7, float %3625)  ; Saturate(value)
  %3629 = call float @dx.op.unary.f32(i32 7, float %3626)  ; Saturate(value)
  %3630 = call float @dx.op.unary.f32(i32 7, float %3627)  ; Saturate(value)
  br label %3631

; <label>:3631                                    ; preds = %3608, %3585
  %3632 = phi float [ %3628, %3608 ], [ %3605, %3585 ]
  %3633 = phi float [ %3629, %3608 ], [ %3606, %3585 ]
  %3634 = phi float [ %3630, %3608 ], [ %3607, %3585 ]
  %3635 = call float @dx.op.binary.f32(i32 35, float %3633, float %3634)  ; FMax(a,b)
  %3636 = call float @dx.op.binary.f32(i32 35, float %3632, float %3635)  ; FMax(a,b)
  %3637 = fsub fast float 1.000000e+00, %3636
  %3638 = call float @dx.op.binary.f32(i32 35, float %3512, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3639 = fdiv fast float %896, %3638
  %3640 = fmul fast float %2506, %3639
  %3641 = fmul fast float %2508, %3639
  %3642 = fmul fast float %2510, %3639
  %3643 = call float @dx.op.unary.f32(i32 21, float %3640)  ; Exp(value)
  %3644 = call float @dx.op.unary.f32(i32 21, float %3641)  ; Exp(value)
  %3645 = call float @dx.op.unary.f32(i32 21, float %3642)  ; Exp(value)
  %3646 = call float @dx.op.unary.f32(i32 7, float %3643)  ; Saturate(value)
  %3647 = call float @dx.op.unary.f32(i32 7, float %3644)  ; Saturate(value)
  %3648 = call float @dx.op.unary.f32(i32 7, float %3645)  ; Saturate(value)
  %3649 = select i1 %2503, float %3646, float 0.000000e+00
  %3650 = select i1 %2504, float %3647, float 0.000000e+00
  %3651 = select i1 %2505, float %3648, float 0.000000e+00
  %3652 = fsub fast float -0.000000e+00, %2159
  %3653 = fsub fast float -0.000000e+00, %2160
  %3654 = fsub fast float -0.000000e+00, %2161
  %3655 = call float @dx.op.dot3.f32(i32 55, float %2598, float %2599, float %2600, float %3652, float %3653, float %3654)  ; Dot3(ax,ay,az,bx,by,bz)
  %3656 = call float @dx.op.unary.f32(i32 7, float %3655)  ; Saturate(value)
  %3657 = fmul fast float %3656, 9.843750e-01
  %3658 = fadd fast float %3657, 7.812500e-03
  %3659 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %3658, float %2432, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3660 = extractvalue %dx.types.ResRet.f32 %3659, 0
  %3661 = extractvalue %dx.types.ResRet.f32 %3659, 1
  %3662 = extractvalue %dx.types.ResRet.f32 %3659, 2
  %3663 = extractvalue %dx.types.ResRet.f32 %3659, 3
  %3664 = fsub fast float %3662, %3660
  %3665 = fsub fast float %3663, %3661
  %3666 = fmul fast float %3664, %2438
  %3667 = fmul fast float %3665, %2438
  %3668 = fadd fast float %3666, %3660
  %3669 = fadd fast float %3667, %3661
  %3670 = fmul fast float %3668, %2162
  %3671 = fmul fast float %3668, %2163
  %3672 = fmul fast float %3668, %2168
  %3673 = fadd fast float %3670, %3669
  %3674 = fadd fast float %3671, %3669
  %3675 = fadd fast float %3672, %3669
  br i1 %2451, label %3676, label %3699

; <label>:3676                                    ; preds = %3631
  %3677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1501, float %3656, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3678 = extractvalue %dx.types.ResRet.f32 %3677, 0
  %3679 = extractvalue %dx.types.ResRet.f32 %3677, 1
  %3680 = extractvalue %dx.types.ResRet.f32 %3677, 2
  %3681 = fadd fast float %3678, -5.000000e-01
  %3682 = fadd fast float %3679, -5.000000e-01
  %3683 = fadd fast float %3680, -5.000000e-01
  %3684 = fmul fast float %2162, 4.000000e+00
  %3685 = fmul fast float %3684, %3553
  %3686 = fmul fast float %3685, %3681
  %3687 = fmul fast float %2163, 4.000000e+00
  %3688 = fmul fast float %3687, %3554
  %3689 = fmul fast float %3688, %3682
  %3690 = fmul fast float %2168, 4.000000e+00
  %3691 = fmul fast float %3690, %3555
  %3692 = fmul fast float %3691, %3683
  %3693 = fadd fast float %3686, %3673
  %3694 = fadd fast float %3689, %3674
  %3695 = fadd fast float %3692, %3675
  %3696 = call float @dx.op.unary.f32(i32 7, float %3693)  ; Saturate(value)
  %3697 = call float @dx.op.unary.f32(i32 7, float %3694)  ; Saturate(value)
  %3698 = call float @dx.op.unary.f32(i32 7, float %3695)  ; Saturate(value)
  br label %3699

; <label>:3699                                    ; preds = %3676, %3631
  %3700 = phi float [ %3696, %3676 ], [ %3673, %3631 ]
  %3701 = phi float [ %3697, %3676 ], [ %3674, %3631 ]
  %3702 = phi float [ %3698, %3676 ], [ %3675, %3631 ]
  %3703 = call float @dx.op.binary.f32(i32 35, float %3701, float %3702)  ; FMax(a,b)
  %3704 = call float @dx.op.binary.f32(i32 35, float %3700, float %3703)  ; FMax(a,b)
  %3705 = fsub fast float 1.000000e+00, %3704
  %3706 = fmul fast float %2566, %2571
  %3707 = fadd fast float %2573, %3706
  %3708 = call float @dx.op.unary.f32(i32 7, float %3707)  ; Saturate(value)
  %3709 = fsub fast float %2598, %2176
  %3710 = fsub fast float %2599, %2177
  %3711 = fsub fast float %2600, %2178
  %3712 = call float @dx.op.dot3.f32(i32 55, float %3709, float %3710, float %3711, float %3709, float %3710, float %3711)  ; Dot3(ax,ay,az,bx,by,bz)
  %3713 = call float @dx.op.unary.f32(i32 25, float %3712)  ; Rsqrt(value)
  %3714 = fmul fast float %3713, %3709
  %3715 = fmul fast float %3713, %3710
  %3716 = fmul fast float %3713, %3711
  %3717 = call float @dx.op.dot3.f32(i32 55, float %3652, float %3653, float %3654, float %3714, float %3715, float %3716)  ; Dot3(ax,ay,az,bx,by,bz)
  %3718 = fmul fast float %3717, %3717
  %3719 = call float @dx.op.unary.f32(i32 6, float %3656)  ; FAbs(value)
  %3720 = call float @dx.op.binary.f32(i32 35, float %3708, float 0x3F847AE140000000)  ; FMax(a,b)
  %3721 = fmul fast float %3720, %3720
  %3722 = fmul fast float %3721, %3721
  %3723 = fsub fast float 1.000000e+00, %3722
  %3724 = fmul fast float %3517, %3723
  %3725 = fadd fast float %3724, %3722
  %3726 = bitcast float %3725 to i32
  %3727 = ashr i32 %3726, 1
  %3728 = add nsw i32 %3727, 532487669
  %3729 = bitcast i32 %3728 to float
  %3730 = fadd fast float %3729, %2170
  %3731 = fmul fast float %3722, %3718
  %3732 = fsub fast float 1.000000e+00, %3718
  %3733 = fadd fast float %3732, %3731
  %3734 = fmul fast float %3719, %3719
  %3735 = fmul fast float %3734, %3723
  %3736 = fadd fast float %3735, %3722
  %3737 = bitcast float %3736 to i32
  %3738 = ashr i32 %3737, 1
  %3739 = add nsw i32 %3738, 532487669
  %3740 = bitcast i32 %3739 to float
  %3741 = fadd fast float %3740, %3719
  %3742 = fmul fast float %3733, %3733
  %3743 = fmul fast float %3742, %3730
  %3744 = fmul fast float %3743, %3741
  %3745 = fdiv fast float 0x3FF0A00000000000, %3744
  %3746 = fmul fast float %3745, %3722
  %3747 = fmul fast float %3656, %3649
  %3748 = fmul fast float %3656, %3650
  %3749 = fmul fast float %3656, %3651
  %3750 = fmul fast float %3747, %3705
  %3751 = fmul fast float %3750, %3746
  %3752 = fmul fast float %3748, %3705
  %3753 = fmul fast float %3752, %3746
  %3754 = fmul fast float %3749, %3705
  %3755 = fmul fast float %3754, %3746
  %3756 = fmul fast float %3586, %3540
  %3757 = fmul fast float %3587, %3540
  %3758 = fmul fast float %3588, %3540
  %3759 = fsub fast float 1.000000e+00, %3504
  %3760 = bitcast float %3759 to i32
  %3761 = sitofp i32 %3760 to float
  %3762 = fmul fast float %3761, 5.000000e+00
  %3763 = fadd fast float %3762, 0xC1EFBF8940000000
  %3764 = fptosi float %3763 to i32
  %3765 = bitcast i32 %3764 to float
  %3766 = fmul fast float %3765, %1500
  %3767 = fmul fast float %3637, %3766
  %3768 = fmul fast float %3767, %2498
  %3769 = fmul fast float %3767, %2499
  %3770 = fmul fast float %3767, %2500
  %3771 = fadd fast float %3768, %3756
  %3772 = fadd fast float %3769, %3757
  %3773 = fadd fast float %3770, %3758
  %3774 = fmul fast float %3771, %3509
  %3775 = fmul fast float %3772, %3509
  %3776 = fmul fast float %3773, %3509
  %3777 = fmul fast float %3509, %3492
  %3778 = fmul fast float %3777, %3637
  %3779 = fmul fast float %3509, %3493
  %3780 = fmul fast float %3779, %3637
  %3781 = fmul fast float %3509, %3494
  %3782 = fmul fast float %3781, %3637
  %3783 = fadd fast float %3774, %3751
  %3784 = fadd fast float %3775, %3753
  %3785 = fadd fast float %3776, %3755
  %3786 = fmul fast float %3783, %3492
  %3787 = fmul fast float %3784, %3493
  %3788 = fmul fast float %3785, %3494
  %3789 = fadd fast float %3778, %2588
  %3790 = fmul fast float %3789, %1524
  %3791 = fadd fast float %3780, %2590
  %3792 = fmul fast float %3791, %1524
  %3793 = fadd fast float %3782, %2592
  %3794 = fmul fast float %3793, %1524
  %3795 = fadd fast float %3786, %2551
  %3796 = fmul fast float %3795, %1524
  %3797 = fadd fast float %3787, %2554
  %3798 = fmul fast float %3797, %1524
  %3799 = fadd fast float %3788, %2557
  %3800 = fmul fast float %3799, %1524
  br label %3801

; <label>:3801                                    ; preds = %3699, %3410, %2478
  %3802 = phi float [ %2552, %2478 ], [ %2552, %3410 ], [ %3796, %3699 ]
  %3803 = phi float [ %2555, %2478 ], [ %2555, %3410 ], [ %3798, %3699 ]
  %3804 = phi float [ %2558, %2478 ], [ %2558, %3410 ], [ %3800, %3699 ]
  %3805 = phi float [ %2589, %2478 ], [ %2589, %3410 ], [ %3790, %3699 ]
  %3806 = phi float [ %2591, %2478 ], [ %2591, %3410 ], [ %3792, %3699 ]
  %3807 = phi float [ %2593, %2478 ], [ %2593, %3410 ], [ %3794, %3699 ]
  %3808 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3809 = extractvalue %dx.types.CBufRet.i32 %3808, 0
  %3810 = icmp eq i32 %3809, 0
  br i1 %3810, label %4585, label %3811

; <label>:3811                                    ; preds = %3801
  %3812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3813 = extractvalue %dx.types.CBufRet.f32 %3812, 2
  %3814 = extractvalue %dx.types.CBufRet.f32 %3812, 3
  %3815 = fmul fast float %3813, %85
  %3816 = fmul fast float %3814, %86
  %3817 = fptoui float %3815 to i32
  %3818 = fptoui float %3816 to i32
  %3819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3820 = extractvalue %dx.types.CBufRet.f32 %3819, 0
  %3821 = extractvalue %dx.types.CBufRet.f32 %3819, 2
  %3822 = extractvalue %dx.types.CBufRet.f32 %3819, 3
  %3823 = fadd fast float %76, -4.000000e+00
  %3824 = call float @dx.op.binary.f32(i32 35, float %3823, float 0.000000e+00)  ; FMax(a,b)
  %3825 = fadd fast float %3824, %3820
  %3826 = fmul fast float %3825, %3821
  %3827 = call float @dx.op.unary.f32(i32 23, float %3826)  ; Log(value)
  %3828 = fmul fast float %3827, %3822
  %3829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3830 = extractvalue %dx.types.CBufRet.f32 %3829, 2
  %3831 = fmul fast float %3828, %3830
  %3832 = call float @dx.op.unary.f32(i32 7, float %3831)  ; Saturate(value)
  %3833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3834 = extractvalue %dx.types.CBufRet.i32 %3833, 1
  %3835 = add i32 %3834, -1
  %3836 = uitofp i32 %3834 to float
  %3837 = fmul fast float %3836, %3832
  %3838 = fptoui float %3837 to i32
  %3839 = call i32 @dx.op.binary.i32(i32 40, i32 %3838, i32 %3835)  ; UMin(a,b)
  %3840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3841 = extractvalue %dx.types.CBufRet.i32 %3840, 2
  %3842 = extractvalue %dx.types.CBufRet.i32 %3840, 3
  %3843 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3818, i32 %3841, i32 %3817)  ; UMad(a,b,c)
  %3844 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3839, i32 %3842, i32 %3843)  ; UMad(a,b,c)
  %3845 = add nsw i32 %3809, -1
  %3846 = call i32 @dx.op.binary.i32(i32 37, i32 %3845, i32 0)  ; IMax(a,b)
  %3847 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %3848 = fptoui float %3847 to i32
  %3849 = lshr i32 %3848, 5
  %3850 = call i32 @dx.op.binary.i32(i32 40, i32 %3849, i32 8191)  ; UMin(a,b)
  %3851 = shl i32 %3850, 2
  %3852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.i32 %3852, 0
  %3854 = lshr i32 %3853, 16
  %3855 = and i32 %3853, 65535
  %3856 = lshr i32 %3853, 21
  %3857 = lshr i32 %3855, 5
  %3858 = call i32 @dx.op.binary.i32(i32 40, i32 %3857, i32 %3846)  ; UMin(a,b)
  %3859 = icmp ugt i32 %3856, %3858
  br i1 %3859, label %4585, label %3860

; <label>:3860                                    ; preds = %3811
  br label %3861

; <label>:3861                                    ; preds = %4575, %3860
  %3862 = phi i32 [ %4582, %4575 ], [ %3856, %3860 ]
  %3863 = phi float [ %4576, %4575 ], [ %3802, %3860 ]
  %3864 = phi float [ %4577, %4575 ], [ %3803, %3860 ]
  %3865 = phi float [ %4578, %4575 ], [ %3804, %3860 ]
  %3866 = phi float [ %4579, %4575 ], [ %3805, %3860 ]
  %3867 = phi float [ %4580, %4575 ], [ %3806, %3860 ]
  %3868 = phi float [ %4581, %4575 ], [ %3807, %3860 ]
  %3869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3870 = extractvalue %dx.types.CBufRet.i32 %3869, 0
  %3871 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3844, i32 %3870, i32 %3862)  ; UMad(a,b,c)
  %3872 = shl i32 %3871, 2
  %3873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3872, i32 undef)  ; BufferLoad(srv,index,wot)
  %3874 = extractvalue %dx.types.ResRet.i32 %3873, 0
  %3875 = shl i32 %3862, 5
  %3876 = sub nsw i32 %3854, %3875
  %3877 = call i32 @dx.op.binary.i32(i32 37, i32 %3876, i32 0)  ; IMax(a,b)
  %3878 = call i32 @dx.op.binary.i32(i32 38, i32 %3877, i32 31)  ; IMin(a,b)
  %3879 = sub nsw i32 1, %3854
  %3880 = add nsw i32 %3879, %3855
  %3881 = call i32 @dx.op.binary.i32(i32 37, i32 %3880, i32 0)  ; IMax(a,b)
  %3882 = call i32 @dx.op.binary.i32(i32 38, i32 %3881, i32 32)  ; IMin(a,b)
  %3883 = and i32 %3882, 31
  %3884 = shl i32 -1, %3883
  %3885 = xor i32 %3884, -1
  %3886 = and i32 %3878, 31
  %3887 = shl i32 %3885, %3886
  %3888 = icmp eq i32 %3882, 32
  %3889 = select i1 %3888, i32 -1, i32 %3887
  %3890 = and i32 %3889, %3874
  %3891 = icmp eq i32 %3890, 0
  br i1 %3891, label %4575, label %3892

; <label>:3892                                    ; preds = %3861
  br label %3893

; <label>:3893                                    ; preds = %4028, %3892
  %3894 = phi i32 [ %3905, %4028 ], [ %3890, %3892 ]
  %3895 = phi float [ %4029, %4028 ], [ %3863, %3892 ]
  %3896 = phi float [ %4030, %4028 ], [ %3864, %3892 ]
  %3897 = phi float [ %4031, %4028 ], [ %3865, %3892 ]
  %3898 = phi float [ %4032, %4028 ], [ %3866, %3892 ]
  %3899 = phi float [ %4033, %4028 ], [ %3867, %3892 ]
  %3900 = phi float [ %4034, %4028 ], [ %3868, %3892 ]
  %3901 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3894)  ; FirstbitLo(value)
  %3902 = add i32 %3901, %3875
  %3903 = and i32 %3901, 31
  %3904 = shl i32 1, %3903
  %3905 = xor i32 %3904, %3894
  %3906 = mul i32 %3902, 112
  %3907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3906, i32 undef)  ; BufferLoad(srv,index,wot)
  %3908 = extractvalue %dx.types.ResRet.f32 %3907, 0
  %3909 = extractvalue %dx.types.ResRet.f32 %3907, 1
  %3910 = extractvalue %dx.types.ResRet.f32 %3907, 2
  %3911 = or i32 %3906, 12
  %3912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3911, i32 undef)  ; BufferLoad(srv,index,wot)
  %3913 = extractvalue %dx.types.ResRet.f32 %3912, 0
  %3914 = add i32 %3906, 16
  %3915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3914, i32 undef)  ; BufferLoad(srv,index,wot)
  %3916 = extractvalue %dx.types.ResRet.f32 %3915, 0
  %3917 = extractvalue %dx.types.ResRet.f32 %3915, 1
  %3918 = extractvalue %dx.types.ResRet.f32 %3915, 2
  %3919 = add i32 %3906, 28
  %3920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3919, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.i32 %3920, 0
  %3922 = add i32 %3906, 44
  %3923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3922, i32 undef)  ; BufferLoad(srv,index,wot)
  %3924 = extractvalue %dx.types.ResRet.f32 %3923, 0
  %3925 = add i32 %3906, 48
  %3926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3927 = extractvalue %dx.types.ResRet.f32 %3926, 0
  %3928 = extractvalue %dx.types.ResRet.f32 %3926, 1
  %3929 = extractvalue %dx.types.ResRet.f32 %3926, 2
  %3930 = extractvalue %dx.types.ResRet.f32 %3926, 3
  %3931 = add i32 %3906, 64
  %3932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3931, i32 undef)  ; BufferLoad(srv,index,wot)
  %3933 = extractvalue %dx.types.ResRet.f32 %3932, 0
  %3934 = extractvalue %dx.types.ResRet.f32 %3932, 1
  %3935 = extractvalue %dx.types.ResRet.f32 %3932, 2
  %3936 = extractvalue %dx.types.ResRet.f32 %3932, 3
  %3937 = add i32 %3906, 80
  %3938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3937, i32 undef)  ; BufferLoad(srv,index,wot)
  %3939 = extractvalue %dx.types.ResRet.f32 %3938, 1
  %3940 = extractvalue %dx.types.ResRet.f32 %3938, 2
  %3941 = add i32 %3906, 92
  %3942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3941, i32 undef)  ; BufferLoad(srv,index,wot)
  %3943 = extractvalue %dx.types.ResRet.i32 %3942, 0
  %3944 = call float @dx.op.dot3.f32(i32 55, float %3908, float %3909, float %3910, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3945 = select i1 %195, float %3939, float %3908
  %3946 = select i1 %195, float %3944, float %3909
  %3947 = select i1 %195, float %3940, float %3910
  %3948 = and i32 %3943, 65535
  %3949 = uitofp i32 %3948 to float
  %3950 = lshr i32 %3943, 16
  %3951 = uitofp i32 %3950 to float
  %3952 = and i32 %3921, 65535
  %3953 = and i32 %3921, 50331648
  %3954 = icmp slt i32 %3921, 0
  %3955 = icmp eq i32 %3953, 33554432
  %3956 = fsub fast float %3927, %133
  %3957 = fsub fast float %3928, %134
  %3958 = fsub fast float %3929, %135
  %3959 = call float @dx.op.dot3.f32(i32 55, float %3956, float %3957, float %3958, float %3956, float %3957, float %3958)  ; Dot3(ax,ay,az,bx,by,bz)
  %3960 = call float @dx.op.unary.f32(i32 24, float %3959)  ; Sqrt(value)
  %3961 = fdiv fast float 1.000000e+00, %3960
  %3962 = fmul fast float %3961, %3956
  %3963 = fmul fast float %3961, %3957
  %3964 = fmul fast float %3961, %3958
  %3965 = fadd fast float %3960, %3913
  %3966 = fdiv fast float 1.000000e+00, %3965
  %3967 = fmul float %3924, %3966
  %3968 = fmul float %3967, %3967
  %3969 = call float @dx.op.unary.f32(i32 7, float %3968)  ; Saturate(value)
  br i1 %3955, label %3970, label %3991

; <label>:3970                                    ; preds = %3893
  %3971 = fmul fast float %3935, %3916
  %3972 = fmul fast float %3935, %3917
  %3973 = fmul fast float %3935, %3918
  %3974 = fadd fast float %3956, %3971
  %3975 = fadd fast float %3957, %3972
  %3976 = fadd fast float %3958, %3973
  %3977 = call float @dx.op.dot3.f32(i32 55, float %3974, float %3975, float %3976, float %3974, float %3975, float %3976)  ; Dot3(ax,ay,az,bx,by,bz)
  %3978 = call float @dx.op.unary.f32(i32 25, float %3977)  ; Rsqrt(value)
  %3979 = fmul fast float %3978, %3974
  %3980 = fmul fast float %3978, %3975
  %3981 = fmul fast float %3978, %3976
  %3982 = fsub fast float %133, %3927
  %3983 = fsub fast float %134, %3928
  %3984 = fsub fast float %135, %3929
  %3985 = fsub fast float -0.000000e+00, %3982
  %3986 = fsub fast float -0.000000e+00, %3983
  %3987 = fsub fast float -0.000000e+00, %3984
  %3988 = call float @dx.op.dot3.f32(i32 55, float %3985, float %3986, float %3987, float %3916, float %3917, float %3918)  ; Dot3(ax,ay,az,bx,by,bz)
  %3989 = fcmp fast ogt float %3988, 0.000000e+00
  %3990 = uitofp i1 %3989 to float
  br label %3991

; <label>:3991                                    ; preds = %3970, %3893
  %3992 = phi float [ %3990, %3970 ], [ 1.000000e+00, %3893 ]
  %3993 = phi float [ %3979, %3970 ], [ %3962, %3893 ]
  %3994 = phi float [ %3980, %3970 ], [ %3963, %3893 ]
  %3995 = phi float [ %3981, %3970 ], [ %3964, %3893 ]
  %3996 = call float @dx.op.dot3.f32(i32 55, float %3916, float %3917, float %3918, float %3993, float %3994, float %3995)  ; Dot3(ax,ay,az,bx,by,bz)
  %3997 = fmul fast float %3996, %3996
  %3998 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %3999 = fsub fast float 1.000000e+00, %3998
  %4000 = fmul fast float %3999, 5.000000e-01
  %4001 = fcmp fast ogt float %3996, 0.000000e+00
  %4002 = fsub fast float 1.000000e+00, %4000
  %4003 = select i1 %4001, float %4000, float %4002
  %4004 = fmul fast float %4003, %3951
  %4005 = fadd fast float %4004, %3949
  %4006 = fmul fast float %4005, 0x3EF0001000000000
  %4007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %44, float %4006, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4008 = extractvalue %dx.types.ResRet.f32 %4007, 0
  %4009 = fmul fast float %3996, %3933
  %4010 = fadd fast float %4009, %3934
  %4011 = call float @dx.op.unary.f32(i32 7, float %4010)  ; Saturate(value)
  %4012 = select i1 %3955, float 1.000000e+00, float %4011
  %4013 = select i1 %3955, float %4011, float 1.000000e+00
  %4014 = fmul fast float %3960, %3930
  %4015 = fsub fast float 1.000000e+00, %4014
  %4016 = fmul fast float %4015, %3936
  %4017 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  %4018 = fmul fast float %4017, %4013
  %4019 = fmul fast float %4018, 2.000000e+00
  %4020 = fsub fast float 3.000000e+00, %4019
  %4021 = fmul fast float %4008, %3992
  %4022 = fmul fast float %4018, %4018
  %4023 = fmul fast float %4022, %4021
  %4024 = fmul fast float %4023, %4020
  %4025 = call float @dx.op.binary.f32(i32 36, float %4024, float %4024)  ; FMin(a,b)
  %4026 = call float @dx.op.binary.f32(i32 36, float %4024, float %4025)  ; FMin(a,b)
  %4027 = fcmp fast ogt float %4026, 0.000000e+00
  br i1 %4027, label %4036, label %4028, !dx.controlflow.hints !109

; <label>:4028                                    ; preds = %4528, %4136, %3991
  %4029 = phi float [ %3895, %4136 ], [ %3895, %3991 ], [ %4571, %4528 ]
  %4030 = phi float [ %3896, %4136 ], [ %3896, %3991 ], [ %4572, %4528 ]
  %4031 = phi float [ %3897, %4136 ], [ %3897, %3991 ], [ %4573, %4528 ]
  %4032 = phi float [ %3898, %4136 ], [ %3898, %3991 ], [ %4565, %4528 ]
  %4033 = phi float [ %3899, %4136 ], [ %3899, %3991 ], [ %4566, %4528 ]
  %4034 = phi float [ %3900, %4136 ], [ %3900, %3991 ], [ %4567, %4528 ]
  %4035 = icmp eq i32 %3894, %3904
  br i1 %4035, label %4574, label %3893

; <label>:4036                                    ; preds = %3991
  %4037 = icmp eq i32 %3952, 255
  br i1 %4037, label %4136, label %4038, !dx.controlflow.hints !110

; <label>:4038                                    ; preds = %4036
  %4039 = mul nuw nsw i32 %3952, 176
  %4040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4039, i32 undef)  ; BufferLoad(srv,index,wot)
  %4041 = extractvalue %dx.types.ResRet.f32 %4040, 0
  %4042 = extractvalue %dx.types.ResRet.f32 %4040, 1
  %4043 = extractvalue %dx.types.ResRet.f32 %4040, 2
  %4044 = extractvalue %dx.types.ResRet.f32 %4040, 3
  %4045 = add nuw nsw i32 %4039, 16
  %4046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4045, i32 undef)  ; BufferLoad(srv,index,wot)
  %4047 = extractvalue %dx.types.ResRet.f32 %4046, 0
  %4048 = extractvalue %dx.types.ResRet.f32 %4046, 1
  %4049 = add nuw nsw i32 %4039, 32
  %4050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.f32 %4050, 0
  %4052 = extractvalue %dx.types.ResRet.f32 %4050, 1
  %4053 = extractvalue %dx.types.ResRet.f32 %4050, 2
  %4054 = add nuw nsw i32 %4039, 48
  %4055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4054, i32 undef)  ; BufferLoad(srv,index,wot)
  %4056 = extractvalue %dx.types.ResRet.f32 %4055, 0
  %4057 = extractvalue %dx.types.ResRet.f32 %4055, 1
  %4058 = extractvalue %dx.types.ResRet.f32 %4055, 2
  %4059 = extractvalue %dx.types.ResRet.f32 %4055, 3
  %4060 = add nuw nsw i32 %4039, 64
  %4061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4060, i32 undef)  ; BufferLoad(srv,index,wot)
  %4062 = extractvalue %dx.types.ResRet.f32 %4061, 0
  %4063 = extractvalue %dx.types.ResRet.f32 %4061, 1
  %4064 = extractvalue %dx.types.ResRet.f32 %4061, 2
  %4065 = extractvalue %dx.types.ResRet.f32 %4061, 3
  %4066 = add nuw nsw i32 %4039, 80
  %4067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4066, i32 undef)  ; BufferLoad(srv,index,wot)
  %4068 = extractvalue %dx.types.ResRet.f32 %4067, 0
  %4069 = extractvalue %dx.types.ResRet.f32 %4067, 1
  %4070 = extractvalue %dx.types.ResRet.f32 %4067, 2
  %4071 = extractvalue %dx.types.ResRet.f32 %4067, 3
  %4072 = add nuw nsw i32 %4039, 96
  %4073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %4072, i32 undef)  ; BufferLoad(srv,index,wot)
  %4074 = extractvalue %dx.types.ResRet.f32 %4073, 0
  %4075 = extractvalue %dx.types.ResRet.f32 %4073, 1
  %4076 = extractvalue %dx.types.ResRet.f32 %4073, 2
  %4077 = extractvalue %dx.types.ResRet.f32 %4073, 3
  %4078 = bitcast float %4048 to i32
  %4079 = fmul fast float %4053, %88
  %4080 = fmul fast float %4053, %89
  %4081 = fmul fast float %4053, %90
  %4082 = fadd fast float %4079, %133
  %4083 = fadd fast float %4080, %134
  %4084 = fadd fast float %4081, %135
  %4085 = fmul fast float %4082, %4056
  %4086 = call float @dx.op.tertiary.f32(i32 46, float %4083, float %4062, float %4085)  ; FMad(a,b,c)
  %4087 = call float @dx.op.tertiary.f32(i32 46, float %4084, float %4068, float %4086)  ; FMad(a,b,c)
  %4088 = fadd fast float %4087, %4074
  %4089 = fmul fast float %4082, %4057
  %4090 = call float @dx.op.tertiary.f32(i32 46, float %4083, float %4063, float %4089)  ; FMad(a,b,c)
  %4091 = call float @dx.op.tertiary.f32(i32 46, float %4084, float %4069, float %4090)  ; FMad(a,b,c)
  %4092 = fadd fast float %4091, %4075
  %4093 = fmul fast float %4082, %4058
  %4094 = call float @dx.op.tertiary.f32(i32 46, float %4083, float %4064, float %4093)  ; FMad(a,b,c)
  %4095 = call float @dx.op.tertiary.f32(i32 46, float %4084, float %4070, float %4094)  ; FMad(a,b,c)
  %4096 = fadd fast float %4095, %4076
  %4097 = fmul fast float %4082, %4059
  %4098 = call float @dx.op.tertiary.f32(i32 46, float %4083, float %4065, float %4097)  ; FMad(a,b,c)
  %4099 = call float @dx.op.tertiary.f32(i32 46, float %4084, float %4071, float %4098)  ; FMad(a,b,c)
  %4100 = fadd fast float %4099, %4077
  %4101 = fdiv fast float %4088, %4100
  %4102 = fdiv fast float %4092, %4100
  %4103 = fdiv fast float %4096, %4100
  %4104 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4103)  ; FMax(a,b)
  %4105 = fmul fast float %206, 0x401921FB60000000
  %4106 = call float @dx.op.unary.f32(i32 13, float %4105)  ; Sin(value)
  %4107 = call float @dx.op.unary.f32(i32 12, float %4105)  ; Cos(value)
  %4108 = fsub fast float -0.000000e+00, %4106
  %4109 = fmul fast float %4043, 5.000000e-01
  %4110 = call float @dx.op.dot2.f32(i32 54, float %206, float %206, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %4111 = call float @dx.op.unary.f32(i32 22, float %4110)  ; Frc(value)
  %4112 = fmul fast float %4111, 0x404A7DD040000000
  %4113 = call float @dx.op.unary.f32(i32 22, float %4112)  ; Frc(value)
  %4114 = fmul fast float %4113, %4052
  %4115 = fadd fast float %4114, %4109
  %4116 = call float @dx.op.tertiary.f32(i32 46, float %4115, float %4108, float 0.000000e+00)  ; FMad(a,b,c)
  %4117 = call float @dx.op.tertiary.f32(i32 46, float %4115, float %4107, float 0.000000e+00)  ; FMad(a,b,c)
  %4118 = fadd fast float %4116, %4101
  %4119 = fadd fast float %4117, %4102
  %4120 = fmul fast float %4118, %4047
  %4121 = fmul fast float %4119, %4047
  %4122 = call float @dx.op.binary.f32(i32 35, float %4120, float %4043)  ; FMax(a,b)
  %4123 = call float @dx.op.binary.f32(i32 35, float %4121, float %4043)  ; FMax(a,b)
  %4124 = call float @dx.op.binary.f32(i32 36, float %4122, float %4044)  ; FMin(a,b)
  %4125 = call float @dx.op.binary.f32(i32 36, float %4123, float %4044)  ; FMin(a,b)
  %4126 = fadd fast float %4124, %4041
  %4127 = fadd fast float %4125, %4042
  %4128 = uitofp i32 %4078 to float
  %4129 = fadd fast float %4104, %4051
  %4130 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %46, float %4126, float %4127, float %4128, float undef, i32 0, i32 0, i32 undef, float %4129)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4131 = extractvalue %dx.types.ResRet.f32 %4130, 0
  %4132 = fadd fast float %4131, -1.000000e+00
  %4133 = fmul fast float %4132, %4012
  %4134 = fadd fast float %4133, 1.000000e+00
  %4135 = fmul fast float %4134, %4024
  br label %4136

; <label>:4136                                    ; preds = %4038, %4036
  %4137 = phi float [ %4135, %4038 ], [ %4024, %4036 ]
  %4138 = call float @dx.op.binary.f32(i32 36, float %4137, float %4137)  ; FMin(a,b)
  %4139 = call float @dx.op.binary.f32(i32 36, float %4137, float %4138)  ; FMin(a,b)
  %4140 = fcmp fast ogt float %4139, 0.000000e+00
  br i1 %4140, label %4141, label %4028, !dx.controlflow.hints !111

; <label>:4141                                    ; preds = %4136
  %4142 = fmul fast float %4137, %3945
  %4143 = fmul fast float %4137, %3946
  %4144 = fmul fast float %4137, %3947
  %4145 = fsub fast float %3929, %1955
  %4146 = fcmp fast ogt float %4145, 0.000000e+00
  %4147 = fsub fast float %135, %1955
  %4148 = fcmp fast ogt float %4147, 0.000000e+00
  %4149 = xor i1 %4148, %4146
  %4150 = fsub fast float %1955, %3929
  %4151 = fmul fast float %4150, 2.000000e+00
  %4152 = fadd fast float %4151, %3929
  %4153 = select i1 %4149, float %3929, float %4152
  %4154 = fsub fast float %4153, %135
  %4155 = call float @dx.op.dot3.f32(i32 55, float %3956, float %3957, float %4154, float %3956, float %3957, float %4154)  ; Dot3(ax,ay,az,bx,by,bz)
  %4156 = call float @dx.op.unary.f32(i32 25, float %4155)  ; Rsqrt(value)
  %4157 = fmul fast float %4156, %3956
  %4158 = fmul fast float %4156, %3957
  %4159 = fmul fast float %4156, %4154
  %4160 = fsub fast float %1955, %135
  %4161 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4160)  ; Dot3(ax,ay,az,bx,by,bz)
  %4162 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4157, float %4158, float %4159)  ; Dot3(ax,ay,az,bx,by,bz)
  %4163 = fdiv fast float 1.000000e+00, %4162
  %4164 = fmul fast float %4163, %4161
  %4165 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4147, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4166 = fcmp fast ogt float %4165, 0.000000e+00
  %4167 = fcmp fast olt float %4165, 0.000000e+00
  %4168 = zext i1 %4166 to i32
  %4169 = zext i1 %4167 to i32
  %4170 = sub nsw i32 %4168, %4169
  %4171 = sitofp i32 %4170 to float
  %4172 = fsub fast float %4153, %1955
  %4173 = call float @dx.op.dot3.f32(i32 55, float %3956, float %3957, float %4172, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4174 = fcmp fast ogt float %4173, 0.000000e+00
  %4175 = fcmp fast olt float %4173, 0.000000e+00
  %4176 = zext i1 %4174 to i32
  %4177 = zext i1 %4175 to i32
  %4178 = sub nsw i32 %4176, %4177
  %4179 = sitofp i32 %4178 to float
  %4180 = fcmp fast une float %4171, %4179
  br i1 %4180, label %4181, label %4191

; <label>:4181                                    ; preds = %4141
  %4182 = fmul fast float %4164, %4159
  %4183 = fmul fast float %4164, %4158
  %4184 = fmul fast float %4164, %4157
  %4185 = fmul fast float %4184, %4184
  %4186 = fmul fast float %4183, %4183
  %4187 = fadd fast float %4185, %4186
  %4188 = fmul fast float %4182, %4182
  %4189 = fadd fast float %4187, %4188
  %4190 = call float @dx.op.unary.f32(i32 24, float %4189)  ; Sqrt(value)
  br label %4203

; <label>:4191                                    ; preds = %4141
  %4192 = icmp slt i32 %4170, 0
  br i1 %4192, label %4193, label %4203

; <label>:4193                                    ; preds = %4191
  %4194 = fsub fast float %133, %3927
  %4195 = fsub fast float %134, %3928
  %4196 = fsub fast float %135, %4153
  %4197 = fmul fast float %4194, %4194
  %4198 = fmul fast float %4195, %4195
  %4199 = fadd fast float %4197, %4198
  %4200 = fmul fast float %4196, %4196
  %4201 = fadd fast float %4199, %4200
  %4202 = call float @dx.op.unary.f32(i32 24, float %4201)  ; Sqrt(value)
  br label %4203

; <label>:4203                                    ; preds = %4193, %4191, %4181
  %4204 = phi float [ %4190, %4181 ], [ %4202, %4193 ], [ 0.000000e+00, %4191 ]
  %4205 = and i1 %4148, %4146
  %4206 = fsub fast float -0.000000e+00, %4204
  %4207 = select i1 %4205, float -0.000000e+00, float %4206
  %4208 = fmul fast float %1956, 0x3FF7154760000000
  %4209 = fmul fast float %4208, %4207
  %4210 = fmul fast float %1957, 0x3FF7154760000000
  %4211 = fmul fast float %4210, %4207
  %4212 = fmul fast float %1958, 0x3FF7154760000000
  %4213 = fmul fast float %4212, %4207
  %4214 = call float @dx.op.unary.f32(i32 21, float %4209)  ; Exp(value)
  %4215 = call float @dx.op.unary.f32(i32 21, float %4211)  ; Exp(value)
  %4216 = call float @dx.op.unary.f32(i32 21, float %4213)  ; Exp(value)
  %4217 = call float @dx.op.unary.f32(i32 7, float %4214)  ; Saturate(value)
  %4218 = call float @dx.op.unary.f32(i32 7, float %4215)  ; Saturate(value)
  %4219 = call float @dx.op.unary.f32(i32 7, float %4216)  ; Saturate(value)
  %4220 = fmul fast float %4142, %4217
  %4221 = fmul fast float %4143, %4218
  %4222 = fmul fast float %4144, %4219
  %4223 = fsub fast float %3962, %2155
  %4224 = fsub fast float %3963, %2154
  %4225 = fsub fast float %3964, %2153
  %4226 = call float @dx.op.dot3.f32(i32 55, float %4223, float %4224, float %4225, float %4223, float %4224, float %4225)  ; Dot3(ax,ay,az,bx,by,bz)
  %4227 = call float @dx.op.unary.f32(i32 25, float %4226)  ; Rsqrt(value)
  %4228 = fmul fast float %4227, %4223
  %4229 = fmul fast float %4227, %4224
  %4230 = fmul fast float %4227, %4225
  %4231 = call float @dx.op.dot3.f32(i32 55, float %3962, float %3963, float %3964, float %2159, float %2160, float %2161)  ; Dot3(ax,ay,az,bx,by,bz)
  %4232 = call float @dx.op.dot3.f32(i32 55, float %2152, float %2151, float %2150, float %4228, float %4229, float %4230)  ; Dot3(ax,ay,az,bx,by,bz)
  %4233 = call float @dx.op.unary.f32(i32 7, float %4231)  ; Saturate(value)
  %4234 = fmul fast float %4233, %3969
  %4235 = fmul fast float %4233, %4233
  %4236 = fmul fast float %4235, %2183
  %4237 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4238 = fmul fast float %4234, %4237
  %4239 = bitcast float %3959 to i32
  %4240 = ashr i32 %4239, 1
  %4241 = sub nsw i32 1597463007, %4240
  %4242 = bitcast i32 %4241 to float
  %4243 = fmul fast float %4242, %3956
  %4244 = fmul fast float %4242, %3957
  %4245 = fmul fast float %4242, %3958
  %4246 = fsub fast float %4243, %2155
  %4247 = fsub fast float %4244, %2154
  %4248 = fsub fast float %4245, %2153
  %4249 = call float @dx.op.dot3.f32(i32 55, float %4246, float %4247, float %4248, float %4246, float %4247, float %4248)  ; Dot3(ax,ay,az,bx,by,bz)
  %4250 = call float @dx.op.unary.f32(i32 25, float %4249)  ; Rsqrt(value)
  %4251 = fmul fast float %4246, %4250
  %4252 = fmul fast float %4247, %4250
  %4253 = fmul fast float %4248, %4250
  %4254 = call float @dx.op.dot3.f32(i32 55, float %2159, float %2160, float %2161, float %4251, float %4252, float %4253)  ; Dot3(ax,ay,az,bx,by,bz)
  %4255 = fmul fast float %4254, %4254
  %4256 = call float @dx.op.unary.f32(i32 6, float %4231)  ; FAbs(value)
  %4257 = call float @dx.op.binary.f32(i32 35, float %2566, float 0x3F847AE140000000)  ; FMax(a,b)
  %4258 = fmul fast float %4257, %4257
  %4259 = fmul fast float %4258, %4258
  %4260 = fsub fast float 1.000000e+00, %4259
  %4261 = fmul fast float %2170, %2170
  %4262 = fmul fast float %4261, %4260
  %4263 = fadd fast float %4262, %4259
  %4264 = bitcast float %4263 to i32
  %4265 = ashr i32 %4264, 1
  %4266 = add nsw i32 %4265, 532487669
  %4267 = bitcast i32 %4266 to float
  %4268 = fadd fast float %4267, %2170
  %4269 = fmul fast float %4259, %4255
  %4270 = fsub fast float 1.000000e+00, %4255
  %4271 = fadd fast float %4270, %4269
  %4272 = fmul fast float %4256, %4256
  %4273 = fmul fast float %4272, %4260
  %4274 = fadd fast float %4273, %4259
  %4275 = bitcast float %4274 to i32
  %4276 = ashr i32 %4275, 1
  %4277 = add nsw i32 %4276, 532487669
  %4278 = bitcast i32 %4277 to float
  %4279 = fadd fast float %4278, %4256
  %4280 = fmul fast float %4271, %4271
  %4281 = fmul fast float %4280, %4268
  %4282 = fmul fast float %4281, %4279
  %4283 = fdiv fast float 1.000000e+00, %4282
  %4284 = bitcast float %4259 to i32
  %4285 = sitofp i32 %4284 to float
  %4286 = fmul fast float %4285, 0x3FE7F73180000000
  %4287 = fadd fast float %4286, 0x41AFE27C40000000
  %4288 = fptosi float %4287 to i32
  %4289 = bitcast i32 %4288 to float
  %4290 = fmul fast float %3924, 0x3FD80E9D60000000
  %4291 = fmul fast float %4290, %4242
  %4292 = fadd fast float %4289, %4291
  %4293 = bitcast float %4292 to i32
  %4294 = sub nsw i32 2129859010, %4293
  %4295 = bitcast i32 %4294 to float
  %4296 = fmul fast float %4259, %4283
  %4297 = fmul fast float %4296, %4289
  %4298 = fmul fast float %4297, %4295
  %4299 = fmul fast float %2428, 0x3FF9999980000000
  %4300 = fsub fast float 5.000000e+00, %4299
  %4301 = call float @dx.op.unary.f32(i32 6, float %4232)  ; FAbs(value)
  %4302 = fsub fast float 1.000000e+00, %4301
  %4303 = fmul fast float %2428, 0x41D9660740000000
  %4304 = fadd fast float %4303, 0xC1EFBF8940000000
  %4305 = bitcast float %4302 to i32
  %4306 = sitofp i32 %4305 to float
  %4307 = fmul fast float %4306, %4300
  %4308 = fadd fast float %4304, %4307
  %4309 = fptosi float %4308 to i32
  %4310 = bitcast i32 %4309 to float
  %4311 = fsub fast float 1.000000e+00, %2162
  %4312 = fsub fast float 1.000000e+00, %2163
  %4313 = fsub fast float 1.000000e+00, %2168
  %4314 = fmul fast float %4310, %4311
  %4315 = fmul fast float %4310, %4312
  %4316 = fmul fast float %4310, %4313
  %4317 = fadd fast float %4314, %2162
  %4318 = fadd fast float %4315, %2163
  %4319 = fadd fast float %4316, %2168
  br i1 %2451, label %4320, label %4343

; <label>:4320                                    ; preds = %4203
  %4321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1501, float %4301, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4322 = extractvalue %dx.types.ResRet.f32 %4321, 0
  %4323 = extractvalue %dx.types.ResRet.f32 %4321, 1
  %4324 = extractvalue %dx.types.ResRet.f32 %4321, 2
  %4325 = fadd fast float %4322, -5.000000e-01
  %4326 = fadd fast float %4323, -5.000000e-01
  %4327 = fadd fast float %4324, -5.000000e-01
  %4328 = fmul fast float %2162, 4.000000e+00
  %4329 = fmul fast float %4328, %4311
  %4330 = fmul fast float %4329, %4325
  %4331 = fmul fast float %2163, 4.000000e+00
  %4332 = fmul fast float %4331, %4312
  %4333 = fmul fast float %4332, %4326
  %4334 = fmul fast float %2168, 4.000000e+00
  %4335 = fmul fast float %4334, %4313
  %4336 = fmul fast float %4335, %4327
  %4337 = fadd fast float %4330, %4317
  %4338 = fadd fast float %4333, %4318
  %4339 = fadd fast float %4336, %4319
  %4340 = call float @dx.op.unary.f32(i32 7, float %4337)  ; Saturate(value)
  %4341 = call float @dx.op.unary.f32(i32 7, float %4338)  ; Saturate(value)
  %4342 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  br label %4343

; <label>:4343                                    ; preds = %4320, %4203
  %4344 = phi float [ %4340, %4320 ], [ %4317, %4203 ]
  %4345 = phi float [ %4341, %4320 ], [ %4318, %4203 ]
  %4346 = phi float [ %4342, %4320 ], [ %4319, %4203 ]
  %4347 = fmul fast float %4231, 9.843750e-01
  %4348 = fadd fast float %4347, 7.812500e-03
  %4349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %4348, float %2432, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4350 = extractvalue %dx.types.ResRet.f32 %4349, 0
  %4351 = extractvalue %dx.types.ResRet.f32 %4349, 1
  %4352 = extractvalue %dx.types.ResRet.f32 %4349, 2
  %4353 = extractvalue %dx.types.ResRet.f32 %4349, 3
  %4354 = fsub fast float %4352, %4350
  %4355 = fsub fast float %4353, %4351
  %4356 = fmul fast float %4354, %2438
  %4357 = fmul fast float %4355, %2438
  %4358 = fadd fast float %4356, %4350
  %4359 = fadd fast float %4357, %4351
  %4360 = fmul fast float %4358, %2162
  %4361 = fmul fast float %4358, %2163
  %4362 = fmul fast float %4358, %2168
  %4363 = fadd fast float %4360, %4359
  %4364 = fadd fast float %4361, %4359
  %4365 = fadd fast float %4362, %4359
  br i1 %2451, label %4366, label %4389

; <label>:4366                                    ; preds = %4343
  %4367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1501, float %4231, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4368 = extractvalue %dx.types.ResRet.f32 %4367, 0
  %4369 = extractvalue %dx.types.ResRet.f32 %4367, 1
  %4370 = extractvalue %dx.types.ResRet.f32 %4367, 2
  %4371 = fadd fast float %4368, -5.000000e-01
  %4372 = fadd fast float %4369, -5.000000e-01
  %4373 = fadd fast float %4370, -5.000000e-01
  %4374 = fmul fast float %2162, 4.000000e+00
  %4375 = fmul fast float %4374, %4311
  %4376 = fmul fast float %4375, %4371
  %4377 = fmul fast float %2163, 4.000000e+00
  %4378 = fmul fast float %4377, %4312
  %4379 = fmul fast float %4378, %4372
  %4380 = fmul fast float %2168, 4.000000e+00
  %4381 = fmul fast float %4380, %4313
  %4382 = fmul fast float %4381, %4373
  %4383 = fadd fast float %4376, %4363
  %4384 = fadd fast float %4379, %4364
  %4385 = fadd fast float %4382, %4365
  %4386 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4387 = call float @dx.op.unary.f32(i32 7, float %4384)  ; Saturate(value)
  %4388 = call float @dx.op.unary.f32(i32 7, float %4385)  ; Saturate(value)
  br label %4389

; <label>:4389                                    ; preds = %4366, %4343
  %4390 = phi float [ %4386, %4366 ], [ %4363, %4343 ]
  %4391 = phi float [ %4387, %4366 ], [ %4364, %4343 ]
  %4392 = phi float [ %4388, %4366 ], [ %4365, %4343 ]
  %4393 = call float @dx.op.binary.f32(i32 35, float %4391, float %4392)  ; FMax(a,b)
  %4394 = call float @dx.op.binary.f32(i32 35, float %4390, float %4393)  ; FMax(a,b)
  %4395 = fsub fast float 1.000000e+00, %4394
  %4396 = call float @dx.op.binary.f32(i32 35, float %4256, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4397 = fdiv fast float %896, %4396
  %4398 = fmul fast float %2506, %4397
  %4399 = fmul fast float %2508, %4397
  %4400 = fmul fast float %2510, %4397
  %4401 = call float @dx.op.unary.f32(i32 21, float %4398)  ; Exp(value)
  %4402 = call float @dx.op.unary.f32(i32 21, float %4399)  ; Exp(value)
  %4403 = call float @dx.op.unary.f32(i32 21, float %4400)  ; Exp(value)
  %4404 = call float @dx.op.unary.f32(i32 7, float %4401)  ; Saturate(value)
  %4405 = call float @dx.op.unary.f32(i32 7, float %4402)  ; Saturate(value)
  %4406 = call float @dx.op.unary.f32(i32 7, float %4403)  ; Saturate(value)
  %4407 = select i1 %2503, float %4404, float 0.000000e+00
  %4408 = select i1 %2504, float %4405, float 0.000000e+00
  %4409 = select i1 %2505, float %4406, float 0.000000e+00
  %4410 = fsub fast float -0.000000e+00, %2159
  %4411 = fsub fast float -0.000000e+00, %2160
  %4412 = fsub fast float -0.000000e+00, %2161
  %4413 = call float @dx.op.dot3.f32(i32 55, float %3962, float %3963, float %3964, float %4410, float %4411, float %4412)  ; Dot3(ax,ay,az,bx,by,bz)
  %4414 = call float @dx.op.unary.f32(i32 7, float %4413)  ; Saturate(value)
  %4415 = fmul fast float %4414, %3969
  %4416 = fmul fast float %4414, 9.843750e-01
  %4417 = fadd fast float %4416, 7.812500e-03
  %4418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %44, float %4417, float %2432, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4419 = extractvalue %dx.types.ResRet.f32 %4418, 0
  %4420 = extractvalue %dx.types.ResRet.f32 %4418, 1
  %4421 = extractvalue %dx.types.ResRet.f32 %4418, 2
  %4422 = extractvalue %dx.types.ResRet.f32 %4418, 3
  %4423 = fsub fast float %4421, %4419
  %4424 = fsub fast float %4422, %4420
  %4425 = fmul fast float %4423, %2438
  %4426 = fmul fast float %4424, %2438
  %4427 = fadd fast float %4425, %4419
  %4428 = fadd fast float %4426, %4420
  %4429 = fmul fast float %4427, %2162
  %4430 = fmul fast float %4427, %2163
  %4431 = fmul fast float %4427, %2168
  %4432 = fadd fast float %4429, %4428
  %4433 = fadd fast float %4430, %4428
  %4434 = fadd fast float %4431, %4428
  br i1 %2451, label %4435, label %4458

; <label>:4435                                    ; preds = %4389
  %4436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %1501, float %4414, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4437 = extractvalue %dx.types.ResRet.f32 %4436, 0
  %4438 = extractvalue %dx.types.ResRet.f32 %4436, 1
  %4439 = extractvalue %dx.types.ResRet.f32 %4436, 2
  %4440 = fadd fast float %4437, -5.000000e-01
  %4441 = fadd fast float %4438, -5.000000e-01
  %4442 = fadd fast float %4439, -5.000000e-01
  %4443 = fmul fast float %2162, 4.000000e+00
  %4444 = fmul fast float %4443, %4311
  %4445 = fmul fast float %4444, %4440
  %4446 = fmul fast float %2163, 4.000000e+00
  %4447 = fmul fast float %4446, %4312
  %4448 = fmul fast float %4447, %4441
  %4449 = fmul fast float %2168, 4.000000e+00
  %4450 = fmul fast float %4449, %4313
  %4451 = fmul fast float %4450, %4442
  %4452 = fadd fast float %4445, %4432
  %4453 = fadd fast float %4448, %4433
  %4454 = fadd fast float %4451, %4434
  %4455 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4456 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4457 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  br label %4458

; <label>:4458                                    ; preds = %4435, %4389
  %4459 = phi float [ %4455, %4435 ], [ %4432, %4389 ]
  %4460 = phi float [ %4456, %4435 ], [ %4433, %4389 ]
  %4461 = phi float [ %4457, %4435 ], [ %4434, %4389 ]
  %4462 = call float @dx.op.binary.f32(i32 35, float %4460, float %4461)  ; FMax(a,b)
  %4463 = call float @dx.op.binary.f32(i32 35, float %4459, float %4462)  ; FMax(a,b)
  %4464 = fsub fast float 1.000000e+00, %4463
  %4465 = fmul fast float %2566, %2571
  %4466 = fadd fast float %2573, %4465
  %4467 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4468 = fsub fast float %4243, %2176
  %4469 = fsub fast float %4244, %2177
  %4470 = fsub fast float %4245, %2178
  %4471 = call float @dx.op.dot3.f32(i32 55, float %4468, float %4469, float %4470, float %4468, float %4469, float %4470)  ; Dot3(ax,ay,az,bx,by,bz)
  %4472 = call float @dx.op.unary.f32(i32 25, float %4471)  ; Rsqrt(value)
  %4473 = fmul fast float %4468, %4472
  %4474 = fmul fast float %4469, %4472
  %4475 = fmul fast float %4470, %4472
  %4476 = call float @dx.op.dot3.f32(i32 55, float %4410, float %4411, float %4412, float %4473, float %4474, float %4475)  ; Dot3(ax,ay,az,bx,by,bz)
  %4477 = fmul fast float %4476, %4476
  %4478 = call float @dx.op.unary.f32(i32 6, float %4414)  ; FAbs(value)
  %4479 = call float @dx.op.binary.f32(i32 35, float %4467, float 0x3F847AE140000000)  ; FMax(a,b)
  %4480 = fmul fast float %4479, %4479
  %4481 = fmul fast float %4480, %4480
  %4482 = fsub fast float 1.000000e+00, %4481
  %4483 = fmul fast float %4261, %4482
  %4484 = fadd fast float %4483, %4481
  %4485 = bitcast float %4484 to i32
  %4486 = ashr i32 %4485, 1
  %4487 = add nsw i32 %4486, 532487669
  %4488 = bitcast i32 %4487 to float
  %4489 = fadd fast float %4488, %2170
  %4490 = fmul fast float %4481, %4477
  %4491 = fsub fast float 1.000000e+00, %4477
  %4492 = fadd fast float %4491, %4490
  %4493 = fmul fast float %4478, %4478
  %4494 = fmul fast float %4493, %4482
  %4495 = fadd fast float %4494, %4481
  %4496 = bitcast float %4495 to i32
  %4497 = ashr i32 %4496, 1
  %4498 = add nsw i32 %4497, 532487669
  %4499 = bitcast i32 %4498 to float
  %4500 = fadd fast float %4499, %4478
  %4501 = fmul fast float %4492, %4492
  %4502 = fmul fast float %4501, %4489
  %4503 = fmul fast float %4502, %4500
  %4504 = fdiv fast float 1.000000e+00, %4503
  %4505 = bitcast float %4481 to i32
  %4506 = sitofp i32 %4505 to float
  %4507 = fmul fast float %4506, 0x3FE7F73180000000
  %4508 = fadd fast float %4507, 0x41AFE27C40000000
  %4509 = fptosi float %4508 to i32
  %4510 = bitcast i32 %4509 to float
  %4511 = fadd fast float %4510, %4291
  %4512 = bitcast float %4511 to i32
  %4513 = sub nsw i32 2129859010, %4512
  %4514 = bitcast i32 %4513 to float
  %4515 = fmul fast float %4481, %4504
  %4516 = fmul fast float %4515, %4510
  %4517 = fmul fast float %4516, %4514
  br i1 %3954, label %4518, label %4528

; <label>:4518                                    ; preds = %4458
  %4519 = fmul fast float %4415, %4407
  %4520 = fmul fast float %4415, %4408
  %4521 = fmul fast float %4415, %4409
  %4522 = fmul fast float %4519, %4464
  %4523 = fmul fast float %4522, %4517
  %4524 = fmul fast float %4520, %4464
  %4525 = fmul fast float %4524, %4517
  %4526 = fmul fast float %4521, %4464
  %4527 = fmul fast float %4526, %4517
  br label %4528

; <label>:4528                                    ; preds = %4518, %4458
  %4529 = phi float [ %4523, %4518 ], [ 0.000000e+00, %4458 ]
  %4530 = phi float [ %4525, %4518 ], [ 0.000000e+00, %4458 ]
  %4531 = phi float [ %4527, %4518 ], [ 0.000000e+00, %4458 ]
  %4532 = fmul fast float %4344, %4298
  %4533 = fmul fast float %4345, %4298
  %4534 = fmul fast float %4346, %4298
  %4535 = fsub fast float 1.000000e+00, %4232
  %4536 = bitcast float %4535 to i32
  %4537 = sitofp i32 %4536 to float
  %4538 = fmul fast float %4537, 5.000000e+00
  %4539 = fadd fast float %4538, 0xC1EFBF8940000000
  %4540 = fptosi float %4539 to i32
  %4541 = bitcast i32 %4540 to float
  %4542 = fmul fast float %4541, %1500
  %4543 = fmul fast float %4395, %4542
  %4544 = fmul fast float %4543, %2498
  %4545 = fmul fast float %4543, %2499
  %4546 = fmul fast float %4543, %2500
  %4547 = fadd fast float %4544, %4532
  %4548 = fadd fast float %4545, %4533
  %4549 = fadd fast float %4546, %4534
  %4550 = fmul fast float %4547, %4238
  %4551 = fmul fast float %4548, %4238
  %4552 = fmul fast float %4549, %4238
  %4553 = fadd fast float %4550, %4529
  %4554 = fadd fast float %4551, %4530
  %4555 = fadd fast float %4552, %4531
  %4556 = fmul fast float %4220, %1524
  %4557 = fmul fast float %4556, %4238
  %4558 = fmul fast float %4557, %4395
  %4559 = fmul fast float %4221, %1524
  %4560 = fmul fast float %4559, %4238
  %4561 = fmul fast float %4560, %4395
  %4562 = fmul fast float %4222, %1524
  %4563 = fmul fast float %4562, %4238
  %4564 = fmul fast float %4563, %4395
  %4565 = fadd fast float %4558, %3898
  %4566 = fadd fast float %4561, %3899
  %4567 = fadd fast float %4564, %3900
  %4568 = fmul fast float %4556, %4553
  %4569 = fmul fast float %4559, %4554
  %4570 = fmul fast float %4562, %4555
  %4571 = fadd fast float %4568, %3895
  %4572 = fadd fast float %4569, %3896
  %4573 = fadd fast float %4570, %3897
  br label %4028

; <label>:4574                                    ; preds = %4028
  br label %4575

; <label>:4575                                    ; preds = %4574, %3861
  %4576 = phi float [ %3863, %3861 ], [ %4029, %4574 ]
  %4577 = phi float [ %3864, %3861 ], [ %4030, %4574 ]
  %4578 = phi float [ %3865, %3861 ], [ %4031, %4574 ]
  %4579 = phi float [ %3866, %3861 ], [ %4032, %4574 ]
  %4580 = phi float [ %3867, %3861 ], [ %4033, %4574 ]
  %4581 = phi float [ %3868, %3861 ], [ %4034, %4574 ]
  %4582 = add i32 %3862, 1
  %4583 = icmp ugt i32 %4582, %3858
  br i1 %4583, label %4584, label %3861

; <label>:4584                                    ; preds = %4575
  br label %4585

; <label>:4585                                    ; preds = %4584, %3811, %3801
  %4586 = phi float [ %3802, %3801 ], [ %3802, %3811 ], [ %4576, %4584 ]
  %4587 = phi float [ %3803, %3801 ], [ %3803, %3811 ], [ %4577, %4584 ]
  %4588 = phi float [ %3804, %3801 ], [ %3804, %3811 ], [ %4578, %4584 ]
  %4589 = phi float [ %3805, %3801 ], [ %3805, %3811 ], [ %4579, %4584 ]
  %4590 = phi float [ %3806, %3801 ], [ %3806, %3811 ], [ %4580, %4584 ]
  %4591 = phi float [ %3807, %3801 ], [ %3807, %3811 ], [ %4581, %4584 ]
  %4592 = fmul fast float %2527, %1524
  %4593 = fmul fast float %2528, %1524
  %4594 = fmul fast float %2529, %1524
  %4595 = fadd fast float %4592, 1.000000e+00
  %4596 = fadd fast float %4593, 1.000000e+00
  %4597 = fadd fast float %4594, 1.000000e+00
  %4598 = call float @dx.op.dot3.f32(i32 55, float %4595, float %4596, float %4597, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4599 = fsub fast float 1.000000e+00, %4598
  %4600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4601 = extractvalue %dx.types.CBufRet.f32 %4600, 0
  %4602 = fmul fast float %4601, %2533
  %4603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4604 = extractvalue %dx.types.CBufRet.f32 %4603, 3
  %4605 = fsub fast float 1.000000e+00, %1496
  %4606 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4607 = fadd fast float %4591, %1495
  %4608 = fmul fast float %4607, %1496
  %4609 = fmul fast float %4606, %4604
  %4610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %4611 = extractvalue %dx.types.CBufRet.f32 %4610, 3
  %4612 = fmul fast float %4589, %2156
  %4613 = fmul fast float %4590, %2157
  %4614 = fmul fast float %4591, %2158
  %4615 = fcmp fast ogt float %76, %155
  %4616 = and i1 %4615, %1961
  %4617 = or i1 %1967, %4616
  %4618 = icmp eq i32 %1960, 2
  %4619 = fcmp fast ole float %76, %155
  %4620 = and i1 %4619, %4618
  %4621 = or i1 %4620, %4617
  br i1 %4616, label %4622, label %4881

; <label>:4622                                    ; preds = %4585
  %4623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4624 = extractvalue %dx.types.CBufRet.f32 %4623, 2
  %4625 = extractvalue %dx.types.CBufRet.f32 %4623, 3
  %4626 = fmul fast float %4624, %85
  %4627 = fmul fast float %4625, %86
  %4628 = call float @dx.op.unary.f32(i32 7, float %4626)  ; Saturate(value)
  %4629 = call float @dx.op.unary.f32(i32 7, float %4627)  ; Saturate(value)
  %4630 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %4628, float %4629, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4631 = extractvalue %dx.types.ResRet.f32 %4630, 0
  %4632 = extractvalue %dx.types.ResRet.f32 %4630, 1
  %4633 = extractvalue %dx.types.ResRet.f32 %4630, 2
  %4634 = extractvalue %dx.types.ResRet.f32 %4630, 3
  %4635 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %4628, float %4629, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4636 = extractvalue %dx.types.ResRet.f32 %4635, 0
  %4637 = extractvalue %dx.types.ResRet.f32 %4635, 1
  %4638 = extractvalue %dx.types.ResRet.f32 %4635, 2
  %4639 = extractvalue %dx.types.ResRet.f32 %4635, 3
  %4640 = call float @dx.op.binary.f32(i32 35, float %4632, float %4633)  ; FMax(a,b)
  %4641 = call float @dx.op.binary.f32(i32 35, float %4631, float %4640)  ; FMax(a,b)
  %4642 = call float @dx.op.binary.f32(i32 35, float %4641, float %4634)  ; FMax(a,b)
  %4643 = call float @dx.op.binary.f32(i32 36, float %4637, float %4638)  ; FMin(a,b)
  %4644 = call float @dx.op.binary.f32(i32 36, float %4636, float %4643)  ; FMin(a,b)
  %4645 = call float @dx.op.binary.f32(i32 36, float %4644, float %4639)  ; FMin(a,b)
  %4646 = fmul fast float %4642, 2.550000e+02
  %4647 = fadd fast float %4646, 0x3F70101020000000
  %4648 = fptoui float %4647 to i32
  %4649 = fmul fast float %4645, 2.550000e+02
  %4650 = fadd fast float %4649, 0x3F70101020000000
  %4651 = fptoui float %4650 to i32
  %4652 = icmp ult i32 %4648, %4651
  br i1 %4652, label %4653, label %4821

; <label>:4653                                    ; preds = %4622
  %4654 = fcmp fast ogt float %75, 9.843750e-01
  %4655 = fadd fast float %76, -4.000000e+00
  %4656 = select i1 %4654, float -4.000000e+00, float %4655
  %4657 = call float @dx.op.binary.f32(i32 35, float %4656, float 0.000000e+00)  ; FMax(a,b)
  %4658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4659 = extractvalue %dx.types.CBufRet.f32 %4658, 0
  %4660 = fadd fast float %4659, %4657
  %4661 = extractvalue %dx.types.CBufRet.f32 %4658, 2
  %4662 = fmul fast float %4660, %4661
  %4663 = call float @dx.op.unary.f32(i32 23, float %4662)  ; Log(value)
  %4664 = extractvalue %dx.types.CBufRet.f32 %4658, 3
  %4665 = fmul fast float %4664, %4663
  %4666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4667 = extractvalue %dx.types.CBufRet.f32 %4666, 2
  %4668 = fmul fast float %4665, %4667
  %4669 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4670 = uitofp i32 %4648 to float
  %4671 = uitofp i32 %4651 to float
  %4672 = fadd fast float %4670, 5.000000e-01
  %4673 = fadd fast float %4671, 5.000000e-01
  %4674 = fmul fast float %4667, %4672
  %4675 = fmul fast float %4667, %4673
  %4676 = fadd fast float %4674, 0x3F0FFB4800000000
  %4677 = fadd fast float %4675, 0xBF0FFB4800000000
  %4678 = call float @dx.op.binary.f32(i32 35, float %4669, float %4676)  ; FMax(a,b)
  %4679 = call float @dx.op.binary.f32(i32 36, float %4678, float %4677)  ; FMin(a,b)
  %4680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4681 = extractvalue %dx.types.CBufRet.f32 %4680, 1
  %4682 = extractvalue %dx.types.CBufRet.f32 %4680, 2
  %4683 = extractvalue %dx.types.CBufRet.f32 %4680, 0
  %4684 = fmul fast float %4681, %4679
  %4685 = fadd fast float %4683, %4684
  %4686 = fadd fast float %4683, %4682
  %4687 = fsub fast float %4681, %4682
  %4688 = fadd fast float %4687, %4683
  %4689 = call float @dx.op.binary.f32(i32 35, float %4685, float %4686)  ; FMax(a,b)
  %4690 = call float @dx.op.binary.f32(i32 36, float %4689, float %4688)  ; FMin(a,b)
  %4691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %4628, float %4629, float %4690, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4692 = extractvalue %dx.types.ResRet.f32 %4691, 0
  %4693 = extractvalue %dx.types.ResRet.f32 %4691, 1
  %4694 = extractvalue %dx.types.ResRet.f32 %4691, 2
  %4695 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4696 = extractvalue %dx.types.CBufRet.i32 %4695, 0
  %4697 = extractvalue %dx.types.CBufRet.i32 %4695, 1
  %4698 = uitofp i32 %4696 to float
  %4699 = uitofp i32 %4697 to float
  %4700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4701 = extractvalue %dx.types.CBufRet.f32 %4700, 0
  %4702 = extractvalue %dx.types.CBufRet.f32 %4700, 1
  %4703 = fmul fast float %4698, %4628
  %4704 = fmul fast float %4699, %4629
  %4705 = fadd fast float %4703, -5.000000e-01
  %4706 = fadd fast float %4704, -5.000000e-01
  %4707 = call float @dx.op.unary.f32(i32 22, float %4705)  ; Frc(value)
  %4708 = call float @dx.op.unary.f32(i32 22, float %4706)  ; Frc(value)
  %4709 = fmul fast float %4707, %4707
  %4710 = fmul fast float %4709, %4707
  %4711 = fsub fast float 3.000000e+00, %4707
  %4712 = fmul fast float %4709, %4711
  %4713 = fmul fast float %4707, 3.000000e+00
  %4714 = fmul fast float %4710, 3.000000e+00
  %4715 = fmul fast float %4709, 6.000000e+00
  %4716 = fsub fast float %4714, %4715
  %4717 = fadd fast float %4716, 4.000000e+00
  %4718 = fmul fast float %4717, 0x3FC5555560000000
  %4719 = fmul fast float %4710, -3.000000e+00
  %4720 = fadd fast float %4709, %4707
  %4721 = fmul fast float %4720, 3.000000e+00
  %4722 = fadd fast float %4719, 1.000000e+00
  %4723 = fadd fast float %4722, %4721
  %4724 = fmul fast float %4710, 0x3FC5555560000000
  %4725 = fmul fast float %4708, %4708
  %4726 = fmul fast float %4725, %4708
  %4727 = fsub fast float 3.000000e+00, %4708
  %4728 = fmul fast float %4725, %4727
  %4729 = fmul fast float %4708, 3.000000e+00
  %4730 = fmul fast float %4726, 3.000000e+00
  %4731 = fmul fast float %4725, 6.000000e+00
  %4732 = fsub fast float %4730, %4731
  %4733 = fadd fast float %4732, 4.000000e+00
  %4734 = fmul fast float %4733, 0x3FC5555560000000
  %4735 = fmul fast float %4726, -3.000000e+00
  %4736 = fadd fast float %4725, %4708
  %4737 = fmul fast float %4736, 3.000000e+00
  %4738 = fadd fast float %4735, 1.000000e+00
  %4739 = fadd fast float %4738, %4737
  %4740 = fmul fast float %4726, 0x3FC5555560000000
  %4741 = fadd fast float %4707, 1.000000e+00
  %4742 = fsub fast float 1.000000e+00, %4713
  %4743 = fadd fast float %4742, %4712
  %4744 = fadd fast float %4743, %4717
  %4745 = fmul fast float %4744, 0x3FC5555560000000
  %4746 = fdiv fast float %4718, %4745
  %4747 = fsub fast float %4741, %4746
  %4748 = fsub fast float 1.000000e+00, %4707
  %4749 = fadd fast float %4723, %4710
  %4750 = fmul fast float %4749, 0x3FC5555560000000
  %4751 = fdiv fast float %4724, %4750
  %4752 = fadd fast float %4748, %4751
  %4753 = fadd fast float %4708, 1.000000e+00
  %4754 = fsub fast float 1.000000e+00, %4729
  %4755 = fadd fast float %4754, %4728
  %4756 = fadd fast float %4755, %4733
  %4757 = fmul fast float %4756, 0x3FC5555560000000
  %4758 = fdiv fast float %4734, %4757
  %4759 = fsub fast float %4753, %4758
  %4760 = fsub fast float 1.000000e+00, %4708
  %4761 = fadd fast float %4739, %4726
  %4762 = fmul fast float %4761, 0x3FC5555560000000
  %4763 = fdiv fast float %4740, %4762
  %4764 = fadd fast float %4763, %4760
  %4765 = fmul fast float %4747, %4701
  %4766 = fsub fast float %4628, %4765
  %4767 = fmul fast float %4752, %4701
  %4768 = fadd fast float %4767, %4628
  %4769 = fmul fast float %4764, %4702
  %4770 = fadd fast float %4769, %4629
  %4771 = fmul fast float %4759, %4702
  %4772 = fsub fast float %4629, %4771
  %4773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %4766, float %4772, float %4690, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4774 = extractvalue %dx.types.ResRet.f32 %4773, 0
  %4775 = extractvalue %dx.types.ResRet.f32 %4773, 1
  %4776 = extractvalue %dx.types.ResRet.f32 %4773, 2
  %4777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %4768, float %4772, float %4690, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4778 = extractvalue %dx.types.ResRet.f32 %4777, 0
  %4779 = extractvalue %dx.types.ResRet.f32 %4777, 1
  %4780 = extractvalue %dx.types.ResRet.f32 %4777, 2
  %4781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %4766, float %4770, float %4690, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4782 = extractvalue %dx.types.ResRet.f32 %4781, 0
  %4783 = extractvalue %dx.types.ResRet.f32 %4781, 1
  %4784 = extractvalue %dx.types.ResRet.f32 %4781, 2
  %4785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %4768, float %4770, float %4690, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4786 = extractvalue %dx.types.ResRet.f32 %4785, 0
  %4787 = extractvalue %dx.types.ResRet.f32 %4785, 1
  %4788 = extractvalue %dx.types.ResRet.f32 %4785, 2
  %4789 = fsub fast float %4782, %4774
  %4790 = fsub fast float %4783, %4775
  %4791 = fsub fast float %4784, %4776
  %4792 = fmul fast float %4789, %4762
  %4793 = fmul fast float %4790, %4762
  %4794 = fmul fast float %4791, %4762
  %4795 = fadd fast float %4792, %4774
  %4796 = fadd fast float %4793, %4775
  %4797 = fadd fast float %4794, %4776
  %4798 = fsub fast float %4786, %4778
  %4799 = fsub fast float %4787, %4779
  %4800 = fsub fast float %4788, %4780
  %4801 = fmul fast float %4798, %4762
  %4802 = fmul fast float %4799, %4762
  %4803 = fmul fast float %4800, %4762
  %4804 = fsub fast float %4778, %4795
  %4805 = fadd fast float %4804, %4801
  %4806 = fsub fast float %4779, %4796
  %4807 = fadd fast float %4806, %4802
  %4808 = fsub fast float %4780, %4797
  %4809 = fadd fast float %4808, %4803
  %4810 = fmul fast float %4805, %4750
  %4811 = fmul fast float %4807, %4750
  %4812 = fmul fast float %4809, %4750
  %4813 = fadd fast float %4810, %4795
  %4814 = fadd fast float %4811, %4796
  %4815 = fadd fast float %4812, %4797
  %4816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4817 = extractvalue %dx.types.CBufRet.f32 %4816, 1
  %4818 = fmul fast float %4813, %4817
  %4819 = fmul fast float %4814, %4817
  %4820 = fmul fast float %4815, %4817
  br label %4821

; <label>:4821                                    ; preds = %4653, %4622
  %4822 = phi float [ %4692, %4653 ], [ 1.000000e+00, %4622 ]
  %4823 = phi float [ %4693, %4653 ], [ 1.000000e+00, %4622 ]
  %4824 = phi float [ %4694, %4653 ], [ 1.000000e+00, %4622 ]
  %4825 = phi float [ %4818, %4653 ], [ 0.000000e+00, %4622 ]
  %4826 = phi float [ %4819, %4653 ], [ 0.000000e+00, %4622 ]
  %4827 = phi float [ %4820, %4653 ], [ 0.000000e+00, %4622 ]
  %4828 = fmul fast float %4825, %4599
  %4829 = fmul fast float %4826, %4599
  %4830 = fmul fast float %4827, %4599
  %4831 = call float @dx.op.dot3.f32(i32 55, float %4822, float %4823, float %4824, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4832 = call float @dx.op.dot3.f32(i32 55, float %4828, float %4829, float %4830, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4833 = select i1 %195, float %4831, float %4822
  %4834 = select i1 %195, float %4831, float %4823
  %4835 = select i1 %195, float 1.000000e+00, float %4824
  %4836 = select i1 %195, float %4832, float %4828
  %4837 = select i1 %195, float 0.000000e+00, float %4829
  %4838 = select i1 %195, float 0.000000e+00, float %4830
  %4839 = fmul fast float %4833, %4612
  %4840 = fmul fast float %4834, %4613
  %4841 = fmul fast float %4835, %4614
  %4842 = fadd fast float %4839, %4836
  %4843 = fadd fast float %4840, %4837
  %4844 = fadd fast float %4838, %4841
  %4845 = fmul fast float %4833, %4586
  %4846 = fmul fast float %4834, %4587
  %4847 = fmul fast float %4835, %4588
  %4848 = fmul fast float %85, 2.000000e+00
  %4849 = fmul fast float %4848, %4624
  %4850 = fmul fast float %86, 2.000000e+00
  %4851 = fmul fast float %4850, %4625
  %4852 = fsub fast float 1.000000e+00, %4849
  %4853 = fsub fast float 1.000000e+00, %4851
  %4854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4855 = extractvalue %dx.types.CBufRet.f32 %4854, 0
  %4856 = extractvalue %dx.types.CBufRet.f32 %4854, 1
  %4857 = extractvalue %dx.types.CBufRet.f32 %4854, 2
  %4858 = fmul fast float %4852, %4855
  %4859 = fmul fast float %4852, %4856
  %4860 = fmul fast float %4852, %4857
  %4861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4862 = extractvalue %dx.types.CBufRet.f32 %4861, 0
  %4863 = extractvalue %dx.types.CBufRet.f32 %4861, 1
  %4864 = extractvalue %dx.types.CBufRet.f32 %4861, 2
  %4865 = fmul fast float %4853, %4862
  %4866 = fmul fast float %4853, %4863
  %4867 = fmul fast float %4853, %4864
  %4868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4869 = extractvalue %dx.types.CBufRet.f32 %4868, 0
  %4870 = extractvalue %dx.types.CBufRet.f32 %4868, 1
  %4871 = extractvalue %dx.types.CBufRet.f32 %4868, 2
  %4872 = fadd fast float %4865, %4869
  %4873 = fadd fast float %4872, %4858
  %4874 = fadd fast float %4866, %4870
  %4875 = fadd fast float %4874, %4859
  %4876 = fadd fast float %4867, %4871
  %4877 = fadd fast float %4876, %4860
  %4878 = fmul fast float %4873, %155
  %4879 = fmul fast float %4875, %155
  %4880 = fmul fast float %4877, %155
  br label %4881

; <label>:4881                                    ; preds = %4821, %4585
  %4882 = phi float [ %4878, %4821 ], [ %133, %4585 ]
  %4883 = phi float [ %4879, %4821 ], [ %134, %4585 ]
  %4884 = phi float [ %4880, %4821 ], [ %135, %4585 ]
  %4885 = phi float [ %155, %4821 ], [ %76, %4585 ]
  %4886 = phi float [ %4842, %4821 ], [ %4612, %4585 ]
  %4887 = phi float [ %4843, %4821 ], [ %4613, %4585 ]
  %4888 = phi float [ %4844, %4821 ], [ %4614, %4585 ]
  %4889 = phi float [ %4845, %4821 ], [ %4586, %4585 ]
  %4890 = phi float [ %4846, %4821 ], [ %4587, %4585 ]
  %4891 = phi float [ %4847, %4821 ], [ %4588, %4585 ]
  %4892 = phi float [ %4822, %4821 ], [ 1.000000e+00, %4585 ]
  br i1 %4621, label %6047, label %4893

; <label>:4893                                    ; preds = %4881
  %4894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %4895 = extractvalue %dx.types.CBufRet.f32 %4894, 0
  %4896 = extractvalue %dx.types.CBufRet.f32 %4894, 1
  %4897 = extractvalue %dx.types.CBufRet.f32 %4894, 2
  %4898 = extractvalue %dx.types.CBufRet.f32 %4894, 3
  %4899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %4900 = extractvalue %dx.types.CBufRet.f32 %4899, 0
  %4901 = extractvalue %dx.types.CBufRet.f32 %4899, 1
  %4902 = extractvalue %dx.types.CBufRet.f32 %4899, 2
  %4903 = extractvalue %dx.types.CBufRet.f32 %4899, 3
  %4904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %4905 = extractvalue %dx.types.CBufRet.f32 %4904, 0
  %4906 = extractvalue %dx.types.CBufRet.f32 %4904, 1
  %4907 = extractvalue %dx.types.CBufRet.f32 %4904, 2
  %4908 = extractvalue %dx.types.CBufRet.f32 %4904, 3
  %4909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %4910 = extractvalue %dx.types.CBufRet.f32 %4909, 0
  %4911 = extractvalue %dx.types.CBufRet.f32 %4909, 1
  %4912 = extractvalue %dx.types.CBufRet.f32 %4909, 2
  %4913 = extractvalue %dx.types.CBufRet.f32 %4909, 3
  %4914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %4915 = extractvalue %dx.types.CBufRet.f32 %4914, 3
  %4916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %4917 = extractvalue %dx.types.CBufRet.f32 %4916, 3
  %4918 = extractvalue %dx.types.CBufRet.f32 %4916, 0
  %4919 = extractvalue %dx.types.CBufRet.f32 %4916, 1
  %4920 = extractvalue %dx.types.CBufRet.f32 %4916, 2
  %4921 = fcmp fast olt float %4920, -5.000000e-01
  %4922 = call float @dx.op.dot3.f32(i32 55, float %4882, float %4883, float %4884, float %4882, float %4883, float %4884)  ; Dot3(ax,ay,az,bx,by,bz)
  %4923 = call float @dx.op.unary.f32(i32 25, float %4922)  ; Rsqrt(value)
  %4924 = fmul fast float %4923, %4922
  %4925 = fmul fast float %4923, %4882
  %4926 = fmul fast float %4923, %4883
  %4927 = fmul fast float %4923, %4884
  %4928 = fadd fast float %4924, %4898
  %4929 = call float @dx.op.dot3.f32(i32 55, float %4925, float %4926, float %4927, float %4895, float %4896, float %4897)  ; Dot3(ax,ay,az,bx,by,bz)
  %4930 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4931 = extractvalue %dx.types.CBufRet.i32 %4930, 1
  %4932 = and i32 %4931, 1
  %4933 = icmp ne i32 %4932, 0
  %4934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %4935 = extractvalue %dx.types.CBufRet.f32 %4934, 2
  %4936 = fcmp fast ogt float %4935, 0.000000e+00
  %4937 = and i1 %4933, %4936
  br i1 %4937, label %4938, label %5344, !dx.controlflow.hints !112

; <label>:4938                                    ; preds = %4893
  %4939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %4940 = extractvalue %dx.types.CBufRet.f32 %4939, 3
  %4941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4942 = extractvalue %dx.types.CBufRet.f32 %4941, 2
  %4943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4944 = extractvalue %dx.types.CBufRet.f32 %4943, 2
  %4945 = fsub fast float %4942, %4944
  %4946 = and i32 %4931, 2
  %4947 = extractvalue %dx.types.CBufRet.i32 %4930, 0
  %4948 = call i32 @dx.op.binary.i32(i32 40, i32 %4947, i32 3)  ; UMin(a,b)
  %4949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %4950 = extractvalue %dx.types.CBufRet.f32 %4949, 0
  %4951 = extractvalue %dx.types.CBufRet.f32 %4949, 1
  %4952 = extractvalue %dx.types.CBufRet.f32 %4943, 0
  %4953 = extractvalue %dx.types.CBufRet.f32 %4943, 1
  %4954 = fsub fast float %4950, %4952
  %4955 = fsub fast float %4951, %4953
  %4956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %4957 = extractvalue %dx.types.CBufRet.f32 %4956, 0
  %4958 = fcmp fast ogt float %4957, 0.000000e+00
  %4959 = fsub fast float -0.000000e+00, %4954
  %4960 = fsub fast float -0.000000e+00, %4955
  %4961 = call float @dx.op.dot2.f32(i32 54, float %4925, float %4926, float %4925, float %4926)  ; Dot2(ax,ay,bx,by)
  %4962 = call float @dx.op.dot2.f32(i32 54, float %4925, float %4926, float %4959, float %4960)  ; Dot2(ax,ay,bx,by)
  %4963 = fmul fast float %4962, 2.000000e+00
  %4964 = call float @dx.op.dot2.f32(i32 54, float %4959, float %4960, float %4959, float %4960)  ; Dot2(ax,ay,bx,by)
  %4965 = fmul fast float %4957, %4957
  %4966 = fsub fast float %4964, %4965
  %4967 = fmul fast float %4963, %4963
  %4968 = fmul fast float %4961, 4.000000e+00
  %4969 = fmul fast float %4968, %4966
  %4970 = fsub fast float %4967, %4969
  %4971 = fcmp fast ogt float %4970, 0.000000e+00
  br i1 %4971, label %4972, label %4987

; <label>:4972                                    ; preds = %4938
  %4973 = fcmp fast ogt float %4963, 0.000000e+00
  %4974 = call float @dx.op.unary.f32(i32 24, float %4970)  ; Sqrt(value)
  %4975 = fsub fast float -0.000000e+00, %4974
  %4976 = select i1 %4973, float %4974, float %4975
  %4977 = fadd fast float %4976, %4963
  %4978 = fmul float %4977, -5.000000e-01
  %4979 = fdiv fast float %4978, %4961
  %4980 = call float @dx.op.binary.f32(i32 35, float %4979, float 0.000000e+00)  ; FMax(a,b)
  %4981 = call float @dx.op.binary.f32(i32 36, float %4924, float %4980)  ; FMin(a,b)
  %4982 = fdiv fast float %4966, %4978
  %4983 = call float @dx.op.binary.f32(i32 35, float %4982, float 0.000000e+00)  ; FMax(a,b)
  %4984 = call float @dx.op.binary.f32(i32 36, float %4924, float %4983)  ; FMin(a,b)
  %4985 = call float @dx.op.binary.f32(i32 36, float %4981, float %4984)  ; FMin(a,b)
  %4986 = call float @dx.op.binary.f32(i32 35, float %4981, float %4984)  ; FMax(a,b)
  br label %4987

; <label>:4987                                    ; preds = %4972, %4938
  %4988 = phi float [ %4986, %4972 ], [ -1.000000e+00, %4938 ]
  %4989 = phi float [ %4985, %4972 ], [ -1.000000e+00, %4938 ]
  %4990 = phi i1 [ true, %4972 ], [ false, %4938 ]
  %4991 = and i1 %4958, %4990
  br i1 %4991, label %4992, label %4994

; <label>:4992                                    ; preds = %4987
  %4993 = fcmp fast oeq float %4989, %4988
  br i1 %4993, label %5297, label %4995

; <label>:4994                                    ; preds = %4987
  br i1 %4958, label %5297, label %4995

; <label>:4995                                    ; preds = %4994, %4992
  %4996 = phi float [ %4924, %4994 ], [ %4988, %4992 ]
  %4997 = phi float [ 0.000000e+00, %4994 ], [ %4989, %4992 ]
  %4998 = icmp ne i32 %4946, 0
  %4999 = fmul fast float %4996, %4927
  %5000 = fadd fast float %4999, %4940
  %5001 = fmul fast float %5000, %4996
  %5002 = select i1 %4998, float 0.000000e+00, float %5001
  %5003 = fcmp fast oeq float %4927, 0.000000e+00
  %5004 = fdiv fast float %4945, %4927
  %5005 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5004)  ; FMax(a,b)
  %5006 = select i1 %5003, float %4996, float %5005
  %5007 = call float @dx.op.binary.f32(i32 36, float %4996, float %5006)  ; FMin(a,b)
  %5008 = fcmp fast ogt float %4927, 0.000000e+00
  %5009 = fcmp fast olt float %4945, 0.000000e+00
  br i1 %5008, label %5010, label %5067

; <label>:5010                                    ; preds = %4995
  %5011 = icmp eq i32 %4946, 0
  br i1 %5009, label %5012, label %5056

; <label>:5012                                    ; preds = %5010
  %5013 = select i1 %5011, float %4996, float 0.000000e+00
  %5014 = fsub fast float -0.000000e+00, %5013
  %5015 = call float @dx.op.unary.f32(i32 6, float %5014)  ; FAbs(value)
  %5016 = fmul fast float %5013, %4927
  %5017 = fadd fast float %5016, %4940
  %5018 = fmul fast float %5015, %5017
  %5019 = fsub fast float %5002, %5018
  %5020 = fsub fast float %4996, %5015
  %5021 = select i1 %5011, float %5020, float 0.000000e+00
  %5022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5023 = extractvalue %dx.types.CBufRet.f32 %5022, 0
  %5024 = extractvalue %dx.types.CBufRet.f32 %5022, 1
  %5025 = extractvalue %dx.types.CBufRet.f32 %5022, 2
  %5026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5027 = extractvalue %dx.types.CBufRet.f32 %5026, 0
  %5028 = extractvalue %dx.types.CBufRet.f32 %5026, 1
  %5029 = extractvalue %dx.types.CBufRet.f32 %5026, 2
  %5030 = extractvalue %dx.types.CBufRet.f32 %5026, 3
  %5031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5032 = extractvalue %dx.types.CBufRet.f32 %5031, 3
  %5033 = call float @dx.op.binary.f32(i32 36, float %5019, float %5032)  ; FMin(a,b)
  %5034 = fmul fast float %5030, %5021
  %5035 = call float @dx.op.unary.f32(i32 7, float %5034)  ; Saturate(value)
  %5036 = fsub fast float %5027, %5023
  %5037 = fsub fast float %5028, %5024
  %5038 = fsub fast float %5029, %5025
  %5039 = fmul fast float %5035, %5036
  %5040 = fmul fast float %5035, %5037
  %5041 = fmul fast float %5035, %5038
  %5042 = fadd fast float %5039, %5023
  %5043 = fadd fast float %5040, %5024
  %5044 = fadd fast float %5041, %5025
  %5045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5046 = extractvalue %dx.types.CBufRet.f32 %5045, 0
  %5047 = extractvalue %dx.types.CBufRet.f32 %5045, 1
  %5048 = fadd fast float %5047, %5046
  %5049 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5050 = extractvalue %dx.types.CBufRet.f32 %5045, 2
  %5051 = extractvalue %dx.types.CBufRet.f32 %5045, 3
  %5052 = fadd fast float %5051, %5050
  %5053 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5054 = fmul fast float %5049, %5033
  %5055 = fmul fast float %5054, %5053
  br label %5297

; <label>:5056                                    ; preds = %5010
  br i1 %5011, label %5057, label %5078

; <label>:5057                                    ; preds = %5056
  %5058 = call float @dx.op.binary.f32(i32 36, float %5007, float %4997)  ; FMin(a,b)
  %5059 = fsub fast float %5007, %5058
  %5060 = fsub fast float %5059, %4996
  %5061 = call float @dx.op.unary.f32(i32 6, float %5060)  ; FAbs(value)
  %5062 = fadd fast float %5059, %4996
  %5063 = fmul fast float %5062, %4927
  %5064 = fadd fast float %5063, %4940
  %5065 = fmul fast float %5064, %5061
  %5066 = fsub fast float %5002, %5065
  br label %5078

; <label>:5067                                    ; preds = %4995
  br i1 %5009, label %5068, label %5078

; <label>:5068                                    ; preds = %5067
  %5069 = call float @dx.op.binary.f32(i32 35, float %4997, float %5007)  ; FMax(a,b)
  %5070 = icmp eq i32 %4946, 0
  %5071 = select i1 %5070, float %5007, float 0.000000e+00
  %5072 = fsub fast float -0.000000e+00, %5071
  %5073 = call float @dx.op.unary.f32(i32 6, float %5072)  ; FAbs(value)
  %5074 = fmul fast float %5071, %4927
  %5075 = fadd fast float %5074, %4940
  %5076 = fmul fast float %5073, %5075
  %5077 = fsub fast float %5002, %5076
  br label %5078

; <label>:5078                                    ; preds = %5068, %5067, %5057, %5056
  %5079 = phi float [ %4997, %5056 ], [ %4997, %5057 ], [ %5069, %5068 ], [ %4997, %5067 ]
  %5080 = phi float [ 0.000000e+00, %5056 ], [ %5061, %5057 ], [ %5073, %5068 ], [ 0.000000e+00, %5067 ]
  %5081 = phi float [ %5002, %5056 ], [ %5066, %5057 ], [ %5077, %5068 ], [ %5002, %5067 ]
  %5082 = phi float [ %5007, %5056 ], [ %5007, %5057 ], [ %4996, %5068 ], [ %4996, %5067 ]
  %5083 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 0
  store float -1.000000e+00, float* %5083, align 4, !tbaa !113, !noalias !115
  %5084 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 1
  store float -1.000000e+00, float* %5084, align 4, !tbaa !113, !noalias !115
  %5085 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 2
  store float -1.000000e+00, float* %5085, align 4, !tbaa !113, !noalias !115
  %5086 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 0
  store float -1.000000e+00, float* %5086, align 4, !tbaa !113, !noalias !115
  %5087 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 1
  store float -1.000000e+00, float* %5087, align 4, !tbaa !113, !noalias !115
  %5088 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 2
  store float -1.000000e+00, float* %5088, align 4, !tbaa !113, !noalias !115
  %5089 = icmp sgt i32 %4948, 0
  br i1 %5089, label %5090, label %5151

; <label>:5090                                    ; preds = %5078
  br label %5091

; <label>:5091                                    ; preds = %5140, %5090
  %5092 = phi i32 [ %5141, %5140 ], [ 0, %5090 ]
  %5093 = phi i32 [ %5142, %5140 ], [ 0, %5090 ]
  %5094 = add nuw i32 %5093, 171
  %5095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %5094)  ; CBufferLoadLegacy(handle,regIndex)
  %5096 = extractvalue %dx.types.CBufRet.f32 %5095, 0
  %5097 = extractvalue %dx.types.CBufRet.f32 %5095, 1
  %5098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5099 = extractvalue %dx.types.CBufRet.f32 %5098, 0
  %5100 = extractvalue %dx.types.CBufRet.f32 %5098, 1
  %5101 = fsub fast float %5096, %5099
  %5102 = fsub fast float %5097, %5100
  %5103 = extractvalue %dx.types.CBufRet.f32 %5095, 2
  %5104 = fsub fast float -0.000000e+00, %5101
  %5105 = fsub fast float -0.000000e+00, %5102
  %5106 = call float @dx.op.dot2.f32(i32 54, float %4925, float %4926, float %5104, float %5105)  ; Dot2(ax,ay,bx,by)
  %5107 = fmul fast float %5106, 2.000000e+00
  %5108 = call float @dx.op.dot2.f32(i32 54, float %5104, float %5105, float %5104, float %5105)  ; Dot2(ax,ay,bx,by)
  %5109 = fmul fast float %5103, %5103
  %5110 = fsub fast float %5108, %5109
  %5111 = fmul fast float %5107, %5107
  %5112 = fmul fast float %4968, %5110
  %5113 = fsub fast float %5111, %5112
  %5114 = fcmp fast ogt float %5113, 0.000000e+00
  br i1 %5114, label %5115, label %5130

; <label>:5115                                    ; preds = %5091
  %5116 = fcmp fast ogt float %5107, 0.000000e+00
  %5117 = call float @dx.op.unary.f32(i32 24, float %5113)  ; Sqrt(value)
  %5118 = fsub fast float -0.000000e+00, %5117
  %5119 = select i1 %5116, float %5117, float %5118
  %5120 = fadd fast float %5119, %5107
  %5121 = fmul float %5120, -5.000000e-01
  %5122 = fdiv fast float %5121, %4961
  %5123 = call float @dx.op.binary.f32(i32 35, float %5122, float 0.000000e+00)  ; FMax(a,b)
  %5124 = call float @dx.op.binary.f32(i32 36, float %4996, float %5123)  ; FMin(a,b)
  %5125 = fdiv fast float %5110, %5121
  %5126 = call float @dx.op.binary.f32(i32 35, float %5125, float 0.000000e+00)  ; FMax(a,b)
  %5127 = call float @dx.op.binary.f32(i32 36, float %4996, float %5126)  ; FMin(a,b)
  %5128 = call float @dx.op.binary.f32(i32 36, float %5124, float %5127)  ; FMin(a,b)
  %5129 = call float @dx.op.binary.f32(i32 35, float %5124, float %5127)  ; FMax(a,b)
  br label %5130

; <label>:5130                                    ; preds = %5115, %5091
  %5131 = phi float [ %5129, %5115 ], [ -1.000000e+00, %5091 ]
  %5132 = phi float [ %5128, %5115 ], [ -1.000000e+00, %5091 ]
  %5133 = phi i1 [ true, %5115 ], [ false, %5091 ]
  br i1 %5133, label %5134, label %5140

; <label>:5134                                    ; preds = %5130
  %5135 = call float @dx.op.binary.f32(i32 35, float %5079, float %5132)  ; FMax(a,b)
  %5136 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5093
  store float %5135, float* %5136, align 4, !tbaa !113, !noalias !115
  %5137 = call float @dx.op.binary.f32(i32 35, float %5079, float %5131)  ; FMax(a,b)
  %5138 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %5093
  store float %5137, float* %5138, align 4, !tbaa !113, !noalias !115
  %5139 = add nsw i32 %5092, 1
  br label %5140

; <label>:5140                                    ; preds = %5134, %5130
  %5141 = phi i32 [ %5139, %5134 ], [ %5092, %5130 ]
  %5142 = add nuw nsw i32 %5093, 1
  %5143 = icmp eq i32 %5142, %4948
  br i1 %5143, label %5144, label %5091

; <label>:5144                                    ; preds = %5140
  %5145 = load float, float* %5085, align 4, !tbaa !113, !alias.scope !131, !noalias !134
  %5146 = load float, float* %5084, align 4, !tbaa !113, !alias.scope !137, !noalias !138
  %5147 = load float, float* %5083, align 4, !tbaa !113, !alias.scope !139, !noalias !140
  %5148 = load float, float* %5088, align 4, !tbaa !113, !alias.scope !141, !noalias !144
  %5149 = load float, float* %5087, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  %5150 = load float, float* %5086, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  br label %5151

; <label>:5151                                    ; preds = %5144, %5078
  %5152 = phi float [ -1.000000e+00, %5078 ], [ %5150, %5144 ]
  %5153 = phi float [ -1.000000e+00, %5078 ], [ %5149, %5144 ]
  %5154 = phi float [ -1.000000e+00, %5078 ], [ %5148, %5144 ]
  %5155 = phi float [ -1.000000e+00, %5078 ], [ %5147, %5144 ]
  %5156 = phi float [ -1.000000e+00, %5078 ], [ %5146, %5144 ]
  %5157 = phi float [ -1.000000e+00, %5078 ], [ %5145, %5144 ]
  %5158 = phi i32 [ 0, %5078 ], [ %5141, %5144 ]
  %5159 = call float @dx.op.binary.f32(i32 36, float %5156, float %5157)  ; FMin(a,b)
  %5160 = call float @dx.op.binary.f32(i32 36, float %5155, float %5159)  ; FMin(a,b)
  %5161 = call float @dx.op.binary.f32(i32 35, float %5155, float %5156)  ; FMax(a,b)
  %5162 = call float @dx.op.binary.f32(i32 36, float %5161, float %5157)  ; FMin(a,b)
  %5163 = call float @dx.op.binary.f32(i32 36, float %5155, float %5156)  ; FMin(a,b)
  %5164 = call float @dx.op.binary.f32(i32 35, float %5163, float %5162)  ; FMax(a,b)
  %5165 = call float @dx.op.binary.f32(i32 35, float %5156, float %5157)  ; FMax(a,b)
  %5166 = call float @dx.op.binary.f32(i32 35, float %5155, float %5165)  ; FMax(a,b)
  store float %5160, float* %5083, align 4, !tbaa !113, !alias.scope !139, !noalias !140
  store float %5164, float* %5084, align 4, !tbaa !113, !alias.scope !137, !noalias !138
  store float %5166, float* %5085, align 4, !tbaa !113, !alias.scope !131, !noalias !134
  %5167 = call float @dx.op.binary.f32(i32 36, float %5153, float %5154)  ; FMin(a,b)
  %5168 = call float @dx.op.binary.f32(i32 36, float %5152, float %5167)  ; FMin(a,b)
  %5169 = call float @dx.op.binary.f32(i32 35, float %5152, float %5153)  ; FMax(a,b)
  %5170 = call float @dx.op.binary.f32(i32 36, float %5169, float %5154)  ; FMin(a,b)
  %5171 = call float @dx.op.binary.f32(i32 36, float %5152, float %5153)  ; FMin(a,b)
  %5172 = call float @dx.op.binary.f32(i32 35, float %5171, float %5170)  ; FMax(a,b)
  %5173 = call float @dx.op.binary.f32(i32 35, float %5153, float %5154)  ; FMax(a,b)
  %5174 = call float @dx.op.binary.f32(i32 35, float %5152, float %5173)  ; FMax(a,b)
  store float %5168, float* %5086, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  store float %5172, float* %5087, align 4, !tbaa !113, !alias.scope !147, !noalias !148
  store float %5174, float* %5088, align 4, !tbaa !113, !alias.scope !141, !noalias !144
  %5175 = sub nsw i32 3, %5158
  %5176 = icmp sgt i32 %5175, 2
  br i1 %5176, label %5177, label %5215

; <label>:5177                                    ; preds = %5151
  %5178 = icmp eq i32 %4946, 0
  %5179 = fsub fast float %4996, %5080
  %5180 = select i1 %5178, float %5179, float %5080
  %5181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5182 = extractvalue %dx.types.CBufRet.f32 %5181, 0
  %5183 = extractvalue %dx.types.CBufRet.f32 %5181, 1
  %5184 = extractvalue %dx.types.CBufRet.f32 %5181, 2
  %5185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5186 = extractvalue %dx.types.CBufRet.f32 %5185, 0
  %5187 = extractvalue %dx.types.CBufRet.f32 %5185, 1
  %5188 = extractvalue %dx.types.CBufRet.f32 %5185, 2
  %5189 = extractvalue %dx.types.CBufRet.f32 %5185, 3
  %5190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5191 = extractvalue %dx.types.CBufRet.f32 %5190, 3
  %5192 = call float @dx.op.binary.f32(i32 36, float %5081, float %5191)  ; FMin(a,b)
  %5193 = fmul fast float %5189, %5180
  %5194 = call float @dx.op.unary.f32(i32 7, float %5193)  ; Saturate(value)
  %5195 = fsub fast float %5186, %5182
  %5196 = fsub fast float %5187, %5183
  %5197 = fsub fast float %5188, %5184
  %5198 = fmul fast float %5194, %5195
  %5199 = fmul fast float %5194, %5196
  %5200 = fmul fast float %5194, %5197
  %5201 = fadd fast float %5198, %5182
  %5202 = fadd fast float %5199, %5183
  %5203 = fadd fast float %5200, %5184
  %5204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5205 = extractvalue %dx.types.CBufRet.f32 %5204, 0
  %5206 = extractvalue %dx.types.CBufRet.f32 %5204, 1
  %5207 = fadd fast float %5206, %5205
  %5208 = call float @dx.op.unary.f32(i32 7, float %5207)  ; Saturate(value)
  %5209 = extractvalue %dx.types.CBufRet.f32 %5204, 2
  %5210 = extractvalue %dx.types.CBufRet.f32 %5204, 3
  %5211 = fadd fast float %5210, %5209
  %5212 = call float @dx.op.unary.f32(i32 7, float %5211)  ; Saturate(value)
  %5213 = fmul fast float %5208, %5192
  %5214 = fmul fast float %5213, %5212
  br label %5297

; <label>:5215                                    ; preds = %5151
  %5216 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5175
  %5217 = load float, float* %5216, align 4, !tbaa !113, !noalias !115
  %5218 = fcmp fast olt float %5217, %5082
  %5219 = icmp sgt i32 %5158, 0
  %5220 = and i1 %5219, %5218
  br i1 %5220, label %5221, label %5258

; <label>:5221                                    ; preds = %5215
  br label %5222

; <label>:5222                                    ; preds = %5251, %5221
  %5223 = phi float [ %5252, %5251 ], [ %5080, %5221 ]
  %5224 = phi float [ %5253, %5251 ], [ %5081, %5221 ]
  %5225 = phi float [ %5233, %5251 ], [ %5217, %5221 ]
  %5226 = phi i32 [ %5230, %5251 ], [ %5175, %5221 ]
  %5227 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %5226
  %5228 = load float, float* %5227, align 4, !tbaa !113, !noalias !115
  %5229 = icmp slt i32 %5226, 2
  %5230 = add nsw i32 %5226, 1
  %5231 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5230
  %5232 = load float, float* %5231, align 4, !tbaa !113, !noalias !115
  %5233 = select i1 %5229, float %5232, float %4996
  %5234 = call float @dx.op.binary.f32(i32 36, float %5233, float %5228)  ; FMin(a,b)
  %5235 = call float @dx.op.binary.f32(i32 36, float %5082, float %5234)  ; FMin(a,b)
  %5236 = icmp eq i32 %4946, 0
  %5237 = fadd fast float %5235, %5225
  %5238 = fmul fast float %5237, %4927
  %5239 = fadd fast float %5238, %4940
  br i1 %5236, label %5245, label %5240

; <label>:5240                                    ; preds = %5222
  %5241 = fsub fast float %5235, %5225
  %5242 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5241)  ; FMax(a,b)
  %5243 = fmul fast float %5242, %5239
  %5244 = fadd fast float %5243, %5224
  br label %5251

; <label>:5245                                    ; preds = %5222
  %5246 = fsub fast float %5225, %5235
  %5247 = call float @dx.op.unary.f32(i32 6, float %5246)  ; FAbs(value)
  %5248 = fadd fast float %5247, %5223
  %5249 = fmul fast float %5247, %5239
  %5250 = fsub fast float %5224, %5249
  br label %5251

; <label>:5251                                    ; preds = %5245, %5240
  %5252 = phi float [ %5242, %5240 ], [ %5248, %5245 ]
  %5253 = phi float [ %5244, %5240 ], [ %5250, %5245 ]
  %5254 = fcmp fast olt float %5233, %5082
  %5255 = icmp slt i32 %5230, 3
  %5256 = and i1 %5255, %5254
  br i1 %5256, label %5222, label %5257

; <label>:5257                                    ; preds = %5251
  br label %5258

; <label>:5258                                    ; preds = %5257, %5215
  %5259 = phi float [ %5080, %5215 ], [ %5252, %5257 ]
  %5260 = phi float [ %5081, %5215 ], [ %5253, %5257 ]
  %5261 = fsub fast float %4996, %5259
  %5262 = select i1 %4998, float %5259, float %5261
  %5263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.f32 %5263, 0
  %5265 = extractvalue %dx.types.CBufRet.f32 %5263, 1
  %5266 = extractvalue %dx.types.CBufRet.f32 %5263, 2
  %5267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5268 = extractvalue %dx.types.CBufRet.f32 %5267, 0
  %5269 = extractvalue %dx.types.CBufRet.f32 %5267, 1
  %5270 = extractvalue %dx.types.CBufRet.f32 %5267, 2
  %5271 = extractvalue %dx.types.CBufRet.f32 %5267, 3
  %5272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5273 = extractvalue %dx.types.CBufRet.f32 %5272, 3
  %5274 = call float @dx.op.binary.f32(i32 36, float %5260, float %5273)  ; FMin(a,b)
  %5275 = fmul fast float %5271, %5262
  %5276 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5277 = fsub fast float %5268, %5264
  %5278 = fsub fast float %5269, %5265
  %5279 = fsub fast float %5270, %5266
  %5280 = fmul fast float %5276, %5277
  %5281 = fmul fast float %5276, %5278
  %5282 = fmul fast float %5276, %5279
  %5283 = fadd fast float %5280, %5264
  %5284 = fadd fast float %5281, %5265
  %5285 = fadd fast float %5282, %5266
  %5286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5287 = extractvalue %dx.types.CBufRet.f32 %5286, 0
  %5288 = extractvalue %dx.types.CBufRet.f32 %5286, 1
  %5289 = fadd fast float %5288, %5287
  %5290 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5291 = extractvalue %dx.types.CBufRet.f32 %5286, 2
  %5292 = extractvalue %dx.types.CBufRet.f32 %5286, 3
  %5293 = fadd fast float %5292, %5291
  %5294 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  %5295 = fmul fast float %5290, %5274
  %5296 = fmul fast float %5295, %5294
  br label %5297

; <label>:5297                                    ; preds = %5258, %5177, %5012, %4994, %4992
  %5298 = phi float [ %5021, %5012 ], [ %5180, %5177 ], [ %5262, %5258 ], [ 0.000000e+00, %4992 ], [ 0.000000e+00, %4994 ]
  %5299 = phi float [ %5055, %5012 ], [ %5214, %5177 ], [ %5296, %5258 ], [ 0.000000e+00, %4992 ], [ 0.000000e+00, %4994 ]
  %5300 = phi float [ %5042, %5012 ], [ %5201, %5177 ], [ %5283, %5258 ], [ 0.000000e+00, %4992 ], [ 0.000000e+00, %4994 ]
  %5301 = phi float [ %5043, %5012 ], [ %5202, %5177 ], [ %5284, %5258 ], [ 0.000000e+00, %4992 ], [ 0.000000e+00, %4994 ]
  %5302 = phi float [ %5044, %5012 ], [ %5203, %5177 ], [ %5285, %5258 ], [ 0.000000e+00, %4992 ], [ 0.000000e+00, %4994 ]
  %5303 = fmul fast float %4935, %5299
  %5304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5305 = extractvalue %dx.types.CBufRet.f32 %5304, 2
  %5306 = fsub fast float %4942, %5305
  %5307 = fcmp fast olt float %5303, -2.000000e+01
  %5308 = call float @dx.op.unary.f32(i32 21, float %5303)  ; Exp(value)
  %5309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.f32 %5309, 2
  %5311 = extractvalue %dx.types.CBufRet.f32 %5309, 3
  %5312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5313 = extractvalue %dx.types.CBufRet.f32 %5312, 2
  %5314 = fmul fast float %5311, %5306
  %5315 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5316 = fsub fast float 1.000000e+00, %5315
  %5317 = fmul fast float %4927, 5.000000e-01
  %5318 = fadd fast float %5317, 5.000000e-01
  %5319 = call float @dx.op.unary.f32(i32 7, float %5318)  ; Saturate(value)
  %5320 = fsub fast float 1.000000e+00, %5319
  %5321 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5316)  ; FMax(a,b)
  %5322 = fdiv fast float %5320, %5321
  %5323 = fsub fast float %5306, %4884
  %5324 = call float @dx.op.unary.f32(i32 6, float %5323)  ; FAbs(value)
  %5325 = fmul fast float %5324, %5310
  %5326 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5327 = fsub fast float 1.000000e+00, %5325
  %5328 = fmul fast float %5327, %5326
  %5329 = fadd fast float %5328, %5325
  %5330 = fmul fast float %5313, %5306
  %5331 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5332 = fsub fast float 1.000000e+00, %5329
  %5333 = fmul fast float %5332, %5331
  %5334 = fadd fast float %5333, %5329
  %5335 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5336 = fadd fast float %5308, -1.000000e+00
  %5337 = select i1 %5307, float -1.000000e+00, float %5336
  %5338 = fmul fast float %5335, %5337
  %5339 = fadd fast float %5338, 1.000000e+00
  %5340 = fsub fast float -0.000000e+00, %5338
  %5341 = fmul fast float %5300, %5340
  %5342 = fmul fast float %5301, %5340
  %5343 = fmul fast float %5302, %5340
  br label %5344

; <label>:5344                                    ; preds = %5297, %4893
  %5345 = phi float [ %5298, %5297 ], [ 0.000000e+00, %4893 ]
  %5346 = phi float [ %5339, %5297 ], [ 1.000000e+00, %4893 ]
  %5347 = phi float [ %5341, %5297 ], [ 0.000000e+00, %4893 ]
  %5348 = phi float [ %5342, %5297 ], [ 0.000000e+00, %4893 ]
  %5349 = phi float [ %5343, %5297 ], [ 0.000000e+00, %4893 ]
  %5350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5351 = extractvalue %dx.types.CBufRet.f32 %5350, 1
  %5352 = fsub fast float 1.000000e+00, %5346
  %5353 = fmul fast float %5352, %4928
  %5354 = fmul fast float %5353, %5351
  %5355 = fsub fast float %4928, %5354
  br i1 %4921, label %5356, label %5385, !dx.controlflow.hints !151

; <label>:5356                                    ; preds = %5344
  %5357 = fmul fast float %4929, %4918
  %5358 = fadd fast float %5357, %4919
  %5359 = call float @dx.op.unary.f32(i32 7, float %5358)  ; Saturate(value)
  %5360 = fmul fast float %4900, %5355
  %5361 = fsub fast float -0.000000e+00, %5360
  %5362 = fmul fast float %4901, %5355
  %5363 = fsub fast float -0.000000e+00, %5362
  %5364 = call float @dx.op.unary.f32(i32 21, float %5361)  ; Exp(value)
  %5365 = call float @dx.op.unary.f32(i32 21, float %5363)  ; Exp(value)
  %5366 = call float @dx.op.binary.f32(i32 35, float %4908, float %5364)  ; FMax(a,b)
  %5367 = call float @dx.op.binary.f32(i32 35, float %4908, float %5365)  ; FMax(a,b)
  %5368 = fsub fast float %5367, %5366
  %5369 = fmul fast float %5368, %5359
  %5370 = fadd fast float %5369, %5366
  %5371 = call float @dx.op.unary.f32(i32 7, float %5370)  ; Saturate(value)
  %5372 = fsub fast float %4905, %4910
  %5373 = fsub fast float %4906, %4911
  %5374 = fsub fast float %4907, %4912
  %5375 = fmul fast float %5359, %5372
  %5376 = fmul fast float %5359, %5373
  %5377 = fmul fast float %5359, %5374
  %5378 = fadd fast float %5375, %4910
  %5379 = fadd fast float %5376, %4911
  %5380 = fadd fast float %5377, %4912
  %5381 = fsub fast float 1.000000e+00, %5371
  %5382 = fmul fast float %5381, %5378
  %5383 = fmul fast float %5381, %5379
  %5384 = fmul fast float %5381, %5380
  br label %5444

; <label>:5385                                    ; preds = %5344
  %5386 = fmul fast float %5355, %4917
  %5387 = call float @dx.op.unary.f32(i32 7, float %5386)  ; Saturate(value)
  %5388 = fsub fast float 2.000000e+00, %5387
  %5389 = fmul fast float %5387, 9.921875e-01
  %5390 = fmul fast float %5389, %5388
  %5391 = fadd fast float %5390, 3.906250e-03
  %5392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %5391, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5393 = extractvalue %dx.types.ResRet.f32 %5392, 0
  %5394 = fsub fast float %5387, %5393
  %5395 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5394)  ; FMax(a,b)
  %5396 = fmul fast float %4903, %4884
  %5397 = call float @dx.op.unary.f32(i32 6, float %5396)  ; FAbs(value)
  %5398 = fcmp fast ogt float %5397, 0x3EB0C6F7A0000000
  br i1 %5398, label %5399, label %5405, !dx.controlflow.hints !152

; <label>:5399                                    ; preds = %5385
  %5400 = fmul fast float %5396, 0xBFF7154760000000
  %5401 = call float @dx.op.unary.f32(i32 21, float %5400)  ; Exp(value)
  %5402 = fsub fast float 1.000000e+00, %5401
  %5403 = fdiv fast float %5402, %5396
  %5404 = fmul fast float %5403, %4913
  br label %5405

; <label>:5405                                    ; preds = %5399, %5385
  %5406 = phi float [ %5404, %5399 ], [ %4913, %5385 ]
  %5407 = fadd fast float %5406, %4915
  %5408 = fmul fast float %5407, %5395
  %5409 = fmul fast float %4900, %5408
  %5410 = fsub fast float -0.000000e+00, %5409
  %5411 = fmul fast float %4901, %5408
  %5412 = fsub fast float -0.000000e+00, %5411
  %5413 = fmul fast float %4902, %5408
  %5414 = fsub fast float -0.000000e+00, %5413
  %5415 = call float @dx.op.unary.f32(i32 21, float %5410)  ; Exp(value)
  %5416 = call float @dx.op.unary.f32(i32 21, float %5412)  ; Exp(value)
  %5417 = call float @dx.op.unary.f32(i32 21, float %5414)  ; Exp(value)
  %5418 = fmul fast float %4929, %4929
  %5419 = fadd fast float %5418, 1.000000e+00
  %5420 = fmul fast float %5419, 0x3FAE8EC8A0000000
  %5421 = fmul fast float %5420, %4910
  %5422 = fmul fast float %5420, %4911
  %5423 = fmul fast float %5420, %4912
  %5424 = fmul fast float %4929, %4908
  %5425 = fsub fast float 1.000000e+00, %5424
  %5426 = fmul fast float %4908, %4908
  %5427 = fsub fast float 1.000000e+00, %5426
  %5428 = fmul fast float %5427, 0x3FB45F3060000000
  %5429 = fmul fast float %5425, %5425
  %5430 = fdiv fast float 1.000000e+00, %5429
  %5431 = fmul fast float %5428, %5430
  %5432 = fmul fast float %5431, %4905
  %5433 = fmul fast float %5431, %4906
  %5434 = fmul fast float %5431, %4907
  %5435 = fadd fast float %5432, %5421
  %5436 = fadd fast float %5433, %5422
  %5437 = fadd fast float %5434, %5423
  %5438 = fsub fast float 1.000000e+00, %5415
  %5439 = fsub fast float 1.000000e+00, %5416
  %5440 = fsub fast float 1.000000e+00, %5417
  %5441 = fmul fast float %5435, %5438
  %5442 = fmul fast float %5436, %5439
  %5443 = fmul fast float %5437, %5440
  br label %5444

; <label>:5444                                    ; preds = %5405, %5356
  %5445 = phi float [ %5382, %5356 ], [ %5441, %5405 ]
  %5446 = phi float [ %5383, %5356 ], [ %5442, %5405 ]
  %5447 = phi float [ %5384, %5356 ], [ %5443, %5405 ]
  %5448 = phi float [ %5371, %5356 ], [ %5415, %5405 ]
  %5449 = phi float [ %5371, %5356 ], [ %5416, %5405 ]
  %5450 = phi float [ %5371, %5356 ], [ %5417, %5405 ]
  br i1 %4937, label %5451, label %5649, !dx.controlflow.hints !153

; <label>:5451                                    ; preds = %5444
  %5452 = extractvalue %dx.types.CBufRet.f32 %5350, 0
  %5453 = fmul fast float %5452, %5352
  %5454 = fsub fast float %5347, %5445
  %5455 = fsub fast float %5348, %5446
  %5456 = fsub fast float %5349, %5447
  %5457 = fmul fast float %5453, %5454
  %5458 = fmul fast float %5453, %5455
  %5459 = fmul fast float %5453, %5456
  %5460 = fadd fast float %5457, %5445
  %5461 = fadd fast float %5458, %5446
  %5462 = fadd fast float %5459, %5447
  %5463 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5448)  ; FMax(a,b)
  %5464 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5449)  ; FMax(a,b)
  %5465 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5450)  ; FMax(a,b)
  %5466 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5346)  ; FMax(a,b)
  %5467 = call float @dx.op.binary.f32(i32 35, float %5345, float %5355)  ; FMax(a,b)
  %5468 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5467)  ; FMax(a,b)
  %5469 = fdiv fast float %5345, %5468
  %5470 = call float @dx.op.unary.f32(i32 7, float %5469)  ; Saturate(value)
  %5471 = fdiv fast float %5355, %5468
  %5472 = call float @dx.op.unary.f32(i32 7, float %5471)  ; Saturate(value)
  %5473 = fcmp fast une float %5466, 1.000000e+00
  br i1 %5473, label %5474, label %5487, !dx.controlflow.hints !154

; <label>:5474                                    ; preds = %5451
  %5475 = call float @dx.op.unary.f32(i32 23, float %5466)  ; Log(value)
  %5476 = fmul fast float %5475, 0x3FE62E4300000000
  %5477 = fmul fast float %5347, %5476
  %5478 = fsub fast float -0.000000e+00, %5477
  %5479 = fmul fast float %5348, %5476
  %5480 = fsub fast float -0.000000e+00, %5479
  %5481 = fmul fast float %5349, %5476
  %5482 = fsub fast float -0.000000e+00, %5481
  %5483 = fsub fast float 1.000000e+00, %5466
  %5484 = fdiv fast float %5478, %5483
  %5485 = fdiv fast float %5480, %5483
  %5486 = fdiv fast float %5482, %5483
  br label %5487

; <label>:5487                                    ; preds = %5474, %5451
  %5488 = phi float [ %5484, %5474 ], [ %5347, %5451 ]
  %5489 = phi float [ %5485, %5474 ], [ %5348, %5451 ]
  %5490 = phi float [ %5486, %5474 ], [ %5349, %5451 ]
  %5491 = phi float [ %5476, %5474 ], [ 0.000000e+00, %5451 ]
  %5492 = fcmp fast une float %5463, 1.000000e+00
  br i1 %5492, label %5493, label %5500, !dx.controlflow.hints !155

; <label>:5493                                    ; preds = %5487
  %5494 = call float @dx.op.unary.f32(i32 23, float %5463)  ; Log(value)
  %5495 = fmul fast float %5494, 0x3FE62E4300000000
  %5496 = fmul fast float %5460, %5495
  %5497 = fsub fast float -0.000000e+00, %5496
  %5498 = fsub fast float 1.000000e+00, %5463
  %5499 = fdiv fast float %5497, %5498
  br label %5500

; <label>:5500                                    ; preds = %5493, %5487
  %5501 = phi float [ %5499, %5493 ], [ %5460, %5487 ]
  %5502 = phi float [ %5495, %5493 ], [ 0.000000e+00, %5487 ]
  %5503 = fcmp fast une float %5464, 1.000000e+00
  br i1 %5503, label %5504, label %5511, !dx.controlflow.hints !155

; <label>:5504                                    ; preds = %5500
  %5505 = call float @dx.op.unary.f32(i32 23, float %5464)  ; Log(value)
  %5506 = fmul fast float %5505, 0x3FE62E4300000000
  %5507 = fmul fast float %5461, %5506
  %5508 = fsub fast float -0.000000e+00, %5507
  %5509 = fsub fast float 1.000000e+00, %5464
  %5510 = fdiv fast float %5508, %5509
  br label %5511

; <label>:5511                                    ; preds = %5504, %5500
  %5512 = phi float [ %5510, %5504 ], [ %5461, %5500 ]
  %5513 = phi float [ %5506, %5504 ], [ 0.000000e+00, %5500 ]
  %5514 = fcmp fast une float %5465, 1.000000e+00
  br i1 %5514, label %5515, label %5522, !dx.controlflow.hints !155

; <label>:5515                                    ; preds = %5511
  %5516 = call float @dx.op.unary.f32(i32 23, float %5465)  ; Log(value)
  %5517 = fmul fast float %5516, 0x3FE62E4300000000
  %5518 = fmul fast float %5462, %5517
  %5519 = fsub fast float -0.000000e+00, %5518
  %5520 = fsub fast float 1.000000e+00, %5465
  %5521 = fdiv fast float %5519, %5520
  br label %5522

; <label>:5522                                    ; preds = %5515, %5511
  %5523 = phi float [ %5521, %5515 ], [ %5462, %5511 ]
  %5524 = phi float [ %5517, %5515 ], [ 0.000000e+00, %5511 ]
  %5525 = fmul fast float %5488, %5472
  %5526 = fmul fast float %5489, %5472
  %5527 = fmul fast float %5490, %5472
  %5528 = fmul fast float %5491, %5472
  %5529 = fmul fast float %5501, %5470
  %5530 = fmul fast float %5512, %5470
  %5531 = fmul fast float %5523, %5470
  %5532 = fmul fast float %5502, %5470
  %5533 = fmul fast float %5513, %5470
  %5534 = fmul fast float %5524, %5470
  %5535 = fadd fast float %5529, %5525
  %5536 = fadd fast float %5530, %5526
  %5537 = fadd fast float %5531, %5527
  %5538 = fadd fast float %5532, %5528
  %5539 = fadd fast float %5533, %5528
  %5540 = fadd fast float %5534, %5528
  %5541 = fcmp fast une float %5538, 0.000000e+00
  br i1 %5541, label %5542, label %5549, !dx.controlflow.hints !156

; <label>:5542                                    ; preds = %5522
  %5543 = fmul fast float %5538, 0x3FF7154760000000
  %5544 = call float @dx.op.unary.f32(i32 21, float %5543)  ; Exp(value)
  %5545 = fsub fast float 1.000000e+00, %5544
  %5546 = fmul fast float %5535, %5545
  %5547 = fsub fast float -0.000000e+00, %5546
  %5548 = fdiv fast float %5547, %5538
  br label %5549

; <label>:5549                                    ; preds = %5542, %5522
  %5550 = phi float [ %5544, %5542 ], [ 1.000000e+00, %5522 ]
  %5551 = phi float [ %5548, %5542 ], [ %5535, %5522 ]
  %5552 = fcmp fast une float %5539, 0.000000e+00
  br i1 %5552, label %5553, label %5560, !dx.controlflow.hints !156

; <label>:5553                                    ; preds = %5549
  %5554 = fmul fast float %5539, 0x3FF7154760000000
  %5555 = call float @dx.op.unary.f32(i32 21, float %5554)  ; Exp(value)
  %5556 = fsub fast float 1.000000e+00, %5555
  %5557 = fmul fast float %5536, %5556
  %5558 = fsub fast float -0.000000e+00, %5557
  %5559 = fdiv fast float %5558, %5539
  br label %5560

; <label>:5560                                    ; preds = %5553, %5549
  %5561 = phi float [ %5555, %5553 ], [ 1.000000e+00, %5549 ]
  %5562 = phi float [ %5559, %5553 ], [ %5536, %5549 ]
  %5563 = fcmp fast une float %5540, 0.000000e+00
  br i1 %5563, label %5564, label %5571, !dx.controlflow.hints !156

; <label>:5564                                    ; preds = %5560
  %5565 = fmul fast float %5540, 0x3FF7154760000000
  %5566 = call float @dx.op.unary.f32(i32 21, float %5565)  ; Exp(value)
  %5567 = fsub fast float 1.000000e+00, %5566
  %5568 = fmul fast float %5537, %5567
  %5569 = fsub fast float -0.000000e+00, %5568
  %5570 = fdiv fast float %5569, %5540
  br label %5571

; <label>:5571                                    ; preds = %5564, %5560
  %5572 = phi float [ %5566, %5564 ], [ 1.000000e+00, %5560 ]
  %5573 = phi float [ %5570, %5564 ], [ %5537, %5560 ]
  %5574 = fcmp fast ogt float %5470, %5472
  br i1 %5574, label %5575, label %5595

; <label>:5575                                    ; preds = %5571
  %5576 = fsub fast float 1.000000e+00, %5472
  %5577 = fmul fast float %5488, %5576
  %5578 = fmul fast float %5489, %5576
  %5579 = fmul fast float %5490, %5576
  %5580 = fmul fast float %5491, %5576
  %5581 = fcmp fast une float %5580, 0.000000e+00
  br i1 %5581, label %5582, label %5633, !dx.controlflow.hints !157

; <label>:5582                                    ; preds = %5575
  %5583 = fmul fast float %5580, 0x3FF7154760000000
  %5584 = call float @dx.op.unary.f32(i32 21, float %5583)  ; Exp(value)
  %5585 = fsub fast float 1.000000e+00, %5584
  %5586 = fmul fast float %5577, %5585
  %5587 = fsub fast float -0.000000e+00, %5586
  %5588 = fmul fast float %5578, %5585
  %5589 = fsub fast float -0.000000e+00, %5588
  %5590 = fmul fast float %5579, %5585
  %5591 = fsub fast float -0.000000e+00, %5590
  %5592 = fdiv fast float %5587, %5580
  %5593 = fdiv fast float %5589, %5580
  %5594 = fdiv fast float %5591, %5580
  br label %5633

; <label>:5595                                    ; preds = %5571
  %5596 = fsub fast float 1.000000e+00, %5470
  %5597 = fmul fast float %5501, %5596
  %5598 = fmul fast float %5512, %5596
  %5599 = fmul fast float %5523, %5596
  %5600 = fmul fast float %5502, %5596
  %5601 = fmul fast float %5513, %5596
  %5602 = fmul fast float %5524, %5596
  %5603 = fcmp fast une float %5600, 0.000000e+00
  br i1 %5603, label %5604, label %5611, !dx.controlflow.hints !156

; <label>:5604                                    ; preds = %5595
  %5605 = fmul fast float %5600, 0x3FF7154760000000
  %5606 = call float @dx.op.unary.f32(i32 21, float %5605)  ; Exp(value)
  %5607 = fsub fast float 1.000000e+00, %5606
  %5608 = fmul fast float %5597, %5607
  %5609 = fsub fast float -0.000000e+00, %5608
  %5610 = fdiv fast float %5609, %5600
  br label %5611

; <label>:5611                                    ; preds = %5604, %5595
  %5612 = phi float [ %5610, %5604 ], [ %5597, %5595 ]
  %5613 = phi float [ %5606, %5604 ], [ 1.000000e+00, %5595 ]
  %5614 = fcmp fast une float %5601, 0.000000e+00
  br i1 %5614, label %5615, label %5622, !dx.controlflow.hints !156

; <label>:5615                                    ; preds = %5611
  %5616 = fmul fast float %5601, 0x3FF7154760000000
  %5617 = call float @dx.op.unary.f32(i32 21, float %5616)  ; Exp(value)
  %5618 = fsub fast float 1.000000e+00, %5617
  %5619 = fmul fast float %5598, %5618
  %5620 = fsub fast float -0.000000e+00, %5619
  %5621 = fdiv fast float %5620, %5601
  br label %5622

; <label>:5622                                    ; preds = %5615, %5611
  %5623 = phi float [ %5621, %5615 ], [ %5598, %5611 ]
  %5624 = phi float [ %5617, %5615 ], [ 1.000000e+00, %5611 ]
  %5625 = fcmp fast une float %5602, 0.000000e+00
  br i1 %5625, label %5626, label %5633, !dx.controlflow.hints !156

; <label>:5626                                    ; preds = %5622
  %5627 = fmul fast float %5602, 0x3FF7154760000000
  %5628 = call float @dx.op.unary.f32(i32 21, float %5627)  ; Exp(value)
  %5629 = fsub fast float 1.000000e+00, %5628
  %5630 = fmul fast float %5599, %5629
  %5631 = fsub fast float -0.000000e+00, %5630
  %5632 = fdiv fast float %5631, %5602
  br label %5633

; <label>:5633                                    ; preds = %5626, %5622, %5582, %5575
  %5634 = phi float [ %5632, %5626 ], [ %5594, %5582 ], [ %5579, %5575 ], [ %5599, %5622 ]
  %5635 = phi float [ %5623, %5626 ], [ %5593, %5582 ], [ %5578, %5575 ], [ %5623, %5622 ]
  %5636 = phi float [ %5612, %5626 ], [ %5592, %5582 ], [ %5577, %5575 ], [ %5612, %5622 ]
  %5637 = phi float [ %5628, %5626 ], [ %5584, %5582 ], [ 1.000000e+00, %5575 ], [ 1.000000e+00, %5622 ]
  %5638 = phi float [ %5624, %5626 ], [ %5584, %5582 ], [ 1.000000e+00, %5575 ], [ %5624, %5622 ]
  %5639 = phi float [ %5613, %5626 ], [ %5584, %5582 ], [ 1.000000e+00, %5575 ], [ %5613, %5622 ]
  %5640 = fmul fast float %5639, %5551
  %5641 = fmul fast float %5638, %5562
  %5642 = fmul fast float %5637, %5573
  %5643 = fadd fast float %5640, %5636
  %5644 = fadd fast float %5641, %5635
  %5645 = fadd fast float %5642, %5634
  %5646 = fmul fast float %5639, %5550
  %5647 = fmul fast float %5638, %5561
  %5648 = fmul fast float %5637, %5572
  br label %5649

; <label>:5649                                    ; preds = %5633, %5444
  %5650 = phi float [ %5648, %5633 ], [ %5450, %5444 ]
  %5651 = phi float [ %5647, %5633 ], [ %5449, %5444 ]
  %5652 = phi float [ %5646, %5633 ], [ %5448, %5444 ]
  %5653 = phi float [ %5645, %5633 ], [ %5447, %5444 ]
  %5654 = phi float [ %5644, %5633 ], [ %5446, %5444 ]
  %5655 = phi float [ %5643, %5633 ], [ %5445, %5444 ]
  %5656 = fmul fast float %5655, %4599
  %5657 = fmul fast float %5654, %4599
  %5658 = fmul fast float %5653, %4599
  %5659 = fmul fast float %5652, %4892
  %5660 = call float @dx.op.dot3.f32(i32 55, float %5652, float %5651, float %5650, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5661 = call float @dx.op.dot3.f32(i32 55, float %5656, float %5657, float %5658, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5662 = select i1 %195, float %5660, float %5652
  %5663 = select i1 %195, float %5660, float %5651
  %5664 = select i1 %195, float 1.000000e+00, float %5650
  %5665 = select i1 %195, float %5661, float %5656
  %5666 = select i1 %195, float 0.000000e+00, float %5657
  %5667 = select i1 %195, float 0.000000e+00, float %5658
  %5668 = fmul fast float %5662, %4886
  %5669 = fmul fast float %5663, %4887
  %5670 = fmul fast float %5664, %4888
  %5671 = fadd fast float %5668, %5665
  %5672 = fadd fast float %5669, %5666
  %5673 = fadd fast float %5667, %5670
  %5674 = fmul fast float %5662, %4889
  %5675 = fmul fast float %5663, %4890
  %5676 = fmul fast float %5664, %4891
  %5677 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.i32 %5677, 0
  %5679 = icmp eq i32 %5678, 0
  br i1 %5679, label %6047, label %5680, !dx.controlflow.hints !158

; <label>:5680                                    ; preds = %5649
  %5681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5682 = extractvalue %dx.types.CBufRet.f32 %5681, 2
  %5683 = extractvalue %dx.types.CBufRet.f32 %5681, 3
  %5684 = fmul fast float %5682, %85
  %5685 = fmul fast float %5683, %86
  %5686 = fmul fast float %5684, 2.000000e+00
  %5687 = fmul fast float %5685, 2.000000e+00
  %5688 = fsub fast float 1.000000e+00, %5686
  %5689 = fsub fast float 1.000000e+00, %5687
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 0
  %5692 = extractvalue %dx.types.CBufRet.f32 %5690, 1
  %5693 = extractvalue %dx.types.CBufRet.f32 %5690, 2
  %5694 = fmul fast float %5688, %5691
  %5695 = fmul fast float %5688, %5692
  %5696 = fmul fast float %5688, %5693
  %5697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5698 = extractvalue %dx.types.CBufRet.f32 %5697, 0
  %5699 = extractvalue %dx.types.CBufRet.f32 %5697, 1
  %5700 = extractvalue %dx.types.CBufRet.f32 %5697, 2
  %5701 = fmul fast float %5689, %5698
  %5702 = fmul fast float %5689, %5699
  %5703 = fmul fast float %5689, %5700
  %5704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5705 = extractvalue %dx.types.CBufRet.f32 %5704, 0
  %5706 = extractvalue %dx.types.CBufRet.f32 %5704, 1
  %5707 = extractvalue %dx.types.CBufRet.f32 %5704, 2
  %5708 = fadd fast float %5701, %5705
  %5709 = fadd fast float %5708, %5694
  %5710 = fadd fast float %5702, %5706
  %5711 = fadd fast float %5710, %5695
  %5712 = fadd fast float %5703, %5707
  %5713 = fadd fast float %5712, %5696
  %5714 = fmul fast float %5709, %4885
  %5715 = fmul fast float %5711, %4885
  %5716 = fmul fast float %5713, %4885
  %5717 = fmul fast float %5714, %5714
  %5718 = fmul fast float %5715, %5715
  %5719 = fadd fast float %5717, %5718
  %5720 = fmul fast float %5716, %5716
  %5721 = fadd fast float %5719, %5720
  %5722 = call float @dx.op.unary.f32(i32 24, float %5721)  ; Sqrt(value)
  %5723 = extractvalue %dx.types.CBufRet.f32 %4610, 0
  %5724 = fsub fast float %5722, %5723
  %5725 = extractvalue %dx.types.CBufRet.f32 %4610, 2
  %5726 = fmul fast float %5724, %5725
  %5727 = call float @dx.op.unary.f32(i32 7, float %5726)  ; Saturate(value)
  %5728 = fadd fast float %5727, -5.000000e-01
  %5729 = fmul fast float %5728, 2.000000e+00
  %5730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %5731 = extractvalue %dx.types.CBufRet.f32 %5730, 2
  %5732 = call float @dx.op.binary.f32(i32 36, float %5731, float %5729)  ; FMin(a,b)
  %5733 = fsub fast float -0.000000e+00, %5731
  %5734 = fcmp fast ogt float %5732, %5733
  br i1 %5734, label %5735, label %6047, !dx.controlflow.hints !159

; <label>:5735                                    ; preds = %5680
  %5736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %5737 = extractvalue %dx.types.CBufRet.f32 %5736, 3
  %5738 = fcmp fast ogt float %5737, 0.000000e+00
  br i1 %5738, label %5739, label %5814, !dx.controlflow.hints !160

; <label>:5739                                    ; preds = %5735
  %5740 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %5741 = extractvalue %dx.types.Dimensions %5740, 0
  %5742 = sitofp i32 %5741 to float
  %5743 = extractvalue %dx.types.Dimensions %5740, 1
  %5744 = sitofp i32 %5743 to float
  %5745 = fmul fast float %5684, %5742
  %5746 = fmul fast float %5685, %5744
  %5747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5748 = extractvalue %dx.types.CBufRet.f32 %5747, 1
  %5749 = fsub fast float -0.000000e+00, %5748
  %5750 = fptoui float %5749 to i32
  %5751 = fptoui float %5745 to i32
  %5752 = fptoui float %5746 to i32
  %5753 = and i32 %5750, 31
  %5754 = lshr i32 %5751, %5753
  %5755 = lshr i32 %5752, %5753
  %5756 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %5750, i32 %5754, i32 %5755, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5757 = extractvalue %dx.types.ResRet.f32 %5756, 0
  %5758 = fcmp fast olt float %5757, -1.000000e+00
  %5759 = fcmp fast ogt float %5757, -1.000000e+00
  %5760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5761 = extractvalue %dx.types.CBufRet.f32 %5760, 1
  %5762 = select i1 %5759, float %5761, float 1.000000e+00
  %5763 = fadd fast float %5757, 1.000000e+00
  %5764 = fmul fast float %5762, %5763
  %5765 = call float @dx.op.unary.f32(i32 6, float %5764)  ; FAbs(value)
  %5766 = extractvalue %dx.types.CBufRet.f32 %5760, 3
  %5767 = fcmp fast oge float %5765, %5766
  %5768 = select i1 %5767, float 0x4197782600000000, float %5765
  %5769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %5770 = extractvalue %dx.types.CBufRet.f32 %5769, 0
  %5771 = extractvalue %dx.types.CBufRet.f32 %5769, 1
  %5772 = extractvalue %dx.types.CBufRet.f32 %5769, 2
  %5773 = select i1 %5758, float %5770, float %5691
  %5774 = select i1 %5758, float %5771, float %5692
  %5775 = select i1 %5758, float %5772, float %5693
  %5776 = fmul fast float %5773, %5688
  %5777 = fmul fast float %5774, %5688
  %5778 = fmul fast float %5775, %5688
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5782 = extractvalue %dx.types.CBufRet.f32 %5779, 2
  %5783 = select i1 %5758, float %5780, float %5698
  %5784 = select i1 %5758, float %5781, float %5699
  %5785 = select i1 %5758, float %5782, float %5700
  %5786 = fmul fast float %5783, %5689
  %5787 = fmul fast float %5784, %5689
  %5788 = fmul fast float %5785, %5689
  %5789 = fadd fast float %5786, %5776
  %5790 = fadd fast float %5787, %5777
  %5791 = fadd fast float %5788, %5778
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 0
  %5794 = extractvalue %dx.types.CBufRet.f32 %5792, 1
  %5795 = extractvalue %dx.types.CBufRet.f32 %5792, 2
  %5796 = select i1 %5758, float %5793, float %5705
  %5797 = select i1 %5758, float %5794, float %5706
  %5798 = select i1 %5758, float %5795, float %5707
  %5799 = fadd fast float %5789, %5796
  %5800 = fadd fast float %5790, %5797
  %5801 = fadd fast float %5791, %5798
  %5802 = fmul fast float %5799, %5768
  %5803 = fmul fast float %5800, %5768
  %5804 = fmul fast float %5801, %5768
  %5805 = fmul fast float %5802, %5802
  %5806 = fmul fast float %5803, %5803
  %5807 = fadd fast float %5805, %5806
  %5808 = fmul fast float %5804, %5804
  %5809 = fadd fast float %5807, %5808
  %5810 = call float @dx.op.unary.f32(i32 24, float %5809)  ; Sqrt(value)
  %5811 = fsub fast float %5810, %5723
  %5812 = fmul fast float %5811, %5725
  %5813 = call float @dx.op.unary.f32(i32 7, float %5812)  ; Saturate(value)
  br label %5814

; <label>:5814                                    ; preds = %5739, %5735
  %5815 = phi float [ %5813, %5739 ], [ 1.000000e+00, %5735 ]
  %5816 = fmul fast float %5732, 5.000000e-01
  %5817 = fadd fast float %5816, 5.000000e-01
  %5818 = call float @dx.op.unary.f32(i32 22, float %5817)  ; Frc(value)
  %5819 = call float @dx.op.unary.f32(i32 27, float %5818)  ; Round_ni(value)
  %5820 = call float @dx.op.unary.f32(i32 22, float %5818)  ; Frc(value)
  %5821 = fmul fast float %5820, 2.000000e+00
  %5822 = fadd fast float %5821, -1.000000e+00
  %5823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %5684, float %5685, float %5819, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5824 = extractvalue %dx.types.ResRet.f32 %5823, 0
  %5825 = extractvalue %dx.types.ResRet.f32 %5823, 1
  %5826 = extractvalue %dx.types.ResRet.f32 %5823, 2
  %5827 = extractvalue %dx.types.ResRet.f32 %5823, 3
  %5828 = fadd fast float %5824, -5.000000e-01
  %5829 = fadd fast float %5826, -5.000000e-01
  %5830 = fmul fast float %5828, 0xBFD5555560000000
  %5831 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5829, float %5830)  ; FMad(a,b,c)
  %5832 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5825, float 0.000000e+00)  ; FMad(a,b,c)
  %5833 = fadd fast float %5832, %5827
  %5834 = fmul fast float %5828, -7.500000e-01
  %5835 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5829, float %5834)  ; FMad(a,b,c)
  %5836 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5825, float 0.000000e+00)  ; FMad(a,b,c)
  %5837 = fadd fast float %5836, %5827
  %5838 = call float @dx.op.binary.f32(i32 35, float %5831, float -1.000000e+00)  ; FMax(a,b)
  %5839 = call float @dx.op.binary.f32(i32 35, float %5833, float -1.000000e+00)  ; FMax(a,b)
  %5840 = call float @dx.op.binary.f32(i32 35, float %5835, float -1.000000e+00)  ; FMax(a,b)
  %5841 = call float @dx.op.binary.f32(i32 35, float %5837, float -1.000000e+00)  ; FMax(a,b)
  %5842 = call float @dx.op.binary.f32(i32 36, float %5838, float 1.000000e+00)  ; FMin(a,b)
  %5843 = call float @dx.op.binary.f32(i32 36, float %5839, float 1.000000e+00)  ; FMin(a,b)
  %5844 = call float @dx.op.binary.f32(i32 36, float %5840, float 1.000000e+00)  ; FMin(a,b)
  %5845 = call float @dx.op.binary.f32(i32 36, float %5841, float 1.000000e+00)  ; FMin(a,b)
  %5846 = fcmp fast olt float %5842, 0x3FEFFF8020000000
  br i1 %5846, label %5847, label %5962, !dx.controlflow.hints !161

; <label>:5847                                    ; preds = %5814
  %5848 = extractvalue %dx.types.CBufRet.f32 %5730, 3
  %5849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %5850 = extractvalue %dx.types.CBufRet.f32 %5849, 0
  %5851 = extractvalue %dx.types.CBufRet.f32 %5849, 1
  %5852 = extractvalue %dx.types.CBufRet.f32 %5849, 2
  %5853 = extractvalue %dx.types.CBufRet.f32 %5849, 3
  %5854 = fsub fast float %5850, %5842
  %5855 = fsub fast float %5851, %5843
  %5856 = fsub fast float %5852, %5844
  %5857 = fsub fast float %5853, %5845
  %5858 = fmul fast float %5854, %5848
  %5859 = fmul fast float %5855, %5848
  %5860 = fmul fast float %5856, %5848
  %5861 = fmul fast float %5857, %5848
  %5862 = fadd fast float %5858, %5842
  %5863 = fadd fast float %5859, %5843
  %5864 = fsub fast float -0.000000e+00, %5863
  %5865 = fadd fast float %5860, %5844
  %5866 = fadd fast float %5861, %5845
  %5867 = fmul fast float %5862, %5862
  %5868 = fsub fast float %5863, %5867
  %5869 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5868)  ; FMax(a,b)
  %5870 = fdiv fast float 1.000000e+00, %5869
  %5871 = fmul fast float %5863, %5862
  %5872 = fsub fast float %5865, %5871
  %5873 = fsub fast float %5822, %5862
  %5874 = fmul fast float %5822, %5822
  %5875 = fsub fast float %5874, %5863
  %5876 = fmul fast float %5873, %5870
  %5877 = fmul fast float %5876, %5872
  %5878 = fsub fast float %5875, %5877
  %5879 = fmul fast float %5863, %5863
  %5880 = fsub fast float %5866, %5879
  %5881 = fmul fast float %5872, %5872
  %5882 = fmul fast float %5881, %5870
  %5883 = fsub fast float %5880, %5882
  %5884 = fdiv fast float %5878, %5883
  %5885 = fmul fast float %5872, %5884
  %5886 = fsub fast float %5873, %5885
  %5887 = fmul fast float %5886, %5870
  %5888 = fmul fast float %5887, %5862
  %5889 = fsub fast float 1.000000e+00, %5888
  %5890 = fmul fast float %5863, %5884
  %5891 = fsub fast float %5889, %5890
  %5892 = fmul fast float %5887, %5887
  %5893 = fmul fast float %5884, 4.000000e+00
  %5894 = fmul fast float %5893, %5891
  %5895 = fsub fast float %5892, %5894
  %5896 = call float @dx.op.unary.f32(i32 24, float %5895)  ; Sqrt(value)
  %5897 = fcmp fast oge float %5887, 0.000000e+00
  %5898 = fsub fast float -0.000000e+00, %5896
  %5899 = select i1 %5897, float %5898, float %5896
  %5900 = fsub fast float %5899, %5887
  %5901 = fdiv fast float %5900, %5884
  %5902 = fdiv fast float %5891, %5900
  %5903 = fmul fast float %5901, 5.000000e-01
  %5904 = fmul fast float %5902, 2.000000e+00
  %5905 = select i1 %5897, float %5903, float %5904
  %5906 = select i1 %5897, float %5904, float %5903
  %5907 = call float @dx.op.binary.f32(i32 35, float %5905, float %5906)  ; FMax(a,b)
  %5908 = call float @dx.op.binary.f32(i32 36, float %5905, float %5906)  ; FMin(a,b)
  %5909 = fcmp fast ogt float %5822, %5908
  br i1 %5909, label %5910, label %5920

; <label>:5910                                    ; preds = %5847
  %5911 = fsub fast float %5822, %5908
  %5912 = fsub fast float %5907, %5908
  %5913 = fmul fast float %5911, %5912
  %5914 = fmul fast float %5907, %5822
  %5915 = fadd fast float %5907, %5822
  %5916 = fmul fast float %5915, %5862
  %5917 = fadd fast float %5914, %5863
  %5918 = fsub fast float %5917, %5916
  %5919 = fdiv fast float %5918, %5913
  br label %5920

; <label>:5920                                    ; preds = %5910, %5847
  %5921 = phi float [ %5919, %5910 ], [ 0.000000e+00, %5847 ]
  %5922 = fcmp fast ogt float %5822, %5907
  %5923 = fsub fast float %5822, %5907
  br i1 %5922, label %5924, label %5934

; <label>:5924                                    ; preds = %5920
  %5925 = fsub fast float %5907, %5908
  %5926 = fmul fast float %5925, %5923
  %5927 = fmul fast float %5908, %5822
  %5928 = fadd fast float %5908, %5822
  %5929 = fmul fast float %5928, %5862
  %5930 = fsub fast float %5864, %5927
  %5931 = fadd fast float %5930, %5929
  %5932 = fdiv fast float %5931, %5926
  %5933 = fadd fast float %5932, %5921
  br label %5934

; <label>:5934                                    ; preds = %5924, %5920
  %5935 = phi float [ %5933, %5924 ], [ %5921, %5920 ]
  %5936 = fsub fast float %5822, %5908
  %5937 = fmul fast float %5936, %5923
  %5938 = fmul fast float %5908, %5907
  %5939 = fadd fast float %5908, %5907
  %5940 = fmul fast float %5939, %5862
  %5941 = fadd fast float %5938, %5863
  %5942 = fsub fast float %5941, %5940
  %5943 = fdiv fast float %5942, %5937
  %5944 = call float @dx.op.unary.f32(i32 7, float %5935)  ; Saturate(value)
  %5945 = fcmp fast oeq float %4611, 0.000000e+00
  %5946 = extractvalue %dx.types.CBufRet.f32 %5730, 0
  %5947 = fcmp fast oeq float %5946, 0.000000e+00
  %5948 = or i1 %5945, %5947
  %5949 = fmul fast float %5946, 2.000000e+00
  %5950 = fadd fast float %5731, %5732
  %5951 = fdiv fast float %5950, %5949
  %5952 = call float @dx.op.unary.f32(i32 7, float %5951)  ; Saturate(value)
  %5953 = fmul fast float %5952, 2.000000e+00
  %5954 = fsub fast float 3.000000e+00, %5953
  %5955 = fmul fast float %5952, %5952
  %5956 = fmul fast float %5955, %5954
  %5957 = select i1 %5948, float 1.000000e+00, float %5956
  %5958 = fmul fast float %5943, %4611
  %5959 = fadd fast float %5944, %5958
  %5960 = call float @dx.op.unary.f32(i32 7, float %5959)  ; Saturate(value)
  %5961 = fmul fast float %5957, %5960
  br label %5962

; <label>:5962                                    ; preds = %5934, %5814
  %5963 = phi float [ %5961, %5934 ], [ 0.000000e+00, %5814 ]
  %5964 = fsub fast float 1.000000e+00, %5963
  %5965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %44, float %5684, float %5685, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5966 = extractvalue %dx.types.ResRet.f32 %5965, 0
  %5967 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %5968 = extractvalue %dx.types.CBufRet.i32 %5967, 2
  %5969 = icmp eq i32 %5968, 0
  br i1 %5969, label %5975, label %5970

; <label>:5970                                    ; preds = %5962
  %5971 = call float @dx.op.unary.f32(i32 7, float %5963)  ; Saturate(value)
  %5972 = fadd fast float %5966, -1.000000e+00
  %5973 = fmul fast float %5971, %5972
  %5974 = fadd fast float %5973, 1.000000e+00
  br label %5975

; <label>:5975                                    ; preds = %5970, %5962
  %5976 = phi float [ %5974, %5970 ], [ %5964, %5962 ]
  br i1 %5738, label %5977, label %5995

; <label>:5977                                    ; preds = %5975
  %5978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5979 = extractvalue %dx.types.CBufRet.f32 %5978, 1
  %5980 = fsub fast float %5815, %5979
  %5981 = call float @dx.op.unary.f32(i32 7, float %5980)  ; Saturate(value)
  %5982 = fsub fast float %5815, %5737
  %5983 = call float @dx.op.unary.f32(i32 7, float %5982)  ; Saturate(value)
  %5984 = fsub fast float %5981, %5983
  %5985 = fsub fast float %5817, %5983
  %5986 = fdiv fast float %5985, %5984
  %5987 = call float @dx.op.unary.f32(i32 7, float %5986)  ; Saturate(value)
  %5988 = fmul fast float %5987, 2.000000e+00
  %5989 = fsub fast float 3.000000e+00, %5988
  %5990 = fsub fast float %5966, %5976
  %5991 = fmul fast float %5987, %5987
  %5992 = fmul fast float %5991, %5990
  %5993 = fmul fast float %5992, %5989
  %5994 = fadd fast float %5993, %5976
  br label %5995

; <label>:5995                                    ; preds = %5977, %5975
  %5996 = phi float [ %5994, %5977 ], [ %5976, %5975 ]
  %5997 = call float @dx.op.binary.f32(i32 35, float %5966, float %5996)  ; FMax(a,b)
  %5998 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %5999 = extractvalue %dx.types.CBufRet.i32 %5998, 2
  %6000 = and i32 %5999, 1
  %6001 = icmp eq i32 %6000, 0
  %6002 = fcmp fast une float %5997, 1.000000e+00
  %6003 = and i1 %6002, %6001
  br i1 %6003, label %6004, label %6023

; <label>:6004                                    ; preds = %5995
  %6005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5684, float %5685, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6006 = extractvalue %dx.types.ResRet.f32 %6005, 0
  %6007 = extractvalue %dx.types.ResRet.f32 %6005, 1
  %6008 = extractvalue %dx.types.ResRet.f32 %6005, 2
  %6009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6010 = extractvalue %dx.types.CBufRet.f32 %6009, 1
  %6011 = fmul fast float %6010, %6006
  %6012 = fmul fast float %6010, %6007
  %6013 = fmul fast float %6010, %6008
  %6014 = fcmp fast ogt float %5966, 0x3FEFFF2E40000000
  %6015 = fsub fast float 1.000000e+00, %5997
  %6016 = fsub fast float 1.000000e+00, %5966
  %6017 = fdiv fast float %6015, %6016
  %6018 = call float @dx.op.unary.f32(i32 7, float %6017)  ; Saturate(value)
  %6019 = select i1 %6014, float 0.000000e+00, float %6018
  %6020 = fmul fast float %6011, %6019
  %6021 = fmul fast float %6012, %6019
  %6022 = fmul fast float %6013, %6019
  br label %6023

; <label>:6023                                    ; preds = %6004, %5995
  %6024 = phi float [ 0.000000e+00, %5995 ], [ %6020, %6004 ]
  %6025 = phi float [ 0.000000e+00, %5995 ], [ %6021, %6004 ]
  %6026 = phi float [ 0.000000e+00, %5995 ], [ %6022, %6004 ]
  %6027 = fmul fast float %6024, %4599
  %6028 = fmul fast float %6025, %4599
  %6029 = fmul fast float %6026, %4599
  %6030 = fmul fast float %5997, %5659
  %6031 = call float @dx.op.dot3.f32(i32 55, float %5997, float %5997, float %5997, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6032 = call float @dx.op.dot3.f32(i32 55, float %6027, float %6028, float %6029, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6033 = select i1 %195, float %6031, float %5997
  %6034 = select i1 %195, float 1.000000e+00, float %5997
  %6035 = select i1 %195, float %6032, float %6027
  %6036 = select i1 %195, float 0.000000e+00, float %6028
  %6037 = select i1 %195, float 0.000000e+00, float %6029
  %6038 = fmul fast float %6033, %5671
  %6039 = fmul fast float %6033, %5672
  %6040 = fmul fast float %6034, %5673
  %6041 = fadd fast float %6038, %6035
  %6042 = fadd fast float %6039, %6036
  %6043 = fadd fast float %6037, %6040
  %6044 = fmul fast float %6033, %5674
  %6045 = fmul fast float %6033, %5675
  %6046 = fmul fast float %6034, %5676
  br label %6047

; <label>:6047                                    ; preds = %6023, %5680, %5649, %4881
  %6048 = phi float [ %4886, %4881 ], [ %5671, %5649 ], [ %6041, %6023 ], [ %5671, %5680 ]
  %6049 = phi float [ %4887, %4881 ], [ %5672, %5649 ], [ %6042, %6023 ], [ %5672, %5680 ]
  %6050 = phi float [ %4888, %4881 ], [ %5673, %5649 ], [ %6043, %6023 ], [ %5673, %5680 ]
  %6051 = phi float [ %4889, %4881 ], [ %5674, %5649 ], [ %6044, %6023 ], [ %5674, %5680 ]
  %6052 = phi float [ %4890, %4881 ], [ %5675, %5649 ], [ %6045, %6023 ], [ %5675, %5680 ]
  %6053 = phi float [ %4891, %4881 ], [ %5676, %5649 ], [ %6046, %6023 ], [ %5676, %5680 ]
  %6054 = phi float [ %4892, %4881 ], [ %5659, %5649 ], [ %6030, %6023 ], [ %5659, %5680 ]
  %6055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6056 = extractvalue %dx.types.CBufRet.f32 %6055, 2
  %6057 = extractvalue %dx.types.CBufRet.f32 %6055, 3
  %6058 = fmul fast float %6056, %85
  %6059 = fmul fast float %6057, %86
  %6060 = call float @dx.op.unary.f32(i32 7, float %6058)  ; Saturate(value)
  %6061 = call float @dx.op.unary.f32(i32 7, float %6059)  ; Saturate(value)
  %6062 = select i1 %4621, i32 2, i32 0
  %6063 = or i32 %6062, 1
  %6064 = uitofp i32 %6063 to float
  %6065 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %6060, float %6061, float %6064, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6066 = extractvalue %dx.types.ResRet.f32 %6065, 0
  %6067 = extractvalue %dx.types.ResRet.f32 %6065, 1
  %6068 = extractvalue %dx.types.ResRet.f32 %6065, 2
  %6069 = extractvalue %dx.types.ResRet.f32 %6065, 3
  %6070 = add nuw nsw i32 %6062, 2
  %6071 = uitofp i32 %6070 to float
  %6072 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %6060, float %6061, float %6071, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6073 = extractvalue %dx.types.ResRet.f32 %6072, 0
  %6074 = extractvalue %dx.types.ResRet.f32 %6072, 1
  %6075 = extractvalue %dx.types.ResRet.f32 %6072, 2
  %6076 = extractvalue %dx.types.ResRet.f32 %6072, 3
  %6077 = call float @dx.op.binary.f32(i32 35, float %6067, float %6068)  ; FMax(a,b)
  %6078 = call float @dx.op.binary.f32(i32 35, float %6066, float %6077)  ; FMax(a,b)
  %6079 = call float @dx.op.binary.f32(i32 35, float %6078, float %6069)  ; FMax(a,b)
  %6080 = call float @dx.op.binary.f32(i32 36, float %6074, float %6075)  ; FMin(a,b)
  %6081 = call float @dx.op.binary.f32(i32 36, float %6073, float %6080)  ; FMin(a,b)
  %6082 = call float @dx.op.binary.f32(i32 36, float %6081, float %6076)  ; FMin(a,b)
  %6083 = fmul fast float %6079, 2.550000e+02
  %6084 = fadd fast float %6083, 0x3F70101020000000
  %6085 = fptoui float %6084 to i32
  %6086 = fmul fast float %6082, 2.550000e+02
  %6087 = fadd fast float %6086, 0x3F70101020000000
  %6088 = fptoui float %6087 to i32
  %6089 = icmp ult i32 %6085, %6088
  br i1 %6089, label %6090, label %6259

; <label>:6090                                    ; preds = %6047
  %6091 = fcmp fast ogt float %75, 9.843750e-01
  %6092 = fadd fast float %4885, -4.000000e+00
  %6093 = select i1 %6091, float -4.000000e+00, float %6092
  %6094 = call float @dx.op.binary.f32(i32 35, float %6093, float 0.000000e+00)  ; FMax(a,b)
  %6095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6096 = extractvalue %dx.types.CBufRet.f32 %6095, 0
  %6097 = fadd fast float %6096, %6094
  %6098 = extractvalue %dx.types.CBufRet.f32 %6095, 2
  %6099 = fmul fast float %6097, %6098
  %6100 = call float @dx.op.unary.f32(i32 23, float %6099)  ; Log(value)
  %6101 = extractvalue %dx.types.CBufRet.f32 %6095, 3
  %6102 = fmul fast float %6101, %6100
  %6103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6104 = extractvalue %dx.types.CBufRet.f32 %6103, 2
  %6105 = fmul fast float %6102, %6104
  %6106 = call float @dx.op.unary.f32(i32 7, float %6105)  ; Saturate(value)
  %6107 = uitofp i32 %6085 to float
  %6108 = uitofp i32 %6088 to float
  %6109 = fadd fast float %6107, 5.000000e-01
  %6110 = fadd fast float %6108, 5.000000e-01
  %6111 = fmul fast float %6104, %6109
  %6112 = fmul fast float %6104, %6110
  %6113 = fadd fast float %6111, 0x3F0FFB4800000000
  %6114 = fadd fast float %6112, 0xBF0FFB4800000000
  %6115 = call float @dx.op.binary.f32(i32 35, float %6106, float %6113)  ; FMax(a,b)
  %6116 = call float @dx.op.binary.f32(i32 36, float %6115, float %6114)  ; FMin(a,b)
  %6117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6118 = extractvalue %dx.types.CBufRet.f32 %6117, 1
  %6119 = extractvalue %dx.types.CBufRet.f32 %6117, 2
  %6120 = extractvalue %dx.types.CBufRet.f32 %6117, 0
  %6121 = select i1 %4621, float %6120, float 0.000000e+00
  %6122 = fmul fast float %6118, %6116
  %6123 = fadd fast float %6121, %6122
  %6124 = fadd fast float %6121, %6119
  %6125 = fsub fast float %6118, %6119
  %6126 = fadd fast float %6125, %6121
  %6127 = call float @dx.op.binary.f32(i32 35, float %6123, float %6124)  ; FMax(a,b)
  %6128 = call float @dx.op.binary.f32(i32 36, float %6127, float %6126)  ; FMin(a,b)
  %6129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %6060, float %6061, float %6128, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6130 = extractvalue %dx.types.ResRet.f32 %6129, 0
  %6131 = extractvalue %dx.types.ResRet.f32 %6129, 1
  %6132 = extractvalue %dx.types.ResRet.f32 %6129, 2
  %6133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6134 = extractvalue %dx.types.CBufRet.i32 %6133, 0
  %6135 = extractvalue %dx.types.CBufRet.i32 %6133, 1
  %6136 = uitofp i32 %6134 to float
  %6137 = uitofp i32 %6135 to float
  %6138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6139 = extractvalue %dx.types.CBufRet.f32 %6138, 0
  %6140 = extractvalue %dx.types.CBufRet.f32 %6138, 1
  %6141 = fmul fast float %6136, %6060
  %6142 = fmul fast float %6137, %6061
  %6143 = fadd fast float %6141, -5.000000e-01
  %6144 = fadd fast float %6142, -5.000000e-01
  %6145 = call float @dx.op.unary.f32(i32 22, float %6143)  ; Frc(value)
  %6146 = call float @dx.op.unary.f32(i32 22, float %6144)  ; Frc(value)
  %6147 = fmul fast float %6145, %6145
  %6148 = fmul fast float %6147, %6145
  %6149 = fsub fast float 3.000000e+00, %6145
  %6150 = fmul fast float %6147, %6149
  %6151 = fmul fast float %6145, 3.000000e+00
  %6152 = fmul fast float %6148, 3.000000e+00
  %6153 = fmul fast float %6147, 6.000000e+00
  %6154 = fsub fast float %6152, %6153
  %6155 = fadd fast float %6154, 4.000000e+00
  %6156 = fmul fast float %6155, 0x3FC5555560000000
  %6157 = fmul fast float %6148, -3.000000e+00
  %6158 = fadd fast float %6147, %6145
  %6159 = fmul fast float %6158, 3.000000e+00
  %6160 = fadd fast float %6157, 1.000000e+00
  %6161 = fadd fast float %6160, %6159
  %6162 = fmul fast float %6148, 0x3FC5555560000000
  %6163 = fmul fast float %6146, %6146
  %6164 = fmul fast float %6163, %6146
  %6165 = fsub fast float 3.000000e+00, %6146
  %6166 = fmul fast float %6163, %6165
  %6167 = fmul fast float %6146, 3.000000e+00
  %6168 = fmul fast float %6164, 3.000000e+00
  %6169 = fmul fast float %6163, 6.000000e+00
  %6170 = fsub fast float %6168, %6169
  %6171 = fadd fast float %6170, 4.000000e+00
  %6172 = fmul fast float %6171, 0x3FC5555560000000
  %6173 = fmul fast float %6164, -3.000000e+00
  %6174 = fadd fast float %6163, %6146
  %6175 = fmul fast float %6174, 3.000000e+00
  %6176 = fadd fast float %6173, 1.000000e+00
  %6177 = fadd fast float %6176, %6175
  %6178 = fmul fast float %6164, 0x3FC5555560000000
  %6179 = fadd fast float %6145, 1.000000e+00
  %6180 = fsub fast float 1.000000e+00, %6151
  %6181 = fadd fast float %6180, %6150
  %6182 = fadd fast float %6181, %6155
  %6183 = fmul fast float %6182, 0x3FC5555560000000
  %6184 = fdiv fast float %6156, %6183
  %6185 = fsub fast float %6179, %6184
  %6186 = fsub fast float 1.000000e+00, %6145
  %6187 = fadd fast float %6161, %6148
  %6188 = fmul fast float %6187, 0x3FC5555560000000
  %6189 = fdiv fast float %6162, %6188
  %6190 = fadd fast float %6186, %6189
  %6191 = fadd fast float %6146, 1.000000e+00
  %6192 = fsub fast float 1.000000e+00, %6167
  %6193 = fadd fast float %6192, %6166
  %6194 = fadd fast float %6193, %6171
  %6195 = fmul fast float %6194, 0x3FC5555560000000
  %6196 = fdiv fast float %6172, %6195
  %6197 = fsub fast float %6191, %6196
  %6198 = fsub fast float 1.000000e+00, %6146
  %6199 = fadd fast float %6177, %6164
  %6200 = fmul fast float %6199, 0x3FC5555560000000
  %6201 = fdiv fast float %6178, %6200
  %6202 = fadd fast float %6201, %6198
  %6203 = fmul fast float %6185, %6139
  %6204 = fsub fast float %6060, %6203
  %6205 = fmul fast float %6190, %6139
  %6206 = fadd fast float %6205, %6060
  %6207 = fmul fast float %6202, %6140
  %6208 = fadd fast float %6207, %6061
  %6209 = fmul fast float %6197, %6140
  %6210 = fsub fast float %6061, %6209
  %6211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6204, float %6210, float %6128, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6212 = extractvalue %dx.types.ResRet.f32 %6211, 0
  %6213 = extractvalue %dx.types.ResRet.f32 %6211, 1
  %6214 = extractvalue %dx.types.ResRet.f32 %6211, 2
  %6215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6206, float %6210, float %6128, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6216 = extractvalue %dx.types.ResRet.f32 %6215, 0
  %6217 = extractvalue %dx.types.ResRet.f32 %6215, 1
  %6218 = extractvalue %dx.types.ResRet.f32 %6215, 2
  %6219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6204, float %6208, float %6128, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6220 = extractvalue %dx.types.ResRet.f32 %6219, 0
  %6221 = extractvalue %dx.types.ResRet.f32 %6219, 1
  %6222 = extractvalue %dx.types.ResRet.f32 %6219, 2
  %6223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %6206, float %6208, float %6128, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6224 = extractvalue %dx.types.ResRet.f32 %6223, 0
  %6225 = extractvalue %dx.types.ResRet.f32 %6223, 1
  %6226 = extractvalue %dx.types.ResRet.f32 %6223, 2
  %6227 = fsub fast float %6220, %6212
  %6228 = fsub fast float %6221, %6213
  %6229 = fsub fast float %6222, %6214
  %6230 = fmul fast float %6227, %6200
  %6231 = fmul fast float %6228, %6200
  %6232 = fmul fast float %6229, %6200
  %6233 = fadd fast float %6230, %6212
  %6234 = fadd fast float %6231, %6213
  %6235 = fadd fast float %6232, %6214
  %6236 = fsub fast float %6224, %6216
  %6237 = fsub fast float %6225, %6217
  %6238 = fsub fast float %6226, %6218
  %6239 = fmul fast float %6236, %6200
  %6240 = fmul fast float %6237, %6200
  %6241 = fmul fast float %6238, %6200
  %6242 = fsub fast float %6216, %6233
  %6243 = fadd fast float %6242, %6239
  %6244 = fsub fast float %6217, %6234
  %6245 = fadd fast float %6244, %6240
  %6246 = fsub fast float %6218, %6235
  %6247 = fadd fast float %6246, %6241
  %6248 = fmul fast float %6243, %6188
  %6249 = fmul fast float %6245, %6188
  %6250 = fmul fast float %6247, %6188
  %6251 = fadd fast float %6248, %6233
  %6252 = fadd fast float %6249, %6234
  %6253 = fadd fast float %6250, %6235
  %6254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6255 = extractvalue %dx.types.CBufRet.f32 %6254, 1
  %6256 = fmul fast float %6251, %6255
  %6257 = fmul fast float %6252, %6255
  %6258 = fmul fast float %6253, %6255
  br label %6259

; <label>:6259                                    ; preds = %6090, %6047
  %6260 = phi float [ %6130, %6090 ], [ 1.000000e+00, %6047 ]
  %6261 = phi float [ %6131, %6090 ], [ 1.000000e+00, %6047 ]
  %6262 = phi float [ %6132, %6090 ], [ 1.000000e+00, %6047 ]
  %6263 = phi float [ %6256, %6090 ], [ 0.000000e+00, %6047 ]
  %6264 = phi float [ %6257, %6090 ], [ 0.000000e+00, %6047 ]
  %6265 = phi float [ %6258, %6090 ], [ 0.000000e+00, %6047 ]
  %6266 = fmul fast float %6263, %4599
  %6267 = fmul fast float %6264, %4599
  %6268 = fmul fast float %6265, %4599
  %6269 = fmul fast float %6260, %6054
  %6270 = call float @dx.op.dot3.f32(i32 55, float %6260, float %6261, float %6262, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6271 = call float @dx.op.dot3.f32(i32 55, float %6266, float %6267, float %6268, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6272 = select i1 %195, float %6270, float %6260
  %6273 = select i1 %195, float %6270, float %6261
  %6274 = select i1 %195, float 1.000000e+00, float %6262
  %6275 = select i1 %195, float %6271, float %6266
  %6276 = select i1 %195, float 0.000000e+00, float %6267
  %6277 = select i1 %195, float 0.000000e+00, float %6268
  %6278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6279 = extractvalue %dx.types.CBufRet.i32 %6278, 3
  %6280 = and i32 %6279, 3
  %6281 = icmp ne i32 %6280, 0
  %6282 = and i32 %6279, 4
  %6283 = icmp ne i32 %6282, 0
  %6284 = and i1 %6281, %6283
  %6285 = and i1 %195, %6284
  br i1 %6285, label %6286, label %6292

; <label>:6286                                    ; preds = %6259
  %6287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6288 = extractvalue %dx.types.CBufRet.f32 %6287, 1
  %6289 = fadd fast float %6269, -1.000000e+00
  %6290 = fmul fast float %6288, %6289
  %6291 = fadd fast float %6290, 1.000000e+00
  br label %6292

; <label>:6292                                    ; preds = %6286, %6259
  %6293 = phi float [ %6291, %6286 ], [ %6269, %6259 ]
  %6294 = fadd fast float %6051, %6048
  %6295 = fmul fast float %6272, %6294
  %6296 = fadd fast float %6295, %6275
  %6297 = fadd fast float %6052, %6049
  %6298 = fmul fast float %6273, %6297
  %6299 = fadd fast float %6298, %6276
  %6300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6301 = extractvalue %dx.types.CBufRet.f32 %6300, 0
  br i1 %195, label %6302, label %6325

; <label>:6302                                    ; preds = %6292
  %6303 = fadd fast float %6296, %6299
  %6304 = fmul fast float %6301, %6303
  %6305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6306 = extractvalue %dx.types.CBufRet.f32 %6305, 3
  %6307 = extractvalue %dx.types.CBufRet.f32 %4603, 1
  %6308 = fsub fast float %4608, %4602
  %6309 = fadd fast float %6308, %4609
  %6310 = fsub fast float %6309, %6307
  %6311 = extractvalue %dx.types.CBufRet.f32 %4603, 2
  %6312 = fmul fast float %6310, %6311
  %6313 = call float @dx.op.unary.f32(i32 7, float %6312)  ; Saturate(value)
  %6314 = fsub fast float %6313, %6306
  %6315 = fmul fast float %6314, %6293
  %6316 = fadd fast float %6315, %6306
  %6317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6318 = extractvalue %dx.types.CBufRet.f32 %6317, 0
  %6319 = fsub fast float %6316, %6318
  %6320 = fmul fast float %6319, 1.000000e+01
  %6321 = call float @dx.op.unary.f32(i32 7, float %6320)  ; Saturate(value)
  %6322 = fmul fast float %6321, %4598
  %6323 = fadd fast float %6322, %4599
  %6324 = fmul fast float %6323, %6316
  br label %6348

; <label>:6325                                    ; preds = %6292
  %6326 = fadd fast float %6053, %6050
  %6327 = fmul fast float %6274, %6326
  %6328 = fadd fast float %6327, %6277
  %6329 = fmul fast float %6301, %6296
  %6330 = fmul fast float %6301, %6299
  %6331 = fmul fast float %6301, %6328
  %6332 = call float @dx.op.binary.f32(i32 35, float %6330, float %6331)  ; FMax(a,b)
  %6333 = call float @dx.op.binary.f32(i32 35, float %6329, float %6332)  ; FMax(a,b)
  %6334 = call float @dx.op.binary.f32(i32 35, float %6333, float %4599)  ; FMax(a,b)
  %6335 = fcmp fast ugt float %6334, 0x3F10000000000000
  br i1 %6335, label %6337, label %6336

; <label>:6336                                    ; preds = %6325
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6337

; <label>:6337                                    ; preds = %6336, %6325
  %6338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %6339 = extractvalue %dx.types.ResRet.i32 %6338, 0
  %6340 = and i32 %6339, 32
  %6341 = icmp eq i32 %6340, 0
  br i1 %6341, label %6348, label %6342

; <label>:6342                                    ; preds = %6337
  %6343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6344 = extractvalue %dx.types.CBufRet.f32 %6343, 0
  %6345 = fmul fast float %6344, 0x3FE99999A0000000
  %6346 = fadd fast float %6344, %6329
  %6347 = fadd fast float %6345, %6331
  br label %6348

; <label>:6348                                    ; preds = %6342, %6337, %6302
  %6349 = phi float [ %6304, %6302 ], [ %6346, %6342 ], [ %6329, %6337 ]
  %6350 = phi float [ %6324, %6302 ], [ %6330, %6342 ], [ %6330, %6337 ]
  %6351 = phi float [ %6323, %6302 ], [ %6347, %6342 ], [ %6331, %6337 ]
  %6352 = phi float [ %6323, %6302 ], [ %4599, %6342 ], [ %4599, %6337 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6353 = call float @dx.op.binary.f32(i32 36, float %6349, float 3.225500e+04)  ; FMin(a,b)
  %6354 = call float @dx.op.binary.f32(i32 36, float %6350, float 3.225500e+04)  ; FMin(a,b)
  %6355 = call float @dx.op.binary.f32(i32 36, float %6351, float 3.225500e+04)  ; FMin(a,b)
  %6356 = call float @dx.op.binary.f32(i32 36, float %6352, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6353)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6354)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6355)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6356)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

