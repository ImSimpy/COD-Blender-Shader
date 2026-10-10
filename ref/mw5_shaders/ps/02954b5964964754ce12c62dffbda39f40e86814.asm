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
; shader hash: bb89c33f52dbfc520791d9e125fa5fde
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
;                                   texture    byte         r/o      T2             t0     1
;                                   texture     f32          2d      T3     t33,space2     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture    byte         r/o      T5     t16,space1     1
;                                   texture    byte         r/o      T6     t17,space1     1
;                                   texture    byte         r/o      T7      t3,space1     1
;                                   texture    byte         r/o      T8      t4,space1     1
;                                   texture    byte         r/o      T9      t5,space1     1
;                                   texture    byte         r/o     T10      t6,space1     1
;                                   texture     f32          2d     T11     t37,space2     1
;                                   texture     f32          2d     T12             t1     1
;                                   texture     f32          2d     T13     t58,space2     1
;                                   texture     f32          2d     T14     t57,space2     1
;                                   texture    byte         r/o     T15     t69,space1     1
;                                   texture     u32          2d     T16     t56,space2     1
;                                   texture     f32     2darray     T17     t35,space2     1
;                                   texture     f32          2d     T18     t34,space2     1
;                                   texture     f32          3d     T19     t31,space2     1
;                                   texture     f32          2d     T20      t2,space2     1
;                                   texture     f32          2d     T21      t3,space2     1
;                                   texture     f32          2d     T22      t4,space2     1
;                                   textureunorm_f32     2darray     T23     t80,space2     1
;                                   texture    byte         r/o     T24     t67,space1     1
;                                   texture     f32          2d     T25      t7,space2     1
;                                   texture     f32          2d     T26      t6,space2     1
;                                   texture     f32          2d     T27      t5,space2     1
;                                   texture     f32          2d     T28     t38,space2     1
;                                   texture     f32          1d     T29     t30,space2     1
;                                   texture     f32          3d     T30     t44,space2     1
;                                   texture     f32          3d     T31     t45,space2     1
;                                   texture     f32     2darray     T32     t47,space2     1
;                                   textureunorm_f32     2darray     T33     t85,space2     1
;                                   texture     f32          2d     T34     t83,space2     1
;                                   texture     f32          2d     T35     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 29, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 20, 24, 25, 26, 27, 28 }
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
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
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

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = alloca [4 x i32], align 4
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = icmp ne i32 %44, 0
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = alloca [12 x float], align 4
  %72 = alloca [12 x float], align 4
  %73 = alloca [4 x float], align 4
  %74 = alloca [4 x float], align 4
  %75 = alloca [4 x float], align 4
  %76 = alloca [3 x float], align 4
  %77 = alloca [3 x float], align 4
  %78 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %79 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = fmul fast float %81, %67
  %83 = fmul fast float %81, %68
  %84 = select i1 %45, float 1.000000e+00, float -1.000000e+00
  %85 = fmul fast float %62, %84
  %86 = fmul fast float %63, %84
  %87 = fmul fast float %64, %84
  %88 = fmul fast float %63, %60
  %89 = fmul fast float %64, %59
  %90 = fsub fast float %88, %89
  %91 = fmul fast float %64, %58
  %92 = fmul fast float %62, %60
  %93 = fsub fast float %91, %92
  %94 = fmul fast float %62, %59
  %95 = fmul fast float %63, %58
  %96 = fsub fast float %94, %95
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %99 = extractvalue %dx.types.CBufRet.f32 %97, 3
  %100 = fmul fast float %98, 2.000000e+00
  %101 = fmul fast float %100, %82
  %102 = fmul fast float %99, 2.000000e+00
  %103 = fmul fast float %102, %83
  %104 = fsub fast float 1.000000e+00, %101
  %105 = fsub fast float 1.000000e+00, %103
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = fmul fast float %104, %107
  %111 = fmul fast float %104, %108
  %112 = fmul fast float %104, %109
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = fmul fast float %105, %114
  %118 = fmul fast float %105, %115
  %119 = fmul fast float %105, %116
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fadd fast float %117, %121
  %125 = fadd fast float %124, %110
  %126 = fadd fast float %118, %122
  %127 = fadd fast float %126, %111
  %128 = fadd fast float %119, %123
  %129 = fadd fast float %128, %112
  %130 = fmul fast float %125, %70
  %131 = fmul fast float %127, %70
  %132 = fmul fast float %129, %70
  %133 = fmul fast float %82, 5.000000e-01
  %134 = fmul fast float %83, 5.000000e-01
  %135 = fptosi float %133 to i32
  %136 = fptosi float %134 to i32
  %137 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %135, i32 %136, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %138 = extractvalue %dx.types.ResRet.i32 %137, 0
  %139 = lshr i32 %138, 18
  %140 = uitofp i32 %139 to float
  %141 = fmul fast float %140, 0x3F4C00EBA0000000
  %142 = call float @dx.op.unary.f32(i32 21, float %141)  ; Exp(value)
  %143 = fadd fast float %142, -1.000000e+00
  %144 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %20, i32 0)  ; GetDimensions(handle,mipLevel)
  %145 = extractvalue %dx.types.Dimensions %144, 0
  %146 = sitofp i32 %145 to float
  %147 = extractvalue %dx.types.Dimensions %144, 1
  %148 = sitofp i32 %147 to float
  %149 = fcmp fast oge float %133, %146
  %150 = fcmp fast oge float %134, %148
  %151 = or i1 %149, %150
  %152 = select i1 %151, float 0x4197782600000000, float %143
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 3
  %156 = fmul fast float %154, %82
  %157 = fmul fast float %155, %83
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = and i32 %159, 114688
  %161 = icmp ne i32 %160, 0
  %162 = select i1 %161, float %156, float 0.000000e+00
  %163 = select i1 %161, float %157, float 0.000000e+00
  %164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %39, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 0
  %166 = fmul fast float %165, 2.550000e+02
  %167 = fptoui float %166 to i32
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.i32 %169, 3
  %171 = and i32 %170, 3
  %172 = icmp ne i32 %171, 0
  %173 = and i32 %170, 4
  %174 = icmp ne i32 %173, 0
  %175 = and i1 %172, %174
  br i1 %175, label %176, label %187

; <label>:176                                     ; preds = %0
  %177 = extractvalue %dx.types.CBufRet.f32 %168, 3
  %178 = fmul fast float %177, %83
  %179 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %180 = fmul fast float %179, %82
  %181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %38, float %180, float %178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 0
  %183 = fsub fast float 1.000000e+00, %182
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %186 = fcmp fast olt float %183, %185
  br label %190

; <label>:187                                     ; preds = %0
  %188 = icmp eq i32 %173, 0
  %189 = and i1 %172, %188
  br label %190

; <label>:190                                     ; preds = %187, %176
  %191 = phi i1 [ %186, %176 ], [ %189, %187 ]
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %194 = fmul fast float %193, 0x3FE3C6EF40000000
  %195 = frem fast float %82, 2.560000e+02
  %196 = frem fast float %83, 2.560000e+02
  %197 = fptoui float %195 to i32
  %198 = fptoui float %196 to i32
  %199 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 0, i32 %197, i32 %198, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = fadd fast float %200, %194
  %202 = call float @dx.op.unary.f32(i32 22, float %201)  ; Frc(value)
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = shl i32 %204, 4
  %206 = and i32 %205, 32752
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = lshr i32 %204, 7
  %209 = and i32 %208, 32752
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209)  ; LegacyF16ToF32(value)
  %211 = lshr i32 %204, 22
  %212 = shl nuw nsw i32 %211, 5
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = and i32 %215, 255
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F70101020000000
  %219 = lshr i32 %215, 8
  %220 = and i32 %219, 255
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F70101020000000
  %223 = lshr i32 %215, 16
  %224 = and i32 %223, 255
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %225, 0x3F70101020000000
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 65535
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %228, 16
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = and i32 %234, 65535
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = lshr i32 %234, 16
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = fmul fast float %236, 0x3F50624DE0000000
  %240 = fmul fast float %238, 0x3F50624DE0000000
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = and i32 %242, 2
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %252, label %245

; <label>:245                                     ; preds = %190
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = add i32 %247, 0
  %249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %248, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %250 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %249, %dx.types.Handle %79, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 3
  br label %252

; <label>:252                                     ; preds = %245, %190
  %253 = phi float [ 1.000000e+00, %190 ], [ %251, %245 ]
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = or i32 %257, %255
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %873, label %260

; <label>:260                                     ; preds = %252
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = lshr i32 %262, 16
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = fmul fast float %264, 0x3F50624DE0000000
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = lshr i32 %267, 16
  %269 = and i32 %268, 255
  %270 = lshr i32 %267, 24
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = and i32 %272, 65535
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = lshr i32 %272, 16
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = lshr i32 %278, 22
  %280 = shl nuw nsw i32 %279, 5
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = shl i32 %278, 4
  %283 = and i32 %282, 32752
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %278, 7
  %286 = and i32 %285, 32752
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 3
  %290 = fmul fast float %289, 1.000000e+03
  %291 = fmul fast float %239, %290
  %292 = call float @dx.op.unary.f32(i32 22, float %291)  ; Frc(value)
  %293 = fadd fast float %292, %230
  %294 = fmul fast float %240, %290
  %295 = call float @dx.op.unary.f32(i32 22, float %294)  ; Frc(value)
  %296 = fadd fast float %295, %232
  %297 = fmul fast float %265, %290
  %298 = call float @dx.op.unary.f32(i32 22, float %297)  ; Frc(value)
  %299 = fmul fast float %298, 0x401921FB60000000
  %300 = fadd fast float %299, %281
  %301 = call float @dx.op.unary.f32(i32 13, float %300)  ; Sin(value)
  %302 = call float @dx.op.unary.f32(i32 12, float %300)  ; Cos(value)
  %303 = fsub fast float -0.000000e+00, %301
  %304 = fadd fast float %65, -5.000000e-01
  %305 = fadd fast float %66, -5.000000e-01
  %306 = fmul fast float %274, %304
  %307 = fmul fast float %276, %305
  %308 = fadd fast float %306, 5.000000e-01
  %309 = fadd fast float %307, 5.000000e-01
  %310 = fmul fast float %284, %308
  %311 = fmul fast float %287, %309
  %312 = fmul fast float %302, %310
  %313 = call float @dx.op.tertiary.f32(i32 46, float %303, float %311, float %312)  ; FMad(a,b,c)
  %314 = fmul fast float %301, %310
  %315 = call float @dx.op.tertiary.f32(i32 46, float %302, float %311, float %314)  ; FMad(a,b,c)
  %316 = fadd fast float %293, %313
  %317 = fadd fast float %296, %315
  %318 = icmp ugt i32 %269, 1
  %319 = icmp ugt i32 %267, 33554431
  %320 = or i1 %319, %318
  br i1 %320, label %321, label %345

; <label>:321                                     ; preds = %260
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = lshr i32 %323, 16
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = fmul fast float %289, %325
  %327 = call float @dx.op.unary.f32(i32 22, float %326)  ; Frc(value)
  %328 = mul nuw nsw i32 %269, %270
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %327, %329
  %331 = call float @dx.op.unary.f32(i32 27, float %330)  ; Round_ni(value)
  %332 = fptoui float %331 to i32
  %333 = urem i32 %332, %269
  %334 = udiv i32 %332, %270
  %335 = call float @dx.op.unary.f32(i32 22, float %316)  ; Frc(value)
  %336 = call float @dx.op.unary.f32(i32 22, float %317)  ; Frc(value)
  %337 = uitofp i32 %333 to float
  %338 = uitofp i32 %334 to float
  %339 = fadd fast float %335, %337
  %340 = fadd fast float %336, %338
  %341 = uitofp i32 %269 to float
  %342 = uitofp i32 %270 to float
  %343 = fdiv fast float %339, %341
  %344 = fdiv fast float %340, %342
  br label %345

; <label>:345                                     ; preds = %321, %260
  %346 = phi float [ %343, %321 ], [ %316, %260 ]
  %347 = phi float [ %344, %321 ], [ %317, %260 ]
  %348 = and i32 %255, 256
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %394, label %350

; <label>:350                                     ; preds = %345
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = add i32 %352, 0
  %354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %355 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %354, %dx.types.Handle %79, float %346, float %347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %356 = extractvalue %dx.types.ResRet.f32 %355, 0
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = shl i32 %358, 4
  %360 = and i32 %359, 32752
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %358, 7
  %363 = and i32 %362, 32752
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = fsub fast float 1.000000e+00, %253
  %366 = call float @dx.op.binary.f32(i32 35, float %365, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %367 = bitcast float %253 to i32
  %368 = sitofp i32 %367 to float
  %369 = fadd fast float %368, 0xC1CFBF8940000000
  %370 = fmul fast float %364, %369
  %371 = fadd fast float %370, 0x41CFBF8940000000
  %372 = fptosi float %371 to i32
  %373 = bitcast i32 %372 to float
  %374 = bitcast float %366 to i32
  %375 = sitofp i32 %374 to float
  %376 = fadd fast float %375, 0xC1CFBF8940000000
  %377 = fmul fast float %376, %364
  %378 = fadd fast float %377, 0x41CFBF8940000000
  %379 = fptosi float %378 to i32
  %380 = bitcast i32 %379 to float
  %381 = fmul fast float %373, %361
  %382 = fmul fast float %380, %361
  %383 = fsub fast float %366, %381
  %384 = fadd fast float %382, %366
  %385 = call float @dx.op.unary.f32(i32 7, float %383)  ; Saturate(value)
  %386 = call float @dx.op.unary.f32(i32 7, float %384)  ; Saturate(value)
  %387 = fsub fast float %356, %385
  %388 = fsub fast float %386, %385
  %389 = bitcast float %388 to i32
  %390 = sub nsw i32 2129859010, %389
  %391 = bitcast i32 %390 to float
  %392 = fmul fast float %391, %387
  %393 = call float @dx.op.unary.f32(i32 7, float %392)  ; Saturate(value)
  br label %394

; <label>:394                                     ; preds = %350, %345
  %395 = phi float [ %393, %350 ], [ %253, %345 ]
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = and i32 %397, 128
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %415, label %400

; <label>:400                                     ; preds = %394
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = add i32 %402, 0
  %404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %403, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %405 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %404, %dx.types.Handle %79, float %346, float %347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %406 = extractvalue %dx.types.ResRet.f32 %405, 0
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = and i32 %408, 524288
  %410 = icmp ne i32 %409, 0
  %411 = fcmp fast ogt float %406, 0x3FE0101020000000
  %412 = select i1 %411, float 1.000000e+00, float 0.000000e+00
  %413 = select i1 %410, float %412, float %406
  %414 = fmul fast float %413, %395
  br label %415

; <label>:415                                     ; preds = %400, %394
  %416 = phi float [ %414, %400 ], [ %395, %394 ]
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 16
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %614, label %421

; <label>:421                                     ; preds = %415
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = add i32 %425, 0
  %427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %426, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %428 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %427, %dx.types.Handle %78, float %346, float %347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %429 = extractvalue %dx.types.ResRet.f32 %428, 0
  %430 = extractvalue %dx.types.ResRet.f32 %428, 1
  %431 = extractvalue %dx.types.ResRet.f32 %428, 2
  %432 = extractvalue %dx.types.ResRet.f32 %428, 3
  %433 = and i32 %423, 255
  %434 = uitofp i32 %433 to float
  %435 = lshr i32 %423, 8
  %436 = and i32 %435, 255
  %437 = uitofp i32 %436 to float
  %438 = fmul fast float %432, %434
  %439 = fadd fast float %438, %437
  %440 = fmul fast float %439, 0x3F70101000000000
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 512
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %452, label %445

; <label>:445                                     ; preds = %421
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = add i32 %447, 0
  %449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %448, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %450 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %449, %dx.types.Handle %79, float %346, float %347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  br label %452

; <label>:452                                     ; preds = %445, %421
  %453 = phi float [ %451, %445 ], [ 1.000000e+00, %421 ]
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 33554432
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %561, label %458

; <label>:458                                     ; preds = %452
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = and i32 %460, 65535
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = lshr i32 %460, 16
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = and i32 %466, 65535
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = lshr i32 %470, 24
  %472 = uitofp i32 %471 to float
  %473 = fmul fast float %472, 0x3F70101020000000
  %474 = and i32 %470, 255
  %475 = uitofp i32 %474 to float
  %476 = fmul fast float %475, 0x3F70101020000000
  %477 = lshr i32 %470, 8
  %478 = and i32 %477, 255
  %479 = uitofp i32 %478 to float
  %480 = fmul fast float %479, 0x3F70101020000000
  %481 = lshr i32 %470, 16
  %482 = and i32 %481, 255
  %483 = uitofp i32 %482 to float
  %484 = fmul fast float %483, 0x3F70101020000000
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = lshr i32 %486, 24
  %488 = uitofp i32 %487 to float
  %489 = fmul fast float %488, 0x3F70101020000000
  %490 = and i32 %486, 255
  %491 = uitofp i32 %490 to float
  %492 = fmul fast float %491, 0x3F70101020000000
  %493 = lshr i32 %486, 8
  %494 = and i32 %493, 255
  %495 = uitofp i32 %494 to float
  %496 = fmul fast float %495, 0x3F70101020000000
  %497 = lshr i32 %486, 16
  %498 = and i32 %497, 255
  %499 = uitofp i32 %498 to float
  %500 = fmul fast float %499, 0x3F70101020000000
  %501 = bitcast float %429 to i32
  %502 = ashr i32 %501, 1
  %503 = sub nsw i32 1597463174, %502
  %504 = bitcast i32 %503 to float
  %505 = fmul fast float %429, 5.000000e-01
  %506 = fmul fast float %504, %504
  %507 = fmul fast float %506, %505
  %508 = fsub fast float 1.500000e+00, %507
  %509 = fmul fast float %504, %429
  %510 = fmul fast float %509, %508
  %511 = bitcast float %430 to i32
  %512 = ashr i32 %511, 1
  %513 = sub nsw i32 1597463174, %512
  %514 = bitcast i32 %513 to float
  %515 = fmul fast float %430, 5.000000e-01
  %516 = fmul fast float %514, %514
  %517 = fmul fast float %516, %515
  %518 = fsub fast float 1.500000e+00, %517
  %519 = fmul fast float %514, %430
  %520 = fmul fast float %519, %518
  %521 = bitcast float %431 to i32
  %522 = ashr i32 %521, 1
  %523 = sub nsw i32 1597463174, %522
  %524 = bitcast i32 %523 to float
  %525 = fmul fast float %431, 5.000000e-01
  %526 = fmul fast float %524, %524
  %527 = fmul fast float %526, %525
  %528 = fsub fast float 1.500000e+00, %527
  %529 = fmul fast float %524, %431
  %530 = fmul fast float %529, %528
  %531 = fsub fast float %510, %492
  %532 = fsub fast float %520, %496
  %533 = fsub fast float %530, %500
  %534 = fmul fast float %531, %462
  %535 = fmul fast float %532, %464
  %536 = fmul fast float %533, %468
  %537 = fadd fast float %534, %476
  %538 = fadd fast float %535, %480
  %539 = fadd fast float %536, %484
  %540 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  %541 = call float @dx.op.unary.f32(i32 7, float %538)  ; Saturate(value)
  %542 = call float @dx.op.unary.f32(i32 7, float %539)  ; Saturate(value)
  %543 = fmul fast float %540, %540
  %544 = fmul fast float %541, %541
  %545 = fmul fast float %542, %542
  %546 = fsub fast float %543, %429
  %547 = fsub fast float %544, %430
  %548 = fsub fast float %545, %431
  %549 = fmul fast float %546, %453
  %550 = fmul fast float %547, %453
  %551 = fmul fast float %548, %453
  %552 = fadd fast float %549, %429
  %553 = fadd fast float %550, %430
  %554 = fadd fast float %551, %431
  %555 = fadd fast float %473, %440
  %556 = fsub fast float %555, %489
  %557 = call float @dx.op.unary.f32(i32 7, float %556)  ; Saturate(value)
  %558 = fsub fast float %557, %440
  %559 = fmul fast float %558, %453
  %560 = fadd fast float %559, %440
  br label %614

; <label>:561                                     ; preds = %452
  %562 = and i32 %455, 134217728
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %598, label %564

; <label>:564                                     ; preds = %561
  %565 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %566 = call float @dx.op.unary.f32(i32 24, float %222)  ; Sqrt(value)
  %567 = call float @dx.op.unary.f32(i32 24, float %226)  ; Sqrt(value)
  %568 = fadd fast float %565, -5.000000e-01
  %569 = fadd fast float %566, -5.000000e-01
  %570 = fadd fast float %567, -5.000000e-01
  %571 = fmul fast float %568, %453
  %572 = fmul fast float %569, %453
  %573 = fmul fast float %570, %453
  %574 = fadd fast float %571, 5.000000e-01
  %575 = fadd fast float %572, 5.000000e-01
  %576 = fadd fast float %573, 5.000000e-01
  %577 = call float @dx.op.unary.f32(i32 24, float %429)  ; Sqrt(value)
  %578 = call float @dx.op.unary.f32(i32 24, float %430)  ; Sqrt(value)
  %579 = call float @dx.op.unary.f32(i32 24, float %431)  ; Sqrt(value)
  %580 = fmul fast float %574, 2.000000e+00
  %581 = fsub fast float 1.000000e+00, %580
  %582 = fmul fast float %581, %577
  %583 = fadd fast float %582, %580
  %584 = fmul fast float %583, %577
  %585 = fmul fast float %575, 2.000000e+00
  %586 = fsub fast float 1.000000e+00, %585
  %587 = fmul fast float %586, %578
  %588 = fadd fast float %587, %585
  %589 = fmul fast float %588, %578
  %590 = fmul fast float %576, 2.000000e+00
  %591 = fsub fast float 1.000000e+00, %590
  %592 = fmul fast float %591, %579
  %593 = fadd fast float %592, %590
  %594 = fmul fast float %593, %579
  %595 = fmul fast float %584, %584
  %596 = fmul fast float %589, %589
  %597 = fmul fast float %594, %594
  br label %614

; <label>:598                                     ; preds = %561
  %599 = fmul fast float %218, %218
  %600 = fmul fast float %222, %222
  %601 = fmul fast float %226, %226
  %602 = fadd fast float %599, -1.000000e+00
  %603 = fadd fast float %600, -1.000000e+00
  %604 = fadd fast float %601, -1.000000e+00
  %605 = fmul fast float %453, %602
  %606 = fmul fast float %453, %603
  %607 = fmul fast float %453, %604
  %608 = fadd fast float %605, 1.000000e+00
  %609 = fadd fast float %606, 1.000000e+00
  %610 = fadd fast float %607, 1.000000e+00
  %611 = fmul fast float %608, %429
  %612 = fmul fast float %609, %430
  %613 = fmul fast float %610, %431
  br label %614

; <label>:614                                     ; preds = %598, %564, %458, %415
  %615 = phi float [ %560, %458 ], [ %440, %564 ], [ %440, %598 ], [ 0x3FA23C0BE0000000, %415 ]
  %616 = phi float [ %552, %458 ], [ %595, %564 ], [ %611, %598 ], [ 1.000000e+00, %415 ]
  %617 = phi float [ %553, %458 ], [ %596, %564 ], [ %612, %598 ], [ 1.000000e+00, %415 ]
  %618 = phi float [ %554, %458 ], [ %597, %564 ], [ %613, %598 ], [ 1.000000e+00, %415 ]
  %619 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %620 = extractvalue %dx.types.CBufRet.i32 %619, 1
  %621 = and i32 %620, 1
  %622 = icmp ne i32 %621, 0
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = and i32 %624, 32
  %626 = icmp ne i32 %625, 0
  %627 = and i1 %622, %626
  %628 = select i1 %627, float 1.000000e+00, float %616
  %629 = select i1 %627, float 0x3FD3333340000000, float %617
  %630 = select i1 %627, float 0x3FD3333340000000, float %618
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = and i32 %632, 32
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %704, label %635

; <label>:635                                     ; preds = %614
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = add i32 %639, 0
  %641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %640, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %642 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %641, %dx.types.Handle %78, float %346, float %347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  %646 = extractvalue %dx.types.ResRet.f32 %642, 3
  %647 = and i32 %637, 255
  %648 = uitofp i32 %647 to float
  %649 = lshr i32 %637, 8
  %650 = and i32 %649, 255
  %651 = uitofp i32 %650 to float
  %652 = lshr i32 %637, 16
  %653 = and i32 %652, 255
  %654 = uitofp i32 %653 to float
  %655 = fmul fast float %654, 0x3F70101000000000
  %656 = fmul fast float %643, %648
  %657 = fadd fast float %656, %651
  %658 = fmul fast float %657, 0x3F70101000000000
  %659 = fadd fast float %644, -5.000000e-01
  %660 = fadd fast float %646, -5.000000e-01
  %661 = fmul fast float %659, %655
  %662 = fmul fast float %660, %655
  %663 = fadd fast float %661, 5.000000e-01
  %664 = fadd fast float %662, 5.000000e-01
  %665 = fmul fast float %663, 2.000000e+00
  %666 = fadd fast float %665, -1.000000e+00
  %667 = fmul fast float %664, 2.000000e+00
  %668 = fadd fast float %667, -1.000000e+00
  %669 = fadd fast float %666, %668
  %670 = fmul fast float %669, 5.000000e-01
  %671 = fsub fast float %666, %668
  %672 = fmul fast float %671, 5.000000e-01
  %673 = call float @dx.op.unary.f32(i32 6, float %670)  ; FAbs(value)
  %674 = fsub fast float 1.000000e+00, %673
  %675 = call float @dx.op.unary.f32(i32 6, float %672)  ; FAbs(value)
  %676 = fsub fast float %674, %675
  %677 = call float @dx.op.dot3.f32(i32 55, float %670, float %672, float %676, float %670, float %672, float %676)  ; Dot3(ax,ay,az,bx,by,bz)
  %678 = call float @dx.op.unary.f32(i32 25, float %677)  ; Rsqrt(value)
  %679 = fmul fast float %670, %678
  %680 = fmul fast float %672, %678
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = and i32 %682, 67108864
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %700, label %685

; <label>:685                                     ; preds = %635
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = and i32 %687, 65535
  %689 = call float @dx.op.legacyF16ToF32(i32 131, i32 %688)  ; LegacyF16ToF32(value)
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = and i32 %691, 65535
  %693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %692)  ; LegacyF16ToF32(value)
  %694 = lshr i32 %687, 16
  %695 = call float @dx.op.legacyF16ToF32(i32 131, i32 %694)  ; LegacyF16ToF32(value)
  %696 = fsub fast float %658, %695
  %697 = fmul fast float %696, %689
  %698 = fadd fast float %697, %693
  %699 = call float @dx.op.unary.f32(i32 7, float %698)  ; Saturate(value)
  br label %700

; <label>:700                                     ; preds = %685, %635
  %701 = phi float [ %699, %685 ], [ %658, %635 ]
  %702 = call float @dx.op.dot2.f32(i32 54, float %679, float %680, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %703 = call float @dx.op.dot2.f32(i32 54, float %679, float %680, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %704

; <label>:704                                     ; preds = %700, %614
  %705 = phi float [ %701, %700 ], [ 0x3FD6666660000000, %614 ]
  %706 = phi float [ %702, %700 ], [ 0.000000e+00, %614 ]
  %707 = phi float [ %703, %700 ], [ 0.000000e+00, %614 ]
  %708 = phi float [ %645, %700 ], [ 1.000000e+00, %614 ]
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = lshr i32 %710, 22
  %712 = shl nuw nsw i32 %711, 5
  %713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %712)  ; LegacyF16ToF32(value)
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = and i32 %715, 64
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %750, label %718

; <label>:718                                     ; preds = %704
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = add i32 %720, 0
  %722 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %721, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = and i32 %724, 131072
  %726 = icmp eq i32 %725, 0
  %727 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %722, %dx.types.Handle %78, float %346, float %347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %728 = extractvalue %dx.types.ResRet.f32 %727, 0
  %729 = extractvalue %dx.types.ResRet.f32 %727, 1
  %730 = extractvalue %dx.types.ResRet.f32 %727, 2
  %731 = fmul fast float %728, %207
  %732 = fmul fast float %729, %210
  %733 = fmul fast float %730, %213
  br i1 %726, label %740, label %734

; <label>:734                                     ; preds = %718
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 0
  %737 = fmul fast float %736, %731
  %738 = fmul fast float %736, %732
  %739 = fmul fast float %736, %733
  br label %740

; <label>:740                                     ; preds = %734, %718
  %741 = phi float [ %737, %734 ], [ %731, %718 ]
  %742 = phi float [ %738, %734 ], [ %732, %718 ]
  %743 = phi float [ %739, %734 ], [ %733, %718 ]
  %744 = fmul fast float %741, %713
  %745 = select i1 %191, float %744, float %741
  %746 = call float @dx.op.dot3.f32(i32 55, float %745, float %742, float %743, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %747 = select i1 %191, float 0.000000e+00, float %741
  %748 = select i1 %191, float %746, float %742
  %749 = select i1 %191, float 0.000000e+00, float %743
  br label %750

; <label>:750                                     ; preds = %740, %704
  %751 = phi float [ %747, %740 ], [ 0.000000e+00, %704 ]
  %752 = phi float [ %748, %740 ], [ 0.000000e+00, %704 ]
  %753 = phi float [ %749, %740 ], [ 0.000000e+00, %704 ]
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = and i32 %755, 1024
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %786, label %758

; <label>:758                                     ; preds = %750
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = and i32 %760, 255
  %762 = uitofp i32 %761 to float
  %763 = fmul fast float %762, 0x3F70101020000000
  %764 = lshr i32 %760, 8
  %765 = and i32 %764, 255
  %766 = uitofp i32 %765 to float
  %767 = fmul fast float %766, 0x3F70101020000000
  %768 = lshr i32 %760, 16
  %769 = and i32 %768, 255
  %770 = uitofp i32 %769 to float
  %771 = fmul fast float %770, 0x3F70101020000000
  %772 = fmul fast float %763, %763
  %773 = fmul fast float %767, %767
  %774 = fmul fast float %771, %771
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = add i32 %776, 0
  %778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %777, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %779 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %778, %dx.types.Handle %79, float %346, float %347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %780 = extractvalue %dx.types.ResRet.f32 %779, 0
  %781 = extractvalue %dx.types.ResRet.f32 %779, 1
  %782 = extractvalue %dx.types.ResRet.f32 %779, 2
  %783 = fmul fast float %772, %780
  %784 = fmul fast float %773, %781
  %785 = fmul fast float %774, %782
  br label %786

; <label>:786                                     ; preds = %758, %750
  %787 = phi float [ %783, %758 ], [ 0.000000e+00, %750 ]
  %788 = phi float [ %784, %758 ], [ 0.000000e+00, %750 ]
  %789 = phi float [ %785, %758 ], [ 0.000000e+00, %750 ]
  %790 = fcmp fast ogt float %787, 0.000000e+00
  %791 = fcmp fast ogt float %788, 0.000000e+00
  %792 = fcmp fast ogt float %789, 0.000000e+00
  %793 = call float @dx.op.unary.f32(i32 23, float %787)  ; Log(value)
  %794 = call float @dx.op.unary.f32(i32 23, float %788)  ; Log(value)
  %795 = call float @dx.op.unary.f32(i32 23, float %789)  ; Log(value)
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = lshr i32 %797, 7
  %799 = and i32 %798, 32752
  %800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %799)  ; LegacyF16ToF32(value)
  %801 = fmul fast float %793, 0xBFE62E4300000000
  %802 = fmul fast float %801, %800
  %803 = fmul fast float %794, 0xBFE62E4300000000
  %804 = fmul fast float %803, %800
  %805 = fmul fast float %795, 0xBFE62E4300000000
  %806 = fmul fast float %805, %800
  %807 = select i1 %790, float %802, float 1.270000e+02
  %808 = select i1 %791, float %804, float 1.270000e+02
  %809 = select i1 %792, float %806, float 1.270000e+02
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = and i32 %811, 10240
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %856, label %814

; <label>:814                                     ; preds = %786
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = add i32 %816, 0
  %818 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %817, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %819 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %818, %dx.types.Handle %79, float %346, float %347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 1
  %821 = extractvalue %dx.types.ResRet.f32 %819, 3
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = and i32 %823, 1048576
  %825 = icmp ne i32 %824, 0
  %826 = and i32 %823, 8192
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %842, label %828

; <label>:828                                     ; preds = %814
  %829 = extractvalue %dx.types.ResRet.f32 %819, 2
  %830 = select i1 %825, float %829, float %820
  %831 = extractvalue %dx.types.ResRet.f32 %819, 0
  %832 = select i1 %825, float %831, float %820
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = lshr i32 %834, 16
  %836 = and i32 %835, 255
  %837 = uitofp i32 %836 to float
  %838 = fmul fast float %837, 0x3F80101020000000
  %839 = fmul fast float %838, %832
  %840 = fmul fast float %838, %820
  %841 = fmul fast float %838, %830
  br label %842

; <label>:842                                     ; preds = %828, %814
  %843 = phi float [ %839, %828 ], [ 0.000000e+00, %814 ]
  %844 = phi float [ %840, %828 ], [ 0.000000e+00, %814 ]
  %845 = phi float [ %841, %828 ], [ 0.000000e+00, %814 ]
  %846 = and i32 %823, 2048
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %856, label %848

; <label>:848                                     ; preds = %842
  %849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %850 = extractvalue %dx.types.ResRet.i32 %849, 0
  %851 = shl i32 %850, 4
  %852 = and i32 %851, 32752
  %853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %852)  ; LegacyF16ToF32(value)
  %854 = fmul fast float %853, %821
  %855 = call float @dx.op.binary.f32(i32 35, float %854, float 0x3F70101020000000)  ; FMax(a,b)
  br label %856

; <label>:856                                     ; preds = %848, %842, %786
  %857 = phi float [ %843, %848 ], [ %843, %842 ], [ 0.000000e+00, %786 ]
  %858 = phi float [ %844, %848 ], [ %844, %842 ], [ 0.000000e+00, %786 ]
  %859 = phi float [ %845, %848 ], [ %845, %842 ], [ 0.000000e+00, %786 ]
  %860 = phi float [ %855, %848 ], [ 0x3F70101020000000, %842 ], [ 0x3F70101020000000, %786 ]
  %861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.i32 %861, 0
  %863 = and i32 %862, 255
  %864 = uitofp i32 %863 to float
  %865 = lshr i32 %862, 8
  %866 = and i32 %865, 255
  %867 = uitofp i32 %866 to float
  %868 = call float @dx.op.dot3.f32(i32 55, float %628, float %629, float %630, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %869 = fmul fast float %867, %868
  %870 = fadd fast float %869, %864
  %871 = fmul fast float %870, 0x3F70101020000000
  %872 = call float @dx.op.unary.f32(i32 7, float %871)  ; Saturate(value)
  br label %873

; <label>:873                                     ; preds = %856, %252
  %874 = phi float [ 0.000000e+00, %252 ], [ %706, %856 ]
  %875 = phi float [ 0.000000e+00, %252 ], [ %707, %856 ]
  %876 = phi float [ 0.000000e+00, %252 ], [ %857, %856 ]
  %877 = phi float [ 0.000000e+00, %252 ], [ %858, %856 ]
  %878 = phi float [ 0.000000e+00, %252 ], [ %859, %856 ]
  %879 = phi float [ 0.000000e+00, %252 ], [ %751, %856 ]
  %880 = phi float [ 0.000000e+00, %252 ], [ %752, %856 ]
  %881 = phi float [ 0.000000e+00, %252 ], [ %753, %856 ]
  %882 = phi float [ 0.000000e+00, %252 ], [ %807, %856 ]
  %883 = phi float [ 0.000000e+00, %252 ], [ %808, %856 ]
  %884 = phi float [ 0.000000e+00, %252 ], [ %809, %856 ]
  %885 = phi float [ 0.000000e+00, %252 ], [ %628, %856 ]
  %886 = phi float [ 0.000000e+00, %252 ], [ %629, %856 ]
  %887 = phi float [ 0.000000e+00, %252 ], [ %630, %856 ]
  %888 = phi float [ 0.000000e+00, %252 ], [ %615, %856 ]
  %889 = phi float [ 0.000000e+00, %252 ], [ %416, %856 ]
  %890 = phi float [ 0.000000e+00, %252 ], [ %705, %856 ]
  %891 = phi float [ 0.000000e+00, %252 ], [ %708, %856 ]
  %892 = phi float [ 0.000000e+00, %252 ], [ %860, %856 ]
  %893 = phi float [ 0.000000e+00, %252 ], [ %872, %856 ]
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = call float @dx.op.dot2.f32(i32 54, float %874, float %875, float %874, float %875)  ; Dot2(ax,ay,bx,by)
  %897 = fmul fast float %896, 0x3FE3333340000000
  %898 = fsub fast float 1.000000e+00, %897
  %899 = call float @dx.op.dot3.f32(i32 55, float %874, float %875, float %898, float %874, float %875, float %898)  ; Dot3(ax,ay,az,bx,by,bz)
  %900 = call float @dx.op.unary.f32(i32 25, float %899)  ; Rsqrt(value)
  %901 = fmul fast float %900, %874
  %902 = fmul fast float %900, %875
  %903 = fmul fast float %898, %900
  %904 = fmul fast float %903, %85
  %905 = fmul fast float %903, %86
  %906 = fmul fast float %903, %87
  %907 = fmul fast float %901, %58
  %908 = fmul fast float %901, %59
  %909 = fmul fast float %901, %60
  %910 = fmul fast float %90, %61
  %911 = fmul fast float %910, %902
  %912 = fmul fast float %93, %61
  %913 = fmul fast float %912, %902
  %914 = fmul fast float %96, %61
  %915 = fmul fast float %914, %902
  %916 = fadd fast float %911, %907
  %917 = fmul fast float %916, %84
  %918 = fadd fast float %917, %904
  %919 = fadd fast float %913, %908
  %920 = fmul fast float %919, %84
  %921 = fadd fast float %920, %905
  %922 = fadd fast float %915, %909
  %923 = fmul fast float %922, %84
  %924 = fadd fast float %923, %906
  %925 = call float @dx.op.dot3.f32(i32 55, float %918, float %921, float %924, float %918, float %921, float %924)  ; Dot3(ax,ay,az,bx,by,bz)
  %926 = call float @dx.op.unary.f32(i32 25, float %925)  ; Rsqrt(value)
  %927 = fmul fast float %918, %926
  %928 = fmul fast float %921, %926
  %929 = fmul fast float %924, %926
  %930 = call float @dx.op.unary.f32(i32 83, float %130)  ; DerivCoarseX(value)
  %931 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %932 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %933 = call float @dx.op.unary.f32(i32 84, float %130)  ; DerivCoarseY(value)
  %934 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %935 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %936 = fadd fast float %930, %130
  %937 = fadd fast float %931, %131
  %938 = fadd fast float %932, %132
  %939 = fadd fast float %933, %130
  %940 = fadd fast float %934, %131
  %941 = fadd fast float %935, %132
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 0
  %944 = extractvalue %dx.types.CBufRet.f32 %942, 1
  %945 = extractvalue %dx.types.CBufRet.f32 %942, 2
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 2
  %948 = extractvalue %dx.types.CBufRet.f32 %946, 3
  %949 = fmul fast float %943, %82
  %950 = fmul fast float %949, %947
  %951 = fmul fast float %944, %83
  %952 = fmul fast float %951, %948
  %953 = fptoui float %950 to i32
  %954 = fptoui float %952 to i32
  %955 = fadd fast float %943, -1.000000e+00
  %956 = fadd fast float %944, -1.000000e+00
  %957 = fptoui float %955 to i32
  %958 = fptoui float %956 to i32
  %959 = call i32 @dx.op.binary.i32(i32 40, i32 %953, i32 %957)  ; UMin(a,b)
  %960 = call i32 @dx.op.binary.i32(i32 40, i32 %954, i32 %958)  ; UMin(a,b)
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %963 = extractvalue %dx.types.CBufRet.f32 %961, 3
  %964 = fmul fast float %962, %70
  %965 = fsub fast float %964, %963
  %966 = fadd fast float %945, -1.000000e+00
  %967 = call float @dx.op.binary.f32(i32 36, float %965, float %966)  ; FMin(a,b)
  %968 = fptoui float %967 to i32
  %969 = fptoui float %943 to i32
  %970 = fptoui float %944 to i32
  %971 = mul i32 %968, %970
  %972 = add i32 %971, %960
  %973 = mul i32 %972, %969
  %974 = add i32 %973, %959
  %975 = shl i32 %974, 2
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = and i32 %977, 1023
  %979 = lshr i32 %977, 10
  %980 = icmp eq i32 %978, 0
  br i1 %980, label %1484, label %981

; <label>:981                                     ; preds = %873
  %982 = and i32 %977, 1023
  br label %983

; <label>:983                                     ; preds = %1115, %981
  %984 = phi i32 [ %1065, %1115 ], [ 0, %981 ]
  %985 = phi float [ %1116, %1115 ], [ 0.000000e+00, %981 ]
  %986 = phi float [ %1117, %1115 ], [ %895, %981 ]
  %987 = phi float [ %1118, %1115 ], [ %893, %981 ]
  %988 = phi float [ %1119, %1115 ], [ %882, %981 ]
  %989 = phi float [ %1120, %1115 ], [ %883, %981 ]
  %990 = phi float [ %1121, %1115 ], [ %884, %981 ]
  %991 = phi float [ %1122, %1115 ], [ 0.000000e+00, %981 ]
  %992 = phi float [ %1123, %1115 ], [ 0.000000e+00, %981 ]
  %993 = phi float [ %1124, %1115 ], [ %876, %981 ]
  %994 = phi float [ %1125, %1115 ], [ %877, %981 ]
  %995 = phi float [ %1126, %1115 ], [ %878, %981 ]
  %996 = phi float [ %1127, %1115 ], [ %879, %981 ]
  %997 = phi float [ %1128, %1115 ], [ %880, %981 ]
  %998 = phi float [ %1129, %1115 ], [ %881, %981 ]
  %999 = phi float [ %1130, %1115 ], [ %927, %981 ]
  %1000 = phi float [ %1131, %1115 ], [ %928, %981 ]
  %1001 = phi float [ %1132, %1115 ], [ %929, %981 ]
  %1002 = phi float [ %1133, %1115 ], [ %891, %981 ]
  %1003 = phi float [ %1134, %1115 ], [ %890, %981 ]
  %1004 = phi float [ %1135, %1115 ], [ 0.000000e+00, %981 ]
  %1005 = phi float [ %1136, %1115 ], [ %888, %981 ]
  %1006 = phi float [ %1137, %1115 ], [ %885, %981 ]
  %1007 = phi float [ %1138, %1115 ], [ %886, %981 ]
  %1008 = phi float [ %1139, %1115 ], [ %887, %981 ]
  %1009 = add nuw nsw i32 %984, %979
  %1010 = shl i32 %1009, 2
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = shl i32 %1012, 8
  %1014 = or i32 %1013, 48
  %1015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1017 = extractvalue %dx.types.ResRet.f32 %1015, 1
  %1018 = extractvalue %dx.types.ResRet.f32 %1015, 2
  %1019 = extractvalue %dx.types.ResRet.f32 %1015, 3
  %1020 = or i32 %1013, 64
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = extractvalue %dx.types.ResRet.i32 %1021, 1
  %1024 = or i32 %1013, 80
  %1025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.f32 %1025, 2
  %1027 = extractvalue %dx.types.ResRet.f32 %1025, 3
  %1028 = or i32 %1013, 96
  %1029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.ResRet.f32 %1029, 2
  %1033 = extractvalue %dx.types.ResRet.f32 %1029, 3
  %1034 = or i32 %1013, 112
  %1035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 2
  %1037 = or i32 %1013, 128
  %1038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.f32 %1038, 0
  %1040 = extractvalue %dx.types.ResRet.f32 %1038, 1
  %1041 = extractvalue %dx.types.ResRet.f32 %1038, 2
  %1042 = extractvalue %dx.types.ResRet.f32 %1038, 3
  %1043 = or i32 %1013, 144
  %1044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.ResRet.f32 %1044, 1
  %1047 = extractvalue %dx.types.ResRet.f32 %1044, 2
  %1048 = extractvalue %dx.types.ResRet.f32 %1044, 3
  %1049 = or i32 %1013, 160
  %1050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.ResRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.ResRet.f32 %1050, 2
  %1054 = extractvalue %dx.types.ResRet.f32 %1050, 3
  %1055 = or i32 %1013, 192
  %1056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.i32 %1056, 0
  %1058 = or i32 %1013, 208
  %1059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = or i32 %1013, 248
  %1062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.ResRet.f32 %1062, 1
  %1065 = add nuw nsw i32 %984, 1
  %1066 = bitcast float %1019 to i32
  %1067 = and i32 %1066, 512
  %1068 = icmp eq i32 %1067, 0
  %1069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1013, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.ResRet.f32 %1069, 1
  %1072 = extractvalue %dx.types.ResRet.f32 %1069, 2
  %1073 = extractvalue %dx.types.ResRet.f32 %1069, 3
  %1074 = call float @dx.op.dot4.f32(i32 56, float %1070, float %1071, float %1072, float %1073, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1075 = or i32 %1013, 16
  %1076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.ResRet.f32 %1076, 2
  %1080 = extractvalue %dx.types.ResRet.f32 %1076, 3
  %1081 = call float @dx.op.dot4.f32(i32 56, float %1077, float %1078, float %1079, float %1080, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1082 = or i32 %1013, 32
  %1083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = extractvalue %dx.types.ResRet.f32 %1083, 3
  %1088 = call float @dx.op.dot4.f32(i32 56, float %1084, float %1085, float %1086, float %1087, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1089 = call float @dx.op.unary.f32(i32 27, float %1074)  ; Round_ni(value)
  %1090 = call float @dx.op.unary.f32(i32 6, float %1089)  ; FAbs(value)
  %1091 = call float @dx.op.unary.f32(i32 27, float %1081)  ; Round_ni(value)
  %1092 = call float @dx.op.unary.f32(i32 6, float %1091)  ; FAbs(value)
  %1093 = call float @dx.op.unary.f32(i32 6, float %1088)  ; FAbs(value)
  %1094 = call float @dx.op.unary.f32(i32 27, float %1093)  ; Round_ni(value)
  %1095 = fadd fast float %1092, %1090
  %1096 = fadd fast float %1095, %1094
  %1097 = fcmp fast oeq float %1096, 0.000000e+00
  %1098 = call float @dx.op.dot4.f32(i32 56, float %1070, float %1071, float %1072, float %1073, float %936, float %937, float %938, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1099 = call float @dx.op.dot4.f32(i32 56, float %1077, float %1078, float %1079, float %1080, float %936, float %937, float %938, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1100 = call float @dx.op.dot4.f32(i32 56, float %1070, float %1071, float %1072, float %1073, float %939, float %940, float %941, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1101 = call float @dx.op.dot4.f32(i32 56, float %1077, float %1078, float %1079, float %1080, float %939, float %940, float %941, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1102 = fsub fast float %1098, %1074
  %1103 = fsub fast float %1100, %1074
  %1104 = fsub fast float %1099, %1081
  %1105 = fsub fast float %1101, %1081
  %1106 = call float @dx.op.dot3.f32(i32 55, float %1016, float %1017, float %1018, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %1107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1108 = extractvalue %dx.types.CBufRet.f32 %1107, 2
  %1109 = fadd fast float %1108, %1106
  %1110 = call float @dx.op.unary.f32(i32 7, float %1109)  ; Saturate(value)
  %1111 = extractvalue %dx.types.CBufRet.f32 %1107, 0
  %1112 = fcmp fast ogt float %1110, %1111
  %1113 = and i1 %1097, %1112
  %1114 = and i1 %1068, %1113
  br i1 %1114, label %1141, label %1115

; <label>:1115                                    ; preds = %1470, %1222, %1141, %983
  %1116 = phi float [ %985, %1141 ], [ %1225, %1222 ], [ %1225, %1470 ], [ %985, %983 ]
  %1117 = phi float [ %986, %1141 ], [ %986, %1222 ], [ %1446, %1470 ], [ %986, %983 ]
  %1118 = phi float [ %987, %1141 ], [ %987, %1222 ], [ %1444, %1470 ], [ %987, %983 ]
  %1119 = phi float [ %988, %1141 ], [ %988, %1222 ], [ %1422, %1470 ], [ %988, %983 ]
  %1120 = phi float [ %989, %1141 ], [ %989, %1222 ], [ %1423, %1470 ], [ %989, %983 ]
  %1121 = phi float [ %990, %1141 ], [ %990, %1222 ], [ %1424, %1470 ], [ %990, %983 ]
  %1122 = phi float [ %991, %1141 ], [ %991, %1222 ], [ %1349, %1470 ], [ %991, %983 ]
  %1123 = phi float [ %992, %1141 ], [ %992, %1222 ], [ %1347, %1470 ], [ %992, %983 ]
  %1124 = phi float [ %993, %1141 ], [ %993, %1222 ], [ %1392, %1470 ], [ %993, %983 ]
  %1125 = phi float [ %994, %1141 ], [ %994, %1222 ], [ %1393, %1470 ], [ %994, %983 ]
  %1126 = phi float [ %995, %1141 ], [ %995, %1222 ], [ %1394, %1470 ], [ %995, %983 ]
  %1127 = phi float [ %996, %1141 ], [ %996, %1222 ], [ %1480, %1470 ], [ %996, %983 ]
  %1128 = phi float [ %997, %1141 ], [ %997, %1222 ], [ %1481, %1470 ], [ %997, %983 ]
  %1129 = phi float [ %998, %1141 ], [ %998, %1222 ], [ %1482, %1470 ], [ %998, %983 ]
  %1130 = phi float [ %999, %1141 ], [ %999, %1222 ], [ %1328, %1470 ], [ %999, %983 ]
  %1131 = phi float [ %1000, %1141 ], [ %1000, %1222 ], [ %1329, %1470 ], [ %1000, %983 ]
  %1132 = phi float [ %1001, %1141 ], [ %1001, %1222 ], [ %1330, %1470 ], [ %1001, %983 ]
  %1133 = phi float [ %1002, %1141 ], [ %1002, %1222 ], [ %1402, %1470 ], [ %1002, %983 ]
  %1134 = phi float [ %1003, %1141 ], [ %1003, %1222 ], [ %1399, %1470 ], [ %1003, %983 ]
  %1135 = phi float [ %1004, %1141 ], [ %1004, %1222 ], [ %1396, %1470 ], [ %1004, %983 ]
  %1136 = phi float [ %1005, %1141 ], [ %1005, %1222 ], [ %1345, %1470 ], [ %1005, %983 ]
  %1137 = phi float [ %1006, %1141 ], [ %1006, %1222 ], [ %1340, %1470 ], [ %1006, %983 ]
  %1138 = phi float [ %1007, %1141 ], [ %1007, %1222 ], [ %1341, %1470 ], [ %1007, %983 ]
  %1139 = phi float [ %1008, %1141 ], [ %1008, %1222 ], [ %1342, %1470 ], [ %1008, %983 ]
  %1140 = icmp eq i32 %1065, %982
  br i1 %1140, label %1483, label %983

; <label>:1141                                    ; preds = %983
  %1142 = extractvalue %dx.types.ResRet.f32 %1035, 3
  %1143 = extractvalue %dx.types.ResRet.f32 %1035, 1
  %1144 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1145 = extractvalue %dx.types.ResRet.f32 %1025, 1
  %1146 = extractvalue %dx.types.ResRet.f32 %1025, 0
  %1147 = extractvalue %dx.types.ResRet.i32 %1021, 3
  %1148 = extractvalue %dx.types.ResRet.i32 %1021, 2
  %1149 = add i32 %1147, 0
  %1150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1149, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1152 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1150, %dx.types.Handle %1151, float %1074, float %1081, float undef, float undef, i32 0, i32 0, i32 undef, float %1102, float %1104, float undef, float %1103, float %1105, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1153 = extractvalue %dx.types.ResRet.f32 %1152, 0
  %1154 = fmul fast float %1153, %1146
  %1155 = fadd fast float %1154, %1145
  %1156 = call float @dx.op.unary.f32(i32 7, float %1155)  ; Saturate(value)
  %1157 = fmul fast float %1074, %1030
  %1158 = call float @dx.op.tertiary.f32(i32 46, float %1031, float %1081, float %1157)  ; FMad(a,b,c)
  %1159 = fadd fast float %1158, %1144
  %1160 = fmul fast float %1074, %1032
  %1161 = call float @dx.op.tertiary.f32(i32 46, float %1033, float %1081, float %1160)  ; FMad(a,b,c)
  %1162 = fadd fast float %1161, %1143
  %1163 = fmul fast float %1102, %1030
  %1164 = call float @dx.op.tertiary.f32(i32 46, float %1031, float %1104, float %1163)  ; FMad(a,b,c)
  %1165 = fmul fast float %1102, %1032
  %1166 = call float @dx.op.tertiary.f32(i32 46, float %1033, float %1104, float %1165)  ; FMad(a,b,c)
  %1167 = fmul fast float %1103, %1030
  %1168 = call float @dx.op.tertiary.f32(i32 46, float %1031, float %1105, float %1167)  ; FMad(a,b,c)
  %1169 = fmul fast float %1103, %1032
  %1170 = call float @dx.op.tertiary.f32(i32 46, float %1033, float %1105, float %1169)  ; FMad(a,b,c)
  %1171 = add i32 %1148, 0
  %1172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1171, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1173 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1172, %dx.types.Handle %1151, float %1159, float %1162, float undef, float undef, i32 0, i32 0, i32 undef, float %1164, float %1166, float undef, float %1168, float %1170, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1174 = extractvalue %dx.types.ResRet.f32 %1173, 0
  %1175 = and i32 %1066, 1024
  %1176 = icmp ne i32 %1175, 0
  %1177 = fcmp fast ogt float %1174, 0x3FE0101020000000
  %1178 = uitofp i1 %1177 to float
  %1179 = select i1 %1176, float %1178, float %1174
  %1180 = and i32 %1066, 8192
  %1181 = icmp ne i32 %1180, 0
  %1182 = select i1 %1181, float %1142, float 1.000000e+00
  %1183 = fmul fast float %1074, 2.000000e+00
  %1184 = fadd fast float %1183, -1.000000e+00
  %1185 = call float @dx.op.unary.f32(i32 6, float %1184)  ; FAbs(value)
  %1186 = fmul fast float %1185, %1063
  %1187 = fsub fast float %1186, %1063
  %1188 = call float @dx.op.unary.f32(i32 7, float %1187)  ; Saturate(value)
  %1189 = fmul fast float %1081, 2.000000e+00
  %1190 = fadd fast float %1189, -1.000000e+00
  %1191 = call float @dx.op.unary.f32(i32 6, float %1190)  ; FAbs(value)
  %1192 = fmul fast float %1191, %1064
  %1193 = fsub fast float %1192, %1064
  %1194 = call float @dx.op.unary.f32(i32 7, float %1193)  ; Saturate(value)
  %1195 = fmul fast float %1093, %1026
  %1196 = fsub fast float %1195, %1026
  %1197 = call float @dx.op.unary.f32(i32 7, float %1196)  ; Saturate(value)
  %1198 = fmul fast float %1156, %1182
  %1199 = fmul fast float %1198, %1153
  %1200 = fmul fast float %1199, %1188
  %1201 = fmul fast float %1200, %1179
  %1202 = fmul fast float %1201, %1194
  %1203 = fmul fast float %1202, %1197
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 1
  %1206 = extractvalue %dx.types.CBufRet.f32 %1204, 0
  %1207 = fsub fast float %1110, %1206
  %1208 = fmul fast float %1207, %1205
  %1209 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  %1210 = fmul fast float %1203, %1027
  %1211 = fadd fast float %1203, %1027
  %1212 = fmul fast float %1211, %1036
  %1213 = fsub fast float %1212, %1036
  %1214 = call float @dx.op.unary.f32(i32 7, float %1213)  ; Saturate(value)
  %1215 = and i32 %1066, 128
  %1216 = icmp ne i32 %1215, 0
  %1217 = select i1 %1216, float %1214, float %1210
  %1218 = fmul fast float %1217, %1209
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 0
  %1221 = fcmp fast ugt float %1218, %1220
  br i1 %1221, label %1222, label %1115

; <label>:1222                                    ; preds = %1141
  %1223 = select i1 %1181, float %1218, float 0.000000e+00
  %1224 = fadd fast float %1223, %985
  %1225 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  br i1 %1181, label %1115, label %1226

; <label>:1226                                    ; preds = %1222
  %1227 = and i32 %1066, 4
  %1228 = and i32 %1066, 8
  %1229 = add i32 %1022, 0
  %1230 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1229, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1232 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1230, %dx.types.Handle %1231, float %1159, float %1162, float undef, float undef, i32 0, i32 0, i32 undef, float %1164, float %1166, float undef, float %1168, float %1170, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.ResRet.f32 %1232, 1
  %1235 = extractvalue %dx.types.ResRet.f32 %1232, 2
  %1236 = extractvalue %dx.types.ResRet.f32 %1232, 3
  %1237 = bitcast float %1048 to i32
  %1238 = and i32 %1237, 255
  %1239 = uitofp i32 %1238 to float
  %1240 = lshr i32 %1237, 8
  %1241 = and i32 %1240, 255
  %1242 = uitofp i32 %1241 to float
  %1243 = fmul fast float %1236, %1239
  %1244 = fadd fast float %1243, %1242
  %1245 = fmul fast float %1244, 0x3F70101000000000
  %1246 = add i32 %1023, 0
  %1247 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1246, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1248 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1247, %dx.types.Handle %1231, float %1159, float %1162, float undef, float undef, i32 0, i32 0, i32 undef, float %1164, float %1166, float undef, float %1168, float %1170, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.ResRet.f32 %1248, 1
  %1251 = extractvalue %dx.types.ResRet.f32 %1248, 2
  %1252 = extractvalue %dx.types.ResRet.f32 %1248, 3
  %1253 = bitcast float %1042 to i32
  %1254 = and i32 %1253, 255
  %1255 = uitofp i32 %1254 to float
  %1256 = lshr i32 %1253, 8
  %1257 = and i32 %1256, 255
  %1258 = uitofp i32 %1257 to float
  %1259 = lshr i32 %1253, 16
  %1260 = and i32 %1259, 255
  %1261 = uitofp i32 %1260 to float
  %1262 = fmul fast float %1261, 0x3F70101000000000
  %1263 = fmul fast float %1249, %1255
  %1264 = fadd fast float %1263, %1258
  %1265 = fmul fast float %1264, 0x3F70101000000000
  %1266 = fadd fast float %1250, -5.000000e-01
  %1267 = fadd fast float %1252, -5.000000e-01
  %1268 = fmul fast float %1266, %1262
  %1269 = fmul fast float %1267, %1262
  %1270 = fadd fast float %1268, 5.000000e-01
  %1271 = fadd fast float %1269, 5.000000e-01
  %1272 = fmul fast float %1233, %1051
  %1273 = fmul fast float %1234, %1052
  %1274 = fmul fast float %1235, %1053
  %1275 = fmul fast float %1270, 2.000000e+00
  %1276 = fadd fast float %1275, -1.000000e+00
  %1277 = fmul fast float %1271, 2.000000e+00
  %1278 = fadd fast float %1277, -1.000000e+00
  %1279 = fadd fast float %1276, %1278
  %1280 = fmul fast float %1279, 5.000000e-01
  %1281 = fsub fast float %1276, %1278
  %1282 = fmul fast float %1281, 5.000000e-01
  %1283 = call float @dx.op.unary.f32(i32 6, float %1280)  ; FAbs(value)
  %1284 = fsub fast float 1.000000e+00, %1283
  %1285 = call float @dx.op.unary.f32(i32 6, float %1282)  ; FAbs(value)
  %1286 = fsub fast float %1284, %1285
  %1287 = call float @dx.op.dot3.f32(i32 55, float %1280, float %1282, float %1286, float %1280, float %1282, float %1286)  ; Dot3(ax,ay,az,bx,by,bz)
  %1288 = call float @dx.op.unary.f32(i32 25, float %1287)  ; Rsqrt(value)
  %1289 = fmul fast float %1280, %1288
  %1290 = fmul fast float %1282, %1288
  %1291 = fmul fast float %1288, %1286
  %1292 = fmul fast float %1291, %1016
  %1293 = fmul fast float %1291, %1017
  %1294 = fmul fast float %1291, %1018
  %1295 = fmul fast float %1289, %1039
  %1296 = fmul fast float %1289, %1040
  %1297 = fmul fast float %1289, %1041
  %1298 = fadd fast float %1295, %1292
  %1299 = fadd fast float %1296, %1293
  %1300 = fadd fast float %1297, %1294
  %1301 = fmul fast float %1290, %1045
  %1302 = fmul fast float %1290, %1046
  %1303 = fmul fast float %1290, %1047
  %1304 = fadd fast float %1298, %1301
  %1305 = fadd fast float %1299, %1302
  %1306 = fadd fast float %1300, %1303
  %1307 = call float @dx.op.dot3.f32(i32 55, float %1304, float %1305, float %1306, float %1304, float %1305, float %1306)  ; Dot3(ax,ay,az,bx,by,bz)
  %1308 = call float @dx.op.unary.f32(i32 25, float %1307)  ; Rsqrt(value)
  %1309 = fmul fast float %1304, %1308
  %1310 = fmul fast float %1305, %1308
  %1311 = fmul fast float %1306, %1308
  %1312 = icmp ne i32 %1228, 0
  %1313 = select i1 %1312, float 1.000000e+00, float 0.000000e+00
  %1314 = fmul fast float %1218, %1313
  %1315 = and i32 %1066, 1
  %1316 = icmp eq i32 %1315, 0
  br i1 %1316, label %1317, label %1321

; <label>:1317                                    ; preds = %1226
  %1318 = fsub fast float %1309, %999
  %1319 = fsub fast float %1310, %1000
  %1320 = fsub fast float %1311, %1001
  br label %1321

; <label>:1321                                    ; preds = %1317, %1226
  %1322 = phi float [ %1318, %1317 ], [ %1309, %1226 ]
  %1323 = phi float [ %1319, %1317 ], [ %1310, %1226 ]
  %1324 = phi float [ %1320, %1317 ], [ %1311, %1226 ]
  %1325 = fmul float %1324, %1314
  %1326 = fmul float %1323, %1314
  %1327 = fmul float %1322, %1314
  %1328 = fadd fast float %1327, %999
  %1329 = fadd fast float %1326, %1000
  %1330 = fadd fast float %1325, %1001
  %1331 = icmp ne i32 %1227, 0
  %1332 = select i1 %1331, float 1.000000e+00, float 0.000000e+00
  %1333 = fmul fast float %1218, %1332
  %1334 = fsub fast float %1272, %1006
  %1335 = fsub fast float %1273, %1007
  %1336 = fsub fast float %1274, %1008
  %1337 = fmul fast float %1334, %1333
  %1338 = fmul fast float %1335, %1333
  %1339 = fmul fast float %1336, %1333
  %1340 = fadd fast float %1337, %1006
  %1341 = fadd fast float %1338, %1007
  %1342 = fadd fast float %1339, %1008
  %1343 = fsub fast float %1245, %1005
  %1344 = fmul fast float %1343, %1333
  %1345 = fadd fast float %1344, %1005
  %1346 = fmul fast float %1333, %992
  %1347 = fsub fast float %992, %1346
  %1348 = fmul fast float %1333, %991
  %1349 = fsub fast float %991, %1348
  %1350 = bitcast float %1060 to i32
  %1351 = lshr i32 %1350, 16
  %1352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1351)  ; LegacyF16ToF32(value)
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = and i32 %1354, 1
  %1356 = icmp eq i32 %1355, 0
  br i1 %1356, label %1357, label %1382

; <label>:1357                                    ; preds = %1321
  %1358 = fadd fast float %1245, 0xBFB99999A0000000
  %1359 = call float @dx.op.unary.f32(i32 7, float %1358)  ; Saturate(value)
  %1360 = fmul fast float %1359, 0x3FF1C71C80000000
  %1361 = fsub fast float 1.000000e+00, %1360
  %1362 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1363 = fmul fast float %1362, %1272
  %1364 = fmul fast float %1362, %1273
  %1365 = fmul fast float %1362, %1274
  %1366 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1367 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1368 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1369 = call float @dx.op.binary.f32(i32 35, float %1367, float %1368)  ; FMax(a,b)
  %1370 = call float @dx.op.binary.f32(i32 35, float %1366, float %1369)  ; FMax(a,b)
  %1371 = fcmp fast ogt float %1370, 0.000000e+00
  %1372 = bitcast float %1370 to i32
  %1373 = sub nsw i32 2129859010, %1372
  %1374 = bitcast i32 %1373 to float
  %1375 = select i1 %1371, float %1374, float 0.000000e+00
  %1376 = fmul fast float %1366, %1352
  %1377 = fmul fast float %1367, %1352
  %1378 = fmul fast float %1368, %1352
  %1379 = fmul fast float %1376, %1375
  %1380 = fmul fast float %1377, %1375
  %1381 = fmul fast float %1378, %1375
  br label %1382

; <label>:1382                                    ; preds = %1357, %1321
  %1383 = phi float [ %1352, %1321 ], [ %1379, %1357 ]
  %1384 = phi float [ %1352, %1321 ], [ %1380, %1357 ]
  %1385 = phi float [ %1352, %1321 ], [ %1381, %1357 ]
  %1386 = fsub fast float %1383, %993
  %1387 = fsub fast float %1384, %994
  %1388 = fsub fast float %1385, %995
  %1389 = fmul fast float %1386, %1333
  %1390 = fmul fast float %1387, %1333
  %1391 = fmul fast float %1388, %1333
  %1392 = fadd fast float %1389, %993
  %1393 = fadd fast float %1390, %994
  %1394 = fadd fast float %1391, %995
  %1395 = fadd fast float %1218, %1004
  %1396 = call float @dx.op.unary.f32(i32 7, float %1395)  ; Saturate(value)
  %1397 = fsub fast float %1265, %1003
  %1398 = fmul fast float %1397, %1314
  %1399 = fadd fast float %1398, %1003
  %1400 = fsub fast float %1251, %1002
  %1401 = fmul fast float %1400, %1314
  %1402 = fadd fast float %1401, %1002
  br i1 %1316, label %1411, label %1403

; <label>:1403                                    ; preds = %1382
  %1404 = and i32 %1066, 32768
  %1405 = icmp eq i32 %1404, 0
  br i1 %1405, label %1421, label %1406

; <label>:1406                                    ; preds = %1403
  %1407 = fmul fast float %1314, 1.270000e+02
  %1408 = fadd fast float %1407, %988
  %1409 = fadd fast float %1407, %989
  %1410 = fadd fast float %1407, %990
  br label %1421

; <label>:1411                                    ; preds = %1382
  %1412 = fsub fast float 1.270000e+02, %988
  %1413 = fsub fast float 1.270000e+02, %989
  %1414 = fsub fast float 1.270000e+02, %990
  %1415 = fmul fast float %1314, %1412
  %1416 = fmul fast float %1314, %1413
  %1417 = fmul fast float %1314, %1414
  %1418 = fadd fast float %1415, %988
  %1419 = fadd fast float %1416, %989
  %1420 = fadd fast float %1417, %990
  br label %1421

; <label>:1421                                    ; preds = %1411, %1406, %1403
  %1422 = phi float [ %1408, %1406 ], [ %988, %1403 ], [ %1418, %1411 ]
  %1423 = phi float [ %1409, %1406 ], [ %989, %1403 ], [ %1419, %1411 ]
  %1424 = phi float [ %1410, %1406 ], [ %990, %1403 ], [ %1420, %1411 ]
  %1425 = call float @dx.op.dot3.f32(i32 55, float %1272, float %1273, float %1274, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1427 = extractvalue %dx.types.CBufRet.f32 %1426, 0
  %1428 = extractvalue %dx.types.CBufRet.f32 %1426, 1
  %1429 = fmul fast float %1428, %1425
  %1430 = fadd fast float %1429, %1427
  %1431 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  %1432 = bitcast float %1054 to i32
  %1433 = and i32 %1432, 65535
  %1434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1433)  ; LegacyF16ToF32(value)
  %1435 = lshr i32 %1432, 16
  %1436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1435)  ; LegacyF16ToF32(value)
  %1437 = fcmp fast oge float %1434, 0.000000e+00
  %1438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1439 = extractvalue %dx.types.CBufRet.f32 %1438, 0
  %1440 = select i1 %1437, float %1434, float %1439
  %1441 = fadd fast float %1440, %1436
  %1442 = fsub fast float %1431, %987
  %1443 = fmul fast float %1442, %1218
  %1444 = fadd fast float %1443, %987
  %1445 = fmul fast float %1441, %1218
  %1446 = call float @dx.op.binary.f32(i32 35, float %986, float %1445)  ; FMax(a,b)
  %1447 = and i32 %1066, 16
  %1448 = icmp eq i32 %1447, 0
  br i1 %1448, label %1470, label %1449

; <label>:1449                                    ; preds = %1421
  %1450 = add i32 %1057, 0
  %1451 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1450, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1452 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1451, %dx.types.Handle %1231, float %1159, float %1162, float undef, float undef, i32 0, i32 0, i32 undef, float %1164, float %1166, float undef, float %1168, float %1170, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1453 = extractvalue %dx.types.ResRet.f32 %1452, 0
  %1454 = extractvalue %dx.types.ResRet.f32 %1452, 1
  %1455 = extractvalue %dx.types.ResRet.f32 %1452, 2
  %1456 = and i32 %1350, 65535
  %1457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1456)  ; LegacyF16ToF32(value)
  %1458 = fmul fast float %1453, %1051
  %1459 = fmul fast float %1454, %1052
  %1460 = fmul fast float %1455, %1053
  %1461 = and i32 %1066, 16384
  %1462 = icmp ne i32 %1461, 0
  %1463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1464 = extractvalue %dx.types.CBufRet.f32 %1463, 0
  %1465 = select i1 %1462, float %1464, float 1.000000e+00
  %1466 = fmul fast float %1465, %1457
  %1467 = fmul fast float %1458, %1466
  %1468 = fmul fast float %1459, %1466
  %1469 = fmul fast float %1460, %1466
  br label %1470

; <label>:1470                                    ; preds = %1449, %1421
  %1471 = phi float [ %1467, %1449 ], [ 0.000000e+00, %1421 ]
  %1472 = phi float [ %1468, %1449 ], [ 0.000000e+00, %1421 ]
  %1473 = phi float [ %1469, %1449 ], [ 0.000000e+00, %1421 ]
  %1474 = fsub fast float %1471, %996
  %1475 = fsub fast float %1472, %997
  %1476 = fsub fast float %1473, %998
  %1477 = fmul fast float %1474, %1218
  %1478 = fmul fast float %1475, %1218
  %1479 = fmul fast float %1476, %1218
  %1480 = fadd fast float %1477, %996
  %1481 = fadd fast float %1478, %997
  %1482 = fadd fast float %1479, %998
  br label %1115

; <label>:1483                                    ; preds = %1115
  br label %1484

; <label>:1484                                    ; preds = %1483, %873
  %1485 = phi float [ 0.000000e+00, %873 ], [ %1116, %1483 ]
  %1486 = phi float [ %895, %873 ], [ %1117, %1483 ]
  %1487 = phi float [ %893, %873 ], [ %1118, %1483 ]
  %1488 = phi float [ %882, %873 ], [ %1119, %1483 ]
  %1489 = phi float [ %883, %873 ], [ %1120, %1483 ]
  %1490 = phi float [ %884, %873 ], [ %1121, %1483 ]
  %1491 = phi float [ 0.000000e+00, %873 ], [ %1122, %1483 ]
  %1492 = phi float [ 0.000000e+00, %873 ], [ %1123, %1483 ]
  %1493 = phi float [ %876, %873 ], [ %1124, %1483 ]
  %1494 = phi float [ %877, %873 ], [ %1125, %1483 ]
  %1495 = phi float [ %878, %873 ], [ %1126, %1483 ]
  %1496 = phi float [ %879, %873 ], [ %1127, %1483 ]
  %1497 = phi float [ %880, %873 ], [ %1128, %1483 ]
  %1498 = phi float [ %881, %873 ], [ %1129, %1483 ]
  %1499 = phi float [ %927, %873 ], [ %1130, %1483 ]
  %1500 = phi float [ %928, %873 ], [ %1131, %1483 ]
  %1501 = phi float [ %929, %873 ], [ %1132, %1483 ]
  %1502 = phi float [ %891, %873 ], [ %1133, %1483 ]
  %1503 = phi float [ %890, %873 ], [ %1134, %1483 ]
  %1504 = phi float [ 0.000000e+00, %873 ], [ %1135, %1483 ]
  %1505 = phi float [ %888, %873 ], [ %1136, %1483 ]
  %1506 = phi float [ %885, %873 ], [ %1137, %1483 ]
  %1507 = phi float [ %886, %873 ], [ %1138, %1483 ]
  %1508 = phi float [ %887, %873 ], [ %1139, %1483 ]
  %1509 = call float @dx.op.dot3.f32(i32 55, float %1499, float %1500, float %1501, float %1499, float %1500, float %1501)  ; Dot3(ax,ay,az,bx,by,bz)
  %1510 = call float @dx.op.unary.f32(i32 25, float %1509)  ; Rsqrt(value)
  %1511 = fmul fast float %1510, %1499
  %1512 = fmul fast float %1510, %1500
  %1513 = fmul fast float %1510, %1501
  %1514 = fadd fast float %1504, %889
  %1515 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  %1516 = call float @dx.op.dot3.f32(i32 55, float %1511, float %1512, float %1513, float %1511, float %1512, float %1513)  ; Dot3(ax,ay,az,bx,by,bz)
  %1517 = call float @dx.op.unary.f32(i32 25, float %1516)  ; Rsqrt(value)
  %1518 = fmul fast float %1517, %1511
  %1519 = fmul fast float %1517, %1512
  %1520 = fmul fast float %1517, %1513
  %1521 = fadd fast float %1505, 0xBFB99999A0000000
  %1522 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  %1523 = fmul fast float %1522, 0x3FF1C71C80000000
  %1524 = call float @dx.op.binary.f32(i32 36, float %1505, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1525 = fsub fast float 1.000000e+00, %1523
  %1526 = call float @dx.op.unary.f32(i32 7, float %1525)  ; Saturate(value)
  %1527 = fmul fast float %1526, %1506
  %1528 = fmul fast float %1526, %1507
  %1529 = fmul fast float %1526, %1508
  %1530 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1531 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1532 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1533 = fmul fast float %1523, %1506
  %1534 = fmul fast float %1523, %1507
  %1535 = fmul fast float %1523, %1508
  %1536 = fadd fast float %1533, %1524
  %1537 = fadd fast float %1534, %1524
  %1538 = fadd fast float %1535, %1524
  %1539 = call float @dx.op.unary.f32(i32 7, float %1536)  ; Saturate(value)
  %1540 = call float @dx.op.unary.f32(i32 7, float %1537)  ; Saturate(value)
  %1541 = call float @dx.op.unary.f32(i32 7, float %1538)  ; Saturate(value)
  %1542 = call float @dx.op.unary.f32(i32 7, float %1503)  ; Saturate(value)
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 1
  %1546 = icmp eq i32 %1545, 0
  br i1 %1546, label %1561, label %1547

; <label>:1547                                    ; preds = %1484
  %1548 = call float @dx.op.binary.f32(i32 35, float %1531, float %1532)  ; FMax(a,b)
  %1549 = call float @dx.op.binary.f32(i32 35, float %1530, float %1548)  ; FMax(a,b)
  %1550 = fcmp fast ogt float %1549, 0.000000e+00
  %1551 = bitcast float %1549 to i32
  %1552 = sub nsw i32 2129859010, %1551
  %1553 = bitcast i32 %1552 to float
  %1554 = select i1 %1550, float %1553, float 0.000000e+00
  %1555 = fmul fast float %1530, %1493
  %1556 = fmul fast float %1531, %1494
  %1557 = fmul fast float %1532, %1495
  %1558 = fmul fast float %1555, %1554
  %1559 = fmul fast float %1556, %1554
  %1560 = fmul fast float %1557, %1554
  br label %1561

; <label>:1561                                    ; preds = %1547, %1484
  %1562 = phi float [ %1558, %1547 ], [ %1493, %1484 ]
  %1563 = phi float [ %1559, %1547 ], [ %1494, %1484 ]
  %1564 = phi float [ %1560, %1547 ], [ %1495, %1484 ]
  %1565 = call float @dx.op.binary.f32(i32 36, float %1488, float 1.270000e+02)  ; FMin(a,b)
  %1566 = call float @dx.op.binary.f32(i32 36, float %1489, float 1.270000e+02)  ; FMin(a,b)
  %1567 = call float @dx.op.binary.f32(i32 36, float %1490, float 1.270000e+02)  ; FMin(a,b)
  %1568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1569 = extractvalue %dx.types.CBufRet.i32 %1568, 3
  %1570 = and i32 %1569, 8
  %1571 = icmp ne i32 %1570, 0
  %1572 = call float @dx.op.binary.f32(i32 35, float %1530, float %1506)  ; FMax(a,b)
  %1573 = call float @dx.op.binary.f32(i32 35, float %1531, float %1506)  ; FMax(a,b)
  %1574 = call float @dx.op.binary.f32(i32 35, float %1532, float %1506)  ; FMax(a,b)
  %1575 = call float @dx.op.dot3.f32(i32 55, float %1530, float %1531, float %1532, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1576 = select i1 %191, float %1506, float %1530
  %1577 = select i1 %191, float %1575, float %1531
  %1578 = select i1 %191, float 1.000000e+00, float %1532
  %1579 = select i1 %1571, float %1572, float %1576
  %1580 = select i1 %1571, float %1573, float %1577
  %1581 = select i1 %1571, float %1574, float %1578
  %1582 = call float @dx.op.dot3.f32(i32 55, float %1562, float %1563, float %1564, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1583 = select i1 %191, float %1582, float %1562
  %1584 = select i1 %191, float %1582, float %1563
  %1585 = select i1 %191, float %1582, float %1564
  %1586 = and i32 %167, 3
  %1587 = select i1 %161, i32 %1586, i32 0
  %1588 = icmp eq i32 %1587, 1
  br i1 %1588, label %1589, label %1665

; <label>:1589                                    ; preds = %1561
  %1590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1591 = extractvalue %dx.types.CBufRet.f32 %1590, 0
  %1592 = extractvalue %dx.types.CBufRet.f32 %1590, 1
  %1593 = fadd fast float %1591, %130
  %1594 = fadd fast float %1592, %131
  %1595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1596 = extractvalue %dx.types.CBufRet.f32 %1595, 0
  %1597 = extractvalue %dx.types.CBufRet.f32 %1595, 1
  %1598 = fsub fast float %1593, %1596
  %1599 = fsub fast float %1594, %1597
  %1600 = fmul fast float %1598, %1598
  %1601 = fmul fast float %1599, %1599
  %1602 = fadd fast float %1600, %1601
  %1603 = call float @dx.op.unary.f32(i32 24, float %1602)  ; Sqrt(value)
  %1604 = extractvalue %dx.types.CBufRet.f32 %1595, 2
  %1605 = fcmp fast olt float %1603, %1604
  br i1 %1605, label %1606, label %1659

; <label>:1606                                    ; preds = %1589
  %1607 = extractvalue %dx.types.CBufRet.f32 %1590, 2
  %1608 = fadd fast float %1607, %132
  %1609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1610 = extractvalue %dx.types.CBufRet.f32 %1609, 0
  %1611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1612 = extractvalue %dx.types.CBufRet.f32 %1611, 0
  %1613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1614 = extractvalue %dx.types.CBufRet.f32 %1613, 0
  %1615 = extractvalue %dx.types.CBufRet.f32 %1609, 1
  %1616 = extractvalue %dx.types.CBufRet.f32 %1611, 1
  %1617 = extractvalue %dx.types.CBufRet.f32 %1613, 1
  %1618 = extractvalue %dx.types.CBufRet.f32 %1609, 3
  %1619 = extractvalue %dx.types.CBufRet.f32 %1611, 3
  %1620 = extractvalue %dx.types.CBufRet.f32 %1613, 3
  %1621 = fadd fast float %1618, %1593
  %1622 = fadd fast float %1619, %1594
  %1623 = fadd fast float %1608, %1620
  %1624 = fmul fast float %1621, %1610
  %1625 = call float @dx.op.tertiary.f32(i32 46, float %1622, float %1612, float %1624)  ; FMad(a,b,c)
  %1626 = call float @dx.op.tertiary.f32(i32 46, float %1623, float %1614, float %1625)  ; FMad(a,b,c)
  %1627 = fmul fast float %1621, %1615
  %1628 = call float @dx.op.tertiary.f32(i32 46, float %1622, float %1616, float %1627)  ; FMad(a,b,c)
  %1629 = call float @dx.op.tertiary.f32(i32 46, float %1623, float %1617, float %1628)  ; FMad(a,b,c)
  %1630 = fsub fast float %1626, %1618
  %1631 = fsub fast float %1629, %1619
  %1632 = fsub fast float %1630, %1596
  %1633 = fadd fast float %1632, %1604
  %1634 = fsub fast float %1631, %1597
  %1635 = fadd fast float %1634, %1604
  %1636 = extractvalue %dx.types.CBufRet.f32 %1595, 3
  %1637 = fmul fast float %1633, %1636
  %1638 = fmul fast float %1635, %1636
  %1639 = call float @dx.op.unary.f32(i32 7, float %1637)  ; Saturate(value)
  %1640 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1641 = fsub fast float 1.000000e+00, %1639
  %1642 = fsub fast float 1.000000e+00, %1640
  %1643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %38, float %1641, float %1642, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1644 = extractvalue %dx.types.ResRet.f32 %1643, 0
  %1645 = fcmp fast ugt float %1644, 0.000000e+00
  br i1 %1645, label %1646, label %1659

; <label>:1646                                    ; preds = %1606
  %1647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1658 = fsub fast float %1657, %1607
  br label %1659

; <label>:1659                                    ; preds = %1646, %1606, %1589
  %1660 = phi i1 [ true, %1646 ], [ false, %1606 ], [ false, %1589 ]
  %1661 = phi float [ %1658, %1646 ], [ -1.310720e+05, %1606 ], [ -1.310720e+05, %1589 ]
  %1662 = fsub fast float %1661, %132
  %1663 = call float @dx.op.unary.f32(i32 7, float %1662)  ; Saturate(value)
  %1664 = select i1 %1660, float %1663, float 1.000000e+00
  br label %1665

; <label>:1665                                    ; preds = %1659, %1561
  %1666 = phi float [ %1664, %1659 ], [ 0.000000e+00, %1561 ]
  %1667 = icmp eq i32 %1587, 3
  %1668 = select i1 %1667, float 1.000000e+00, float %1666
  %1669 = call float @dx.op.binary.f32(i32 35, float %1485, float %1668)  ; FMax(a,b)
  %1670 = call float @dx.op.unary.f32(i32 7, float %1669)  ; Saturate(value)
  %1671 = fcmp fast une float %1670, 0.000000e+00
  %1672 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %1673 = call float @dx.op.unary.f32(i32 25, float %1672)  ; Rsqrt(value)
  br i1 %1671, label %1681, label %1674

; <label>:1674                                    ; preds = %1665
  %1675 = fmul fast float %1673, %130
  %1676 = fmul fast float %1673, %131
  %1677 = fmul fast float %1673, %132
  %1678 = fsub fast float -0.000000e+00, %1675
  %1679 = fsub fast float -0.000000e+00, %1676
  %1680 = fsub fast float -0.000000e+00, %1677
  br label %1849

; <label>:1681                                    ; preds = %1665
  %1682 = fmul fast float %130, %1673
  %1683 = fsub fast float -0.000000e+00, %1682
  %1684 = fmul fast float %131, %1673
  %1685 = fsub fast float -0.000000e+00, %1684
  %1686 = fmul fast float %132, %1673
  %1687 = fsub fast float -0.000000e+00, %1686
  %1688 = call float @dx.op.dot3.f32(i32 55, float %1683, float %1685, float %1687, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %1689 = fmul fast float %1670, 2.500000e+00
  %1690 = call float @dx.op.unary.f32(i32 7, float %1689)  ; Saturate(value)
  %1691 = fmul fast float %1670, 0x4013FFFFE0000000
  %1692 = fadd fast float %1691, 0xBFFFFFFFE0000000
  %1693 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  %1694 = fmul fast float %1670, 0x4004000020000000
  %1695 = fadd fast float %1694, 0xBFF8000040000000
  %1696 = call float @dx.op.unary.f32(i32 7, float %1695)  ; Saturate(value)
  %1697 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1698 = fmul fast float %1521, 1.000000e+01
  %1699 = call float @dx.op.unary.f32(i32 7, float %1698)  ; Saturate(value)
  %1700 = fmul fast float %1699, 2.000000e+00
  %1701 = fsub fast float 3.000000e+00, %1700
  %1702 = fmul fast float %1699, %1699
  %1703 = fmul fast float %1702, %1701
  %1704 = fsub fast float 1.000000e+00, %1703
  %1705 = fsub fast float 0x3FE3333340000000, %1542
  %1706 = fmul fast float %1705, 0x400AAAAAA0000000
  %1707 = call float @dx.op.unary.f32(i32 7, float %1706)  ; Saturate(value)
  %1708 = fmul fast float %1704, %1707
  %1709 = fmul fast float %1579, 0x3FEA2B8620000000
  %1710 = fmul fast float %1580, 0x3FEA2B8620000000
  %1711 = fmul fast float %1581, 0x3FEA2B8620000000
  %1712 = fadd fast float %1709, 0x3FC81DFBA0000000
  %1713 = fmul fast float %1712, %1579
  %1714 = fadd fast float %1713, 0x3F910E6020000000
  %1715 = fadd fast float %1710, 0x3FC81DFBA0000000
  %1716 = fmul fast float %1715, %1580
  %1717 = fadd fast float %1716, 0x3F910E6020000000
  %1718 = fadd fast float %1711, 0x3FC81DFBA0000000
  %1719 = fmul fast float %1718, %1581
  %1720 = fadd fast float %1719, 0x3F910E6020000000
  %1721 = call float @dx.op.unary.f32(i32 7, float %1714)  ; Saturate(value)
  %1722 = call float @dx.op.unary.f32(i32 7, float %1717)  ; Saturate(value)
  %1723 = call float @dx.op.unary.f32(i32 7, float %1720)  ; Saturate(value)
  %1724 = fsub fast float %1721, %1579
  %1725 = fsub fast float %1722, %1580
  %1726 = fsub fast float %1723, %1581
  %1727 = fmul fast float %1724, %1697
  %1728 = fmul fast float %1727, %1708
  %1729 = fmul fast float %1725, %1697
  %1730 = fmul fast float %1729, %1708
  %1731 = fmul fast float %1726, %1697
  %1732 = fmul fast float %1731, %1708
  %1733 = fadd fast float %1728, %1579
  %1734 = fadd fast float %1730, %1580
  %1735 = fadd fast float %1732, %1581
  %1736 = fmul fast float %1502, %1502
  %1737 = fmul fast float %1736, %1736
  %1738 = fadd fast float %1693, 1.000000e+00
  %1739 = fsub fast float %1738, %1708
  %1740 = call float @dx.op.unary.f32(i32 7, float %1739)  ; Saturate(value)
  %1741 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1742 = call float @dx.op.unary.f32(i32 7, float %1741)  ; Saturate(value)
  %1743 = fsub fast float 1.000000e+00, %1737
  %1744 = call float @dx.op.binary.f32(i32 36, float %1740, float %1743)  ; FMin(a,b)
  %1745 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1746 = call float @dx.op.binary.f32(i32 35, float %1744, float %1745)  ; FMax(a,b)
  %1747 = fadd fast float %1742, 0xBFE4CCCCC0000000
  %1748 = fmul fast float %1747, 0x4006DB6DA0000000
  %1749 = call float @dx.op.unary.f32(i32 7, float %1748)  ; Saturate(value)
  %1750 = fmul fast float %1749, 2.000000e+00
  %1751 = fsub fast float 3.000000e+00, %1750
  %1752 = bitcast float %1539 to i32
  %1753 = ashr i32 %1752, 1
  %1754 = add nsw i32 %1753, 532487669
  %1755 = bitcast i32 %1754 to float
  %1756 = fsub fast float 1.000000e+00, %1755
  %1757 = bitcast float %1756 to i32
  %1758 = sub nsw i32 2129859010, %1757
  %1759 = bitcast i32 %1758 to float
  %1760 = fmul fast float %1759, 2.000000e+00
  %1761 = bitcast float %1540 to i32
  %1762 = ashr i32 %1761, 1
  %1763 = add nsw i32 %1762, 532487669
  %1764 = bitcast i32 %1763 to float
  %1765 = fsub fast float 1.000000e+00, %1764
  %1766 = bitcast float %1765 to i32
  %1767 = sub nsw i32 2129859010, %1766
  %1768 = bitcast i32 %1767 to float
  %1769 = fmul fast float %1768, 2.000000e+00
  %1770 = bitcast float %1541 to i32
  %1771 = ashr i32 %1770, 1
  %1772 = add nsw i32 %1771, 532487669
  %1773 = bitcast i32 %1772 to float
  %1774 = fsub fast float 1.000000e+00, %1773
  %1775 = bitcast float %1774 to i32
  %1776 = sub nsw i32 2129859010, %1775
  %1777 = bitcast i32 %1776 to float
  %1778 = fmul fast float %1777, 2.000000e+00
  %1779 = fsub fast float 0x4002A9FBE0000000, %1760
  %1780 = fadd fast float %1760, 0x3FD54FDF00000000
  %1781 = bitcast float %1780 to i32
  %1782 = sub nsw i32 2129859010, %1781
  %1783 = bitcast i32 %1782 to float
  %1784 = fmul fast float %1783, %1779
  %1785 = fmul fast float %1784, %1784
  %1786 = fsub fast float 0x4002A9FBE0000000, %1769
  %1787 = fadd fast float %1769, 0x3FD54FDF00000000
  %1788 = bitcast float %1787 to i32
  %1789 = sub nsw i32 2129859010, %1788
  %1790 = bitcast i32 %1789 to float
  %1791 = fmul fast float %1790, %1786
  %1792 = fmul fast float %1791, %1791
  %1793 = fsub fast float 0x4002A9FBE0000000, %1778
  %1794 = fadd fast float %1778, 0x3FD54FDF00000000
  %1795 = bitcast float %1794 to i32
  %1796 = sub nsw i32 2129859010, %1795
  %1797 = bitcast i32 %1796 to float
  %1798 = fmul fast float %1797, %1793
  %1799 = fmul fast float %1798, %1798
  %1800 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1785)  ; FMax(a,b)
  %1801 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1792)  ; FMax(a,b)
  %1802 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1799)  ; FMax(a,b)
  %1803 = fsub fast float 1.000000e+00, %1688
  %1804 = fadd fast float %1803, %1704
  %1805 = call float @dx.op.unary.f32(i32 7, float %1804)  ; Saturate(value)
  %1806 = fsub fast float 1.000000e+00, %1668
  %1807 = fmul fast float %1746, %1806
  %1808 = fmul fast float %1749, %1749
  %1809 = fmul fast float %1808, %1807
  %1810 = fmul fast float %1809, %1751
  %1811 = fmul fast float %1806, 0xBFE99999A0000000
  %1812 = fmul fast float %1811, %1697
  %1813 = fmul fast float %1812, %1708
  %1814 = fadd fast float %1813, 1.000000e+00
  %1815 = fadd fast float %1542, -1.000000e+00
  %1816 = fmul fast float %1814, %1815
  %1817 = fadd fast float %1816, 1.000000e+00
  %1818 = fsub fast float %1800, %1539
  %1819 = fsub fast float %1801, %1540
  %1820 = fsub fast float %1802, %1541
  %1821 = fmul fast float %1810, %1818
  %1822 = fmul fast float %1810, %1819
  %1823 = fmul fast float %1810, %1820
  %1824 = fadd fast float %1821, %1539
  %1825 = fadd fast float %1822, %1540
  %1826 = fadd fast float %1823, %1541
  %1827 = fsub fast float %85, %1518
  %1828 = fsub fast float %86, %1519
  %1829 = fsub fast float %87, %1520
  %1830 = fmul fast float %1810, %1827
  %1831 = fmul fast float %1810, %1828
  %1832 = fmul fast float %1810, %1829
  %1833 = fadd fast float %1830, %1518
  %1834 = fadd fast float %1831, %1519
  %1835 = fadd fast float %1832, %1520
  %1836 = fmul fast float %1810, %1805
  %1837 = call float @dx.op.unary.f32(i32 7, float %1817)  ; Saturate(value)
  %1838 = fsub fast float 1.000000e+00, %1837
  %1839 = fmul fast float %1836, %1838
  %1840 = fadd fast float %1839, %1837
  %1841 = fsub fast float 1.000000e+00, %1502
  %1842 = fmul fast float %1810, %1841
  %1843 = fadd fast float %1842, %1502
  %1844 = call float @dx.op.dot3.f32(i32 55, float %1833, float %1834, float %1835, float %1833, float %1834, float %1835)  ; Dot3(ax,ay,az,bx,by,bz)
  %1845 = call float @dx.op.unary.f32(i32 25, float %1844)  ; Rsqrt(value)
  %1846 = fmul fast float %1833, %1845
  %1847 = fmul fast float %1834, %1845
  %1848 = fmul fast float %1835, %1845
  br label %1849

; <label>:1849                                    ; preds = %1681, %1674
  %1850 = phi float [ %1680, %1674 ], [ %1687, %1681 ]
  %1851 = phi float [ %1679, %1674 ], [ %1685, %1681 ]
  %1852 = phi float [ %1678, %1674 ], [ %1683, %1681 ]
  %1853 = phi float [ %1677, %1674 ], [ %1686, %1681 ]
  %1854 = phi float [ %1676, %1674 ], [ %1684, %1681 ]
  %1855 = phi float [ %1675, %1674 ], [ %1682, %1681 ]
  %1856 = phi float [ %1539, %1674 ], [ %1824, %1681 ]
  %1857 = phi float [ %1540, %1674 ], [ %1825, %1681 ]
  %1858 = phi float [ %1541, %1674 ], [ %1826, %1681 ]
  %1859 = phi float [ %1579, %1674 ], [ %1733, %1681 ]
  %1860 = phi float [ %1580, %1674 ], [ %1734, %1681 ]
  %1861 = phi float [ %1581, %1674 ], [ %1735, %1681 ]
  %1862 = phi float [ %1518, %1674 ], [ %1846, %1681 ]
  %1863 = phi float [ %1519, %1674 ], [ %1847, %1681 ]
  %1864 = phi float [ %1520, %1674 ], [ %1848, %1681 ]
  %1865 = phi float [ %1542, %1674 ], [ %1840, %1681 ]
  %1866 = phi float [ %1502, %1674 ], [ %1843, %1681 ]
  %1867 = select i1 %191, float 0.000000e+00, float %1858
  %1868 = call float @dx.op.dot3.f32(i32 55, float %1862, float %1863, float %1864, float %1852, float %1851, float %1850)  ; Dot3(ax,ay,az,bx,by,bz)
  %1869 = call float @dx.op.unary.f32(i32 7, float %1868)  ; Saturate(value)
  %1870 = call float @dx.op.dot3.f32(i32 55, float %1855, float %1854, float %1853, float %1862, float %1863, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %1871 = fmul fast float %1870, 2.000000e+00
  %1872 = fmul fast float %1871, %1862
  %1873 = fmul fast float %1871, %1863
  %1874 = fmul fast float %1871, %1864
  %1875 = fsub fast float %1855, %1872
  %1876 = fsub fast float %1854, %1873
  %1877 = fsub fast float %1853, %1874
  %1878 = call float @dx.op.binary.f32(i32 36, float %1866, float 1.000000e+00)  ; FMin(a,b)
  %1879 = fsub fast float 1.000000e+00, %1878
  %1880 = bitcast float %1879 to i32
  %1881 = ashr i32 %1880, 1
  %1882 = add nsw i32 %1881, 532487669
  %1883 = bitcast i32 %1882 to float
  %1884 = fsub fast float 1.000000e+00, %1865
  %1885 = call float @dx.op.binary.f32(i32 35, float %1884, float 0x3F847AE140000000)  ; FMax(a,b)
  %1886 = fmul fast float %1885, %1885
  %1887 = fmul fast float %1886, %1886
  %1888 = call float @dx.op.unary.f32(i32 7, float %1869)  ; Saturate(value)
  %1889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %1883, float %1887, float %1888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1890 = extractvalue %dx.types.ResRet.f32 %1889, 0
  %1891 = fsub fast float 1.000000e+00, %1866
  %1892 = bitcast float %1891 to i32
  %1893 = sub nsw i32 2129859010, %1892
  %1894 = call float @dx.op.dot3.f32(i32 55, float %54, float %50, float %46, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1895 = fmul fast float %1894, 0x3FD20DD760000000
  %1896 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %1897 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %1898 = fcmp fast oeq float %1897, 0.000000e+00
  %1899 = fcmp fast oeq float %1896, 0.000000e+00
  %1900 = or i1 %1899, %1898
  br i1 %1900, label %1930, label %1901

; <label>:1901                                    ; preds = %1849
  %1902 = fsub fast float -0.000000e+00, %57
  %1903 = fsub fast float -0.000000e+00, %55
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
  %1914 = call float @dx.op.dot3.f32(i32 55, float %1902, float %1903, float %56, float %1902, float %1903, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %1915 = call float @dx.op.unary.f32(i32 25, float %1914)  ; Rsqrt(value)
  %1916 = fmul fast float %1915, %1902
  %1917 = fmul fast float %1915, %1903
  %1918 = fmul fast float %1915, %56
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

; <label>:1930                                    ; preds = %1901, %1849
  %1931 = phi float [ %1916, %1901 ], [ 0.000000e+00, %1849 ]
  %1932 = phi float [ %1917, %1901 ], [ 0.000000e+00, %1849 ]
  %1933 = phi float [ %1918, %1901 ], [ 0.000000e+00, %1849 ]
  %1934 = phi float [ %1925, %1901 ], [ 0.000000e+00, %1849 ]
  %1935 = phi float [ %1929, %1901 ], [ 0.000000e+00, %1849 ]
  %1936 = call float @dx.op.dot3.f32(i32 55, float %1931, float %1932, float %1933, float %1862, float %1863, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %1947 = call float @dx.op.dot3.f32(i32 55, float %1931, float %1932, float %1933, float %1875, float %1876, float %1877)  ; Dot3(ax,ay,az,bx,by,bz)
  %1948 = fmul fast float %1947, 0x3FDF454380000000
  %1949 = fmul fast float %1947, %1947
  %1950 = fmul fast float %1949, 0x3FEE471020000000
  %1951 = fadd fast float %1950, 0xBFD42F6020000000
  %1952 = call float @dx.op.dot3.f32(i32 55, float %1896, float %1934, float %1935, float 0x3FD20DD760000000, float %1948, float %1951)  ; Dot3(ax,ay,az,bx,by,bz)
  %1953 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %1954 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %1955 = fcmp fast oeq float %1954, 0.000000e+00
  %1956 = fcmp fast oeq float %1953, 0.000000e+00
  %1957 = or i1 %1956, %1955
  br i1 %1957, label %1987, label %1958

; <label>:1958                                    ; preds = %1930
  %1959 = fsub fast float -0.000000e+00, %53
  %1960 = fsub fast float -0.000000e+00, %51
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
  %1971 = call float @dx.op.dot3.f32(i32 55, float %1959, float %1960, float %52, float %1959, float %1960, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %1972 = call float @dx.op.unary.f32(i32 25, float %1971)  ; Rsqrt(value)
  %1973 = fmul fast float %1972, %1959
  %1974 = fmul fast float %1972, %1960
  %1975 = fmul fast float %1972, %52
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
  %1993 = call float @dx.op.dot3.f32(i32 55, float %1988, float %1989, float %1990, float %1862, float %1863, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %2004 = call float @dx.op.dot3.f32(i32 55, float %1988, float %1989, float %1990, float %1875, float %1876, float %1877)  ; Dot3(ax,ay,az,bx,by,bz)
  %2005 = fmul fast float %2004, 0x3FDF454380000000
  %2006 = fmul fast float %2004, %2004
  %2007 = fmul fast float %2006, 0x3FEE471020000000
  %2008 = fadd fast float %2007, 0xBFD42F6020000000
  %2009 = call float @dx.op.dot3.f32(i32 55, float %1953, float %1991, float %1992, float 0x3FD20DD760000000, float %2005, float %2008)  ; Dot3(ax,ay,az,bx,by,bz)
  %2010 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %46)  ; FMax(a,b)
  %2011 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float %47, float %48, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %2012 = fcmp fast oeq float %2011, 0.000000e+00
  %2013 = fcmp fast oeq float %2010, 0.000000e+00
  %2014 = or i1 %2013, %2012
  br i1 %2014, label %2044, label %2015

; <label>:2015                                    ; preds = %1987
  %2016 = fsub fast float -0.000000e+00, %49
  %2017 = fsub fast float -0.000000e+00, %47
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
  %2028 = call float @dx.op.dot3.f32(i32 55, float %2016, float %2017, float %48, float %2016, float %2017, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %2029 = call float @dx.op.unary.f32(i32 25, float %2028)  ; Rsqrt(value)
  %2030 = fmul fast float %2029, %2016
  %2031 = fmul fast float %2029, %2017
  %2032 = fmul fast float %2029, %48
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
  %2050 = call float @dx.op.dot3.f32(i32 55, float %2045, float %2046, float %2047, float %1862, float %1863, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %2061 = call float @dx.op.dot3.f32(i32 55, float %2045, float %2046, float %2047, float %1875, float %1876, float %1877)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %2076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2077 = extractvalue %dx.types.CBufRet.f32 %2076, 0
  %2078 = call float @dx.op.binary.f32(i32 36, float %1859, float %2077)  ; FMin(a,b)
  %2079 = fmul fast float %2078, %1879
  %2080 = fsub fast float 1.000000e+00, %2079
  %2081 = bitcast float %2080 to i32
  %2082 = sub nsw i32 2129859010, %2081
  %2083 = bitcast i32 %2082 to float
  %2084 = call float @dx.op.binary.f32(i32 36, float %1860, float %2077)  ; FMin(a,b)
  %2085 = fmul fast float %2084, %1879
  %2086 = fsub fast float 1.000000e+00, %2085
  %2087 = bitcast float %2086 to i32
  %2088 = sub nsw i32 2129859010, %2087
  %2089 = bitcast i32 %2088 to float
  %2090 = call float @dx.op.binary.f32(i32 36, float %1861, float %2077)  ; FMin(a,b)
  %2091 = fmul fast float %2090, %1879
  %2092 = fsub fast float 1.000000e+00, %2091
  %2093 = bitcast float %2092 to i32
  %2094 = sub nsw i32 2129859010, %2093
  %2095 = bitcast i32 %2094 to float
  %2096 = fmul fast float %2067, %1878
  %2097 = fmul fast float %2096, %2083
  %2098 = fmul fast float %2068, %1878
  %2099 = fmul fast float %2098, %2089
  %2100 = fmul fast float %2069, %1878
  %2101 = fmul fast float %2100, %2095
  %2102 = call float @dx.op.binary.f32(i32 36, float %1856, float %2077)  ; FMin(a,b)
  %2103 = fmul fast float %2102, %1879
  %2104 = fsub fast float 1.000000e+00, %2103
  %2105 = bitcast float %2104 to i32
  %2106 = sub nsw i32 2129859010, %2105
  %2107 = bitcast i32 %2106 to float
  %2108 = call float @dx.op.binary.f32(i32 36, float %1857, float %2077)  ; FMin(a,b)
  %2109 = fmul fast float %2108, %1879
  %2110 = fsub fast float 1.000000e+00, %2109
  %2111 = bitcast float %2110 to i32
  %2112 = sub nsw i32 2129859010, %2111
  %2113 = bitcast i32 %2112 to float
  %2114 = call float @dx.op.binary.f32(i32 36, float %1867, float %2077)  ; FMin(a,b)
  %2115 = fmul fast float %2114, %1879
  %2116 = fsub fast float 1.000000e+00, %2115
  %2117 = bitcast float %2116 to i32
  %2118 = sub nsw i32 2129859010, %2117
  %2119 = bitcast i32 %2118 to float
  %2120 = fmul fast float %2073, %1878
  %2121 = fmul fast float %2120, %2107
  %2122 = fmul fast float %2074, %1878
  %2123 = fmul fast float %2122, %2113
  %2124 = fmul fast float %2075, %1878
  %2125 = fmul fast float %2124, %2119
  %2126 = call float @dx.op.dot3.f32(i32 55, float %2097, float %2099, float %2101, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2127 = select i1 %191, float 0.000000e+00, float %2097
  %2128 = select i1 %191, float %2126, float %2099
  %2129 = select i1 %191, float 0.000000e+00, float %2101
  %2130 = call float @dx.op.dot3.f32(i32 55, float %2070, float %2071, float %2072, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2131 = select i1 %191, float 0.000000e+00, float %2070
  %2132 = select i1 %191, float %2130, float %2071
  %2133 = select i1 %191, float 0.000000e+00, float %2072
  %2134 = call float @dx.op.dot3.f32(i32 55, float %2121, float %2123, float %2125, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2135 = select i1 %191, float 0.000000e+00, float %2121
  %2136 = select i1 %191, float %2134, float %2123
  %2137 = select i1 %191, float 0.000000e+00, float %2125
  %2138 = fmul fast float %892, %892
  %2139 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  %2140 = fmul fast float %1869, 9.843750e-01
  %2141 = fmul fast float %1865, 9.843750e-01
  %2142 = fadd fast float %2140, 7.812500e-03
  %2143 = fadd fast float %2141, 7.812500e-03
  %2144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %38, float %2142, float %2143, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = extractvalue %dx.types.ResRet.f32 %2144, 1
  %2147 = extractvalue %dx.types.ResRet.f32 %2144, 2
  %2148 = extractvalue %dx.types.ResRet.f32 %2144, 3
  %2149 = fsub fast float 1.000000e+00, %2139
  %2150 = fsub fast float %2147, %2145
  %2151 = fsub fast float %2148, %2146
  %2152 = fmul fast float %2150, %2149
  %2153 = fmul fast float %2151, %2149
  %2154 = fadd fast float %2152, %2145
  %2155 = fadd fast float %2153, %2146
  %2156 = fmul fast float %2154, %1856
  %2157 = fmul fast float %2154, %1857
  %2158 = fmul fast float %2154, %1867
  %2159 = fadd fast float %2156, %2155
  %2160 = fadd fast float %2157, %2155
  %2161 = fadd fast float %2158, %2155
  %2162 = fcmp fast ogt float %1492, 0.000000e+00
  br i1 %2162, label %2163, label %2189

; <label>:2163                                    ; preds = %2044
  %2164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %38, float %1492, float %1869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2165 = extractvalue %dx.types.ResRet.f32 %2164, 0
  %2166 = extractvalue %dx.types.ResRet.f32 %2164, 1
  %2167 = extractvalue %dx.types.ResRet.f32 %2164, 2
  %2168 = fadd fast float %2165, -5.000000e-01
  %2169 = fadd fast float %2166, -5.000000e-01
  %2170 = fadd fast float %2167, -5.000000e-01
  %2171 = fsub fast float 1.000000e+00, %1856
  %2172 = fsub fast float 1.000000e+00, %1857
  %2173 = fsub fast float 1.000000e+00, %1867
  %2174 = fmul fast float %1856, 4.000000e+00
  %2175 = fmul fast float %2174, %2171
  %2176 = fmul fast float %2175, %2168
  %2177 = fmul fast float %1857, 4.000000e+00
  %2178 = fmul fast float %2177, %2172
  %2179 = fmul fast float %2178, %2169
  %2180 = fmul fast float %1867, 4.000000e+00
  %2181 = fmul fast float %2180, %2173
  %2182 = fmul fast float %2181, %2170
  %2183 = fadd fast float %2176, %2159
  %2184 = fadd fast float %2179, %2160
  %2185 = fadd fast float %2182, %2161
  %2186 = call float @dx.op.unary.f32(i32 7, float %2183)  ; Saturate(value)
  %2187 = call float @dx.op.unary.f32(i32 7, float %2184)  ; Saturate(value)
  %2188 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  br label %2189

; <label>:2189                                    ; preds = %2163, %2044
  %2190 = phi float [ %2186, %2163 ], [ %2159, %2044 ]
  %2191 = phi float [ %2187, %2163 ], [ %2160, %2044 ]
  %2192 = phi float [ %2188, %2163 ], [ %2161, %2044 ]
  %2193 = call float @dx.op.binary.f32(i32 35, float %2191, float %2192)  ; FMax(a,b)
  %2194 = call float @dx.op.binary.f32(i32 35, float %2190, float %2193)  ; FMax(a,b)
  %2195 = fsub fast float 1.000000e+00, %2194
  %2196 = fmul fast float %2194, %1865
  %2197 = fadd fast float %2196, %1865
  %2198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2198, 2
  %2200 = extractvalue %dx.types.CBufRet.f32 %2198, 3
  %2201 = fmul fast float %2197, %2199
  %2202 = fadd fast float %2201, %2200
  %2203 = call float @dx.op.unary.f32(i32 7, float %2202)  ; Saturate(value)
  %2204 = fsub fast float 1.000000e+00, %1890
  %2205 = fadd fast float %2204, %2203
  %2206 = call float @dx.op.unary.f32(i32 7, float %2205)  ; Saturate(value)
  %2207 = fcmp fast olt float %2206, 1.000000e+00
  br i1 %2207, label %2208, label %2656

; <label>:2208                                    ; preds = %2189
  %2209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2210 = extractvalue %dx.types.CBufRet.f32 %2209, 2
  %2211 = extractvalue %dx.types.CBufRet.f32 %2209, 3
  %2212 = fmul fast float %2210, %82
  %2213 = fmul fast float %2211, %83
  %2214 = fptoui float %2212 to i32
  %2215 = fptoui float %2213 to i32
  %2216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2217 = extractvalue %dx.types.CBufRet.f32 %2216, 0
  %2218 = extractvalue %dx.types.CBufRet.f32 %2216, 2
  %2219 = extractvalue %dx.types.CBufRet.f32 %2216, 3
  %2220 = fadd fast float %70, -4.000000e+00
  %2221 = call float @dx.op.binary.f32(i32 35, float %2220, float 0.000000e+00)  ; FMax(a,b)
  %2222 = fadd fast float %2221, %2217
  %2223 = fmul fast float %2222, %2218
  %2224 = call float @dx.op.unary.f32(i32 23, float %2223)  ; Log(value)
  %2225 = fmul fast float %2224, %2219
  %2226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2227 = extractvalue %dx.types.CBufRet.f32 %2226, 2
  %2228 = fmul fast float %2225, %2227
  %2229 = call float @dx.op.unary.f32(i32 7, float %2228)  ; Saturate(value)
  %2230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2231 = extractvalue %dx.types.CBufRet.i32 %2230, 1
  %2232 = add i32 %2231, -1
  %2233 = uitofp i32 %2231 to float
  %2234 = fmul fast float %2233, %2229
  %2235 = fptoui float %2234 to i32
  %2236 = call i32 @dx.op.binary.i32(i32 40, i32 %2235, i32 %2232)  ; UMin(a,b)
  %2237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.i32 %2237, 2
  %2239 = extractvalue %dx.types.CBufRet.i32 %2237, 3
  %2240 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2215, i32 %2238, i32 %2214)  ; UMad(a,b,c)
  %2241 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2236, i32 %2239, i32 %2240)  ; UMad(a,b,c)
  %2242 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %2243 = fptoui float %2242 to i32
  %2244 = lshr i32 %2243, 5
  %2245 = call i32 @dx.op.binary.i32(i32 40, i32 %2244, i32 8191)  ; UMin(a,b)
  br i1 false, label %2246, label %2253

; <label>:2246                                    ; preds = %2208
  %2247 = fadd fast float 0.000000e+00, %1877
  %2248 = call float @dx.op.dot3.f32(i32 55, float %1875, float %1876, float %2247, float %1875, float %1876, float %2247)  ; Dot3(ax,ay,az,bx,by,bz)
  %2249 = call float @dx.op.unary.f32(i32 25, float %2248)  ; Rsqrt(value)
  %2250 = fmul fast float %2249, %1875
  %2251 = fmul fast float %2249, %1876
  %2252 = fmul fast float %2247, %2249
  br label %2253

; <label>:2253                                    ; preds = %2246, %2208
  %2254 = phi float [ %2250, %2246 ], [ %1875, %2208 ]
  %2255 = phi float [ %2251, %2246 ], [ %1876, %2208 ]
  %2256 = phi float [ %2252, %2246 ], [ %1877, %2208 ]
  %2257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2258 = extractvalue %dx.types.CBufRet.i32 %2257, 2
  %2259 = add nsw i32 %2258, -1
  %2260 = call i32 @dx.op.binary.i32(i32 37, i32 %2259, i32 0)  ; IMax(a,b)
  %2261 = shl i32 %2245, 2
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = lshr i32 %2263, 16
  %2265 = and i32 %2263, 65535
  %2266 = lshr i32 %2263, 21
  %2267 = lshr i32 %2265, 5
  %2268 = call i32 @dx.op.binary.i32(i32 40, i32 %2267, i32 %2260)  ; UMin(a,b)
  %2269 = icmp ugt i32 %2266, %2268
  br i1 %2269, label %2632, label %2270

; <label>:2270                                    ; preds = %2253
  br label %2271

; <label>:2271                                    ; preds = %2624, %2270
  %2272 = phi float [ %2625, %2624 ], [ 0.000000e+00, %2270 ]
  %2273 = phi float [ %2626, %2624 ], [ 0.000000e+00, %2270 ]
  %2274 = phi float [ %2627, %2624 ], [ 0.000000e+00, %2270 ]
  %2275 = phi float [ %2628, %2624 ], [ 1.000000e+00, %2270 ]
  %2276 = phi i32 [ %2629, %2624 ], [ %2266, %2270 ]
  %2277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2278 = extractvalue %dx.types.CBufRet.i32 %2277, 2
  %2279 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2241, i32 %2278, i32 %2276)  ; UMad(a,b,c)
  %2280 = shl i32 %2279, 2
  %2281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2280, i32 undef)  ; BufferLoad(srv,index,wot)
  %2282 = extractvalue %dx.types.ResRet.i32 %2281, 0
  %2283 = shl i32 %2276, 5
  %2284 = sub nsw i32 %2264, %2283
  %2285 = call i32 @dx.op.binary.i32(i32 37, i32 %2284, i32 0)  ; IMax(a,b)
  %2286 = call i32 @dx.op.binary.i32(i32 38, i32 %2285, i32 31)  ; IMin(a,b)
  %2287 = sub nsw i32 1, %2264
  %2288 = add nsw i32 %2287, %2265
  %2289 = call i32 @dx.op.binary.i32(i32 37, i32 %2288, i32 0)  ; IMax(a,b)
  %2290 = call i32 @dx.op.binary.i32(i32 38, i32 %2289, i32 32)  ; IMin(a,b)
  %2291 = and i32 %2290, 31
  %2292 = shl i32 -1, %2291
  %2293 = xor i32 %2292, -1
  %2294 = and i32 %2286, 31
  %2295 = shl i32 %2293, %2294
  %2296 = icmp eq i32 %2290, 32
  %2297 = select i1 %2296, i32 -1, i32 %2295
  %2298 = and i32 %2297, %2282
  %2299 = icmp eq i32 %2298, 0
  br i1 %2299, label %2624, label %2300

; <label>:2300                                    ; preds = %2271
  br label %2301

; <label>:2301                                    ; preds = %2407, %2300
  %2302 = phi float [ %2408, %2407 ], [ %2272, %2300 ]
  %2303 = phi float [ %2409, %2407 ], [ %2273, %2300 ]
  %2304 = phi float [ %2410, %2407 ], [ %2274, %2300 ]
  %2305 = phi float [ %2411, %2407 ], [ %2275, %2300 ]
  %2306 = phi i32 [ %2311, %2407 ], [ %2298, %2300 ]
  %2307 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2306)  ; FirstbitLo(value)
  %2308 = add i32 %2307, %2283
  %2309 = and i32 %2307, 31
  %2310 = shl i32 1, %2309
  %2311 = xor i32 %2310, %2306
  %2312 = mul i32 %2308, 72
  %2313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.f32 %2313, 0
  %2315 = extractvalue %dx.types.ResRet.f32 %2313, 1
  %2316 = extractvalue %dx.types.ResRet.f32 %2313, 2
  %2317 = add i32 %2312, 12
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = add i32 %2312, 16
  %2321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2320, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.f32 %2321, 0
  %2323 = extractvalue %dx.types.ResRet.f32 %2321, 1
  %2324 = extractvalue %dx.types.ResRet.f32 %2321, 2
  %2325 = add i32 %2312, 28
  %2326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.f32 %2326, 0
  %2328 = add i32 %2312, 32
  %2329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.f32 %2329, 0
  %2331 = extractvalue %dx.types.ResRet.f32 %2329, 1
  %2332 = extractvalue %dx.types.ResRet.f32 %2329, 2
  %2333 = extractvalue %dx.types.ResRet.f32 %2329, 3
  %2334 = add i32 %2312, 48
  %2335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.f32 %2335, 0
  %2337 = extractvalue %dx.types.ResRet.f32 %2335, 1
  %2338 = add i32 %2312, 56
  %2339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.f32 %2339, 0
  %2341 = extractvalue %dx.types.ResRet.f32 %2339, 1
  %2342 = add i32 %2312, 64
  %2343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2342, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.f32 %2343, 0
  %2345 = extractvalue %dx.types.ResRet.f32 %2343, 1
  %2346 = mul i32 %2308, 60
  %2347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2346, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.f32 %2347, 0
  %2349 = extractvalue %dx.types.ResRet.f32 %2347, 1
  %2350 = extractvalue %dx.types.ResRet.f32 %2347, 2
  %2351 = add i32 %2346, 12
  %2352 = add i32 %2346, 48
  %2353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.f32 %2353, 0
  %2355 = extractvalue %dx.types.ResRet.f32 %2353, 1
  %2356 = extractvalue %dx.types.ResRet.f32 %2353, 2
  %2357 = and i32 %2319, 32767
  %2358 = bitcast float %2314 to i32
  %2359 = icmp eq i32 %2358, -1
  %2360 = bitcast float %2315 to i32
  %2361 = and i32 %2319, 32768
  %2362 = icmp ne i32 %2361, 0
  %2363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2364 = extractvalue %dx.types.CBufRet.f32 %2363, 0
  %2365 = extractvalue %dx.types.CBufRet.f32 %2363, 1
  %2366 = extractvalue %dx.types.CBufRet.f32 %2363, 2
  %2367 = fsub fast float %2348, %2364
  %2368 = fsub fast float %2349, %2365
  %2369 = fsub fast float %2350, %2366
  %2370 = fsub fast float %130, %2367
  %2371 = fsub fast float %131, %2368
  %2372 = fsub fast float %132, %2369
  %2373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2351, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.f32 %2373, 0
  %2375 = extractvalue %dx.types.ResRet.f32 %2373, 1
  %2376 = extractvalue %dx.types.ResRet.f32 %2373, 2
  %2377 = call float @dx.op.dot3.f32(i32 55, float %2370, float %2371, float %2372, float %2374, float %2375, float %2376)  ; Dot3(ax,ay,az,bx,by,bz)
  %2378 = add i32 %2346, 24
  %2379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2378, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.f32 %2379, 0
  %2381 = extractvalue %dx.types.ResRet.f32 %2379, 1
  %2382 = extractvalue %dx.types.ResRet.f32 %2379, 2
  %2383 = call float @dx.op.dot3.f32(i32 55, float %2370, float %2371, float %2372, float %2380, float %2381, float %2382)  ; Dot3(ax,ay,az,bx,by,bz)
  %2384 = add i32 %2346, 36
  %2385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2384, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.f32 %2385, 0
  %2387 = extractvalue %dx.types.ResRet.f32 %2385, 1
  %2388 = extractvalue %dx.types.ResRet.f32 %2385, 2
  %2389 = call float @dx.op.dot3.f32(i32 55, float %2370, float %2371, float %2372, float %2386, float %2387, float %2388)  ; Dot3(ax,ay,az,bx,by,bz)
  %2390 = call float @dx.op.unary.f32(i32 6, float %2377)  ; FAbs(value)
  %2391 = call float @dx.op.unary.f32(i32 6, float %2383)  ; FAbs(value)
  %2392 = call float @dx.op.unary.f32(i32 6, float %2389)  ; FAbs(value)
  %2393 = fsub fast float %2354, %2390
  %2394 = fsub fast float %2355, %2391
  %2395 = fsub fast float %2356, %2392
  %2396 = fmul fast float %2393, %2322
  %2397 = fmul fast float %2394, %2323
  %2398 = fmul fast float %2395, %2324
  %2399 = call float @dx.op.binary.f32(i32 36, float %2397, float %2398)  ; FMin(a,b)
  %2400 = call float @dx.op.binary.f32(i32 36, float %2396, float %2399)  ; FMin(a,b)
  %2401 = call float @dx.op.unary.f32(i32 7, float %2400)  ; Saturate(value)
  %2402 = call float @dx.op.binary.f32(i32 36, float %2305, float %2401)  ; FMin(a,b)
  %2403 = uitofp i1 %2362 to float
  %2404 = fsub fast float 1.000000e+00, %2403
  %2405 = fmul fast float %2402, %2404
  %2406 = fcmp fast ogt float %2405, 0.000000e+00
  br i1 %2406, label %2413, label %2407

; <label>:2407                                    ; preds = %2555, %2301
  %2408 = phi float [ %2619, %2555 ], [ %2302, %2301 ]
  %2409 = phi float [ %2620, %2555 ], [ %2303, %2301 ]
  %2410 = phi float [ %2621, %2555 ], [ %2304, %2301 ]
  %2411 = phi float [ %2622, %2555 ], [ %2305, %2301 ]
  %2412 = icmp eq i32 %2306, %2310
  br i1 %2412, label %2623, label %2301

; <label>:2413                                    ; preds = %2301
  br i1 %2359, label %2471, label %2414

; <label>:2414                                    ; preds = %2413
  %2415 = fsub fast float -0.000000e+00, %2374
  %2416 = fsub fast float -0.000000e+00, %2375
  %2417 = fsub fast float -0.000000e+00, %2376
  %2418 = call float @dx.op.dot3.f32(i32 55, float %2254, float %2255, float %2256, float %2415, float %2416, float %2417)  ; Dot3(ax,ay,az,bx,by,bz)
  %2419 = fsub fast float -0.000000e+00, %2418
  %2420 = call float @dx.op.dot3.f32(i32 55, float %2370, float %2371, float %2372, float %2415, float %2416, float %2417)  ; Dot3(ax,ay,az,bx,by,bz)
  %2421 = fadd fast float %2420, %2337
  %2422 = fadd fast float %2336, %2420
  %2423 = fsub fast float -0.000000e+00, %2422
  %2424 = fcmp ogt float %2418, -0.000000e+00
  %2425 = select i1 %2424, float %2423, float %2421
  %2426 = call float @dx.op.unary.f32(i32 6, float %2419)  ; FAbs(value)
  %2427 = fdiv fast float 1.000000e+00, %2426
  %2428 = fmul fast float %2425, %2427
  %2429 = call float @dx.op.binary.f32(i32 35, float %2428, float 0.000000e+00)  ; FMax(a,b)
  %2430 = fsub fast float -0.000000e+00, %2380
  %2431 = fsub fast float -0.000000e+00, %2381
  %2432 = fsub fast float -0.000000e+00, %2382
  %2433 = call float @dx.op.dot3.f32(i32 55, float %2254, float %2255, float %2256, float %2430, float %2431, float %2432)  ; Dot3(ax,ay,az,bx,by,bz)
  %2434 = fsub fast float -0.000000e+00, %2433
  %2435 = call float @dx.op.dot3.f32(i32 55, float %2370, float %2371, float %2372, float %2430, float %2431, float %2432)  ; Dot3(ax,ay,az,bx,by,bz)
  %2436 = fadd fast float %2435, %2341
  %2437 = fadd fast float %2340, %2435
  %2438 = fsub fast float -0.000000e+00, %2437
  %2439 = fcmp ogt float %2433, -0.000000e+00
  %2440 = select i1 %2439, float %2438, float %2436
  %2441 = call float @dx.op.unary.f32(i32 6, float %2434)  ; FAbs(value)
  %2442 = fdiv fast float 1.000000e+00, %2441
  %2443 = fmul fast float %2440, %2442
  %2444 = call float @dx.op.binary.f32(i32 35, float %2443, float 0.000000e+00)  ; FMax(a,b)
  %2445 = fsub fast float -0.000000e+00, %2386
  %2446 = fsub fast float -0.000000e+00, %2387
  %2447 = fsub fast float -0.000000e+00, %2388
  %2448 = call float @dx.op.dot3.f32(i32 55, float %2254, float %2255, float %2256, float %2445, float %2446, float %2447)  ; Dot3(ax,ay,az,bx,by,bz)
  %2449 = fsub fast float -0.000000e+00, %2448
  %2450 = call float @dx.op.dot3.f32(i32 55, float %2370, float %2371, float %2372, float %2445, float %2446, float %2447)  ; Dot3(ax,ay,az,bx,by,bz)
  %2451 = fadd fast float %2450, %2345
  %2452 = fadd fast float %2344, %2450
  %2453 = fsub fast float -0.000000e+00, %2452
  %2454 = fcmp ogt float %2448, -0.000000e+00
  %2455 = select i1 %2454, float %2453, float %2451
  %2456 = call float @dx.op.unary.f32(i32 6, float %2449)  ; FAbs(value)
  %2457 = fdiv fast float 1.000000e+00, %2456
  %2458 = fmul fast float %2455, %2457
  %2459 = call float @dx.op.binary.f32(i32 35, float %2458, float 0.000000e+00)  ; FMax(a,b)
  %2460 = call float @dx.op.binary.f32(i32 36, float %2444, float %2459)  ; FMin(a,b)
  %2461 = call float @dx.op.binary.f32(i32 36, float %2429, float %2460)  ; FMin(a,b)
  %2462 = fmul fast float %2461, %2254
  %2463 = fmul fast float %2461, %2255
  %2464 = fmul fast float %2461, %2256
  %2465 = fadd fast float %2462, %130
  %2466 = fadd fast float %2463, %131
  %2467 = fadd fast float %2464, %132
  %2468 = fsub fast float %2465, %2314
  %2469 = fsub fast float %2466, %2315
  %2470 = fsub fast float %2467, %2316
  br label %2478

; <label>:2471                                    ; preds = %2413
  %2472 = fmul fast float %2254, 8.096000e+03
  %2473 = fmul fast float %2255, 8.096000e+03
  %2474 = fmul fast float %2256, 8.096000e+03
  %2475 = fadd fast float %2472, %130
  %2476 = fadd fast float %2473, %131
  %2477 = fadd fast float %2474, %132
  br label %2478

; <label>:2478                                    ; preds = %2471, %2414
  %2479 = phi float [ %2254, %2471 ], [ %2468, %2414 ]
  %2480 = phi float [ %2255, %2471 ], [ %2469, %2414 ]
  %2481 = phi float [ %2256, %2471 ], [ %2470, %2414 ]
  %2482 = phi float [ %2475, %2471 ], [ %2465, %2414 ]
  %2483 = phi float [ %2476, %2471 ], [ %2466, %2414 ]
  %2484 = phi float [ %2477, %2471 ], [ %2467, %2414 ]
  %2485 = fcmp fast olt float %2333, 1.000000e+00
  br i1 %2485, label %2486, label %2517, !dx.controlflow.hints !77

; <label>:2486                                    ; preds = %2478
  %2487 = fmul fast float %2481, %2331
  %2488 = fmul fast float %2480, %2332
  %2489 = fsub fast float %2487, %2488
  %2490 = fmul fast float %2479, %2332
  %2491 = fmul fast float %2481, %2330
  %2492 = fsub fast float %2490, %2491
  %2493 = fmul fast float %2480, %2330
  %2494 = fmul fast float %2479, %2331
  %2495 = fsub fast float %2493, %2494
  %2496 = fmul fast float %2489, 2.000000e+00
  %2497 = fmul fast float %2492, 2.000000e+00
  %2498 = fmul fast float %2495, 2.000000e+00
  %2499 = fmul fast float %2496, %2333
  %2500 = fmul fast float %2497, %2333
  %2501 = fmul fast float %2498, %2333
  %2502 = fmul fast float %2498, %2331
  %2503 = fmul fast float %2497, %2332
  %2504 = fmul fast float %2496, %2332
  %2505 = fmul fast float %2498, %2330
  %2506 = fmul fast float %2497, %2330
  %2507 = fmul fast float %2496, %2331
  %2508 = fadd fast float %2502, %2479
  %2509 = fadd fast float %2508, %2499
  %2510 = fsub fast float %2509, %2503
  %2511 = fsub fast float %2480, %2505
  %2512 = fadd fast float %2511, %2500
  %2513 = fadd fast float %2512, %2504
  %2514 = fadd fast float %2501, %2481
  %2515 = fsub fast float %2514, %2507
  %2516 = fadd fast float %2515, %2506
  br label %2517

; <label>:2517                                    ; preds = %2486, %2478
  %2518 = phi float [ %2510, %2486 ], [ %2479, %2478 ]
  %2519 = phi float [ %2513, %2486 ], [ %2480, %2478 ]
  %2520 = phi float [ %2516, %2486 ], [ %2481, %2478 ]
  br i1 %2359, label %2552, label %2521

; <label>:2521                                    ; preds = %2517
  %2522 = fmul fast float %1865, 0x400187C840000000
  %2523 = fadd fast float %2522, 0xC00EFC2120000000
  %2524 = fmul fast float %2523, %1865
  %2525 = fadd fast float %2524, 0x3FE5D16340000000
  %2526 = fmul fast float %2525, %1865
  %2527 = fadd fast float %2526, 1.000000e+00
  %2528 = call float @dx.op.unary.f32(i32 7, float %2527)  ; Saturate(value)
  %2529 = fsub fast float %2482, %130
  %2530 = fsub fast float %2483, %131
  %2531 = fsub fast float %2484, %132
  %2532 = fsub fast float %2482, %2314
  %2533 = fsub fast float %2483, %2315
  %2534 = fsub fast float %2484, %2316
  %2535 = call float @dx.op.dot3.f32(i32 55, float %2529, float %2530, float %2531, float %2529, float %2530, float %2531)  ; Dot3(ax,ay,az,bx,by,bz)
  %2536 = call float @dx.op.dot3.f32(i32 55, float %2532, float %2533, float %2534, float %2532, float %2533, float %2534)  ; Dot3(ax,ay,az,bx,by,bz)
  %2537 = fadd fast float %2536, 0x3EE4F8B580000000
  %2538 = fdiv fast float %2535, %2537
  %2539 = bitcast float %2538 to i32
  %2540 = ashr i32 %2539, 1
  %2541 = add nsw i32 %2540, 532487669
  %2542 = bitcast i32 %2541 to float
  %2543 = fmul fast float %2542, %2528
  %2544 = call float @dx.op.unary.f32(i32 7, float %2543)  ; Saturate(value)
  %2545 = fmul fast float %2544, 0x4009981AE0000000
  %2546 = fsub fast float 0x40111BBD80000000, %2545
  %2547 = fmul fast float %2546, %2544
  %2548 = fadd fast float %2547, 0xC0009F6020000000
  %2549 = fmul fast float %2548, %2544
  %2550 = fadd fast float %2549, 1.000000e+00
  %2551 = call float @dx.op.unary.f32(i32 7, float %2550)  ; Saturate(value)
  br label %2555

; <label>:2552                                    ; preds = %2517
  %2553 = icmp ne i32 %2360, -1
  %2554 = zext i1 %2553 to i32
  br label %2555

; <label>:2555                                    ; preds = %2552, %2521
  %2556 = phi float [ %1865, %2552 ], [ %2551, %2521 ]
  %2557 = phi i32 [ %2554, %2552 ], [ 0, %2521 ]
  %2558 = fmul float %2556, 5.000000e+00
  %2559 = fsub float 5.000000e+00, %2558
  %2560 = icmp ne i32 %2557, 0
  %2561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2562 = extractvalue %dx.types.CBufRet.f32 %2561, 3
  %2563 = fadd fast float %2562, %2559
  %2564 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2563)  ; FMax(a,b)
  %2565 = call float @dx.op.unary.f32(i32 6, float %2518)  ; FAbs(value)
  %2566 = call float @dx.op.unary.f32(i32 6, float %2519)  ; FAbs(value)
  %2567 = fadd fast float %2566, %2565
  %2568 = call float @dx.op.unary.f32(i32 6, float %2520)  ; FAbs(value)
  %2569 = fadd fast float %2567, %2568
  %2570 = fcmp fast oeq float %2569, 0.000000e+00
  %2571 = fdiv fast float 1.000000e+00, %2569
  %2572 = select i1 %2570, float 1.000000e+00, float %2571
  %2573 = fmul fast float %2572, %2518
  %2574 = fmul fast float %2572, %2519
  %2575 = call float @dx.op.unary.f32(i32 6, float %2574)  ; FAbs(value)
  %2576 = call float @dx.op.unary.f32(i32 6, float %2573)  ; FAbs(value)
  %2577 = fsub fast float 1.000000e+00, %2575
  %2578 = fsub fast float 1.000000e+00, %2576
  %2579 = fcmp fast oge float %2573, 0.000000e+00
  %2580 = fcmp fast oge float %2574, 0.000000e+00
  %2581 = select i1 %2579, float 1.000000e+00, float -1.000000e+00
  %2582 = select i1 %2580, float 1.000000e+00, float -1.000000e+00
  %2583 = fcmp fast ole float %2520, 0.000000e+00
  %2584 = fmul fast float %2581, %2577
  %2585 = fmul fast float %2582, %2578
  %2586 = select i1 %2583, float %2584, float %2573
  %2587 = select i1 %2583, float %2585, float %2574
  %2588 = fmul fast float %2586, 5.000000e-01
  %2589 = fmul fast float %2587, 5.000000e-01
  %2590 = fadd fast float %2588, 5.000000e-01
  %2591 = fadd fast float %2589, 5.000000e-01
  %2592 = uitofp i32 %2357 to float
  %2593 = call float @dx.op.binary.f32(i32 36, float %2564, float 3.000000e+00)  ; FMin(a,b)
  %2594 = fadd fast float %2593, 2.000000e+00
  %2595 = call float @dx.op.unary.f32(i32 21, float %2594)  ; Exp(value)
  %2596 = extractvalue %dx.types.CBufRet.f32 %2561, 1
  %2597 = fmul fast float %2596, %2595
  %2598 = fmul fast float %2597, 2.000000e+00
  %2599 = fsub fast float 1.000000e+00, %2598
  %2600 = fmul fast float %2590, %2599
  %2601 = fmul fast float %2591, %2599
  %2602 = fadd fast float %2600, %2597
  %2603 = fadd fast float %2601, %2597
  %2604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %36, float %2602, float %2603, float %2592, float undef, i32 0, i32 0, i32 undef, float %2564)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2605 = extractvalue %dx.types.ResRet.f32 %2604, 0
  %2606 = extractvalue %dx.types.ResRet.f32 %2604, 1
  %2607 = extractvalue %dx.types.ResRet.f32 %2604, 2
  %2608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2609 = extractvalue %dx.types.CBufRet.f32 %2608, 3
  %2610 = fmul fast float %2609, %2327
  %2611 = call float @dx.op.binary.f32(i32 36, float %1895, float %2610)  ; FMin(a,b)
  %2612 = select i1 %2560, float %2611, float %2610
  %2613 = fmul fast float %2605, %2405
  %2614 = fmul fast float %2613, %2612
  %2615 = fmul fast float %2606, %2405
  %2616 = fmul fast float %2615, %2612
  %2617 = fmul fast float %2607, %2405
  %2618 = fmul fast float %2617, %2612
  %2619 = fadd fast float %2614, %2302
  %2620 = fadd fast float %2616, %2303
  %2621 = fadd fast float %2618, %2304
  %2622 = fsub fast float %2305, %2405
  br label %2407

; <label>:2623                                    ; preds = %2407
  br label %2624

; <label>:2624                                    ; preds = %2623, %2271
  %2625 = phi float [ %2272, %2271 ], [ %2408, %2623 ]
  %2626 = phi float [ %2273, %2271 ], [ %2409, %2623 ]
  %2627 = phi float [ %2274, %2271 ], [ %2410, %2623 ]
  %2628 = phi float [ %2275, %2271 ], [ %2411, %2623 ]
  %2629 = add i32 %2276, 1
  %2630 = icmp ugt i32 %2629, %2268
  br i1 %2630, label %2631, label %2271, !llvm.loop !78

; <label>:2631                                    ; preds = %2624
  br label %2632

; <label>:2632                                    ; preds = %2631, %2253
  %2633 = phi float [ 0.000000e+00, %2253 ], [ %2625, %2631 ]
  %2634 = phi float [ 0.000000e+00, %2253 ], [ %2626, %2631 ]
  %2635 = phi float [ 0.000000e+00, %2253 ], [ %2627, %2631 ]
  %2636 = call float @dx.op.dot3.f32(i32 55, float %2633, float %2634, float %2635, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2637 = select i1 %191, float 0.000000e+00, float %2633
  %2638 = select i1 %191, float %2636, float %2634
  %2639 = select i1 %191, float 0.000000e+00, float %2635
  %2640 = fcmp fast olt float %2206, 0.000000e+00
  %2641 = call float @dx.op.unary.f32(i32 6, float %2206)  ; FAbs(value)
  %2642 = fmul fast float %2641, %2135
  %2643 = fmul fast float %2641, %2136
  %2644 = fmul fast float %2641, %2137
  %2645 = select i1 %2640, float %2135, float %2642
  %2646 = select i1 %2640, float %2136, float %2643
  %2647 = select i1 %2640, float %2137, float %2644
  %2648 = fsub fast float 1.000000e+00, %2641
  %2649 = call float @dx.op.unary.f32(i32 7, float %2648)  ; Saturate(value)
  %2650 = fmul fast float %2649, %2637
  %2651 = fmul fast float %2649, %2638
  %2652 = fmul fast float %2649, %2639
  %2653 = fadd fast float %2645, %2650
  %2654 = fadd fast float %2646, %2651
  %2655 = fadd fast float %2647, %2652
  br label %2656

; <label>:2656                                    ; preds = %2632, %2189
  %2657 = phi float [ %2135, %2189 ], [ %2653, %2632 ]
  %2658 = phi float [ %2136, %2189 ], [ %2654, %2632 ]
  %2659 = phi float [ %2137, %2189 ], [ %2655, %2632 ]
  %2660 = call float @dx.op.dot3.f32(i32 55, float %1859, float %1860, float %1861, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2661 = fcmp fast ogt float %2660, 0x3E7FF19E20000000
  %2662 = fdiv fast float 1.000000e+00, %2660
  %2663 = select i1 %2661, float %2662, float 0.000000e+00
  %2664 = fmul fast float %2663, %1859
  %2665 = fmul fast float %2663, %1860
  %2666 = fmul fast float %2663, %1861
  %2667 = fadd fast float %2664, -1.000000e+00
  %2668 = fadd fast float %2665, -1.000000e+00
  %2669 = fadd fast float %2666, -1.000000e+00
  %2670 = fmul fast float %2667, 5.000000e-01
  %2671 = fmul fast float %2668, 5.000000e-01
  %2672 = fmul fast float %2669, 5.000000e-01
  %2673 = fadd fast float %2670, 1.000000e+00
  %2674 = fadd fast float %2671, 1.000000e+00
  %2675 = fadd fast float %2672, 1.000000e+00
  %2676 = call float @dx.op.binary.f32(i32 35, float %1869, float 0x3F50624DE0000000)  ; FMax(a,b)
  %2677 = fdiv fast float %892, %2676
  %2678 = fcmp fast olt float %1565, 1.270000e+02
  %2679 = fcmp fast olt float %1566, 1.270000e+02
  %2680 = fcmp fast olt float %1567, 1.270000e+02
  %2681 = fmul fast float %1565, 0xBFF7154760000000
  %2682 = fmul fast float %2681, %2677
  %2683 = fmul fast float %1566, 0xBFF7154760000000
  %2684 = fmul fast float %2683, %2677
  %2685 = fmul fast float %1567, 0xBFF7154760000000
  %2686 = fmul fast float %2685, %2677
  %2687 = call float @dx.op.unary.f32(i32 21, float %2682)  ; Exp(value)
  %2688 = call float @dx.op.unary.f32(i32 21, float %2684)  ; Exp(value)
  %2689 = call float @dx.op.unary.f32(i32 21, float %2686)  ; Exp(value)
  %2690 = call float @dx.op.unary.f32(i32 7, float %2687)  ; Saturate(value)
  %2691 = call float @dx.op.unary.f32(i32 7, float %2688)  ; Saturate(value)
  %2692 = call float @dx.op.unary.f32(i32 7, float %2689)  ; Saturate(value)
  %2693 = select i1 %2678, float %2690, float 0.000000e+00
  %2694 = select i1 %2679, float %2691, float 0.000000e+00
  %2695 = select i1 %2680, float %2692, float 0.000000e+00
  %2696 = fmul fast float %2693, %2195
  %2697 = fmul fast float %2694, %2195
  %2698 = fmul fast float %2695, %2195
  %2699 = fadd fast float %2696, -1.000000e+00
  %2700 = fadd fast float %2697, -1.000000e+00
  %2701 = fadd fast float %2698, -1.000000e+00
  %2702 = fmul fast float %2699, %1515
  %2703 = fmul fast float %2700, %1515
  %2704 = fmul fast float %2701, %1515
  %2705 = fmul fast float %2657, %2190
  %2706 = fmul fast float %2658, %2191
  %2707 = fmul fast float %2659, %2192
  %2708 = fsub fast float 1.000000e+00, %1869
  %2709 = bitcast float %2708 to i32
  %2710 = sitofp i32 %2709 to float
  %2711 = fmul fast float %2710, 5.000000e+00
  %2712 = fadd fast float %2711, 0xC1EFBF8940000000
  %2713 = fptosi float %2712 to i32
  %2714 = bitcast i32 %2713 to float
  %2715 = fmul fast float %2714, %1491
  %2716 = fmul fast float %2127, %2715
  %2717 = fmul fast float %2716, %2195
  %2718 = fmul fast float %2717, %2673
  %2719 = fmul fast float %2128, %2715
  %2720 = fmul fast float %2719, %2195
  %2721 = fmul fast float %2720, %2674
  %2722 = fmul fast float %2129, %2715
  %2723 = fmul fast float %2722, %2195
  %2724 = fmul fast float %2723, %2675
  %2725 = fadd fast float %2705, %1496
  %2726 = fadd fast float %2725, %2718
  %2727 = fmul fast float %2726, %1515
  %2728 = fadd fast float %2706, %1497
  %2729 = fadd fast float %2728, %2721
  %2730 = fmul fast float %2729, %1515
  %2731 = fadd fast float %2707, %1498
  %2732 = fadd fast float %2731, %2724
  %2733 = fmul fast float %2732, %1515
  %2734 = fmul fast float %1857, 0x4012D0A400000000
  %2735 = fadd fast float %2704, 1.000000e+00
  %2736 = fadd fast float %2703, 1.000000e+00
  %2737 = fadd fast float %2702, 1.000000e+00
  %2738 = fmul fast float %2195, %2129
  %2739 = fmul fast float %2195, %2128
  %2740 = fmul fast float %2195, %2127
  %2741 = fmul fast float %1884, %1515
  %2742 = fsub fast float 1.000000e+00, %2741
  %2743 = call float @dx.op.unary.f32(i32 7, float %2742)  ; Saturate(value)
  %2744 = fsub fast float 1.000000e+00, %2743
  %2745 = fadd fast float %2734, 0x3FDB6377A0000000
  %2746 = fmul fast float %2744, %2745
  %2747 = call float @dx.op.dot3.f32(i32 55, float %1583, float %1584, float %1585, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2748 = fadd fast float %2746, %2747
  %2749 = call float @dx.op.unary.f32(i32 7, float %2748)  ; Saturate(value)
  %2750 = call float @dx.op.binary.f32(i32 35, float %2749, float 0x3F847AE140000000)  ; FMax(a,b)
  %2751 = fmul fast float %2750, %2750
  %2752 = fmul fast float %2751, %2751
  %2753 = fmul fast float %2752, 0xC00A935000000000
  %2754 = call float @dx.op.unary.f32(i32 21, float %2753)  ; Exp(value)
  %2755 = fsub fast float 1.000000e+00, %2754
  %2756 = fmul fast float %2737, %2131
  %2757 = fmul fast float %2756, %2755
  %2758 = fmul fast float %2736, %2132
  %2759 = fmul fast float %2758, %2755
  %2760 = fmul fast float %2735, %2133
  %2761 = fmul fast float %2760, %2755
  %2762 = fadd fast float %2757, %2740
  %2763 = fmul fast float %2762, %1515
  %2764 = fadd fast float %2759, %2739
  %2765 = fmul fast float %2764, %1515
  %2766 = fadd fast float %2761, %2738
  %2767 = fmul fast float %2766, %1515
  %2768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2769 = extractvalue %dx.types.CBufRet.f32 %2768, 3
  %2770 = fcmp fast oeq float %2769, 0.000000e+00
  br i1 %2770, label %4374, label %2771

; <label>:2771                                    ; preds = %2656
  %2772 = extractvalue %dx.types.CBufRet.f32 %2768, 0
  %2773 = extractvalue %dx.types.CBufRet.f32 %2768, 1
  %2774 = extractvalue %dx.types.CBufRet.f32 %2768, 2
  %2775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2775, 0
  %2777 = extractvalue %dx.types.CBufRet.f32 %2775, 1
  %2778 = extractvalue %dx.types.CBufRet.f32 %2775, 2
  %2779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2780 = extractvalue %dx.types.CBufRet.f32 %2779, 0
  %2781 = extractvalue %dx.types.CBufRet.f32 %2779, 1
  %2782 = call float @dx.op.dot3.f32(i32 55, float %2776, float %2777, float %2778, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2783 = select i1 %191, float %2780, float %2776
  %2784 = select i1 %191, float %2782, float %2777
  %2785 = select i1 %191, float %2781, float %2778
  %2786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2787 = extractvalue %dx.types.CBufRet.f32 %2786, 2
  %2788 = fmul fast float %2787, %85
  %2789 = fmul fast float %2787, %86
  %2790 = fmul fast float %2787, %87
  %2791 = fadd fast float %2788, %130
  %2792 = fadd fast float %2789, %131
  %2793 = fadd fast float %2790, %132
  %2794 = fcmp fast olt float %2769, 0.000000e+00
  br i1 %2794, label %3890, label %2795

; <label>:2795                                    ; preds = %2771
  %2796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2797 = extractvalue %dx.types.CBufRet.f32 %2796, 0
  %2798 = extractvalue %dx.types.CBufRet.f32 %2796, 1
  %2799 = extractvalue %dx.types.CBufRet.f32 %2796, 2
  %2800 = extractvalue %dx.types.CBufRet.f32 %2796, 3
  %2801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2802 = extractvalue %dx.types.CBufRet.f32 %2801, 0
  %2803 = extractvalue %dx.types.CBufRet.f32 %2801, 1
  %2804 = extractvalue %dx.types.CBufRet.f32 %2801, 2
  %2805 = extractvalue %dx.types.CBufRet.f32 %2801, 3
  %2806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2807 = extractvalue %dx.types.CBufRet.f32 %2806, 0
  %2808 = extractvalue %dx.types.CBufRet.f32 %2806, 1
  %2809 = extractvalue %dx.types.CBufRet.f32 %2806, 2
  %2810 = extractvalue %dx.types.CBufRet.f32 %2806, 3
  %2811 = fmul fast float %2797, %2791
  %2812 = call float @dx.op.tertiary.f32(i32 46, float %2792, float %2798, float %2811)  ; FMad(a,b,c)
  %2813 = call float @dx.op.tertiary.f32(i32 46, float %2793, float %2799, float %2812)  ; FMad(a,b,c)
  %2814 = fadd fast float %2813, %2800
  %2815 = fmul fast float %2802, %2791
  %2816 = call float @dx.op.tertiary.f32(i32 46, float %2792, float %2803, float %2815)  ; FMad(a,b,c)
  %2817 = call float @dx.op.tertiary.f32(i32 46, float %2793, float %2804, float %2816)  ; FMad(a,b,c)
  %2818 = fadd fast float %2817, %2805
  %2819 = fmul fast float %2807, %2791
  %2820 = call float @dx.op.tertiary.f32(i32 46, float %2792, float %2808, float %2819)  ; FMad(a,b,c)
  %2821 = call float @dx.op.tertiary.f32(i32 46, float %2793, float %2809, float %2820)  ; FMad(a,b,c)
  %2822 = fadd fast float %2821, %2810
  %2823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2824 = extractvalue %dx.types.CBufRet.f32 %2823, 0
  %2825 = extractvalue %dx.types.CBufRet.f32 %2823, 1
  %2826 = extractvalue %dx.types.CBufRet.f32 %2823, 3
  %2827 = fmul fast float %2826, %2814
  %2828 = fmul fast float %2826, %2818
  %2829 = fadd fast float %2827, %2824
  %2830 = fadd fast float %2828, %2825
  %2831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2832 = extractvalue %dx.types.CBufRet.f32 %2831, 0
  %2833 = extractvalue %dx.types.CBufRet.f32 %2831, 1
  %2834 = extractvalue %dx.types.CBufRet.f32 %2831, 3
  %2835 = fmul fast float %2834, %2814
  %2836 = fmul fast float %2834, %2818
  %2837 = fadd fast float %2835, %2832
  %2838 = fadd fast float %2836, %2833
  %2839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2840 = extractvalue %dx.types.CBufRet.f32 %2839, 1
  %2841 = fsub fast float %2840, %2822
  %2842 = extractvalue %dx.types.CBufRet.f32 %2839, 2
  %2843 = fmul fast float %2841, %2842
  %2844 = fsub fast float 1.000000e+00, %2843
  %2845 = call float @dx.op.unary.f32(i32 7, float %2844)  ; Saturate(value)
  %2846 = extractvalue %dx.types.CBufRet.f32 %2831, 2
  %2847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2848 = extractvalue %dx.types.CBufRet.f32 %2847, 2
  %2849 = fadd fast float %2848, %2846
  %2850 = fcmp fast ogt float %2849, 0.000000e+00
  br i1 %2850, label %2851, label %2875

; <label>:2851                                    ; preds = %2795
  %2852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2853 = extractvalue %dx.types.CBufRet.f32 %2852, 0
  %2854 = extractvalue %dx.types.CBufRet.f32 %2852, 1
  %2855 = fsub fast float %2837, %2853
  %2856 = fsub fast float %2838, %2854
  %2857 = fcmp fast olt float %2855, 0.000000e+00
  %2858 = fcmp fast olt float %2856, 0.000000e+00
  %2859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2860 = extractvalue %dx.types.CBufRet.f32 %2859, 0
  %2861 = extractvalue %dx.types.CBufRet.f32 %2859, 1
  %2862 = extractvalue %dx.types.CBufRet.f32 %2859, 2
  %2863 = extractvalue %dx.types.CBufRet.f32 %2859, 3
  %2864 = select i1 %2857, float %2860, float %2862
  %2865 = select i1 %2858, float %2861, float %2863
  %2866 = fmul fast float %2864, %2855
  %2867 = fmul fast float %2865, %2856
  %2868 = call float @dx.op.unary.f32(i32 6, float %2866)  ; FAbs(value)
  %2869 = call float @dx.op.unary.f32(i32 6, float %2867)  ; FAbs(value)
  %2870 = extractvalue %dx.types.CBufRet.f32 %2786, 0
  %2871 = call float @dx.op.binary.f32(i32 35, float %2868, float %2869)  ; FMax(a,b)
  %2872 = fsub fast float %2870, %2871
  %2873 = call float @dx.op.unary.f32(i32 7, float %2872)  ; Saturate(value)
  %2874 = fmul fast float %2873, %2845
  br label %2875

; <label>:2875                                    ; preds = %2851, %2795
  %2876 = phi float [ %2874, %2851 ], [ 0.000000e+00, %2795 ]
  %2877 = extractvalue %dx.types.CBufRet.f32 %2823, 2
  %2878 = extractvalue %dx.types.CBufRet.f32 %2847, 1
  %2879 = fadd fast float %2878, %2877
  %2880 = fcmp fast ogt float %2879, 0.000000e+00
  %2881 = extractvalue %dx.types.CBufRet.f32 %2786, 0
  br i1 %2880, label %2882, label %2905

; <label>:2882                                    ; preds = %2875
  %2883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2884 = extractvalue %dx.types.CBufRet.f32 %2883, 0
  %2885 = extractvalue %dx.types.CBufRet.f32 %2883, 1
  %2886 = fsub fast float %2829, %2884
  %2887 = fsub fast float %2830, %2885
  %2888 = fcmp fast olt float %2886, 0.000000e+00
  %2889 = fcmp fast olt float %2887, 0.000000e+00
  %2890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2891 = extractvalue %dx.types.CBufRet.f32 %2890, 0
  %2892 = extractvalue %dx.types.CBufRet.f32 %2890, 1
  %2893 = extractvalue %dx.types.CBufRet.f32 %2890, 2
  %2894 = extractvalue %dx.types.CBufRet.f32 %2890, 3
  %2895 = select i1 %2888, float %2891, float %2893
  %2896 = select i1 %2889, float %2892, float %2894
  %2897 = fmul fast float %2895, %2886
  %2898 = fmul fast float %2896, %2887
  %2899 = call float @dx.op.unary.f32(i32 6, float %2897)  ; FAbs(value)
  %2900 = call float @dx.op.unary.f32(i32 6, float %2898)  ; FAbs(value)
  %2901 = call float @dx.op.binary.f32(i32 35, float %2899, float %2900)  ; FMax(a,b)
  %2902 = fsub fast float %2881, %2901
  %2903 = call float @dx.op.unary.f32(i32 7, float %2902)  ; Saturate(value)
  %2904 = fmul fast float %2903, %2845
  br label %2905

; <label>:2905                                    ; preds = %2882, %2875
  %2906 = phi float [ %2904, %2882 ], [ 0.000000e+00, %2875 ]
  %2907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2908 = extractvalue %dx.types.CBufRet.f32 %2907, 1
  %2909 = call float @dx.op.unary.f32(i32 7, float %2908)  ; Saturate(value)
  %2910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2911 = extractvalue %dx.types.CBufRet.f32 %2910, 0
  %2912 = extractvalue %dx.types.CBufRet.f32 %2910, 1
  %2913 = fsub fast float %2814, %2911
  %2914 = fsub fast float %2818, %2912
  %2915 = fcmp fast olt float %2913, 0.000000e+00
  %2916 = fcmp fast olt float %2914, 0.000000e+00
  %2917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2918 = extractvalue %dx.types.CBufRet.f32 %2917, 0
  %2919 = extractvalue %dx.types.CBufRet.f32 %2917, 1
  %2920 = extractvalue %dx.types.CBufRet.f32 %2917, 2
  %2921 = extractvalue %dx.types.CBufRet.f32 %2917, 3
  %2922 = select i1 %2915, float %2918, float %2920
  %2923 = select i1 %2916, float %2919, float %2921
  %2924 = fmul fast float %2922, %2913
  %2925 = fmul fast float %2923, %2914
  %2926 = call float @dx.op.unary.f32(i32 6, float %2924)  ; FAbs(value)
  %2927 = call float @dx.op.unary.f32(i32 6, float %2925)  ; FAbs(value)
  %2928 = call float @dx.op.binary.f32(i32 35, float %2926, float %2927)  ; FMax(a,b)
  %2929 = fsub fast float %2881, %2928
  %2930 = call float @dx.op.unary.f32(i32 7, float %2929)  ; Saturate(value)
  %2931 = call float @dx.op.binary.f32(i32 36, float %2930, float %2909)  ; FMin(a,b)
  %2932 = fmul fast float %2931, %2845
  %2933 = fsub fast float %2906, %2932
  %2934 = fsub fast float %2876, %2906
  %2935 = fsub fast float %2934, %2932
  %2936 = call float @dx.op.binary.f32(i32 35, float %2906, float %2876)  ; FMax(a,b)
  %2937 = call float @dx.op.binary.f32(i32 35, float %2932, float %2936)  ; FMax(a,b)
  %2938 = fcmp fast olt float %2937, 1.000000e+00
  br i1 %2938, label %2939, label %3337, !dx.controlflow.hints !80

; <label>:2939                                    ; preds = %2905
  %2940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2940, 0
  %2942 = fcmp fast une float %2941, 0.000000e+00
  br i1 %2942, label %2943, label %3337, !dx.controlflow.hints !81

; <label>:2943                                    ; preds = %2939
  %2944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2945 = extractvalue %dx.types.CBufRet.f32 %2944, 0
  %2946 = extractvalue %dx.types.CBufRet.f32 %2944, 1
  %2947 = extractvalue %dx.types.CBufRet.f32 %2944, 2
  %2948 = extractvalue %dx.types.CBufRet.f32 %2944, 3
  %2949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2950 = extractvalue %dx.types.CBufRet.f32 %2949, 0
  %2951 = extractvalue %dx.types.CBufRet.f32 %2949, 1
  %2952 = extractvalue %dx.types.CBufRet.f32 %2949, 2
  %2953 = extractvalue %dx.types.CBufRet.f32 %2949, 3
  %2954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2955 = extractvalue %dx.types.CBufRet.f32 %2954, 0
  %2956 = extractvalue %dx.types.CBufRet.f32 %2954, 1
  %2957 = extractvalue %dx.types.CBufRet.f32 %2954, 2
  %2958 = extractvalue %dx.types.CBufRet.f32 %2954, 3
  %2959 = fmul fast float %2945, %2791
  %2960 = call float @dx.op.tertiary.f32(i32 46, float %2792, float %2946, float %2959)  ; FMad(a,b,c)
  %2961 = call float @dx.op.tertiary.f32(i32 46, float %2793, float %2947, float %2960)  ; FMad(a,b,c)
  %2962 = fadd fast float %2961, %2948
  %2963 = fmul fast float %2950, %2791
  %2964 = call float @dx.op.tertiary.f32(i32 46, float %2792, float %2951, float %2963)  ; FMad(a,b,c)
  %2965 = call float @dx.op.tertiary.f32(i32 46, float %2793, float %2952, float %2964)  ; FMad(a,b,c)
  %2966 = fadd fast float %2965, %2953
  %2967 = fmul fast float %2955, %2791
  %2968 = call float @dx.op.tertiary.f32(i32 46, float %2792, float %2956, float %2967)  ; FMad(a,b,c)
  %2969 = call float @dx.op.tertiary.f32(i32 46, float %2793, float %2957, float %2968)  ; FMad(a,b,c)
  %2970 = fadd fast float %2969, %2958
  %2971 = fcmp fast oge float %2962, 1.000000e+00
  %2972 = fcmp fast oge float %2966, 1.000000e+00
  %2973 = or i1 %2971, %2972
  %2974 = fcmp fast olt float %2962, 0.000000e+00
  %2975 = fcmp fast olt float %2966, 0.000000e+00
  %2976 = or i1 %2974, %2975
  %2977 = or i1 %2973, %2976
  br i1 %2977, label %3337, label %2978, !dx.controlflow.hints !82

; <label>:2978                                    ; preds = %2943
  %2979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2980 = extractvalue %dx.types.CBufRet.f32 %2979, 0
  %2981 = extractvalue %dx.types.CBufRet.f32 %2979, 1
  %2982 = extractvalue %dx.types.CBufRet.f32 %2979, 2
  %2983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2984 = extractvalue %dx.types.CBufRet.i32 %2983, 2
  %2985 = uitofp i32 %2984 to float
  %2986 = extractvalue %dx.types.CBufRet.i32 %2983, 3
  %2987 = uitofp i32 %2986 to float
  %2988 = extractvalue %dx.types.CBufRet.f32 %2979, 3
  %2989 = fmul fast float %2988, 2.000000e+00
  %2990 = fsub fast float %2962, %2980
  %2991 = fsub fast float %2966, %2981
  %2992 = fmul fast float %2989, %2990
  %2993 = fmul fast float %2989, %2991
  %2994 = fdiv fast float 1.000000e+00, %2774
  %2995 = fmul fast float %2993, %2994
  %2996 = call float @dx.op.unary.f32(i32 6, float %2995)  ; FAbs(value)
  %2997 = fmul fast float %2982, %2793
  %2998 = fmul fast float %2997, %2989
  %2999 = call float @dx.op.unary.f32(i32 6, float %2998)  ; FAbs(value)
  %3000 = call float @dx.op.unary.f32(i32 6, float %2992)  ; FAbs(value)
  %3001 = call float @dx.op.binary.f32(i32 35, float %2999, float %2996)  ; FMax(a,b)
  %3002 = call float @dx.op.binary.f32(i32 35, float %3000, float %3001)  ; FMax(a,b)
  %3003 = fmul fast float %3002, 2.000000e+00
  %3004 = call float @dx.op.unary.f32(i32 23, float %3003)  ; Log(value)
  %3005 = call float @dx.op.binary.f32(i32 35, float %3004, float %2985)  ; FMax(a,b)
  %3006 = call float @dx.op.unary.f32(i32 22, float %3005)  ; Frc(value)
  %3007 = fadd fast float %3006, 0xBFEA666660000000
  %3008 = fmul fast float %3007, 8.000000e+00
  %3009 = call float @dx.op.unary.f32(i32 7, float %3008)  ; Saturate(value)
  %3010 = call float @dx.op.unary.f32(i32 27, float %3005)  ; Round_ni(value)
  %3011 = fadd fast float %3010, %3009
  %3012 = call float @dx.op.binary.f32(i32 36, float %3011, float %2987)  ; FMin(a,b)
  %3013 = call float @dx.op.unary.f32(i32 27, float %3012)  ; Round_ni(value)
  %3014 = fsub fast float -0.000000e+00, %3013
  %3015 = call float @dx.op.unary.f32(i32 21, float %3014)  ; Exp(value)
  %3016 = fmul fast float %3015, %2989
  %3017 = fmul fast float %3016, %2962
  %3018 = fmul fast float %3016, %2966
  %3019 = fmul fast float %3017, 2.500000e-01
  %3020 = fmul fast float %3018, 2.500000e-01
  %3021 = fadd fast float %3019, 5.000000e-01
  %3022 = fadd fast float %3020, 5.000000e-01
  %3023 = fsub fast float %2987, %2985
  %3024 = fptoui float %3023 to i32
  %3025 = add i32 %3024, 320
  %3026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 %3025)  ; CBufferLoadLegacy(handle,regIndex)
  %3027 = extractvalue %dx.types.CBufRet.f32 %3026, 0
  %3028 = extractvalue %dx.types.CBufRet.f32 %3026, 1
  %3029 = fcmp fast une float %3012, %2987
  %3030 = fsub fast float %2962, %3027
  %3031 = fsub fast float %2966, %3028
  %3032 = call float @dx.op.unary.f32(i32 6, float %3030)  ; FAbs(value)
  %3033 = call float @dx.op.unary.f32(i32 6, float %3031)  ; FAbs(value)
  %3034 = fmul fast float %3032, %3016
  %3035 = fmul fast float %3033, %3016
  %3036 = fcmp fast olt float %3034, 1.000000e+00
  %3037 = fcmp fast olt float %3035, 1.000000e+00
  %3038 = and i1 %3036, %3037
  %3039 = or i1 %3029, %3038
  br i1 %3039, label %3040, label %3337, !dx.controlflow.hints !83

; <label>:3040                                    ; preds = %2978
  %3041 = fmul fast float %3018, 5.000000e-01
  %3042 = fmul fast float %3017, 5.000000e-01
  %3043 = fadd fast float %3041, 5.000000e-01
  %3044 = fadd fast float %3042, 5.000000e-01
  %3045 = sitofp i32 %2984 to float
  %3046 = fsub fast float %3012, %3045
  %3047 = call float @dx.op.unary.f32(i32 27, float %3046)  ; Round_ni(value)
  %3048 = call float @dx.op.unary.f32(i32 22, float %3012)  ; Frc(value)
  %3049 = call float @dx.op.unary.f32(i32 22, float %3044)  ; Frc(value)
  %3050 = call float @dx.op.unary.f32(i32 22, float %3043)  ; Frc(value)
  %3051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %37, float %3049, float %3050, float %3047, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3052 = extractvalue %dx.types.ResRet.f32 %3051, 0
  %3053 = extractvalue %dx.types.ResRet.f32 %3051, 1
  %3054 = extractvalue %dx.types.ResRet.f32 %3051, 2
  %3055 = extractvalue %dx.types.ResRet.f32 %3051, 3
  %3056 = fcmp fast ogt float %3048, 0.000000e+00
  br i1 %3056, label %3057, label %3078, !dx.controlflow.hints !84

; <label>:3057                                    ; preds = %3040
  %3058 = fadd fast float %3047, 1.000000e+00
  %3059 = call float @dx.op.unary.f32(i32 22, float %3021)  ; Frc(value)
  %3060 = call float @dx.op.unary.f32(i32 22, float %3022)  ; Frc(value)
  %3061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %37, float %3059, float %3060, float %3058, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3062 = extractvalue %dx.types.ResRet.f32 %3061, 0
  %3063 = extractvalue %dx.types.ResRet.f32 %3061, 1
  %3064 = extractvalue %dx.types.ResRet.f32 %3061, 2
  %3065 = extractvalue %dx.types.ResRet.f32 %3061, 3
  %3066 = fsub fast float %3062, %3052
  %3067 = fsub fast float %3063, %3053
  %3068 = fsub fast float %3064, %3054
  %3069 = fsub fast float %3065, %3055
  %3070 = fmul fast float %3066, %3048
  %3071 = fmul fast float %3067, %3048
  %3072 = fmul fast float %3068, %3048
  %3073 = fmul fast float %3069, %3048
  %3074 = fadd fast float %3070, %3052
  %3075 = fadd fast float %3071, %3053
  %3076 = fadd fast float %3072, %3054
  %3077 = fadd fast float %3073, %3055
  br label %3078

; <label>:3078                                    ; preds = %3057, %3040
  %3079 = phi float [ %3074, %3057 ], [ %3052, %3040 ]
  %3080 = phi float [ %3075, %3057 ], [ %3053, %3040 ]
  %3081 = phi float [ %3076, %3057 ], [ %3054, %3040 ]
  %3082 = phi float [ %3077, %3057 ], [ %3055, %3040 ]
  %3083 = fadd fast float %3079, -5.000000e-01
  %3084 = fadd fast float %3081, -5.000000e-01
  %3085 = fmul fast float %3083, 0xBFD5555560000000
  %3086 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3084, float %3085)  ; FMad(a,b,c)
  %3087 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3080, float 0.000000e+00)  ; FMad(a,b,c)
  %3088 = fadd fast float %3087, %3082
  %3089 = fmul fast float %3083, -7.500000e-01
  %3090 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3084, float %3089)  ; FMad(a,b,c)
  %3091 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3080, float 0.000000e+00)  ; FMad(a,b,c)
  %3092 = fadd fast float %3091, %3082
  %3093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3094 = extractvalue %dx.types.CBufRet.f32 %3093, 0
  %3095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3096 = extractvalue %dx.types.CBufRet.f32 %3095, 0
  %3097 = extractvalue %dx.types.CBufRet.f32 %3095, 1
  %3098 = extractvalue %dx.types.CBufRet.f32 %3095, 2
  %3099 = extractvalue %dx.types.CBufRet.f32 %3095, 3
  %3100 = fsub fast float %3096, %3086
  %3101 = fsub fast float %3097, %3088
  %3102 = fsub fast float %3098, %3090
  %3103 = fsub fast float %3099, %3092
  %3104 = fmul fast float %3100, %3094
  %3105 = fmul fast float %3101, %3094
  %3106 = fmul fast float %3102, %3094
  %3107 = fmul fast float %3103, %3094
  %3108 = fadd fast float %3104, %3086
  %3109 = fadd fast float %3105, %3088
  %3110 = fadd fast float %3106, %3090
  %3111 = fadd fast float %3107, %3092
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = and i32 %3113, 536870911
  %3115 = uitofp i32 %3114 to float
  %3116 = fmul fast float %3115, %2962
  %3117 = fmul fast float %3115, %2966
  %3118 = fptoui float %3116 to i32
  %3119 = fptoui float %3117 to i32
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = and i32 %3121, 31
  %3123 = lshr i32 %3118, %3122
  %3124 = lshr i32 %3119, %3122
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = and i32 %3126, 31
  %3128 = shl i32 1, %3127
  %3129 = call i32 @dx.op.binary.i32(i32 40, i32 %3128, i32 4)  ; UMin(a,b)
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = extractvalue %dx.types.ResRet.i32 %3130, 1
  %3133 = icmp eq i32 %3129, 0
  br i1 %3133, label %3175, label %3134

; <label>:3134                                    ; preds = %3078
  br label %3135

; <label>:3135                                    ; preds = %3163, %3134
  %3136 = phi i32 [ %3166, %3163 ], [ 0, %3134 ]
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = lshr i32 %3138, 16
  %3140 = and i32 %3139, 31
  %3141 = shl i32 %3124, %3140
  %3142 = add i32 %3141, %3123
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = and i32 %3144, 31
  %3146 = shl i32 %3142, %3145
  %3147 = add i32 %3146, %3136
  %3148 = shl i32 %3147, 2
  %3149 = add i32 %3148, 32
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3149, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = icmp slt i32 %3151, 0
  %3153 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %3136
  %3154 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %3136
  %3155 = bitcast float* %3153 to i32*
  %3156 = bitcast float* %3154 to i32*
  br i1 %3152, label %3157, label %3163

; <label>:3157                                    ; preds = %3135
  %3158 = and i32 %3151, 1073741823
  %3159 = add nuw nsw i32 %3158, 20
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3159, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = extractvalue %dx.types.ResRet.i32 %3160, 1
  br label %3163

; <label>:3163                                    ; preds = %3157, %3135
  %3164 = phi i32 [ %3161, %3157 ], [ %3131, %3135 ]
  %3165 = phi i32 [ %3162, %3157 ], [ %3132, %3135 ]
  store i32 %3164, i32* %3155, align 4
  store i32 %3165, i32* %3156, align 4
  %3166 = add nuw i32 %3136, 1
  %3167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3168 = extractvalue %dx.types.CBufRet.i32 %3167, 2
  %3169 = icmp eq i32 %3168, 0
  %3170 = icmp ugt i32 %3151, -1073741825
  %3171 = and i1 %3170, %3169
  %3172 = icmp ult i32 %3166, %3129
  %3173 = and i1 %3171, %3172
  br i1 %3173, label %3135, label %3174

; <label>:3174                                    ; preds = %3163
  br label %3175

; <label>:3175                                    ; preds = %3174, %3078
  %3176 = phi i32 [ 0, %3078 ], [ %3166, %3174 ]
  %3177 = extractvalue %dx.types.CBufRet.f32 %2940, 2
  %3178 = fptoui float %3177 to i32
  %3179 = icmp eq i32 %3178, 0
  br i1 %3179, label %3231, label %3180

; <label>:3180                                    ; preds = %3175
  br label %3181

; <label>:3181                                    ; preds = %3226, %3180
  %3182 = phi i32 [ %3227, %3226 ], [ %3176, %3180 ]
  %3183 = phi i32 [ %3228, %3226 ], [ 0, %3180 ]
  %3184 = lshr i32 %3183, 2
  %3185 = and i32 %3183, 3
  %3186 = add nuw nsw i32 %3184, 83
  %3187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 %3186)  ; CBufferLoadLegacy(handle,regIndex)
  %3188 = extractvalue %dx.types.CBufRet.i32 %3187, 0
  %3189 = extractvalue %dx.types.CBufRet.i32 %3187, 1
  %3190 = extractvalue %dx.types.CBufRet.i32 %3187, 2
  %3191 = extractvalue %dx.types.CBufRet.i32 %3187, 3
  %3192 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 0
  store i32 %3188, i32* %3192, align 4
  %3193 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 1
  store i32 %3189, i32* %3193, align 4
  %3194 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 2
  store i32 %3190, i32* %3194, align 4
  %3195 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 3
  store i32 %3191, i32* %3195, align 4
  %3196 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 %3185
  %3197 = load i32, i32* %3196, align 4, !tbaa !85, !noalias !89
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = lshr i32 %3199, 16
  %3201 = and i32 %3200, 31
  %3202 = shl i32 %3124, %3201
  %3203 = add i32 %3202, %3123
  %3204 = shl i32 %3203, 2
  %3205 = add i32 %3204, %3197
  %3206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3207 = extractvalue %dx.types.ResRet.i32 %3206, 0
  %3208 = icmp eq i32 %3207, 0
  br i1 %3208, label %3226, label %3209

; <label>:3209                                    ; preds = %3181
  %3210 = icmp slt i32 %3207, 0
  %3211 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %3182
  %3212 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %3182
  %3213 = bitcast float* %3211 to i32*
  %3214 = bitcast float* %3212 to i32*
  br i1 %3210, label %3215, label %3222

; <label>:3215                                    ; preds = %3209
  %3216 = and i32 %3207, 1073741823
  %3217 = add i32 %3197, 20
  %3218 = add i32 %3217, %3216
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3218, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = extractvalue %dx.types.ResRet.i32 %3219, 1
  br label %3222

; <label>:3222                                    ; preds = %3215, %3209
  %3223 = phi i32 [ %3220, %3215 ], [ %3131, %3209 ]
  %3224 = phi i32 [ %3221, %3215 ], [ %3132, %3209 ]
  store i32 %3223, i32* %3213, align 4
  store i32 %3224, i32* %3214, align 4
  %3225 = add i32 %3182, 1
  br label %3226

; <label>:3226                                    ; preds = %3222, %3181
  %3227 = phi i32 [ %3182, %3181 ], [ %3225, %3222 ]
  %3228 = add nuw i32 %3183, 1
  %3229 = icmp eq i32 %3228, %3178
  br i1 %3229, label %3230, label %3181

; <label>:3230                                    ; preds = %3226
  br label %3231

; <label>:3231                                    ; preds = %3230, %3175
  %3232 = phi i32 [ %3176, %3175 ], [ %3227, %3230 ]
  %3233 = icmp eq i32 %3232, 1
  %3234 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 0
  %3235 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 0
  br i1 %3233, label %3236, label %3239

; <label>:3236                                    ; preds = %3231
  %3237 = load float, float* %3234, align 4
  %3238 = load float, float* %3235, align 4
  br label %3266

; <label>:3239                                    ; preds = %3231
  %3240 = load float, float* %3234, align 4
  %3241 = load float, float* %3235, align 4
  %3242 = fdiv fast float 1.000000e+00, %3241
  %3243 = fsub fast float %3240, %3242
  %3244 = icmp ugt i32 %3232, 1
  br i1 %3244, label %3245, label %3261

; <label>:3245                                    ; preds = %3239
  br label %3246

; <label>:3246                                    ; preds = %3246, %3245
  %3247 = phi float [ %3256, %3246 ], [ %3243, %3245 ]
  %3248 = phi float [ %3257, %3246 ], [ %3240, %3245 ]
  %3249 = phi i32 [ %3258, %3246 ], [ 1, %3245 ]
  %3250 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %3249
  %3251 = load float, float* %3250, align 4
  %3252 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %3249
  %3253 = load float, float* %3252, align 4
  %3254 = fdiv fast float 1.000000e+00, %3253
  %3255 = fsub fast float %3251, %3254
  %3256 = call float @dx.op.binary.f32(i32 36, float %3247, float %3255)  ; FMin(a,b)
  %3257 = call float @dx.op.binary.f32(i32 35, float %3248, float %3251)  ; FMax(a,b)
  %3258 = add nuw i32 %3249, 1
  %3259 = icmp eq i32 %3258, %3232
  br i1 %3259, label %3260, label %3246

; <label>:3260                                    ; preds = %3246
  br label %3261

; <label>:3261                                    ; preds = %3260, %3239
  %3262 = phi float [ %3243, %3239 ], [ %3256, %3260 ]
  %3263 = phi float [ %3240, %3239 ], [ %3257, %3260 ]
  %3264 = fsub fast float %3263, %3262
  %3265 = fdiv fast float 1.000000e+00, %3264
  br label %3266

; <label>:3266                                    ; preds = %3261, %3236
  %3267 = phi float [ %3237, %3236 ], [ %3263, %3261 ]
  %3268 = phi float [ %3238, %3236 ], [ %3265, %3261 ]
  %3269 = fadd fast float %2970, %3267
  %3270 = fmul fast float %3269, %3268
  %3271 = call float @dx.op.unary.f32(i32 7, float %3270)  ; Saturate(value)
  %3272 = fmul fast float %3271, 2.000000e+00
  %3273 = fsub fast float 1.000000e+00, %3272
  %3274 = fmul fast float %3108, %3108
  %3275 = fsub fast float %3109, %3274
  %3276 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3275)  ; FMax(a,b)
  %3277 = fdiv fast float 1.000000e+00, %3276
  %3278 = fmul fast float %3109, %3108
  %3279 = fsub fast float %3110, %3278
  %3280 = fsub fast float %3273, %3108
  %3281 = fmul fast float %3273, %3273
  %3282 = fsub fast float %3281, %3109
  %3283 = fmul fast float %3277, %3279
  %3284 = fmul fast float %3283, %3280
  %3285 = fsub fast float %3282, %3284
  %3286 = fmul fast float %3109, %3109
  %3287 = fsub fast float %3111, %3286
  %3288 = fmul fast float %3279, %3279
  %3289 = fmul fast float %3288, %3277
  %3290 = fsub fast float %3287, %3289
  %3291 = fdiv fast float %3285, %3290
  %3292 = fmul fast float %3291, %3279
  %3293 = fsub fast float %3280, %3292
  %3294 = fmul fast float %3293, %3277
  %3295 = fmul fast float %3294, %3108
  %3296 = fsub fast float 1.000000e+00, %3295
  %3297 = fmul fast float %3291, %3109
  %3298 = fsub fast float %3296, %3297
  %3299 = fmul fast float %3294, %3294
  %3300 = fmul fast float %3291, 4.000000e+00
  %3301 = fmul fast float %3300, %3298
  %3302 = fsub fast float %3299, %3301
  %3303 = call float @dx.op.unary.f32(i32 24, float %3302)  ; Sqrt(value)
  %3304 = fcmp fast oge float %3294, 0.000000e+00
  %3305 = fsub fast float -0.000000e+00, %3303
  %3306 = select i1 %3304, float %3305, float %3303
  %3307 = fsub fast float %3306, %3294
  %3308 = fdiv fast float %3307, %3291
  %3309 = fdiv fast float %3298, %3307
  %3310 = fmul fast float %3308, 5.000000e-01
  %3311 = fmul fast float %3309, 2.000000e+00
  %3312 = select i1 %3304, float %3310, float %3311
  %3313 = select i1 %3304, float %3311, float %3310
  %3314 = call float @dx.op.binary.f32(i32 35, float %3312, float %3313)  ; FMax(a,b)
  %3315 = call float @dx.op.binary.f32(i32 36, float %3312, float %3313)  ; FMin(a,b)
  %3316 = fcmp fast ogt float %3273, %3314
  %3317 = fsub fast float %3273, %3315
  %3318 = fsub fast float %3273, %3314
  %3319 = fsub fast float %3314, %3315
  %3320 = select i1 %3316, float %3318, float %3319
  %3321 = fmul float %3317, %3320
  %3322 = select i1 %3316, float %3315, float %3273
  %3323 = fcmp fast ogt float %3273, %3315
  %3324 = fmul fast float %3322, %3314
  %3325 = fadd fast float %3322, %3314
  %3326 = fmul fast float %3325, %3108
  %3327 = fadd fast float %3324, %3109
  %3328 = fsub fast float %3327, %3326
  %3329 = fdiv fast float %3328, %3321
  %3330 = select i1 %3323, float %3329, float 0.000000e+00
  %3331 = fsub fast float 1.000000e+00, %3330
  %3332 = select i1 %3316, float %3331, float %3330
  %3333 = call float @dx.op.unary.f32(i32 7, float %3332)  ; Saturate(value)
  %3334 = extractvalue %dx.types.CBufRet.f32 %3093, 3
  %3335 = fmul fast float %3334, %3333
  %3336 = fsub fast float 1.000000e+00, %3335
  br label %3337

; <label>:3337                                    ; preds = %3266, %2978, %2943, %2939, %2905
  %3338 = phi float [ 1.000000e+00, %2905 ], [ %3336, %3266 ], [ 1.000000e+00, %2943 ], [ 1.000000e+00, %2978 ], [ 1.000000e+00, %2939 ]
  %3339 = fcmp fast ogt float %2935, 0.000000e+00
  br i1 %3339, label %3340, label %3502, !dx.controlflow.hints !98

; <label>:3340                                    ; preds = %3337
  %3341 = fadd fast float %2848, %2822
  %3342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3343 = extractvalue %dx.types.CBufRet.f32 %3342, 2
  %3344 = extractvalue %dx.types.CBufRet.f32 %3342, 3
  %3345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3346 = extractvalue %dx.types.CBufRet.f32 %3345, 2
  %3347 = call float @dx.op.binary.f32(i32 35, float %3341, float 0.000000e+00)  ; FMax(a,b)
  %3348 = fadd fast float %3347, 0x3F10000000000000
  %3349 = fcmp fast oeq float %3346, 0.000000e+00
  br i1 %3349, label %3350, label %3417

; <label>:3350                                    ; preds = %3340
  %3351 = extractvalue %dx.types.CBufRet.f32 %3342, 1
  %3352 = extractvalue %dx.types.CBufRet.f32 %3342, 0
  %3353 = fmul fast float %3352, %2837
  %3354 = fmul fast float %3351, %2838
  %3355 = fadd fast float %3353, 5.000000e-01
  %3356 = call float @dx.op.unary.f32(i32 27, float %3355)  ; Round_ni(value)
  %3357 = fadd fast float %3354, 5.000000e-01
  %3358 = call float @dx.op.unary.f32(i32 27, float %3357)  ; Round_ni(value)
  %3359 = fsub fast float %3355, %3356
  %3360 = fsub fast float %3357, %3358
  %3361 = fadd fast float %3356, -5.000000e-01
  %3362 = fadd fast float %3358, -5.000000e-01
  %3363 = fmul fast float %3359, 2.000000e+00
  %3364 = fsub fast float 3.000000e+00, %3363
  %3365 = fadd fast float %3363, 1.000000e+00
  %3366 = fsub fast float 2.000000e+00, %3359
  %3367 = bitcast float %3364 to i32
  %3368 = sub nsw i32 2129859010, %3367
  %3369 = bitcast i32 %3368 to float
  %3370 = fmul fast float %3369, %3366
  %3371 = fadd fast float %3370, -1.000000e+00
  %3372 = bitcast float %3365 to i32
  %3373 = sub nsw i32 2129859010, %3372
  %3374 = bitcast i32 %3373 to float
  %3375 = fmul fast float %3374, %3359
  %3376 = fadd fast float %3375, 1.000000e+00
  %3377 = fmul fast float %3360, 2.000000e+00
  %3378 = fsub fast float 3.000000e+00, %3377
  %3379 = fadd fast float %3377, 1.000000e+00
  %3380 = fsub fast float 2.000000e+00, %3360
  %3381 = bitcast float %3378 to i32
  %3382 = sub nsw i32 2129859010, %3381
  %3383 = bitcast i32 %3382 to float
  %3384 = fmul fast float %3383, %3380
  %3385 = fadd fast float %3384, -1.000000e+00
  %3386 = bitcast float %3379 to i32
  %3387 = sub nsw i32 2129859010, %3386
  %3388 = bitcast i32 %3387 to float
  %3389 = fmul fast float %3388, %3360
  %3390 = fadd fast float %3389, 1.000000e+00
  %3391 = fadd fast float %3371, %3361
  %3392 = fmul fast float %3391, %3343
  %3393 = fadd fast float %3385, %3362
  %3394 = fmul fast float %3393, %3344
  %3395 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %40, float %3392, float %3394, float undef, float undef, i32 0, i32 0, i32 undef, float %3348)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3396 = extractvalue %dx.types.ResRet.f32 %3395, 0
  %3397 = fmul fast float %3396, %3364
  %3398 = fadd fast float %3376, %3361
  %3399 = fmul fast float %3398, %3343
  %3400 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %40, float %3399, float %3394, float undef, float undef, i32 0, i32 0, i32 undef, float %3348)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3401 = extractvalue %dx.types.ResRet.f32 %3400, 0
  %3402 = fmul fast float %3401, %3365
  %3403 = fadd fast float %3390, %3362
  %3404 = fmul fast float %3403, %3344
  %3405 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %40, float %3392, float %3404, float undef, float undef, i32 0, i32 0, i32 undef, float %3348)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3406 = extractvalue %dx.types.ResRet.f32 %3405, 0
  %3407 = fmul fast float %3406, %3364
  %3408 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %40, float %3399, float %3404, float undef, float undef, i32 0, i32 0, i32 undef, float %3348)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3409 = extractvalue %dx.types.ResRet.f32 %3408, 0
  %3410 = fmul fast float %3409, %3365
  %3411 = fadd fast float %3410, %3407
  %3412 = fmul fast float %3411, %3379
  %3413 = fadd fast float %3402, %3397
  %3414 = fmul fast float %3413, %3378
  %3415 = fadd fast float %3414, %3412
  %3416 = fmul fast float %3415, 6.250000e-02
  br label %3502

; <label>:3417                                    ; preds = %3340
  %3418 = fmul fast float %202, 0x401921FB60000000
  %3419 = call float @dx.op.unary.f32(i32 13, float %3418)  ; Sin(value)
  %3420 = call float @dx.op.unary.f32(i32 12, float %3418)  ; Cos(value)
  %3421 = fsub fast float -0.000000e+00, %3419
  br label %3422

; <label>:3422                                    ; preds = %3471, %3417
  %3423 = phi float [ 0.000000e+00, %3417 ], [ %3466, %3471 ]
  %3424 = phi float [ 0.000000e+00, %3417 ], [ %3468, %3471 ]
  %3425 = phi i32 [ 0, %3417 ], [ %3472, %3471 ]
  %3426 = mul i32 %3425, 2
  %3427 = add i32 0, %3426
  %3428 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3427
  %3429 = load float, float* %3428, align 4
  %3430 = mul i32 %3425, 2
  %3431 = add i32 1, %3430
  %3432 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3431
  %3433 = load float, float* %3432, align 4
  %3434 = fmul fast float %3429, %3420
  %3435 = call float @dx.op.tertiary.f32(i32 46, float %3433, float %3421, float %3434)  ; FMad(a,b,c)
  %3436 = fmul fast float %3429, %3419
  %3437 = call float @dx.op.tertiary.f32(i32 46, float %3433, float %3420, float %3436)  ; FMad(a,b,c)
  %3438 = fmul fast float %3435, %3346
  %3439 = fmul fast float %3437, %3346
  %3440 = fadd fast float %3438, %2837
  %3441 = fadd fast float %3439, %2838
  %3442 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %39, float %3440, float %3441, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3443 = extractvalue %dx.types.ResRet.f32 %3442, 0
  %3444 = extractvalue %dx.types.ResRet.f32 %3442, 1
  %3445 = extractvalue %dx.types.ResRet.f32 %3442, 2
  %3446 = extractvalue %dx.types.ResRet.f32 %3442, 3
  %3447 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 0
  store float %3443, float* %3447, align 4
  %3448 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 1
  store float %3444, float* %3448, align 4
  %3449 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 2
  store float %3445, float* %3449, align 4
  %3450 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 3
  store float %3446, float* %3450, align 4
  %3451 = fsub fast float %3443, %3348
  %3452 = fcmp fast olt float %3451, 0.000000e+00
  %3453 = select i1 %3452, float 0.000000e+00, float 1.000000e+00
  %3454 = fadd fast float %3453, %3423
  %3455 = fmul fast float %3453, %3451
  %3456 = fadd fast float %3455, %3424
  br label %3457

; <label>:3457                                    ; preds = %3457, %3422
  %3458 = phi i32 [ 1, %3422 ], [ %3469, %3457 ]
  %3459 = phi float [ %3456, %3422 ], [ %3468, %3457 ]
  %3460 = phi float [ %3454, %3422 ], [ %3466, %3457 ]
  %3461 = getelementptr [4 x float], [4 x float]* %75, i32 0, i32 %3458
  %3462 = load float, float* %3461, align 4, !tbaa !99, !noalias !89
  %3463 = fsub fast float %3462, %3348
  %3464 = fcmp fast olt float %3463, 0.000000e+00
  %3465 = select i1 %3464, float 0.000000e+00, float 1.000000e+00
  %3466 = fadd fast float %3465, %3460
  %3467 = fmul fast float %3465, %3463
  %3468 = fadd fast float %3467, %3459
  %3469 = add nuw nsw i32 %3458, 1
  %3470 = icmp eq i32 %3469, 4
  br i1 %3470, label %3471, label %3457, !llvm.loop !101

; <label>:3471                                    ; preds = %3457
  %3472 = add nuw nsw i32 %3425, 1
  %3473 = icmp eq i32 %3472, 8
  br i1 %3473, label %3474, label %3422, !llvm.loop !102

; <label>:3474                                    ; preds = %3471
  %3475 = fdiv fast float 1.000000e+00, %3466
  %3476 = fmul fast float %3475, %3468
  %3477 = fdiv fast float 1.000000e+00, %3348
  %3478 = fmul fast float %3476, %3477
  %3479 = call float @dx.op.unary.f32(i32 7, float %3478)  ; Saturate(value)
  %3480 = call float @dx.op.binary.f32(i32 35, float %3479, float 0.000000e+00)  ; FMax(a,b)
  %3481 = fmul fast float %3466, 3.125000e-02
  %3482 = call float @dx.op.unary.f32(i32 7, float %3481)  ; Saturate(value)
  %3483 = fmul fast float %3482, 2.000000e+00
  %3484 = fadd fast float %3483, -1.000000e+00
  %3485 = fcmp fast ogt float %3484, 0.000000e+00
  %3486 = fcmp fast olt float %3484, 0.000000e+00
  %3487 = zext i1 %3485 to i32
  %3488 = zext i1 %3486 to i32
  %3489 = sub nsw i32 %3487, %3488
  %3490 = sitofp i32 %3489 to float
  %3491 = fmul fast float %3490, %3484
  %3492 = fsub fast float 1.000000e+00, %3491
  %3493 = fmul fast float %3492, %3492
  %3494 = fmul fast float %3493, %3492
  %3495 = fsub fast float %3492, %3494
  %3496 = fmul fast float %3495, %3480
  %3497 = fsub fast float 1.000000e+00, %3494
  %3498 = fsub fast float %3497, %3496
  %3499 = fmul fast float %3490, 5.000000e-01
  %3500 = fmul fast float %3499, %3498
  %3501 = fsub fast float 5.000000e-01, %3500
  br label %3502

; <label>:3502                                    ; preds = %3474, %3350, %3337
  %3503 = phi float [ 1.000000e+00, %3337 ], [ %3416, %3350 ], [ %3501, %3474 ]
  %3504 = fcmp fast ogt float %2933, 0.000000e+00
  br i1 %3504, label %3505, label %3669, !dx.controlflow.hints !103

; <label>:3505                                    ; preds = %3502
  %3506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3507 = extractvalue %dx.types.CBufRet.f32 %3506, 1
  %3508 = fadd fast float %3507, %2822
  %3509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3510 = extractvalue %dx.types.CBufRet.f32 %3509, 2
  %3511 = extractvalue %dx.types.CBufRet.f32 %3509, 3
  %3512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3513 = extractvalue %dx.types.CBufRet.f32 %3512, 1
  %3514 = call float @dx.op.binary.f32(i32 35, float %3508, float 0.000000e+00)  ; FMax(a,b)
  %3515 = fadd fast float %3514, 0x3F10000000000000
  %3516 = fcmp fast oeq float %3513, 0.000000e+00
  br i1 %3516, label %3517, label %3584

; <label>:3517                                    ; preds = %3505
  %3518 = extractvalue %dx.types.CBufRet.f32 %3509, 1
  %3519 = extractvalue %dx.types.CBufRet.f32 %3509, 0
  %3520 = fmul fast float %3519, %2829
  %3521 = fmul fast float %3518, %2830
  %3522 = fadd fast float %3520, 5.000000e-01
  %3523 = call float @dx.op.unary.f32(i32 27, float %3522)  ; Round_ni(value)
  %3524 = fadd fast float %3521, 5.000000e-01
  %3525 = call float @dx.op.unary.f32(i32 27, float %3524)  ; Round_ni(value)
  %3526 = fsub fast float %3522, %3523
  %3527 = fsub fast float %3524, %3525
  %3528 = fadd fast float %3523, -5.000000e-01
  %3529 = fadd fast float %3525, -5.000000e-01
  %3530 = fmul fast float %3526, 2.000000e+00
  %3531 = fsub fast float 3.000000e+00, %3530
  %3532 = fadd fast float %3530, 1.000000e+00
  %3533 = fsub fast float 2.000000e+00, %3526
  %3534 = bitcast float %3531 to i32
  %3535 = sub nsw i32 2129859010, %3534
  %3536 = bitcast i32 %3535 to float
  %3537 = fmul fast float %3536, %3533
  %3538 = fadd fast float %3537, -1.000000e+00
  %3539 = bitcast float %3532 to i32
  %3540 = sub nsw i32 2129859010, %3539
  %3541 = bitcast i32 %3540 to float
  %3542 = fmul fast float %3541, %3526
  %3543 = fadd fast float %3542, 1.000000e+00
  %3544 = fmul fast float %3527, 2.000000e+00
  %3545 = fsub fast float 3.000000e+00, %3544
  %3546 = fadd fast float %3544, 1.000000e+00
  %3547 = fsub fast float 2.000000e+00, %3527
  %3548 = bitcast float %3545 to i32
  %3549 = sub nsw i32 2129859010, %3548
  %3550 = bitcast i32 %3549 to float
  %3551 = fmul fast float %3550, %3547
  %3552 = fadd fast float %3551, -1.000000e+00
  %3553 = bitcast float %3546 to i32
  %3554 = sub nsw i32 2129859010, %3553
  %3555 = bitcast i32 %3554 to float
  %3556 = fmul fast float %3555, %3527
  %3557 = fadd fast float %3556, 1.000000e+00
  %3558 = fadd fast float %3538, %3528
  %3559 = fmul fast float %3558, %3510
  %3560 = fadd fast float %3552, %3529
  %3561 = fmul fast float %3560, %3511
  %3562 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %40, float %3559, float %3561, float undef, float undef, i32 0, i32 0, i32 undef, float %3515)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3563 = extractvalue %dx.types.ResRet.f32 %3562, 0
  %3564 = fmul fast float %3563, %3531
  %3565 = fadd fast float %3543, %3528
  %3566 = fmul fast float %3565, %3510
  %3567 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %40, float %3566, float %3561, float undef, float undef, i32 0, i32 0, i32 undef, float %3515)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3568 = extractvalue %dx.types.ResRet.f32 %3567, 0
  %3569 = fmul fast float %3568, %3532
  %3570 = fadd fast float %3557, %3529
  %3571 = fmul fast float %3570, %3511
  %3572 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %40, float %3559, float %3571, float undef, float undef, i32 0, i32 0, i32 undef, float %3515)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3573 = extractvalue %dx.types.ResRet.f32 %3572, 0
  %3574 = fmul fast float %3573, %3531
  %3575 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %40, float %3566, float %3571, float undef, float undef, i32 0, i32 0, i32 undef, float %3515)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3576 = extractvalue %dx.types.ResRet.f32 %3575, 0
  %3577 = fmul fast float %3576, %3532
  %3578 = fadd fast float %3577, %3574
  %3579 = fmul fast float %3578, %3546
  %3580 = fadd fast float %3569, %3564
  %3581 = fmul fast float %3580, %3545
  %3582 = fadd fast float %3581, %3579
  %3583 = fmul fast float %3582, 6.250000e-02
  br label %3669

; <label>:3584                                    ; preds = %3505
  %3585 = fmul fast float %202, 0x401921FB60000000
  %3586 = call float @dx.op.unary.f32(i32 13, float %3585)  ; Sin(value)
  %3587 = call float @dx.op.unary.f32(i32 12, float %3585)  ; Cos(value)
  %3588 = fsub fast float -0.000000e+00, %3586
  br label %3589

; <label>:3589                                    ; preds = %3638, %3584
  %3590 = phi float [ 0.000000e+00, %3584 ], [ %3633, %3638 ]
  %3591 = phi float [ 0.000000e+00, %3584 ], [ %3635, %3638 ]
  %3592 = phi i32 [ 0, %3584 ], [ %3639, %3638 ]
  %3593 = mul i32 %3592, 2
  %3594 = add i32 0, %3593
  %3595 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3594
  %3596 = load float, float* %3595, align 4
  %3597 = mul i32 %3592, 2
  %3598 = add i32 1, %3597
  %3599 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3598
  %3600 = load float, float* %3599, align 4
  %3601 = fmul fast float %3596, %3587
  %3602 = call float @dx.op.tertiary.f32(i32 46, float %3600, float %3588, float %3601)  ; FMad(a,b,c)
  %3603 = fmul fast float %3596, %3586
  %3604 = call float @dx.op.tertiary.f32(i32 46, float %3600, float %3587, float %3603)  ; FMad(a,b,c)
  %3605 = fmul fast float %3602, %3513
  %3606 = fmul fast float %3604, %3513
  %3607 = fadd fast float %3605, %2829
  %3608 = fadd fast float %3606, %2830
  %3609 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %39, float %3607, float %3608, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3610 = extractvalue %dx.types.ResRet.f32 %3609, 0
  %3611 = extractvalue %dx.types.ResRet.f32 %3609, 1
  %3612 = extractvalue %dx.types.ResRet.f32 %3609, 2
  %3613 = extractvalue %dx.types.ResRet.f32 %3609, 3
  %3614 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 0
  store float %3610, float* %3614, align 4
  %3615 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 1
  store float %3611, float* %3615, align 4
  %3616 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 2
  store float %3612, float* %3616, align 4
  %3617 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 3
  store float %3613, float* %3617, align 4
  %3618 = fsub fast float %3610, %3515
  %3619 = fcmp fast olt float %3618, 0.000000e+00
  %3620 = select i1 %3619, float 0.000000e+00, float 1.000000e+00
  %3621 = fadd fast float %3620, %3590
  %3622 = fmul fast float %3620, %3618
  %3623 = fadd fast float %3622, %3591
  br label %3624

; <label>:3624                                    ; preds = %3624, %3589
  %3625 = phi i32 [ 1, %3589 ], [ %3636, %3624 ]
  %3626 = phi float [ %3623, %3589 ], [ %3635, %3624 ]
  %3627 = phi float [ %3621, %3589 ], [ %3633, %3624 ]
  %3628 = getelementptr [4 x float], [4 x float]* %74, i32 0, i32 %3625
  %3629 = load float, float* %3628, align 4, !tbaa !99, !noalias !89
  %3630 = fsub fast float %3629, %3515
  %3631 = fcmp fast olt float %3630, 0.000000e+00
  %3632 = select i1 %3631, float 0.000000e+00, float 1.000000e+00
  %3633 = fadd fast float %3632, %3627
  %3634 = fmul fast float %3632, %3630
  %3635 = fadd fast float %3634, %3626
  %3636 = add nuw nsw i32 %3625, 1
  %3637 = icmp eq i32 %3636, 4
  br i1 %3637, label %3638, label %3624, !llvm.loop !101

; <label>:3638                                    ; preds = %3624
  %3639 = add nuw nsw i32 %3592, 1
  %3640 = icmp eq i32 %3639, 8
  br i1 %3640, label %3641, label %3589, !llvm.loop !102

; <label>:3641                                    ; preds = %3638
  %3642 = fdiv fast float 1.000000e+00, %3633
  %3643 = fmul fast float %3642, %3635
  %3644 = fdiv fast float 1.000000e+00, %3515
  %3645 = fmul fast float %3643, %3644
  %3646 = call float @dx.op.unary.f32(i32 7, float %3645)  ; Saturate(value)
  %3647 = call float @dx.op.binary.f32(i32 35, float %3646, float 0.000000e+00)  ; FMax(a,b)
  %3648 = fmul fast float %3633, 3.125000e-02
  %3649 = call float @dx.op.unary.f32(i32 7, float %3648)  ; Saturate(value)
  %3650 = fmul fast float %3649, 2.000000e+00
  %3651 = fadd fast float %3650, -1.000000e+00
  %3652 = fcmp fast ogt float %3651, 0.000000e+00
  %3653 = fcmp fast olt float %3651, 0.000000e+00
  %3654 = zext i1 %3652 to i32
  %3655 = zext i1 %3653 to i32
  %3656 = sub nsw i32 %3654, %3655
  %3657 = sitofp i32 %3656 to float
  %3658 = fmul fast float %3657, %3651
  %3659 = fsub fast float 1.000000e+00, %3658
  %3660 = fmul fast float %3659, %3659
  %3661 = fmul fast float %3660, %3659
  %3662 = fsub fast float %3659, %3661
  %3663 = fmul fast float %3662, %3647
  %3664 = fsub fast float 1.000000e+00, %3661
  %3665 = fsub fast float %3664, %3663
  %3666 = fmul fast float %3657, 5.000000e-01
  %3667 = fmul fast float %3666, %3665
  %3668 = fsub fast float 5.000000e-01, %3667
  br label %3669

; <label>:3669                                    ; preds = %3641, %3517, %3502
  %3670 = phi float [ 1.000000e+00, %3502 ], [ %3583, %3517 ], [ %3668, %3641 ]
  %3671 = fcmp fast ogt float %2932, 0.000000e+00
  br i1 %3671, label %3672, label %3836, !dx.controlflow.hints !104

; <label>:3672                                    ; preds = %3669
  %3673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3674 = extractvalue %dx.types.CBufRet.f32 %3673, 0
  %3675 = fadd fast float %3674, %2822
  %3676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3677 = extractvalue %dx.types.CBufRet.f32 %3676, 2
  %3678 = extractvalue %dx.types.CBufRet.f32 %3676, 3
  %3679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3680 = extractvalue %dx.types.CBufRet.f32 %3679, 0
  %3681 = call float @dx.op.binary.f32(i32 35, float %3675, float 0.000000e+00)  ; FMax(a,b)
  %3682 = fadd fast float %3681, 0x3F10000000000000
  %3683 = fcmp fast oeq float %3680, 0.000000e+00
  br i1 %3683, label %3684, label %3751

; <label>:3684                                    ; preds = %3672
  %3685 = extractvalue %dx.types.CBufRet.f32 %3676, 1
  %3686 = extractvalue %dx.types.CBufRet.f32 %3676, 0
  %3687 = fmul fast float %3686, %2814
  %3688 = fmul fast float %3685, %2818
  %3689 = fadd fast float %3687, 5.000000e-01
  %3690 = call float @dx.op.unary.f32(i32 27, float %3689)  ; Round_ni(value)
  %3691 = fadd fast float %3688, 5.000000e-01
  %3692 = call float @dx.op.unary.f32(i32 27, float %3691)  ; Round_ni(value)
  %3693 = fsub fast float %3689, %3690
  %3694 = fsub fast float %3691, %3692
  %3695 = fadd fast float %3690, -5.000000e-01
  %3696 = fadd fast float %3692, -5.000000e-01
  %3697 = fmul fast float %3693, 2.000000e+00
  %3698 = fsub fast float 3.000000e+00, %3697
  %3699 = fadd fast float %3697, 1.000000e+00
  %3700 = fsub fast float 2.000000e+00, %3693
  %3701 = bitcast float %3698 to i32
  %3702 = sub nsw i32 2129859010, %3701
  %3703 = bitcast i32 %3702 to float
  %3704 = fmul fast float %3703, %3700
  %3705 = fadd fast float %3704, -1.000000e+00
  %3706 = bitcast float %3699 to i32
  %3707 = sub nsw i32 2129859010, %3706
  %3708 = bitcast i32 %3707 to float
  %3709 = fmul fast float %3708, %3693
  %3710 = fadd fast float %3709, 1.000000e+00
  %3711 = fmul fast float %3694, 2.000000e+00
  %3712 = fsub fast float 3.000000e+00, %3711
  %3713 = fadd fast float %3711, 1.000000e+00
  %3714 = fsub fast float 2.000000e+00, %3694
  %3715 = bitcast float %3712 to i32
  %3716 = sub nsw i32 2129859010, %3715
  %3717 = bitcast i32 %3716 to float
  %3718 = fmul fast float %3717, %3714
  %3719 = fadd fast float %3718, -1.000000e+00
  %3720 = bitcast float %3713 to i32
  %3721 = sub nsw i32 2129859010, %3720
  %3722 = bitcast i32 %3721 to float
  %3723 = fmul fast float %3722, %3694
  %3724 = fadd fast float %3723, 1.000000e+00
  %3725 = fadd fast float %3705, %3695
  %3726 = fmul fast float %3725, %3677
  %3727 = fadd fast float %3719, %3696
  %3728 = fmul fast float %3727, %3678
  %3729 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %40, float %3726, float %3728, float undef, float undef, i32 0, i32 0, i32 undef, float %3682)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3730 = extractvalue %dx.types.ResRet.f32 %3729, 0
  %3731 = fmul fast float %3730, %3698
  %3732 = fadd fast float %3710, %3695
  %3733 = fmul fast float %3732, %3677
  %3734 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %40, float %3733, float %3728, float undef, float undef, i32 0, i32 0, i32 undef, float %3682)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3735 = extractvalue %dx.types.ResRet.f32 %3734, 0
  %3736 = fmul fast float %3735, %3699
  %3737 = fadd fast float %3724, %3696
  %3738 = fmul fast float %3737, %3678
  %3739 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %40, float %3726, float %3738, float undef, float undef, i32 0, i32 0, i32 undef, float %3682)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3740 = extractvalue %dx.types.ResRet.f32 %3739, 0
  %3741 = fmul fast float %3740, %3698
  %3742 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %40, float %3733, float %3738, float undef, float undef, i32 0, i32 0, i32 undef, float %3682)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3743 = extractvalue %dx.types.ResRet.f32 %3742, 0
  %3744 = fmul fast float %3743, %3699
  %3745 = fadd fast float %3744, %3741
  %3746 = fmul fast float %3745, %3713
  %3747 = fadd fast float %3736, %3731
  %3748 = fmul fast float %3747, %3712
  %3749 = fadd fast float %3748, %3746
  %3750 = fmul fast float %3749, 6.250000e-02
  br label %3836

; <label>:3751                                    ; preds = %3672
  %3752 = fmul fast float %202, 0x401921FB60000000
  %3753 = call float @dx.op.unary.f32(i32 13, float %3752)  ; Sin(value)
  %3754 = call float @dx.op.unary.f32(i32 12, float %3752)  ; Cos(value)
  %3755 = fsub fast float -0.000000e+00, %3753
  br label %3756

; <label>:3756                                    ; preds = %3805, %3751
  %3757 = phi float [ 0.000000e+00, %3751 ], [ %3800, %3805 ]
  %3758 = phi float [ 0.000000e+00, %3751 ], [ %3802, %3805 ]
  %3759 = phi i32 [ 0, %3751 ], [ %3806, %3805 ]
  %3760 = mul i32 %3759, 2
  %3761 = add i32 0, %3760
  %3762 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3761
  %3763 = load float, float* %3762, align 4
  %3764 = mul i32 %3759, 2
  %3765 = add i32 1, %3764
  %3766 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3765
  %3767 = load float, float* %3766, align 4
  %3768 = fmul fast float %3763, %3754
  %3769 = call float @dx.op.tertiary.f32(i32 46, float %3767, float %3755, float %3768)  ; FMad(a,b,c)
  %3770 = fmul fast float %3763, %3753
  %3771 = call float @dx.op.tertiary.f32(i32 46, float %3767, float %3754, float %3770)  ; FMad(a,b,c)
  %3772 = fmul fast float %3769, %3680
  %3773 = fmul fast float %3771, %3680
  %3774 = fadd fast float %3772, %2814
  %3775 = fadd fast float %3773, %2818
  %3776 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %39, float %3774, float %3775, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3777 = extractvalue %dx.types.ResRet.f32 %3776, 0
  %3778 = extractvalue %dx.types.ResRet.f32 %3776, 1
  %3779 = extractvalue %dx.types.ResRet.f32 %3776, 2
  %3780 = extractvalue %dx.types.ResRet.f32 %3776, 3
  %3781 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 0
  store float %3777, float* %3781, align 4
  %3782 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 1
  store float %3778, float* %3782, align 4
  %3783 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 2
  store float %3779, float* %3783, align 4
  %3784 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 3
  store float %3780, float* %3784, align 4
  %3785 = fsub fast float %3777, %3682
  %3786 = fcmp fast olt float %3785, 0.000000e+00
  %3787 = select i1 %3786, float 0.000000e+00, float 1.000000e+00
  %3788 = fadd fast float %3787, %3757
  %3789 = fmul fast float %3787, %3785
  %3790 = fadd fast float %3789, %3758
  br label %3791

; <label>:3791                                    ; preds = %3791, %3756
  %3792 = phi i32 [ 1, %3756 ], [ %3803, %3791 ]
  %3793 = phi float [ %3790, %3756 ], [ %3802, %3791 ]
  %3794 = phi float [ %3788, %3756 ], [ %3800, %3791 ]
  %3795 = getelementptr [4 x float], [4 x float]* %73, i32 0, i32 %3792
  %3796 = load float, float* %3795, align 4, !tbaa !99, !noalias !89
  %3797 = fsub fast float %3796, %3682
  %3798 = fcmp fast olt float %3797, 0.000000e+00
  %3799 = select i1 %3798, float 0.000000e+00, float 1.000000e+00
  %3800 = fadd fast float %3799, %3794
  %3801 = fmul fast float %3799, %3797
  %3802 = fadd fast float %3801, %3793
  %3803 = add nuw nsw i32 %3792, 1
  %3804 = icmp eq i32 %3803, 4
  br i1 %3804, label %3805, label %3791, !llvm.loop !101

; <label>:3805                                    ; preds = %3791
  %3806 = add nuw nsw i32 %3759, 1
  %3807 = icmp eq i32 %3806, 8
  br i1 %3807, label %3808, label %3756, !llvm.loop !102

; <label>:3808                                    ; preds = %3805
  %3809 = fdiv fast float 1.000000e+00, %3800
  %3810 = fmul fast float %3809, %3802
  %3811 = fdiv fast float 1.000000e+00, %3682
  %3812 = fmul fast float %3810, %3811
  %3813 = call float @dx.op.unary.f32(i32 7, float %3812)  ; Saturate(value)
  %3814 = call float @dx.op.binary.f32(i32 35, float %3813, float 0.000000e+00)  ; FMax(a,b)
  %3815 = fmul fast float %3800, 3.125000e-02
  %3816 = call float @dx.op.unary.f32(i32 7, float %3815)  ; Saturate(value)
  %3817 = fmul fast float %3816, 2.000000e+00
  %3818 = fadd fast float %3817, -1.000000e+00
  %3819 = fcmp fast ogt float %3818, 0.000000e+00
  %3820 = fcmp fast olt float %3818, 0.000000e+00
  %3821 = zext i1 %3819 to i32
  %3822 = zext i1 %3820 to i32
  %3823 = sub nsw i32 %3821, %3822
  %3824 = sitofp i32 %3823 to float
  %3825 = fmul fast float %3824, %3818
  %3826 = fsub fast float 1.000000e+00, %3825
  %3827 = fmul fast float %3826, %3826
  %3828 = fmul fast float %3827, %3826
  %3829 = fsub fast float %3826, %3828
  %3830 = fmul fast float %3829, %3814
  %3831 = fsub fast float 1.000000e+00, %3828
  %3832 = fsub fast float %3831, %3830
  %3833 = fmul fast float %3824, 5.000000e-01
  %3834 = fmul fast float %3833, %3832
  %3835 = fsub fast float 5.000000e-01, %3834
  br label %3836

; <label>:3836                                    ; preds = %3808, %3684, %3669
  %3837 = phi float [ 1.000000e+00, %3669 ], [ %3750, %3684 ], [ %3835, %3808 ]
  %3838 = fsub fast float %3503, %3338
  %3839 = fmul fast float %3838, %2876
  %3840 = fadd fast float %3839, %3338
  %3841 = fsub fast float %3670, %3840
  %3842 = fmul fast float %3841, %2906
  %3843 = fadd fast float %3842, %3840
  %3844 = fsub fast float %3837, %3843
  %3845 = fmul fast float %3844, %2932
  %3846 = fadd fast float %3845, %3843
  %3847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3848 = extractvalue %dx.types.CBufRet.f32 %3847, 2
  %3849 = fcmp fast ogt float %3848, 0.000000e+00
  br i1 %3849, label %3850, label %3890, !dx.controlflow.hints !105

; <label>:3850                                    ; preds = %3836
  %3851 = fcmp fast ugt float %3848, 0.000000e+00
  br i1 %3851, label %3852, label %3887

; <label>:3852                                    ; preds = %3850
  %3853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3854 = extractvalue %dx.types.CBufRet.f32 %3853, 0
  %3855 = extractvalue %dx.types.CBufRet.f32 %3853, 1
  %3856 = extractvalue %dx.types.CBufRet.f32 %3853, 2
  %3857 = extractvalue %dx.types.CBufRet.f32 %3853, 3
  %3858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3859 = extractvalue %dx.types.CBufRet.f32 %3858, 0
  %3860 = extractvalue %dx.types.CBufRet.f32 %3858, 1
  %3861 = extractvalue %dx.types.CBufRet.f32 %3858, 2
  %3862 = extractvalue %dx.types.CBufRet.f32 %3858, 3
  %3863 = extractvalue %dx.types.CBufRet.f32 %3847, 0
  %3864 = extractvalue %dx.types.CBufRet.f32 %3847, 1
  %3865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3866 = extractvalue %dx.types.CBufRet.f32 %3865, 0
  %3867 = extractvalue %dx.types.CBufRet.f32 %3865, 1
  %3868 = extractvalue %dx.types.CBufRet.f32 %3865, 2
  %3869 = fadd fast float %3866, %2791
  %3870 = fadd fast float %3867, %2792
  %3871 = fadd fast float %3868, %2793
  %3872 = fmul fast float %3869, %3854
  %3873 = call float @dx.op.tertiary.f32(i32 46, float %3855, float %3870, float %3872)  ; FMad(a,b,c)
  %3874 = call float @dx.op.tertiary.f32(i32 46, float %3856, float %3871, float %3873)  ; FMad(a,b,c)
  %3875 = fadd fast float %3874, %3857
  %3876 = fmul fast float %3869, %3859
  %3877 = call float @dx.op.tertiary.f32(i32 46, float %3860, float %3870, float %3876)  ; FMad(a,b,c)
  %3878 = call float @dx.op.tertiary.f32(i32 46, float %3861, float %3871, float %3877)  ; FMad(a,b,c)
  %3879 = fadd fast float %3878, %3862
  %3880 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %35, float %3875, float %3879, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3881 = extractvalue %dx.types.ResRet.f32 %3880, 0
  %3882 = fmul fast float %3881, %3864
  %3883 = fadd fast float %3882, %3863
  %3884 = call float @dx.op.unary.f32(i32 7, float %3883)  ; Saturate(value)
  %3885 = fmul fast float %3884, %3848
  %3886 = fsub fast float 1.000000e+00, %3885
  br label %3887

; <label>:3887                                    ; preds = %3852, %3850
  %3888 = phi float [ %3886, %3852 ], [ 1.000000e+00, %3850 ]
  %3889 = fmul fast float %3888, %3846
  br label %3890

; <label>:3890                                    ; preds = %3887, %3836, %2771
  %3891 = phi float [ 1.000000e+00, %2771 ], [ %3889, %3887 ], [ %3846, %3836 ]
  %3892 = call float @dx.op.binary.f32(i32 36, float %3891, float %3891)  ; FMin(a,b)
  %3893 = call float @dx.op.binary.f32(i32 36, float %3891, float %3892)  ; FMin(a,b)
  %3894 = fcmp fast ogt float %3893, 0.000000e+00
  br i1 %3894, label %3895, label %4061, !dx.controlflow.hints !106

; <label>:3895                                    ; preds = %3890
  %3896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3896, 0
  %3898 = extractvalue %dx.types.CBufRet.f32 %3896, 1
  %3899 = extractvalue %dx.types.CBufRet.f32 %3896, 2
  %3900 = extractvalue %dx.types.CBufRet.f32 %3896, 3
  %3901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3902 = extractvalue %dx.types.CBufRet.f32 %3901, 0
  %3903 = extractvalue %dx.types.CBufRet.f32 %3901, 1
  %3904 = extractvalue %dx.types.CBufRet.f32 %3901, 2
  %3905 = extractvalue %dx.types.CBufRet.f32 %3901, 3
  %3906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3907 = extractvalue %dx.types.CBufRet.f32 %3906, 0
  %3908 = extractvalue %dx.types.CBufRet.f32 %3906, 1
  %3909 = extractvalue %dx.types.CBufRet.f32 %3906, 2
  %3910 = extractvalue %dx.types.CBufRet.f32 %3906, 3
  %3911 = fmul fast float %3897, %2791
  %3912 = call float @dx.op.tertiary.f32(i32 46, float %2792, float %3898, float %3911)  ; FMad(a,b,c)
  %3913 = call float @dx.op.tertiary.f32(i32 46, float %2793, float %3899, float %3912)  ; FMad(a,b,c)
  %3914 = fadd fast float %3913, %3900
  %3915 = fmul fast float %3902, %2791
  %3916 = call float @dx.op.tertiary.f32(i32 46, float %2792, float %3903, float %3915)  ; FMad(a,b,c)
  %3917 = call float @dx.op.tertiary.f32(i32 46, float %2793, float %3904, float %3916)  ; FMad(a,b,c)
  %3918 = fadd fast float %3917, %3905
  %3919 = fmul fast float %3907, %2791
  %3920 = call float @dx.op.tertiary.f32(i32 46, float %2792, float %3908, float %3919)  ; FMad(a,b,c)
  %3921 = call float @dx.op.tertiary.f32(i32 46, float %2793, float %3909, float %3920)  ; FMad(a,b,c)
  %3922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3923 = extractvalue %dx.types.CBufRet.f32 %3922, 0
  %3924 = extractvalue %dx.types.CBufRet.f32 %3922, 1
  %3925 = extractvalue %dx.types.CBufRet.f32 %3922, 3
  %3926 = fmul fast float %3925, %3914
  %3927 = fmul fast float %3925, %3918
  %3928 = fadd fast float %3926, %3923
  %3929 = fadd fast float %3927, %3924
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 0
  %3932 = extractvalue %dx.types.CBufRet.f32 %3930, 1
  %3933 = fsub fast float %3928, %3931
  %3934 = fsub fast float %3929, %3932
  %3935 = fcmp fast olt float %3933, 0.000000e+00
  %3936 = fcmp fast olt float %3934, 0.000000e+00
  %3937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3938 = extractvalue %dx.types.CBufRet.f32 %3937, 0
  %3939 = extractvalue %dx.types.CBufRet.f32 %3937, 1
  %3940 = extractvalue %dx.types.CBufRet.f32 %3937, 2
  %3941 = extractvalue %dx.types.CBufRet.f32 %3937, 3
  %3942 = select i1 %3935, float %3938, float %3940
  %3943 = select i1 %3936, float %3939, float %3941
  %3944 = fmul fast float %3942, %3933
  %3945 = fmul fast float %3943, %3934
  %3946 = call float @dx.op.unary.f32(i32 6, float %3944)  ; FAbs(value)
  %3947 = call float @dx.op.unary.f32(i32 6, float %3945)  ; FAbs(value)
  %3948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3949 = extractvalue %dx.types.CBufRet.f32 %3948, 0
  %3950 = call float @dx.op.binary.f32(i32 35, float %3946, float %3947)  ; FMax(a,b)
  %3951 = fsub fast float %3949, %3950
  %3952 = call float @dx.op.unary.f32(i32 7, float %3951)  ; Saturate(value)
  %3953 = fcmp fast ogt float %3952, 0.000000e+00
  br i1 %3953, label %3954, label %3995, !dx.controlflow.hints !107

; <label>:3954                                    ; preds = %3895
  %3955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %38, float %3928, float %3929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3956 = extractvalue %dx.types.ResRet.f32 %3955, 1
  %3957 = fcmp fast ogt float %3956, 0.000000e+00
  br i1 %3957, label %3958, label %3990

; <label>:3958                                    ; preds = %3954
  %3959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %38, float %3928, float %3929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = extractvalue %dx.types.ResRet.f32 %3959, 1
  %3962 = extractvalue %dx.types.ResRet.f32 %3959, 2
  %3963 = extractvalue %dx.types.ResRet.f32 %3959, 3
  %3964 = fsub fast float 1.000000e+00, %3910
  %3965 = fsub fast float %3964, %3921
  %3966 = fmul fast float %3965, 0x400921FB60000000
  %3967 = fadd fast float %3966, 0x3FF921FB60000000
  %3968 = call float @dx.op.unary.f32(i32 13, float %3967)  ; Sin(value)
  %3969 = fadd fast float %3968, -1.000000e+00
  %3970 = fmul fast float %3969, 0x3FD45F3060000000
  %3971 = fmul fast float %3965, 0x401921FB60000000
  %3972 = fadd fast float %3971, 0x400921FB60000000
  %3973 = call float @dx.op.unary.f32(i32 13, float %3972)  ; Sin(value)
  %3974 = fadd fast float %3973, 0x3E7777A5C0000000
  %3975 = fmul fast float %3974, 0x3FC45F3060000000
  %3976 = fmul fast float %3965, 0x4022D97C80000000
  %3977 = fadd fast float %3976, 0x4012D97C80000000
  %3978 = call float @dx.op.unary.f32(i32 13, float %3977)  ; Sin(value)
  %3979 = fadd fast float %3978, 1.000000e+00
  %3980 = fmul fast float %3979, 0x3FBB2995E0000000
  %3981 = fmul fast float %3965, 0x402921FB60000000
  %3982 = fadd fast float %3981, 0x401921FB60000000
  %3983 = call float @dx.op.unary.f32(i32 13, float %3982)  ; Sin(value)
  %3984 = fadd fast float %3983, 0xBE8777A5C0000000
  %3985 = fmul fast float %3984, 0x3FB45F3060000000
  %3986 = call float @dx.op.dot4.f32(i32 56, float %3960, float %3961, float %3962, float %3963, float %3970, float %3975, float %3980, float %3985)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3987 = fmul fast float %3986, 0xBFF7154760000000
  %3988 = call float @dx.op.unary.f32(i32 21, float %3987)  ; Exp(value)
  %3989 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  br label %3990

; <label>:3990                                    ; preds = %3958, %3954
  %3991 = phi float [ %3989, %3958 ], [ 1.000000e+00, %3954 ]
  %3992 = fadd fast float %3991, -1.000000e+00
  %3993 = fmul fast float %3992, %3952
  %3994 = fadd fast float %3993, 1.000000e+00
  br label %3995

; <label>:3995                                    ; preds = %3990, %3895
  %3996 = phi float [ %3994, %3990 ], [ 1.000000e+00, %3895 ]
  %3997 = fmul fast float %3996, %3891
  %3998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3998, 0
  %4000 = extractvalue %dx.types.CBufRet.f32 %3998, 1
  %4001 = extractvalue %dx.types.CBufRet.f32 %3998, 2
  %4002 = fadd fast float %3999, %130
  %4003 = fadd fast float %4000, %131
  %4004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4005 = extractvalue %dx.types.CBufRet.f32 %4004, 1
  %4006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.f32 %4006, 0
  %4008 = extractvalue %dx.types.CBufRet.f32 %4006, 1
  %4009 = extractvalue %dx.types.CBufRet.f32 %4006, 2
  %4010 = fsub fast float -0.000000e+00, %4002
  %4011 = fsub fast float -0.000000e+00, %4003
  %4012 = fsub fast float -0.000000e+00, %132
  %4013 = fsub fast float %4012, %4001
  %4014 = fadd fast float %4013, %4005
  %4015 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4010, float %4011, float %4014)  ; Dot3(ax,ay,az,bx,by,bz)
  %4016 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4007, float %4008, float %4009)  ; Dot3(ax,ay,az,bx,by,bz)
  %4017 = fdiv fast float 1.000000e+00, %4016
  %4018 = fmul fast float %4017, %4015
  %4019 = fmul fast float %4007, %4018
  %4020 = fmul fast float %4008, %4018
  %4021 = fadd fast float %4019, %4002
  %4022 = fadd fast float %4020, %4003
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4025 = extractvalue %dx.types.CBufRet.f32 %4023, 1
  %4026 = fsub fast float %4021, %4024
  %4027 = fsub fast float %4022, %4025
  %4028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4029 = extractvalue %dx.types.CBufRet.f32 %4028, 2
  %4030 = extractvalue %dx.types.CBufRet.f32 %4028, 3
  %4031 = fmul fast float %4026, %4029
  %4032 = fmul fast float %4027, %4030
  %4033 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4034 = extractvalue %dx.types.CBufRet.i32 %4033, 3
  %4035 = icmp eq i32 %4034, 0
  br i1 %4035, label %4041, label %4036

; <label>:4036                                    ; preds = %3995
  %4037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %37, float %4031, float %4032, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.ResRet.f32 %4037, 1
  %4040 = extractvalue %dx.types.ResRet.f32 %4037, 2
  br label %4046

; <label>:4041                                    ; preds = %3995
  %4042 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %4031, float %4032, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4043 = extractvalue %dx.types.ResRet.f32 %4042, 0
  %4044 = extractvalue %dx.types.ResRet.f32 %4042, 1
  %4045 = extractvalue %dx.types.ResRet.f32 %4042, 2
  br label %4046

; <label>:4046                                    ; preds = %4041, %4036
  %4047 = phi float [ %4038, %4036 ], [ %4043, %4041 ]
  %4048 = phi float [ %4039, %4036 ], [ %4044, %4041 ]
  %4049 = phi float [ %4040, %4036 ], [ %4045, %4041 ]
  %4050 = extractvalue %dx.types.CBufRet.f32 %4004, 2
  %4051 = fmul fast float %4050, %4047
  %4052 = extractvalue %dx.types.CBufRet.f32 %4004, 0
  %4053 = fsub fast float %4018, %4052
  %4054 = fsub fast float %4053, %4051
  %4055 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4054)  ; FMax(a,b)
  %4056 = fmul fast float %4055, %4048
  %4057 = call float @dx.op.binary.f32(i32 36, float %4049, float %4056)  ; FMin(a,b)
  %4058 = fmul fast float %4057, 0xBFF7154760000000
  %4059 = call float @dx.op.unary.f32(i32 21, float %4058)  ; Exp(value)
  %4060 = fmul fast float %3997, %4059
  br label %4061

; <label>:4061                                    ; preds = %4046, %3890
  %4062 = phi float [ %4060, %4046 ], [ %3891, %3890 ]
  %4063 = call float @dx.op.binary.f32(i32 36, float %4062, float %4062)  ; FMin(a,b)
  %4064 = call float @dx.op.binary.f32(i32 36, float %4062, float %4063)  ; FMin(a,b)
  %4065 = fcmp fast ogt float %4064, 0.000000e+00
  br i1 %4065, label %4066, label %4374, !dx.controlflow.hints !108

; <label>:4066                                    ; preds = %4061
  %4067 = bitcast i32 %1893 to float
  %4068 = fmul fast float %4062, %2783
  %4069 = fmul fast float %4062, %2784
  %4070 = fmul fast float %4062, %2785
  %4071 = fsub fast float %2772, %1855
  %4072 = fsub fast float %2773, %1854
  %4073 = fsub fast float %2774, %1853
  %4074 = call float @dx.op.dot3.f32(i32 55, float %4071, float %4072, float %4073, float %4071, float %4072, float %4073)  ; Dot3(ax,ay,az,bx,by,bz)
  %4075 = call float @dx.op.unary.f32(i32 25, float %4074)  ; Rsqrt(value)
  %4076 = fmul fast float %4075, %4071
  %4077 = fmul fast float %4075, %4072
  %4078 = fmul fast float %4075, %4073
  %4079 = call float @dx.op.dot3.f32(i32 55, float %2772, float %2773, float %2774, float %1862, float %1863, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %4080 = call float @dx.op.dot3.f32(i32 55, float %1852, float %1851, float %1850, float %4076, float %4077, float %4078)  ; Dot3(ax,ay,az,bx,by,bz)
  %4081 = call float @dx.op.unary.f32(i32 7, float %4079)  ; Saturate(value)
  %4082 = fmul fast float %4081, %4081
  %4083 = fmul fast float %4082, %4067
  %4084 = call float @dx.op.unary.f32(i32 7, float %4083)  ; Saturate(value)
  %4085 = fmul fast float %4084, %4081
  %4086 = call float @dx.op.dot3.f32(i32 55, float %1862, float %1863, float %1864, float %4076, float %4077, float %4078)  ; Dot3(ax,ay,az,bx,by,bz)
  %4087 = fmul fast float %4086, %4086
  %4088 = call float @dx.op.unary.f32(i32 6, float %4079)  ; FAbs(value)
  %4089 = fsub fast float 1.000000e+00, %1887
  %4090 = fmul fast float %1869, %1869
  %4091 = fmul fast float %4090, %4089
  %4092 = fadd fast float %4091, %1887
  %4093 = bitcast float %4092 to i32
  %4094 = ashr i32 %4093, 1
  %4095 = add nsw i32 %4094, 532487669
  %4096 = bitcast i32 %4095 to float
  %4097 = fadd fast float %4096, %1869
  %4098 = fmul fast float %1887, %4087
  %4099 = fsub fast float 1.000000e+00, %4087
  %4100 = fadd fast float %4099, %4098
  %4101 = fmul fast float %4088, %4088
  %4102 = fmul fast float %4101, %4089
  %4103 = fadd fast float %4102, %1887
  %4104 = bitcast float %4103 to i32
  %4105 = ashr i32 %4104, 1
  %4106 = add nsw i32 %4105, 532487669
  %4107 = bitcast i32 %4106 to float
  %4108 = fadd fast float %4107, %4088
  %4109 = fmul fast float %4100, %4100
  %4110 = fmul fast float %4109, %4097
  %4111 = fmul fast float %4110, %4108
  %4112 = fdiv fast float 0x3FF0A00000000000, %4111
  %4113 = fmul fast float %4112, %1887
  %4114 = fmul fast float %2139, 0x3FF9999980000000
  %4115 = fsub fast float 5.000000e+00, %4114
  %4116 = call float @dx.op.unary.f32(i32 6, float %4080)  ; FAbs(value)
  %4117 = fsub fast float 1.000000e+00, %4116
  %4118 = fmul fast float %2139, 0x41D9660740000000
  %4119 = fadd fast float %4118, 0xC1EFBF8940000000
  %4120 = bitcast float %4117 to i32
  %4121 = sitofp i32 %4120 to float
  %4122 = fmul fast float %4121, %4115
  %4123 = fadd fast float %4119, %4122
  %4124 = fptosi float %4123 to i32
  %4125 = bitcast i32 %4124 to float
  %4126 = fsub fast float 1.000000e+00, %1856
  %4127 = fsub fast float 1.000000e+00, %1857
  %4128 = fsub fast float 1.000000e+00, %1867
  %4129 = fmul fast float %4125, %4126
  %4130 = fmul fast float %4125, %4127
  %4131 = fmul fast float %4125, %4128
  %4132 = fadd fast float %4129, %1856
  %4133 = fadd fast float %4130, %1857
  %4134 = fadd fast float %4131, %1867
  br i1 %2162, label %4135, label %4158

; <label>:4135                                    ; preds = %4066
  %4136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %38, float %1492, float %4116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 0
  %4138 = extractvalue %dx.types.ResRet.f32 %4136, 1
  %4139 = extractvalue %dx.types.ResRet.f32 %4136, 2
  %4140 = fadd fast float %4137, -5.000000e-01
  %4141 = fadd fast float %4138, -5.000000e-01
  %4142 = fadd fast float %4139, -5.000000e-01
  %4143 = fmul fast float %1856, 4.000000e+00
  %4144 = fmul fast float %4143, %4126
  %4145 = fmul fast float %4144, %4140
  %4146 = fmul fast float %1857, 4.000000e+00
  %4147 = fmul fast float %4146, %4127
  %4148 = fmul fast float %4147, %4141
  %4149 = fmul fast float %1867, 4.000000e+00
  %4150 = fmul fast float %4149, %4128
  %4151 = fmul fast float %4150, %4142
  %4152 = fadd fast float %4145, %4132
  %4153 = fadd fast float %4148, %4133
  %4154 = fadd fast float %4151, %4134
  %4155 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4156 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4157 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  br label %4158

; <label>:4158                                    ; preds = %4135, %4066
  %4159 = phi float [ %4155, %4135 ], [ %4132, %4066 ]
  %4160 = phi float [ %4156, %4135 ], [ %4133, %4066 ]
  %4161 = phi float [ %4157, %4135 ], [ %4134, %4066 ]
  %4162 = fmul fast float %4079, 9.843750e-01
  %4163 = fadd fast float %4162, 7.812500e-03
  %4164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %38, float %4163, float %2143, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4165 = extractvalue %dx.types.ResRet.f32 %4164, 0
  %4166 = extractvalue %dx.types.ResRet.f32 %4164, 1
  %4167 = extractvalue %dx.types.ResRet.f32 %4164, 2
  %4168 = extractvalue %dx.types.ResRet.f32 %4164, 3
  %4169 = fsub fast float %4167, %4165
  %4170 = fsub fast float %4168, %4166
  %4171 = fmul fast float %4169, %2149
  %4172 = fmul fast float %4170, %2149
  %4173 = fadd fast float %4171, %4165
  %4174 = fadd fast float %4172, %4166
  %4175 = fmul fast float %4173, %1856
  %4176 = fmul fast float %4173, %1857
  %4177 = fmul fast float %4173, %1867
  %4178 = fadd fast float %4175, %4174
  %4179 = fadd fast float %4176, %4174
  %4180 = fadd fast float %4177, %4174
  br i1 %2162, label %4181, label %4204

; <label>:4181                                    ; preds = %4158
  %4182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %38, float %1492, float %4079, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4183 = extractvalue %dx.types.ResRet.f32 %4182, 0
  %4184 = extractvalue %dx.types.ResRet.f32 %4182, 1
  %4185 = extractvalue %dx.types.ResRet.f32 %4182, 2
  %4186 = fadd fast float %4183, -5.000000e-01
  %4187 = fadd fast float %4184, -5.000000e-01
  %4188 = fadd fast float %4185, -5.000000e-01
  %4189 = fmul fast float %1856, 4.000000e+00
  %4190 = fmul fast float %4189, %4126
  %4191 = fmul fast float %4190, %4186
  %4192 = fmul fast float %1857, 4.000000e+00
  %4193 = fmul fast float %4192, %4127
  %4194 = fmul fast float %4193, %4187
  %4195 = fmul fast float %1867, 4.000000e+00
  %4196 = fmul fast float %4195, %4128
  %4197 = fmul fast float %4196, %4188
  %4198 = fadd fast float %4191, %4178
  %4199 = fadd fast float %4194, %4179
  %4200 = fadd fast float %4197, %4180
  %4201 = call float @dx.op.unary.f32(i32 7, float %4198)  ; Saturate(value)
  %4202 = call float @dx.op.unary.f32(i32 7, float %4199)  ; Saturate(value)
  %4203 = call float @dx.op.unary.f32(i32 7, float %4200)  ; Saturate(value)
  br label %4204

; <label>:4204                                    ; preds = %4181, %4158
  %4205 = phi float [ %4201, %4181 ], [ %4178, %4158 ]
  %4206 = phi float [ %4202, %4181 ], [ %4179, %4158 ]
  %4207 = phi float [ %4203, %4181 ], [ %4180, %4158 ]
  %4208 = call float @dx.op.binary.f32(i32 35, float %4206, float %4207)  ; FMax(a,b)
  %4209 = call float @dx.op.binary.f32(i32 35, float %4205, float %4208)  ; FMax(a,b)
  %4210 = fsub fast float 1.000000e+00, %4209
  %4211 = call float @dx.op.binary.f32(i32 35, float %4088, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4212 = fdiv fast float %892, %4211
  %4213 = fmul fast float %2681, %4212
  %4214 = fmul fast float %2683, %4212
  %4215 = fmul fast float %2685, %4212
  %4216 = call float @dx.op.unary.f32(i32 21, float %4213)  ; Exp(value)
  %4217 = call float @dx.op.unary.f32(i32 21, float %4214)  ; Exp(value)
  %4218 = call float @dx.op.unary.f32(i32 21, float %4215)  ; Exp(value)
  %4219 = call float @dx.op.unary.f32(i32 7, float %4216)  ; Saturate(value)
  %4220 = call float @dx.op.unary.f32(i32 7, float %4217)  ; Saturate(value)
  %4221 = call float @dx.op.unary.f32(i32 7, float %4218)  ; Saturate(value)
  %4222 = select i1 %2678, float %4219, float 0.000000e+00
  %4223 = select i1 %2679, float %4220, float 0.000000e+00
  %4224 = select i1 %2680, float %4221, float 0.000000e+00
  %4225 = fsub fast float -0.000000e+00, %1862
  %4226 = fsub fast float -0.000000e+00, %1863
  %4227 = fsub fast float -0.000000e+00, %1864
  %4228 = call float @dx.op.dot3.f32(i32 55, float %2772, float %2773, float %2774, float %4225, float %4226, float %4227)  ; Dot3(ax,ay,az,bx,by,bz)
  %4229 = call float @dx.op.unary.f32(i32 7, float %4228)  ; Saturate(value)
  %4230 = fmul fast float %4229, 9.843750e-01
  %4231 = fadd fast float %4230, 7.812500e-03
  %4232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %38, float %4231, float %2143, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4233 = extractvalue %dx.types.ResRet.f32 %4232, 0
  %4234 = extractvalue %dx.types.ResRet.f32 %4232, 1
  %4235 = extractvalue %dx.types.ResRet.f32 %4232, 2
  %4236 = extractvalue %dx.types.ResRet.f32 %4232, 3
  %4237 = fsub fast float %4235, %4233
  %4238 = fsub fast float %4236, %4234
  %4239 = fmul fast float %4237, %2149
  %4240 = fmul fast float %4238, %2149
  %4241 = fadd fast float %4239, %4233
  %4242 = fadd fast float %4240, %4234
  %4243 = fmul fast float %4241, %1856
  %4244 = fmul fast float %4241, %1857
  %4245 = fmul fast float %4241, %1867
  %4246 = fadd fast float %4243, %4242
  %4247 = fadd fast float %4244, %4242
  %4248 = fadd fast float %4245, %4242
  br i1 %2162, label %4249, label %4272

; <label>:4249                                    ; preds = %4204
  %4250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %38, float %1492, float %4229, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4251 = extractvalue %dx.types.ResRet.f32 %4250, 0
  %4252 = extractvalue %dx.types.ResRet.f32 %4250, 1
  %4253 = extractvalue %dx.types.ResRet.f32 %4250, 2
  %4254 = fadd fast float %4251, -5.000000e-01
  %4255 = fadd fast float %4252, -5.000000e-01
  %4256 = fadd fast float %4253, -5.000000e-01
  %4257 = fmul fast float %1856, 4.000000e+00
  %4258 = fmul fast float %4257, %4126
  %4259 = fmul fast float %4258, %4254
  %4260 = fmul fast float %1857, 4.000000e+00
  %4261 = fmul fast float %4260, %4127
  %4262 = fmul fast float %4261, %4255
  %4263 = fmul fast float %1867, 4.000000e+00
  %4264 = fmul fast float %4263, %4128
  %4265 = fmul fast float %4264, %4256
  %4266 = fadd fast float %4259, %4246
  %4267 = fadd fast float %4262, %4247
  %4268 = fadd fast float %4265, %4248
  %4269 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4270 = call float @dx.op.unary.f32(i32 7, float %4267)  ; Saturate(value)
  %4271 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  br label %4272

; <label>:4272                                    ; preds = %4249, %4204
  %4273 = phi float [ %4269, %4249 ], [ %4246, %4204 ]
  %4274 = phi float [ %4270, %4249 ], [ %4247, %4204 ]
  %4275 = phi float [ %4271, %4249 ], [ %4248, %4204 ]
  %4276 = call float @dx.op.binary.f32(i32 35, float %4274, float %4275)  ; FMax(a,b)
  %4277 = call float @dx.op.binary.f32(i32 35, float %4273, float %4276)  ; FMax(a,b)
  %4278 = fsub fast float 1.000000e+00, %4277
  %4279 = fmul fast float %1884, %2745
  %4280 = fadd fast float %2747, %4279
  %4281 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4282 = fsub fast float %2772, %1875
  %4283 = fsub fast float %2773, %1876
  %4284 = fsub fast float %2774, %1877
  %4285 = call float @dx.op.dot3.f32(i32 55, float %4282, float %4283, float %4284, float %4282, float %4283, float %4284)  ; Dot3(ax,ay,az,bx,by,bz)
  %4286 = call float @dx.op.unary.f32(i32 25, float %4285)  ; Rsqrt(value)
  %4287 = fmul fast float %4286, %4282
  %4288 = fmul fast float %4286, %4283
  %4289 = fmul fast float %4286, %4284
  %4290 = call float @dx.op.dot3.f32(i32 55, float %4225, float %4226, float %4227, float %4287, float %4288, float %4289)  ; Dot3(ax,ay,az,bx,by,bz)
  %4291 = fmul fast float %4290, %4290
  %4292 = call float @dx.op.unary.f32(i32 6, float %4229)  ; FAbs(value)
  %4293 = call float @dx.op.binary.f32(i32 35, float %4281, float 0x3F847AE140000000)  ; FMax(a,b)
  %4294 = fmul fast float %4293, %4293
  %4295 = fmul fast float %4294, %4294
  %4296 = fsub fast float 1.000000e+00, %4295
  %4297 = fmul fast float %4090, %4296
  %4298 = fadd fast float %4297, %4295
  %4299 = bitcast float %4298 to i32
  %4300 = ashr i32 %4299, 1
  %4301 = add nsw i32 %4300, 532487669
  %4302 = bitcast i32 %4301 to float
  %4303 = fadd fast float %4302, %1869
  %4304 = fmul fast float %4295, %4291
  %4305 = fsub fast float 1.000000e+00, %4291
  %4306 = fadd fast float %4305, %4304
  %4307 = fmul fast float %4292, %4292
  %4308 = fmul fast float %4307, %4296
  %4309 = fadd fast float %4308, %4295
  %4310 = bitcast float %4309 to i32
  %4311 = ashr i32 %4310, 1
  %4312 = add nsw i32 %4311, 532487669
  %4313 = bitcast i32 %4312 to float
  %4314 = fadd fast float %4313, %4292
  %4315 = fmul fast float %4306, %4306
  %4316 = fmul fast float %4315, %4303
  %4317 = fmul fast float %4316, %4314
  %4318 = fdiv fast float 0x3FF0A00000000000, %4317
  %4319 = fmul fast float %4318, %4295
  %4320 = fmul fast float %4229, %4222
  %4321 = fmul fast float %4229, %4223
  %4322 = fmul fast float %4229, %4224
  %4323 = fmul fast float %4320, %4278
  %4324 = fmul fast float %4323, %4319
  %4325 = fmul fast float %4321, %4278
  %4326 = fmul fast float %4325, %4319
  %4327 = fmul fast float %4322, %4278
  %4328 = fmul fast float %4327, %4319
  %4329 = fmul fast float %4159, %4113
  %4330 = fmul fast float %4160, %4113
  %4331 = fmul fast float %4161, %4113
  %4332 = fsub fast float 1.000000e+00, %4080
  %4333 = bitcast float %4332 to i32
  %4334 = sitofp i32 %4333 to float
  %4335 = fmul fast float %4334, 5.000000e+00
  %4336 = fadd fast float %4335, 0xC1EFBF8940000000
  %4337 = fptosi float %4336 to i32
  %4338 = bitcast i32 %4337 to float
  %4339 = fmul fast float %4338, %1491
  %4340 = fmul fast float %4210, %4339
  %4341 = fmul fast float %4340, %2673
  %4342 = fmul fast float %4340, %2674
  %4343 = fmul fast float %4340, %2675
  %4344 = fadd fast float %4341, %4329
  %4345 = fadd fast float %4342, %4330
  %4346 = fadd fast float %4343, %4331
  %4347 = fmul fast float %4344, %4085
  %4348 = fmul fast float %4345, %4085
  %4349 = fmul fast float %4346, %4085
  %4350 = fmul fast float %4085, %4068
  %4351 = fmul fast float %4350, %4210
  %4352 = fmul fast float %4085, %4069
  %4353 = fmul fast float %4352, %4210
  %4354 = fmul fast float %4085, %4070
  %4355 = fmul fast float %4354, %4210
  %4356 = fadd fast float %4347, %4324
  %4357 = fadd fast float %4348, %4326
  %4358 = fadd fast float %4349, %4328
  %4359 = fmul fast float %4356, %4068
  %4360 = fmul fast float %4357, %4069
  %4361 = fmul fast float %4358, %4070
  %4362 = fadd fast float %4351, %2762
  %4363 = fmul fast float %4362, %1515
  %4364 = fadd fast float %4353, %2764
  %4365 = fmul fast float %4364, %1515
  %4366 = fadd fast float %4355, %2766
  %4367 = fmul fast float %4366, %1515
  %4368 = fadd fast float %4359, %2726
  %4369 = fmul fast float %4368, %1515
  %4370 = fadd fast float %4360, %2729
  %4371 = fmul fast float %4370, %1515
  %4372 = fadd fast float %4361, %2732
  %4373 = fmul fast float %4372, %1515
  br label %4374

; <label>:4374                                    ; preds = %4272, %4061, %2656
  %4375 = phi float [ %2727, %2656 ], [ %2727, %4061 ], [ %4369, %4272 ]
  %4376 = phi float [ %2730, %2656 ], [ %2730, %4061 ], [ %4371, %4272 ]
  %4377 = phi float [ %2733, %2656 ], [ %2733, %4061 ], [ %4373, %4272 ]
  %4378 = phi float [ %2763, %2656 ], [ %2763, %4061 ], [ %4363, %4272 ]
  %4379 = phi float [ %2765, %2656 ], [ %2765, %4061 ], [ %4365, %4272 ]
  %4380 = phi float [ %2767, %2656 ], [ %2767, %4061 ], [ %4367, %4272 ]
  %4381 = fmul fast float %2702, %1515
  %4382 = fmul fast float %2703, %1515
  %4383 = fmul fast float %2704, %1515
  %4384 = fadd fast float %4381, 1.000000e+00
  %4385 = fadd fast float %4382, 1.000000e+00
  %4386 = fadd fast float %4383, 1.000000e+00
  %4387 = call float @dx.op.dot3.f32(i32 55, float %4384, float %4385, float %4386, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4388 = fsub fast float 1.000000e+00, %4387
  %4389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4390 = extractvalue %dx.types.CBufRet.f32 %4389, 0
  %4391 = fmul fast float %4390, %2708
  %4392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.f32 %4392, 3
  %4394 = fsub fast float 1.000000e+00, %1487
  %4395 = call float @dx.op.unary.f32(i32 7, float %4394)  ; Saturate(value)
  %4396 = fadd fast float %4380, %1486
  %4397 = fmul fast float %4396, %1487
  %4398 = fmul fast float %4395, %4393
  %4399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %4400 = extractvalue %dx.types.CBufRet.f32 %4399, 3
  %4401 = fmul fast float %4378, %1859
  %4402 = fmul fast float %4379, %1860
  %4403 = fmul fast float %4380, %1861
  %4404 = fcmp fast ogt float %70, %152
  %4405 = and i1 %4404, %1588
  %4406 = or i1 %1667, %4405
  %4407 = icmp eq i32 %1587, 2
  %4408 = fcmp fast ole float %70, %152
  %4409 = and i1 %4408, %4407
  %4410 = or i1 %4409, %4406
  br i1 %4405, label %4411, label %4670

; <label>:4411                                    ; preds = %4374
  %4412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4413 = extractvalue %dx.types.CBufRet.f32 %4412, 2
  %4414 = extractvalue %dx.types.CBufRet.f32 %4412, 3
  %4415 = fmul fast float %4413, %82
  %4416 = fmul fast float %4414, %83
  %4417 = call float @dx.op.unary.f32(i32 7, float %4415)  ; Saturate(value)
  %4418 = call float @dx.op.unary.f32(i32 7, float %4416)  ; Saturate(value)
  %4419 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %4417, float %4418, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4420 = extractvalue %dx.types.ResRet.f32 %4419, 0
  %4421 = extractvalue %dx.types.ResRet.f32 %4419, 1
  %4422 = extractvalue %dx.types.ResRet.f32 %4419, 2
  %4423 = extractvalue %dx.types.ResRet.f32 %4419, 3
  %4424 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %4417, float %4418, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4425 = extractvalue %dx.types.ResRet.f32 %4424, 0
  %4426 = extractvalue %dx.types.ResRet.f32 %4424, 1
  %4427 = extractvalue %dx.types.ResRet.f32 %4424, 2
  %4428 = extractvalue %dx.types.ResRet.f32 %4424, 3
  %4429 = call float @dx.op.binary.f32(i32 35, float %4421, float %4422)  ; FMax(a,b)
  %4430 = call float @dx.op.binary.f32(i32 35, float %4420, float %4429)  ; FMax(a,b)
  %4431 = call float @dx.op.binary.f32(i32 35, float %4430, float %4423)  ; FMax(a,b)
  %4432 = call float @dx.op.binary.f32(i32 36, float %4426, float %4427)  ; FMin(a,b)
  %4433 = call float @dx.op.binary.f32(i32 36, float %4425, float %4432)  ; FMin(a,b)
  %4434 = call float @dx.op.binary.f32(i32 36, float %4433, float %4428)  ; FMin(a,b)
  %4435 = fmul fast float %4431, 2.550000e+02
  %4436 = fadd fast float %4435, 0x3F70101020000000
  %4437 = fptoui float %4436 to i32
  %4438 = fmul fast float %4434, 2.550000e+02
  %4439 = fadd fast float %4438, 0x3F70101020000000
  %4440 = fptoui float %4439 to i32
  %4441 = icmp ult i32 %4437, %4440
  br i1 %4441, label %4442, label %4610

; <label>:4442                                    ; preds = %4411
  %4443 = fcmp fast ogt float %69, 9.843750e-01
  %4444 = fadd fast float %70, -4.000000e+00
  %4445 = select i1 %4443, float -4.000000e+00, float %4444
  %4446 = call float @dx.op.binary.f32(i32 35, float %4445, float 0.000000e+00)  ; FMax(a,b)
  %4447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4448 = extractvalue %dx.types.CBufRet.f32 %4447, 0
  %4449 = fadd fast float %4448, %4446
  %4450 = extractvalue %dx.types.CBufRet.f32 %4447, 2
  %4451 = fmul fast float %4449, %4450
  %4452 = call float @dx.op.unary.f32(i32 23, float %4451)  ; Log(value)
  %4453 = extractvalue %dx.types.CBufRet.f32 %4447, 3
  %4454 = fmul fast float %4453, %4452
  %4455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4456 = extractvalue %dx.types.CBufRet.f32 %4455, 2
  %4457 = fmul fast float %4454, %4456
  %4458 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4459 = uitofp i32 %4437 to float
  %4460 = uitofp i32 %4440 to float
  %4461 = fadd fast float %4459, 5.000000e-01
  %4462 = fadd fast float %4460, 5.000000e-01
  %4463 = fmul fast float %4456, %4461
  %4464 = fmul fast float %4456, %4462
  %4465 = fadd fast float %4463, 0x3F0FFB4800000000
  %4466 = fadd fast float %4464, 0xBF0FFB4800000000
  %4467 = call float @dx.op.binary.f32(i32 35, float %4458, float %4465)  ; FMax(a,b)
  %4468 = call float @dx.op.binary.f32(i32 36, float %4467, float %4466)  ; FMin(a,b)
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 1
  %4471 = extractvalue %dx.types.CBufRet.f32 %4469, 2
  %4472 = extractvalue %dx.types.CBufRet.f32 %4469, 0
  %4473 = fmul fast float %4470, %4468
  %4474 = fadd fast float %4472, %4473
  %4475 = fadd fast float %4472, %4471
  %4476 = fsub fast float %4470, %4471
  %4477 = fadd fast float %4476, %4472
  %4478 = call float @dx.op.binary.f32(i32 35, float %4474, float %4475)  ; FMax(a,b)
  %4479 = call float @dx.op.binary.f32(i32 36, float %4478, float %4477)  ; FMin(a,b)
  %4480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %36, float %4417, float %4418, float %4479, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4481 = extractvalue %dx.types.ResRet.f32 %4480, 0
  %4482 = extractvalue %dx.types.ResRet.f32 %4480, 1
  %4483 = extractvalue %dx.types.ResRet.f32 %4480, 2
  %4484 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4485 = extractvalue %dx.types.CBufRet.i32 %4484, 0
  %4486 = extractvalue %dx.types.CBufRet.i32 %4484, 1
  %4487 = uitofp i32 %4485 to float
  %4488 = uitofp i32 %4486 to float
  %4489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4490 = extractvalue %dx.types.CBufRet.f32 %4489, 0
  %4491 = extractvalue %dx.types.CBufRet.f32 %4489, 1
  %4492 = fmul fast float %4487, %4417
  %4493 = fmul fast float %4488, %4418
  %4494 = fadd fast float %4492, -5.000000e-01
  %4495 = fadd fast float %4493, -5.000000e-01
  %4496 = call float @dx.op.unary.f32(i32 22, float %4494)  ; Frc(value)
  %4497 = call float @dx.op.unary.f32(i32 22, float %4495)  ; Frc(value)
  %4498 = fmul fast float %4496, %4496
  %4499 = fmul fast float %4498, %4496
  %4500 = fsub fast float 3.000000e+00, %4496
  %4501 = fmul fast float %4498, %4500
  %4502 = fmul fast float %4496, 3.000000e+00
  %4503 = fmul fast float %4499, 3.000000e+00
  %4504 = fmul fast float %4498, 6.000000e+00
  %4505 = fsub fast float %4503, %4504
  %4506 = fadd fast float %4505, 4.000000e+00
  %4507 = fmul fast float %4506, 0x3FC5555560000000
  %4508 = fmul fast float %4499, -3.000000e+00
  %4509 = fadd fast float %4498, %4496
  %4510 = fmul fast float %4509, 3.000000e+00
  %4511 = fadd fast float %4508, 1.000000e+00
  %4512 = fadd fast float %4511, %4510
  %4513 = fmul fast float %4499, 0x3FC5555560000000
  %4514 = fmul fast float %4497, %4497
  %4515 = fmul fast float %4514, %4497
  %4516 = fsub fast float 3.000000e+00, %4497
  %4517 = fmul fast float %4514, %4516
  %4518 = fmul fast float %4497, 3.000000e+00
  %4519 = fmul fast float %4515, 3.000000e+00
  %4520 = fmul fast float %4514, 6.000000e+00
  %4521 = fsub fast float %4519, %4520
  %4522 = fadd fast float %4521, 4.000000e+00
  %4523 = fmul fast float %4522, 0x3FC5555560000000
  %4524 = fmul fast float %4515, -3.000000e+00
  %4525 = fadd fast float %4514, %4497
  %4526 = fmul fast float %4525, 3.000000e+00
  %4527 = fadd fast float %4524, 1.000000e+00
  %4528 = fadd fast float %4527, %4526
  %4529 = fmul fast float %4515, 0x3FC5555560000000
  %4530 = fadd fast float %4496, 1.000000e+00
  %4531 = fsub fast float 1.000000e+00, %4502
  %4532 = fadd fast float %4531, %4501
  %4533 = fadd fast float %4532, %4506
  %4534 = fmul fast float %4533, 0x3FC5555560000000
  %4535 = fdiv fast float %4507, %4534
  %4536 = fsub fast float %4530, %4535
  %4537 = fsub fast float 1.000000e+00, %4496
  %4538 = fadd fast float %4512, %4499
  %4539 = fmul fast float %4538, 0x3FC5555560000000
  %4540 = fdiv fast float %4513, %4539
  %4541 = fadd fast float %4537, %4540
  %4542 = fadd fast float %4497, 1.000000e+00
  %4543 = fsub fast float 1.000000e+00, %4518
  %4544 = fadd fast float %4543, %4517
  %4545 = fadd fast float %4544, %4522
  %4546 = fmul fast float %4545, 0x3FC5555560000000
  %4547 = fdiv fast float %4523, %4546
  %4548 = fsub fast float %4542, %4547
  %4549 = fsub fast float 1.000000e+00, %4497
  %4550 = fadd fast float %4528, %4515
  %4551 = fmul fast float %4550, 0x3FC5555560000000
  %4552 = fdiv fast float %4529, %4551
  %4553 = fadd fast float %4552, %4549
  %4554 = fmul fast float %4536, %4490
  %4555 = fsub fast float %4417, %4554
  %4556 = fmul fast float %4541, %4490
  %4557 = fadd fast float %4556, %4417
  %4558 = fmul fast float %4553, %4491
  %4559 = fadd fast float %4558, %4418
  %4560 = fmul fast float %4548, %4491
  %4561 = fsub fast float %4418, %4560
  %4562 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %4555, float %4561, float %4479, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4563 = extractvalue %dx.types.ResRet.f32 %4562, 0
  %4564 = extractvalue %dx.types.ResRet.f32 %4562, 1
  %4565 = extractvalue %dx.types.ResRet.f32 %4562, 2
  %4566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %4557, float %4561, float %4479, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4567 = extractvalue %dx.types.ResRet.f32 %4566, 0
  %4568 = extractvalue %dx.types.ResRet.f32 %4566, 1
  %4569 = extractvalue %dx.types.ResRet.f32 %4566, 2
  %4570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %4555, float %4559, float %4479, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4571 = extractvalue %dx.types.ResRet.f32 %4570, 0
  %4572 = extractvalue %dx.types.ResRet.f32 %4570, 1
  %4573 = extractvalue %dx.types.ResRet.f32 %4570, 2
  %4574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %4557, float %4559, float %4479, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4576 = extractvalue %dx.types.ResRet.f32 %4574, 1
  %4577 = extractvalue %dx.types.ResRet.f32 %4574, 2
  %4578 = fsub fast float %4571, %4563
  %4579 = fsub fast float %4572, %4564
  %4580 = fsub fast float %4573, %4565
  %4581 = fmul fast float %4578, %4551
  %4582 = fmul fast float %4579, %4551
  %4583 = fmul fast float %4580, %4551
  %4584 = fadd fast float %4581, %4563
  %4585 = fadd fast float %4582, %4564
  %4586 = fadd fast float %4583, %4565
  %4587 = fsub fast float %4575, %4567
  %4588 = fsub fast float %4576, %4568
  %4589 = fsub fast float %4577, %4569
  %4590 = fmul fast float %4587, %4551
  %4591 = fmul fast float %4588, %4551
  %4592 = fmul fast float %4589, %4551
  %4593 = fsub fast float %4567, %4584
  %4594 = fadd fast float %4593, %4590
  %4595 = fsub fast float %4568, %4585
  %4596 = fadd fast float %4595, %4591
  %4597 = fsub fast float %4569, %4586
  %4598 = fadd fast float %4597, %4592
  %4599 = fmul fast float %4594, %4539
  %4600 = fmul fast float %4596, %4539
  %4601 = fmul fast float %4598, %4539
  %4602 = fadd fast float %4599, %4584
  %4603 = fadd fast float %4600, %4585
  %4604 = fadd fast float %4601, %4586
  %4605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.f32 %4605, 1
  %4607 = fmul fast float %4602, %4606
  %4608 = fmul fast float %4603, %4606
  %4609 = fmul fast float %4604, %4606
  br label %4610

; <label>:4610                                    ; preds = %4442, %4411
  %4611 = phi float [ %4481, %4442 ], [ 1.000000e+00, %4411 ]
  %4612 = phi float [ %4482, %4442 ], [ 1.000000e+00, %4411 ]
  %4613 = phi float [ %4483, %4442 ], [ 1.000000e+00, %4411 ]
  %4614 = phi float [ %4607, %4442 ], [ 0.000000e+00, %4411 ]
  %4615 = phi float [ %4608, %4442 ], [ 0.000000e+00, %4411 ]
  %4616 = phi float [ %4609, %4442 ], [ 0.000000e+00, %4411 ]
  %4617 = fmul fast float %4614, %4388
  %4618 = fmul fast float %4615, %4388
  %4619 = fmul fast float %4616, %4388
  %4620 = call float @dx.op.dot3.f32(i32 55, float %4611, float %4612, float %4613, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4621 = call float @dx.op.dot3.f32(i32 55, float %4617, float %4618, float %4619, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4622 = select i1 %191, float %4620, float %4611
  %4623 = select i1 %191, float %4620, float %4612
  %4624 = select i1 %191, float 1.000000e+00, float %4613
  %4625 = select i1 %191, float %4621, float %4617
  %4626 = select i1 %191, float 0.000000e+00, float %4618
  %4627 = select i1 %191, float 0.000000e+00, float %4619
  %4628 = fmul fast float %4622, %4401
  %4629 = fmul fast float %4623, %4402
  %4630 = fmul fast float %4624, %4403
  %4631 = fadd fast float %4628, %4625
  %4632 = fadd fast float %4629, %4626
  %4633 = fadd fast float %4627, %4630
  %4634 = fmul fast float %4622, %4375
  %4635 = fmul fast float %4623, %4376
  %4636 = fmul fast float %4624, %4377
  %4637 = fmul fast float %82, 2.000000e+00
  %4638 = fmul fast float %4637, %4413
  %4639 = fmul fast float %83, 2.000000e+00
  %4640 = fmul fast float %4639, %4414
  %4641 = fsub fast float 1.000000e+00, %4638
  %4642 = fsub fast float 1.000000e+00, %4640
  %4643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4643, 0
  %4645 = extractvalue %dx.types.CBufRet.f32 %4643, 1
  %4646 = extractvalue %dx.types.CBufRet.f32 %4643, 2
  %4647 = fmul fast float %4641, %4644
  %4648 = fmul fast float %4641, %4645
  %4649 = fmul fast float %4641, %4646
  %4650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4651 = extractvalue %dx.types.CBufRet.f32 %4650, 0
  %4652 = extractvalue %dx.types.CBufRet.f32 %4650, 1
  %4653 = extractvalue %dx.types.CBufRet.f32 %4650, 2
  %4654 = fmul fast float %4642, %4651
  %4655 = fmul fast float %4642, %4652
  %4656 = fmul fast float %4642, %4653
  %4657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4658 = extractvalue %dx.types.CBufRet.f32 %4657, 0
  %4659 = extractvalue %dx.types.CBufRet.f32 %4657, 1
  %4660 = extractvalue %dx.types.CBufRet.f32 %4657, 2
  %4661 = fadd fast float %4654, %4658
  %4662 = fadd fast float %4661, %4647
  %4663 = fadd fast float %4655, %4659
  %4664 = fadd fast float %4663, %4648
  %4665 = fadd fast float %4656, %4660
  %4666 = fadd fast float %4665, %4649
  %4667 = fmul fast float %4662, %152
  %4668 = fmul fast float %4664, %152
  %4669 = fmul fast float %4666, %152
  br label %4670

; <label>:4670                                    ; preds = %4610, %4374
  %4671 = phi float [ %4667, %4610 ], [ %130, %4374 ]
  %4672 = phi float [ %4668, %4610 ], [ %131, %4374 ]
  %4673 = phi float [ %4669, %4610 ], [ %132, %4374 ]
  %4674 = phi float [ %152, %4610 ], [ %70, %4374 ]
  %4675 = phi float [ %4631, %4610 ], [ %4401, %4374 ]
  %4676 = phi float [ %4632, %4610 ], [ %4402, %4374 ]
  %4677 = phi float [ %4633, %4610 ], [ %4403, %4374 ]
  %4678 = phi float [ %4634, %4610 ], [ %4375, %4374 ]
  %4679 = phi float [ %4635, %4610 ], [ %4376, %4374 ]
  %4680 = phi float [ %4636, %4610 ], [ %4377, %4374 ]
  %4681 = phi float [ %4611, %4610 ], [ 1.000000e+00, %4374 ]
  br i1 %4410, label %5836, label %4682

; <label>:4682                                    ; preds = %4670
  %4683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %4684 = extractvalue %dx.types.CBufRet.f32 %4683, 0
  %4685 = extractvalue %dx.types.CBufRet.f32 %4683, 1
  %4686 = extractvalue %dx.types.CBufRet.f32 %4683, 2
  %4687 = extractvalue %dx.types.CBufRet.f32 %4683, 3
  %4688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %4689 = extractvalue %dx.types.CBufRet.f32 %4688, 0
  %4690 = extractvalue %dx.types.CBufRet.f32 %4688, 1
  %4691 = extractvalue %dx.types.CBufRet.f32 %4688, 2
  %4692 = extractvalue %dx.types.CBufRet.f32 %4688, 3
  %4693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %4694 = extractvalue %dx.types.CBufRet.f32 %4693, 0
  %4695 = extractvalue %dx.types.CBufRet.f32 %4693, 1
  %4696 = extractvalue %dx.types.CBufRet.f32 %4693, 2
  %4697 = extractvalue %dx.types.CBufRet.f32 %4693, 3
  %4698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.f32 %4698, 0
  %4700 = extractvalue %dx.types.CBufRet.f32 %4698, 1
  %4701 = extractvalue %dx.types.CBufRet.f32 %4698, 2
  %4702 = extractvalue %dx.types.CBufRet.f32 %4698, 3
  %4703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.f32 %4703, 3
  %4705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %4706 = extractvalue %dx.types.CBufRet.f32 %4705, 3
  %4707 = extractvalue %dx.types.CBufRet.f32 %4705, 0
  %4708 = extractvalue %dx.types.CBufRet.f32 %4705, 1
  %4709 = extractvalue %dx.types.CBufRet.f32 %4705, 2
  %4710 = fcmp fast olt float %4709, -5.000000e-01
  %4711 = call float @dx.op.dot3.f32(i32 55, float %4671, float %4672, float %4673, float %4671, float %4672, float %4673)  ; Dot3(ax,ay,az,bx,by,bz)
  %4712 = call float @dx.op.unary.f32(i32 25, float %4711)  ; Rsqrt(value)
  %4713 = fmul fast float %4712, %4711
  %4714 = fmul fast float %4712, %4671
  %4715 = fmul fast float %4712, %4672
  %4716 = fmul fast float %4712, %4673
  %4717 = fadd fast float %4713, %4687
  %4718 = call float @dx.op.dot3.f32(i32 55, float %4714, float %4715, float %4716, float %4684, float %4685, float %4686)  ; Dot3(ax,ay,az,bx,by,bz)
  %4719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4720 = extractvalue %dx.types.CBufRet.i32 %4719, 1
  %4721 = and i32 %4720, 1
  %4722 = icmp ne i32 %4721, 0
  %4723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %4724 = extractvalue %dx.types.CBufRet.f32 %4723, 2
  %4725 = fcmp fast ogt float %4724, 0.000000e+00
  %4726 = and i1 %4722, %4725
  br i1 %4726, label %4727, label %5133, !dx.controlflow.hints !109

; <label>:4727                                    ; preds = %4682
  %4728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %4729 = extractvalue %dx.types.CBufRet.f32 %4728, 3
  %4730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4731 = extractvalue %dx.types.CBufRet.f32 %4730, 2
  %4732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4733 = extractvalue %dx.types.CBufRet.f32 %4732, 2
  %4734 = fsub fast float %4731, %4733
  %4735 = and i32 %4720, 2
  %4736 = extractvalue %dx.types.CBufRet.i32 %4719, 0
  %4737 = call i32 @dx.op.binary.i32(i32 40, i32 %4736, i32 3)  ; UMin(a,b)
  %4738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %4739 = extractvalue %dx.types.CBufRet.f32 %4738, 0
  %4740 = extractvalue %dx.types.CBufRet.f32 %4738, 1
  %4741 = extractvalue %dx.types.CBufRet.f32 %4732, 0
  %4742 = extractvalue %dx.types.CBufRet.f32 %4732, 1
  %4743 = fsub fast float %4739, %4741
  %4744 = fsub fast float %4740, %4742
  %4745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %4746 = extractvalue %dx.types.CBufRet.f32 %4745, 0
  %4747 = fcmp fast ogt float %4746, 0.000000e+00
  %4748 = fsub fast float -0.000000e+00, %4743
  %4749 = fsub fast float -0.000000e+00, %4744
  %4750 = call float @dx.op.dot2.f32(i32 54, float %4714, float %4715, float %4714, float %4715)  ; Dot2(ax,ay,bx,by)
  %4751 = call float @dx.op.dot2.f32(i32 54, float %4714, float %4715, float %4748, float %4749)  ; Dot2(ax,ay,bx,by)
  %4752 = fmul fast float %4751, 2.000000e+00
  %4753 = call float @dx.op.dot2.f32(i32 54, float %4748, float %4749, float %4748, float %4749)  ; Dot2(ax,ay,bx,by)
  %4754 = fmul fast float %4746, %4746
  %4755 = fsub fast float %4753, %4754
  %4756 = fmul fast float %4752, %4752
  %4757 = fmul fast float %4750, 4.000000e+00
  %4758 = fmul fast float %4757, %4755
  %4759 = fsub fast float %4756, %4758
  %4760 = fcmp fast ogt float %4759, 0.000000e+00
  br i1 %4760, label %4761, label %4776

; <label>:4761                                    ; preds = %4727
  %4762 = fcmp fast ogt float %4752, 0.000000e+00
  %4763 = call float @dx.op.unary.f32(i32 24, float %4759)  ; Sqrt(value)
  %4764 = fsub fast float -0.000000e+00, %4763
  %4765 = select i1 %4762, float %4763, float %4764
  %4766 = fadd fast float %4765, %4752
  %4767 = fmul float %4766, -5.000000e-01
  %4768 = fdiv fast float %4767, %4750
  %4769 = call float @dx.op.binary.f32(i32 35, float %4768, float 0.000000e+00)  ; FMax(a,b)
  %4770 = call float @dx.op.binary.f32(i32 36, float %4713, float %4769)  ; FMin(a,b)
  %4771 = fdiv fast float %4755, %4767
  %4772 = call float @dx.op.binary.f32(i32 35, float %4771, float 0.000000e+00)  ; FMax(a,b)
  %4773 = call float @dx.op.binary.f32(i32 36, float %4713, float %4772)  ; FMin(a,b)
  %4774 = call float @dx.op.binary.f32(i32 36, float %4770, float %4773)  ; FMin(a,b)
  %4775 = call float @dx.op.binary.f32(i32 35, float %4770, float %4773)  ; FMax(a,b)
  br label %4776

; <label>:4776                                    ; preds = %4761, %4727
  %4777 = phi float [ %4775, %4761 ], [ -1.000000e+00, %4727 ]
  %4778 = phi float [ %4774, %4761 ], [ -1.000000e+00, %4727 ]
  %4779 = phi i1 [ true, %4761 ], [ false, %4727 ]
  %4780 = and i1 %4747, %4779
  br i1 %4780, label %4781, label %4783

; <label>:4781                                    ; preds = %4776
  %4782 = fcmp fast oeq float %4778, %4777
  br i1 %4782, label %5086, label %4784

; <label>:4783                                    ; preds = %4776
  br i1 %4747, label %5086, label %4784

; <label>:4784                                    ; preds = %4783, %4781
  %4785 = phi float [ %4713, %4783 ], [ %4777, %4781 ]
  %4786 = phi float [ 0.000000e+00, %4783 ], [ %4778, %4781 ]
  %4787 = icmp ne i32 %4735, 0
  %4788 = fmul fast float %4785, %4716
  %4789 = fadd fast float %4788, %4729
  %4790 = fmul fast float %4789, %4785
  %4791 = select i1 %4787, float 0.000000e+00, float %4790
  %4792 = fcmp fast oeq float %4716, 0.000000e+00
  %4793 = fdiv fast float %4734, %4716
  %4794 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4793)  ; FMax(a,b)
  %4795 = select i1 %4792, float %4785, float %4794
  %4796 = call float @dx.op.binary.f32(i32 36, float %4785, float %4795)  ; FMin(a,b)
  %4797 = fcmp fast ogt float %4716, 0.000000e+00
  %4798 = fcmp fast olt float %4734, 0.000000e+00
  br i1 %4797, label %4799, label %4856

; <label>:4799                                    ; preds = %4784
  %4800 = icmp eq i32 %4735, 0
  br i1 %4798, label %4801, label %4845

; <label>:4801                                    ; preds = %4799
  %4802 = select i1 %4800, float %4785, float 0.000000e+00
  %4803 = fsub fast float -0.000000e+00, %4802
  %4804 = call float @dx.op.unary.f32(i32 6, float %4803)  ; FAbs(value)
  %4805 = fmul fast float %4802, %4716
  %4806 = fadd fast float %4805, %4729
  %4807 = fmul fast float %4804, %4806
  %4808 = fsub fast float %4791, %4807
  %4809 = fsub fast float %4785, %4804
  %4810 = select i1 %4800, float %4809, float 0.000000e+00
  %4811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4812 = extractvalue %dx.types.CBufRet.f32 %4811, 0
  %4813 = extractvalue %dx.types.CBufRet.f32 %4811, 1
  %4814 = extractvalue %dx.types.CBufRet.f32 %4811, 2
  %4815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4816 = extractvalue %dx.types.CBufRet.f32 %4815, 0
  %4817 = extractvalue %dx.types.CBufRet.f32 %4815, 1
  %4818 = extractvalue %dx.types.CBufRet.f32 %4815, 2
  %4819 = extractvalue %dx.types.CBufRet.f32 %4815, 3
  %4820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4821 = extractvalue %dx.types.CBufRet.f32 %4820, 3
  %4822 = call float @dx.op.binary.f32(i32 36, float %4808, float %4821)  ; FMin(a,b)
  %4823 = fmul fast float %4819, %4810
  %4824 = call float @dx.op.unary.f32(i32 7, float %4823)  ; Saturate(value)
  %4825 = fsub fast float %4816, %4812
  %4826 = fsub fast float %4817, %4813
  %4827 = fsub fast float %4818, %4814
  %4828 = fmul fast float %4824, %4825
  %4829 = fmul fast float %4824, %4826
  %4830 = fmul fast float %4824, %4827
  %4831 = fadd fast float %4828, %4812
  %4832 = fadd fast float %4829, %4813
  %4833 = fadd fast float %4830, %4814
  %4834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4835 = extractvalue %dx.types.CBufRet.f32 %4834, 0
  %4836 = extractvalue %dx.types.CBufRet.f32 %4834, 1
  %4837 = fadd fast float %4836, %4835
  %4838 = call float @dx.op.unary.f32(i32 7, float %4837)  ; Saturate(value)
  %4839 = extractvalue %dx.types.CBufRet.f32 %4834, 2
  %4840 = extractvalue %dx.types.CBufRet.f32 %4834, 3
  %4841 = fadd fast float %4840, %4839
  %4842 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4843 = fmul fast float %4838, %4822
  %4844 = fmul fast float %4843, %4842
  br label %5086

; <label>:4845                                    ; preds = %4799
  br i1 %4800, label %4846, label %4867

; <label>:4846                                    ; preds = %4845
  %4847 = call float @dx.op.binary.f32(i32 36, float %4796, float %4786)  ; FMin(a,b)
  %4848 = fsub fast float %4796, %4847
  %4849 = fsub fast float %4848, %4785
  %4850 = call float @dx.op.unary.f32(i32 6, float %4849)  ; FAbs(value)
  %4851 = fadd fast float %4848, %4785
  %4852 = fmul fast float %4851, %4716
  %4853 = fadd fast float %4852, %4729
  %4854 = fmul fast float %4853, %4850
  %4855 = fsub fast float %4791, %4854
  br label %4867

; <label>:4856                                    ; preds = %4784
  br i1 %4798, label %4857, label %4867

; <label>:4857                                    ; preds = %4856
  %4858 = call float @dx.op.binary.f32(i32 35, float %4786, float %4796)  ; FMax(a,b)
  %4859 = icmp eq i32 %4735, 0
  %4860 = select i1 %4859, float %4796, float 0.000000e+00
  %4861 = fsub fast float -0.000000e+00, %4860
  %4862 = call float @dx.op.unary.f32(i32 6, float %4861)  ; FAbs(value)
  %4863 = fmul fast float %4860, %4716
  %4864 = fadd fast float %4863, %4729
  %4865 = fmul fast float %4862, %4864
  %4866 = fsub fast float %4791, %4865
  br label %4867

; <label>:4867                                    ; preds = %4857, %4856, %4846, %4845
  %4868 = phi float [ %4786, %4845 ], [ %4786, %4846 ], [ %4858, %4857 ], [ %4786, %4856 ]
  %4869 = phi float [ 0.000000e+00, %4845 ], [ %4850, %4846 ], [ %4862, %4857 ], [ 0.000000e+00, %4856 ]
  %4870 = phi float [ %4791, %4845 ], [ %4855, %4846 ], [ %4866, %4857 ], [ %4791, %4856 ]
  %4871 = phi float [ %4796, %4845 ], [ %4796, %4846 ], [ %4785, %4857 ], [ %4785, %4856 ]
  %4872 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 0
  store float -1.000000e+00, float* %4872, align 4, !tbaa !99, !noalias !110
  %4873 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 1
  store float -1.000000e+00, float* %4873, align 4, !tbaa !99, !noalias !110
  %4874 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 2
  store float -1.000000e+00, float* %4874, align 4, !tbaa !99, !noalias !110
  %4875 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 0
  store float -1.000000e+00, float* %4875, align 4, !tbaa !99, !noalias !110
  %4876 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 1
  store float -1.000000e+00, float* %4876, align 4, !tbaa !99, !noalias !110
  %4877 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 2
  store float -1.000000e+00, float* %4877, align 4, !tbaa !99, !noalias !110
  %4878 = icmp sgt i32 %4737, 0
  br i1 %4878, label %4879, label %4940

; <label>:4879                                    ; preds = %4867
  br label %4880

; <label>:4880                                    ; preds = %4929, %4879
  %4881 = phi i32 [ %4930, %4929 ], [ 0, %4879 ]
  %4882 = phi i32 [ %4931, %4929 ], [ 0, %4879 ]
  %4883 = add nuw i32 %4882, 171
  %4884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 %4883)  ; CBufferLoadLegacy(handle,regIndex)
  %4885 = extractvalue %dx.types.CBufRet.f32 %4884, 0
  %4886 = extractvalue %dx.types.CBufRet.f32 %4884, 1
  %4887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4888 = extractvalue %dx.types.CBufRet.f32 %4887, 0
  %4889 = extractvalue %dx.types.CBufRet.f32 %4887, 1
  %4890 = fsub fast float %4885, %4888
  %4891 = fsub fast float %4886, %4889
  %4892 = extractvalue %dx.types.CBufRet.f32 %4884, 2
  %4893 = fsub fast float -0.000000e+00, %4890
  %4894 = fsub fast float -0.000000e+00, %4891
  %4895 = call float @dx.op.dot2.f32(i32 54, float %4714, float %4715, float %4893, float %4894)  ; Dot2(ax,ay,bx,by)
  %4896 = fmul fast float %4895, 2.000000e+00
  %4897 = call float @dx.op.dot2.f32(i32 54, float %4893, float %4894, float %4893, float %4894)  ; Dot2(ax,ay,bx,by)
  %4898 = fmul fast float %4892, %4892
  %4899 = fsub fast float %4897, %4898
  %4900 = fmul fast float %4896, %4896
  %4901 = fmul fast float %4757, %4899
  %4902 = fsub fast float %4900, %4901
  %4903 = fcmp fast ogt float %4902, 0.000000e+00
  br i1 %4903, label %4904, label %4919

; <label>:4904                                    ; preds = %4880
  %4905 = fcmp fast ogt float %4896, 0.000000e+00
  %4906 = call float @dx.op.unary.f32(i32 24, float %4902)  ; Sqrt(value)
  %4907 = fsub fast float -0.000000e+00, %4906
  %4908 = select i1 %4905, float %4906, float %4907
  %4909 = fadd fast float %4908, %4896
  %4910 = fmul float %4909, -5.000000e-01
  %4911 = fdiv fast float %4910, %4750
  %4912 = call float @dx.op.binary.f32(i32 35, float %4911, float 0.000000e+00)  ; FMax(a,b)
  %4913 = call float @dx.op.binary.f32(i32 36, float %4785, float %4912)  ; FMin(a,b)
  %4914 = fdiv fast float %4899, %4910
  %4915 = call float @dx.op.binary.f32(i32 35, float %4914, float 0.000000e+00)  ; FMax(a,b)
  %4916 = call float @dx.op.binary.f32(i32 36, float %4785, float %4915)  ; FMin(a,b)
  %4917 = call float @dx.op.binary.f32(i32 36, float %4913, float %4916)  ; FMin(a,b)
  %4918 = call float @dx.op.binary.f32(i32 35, float %4913, float %4916)  ; FMax(a,b)
  br label %4919

; <label>:4919                                    ; preds = %4904, %4880
  %4920 = phi float [ %4918, %4904 ], [ -1.000000e+00, %4880 ]
  %4921 = phi float [ %4917, %4904 ], [ -1.000000e+00, %4880 ]
  %4922 = phi i1 [ true, %4904 ], [ false, %4880 ]
  br i1 %4922, label %4923, label %4929

; <label>:4923                                    ; preds = %4919
  %4924 = call float @dx.op.binary.f32(i32 35, float %4868, float %4921)  ; FMax(a,b)
  %4925 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %4882
  store float %4924, float* %4925, align 4, !tbaa !99, !noalias !110
  %4926 = call float @dx.op.binary.f32(i32 35, float %4868, float %4920)  ; FMax(a,b)
  %4927 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 %4882
  store float %4926, float* %4927, align 4, !tbaa !99, !noalias !110
  %4928 = add nsw i32 %4881, 1
  br label %4929

; <label>:4929                                    ; preds = %4923, %4919
  %4930 = phi i32 [ %4928, %4923 ], [ %4881, %4919 ]
  %4931 = add nuw nsw i32 %4882, 1
  %4932 = icmp eq i32 %4931, %4737
  br i1 %4932, label %4933, label %4880

; <label>:4933                                    ; preds = %4929
  %4934 = load float, float* %4874, align 4, !tbaa !99, !alias.scope !126, !noalias !129
  %4935 = load float, float* %4873, align 4, !tbaa !99, !alias.scope !132, !noalias !133
  %4936 = load float, float* %4872, align 4, !tbaa !99, !alias.scope !134, !noalias !135
  %4937 = load float, float* %4877, align 4, !tbaa !99, !alias.scope !136, !noalias !139
  %4938 = load float, float* %4876, align 4, !tbaa !99, !alias.scope !142, !noalias !143
  %4939 = load float, float* %4875, align 4, !tbaa !99, !alias.scope !144, !noalias !145
  br label %4940

; <label>:4940                                    ; preds = %4933, %4867
  %4941 = phi float [ -1.000000e+00, %4867 ], [ %4939, %4933 ]
  %4942 = phi float [ -1.000000e+00, %4867 ], [ %4938, %4933 ]
  %4943 = phi float [ -1.000000e+00, %4867 ], [ %4937, %4933 ]
  %4944 = phi float [ -1.000000e+00, %4867 ], [ %4936, %4933 ]
  %4945 = phi float [ -1.000000e+00, %4867 ], [ %4935, %4933 ]
  %4946 = phi float [ -1.000000e+00, %4867 ], [ %4934, %4933 ]
  %4947 = phi i32 [ 0, %4867 ], [ %4930, %4933 ]
  %4948 = call float @dx.op.binary.f32(i32 36, float %4945, float %4946)  ; FMin(a,b)
  %4949 = call float @dx.op.binary.f32(i32 36, float %4944, float %4948)  ; FMin(a,b)
  %4950 = call float @dx.op.binary.f32(i32 35, float %4944, float %4945)  ; FMax(a,b)
  %4951 = call float @dx.op.binary.f32(i32 36, float %4950, float %4946)  ; FMin(a,b)
  %4952 = call float @dx.op.binary.f32(i32 36, float %4944, float %4945)  ; FMin(a,b)
  %4953 = call float @dx.op.binary.f32(i32 35, float %4952, float %4951)  ; FMax(a,b)
  %4954 = call float @dx.op.binary.f32(i32 35, float %4945, float %4946)  ; FMax(a,b)
  %4955 = call float @dx.op.binary.f32(i32 35, float %4944, float %4954)  ; FMax(a,b)
  store float %4949, float* %4872, align 4, !tbaa !99, !alias.scope !134, !noalias !135
  store float %4953, float* %4873, align 4, !tbaa !99, !alias.scope !132, !noalias !133
  store float %4955, float* %4874, align 4, !tbaa !99, !alias.scope !126, !noalias !129
  %4956 = call float @dx.op.binary.f32(i32 36, float %4942, float %4943)  ; FMin(a,b)
  %4957 = call float @dx.op.binary.f32(i32 36, float %4941, float %4956)  ; FMin(a,b)
  %4958 = call float @dx.op.binary.f32(i32 35, float %4941, float %4942)  ; FMax(a,b)
  %4959 = call float @dx.op.binary.f32(i32 36, float %4958, float %4943)  ; FMin(a,b)
  %4960 = call float @dx.op.binary.f32(i32 36, float %4941, float %4942)  ; FMin(a,b)
  %4961 = call float @dx.op.binary.f32(i32 35, float %4960, float %4959)  ; FMax(a,b)
  %4962 = call float @dx.op.binary.f32(i32 35, float %4942, float %4943)  ; FMax(a,b)
  %4963 = call float @dx.op.binary.f32(i32 35, float %4941, float %4962)  ; FMax(a,b)
  store float %4957, float* %4875, align 4, !tbaa !99, !alias.scope !144, !noalias !145
  store float %4961, float* %4876, align 4, !tbaa !99, !alias.scope !142, !noalias !143
  store float %4963, float* %4877, align 4, !tbaa !99, !alias.scope !136, !noalias !139
  %4964 = sub nsw i32 3, %4947
  %4965 = icmp sgt i32 %4964, 2
  br i1 %4965, label %4966, label %5004

; <label>:4966                                    ; preds = %4940
  %4967 = icmp eq i32 %4735, 0
  %4968 = fsub fast float %4785, %4869
  %4969 = select i1 %4967, float %4968, float %4869
  %4970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4971 = extractvalue %dx.types.CBufRet.f32 %4970, 0
  %4972 = extractvalue %dx.types.CBufRet.f32 %4970, 1
  %4973 = extractvalue %dx.types.CBufRet.f32 %4970, 2
  %4974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4975 = extractvalue %dx.types.CBufRet.f32 %4974, 0
  %4976 = extractvalue %dx.types.CBufRet.f32 %4974, 1
  %4977 = extractvalue %dx.types.CBufRet.f32 %4974, 2
  %4978 = extractvalue %dx.types.CBufRet.f32 %4974, 3
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 3
  %4981 = call float @dx.op.binary.f32(i32 36, float %4870, float %4980)  ; FMin(a,b)
  %4982 = fmul fast float %4978, %4969
  %4983 = call float @dx.op.unary.f32(i32 7, float %4982)  ; Saturate(value)
  %4984 = fsub fast float %4975, %4971
  %4985 = fsub fast float %4976, %4972
  %4986 = fsub fast float %4977, %4973
  %4987 = fmul fast float %4983, %4984
  %4988 = fmul fast float %4983, %4985
  %4989 = fmul fast float %4983, %4986
  %4990 = fadd fast float %4987, %4971
  %4991 = fadd fast float %4988, %4972
  %4992 = fadd fast float %4989, %4973
  %4993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4994 = extractvalue %dx.types.CBufRet.f32 %4993, 0
  %4995 = extractvalue %dx.types.CBufRet.f32 %4993, 1
  %4996 = fadd fast float %4995, %4994
  %4997 = call float @dx.op.unary.f32(i32 7, float %4996)  ; Saturate(value)
  %4998 = extractvalue %dx.types.CBufRet.f32 %4993, 2
  %4999 = extractvalue %dx.types.CBufRet.f32 %4993, 3
  %5000 = fadd fast float %4999, %4998
  %5001 = call float @dx.op.unary.f32(i32 7, float %5000)  ; Saturate(value)
  %5002 = fmul fast float %4997, %4981
  %5003 = fmul fast float %5002, %5001
  br label %5086

; <label>:5004                                    ; preds = %4940
  %5005 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %4964
  %5006 = load float, float* %5005, align 4, !tbaa !99, !noalias !110
  %5007 = fcmp fast olt float %5006, %4871
  %5008 = icmp sgt i32 %4947, 0
  %5009 = and i1 %5008, %5007
  br i1 %5009, label %5010, label %5047

; <label>:5010                                    ; preds = %5004
  br label %5011

; <label>:5011                                    ; preds = %5040, %5010
  %5012 = phi float [ %5041, %5040 ], [ %4869, %5010 ]
  %5013 = phi float [ %5042, %5040 ], [ %4870, %5010 ]
  %5014 = phi float [ %5022, %5040 ], [ %5006, %5010 ]
  %5015 = phi i32 [ %5019, %5040 ], [ %4964, %5010 ]
  %5016 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 %5015
  %5017 = load float, float* %5016, align 4, !tbaa !99, !noalias !110
  %5018 = icmp slt i32 %5015, 2
  %5019 = add nsw i32 %5015, 1
  %5020 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %5019
  %5021 = load float, float* %5020, align 4, !tbaa !99, !noalias !110
  %5022 = select i1 %5018, float %5021, float %4785
  %5023 = call float @dx.op.binary.f32(i32 36, float %5022, float %5017)  ; FMin(a,b)
  %5024 = call float @dx.op.binary.f32(i32 36, float %4871, float %5023)  ; FMin(a,b)
  %5025 = icmp eq i32 %4735, 0
  %5026 = fadd fast float %5024, %5014
  %5027 = fmul fast float %5026, %4716
  %5028 = fadd fast float %5027, %4729
  br i1 %5025, label %5034, label %5029

; <label>:5029                                    ; preds = %5011
  %5030 = fsub fast float %5024, %5014
  %5031 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5030)  ; FMax(a,b)
  %5032 = fmul fast float %5031, %5028
  %5033 = fadd fast float %5032, %5013
  br label %5040

; <label>:5034                                    ; preds = %5011
  %5035 = fsub fast float %5014, %5024
  %5036 = call float @dx.op.unary.f32(i32 6, float %5035)  ; FAbs(value)
  %5037 = fadd fast float %5036, %5012
  %5038 = fmul fast float %5036, %5028
  %5039 = fsub fast float %5013, %5038
  br label %5040

; <label>:5040                                    ; preds = %5034, %5029
  %5041 = phi float [ %5031, %5029 ], [ %5037, %5034 ]
  %5042 = phi float [ %5033, %5029 ], [ %5039, %5034 ]
  %5043 = fcmp fast olt float %5022, %4871
  %5044 = icmp slt i32 %5019, 3
  %5045 = and i1 %5044, %5043
  br i1 %5045, label %5011, label %5046

; <label>:5046                                    ; preds = %5040
  br label %5047

; <label>:5047                                    ; preds = %5046, %5004
  %5048 = phi float [ %4869, %5004 ], [ %5041, %5046 ]
  %5049 = phi float [ %4870, %5004 ], [ %5042, %5046 ]
  %5050 = fsub fast float %4785, %5048
  %5051 = select i1 %4787, float %5048, float %5050
  %5052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5053 = extractvalue %dx.types.CBufRet.f32 %5052, 0
  %5054 = extractvalue %dx.types.CBufRet.f32 %5052, 1
  %5055 = extractvalue %dx.types.CBufRet.f32 %5052, 2
  %5056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5057 = extractvalue %dx.types.CBufRet.f32 %5056, 0
  %5058 = extractvalue %dx.types.CBufRet.f32 %5056, 1
  %5059 = extractvalue %dx.types.CBufRet.f32 %5056, 2
  %5060 = extractvalue %dx.types.CBufRet.f32 %5056, 3
  %5061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5062 = extractvalue %dx.types.CBufRet.f32 %5061, 3
  %5063 = call float @dx.op.binary.f32(i32 36, float %5049, float %5062)  ; FMin(a,b)
  %5064 = fmul fast float %5060, %5051
  %5065 = call float @dx.op.unary.f32(i32 7, float %5064)  ; Saturate(value)
  %5066 = fsub fast float %5057, %5053
  %5067 = fsub fast float %5058, %5054
  %5068 = fsub fast float %5059, %5055
  %5069 = fmul fast float %5065, %5066
  %5070 = fmul fast float %5065, %5067
  %5071 = fmul fast float %5065, %5068
  %5072 = fadd fast float %5069, %5053
  %5073 = fadd fast float %5070, %5054
  %5074 = fadd fast float %5071, %5055
  %5075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5076 = extractvalue %dx.types.CBufRet.f32 %5075, 0
  %5077 = extractvalue %dx.types.CBufRet.f32 %5075, 1
  %5078 = fadd fast float %5077, %5076
  %5079 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5080 = extractvalue %dx.types.CBufRet.f32 %5075, 2
  %5081 = extractvalue %dx.types.CBufRet.f32 %5075, 3
  %5082 = fadd fast float %5081, %5080
  %5083 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5084 = fmul fast float %5079, %5063
  %5085 = fmul fast float %5084, %5083
  br label %5086

; <label>:5086                                    ; preds = %5047, %4966, %4801, %4783, %4781
  %5087 = phi float [ %4810, %4801 ], [ %4969, %4966 ], [ %5051, %5047 ], [ 0.000000e+00, %4781 ], [ 0.000000e+00, %4783 ]
  %5088 = phi float [ %4844, %4801 ], [ %5003, %4966 ], [ %5085, %5047 ], [ 0.000000e+00, %4781 ], [ 0.000000e+00, %4783 ]
  %5089 = phi float [ %4831, %4801 ], [ %4990, %4966 ], [ %5072, %5047 ], [ 0.000000e+00, %4781 ], [ 0.000000e+00, %4783 ]
  %5090 = phi float [ %4832, %4801 ], [ %4991, %4966 ], [ %5073, %5047 ], [ 0.000000e+00, %4781 ], [ 0.000000e+00, %4783 ]
  %5091 = phi float [ %4833, %4801 ], [ %4992, %4966 ], [ %5074, %5047 ], [ 0.000000e+00, %4781 ], [ 0.000000e+00, %4783 ]
  %5092 = fmul fast float %4724, %5088
  %5093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5094 = extractvalue %dx.types.CBufRet.f32 %5093, 2
  %5095 = fsub fast float %4731, %5094
  %5096 = fcmp fast olt float %5092, -2.000000e+01
  %5097 = call float @dx.op.unary.f32(i32 21, float %5092)  ; Exp(value)
  %5098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5099 = extractvalue %dx.types.CBufRet.f32 %5098, 2
  %5100 = extractvalue %dx.types.CBufRet.f32 %5098, 3
  %5101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5102 = extractvalue %dx.types.CBufRet.f32 %5101, 2
  %5103 = fmul fast float %5100, %5095
  %5104 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5105 = fsub fast float 1.000000e+00, %5104
  %5106 = fmul fast float %4716, 5.000000e-01
  %5107 = fadd fast float %5106, 5.000000e-01
  %5108 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5109 = fsub fast float 1.000000e+00, %5108
  %5110 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5105)  ; FMax(a,b)
  %5111 = fdiv fast float %5109, %5110
  %5112 = fsub fast float %5095, %4673
  %5113 = call float @dx.op.unary.f32(i32 6, float %5112)  ; FAbs(value)
  %5114 = fmul fast float %5113, %5099
  %5115 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5116 = fsub fast float 1.000000e+00, %5114
  %5117 = fmul fast float %5116, %5115
  %5118 = fadd fast float %5117, %5114
  %5119 = fmul fast float %5102, %5095
  %5120 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5121 = fsub fast float 1.000000e+00, %5118
  %5122 = fmul fast float %5121, %5120
  %5123 = fadd fast float %5122, %5118
  %5124 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5125 = fadd fast float %5097, -1.000000e+00
  %5126 = select i1 %5096, float -1.000000e+00, float %5125
  %5127 = fmul fast float %5124, %5126
  %5128 = fadd fast float %5127, 1.000000e+00
  %5129 = fsub fast float -0.000000e+00, %5127
  %5130 = fmul fast float %5089, %5129
  %5131 = fmul fast float %5090, %5129
  %5132 = fmul fast float %5091, %5129
  br label %5133

; <label>:5133                                    ; preds = %5086, %4682
  %5134 = phi float [ %5087, %5086 ], [ 0.000000e+00, %4682 ]
  %5135 = phi float [ %5128, %5086 ], [ 1.000000e+00, %4682 ]
  %5136 = phi float [ %5130, %5086 ], [ 0.000000e+00, %4682 ]
  %5137 = phi float [ %5131, %5086 ], [ 0.000000e+00, %4682 ]
  %5138 = phi float [ %5132, %5086 ], [ 0.000000e+00, %4682 ]
  %5139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5140 = extractvalue %dx.types.CBufRet.f32 %5139, 1
  %5141 = fsub fast float 1.000000e+00, %5135
  %5142 = fmul fast float %5141, %4717
  %5143 = fmul fast float %5142, %5140
  %5144 = fsub fast float %4717, %5143
  br i1 %4710, label %5145, label %5174, !dx.controlflow.hints !146

; <label>:5145                                    ; preds = %5133
  %5146 = fmul fast float %4718, %4707
  %5147 = fadd fast float %5146, %4708
  %5148 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  %5149 = fmul fast float %4689, %5144
  %5150 = fsub fast float -0.000000e+00, %5149
  %5151 = fmul fast float %4690, %5144
  %5152 = fsub fast float -0.000000e+00, %5151
  %5153 = call float @dx.op.unary.f32(i32 21, float %5150)  ; Exp(value)
  %5154 = call float @dx.op.unary.f32(i32 21, float %5152)  ; Exp(value)
  %5155 = call float @dx.op.binary.f32(i32 35, float %4697, float %5153)  ; FMax(a,b)
  %5156 = call float @dx.op.binary.f32(i32 35, float %4697, float %5154)  ; FMax(a,b)
  %5157 = fsub fast float %5156, %5155
  %5158 = fmul fast float %5157, %5148
  %5159 = fadd fast float %5158, %5155
  %5160 = call float @dx.op.unary.f32(i32 7, float %5159)  ; Saturate(value)
  %5161 = fsub fast float %4694, %4699
  %5162 = fsub fast float %4695, %4700
  %5163 = fsub fast float %4696, %4701
  %5164 = fmul fast float %5148, %5161
  %5165 = fmul fast float %5148, %5162
  %5166 = fmul fast float %5148, %5163
  %5167 = fadd fast float %5164, %4699
  %5168 = fadd fast float %5165, %4700
  %5169 = fadd fast float %5166, %4701
  %5170 = fsub fast float 1.000000e+00, %5160
  %5171 = fmul fast float %5170, %5167
  %5172 = fmul fast float %5170, %5168
  %5173 = fmul fast float %5170, %5169
  br label %5233

; <label>:5174                                    ; preds = %5133
  %5175 = fmul fast float %5144, %4706
  %5176 = call float @dx.op.unary.f32(i32 7, float %5175)  ; Saturate(value)
  %5177 = fsub fast float 2.000000e+00, %5176
  %5178 = fmul fast float %5176, 9.921875e-01
  %5179 = fmul fast float %5178, %5177
  %5180 = fadd fast float %5179, 3.906250e-03
  %5181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %5180, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5182 = extractvalue %dx.types.ResRet.f32 %5181, 0
  %5183 = fsub fast float %5176, %5182
  %5184 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5183)  ; FMax(a,b)
  %5185 = fmul fast float %4692, %4673
  %5186 = call float @dx.op.unary.f32(i32 6, float %5185)  ; FAbs(value)
  %5187 = fcmp fast ogt float %5186, 0x3EB0C6F7A0000000
  br i1 %5187, label %5188, label %5194, !dx.controlflow.hints !147

; <label>:5188                                    ; preds = %5174
  %5189 = fmul fast float %5185, 0xBFF7154760000000
  %5190 = call float @dx.op.unary.f32(i32 21, float %5189)  ; Exp(value)
  %5191 = fsub fast float 1.000000e+00, %5190
  %5192 = fdiv fast float %5191, %5185
  %5193 = fmul fast float %5192, %4702
  br label %5194

; <label>:5194                                    ; preds = %5188, %5174
  %5195 = phi float [ %5193, %5188 ], [ %4702, %5174 ]
  %5196 = fadd fast float %5195, %4704
  %5197 = fmul fast float %5196, %5184
  %5198 = fmul fast float %4689, %5197
  %5199 = fsub fast float -0.000000e+00, %5198
  %5200 = fmul fast float %4690, %5197
  %5201 = fsub fast float -0.000000e+00, %5200
  %5202 = fmul fast float %4691, %5197
  %5203 = fsub fast float -0.000000e+00, %5202
  %5204 = call float @dx.op.unary.f32(i32 21, float %5199)  ; Exp(value)
  %5205 = call float @dx.op.unary.f32(i32 21, float %5201)  ; Exp(value)
  %5206 = call float @dx.op.unary.f32(i32 21, float %5203)  ; Exp(value)
  %5207 = fmul fast float %4718, %4718
  %5208 = fadd fast float %5207, 1.000000e+00
  %5209 = fmul fast float %5208, 0x3FAE8EC8A0000000
  %5210 = fmul fast float %5209, %4699
  %5211 = fmul fast float %5209, %4700
  %5212 = fmul fast float %5209, %4701
  %5213 = fmul fast float %4718, %4697
  %5214 = fsub fast float 1.000000e+00, %5213
  %5215 = fmul fast float %4697, %4697
  %5216 = fsub fast float 1.000000e+00, %5215
  %5217 = fmul fast float %5216, 0x3FB45F3060000000
  %5218 = fmul fast float %5214, %5214
  %5219 = fdiv fast float 1.000000e+00, %5218
  %5220 = fmul fast float %5217, %5219
  %5221 = fmul fast float %5220, %4694
  %5222 = fmul fast float %5220, %4695
  %5223 = fmul fast float %5220, %4696
  %5224 = fadd fast float %5221, %5210
  %5225 = fadd fast float %5222, %5211
  %5226 = fadd fast float %5223, %5212
  %5227 = fsub fast float 1.000000e+00, %5204
  %5228 = fsub fast float 1.000000e+00, %5205
  %5229 = fsub fast float 1.000000e+00, %5206
  %5230 = fmul fast float %5224, %5227
  %5231 = fmul fast float %5225, %5228
  %5232 = fmul fast float %5226, %5229
  br label %5233

; <label>:5233                                    ; preds = %5194, %5145
  %5234 = phi float [ %5171, %5145 ], [ %5230, %5194 ]
  %5235 = phi float [ %5172, %5145 ], [ %5231, %5194 ]
  %5236 = phi float [ %5173, %5145 ], [ %5232, %5194 ]
  %5237 = phi float [ %5160, %5145 ], [ %5204, %5194 ]
  %5238 = phi float [ %5160, %5145 ], [ %5205, %5194 ]
  %5239 = phi float [ %5160, %5145 ], [ %5206, %5194 ]
  br i1 %4726, label %5240, label %5438, !dx.controlflow.hints !148

; <label>:5240                                    ; preds = %5233
  %5241 = extractvalue %dx.types.CBufRet.f32 %5139, 0
  %5242 = fmul fast float %5241, %5141
  %5243 = fsub fast float %5136, %5234
  %5244 = fsub fast float %5137, %5235
  %5245 = fsub fast float %5138, %5236
  %5246 = fmul fast float %5242, %5243
  %5247 = fmul fast float %5242, %5244
  %5248 = fmul fast float %5242, %5245
  %5249 = fadd fast float %5246, %5234
  %5250 = fadd fast float %5247, %5235
  %5251 = fadd fast float %5248, %5236
  %5252 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5237)  ; FMax(a,b)
  %5253 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5238)  ; FMax(a,b)
  %5254 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5239)  ; FMax(a,b)
  %5255 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5135)  ; FMax(a,b)
  %5256 = call float @dx.op.binary.f32(i32 35, float %5134, float %5144)  ; FMax(a,b)
  %5257 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5256)  ; FMax(a,b)
  %5258 = fdiv fast float %5134, %5257
  %5259 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5260 = fdiv fast float %5144, %5257
  %5261 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5262 = fcmp fast une float %5255, 1.000000e+00
  br i1 %5262, label %5263, label %5276, !dx.controlflow.hints !149

; <label>:5263                                    ; preds = %5240
  %5264 = call float @dx.op.unary.f32(i32 23, float %5255)  ; Log(value)
  %5265 = fmul fast float %5264, 0x3FE62E4300000000
  %5266 = fmul fast float %5136, %5265
  %5267 = fsub fast float -0.000000e+00, %5266
  %5268 = fmul fast float %5137, %5265
  %5269 = fsub fast float -0.000000e+00, %5268
  %5270 = fmul fast float %5138, %5265
  %5271 = fsub fast float -0.000000e+00, %5270
  %5272 = fsub fast float 1.000000e+00, %5255
  %5273 = fdiv fast float %5267, %5272
  %5274 = fdiv fast float %5269, %5272
  %5275 = fdiv fast float %5271, %5272
  br label %5276

; <label>:5276                                    ; preds = %5263, %5240
  %5277 = phi float [ %5273, %5263 ], [ %5136, %5240 ]
  %5278 = phi float [ %5274, %5263 ], [ %5137, %5240 ]
  %5279 = phi float [ %5275, %5263 ], [ %5138, %5240 ]
  %5280 = phi float [ %5265, %5263 ], [ 0.000000e+00, %5240 ]
  %5281 = fcmp fast une float %5252, 1.000000e+00
  br i1 %5281, label %5282, label %5289, !dx.controlflow.hints !150

; <label>:5282                                    ; preds = %5276
  %5283 = call float @dx.op.unary.f32(i32 23, float %5252)  ; Log(value)
  %5284 = fmul fast float %5283, 0x3FE62E4300000000
  %5285 = fmul fast float %5249, %5284
  %5286 = fsub fast float -0.000000e+00, %5285
  %5287 = fsub fast float 1.000000e+00, %5252
  %5288 = fdiv fast float %5286, %5287
  br label %5289

; <label>:5289                                    ; preds = %5282, %5276
  %5290 = phi float [ %5288, %5282 ], [ %5249, %5276 ]
  %5291 = phi float [ %5284, %5282 ], [ 0.000000e+00, %5276 ]
  %5292 = fcmp fast une float %5253, 1.000000e+00
  br i1 %5292, label %5293, label %5300, !dx.controlflow.hints !150

; <label>:5293                                    ; preds = %5289
  %5294 = call float @dx.op.unary.f32(i32 23, float %5253)  ; Log(value)
  %5295 = fmul fast float %5294, 0x3FE62E4300000000
  %5296 = fmul fast float %5250, %5295
  %5297 = fsub fast float -0.000000e+00, %5296
  %5298 = fsub fast float 1.000000e+00, %5253
  %5299 = fdiv fast float %5297, %5298
  br label %5300

; <label>:5300                                    ; preds = %5293, %5289
  %5301 = phi float [ %5299, %5293 ], [ %5250, %5289 ]
  %5302 = phi float [ %5295, %5293 ], [ 0.000000e+00, %5289 ]
  %5303 = fcmp fast une float %5254, 1.000000e+00
  br i1 %5303, label %5304, label %5311, !dx.controlflow.hints !150

; <label>:5304                                    ; preds = %5300
  %5305 = call float @dx.op.unary.f32(i32 23, float %5254)  ; Log(value)
  %5306 = fmul fast float %5305, 0x3FE62E4300000000
  %5307 = fmul fast float %5251, %5306
  %5308 = fsub fast float -0.000000e+00, %5307
  %5309 = fsub fast float 1.000000e+00, %5254
  %5310 = fdiv fast float %5308, %5309
  br label %5311

; <label>:5311                                    ; preds = %5304, %5300
  %5312 = phi float [ %5310, %5304 ], [ %5251, %5300 ]
  %5313 = phi float [ %5306, %5304 ], [ 0.000000e+00, %5300 ]
  %5314 = fmul fast float %5277, %5261
  %5315 = fmul fast float %5278, %5261
  %5316 = fmul fast float %5279, %5261
  %5317 = fmul fast float %5280, %5261
  %5318 = fmul fast float %5290, %5259
  %5319 = fmul fast float %5301, %5259
  %5320 = fmul fast float %5312, %5259
  %5321 = fmul fast float %5291, %5259
  %5322 = fmul fast float %5302, %5259
  %5323 = fmul fast float %5313, %5259
  %5324 = fadd fast float %5318, %5314
  %5325 = fadd fast float %5319, %5315
  %5326 = fadd fast float %5320, %5316
  %5327 = fadd fast float %5321, %5317
  %5328 = fadd fast float %5322, %5317
  %5329 = fadd fast float %5323, %5317
  %5330 = fcmp fast une float %5327, 0.000000e+00
  br i1 %5330, label %5331, label %5338, !dx.controlflow.hints !151

; <label>:5331                                    ; preds = %5311
  %5332 = fmul fast float %5327, 0x3FF7154760000000
  %5333 = call float @dx.op.unary.f32(i32 21, float %5332)  ; Exp(value)
  %5334 = fsub fast float 1.000000e+00, %5333
  %5335 = fmul fast float %5324, %5334
  %5336 = fsub fast float -0.000000e+00, %5335
  %5337 = fdiv fast float %5336, %5327
  br label %5338

; <label>:5338                                    ; preds = %5331, %5311
  %5339 = phi float [ %5333, %5331 ], [ 1.000000e+00, %5311 ]
  %5340 = phi float [ %5337, %5331 ], [ %5324, %5311 ]
  %5341 = fcmp fast une float %5328, 0.000000e+00
  br i1 %5341, label %5342, label %5349, !dx.controlflow.hints !151

; <label>:5342                                    ; preds = %5338
  %5343 = fmul fast float %5328, 0x3FF7154760000000
  %5344 = call float @dx.op.unary.f32(i32 21, float %5343)  ; Exp(value)
  %5345 = fsub fast float 1.000000e+00, %5344
  %5346 = fmul fast float %5325, %5345
  %5347 = fsub fast float -0.000000e+00, %5346
  %5348 = fdiv fast float %5347, %5328
  br label %5349

; <label>:5349                                    ; preds = %5342, %5338
  %5350 = phi float [ %5344, %5342 ], [ 1.000000e+00, %5338 ]
  %5351 = phi float [ %5348, %5342 ], [ %5325, %5338 ]
  %5352 = fcmp fast une float %5329, 0.000000e+00
  br i1 %5352, label %5353, label %5360, !dx.controlflow.hints !151

; <label>:5353                                    ; preds = %5349
  %5354 = fmul fast float %5329, 0x3FF7154760000000
  %5355 = call float @dx.op.unary.f32(i32 21, float %5354)  ; Exp(value)
  %5356 = fsub fast float 1.000000e+00, %5355
  %5357 = fmul fast float %5326, %5356
  %5358 = fsub fast float -0.000000e+00, %5357
  %5359 = fdiv fast float %5358, %5329
  br label %5360

; <label>:5360                                    ; preds = %5353, %5349
  %5361 = phi float [ %5355, %5353 ], [ 1.000000e+00, %5349 ]
  %5362 = phi float [ %5359, %5353 ], [ %5326, %5349 ]
  %5363 = fcmp fast ogt float %5259, %5261
  br i1 %5363, label %5364, label %5384

; <label>:5364                                    ; preds = %5360
  %5365 = fsub fast float 1.000000e+00, %5261
  %5366 = fmul fast float %5277, %5365
  %5367 = fmul fast float %5278, %5365
  %5368 = fmul fast float %5279, %5365
  %5369 = fmul fast float %5280, %5365
  %5370 = fcmp fast une float %5369, 0.000000e+00
  br i1 %5370, label %5371, label %5422, !dx.controlflow.hints !152

; <label>:5371                                    ; preds = %5364
  %5372 = fmul fast float %5369, 0x3FF7154760000000
  %5373 = call float @dx.op.unary.f32(i32 21, float %5372)  ; Exp(value)
  %5374 = fsub fast float 1.000000e+00, %5373
  %5375 = fmul fast float %5366, %5374
  %5376 = fsub fast float -0.000000e+00, %5375
  %5377 = fmul fast float %5367, %5374
  %5378 = fsub fast float -0.000000e+00, %5377
  %5379 = fmul fast float %5368, %5374
  %5380 = fsub fast float -0.000000e+00, %5379
  %5381 = fdiv fast float %5376, %5369
  %5382 = fdiv fast float %5378, %5369
  %5383 = fdiv fast float %5380, %5369
  br label %5422

; <label>:5384                                    ; preds = %5360
  %5385 = fsub fast float 1.000000e+00, %5259
  %5386 = fmul fast float %5290, %5385
  %5387 = fmul fast float %5301, %5385
  %5388 = fmul fast float %5312, %5385
  %5389 = fmul fast float %5291, %5385
  %5390 = fmul fast float %5302, %5385
  %5391 = fmul fast float %5313, %5385
  %5392 = fcmp fast une float %5389, 0.000000e+00
  br i1 %5392, label %5393, label %5400, !dx.controlflow.hints !151

; <label>:5393                                    ; preds = %5384
  %5394 = fmul fast float %5389, 0x3FF7154760000000
  %5395 = call float @dx.op.unary.f32(i32 21, float %5394)  ; Exp(value)
  %5396 = fsub fast float 1.000000e+00, %5395
  %5397 = fmul fast float %5386, %5396
  %5398 = fsub fast float -0.000000e+00, %5397
  %5399 = fdiv fast float %5398, %5389
  br label %5400

; <label>:5400                                    ; preds = %5393, %5384
  %5401 = phi float [ %5399, %5393 ], [ %5386, %5384 ]
  %5402 = phi float [ %5395, %5393 ], [ 1.000000e+00, %5384 ]
  %5403 = fcmp fast une float %5390, 0.000000e+00
  br i1 %5403, label %5404, label %5411, !dx.controlflow.hints !151

; <label>:5404                                    ; preds = %5400
  %5405 = fmul fast float %5390, 0x3FF7154760000000
  %5406 = call float @dx.op.unary.f32(i32 21, float %5405)  ; Exp(value)
  %5407 = fsub fast float 1.000000e+00, %5406
  %5408 = fmul fast float %5387, %5407
  %5409 = fsub fast float -0.000000e+00, %5408
  %5410 = fdiv fast float %5409, %5390
  br label %5411

; <label>:5411                                    ; preds = %5404, %5400
  %5412 = phi float [ %5410, %5404 ], [ %5387, %5400 ]
  %5413 = phi float [ %5406, %5404 ], [ 1.000000e+00, %5400 ]
  %5414 = fcmp fast une float %5391, 0.000000e+00
  br i1 %5414, label %5415, label %5422, !dx.controlflow.hints !151

; <label>:5415                                    ; preds = %5411
  %5416 = fmul fast float %5391, 0x3FF7154760000000
  %5417 = call float @dx.op.unary.f32(i32 21, float %5416)  ; Exp(value)
  %5418 = fsub fast float 1.000000e+00, %5417
  %5419 = fmul fast float %5388, %5418
  %5420 = fsub fast float -0.000000e+00, %5419
  %5421 = fdiv fast float %5420, %5391
  br label %5422

; <label>:5422                                    ; preds = %5415, %5411, %5371, %5364
  %5423 = phi float [ %5421, %5415 ], [ %5383, %5371 ], [ %5368, %5364 ], [ %5388, %5411 ]
  %5424 = phi float [ %5412, %5415 ], [ %5382, %5371 ], [ %5367, %5364 ], [ %5412, %5411 ]
  %5425 = phi float [ %5401, %5415 ], [ %5381, %5371 ], [ %5366, %5364 ], [ %5401, %5411 ]
  %5426 = phi float [ %5417, %5415 ], [ %5373, %5371 ], [ 1.000000e+00, %5364 ], [ 1.000000e+00, %5411 ]
  %5427 = phi float [ %5413, %5415 ], [ %5373, %5371 ], [ 1.000000e+00, %5364 ], [ %5413, %5411 ]
  %5428 = phi float [ %5402, %5415 ], [ %5373, %5371 ], [ 1.000000e+00, %5364 ], [ %5402, %5411 ]
  %5429 = fmul fast float %5428, %5340
  %5430 = fmul fast float %5427, %5351
  %5431 = fmul fast float %5426, %5362
  %5432 = fadd fast float %5429, %5425
  %5433 = fadd fast float %5430, %5424
  %5434 = fadd fast float %5431, %5423
  %5435 = fmul fast float %5428, %5339
  %5436 = fmul fast float %5427, %5350
  %5437 = fmul fast float %5426, %5361
  br label %5438

; <label>:5438                                    ; preds = %5422, %5233
  %5439 = phi float [ %5437, %5422 ], [ %5239, %5233 ]
  %5440 = phi float [ %5436, %5422 ], [ %5238, %5233 ]
  %5441 = phi float [ %5435, %5422 ], [ %5237, %5233 ]
  %5442 = phi float [ %5434, %5422 ], [ %5236, %5233 ]
  %5443 = phi float [ %5433, %5422 ], [ %5235, %5233 ]
  %5444 = phi float [ %5432, %5422 ], [ %5234, %5233 ]
  %5445 = fmul fast float %5444, %4388
  %5446 = fmul fast float %5443, %4388
  %5447 = fmul fast float %5442, %4388
  %5448 = fmul fast float %5441, %4681
  %5449 = call float @dx.op.dot3.f32(i32 55, float %5441, float %5440, float %5439, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5450 = call float @dx.op.dot3.f32(i32 55, float %5445, float %5446, float %5447, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5451 = select i1 %191, float %5449, float %5441
  %5452 = select i1 %191, float %5449, float %5440
  %5453 = select i1 %191, float 1.000000e+00, float %5439
  %5454 = select i1 %191, float %5450, float %5445
  %5455 = select i1 %191, float 0.000000e+00, float %5446
  %5456 = select i1 %191, float 0.000000e+00, float %5447
  %5457 = fmul fast float %5451, %4675
  %5458 = fmul fast float %5452, %4676
  %5459 = fmul fast float %5453, %4677
  %5460 = fadd fast float %5457, %5454
  %5461 = fadd fast float %5458, %5455
  %5462 = fadd fast float %5456, %5459
  %5463 = fmul fast float %5451, %4678
  %5464 = fmul fast float %5452, %4679
  %5465 = fmul fast float %5453, %4680
  %5466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5467 = extractvalue %dx.types.CBufRet.i32 %5466, 0
  %5468 = icmp eq i32 %5467, 0
  br i1 %5468, label %5836, label %5469, !dx.controlflow.hints !153

; <label>:5469                                    ; preds = %5438
  %5470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5471 = extractvalue %dx.types.CBufRet.f32 %5470, 2
  %5472 = extractvalue %dx.types.CBufRet.f32 %5470, 3
  %5473 = fmul fast float %5471, %82
  %5474 = fmul fast float %5472, %83
  %5475 = fmul fast float %5473, 2.000000e+00
  %5476 = fmul fast float %5474, 2.000000e+00
  %5477 = fsub fast float 1.000000e+00, %5475
  %5478 = fsub fast float 1.000000e+00, %5476
  %5479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5480 = extractvalue %dx.types.CBufRet.f32 %5479, 0
  %5481 = extractvalue %dx.types.CBufRet.f32 %5479, 1
  %5482 = extractvalue %dx.types.CBufRet.f32 %5479, 2
  %5483 = fmul fast float %5477, %5480
  %5484 = fmul fast float %5477, %5481
  %5485 = fmul fast float %5477, %5482
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  %5488 = extractvalue %dx.types.CBufRet.f32 %5486, 1
  %5489 = extractvalue %dx.types.CBufRet.f32 %5486, 2
  %5490 = fmul fast float %5478, %5487
  %5491 = fmul fast float %5478, %5488
  %5492 = fmul fast float %5478, %5489
  %5493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5494 = extractvalue %dx.types.CBufRet.f32 %5493, 0
  %5495 = extractvalue %dx.types.CBufRet.f32 %5493, 1
  %5496 = extractvalue %dx.types.CBufRet.f32 %5493, 2
  %5497 = fadd fast float %5490, %5494
  %5498 = fadd fast float %5497, %5483
  %5499 = fadd fast float %5491, %5495
  %5500 = fadd fast float %5499, %5484
  %5501 = fadd fast float %5492, %5496
  %5502 = fadd fast float %5501, %5485
  %5503 = fmul fast float %5498, %4674
  %5504 = fmul fast float %5500, %4674
  %5505 = fmul fast float %5502, %4674
  %5506 = fmul fast float %5503, %5503
  %5507 = fmul fast float %5504, %5504
  %5508 = fadd fast float %5506, %5507
  %5509 = fmul fast float %5505, %5505
  %5510 = fadd fast float %5508, %5509
  %5511 = call float @dx.op.unary.f32(i32 24, float %5510)  ; Sqrt(value)
  %5512 = extractvalue %dx.types.CBufRet.f32 %4399, 0
  %5513 = fsub fast float %5511, %5512
  %5514 = extractvalue %dx.types.CBufRet.f32 %4399, 2
  %5515 = fmul fast float %5513, %5514
  %5516 = call float @dx.op.unary.f32(i32 7, float %5515)  ; Saturate(value)
  %5517 = fadd fast float %5516, -5.000000e-01
  %5518 = fmul fast float %5517, 2.000000e+00
  %5519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %5520 = extractvalue %dx.types.CBufRet.f32 %5519, 2
  %5521 = call float @dx.op.binary.f32(i32 36, float %5520, float %5518)  ; FMin(a,b)
  %5522 = fsub fast float -0.000000e+00, %5520
  %5523 = fcmp fast ogt float %5521, %5522
  br i1 %5523, label %5524, label %5836, !dx.controlflow.hints !154

; <label>:5524                                    ; preds = %5469
  %5525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.f32 %5525, 3
  %5527 = fcmp fast ogt float %5526, 0.000000e+00
  br i1 %5527, label %5528, label %5603, !dx.controlflow.hints !155

; <label>:5528                                    ; preds = %5524
  %5529 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %5530 = extractvalue %dx.types.Dimensions %5529, 0
  %5531 = sitofp i32 %5530 to float
  %5532 = extractvalue %dx.types.Dimensions %5529, 1
  %5533 = sitofp i32 %5532 to float
  %5534 = fmul fast float %5473, %5531
  %5535 = fmul fast float %5474, %5533
  %5536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5537 = extractvalue %dx.types.CBufRet.f32 %5536, 1
  %5538 = fsub fast float -0.000000e+00, %5537
  %5539 = fptoui float %5538 to i32
  %5540 = fptoui float %5534 to i32
  %5541 = fptoui float %5535 to i32
  %5542 = and i32 %5539, 31
  %5543 = lshr i32 %5540, %5542
  %5544 = lshr i32 %5541, %5542
  %5545 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 %5539, i32 %5543, i32 %5544, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5546 = extractvalue %dx.types.ResRet.f32 %5545, 0
  %5547 = fcmp fast olt float %5546, -1.000000e+00
  %5548 = fcmp fast ogt float %5546, -1.000000e+00
  %5549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5550 = extractvalue %dx.types.CBufRet.f32 %5549, 1
  %5551 = select i1 %5548, float %5550, float 1.000000e+00
  %5552 = fadd fast float %5546, 1.000000e+00
  %5553 = fmul fast float %5551, %5552
  %5554 = call float @dx.op.unary.f32(i32 6, float %5553)  ; FAbs(value)
  %5555 = extractvalue %dx.types.CBufRet.f32 %5549, 3
  %5556 = fcmp fast oge float %5554, %5555
  %5557 = select i1 %5556, float 0x4197782600000000, float %5554
  %5558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %5559 = extractvalue %dx.types.CBufRet.f32 %5558, 0
  %5560 = extractvalue %dx.types.CBufRet.f32 %5558, 1
  %5561 = extractvalue %dx.types.CBufRet.f32 %5558, 2
  %5562 = select i1 %5547, float %5559, float %5480
  %5563 = select i1 %5547, float %5560, float %5481
  %5564 = select i1 %5547, float %5561, float %5482
  %5565 = fmul fast float %5562, %5477
  %5566 = fmul fast float %5563, %5477
  %5567 = fmul fast float %5564, %5477
  %5568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %5569 = extractvalue %dx.types.CBufRet.f32 %5568, 0
  %5570 = extractvalue %dx.types.CBufRet.f32 %5568, 1
  %5571 = extractvalue %dx.types.CBufRet.f32 %5568, 2
  %5572 = select i1 %5547, float %5569, float %5487
  %5573 = select i1 %5547, float %5570, float %5488
  %5574 = select i1 %5547, float %5571, float %5489
  %5575 = fmul fast float %5572, %5478
  %5576 = fmul fast float %5573, %5478
  %5577 = fmul fast float %5574, %5478
  %5578 = fadd fast float %5575, %5565
  %5579 = fadd fast float %5576, %5566
  %5580 = fadd fast float %5577, %5567
  %5581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %5582 = extractvalue %dx.types.CBufRet.f32 %5581, 0
  %5583 = extractvalue %dx.types.CBufRet.f32 %5581, 1
  %5584 = extractvalue %dx.types.CBufRet.f32 %5581, 2
  %5585 = select i1 %5547, float %5582, float %5494
  %5586 = select i1 %5547, float %5583, float %5495
  %5587 = select i1 %5547, float %5584, float %5496
  %5588 = fadd fast float %5578, %5585
  %5589 = fadd fast float %5579, %5586
  %5590 = fadd fast float %5580, %5587
  %5591 = fmul fast float %5588, %5557
  %5592 = fmul fast float %5589, %5557
  %5593 = fmul fast float %5590, %5557
  %5594 = fmul fast float %5591, %5591
  %5595 = fmul fast float %5592, %5592
  %5596 = fadd fast float %5594, %5595
  %5597 = fmul fast float %5593, %5593
  %5598 = fadd fast float %5596, %5597
  %5599 = call float @dx.op.unary.f32(i32 24, float %5598)  ; Sqrt(value)
  %5600 = fsub fast float %5599, %5512
  %5601 = fmul fast float %5600, %5514
  %5602 = call float @dx.op.unary.f32(i32 7, float %5601)  ; Saturate(value)
  br label %5603

; <label>:5603                                    ; preds = %5528, %5524
  %5604 = phi float [ %5602, %5528 ], [ 1.000000e+00, %5524 ]
  %5605 = fmul fast float %5521, 5.000000e-01
  %5606 = fadd fast float %5605, 5.000000e-01
  %5607 = call float @dx.op.unary.f32(i32 22, float %5606)  ; Frc(value)
  %5608 = call float @dx.op.unary.f32(i32 27, float %5607)  ; Round_ni(value)
  %5609 = call float @dx.op.unary.f32(i32 22, float %5607)  ; Frc(value)
  %5610 = fmul fast float %5609, 2.000000e+00
  %5611 = fadd fast float %5610, -1.000000e+00
  %5612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %38, float %5473, float %5474, float %5608, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5613 = extractvalue %dx.types.ResRet.f32 %5612, 0
  %5614 = extractvalue %dx.types.ResRet.f32 %5612, 1
  %5615 = extractvalue %dx.types.ResRet.f32 %5612, 2
  %5616 = extractvalue %dx.types.ResRet.f32 %5612, 3
  %5617 = fadd fast float %5613, -5.000000e-01
  %5618 = fadd fast float %5615, -5.000000e-01
  %5619 = fmul fast float %5617, 0xBFD5555560000000
  %5620 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5618, float %5619)  ; FMad(a,b,c)
  %5621 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5614, float 0.000000e+00)  ; FMad(a,b,c)
  %5622 = fadd fast float %5621, %5616
  %5623 = fmul fast float %5617, -7.500000e-01
  %5624 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5618, float %5623)  ; FMad(a,b,c)
  %5625 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5614, float 0.000000e+00)  ; FMad(a,b,c)
  %5626 = fadd fast float %5625, %5616
  %5627 = call float @dx.op.binary.f32(i32 35, float %5620, float -1.000000e+00)  ; FMax(a,b)
  %5628 = call float @dx.op.binary.f32(i32 35, float %5622, float -1.000000e+00)  ; FMax(a,b)
  %5629 = call float @dx.op.binary.f32(i32 35, float %5624, float -1.000000e+00)  ; FMax(a,b)
  %5630 = call float @dx.op.binary.f32(i32 35, float %5626, float -1.000000e+00)  ; FMax(a,b)
  %5631 = call float @dx.op.binary.f32(i32 36, float %5627, float 1.000000e+00)  ; FMin(a,b)
  %5632 = call float @dx.op.binary.f32(i32 36, float %5628, float 1.000000e+00)  ; FMin(a,b)
  %5633 = call float @dx.op.binary.f32(i32 36, float %5629, float 1.000000e+00)  ; FMin(a,b)
  %5634 = call float @dx.op.binary.f32(i32 36, float %5630, float 1.000000e+00)  ; FMin(a,b)
  %5635 = fcmp fast olt float %5631, 0x3FEFFF8020000000
  br i1 %5635, label %5636, label %5751, !dx.controlflow.hints !156

; <label>:5636                                    ; preds = %5603
  %5637 = extractvalue %dx.types.CBufRet.f32 %5519, 3
  %5638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %5639 = extractvalue %dx.types.CBufRet.f32 %5638, 0
  %5640 = extractvalue %dx.types.CBufRet.f32 %5638, 1
  %5641 = extractvalue %dx.types.CBufRet.f32 %5638, 2
  %5642 = extractvalue %dx.types.CBufRet.f32 %5638, 3
  %5643 = fsub fast float %5639, %5631
  %5644 = fsub fast float %5640, %5632
  %5645 = fsub fast float %5641, %5633
  %5646 = fsub fast float %5642, %5634
  %5647 = fmul fast float %5643, %5637
  %5648 = fmul fast float %5644, %5637
  %5649 = fmul fast float %5645, %5637
  %5650 = fmul fast float %5646, %5637
  %5651 = fadd fast float %5647, %5631
  %5652 = fadd fast float %5648, %5632
  %5653 = fsub fast float -0.000000e+00, %5652
  %5654 = fadd fast float %5649, %5633
  %5655 = fadd fast float %5650, %5634
  %5656 = fmul fast float %5651, %5651
  %5657 = fsub fast float %5652, %5656
  %5658 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5657)  ; FMax(a,b)
  %5659 = fdiv fast float 1.000000e+00, %5658
  %5660 = fmul fast float %5652, %5651
  %5661 = fsub fast float %5654, %5660
  %5662 = fsub fast float %5611, %5651
  %5663 = fmul fast float %5611, %5611
  %5664 = fsub fast float %5663, %5652
  %5665 = fmul fast float %5662, %5659
  %5666 = fmul fast float %5665, %5661
  %5667 = fsub fast float %5664, %5666
  %5668 = fmul fast float %5652, %5652
  %5669 = fsub fast float %5655, %5668
  %5670 = fmul fast float %5661, %5661
  %5671 = fmul fast float %5670, %5659
  %5672 = fsub fast float %5669, %5671
  %5673 = fdiv fast float %5667, %5672
  %5674 = fmul fast float %5661, %5673
  %5675 = fsub fast float %5662, %5674
  %5676 = fmul fast float %5675, %5659
  %5677 = fmul fast float %5676, %5651
  %5678 = fsub fast float 1.000000e+00, %5677
  %5679 = fmul fast float %5652, %5673
  %5680 = fsub fast float %5678, %5679
  %5681 = fmul fast float %5676, %5676
  %5682 = fmul fast float %5673, 4.000000e+00
  %5683 = fmul fast float %5682, %5680
  %5684 = fsub fast float %5681, %5683
  %5685 = call float @dx.op.unary.f32(i32 24, float %5684)  ; Sqrt(value)
  %5686 = fcmp fast oge float %5676, 0.000000e+00
  %5687 = fsub fast float -0.000000e+00, %5685
  %5688 = select i1 %5686, float %5687, float %5685
  %5689 = fsub fast float %5688, %5676
  %5690 = fdiv fast float %5689, %5673
  %5691 = fdiv fast float %5680, %5689
  %5692 = fmul fast float %5690, 5.000000e-01
  %5693 = fmul fast float %5691, 2.000000e+00
  %5694 = select i1 %5686, float %5692, float %5693
  %5695 = select i1 %5686, float %5693, float %5692
  %5696 = call float @dx.op.binary.f32(i32 35, float %5694, float %5695)  ; FMax(a,b)
  %5697 = call float @dx.op.binary.f32(i32 36, float %5694, float %5695)  ; FMin(a,b)
  %5698 = fcmp fast ogt float %5611, %5697
  br i1 %5698, label %5699, label %5709

; <label>:5699                                    ; preds = %5636
  %5700 = fsub fast float %5611, %5697
  %5701 = fsub fast float %5696, %5697
  %5702 = fmul fast float %5700, %5701
  %5703 = fmul fast float %5696, %5611
  %5704 = fadd fast float %5696, %5611
  %5705 = fmul fast float %5704, %5651
  %5706 = fadd fast float %5703, %5652
  %5707 = fsub fast float %5706, %5705
  %5708 = fdiv fast float %5707, %5702
  br label %5709

; <label>:5709                                    ; preds = %5699, %5636
  %5710 = phi float [ %5708, %5699 ], [ 0.000000e+00, %5636 ]
  %5711 = fcmp fast ogt float %5611, %5696
  %5712 = fsub fast float %5611, %5696
  br i1 %5711, label %5713, label %5723

; <label>:5713                                    ; preds = %5709
  %5714 = fsub fast float %5696, %5697
  %5715 = fmul fast float %5714, %5712
  %5716 = fmul fast float %5697, %5611
  %5717 = fadd fast float %5697, %5611
  %5718 = fmul fast float %5717, %5651
  %5719 = fsub fast float %5653, %5716
  %5720 = fadd fast float %5719, %5718
  %5721 = fdiv fast float %5720, %5715
  %5722 = fadd fast float %5721, %5710
  br label %5723

; <label>:5723                                    ; preds = %5713, %5709
  %5724 = phi float [ %5722, %5713 ], [ %5710, %5709 ]
  %5725 = fsub fast float %5611, %5697
  %5726 = fmul fast float %5725, %5712
  %5727 = fmul fast float %5697, %5696
  %5728 = fadd fast float %5697, %5696
  %5729 = fmul fast float %5728, %5651
  %5730 = fadd fast float %5727, %5652
  %5731 = fsub fast float %5730, %5729
  %5732 = fdiv fast float %5731, %5726
  %5733 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5734 = fcmp fast oeq float %4400, 0.000000e+00
  %5735 = extractvalue %dx.types.CBufRet.f32 %5519, 0
  %5736 = fcmp fast oeq float %5735, 0.000000e+00
  %5737 = or i1 %5734, %5736
  %5738 = fmul fast float %5735, 2.000000e+00
  %5739 = fadd fast float %5520, %5521
  %5740 = fdiv fast float %5739, %5738
  %5741 = call float @dx.op.unary.f32(i32 7, float %5740)  ; Saturate(value)
  %5742 = fmul fast float %5741, 2.000000e+00
  %5743 = fsub fast float 3.000000e+00, %5742
  %5744 = fmul fast float %5741, %5741
  %5745 = fmul fast float %5744, %5743
  %5746 = select i1 %5737, float 1.000000e+00, float %5745
  %5747 = fmul fast float %5732, %4400
  %5748 = fadd fast float %5733, %5747
  %5749 = call float @dx.op.unary.f32(i32 7, float %5748)  ; Saturate(value)
  %5750 = fmul fast float %5746, %5749
  br label %5751

; <label>:5751                                    ; preds = %5723, %5603
  %5752 = phi float [ %5750, %5723 ], [ 0.000000e+00, %5603 ]
  %5753 = fsub fast float 1.000000e+00, %5752
  %5754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %38, float %5473, float %5474, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5755 = extractvalue %dx.types.ResRet.f32 %5754, 0
  %5756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %5757 = extractvalue %dx.types.CBufRet.i32 %5756, 2
  %5758 = icmp eq i32 %5757, 0
  br i1 %5758, label %5764, label %5759

; <label>:5759                                    ; preds = %5751
  %5760 = call float @dx.op.unary.f32(i32 7, float %5752)  ; Saturate(value)
  %5761 = fadd fast float %5755, -1.000000e+00
  %5762 = fmul fast float %5760, %5761
  %5763 = fadd fast float %5762, 1.000000e+00
  br label %5764

; <label>:5764                                    ; preds = %5759, %5751
  %5765 = phi float [ %5763, %5759 ], [ %5753, %5751 ]
  br i1 %5527, label %5766, label %5784

; <label>:5766                                    ; preds = %5764
  %5767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.f32 %5767, 1
  %5769 = fsub fast float %5604, %5768
  %5770 = call float @dx.op.unary.f32(i32 7, float %5769)  ; Saturate(value)
  %5771 = fsub fast float %5604, %5526
  %5772 = call float @dx.op.unary.f32(i32 7, float %5771)  ; Saturate(value)
  %5773 = fsub fast float %5770, %5772
  %5774 = fsub fast float %5606, %5772
  %5775 = fdiv fast float %5774, %5773
  %5776 = call float @dx.op.unary.f32(i32 7, float %5775)  ; Saturate(value)
  %5777 = fmul fast float %5776, 2.000000e+00
  %5778 = fsub fast float 3.000000e+00, %5777
  %5779 = fsub fast float %5755, %5765
  %5780 = fmul fast float %5776, %5776
  %5781 = fmul fast float %5780, %5779
  %5782 = fmul fast float %5781, %5778
  %5783 = fadd fast float %5782, %5765
  br label %5784

; <label>:5784                                    ; preds = %5766, %5764
  %5785 = phi float [ %5783, %5766 ], [ %5765, %5764 ]
  %5786 = call float @dx.op.binary.f32(i32 35, float %5755, float %5785)  ; FMax(a,b)
  %5787 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.i32 %5787, 2
  %5789 = and i32 %5788, 1
  %5790 = icmp eq i32 %5789, 0
  %5791 = fcmp fast une float %5786, 1.000000e+00
  %5792 = and i1 %5791, %5790
  br i1 %5792, label %5793, label %5812

; <label>:5793                                    ; preds = %5784
  %5794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %38, float %5473, float %5474, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5795 = extractvalue %dx.types.ResRet.f32 %5794, 0
  %5796 = extractvalue %dx.types.ResRet.f32 %5794, 1
  %5797 = extractvalue %dx.types.ResRet.f32 %5794, 2
  %5798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5799 = extractvalue %dx.types.CBufRet.f32 %5798, 1
  %5800 = fmul fast float %5799, %5795
  %5801 = fmul fast float %5799, %5796
  %5802 = fmul fast float %5799, %5797
  %5803 = fcmp fast ogt float %5755, 0x3FEFFF2E40000000
  %5804 = fsub fast float 1.000000e+00, %5786
  %5805 = fsub fast float 1.000000e+00, %5755
  %5806 = fdiv fast float %5804, %5805
  %5807 = call float @dx.op.unary.f32(i32 7, float %5806)  ; Saturate(value)
  %5808 = select i1 %5803, float 0.000000e+00, float %5807
  %5809 = fmul fast float %5800, %5808
  %5810 = fmul fast float %5801, %5808
  %5811 = fmul fast float %5802, %5808
  br label %5812

; <label>:5812                                    ; preds = %5793, %5784
  %5813 = phi float [ 0.000000e+00, %5784 ], [ %5809, %5793 ]
  %5814 = phi float [ 0.000000e+00, %5784 ], [ %5810, %5793 ]
  %5815 = phi float [ 0.000000e+00, %5784 ], [ %5811, %5793 ]
  %5816 = fmul fast float %5813, %4388
  %5817 = fmul fast float %5814, %4388
  %5818 = fmul fast float %5815, %4388
  %5819 = fmul fast float %5786, %5448
  %5820 = call float @dx.op.dot3.f32(i32 55, float %5786, float %5786, float %5786, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5821 = call float @dx.op.dot3.f32(i32 55, float %5816, float %5817, float %5818, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5822 = select i1 %191, float %5820, float %5786
  %5823 = select i1 %191, float 1.000000e+00, float %5786
  %5824 = select i1 %191, float %5821, float %5816
  %5825 = select i1 %191, float 0.000000e+00, float %5817
  %5826 = select i1 %191, float 0.000000e+00, float %5818
  %5827 = fmul fast float %5822, %5460
  %5828 = fmul fast float %5822, %5461
  %5829 = fmul fast float %5823, %5462
  %5830 = fadd fast float %5827, %5824
  %5831 = fadd fast float %5828, %5825
  %5832 = fadd fast float %5826, %5829
  %5833 = fmul fast float %5822, %5463
  %5834 = fmul fast float %5822, %5464
  %5835 = fmul fast float %5823, %5465
  br label %5836

; <label>:5836                                    ; preds = %5812, %5469, %5438, %4670
  %5837 = phi float [ %4675, %4670 ], [ %5460, %5438 ], [ %5830, %5812 ], [ %5460, %5469 ]
  %5838 = phi float [ %4676, %4670 ], [ %5461, %5438 ], [ %5831, %5812 ], [ %5461, %5469 ]
  %5839 = phi float [ %4677, %4670 ], [ %5462, %5438 ], [ %5832, %5812 ], [ %5462, %5469 ]
  %5840 = phi float [ %4678, %4670 ], [ %5463, %5438 ], [ %5833, %5812 ], [ %5463, %5469 ]
  %5841 = phi float [ %4679, %4670 ], [ %5464, %5438 ], [ %5834, %5812 ], [ %5464, %5469 ]
  %5842 = phi float [ %4680, %4670 ], [ %5465, %5438 ], [ %5835, %5812 ], [ %5465, %5469 ]
  %5843 = phi float [ %4681, %4670 ], [ %5448, %5438 ], [ %5819, %5812 ], [ %5448, %5469 ]
  %5844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5845 = extractvalue %dx.types.CBufRet.f32 %5844, 2
  %5846 = extractvalue %dx.types.CBufRet.f32 %5844, 3
  %5847 = fmul fast float %5845, %82
  %5848 = fmul fast float %5846, %83
  %5849 = call float @dx.op.unary.f32(i32 7, float %5847)  ; Saturate(value)
  %5850 = call float @dx.op.unary.f32(i32 7, float %5848)  ; Saturate(value)
  %5851 = select i1 %4410, i32 2, i32 0
  %5852 = or i32 %5851, 1
  %5853 = uitofp i32 %5852 to float
  %5854 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %5849, float %5850, float %5853, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5855 = extractvalue %dx.types.ResRet.f32 %5854, 0
  %5856 = extractvalue %dx.types.ResRet.f32 %5854, 1
  %5857 = extractvalue %dx.types.ResRet.f32 %5854, 2
  %5858 = extractvalue %dx.types.ResRet.f32 %5854, 3
  %5859 = add nuw nsw i32 %5851, 2
  %5860 = uitofp i32 %5859 to float
  %5861 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %5849, float %5850, float %5860, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5862 = extractvalue %dx.types.ResRet.f32 %5861, 0
  %5863 = extractvalue %dx.types.ResRet.f32 %5861, 1
  %5864 = extractvalue %dx.types.ResRet.f32 %5861, 2
  %5865 = extractvalue %dx.types.ResRet.f32 %5861, 3
  %5866 = call float @dx.op.binary.f32(i32 35, float %5856, float %5857)  ; FMax(a,b)
  %5867 = call float @dx.op.binary.f32(i32 35, float %5855, float %5866)  ; FMax(a,b)
  %5868 = call float @dx.op.binary.f32(i32 35, float %5867, float %5858)  ; FMax(a,b)
  %5869 = call float @dx.op.binary.f32(i32 36, float %5863, float %5864)  ; FMin(a,b)
  %5870 = call float @dx.op.binary.f32(i32 36, float %5862, float %5869)  ; FMin(a,b)
  %5871 = call float @dx.op.binary.f32(i32 36, float %5870, float %5865)  ; FMin(a,b)
  %5872 = fmul fast float %5868, 2.550000e+02
  %5873 = fadd fast float %5872, 0x3F70101020000000
  %5874 = fptoui float %5873 to i32
  %5875 = fmul fast float %5871, 2.550000e+02
  %5876 = fadd fast float %5875, 0x3F70101020000000
  %5877 = fptoui float %5876 to i32
  %5878 = icmp ult i32 %5874, %5877
  br i1 %5878, label %5879, label %6048

; <label>:5879                                    ; preds = %5836
  %5880 = fcmp fast ogt float %69, 9.843750e-01
  %5881 = fadd fast float %4674, -4.000000e+00
  %5882 = select i1 %5880, float -4.000000e+00, float %5881
  %5883 = call float @dx.op.binary.f32(i32 35, float %5882, float 0.000000e+00)  ; FMax(a,b)
  %5884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5884, 0
  %5886 = fadd fast float %5885, %5883
  %5887 = extractvalue %dx.types.CBufRet.f32 %5884, 2
  %5888 = fmul fast float %5886, %5887
  %5889 = call float @dx.op.unary.f32(i32 23, float %5888)  ; Log(value)
  %5890 = extractvalue %dx.types.CBufRet.f32 %5884, 3
  %5891 = fmul fast float %5890, %5889
  %5892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5893 = extractvalue %dx.types.CBufRet.f32 %5892, 2
  %5894 = fmul fast float %5891, %5893
  %5895 = call float @dx.op.unary.f32(i32 7, float %5894)  ; Saturate(value)
  %5896 = uitofp i32 %5874 to float
  %5897 = uitofp i32 %5877 to float
  %5898 = fadd fast float %5896, 5.000000e-01
  %5899 = fadd fast float %5897, 5.000000e-01
  %5900 = fmul fast float %5893, %5898
  %5901 = fmul fast float %5893, %5899
  %5902 = fadd fast float %5900, 0x3F0FFB4800000000
  %5903 = fadd fast float %5901, 0xBF0FFB4800000000
  %5904 = call float @dx.op.binary.f32(i32 35, float %5895, float %5902)  ; FMax(a,b)
  %5905 = call float @dx.op.binary.f32(i32 36, float %5904, float %5903)  ; FMin(a,b)
  %5906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5907 = extractvalue %dx.types.CBufRet.f32 %5906, 1
  %5908 = extractvalue %dx.types.CBufRet.f32 %5906, 2
  %5909 = extractvalue %dx.types.CBufRet.f32 %5906, 0
  %5910 = select i1 %4410, float %5909, float 0.000000e+00
  %5911 = fmul fast float %5907, %5905
  %5912 = fadd fast float %5910, %5911
  %5913 = fadd fast float %5910, %5908
  %5914 = fsub fast float %5907, %5908
  %5915 = fadd fast float %5914, %5910
  %5916 = call float @dx.op.binary.f32(i32 35, float %5912, float %5913)  ; FMax(a,b)
  %5917 = call float @dx.op.binary.f32(i32 36, float %5916, float %5915)  ; FMin(a,b)
  %5918 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %36, float %5849, float %5850, float %5917, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5919 = extractvalue %dx.types.ResRet.f32 %5918, 0
  %5920 = extractvalue %dx.types.ResRet.f32 %5918, 1
  %5921 = extractvalue %dx.types.ResRet.f32 %5918, 2
  %5922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5923 = extractvalue %dx.types.CBufRet.i32 %5922, 0
  %5924 = extractvalue %dx.types.CBufRet.i32 %5922, 1
  %5925 = uitofp i32 %5923 to float
  %5926 = uitofp i32 %5924 to float
  %5927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5928 = extractvalue %dx.types.CBufRet.f32 %5927, 0
  %5929 = extractvalue %dx.types.CBufRet.f32 %5927, 1
  %5930 = fmul fast float %5925, %5849
  %5931 = fmul fast float %5926, %5850
  %5932 = fadd fast float %5930, -5.000000e-01
  %5933 = fadd fast float %5931, -5.000000e-01
  %5934 = call float @dx.op.unary.f32(i32 22, float %5932)  ; Frc(value)
  %5935 = call float @dx.op.unary.f32(i32 22, float %5933)  ; Frc(value)
  %5936 = fmul fast float %5934, %5934
  %5937 = fmul fast float %5936, %5934
  %5938 = fsub fast float 3.000000e+00, %5934
  %5939 = fmul fast float %5936, %5938
  %5940 = fmul fast float %5934, 3.000000e+00
  %5941 = fmul fast float %5937, 3.000000e+00
  %5942 = fmul fast float %5936, 6.000000e+00
  %5943 = fsub fast float %5941, %5942
  %5944 = fadd fast float %5943, 4.000000e+00
  %5945 = fmul fast float %5944, 0x3FC5555560000000
  %5946 = fmul fast float %5937, -3.000000e+00
  %5947 = fadd fast float %5936, %5934
  %5948 = fmul fast float %5947, 3.000000e+00
  %5949 = fadd fast float %5946, 1.000000e+00
  %5950 = fadd fast float %5949, %5948
  %5951 = fmul fast float %5937, 0x3FC5555560000000
  %5952 = fmul fast float %5935, %5935
  %5953 = fmul fast float %5952, %5935
  %5954 = fsub fast float 3.000000e+00, %5935
  %5955 = fmul fast float %5952, %5954
  %5956 = fmul fast float %5935, 3.000000e+00
  %5957 = fmul fast float %5953, 3.000000e+00
  %5958 = fmul fast float %5952, 6.000000e+00
  %5959 = fsub fast float %5957, %5958
  %5960 = fadd fast float %5959, 4.000000e+00
  %5961 = fmul fast float %5960, 0x3FC5555560000000
  %5962 = fmul fast float %5953, -3.000000e+00
  %5963 = fadd fast float %5952, %5935
  %5964 = fmul fast float %5963, 3.000000e+00
  %5965 = fadd fast float %5962, 1.000000e+00
  %5966 = fadd fast float %5965, %5964
  %5967 = fmul fast float %5953, 0x3FC5555560000000
  %5968 = fadd fast float %5934, 1.000000e+00
  %5969 = fsub fast float 1.000000e+00, %5940
  %5970 = fadd fast float %5969, %5939
  %5971 = fadd fast float %5970, %5944
  %5972 = fmul fast float %5971, 0x3FC5555560000000
  %5973 = fdiv fast float %5945, %5972
  %5974 = fsub fast float %5968, %5973
  %5975 = fsub fast float 1.000000e+00, %5934
  %5976 = fadd fast float %5950, %5937
  %5977 = fmul fast float %5976, 0x3FC5555560000000
  %5978 = fdiv fast float %5951, %5977
  %5979 = fadd fast float %5975, %5978
  %5980 = fadd fast float %5935, 1.000000e+00
  %5981 = fsub fast float 1.000000e+00, %5956
  %5982 = fadd fast float %5981, %5955
  %5983 = fadd fast float %5982, %5960
  %5984 = fmul fast float %5983, 0x3FC5555560000000
  %5985 = fdiv fast float %5961, %5984
  %5986 = fsub fast float %5980, %5985
  %5987 = fsub fast float 1.000000e+00, %5935
  %5988 = fadd fast float %5966, %5953
  %5989 = fmul fast float %5988, 0x3FC5555560000000
  %5990 = fdiv fast float %5967, %5989
  %5991 = fadd fast float %5990, %5987
  %5992 = fmul fast float %5974, %5928
  %5993 = fsub fast float %5849, %5992
  %5994 = fmul fast float %5979, %5928
  %5995 = fadd fast float %5994, %5849
  %5996 = fmul fast float %5991, %5929
  %5997 = fadd fast float %5996, %5850
  %5998 = fmul fast float %5986, %5929
  %5999 = fsub fast float %5850, %5998
  %6000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %5993, float %5999, float %5917, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6001 = extractvalue %dx.types.ResRet.f32 %6000, 0
  %6002 = extractvalue %dx.types.ResRet.f32 %6000, 1
  %6003 = extractvalue %dx.types.ResRet.f32 %6000, 2
  %6004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %5995, float %5999, float %5917, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6005 = extractvalue %dx.types.ResRet.f32 %6004, 0
  %6006 = extractvalue %dx.types.ResRet.f32 %6004, 1
  %6007 = extractvalue %dx.types.ResRet.f32 %6004, 2
  %6008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %5993, float %5997, float %5917, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6009 = extractvalue %dx.types.ResRet.f32 %6008, 0
  %6010 = extractvalue %dx.types.ResRet.f32 %6008, 1
  %6011 = extractvalue %dx.types.ResRet.f32 %6008, 2
  %6012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %5995, float %5997, float %5917, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6013 = extractvalue %dx.types.ResRet.f32 %6012, 0
  %6014 = extractvalue %dx.types.ResRet.f32 %6012, 1
  %6015 = extractvalue %dx.types.ResRet.f32 %6012, 2
  %6016 = fsub fast float %6009, %6001
  %6017 = fsub fast float %6010, %6002
  %6018 = fsub fast float %6011, %6003
  %6019 = fmul fast float %6016, %5989
  %6020 = fmul fast float %6017, %5989
  %6021 = fmul fast float %6018, %5989
  %6022 = fadd fast float %6019, %6001
  %6023 = fadd fast float %6020, %6002
  %6024 = fadd fast float %6021, %6003
  %6025 = fsub fast float %6013, %6005
  %6026 = fsub fast float %6014, %6006
  %6027 = fsub fast float %6015, %6007
  %6028 = fmul fast float %6025, %5989
  %6029 = fmul fast float %6026, %5989
  %6030 = fmul fast float %6027, %5989
  %6031 = fsub fast float %6005, %6022
  %6032 = fadd fast float %6031, %6028
  %6033 = fsub fast float %6006, %6023
  %6034 = fadd fast float %6033, %6029
  %6035 = fsub fast float %6007, %6024
  %6036 = fadd fast float %6035, %6030
  %6037 = fmul fast float %6032, %5977
  %6038 = fmul fast float %6034, %5977
  %6039 = fmul fast float %6036, %5977
  %6040 = fadd fast float %6037, %6022
  %6041 = fadd fast float %6038, %6023
  %6042 = fadd fast float %6039, %6024
  %6043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6044 = extractvalue %dx.types.CBufRet.f32 %6043, 1
  %6045 = fmul fast float %6040, %6044
  %6046 = fmul fast float %6041, %6044
  %6047 = fmul fast float %6042, %6044
  br label %6048

; <label>:6048                                    ; preds = %5879, %5836
  %6049 = phi float [ %5919, %5879 ], [ 1.000000e+00, %5836 ]
  %6050 = phi float [ %5920, %5879 ], [ 1.000000e+00, %5836 ]
  %6051 = phi float [ %5921, %5879 ], [ 1.000000e+00, %5836 ]
  %6052 = phi float [ %6045, %5879 ], [ 0.000000e+00, %5836 ]
  %6053 = phi float [ %6046, %5879 ], [ 0.000000e+00, %5836 ]
  %6054 = phi float [ %6047, %5879 ], [ 0.000000e+00, %5836 ]
  %6055 = fmul fast float %6052, %4388
  %6056 = fmul fast float %6053, %4388
  %6057 = fmul fast float %6054, %4388
  %6058 = fmul fast float %6049, %5843
  %6059 = call float @dx.op.dot3.f32(i32 55, float %6049, float %6050, float %6051, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6060 = call float @dx.op.dot3.f32(i32 55, float %6055, float %6056, float %6057, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6061 = select i1 %191, float %6059, float %6049
  %6062 = select i1 %191, float %6059, float %6050
  %6063 = select i1 %191, float 1.000000e+00, float %6051
  %6064 = select i1 %191, float %6060, float %6055
  %6065 = select i1 %191, float 0.000000e+00, float %6056
  %6066 = select i1 %191, float 0.000000e+00, float %6057
  %6067 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6068 = extractvalue %dx.types.CBufRet.i32 %6067, 3
  %6069 = and i32 %6068, 3
  %6070 = icmp ne i32 %6069, 0
  %6071 = and i32 %6068, 4
  %6072 = icmp ne i32 %6071, 0
  %6073 = and i1 %6070, %6072
  %6074 = and i1 %191, %6073
  br i1 %6074, label %6075, label %6081

; <label>:6075                                    ; preds = %6048
  %6076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6077 = extractvalue %dx.types.CBufRet.f32 %6076, 1
  %6078 = fadd fast float %6058, -1.000000e+00
  %6079 = fmul fast float %6077, %6078
  %6080 = fadd fast float %6079, 1.000000e+00
  br label %6081

; <label>:6081                                    ; preds = %6075, %6048
  %6082 = phi float [ %6080, %6075 ], [ %6058, %6048 ]
  %6083 = fadd fast float %5840, %5837
  %6084 = fmul fast float %6061, %6083
  %6085 = fadd fast float %6084, %6064
  %6086 = fadd fast float %5841, %5838
  %6087 = fmul fast float %6062, %6086
  %6088 = fadd fast float %6087, %6065
  %6089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6090 = extractvalue %dx.types.CBufRet.f32 %6089, 0
  br i1 %191, label %6091, label %6114

; <label>:6091                                    ; preds = %6081
  %6092 = fadd fast float %6085, %6088
  %6093 = fmul fast float %6090, %6092
  %6094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6095 = extractvalue %dx.types.CBufRet.f32 %6094, 3
  %6096 = extractvalue %dx.types.CBufRet.f32 %4392, 1
  %6097 = fsub fast float %4397, %4391
  %6098 = fadd fast float %6097, %4398
  %6099 = fsub fast float %6098, %6096
  %6100 = extractvalue %dx.types.CBufRet.f32 %4392, 2
  %6101 = fmul fast float %6099, %6100
  %6102 = call float @dx.op.unary.f32(i32 7, float %6101)  ; Saturate(value)
  %6103 = fsub fast float %6102, %6095
  %6104 = fmul fast float %6103, %6082
  %6105 = fadd fast float %6104, %6095
  %6106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6107 = extractvalue %dx.types.CBufRet.f32 %6106, 0
  %6108 = fsub fast float %6105, %6107
  %6109 = fmul fast float %6108, 1.000000e+01
  %6110 = call float @dx.op.unary.f32(i32 7, float %6109)  ; Saturate(value)
  %6111 = fmul fast float %6110, %4387
  %6112 = fadd fast float %6111, %4388
  %6113 = fmul fast float %6112, %6105
  br label %6137

; <label>:6114                                    ; preds = %6081
  %6115 = fadd fast float %5842, %5839
  %6116 = fmul fast float %6063, %6115
  %6117 = fadd fast float %6116, %6066
  %6118 = fmul fast float %6090, %6085
  %6119 = fmul fast float %6090, %6088
  %6120 = fmul fast float %6090, %6117
  %6121 = call float @dx.op.binary.f32(i32 35, float %6119, float %6120)  ; FMax(a,b)
  %6122 = call float @dx.op.binary.f32(i32 35, float %6118, float %6121)  ; FMax(a,b)
  %6123 = call float @dx.op.binary.f32(i32 35, float %6122, float %4388)  ; FMax(a,b)
  %6124 = fcmp fast ugt float %6123, 0x3F10000000000000
  br i1 %6124, label %6126, label %6125

; <label>:6125                                    ; preds = %6114
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6126

; <label>:6126                                    ; preds = %6125, %6114
  %6127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %6128 = extractvalue %dx.types.ResRet.i32 %6127, 0
  %6129 = and i32 %6128, 32
  %6130 = icmp eq i32 %6129, 0
  br i1 %6130, label %6137, label %6131

; <label>:6131                                    ; preds = %6126
  %6132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6133 = extractvalue %dx.types.CBufRet.f32 %6132, 0
  %6134 = fmul fast float %6133, 0x3FE99999A0000000
  %6135 = fadd fast float %6133, %6118
  %6136 = fadd fast float %6134, %6120
  br label %6137

; <label>:6137                                    ; preds = %6131, %6126, %6091
  %6138 = phi float [ %6093, %6091 ], [ %6135, %6131 ], [ %6118, %6126 ]
  %6139 = phi float [ %6113, %6091 ], [ %6119, %6131 ], [ %6119, %6126 ]
  %6140 = phi float [ %6112, %6091 ], [ %6136, %6131 ], [ %6120, %6126 ]
  %6141 = phi float [ %6112, %6091 ], [ %4388, %6131 ], [ %4388, %6126 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6142 = call float @dx.op.binary.f32(i32 36, float %6138, float 3.225500e+04)  ; FMin(a,b)
  %6143 = call float @dx.op.binary.f32(i32 36, float %6139, float 3.225500e+04)  ; FMin(a,b)
  %6144 = call float @dx.op.binary.f32(i32 36, float %6140, float 3.225500e+04)  ; FMin(a,b)
  %6145 = call float @dx.op.binary.f32(i32 36, float %6141, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6142)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6143)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6144)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6145)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!56}
!dx.entryPoints = !{!57}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !45, !48}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !24}
!24 = !{i32 0, i32 5}
!25 = !{i32 17, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !32}
!32 = !{i32 0, i32 14}
!33 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!34 = !{i32 25, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!35 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!36 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!37 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!38 = !{i32 29, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!39 = !{i32 30, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!40 = !{i32 31, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!41 = !{i32 32, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!42 = !{i32 33, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !32}
!43 = !{i32 34, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!45 = !{!46, !47}
!46 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!47 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!48 = !{!49, !50, !51, !52, !53, !54, !55}
!49 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!50 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!51 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!52 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!53 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!54 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!55 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!56 = !{[31 x i32] [i32 29, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15]}
!57 = !{void ()* @ps_main, !"ps_main", !58, !4, !76}
!58 = !{!59, !74, null}
!59 = !{!60, !63, !65, !67, !68, !69, !70, !71, !73}
!60 = !{i32 0, !"SV_Position", i8 9, i8 3, !61, i8 4, i32 1, i8 4, i32 0, i8 0, !62}
!61 = !{i32 0}
!62 = !{i32 3, i32 15}
!63 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !61, i8 2, i32 1, i8 2, i32 1, i8 0, !64}
!64 = !{i32 3, i32 3}
!65 = !{i32 2, !"NORMAL", i8 9, i8 0, !61, i8 2, i32 1, i8 3, i32 2, i8 0, !66}
!66 = !{i32 3, i32 7}
!67 = !{i32 3, !"TANGENT", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 3, i8 0, !62}
!68 = !{i32 4, !"SH_RED", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 4, i8 0, !62}
!69 = !{i32 5, !"SH_GREEN", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 5, i8 0, !62}
!70 = !{i32 6, !"SH_BLUE", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 6, i8 0, !62}
!71 = !{i32 7, !"SV_IsFrontFace", i8 5, i8 13, !61, i8 1, i32 1, i8 1, i32 7, i8 0, !72}
!72 = !{i32 3, i32 1}
!73 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !61, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!74 = !{!75}
!75 = !{i32 0, !"SV_Target", i8 9, i8 16, !61, i8 0, i32 1, i8 4, i32 0, i8 0, !62}
!76 = !{i32 0, i64 16}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !79}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = !{!86, !86, i64 0}
!86 = !{!"int", !87, i64 0}
!87 = !{!"omnipotent char", !88, i64 0}
!88 = !{!"Simple C/C++ TBAA"}
!89 = !{!90, !92, !94, !96}
!90 = distinct !{!90, !91, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!91 = distinct !{!91, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!92 = distinct !{!92, !93, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!93 = distinct !{!93, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!94 = distinct !{!94, !95, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!95 = distinct !{!95, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!96 = distinct !{!96, !97, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!97 = distinct !{!97, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = !{!100, !100, i64 0}
!100 = !{!"float", !87, i64 0}
!101 = distinct !{!101, !79}
!102 = distinct !{!102, !79}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = !{!111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!111 = distinct !{!111, !112, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!112 = distinct !{!112, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!113 = distinct !{!113, !114, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!114 = distinct !{!114, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!115 = distinct !{!115, !114, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!116 = distinct !{!116, !117, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!117 = distinct !{!117, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!118 = distinct !{!118, !117, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!119 = distinct !{!119, !117, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!120 = distinct !{!120, !121, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!121 = distinct !{!121, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!122 = distinct !{!122, !121, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!123 = distinct !{!123, !121, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!124 = distinct !{!124, !125, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!125 = distinct !{!125, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"\01?sort@@YAXAIAM00@Z: %c"}
!128 = distinct !{!128, !"\01?sort@@YAXAIAM00@Z"}
!129 = !{!130, !131, !111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!130 = distinct !{!130, !128, !"\01?sort@@YAXAIAM00@Z: %a"}
!131 = distinct !{!131, !128, !"\01?sort@@YAXAIAM00@Z: %b"}
!132 = !{!131}
!133 = !{!130, !127, !111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!134 = !{!130}
!135 = !{!131, !127, !111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!136 = !{!137}
!137 = distinct !{!137, !138, !"\01?sort@@YAXAIAM00@Z: %c"}
!138 = distinct !{!138, !"\01?sort@@YAXAIAM00@Z"}
!139 = !{!140, !141, !111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!140 = distinct !{!140, !138, !"\01?sort@@YAXAIAM00@Z: %a"}
!141 = distinct !{!141, !138, !"\01?sort@@YAXAIAM00@Z: %b"}
!142 = !{!141}
!143 = !{!140, !137, !111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!144 = !{!140}
!145 = !{!141, !137, !111, !113, !115, !116, !118, !119, !120, !122, !123, !124}
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 2}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}

