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
; shader hash: ea6f05b7844744c98747996e1bdc3f5b
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
; Number of inputs: 29, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 20, 24, 25, 26, 27, 28 }
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
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %876 = phi float [ 0.000000e+00, %252 ], [ %628, %856 ]
  %877 = phi float [ 0.000000e+00, %252 ], [ %629, %856 ]
  %878 = phi float [ 0.000000e+00, %252 ], [ %630, %856 ]
  %879 = phi float [ 0.000000e+00, %252 ], [ %857, %856 ]
  %880 = phi float [ 0.000000e+00, %252 ], [ %858, %856 ]
  %881 = phi float [ 0.000000e+00, %252 ], [ %859, %856 ]
  %882 = phi float [ 0.000000e+00, %252 ], [ %807, %856 ]
  %883 = phi float [ 0.000000e+00, %252 ], [ %808, %856 ]
  %884 = phi float [ 0.000000e+00, %252 ], [ %809, %856 ]
  %885 = phi float [ 0.000000e+00, %252 ], [ %751, %856 ]
  %886 = phi float [ 0.000000e+00, %252 ], [ %752, %856 ]
  %887 = phi float [ 0.000000e+00, %252 ], [ %753, %856 ]
  %888 = phi float [ 0.000000e+00, %252 ], [ %615, %856 ]
  %889 = phi float [ 0.000000e+00, %252 ], [ %416, %856 ]
  %890 = phi float [ 0.000000e+00, %252 ], [ %705, %856 ]
  %891 = phi float [ 0.000000e+00, %252 ], [ %708, %856 ]
  %892 = phi float [ 0.000000e+00, %252 ], [ %860, %856 ]
  %893 = phi float [ 0.000000e+00, %252 ], [ %872, %856 ]
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = bitcast i32 %895 to float
  %897 = fcmp fast oge float %896, 0.000000e+00
  %898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.f32 %898, 0
  %900 = select i1 %897, float %896, float %899
  %901 = call float @dx.op.dot2.f32(i32 54, float %874, float %875, float %874, float %875)  ; Dot2(ax,ay,bx,by)
  %902 = fmul fast float %901, 0x3FE3333340000000
  %903 = fsub fast float 1.000000e+00, %902
  %904 = call float @dx.op.dot3.f32(i32 55, float %874, float %875, float %903, float %874, float %875, float %903)  ; Dot3(ax,ay,az,bx,by,bz)
  %905 = call float @dx.op.unary.f32(i32 25, float %904)  ; Rsqrt(value)
  %906 = fmul fast float %905, %874
  %907 = fmul fast float %905, %875
  %908 = fmul fast float %903, %905
  %909 = fmul fast float %908, %85
  %910 = fmul fast float %908, %86
  %911 = fmul fast float %908, %87
  %912 = fmul fast float %906, %58
  %913 = fmul fast float %906, %59
  %914 = fmul fast float %906, %60
  %915 = fmul fast float %90, %61
  %916 = fmul fast float %915, %907
  %917 = fmul fast float %93, %61
  %918 = fmul fast float %917, %907
  %919 = fmul fast float %96, %61
  %920 = fmul fast float %919, %907
  %921 = fadd fast float %916, %912
  %922 = fmul fast float %921, %84
  %923 = fadd fast float %922, %909
  %924 = fadd fast float %918, %913
  %925 = fmul fast float %924, %84
  %926 = fadd fast float %925, %910
  %927 = fadd fast float %920, %914
  %928 = fmul fast float %927, %84
  %929 = fadd fast float %928, %911
  %930 = call float @dx.op.dot3.f32(i32 55, float %923, float %926, float %929, float %923, float %926, float %929)  ; Dot3(ax,ay,az,bx,by,bz)
  %931 = call float @dx.op.unary.f32(i32 25, float %930)  ; Rsqrt(value)
  %932 = fmul fast float %923, %931
  %933 = fmul fast float %926, %931
  %934 = fmul fast float %929, %931
  %935 = call float @dx.op.unary.f32(i32 83, float %130)  ; DerivCoarseX(value)
  %936 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %937 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %938 = call float @dx.op.unary.f32(i32 84, float %130)  ; DerivCoarseY(value)
  %939 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %940 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %941 = fadd fast float %935, %130
  %942 = fadd fast float %936, %131
  %943 = fadd fast float %937, %132
  %944 = fadd fast float %938, %130
  %945 = fadd fast float %939, %131
  %946 = fadd fast float %940, %132
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 0
  %949 = extractvalue %dx.types.CBufRet.f32 %947, 1
  %950 = extractvalue %dx.types.CBufRet.f32 %947, 2
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 2
  %953 = extractvalue %dx.types.CBufRet.f32 %951, 3
  %954 = fmul fast float %948, %82
  %955 = fmul fast float %954, %952
  %956 = fmul fast float %949, %83
  %957 = fmul fast float %956, %953
  %958 = fptoui float %955 to i32
  %959 = fptoui float %957 to i32
  %960 = fadd fast float %948, -1.000000e+00
  %961 = fadd fast float %949, -1.000000e+00
  %962 = fptoui float %960 to i32
  %963 = fptoui float %961 to i32
  %964 = call i32 @dx.op.binary.i32(i32 40, i32 %958, i32 %962)  ; UMin(a,b)
  %965 = call i32 @dx.op.binary.i32(i32 40, i32 %959, i32 %963)  ; UMin(a,b)
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 2
  %968 = extractvalue %dx.types.CBufRet.f32 %966, 3
  %969 = fmul fast float %967, %70
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
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %980, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = and i32 %982, 1023
  %984 = lshr i32 %982, 10
  %985 = icmp eq i32 %983, 0
  br i1 %985, label %1489, label %986

; <label>:986                                     ; preds = %873
  %987 = and i32 %982, 1023
  br label %988

; <label>:988                                     ; preds = %1120, %986
  %989 = phi i32 [ %1070, %1120 ], [ 0, %986 ]
  %990 = phi float [ %1121, %1120 ], [ 0.000000e+00, %986 ]
  %991 = phi float [ %1122, %1120 ], [ %900, %986 ]
  %992 = phi float [ %1123, %1120 ], [ %893, %986 ]
  %993 = phi float [ %1124, %1120 ], [ %882, %986 ]
  %994 = phi float [ %1125, %1120 ], [ %883, %986 ]
  %995 = phi float [ %1126, %1120 ], [ %884, %986 ]
  %996 = phi float [ %1127, %1120 ], [ 0.000000e+00, %986 ]
  %997 = phi float [ %1128, %1120 ], [ 0.000000e+00, %986 ]
  %998 = phi float [ %1129, %1120 ], [ %879, %986 ]
  %999 = phi float [ %1130, %1120 ], [ %880, %986 ]
  %1000 = phi float [ %1131, %1120 ], [ %881, %986 ]
  %1001 = phi float [ %1132, %1120 ], [ %885, %986 ]
  %1002 = phi float [ %1133, %1120 ], [ %886, %986 ]
  %1003 = phi float [ %1134, %1120 ], [ %887, %986 ]
  %1004 = phi float [ %1135, %1120 ], [ %932, %986 ]
  %1005 = phi float [ %1136, %1120 ], [ %933, %986 ]
  %1006 = phi float [ %1137, %1120 ], [ %934, %986 ]
  %1007 = phi float [ %1138, %1120 ], [ %891, %986 ]
  %1008 = phi float [ %1139, %1120 ], [ %890, %986 ]
  %1009 = phi float [ %1140, %1120 ], [ 0.000000e+00, %986 ]
  %1010 = phi float [ %1141, %1120 ], [ %888, %986 ]
  %1011 = phi float [ %1142, %1120 ], [ %876, %986 ]
  %1012 = phi float [ %1143, %1120 ], [ %877, %986 ]
  %1013 = phi float [ %1144, %1120 ], [ %878, %986 ]
  %1014 = add nuw nsw i32 %989, %984
  %1015 = shl i32 %1014, 2
  %1016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.i32 %1016, 0
  %1018 = shl i32 %1017, 8
  %1019 = or i32 %1018, 48
  %1020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.ResRet.f32 %1020, 1
  %1023 = extractvalue %dx.types.ResRet.f32 %1020, 2
  %1024 = extractvalue %dx.types.ResRet.f32 %1020, 3
  %1025 = or i32 %1018, 64
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = extractvalue %dx.types.ResRet.i32 %1026, 1
  %1029 = or i32 %1018, 80
  %1030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 2
  %1032 = extractvalue %dx.types.ResRet.f32 %1030, 3
  %1033 = or i32 %1018, 96
  %1034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.ResRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.ResRet.f32 %1034, 2
  %1038 = extractvalue %dx.types.ResRet.f32 %1034, 3
  %1039 = or i32 %1018, 112
  %1040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 2
  %1042 = or i32 %1018, 128
  %1043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.f32 %1043, 0
  %1045 = extractvalue %dx.types.ResRet.f32 %1043, 1
  %1046 = extractvalue %dx.types.ResRet.f32 %1043, 2
  %1047 = extractvalue %dx.types.ResRet.f32 %1043, 3
  %1048 = or i32 %1018, 144
  %1049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1048, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1053 = extractvalue %dx.types.ResRet.f32 %1049, 3
  %1054 = or i32 %1018, 160
  %1055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.ResRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.ResRet.f32 %1055, 2
  %1059 = extractvalue %dx.types.ResRet.f32 %1055, 3
  %1060 = or i32 %1018, 192
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = or i32 %1018, 208
  %1064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.f32 %1064, 0
  %1066 = or i32 %1018, 248
  %1067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.f32 %1067, 0
  %1069 = extractvalue %dx.types.ResRet.f32 %1067, 1
  %1070 = add nuw nsw i32 %989, 1
  %1071 = bitcast float %1024 to i32
  %1072 = and i32 %1071, 512
  %1073 = icmp eq i32 %1072, 0
  %1074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 0
  %1076 = extractvalue %dx.types.ResRet.f32 %1074, 1
  %1077 = extractvalue %dx.types.ResRet.f32 %1074, 2
  %1078 = extractvalue %dx.types.ResRet.f32 %1074, 3
  %1079 = call float @dx.op.dot4.f32(i32 56, float %1075, float %1076, float %1077, float %1078, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1080 = or i32 %1018, 16
  %1081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1085 = extractvalue %dx.types.ResRet.f32 %1081, 3
  %1086 = call float @dx.op.dot4.f32(i32 56, float %1082, float %1083, float %1084, float %1085, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1087 = or i32 %1018, 32
  %1088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %1088, 2
  %1092 = extractvalue %dx.types.ResRet.f32 %1088, 3
  %1093 = call float @dx.op.dot4.f32(i32 56, float %1089, float %1090, float %1091, float %1092, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
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
  %1111 = call float @dx.op.dot3.f32(i32 55, float %1021, float %1022, float %1023, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %1112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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

; <label>:1489                                    ; preds = %1488, %873
  %1490 = phi float [ 0.000000e+00, %873 ], [ %1121, %1488 ]
  %1491 = phi float [ %900, %873 ], [ %1122, %1488 ]
  %1492 = phi float [ %893, %873 ], [ %1123, %1488 ]
  %1493 = phi float [ %882, %873 ], [ %1124, %1488 ]
  %1494 = phi float [ %883, %873 ], [ %1125, %1488 ]
  %1495 = phi float [ %884, %873 ], [ %1126, %1488 ]
  %1496 = phi float [ 0.000000e+00, %873 ], [ %1127, %1488 ]
  %1497 = phi float [ 0.000000e+00, %873 ], [ %1128, %1488 ]
  %1498 = phi float [ %879, %873 ], [ %1129, %1488 ]
  %1499 = phi float [ %880, %873 ], [ %1130, %1488 ]
  %1500 = phi float [ %881, %873 ], [ %1131, %1488 ]
  %1501 = phi float [ %885, %873 ], [ %1132, %1488 ]
  %1502 = phi float [ %886, %873 ], [ %1133, %1488 ]
  %1503 = phi float [ %887, %873 ], [ %1134, %1488 ]
  %1504 = phi float [ %932, %873 ], [ %1135, %1488 ]
  %1505 = phi float [ %933, %873 ], [ %1136, %1488 ]
  %1506 = phi float [ %934, %873 ], [ %1137, %1488 ]
  %1507 = phi float [ %891, %873 ], [ %1138, %1488 ]
  %1508 = phi float [ %890, %873 ], [ %1139, %1488 ]
  %1509 = phi float [ 0.000000e+00, %873 ], [ %1140, %1488 ]
  %1510 = phi float [ %888, %873 ], [ %1141, %1488 ]
  %1511 = phi float [ %876, %873 ], [ %1142, %1488 ]
  %1512 = phi float [ %877, %873 ], [ %1143, %1488 ]
  %1513 = phi float [ %878, %873 ], [ %1144, %1488 ]
  %1514 = call float @dx.op.dot3.f32(i32 55, float %1504, float %1505, float %1506, float %1504, float %1505, float %1506)  ; Dot3(ax,ay,az,bx,by,bz)
  %1515 = call float @dx.op.unary.f32(i32 25, float %1514)  ; Rsqrt(value)
  %1516 = fmul fast float %1515, %1504
  %1517 = fmul fast float %1515, %1505
  %1518 = fmul fast float %1515, %1506
  %1519 = fadd fast float %1509, %889
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
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1573 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1574 = extractvalue %dx.types.CBufRet.i32 %1573, 3
  %1575 = and i32 %1574, 8
  %1576 = icmp ne i32 %1575, 0
  %1577 = call float @dx.op.binary.f32(i32 35, float %1535, float %1511)  ; FMax(a,b)
  %1578 = call float @dx.op.binary.f32(i32 35, float %1536, float %1511)  ; FMax(a,b)
  %1579 = call float @dx.op.binary.f32(i32 35, float %1537, float %1511)  ; FMax(a,b)
  %1580 = call float @dx.op.dot3.f32(i32 55, float %1535, float %1536, float %1537, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1581 = select i1 %191, float %1511, float %1535
  %1582 = select i1 %191, float %1580, float %1536
  %1583 = select i1 %191, float 1.000000e+00, float %1537
  %1584 = select i1 %1576, float %1577, float %1581
  %1585 = select i1 %1576, float %1578, float %1582
  %1586 = select i1 %1576, float %1579, float %1583
  %1587 = call float @dx.op.dot3.f32(i32 55, float %1567, float %1568, float %1569, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1588 = select i1 %191, float %1587, float %1567
  %1589 = select i1 %191, float %1587, float %1568
  %1590 = select i1 %191, float %1587, float %1569
  %1591 = and i32 %167, 3
  %1592 = select i1 %161, i32 %1591, i32 0
  %1593 = icmp eq i32 %1592, 1
  br i1 %1593, label %1594, label %1670

; <label>:1594                                    ; preds = %1566
  %1595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1596 = extractvalue %dx.types.CBufRet.f32 %1595, 0
  %1597 = extractvalue %dx.types.CBufRet.f32 %1595, 1
  %1598 = fadd fast float %1596, %130
  %1599 = fadd fast float %1597, %131
  %1600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1601 = extractvalue %dx.types.CBufRet.f32 %1600, 0
  %1602 = extractvalue %dx.types.CBufRet.f32 %1600, 1
  %1603 = fsub fast float %1598, %1601
  %1604 = fsub fast float %1599, %1602
  %1605 = fmul fast float %1603, %1603
  %1606 = fmul fast float %1604, %1604
  %1607 = fadd fast float %1605, %1606
  %1608 = call float @dx.op.unary.f32(i32 24, float %1607)  ; Sqrt(value)
  %1609 = extractvalue %dx.types.CBufRet.f32 %1600, 2
  %1610 = fcmp fast olt float %1608, %1609
  br i1 %1610, label %1611, label %1664

; <label>:1611                                    ; preds = %1594
  %1612 = extractvalue %dx.types.CBufRet.f32 %1595, 2
  %1613 = fadd fast float %1612, %132
  %1614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1615 = extractvalue %dx.types.CBufRet.f32 %1614, 0
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 0
  %1618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1619 = extractvalue %dx.types.CBufRet.f32 %1618, 0
  %1620 = extractvalue %dx.types.CBufRet.f32 %1614, 1
  %1621 = extractvalue %dx.types.CBufRet.f32 %1616, 1
  %1622 = extractvalue %dx.types.CBufRet.f32 %1618, 1
  %1623 = extractvalue %dx.types.CBufRet.f32 %1614, 3
  %1624 = extractvalue %dx.types.CBufRet.f32 %1616, 3
  %1625 = extractvalue %dx.types.CBufRet.f32 %1618, 3
  %1626 = fadd fast float %1623, %1598
  %1627 = fadd fast float %1624, %1599
  %1628 = fadd fast float %1613, %1625
  %1629 = fmul fast float %1626, %1615
  %1630 = call float @dx.op.tertiary.f32(i32 46, float %1627, float %1617, float %1629)  ; FMad(a,b,c)
  %1631 = call float @dx.op.tertiary.f32(i32 46, float %1628, float %1619, float %1630)  ; FMad(a,b,c)
  %1632 = fmul fast float %1626, %1620
  %1633 = call float @dx.op.tertiary.f32(i32 46, float %1627, float %1621, float %1632)  ; FMad(a,b,c)
  %1634 = call float @dx.op.tertiary.f32(i32 46, float %1628, float %1622, float %1633)  ; FMad(a,b,c)
  %1635 = fsub fast float %1631, %1623
  %1636 = fsub fast float %1634, %1624
  %1637 = fsub fast float %1635, %1601
  %1638 = fadd fast float %1637, %1609
  %1639 = fsub fast float %1636, %1602
  %1640 = fadd fast float %1639, %1609
  %1641 = extractvalue %dx.types.CBufRet.f32 %1600, 3
  %1642 = fmul fast float %1638, %1641
  %1643 = fmul fast float %1640, %1641
  %1644 = call float @dx.op.unary.f32(i32 7, float %1642)  ; Saturate(value)
  %1645 = call float @dx.op.unary.f32(i32 7, float %1643)  ; Saturate(value)
  %1646 = fsub fast float 1.000000e+00, %1644
  %1647 = fsub fast float 1.000000e+00, %1645
  %1648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %38, float %1646, float %1647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1649 = extractvalue %dx.types.ResRet.f32 %1648, 0
  %1650 = fcmp fast ugt float %1649, 0.000000e+00
  br i1 %1650, label %1651, label %1664

; <label>:1651                                    ; preds = %1611
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1663 = fsub fast float %1662, %1612
  br label %1664

; <label>:1664                                    ; preds = %1651, %1611, %1594
  %1665 = phi i1 [ true, %1651 ], [ false, %1611 ], [ false, %1594 ]
  %1666 = phi float [ %1663, %1651 ], [ -1.310720e+05, %1611 ], [ -1.310720e+05, %1594 ]
  %1667 = fsub fast float %1666, %132
  %1668 = call float @dx.op.unary.f32(i32 7, float %1667)  ; Saturate(value)
  %1669 = select i1 %1665, float %1668, float 1.000000e+00
  br label %1670

; <label>:1670                                    ; preds = %1664, %1566
  %1671 = phi float [ %1669, %1664 ], [ 0.000000e+00, %1566 ]
  %1672 = icmp eq i32 %1592, 3
  %1673 = select i1 %1672, float 1.000000e+00, float %1671
  %1674 = call float @dx.op.binary.f32(i32 35, float %1490, float %1673)  ; FMax(a,b)
  %1675 = call float @dx.op.unary.f32(i32 7, float %1674)  ; Saturate(value)
  %1676 = fcmp fast une float %1675, 0.000000e+00
  %1677 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %1678 = call float @dx.op.unary.f32(i32 25, float %1677)  ; Rsqrt(value)
  br i1 %1676, label %1686, label %1679

; <label>:1679                                    ; preds = %1670
  %1680 = fmul fast float %1678, %130
  %1681 = fmul fast float %1678, %131
  %1682 = fmul fast float %1678, %132
  %1683 = fsub fast float -0.000000e+00, %1680
  %1684 = fsub fast float -0.000000e+00, %1681
  %1685 = fsub fast float -0.000000e+00, %1682
  br label %1854

; <label>:1686                                    ; preds = %1670
  %1687 = fmul fast float %130, %1678
  %1688 = fsub fast float -0.000000e+00, %1687
  %1689 = fmul fast float %131, %1678
  %1690 = fsub fast float -0.000000e+00, %1689
  %1691 = fmul fast float %132, %1678
  %1692 = fsub fast float -0.000000e+00, %1691
  %1693 = call float @dx.op.dot3.f32(i32 55, float %1688, float %1690, float %1692, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %1694 = fmul fast float %1675, 2.500000e+00
  %1695 = call float @dx.op.unary.f32(i32 7, float %1694)  ; Saturate(value)
  %1696 = fmul fast float %1675, 0x4013FFFFE0000000
  %1697 = fadd fast float %1696, 0xBFFFFFFFE0000000
  %1698 = call float @dx.op.unary.f32(i32 7, float %1697)  ; Saturate(value)
  %1699 = fmul fast float %1675, 0x4004000020000000
  %1700 = fadd fast float %1699, 0xBFF8000040000000
  %1701 = call float @dx.op.unary.f32(i32 7, float %1700)  ; Saturate(value)
  %1702 = call float @dx.op.unary.f32(i32 7, float %1695)  ; Saturate(value)
  %1703 = fmul fast float %1526, 1.000000e+01
  %1704 = call float @dx.op.unary.f32(i32 7, float %1703)  ; Saturate(value)
  %1705 = fmul fast float %1704, 2.000000e+00
  %1706 = fsub fast float 3.000000e+00, %1705
  %1707 = fmul fast float %1704, %1704
  %1708 = fmul fast float %1707, %1706
  %1709 = fsub fast float 1.000000e+00, %1708
  %1710 = fsub fast float 0x3FE3333340000000, %1547
  %1711 = fmul fast float %1710, 0x400AAAAAA0000000
  %1712 = call float @dx.op.unary.f32(i32 7, float %1711)  ; Saturate(value)
  %1713 = fmul fast float %1709, %1712
  %1714 = fmul fast float %1584, 0x3FEA2B8620000000
  %1715 = fmul fast float %1585, 0x3FEA2B8620000000
  %1716 = fmul fast float %1586, 0x3FEA2B8620000000
  %1717 = fadd fast float %1714, 0x3FC81DFBA0000000
  %1718 = fmul fast float %1717, %1584
  %1719 = fadd fast float %1718, 0x3F910E6020000000
  %1720 = fadd fast float %1715, 0x3FC81DFBA0000000
  %1721 = fmul fast float %1720, %1585
  %1722 = fadd fast float %1721, 0x3F910E6020000000
  %1723 = fadd fast float %1716, 0x3FC81DFBA0000000
  %1724 = fmul fast float %1723, %1586
  %1725 = fadd fast float %1724, 0x3F910E6020000000
  %1726 = call float @dx.op.unary.f32(i32 7, float %1719)  ; Saturate(value)
  %1727 = call float @dx.op.unary.f32(i32 7, float %1722)  ; Saturate(value)
  %1728 = call float @dx.op.unary.f32(i32 7, float %1725)  ; Saturate(value)
  %1729 = fsub fast float %1726, %1584
  %1730 = fsub fast float %1727, %1585
  %1731 = fsub fast float %1728, %1586
  %1732 = fmul fast float %1729, %1702
  %1733 = fmul fast float %1732, %1713
  %1734 = fmul fast float %1730, %1702
  %1735 = fmul fast float %1734, %1713
  %1736 = fmul fast float %1731, %1702
  %1737 = fmul fast float %1736, %1713
  %1738 = fadd fast float %1733, %1584
  %1739 = fadd fast float %1735, %1585
  %1740 = fadd fast float %1737, %1586
  %1741 = fmul fast float %1507, %1507
  %1742 = fmul fast float %1741, %1741
  %1743 = fadd fast float %1698, 1.000000e+00
  %1744 = fsub fast float %1743, %1713
  %1745 = call float @dx.op.unary.f32(i32 7, float %1744)  ; Saturate(value)
  %1746 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1747 = call float @dx.op.unary.f32(i32 7, float %1746)  ; Saturate(value)
  %1748 = fsub fast float 1.000000e+00, %1742
  %1749 = call float @dx.op.binary.f32(i32 36, float %1745, float %1748)  ; FMin(a,b)
  %1750 = call float @dx.op.unary.f32(i32 7, float %1701)  ; Saturate(value)
  %1751 = call float @dx.op.binary.f32(i32 35, float %1749, float %1750)  ; FMax(a,b)
  %1752 = fadd fast float %1747, 0xBFE4CCCCC0000000
  %1753 = fmul fast float %1752, 0x4006DB6DA0000000
  %1754 = call float @dx.op.unary.f32(i32 7, float %1753)  ; Saturate(value)
  %1755 = fmul fast float %1754, 2.000000e+00
  %1756 = fsub fast float 3.000000e+00, %1755
  %1757 = bitcast float %1544 to i32
  %1758 = ashr i32 %1757, 1
  %1759 = add nsw i32 %1758, 532487669
  %1760 = bitcast i32 %1759 to float
  %1761 = fsub fast float 1.000000e+00, %1760
  %1762 = bitcast float %1761 to i32
  %1763 = sub nsw i32 2129859010, %1762
  %1764 = bitcast i32 %1763 to float
  %1765 = fmul fast float %1764, 2.000000e+00
  %1766 = bitcast float %1545 to i32
  %1767 = ashr i32 %1766, 1
  %1768 = add nsw i32 %1767, 532487669
  %1769 = bitcast i32 %1768 to float
  %1770 = fsub fast float 1.000000e+00, %1769
  %1771 = bitcast float %1770 to i32
  %1772 = sub nsw i32 2129859010, %1771
  %1773 = bitcast i32 %1772 to float
  %1774 = fmul fast float %1773, 2.000000e+00
  %1775 = bitcast float %1546 to i32
  %1776 = ashr i32 %1775, 1
  %1777 = add nsw i32 %1776, 532487669
  %1778 = bitcast i32 %1777 to float
  %1779 = fsub fast float 1.000000e+00, %1778
  %1780 = bitcast float %1779 to i32
  %1781 = sub nsw i32 2129859010, %1780
  %1782 = bitcast i32 %1781 to float
  %1783 = fmul fast float %1782, 2.000000e+00
  %1784 = fsub fast float 0x4002A9FBE0000000, %1765
  %1785 = fadd fast float %1765, 0x3FD54FDF00000000
  %1786 = bitcast float %1785 to i32
  %1787 = sub nsw i32 2129859010, %1786
  %1788 = bitcast i32 %1787 to float
  %1789 = fmul fast float %1788, %1784
  %1790 = fmul fast float %1789, %1789
  %1791 = fsub fast float 0x4002A9FBE0000000, %1774
  %1792 = fadd fast float %1774, 0x3FD54FDF00000000
  %1793 = bitcast float %1792 to i32
  %1794 = sub nsw i32 2129859010, %1793
  %1795 = bitcast i32 %1794 to float
  %1796 = fmul fast float %1795, %1791
  %1797 = fmul fast float %1796, %1796
  %1798 = fsub fast float 0x4002A9FBE0000000, %1783
  %1799 = fadd fast float %1783, 0x3FD54FDF00000000
  %1800 = bitcast float %1799 to i32
  %1801 = sub nsw i32 2129859010, %1800
  %1802 = bitcast i32 %1801 to float
  %1803 = fmul fast float %1802, %1798
  %1804 = fmul fast float %1803, %1803
  %1805 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1790)  ; FMax(a,b)
  %1806 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1797)  ; FMax(a,b)
  %1807 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1804)  ; FMax(a,b)
  %1808 = fsub fast float 1.000000e+00, %1693
  %1809 = fadd fast float %1808, %1709
  %1810 = call float @dx.op.unary.f32(i32 7, float %1809)  ; Saturate(value)
  %1811 = fsub fast float 1.000000e+00, %1673
  %1812 = fmul fast float %1751, %1811
  %1813 = fmul fast float %1754, %1754
  %1814 = fmul fast float %1813, %1812
  %1815 = fmul fast float %1814, %1756
  %1816 = fmul fast float %1811, 0xBFE99999A0000000
  %1817 = fmul fast float %1816, %1702
  %1818 = fmul fast float %1817, %1713
  %1819 = fadd fast float %1818, 1.000000e+00
  %1820 = fadd fast float %1547, -1.000000e+00
  %1821 = fmul fast float %1819, %1820
  %1822 = fadd fast float %1821, 1.000000e+00
  %1823 = fsub fast float %1805, %1544
  %1824 = fsub fast float %1806, %1545
  %1825 = fsub fast float %1807, %1546
  %1826 = fmul fast float %1815, %1823
  %1827 = fmul fast float %1815, %1824
  %1828 = fmul fast float %1815, %1825
  %1829 = fadd fast float %1826, %1544
  %1830 = fadd fast float %1827, %1545
  %1831 = fadd fast float %1828, %1546
  %1832 = fsub fast float %85, %1523
  %1833 = fsub fast float %86, %1524
  %1834 = fsub fast float %87, %1525
  %1835 = fmul fast float %1815, %1832
  %1836 = fmul fast float %1815, %1833
  %1837 = fmul fast float %1815, %1834
  %1838 = fadd fast float %1835, %1523
  %1839 = fadd fast float %1836, %1524
  %1840 = fadd fast float %1837, %1525
  %1841 = fmul fast float %1815, %1810
  %1842 = call float @dx.op.unary.f32(i32 7, float %1822)  ; Saturate(value)
  %1843 = fsub fast float 1.000000e+00, %1842
  %1844 = fmul fast float %1841, %1843
  %1845 = fadd fast float %1844, %1842
  %1846 = fsub fast float 1.000000e+00, %1507
  %1847 = fmul fast float %1815, %1846
  %1848 = fadd fast float %1847, %1507
  %1849 = call float @dx.op.dot3.f32(i32 55, float %1838, float %1839, float %1840, float %1838, float %1839, float %1840)  ; Dot3(ax,ay,az,bx,by,bz)
  %1850 = call float @dx.op.unary.f32(i32 25, float %1849)  ; Rsqrt(value)
  %1851 = fmul fast float %1838, %1850
  %1852 = fmul fast float %1839, %1850
  %1853 = fmul fast float %1840, %1850
  br label %1854

; <label>:1854                                    ; preds = %1686, %1679
  %1855 = phi float [ %1685, %1679 ], [ %1692, %1686 ]
  %1856 = phi float [ %1684, %1679 ], [ %1690, %1686 ]
  %1857 = phi float [ %1683, %1679 ], [ %1688, %1686 ]
  %1858 = phi float [ %1682, %1679 ], [ %1691, %1686 ]
  %1859 = phi float [ %1681, %1679 ], [ %1689, %1686 ]
  %1860 = phi float [ %1680, %1679 ], [ %1687, %1686 ]
  %1861 = phi float [ %1584, %1679 ], [ %1738, %1686 ]
  %1862 = phi float [ %1585, %1679 ], [ %1739, %1686 ]
  %1863 = phi float [ %1586, %1679 ], [ %1740, %1686 ]
  %1864 = phi float [ %1544, %1679 ], [ %1829, %1686 ]
  %1865 = phi float [ %1545, %1679 ], [ %1830, %1686 ]
  %1866 = phi float [ %1546, %1679 ], [ %1831, %1686 ]
  %1867 = phi float [ %1523, %1679 ], [ %1851, %1686 ]
  %1868 = phi float [ %1524, %1679 ], [ %1852, %1686 ]
  %1869 = phi float [ %1525, %1679 ], [ %1853, %1686 ]
  %1870 = phi float [ %1547, %1679 ], [ %1845, %1686 ]
  %1871 = phi float [ %1507, %1679 ], [ %1848, %1686 ]
  %1872 = select i1 %191, float 0.000000e+00, float %1866
  %1873 = call float @dx.op.dot3.f32(i32 55, float %1867, float %1868, float %1869, float %1857, float %1856, float %1855)  ; Dot3(ax,ay,az,bx,by,bz)
  %1874 = call float @dx.op.unary.f32(i32 7, float %1873)  ; Saturate(value)
  %1875 = call float @dx.op.dot3.f32(i32 55, float %1860, float %1859, float %1858, float %1867, float %1868, float %1869)  ; Dot3(ax,ay,az,bx,by,bz)
  %1876 = fmul fast float %1875, 2.000000e+00
  %1877 = fmul fast float %1876, %1867
  %1878 = fmul fast float %1876, %1868
  %1879 = fmul fast float %1876, %1869
  %1880 = fsub fast float %1860, %1877
  %1881 = fsub fast float %1859, %1878
  %1882 = fsub fast float %1858, %1879
  %1883 = call float @dx.op.binary.f32(i32 36, float %1871, float 1.000000e+00)  ; FMin(a,b)
  %1884 = fsub fast float 1.000000e+00, %1883
  %1885 = bitcast float %1884 to i32
  %1886 = ashr i32 %1885, 1
  %1887 = add nsw i32 %1886, 532487669
  %1888 = bitcast i32 %1887 to float
  %1889 = fsub fast float 1.000000e+00, %1870
  %1890 = call float @dx.op.binary.f32(i32 35, float %1889, float 0x3F847AE140000000)  ; FMax(a,b)
  %1891 = fmul fast float %1890, %1890
  %1892 = fmul fast float %1891, %1891
  %1893 = call float @dx.op.unary.f32(i32 7, float %1874)  ; Saturate(value)
  %1894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %1888, float %1892, float %1893, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1895 = extractvalue %dx.types.ResRet.f32 %1894, 0
  %1896 = fsub fast float 1.000000e+00, %1871
  %1897 = bitcast float %1896 to i32
  %1898 = sub nsw i32 2129859010, %1897
  %1899 = call float @dx.op.dot3.f32(i32 55, float %54, float %50, float %46, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1900 = fmul fast float %1899, 0x3FD20DD760000000
  %1901 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %1902 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %1903 = fcmp fast oeq float %1902, 0.000000e+00
  %1904 = fcmp fast oeq float %1901, 0.000000e+00
  %1905 = or i1 %1904, %1903
  br i1 %1905, label %1935, label %1906

; <label>:1906                                    ; preds = %1854
  %1907 = fsub fast float -0.000000e+00, %57
  %1908 = fsub fast float -0.000000e+00, %55
  %1909 = call float @dx.op.unary.f32(i32 24, float %1902)  ; Sqrt(value)
  %1910 = fdiv fast float %1909, %1901
  %1911 = fcmp fast ogt float %1910, 0x3FFB6F8900000000
  %1912 = select i1 %1911, float 0x3FFB6F8900000000, float %1910
  %1913 = fmul fast float %1912, 0x3FE8A23460000000
  %1914 = call float @dx.op.unary.f32(i32 7, float %1913)  ; Saturate(value)
  %1915 = call float @dx.op.binary.f32(i32 35, float %1912, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1916 = fmul fast float %1914, %1901
  %1917 = fmul fast float %1915, 0x3FF279A740000000
  %1918 = fadd fast float %1917, -1.000000e+00
  %1919 = call float @dx.op.dot3.f32(i32 55, float %1907, float %1908, float %56, float %1907, float %1908, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %1920 = call float @dx.op.unary.f32(i32 25, float %1919)  ; Rsqrt(value)
  %1921 = fmul fast float %1920, %1907
  %1922 = fmul fast float %1920, %1908
  %1923 = fmul fast float %1920, %56
  %1924 = fmul fast float %1918, %1918
  %1925 = fsub fast float 1.000000e+00, %1924
  %1926 = fmul fast float %1915, 0x40005F8BE0000000
  %1927 = fsub fast float 0x400C5BF8A0000000, %1926
  %1928 = fdiv fast float %1916, %1927
  %1929 = fmul fast float %1928, 0x3FEE31C3C0000000
  %1930 = fmul fast float %1929, %1925
  %1931 = fmul fast float %1915, 0x3FDACB7480000000
  %1932 = fadd fast float %1931, 0xBFD7347680000000
  %1933 = fmul fast float %1932, %1928
  %1934 = fmul fast float %1933, %1925
  br label %1935

; <label>:1935                                    ; preds = %1906, %1854
  %1936 = phi float [ %1921, %1906 ], [ 0.000000e+00, %1854 ]
  %1937 = phi float [ %1922, %1906 ], [ 0.000000e+00, %1854 ]
  %1938 = phi float [ %1923, %1906 ], [ 0.000000e+00, %1854 ]
  %1939 = phi float [ %1930, %1906 ], [ 0.000000e+00, %1854 ]
  %1940 = phi float [ %1934, %1906 ], [ 0.000000e+00, %1854 ]
  %1941 = call float @dx.op.dot3.f32(i32 55, float %1936, float %1937, float %1938, float %1867, float %1868, float %1869)  ; Dot3(ax,ay,az,bx,by,bz)
  %1942 = fmul fast float %1941, 0x3FDF454380000000
  %1943 = fmul fast float %1941, %1941
  %1944 = fmul fast float %1943, 0x3FEE471020000000
  %1945 = fadd fast float %1944, 0xBFD42F6020000000
  %1946 = fmul fast float %1901, 0x3FD20DD760000000
  %1947 = fmul fast float %1945, %1940
  %1948 = fadd fast float %1947, %1946
  %1949 = fmul fast float %1942, %1939
  %1950 = fadd fast float %1948, %1949
  %1951 = fsub fast float %1948, %1949
  %1952 = call float @dx.op.dot3.f32(i32 55, float %1936, float %1937, float %1938, float %1880, float %1881, float %1882)  ; Dot3(ax,ay,az,bx,by,bz)
  %1953 = fmul fast float %1952, 0x3FDF454380000000
  %1954 = fmul fast float %1952, %1952
  %1955 = fmul fast float %1954, 0x3FEE471020000000
  %1956 = fadd fast float %1955, 0xBFD42F6020000000
  %1957 = call float @dx.op.dot3.f32(i32 55, float %1901, float %1939, float %1940, float 0x3FD20DD760000000, float %1953, float %1956)  ; Dot3(ax,ay,az,bx,by,bz)
  %1958 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %1959 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %1960 = fcmp fast oeq float %1959, 0.000000e+00
  %1961 = fcmp fast oeq float %1958, 0.000000e+00
  %1962 = or i1 %1961, %1960
  br i1 %1962, label %1992, label %1963

; <label>:1963                                    ; preds = %1935
  %1964 = fsub fast float -0.000000e+00, %53
  %1965 = fsub fast float -0.000000e+00, %51
  %1966 = call float @dx.op.unary.f32(i32 24, float %1959)  ; Sqrt(value)
  %1967 = fdiv fast float %1966, %1958
  %1968 = fcmp fast ogt float %1967, 0x3FFB6F8900000000
  %1969 = select i1 %1968, float 0x3FFB6F8900000000, float %1967
  %1970 = fmul fast float %1969, 0x3FE8A23460000000
  %1971 = call float @dx.op.unary.f32(i32 7, float %1970)  ; Saturate(value)
  %1972 = call float @dx.op.binary.f32(i32 35, float %1969, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1973 = fmul fast float %1971, %1958
  %1974 = fmul fast float %1972, 0x3FF279A740000000
  %1975 = fadd fast float %1974, -1.000000e+00
  %1976 = call float @dx.op.dot3.f32(i32 55, float %1964, float %1965, float %52, float %1964, float %1965, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %1977 = call float @dx.op.unary.f32(i32 25, float %1976)  ; Rsqrt(value)
  %1978 = fmul fast float %1977, %1964
  %1979 = fmul fast float %1977, %1965
  %1980 = fmul fast float %1977, %52
  %1981 = fmul fast float %1975, %1975
  %1982 = fsub fast float 1.000000e+00, %1981
  %1983 = fmul fast float %1972, 0x40005F8BE0000000
  %1984 = fsub fast float 0x400C5BF8A0000000, %1983
  %1985 = fdiv fast float %1973, %1984
  %1986 = fmul fast float %1985, 0x3FEE31C3C0000000
  %1987 = fmul fast float %1986, %1982
  %1988 = fmul fast float %1972, 0x3FDACB7480000000
  %1989 = fadd fast float %1988, 0xBFD7347680000000
  %1990 = fmul fast float %1989, %1985
  %1991 = fmul fast float %1990, %1982
  br label %1992

; <label>:1992                                    ; preds = %1963, %1935
  %1993 = phi float [ %1978, %1963 ], [ 0.000000e+00, %1935 ]
  %1994 = phi float [ %1979, %1963 ], [ 0.000000e+00, %1935 ]
  %1995 = phi float [ %1980, %1963 ], [ 0.000000e+00, %1935 ]
  %1996 = phi float [ %1987, %1963 ], [ 0.000000e+00, %1935 ]
  %1997 = phi float [ %1991, %1963 ], [ 0.000000e+00, %1935 ]
  %1998 = call float @dx.op.dot3.f32(i32 55, float %1993, float %1994, float %1995, float %1867, float %1868, float %1869)  ; Dot3(ax,ay,az,bx,by,bz)
  %1999 = fmul fast float %1998, 0x3FDF454380000000
  %2000 = fmul fast float %1998, %1998
  %2001 = fmul fast float %2000, 0x3FEE471020000000
  %2002 = fadd fast float %2001, 0xBFD42F6020000000
  %2003 = fmul fast float %1958, 0x3FD20DD760000000
  %2004 = fmul fast float %2002, %1997
  %2005 = fadd fast float %2004, %2003
  %2006 = fmul fast float %1999, %1996
  %2007 = fadd fast float %2005, %2006
  %2008 = fsub fast float %2005, %2006
  %2009 = call float @dx.op.dot3.f32(i32 55, float %1993, float %1994, float %1995, float %1880, float %1881, float %1882)  ; Dot3(ax,ay,az,bx,by,bz)
  %2010 = fmul fast float %2009, 0x3FDF454380000000
  %2011 = fmul fast float %2009, %2009
  %2012 = fmul fast float %2011, 0x3FEE471020000000
  %2013 = fadd fast float %2012, 0xBFD42F6020000000
  %2014 = call float @dx.op.dot3.f32(i32 55, float %1958, float %1996, float %1997, float 0x3FD20DD760000000, float %2010, float %2013)  ; Dot3(ax,ay,az,bx,by,bz)
  %2015 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %46)  ; FMax(a,b)
  %2016 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float %47, float %48, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %2017 = fcmp fast oeq float %2016, 0.000000e+00
  %2018 = fcmp fast oeq float %2015, 0.000000e+00
  %2019 = or i1 %2018, %2017
  br i1 %2019, label %2049, label %2020

; <label>:2020                                    ; preds = %1992
  %2021 = fsub fast float -0.000000e+00, %49
  %2022 = fsub fast float -0.000000e+00, %47
  %2023 = call float @dx.op.unary.f32(i32 24, float %2016)  ; Sqrt(value)
  %2024 = fdiv fast float %2023, %2015
  %2025 = fcmp fast ogt float %2024, 0x3FFB6F8900000000
  %2026 = select i1 %2025, float 0x3FFB6F8900000000, float %2024
  %2027 = fmul fast float %2026, 0x3FE8A23460000000
  %2028 = call float @dx.op.unary.f32(i32 7, float %2027)  ; Saturate(value)
  %2029 = call float @dx.op.binary.f32(i32 35, float %2026, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2030 = fmul fast float %2028, %2015
  %2031 = fmul fast float %2029, 0x3FF279A740000000
  %2032 = fadd fast float %2031, -1.000000e+00
  %2033 = call float @dx.op.dot3.f32(i32 55, float %2021, float %2022, float %48, float %2021, float %2022, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %2034 = call float @dx.op.unary.f32(i32 25, float %2033)  ; Rsqrt(value)
  %2035 = fmul fast float %2034, %2021
  %2036 = fmul fast float %2034, %2022
  %2037 = fmul fast float %2034, %48
  %2038 = fmul fast float %2032, %2032
  %2039 = fsub fast float 1.000000e+00, %2038
  %2040 = fmul fast float %2029, 0x40005F8BE0000000
  %2041 = fsub fast float 0x400C5BF8A0000000, %2040
  %2042 = fdiv fast float %2030, %2041
  %2043 = fmul fast float %2042, 0x3FEE31C3C0000000
  %2044 = fmul fast float %2043, %2039
  %2045 = fmul fast float %2029, 0x3FDACB7480000000
  %2046 = fadd fast float %2045, 0xBFD7347680000000
  %2047 = fmul fast float %2046, %2042
  %2048 = fmul fast float %2047, %2039
  br label %2049

; <label>:2049                                    ; preds = %2020, %1992
  %2050 = phi float [ %2035, %2020 ], [ 0.000000e+00, %1992 ]
  %2051 = phi float [ %2036, %2020 ], [ 0.000000e+00, %1992 ]
  %2052 = phi float [ %2037, %2020 ], [ 0.000000e+00, %1992 ]
  %2053 = phi float [ %2044, %2020 ], [ 0.000000e+00, %1992 ]
  %2054 = phi float [ %2048, %2020 ], [ 0.000000e+00, %1992 ]
  %2055 = call float @dx.op.dot3.f32(i32 55, float %2050, float %2051, float %2052, float %1867, float %1868, float %1869)  ; Dot3(ax,ay,az,bx,by,bz)
  %2056 = fmul fast float %2055, 0x3FDF454380000000
  %2057 = fmul fast float %2055, %2055
  %2058 = fmul fast float %2057, 0x3FEE471020000000
  %2059 = fadd fast float %2058, 0xBFD42F6020000000
  %2060 = fmul fast float %2015, 0x3FD20DD760000000
  %2061 = fmul fast float %2059, %2054
  %2062 = fadd fast float %2061, %2060
  %2063 = fmul fast float %2056, %2053
  %2064 = fadd fast float %2062, %2063
  %2065 = fsub fast float %2062, %2063
  %2066 = call float @dx.op.dot3.f32(i32 55, float %2050, float %2051, float %2052, float %1880, float %1881, float %1882)  ; Dot3(ax,ay,az,bx,by,bz)
  %2067 = fmul fast float %2066, 0x3FDF454380000000
  %2068 = fmul fast float %2066, %2066
  %2069 = fmul fast float %2068, 0x3FEE471020000000
  %2070 = fadd fast float %2069, 0xBFD42F6020000000
  %2071 = call float @dx.op.dot3.f32(i32 55, float %2015, float %2053, float %2054, float 0x3FD20DD760000000, float %2067, float %2070)  ; Dot3(ax,ay,az,bx,by,bz)
  %2072 = call float @dx.op.binary.f32(i32 35, float %1950, float 0.000000e+00)  ; FMax(a,b)
  %2073 = call float @dx.op.binary.f32(i32 35, float %2007, float 0.000000e+00)  ; FMax(a,b)
  %2074 = call float @dx.op.binary.f32(i32 35, float %2064, float 0.000000e+00)  ; FMax(a,b)
  %2075 = call float @dx.op.binary.f32(i32 35, float %1951, float 0.000000e+00)  ; FMax(a,b)
  %2076 = call float @dx.op.binary.f32(i32 35, float %2008, float 0.000000e+00)  ; FMax(a,b)
  %2077 = call float @dx.op.binary.f32(i32 35, float %2065, float 0.000000e+00)  ; FMax(a,b)
  %2078 = call float @dx.op.binary.f32(i32 35, float %1957, float 0.000000e+00)  ; FMax(a,b)
  %2079 = call float @dx.op.binary.f32(i32 35, float %2014, float 0.000000e+00)  ; FMax(a,b)
  %2080 = call float @dx.op.binary.f32(i32 35, float %2071, float 0.000000e+00)  ; FMax(a,b)
  %2081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2082 = extractvalue %dx.types.CBufRet.f32 %2081, 0
  %2083 = call float @dx.op.binary.f32(i32 36, float %1861, float %2082)  ; FMin(a,b)
  %2084 = fmul fast float %2083, %1884
  %2085 = fsub fast float 1.000000e+00, %2084
  %2086 = bitcast float %2085 to i32
  %2087 = sub nsw i32 2129859010, %2086
  %2088 = bitcast i32 %2087 to float
  %2089 = call float @dx.op.binary.f32(i32 36, float %1862, float %2082)  ; FMin(a,b)
  %2090 = fmul fast float %2089, %1884
  %2091 = fsub fast float 1.000000e+00, %2090
  %2092 = bitcast float %2091 to i32
  %2093 = sub nsw i32 2129859010, %2092
  %2094 = bitcast i32 %2093 to float
  %2095 = call float @dx.op.binary.f32(i32 36, float %1863, float %2082)  ; FMin(a,b)
  %2096 = fmul fast float %2095, %1884
  %2097 = fsub fast float 1.000000e+00, %2096
  %2098 = bitcast float %2097 to i32
  %2099 = sub nsw i32 2129859010, %2098
  %2100 = bitcast i32 %2099 to float
  %2101 = fmul fast float %2072, %1883
  %2102 = fmul fast float %2101, %2088
  %2103 = fmul fast float %2073, %1883
  %2104 = fmul fast float %2103, %2094
  %2105 = fmul fast float %2074, %1883
  %2106 = fmul fast float %2105, %2100
  %2107 = call float @dx.op.binary.f32(i32 36, float %1864, float %2082)  ; FMin(a,b)
  %2108 = fmul fast float %2107, %1884
  %2109 = fsub fast float 1.000000e+00, %2108
  %2110 = bitcast float %2109 to i32
  %2111 = sub nsw i32 2129859010, %2110
  %2112 = bitcast i32 %2111 to float
  %2113 = call float @dx.op.binary.f32(i32 36, float %1865, float %2082)  ; FMin(a,b)
  %2114 = fmul fast float %2113, %1884
  %2115 = fsub fast float 1.000000e+00, %2114
  %2116 = bitcast float %2115 to i32
  %2117 = sub nsw i32 2129859010, %2116
  %2118 = bitcast i32 %2117 to float
  %2119 = call float @dx.op.binary.f32(i32 36, float %1872, float %2082)  ; FMin(a,b)
  %2120 = fmul fast float %2119, %1884
  %2121 = fsub fast float 1.000000e+00, %2120
  %2122 = bitcast float %2121 to i32
  %2123 = sub nsw i32 2129859010, %2122
  %2124 = bitcast i32 %2123 to float
  %2125 = fmul fast float %2078, %1883
  %2126 = fmul fast float %2125, %2112
  %2127 = fmul fast float %2079, %1883
  %2128 = fmul fast float %2127, %2118
  %2129 = fmul fast float %2080, %1883
  %2130 = fmul fast float %2129, %2124
  %2131 = call float @dx.op.dot3.f32(i32 55, float %2102, float %2104, float %2106, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2132 = select i1 %191, float 0.000000e+00, float %2102
  %2133 = select i1 %191, float %2131, float %2104
  %2134 = select i1 %191, float 0.000000e+00, float %2106
  %2135 = call float @dx.op.dot3.f32(i32 55, float %2075, float %2076, float %2077, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2136 = select i1 %191, float 0.000000e+00, float %2075
  %2137 = select i1 %191, float %2135, float %2076
  %2138 = select i1 %191, float 0.000000e+00, float %2077
  %2139 = call float @dx.op.dot3.f32(i32 55, float %2126, float %2128, float %2130, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2140 = select i1 %191, float 0.000000e+00, float %2126
  %2141 = select i1 %191, float %2139, float %2128
  %2142 = select i1 %191, float 0.000000e+00, float %2130
  %2143 = fmul fast float %892, %892
  %2144 = call float @dx.op.unary.f32(i32 7, float %2143)  ; Saturate(value)
  %2145 = fmul fast float %1874, 9.843750e-01
  %2146 = fmul fast float %1870, 9.843750e-01
  %2147 = fadd fast float %2145, 7.812500e-03
  %2148 = fadd fast float %2146, 7.812500e-03
  %2149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %38, float %2147, float %2148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2150 = extractvalue %dx.types.ResRet.f32 %2149, 0
  %2151 = extractvalue %dx.types.ResRet.f32 %2149, 1
  %2152 = extractvalue %dx.types.ResRet.f32 %2149, 2
  %2153 = extractvalue %dx.types.ResRet.f32 %2149, 3
  %2154 = fsub fast float 1.000000e+00, %2144
  %2155 = fsub fast float %2152, %2150
  %2156 = fsub fast float %2153, %2151
  %2157 = fmul fast float %2155, %2154
  %2158 = fmul fast float %2156, %2154
  %2159 = fadd fast float %2157, %2150
  %2160 = fadd fast float %2158, %2151
  %2161 = fmul fast float %2159, %1864
  %2162 = fmul fast float %2159, %1865
  %2163 = fmul fast float %2159, %1872
  %2164 = fadd fast float %2161, %2160
  %2165 = fadd fast float %2162, %2160
  %2166 = fadd fast float %2163, %2160
  %2167 = fcmp fast ogt float %1497, 0.000000e+00
  br i1 %2167, label %2168, label %2194

; <label>:2168                                    ; preds = %2049
  %2169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %38, float %1497, float %1874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2170 = extractvalue %dx.types.ResRet.f32 %2169, 0
  %2171 = extractvalue %dx.types.ResRet.f32 %2169, 1
  %2172 = extractvalue %dx.types.ResRet.f32 %2169, 2
  %2173 = fadd fast float %2170, -5.000000e-01
  %2174 = fadd fast float %2171, -5.000000e-01
  %2175 = fadd fast float %2172, -5.000000e-01
  %2176 = fsub fast float 1.000000e+00, %1864
  %2177 = fsub fast float 1.000000e+00, %1865
  %2178 = fsub fast float 1.000000e+00, %1872
  %2179 = fmul fast float %1864, 4.000000e+00
  %2180 = fmul fast float %2179, %2176
  %2181 = fmul fast float %2180, %2173
  %2182 = fmul fast float %1865, 4.000000e+00
  %2183 = fmul fast float %2182, %2177
  %2184 = fmul fast float %2183, %2174
  %2185 = fmul fast float %1872, 4.000000e+00
  %2186 = fmul fast float %2185, %2178
  %2187 = fmul fast float %2186, %2175
  %2188 = fadd fast float %2181, %2164
  %2189 = fadd fast float %2184, %2165
  %2190 = fadd fast float %2187, %2166
  %2191 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2192 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2193 = call float @dx.op.unary.f32(i32 7, float %2190)  ; Saturate(value)
  br label %2194

; <label>:2194                                    ; preds = %2168, %2049
  %2195 = phi float [ %2191, %2168 ], [ %2164, %2049 ]
  %2196 = phi float [ %2192, %2168 ], [ %2165, %2049 ]
  %2197 = phi float [ %2193, %2168 ], [ %2166, %2049 ]
  %2198 = call float @dx.op.binary.f32(i32 35, float %2196, float %2197)  ; FMax(a,b)
  %2199 = call float @dx.op.binary.f32(i32 35, float %2195, float %2198)  ; FMax(a,b)
  %2200 = fsub fast float 1.000000e+00, %2199
  %2201 = fmul fast float %2199, %1870
  %2202 = fadd fast float %2201, %1870
  %2203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2203, 2
  %2205 = extractvalue %dx.types.CBufRet.f32 %2203, 3
  %2206 = fmul fast float %2202, %2204
  %2207 = fadd fast float %2206, %2205
  %2208 = call float @dx.op.unary.f32(i32 7, float %2207)  ; Saturate(value)
  %2209 = fsub fast float 1.000000e+00, %1895
  %2210 = fadd fast float %2209, %2208
  %2211 = call float @dx.op.unary.f32(i32 7, float %2210)  ; Saturate(value)
  %2212 = fcmp fast olt float %2211, 1.000000e+00
  br i1 %2212, label %2213, label %2661

; <label>:2213                                    ; preds = %2194
  %2214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2215 = extractvalue %dx.types.CBufRet.f32 %2214, 2
  %2216 = extractvalue %dx.types.CBufRet.f32 %2214, 3
  %2217 = fmul fast float %2215, %82
  %2218 = fmul fast float %2216, %83
  %2219 = fptoui float %2217 to i32
  %2220 = fptoui float %2218 to i32
  %2221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2222 = extractvalue %dx.types.CBufRet.f32 %2221, 0
  %2223 = extractvalue %dx.types.CBufRet.f32 %2221, 2
  %2224 = extractvalue %dx.types.CBufRet.f32 %2221, 3
  %2225 = fadd fast float %70, -4.000000e+00
  %2226 = call float @dx.op.binary.f32(i32 35, float %2225, float 0.000000e+00)  ; FMax(a,b)
  %2227 = fadd fast float %2226, %2222
  %2228 = fmul fast float %2227, %2223
  %2229 = call float @dx.op.unary.f32(i32 23, float %2228)  ; Log(value)
  %2230 = fmul fast float %2229, %2224
  %2231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2232 = extractvalue %dx.types.CBufRet.f32 %2231, 2
  %2233 = fmul fast float %2230, %2232
  %2234 = call float @dx.op.unary.f32(i32 7, float %2233)  ; Saturate(value)
  %2235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2236 = extractvalue %dx.types.CBufRet.i32 %2235, 1
  %2237 = add i32 %2236, -1
  %2238 = uitofp i32 %2236 to float
  %2239 = fmul fast float %2238, %2234
  %2240 = fptoui float %2239 to i32
  %2241 = call i32 @dx.op.binary.i32(i32 40, i32 %2240, i32 %2237)  ; UMin(a,b)
  %2242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2243 = extractvalue %dx.types.CBufRet.i32 %2242, 2
  %2244 = extractvalue %dx.types.CBufRet.i32 %2242, 3
  %2245 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2220, i32 %2243, i32 %2219)  ; UMad(a,b,c)
  %2246 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2241, i32 %2244, i32 %2245)  ; UMad(a,b,c)
  %2247 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %2248 = fptoui float %2247 to i32
  %2249 = lshr i32 %2248, 5
  %2250 = call i32 @dx.op.binary.i32(i32 40, i32 %2249, i32 8191)  ; UMin(a,b)
  br i1 false, label %2251, label %2258

; <label>:2251                                    ; preds = %2213
  %2252 = fadd fast float 0.000000e+00, %1882
  %2253 = call float @dx.op.dot3.f32(i32 55, float %1880, float %1881, float %2252, float %1880, float %1881, float %2252)  ; Dot3(ax,ay,az,bx,by,bz)
  %2254 = call float @dx.op.unary.f32(i32 25, float %2253)  ; Rsqrt(value)
  %2255 = fmul fast float %2254, %1880
  %2256 = fmul fast float %2254, %1881
  %2257 = fmul fast float %2252, %2254
  br label %2258

; <label>:2258                                    ; preds = %2251, %2213
  %2259 = phi float [ %2255, %2251 ], [ %1880, %2213 ]
  %2260 = phi float [ %2256, %2251 ], [ %1881, %2213 ]
  %2261 = phi float [ %2257, %2251 ], [ %1882, %2213 ]
  %2262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2263 = extractvalue %dx.types.CBufRet.i32 %2262, 2
  %2264 = add nsw i32 %2263, -1
  %2265 = call i32 @dx.op.binary.i32(i32 37, i32 %2264, i32 0)  ; IMax(a,b)
  %2266 = shl i32 %2250, 2
  %2267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2266, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.i32 %2267, 0
  %2269 = lshr i32 %2268, 16
  %2270 = and i32 %2268, 65535
  %2271 = lshr i32 %2268, 21
  %2272 = lshr i32 %2270, 5
  %2273 = call i32 @dx.op.binary.i32(i32 40, i32 %2272, i32 %2265)  ; UMin(a,b)
  %2274 = icmp ugt i32 %2271, %2273
  br i1 %2274, label %2637, label %2275

; <label>:2275                                    ; preds = %2258
  br label %2276

; <label>:2276                                    ; preds = %2629, %2275
  %2277 = phi float [ %2630, %2629 ], [ 0.000000e+00, %2275 ]
  %2278 = phi float [ %2631, %2629 ], [ 0.000000e+00, %2275 ]
  %2279 = phi float [ %2632, %2629 ], [ 0.000000e+00, %2275 ]
  %2280 = phi float [ %2633, %2629 ], [ 1.000000e+00, %2275 ]
  %2281 = phi i32 [ %2634, %2629 ], [ %2271, %2275 ]
  %2282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2283 = extractvalue %dx.types.CBufRet.i32 %2282, 2
  %2284 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2246, i32 %2283, i32 %2281)  ; UMad(a,b,c)
  %2285 = shl i32 %2284, 2
  %2286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.i32 %2286, 0
  %2288 = shl i32 %2281, 5
  %2289 = sub nsw i32 %2269, %2288
  %2290 = call i32 @dx.op.binary.i32(i32 37, i32 %2289, i32 0)  ; IMax(a,b)
  %2291 = call i32 @dx.op.binary.i32(i32 38, i32 %2290, i32 31)  ; IMin(a,b)
  %2292 = sub nsw i32 1, %2269
  %2293 = add nsw i32 %2292, %2270
  %2294 = call i32 @dx.op.binary.i32(i32 37, i32 %2293, i32 0)  ; IMax(a,b)
  %2295 = call i32 @dx.op.binary.i32(i32 38, i32 %2294, i32 32)  ; IMin(a,b)
  %2296 = and i32 %2295, 31
  %2297 = shl i32 -1, %2296
  %2298 = xor i32 %2297, -1
  %2299 = and i32 %2291, 31
  %2300 = shl i32 %2298, %2299
  %2301 = icmp eq i32 %2295, 32
  %2302 = select i1 %2301, i32 -1, i32 %2300
  %2303 = and i32 %2302, %2287
  %2304 = icmp eq i32 %2303, 0
  br i1 %2304, label %2629, label %2305

; <label>:2305                                    ; preds = %2276
  br label %2306

; <label>:2306                                    ; preds = %2412, %2305
  %2307 = phi float [ %2413, %2412 ], [ %2277, %2305 ]
  %2308 = phi float [ %2414, %2412 ], [ %2278, %2305 ]
  %2309 = phi float [ %2415, %2412 ], [ %2279, %2305 ]
  %2310 = phi float [ %2416, %2412 ], [ %2280, %2305 ]
  %2311 = phi i32 [ %2316, %2412 ], [ %2303, %2305 ]
  %2312 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2311)  ; FirstbitLo(value)
  %2313 = add i32 %2312, %2288
  %2314 = and i32 %2312, 31
  %2315 = shl i32 1, %2314
  %2316 = xor i32 %2315, %2311
  %2317 = mul i32 %2313, 72
  %2318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.f32 %2318, 0
  %2320 = extractvalue %dx.types.ResRet.f32 %2318, 1
  %2321 = extractvalue %dx.types.ResRet.f32 %2318, 2
  %2322 = add i32 %2317, 12
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = add i32 %2317, 16
  %2326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.f32 %2326, 0
  %2328 = extractvalue %dx.types.ResRet.f32 %2326, 1
  %2329 = extractvalue %dx.types.ResRet.f32 %2326, 2
  %2330 = add i32 %2317, 28
  %2331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.f32 %2331, 0
  %2333 = add i32 %2317, 32
  %2334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2333, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.f32 %2334, 0
  %2336 = extractvalue %dx.types.ResRet.f32 %2334, 1
  %2337 = extractvalue %dx.types.ResRet.f32 %2334, 2
  %2338 = extractvalue %dx.types.ResRet.f32 %2334, 3
  %2339 = add i32 %2317, 48
  %2340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.f32 %2340, 0
  %2342 = extractvalue %dx.types.ResRet.f32 %2340, 1
  %2343 = add i32 %2317, 56
  %2344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.f32 %2344, 0
  %2346 = extractvalue %dx.types.ResRet.f32 %2344, 1
  %2347 = add i32 %2317, 64
  %2348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2347, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.f32 %2348, 0
  %2350 = extractvalue %dx.types.ResRet.f32 %2348, 1
  %2351 = mul i32 %2313, 60
  %2352 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2351, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.f32 %2352, 0
  %2354 = extractvalue %dx.types.ResRet.f32 %2352, 1
  %2355 = extractvalue %dx.types.ResRet.f32 %2352, 2
  %2356 = add i32 %2351, 12
  %2357 = add i32 %2351, 48
  %2358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.f32 %2358, 0
  %2360 = extractvalue %dx.types.ResRet.f32 %2358, 1
  %2361 = extractvalue %dx.types.ResRet.f32 %2358, 2
  %2362 = and i32 %2324, 32767
  %2363 = bitcast float %2319 to i32
  %2364 = icmp eq i32 %2363, -1
  %2365 = bitcast float %2320 to i32
  %2366 = and i32 %2324, 32768
  %2367 = icmp ne i32 %2366, 0
  %2368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2369 = extractvalue %dx.types.CBufRet.f32 %2368, 0
  %2370 = extractvalue %dx.types.CBufRet.f32 %2368, 1
  %2371 = extractvalue %dx.types.CBufRet.f32 %2368, 2
  %2372 = fsub fast float %2353, %2369
  %2373 = fsub fast float %2354, %2370
  %2374 = fsub fast float %2355, %2371
  %2375 = fsub fast float %130, %2372
  %2376 = fsub fast float %131, %2373
  %2377 = fsub fast float %132, %2374
  %2378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2356, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.f32 %2378, 0
  %2380 = extractvalue %dx.types.ResRet.f32 %2378, 1
  %2381 = extractvalue %dx.types.ResRet.f32 %2378, 2
  %2382 = call float @dx.op.dot3.f32(i32 55, float %2375, float %2376, float %2377, float %2379, float %2380, float %2381)  ; Dot3(ax,ay,az,bx,by,bz)
  %2383 = add i32 %2351, 24
  %2384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2383, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.f32 %2384, 0
  %2386 = extractvalue %dx.types.ResRet.f32 %2384, 1
  %2387 = extractvalue %dx.types.ResRet.f32 %2384, 2
  %2388 = call float @dx.op.dot3.f32(i32 55, float %2375, float %2376, float %2377, float %2385, float %2386, float %2387)  ; Dot3(ax,ay,az,bx,by,bz)
  %2389 = add i32 %2351, 36
  %2390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2389, i32 undef)  ; BufferLoad(srv,index,wot)
  %2391 = extractvalue %dx.types.ResRet.f32 %2390, 0
  %2392 = extractvalue %dx.types.ResRet.f32 %2390, 1
  %2393 = extractvalue %dx.types.ResRet.f32 %2390, 2
  %2394 = call float @dx.op.dot3.f32(i32 55, float %2375, float %2376, float %2377, float %2391, float %2392, float %2393)  ; Dot3(ax,ay,az,bx,by,bz)
  %2395 = call float @dx.op.unary.f32(i32 6, float %2382)  ; FAbs(value)
  %2396 = call float @dx.op.unary.f32(i32 6, float %2388)  ; FAbs(value)
  %2397 = call float @dx.op.unary.f32(i32 6, float %2394)  ; FAbs(value)
  %2398 = fsub fast float %2359, %2395
  %2399 = fsub fast float %2360, %2396
  %2400 = fsub fast float %2361, %2397
  %2401 = fmul fast float %2398, %2327
  %2402 = fmul fast float %2399, %2328
  %2403 = fmul fast float %2400, %2329
  %2404 = call float @dx.op.binary.f32(i32 36, float %2402, float %2403)  ; FMin(a,b)
  %2405 = call float @dx.op.binary.f32(i32 36, float %2401, float %2404)  ; FMin(a,b)
  %2406 = call float @dx.op.unary.f32(i32 7, float %2405)  ; Saturate(value)
  %2407 = call float @dx.op.binary.f32(i32 36, float %2310, float %2406)  ; FMin(a,b)
  %2408 = uitofp i1 %2367 to float
  %2409 = fsub fast float 1.000000e+00, %2408
  %2410 = fmul fast float %2407, %2409
  %2411 = fcmp fast ogt float %2410, 0.000000e+00
  br i1 %2411, label %2418, label %2412

; <label>:2412                                    ; preds = %2560, %2306
  %2413 = phi float [ %2624, %2560 ], [ %2307, %2306 ]
  %2414 = phi float [ %2625, %2560 ], [ %2308, %2306 ]
  %2415 = phi float [ %2626, %2560 ], [ %2309, %2306 ]
  %2416 = phi float [ %2627, %2560 ], [ %2310, %2306 ]
  %2417 = icmp eq i32 %2311, %2315
  br i1 %2417, label %2628, label %2306

; <label>:2418                                    ; preds = %2306
  br i1 %2364, label %2476, label %2419

; <label>:2419                                    ; preds = %2418
  %2420 = fsub fast float -0.000000e+00, %2379
  %2421 = fsub fast float -0.000000e+00, %2380
  %2422 = fsub fast float -0.000000e+00, %2381
  %2423 = call float @dx.op.dot3.f32(i32 55, float %2259, float %2260, float %2261, float %2420, float %2421, float %2422)  ; Dot3(ax,ay,az,bx,by,bz)
  %2424 = fsub fast float -0.000000e+00, %2423
  %2425 = call float @dx.op.dot3.f32(i32 55, float %2375, float %2376, float %2377, float %2420, float %2421, float %2422)  ; Dot3(ax,ay,az,bx,by,bz)
  %2426 = fadd fast float %2425, %2342
  %2427 = fadd fast float %2341, %2425
  %2428 = fsub fast float -0.000000e+00, %2427
  %2429 = fcmp ogt float %2423, -0.000000e+00
  %2430 = select i1 %2429, float %2428, float %2426
  %2431 = call float @dx.op.unary.f32(i32 6, float %2424)  ; FAbs(value)
  %2432 = fdiv fast float 1.000000e+00, %2431
  %2433 = fmul fast float %2430, %2432
  %2434 = call float @dx.op.binary.f32(i32 35, float %2433, float 0.000000e+00)  ; FMax(a,b)
  %2435 = fsub fast float -0.000000e+00, %2385
  %2436 = fsub fast float -0.000000e+00, %2386
  %2437 = fsub fast float -0.000000e+00, %2387
  %2438 = call float @dx.op.dot3.f32(i32 55, float %2259, float %2260, float %2261, float %2435, float %2436, float %2437)  ; Dot3(ax,ay,az,bx,by,bz)
  %2439 = fsub fast float -0.000000e+00, %2438
  %2440 = call float @dx.op.dot3.f32(i32 55, float %2375, float %2376, float %2377, float %2435, float %2436, float %2437)  ; Dot3(ax,ay,az,bx,by,bz)
  %2441 = fadd fast float %2440, %2346
  %2442 = fadd fast float %2345, %2440
  %2443 = fsub fast float -0.000000e+00, %2442
  %2444 = fcmp ogt float %2438, -0.000000e+00
  %2445 = select i1 %2444, float %2443, float %2441
  %2446 = call float @dx.op.unary.f32(i32 6, float %2439)  ; FAbs(value)
  %2447 = fdiv fast float 1.000000e+00, %2446
  %2448 = fmul fast float %2445, %2447
  %2449 = call float @dx.op.binary.f32(i32 35, float %2448, float 0.000000e+00)  ; FMax(a,b)
  %2450 = fsub fast float -0.000000e+00, %2391
  %2451 = fsub fast float -0.000000e+00, %2392
  %2452 = fsub fast float -0.000000e+00, %2393
  %2453 = call float @dx.op.dot3.f32(i32 55, float %2259, float %2260, float %2261, float %2450, float %2451, float %2452)  ; Dot3(ax,ay,az,bx,by,bz)
  %2454 = fsub fast float -0.000000e+00, %2453
  %2455 = call float @dx.op.dot3.f32(i32 55, float %2375, float %2376, float %2377, float %2450, float %2451, float %2452)  ; Dot3(ax,ay,az,bx,by,bz)
  %2456 = fadd fast float %2455, %2350
  %2457 = fadd fast float %2349, %2455
  %2458 = fsub fast float -0.000000e+00, %2457
  %2459 = fcmp ogt float %2453, -0.000000e+00
  %2460 = select i1 %2459, float %2458, float %2456
  %2461 = call float @dx.op.unary.f32(i32 6, float %2454)  ; FAbs(value)
  %2462 = fdiv fast float 1.000000e+00, %2461
  %2463 = fmul fast float %2460, %2462
  %2464 = call float @dx.op.binary.f32(i32 35, float %2463, float 0.000000e+00)  ; FMax(a,b)
  %2465 = call float @dx.op.binary.f32(i32 36, float %2449, float %2464)  ; FMin(a,b)
  %2466 = call float @dx.op.binary.f32(i32 36, float %2434, float %2465)  ; FMin(a,b)
  %2467 = fmul fast float %2466, %2259
  %2468 = fmul fast float %2466, %2260
  %2469 = fmul fast float %2466, %2261
  %2470 = fadd fast float %2467, %130
  %2471 = fadd fast float %2468, %131
  %2472 = fadd fast float %2469, %132
  %2473 = fsub fast float %2470, %2319
  %2474 = fsub fast float %2471, %2320
  %2475 = fsub fast float %2472, %2321
  br label %2483

; <label>:2476                                    ; preds = %2418
  %2477 = fmul fast float %2259, 8.096000e+03
  %2478 = fmul fast float %2260, 8.096000e+03
  %2479 = fmul fast float %2261, 8.096000e+03
  %2480 = fadd fast float %2477, %130
  %2481 = fadd fast float %2478, %131
  %2482 = fadd fast float %2479, %132
  br label %2483

; <label>:2483                                    ; preds = %2476, %2419
  %2484 = phi float [ %2259, %2476 ], [ %2473, %2419 ]
  %2485 = phi float [ %2260, %2476 ], [ %2474, %2419 ]
  %2486 = phi float [ %2261, %2476 ], [ %2475, %2419 ]
  %2487 = phi float [ %2480, %2476 ], [ %2470, %2419 ]
  %2488 = phi float [ %2481, %2476 ], [ %2471, %2419 ]
  %2489 = phi float [ %2482, %2476 ], [ %2472, %2419 ]
  %2490 = fcmp fast olt float %2338, 1.000000e+00
  br i1 %2490, label %2491, label %2522, !dx.controlflow.hints !79

; <label>:2491                                    ; preds = %2483
  %2492 = fmul fast float %2486, %2336
  %2493 = fmul fast float %2485, %2337
  %2494 = fsub fast float %2492, %2493
  %2495 = fmul fast float %2484, %2337
  %2496 = fmul fast float %2486, %2335
  %2497 = fsub fast float %2495, %2496
  %2498 = fmul fast float %2485, %2335
  %2499 = fmul fast float %2484, %2336
  %2500 = fsub fast float %2498, %2499
  %2501 = fmul fast float %2494, 2.000000e+00
  %2502 = fmul fast float %2497, 2.000000e+00
  %2503 = fmul fast float %2500, 2.000000e+00
  %2504 = fmul fast float %2501, %2338
  %2505 = fmul fast float %2502, %2338
  %2506 = fmul fast float %2503, %2338
  %2507 = fmul fast float %2503, %2336
  %2508 = fmul fast float %2502, %2337
  %2509 = fmul fast float %2501, %2337
  %2510 = fmul fast float %2503, %2335
  %2511 = fmul fast float %2502, %2335
  %2512 = fmul fast float %2501, %2336
  %2513 = fadd fast float %2507, %2484
  %2514 = fadd fast float %2513, %2504
  %2515 = fsub fast float %2514, %2508
  %2516 = fsub fast float %2485, %2510
  %2517 = fadd fast float %2516, %2505
  %2518 = fadd fast float %2517, %2509
  %2519 = fadd fast float %2506, %2486
  %2520 = fsub fast float %2519, %2512
  %2521 = fadd fast float %2520, %2511
  br label %2522

; <label>:2522                                    ; preds = %2491, %2483
  %2523 = phi float [ %2515, %2491 ], [ %2484, %2483 ]
  %2524 = phi float [ %2518, %2491 ], [ %2485, %2483 ]
  %2525 = phi float [ %2521, %2491 ], [ %2486, %2483 ]
  br i1 %2364, label %2557, label %2526

; <label>:2526                                    ; preds = %2522
  %2527 = fmul fast float %1870, 0x400187C840000000
  %2528 = fadd fast float %2527, 0xC00EFC2120000000
  %2529 = fmul fast float %2528, %1870
  %2530 = fadd fast float %2529, 0x3FE5D16340000000
  %2531 = fmul fast float %2530, %1870
  %2532 = fadd fast float %2531, 1.000000e+00
  %2533 = call float @dx.op.unary.f32(i32 7, float %2532)  ; Saturate(value)
  %2534 = fsub fast float %2487, %130
  %2535 = fsub fast float %2488, %131
  %2536 = fsub fast float %2489, %132
  %2537 = fsub fast float %2487, %2319
  %2538 = fsub fast float %2488, %2320
  %2539 = fsub fast float %2489, %2321
  %2540 = call float @dx.op.dot3.f32(i32 55, float %2534, float %2535, float %2536, float %2534, float %2535, float %2536)  ; Dot3(ax,ay,az,bx,by,bz)
  %2541 = call float @dx.op.dot3.f32(i32 55, float %2537, float %2538, float %2539, float %2537, float %2538, float %2539)  ; Dot3(ax,ay,az,bx,by,bz)
  %2542 = fadd fast float %2541, 0x3EE4F8B580000000
  %2543 = fdiv fast float %2540, %2542
  %2544 = bitcast float %2543 to i32
  %2545 = ashr i32 %2544, 1
  %2546 = add nsw i32 %2545, 532487669
  %2547 = bitcast i32 %2546 to float
  %2548 = fmul fast float %2547, %2533
  %2549 = call float @dx.op.unary.f32(i32 7, float %2548)  ; Saturate(value)
  %2550 = fmul fast float %2549, 0x4009981AE0000000
  %2551 = fsub fast float 0x40111BBD80000000, %2550
  %2552 = fmul fast float %2551, %2549
  %2553 = fadd fast float %2552, 0xC0009F6020000000
  %2554 = fmul fast float %2553, %2549
  %2555 = fadd fast float %2554, 1.000000e+00
  %2556 = call float @dx.op.unary.f32(i32 7, float %2555)  ; Saturate(value)
  br label %2560

; <label>:2557                                    ; preds = %2522
  %2558 = icmp ne i32 %2365, -1
  %2559 = zext i1 %2558 to i32
  br label %2560

; <label>:2560                                    ; preds = %2557, %2526
  %2561 = phi float [ %1870, %2557 ], [ %2556, %2526 ]
  %2562 = phi i32 [ %2559, %2557 ], [ 0, %2526 ]
  %2563 = fmul float %2561, 5.000000e+00
  %2564 = fsub float 5.000000e+00, %2563
  %2565 = icmp ne i32 %2562, 0
  %2566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2567 = extractvalue %dx.types.CBufRet.f32 %2566, 3
  %2568 = fadd fast float %2567, %2564
  %2569 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2568)  ; FMax(a,b)
  %2570 = call float @dx.op.unary.f32(i32 6, float %2523)  ; FAbs(value)
  %2571 = call float @dx.op.unary.f32(i32 6, float %2524)  ; FAbs(value)
  %2572 = fadd fast float %2571, %2570
  %2573 = call float @dx.op.unary.f32(i32 6, float %2525)  ; FAbs(value)
  %2574 = fadd fast float %2572, %2573
  %2575 = fcmp fast oeq float %2574, 0.000000e+00
  %2576 = fdiv fast float 1.000000e+00, %2574
  %2577 = select i1 %2575, float 1.000000e+00, float %2576
  %2578 = fmul fast float %2577, %2523
  %2579 = fmul fast float %2577, %2524
  %2580 = call float @dx.op.unary.f32(i32 6, float %2579)  ; FAbs(value)
  %2581 = call float @dx.op.unary.f32(i32 6, float %2578)  ; FAbs(value)
  %2582 = fsub fast float 1.000000e+00, %2580
  %2583 = fsub fast float 1.000000e+00, %2581
  %2584 = fcmp fast oge float %2578, 0.000000e+00
  %2585 = fcmp fast oge float %2579, 0.000000e+00
  %2586 = select i1 %2584, float 1.000000e+00, float -1.000000e+00
  %2587 = select i1 %2585, float 1.000000e+00, float -1.000000e+00
  %2588 = fcmp fast ole float %2525, 0.000000e+00
  %2589 = fmul fast float %2586, %2582
  %2590 = fmul fast float %2587, %2583
  %2591 = select i1 %2588, float %2589, float %2578
  %2592 = select i1 %2588, float %2590, float %2579
  %2593 = fmul fast float %2591, 5.000000e-01
  %2594 = fmul fast float %2592, 5.000000e-01
  %2595 = fadd fast float %2593, 5.000000e-01
  %2596 = fadd fast float %2594, 5.000000e-01
  %2597 = uitofp i32 %2362 to float
  %2598 = call float @dx.op.binary.f32(i32 36, float %2569, float 3.000000e+00)  ; FMin(a,b)
  %2599 = fadd fast float %2598, 2.000000e+00
  %2600 = call float @dx.op.unary.f32(i32 21, float %2599)  ; Exp(value)
  %2601 = extractvalue %dx.types.CBufRet.f32 %2566, 1
  %2602 = fmul fast float %2601, %2600
  %2603 = fmul fast float %2602, 2.000000e+00
  %2604 = fsub fast float 1.000000e+00, %2603
  %2605 = fmul fast float %2595, %2604
  %2606 = fmul fast float %2596, %2604
  %2607 = fadd fast float %2605, %2602
  %2608 = fadd fast float %2606, %2602
  %2609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %36, float %2607, float %2608, float %2597, float undef, i32 0, i32 0, i32 undef, float %2569)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2610 = extractvalue %dx.types.ResRet.f32 %2609, 0
  %2611 = extractvalue %dx.types.ResRet.f32 %2609, 1
  %2612 = extractvalue %dx.types.ResRet.f32 %2609, 2
  %2613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2614 = extractvalue %dx.types.CBufRet.f32 %2613, 3
  %2615 = fmul fast float %2614, %2332
  %2616 = call float @dx.op.binary.f32(i32 36, float %1900, float %2615)  ; FMin(a,b)
  %2617 = select i1 %2565, float %2616, float %2615
  %2618 = fmul fast float %2610, %2410
  %2619 = fmul fast float %2618, %2617
  %2620 = fmul fast float %2611, %2410
  %2621 = fmul fast float %2620, %2617
  %2622 = fmul fast float %2612, %2410
  %2623 = fmul fast float %2622, %2617
  %2624 = fadd fast float %2619, %2307
  %2625 = fadd fast float %2621, %2308
  %2626 = fadd fast float %2623, %2309
  %2627 = fsub fast float %2310, %2410
  br label %2412

; <label>:2628                                    ; preds = %2412
  br label %2629

; <label>:2629                                    ; preds = %2628, %2276
  %2630 = phi float [ %2277, %2276 ], [ %2413, %2628 ]
  %2631 = phi float [ %2278, %2276 ], [ %2414, %2628 ]
  %2632 = phi float [ %2279, %2276 ], [ %2415, %2628 ]
  %2633 = phi float [ %2280, %2276 ], [ %2416, %2628 ]
  %2634 = add i32 %2281, 1
  %2635 = icmp ugt i32 %2634, %2273
  br i1 %2635, label %2636, label %2276, !llvm.loop !80

; <label>:2636                                    ; preds = %2629
  br label %2637

; <label>:2637                                    ; preds = %2636, %2258
  %2638 = phi float [ 0.000000e+00, %2258 ], [ %2630, %2636 ]
  %2639 = phi float [ 0.000000e+00, %2258 ], [ %2631, %2636 ]
  %2640 = phi float [ 0.000000e+00, %2258 ], [ %2632, %2636 ]
  %2641 = call float @dx.op.dot3.f32(i32 55, float %2638, float %2639, float %2640, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2642 = select i1 %191, float 0.000000e+00, float %2638
  %2643 = select i1 %191, float %2641, float %2639
  %2644 = select i1 %191, float 0.000000e+00, float %2640
  %2645 = fcmp fast olt float %2211, 0.000000e+00
  %2646 = call float @dx.op.unary.f32(i32 6, float %2211)  ; FAbs(value)
  %2647 = fmul fast float %2646, %2140
  %2648 = fmul fast float %2646, %2141
  %2649 = fmul fast float %2646, %2142
  %2650 = select i1 %2645, float %2140, float %2647
  %2651 = select i1 %2645, float %2141, float %2648
  %2652 = select i1 %2645, float %2142, float %2649
  %2653 = fsub fast float 1.000000e+00, %2646
  %2654 = call float @dx.op.unary.f32(i32 7, float %2653)  ; Saturate(value)
  %2655 = fmul fast float %2654, %2642
  %2656 = fmul fast float %2654, %2643
  %2657 = fmul fast float %2654, %2644
  %2658 = fadd fast float %2650, %2655
  %2659 = fadd fast float %2651, %2656
  %2660 = fadd fast float %2652, %2657
  br label %2661

; <label>:2661                                    ; preds = %2637, %2194
  %2662 = phi float [ %2140, %2194 ], [ %2658, %2637 ]
  %2663 = phi float [ %2141, %2194 ], [ %2659, %2637 ]
  %2664 = phi float [ %2142, %2194 ], [ %2660, %2637 ]
  %2665 = call float @dx.op.dot3.f32(i32 55, float %1861, float %1862, float %1863, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2666 = fcmp fast ogt float %2665, 0x3E7FF19E20000000
  %2667 = fdiv fast float 1.000000e+00, %2665
  %2668 = select i1 %2666, float %2667, float 0.000000e+00
  %2669 = fmul fast float %2668, %1861
  %2670 = fmul fast float %2668, %1862
  %2671 = fmul fast float %2668, %1863
  %2672 = fadd fast float %2669, -1.000000e+00
  %2673 = fadd fast float %2670, -1.000000e+00
  %2674 = fadd fast float %2671, -1.000000e+00
  %2675 = fmul fast float %2672, 5.000000e-01
  %2676 = fmul fast float %2673, 5.000000e-01
  %2677 = fmul fast float %2674, 5.000000e-01
  %2678 = fadd fast float %2675, 1.000000e+00
  %2679 = fadd fast float %2676, 1.000000e+00
  %2680 = fadd fast float %2677, 1.000000e+00
  %2681 = call float @dx.op.binary.f32(i32 35, float %1874, float 0x3F50624DE0000000)  ; FMax(a,b)
  %2682 = fdiv fast float %892, %2681
  %2683 = fcmp fast olt float %1570, 1.270000e+02
  %2684 = fcmp fast olt float %1571, 1.270000e+02
  %2685 = fcmp fast olt float %1572, 1.270000e+02
  %2686 = fmul fast float %1570, 0xBFF7154760000000
  %2687 = fmul fast float %2686, %2682
  %2688 = fmul fast float %1571, 0xBFF7154760000000
  %2689 = fmul fast float %2688, %2682
  %2690 = fmul fast float %1572, 0xBFF7154760000000
  %2691 = fmul fast float %2690, %2682
  %2692 = call float @dx.op.unary.f32(i32 21, float %2687)  ; Exp(value)
  %2693 = call float @dx.op.unary.f32(i32 21, float %2689)  ; Exp(value)
  %2694 = call float @dx.op.unary.f32(i32 21, float %2691)  ; Exp(value)
  %2695 = call float @dx.op.unary.f32(i32 7, float %2692)  ; Saturate(value)
  %2696 = call float @dx.op.unary.f32(i32 7, float %2693)  ; Saturate(value)
  %2697 = call float @dx.op.unary.f32(i32 7, float %2694)  ; Saturate(value)
  %2698 = select i1 %2683, float %2695, float 0.000000e+00
  %2699 = select i1 %2684, float %2696, float 0.000000e+00
  %2700 = select i1 %2685, float %2697, float 0.000000e+00
  %2701 = fmul fast float %2698, %2200
  %2702 = fmul fast float %2699, %2200
  %2703 = fmul fast float %2700, %2200
  %2704 = fadd fast float %2701, -1.000000e+00
  %2705 = fadd fast float %2702, -1.000000e+00
  %2706 = fadd fast float %2703, -1.000000e+00
  %2707 = fmul fast float %2704, %1520
  %2708 = fmul fast float %2705, %1520
  %2709 = fmul fast float %2706, %1520
  %2710 = fmul fast float %2662, %2195
  %2711 = fmul fast float %2663, %2196
  %2712 = fmul fast float %2664, %2197
  %2713 = fsub fast float 1.000000e+00, %1874
  %2714 = bitcast float %2713 to i32
  %2715 = sitofp i32 %2714 to float
  %2716 = fmul fast float %2715, 5.000000e+00
  %2717 = fadd fast float %2716, 0xC1EFBF8940000000
  %2718 = fptosi float %2717 to i32
  %2719 = bitcast i32 %2718 to float
  %2720 = fmul fast float %2719, %1496
  %2721 = fmul fast float %2132, %2720
  %2722 = fmul fast float %2721, %2200
  %2723 = fmul fast float %2722, %2678
  %2724 = fmul fast float %2133, %2720
  %2725 = fmul fast float %2724, %2200
  %2726 = fmul fast float %2725, %2679
  %2727 = fmul fast float %2134, %2720
  %2728 = fmul fast float %2727, %2200
  %2729 = fmul fast float %2728, %2680
  %2730 = fadd fast float %2710, %1501
  %2731 = fadd fast float %2730, %2723
  %2732 = fmul fast float %2731, %1520
  %2733 = fadd fast float %2711, %1502
  %2734 = fadd fast float %2733, %2726
  %2735 = fmul fast float %2734, %1520
  %2736 = fadd fast float %2712, %1503
  %2737 = fadd fast float %2736, %2729
  %2738 = fmul fast float %2737, %1520
  %2739 = fmul fast float %1865, 0x4012D0A400000000
  %2740 = fadd fast float %2709, 1.000000e+00
  %2741 = fadd fast float %2708, 1.000000e+00
  %2742 = fadd fast float %2707, 1.000000e+00
  %2743 = fmul fast float %2200, %2134
  %2744 = fmul fast float %2200, %2133
  %2745 = fmul fast float %2200, %2132
  %2746 = fmul fast float %1889, %1520
  %2747 = fsub fast float 1.000000e+00, %2746
  %2748 = call float @dx.op.unary.f32(i32 7, float %2747)  ; Saturate(value)
  %2749 = fsub fast float 1.000000e+00, %2748
  %2750 = fadd fast float %2739, 0x3FDB6377A0000000
  %2751 = fmul fast float %2749, %2750
  %2752 = call float @dx.op.dot3.f32(i32 55, float %1588, float %1589, float %1590, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2753 = fadd fast float %2751, %2752
  %2754 = call float @dx.op.unary.f32(i32 7, float %2753)  ; Saturate(value)
  %2755 = call float @dx.op.binary.f32(i32 35, float %2754, float 0x3F847AE140000000)  ; FMax(a,b)
  %2756 = fmul fast float %2755, %2755
  %2757 = fmul fast float %2756, %2756
  %2758 = fmul fast float %2757, 0xC00A935000000000
  %2759 = call float @dx.op.unary.f32(i32 21, float %2758)  ; Exp(value)
  %2760 = fsub fast float 1.000000e+00, %2759
  %2761 = fmul fast float %2742, %2136
  %2762 = fmul fast float %2761, %2760
  %2763 = fmul fast float %2741, %2137
  %2764 = fmul fast float %2763, %2760
  %2765 = fmul fast float %2740, %2138
  %2766 = fmul fast float %2765, %2760
  %2767 = fadd fast float %2762, %2745
  %2768 = fmul fast float %2767, %1520
  %2769 = fadd fast float %2764, %2744
  %2770 = fmul fast float %2769, %1520
  %2771 = fadd fast float %2766, %2743
  %2772 = fmul fast float %2771, %1520
  %2773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2774 = extractvalue %dx.types.CBufRet.f32 %2773, 3
  %2775 = fcmp fast oeq float %2774, 0.000000e+00
  br i1 %2775, label %4379, label %2776

; <label>:2776                                    ; preds = %2661
  %2777 = extractvalue %dx.types.CBufRet.f32 %2773, 0
  %2778 = extractvalue %dx.types.CBufRet.f32 %2773, 1
  %2779 = extractvalue %dx.types.CBufRet.f32 %2773, 2
  %2780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2781 = extractvalue %dx.types.CBufRet.f32 %2780, 0
  %2782 = extractvalue %dx.types.CBufRet.f32 %2780, 1
  %2783 = extractvalue %dx.types.CBufRet.f32 %2780, 2
  %2784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2785 = extractvalue %dx.types.CBufRet.f32 %2784, 0
  %2786 = extractvalue %dx.types.CBufRet.f32 %2784, 1
  %2787 = call float @dx.op.dot3.f32(i32 55, float %2781, float %2782, float %2783, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2788 = select i1 %191, float %2785, float %2781
  %2789 = select i1 %191, float %2787, float %2782
  %2790 = select i1 %191, float %2786, float %2783
  %2791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2792 = extractvalue %dx.types.CBufRet.f32 %2791, 2
  %2793 = fmul fast float %2792, %85
  %2794 = fmul fast float %2792, %86
  %2795 = fmul fast float %2792, %87
  %2796 = fadd fast float %2793, %130
  %2797 = fadd fast float %2794, %131
  %2798 = fadd fast float %2795, %132
  %2799 = fcmp fast olt float %2774, 0.000000e+00
  br i1 %2799, label %3895, label %2800

; <label>:2800                                    ; preds = %2776
  %2801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2802 = extractvalue %dx.types.CBufRet.f32 %2801, 0
  %2803 = extractvalue %dx.types.CBufRet.f32 %2801, 1
  %2804 = extractvalue %dx.types.CBufRet.f32 %2801, 2
  %2805 = extractvalue %dx.types.CBufRet.f32 %2801, 3
  %2806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2807 = extractvalue %dx.types.CBufRet.f32 %2806, 0
  %2808 = extractvalue %dx.types.CBufRet.f32 %2806, 1
  %2809 = extractvalue %dx.types.CBufRet.f32 %2806, 2
  %2810 = extractvalue %dx.types.CBufRet.f32 %2806, 3
  %2811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2812 = extractvalue %dx.types.CBufRet.f32 %2811, 0
  %2813 = extractvalue %dx.types.CBufRet.f32 %2811, 1
  %2814 = extractvalue %dx.types.CBufRet.f32 %2811, 2
  %2815 = extractvalue %dx.types.CBufRet.f32 %2811, 3
  %2816 = fmul fast float %2802, %2796
  %2817 = call float @dx.op.tertiary.f32(i32 46, float %2797, float %2803, float %2816)  ; FMad(a,b,c)
  %2818 = call float @dx.op.tertiary.f32(i32 46, float %2798, float %2804, float %2817)  ; FMad(a,b,c)
  %2819 = fadd fast float %2818, %2805
  %2820 = fmul fast float %2807, %2796
  %2821 = call float @dx.op.tertiary.f32(i32 46, float %2797, float %2808, float %2820)  ; FMad(a,b,c)
  %2822 = call float @dx.op.tertiary.f32(i32 46, float %2798, float %2809, float %2821)  ; FMad(a,b,c)
  %2823 = fadd fast float %2822, %2810
  %2824 = fmul fast float %2812, %2796
  %2825 = call float @dx.op.tertiary.f32(i32 46, float %2797, float %2813, float %2824)  ; FMad(a,b,c)
  %2826 = call float @dx.op.tertiary.f32(i32 46, float %2798, float %2814, float %2825)  ; FMad(a,b,c)
  %2827 = fadd fast float %2826, %2815
  %2828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2829 = extractvalue %dx.types.CBufRet.f32 %2828, 0
  %2830 = extractvalue %dx.types.CBufRet.f32 %2828, 1
  %2831 = extractvalue %dx.types.CBufRet.f32 %2828, 3
  %2832 = fmul fast float %2831, %2819
  %2833 = fmul fast float %2831, %2823
  %2834 = fadd fast float %2832, %2829
  %2835 = fadd fast float %2833, %2830
  %2836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2837 = extractvalue %dx.types.CBufRet.f32 %2836, 0
  %2838 = extractvalue %dx.types.CBufRet.f32 %2836, 1
  %2839 = extractvalue %dx.types.CBufRet.f32 %2836, 3
  %2840 = fmul fast float %2839, %2819
  %2841 = fmul fast float %2839, %2823
  %2842 = fadd fast float %2840, %2837
  %2843 = fadd fast float %2841, %2838
  %2844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2845 = extractvalue %dx.types.CBufRet.f32 %2844, 1
  %2846 = fsub fast float %2845, %2827
  %2847 = extractvalue %dx.types.CBufRet.f32 %2844, 2
  %2848 = fmul fast float %2846, %2847
  %2849 = fsub fast float 1.000000e+00, %2848
  %2850 = call float @dx.op.unary.f32(i32 7, float %2849)  ; Saturate(value)
  %2851 = extractvalue %dx.types.CBufRet.f32 %2836, 2
  %2852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2853 = extractvalue %dx.types.CBufRet.f32 %2852, 2
  %2854 = fadd fast float %2853, %2851
  %2855 = fcmp fast ogt float %2854, 0.000000e+00
  br i1 %2855, label %2856, label %2880

; <label>:2856                                    ; preds = %2800
  %2857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2858 = extractvalue %dx.types.CBufRet.f32 %2857, 0
  %2859 = extractvalue %dx.types.CBufRet.f32 %2857, 1
  %2860 = fsub fast float %2842, %2858
  %2861 = fsub fast float %2843, %2859
  %2862 = fcmp fast olt float %2860, 0.000000e+00
  %2863 = fcmp fast olt float %2861, 0.000000e+00
  %2864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2865 = extractvalue %dx.types.CBufRet.f32 %2864, 0
  %2866 = extractvalue %dx.types.CBufRet.f32 %2864, 1
  %2867 = extractvalue %dx.types.CBufRet.f32 %2864, 2
  %2868 = extractvalue %dx.types.CBufRet.f32 %2864, 3
  %2869 = select i1 %2862, float %2865, float %2867
  %2870 = select i1 %2863, float %2866, float %2868
  %2871 = fmul fast float %2869, %2860
  %2872 = fmul fast float %2870, %2861
  %2873 = call float @dx.op.unary.f32(i32 6, float %2871)  ; FAbs(value)
  %2874 = call float @dx.op.unary.f32(i32 6, float %2872)  ; FAbs(value)
  %2875 = extractvalue %dx.types.CBufRet.f32 %2791, 0
  %2876 = call float @dx.op.binary.f32(i32 35, float %2873, float %2874)  ; FMax(a,b)
  %2877 = fsub fast float %2875, %2876
  %2878 = call float @dx.op.unary.f32(i32 7, float %2877)  ; Saturate(value)
  %2879 = fmul fast float %2878, %2850
  br label %2880

; <label>:2880                                    ; preds = %2856, %2800
  %2881 = phi float [ %2879, %2856 ], [ 0.000000e+00, %2800 ]
  %2882 = extractvalue %dx.types.CBufRet.f32 %2828, 2
  %2883 = extractvalue %dx.types.CBufRet.f32 %2852, 1
  %2884 = fadd fast float %2883, %2882
  %2885 = fcmp fast ogt float %2884, 0.000000e+00
  %2886 = extractvalue %dx.types.CBufRet.f32 %2791, 0
  br i1 %2885, label %2887, label %2910

; <label>:2887                                    ; preds = %2880
  %2888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2889 = extractvalue %dx.types.CBufRet.f32 %2888, 0
  %2890 = extractvalue %dx.types.CBufRet.f32 %2888, 1
  %2891 = fsub fast float %2834, %2889
  %2892 = fsub fast float %2835, %2890
  %2893 = fcmp fast olt float %2891, 0.000000e+00
  %2894 = fcmp fast olt float %2892, 0.000000e+00
  %2895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2896 = extractvalue %dx.types.CBufRet.f32 %2895, 0
  %2897 = extractvalue %dx.types.CBufRet.f32 %2895, 1
  %2898 = extractvalue %dx.types.CBufRet.f32 %2895, 2
  %2899 = extractvalue %dx.types.CBufRet.f32 %2895, 3
  %2900 = select i1 %2893, float %2896, float %2898
  %2901 = select i1 %2894, float %2897, float %2899
  %2902 = fmul fast float %2900, %2891
  %2903 = fmul fast float %2901, %2892
  %2904 = call float @dx.op.unary.f32(i32 6, float %2902)  ; FAbs(value)
  %2905 = call float @dx.op.unary.f32(i32 6, float %2903)  ; FAbs(value)
  %2906 = call float @dx.op.binary.f32(i32 35, float %2904, float %2905)  ; FMax(a,b)
  %2907 = fsub fast float %2886, %2906
  %2908 = call float @dx.op.unary.f32(i32 7, float %2907)  ; Saturate(value)
  %2909 = fmul fast float %2908, %2850
  br label %2910

; <label>:2910                                    ; preds = %2887, %2880
  %2911 = phi float [ %2909, %2887 ], [ 0.000000e+00, %2880 ]
  %2912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2913 = extractvalue %dx.types.CBufRet.f32 %2912, 1
  %2914 = call float @dx.op.unary.f32(i32 7, float %2913)  ; Saturate(value)
  %2915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2916 = extractvalue %dx.types.CBufRet.f32 %2915, 0
  %2917 = extractvalue %dx.types.CBufRet.f32 %2915, 1
  %2918 = fsub fast float %2819, %2916
  %2919 = fsub fast float %2823, %2917
  %2920 = fcmp fast olt float %2918, 0.000000e+00
  %2921 = fcmp fast olt float %2919, 0.000000e+00
  %2922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2923 = extractvalue %dx.types.CBufRet.f32 %2922, 0
  %2924 = extractvalue %dx.types.CBufRet.f32 %2922, 1
  %2925 = extractvalue %dx.types.CBufRet.f32 %2922, 2
  %2926 = extractvalue %dx.types.CBufRet.f32 %2922, 3
  %2927 = select i1 %2920, float %2923, float %2925
  %2928 = select i1 %2921, float %2924, float %2926
  %2929 = fmul fast float %2927, %2918
  %2930 = fmul fast float %2928, %2919
  %2931 = call float @dx.op.unary.f32(i32 6, float %2929)  ; FAbs(value)
  %2932 = call float @dx.op.unary.f32(i32 6, float %2930)  ; FAbs(value)
  %2933 = call float @dx.op.binary.f32(i32 35, float %2931, float %2932)  ; FMax(a,b)
  %2934 = fsub fast float %2886, %2933
  %2935 = call float @dx.op.unary.f32(i32 7, float %2934)  ; Saturate(value)
  %2936 = call float @dx.op.binary.f32(i32 36, float %2935, float %2914)  ; FMin(a,b)
  %2937 = fmul fast float %2936, %2850
  %2938 = fsub fast float %2911, %2937
  %2939 = fsub fast float %2881, %2911
  %2940 = fsub fast float %2939, %2937
  %2941 = call float @dx.op.binary.f32(i32 35, float %2911, float %2881)  ; FMax(a,b)
  %2942 = call float @dx.op.binary.f32(i32 35, float %2937, float %2941)  ; FMax(a,b)
  %2943 = fcmp fast olt float %2942, 1.000000e+00
  br i1 %2943, label %2944, label %3342, !dx.controlflow.hints !82

; <label>:2944                                    ; preds = %2910
  %2945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2946 = extractvalue %dx.types.CBufRet.f32 %2945, 0
  %2947 = fcmp fast une float %2946, 0.000000e+00
  br i1 %2947, label %2948, label %3342, !dx.controlflow.hints !83

; <label>:2948                                    ; preds = %2944
  %2949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2950 = extractvalue %dx.types.CBufRet.f32 %2949, 0
  %2951 = extractvalue %dx.types.CBufRet.f32 %2949, 1
  %2952 = extractvalue %dx.types.CBufRet.f32 %2949, 2
  %2953 = extractvalue %dx.types.CBufRet.f32 %2949, 3
  %2954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2955 = extractvalue %dx.types.CBufRet.f32 %2954, 0
  %2956 = extractvalue %dx.types.CBufRet.f32 %2954, 1
  %2957 = extractvalue %dx.types.CBufRet.f32 %2954, 2
  %2958 = extractvalue %dx.types.CBufRet.f32 %2954, 3
  %2959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2960 = extractvalue %dx.types.CBufRet.f32 %2959, 0
  %2961 = extractvalue %dx.types.CBufRet.f32 %2959, 1
  %2962 = extractvalue %dx.types.CBufRet.f32 %2959, 2
  %2963 = extractvalue %dx.types.CBufRet.f32 %2959, 3
  %2964 = fmul fast float %2950, %2796
  %2965 = call float @dx.op.tertiary.f32(i32 46, float %2797, float %2951, float %2964)  ; FMad(a,b,c)
  %2966 = call float @dx.op.tertiary.f32(i32 46, float %2798, float %2952, float %2965)  ; FMad(a,b,c)
  %2967 = fadd fast float %2966, %2953
  %2968 = fmul fast float %2955, %2796
  %2969 = call float @dx.op.tertiary.f32(i32 46, float %2797, float %2956, float %2968)  ; FMad(a,b,c)
  %2970 = call float @dx.op.tertiary.f32(i32 46, float %2798, float %2957, float %2969)  ; FMad(a,b,c)
  %2971 = fadd fast float %2970, %2958
  %2972 = fmul fast float %2960, %2796
  %2973 = call float @dx.op.tertiary.f32(i32 46, float %2797, float %2961, float %2972)  ; FMad(a,b,c)
  %2974 = call float @dx.op.tertiary.f32(i32 46, float %2798, float %2962, float %2973)  ; FMad(a,b,c)
  %2975 = fadd fast float %2974, %2963
  %2976 = fcmp fast oge float %2967, 1.000000e+00
  %2977 = fcmp fast oge float %2971, 1.000000e+00
  %2978 = or i1 %2976, %2977
  %2979 = fcmp fast olt float %2967, 0.000000e+00
  %2980 = fcmp fast olt float %2971, 0.000000e+00
  %2981 = or i1 %2979, %2980
  %2982 = or i1 %2978, %2981
  br i1 %2982, label %3342, label %2983, !dx.controlflow.hints !84

; <label>:2983                                    ; preds = %2948
  %2984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2985 = extractvalue %dx.types.CBufRet.f32 %2984, 0
  %2986 = extractvalue %dx.types.CBufRet.f32 %2984, 1
  %2987 = extractvalue %dx.types.CBufRet.f32 %2984, 2
  %2988 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2989 = extractvalue %dx.types.CBufRet.i32 %2988, 2
  %2990 = uitofp i32 %2989 to float
  %2991 = extractvalue %dx.types.CBufRet.i32 %2988, 3
  %2992 = uitofp i32 %2991 to float
  %2993 = extractvalue %dx.types.CBufRet.f32 %2984, 3
  %2994 = fmul fast float %2993, 2.000000e+00
  %2995 = fsub fast float %2967, %2985
  %2996 = fsub fast float %2971, %2986
  %2997 = fmul fast float %2994, %2995
  %2998 = fmul fast float %2994, %2996
  %2999 = fdiv fast float 1.000000e+00, %2779
  %3000 = fmul fast float %2998, %2999
  %3001 = call float @dx.op.unary.f32(i32 6, float %3000)  ; FAbs(value)
  %3002 = fmul fast float %2987, %2798
  %3003 = fmul fast float %3002, %2994
  %3004 = call float @dx.op.unary.f32(i32 6, float %3003)  ; FAbs(value)
  %3005 = call float @dx.op.unary.f32(i32 6, float %2997)  ; FAbs(value)
  %3006 = call float @dx.op.binary.f32(i32 35, float %3004, float %3001)  ; FMax(a,b)
  %3007 = call float @dx.op.binary.f32(i32 35, float %3005, float %3006)  ; FMax(a,b)
  %3008 = fmul fast float %3007, 2.000000e+00
  %3009 = call float @dx.op.unary.f32(i32 23, float %3008)  ; Log(value)
  %3010 = call float @dx.op.binary.f32(i32 35, float %3009, float %2990)  ; FMax(a,b)
  %3011 = call float @dx.op.unary.f32(i32 22, float %3010)  ; Frc(value)
  %3012 = fadd fast float %3011, 0xBFEA666660000000
  %3013 = fmul fast float %3012, 8.000000e+00
  %3014 = call float @dx.op.unary.f32(i32 7, float %3013)  ; Saturate(value)
  %3015 = call float @dx.op.unary.f32(i32 27, float %3010)  ; Round_ni(value)
  %3016 = fadd fast float %3015, %3014
  %3017 = call float @dx.op.binary.f32(i32 36, float %3016, float %2992)  ; FMin(a,b)
  %3018 = call float @dx.op.unary.f32(i32 27, float %3017)  ; Round_ni(value)
  %3019 = fsub fast float -0.000000e+00, %3018
  %3020 = call float @dx.op.unary.f32(i32 21, float %3019)  ; Exp(value)
  %3021 = fmul fast float %3020, %2994
  %3022 = fmul fast float %3021, %2967
  %3023 = fmul fast float %3021, %2971
  %3024 = fmul fast float %3022, 2.500000e-01
  %3025 = fmul fast float %3023, 2.500000e-01
  %3026 = fadd fast float %3024, 5.000000e-01
  %3027 = fadd fast float %3025, 5.000000e-01
  %3028 = fsub fast float %2992, %2990
  %3029 = fptoui float %3028 to i32
  %3030 = add i32 %3029, 320
  %3031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 %3030)  ; CBufferLoadLegacy(handle,regIndex)
  %3032 = extractvalue %dx.types.CBufRet.f32 %3031, 0
  %3033 = extractvalue %dx.types.CBufRet.f32 %3031, 1
  %3034 = fcmp fast une float %3017, %2992
  %3035 = fsub fast float %2967, %3032
  %3036 = fsub fast float %2971, %3033
  %3037 = call float @dx.op.unary.f32(i32 6, float %3035)  ; FAbs(value)
  %3038 = call float @dx.op.unary.f32(i32 6, float %3036)  ; FAbs(value)
  %3039 = fmul fast float %3037, %3021
  %3040 = fmul fast float %3038, %3021
  %3041 = fcmp fast olt float %3039, 1.000000e+00
  %3042 = fcmp fast olt float %3040, 1.000000e+00
  %3043 = and i1 %3041, %3042
  %3044 = or i1 %3034, %3043
  br i1 %3044, label %3045, label %3342, !dx.controlflow.hints !85

; <label>:3045                                    ; preds = %2983
  %3046 = fmul fast float %3023, 5.000000e-01
  %3047 = fmul fast float %3022, 5.000000e-01
  %3048 = fadd fast float %3046, 5.000000e-01
  %3049 = fadd fast float %3047, 5.000000e-01
  %3050 = sitofp i32 %2989 to float
  %3051 = fsub fast float %3017, %3050
  %3052 = call float @dx.op.unary.f32(i32 27, float %3051)  ; Round_ni(value)
  %3053 = call float @dx.op.unary.f32(i32 22, float %3017)  ; Frc(value)
  %3054 = call float @dx.op.unary.f32(i32 22, float %3049)  ; Frc(value)
  %3055 = call float @dx.op.unary.f32(i32 22, float %3048)  ; Frc(value)
  %3056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %37, float %3054, float %3055, float %3052, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3057 = extractvalue %dx.types.ResRet.f32 %3056, 0
  %3058 = extractvalue %dx.types.ResRet.f32 %3056, 1
  %3059 = extractvalue %dx.types.ResRet.f32 %3056, 2
  %3060 = extractvalue %dx.types.ResRet.f32 %3056, 3
  %3061 = fcmp fast ogt float %3053, 0.000000e+00
  br i1 %3061, label %3062, label %3083, !dx.controlflow.hints !86

; <label>:3062                                    ; preds = %3045
  %3063 = fadd fast float %3052, 1.000000e+00
  %3064 = call float @dx.op.unary.f32(i32 22, float %3026)  ; Frc(value)
  %3065 = call float @dx.op.unary.f32(i32 22, float %3027)  ; Frc(value)
  %3066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %37, float %3064, float %3065, float %3063, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3067 = extractvalue %dx.types.ResRet.f32 %3066, 0
  %3068 = extractvalue %dx.types.ResRet.f32 %3066, 1
  %3069 = extractvalue %dx.types.ResRet.f32 %3066, 2
  %3070 = extractvalue %dx.types.ResRet.f32 %3066, 3
  %3071 = fsub fast float %3067, %3057
  %3072 = fsub fast float %3068, %3058
  %3073 = fsub fast float %3069, %3059
  %3074 = fsub fast float %3070, %3060
  %3075 = fmul fast float %3071, %3053
  %3076 = fmul fast float %3072, %3053
  %3077 = fmul fast float %3073, %3053
  %3078 = fmul fast float %3074, %3053
  %3079 = fadd fast float %3075, %3057
  %3080 = fadd fast float %3076, %3058
  %3081 = fadd fast float %3077, %3059
  %3082 = fadd fast float %3078, %3060
  br label %3083

; <label>:3083                                    ; preds = %3062, %3045
  %3084 = phi float [ %3079, %3062 ], [ %3057, %3045 ]
  %3085 = phi float [ %3080, %3062 ], [ %3058, %3045 ]
  %3086 = phi float [ %3081, %3062 ], [ %3059, %3045 ]
  %3087 = phi float [ %3082, %3062 ], [ %3060, %3045 ]
  %3088 = fadd fast float %3084, -5.000000e-01
  %3089 = fadd fast float %3086, -5.000000e-01
  %3090 = fmul fast float %3088, 0xBFD5555560000000
  %3091 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3089, float %3090)  ; FMad(a,b,c)
  %3092 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3085, float 0.000000e+00)  ; FMad(a,b,c)
  %3093 = fadd fast float %3092, %3087
  %3094 = fmul fast float %3088, -7.500000e-01
  %3095 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3089, float %3094)  ; FMad(a,b,c)
  %3096 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3085, float 0.000000e+00)  ; FMad(a,b,c)
  %3097 = fadd fast float %3096, %3087
  %3098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3099 = extractvalue %dx.types.CBufRet.f32 %3098, 0
  %3100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3101 = extractvalue %dx.types.CBufRet.f32 %3100, 0
  %3102 = extractvalue %dx.types.CBufRet.f32 %3100, 1
  %3103 = extractvalue %dx.types.CBufRet.f32 %3100, 2
  %3104 = extractvalue %dx.types.CBufRet.f32 %3100, 3
  %3105 = fsub fast float %3101, %3091
  %3106 = fsub fast float %3102, %3093
  %3107 = fsub fast float %3103, %3095
  %3108 = fsub fast float %3104, %3097
  %3109 = fmul fast float %3105, %3099
  %3110 = fmul fast float %3106, %3099
  %3111 = fmul fast float %3107, %3099
  %3112 = fmul fast float %3108, %3099
  %3113 = fadd fast float %3109, %3091
  %3114 = fadd fast float %3110, %3093
  %3115 = fadd fast float %3111, %3095
  %3116 = fadd fast float %3112, %3097
  %3117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.i32 %3117, 0
  %3119 = and i32 %3118, 536870911
  %3120 = uitofp i32 %3119 to float
  %3121 = fmul fast float %3120, %2967
  %3122 = fmul fast float %3120, %2971
  %3123 = fptoui float %3121 to i32
  %3124 = fptoui float %3122 to i32
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = and i32 %3126, 31
  %3128 = lshr i32 %3123, %3127
  %3129 = lshr i32 %3124, %3127
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = and i32 %3131, 31
  %3133 = shl i32 1, %3132
  %3134 = call i32 @dx.op.binary.i32(i32 40, i32 %3133, i32 4)  ; UMin(a,b)
  %3135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.i32 %3135, 0
  %3137 = extractvalue %dx.types.ResRet.i32 %3135, 1
  %3138 = icmp eq i32 %3134, 0
  br i1 %3138, label %3180, label %3139

; <label>:3139                                    ; preds = %3083
  br label %3140

; <label>:3140                                    ; preds = %3168, %3139
  %3141 = phi i32 [ %3171, %3168 ], [ 0, %3139 ]
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = lshr i32 %3143, 16
  %3145 = and i32 %3144, 31
  %3146 = shl i32 %3129, %3145
  %3147 = add i32 %3146, %3128
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = and i32 %3149, 31
  %3151 = shl i32 %3147, %3150
  %3152 = add i32 %3151, %3141
  %3153 = shl i32 %3152, 2
  %3154 = add i32 %3153, 32
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3154, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = icmp slt i32 %3156, 0
  %3158 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %3141
  %3159 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %3141
  %3160 = bitcast float* %3158 to i32*
  %3161 = bitcast float* %3159 to i32*
  br i1 %3157, label %3162, label %3168

; <label>:3162                                    ; preds = %3140
  %3163 = and i32 %3156, 1073741823
  %3164 = add nuw nsw i32 %3163, 20
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3164, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = extractvalue %dx.types.ResRet.i32 %3165, 1
  br label %3168

; <label>:3168                                    ; preds = %3162, %3140
  %3169 = phi i32 [ %3166, %3162 ], [ %3136, %3140 ]
  %3170 = phi i32 [ %3167, %3162 ], [ %3137, %3140 ]
  store i32 %3169, i32* %3160, align 4
  store i32 %3170, i32* %3161, align 4
  %3171 = add nuw i32 %3141, 1
  %3172 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3173 = extractvalue %dx.types.CBufRet.i32 %3172, 2
  %3174 = icmp eq i32 %3173, 0
  %3175 = icmp ugt i32 %3156, -1073741825
  %3176 = and i1 %3175, %3174
  %3177 = icmp ult i32 %3171, %3134
  %3178 = and i1 %3176, %3177
  br i1 %3178, label %3140, label %3179

; <label>:3179                                    ; preds = %3168
  br label %3180

; <label>:3180                                    ; preds = %3179, %3083
  %3181 = phi i32 [ 0, %3083 ], [ %3171, %3179 ]
  %3182 = extractvalue %dx.types.CBufRet.f32 %2945, 2
  %3183 = fptoui float %3182 to i32
  %3184 = icmp eq i32 %3183, 0
  br i1 %3184, label %3236, label %3185

; <label>:3185                                    ; preds = %3180
  br label %3186

; <label>:3186                                    ; preds = %3231, %3185
  %3187 = phi i32 [ %3232, %3231 ], [ %3181, %3185 ]
  %3188 = phi i32 [ %3233, %3231 ], [ 0, %3185 ]
  %3189 = lshr i32 %3188, 2
  %3190 = and i32 %3188, 3
  %3191 = add nuw nsw i32 %3189, 83
  %3192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 %3191)  ; CBufferLoadLegacy(handle,regIndex)
  %3193 = extractvalue %dx.types.CBufRet.i32 %3192, 0
  %3194 = extractvalue %dx.types.CBufRet.i32 %3192, 1
  %3195 = extractvalue %dx.types.CBufRet.i32 %3192, 2
  %3196 = extractvalue %dx.types.CBufRet.i32 %3192, 3
  %3197 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 0
  store i32 %3193, i32* %3197, align 4
  %3198 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 1
  store i32 %3194, i32* %3198, align 4
  %3199 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 2
  store i32 %3195, i32* %3199, align 4
  %3200 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 3
  store i32 %3196, i32* %3200, align 4
  %3201 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 %3190
  %3202 = load i32, i32* %3201, align 4, !tbaa !87, !noalias !91
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = lshr i32 %3204, 16
  %3206 = and i32 %3205, 31
  %3207 = shl i32 %3129, %3206
  %3208 = add i32 %3207, %3128
  %3209 = shl i32 %3208, 2
  %3210 = add i32 %3209, %3202
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3210, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = icmp eq i32 %3212, 0
  br i1 %3213, label %3231, label %3214

; <label>:3214                                    ; preds = %3186
  %3215 = icmp slt i32 %3212, 0
  %3216 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %3187
  %3217 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %3187
  %3218 = bitcast float* %3216 to i32*
  %3219 = bitcast float* %3217 to i32*
  br i1 %3215, label %3220, label %3227

; <label>:3220                                    ; preds = %3214
  %3221 = and i32 %3212, 1073741823
  %3222 = add i32 %3202, 20
  %3223 = add i32 %3222, %3221
  %3224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3223, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.i32 %3224, 0
  %3226 = extractvalue %dx.types.ResRet.i32 %3224, 1
  br label %3227

; <label>:3227                                    ; preds = %3220, %3214
  %3228 = phi i32 [ %3225, %3220 ], [ %3136, %3214 ]
  %3229 = phi i32 [ %3226, %3220 ], [ %3137, %3214 ]
  store i32 %3228, i32* %3218, align 4
  store i32 %3229, i32* %3219, align 4
  %3230 = add i32 %3187, 1
  br label %3231

; <label>:3231                                    ; preds = %3227, %3186
  %3232 = phi i32 [ %3187, %3186 ], [ %3230, %3227 ]
  %3233 = add nuw i32 %3188, 1
  %3234 = icmp eq i32 %3233, %3183
  br i1 %3234, label %3235, label %3186

; <label>:3235                                    ; preds = %3231
  br label %3236

; <label>:3236                                    ; preds = %3235, %3180
  %3237 = phi i32 [ %3181, %3180 ], [ %3232, %3235 ]
  %3238 = icmp eq i32 %3237, 1
  %3239 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 0
  %3240 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 0
  br i1 %3238, label %3241, label %3244

; <label>:3241                                    ; preds = %3236
  %3242 = load float, float* %3239, align 4
  %3243 = load float, float* %3240, align 4
  br label %3271

; <label>:3244                                    ; preds = %3236
  %3245 = load float, float* %3239, align 4
  %3246 = load float, float* %3240, align 4
  %3247 = fdiv fast float 1.000000e+00, %3246
  %3248 = fsub fast float %3245, %3247
  %3249 = icmp ugt i32 %3237, 1
  br i1 %3249, label %3250, label %3266

; <label>:3250                                    ; preds = %3244
  br label %3251

; <label>:3251                                    ; preds = %3251, %3250
  %3252 = phi float [ %3261, %3251 ], [ %3248, %3250 ]
  %3253 = phi float [ %3262, %3251 ], [ %3245, %3250 ]
  %3254 = phi i32 [ %3263, %3251 ], [ 1, %3250 ]
  %3255 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %3254
  %3256 = load float, float* %3255, align 4
  %3257 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %3254
  %3258 = load float, float* %3257, align 4
  %3259 = fdiv fast float 1.000000e+00, %3258
  %3260 = fsub fast float %3256, %3259
  %3261 = call float @dx.op.binary.f32(i32 36, float %3252, float %3260)  ; FMin(a,b)
  %3262 = call float @dx.op.binary.f32(i32 35, float %3253, float %3256)  ; FMax(a,b)
  %3263 = add nuw i32 %3254, 1
  %3264 = icmp eq i32 %3263, %3237
  br i1 %3264, label %3265, label %3251

; <label>:3265                                    ; preds = %3251
  br label %3266

; <label>:3266                                    ; preds = %3265, %3244
  %3267 = phi float [ %3248, %3244 ], [ %3261, %3265 ]
  %3268 = phi float [ %3245, %3244 ], [ %3262, %3265 ]
  %3269 = fsub fast float %3268, %3267
  %3270 = fdiv fast float 1.000000e+00, %3269
  br label %3271

; <label>:3271                                    ; preds = %3266, %3241
  %3272 = phi float [ %3242, %3241 ], [ %3268, %3266 ]
  %3273 = phi float [ %3243, %3241 ], [ %3270, %3266 ]
  %3274 = fadd fast float %2975, %3272
  %3275 = fmul fast float %3274, %3273
  %3276 = call float @dx.op.unary.f32(i32 7, float %3275)  ; Saturate(value)
  %3277 = fmul fast float %3276, 2.000000e+00
  %3278 = fsub fast float 1.000000e+00, %3277
  %3279 = fmul fast float %3113, %3113
  %3280 = fsub fast float %3114, %3279
  %3281 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3280)  ; FMax(a,b)
  %3282 = fdiv fast float 1.000000e+00, %3281
  %3283 = fmul fast float %3114, %3113
  %3284 = fsub fast float %3115, %3283
  %3285 = fsub fast float %3278, %3113
  %3286 = fmul fast float %3278, %3278
  %3287 = fsub fast float %3286, %3114
  %3288 = fmul fast float %3282, %3284
  %3289 = fmul fast float %3288, %3285
  %3290 = fsub fast float %3287, %3289
  %3291 = fmul fast float %3114, %3114
  %3292 = fsub fast float %3116, %3291
  %3293 = fmul fast float %3284, %3284
  %3294 = fmul fast float %3293, %3282
  %3295 = fsub fast float %3292, %3294
  %3296 = fdiv fast float %3290, %3295
  %3297 = fmul fast float %3296, %3284
  %3298 = fsub fast float %3285, %3297
  %3299 = fmul fast float %3298, %3282
  %3300 = fmul fast float %3299, %3113
  %3301 = fsub fast float 1.000000e+00, %3300
  %3302 = fmul fast float %3296, %3114
  %3303 = fsub fast float %3301, %3302
  %3304 = fmul fast float %3299, %3299
  %3305 = fmul fast float %3296, 4.000000e+00
  %3306 = fmul fast float %3305, %3303
  %3307 = fsub fast float %3304, %3306
  %3308 = call float @dx.op.unary.f32(i32 24, float %3307)  ; Sqrt(value)
  %3309 = fcmp fast oge float %3299, 0.000000e+00
  %3310 = fsub fast float -0.000000e+00, %3308
  %3311 = select i1 %3309, float %3310, float %3308
  %3312 = fsub fast float %3311, %3299
  %3313 = fdiv fast float %3312, %3296
  %3314 = fdiv fast float %3303, %3312
  %3315 = fmul fast float %3313, 5.000000e-01
  %3316 = fmul fast float %3314, 2.000000e+00
  %3317 = select i1 %3309, float %3315, float %3316
  %3318 = select i1 %3309, float %3316, float %3315
  %3319 = call float @dx.op.binary.f32(i32 35, float %3317, float %3318)  ; FMax(a,b)
  %3320 = call float @dx.op.binary.f32(i32 36, float %3317, float %3318)  ; FMin(a,b)
  %3321 = fcmp fast ogt float %3278, %3319
  %3322 = fsub fast float %3278, %3320
  %3323 = fsub fast float %3278, %3319
  %3324 = fsub fast float %3319, %3320
  %3325 = select i1 %3321, float %3323, float %3324
  %3326 = fmul float %3322, %3325
  %3327 = select i1 %3321, float %3320, float %3278
  %3328 = fcmp fast ogt float %3278, %3320
  %3329 = fmul fast float %3327, %3319
  %3330 = fadd fast float %3327, %3319
  %3331 = fmul fast float %3330, %3113
  %3332 = fadd fast float %3329, %3114
  %3333 = fsub fast float %3332, %3331
  %3334 = fdiv fast float %3333, %3326
  %3335 = select i1 %3328, float %3334, float 0.000000e+00
  %3336 = fsub fast float 1.000000e+00, %3335
  %3337 = select i1 %3321, float %3336, float %3335
  %3338 = call float @dx.op.unary.f32(i32 7, float %3337)  ; Saturate(value)
  %3339 = extractvalue %dx.types.CBufRet.f32 %3098, 3
  %3340 = fmul fast float %3339, %3338
  %3341 = fsub fast float 1.000000e+00, %3340
  br label %3342

; <label>:3342                                    ; preds = %3271, %2983, %2948, %2944, %2910
  %3343 = phi float [ 1.000000e+00, %2910 ], [ %3341, %3271 ], [ 1.000000e+00, %2948 ], [ 1.000000e+00, %2983 ], [ 1.000000e+00, %2944 ]
  %3344 = fcmp fast ogt float %2940, 0.000000e+00
  br i1 %3344, label %3345, label %3507, !dx.controlflow.hints !100

; <label>:3345                                    ; preds = %3342
  %3346 = fadd fast float %2853, %2827
  %3347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3348 = extractvalue %dx.types.CBufRet.f32 %3347, 2
  %3349 = extractvalue %dx.types.CBufRet.f32 %3347, 3
  %3350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3351 = extractvalue %dx.types.CBufRet.f32 %3350, 2
  %3352 = call float @dx.op.binary.f32(i32 35, float %3346, float 0.000000e+00)  ; FMax(a,b)
  %3353 = fadd fast float %3352, 0x3F10000000000000
  %3354 = fcmp fast oeq float %3351, 0.000000e+00
  br i1 %3354, label %3355, label %3422

; <label>:3355                                    ; preds = %3345
  %3356 = extractvalue %dx.types.CBufRet.f32 %3347, 1
  %3357 = extractvalue %dx.types.CBufRet.f32 %3347, 0
  %3358 = fmul fast float %3357, %2842
  %3359 = fmul fast float %3356, %2843
  %3360 = fadd fast float %3358, 5.000000e-01
  %3361 = call float @dx.op.unary.f32(i32 27, float %3360)  ; Round_ni(value)
  %3362 = fadd fast float %3359, 5.000000e-01
  %3363 = call float @dx.op.unary.f32(i32 27, float %3362)  ; Round_ni(value)
  %3364 = fsub fast float %3360, %3361
  %3365 = fsub fast float %3362, %3363
  %3366 = fadd fast float %3361, -5.000000e-01
  %3367 = fadd fast float %3363, -5.000000e-01
  %3368 = fmul fast float %3364, 2.000000e+00
  %3369 = fsub fast float 3.000000e+00, %3368
  %3370 = fadd fast float %3368, 1.000000e+00
  %3371 = fsub fast float 2.000000e+00, %3364
  %3372 = bitcast float %3369 to i32
  %3373 = sub nsw i32 2129859010, %3372
  %3374 = bitcast i32 %3373 to float
  %3375 = fmul fast float %3374, %3371
  %3376 = fadd fast float %3375, -1.000000e+00
  %3377 = bitcast float %3370 to i32
  %3378 = sub nsw i32 2129859010, %3377
  %3379 = bitcast i32 %3378 to float
  %3380 = fmul fast float %3379, %3364
  %3381 = fadd fast float %3380, 1.000000e+00
  %3382 = fmul fast float %3365, 2.000000e+00
  %3383 = fsub fast float 3.000000e+00, %3382
  %3384 = fadd fast float %3382, 1.000000e+00
  %3385 = fsub fast float 2.000000e+00, %3365
  %3386 = bitcast float %3383 to i32
  %3387 = sub nsw i32 2129859010, %3386
  %3388 = bitcast i32 %3387 to float
  %3389 = fmul fast float %3388, %3385
  %3390 = fadd fast float %3389, -1.000000e+00
  %3391 = bitcast float %3384 to i32
  %3392 = sub nsw i32 2129859010, %3391
  %3393 = bitcast i32 %3392 to float
  %3394 = fmul fast float %3393, %3365
  %3395 = fadd fast float %3394, 1.000000e+00
  %3396 = fadd fast float %3376, %3366
  %3397 = fmul fast float %3396, %3348
  %3398 = fadd fast float %3390, %3367
  %3399 = fmul fast float %3398, %3349
  %3400 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %40, float %3397, float %3399, float undef, float undef, i32 0, i32 0, i32 undef, float %3353)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3401 = extractvalue %dx.types.ResRet.f32 %3400, 0
  %3402 = fmul fast float %3401, %3369
  %3403 = fadd fast float %3381, %3366
  %3404 = fmul fast float %3403, %3348
  %3405 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %40, float %3404, float %3399, float undef, float undef, i32 0, i32 0, i32 undef, float %3353)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3406 = extractvalue %dx.types.ResRet.f32 %3405, 0
  %3407 = fmul fast float %3406, %3370
  %3408 = fadd fast float %3395, %3367
  %3409 = fmul fast float %3408, %3349
  %3410 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %40, float %3397, float %3409, float undef, float undef, i32 0, i32 0, i32 undef, float %3353)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3411 = extractvalue %dx.types.ResRet.f32 %3410, 0
  %3412 = fmul fast float %3411, %3369
  %3413 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %40, float %3404, float %3409, float undef, float undef, i32 0, i32 0, i32 undef, float %3353)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3414 = extractvalue %dx.types.ResRet.f32 %3413, 0
  %3415 = fmul fast float %3414, %3370
  %3416 = fadd fast float %3415, %3412
  %3417 = fmul fast float %3416, %3384
  %3418 = fadd fast float %3407, %3402
  %3419 = fmul fast float %3418, %3383
  %3420 = fadd fast float %3419, %3417
  %3421 = fmul fast float %3420, 6.250000e-02
  br label %3507

; <label>:3422                                    ; preds = %3345
  %3423 = fmul fast float %202, 0x401921FB60000000
  %3424 = call float @dx.op.unary.f32(i32 13, float %3423)  ; Sin(value)
  %3425 = call float @dx.op.unary.f32(i32 12, float %3423)  ; Cos(value)
  %3426 = fsub fast float -0.000000e+00, %3424
  br label %3427

; <label>:3427                                    ; preds = %3476, %3422
  %3428 = phi float [ 0.000000e+00, %3422 ], [ %3471, %3476 ]
  %3429 = phi float [ 0.000000e+00, %3422 ], [ %3473, %3476 ]
  %3430 = phi i32 [ 0, %3422 ], [ %3477, %3476 ]
  %3431 = mul i32 %3430, 2
  %3432 = add i32 0, %3431
  %3433 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3432
  %3434 = load float, float* %3433, align 4
  %3435 = mul i32 %3430, 2
  %3436 = add i32 1, %3435
  %3437 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3436
  %3438 = load float, float* %3437, align 4
  %3439 = fmul fast float %3434, %3425
  %3440 = call float @dx.op.tertiary.f32(i32 46, float %3438, float %3426, float %3439)  ; FMad(a,b,c)
  %3441 = fmul fast float %3434, %3424
  %3442 = call float @dx.op.tertiary.f32(i32 46, float %3438, float %3425, float %3441)  ; FMad(a,b,c)
  %3443 = fmul fast float %3440, %3351
  %3444 = fmul fast float %3442, %3351
  %3445 = fadd fast float %3443, %2842
  %3446 = fadd fast float %3444, %2843
  %3447 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %39, float %3445, float %3446, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3448 = extractvalue %dx.types.ResRet.f32 %3447, 0
  %3449 = extractvalue %dx.types.ResRet.f32 %3447, 1
  %3450 = extractvalue %dx.types.ResRet.f32 %3447, 2
  %3451 = extractvalue %dx.types.ResRet.f32 %3447, 3
  %3452 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 0
  store float %3448, float* %3452, align 4
  %3453 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 1
  store float %3449, float* %3453, align 4
  %3454 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 2
  store float %3450, float* %3454, align 4
  %3455 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 3
  store float %3451, float* %3455, align 4
  %3456 = fsub fast float %3448, %3353
  %3457 = fcmp fast olt float %3456, 0.000000e+00
  %3458 = select i1 %3457, float 0.000000e+00, float 1.000000e+00
  %3459 = fadd fast float %3458, %3428
  %3460 = fmul fast float %3458, %3456
  %3461 = fadd fast float %3460, %3429
  br label %3462

; <label>:3462                                    ; preds = %3462, %3427
  %3463 = phi i32 [ 1, %3427 ], [ %3474, %3462 ]
  %3464 = phi float [ %3461, %3427 ], [ %3473, %3462 ]
  %3465 = phi float [ %3459, %3427 ], [ %3471, %3462 ]
  %3466 = getelementptr [4 x float], [4 x float]* %75, i32 0, i32 %3463
  %3467 = load float, float* %3466, align 4, !tbaa !101, !noalias !91
  %3468 = fsub fast float %3467, %3353
  %3469 = fcmp fast olt float %3468, 0.000000e+00
  %3470 = select i1 %3469, float 0.000000e+00, float 1.000000e+00
  %3471 = fadd fast float %3470, %3465
  %3472 = fmul fast float %3470, %3468
  %3473 = fadd fast float %3472, %3464
  %3474 = add nuw nsw i32 %3463, 1
  %3475 = icmp eq i32 %3474, 4
  br i1 %3475, label %3476, label %3462, !llvm.loop !103

; <label>:3476                                    ; preds = %3462
  %3477 = add nuw nsw i32 %3430, 1
  %3478 = icmp eq i32 %3477, 8
  br i1 %3478, label %3479, label %3427, !llvm.loop !104

; <label>:3479                                    ; preds = %3476
  %3480 = fdiv fast float 1.000000e+00, %3471
  %3481 = fmul fast float %3480, %3473
  %3482 = fdiv fast float 1.000000e+00, %3353
  %3483 = fmul fast float %3481, %3482
  %3484 = call float @dx.op.unary.f32(i32 7, float %3483)  ; Saturate(value)
  %3485 = call float @dx.op.binary.f32(i32 35, float %3484, float 0.000000e+00)  ; FMax(a,b)
  %3486 = fmul fast float %3471, 3.125000e-02
  %3487 = call float @dx.op.unary.f32(i32 7, float %3486)  ; Saturate(value)
  %3488 = fmul fast float %3487, 2.000000e+00
  %3489 = fadd fast float %3488, -1.000000e+00
  %3490 = fcmp fast ogt float %3489, 0.000000e+00
  %3491 = fcmp fast olt float %3489, 0.000000e+00
  %3492 = zext i1 %3490 to i32
  %3493 = zext i1 %3491 to i32
  %3494 = sub nsw i32 %3492, %3493
  %3495 = sitofp i32 %3494 to float
  %3496 = fmul fast float %3495, %3489
  %3497 = fsub fast float 1.000000e+00, %3496
  %3498 = fmul fast float %3497, %3497
  %3499 = fmul fast float %3498, %3497
  %3500 = fsub fast float %3497, %3499
  %3501 = fmul fast float %3500, %3485
  %3502 = fsub fast float 1.000000e+00, %3499
  %3503 = fsub fast float %3502, %3501
  %3504 = fmul fast float %3495, 5.000000e-01
  %3505 = fmul fast float %3504, %3503
  %3506 = fsub fast float 5.000000e-01, %3505
  br label %3507

; <label>:3507                                    ; preds = %3479, %3355, %3342
  %3508 = phi float [ 1.000000e+00, %3342 ], [ %3421, %3355 ], [ %3506, %3479 ]
  %3509 = fcmp fast ogt float %2938, 0.000000e+00
  br i1 %3509, label %3510, label %3674, !dx.controlflow.hints !105

; <label>:3510                                    ; preds = %3507
  %3511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3512 = extractvalue %dx.types.CBufRet.f32 %3511, 1
  %3513 = fadd fast float %3512, %2827
  %3514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3515 = extractvalue %dx.types.CBufRet.f32 %3514, 2
  %3516 = extractvalue %dx.types.CBufRet.f32 %3514, 3
  %3517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3518 = extractvalue %dx.types.CBufRet.f32 %3517, 1
  %3519 = call float @dx.op.binary.f32(i32 35, float %3513, float 0.000000e+00)  ; FMax(a,b)
  %3520 = fadd fast float %3519, 0x3F10000000000000
  %3521 = fcmp fast oeq float %3518, 0.000000e+00
  br i1 %3521, label %3522, label %3589

; <label>:3522                                    ; preds = %3510
  %3523 = extractvalue %dx.types.CBufRet.f32 %3514, 1
  %3524 = extractvalue %dx.types.CBufRet.f32 %3514, 0
  %3525 = fmul fast float %3524, %2834
  %3526 = fmul fast float %3523, %2835
  %3527 = fadd fast float %3525, 5.000000e-01
  %3528 = call float @dx.op.unary.f32(i32 27, float %3527)  ; Round_ni(value)
  %3529 = fadd fast float %3526, 5.000000e-01
  %3530 = call float @dx.op.unary.f32(i32 27, float %3529)  ; Round_ni(value)
  %3531 = fsub fast float %3527, %3528
  %3532 = fsub fast float %3529, %3530
  %3533 = fadd fast float %3528, -5.000000e-01
  %3534 = fadd fast float %3530, -5.000000e-01
  %3535 = fmul fast float %3531, 2.000000e+00
  %3536 = fsub fast float 3.000000e+00, %3535
  %3537 = fadd fast float %3535, 1.000000e+00
  %3538 = fsub fast float 2.000000e+00, %3531
  %3539 = bitcast float %3536 to i32
  %3540 = sub nsw i32 2129859010, %3539
  %3541 = bitcast i32 %3540 to float
  %3542 = fmul fast float %3541, %3538
  %3543 = fadd fast float %3542, -1.000000e+00
  %3544 = bitcast float %3537 to i32
  %3545 = sub nsw i32 2129859010, %3544
  %3546 = bitcast i32 %3545 to float
  %3547 = fmul fast float %3546, %3531
  %3548 = fadd fast float %3547, 1.000000e+00
  %3549 = fmul fast float %3532, 2.000000e+00
  %3550 = fsub fast float 3.000000e+00, %3549
  %3551 = fadd fast float %3549, 1.000000e+00
  %3552 = fsub fast float 2.000000e+00, %3532
  %3553 = bitcast float %3550 to i32
  %3554 = sub nsw i32 2129859010, %3553
  %3555 = bitcast i32 %3554 to float
  %3556 = fmul fast float %3555, %3552
  %3557 = fadd fast float %3556, -1.000000e+00
  %3558 = bitcast float %3551 to i32
  %3559 = sub nsw i32 2129859010, %3558
  %3560 = bitcast i32 %3559 to float
  %3561 = fmul fast float %3560, %3532
  %3562 = fadd fast float %3561, 1.000000e+00
  %3563 = fadd fast float %3543, %3533
  %3564 = fmul fast float %3563, %3515
  %3565 = fadd fast float %3557, %3534
  %3566 = fmul fast float %3565, %3516
  %3567 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %40, float %3564, float %3566, float undef, float undef, i32 0, i32 0, i32 undef, float %3520)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3568 = extractvalue %dx.types.ResRet.f32 %3567, 0
  %3569 = fmul fast float %3568, %3536
  %3570 = fadd fast float %3548, %3533
  %3571 = fmul fast float %3570, %3515
  %3572 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %40, float %3571, float %3566, float undef, float undef, i32 0, i32 0, i32 undef, float %3520)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3573 = extractvalue %dx.types.ResRet.f32 %3572, 0
  %3574 = fmul fast float %3573, %3537
  %3575 = fadd fast float %3562, %3534
  %3576 = fmul fast float %3575, %3516
  %3577 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %40, float %3564, float %3576, float undef, float undef, i32 0, i32 0, i32 undef, float %3520)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3578 = extractvalue %dx.types.ResRet.f32 %3577, 0
  %3579 = fmul fast float %3578, %3536
  %3580 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %40, float %3571, float %3576, float undef, float undef, i32 0, i32 0, i32 undef, float %3520)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3581 = extractvalue %dx.types.ResRet.f32 %3580, 0
  %3582 = fmul fast float %3581, %3537
  %3583 = fadd fast float %3582, %3579
  %3584 = fmul fast float %3583, %3551
  %3585 = fadd fast float %3574, %3569
  %3586 = fmul fast float %3585, %3550
  %3587 = fadd fast float %3586, %3584
  %3588 = fmul fast float %3587, 6.250000e-02
  br label %3674

; <label>:3589                                    ; preds = %3510
  %3590 = fmul fast float %202, 0x401921FB60000000
  %3591 = call float @dx.op.unary.f32(i32 13, float %3590)  ; Sin(value)
  %3592 = call float @dx.op.unary.f32(i32 12, float %3590)  ; Cos(value)
  %3593 = fsub fast float -0.000000e+00, %3591
  br label %3594

; <label>:3594                                    ; preds = %3643, %3589
  %3595 = phi float [ 0.000000e+00, %3589 ], [ %3638, %3643 ]
  %3596 = phi float [ 0.000000e+00, %3589 ], [ %3640, %3643 ]
  %3597 = phi i32 [ 0, %3589 ], [ %3644, %3643 ]
  %3598 = mul i32 %3597, 2
  %3599 = add i32 0, %3598
  %3600 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3599
  %3601 = load float, float* %3600, align 4
  %3602 = mul i32 %3597, 2
  %3603 = add i32 1, %3602
  %3604 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3603
  %3605 = load float, float* %3604, align 4
  %3606 = fmul fast float %3601, %3592
  %3607 = call float @dx.op.tertiary.f32(i32 46, float %3605, float %3593, float %3606)  ; FMad(a,b,c)
  %3608 = fmul fast float %3601, %3591
  %3609 = call float @dx.op.tertiary.f32(i32 46, float %3605, float %3592, float %3608)  ; FMad(a,b,c)
  %3610 = fmul fast float %3607, %3518
  %3611 = fmul fast float %3609, %3518
  %3612 = fadd fast float %3610, %2834
  %3613 = fadd fast float %3611, %2835
  %3614 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %39, float %3612, float %3613, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3615 = extractvalue %dx.types.ResRet.f32 %3614, 0
  %3616 = extractvalue %dx.types.ResRet.f32 %3614, 1
  %3617 = extractvalue %dx.types.ResRet.f32 %3614, 2
  %3618 = extractvalue %dx.types.ResRet.f32 %3614, 3
  %3619 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 0
  store float %3615, float* %3619, align 4
  %3620 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 1
  store float %3616, float* %3620, align 4
  %3621 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 2
  store float %3617, float* %3621, align 4
  %3622 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 3
  store float %3618, float* %3622, align 4
  %3623 = fsub fast float %3615, %3520
  %3624 = fcmp fast olt float %3623, 0.000000e+00
  %3625 = select i1 %3624, float 0.000000e+00, float 1.000000e+00
  %3626 = fadd fast float %3625, %3595
  %3627 = fmul fast float %3625, %3623
  %3628 = fadd fast float %3627, %3596
  br label %3629

; <label>:3629                                    ; preds = %3629, %3594
  %3630 = phi i32 [ 1, %3594 ], [ %3641, %3629 ]
  %3631 = phi float [ %3628, %3594 ], [ %3640, %3629 ]
  %3632 = phi float [ %3626, %3594 ], [ %3638, %3629 ]
  %3633 = getelementptr [4 x float], [4 x float]* %74, i32 0, i32 %3630
  %3634 = load float, float* %3633, align 4, !tbaa !101, !noalias !91
  %3635 = fsub fast float %3634, %3520
  %3636 = fcmp fast olt float %3635, 0.000000e+00
  %3637 = select i1 %3636, float 0.000000e+00, float 1.000000e+00
  %3638 = fadd fast float %3637, %3632
  %3639 = fmul fast float %3637, %3635
  %3640 = fadd fast float %3639, %3631
  %3641 = add nuw nsw i32 %3630, 1
  %3642 = icmp eq i32 %3641, 4
  br i1 %3642, label %3643, label %3629, !llvm.loop !103

; <label>:3643                                    ; preds = %3629
  %3644 = add nuw nsw i32 %3597, 1
  %3645 = icmp eq i32 %3644, 8
  br i1 %3645, label %3646, label %3594, !llvm.loop !104

; <label>:3646                                    ; preds = %3643
  %3647 = fdiv fast float 1.000000e+00, %3638
  %3648 = fmul fast float %3647, %3640
  %3649 = fdiv fast float 1.000000e+00, %3520
  %3650 = fmul fast float %3648, %3649
  %3651 = call float @dx.op.unary.f32(i32 7, float %3650)  ; Saturate(value)
  %3652 = call float @dx.op.binary.f32(i32 35, float %3651, float 0.000000e+00)  ; FMax(a,b)
  %3653 = fmul fast float %3638, 3.125000e-02
  %3654 = call float @dx.op.unary.f32(i32 7, float %3653)  ; Saturate(value)
  %3655 = fmul fast float %3654, 2.000000e+00
  %3656 = fadd fast float %3655, -1.000000e+00
  %3657 = fcmp fast ogt float %3656, 0.000000e+00
  %3658 = fcmp fast olt float %3656, 0.000000e+00
  %3659 = zext i1 %3657 to i32
  %3660 = zext i1 %3658 to i32
  %3661 = sub nsw i32 %3659, %3660
  %3662 = sitofp i32 %3661 to float
  %3663 = fmul fast float %3662, %3656
  %3664 = fsub fast float 1.000000e+00, %3663
  %3665 = fmul fast float %3664, %3664
  %3666 = fmul fast float %3665, %3664
  %3667 = fsub fast float %3664, %3666
  %3668 = fmul fast float %3667, %3652
  %3669 = fsub fast float 1.000000e+00, %3666
  %3670 = fsub fast float %3669, %3668
  %3671 = fmul fast float %3662, 5.000000e-01
  %3672 = fmul fast float %3671, %3670
  %3673 = fsub fast float 5.000000e-01, %3672
  br label %3674

; <label>:3674                                    ; preds = %3646, %3522, %3507
  %3675 = phi float [ 1.000000e+00, %3507 ], [ %3588, %3522 ], [ %3673, %3646 ]
  %3676 = fcmp fast ogt float %2937, 0.000000e+00
  br i1 %3676, label %3677, label %3841, !dx.controlflow.hints !106

; <label>:3677                                    ; preds = %3674
  %3678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3679 = extractvalue %dx.types.CBufRet.f32 %3678, 0
  %3680 = fadd fast float %3679, %2827
  %3681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3682 = extractvalue %dx.types.CBufRet.f32 %3681, 2
  %3683 = extractvalue %dx.types.CBufRet.f32 %3681, 3
  %3684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3685 = extractvalue %dx.types.CBufRet.f32 %3684, 0
  %3686 = call float @dx.op.binary.f32(i32 35, float %3680, float 0.000000e+00)  ; FMax(a,b)
  %3687 = fadd fast float %3686, 0x3F10000000000000
  %3688 = fcmp fast oeq float %3685, 0.000000e+00
  br i1 %3688, label %3689, label %3756

; <label>:3689                                    ; preds = %3677
  %3690 = extractvalue %dx.types.CBufRet.f32 %3681, 1
  %3691 = extractvalue %dx.types.CBufRet.f32 %3681, 0
  %3692 = fmul fast float %3691, %2819
  %3693 = fmul fast float %3690, %2823
  %3694 = fadd fast float %3692, 5.000000e-01
  %3695 = call float @dx.op.unary.f32(i32 27, float %3694)  ; Round_ni(value)
  %3696 = fadd fast float %3693, 5.000000e-01
  %3697 = call float @dx.op.unary.f32(i32 27, float %3696)  ; Round_ni(value)
  %3698 = fsub fast float %3694, %3695
  %3699 = fsub fast float %3696, %3697
  %3700 = fadd fast float %3695, -5.000000e-01
  %3701 = fadd fast float %3697, -5.000000e-01
  %3702 = fmul fast float %3698, 2.000000e+00
  %3703 = fsub fast float 3.000000e+00, %3702
  %3704 = fadd fast float %3702, 1.000000e+00
  %3705 = fsub fast float 2.000000e+00, %3698
  %3706 = bitcast float %3703 to i32
  %3707 = sub nsw i32 2129859010, %3706
  %3708 = bitcast i32 %3707 to float
  %3709 = fmul fast float %3708, %3705
  %3710 = fadd fast float %3709, -1.000000e+00
  %3711 = bitcast float %3704 to i32
  %3712 = sub nsw i32 2129859010, %3711
  %3713 = bitcast i32 %3712 to float
  %3714 = fmul fast float %3713, %3698
  %3715 = fadd fast float %3714, 1.000000e+00
  %3716 = fmul fast float %3699, 2.000000e+00
  %3717 = fsub fast float 3.000000e+00, %3716
  %3718 = fadd fast float %3716, 1.000000e+00
  %3719 = fsub fast float 2.000000e+00, %3699
  %3720 = bitcast float %3717 to i32
  %3721 = sub nsw i32 2129859010, %3720
  %3722 = bitcast i32 %3721 to float
  %3723 = fmul fast float %3722, %3719
  %3724 = fadd fast float %3723, -1.000000e+00
  %3725 = bitcast float %3718 to i32
  %3726 = sub nsw i32 2129859010, %3725
  %3727 = bitcast i32 %3726 to float
  %3728 = fmul fast float %3727, %3699
  %3729 = fadd fast float %3728, 1.000000e+00
  %3730 = fadd fast float %3710, %3700
  %3731 = fmul fast float %3730, %3682
  %3732 = fadd fast float %3724, %3701
  %3733 = fmul fast float %3732, %3683
  %3734 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %40, float %3731, float %3733, float undef, float undef, i32 0, i32 0, i32 undef, float %3687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3735 = extractvalue %dx.types.ResRet.f32 %3734, 0
  %3736 = fmul fast float %3735, %3703
  %3737 = fadd fast float %3715, %3700
  %3738 = fmul fast float %3737, %3682
  %3739 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %40, float %3738, float %3733, float undef, float undef, i32 0, i32 0, i32 undef, float %3687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3740 = extractvalue %dx.types.ResRet.f32 %3739, 0
  %3741 = fmul fast float %3740, %3704
  %3742 = fadd fast float %3729, %3701
  %3743 = fmul fast float %3742, %3683
  %3744 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %40, float %3731, float %3743, float undef, float undef, i32 0, i32 0, i32 undef, float %3687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3745 = extractvalue %dx.types.ResRet.f32 %3744, 0
  %3746 = fmul fast float %3745, %3703
  %3747 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %40, float %3738, float %3743, float undef, float undef, i32 0, i32 0, i32 undef, float %3687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3748 = extractvalue %dx.types.ResRet.f32 %3747, 0
  %3749 = fmul fast float %3748, %3704
  %3750 = fadd fast float %3749, %3746
  %3751 = fmul fast float %3750, %3718
  %3752 = fadd fast float %3741, %3736
  %3753 = fmul fast float %3752, %3717
  %3754 = fadd fast float %3753, %3751
  %3755 = fmul fast float %3754, 6.250000e-02
  br label %3841

; <label>:3756                                    ; preds = %3677
  %3757 = fmul fast float %202, 0x401921FB60000000
  %3758 = call float @dx.op.unary.f32(i32 13, float %3757)  ; Sin(value)
  %3759 = call float @dx.op.unary.f32(i32 12, float %3757)  ; Cos(value)
  %3760 = fsub fast float -0.000000e+00, %3758
  br label %3761

; <label>:3761                                    ; preds = %3810, %3756
  %3762 = phi float [ 0.000000e+00, %3756 ], [ %3805, %3810 ]
  %3763 = phi float [ 0.000000e+00, %3756 ], [ %3807, %3810 ]
  %3764 = phi i32 [ 0, %3756 ], [ %3811, %3810 ]
  %3765 = mul i32 %3764, 2
  %3766 = add i32 0, %3765
  %3767 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3766
  %3768 = load float, float* %3767, align 4
  %3769 = mul i32 %3764, 2
  %3770 = add i32 1, %3769
  %3771 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3770
  %3772 = load float, float* %3771, align 4
  %3773 = fmul fast float %3768, %3759
  %3774 = call float @dx.op.tertiary.f32(i32 46, float %3772, float %3760, float %3773)  ; FMad(a,b,c)
  %3775 = fmul fast float %3768, %3758
  %3776 = call float @dx.op.tertiary.f32(i32 46, float %3772, float %3759, float %3775)  ; FMad(a,b,c)
  %3777 = fmul fast float %3774, %3685
  %3778 = fmul fast float %3776, %3685
  %3779 = fadd fast float %3777, %2819
  %3780 = fadd fast float %3778, %2823
  %3781 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %39, float %3779, float %3780, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3782 = extractvalue %dx.types.ResRet.f32 %3781, 0
  %3783 = extractvalue %dx.types.ResRet.f32 %3781, 1
  %3784 = extractvalue %dx.types.ResRet.f32 %3781, 2
  %3785 = extractvalue %dx.types.ResRet.f32 %3781, 3
  %3786 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 0
  store float %3782, float* %3786, align 4
  %3787 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 1
  store float %3783, float* %3787, align 4
  %3788 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 2
  store float %3784, float* %3788, align 4
  %3789 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 3
  store float %3785, float* %3789, align 4
  %3790 = fsub fast float %3782, %3687
  %3791 = fcmp fast olt float %3790, 0.000000e+00
  %3792 = select i1 %3791, float 0.000000e+00, float 1.000000e+00
  %3793 = fadd fast float %3792, %3762
  %3794 = fmul fast float %3792, %3790
  %3795 = fadd fast float %3794, %3763
  br label %3796

; <label>:3796                                    ; preds = %3796, %3761
  %3797 = phi i32 [ 1, %3761 ], [ %3808, %3796 ]
  %3798 = phi float [ %3795, %3761 ], [ %3807, %3796 ]
  %3799 = phi float [ %3793, %3761 ], [ %3805, %3796 ]
  %3800 = getelementptr [4 x float], [4 x float]* %73, i32 0, i32 %3797
  %3801 = load float, float* %3800, align 4, !tbaa !101, !noalias !91
  %3802 = fsub fast float %3801, %3687
  %3803 = fcmp fast olt float %3802, 0.000000e+00
  %3804 = select i1 %3803, float 0.000000e+00, float 1.000000e+00
  %3805 = fadd fast float %3804, %3799
  %3806 = fmul fast float %3804, %3802
  %3807 = fadd fast float %3806, %3798
  %3808 = add nuw nsw i32 %3797, 1
  %3809 = icmp eq i32 %3808, 4
  br i1 %3809, label %3810, label %3796, !llvm.loop !103

; <label>:3810                                    ; preds = %3796
  %3811 = add nuw nsw i32 %3764, 1
  %3812 = icmp eq i32 %3811, 8
  br i1 %3812, label %3813, label %3761, !llvm.loop !104

; <label>:3813                                    ; preds = %3810
  %3814 = fdiv fast float 1.000000e+00, %3805
  %3815 = fmul fast float %3814, %3807
  %3816 = fdiv fast float 1.000000e+00, %3687
  %3817 = fmul fast float %3815, %3816
  %3818 = call float @dx.op.unary.f32(i32 7, float %3817)  ; Saturate(value)
  %3819 = call float @dx.op.binary.f32(i32 35, float %3818, float 0.000000e+00)  ; FMax(a,b)
  %3820 = fmul fast float %3805, 3.125000e-02
  %3821 = call float @dx.op.unary.f32(i32 7, float %3820)  ; Saturate(value)
  %3822 = fmul fast float %3821, 2.000000e+00
  %3823 = fadd fast float %3822, -1.000000e+00
  %3824 = fcmp fast ogt float %3823, 0.000000e+00
  %3825 = fcmp fast olt float %3823, 0.000000e+00
  %3826 = zext i1 %3824 to i32
  %3827 = zext i1 %3825 to i32
  %3828 = sub nsw i32 %3826, %3827
  %3829 = sitofp i32 %3828 to float
  %3830 = fmul fast float %3829, %3823
  %3831 = fsub fast float 1.000000e+00, %3830
  %3832 = fmul fast float %3831, %3831
  %3833 = fmul fast float %3832, %3831
  %3834 = fsub fast float %3831, %3833
  %3835 = fmul fast float %3834, %3819
  %3836 = fsub fast float 1.000000e+00, %3833
  %3837 = fsub fast float %3836, %3835
  %3838 = fmul fast float %3829, 5.000000e-01
  %3839 = fmul fast float %3838, %3837
  %3840 = fsub fast float 5.000000e-01, %3839
  br label %3841

; <label>:3841                                    ; preds = %3813, %3689, %3674
  %3842 = phi float [ 1.000000e+00, %3674 ], [ %3755, %3689 ], [ %3840, %3813 ]
  %3843 = fsub fast float %3508, %3343
  %3844 = fmul fast float %3843, %2881
  %3845 = fadd fast float %3844, %3343
  %3846 = fsub fast float %3675, %3845
  %3847 = fmul fast float %3846, %2911
  %3848 = fadd fast float %3847, %3845
  %3849 = fsub fast float %3842, %3848
  %3850 = fmul fast float %3849, %2937
  %3851 = fadd fast float %3850, %3848
  %3852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3853 = extractvalue %dx.types.CBufRet.f32 %3852, 2
  %3854 = fcmp fast ogt float %3853, 0.000000e+00
  br i1 %3854, label %3855, label %3895, !dx.controlflow.hints !107

; <label>:3855                                    ; preds = %3841
  %3856 = fcmp fast ugt float %3853, 0.000000e+00
  br i1 %3856, label %3857, label %3892

; <label>:3857                                    ; preds = %3855
  %3858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3859 = extractvalue %dx.types.CBufRet.f32 %3858, 0
  %3860 = extractvalue %dx.types.CBufRet.f32 %3858, 1
  %3861 = extractvalue %dx.types.CBufRet.f32 %3858, 2
  %3862 = extractvalue %dx.types.CBufRet.f32 %3858, 3
  %3863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3864 = extractvalue %dx.types.CBufRet.f32 %3863, 0
  %3865 = extractvalue %dx.types.CBufRet.f32 %3863, 1
  %3866 = extractvalue %dx.types.CBufRet.f32 %3863, 2
  %3867 = extractvalue %dx.types.CBufRet.f32 %3863, 3
  %3868 = extractvalue %dx.types.CBufRet.f32 %3852, 0
  %3869 = extractvalue %dx.types.CBufRet.f32 %3852, 1
  %3870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3871 = extractvalue %dx.types.CBufRet.f32 %3870, 0
  %3872 = extractvalue %dx.types.CBufRet.f32 %3870, 1
  %3873 = extractvalue %dx.types.CBufRet.f32 %3870, 2
  %3874 = fadd fast float %3871, %2796
  %3875 = fadd fast float %3872, %2797
  %3876 = fadd fast float %3873, %2798
  %3877 = fmul fast float %3874, %3859
  %3878 = call float @dx.op.tertiary.f32(i32 46, float %3860, float %3875, float %3877)  ; FMad(a,b,c)
  %3879 = call float @dx.op.tertiary.f32(i32 46, float %3861, float %3876, float %3878)  ; FMad(a,b,c)
  %3880 = fadd fast float %3879, %3862
  %3881 = fmul fast float %3874, %3864
  %3882 = call float @dx.op.tertiary.f32(i32 46, float %3865, float %3875, float %3881)  ; FMad(a,b,c)
  %3883 = call float @dx.op.tertiary.f32(i32 46, float %3866, float %3876, float %3882)  ; FMad(a,b,c)
  %3884 = fadd fast float %3883, %3867
  %3885 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %35, float %3880, float %3884, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3886 = extractvalue %dx.types.ResRet.f32 %3885, 0
  %3887 = fmul fast float %3886, %3869
  %3888 = fadd fast float %3887, %3868
  %3889 = call float @dx.op.unary.f32(i32 7, float %3888)  ; Saturate(value)
  %3890 = fmul fast float %3889, %3853
  %3891 = fsub fast float 1.000000e+00, %3890
  br label %3892

; <label>:3892                                    ; preds = %3857, %3855
  %3893 = phi float [ %3891, %3857 ], [ 1.000000e+00, %3855 ]
  %3894 = fmul fast float %3893, %3851
  br label %3895

; <label>:3895                                    ; preds = %3892, %3841, %2776
  %3896 = phi float [ 1.000000e+00, %2776 ], [ %3894, %3892 ], [ %3851, %3841 ]
  %3897 = call float @dx.op.binary.f32(i32 36, float %3896, float %3896)  ; FMin(a,b)
  %3898 = call float @dx.op.binary.f32(i32 36, float %3896, float %3897)  ; FMin(a,b)
  %3899 = fcmp fast ogt float %3898, 0.000000e+00
  br i1 %3899, label %3900, label %4066, !dx.controlflow.hints !108

; <label>:3900                                    ; preds = %3895
  %3901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3902 = extractvalue %dx.types.CBufRet.f32 %3901, 0
  %3903 = extractvalue %dx.types.CBufRet.f32 %3901, 1
  %3904 = extractvalue %dx.types.CBufRet.f32 %3901, 2
  %3905 = extractvalue %dx.types.CBufRet.f32 %3901, 3
  %3906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3907 = extractvalue %dx.types.CBufRet.f32 %3906, 0
  %3908 = extractvalue %dx.types.CBufRet.f32 %3906, 1
  %3909 = extractvalue %dx.types.CBufRet.f32 %3906, 2
  %3910 = extractvalue %dx.types.CBufRet.f32 %3906, 3
  %3911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3912 = extractvalue %dx.types.CBufRet.f32 %3911, 0
  %3913 = extractvalue %dx.types.CBufRet.f32 %3911, 1
  %3914 = extractvalue %dx.types.CBufRet.f32 %3911, 2
  %3915 = extractvalue %dx.types.CBufRet.f32 %3911, 3
  %3916 = fmul fast float %3902, %2796
  %3917 = call float @dx.op.tertiary.f32(i32 46, float %2797, float %3903, float %3916)  ; FMad(a,b,c)
  %3918 = call float @dx.op.tertiary.f32(i32 46, float %2798, float %3904, float %3917)  ; FMad(a,b,c)
  %3919 = fadd fast float %3918, %3905
  %3920 = fmul fast float %3907, %2796
  %3921 = call float @dx.op.tertiary.f32(i32 46, float %2797, float %3908, float %3920)  ; FMad(a,b,c)
  %3922 = call float @dx.op.tertiary.f32(i32 46, float %2798, float %3909, float %3921)  ; FMad(a,b,c)
  %3923 = fadd fast float %3922, %3910
  %3924 = fmul fast float %3912, %2796
  %3925 = call float @dx.op.tertiary.f32(i32 46, float %2797, float %3913, float %3924)  ; FMad(a,b,c)
  %3926 = call float @dx.op.tertiary.f32(i32 46, float %2798, float %3914, float %3925)  ; FMad(a,b,c)
  %3927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3928 = extractvalue %dx.types.CBufRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.CBufRet.f32 %3927, 1
  %3930 = extractvalue %dx.types.CBufRet.f32 %3927, 3
  %3931 = fmul fast float %3930, %3919
  %3932 = fmul fast float %3930, %3923
  %3933 = fadd fast float %3931, %3928
  %3934 = fadd fast float %3932, %3929
  %3935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3936 = extractvalue %dx.types.CBufRet.f32 %3935, 0
  %3937 = extractvalue %dx.types.CBufRet.f32 %3935, 1
  %3938 = fsub fast float %3933, %3936
  %3939 = fsub fast float %3934, %3937
  %3940 = fcmp fast olt float %3938, 0.000000e+00
  %3941 = fcmp fast olt float %3939, 0.000000e+00
  %3942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3943 = extractvalue %dx.types.CBufRet.f32 %3942, 0
  %3944 = extractvalue %dx.types.CBufRet.f32 %3942, 1
  %3945 = extractvalue %dx.types.CBufRet.f32 %3942, 2
  %3946 = extractvalue %dx.types.CBufRet.f32 %3942, 3
  %3947 = select i1 %3940, float %3943, float %3945
  %3948 = select i1 %3941, float %3944, float %3946
  %3949 = fmul fast float %3947, %3938
  %3950 = fmul fast float %3948, %3939
  %3951 = call float @dx.op.unary.f32(i32 6, float %3949)  ; FAbs(value)
  %3952 = call float @dx.op.unary.f32(i32 6, float %3950)  ; FAbs(value)
  %3953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3954 = extractvalue %dx.types.CBufRet.f32 %3953, 0
  %3955 = call float @dx.op.binary.f32(i32 35, float %3951, float %3952)  ; FMax(a,b)
  %3956 = fsub fast float %3954, %3955
  %3957 = call float @dx.op.unary.f32(i32 7, float %3956)  ; Saturate(value)
  %3958 = fcmp fast ogt float %3957, 0.000000e+00
  br i1 %3958, label %3959, label %4000, !dx.controlflow.hints !109

; <label>:3959                                    ; preds = %3900
  %3960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %38, float %3933, float %3934, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3961 = extractvalue %dx.types.ResRet.f32 %3960, 1
  %3962 = fcmp fast ogt float %3961, 0.000000e+00
  br i1 %3962, label %3963, label %3995

; <label>:3963                                    ; preds = %3959
  %3964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %38, float %3933, float %3934, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3965 = extractvalue %dx.types.ResRet.f32 %3964, 0
  %3966 = extractvalue %dx.types.ResRet.f32 %3964, 1
  %3967 = extractvalue %dx.types.ResRet.f32 %3964, 2
  %3968 = extractvalue %dx.types.ResRet.f32 %3964, 3
  %3969 = fsub fast float 1.000000e+00, %3915
  %3970 = fsub fast float %3969, %3926
  %3971 = fmul fast float %3970, 0x400921FB60000000
  %3972 = fadd fast float %3971, 0x3FF921FB60000000
  %3973 = call float @dx.op.unary.f32(i32 13, float %3972)  ; Sin(value)
  %3974 = fadd fast float %3973, -1.000000e+00
  %3975 = fmul fast float %3974, 0x3FD45F3060000000
  %3976 = fmul fast float %3970, 0x401921FB60000000
  %3977 = fadd fast float %3976, 0x400921FB60000000
  %3978 = call float @dx.op.unary.f32(i32 13, float %3977)  ; Sin(value)
  %3979 = fadd fast float %3978, 0x3E7777A5C0000000
  %3980 = fmul fast float %3979, 0x3FC45F3060000000
  %3981 = fmul fast float %3970, 0x4022D97C80000000
  %3982 = fadd fast float %3981, 0x4012D97C80000000
  %3983 = call float @dx.op.unary.f32(i32 13, float %3982)  ; Sin(value)
  %3984 = fadd fast float %3983, 1.000000e+00
  %3985 = fmul fast float %3984, 0x3FBB2995E0000000
  %3986 = fmul fast float %3970, 0x402921FB60000000
  %3987 = fadd fast float %3986, 0x401921FB60000000
  %3988 = call float @dx.op.unary.f32(i32 13, float %3987)  ; Sin(value)
  %3989 = fadd fast float %3988, 0xBE8777A5C0000000
  %3990 = fmul fast float %3989, 0x3FB45F3060000000
  %3991 = call float @dx.op.dot4.f32(i32 56, float %3965, float %3966, float %3967, float %3968, float %3975, float %3980, float %3985, float %3990)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3992 = fmul fast float %3991, 0xBFF7154760000000
  %3993 = call float @dx.op.unary.f32(i32 21, float %3992)  ; Exp(value)
  %3994 = call float @dx.op.unary.f32(i32 7, float %3993)  ; Saturate(value)
  br label %3995

; <label>:3995                                    ; preds = %3963, %3959
  %3996 = phi float [ %3994, %3963 ], [ 1.000000e+00, %3959 ]
  %3997 = fadd fast float %3996, -1.000000e+00
  %3998 = fmul fast float %3997, %3957
  %3999 = fadd fast float %3998, 1.000000e+00
  br label %4000

; <label>:4000                                    ; preds = %3995, %3900
  %4001 = phi float [ %3999, %3995 ], [ 1.000000e+00, %3900 ]
  %4002 = fmul fast float %4001, %3896
  %4003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4004 = extractvalue %dx.types.CBufRet.f32 %4003, 0
  %4005 = extractvalue %dx.types.CBufRet.f32 %4003, 1
  %4006 = extractvalue %dx.types.CBufRet.f32 %4003, 2
  %4007 = fadd fast float %4004, %130
  %4008 = fadd fast float %4005, %131
  %4009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4010 = extractvalue %dx.types.CBufRet.f32 %4009, 1
  %4011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4012 = extractvalue %dx.types.CBufRet.f32 %4011, 0
  %4013 = extractvalue %dx.types.CBufRet.f32 %4011, 1
  %4014 = extractvalue %dx.types.CBufRet.f32 %4011, 2
  %4015 = fsub fast float -0.000000e+00, %4007
  %4016 = fsub fast float -0.000000e+00, %4008
  %4017 = fsub fast float -0.000000e+00, %132
  %4018 = fsub fast float %4017, %4006
  %4019 = fadd fast float %4018, %4010
  %4020 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4015, float %4016, float %4019)  ; Dot3(ax,ay,az,bx,by,bz)
  %4021 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4012, float %4013, float %4014)  ; Dot3(ax,ay,az,bx,by,bz)
  %4022 = fdiv fast float 1.000000e+00, %4021
  %4023 = fmul fast float %4022, %4020
  %4024 = fmul fast float %4012, %4023
  %4025 = fmul fast float %4013, %4023
  %4026 = fadd fast float %4024, %4007
  %4027 = fadd fast float %4025, %4008
  %4028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4029 = extractvalue %dx.types.CBufRet.f32 %4028, 0
  %4030 = extractvalue %dx.types.CBufRet.f32 %4028, 1
  %4031 = fsub fast float %4026, %4029
  %4032 = fsub fast float %4027, %4030
  %4033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4034 = extractvalue %dx.types.CBufRet.f32 %4033, 2
  %4035 = extractvalue %dx.types.CBufRet.f32 %4033, 3
  %4036 = fmul fast float %4031, %4034
  %4037 = fmul fast float %4032, %4035
  %4038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4039 = extractvalue %dx.types.CBufRet.i32 %4038, 3
  %4040 = icmp eq i32 %4039, 0
  br i1 %4040, label %4046, label %4041

; <label>:4041                                    ; preds = %4000
  %4042 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %37, float %4036, float %4037, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4043 = extractvalue %dx.types.ResRet.f32 %4042, 0
  %4044 = extractvalue %dx.types.ResRet.f32 %4042, 1
  %4045 = extractvalue %dx.types.ResRet.f32 %4042, 2
  br label %4051

; <label>:4046                                    ; preds = %4000
  %4047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %4036, float %4037, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 0
  %4049 = extractvalue %dx.types.ResRet.f32 %4047, 1
  %4050 = extractvalue %dx.types.ResRet.f32 %4047, 2
  br label %4051

; <label>:4051                                    ; preds = %4046, %4041
  %4052 = phi float [ %4043, %4041 ], [ %4048, %4046 ]
  %4053 = phi float [ %4044, %4041 ], [ %4049, %4046 ]
  %4054 = phi float [ %4045, %4041 ], [ %4050, %4046 ]
  %4055 = extractvalue %dx.types.CBufRet.f32 %4009, 2
  %4056 = fmul fast float %4055, %4052
  %4057 = extractvalue %dx.types.CBufRet.f32 %4009, 0
  %4058 = fsub fast float %4023, %4057
  %4059 = fsub fast float %4058, %4056
  %4060 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4059)  ; FMax(a,b)
  %4061 = fmul fast float %4060, %4053
  %4062 = call float @dx.op.binary.f32(i32 36, float %4054, float %4061)  ; FMin(a,b)
  %4063 = fmul fast float %4062, 0xBFF7154760000000
  %4064 = call float @dx.op.unary.f32(i32 21, float %4063)  ; Exp(value)
  %4065 = fmul fast float %4002, %4064
  br label %4066

; <label>:4066                                    ; preds = %4051, %3895
  %4067 = phi float [ %4065, %4051 ], [ %3896, %3895 ]
  %4068 = call float @dx.op.binary.f32(i32 36, float %4067, float %4067)  ; FMin(a,b)
  %4069 = call float @dx.op.binary.f32(i32 36, float %4067, float %4068)  ; FMin(a,b)
  %4070 = fcmp fast ogt float %4069, 0.000000e+00
  br i1 %4070, label %4071, label %4379, !dx.controlflow.hints !110

; <label>:4071                                    ; preds = %4066
  %4072 = bitcast i32 %1898 to float
  %4073 = fmul fast float %4067, %2788
  %4074 = fmul fast float %4067, %2789
  %4075 = fmul fast float %4067, %2790
  %4076 = fsub fast float %2777, %1860
  %4077 = fsub fast float %2778, %1859
  %4078 = fsub fast float %2779, %1858
  %4079 = call float @dx.op.dot3.f32(i32 55, float %4076, float %4077, float %4078, float %4076, float %4077, float %4078)  ; Dot3(ax,ay,az,bx,by,bz)
  %4080 = call float @dx.op.unary.f32(i32 25, float %4079)  ; Rsqrt(value)
  %4081 = fmul fast float %4080, %4076
  %4082 = fmul fast float %4080, %4077
  %4083 = fmul fast float %4080, %4078
  %4084 = call float @dx.op.dot3.f32(i32 55, float %2777, float %2778, float %2779, float %1867, float %1868, float %1869)  ; Dot3(ax,ay,az,bx,by,bz)
  %4085 = call float @dx.op.dot3.f32(i32 55, float %1857, float %1856, float %1855, float %4081, float %4082, float %4083)  ; Dot3(ax,ay,az,bx,by,bz)
  %4086 = call float @dx.op.unary.f32(i32 7, float %4084)  ; Saturate(value)
  %4087 = fmul fast float %4086, %4086
  %4088 = fmul fast float %4087, %4072
  %4089 = call float @dx.op.unary.f32(i32 7, float %4088)  ; Saturate(value)
  %4090 = fmul fast float %4089, %4086
  %4091 = call float @dx.op.dot3.f32(i32 55, float %1867, float %1868, float %1869, float %4081, float %4082, float %4083)  ; Dot3(ax,ay,az,bx,by,bz)
  %4092 = fmul fast float %4091, %4091
  %4093 = call float @dx.op.unary.f32(i32 6, float %4084)  ; FAbs(value)
  %4094 = fsub fast float 1.000000e+00, %1892
  %4095 = fmul fast float %1874, %1874
  %4096 = fmul fast float %4095, %4094
  %4097 = fadd fast float %4096, %1892
  %4098 = bitcast float %4097 to i32
  %4099 = ashr i32 %4098, 1
  %4100 = add nsw i32 %4099, 532487669
  %4101 = bitcast i32 %4100 to float
  %4102 = fadd fast float %4101, %1874
  %4103 = fmul fast float %1892, %4092
  %4104 = fsub fast float 1.000000e+00, %4092
  %4105 = fadd fast float %4104, %4103
  %4106 = fmul fast float %4093, %4093
  %4107 = fmul fast float %4106, %4094
  %4108 = fadd fast float %4107, %1892
  %4109 = bitcast float %4108 to i32
  %4110 = ashr i32 %4109, 1
  %4111 = add nsw i32 %4110, 532487669
  %4112 = bitcast i32 %4111 to float
  %4113 = fadd fast float %4112, %4093
  %4114 = fmul fast float %4105, %4105
  %4115 = fmul fast float %4114, %4102
  %4116 = fmul fast float %4115, %4113
  %4117 = fdiv fast float 0x3FF0A00000000000, %4116
  %4118 = fmul fast float %4117, %1892
  %4119 = fmul fast float %2144, 0x3FF9999980000000
  %4120 = fsub fast float 5.000000e+00, %4119
  %4121 = call float @dx.op.unary.f32(i32 6, float %4085)  ; FAbs(value)
  %4122 = fsub fast float 1.000000e+00, %4121
  %4123 = fmul fast float %2144, 0x41D9660740000000
  %4124 = fadd fast float %4123, 0xC1EFBF8940000000
  %4125 = bitcast float %4122 to i32
  %4126 = sitofp i32 %4125 to float
  %4127 = fmul fast float %4126, %4120
  %4128 = fadd fast float %4124, %4127
  %4129 = fptosi float %4128 to i32
  %4130 = bitcast i32 %4129 to float
  %4131 = fsub fast float 1.000000e+00, %1864
  %4132 = fsub fast float 1.000000e+00, %1865
  %4133 = fsub fast float 1.000000e+00, %1872
  %4134 = fmul fast float %4130, %4131
  %4135 = fmul fast float %4130, %4132
  %4136 = fmul fast float %4130, %4133
  %4137 = fadd fast float %4134, %1864
  %4138 = fadd fast float %4135, %1865
  %4139 = fadd fast float %4136, %1872
  br i1 %2167, label %4140, label %4163

; <label>:4140                                    ; preds = %4071
  %4141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %38, float %1497, float %4121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4142 = extractvalue %dx.types.ResRet.f32 %4141, 0
  %4143 = extractvalue %dx.types.ResRet.f32 %4141, 1
  %4144 = extractvalue %dx.types.ResRet.f32 %4141, 2
  %4145 = fadd fast float %4142, -5.000000e-01
  %4146 = fadd fast float %4143, -5.000000e-01
  %4147 = fadd fast float %4144, -5.000000e-01
  %4148 = fmul fast float %1864, 4.000000e+00
  %4149 = fmul fast float %4148, %4131
  %4150 = fmul fast float %4149, %4145
  %4151 = fmul fast float %1865, 4.000000e+00
  %4152 = fmul fast float %4151, %4132
  %4153 = fmul fast float %4152, %4146
  %4154 = fmul fast float %1872, 4.000000e+00
  %4155 = fmul fast float %4154, %4133
  %4156 = fmul fast float %4155, %4147
  %4157 = fadd fast float %4150, %4137
  %4158 = fadd fast float %4153, %4138
  %4159 = fadd fast float %4156, %4139
  %4160 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  %4161 = call float @dx.op.unary.f32(i32 7, float %4158)  ; Saturate(value)
  %4162 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  br label %4163

; <label>:4163                                    ; preds = %4140, %4071
  %4164 = phi float [ %4160, %4140 ], [ %4137, %4071 ]
  %4165 = phi float [ %4161, %4140 ], [ %4138, %4071 ]
  %4166 = phi float [ %4162, %4140 ], [ %4139, %4071 ]
  %4167 = fmul fast float %4084, 9.843750e-01
  %4168 = fadd fast float %4167, 7.812500e-03
  %4169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %38, float %4168, float %2148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4170 = extractvalue %dx.types.ResRet.f32 %4169, 0
  %4171 = extractvalue %dx.types.ResRet.f32 %4169, 1
  %4172 = extractvalue %dx.types.ResRet.f32 %4169, 2
  %4173 = extractvalue %dx.types.ResRet.f32 %4169, 3
  %4174 = fsub fast float %4172, %4170
  %4175 = fsub fast float %4173, %4171
  %4176 = fmul fast float %4174, %2154
  %4177 = fmul fast float %4175, %2154
  %4178 = fadd fast float %4176, %4170
  %4179 = fadd fast float %4177, %4171
  %4180 = fmul fast float %4178, %1864
  %4181 = fmul fast float %4178, %1865
  %4182 = fmul fast float %4178, %1872
  %4183 = fadd fast float %4180, %4179
  %4184 = fadd fast float %4181, %4179
  %4185 = fadd fast float %4182, %4179
  br i1 %2167, label %4186, label %4209

; <label>:4186                                    ; preds = %4163
  %4187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %38, float %1497, float %4084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4188 = extractvalue %dx.types.ResRet.f32 %4187, 0
  %4189 = extractvalue %dx.types.ResRet.f32 %4187, 1
  %4190 = extractvalue %dx.types.ResRet.f32 %4187, 2
  %4191 = fadd fast float %4188, -5.000000e-01
  %4192 = fadd fast float %4189, -5.000000e-01
  %4193 = fadd fast float %4190, -5.000000e-01
  %4194 = fmul fast float %1864, 4.000000e+00
  %4195 = fmul fast float %4194, %4131
  %4196 = fmul fast float %4195, %4191
  %4197 = fmul fast float %1865, 4.000000e+00
  %4198 = fmul fast float %4197, %4132
  %4199 = fmul fast float %4198, %4192
  %4200 = fmul fast float %1872, 4.000000e+00
  %4201 = fmul fast float %4200, %4133
  %4202 = fmul fast float %4201, %4193
  %4203 = fadd fast float %4196, %4183
  %4204 = fadd fast float %4199, %4184
  %4205 = fadd fast float %4202, %4185
  %4206 = call float @dx.op.unary.f32(i32 7, float %4203)  ; Saturate(value)
  %4207 = call float @dx.op.unary.f32(i32 7, float %4204)  ; Saturate(value)
  %4208 = call float @dx.op.unary.f32(i32 7, float %4205)  ; Saturate(value)
  br label %4209

; <label>:4209                                    ; preds = %4186, %4163
  %4210 = phi float [ %4206, %4186 ], [ %4183, %4163 ]
  %4211 = phi float [ %4207, %4186 ], [ %4184, %4163 ]
  %4212 = phi float [ %4208, %4186 ], [ %4185, %4163 ]
  %4213 = call float @dx.op.binary.f32(i32 35, float %4211, float %4212)  ; FMax(a,b)
  %4214 = call float @dx.op.binary.f32(i32 35, float %4210, float %4213)  ; FMax(a,b)
  %4215 = fsub fast float 1.000000e+00, %4214
  %4216 = call float @dx.op.binary.f32(i32 35, float %4093, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4217 = fdiv fast float %892, %4216
  %4218 = fmul fast float %2686, %4217
  %4219 = fmul fast float %2688, %4217
  %4220 = fmul fast float %2690, %4217
  %4221 = call float @dx.op.unary.f32(i32 21, float %4218)  ; Exp(value)
  %4222 = call float @dx.op.unary.f32(i32 21, float %4219)  ; Exp(value)
  %4223 = call float @dx.op.unary.f32(i32 21, float %4220)  ; Exp(value)
  %4224 = call float @dx.op.unary.f32(i32 7, float %4221)  ; Saturate(value)
  %4225 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  %4226 = call float @dx.op.unary.f32(i32 7, float %4223)  ; Saturate(value)
  %4227 = select i1 %2683, float %4224, float 0.000000e+00
  %4228 = select i1 %2684, float %4225, float 0.000000e+00
  %4229 = select i1 %2685, float %4226, float 0.000000e+00
  %4230 = fsub fast float -0.000000e+00, %1867
  %4231 = fsub fast float -0.000000e+00, %1868
  %4232 = fsub fast float -0.000000e+00, %1869
  %4233 = call float @dx.op.dot3.f32(i32 55, float %2777, float %2778, float %2779, float %4230, float %4231, float %4232)  ; Dot3(ax,ay,az,bx,by,bz)
  %4234 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4235 = fmul fast float %4234, 9.843750e-01
  %4236 = fadd fast float %4235, 7.812500e-03
  %4237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %38, float %4236, float %2148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4238 = extractvalue %dx.types.ResRet.f32 %4237, 0
  %4239 = extractvalue %dx.types.ResRet.f32 %4237, 1
  %4240 = extractvalue %dx.types.ResRet.f32 %4237, 2
  %4241 = extractvalue %dx.types.ResRet.f32 %4237, 3
  %4242 = fsub fast float %4240, %4238
  %4243 = fsub fast float %4241, %4239
  %4244 = fmul fast float %4242, %2154
  %4245 = fmul fast float %4243, %2154
  %4246 = fadd fast float %4244, %4238
  %4247 = fadd fast float %4245, %4239
  %4248 = fmul fast float %4246, %1864
  %4249 = fmul fast float %4246, %1865
  %4250 = fmul fast float %4246, %1872
  %4251 = fadd fast float %4248, %4247
  %4252 = fadd fast float %4249, %4247
  %4253 = fadd fast float %4250, %4247
  br i1 %2167, label %4254, label %4277

; <label>:4254                                    ; preds = %4209
  %4255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %38, float %1497, float %4234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4256 = extractvalue %dx.types.ResRet.f32 %4255, 0
  %4257 = extractvalue %dx.types.ResRet.f32 %4255, 1
  %4258 = extractvalue %dx.types.ResRet.f32 %4255, 2
  %4259 = fadd fast float %4256, -5.000000e-01
  %4260 = fadd fast float %4257, -5.000000e-01
  %4261 = fadd fast float %4258, -5.000000e-01
  %4262 = fmul fast float %1864, 4.000000e+00
  %4263 = fmul fast float %4262, %4131
  %4264 = fmul fast float %4263, %4259
  %4265 = fmul fast float %1865, 4.000000e+00
  %4266 = fmul fast float %4265, %4132
  %4267 = fmul fast float %4266, %4260
  %4268 = fmul fast float %1872, 4.000000e+00
  %4269 = fmul fast float %4268, %4133
  %4270 = fmul fast float %4269, %4261
  %4271 = fadd fast float %4264, %4251
  %4272 = fadd fast float %4267, %4252
  %4273 = fadd fast float %4270, %4253
  %4274 = call float @dx.op.unary.f32(i32 7, float %4271)  ; Saturate(value)
  %4275 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4276 = call float @dx.op.unary.f32(i32 7, float %4273)  ; Saturate(value)
  br label %4277

; <label>:4277                                    ; preds = %4254, %4209
  %4278 = phi float [ %4274, %4254 ], [ %4251, %4209 ]
  %4279 = phi float [ %4275, %4254 ], [ %4252, %4209 ]
  %4280 = phi float [ %4276, %4254 ], [ %4253, %4209 ]
  %4281 = call float @dx.op.binary.f32(i32 35, float %4279, float %4280)  ; FMax(a,b)
  %4282 = call float @dx.op.binary.f32(i32 35, float %4278, float %4281)  ; FMax(a,b)
  %4283 = fsub fast float 1.000000e+00, %4282
  %4284 = fmul fast float %1889, %2750
  %4285 = fadd fast float %2752, %4284
  %4286 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4287 = fsub fast float %2777, %1880
  %4288 = fsub fast float %2778, %1881
  %4289 = fsub fast float %2779, %1882
  %4290 = call float @dx.op.dot3.f32(i32 55, float %4287, float %4288, float %4289, float %4287, float %4288, float %4289)  ; Dot3(ax,ay,az,bx,by,bz)
  %4291 = call float @dx.op.unary.f32(i32 25, float %4290)  ; Rsqrt(value)
  %4292 = fmul fast float %4291, %4287
  %4293 = fmul fast float %4291, %4288
  %4294 = fmul fast float %4291, %4289
  %4295 = call float @dx.op.dot3.f32(i32 55, float %4230, float %4231, float %4232, float %4292, float %4293, float %4294)  ; Dot3(ax,ay,az,bx,by,bz)
  %4296 = fmul fast float %4295, %4295
  %4297 = call float @dx.op.unary.f32(i32 6, float %4234)  ; FAbs(value)
  %4298 = call float @dx.op.binary.f32(i32 35, float %4286, float 0x3F847AE140000000)  ; FMax(a,b)
  %4299 = fmul fast float %4298, %4298
  %4300 = fmul fast float %4299, %4299
  %4301 = fsub fast float 1.000000e+00, %4300
  %4302 = fmul fast float %4095, %4301
  %4303 = fadd fast float %4302, %4300
  %4304 = bitcast float %4303 to i32
  %4305 = ashr i32 %4304, 1
  %4306 = add nsw i32 %4305, 532487669
  %4307 = bitcast i32 %4306 to float
  %4308 = fadd fast float %4307, %1874
  %4309 = fmul fast float %4300, %4296
  %4310 = fsub fast float 1.000000e+00, %4296
  %4311 = fadd fast float %4310, %4309
  %4312 = fmul fast float %4297, %4297
  %4313 = fmul fast float %4312, %4301
  %4314 = fadd fast float %4313, %4300
  %4315 = bitcast float %4314 to i32
  %4316 = ashr i32 %4315, 1
  %4317 = add nsw i32 %4316, 532487669
  %4318 = bitcast i32 %4317 to float
  %4319 = fadd fast float %4318, %4297
  %4320 = fmul fast float %4311, %4311
  %4321 = fmul fast float %4320, %4308
  %4322 = fmul fast float %4321, %4319
  %4323 = fdiv fast float 0x3FF0A00000000000, %4322
  %4324 = fmul fast float %4323, %4300
  %4325 = fmul fast float %4234, %4227
  %4326 = fmul fast float %4234, %4228
  %4327 = fmul fast float %4234, %4229
  %4328 = fmul fast float %4325, %4283
  %4329 = fmul fast float %4328, %4324
  %4330 = fmul fast float %4326, %4283
  %4331 = fmul fast float %4330, %4324
  %4332 = fmul fast float %4327, %4283
  %4333 = fmul fast float %4332, %4324
  %4334 = fmul fast float %4164, %4118
  %4335 = fmul fast float %4165, %4118
  %4336 = fmul fast float %4166, %4118
  %4337 = fsub fast float 1.000000e+00, %4085
  %4338 = bitcast float %4337 to i32
  %4339 = sitofp i32 %4338 to float
  %4340 = fmul fast float %4339, 5.000000e+00
  %4341 = fadd fast float %4340, 0xC1EFBF8940000000
  %4342 = fptosi float %4341 to i32
  %4343 = bitcast i32 %4342 to float
  %4344 = fmul fast float %4343, %1496
  %4345 = fmul fast float %4215, %4344
  %4346 = fmul fast float %4345, %2678
  %4347 = fmul fast float %4345, %2679
  %4348 = fmul fast float %4345, %2680
  %4349 = fadd fast float %4346, %4334
  %4350 = fadd fast float %4347, %4335
  %4351 = fadd fast float %4348, %4336
  %4352 = fmul fast float %4349, %4090
  %4353 = fmul fast float %4350, %4090
  %4354 = fmul fast float %4351, %4090
  %4355 = fmul fast float %4090, %4073
  %4356 = fmul fast float %4355, %4215
  %4357 = fmul fast float %4090, %4074
  %4358 = fmul fast float %4357, %4215
  %4359 = fmul fast float %4090, %4075
  %4360 = fmul fast float %4359, %4215
  %4361 = fadd fast float %4352, %4329
  %4362 = fadd fast float %4353, %4331
  %4363 = fadd fast float %4354, %4333
  %4364 = fmul fast float %4361, %4073
  %4365 = fmul fast float %4362, %4074
  %4366 = fmul fast float %4363, %4075
  %4367 = fadd fast float %4356, %2767
  %4368 = fmul fast float %4367, %1520
  %4369 = fadd fast float %4358, %2769
  %4370 = fmul fast float %4369, %1520
  %4371 = fadd fast float %4360, %2771
  %4372 = fmul fast float %4371, %1520
  %4373 = fadd fast float %4364, %2731
  %4374 = fmul fast float %4373, %1520
  %4375 = fadd fast float %4365, %2734
  %4376 = fmul fast float %4375, %1520
  %4377 = fadd fast float %4366, %2737
  %4378 = fmul fast float %4377, %1520
  br label %4379

; <label>:4379                                    ; preds = %4277, %4066, %2661
  %4380 = phi float [ %2732, %2661 ], [ %2732, %4066 ], [ %4374, %4277 ]
  %4381 = phi float [ %2735, %2661 ], [ %2735, %4066 ], [ %4376, %4277 ]
  %4382 = phi float [ %2738, %2661 ], [ %2738, %4066 ], [ %4378, %4277 ]
  %4383 = phi float [ %2768, %2661 ], [ %2768, %4066 ], [ %4368, %4277 ]
  %4384 = phi float [ %2770, %2661 ], [ %2770, %4066 ], [ %4370, %4277 ]
  %4385 = phi float [ %2772, %2661 ], [ %2772, %4066 ], [ %4372, %4277 ]
  %4386 = fmul fast float %1520, %2707
  %4387 = fsub fast float -0.000000e+00, %4386
  %4388 = fmul fast float %1520, %2708
  %4389 = fsub fast float -0.000000e+00, %4388
  %4390 = fmul fast float %1520, %2709
  %4391 = fsub fast float -0.000000e+00, %4390
  %4392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.f32 %4392, 0
  %4394 = fmul fast float %4393, %2713
  %4395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4396 = extractvalue %dx.types.CBufRet.f32 %4395, 3
  %4397 = fsub fast float 1.000000e+00, %1492
  %4398 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4399 = fadd fast float %4385, %1491
  %4400 = fmul fast float %4399, %1492
  %4401 = fmul fast float %4398, %4396
  %4402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.f32 %4402, 3
  %4404 = fmul fast float %4383, %1861
  %4405 = fmul fast float %4384, %1862
  %4406 = fmul fast float %4385, %1863
  %4407 = fcmp fast ogt float %70, %152
  %4408 = and i1 %4407, %1593
  %4409 = or i1 %1672, %4408
  %4410 = icmp eq i32 %1592, 2
  %4411 = fcmp fast ole float %70, %152
  %4412 = and i1 %4411, %4410
  %4413 = or i1 %4412, %4409
  br i1 %4408, label %4414, label %4673

; <label>:4414                                    ; preds = %4379
  %4415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4416 = extractvalue %dx.types.CBufRet.f32 %4415, 2
  %4417 = extractvalue %dx.types.CBufRet.f32 %4415, 3
  %4418 = fmul fast float %4416, %82
  %4419 = fmul fast float %4417, %83
  %4420 = call float @dx.op.unary.f32(i32 7, float %4418)  ; Saturate(value)
  %4421 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4422 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %4420, float %4421, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4423 = extractvalue %dx.types.ResRet.f32 %4422, 0
  %4424 = extractvalue %dx.types.ResRet.f32 %4422, 1
  %4425 = extractvalue %dx.types.ResRet.f32 %4422, 2
  %4426 = extractvalue %dx.types.ResRet.f32 %4422, 3
  %4427 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %4420, float %4421, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4428 = extractvalue %dx.types.ResRet.f32 %4427, 0
  %4429 = extractvalue %dx.types.ResRet.f32 %4427, 1
  %4430 = extractvalue %dx.types.ResRet.f32 %4427, 2
  %4431 = extractvalue %dx.types.ResRet.f32 %4427, 3
  %4432 = call float @dx.op.binary.f32(i32 35, float %4424, float %4425)  ; FMax(a,b)
  %4433 = call float @dx.op.binary.f32(i32 35, float %4423, float %4432)  ; FMax(a,b)
  %4434 = call float @dx.op.binary.f32(i32 35, float %4433, float %4426)  ; FMax(a,b)
  %4435 = call float @dx.op.binary.f32(i32 36, float %4429, float %4430)  ; FMin(a,b)
  %4436 = call float @dx.op.binary.f32(i32 36, float %4428, float %4435)  ; FMin(a,b)
  %4437 = call float @dx.op.binary.f32(i32 36, float %4436, float %4431)  ; FMin(a,b)
  %4438 = fmul fast float %4434, 2.550000e+02
  %4439 = fadd fast float %4438, 0x3F70101020000000
  %4440 = fptoui float %4439 to i32
  %4441 = fmul fast float %4437, 2.550000e+02
  %4442 = fadd fast float %4441, 0x3F70101020000000
  %4443 = fptoui float %4442 to i32
  %4444 = icmp ult i32 %4440, %4443
  br i1 %4444, label %4445, label %4613

; <label>:4445                                    ; preds = %4414
  %4446 = fcmp fast ogt float %69, 9.843750e-01
  %4447 = fadd fast float %70, -4.000000e+00
  %4448 = select i1 %4446, float -4.000000e+00, float %4447
  %4449 = call float @dx.op.binary.f32(i32 35, float %4448, float 0.000000e+00)  ; FMax(a,b)
  %4450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4451 = extractvalue %dx.types.CBufRet.f32 %4450, 0
  %4452 = fadd fast float %4451, %4449
  %4453 = extractvalue %dx.types.CBufRet.f32 %4450, 2
  %4454 = fmul fast float %4452, %4453
  %4455 = call float @dx.op.unary.f32(i32 23, float %4454)  ; Log(value)
  %4456 = extractvalue %dx.types.CBufRet.f32 %4450, 3
  %4457 = fmul fast float %4456, %4455
  %4458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4459 = extractvalue %dx.types.CBufRet.f32 %4458, 2
  %4460 = fmul fast float %4457, %4459
  %4461 = call float @dx.op.unary.f32(i32 7, float %4460)  ; Saturate(value)
  %4462 = uitofp i32 %4440 to float
  %4463 = uitofp i32 %4443 to float
  %4464 = fadd fast float %4462, 5.000000e-01
  %4465 = fadd fast float %4463, 5.000000e-01
  %4466 = fmul fast float %4459, %4464
  %4467 = fmul fast float %4459, %4465
  %4468 = fadd fast float %4466, 0x3F0FFB4800000000
  %4469 = fadd fast float %4467, 0xBF0FFB4800000000
  %4470 = call float @dx.op.binary.f32(i32 35, float %4461, float %4468)  ; FMax(a,b)
  %4471 = call float @dx.op.binary.f32(i32 36, float %4470, float %4469)  ; FMin(a,b)
  %4472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4473 = extractvalue %dx.types.CBufRet.f32 %4472, 1
  %4474 = extractvalue %dx.types.CBufRet.f32 %4472, 2
  %4475 = extractvalue %dx.types.CBufRet.f32 %4472, 0
  %4476 = fmul fast float %4473, %4471
  %4477 = fadd fast float %4475, %4476
  %4478 = fadd fast float %4475, %4474
  %4479 = fsub fast float %4473, %4474
  %4480 = fadd fast float %4479, %4475
  %4481 = call float @dx.op.binary.f32(i32 35, float %4477, float %4478)  ; FMax(a,b)
  %4482 = call float @dx.op.binary.f32(i32 36, float %4481, float %4480)  ; FMin(a,b)
  %4483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %36, float %4420, float %4421, float %4482, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4484 = extractvalue %dx.types.ResRet.f32 %4483, 0
  %4485 = extractvalue %dx.types.ResRet.f32 %4483, 1
  %4486 = extractvalue %dx.types.ResRet.f32 %4483, 2
  %4487 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.i32 %4487, 0
  %4489 = extractvalue %dx.types.CBufRet.i32 %4487, 1
  %4490 = uitofp i32 %4488 to float
  %4491 = uitofp i32 %4489 to float
  %4492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4493 = extractvalue %dx.types.CBufRet.f32 %4492, 0
  %4494 = extractvalue %dx.types.CBufRet.f32 %4492, 1
  %4495 = fmul fast float %4490, %4420
  %4496 = fmul fast float %4491, %4421
  %4497 = fadd fast float %4495, -5.000000e-01
  %4498 = fadd fast float %4496, -5.000000e-01
  %4499 = call float @dx.op.unary.f32(i32 22, float %4497)  ; Frc(value)
  %4500 = call float @dx.op.unary.f32(i32 22, float %4498)  ; Frc(value)
  %4501 = fmul fast float %4499, %4499
  %4502 = fmul fast float %4501, %4499
  %4503 = fsub fast float 3.000000e+00, %4499
  %4504 = fmul fast float %4501, %4503
  %4505 = fmul fast float %4499, 3.000000e+00
  %4506 = fmul fast float %4502, 3.000000e+00
  %4507 = fmul fast float %4501, 6.000000e+00
  %4508 = fsub fast float %4506, %4507
  %4509 = fadd fast float %4508, 4.000000e+00
  %4510 = fmul fast float %4509, 0x3FC5555560000000
  %4511 = fmul fast float %4502, -3.000000e+00
  %4512 = fadd fast float %4501, %4499
  %4513 = fmul fast float %4512, 3.000000e+00
  %4514 = fadd fast float %4511, 1.000000e+00
  %4515 = fadd fast float %4514, %4513
  %4516 = fmul fast float %4502, 0x3FC5555560000000
  %4517 = fmul fast float %4500, %4500
  %4518 = fmul fast float %4517, %4500
  %4519 = fsub fast float 3.000000e+00, %4500
  %4520 = fmul fast float %4517, %4519
  %4521 = fmul fast float %4500, 3.000000e+00
  %4522 = fmul fast float %4518, 3.000000e+00
  %4523 = fmul fast float %4517, 6.000000e+00
  %4524 = fsub fast float %4522, %4523
  %4525 = fadd fast float %4524, 4.000000e+00
  %4526 = fmul fast float %4525, 0x3FC5555560000000
  %4527 = fmul fast float %4518, -3.000000e+00
  %4528 = fadd fast float %4517, %4500
  %4529 = fmul fast float %4528, 3.000000e+00
  %4530 = fadd fast float %4527, 1.000000e+00
  %4531 = fadd fast float %4530, %4529
  %4532 = fmul fast float %4518, 0x3FC5555560000000
  %4533 = fadd fast float %4499, 1.000000e+00
  %4534 = fsub fast float 1.000000e+00, %4505
  %4535 = fadd fast float %4534, %4504
  %4536 = fadd fast float %4535, %4509
  %4537 = fmul fast float %4536, 0x3FC5555560000000
  %4538 = fdiv fast float %4510, %4537
  %4539 = fsub fast float %4533, %4538
  %4540 = fsub fast float 1.000000e+00, %4499
  %4541 = fadd fast float %4515, %4502
  %4542 = fmul fast float %4541, 0x3FC5555560000000
  %4543 = fdiv fast float %4516, %4542
  %4544 = fadd fast float %4540, %4543
  %4545 = fadd fast float %4500, 1.000000e+00
  %4546 = fsub fast float 1.000000e+00, %4521
  %4547 = fadd fast float %4546, %4520
  %4548 = fadd fast float %4547, %4525
  %4549 = fmul fast float %4548, 0x3FC5555560000000
  %4550 = fdiv fast float %4526, %4549
  %4551 = fsub fast float %4545, %4550
  %4552 = fsub fast float 1.000000e+00, %4500
  %4553 = fadd fast float %4531, %4518
  %4554 = fmul fast float %4553, 0x3FC5555560000000
  %4555 = fdiv fast float %4532, %4554
  %4556 = fadd fast float %4555, %4552
  %4557 = fmul fast float %4539, %4493
  %4558 = fsub fast float %4420, %4557
  %4559 = fmul fast float %4544, %4493
  %4560 = fadd fast float %4559, %4420
  %4561 = fmul fast float %4556, %4494
  %4562 = fadd fast float %4561, %4421
  %4563 = fmul fast float %4551, %4494
  %4564 = fsub fast float %4421, %4563
  %4565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %4558, float %4564, float %4482, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4566 = extractvalue %dx.types.ResRet.f32 %4565, 0
  %4567 = extractvalue %dx.types.ResRet.f32 %4565, 1
  %4568 = extractvalue %dx.types.ResRet.f32 %4565, 2
  %4569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %4560, float %4564, float %4482, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4570 = extractvalue %dx.types.ResRet.f32 %4569, 0
  %4571 = extractvalue %dx.types.ResRet.f32 %4569, 1
  %4572 = extractvalue %dx.types.ResRet.f32 %4569, 2
  %4573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %4558, float %4562, float %4482, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4575 = extractvalue %dx.types.ResRet.f32 %4573, 1
  %4576 = extractvalue %dx.types.ResRet.f32 %4573, 2
  %4577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %4560, float %4562, float %4482, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4578 = extractvalue %dx.types.ResRet.f32 %4577, 0
  %4579 = extractvalue %dx.types.ResRet.f32 %4577, 1
  %4580 = extractvalue %dx.types.ResRet.f32 %4577, 2
  %4581 = fsub fast float %4574, %4566
  %4582 = fsub fast float %4575, %4567
  %4583 = fsub fast float %4576, %4568
  %4584 = fmul fast float %4581, %4554
  %4585 = fmul fast float %4582, %4554
  %4586 = fmul fast float %4583, %4554
  %4587 = fadd fast float %4584, %4566
  %4588 = fadd fast float %4585, %4567
  %4589 = fadd fast float %4586, %4568
  %4590 = fsub fast float %4578, %4570
  %4591 = fsub fast float %4579, %4571
  %4592 = fsub fast float %4580, %4572
  %4593 = fmul fast float %4590, %4554
  %4594 = fmul fast float %4591, %4554
  %4595 = fmul fast float %4592, %4554
  %4596 = fsub fast float %4570, %4587
  %4597 = fadd fast float %4596, %4593
  %4598 = fsub fast float %4571, %4588
  %4599 = fadd fast float %4598, %4594
  %4600 = fsub fast float %4572, %4589
  %4601 = fadd fast float %4600, %4595
  %4602 = fmul fast float %4597, %4542
  %4603 = fmul fast float %4599, %4542
  %4604 = fmul fast float %4601, %4542
  %4605 = fadd fast float %4602, %4587
  %4606 = fadd fast float %4603, %4588
  %4607 = fadd fast float %4604, %4589
  %4608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4609 = extractvalue %dx.types.CBufRet.f32 %4608, 1
  %4610 = fmul fast float %4605, %4609
  %4611 = fmul fast float %4606, %4609
  %4612 = fmul fast float %4607, %4609
  br label %4613

; <label>:4613                                    ; preds = %4445, %4414
  %4614 = phi float [ %4484, %4445 ], [ 1.000000e+00, %4414 ]
  %4615 = phi float [ %4485, %4445 ], [ 1.000000e+00, %4414 ]
  %4616 = phi float [ %4486, %4445 ], [ 1.000000e+00, %4414 ]
  %4617 = phi float [ %4610, %4445 ], [ 0.000000e+00, %4414 ]
  %4618 = phi float [ %4611, %4445 ], [ 0.000000e+00, %4414 ]
  %4619 = phi float [ %4612, %4445 ], [ 0.000000e+00, %4414 ]
  %4620 = fmul fast float %4617, %4387
  %4621 = fmul fast float %4618, %4389
  %4622 = fmul fast float %4619, %4391
  %4623 = call float @dx.op.dot3.f32(i32 55, float %4614, float %4615, float %4616, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4624 = call float @dx.op.dot3.f32(i32 55, float %4620, float %4621, float %4622, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4625 = select i1 %191, float %4623, float %4614
  %4626 = select i1 %191, float %4623, float %4615
  %4627 = select i1 %191, float 1.000000e+00, float %4616
  %4628 = select i1 %191, float %4624, float %4620
  %4629 = select i1 %191, float 0.000000e+00, float %4621
  %4630 = select i1 %191, float 0.000000e+00, float %4622
  %4631 = fmul fast float %4625, %4404
  %4632 = fmul fast float %4626, %4405
  %4633 = fmul fast float %4627, %4406
  %4634 = fadd fast float %4631, %4628
  %4635 = fadd fast float %4632, %4629
  %4636 = fadd fast float %4630, %4633
  %4637 = fmul fast float %4625, %4380
  %4638 = fmul fast float %4626, %4381
  %4639 = fmul fast float %4627, %4382
  %4640 = fmul fast float %82, 2.000000e+00
  %4641 = fmul fast float %4640, %4416
  %4642 = fmul fast float %83, 2.000000e+00
  %4643 = fmul fast float %4642, %4417
  %4644 = fsub fast float 1.000000e+00, %4641
  %4645 = fsub fast float 1.000000e+00, %4643
  %4646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4646, 0
  %4648 = extractvalue %dx.types.CBufRet.f32 %4646, 1
  %4649 = extractvalue %dx.types.CBufRet.f32 %4646, 2
  %4650 = fmul fast float %4644, %4647
  %4651 = fmul fast float %4644, %4648
  %4652 = fmul fast float %4644, %4649
  %4653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4654 = extractvalue %dx.types.CBufRet.f32 %4653, 0
  %4655 = extractvalue %dx.types.CBufRet.f32 %4653, 1
  %4656 = extractvalue %dx.types.CBufRet.f32 %4653, 2
  %4657 = fmul fast float %4645, %4654
  %4658 = fmul fast float %4645, %4655
  %4659 = fmul fast float %4645, %4656
  %4660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4661 = extractvalue %dx.types.CBufRet.f32 %4660, 0
  %4662 = extractvalue %dx.types.CBufRet.f32 %4660, 1
  %4663 = extractvalue %dx.types.CBufRet.f32 %4660, 2
  %4664 = fadd fast float %4657, %4661
  %4665 = fadd fast float %4664, %4650
  %4666 = fadd fast float %4658, %4662
  %4667 = fadd fast float %4666, %4651
  %4668 = fadd fast float %4659, %4663
  %4669 = fadd fast float %4668, %4652
  %4670 = fmul fast float %4665, %152
  %4671 = fmul fast float %4667, %152
  %4672 = fmul fast float %4669, %152
  br label %4673

; <label>:4673                                    ; preds = %4613, %4379
  %4674 = phi float [ %4670, %4613 ], [ %130, %4379 ]
  %4675 = phi float [ %4671, %4613 ], [ %131, %4379 ]
  %4676 = phi float [ %4672, %4613 ], [ %132, %4379 ]
  %4677 = phi float [ %152, %4613 ], [ %70, %4379 ]
  %4678 = phi float [ %4634, %4613 ], [ %4404, %4379 ]
  %4679 = phi float [ %4635, %4613 ], [ %4405, %4379 ]
  %4680 = phi float [ %4636, %4613 ], [ %4406, %4379 ]
  %4681 = phi float [ %4637, %4613 ], [ %4380, %4379 ]
  %4682 = phi float [ %4638, %4613 ], [ %4381, %4379 ]
  %4683 = phi float [ %4639, %4613 ], [ %4382, %4379 ]
  %4684 = phi float [ %4614, %4613 ], [ 1.000000e+00, %4379 ]
  br i1 %4413, label %5839, label %4685

; <label>:4685                                    ; preds = %4673
  %4686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %4687 = extractvalue %dx.types.CBufRet.f32 %4686, 0
  %4688 = extractvalue %dx.types.CBufRet.f32 %4686, 1
  %4689 = extractvalue %dx.types.CBufRet.f32 %4686, 2
  %4690 = extractvalue %dx.types.CBufRet.f32 %4686, 3
  %4691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %4692 = extractvalue %dx.types.CBufRet.f32 %4691, 0
  %4693 = extractvalue %dx.types.CBufRet.f32 %4691, 1
  %4694 = extractvalue %dx.types.CBufRet.f32 %4691, 2
  %4695 = extractvalue %dx.types.CBufRet.f32 %4691, 3
  %4696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %4697 = extractvalue %dx.types.CBufRet.f32 %4696, 0
  %4698 = extractvalue %dx.types.CBufRet.f32 %4696, 1
  %4699 = extractvalue %dx.types.CBufRet.f32 %4696, 2
  %4700 = extractvalue %dx.types.CBufRet.f32 %4696, 3
  %4701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %4702 = extractvalue %dx.types.CBufRet.f32 %4701, 0
  %4703 = extractvalue %dx.types.CBufRet.f32 %4701, 1
  %4704 = extractvalue %dx.types.CBufRet.f32 %4701, 2
  %4705 = extractvalue %dx.types.CBufRet.f32 %4701, 3
  %4706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %4707 = extractvalue %dx.types.CBufRet.f32 %4706, 3
  %4708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %4709 = extractvalue %dx.types.CBufRet.f32 %4708, 3
  %4710 = extractvalue %dx.types.CBufRet.f32 %4708, 0
  %4711 = extractvalue %dx.types.CBufRet.f32 %4708, 1
  %4712 = extractvalue %dx.types.CBufRet.f32 %4708, 2
  %4713 = fcmp fast olt float %4712, -5.000000e-01
  %4714 = call float @dx.op.dot3.f32(i32 55, float %4674, float %4675, float %4676, float %4674, float %4675, float %4676)  ; Dot3(ax,ay,az,bx,by,bz)
  %4715 = call float @dx.op.unary.f32(i32 25, float %4714)  ; Rsqrt(value)
  %4716 = fmul fast float %4715, %4714
  %4717 = fmul fast float %4715, %4674
  %4718 = fmul fast float %4715, %4675
  %4719 = fmul fast float %4715, %4676
  %4720 = fadd fast float %4716, %4690
  %4721 = call float @dx.op.dot3.f32(i32 55, float %4717, float %4718, float %4719, float %4687, float %4688, float %4689)  ; Dot3(ax,ay,az,bx,by,bz)
  %4722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4723 = extractvalue %dx.types.CBufRet.i32 %4722, 1
  %4724 = and i32 %4723, 1
  %4725 = icmp ne i32 %4724, 0
  %4726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %4727 = extractvalue %dx.types.CBufRet.f32 %4726, 2
  %4728 = fcmp fast ogt float %4727, 0.000000e+00
  %4729 = and i1 %4725, %4728
  br i1 %4729, label %4730, label %5136, !dx.controlflow.hints !111

; <label>:4730                                    ; preds = %4685
  %4731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %4732 = extractvalue %dx.types.CBufRet.f32 %4731, 3
  %4733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4734 = extractvalue %dx.types.CBufRet.f32 %4733, 2
  %4735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4736 = extractvalue %dx.types.CBufRet.f32 %4735, 2
  %4737 = fsub fast float %4734, %4736
  %4738 = and i32 %4723, 2
  %4739 = extractvalue %dx.types.CBufRet.i32 %4722, 0
  %4740 = call i32 @dx.op.binary.i32(i32 40, i32 %4739, i32 3)  ; UMin(a,b)
  %4741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %4742 = extractvalue %dx.types.CBufRet.f32 %4741, 0
  %4743 = extractvalue %dx.types.CBufRet.f32 %4741, 1
  %4744 = extractvalue %dx.types.CBufRet.f32 %4735, 0
  %4745 = extractvalue %dx.types.CBufRet.f32 %4735, 1
  %4746 = fsub fast float %4742, %4744
  %4747 = fsub fast float %4743, %4745
  %4748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %4749 = extractvalue %dx.types.CBufRet.f32 %4748, 0
  %4750 = fcmp fast ogt float %4749, 0.000000e+00
  %4751 = fsub fast float -0.000000e+00, %4746
  %4752 = fsub fast float -0.000000e+00, %4747
  %4753 = call float @dx.op.dot2.f32(i32 54, float %4717, float %4718, float %4717, float %4718)  ; Dot2(ax,ay,bx,by)
  %4754 = call float @dx.op.dot2.f32(i32 54, float %4717, float %4718, float %4751, float %4752)  ; Dot2(ax,ay,bx,by)
  %4755 = fmul fast float %4754, 2.000000e+00
  %4756 = call float @dx.op.dot2.f32(i32 54, float %4751, float %4752, float %4751, float %4752)  ; Dot2(ax,ay,bx,by)
  %4757 = fmul fast float %4749, %4749
  %4758 = fsub fast float %4756, %4757
  %4759 = fmul fast float %4755, %4755
  %4760 = fmul fast float %4753, 4.000000e+00
  %4761 = fmul fast float %4760, %4758
  %4762 = fsub fast float %4759, %4761
  %4763 = fcmp fast ogt float %4762, 0.000000e+00
  br i1 %4763, label %4764, label %4779

; <label>:4764                                    ; preds = %4730
  %4765 = fcmp fast ogt float %4755, 0.000000e+00
  %4766 = call float @dx.op.unary.f32(i32 24, float %4762)  ; Sqrt(value)
  %4767 = fsub fast float -0.000000e+00, %4766
  %4768 = select i1 %4765, float %4766, float %4767
  %4769 = fadd fast float %4768, %4755
  %4770 = fmul float %4769, -5.000000e-01
  %4771 = fdiv fast float %4770, %4753
  %4772 = call float @dx.op.binary.f32(i32 35, float %4771, float 0.000000e+00)  ; FMax(a,b)
  %4773 = call float @dx.op.binary.f32(i32 36, float %4716, float %4772)  ; FMin(a,b)
  %4774 = fdiv fast float %4758, %4770
  %4775 = call float @dx.op.binary.f32(i32 35, float %4774, float 0.000000e+00)  ; FMax(a,b)
  %4776 = call float @dx.op.binary.f32(i32 36, float %4716, float %4775)  ; FMin(a,b)
  %4777 = call float @dx.op.binary.f32(i32 36, float %4773, float %4776)  ; FMin(a,b)
  %4778 = call float @dx.op.binary.f32(i32 35, float %4773, float %4776)  ; FMax(a,b)
  br label %4779

; <label>:4779                                    ; preds = %4764, %4730
  %4780 = phi float [ %4778, %4764 ], [ -1.000000e+00, %4730 ]
  %4781 = phi float [ %4777, %4764 ], [ -1.000000e+00, %4730 ]
  %4782 = phi i1 [ true, %4764 ], [ false, %4730 ]
  %4783 = and i1 %4750, %4782
  br i1 %4783, label %4784, label %4786

; <label>:4784                                    ; preds = %4779
  %4785 = fcmp fast oeq float %4781, %4780
  br i1 %4785, label %5089, label %4787

; <label>:4786                                    ; preds = %4779
  br i1 %4750, label %5089, label %4787

; <label>:4787                                    ; preds = %4786, %4784
  %4788 = phi float [ %4716, %4786 ], [ %4780, %4784 ]
  %4789 = phi float [ 0.000000e+00, %4786 ], [ %4781, %4784 ]
  %4790 = icmp ne i32 %4738, 0
  %4791 = fmul fast float %4788, %4719
  %4792 = fadd fast float %4791, %4732
  %4793 = fmul fast float %4792, %4788
  %4794 = select i1 %4790, float 0.000000e+00, float %4793
  %4795 = fcmp fast oeq float %4719, 0.000000e+00
  %4796 = fdiv fast float %4737, %4719
  %4797 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4796)  ; FMax(a,b)
  %4798 = select i1 %4795, float %4788, float %4797
  %4799 = call float @dx.op.binary.f32(i32 36, float %4788, float %4798)  ; FMin(a,b)
  %4800 = fcmp fast ogt float %4719, 0.000000e+00
  %4801 = fcmp fast olt float %4737, 0.000000e+00
  br i1 %4800, label %4802, label %4859

; <label>:4802                                    ; preds = %4787
  %4803 = icmp eq i32 %4738, 0
  br i1 %4801, label %4804, label %4848

; <label>:4804                                    ; preds = %4802
  %4805 = select i1 %4803, float %4788, float 0.000000e+00
  %4806 = fsub fast float -0.000000e+00, %4805
  %4807 = call float @dx.op.unary.f32(i32 6, float %4806)  ; FAbs(value)
  %4808 = fmul fast float %4805, %4719
  %4809 = fadd fast float %4808, %4732
  %4810 = fmul fast float %4807, %4809
  %4811 = fsub fast float %4794, %4810
  %4812 = fsub fast float %4788, %4807
  %4813 = select i1 %4803, float %4812, float 0.000000e+00
  %4814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4815 = extractvalue %dx.types.CBufRet.f32 %4814, 0
  %4816 = extractvalue %dx.types.CBufRet.f32 %4814, 1
  %4817 = extractvalue %dx.types.CBufRet.f32 %4814, 2
  %4818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4819 = extractvalue %dx.types.CBufRet.f32 %4818, 0
  %4820 = extractvalue %dx.types.CBufRet.f32 %4818, 1
  %4821 = extractvalue %dx.types.CBufRet.f32 %4818, 2
  %4822 = extractvalue %dx.types.CBufRet.f32 %4818, 3
  %4823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4824 = extractvalue %dx.types.CBufRet.f32 %4823, 3
  %4825 = call float @dx.op.binary.f32(i32 36, float %4811, float %4824)  ; FMin(a,b)
  %4826 = fmul fast float %4822, %4813
  %4827 = call float @dx.op.unary.f32(i32 7, float %4826)  ; Saturate(value)
  %4828 = fsub fast float %4819, %4815
  %4829 = fsub fast float %4820, %4816
  %4830 = fsub fast float %4821, %4817
  %4831 = fmul fast float %4827, %4828
  %4832 = fmul fast float %4827, %4829
  %4833 = fmul fast float %4827, %4830
  %4834 = fadd fast float %4831, %4815
  %4835 = fadd fast float %4832, %4816
  %4836 = fadd fast float %4833, %4817
  %4837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4838 = extractvalue %dx.types.CBufRet.f32 %4837, 0
  %4839 = extractvalue %dx.types.CBufRet.f32 %4837, 1
  %4840 = fadd fast float %4839, %4838
  %4841 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4842 = extractvalue %dx.types.CBufRet.f32 %4837, 2
  %4843 = extractvalue %dx.types.CBufRet.f32 %4837, 3
  %4844 = fadd fast float %4843, %4842
  %4845 = call float @dx.op.unary.f32(i32 7, float %4844)  ; Saturate(value)
  %4846 = fmul fast float %4841, %4825
  %4847 = fmul fast float %4846, %4845
  br label %5089

; <label>:4848                                    ; preds = %4802
  br i1 %4803, label %4849, label %4870

; <label>:4849                                    ; preds = %4848
  %4850 = call float @dx.op.binary.f32(i32 36, float %4799, float %4789)  ; FMin(a,b)
  %4851 = fsub fast float %4799, %4850
  %4852 = fsub fast float %4851, %4788
  %4853 = call float @dx.op.unary.f32(i32 6, float %4852)  ; FAbs(value)
  %4854 = fadd fast float %4851, %4788
  %4855 = fmul fast float %4854, %4719
  %4856 = fadd fast float %4855, %4732
  %4857 = fmul fast float %4856, %4853
  %4858 = fsub fast float %4794, %4857
  br label %4870

; <label>:4859                                    ; preds = %4787
  br i1 %4801, label %4860, label %4870

; <label>:4860                                    ; preds = %4859
  %4861 = call float @dx.op.binary.f32(i32 35, float %4789, float %4799)  ; FMax(a,b)
  %4862 = icmp eq i32 %4738, 0
  %4863 = select i1 %4862, float %4799, float 0.000000e+00
  %4864 = fsub fast float -0.000000e+00, %4863
  %4865 = call float @dx.op.unary.f32(i32 6, float %4864)  ; FAbs(value)
  %4866 = fmul fast float %4863, %4719
  %4867 = fadd fast float %4866, %4732
  %4868 = fmul fast float %4865, %4867
  %4869 = fsub fast float %4794, %4868
  br label %4870

; <label>:4870                                    ; preds = %4860, %4859, %4849, %4848
  %4871 = phi float [ %4789, %4848 ], [ %4789, %4849 ], [ %4861, %4860 ], [ %4789, %4859 ]
  %4872 = phi float [ 0.000000e+00, %4848 ], [ %4853, %4849 ], [ %4865, %4860 ], [ 0.000000e+00, %4859 ]
  %4873 = phi float [ %4794, %4848 ], [ %4858, %4849 ], [ %4869, %4860 ], [ %4794, %4859 ]
  %4874 = phi float [ %4799, %4848 ], [ %4799, %4849 ], [ %4788, %4860 ], [ %4788, %4859 ]
  %4875 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 0
  store float -1.000000e+00, float* %4875, align 4, !tbaa !101, !noalias !112
  %4876 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 1
  store float -1.000000e+00, float* %4876, align 4, !tbaa !101, !noalias !112
  %4877 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 2
  store float -1.000000e+00, float* %4877, align 4, !tbaa !101, !noalias !112
  %4878 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 0
  store float -1.000000e+00, float* %4878, align 4, !tbaa !101, !noalias !112
  %4879 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 1
  store float -1.000000e+00, float* %4879, align 4, !tbaa !101, !noalias !112
  %4880 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 2
  store float -1.000000e+00, float* %4880, align 4, !tbaa !101, !noalias !112
  %4881 = icmp sgt i32 %4740, 0
  br i1 %4881, label %4882, label %4943

; <label>:4882                                    ; preds = %4870
  br label %4883

; <label>:4883                                    ; preds = %4932, %4882
  %4884 = phi i32 [ %4933, %4932 ], [ 0, %4882 ]
  %4885 = phi i32 [ %4934, %4932 ], [ 0, %4882 ]
  %4886 = add nuw i32 %4885, 171
  %4887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 %4886)  ; CBufferLoadLegacy(handle,regIndex)
  %4888 = extractvalue %dx.types.CBufRet.f32 %4887, 0
  %4889 = extractvalue %dx.types.CBufRet.f32 %4887, 1
  %4890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4891 = extractvalue %dx.types.CBufRet.f32 %4890, 0
  %4892 = extractvalue %dx.types.CBufRet.f32 %4890, 1
  %4893 = fsub fast float %4888, %4891
  %4894 = fsub fast float %4889, %4892
  %4895 = extractvalue %dx.types.CBufRet.f32 %4887, 2
  %4896 = fsub fast float -0.000000e+00, %4893
  %4897 = fsub fast float -0.000000e+00, %4894
  %4898 = call float @dx.op.dot2.f32(i32 54, float %4717, float %4718, float %4896, float %4897)  ; Dot2(ax,ay,bx,by)
  %4899 = fmul fast float %4898, 2.000000e+00
  %4900 = call float @dx.op.dot2.f32(i32 54, float %4896, float %4897, float %4896, float %4897)  ; Dot2(ax,ay,bx,by)
  %4901 = fmul fast float %4895, %4895
  %4902 = fsub fast float %4900, %4901
  %4903 = fmul fast float %4899, %4899
  %4904 = fmul fast float %4760, %4902
  %4905 = fsub fast float %4903, %4904
  %4906 = fcmp fast ogt float %4905, 0.000000e+00
  br i1 %4906, label %4907, label %4922

; <label>:4907                                    ; preds = %4883
  %4908 = fcmp fast ogt float %4899, 0.000000e+00
  %4909 = call float @dx.op.unary.f32(i32 24, float %4905)  ; Sqrt(value)
  %4910 = fsub fast float -0.000000e+00, %4909
  %4911 = select i1 %4908, float %4909, float %4910
  %4912 = fadd fast float %4911, %4899
  %4913 = fmul float %4912, -5.000000e-01
  %4914 = fdiv fast float %4913, %4753
  %4915 = call float @dx.op.binary.f32(i32 35, float %4914, float 0.000000e+00)  ; FMax(a,b)
  %4916 = call float @dx.op.binary.f32(i32 36, float %4788, float %4915)  ; FMin(a,b)
  %4917 = fdiv fast float %4902, %4913
  %4918 = call float @dx.op.binary.f32(i32 35, float %4917, float 0.000000e+00)  ; FMax(a,b)
  %4919 = call float @dx.op.binary.f32(i32 36, float %4788, float %4918)  ; FMin(a,b)
  %4920 = call float @dx.op.binary.f32(i32 36, float %4916, float %4919)  ; FMin(a,b)
  %4921 = call float @dx.op.binary.f32(i32 35, float %4916, float %4919)  ; FMax(a,b)
  br label %4922

; <label>:4922                                    ; preds = %4907, %4883
  %4923 = phi float [ %4921, %4907 ], [ -1.000000e+00, %4883 ]
  %4924 = phi float [ %4920, %4907 ], [ -1.000000e+00, %4883 ]
  %4925 = phi i1 [ true, %4907 ], [ false, %4883 ]
  br i1 %4925, label %4926, label %4932

; <label>:4926                                    ; preds = %4922
  %4927 = call float @dx.op.binary.f32(i32 35, float %4871, float %4924)  ; FMax(a,b)
  %4928 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %4885
  store float %4927, float* %4928, align 4, !tbaa !101, !noalias !112
  %4929 = call float @dx.op.binary.f32(i32 35, float %4871, float %4923)  ; FMax(a,b)
  %4930 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 %4885
  store float %4929, float* %4930, align 4, !tbaa !101, !noalias !112
  %4931 = add nsw i32 %4884, 1
  br label %4932

; <label>:4932                                    ; preds = %4926, %4922
  %4933 = phi i32 [ %4931, %4926 ], [ %4884, %4922 ]
  %4934 = add nuw nsw i32 %4885, 1
  %4935 = icmp eq i32 %4934, %4740
  br i1 %4935, label %4936, label %4883

; <label>:4936                                    ; preds = %4932
  %4937 = load float, float* %4877, align 4, !tbaa !101, !alias.scope !128, !noalias !131
  %4938 = load float, float* %4876, align 4, !tbaa !101, !alias.scope !134, !noalias !135
  %4939 = load float, float* %4875, align 4, !tbaa !101, !alias.scope !136, !noalias !137
  %4940 = load float, float* %4880, align 4, !tbaa !101, !alias.scope !138, !noalias !141
  %4941 = load float, float* %4879, align 4, !tbaa !101, !alias.scope !144, !noalias !145
  %4942 = load float, float* %4878, align 4, !tbaa !101, !alias.scope !146, !noalias !147
  br label %4943

; <label>:4943                                    ; preds = %4936, %4870
  %4944 = phi float [ -1.000000e+00, %4870 ], [ %4942, %4936 ]
  %4945 = phi float [ -1.000000e+00, %4870 ], [ %4941, %4936 ]
  %4946 = phi float [ -1.000000e+00, %4870 ], [ %4940, %4936 ]
  %4947 = phi float [ -1.000000e+00, %4870 ], [ %4939, %4936 ]
  %4948 = phi float [ -1.000000e+00, %4870 ], [ %4938, %4936 ]
  %4949 = phi float [ -1.000000e+00, %4870 ], [ %4937, %4936 ]
  %4950 = phi i32 [ 0, %4870 ], [ %4933, %4936 ]
  %4951 = call float @dx.op.binary.f32(i32 36, float %4948, float %4949)  ; FMin(a,b)
  %4952 = call float @dx.op.binary.f32(i32 36, float %4947, float %4951)  ; FMin(a,b)
  %4953 = call float @dx.op.binary.f32(i32 35, float %4947, float %4948)  ; FMax(a,b)
  %4954 = call float @dx.op.binary.f32(i32 36, float %4953, float %4949)  ; FMin(a,b)
  %4955 = call float @dx.op.binary.f32(i32 36, float %4947, float %4948)  ; FMin(a,b)
  %4956 = call float @dx.op.binary.f32(i32 35, float %4955, float %4954)  ; FMax(a,b)
  %4957 = call float @dx.op.binary.f32(i32 35, float %4948, float %4949)  ; FMax(a,b)
  %4958 = call float @dx.op.binary.f32(i32 35, float %4947, float %4957)  ; FMax(a,b)
  store float %4952, float* %4875, align 4, !tbaa !101, !alias.scope !136, !noalias !137
  store float %4956, float* %4876, align 4, !tbaa !101, !alias.scope !134, !noalias !135
  store float %4958, float* %4877, align 4, !tbaa !101, !alias.scope !128, !noalias !131
  %4959 = call float @dx.op.binary.f32(i32 36, float %4945, float %4946)  ; FMin(a,b)
  %4960 = call float @dx.op.binary.f32(i32 36, float %4944, float %4959)  ; FMin(a,b)
  %4961 = call float @dx.op.binary.f32(i32 35, float %4944, float %4945)  ; FMax(a,b)
  %4962 = call float @dx.op.binary.f32(i32 36, float %4961, float %4946)  ; FMin(a,b)
  %4963 = call float @dx.op.binary.f32(i32 36, float %4944, float %4945)  ; FMin(a,b)
  %4964 = call float @dx.op.binary.f32(i32 35, float %4963, float %4962)  ; FMax(a,b)
  %4965 = call float @dx.op.binary.f32(i32 35, float %4945, float %4946)  ; FMax(a,b)
  %4966 = call float @dx.op.binary.f32(i32 35, float %4944, float %4965)  ; FMax(a,b)
  store float %4960, float* %4878, align 4, !tbaa !101, !alias.scope !146, !noalias !147
  store float %4964, float* %4879, align 4, !tbaa !101, !alias.scope !144, !noalias !145
  store float %4966, float* %4880, align 4, !tbaa !101, !alias.scope !138, !noalias !141
  %4967 = sub nsw i32 3, %4950
  %4968 = icmp sgt i32 %4967, 2
  br i1 %4968, label %4969, label %5007

; <label>:4969                                    ; preds = %4943
  %4970 = icmp eq i32 %4738, 0
  %4971 = fsub fast float %4788, %4872
  %4972 = select i1 %4970, float %4971, float %4872
  %4973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4974 = extractvalue %dx.types.CBufRet.f32 %4973, 0
  %4975 = extractvalue %dx.types.CBufRet.f32 %4973, 1
  %4976 = extractvalue %dx.types.CBufRet.f32 %4973, 2
  %4977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4978 = extractvalue %dx.types.CBufRet.f32 %4977, 0
  %4979 = extractvalue %dx.types.CBufRet.f32 %4977, 1
  %4980 = extractvalue %dx.types.CBufRet.f32 %4977, 2
  %4981 = extractvalue %dx.types.CBufRet.f32 %4977, 3
  %4982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4983 = extractvalue %dx.types.CBufRet.f32 %4982, 3
  %4984 = call float @dx.op.binary.f32(i32 36, float %4873, float %4983)  ; FMin(a,b)
  %4985 = fmul fast float %4981, %4972
  %4986 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4987 = fsub fast float %4978, %4974
  %4988 = fsub fast float %4979, %4975
  %4989 = fsub fast float %4980, %4976
  %4990 = fmul fast float %4986, %4987
  %4991 = fmul fast float %4986, %4988
  %4992 = fmul fast float %4986, %4989
  %4993 = fadd fast float %4990, %4974
  %4994 = fadd fast float %4991, %4975
  %4995 = fadd fast float %4992, %4976
  %4996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4997 = extractvalue %dx.types.CBufRet.f32 %4996, 0
  %4998 = extractvalue %dx.types.CBufRet.f32 %4996, 1
  %4999 = fadd fast float %4998, %4997
  %5000 = call float @dx.op.unary.f32(i32 7, float %4999)  ; Saturate(value)
  %5001 = extractvalue %dx.types.CBufRet.f32 %4996, 2
  %5002 = extractvalue %dx.types.CBufRet.f32 %4996, 3
  %5003 = fadd fast float %5002, %5001
  %5004 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5005 = fmul fast float %5000, %4984
  %5006 = fmul fast float %5005, %5004
  br label %5089

; <label>:5007                                    ; preds = %4943
  %5008 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %4967
  %5009 = load float, float* %5008, align 4, !tbaa !101, !noalias !112
  %5010 = fcmp fast olt float %5009, %4874
  %5011 = icmp sgt i32 %4950, 0
  %5012 = and i1 %5011, %5010
  br i1 %5012, label %5013, label %5050

; <label>:5013                                    ; preds = %5007
  br label %5014

; <label>:5014                                    ; preds = %5043, %5013
  %5015 = phi float [ %5044, %5043 ], [ %4872, %5013 ]
  %5016 = phi float [ %5045, %5043 ], [ %4873, %5013 ]
  %5017 = phi float [ %5025, %5043 ], [ %5009, %5013 ]
  %5018 = phi i32 [ %5022, %5043 ], [ %4967, %5013 ]
  %5019 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 %5018
  %5020 = load float, float* %5019, align 4, !tbaa !101, !noalias !112
  %5021 = icmp slt i32 %5018, 2
  %5022 = add nsw i32 %5018, 1
  %5023 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %5022
  %5024 = load float, float* %5023, align 4, !tbaa !101, !noalias !112
  %5025 = select i1 %5021, float %5024, float %4788
  %5026 = call float @dx.op.binary.f32(i32 36, float %5025, float %5020)  ; FMin(a,b)
  %5027 = call float @dx.op.binary.f32(i32 36, float %4874, float %5026)  ; FMin(a,b)
  %5028 = icmp eq i32 %4738, 0
  %5029 = fadd fast float %5027, %5017
  %5030 = fmul fast float %5029, %4719
  %5031 = fadd fast float %5030, %4732
  br i1 %5028, label %5037, label %5032

; <label>:5032                                    ; preds = %5014
  %5033 = fsub fast float %5027, %5017
  %5034 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5033)  ; FMax(a,b)
  %5035 = fmul fast float %5034, %5031
  %5036 = fadd fast float %5035, %5016
  br label %5043

; <label>:5037                                    ; preds = %5014
  %5038 = fsub fast float %5017, %5027
  %5039 = call float @dx.op.unary.f32(i32 6, float %5038)  ; FAbs(value)
  %5040 = fadd fast float %5039, %5015
  %5041 = fmul fast float %5039, %5031
  %5042 = fsub fast float %5016, %5041
  br label %5043

; <label>:5043                                    ; preds = %5037, %5032
  %5044 = phi float [ %5034, %5032 ], [ %5040, %5037 ]
  %5045 = phi float [ %5036, %5032 ], [ %5042, %5037 ]
  %5046 = fcmp fast olt float %5025, %4874
  %5047 = icmp slt i32 %5022, 3
  %5048 = and i1 %5047, %5046
  br i1 %5048, label %5014, label %5049

; <label>:5049                                    ; preds = %5043
  br label %5050

; <label>:5050                                    ; preds = %5049, %5007
  %5051 = phi float [ %4872, %5007 ], [ %5044, %5049 ]
  %5052 = phi float [ %4873, %5007 ], [ %5045, %5049 ]
  %5053 = fsub fast float %4788, %5051
  %5054 = select i1 %4790, float %5051, float %5053
  %5055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5056 = extractvalue %dx.types.CBufRet.f32 %5055, 0
  %5057 = extractvalue %dx.types.CBufRet.f32 %5055, 1
  %5058 = extractvalue %dx.types.CBufRet.f32 %5055, 2
  %5059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5060 = extractvalue %dx.types.CBufRet.f32 %5059, 0
  %5061 = extractvalue %dx.types.CBufRet.f32 %5059, 1
  %5062 = extractvalue %dx.types.CBufRet.f32 %5059, 2
  %5063 = extractvalue %dx.types.CBufRet.f32 %5059, 3
  %5064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.f32 %5064, 3
  %5066 = call float @dx.op.binary.f32(i32 36, float %5052, float %5065)  ; FMin(a,b)
  %5067 = fmul fast float %5063, %5054
  %5068 = call float @dx.op.unary.f32(i32 7, float %5067)  ; Saturate(value)
  %5069 = fsub fast float %5060, %5056
  %5070 = fsub fast float %5061, %5057
  %5071 = fsub fast float %5062, %5058
  %5072 = fmul fast float %5068, %5069
  %5073 = fmul fast float %5068, %5070
  %5074 = fmul fast float %5068, %5071
  %5075 = fadd fast float %5072, %5056
  %5076 = fadd fast float %5073, %5057
  %5077 = fadd fast float %5074, %5058
  %5078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5079 = extractvalue %dx.types.CBufRet.f32 %5078, 0
  %5080 = extractvalue %dx.types.CBufRet.f32 %5078, 1
  %5081 = fadd fast float %5080, %5079
  %5082 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5083 = extractvalue %dx.types.CBufRet.f32 %5078, 2
  %5084 = extractvalue %dx.types.CBufRet.f32 %5078, 3
  %5085 = fadd fast float %5084, %5083
  %5086 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5087 = fmul fast float %5082, %5066
  %5088 = fmul fast float %5087, %5086
  br label %5089

; <label>:5089                                    ; preds = %5050, %4969, %4804, %4786, %4784
  %5090 = phi float [ %4813, %4804 ], [ %4972, %4969 ], [ %5054, %5050 ], [ 0.000000e+00, %4784 ], [ 0.000000e+00, %4786 ]
  %5091 = phi float [ %4847, %4804 ], [ %5006, %4969 ], [ %5088, %5050 ], [ 0.000000e+00, %4784 ], [ 0.000000e+00, %4786 ]
  %5092 = phi float [ %4834, %4804 ], [ %4993, %4969 ], [ %5075, %5050 ], [ 0.000000e+00, %4784 ], [ 0.000000e+00, %4786 ]
  %5093 = phi float [ %4835, %4804 ], [ %4994, %4969 ], [ %5076, %5050 ], [ 0.000000e+00, %4784 ], [ 0.000000e+00, %4786 ]
  %5094 = phi float [ %4836, %4804 ], [ %4995, %4969 ], [ %5077, %5050 ], [ 0.000000e+00, %4784 ], [ 0.000000e+00, %4786 ]
  %5095 = fmul fast float %4727, %5091
  %5096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5097 = extractvalue %dx.types.CBufRet.f32 %5096, 2
  %5098 = fsub fast float %4734, %5097
  %5099 = fcmp fast olt float %5095, -2.000000e+01
  %5100 = call float @dx.op.unary.f32(i32 21, float %5095)  ; Exp(value)
  %5101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5102 = extractvalue %dx.types.CBufRet.f32 %5101, 2
  %5103 = extractvalue %dx.types.CBufRet.f32 %5101, 3
  %5104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.f32 %5104, 2
  %5106 = fmul fast float %5103, %5098
  %5107 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  %5108 = fsub fast float 1.000000e+00, %5107
  %5109 = fmul fast float %4719, 5.000000e-01
  %5110 = fadd fast float %5109, 5.000000e-01
  %5111 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5112 = fsub fast float 1.000000e+00, %5111
  %5113 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5108)  ; FMax(a,b)
  %5114 = fdiv fast float %5112, %5113
  %5115 = fsub fast float %5098, %4676
  %5116 = call float @dx.op.unary.f32(i32 6, float %5115)  ; FAbs(value)
  %5117 = fmul fast float %5116, %5102
  %5118 = call float @dx.op.unary.f32(i32 7, float %5114)  ; Saturate(value)
  %5119 = fsub fast float 1.000000e+00, %5117
  %5120 = fmul fast float %5119, %5118
  %5121 = fadd fast float %5120, %5117
  %5122 = fmul fast float %5105, %5098
  %5123 = call float @dx.op.unary.f32(i32 7, float %5122)  ; Saturate(value)
  %5124 = fsub fast float 1.000000e+00, %5121
  %5125 = fmul fast float %5124, %5123
  %5126 = fadd fast float %5125, %5121
  %5127 = call float @dx.op.unary.f32(i32 7, float %5126)  ; Saturate(value)
  %5128 = fadd fast float %5100, -1.000000e+00
  %5129 = select i1 %5099, float -1.000000e+00, float %5128
  %5130 = fmul fast float %5127, %5129
  %5131 = fadd fast float %5130, 1.000000e+00
  %5132 = fsub fast float -0.000000e+00, %5130
  %5133 = fmul fast float %5092, %5132
  %5134 = fmul fast float %5093, %5132
  %5135 = fmul fast float %5094, %5132
  br label %5136

; <label>:5136                                    ; preds = %5089, %4685
  %5137 = phi float [ %5090, %5089 ], [ 0.000000e+00, %4685 ]
  %5138 = phi float [ %5131, %5089 ], [ 1.000000e+00, %4685 ]
  %5139 = phi float [ %5133, %5089 ], [ 0.000000e+00, %4685 ]
  %5140 = phi float [ %5134, %5089 ], [ 0.000000e+00, %4685 ]
  %5141 = phi float [ %5135, %5089 ], [ 0.000000e+00, %4685 ]
  %5142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5143 = extractvalue %dx.types.CBufRet.f32 %5142, 1
  %5144 = fsub fast float 1.000000e+00, %5138
  %5145 = fmul fast float %5144, %4720
  %5146 = fmul fast float %5145, %5143
  %5147 = fsub fast float %4720, %5146
  br i1 %4713, label %5148, label %5177, !dx.controlflow.hints !148

; <label>:5148                                    ; preds = %5136
  %5149 = fmul fast float %4721, %4710
  %5150 = fadd fast float %5149, %4711
  %5151 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5152 = fmul fast float %4692, %5147
  %5153 = fsub fast float -0.000000e+00, %5152
  %5154 = fmul fast float %4693, %5147
  %5155 = fsub fast float -0.000000e+00, %5154
  %5156 = call float @dx.op.unary.f32(i32 21, float %5153)  ; Exp(value)
  %5157 = call float @dx.op.unary.f32(i32 21, float %5155)  ; Exp(value)
  %5158 = call float @dx.op.binary.f32(i32 35, float %4700, float %5156)  ; FMax(a,b)
  %5159 = call float @dx.op.binary.f32(i32 35, float %4700, float %5157)  ; FMax(a,b)
  %5160 = fsub fast float %5159, %5158
  %5161 = fmul fast float %5160, %5151
  %5162 = fadd fast float %5161, %5158
  %5163 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5164 = fsub fast float %4697, %4702
  %5165 = fsub fast float %4698, %4703
  %5166 = fsub fast float %4699, %4704
  %5167 = fmul fast float %5151, %5164
  %5168 = fmul fast float %5151, %5165
  %5169 = fmul fast float %5151, %5166
  %5170 = fadd fast float %5167, %4702
  %5171 = fadd fast float %5168, %4703
  %5172 = fadd fast float %5169, %4704
  %5173 = fsub fast float 1.000000e+00, %5163
  %5174 = fmul fast float %5173, %5170
  %5175 = fmul fast float %5173, %5171
  %5176 = fmul fast float %5173, %5172
  br label %5236

; <label>:5177                                    ; preds = %5136
  %5178 = fmul fast float %5147, %4709
  %5179 = call float @dx.op.unary.f32(i32 7, float %5178)  ; Saturate(value)
  %5180 = fsub fast float 2.000000e+00, %5179
  %5181 = fmul fast float %5179, 9.921875e-01
  %5182 = fmul fast float %5181, %5180
  %5183 = fadd fast float %5182, 3.906250e-03
  %5184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %5183, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5185 = extractvalue %dx.types.ResRet.f32 %5184, 0
  %5186 = fsub fast float %5179, %5185
  %5187 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5186)  ; FMax(a,b)
  %5188 = fmul fast float %4695, %4676
  %5189 = call float @dx.op.unary.f32(i32 6, float %5188)  ; FAbs(value)
  %5190 = fcmp fast ogt float %5189, 0x3EB0C6F7A0000000
  br i1 %5190, label %5191, label %5197, !dx.controlflow.hints !149

; <label>:5191                                    ; preds = %5177
  %5192 = fmul fast float %5188, 0xBFF7154760000000
  %5193 = call float @dx.op.unary.f32(i32 21, float %5192)  ; Exp(value)
  %5194 = fsub fast float 1.000000e+00, %5193
  %5195 = fdiv fast float %5194, %5188
  %5196 = fmul fast float %5195, %4705
  br label %5197

; <label>:5197                                    ; preds = %5191, %5177
  %5198 = phi float [ %5196, %5191 ], [ %4705, %5177 ]
  %5199 = fadd fast float %5198, %4707
  %5200 = fmul fast float %5199, %5187
  %5201 = fmul fast float %4692, %5200
  %5202 = fsub fast float -0.000000e+00, %5201
  %5203 = fmul fast float %4693, %5200
  %5204 = fsub fast float -0.000000e+00, %5203
  %5205 = fmul fast float %4694, %5200
  %5206 = fsub fast float -0.000000e+00, %5205
  %5207 = call float @dx.op.unary.f32(i32 21, float %5202)  ; Exp(value)
  %5208 = call float @dx.op.unary.f32(i32 21, float %5204)  ; Exp(value)
  %5209 = call float @dx.op.unary.f32(i32 21, float %5206)  ; Exp(value)
  %5210 = fmul fast float %4721, %4721
  %5211 = fadd fast float %5210, 1.000000e+00
  %5212 = fmul fast float %5211, 0x3FAE8EC8A0000000
  %5213 = fmul fast float %5212, %4702
  %5214 = fmul fast float %5212, %4703
  %5215 = fmul fast float %5212, %4704
  %5216 = fmul fast float %4721, %4700
  %5217 = fsub fast float 1.000000e+00, %5216
  %5218 = fmul fast float %4700, %4700
  %5219 = fsub fast float 1.000000e+00, %5218
  %5220 = fmul fast float %5219, 0x3FB45F3060000000
  %5221 = fmul fast float %5217, %5217
  %5222 = fdiv fast float 1.000000e+00, %5221
  %5223 = fmul fast float %5220, %5222
  %5224 = fmul fast float %5223, %4697
  %5225 = fmul fast float %5223, %4698
  %5226 = fmul fast float %5223, %4699
  %5227 = fadd fast float %5224, %5213
  %5228 = fadd fast float %5225, %5214
  %5229 = fadd fast float %5226, %5215
  %5230 = fsub fast float 1.000000e+00, %5207
  %5231 = fsub fast float 1.000000e+00, %5208
  %5232 = fsub fast float 1.000000e+00, %5209
  %5233 = fmul fast float %5227, %5230
  %5234 = fmul fast float %5228, %5231
  %5235 = fmul fast float %5229, %5232
  br label %5236

; <label>:5236                                    ; preds = %5197, %5148
  %5237 = phi float [ %5174, %5148 ], [ %5233, %5197 ]
  %5238 = phi float [ %5175, %5148 ], [ %5234, %5197 ]
  %5239 = phi float [ %5176, %5148 ], [ %5235, %5197 ]
  %5240 = phi float [ %5163, %5148 ], [ %5207, %5197 ]
  %5241 = phi float [ %5163, %5148 ], [ %5208, %5197 ]
  %5242 = phi float [ %5163, %5148 ], [ %5209, %5197 ]
  br i1 %4729, label %5243, label %5441, !dx.controlflow.hints !150

; <label>:5243                                    ; preds = %5236
  %5244 = extractvalue %dx.types.CBufRet.f32 %5142, 0
  %5245 = fmul fast float %5244, %5144
  %5246 = fsub fast float %5139, %5237
  %5247 = fsub fast float %5140, %5238
  %5248 = fsub fast float %5141, %5239
  %5249 = fmul fast float %5245, %5246
  %5250 = fmul fast float %5245, %5247
  %5251 = fmul fast float %5245, %5248
  %5252 = fadd fast float %5249, %5237
  %5253 = fadd fast float %5250, %5238
  %5254 = fadd fast float %5251, %5239
  %5255 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5240)  ; FMax(a,b)
  %5256 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5241)  ; FMax(a,b)
  %5257 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5242)  ; FMax(a,b)
  %5258 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5138)  ; FMax(a,b)
  %5259 = call float @dx.op.binary.f32(i32 35, float %5137, float %5147)  ; FMax(a,b)
  %5260 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5259)  ; FMax(a,b)
  %5261 = fdiv fast float %5137, %5260
  %5262 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5263 = fdiv fast float %5147, %5260
  %5264 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5265 = fcmp fast une float %5258, 1.000000e+00
  br i1 %5265, label %5266, label %5279, !dx.controlflow.hints !151

; <label>:5266                                    ; preds = %5243
  %5267 = call float @dx.op.unary.f32(i32 23, float %5258)  ; Log(value)
  %5268 = fmul fast float %5267, 0x3FE62E4300000000
  %5269 = fmul fast float %5139, %5268
  %5270 = fsub fast float -0.000000e+00, %5269
  %5271 = fmul fast float %5140, %5268
  %5272 = fsub fast float -0.000000e+00, %5271
  %5273 = fmul fast float %5141, %5268
  %5274 = fsub fast float -0.000000e+00, %5273
  %5275 = fsub fast float 1.000000e+00, %5258
  %5276 = fdiv fast float %5270, %5275
  %5277 = fdiv fast float %5272, %5275
  %5278 = fdiv fast float %5274, %5275
  br label %5279

; <label>:5279                                    ; preds = %5266, %5243
  %5280 = phi float [ %5276, %5266 ], [ %5139, %5243 ]
  %5281 = phi float [ %5277, %5266 ], [ %5140, %5243 ]
  %5282 = phi float [ %5278, %5266 ], [ %5141, %5243 ]
  %5283 = phi float [ %5268, %5266 ], [ 0.000000e+00, %5243 ]
  %5284 = fcmp fast une float %5255, 1.000000e+00
  br i1 %5284, label %5285, label %5292, !dx.controlflow.hints !152

; <label>:5285                                    ; preds = %5279
  %5286 = call float @dx.op.unary.f32(i32 23, float %5255)  ; Log(value)
  %5287 = fmul fast float %5286, 0x3FE62E4300000000
  %5288 = fmul fast float %5252, %5287
  %5289 = fsub fast float -0.000000e+00, %5288
  %5290 = fsub fast float 1.000000e+00, %5255
  %5291 = fdiv fast float %5289, %5290
  br label %5292

; <label>:5292                                    ; preds = %5285, %5279
  %5293 = phi float [ %5291, %5285 ], [ %5252, %5279 ]
  %5294 = phi float [ %5287, %5285 ], [ 0.000000e+00, %5279 ]
  %5295 = fcmp fast une float %5256, 1.000000e+00
  br i1 %5295, label %5296, label %5303, !dx.controlflow.hints !152

; <label>:5296                                    ; preds = %5292
  %5297 = call float @dx.op.unary.f32(i32 23, float %5256)  ; Log(value)
  %5298 = fmul fast float %5297, 0x3FE62E4300000000
  %5299 = fmul fast float %5253, %5298
  %5300 = fsub fast float -0.000000e+00, %5299
  %5301 = fsub fast float 1.000000e+00, %5256
  %5302 = fdiv fast float %5300, %5301
  br label %5303

; <label>:5303                                    ; preds = %5296, %5292
  %5304 = phi float [ %5302, %5296 ], [ %5253, %5292 ]
  %5305 = phi float [ %5298, %5296 ], [ 0.000000e+00, %5292 ]
  %5306 = fcmp fast une float %5257, 1.000000e+00
  br i1 %5306, label %5307, label %5314, !dx.controlflow.hints !152

; <label>:5307                                    ; preds = %5303
  %5308 = call float @dx.op.unary.f32(i32 23, float %5257)  ; Log(value)
  %5309 = fmul fast float %5308, 0x3FE62E4300000000
  %5310 = fmul fast float %5254, %5309
  %5311 = fsub fast float -0.000000e+00, %5310
  %5312 = fsub fast float 1.000000e+00, %5257
  %5313 = fdiv fast float %5311, %5312
  br label %5314

; <label>:5314                                    ; preds = %5307, %5303
  %5315 = phi float [ %5313, %5307 ], [ %5254, %5303 ]
  %5316 = phi float [ %5309, %5307 ], [ 0.000000e+00, %5303 ]
  %5317 = fmul fast float %5280, %5264
  %5318 = fmul fast float %5281, %5264
  %5319 = fmul fast float %5282, %5264
  %5320 = fmul fast float %5283, %5264
  %5321 = fmul fast float %5293, %5262
  %5322 = fmul fast float %5304, %5262
  %5323 = fmul fast float %5315, %5262
  %5324 = fmul fast float %5294, %5262
  %5325 = fmul fast float %5305, %5262
  %5326 = fmul fast float %5316, %5262
  %5327 = fadd fast float %5321, %5317
  %5328 = fadd fast float %5322, %5318
  %5329 = fadd fast float %5323, %5319
  %5330 = fadd fast float %5324, %5320
  %5331 = fadd fast float %5325, %5320
  %5332 = fadd fast float %5326, %5320
  %5333 = fcmp fast une float %5330, 0.000000e+00
  br i1 %5333, label %5334, label %5341, !dx.controlflow.hints !153

; <label>:5334                                    ; preds = %5314
  %5335 = fmul fast float %5330, 0x3FF7154760000000
  %5336 = call float @dx.op.unary.f32(i32 21, float %5335)  ; Exp(value)
  %5337 = fsub fast float 1.000000e+00, %5336
  %5338 = fmul fast float %5327, %5337
  %5339 = fsub fast float -0.000000e+00, %5338
  %5340 = fdiv fast float %5339, %5330
  br label %5341

; <label>:5341                                    ; preds = %5334, %5314
  %5342 = phi float [ %5336, %5334 ], [ 1.000000e+00, %5314 ]
  %5343 = phi float [ %5340, %5334 ], [ %5327, %5314 ]
  %5344 = fcmp fast une float %5331, 0.000000e+00
  br i1 %5344, label %5345, label %5352, !dx.controlflow.hints !153

; <label>:5345                                    ; preds = %5341
  %5346 = fmul fast float %5331, 0x3FF7154760000000
  %5347 = call float @dx.op.unary.f32(i32 21, float %5346)  ; Exp(value)
  %5348 = fsub fast float 1.000000e+00, %5347
  %5349 = fmul fast float %5328, %5348
  %5350 = fsub fast float -0.000000e+00, %5349
  %5351 = fdiv fast float %5350, %5331
  br label %5352

; <label>:5352                                    ; preds = %5345, %5341
  %5353 = phi float [ %5347, %5345 ], [ 1.000000e+00, %5341 ]
  %5354 = phi float [ %5351, %5345 ], [ %5328, %5341 ]
  %5355 = fcmp fast une float %5332, 0.000000e+00
  br i1 %5355, label %5356, label %5363, !dx.controlflow.hints !153

; <label>:5356                                    ; preds = %5352
  %5357 = fmul fast float %5332, 0x3FF7154760000000
  %5358 = call float @dx.op.unary.f32(i32 21, float %5357)  ; Exp(value)
  %5359 = fsub fast float 1.000000e+00, %5358
  %5360 = fmul fast float %5329, %5359
  %5361 = fsub fast float -0.000000e+00, %5360
  %5362 = fdiv fast float %5361, %5332
  br label %5363

; <label>:5363                                    ; preds = %5356, %5352
  %5364 = phi float [ %5358, %5356 ], [ 1.000000e+00, %5352 ]
  %5365 = phi float [ %5362, %5356 ], [ %5329, %5352 ]
  %5366 = fcmp fast ogt float %5262, %5264
  br i1 %5366, label %5367, label %5387

; <label>:5367                                    ; preds = %5363
  %5368 = fsub fast float 1.000000e+00, %5264
  %5369 = fmul fast float %5280, %5368
  %5370 = fmul fast float %5281, %5368
  %5371 = fmul fast float %5282, %5368
  %5372 = fmul fast float %5283, %5368
  %5373 = fcmp fast une float %5372, 0.000000e+00
  br i1 %5373, label %5374, label %5425, !dx.controlflow.hints !154

; <label>:5374                                    ; preds = %5367
  %5375 = fmul fast float %5372, 0x3FF7154760000000
  %5376 = call float @dx.op.unary.f32(i32 21, float %5375)  ; Exp(value)
  %5377 = fsub fast float 1.000000e+00, %5376
  %5378 = fmul fast float %5369, %5377
  %5379 = fsub fast float -0.000000e+00, %5378
  %5380 = fmul fast float %5370, %5377
  %5381 = fsub fast float -0.000000e+00, %5380
  %5382 = fmul fast float %5371, %5377
  %5383 = fsub fast float -0.000000e+00, %5382
  %5384 = fdiv fast float %5379, %5372
  %5385 = fdiv fast float %5381, %5372
  %5386 = fdiv fast float %5383, %5372
  br label %5425

; <label>:5387                                    ; preds = %5363
  %5388 = fsub fast float 1.000000e+00, %5262
  %5389 = fmul fast float %5293, %5388
  %5390 = fmul fast float %5304, %5388
  %5391 = fmul fast float %5315, %5388
  %5392 = fmul fast float %5294, %5388
  %5393 = fmul fast float %5305, %5388
  %5394 = fmul fast float %5316, %5388
  %5395 = fcmp fast une float %5392, 0.000000e+00
  br i1 %5395, label %5396, label %5403, !dx.controlflow.hints !153

; <label>:5396                                    ; preds = %5387
  %5397 = fmul fast float %5392, 0x3FF7154760000000
  %5398 = call float @dx.op.unary.f32(i32 21, float %5397)  ; Exp(value)
  %5399 = fsub fast float 1.000000e+00, %5398
  %5400 = fmul fast float %5389, %5399
  %5401 = fsub fast float -0.000000e+00, %5400
  %5402 = fdiv fast float %5401, %5392
  br label %5403

; <label>:5403                                    ; preds = %5396, %5387
  %5404 = phi float [ %5402, %5396 ], [ %5389, %5387 ]
  %5405 = phi float [ %5398, %5396 ], [ 1.000000e+00, %5387 ]
  %5406 = fcmp fast une float %5393, 0.000000e+00
  br i1 %5406, label %5407, label %5414, !dx.controlflow.hints !153

; <label>:5407                                    ; preds = %5403
  %5408 = fmul fast float %5393, 0x3FF7154760000000
  %5409 = call float @dx.op.unary.f32(i32 21, float %5408)  ; Exp(value)
  %5410 = fsub fast float 1.000000e+00, %5409
  %5411 = fmul fast float %5390, %5410
  %5412 = fsub fast float -0.000000e+00, %5411
  %5413 = fdiv fast float %5412, %5393
  br label %5414

; <label>:5414                                    ; preds = %5407, %5403
  %5415 = phi float [ %5413, %5407 ], [ %5390, %5403 ]
  %5416 = phi float [ %5409, %5407 ], [ 1.000000e+00, %5403 ]
  %5417 = fcmp fast une float %5394, 0.000000e+00
  br i1 %5417, label %5418, label %5425, !dx.controlflow.hints !153

; <label>:5418                                    ; preds = %5414
  %5419 = fmul fast float %5394, 0x3FF7154760000000
  %5420 = call float @dx.op.unary.f32(i32 21, float %5419)  ; Exp(value)
  %5421 = fsub fast float 1.000000e+00, %5420
  %5422 = fmul fast float %5391, %5421
  %5423 = fsub fast float -0.000000e+00, %5422
  %5424 = fdiv fast float %5423, %5394
  br label %5425

; <label>:5425                                    ; preds = %5418, %5414, %5374, %5367
  %5426 = phi float [ %5424, %5418 ], [ %5386, %5374 ], [ %5371, %5367 ], [ %5391, %5414 ]
  %5427 = phi float [ %5415, %5418 ], [ %5385, %5374 ], [ %5370, %5367 ], [ %5415, %5414 ]
  %5428 = phi float [ %5404, %5418 ], [ %5384, %5374 ], [ %5369, %5367 ], [ %5404, %5414 ]
  %5429 = phi float [ %5420, %5418 ], [ %5376, %5374 ], [ 1.000000e+00, %5367 ], [ 1.000000e+00, %5414 ]
  %5430 = phi float [ %5416, %5418 ], [ %5376, %5374 ], [ 1.000000e+00, %5367 ], [ %5416, %5414 ]
  %5431 = phi float [ %5405, %5418 ], [ %5376, %5374 ], [ 1.000000e+00, %5367 ], [ %5405, %5414 ]
  %5432 = fmul fast float %5431, %5343
  %5433 = fmul fast float %5430, %5354
  %5434 = fmul fast float %5429, %5365
  %5435 = fadd fast float %5432, %5428
  %5436 = fadd fast float %5433, %5427
  %5437 = fadd fast float %5434, %5426
  %5438 = fmul fast float %5431, %5342
  %5439 = fmul fast float %5430, %5353
  %5440 = fmul fast float %5429, %5364
  br label %5441

; <label>:5441                                    ; preds = %5425, %5236
  %5442 = phi float [ %5440, %5425 ], [ %5242, %5236 ]
  %5443 = phi float [ %5439, %5425 ], [ %5241, %5236 ]
  %5444 = phi float [ %5438, %5425 ], [ %5240, %5236 ]
  %5445 = phi float [ %5437, %5425 ], [ %5239, %5236 ]
  %5446 = phi float [ %5436, %5425 ], [ %5238, %5236 ]
  %5447 = phi float [ %5435, %5425 ], [ %5237, %5236 ]
  %5448 = fmul fast float %5447, %4387
  %5449 = fmul fast float %5446, %4389
  %5450 = fmul fast float %5445, %4391
  %5451 = fmul fast float %5444, %4684
  %5452 = call float @dx.op.dot3.f32(i32 55, float %5444, float %5443, float %5442, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5453 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5454 = select i1 %191, float %5452, float %5444
  %5455 = select i1 %191, float %5452, float %5443
  %5456 = select i1 %191, float 1.000000e+00, float %5442
  %5457 = select i1 %191, float %5453, float %5448
  %5458 = select i1 %191, float 0.000000e+00, float %5449
  %5459 = select i1 %191, float 0.000000e+00, float %5450
  %5460 = fmul fast float %5454, %4678
  %5461 = fmul fast float %5455, %4679
  %5462 = fmul fast float %5456, %4680
  %5463 = fadd fast float %5460, %5457
  %5464 = fadd fast float %5461, %5458
  %5465 = fadd fast float %5459, %5462
  %5466 = fmul fast float %5454, %4681
  %5467 = fmul fast float %5455, %4682
  %5468 = fmul fast float %5456, %4683
  %5469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5470 = extractvalue %dx.types.CBufRet.i32 %5469, 0
  %5471 = icmp eq i32 %5470, 0
  br i1 %5471, label %5839, label %5472, !dx.controlflow.hints !155

; <label>:5472                                    ; preds = %5441
  %5473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5474 = extractvalue %dx.types.CBufRet.f32 %5473, 2
  %5475 = extractvalue %dx.types.CBufRet.f32 %5473, 3
  %5476 = fmul fast float %5474, %82
  %5477 = fmul fast float %5475, %83
  %5478 = fmul fast float %5476, 2.000000e+00
  %5479 = fmul fast float %5477, 2.000000e+00
  %5480 = fsub fast float 1.000000e+00, %5478
  %5481 = fsub fast float 1.000000e+00, %5479
  %5482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5483 = extractvalue %dx.types.CBufRet.f32 %5482, 0
  %5484 = extractvalue %dx.types.CBufRet.f32 %5482, 1
  %5485 = extractvalue %dx.types.CBufRet.f32 %5482, 2
  %5486 = fmul fast float %5480, %5483
  %5487 = fmul fast float %5480, %5484
  %5488 = fmul fast float %5480, %5485
  %5489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5490 = extractvalue %dx.types.CBufRet.f32 %5489, 0
  %5491 = extractvalue %dx.types.CBufRet.f32 %5489, 1
  %5492 = extractvalue %dx.types.CBufRet.f32 %5489, 2
  %5493 = fmul fast float %5481, %5490
  %5494 = fmul fast float %5481, %5491
  %5495 = fmul fast float %5481, %5492
  %5496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5497 = extractvalue %dx.types.CBufRet.f32 %5496, 0
  %5498 = extractvalue %dx.types.CBufRet.f32 %5496, 1
  %5499 = extractvalue %dx.types.CBufRet.f32 %5496, 2
  %5500 = fadd fast float %5493, %5497
  %5501 = fadd fast float %5500, %5486
  %5502 = fadd fast float %5494, %5498
  %5503 = fadd fast float %5502, %5487
  %5504 = fadd fast float %5495, %5499
  %5505 = fadd fast float %5504, %5488
  %5506 = fmul fast float %5501, %4677
  %5507 = fmul fast float %5503, %4677
  %5508 = fmul fast float %5505, %4677
  %5509 = fmul fast float %5506, %5506
  %5510 = fmul fast float %5507, %5507
  %5511 = fadd fast float %5509, %5510
  %5512 = fmul fast float %5508, %5508
  %5513 = fadd fast float %5511, %5512
  %5514 = call float @dx.op.unary.f32(i32 24, float %5513)  ; Sqrt(value)
  %5515 = extractvalue %dx.types.CBufRet.f32 %4402, 0
  %5516 = fsub fast float %5514, %5515
  %5517 = extractvalue %dx.types.CBufRet.f32 %4402, 2
  %5518 = fmul fast float %5516, %5517
  %5519 = call float @dx.op.unary.f32(i32 7, float %5518)  ; Saturate(value)
  %5520 = fadd fast float %5519, -5.000000e-01
  %5521 = fmul fast float %5520, 2.000000e+00
  %5522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %5523 = extractvalue %dx.types.CBufRet.f32 %5522, 2
  %5524 = call float @dx.op.binary.f32(i32 36, float %5523, float %5521)  ; FMin(a,b)
  %5525 = fsub fast float -0.000000e+00, %5523
  %5526 = fcmp fast ogt float %5524, %5525
  br i1 %5526, label %5527, label %5839, !dx.controlflow.hints !156

; <label>:5527                                    ; preds = %5472
  %5528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %5529 = extractvalue %dx.types.CBufRet.f32 %5528, 3
  %5530 = fcmp fast ogt float %5529, 0.000000e+00
  br i1 %5530, label %5531, label %5606, !dx.controlflow.hints !157

; <label>:5531                                    ; preds = %5527
  %5532 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %5533 = extractvalue %dx.types.Dimensions %5532, 0
  %5534 = sitofp i32 %5533 to float
  %5535 = extractvalue %dx.types.Dimensions %5532, 1
  %5536 = sitofp i32 %5535 to float
  %5537 = fmul fast float %5476, %5534
  %5538 = fmul fast float %5477, %5536
  %5539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5540 = extractvalue %dx.types.CBufRet.f32 %5539, 1
  %5541 = fsub fast float -0.000000e+00, %5540
  %5542 = fptoui float %5541 to i32
  %5543 = fptoui float %5537 to i32
  %5544 = fptoui float %5538 to i32
  %5545 = and i32 %5542, 31
  %5546 = lshr i32 %5543, %5545
  %5547 = lshr i32 %5544, %5545
  %5548 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 %5542, i32 %5546, i32 %5547, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5549 = extractvalue %dx.types.ResRet.f32 %5548, 0
  %5550 = fcmp fast olt float %5549, -1.000000e+00
  %5551 = fcmp fast ogt float %5549, -1.000000e+00
  %5552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5553 = extractvalue %dx.types.CBufRet.f32 %5552, 1
  %5554 = select i1 %5551, float %5553, float 1.000000e+00
  %5555 = fadd fast float %5549, 1.000000e+00
  %5556 = fmul fast float %5554, %5555
  %5557 = call float @dx.op.unary.f32(i32 6, float %5556)  ; FAbs(value)
  %5558 = extractvalue %dx.types.CBufRet.f32 %5552, 3
  %5559 = fcmp fast oge float %5557, %5558
  %5560 = select i1 %5559, float 0x4197782600000000, float %5557
  %5561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %5562 = extractvalue %dx.types.CBufRet.f32 %5561, 0
  %5563 = extractvalue %dx.types.CBufRet.f32 %5561, 1
  %5564 = extractvalue %dx.types.CBufRet.f32 %5561, 2
  %5565 = select i1 %5550, float %5562, float %5483
  %5566 = select i1 %5550, float %5563, float %5484
  %5567 = select i1 %5550, float %5564, float %5485
  %5568 = fmul fast float %5565, %5480
  %5569 = fmul fast float %5566, %5480
  %5570 = fmul fast float %5567, %5480
  %5571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %5572 = extractvalue %dx.types.CBufRet.f32 %5571, 0
  %5573 = extractvalue %dx.types.CBufRet.f32 %5571, 1
  %5574 = extractvalue %dx.types.CBufRet.f32 %5571, 2
  %5575 = select i1 %5550, float %5572, float %5490
  %5576 = select i1 %5550, float %5573, float %5491
  %5577 = select i1 %5550, float %5574, float %5492
  %5578 = fmul fast float %5575, %5481
  %5579 = fmul fast float %5576, %5481
  %5580 = fmul fast float %5577, %5481
  %5581 = fadd fast float %5578, %5568
  %5582 = fadd fast float %5579, %5569
  %5583 = fadd fast float %5580, %5570
  %5584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %5585 = extractvalue %dx.types.CBufRet.f32 %5584, 0
  %5586 = extractvalue %dx.types.CBufRet.f32 %5584, 1
  %5587 = extractvalue %dx.types.CBufRet.f32 %5584, 2
  %5588 = select i1 %5550, float %5585, float %5497
  %5589 = select i1 %5550, float %5586, float %5498
  %5590 = select i1 %5550, float %5587, float %5499
  %5591 = fadd fast float %5581, %5588
  %5592 = fadd fast float %5582, %5589
  %5593 = fadd fast float %5583, %5590
  %5594 = fmul fast float %5591, %5560
  %5595 = fmul fast float %5592, %5560
  %5596 = fmul fast float %5593, %5560
  %5597 = fmul fast float %5594, %5594
  %5598 = fmul fast float %5595, %5595
  %5599 = fadd fast float %5597, %5598
  %5600 = fmul fast float %5596, %5596
  %5601 = fadd fast float %5599, %5600
  %5602 = call float @dx.op.unary.f32(i32 24, float %5601)  ; Sqrt(value)
  %5603 = fsub fast float %5602, %5515
  %5604 = fmul fast float %5603, %5517
  %5605 = call float @dx.op.unary.f32(i32 7, float %5604)  ; Saturate(value)
  br label %5606

; <label>:5606                                    ; preds = %5531, %5527
  %5607 = phi float [ %5605, %5531 ], [ 1.000000e+00, %5527 ]
  %5608 = fmul fast float %5524, 5.000000e-01
  %5609 = fadd fast float %5608, 5.000000e-01
  %5610 = call float @dx.op.unary.f32(i32 22, float %5609)  ; Frc(value)
  %5611 = call float @dx.op.unary.f32(i32 27, float %5610)  ; Round_ni(value)
  %5612 = call float @dx.op.unary.f32(i32 22, float %5610)  ; Frc(value)
  %5613 = fmul fast float %5612, 2.000000e+00
  %5614 = fadd fast float %5613, -1.000000e+00
  %5615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %38, float %5476, float %5477, float %5611, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5616 = extractvalue %dx.types.ResRet.f32 %5615, 0
  %5617 = extractvalue %dx.types.ResRet.f32 %5615, 1
  %5618 = extractvalue %dx.types.ResRet.f32 %5615, 2
  %5619 = extractvalue %dx.types.ResRet.f32 %5615, 3
  %5620 = fadd fast float %5616, -5.000000e-01
  %5621 = fadd fast float %5618, -5.000000e-01
  %5622 = fmul fast float %5620, 0xBFD5555560000000
  %5623 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5621, float %5622)  ; FMad(a,b,c)
  %5624 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5617, float 0.000000e+00)  ; FMad(a,b,c)
  %5625 = fadd fast float %5624, %5619
  %5626 = fmul fast float %5620, -7.500000e-01
  %5627 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5621, float %5626)  ; FMad(a,b,c)
  %5628 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5617, float 0.000000e+00)  ; FMad(a,b,c)
  %5629 = fadd fast float %5628, %5619
  %5630 = call float @dx.op.binary.f32(i32 35, float %5623, float -1.000000e+00)  ; FMax(a,b)
  %5631 = call float @dx.op.binary.f32(i32 35, float %5625, float -1.000000e+00)  ; FMax(a,b)
  %5632 = call float @dx.op.binary.f32(i32 35, float %5627, float -1.000000e+00)  ; FMax(a,b)
  %5633 = call float @dx.op.binary.f32(i32 35, float %5629, float -1.000000e+00)  ; FMax(a,b)
  %5634 = call float @dx.op.binary.f32(i32 36, float %5630, float 1.000000e+00)  ; FMin(a,b)
  %5635 = call float @dx.op.binary.f32(i32 36, float %5631, float 1.000000e+00)  ; FMin(a,b)
  %5636 = call float @dx.op.binary.f32(i32 36, float %5632, float 1.000000e+00)  ; FMin(a,b)
  %5637 = call float @dx.op.binary.f32(i32 36, float %5633, float 1.000000e+00)  ; FMin(a,b)
  %5638 = fcmp fast olt float %5634, 0x3FEFFF8020000000
  br i1 %5638, label %5639, label %5754, !dx.controlflow.hints !158

; <label>:5639                                    ; preds = %5606
  %5640 = extractvalue %dx.types.CBufRet.f32 %5522, 3
  %5641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %5642 = extractvalue %dx.types.CBufRet.f32 %5641, 0
  %5643 = extractvalue %dx.types.CBufRet.f32 %5641, 1
  %5644 = extractvalue %dx.types.CBufRet.f32 %5641, 2
  %5645 = extractvalue %dx.types.CBufRet.f32 %5641, 3
  %5646 = fsub fast float %5642, %5634
  %5647 = fsub fast float %5643, %5635
  %5648 = fsub fast float %5644, %5636
  %5649 = fsub fast float %5645, %5637
  %5650 = fmul fast float %5646, %5640
  %5651 = fmul fast float %5647, %5640
  %5652 = fmul fast float %5648, %5640
  %5653 = fmul fast float %5649, %5640
  %5654 = fadd fast float %5650, %5634
  %5655 = fadd fast float %5651, %5635
  %5656 = fsub fast float -0.000000e+00, %5655
  %5657 = fadd fast float %5652, %5636
  %5658 = fadd fast float %5653, %5637
  %5659 = fmul fast float %5654, %5654
  %5660 = fsub fast float %5655, %5659
  %5661 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5660)  ; FMax(a,b)
  %5662 = fdiv fast float 1.000000e+00, %5661
  %5663 = fmul fast float %5655, %5654
  %5664 = fsub fast float %5657, %5663
  %5665 = fsub fast float %5614, %5654
  %5666 = fmul fast float %5614, %5614
  %5667 = fsub fast float %5666, %5655
  %5668 = fmul fast float %5665, %5662
  %5669 = fmul fast float %5668, %5664
  %5670 = fsub fast float %5667, %5669
  %5671 = fmul fast float %5655, %5655
  %5672 = fsub fast float %5658, %5671
  %5673 = fmul fast float %5664, %5664
  %5674 = fmul fast float %5673, %5662
  %5675 = fsub fast float %5672, %5674
  %5676 = fdiv fast float %5670, %5675
  %5677 = fmul fast float %5664, %5676
  %5678 = fsub fast float %5665, %5677
  %5679 = fmul fast float %5678, %5662
  %5680 = fmul fast float %5679, %5654
  %5681 = fsub fast float 1.000000e+00, %5680
  %5682 = fmul fast float %5655, %5676
  %5683 = fsub fast float %5681, %5682
  %5684 = fmul fast float %5679, %5679
  %5685 = fmul fast float %5676, 4.000000e+00
  %5686 = fmul fast float %5685, %5683
  %5687 = fsub fast float %5684, %5686
  %5688 = call float @dx.op.unary.f32(i32 24, float %5687)  ; Sqrt(value)
  %5689 = fcmp fast oge float %5679, 0.000000e+00
  %5690 = fsub fast float -0.000000e+00, %5688
  %5691 = select i1 %5689, float %5690, float %5688
  %5692 = fsub fast float %5691, %5679
  %5693 = fdiv fast float %5692, %5676
  %5694 = fdiv fast float %5683, %5692
  %5695 = fmul fast float %5693, 5.000000e-01
  %5696 = fmul fast float %5694, 2.000000e+00
  %5697 = select i1 %5689, float %5695, float %5696
  %5698 = select i1 %5689, float %5696, float %5695
  %5699 = call float @dx.op.binary.f32(i32 35, float %5697, float %5698)  ; FMax(a,b)
  %5700 = call float @dx.op.binary.f32(i32 36, float %5697, float %5698)  ; FMin(a,b)
  %5701 = fcmp fast ogt float %5614, %5700
  br i1 %5701, label %5702, label %5712

; <label>:5702                                    ; preds = %5639
  %5703 = fsub fast float %5614, %5700
  %5704 = fsub fast float %5699, %5700
  %5705 = fmul fast float %5703, %5704
  %5706 = fmul fast float %5699, %5614
  %5707 = fadd fast float %5699, %5614
  %5708 = fmul fast float %5707, %5654
  %5709 = fadd fast float %5706, %5655
  %5710 = fsub fast float %5709, %5708
  %5711 = fdiv fast float %5710, %5705
  br label %5712

; <label>:5712                                    ; preds = %5702, %5639
  %5713 = phi float [ %5711, %5702 ], [ 0.000000e+00, %5639 ]
  %5714 = fcmp fast ogt float %5614, %5699
  %5715 = fsub fast float %5614, %5699
  br i1 %5714, label %5716, label %5726

; <label>:5716                                    ; preds = %5712
  %5717 = fsub fast float %5699, %5700
  %5718 = fmul fast float %5717, %5715
  %5719 = fmul fast float %5700, %5614
  %5720 = fadd fast float %5700, %5614
  %5721 = fmul fast float %5720, %5654
  %5722 = fsub fast float %5656, %5719
  %5723 = fadd fast float %5722, %5721
  %5724 = fdiv fast float %5723, %5718
  %5725 = fadd fast float %5724, %5713
  br label %5726

; <label>:5726                                    ; preds = %5716, %5712
  %5727 = phi float [ %5725, %5716 ], [ %5713, %5712 ]
  %5728 = fsub fast float %5614, %5700
  %5729 = fmul fast float %5728, %5715
  %5730 = fmul fast float %5700, %5699
  %5731 = fadd fast float %5700, %5699
  %5732 = fmul fast float %5731, %5654
  %5733 = fadd fast float %5730, %5655
  %5734 = fsub fast float %5733, %5732
  %5735 = fdiv fast float %5734, %5729
  %5736 = call float @dx.op.unary.f32(i32 7, float %5727)  ; Saturate(value)
  %5737 = fcmp fast oeq float %4403, 0.000000e+00
  %5738 = extractvalue %dx.types.CBufRet.f32 %5522, 0
  %5739 = fcmp fast oeq float %5738, 0.000000e+00
  %5740 = or i1 %5737, %5739
  %5741 = fmul fast float %5738, 2.000000e+00
  %5742 = fadd fast float %5523, %5524
  %5743 = fdiv fast float %5742, %5741
  %5744 = call float @dx.op.unary.f32(i32 7, float %5743)  ; Saturate(value)
  %5745 = fmul fast float %5744, 2.000000e+00
  %5746 = fsub fast float 3.000000e+00, %5745
  %5747 = fmul fast float %5744, %5744
  %5748 = fmul fast float %5747, %5746
  %5749 = select i1 %5740, float 1.000000e+00, float %5748
  %5750 = fmul fast float %5735, %4403
  %5751 = fadd fast float %5736, %5750
  %5752 = call float @dx.op.unary.f32(i32 7, float %5751)  ; Saturate(value)
  %5753 = fmul fast float %5749, %5752
  br label %5754

; <label>:5754                                    ; preds = %5726, %5606
  %5755 = phi float [ %5753, %5726 ], [ 0.000000e+00, %5606 ]
  %5756 = fsub fast float 1.000000e+00, %5755
  %5757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %38, float %5476, float %5477, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5758 = extractvalue %dx.types.ResRet.f32 %5757, 0
  %5759 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %5760 = extractvalue %dx.types.CBufRet.i32 %5759, 2
  %5761 = icmp eq i32 %5760, 0
  br i1 %5761, label %5767, label %5762

; <label>:5762                                    ; preds = %5754
  %5763 = call float @dx.op.unary.f32(i32 7, float %5755)  ; Saturate(value)
  %5764 = fadd fast float %5758, -1.000000e+00
  %5765 = fmul fast float %5763, %5764
  %5766 = fadd fast float %5765, 1.000000e+00
  br label %5767

; <label>:5767                                    ; preds = %5762, %5754
  %5768 = phi float [ %5766, %5762 ], [ %5756, %5754 ]
  br i1 %5530, label %5769, label %5787

; <label>:5769                                    ; preds = %5767
  %5770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5771 = extractvalue %dx.types.CBufRet.f32 %5770, 1
  %5772 = fsub fast float %5607, %5771
  %5773 = call float @dx.op.unary.f32(i32 7, float %5772)  ; Saturate(value)
  %5774 = fsub fast float %5607, %5529
  %5775 = call float @dx.op.unary.f32(i32 7, float %5774)  ; Saturate(value)
  %5776 = fsub fast float %5773, %5775
  %5777 = fsub fast float %5609, %5775
  %5778 = fdiv fast float %5777, %5776
  %5779 = call float @dx.op.unary.f32(i32 7, float %5778)  ; Saturate(value)
  %5780 = fmul fast float %5779, 2.000000e+00
  %5781 = fsub fast float 3.000000e+00, %5780
  %5782 = fsub fast float %5758, %5768
  %5783 = fmul fast float %5779, %5779
  %5784 = fmul fast float %5783, %5782
  %5785 = fmul fast float %5784, %5781
  %5786 = fadd fast float %5785, %5768
  br label %5787

; <label>:5787                                    ; preds = %5769, %5767
  %5788 = phi float [ %5786, %5769 ], [ %5768, %5767 ]
  %5789 = call float @dx.op.binary.f32(i32 35, float %5758, float %5788)  ; FMax(a,b)
  %5790 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %5791 = extractvalue %dx.types.CBufRet.i32 %5790, 2
  %5792 = and i32 %5791, 1
  %5793 = icmp eq i32 %5792, 0
  %5794 = fcmp fast une float %5789, 1.000000e+00
  %5795 = and i1 %5794, %5793
  br i1 %5795, label %5796, label %5815

; <label>:5796                                    ; preds = %5787
  %5797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %38, float %5476, float %5477, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5798 = extractvalue %dx.types.ResRet.f32 %5797, 0
  %5799 = extractvalue %dx.types.ResRet.f32 %5797, 1
  %5800 = extractvalue %dx.types.ResRet.f32 %5797, 2
  %5801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5802 = extractvalue %dx.types.CBufRet.f32 %5801, 1
  %5803 = fmul fast float %5802, %5798
  %5804 = fmul fast float %5802, %5799
  %5805 = fmul fast float %5802, %5800
  %5806 = fcmp fast ogt float %5758, 0x3FEFFF2E40000000
  %5807 = fsub fast float 1.000000e+00, %5789
  %5808 = fsub fast float 1.000000e+00, %5758
  %5809 = fdiv fast float %5807, %5808
  %5810 = call float @dx.op.unary.f32(i32 7, float %5809)  ; Saturate(value)
  %5811 = select i1 %5806, float 0.000000e+00, float %5810
  %5812 = fmul fast float %5803, %5811
  %5813 = fmul fast float %5804, %5811
  %5814 = fmul fast float %5805, %5811
  br label %5815

; <label>:5815                                    ; preds = %5796, %5787
  %5816 = phi float [ 0.000000e+00, %5787 ], [ %5812, %5796 ]
  %5817 = phi float [ 0.000000e+00, %5787 ], [ %5813, %5796 ]
  %5818 = phi float [ 0.000000e+00, %5787 ], [ %5814, %5796 ]
  %5819 = fmul fast float %5816, %4387
  %5820 = fmul fast float %5817, %4389
  %5821 = fmul fast float %5818, %4391
  %5822 = fmul fast float %5789, %5451
  %5823 = call float @dx.op.dot3.f32(i32 55, float %5789, float %5789, float %5789, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5824 = call float @dx.op.dot3.f32(i32 55, float %5819, float %5820, float %5821, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5825 = select i1 %191, float %5823, float %5789
  %5826 = select i1 %191, float 1.000000e+00, float %5789
  %5827 = select i1 %191, float %5824, float %5819
  %5828 = select i1 %191, float 0.000000e+00, float %5820
  %5829 = select i1 %191, float 0.000000e+00, float %5821
  %5830 = fmul fast float %5825, %5463
  %5831 = fmul fast float %5825, %5464
  %5832 = fmul fast float %5826, %5465
  %5833 = fadd fast float %5830, %5827
  %5834 = fadd fast float %5831, %5828
  %5835 = fadd fast float %5829, %5832
  %5836 = fmul fast float %5825, %5466
  %5837 = fmul fast float %5825, %5467
  %5838 = fmul fast float %5826, %5468
  br label %5839

; <label>:5839                                    ; preds = %5815, %5472, %5441, %4673
  %5840 = phi float [ %4678, %4673 ], [ %5463, %5441 ], [ %5833, %5815 ], [ %5463, %5472 ]
  %5841 = phi float [ %4679, %4673 ], [ %5464, %5441 ], [ %5834, %5815 ], [ %5464, %5472 ]
  %5842 = phi float [ %4680, %4673 ], [ %5465, %5441 ], [ %5835, %5815 ], [ %5465, %5472 ]
  %5843 = phi float [ %4681, %4673 ], [ %5466, %5441 ], [ %5836, %5815 ], [ %5466, %5472 ]
  %5844 = phi float [ %4682, %4673 ], [ %5467, %5441 ], [ %5837, %5815 ], [ %5467, %5472 ]
  %5845 = phi float [ %4683, %4673 ], [ %5468, %5441 ], [ %5838, %5815 ], [ %5468, %5472 ]
  %5846 = phi float [ %4684, %4673 ], [ %5451, %5441 ], [ %5822, %5815 ], [ %5451, %5472 ]
  %5847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.f32 %5847, 2
  %5849 = extractvalue %dx.types.CBufRet.f32 %5847, 3
  %5850 = fmul fast float %5848, %82
  %5851 = fmul fast float %5849, %83
  %5852 = call float @dx.op.unary.f32(i32 7, float %5850)  ; Saturate(value)
  %5853 = call float @dx.op.unary.f32(i32 7, float %5851)  ; Saturate(value)
  %5854 = select i1 %4413, i32 2, i32 0
  %5855 = or i32 %5854, 1
  %5856 = uitofp i32 %5855 to float
  %5857 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %5852, float %5853, float %5856, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5858 = extractvalue %dx.types.ResRet.f32 %5857, 0
  %5859 = extractvalue %dx.types.ResRet.f32 %5857, 1
  %5860 = extractvalue %dx.types.ResRet.f32 %5857, 2
  %5861 = extractvalue %dx.types.ResRet.f32 %5857, 3
  %5862 = add nuw nsw i32 %5854, 2
  %5863 = uitofp i32 %5862 to float
  %5864 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %5852, float %5853, float %5863, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5865 = extractvalue %dx.types.ResRet.f32 %5864, 0
  %5866 = extractvalue %dx.types.ResRet.f32 %5864, 1
  %5867 = extractvalue %dx.types.ResRet.f32 %5864, 2
  %5868 = extractvalue %dx.types.ResRet.f32 %5864, 3
  %5869 = call float @dx.op.binary.f32(i32 35, float %5859, float %5860)  ; FMax(a,b)
  %5870 = call float @dx.op.binary.f32(i32 35, float %5858, float %5869)  ; FMax(a,b)
  %5871 = call float @dx.op.binary.f32(i32 35, float %5870, float %5861)  ; FMax(a,b)
  %5872 = call float @dx.op.binary.f32(i32 36, float %5866, float %5867)  ; FMin(a,b)
  %5873 = call float @dx.op.binary.f32(i32 36, float %5865, float %5872)  ; FMin(a,b)
  %5874 = call float @dx.op.binary.f32(i32 36, float %5873, float %5868)  ; FMin(a,b)
  %5875 = fmul fast float %5871, 2.550000e+02
  %5876 = fadd fast float %5875, 0x3F70101020000000
  %5877 = fptoui float %5876 to i32
  %5878 = fmul fast float %5874, 2.550000e+02
  %5879 = fadd fast float %5878, 0x3F70101020000000
  %5880 = fptoui float %5879 to i32
  %5881 = icmp ult i32 %5877, %5880
  br i1 %5881, label %5882, label %6051

; <label>:5882                                    ; preds = %5839
  %5883 = fcmp fast ogt float %69, 9.843750e-01
  %5884 = fadd fast float %4677, -4.000000e+00
  %5885 = select i1 %5883, float -4.000000e+00, float %5884
  %5886 = call float @dx.op.binary.f32(i32 35, float %5885, float 0.000000e+00)  ; FMax(a,b)
  %5887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5888 = extractvalue %dx.types.CBufRet.f32 %5887, 0
  %5889 = fadd fast float %5888, %5886
  %5890 = extractvalue %dx.types.CBufRet.f32 %5887, 2
  %5891 = fmul fast float %5889, %5890
  %5892 = call float @dx.op.unary.f32(i32 23, float %5891)  ; Log(value)
  %5893 = extractvalue %dx.types.CBufRet.f32 %5887, 3
  %5894 = fmul fast float %5893, %5892
  %5895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5896 = extractvalue %dx.types.CBufRet.f32 %5895, 2
  %5897 = fmul fast float %5894, %5896
  %5898 = call float @dx.op.unary.f32(i32 7, float %5897)  ; Saturate(value)
  %5899 = uitofp i32 %5877 to float
  %5900 = uitofp i32 %5880 to float
  %5901 = fadd fast float %5899, 5.000000e-01
  %5902 = fadd fast float %5900, 5.000000e-01
  %5903 = fmul fast float %5896, %5901
  %5904 = fmul fast float %5896, %5902
  %5905 = fadd fast float %5903, 0x3F0FFB4800000000
  %5906 = fadd fast float %5904, 0xBF0FFB4800000000
  %5907 = call float @dx.op.binary.f32(i32 35, float %5898, float %5905)  ; FMax(a,b)
  %5908 = call float @dx.op.binary.f32(i32 36, float %5907, float %5906)  ; FMin(a,b)
  %5909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5910 = extractvalue %dx.types.CBufRet.f32 %5909, 1
  %5911 = extractvalue %dx.types.CBufRet.f32 %5909, 2
  %5912 = extractvalue %dx.types.CBufRet.f32 %5909, 0
  %5913 = select i1 %4413, float %5912, float 0.000000e+00
  %5914 = fmul fast float %5910, %5908
  %5915 = fadd fast float %5913, %5914
  %5916 = fadd fast float %5913, %5911
  %5917 = fsub fast float %5910, %5911
  %5918 = fadd fast float %5917, %5913
  %5919 = call float @dx.op.binary.f32(i32 35, float %5915, float %5916)  ; FMax(a,b)
  %5920 = call float @dx.op.binary.f32(i32 36, float %5919, float %5918)  ; FMin(a,b)
  %5921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %36, float %5852, float %5853, float %5920, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5922 = extractvalue %dx.types.ResRet.f32 %5921, 0
  %5923 = extractvalue %dx.types.ResRet.f32 %5921, 1
  %5924 = extractvalue %dx.types.ResRet.f32 %5921, 2
  %5925 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5926 = extractvalue %dx.types.CBufRet.i32 %5925, 0
  %5927 = extractvalue %dx.types.CBufRet.i32 %5925, 1
  %5928 = uitofp i32 %5926 to float
  %5929 = uitofp i32 %5927 to float
  %5930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5931 = extractvalue %dx.types.CBufRet.f32 %5930, 0
  %5932 = extractvalue %dx.types.CBufRet.f32 %5930, 1
  %5933 = fmul fast float %5928, %5852
  %5934 = fmul fast float %5929, %5853
  %5935 = fadd fast float %5933, -5.000000e-01
  %5936 = fadd fast float %5934, -5.000000e-01
  %5937 = call float @dx.op.unary.f32(i32 22, float %5935)  ; Frc(value)
  %5938 = call float @dx.op.unary.f32(i32 22, float %5936)  ; Frc(value)
  %5939 = fmul fast float %5937, %5937
  %5940 = fmul fast float %5939, %5937
  %5941 = fsub fast float 3.000000e+00, %5937
  %5942 = fmul fast float %5939, %5941
  %5943 = fmul fast float %5937, 3.000000e+00
  %5944 = fmul fast float %5940, 3.000000e+00
  %5945 = fmul fast float %5939, 6.000000e+00
  %5946 = fsub fast float %5944, %5945
  %5947 = fadd fast float %5946, 4.000000e+00
  %5948 = fmul fast float %5947, 0x3FC5555560000000
  %5949 = fmul fast float %5940, -3.000000e+00
  %5950 = fadd fast float %5939, %5937
  %5951 = fmul fast float %5950, 3.000000e+00
  %5952 = fadd fast float %5949, 1.000000e+00
  %5953 = fadd fast float %5952, %5951
  %5954 = fmul fast float %5940, 0x3FC5555560000000
  %5955 = fmul fast float %5938, %5938
  %5956 = fmul fast float %5955, %5938
  %5957 = fsub fast float 3.000000e+00, %5938
  %5958 = fmul fast float %5955, %5957
  %5959 = fmul fast float %5938, 3.000000e+00
  %5960 = fmul fast float %5956, 3.000000e+00
  %5961 = fmul fast float %5955, 6.000000e+00
  %5962 = fsub fast float %5960, %5961
  %5963 = fadd fast float %5962, 4.000000e+00
  %5964 = fmul fast float %5963, 0x3FC5555560000000
  %5965 = fmul fast float %5956, -3.000000e+00
  %5966 = fadd fast float %5955, %5938
  %5967 = fmul fast float %5966, 3.000000e+00
  %5968 = fadd fast float %5965, 1.000000e+00
  %5969 = fadd fast float %5968, %5967
  %5970 = fmul fast float %5956, 0x3FC5555560000000
  %5971 = fadd fast float %5937, 1.000000e+00
  %5972 = fsub fast float 1.000000e+00, %5943
  %5973 = fadd fast float %5972, %5942
  %5974 = fadd fast float %5973, %5947
  %5975 = fmul fast float %5974, 0x3FC5555560000000
  %5976 = fdiv fast float %5948, %5975
  %5977 = fsub fast float %5971, %5976
  %5978 = fsub fast float 1.000000e+00, %5937
  %5979 = fadd fast float %5953, %5940
  %5980 = fmul fast float %5979, 0x3FC5555560000000
  %5981 = fdiv fast float %5954, %5980
  %5982 = fadd fast float %5978, %5981
  %5983 = fadd fast float %5938, 1.000000e+00
  %5984 = fsub fast float 1.000000e+00, %5959
  %5985 = fadd fast float %5984, %5958
  %5986 = fadd fast float %5985, %5963
  %5987 = fmul fast float %5986, 0x3FC5555560000000
  %5988 = fdiv fast float %5964, %5987
  %5989 = fsub fast float %5983, %5988
  %5990 = fsub fast float 1.000000e+00, %5938
  %5991 = fadd fast float %5969, %5956
  %5992 = fmul fast float %5991, 0x3FC5555560000000
  %5993 = fdiv fast float %5970, %5992
  %5994 = fadd fast float %5993, %5990
  %5995 = fmul fast float %5977, %5931
  %5996 = fsub fast float %5852, %5995
  %5997 = fmul fast float %5982, %5931
  %5998 = fadd fast float %5997, %5852
  %5999 = fmul fast float %5994, %5932
  %6000 = fadd fast float %5999, %5853
  %6001 = fmul fast float %5989, %5932
  %6002 = fsub fast float %5853, %6001
  %6003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %5996, float %6002, float %5920, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6004 = extractvalue %dx.types.ResRet.f32 %6003, 0
  %6005 = extractvalue %dx.types.ResRet.f32 %6003, 1
  %6006 = extractvalue %dx.types.ResRet.f32 %6003, 2
  %6007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %5998, float %6002, float %5920, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6008 = extractvalue %dx.types.ResRet.f32 %6007, 0
  %6009 = extractvalue %dx.types.ResRet.f32 %6007, 1
  %6010 = extractvalue %dx.types.ResRet.f32 %6007, 2
  %6011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %5996, float %6000, float %5920, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6012 = extractvalue %dx.types.ResRet.f32 %6011, 0
  %6013 = extractvalue %dx.types.ResRet.f32 %6011, 1
  %6014 = extractvalue %dx.types.ResRet.f32 %6011, 2
  %6015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %5998, float %6000, float %5920, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6016 = extractvalue %dx.types.ResRet.f32 %6015, 0
  %6017 = extractvalue %dx.types.ResRet.f32 %6015, 1
  %6018 = extractvalue %dx.types.ResRet.f32 %6015, 2
  %6019 = fsub fast float %6012, %6004
  %6020 = fsub fast float %6013, %6005
  %6021 = fsub fast float %6014, %6006
  %6022 = fmul fast float %6019, %5992
  %6023 = fmul fast float %6020, %5992
  %6024 = fmul fast float %6021, %5992
  %6025 = fadd fast float %6022, %6004
  %6026 = fadd fast float %6023, %6005
  %6027 = fadd fast float %6024, %6006
  %6028 = fsub fast float %6016, %6008
  %6029 = fsub fast float %6017, %6009
  %6030 = fsub fast float %6018, %6010
  %6031 = fmul fast float %6028, %5992
  %6032 = fmul fast float %6029, %5992
  %6033 = fmul fast float %6030, %5992
  %6034 = fsub fast float %6008, %6025
  %6035 = fadd fast float %6034, %6031
  %6036 = fsub fast float %6009, %6026
  %6037 = fadd fast float %6036, %6032
  %6038 = fsub fast float %6010, %6027
  %6039 = fadd fast float %6038, %6033
  %6040 = fmul fast float %6035, %5980
  %6041 = fmul fast float %6037, %5980
  %6042 = fmul fast float %6039, %5980
  %6043 = fadd fast float %6040, %6025
  %6044 = fadd fast float %6041, %6026
  %6045 = fadd fast float %6042, %6027
  %6046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6047 = extractvalue %dx.types.CBufRet.f32 %6046, 1
  %6048 = fmul fast float %6043, %6047
  %6049 = fmul fast float %6044, %6047
  %6050 = fmul fast float %6045, %6047
  br label %6051

; <label>:6051                                    ; preds = %5882, %5839
  %6052 = phi float [ %5922, %5882 ], [ 1.000000e+00, %5839 ]
  %6053 = phi float [ %5923, %5882 ], [ 1.000000e+00, %5839 ]
  %6054 = phi float [ %5924, %5882 ], [ 1.000000e+00, %5839 ]
  %6055 = phi float [ %6048, %5882 ], [ 0.000000e+00, %5839 ]
  %6056 = phi float [ %6049, %5882 ], [ 0.000000e+00, %5839 ]
  %6057 = phi float [ %6050, %5882 ], [ 0.000000e+00, %5839 ]
  %6058 = fmul fast float %6055, %4387
  %6059 = fmul fast float %6056, %4389
  %6060 = fmul fast float %6057, %4391
  %6061 = fmul fast float %6052, %5846
  %6062 = call float @dx.op.dot3.f32(i32 55, float %6052, float %6053, float %6054, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6063 = call float @dx.op.dot3.f32(i32 55, float %6058, float %6059, float %6060, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6064 = select i1 %191, float %6062, float %6052
  %6065 = select i1 %191, float %6062, float %6053
  %6066 = select i1 %191, float 1.000000e+00, float %6054
  %6067 = select i1 %191, float %6063, float %6058
  %6068 = select i1 %191, float 0.000000e+00, float %6059
  %6069 = select i1 %191, float 0.000000e+00, float %6060
  %6070 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6071 = extractvalue %dx.types.CBufRet.i32 %6070, 3
  %6072 = and i32 %6071, 3
  %6073 = icmp ne i32 %6072, 0
  %6074 = and i32 %6071, 4
  %6075 = icmp ne i32 %6074, 0
  %6076 = and i1 %6073, %6075
  %6077 = and i1 %191, %6076
  br i1 %6077, label %6078, label %6084

; <label>:6078                                    ; preds = %6051
  %6079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6080 = extractvalue %dx.types.CBufRet.f32 %6079, 1
  %6081 = fadd fast float %6061, -1.000000e+00
  %6082 = fmul fast float %6080, %6081
  %6083 = fadd fast float %6082, 1.000000e+00
  br label %6084

; <label>:6084                                    ; preds = %6078, %6051
  %6085 = phi float [ %6083, %6078 ], [ %6061, %6051 ]
  %6086 = fadd fast float %5843, %5840
  %6087 = fmul fast float %6064, %6086
  %6088 = fadd fast float %6087, %6067
  %6089 = fadd fast float %5844, %5841
  %6090 = fmul fast float %6065, %6089
  %6091 = fadd fast float %6090, %6068
  %6092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6093 = extractvalue %dx.types.CBufRet.f32 %6092, 0
  br i1 %191, label %6094, label %6109

; <label>:6094                                    ; preds = %6084
  %6095 = fadd fast float %6088, %6091
  %6096 = fmul fast float %6093, %6095
  %6097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6098 = extractvalue %dx.types.CBufRet.f32 %6097, 3
  %6099 = extractvalue %dx.types.CBufRet.f32 %4395, 1
  %6100 = fsub fast float %4400, %4394
  %6101 = fadd fast float %6100, %4401
  %6102 = fsub fast float %6101, %6099
  %6103 = extractvalue %dx.types.CBufRet.f32 %4395, 2
  %6104 = fmul fast float %6102, %6103
  %6105 = call float @dx.op.unary.f32(i32 7, float %6104)  ; Saturate(value)
  %6106 = fsub fast float %6105, %6098
  %6107 = fmul fast float %6106, %6085
  %6108 = fadd fast float %6107, %6098
  br label %6134

; <label>:6109                                    ; preds = %6084
  %6110 = fadd fast float %5845, %5842
  %6111 = fmul fast float %6066, %6110
  %6112 = fadd fast float %6111, %6069
  %6113 = fmul fast float %6093, %6088
  %6114 = fmul fast float %6093, %6091
  %6115 = fmul fast float %6093, %6112
  %6116 = call float @dx.op.binary.f32(i32 35, float %6114, float %6115)  ; FMax(a,b)
  %6117 = call float @dx.op.binary.f32(i32 35, float %6113, float %6116)  ; FMax(a,b)
  %6118 = call float @dx.op.binary.f32(i32 35, float %4389, float %4391)  ; FMax(a,b)
  %6119 = call float @dx.op.binary.f32(i32 35, float %4387, float %6118)  ; FMax(a,b)
  %6120 = call float @dx.op.binary.f32(i32 35, float %6117, float %6119)  ; FMax(a,b)
  %6121 = fcmp fast ugt float %6120, 0x3F10000000000000
  br i1 %6121, label %6123, label %6122

; <label>:6122                                    ; preds = %6109
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6123

; <label>:6123                                    ; preds = %6122, %6109
  %6124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %6125 = extractvalue %dx.types.ResRet.i32 %6124, 0
  %6126 = and i32 %6125, 32
  %6127 = icmp eq i32 %6126, 0
  br i1 %6127, label %6134, label %6128

; <label>:6128                                    ; preds = %6123
  %6129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6130 = extractvalue %dx.types.CBufRet.f32 %6129, 0
  %6131 = fmul fast float %6130, 0x3FE99999A0000000
  %6132 = fadd fast float %6130, %6113
  %6133 = fadd fast float %6131, %6115
  br label %6134

; <label>:6134                                    ; preds = %6128, %6123, %6094
  %6135 = phi float [ 1.000000e+00, %6094 ], [ %4389, %6128 ], [ %4389, %6123 ]
  %6136 = phi float [ 1.000000e+00, %6094 ], [ %4391, %6128 ], [ %4391, %6123 ]
  %6137 = phi float [ %6096, %6094 ], [ %6132, %6128 ], [ %6113, %6123 ]
  %6138 = phi float [ %6108, %6094 ], [ %6114, %6128 ], [ %6114, %6123 ]
  %6139 = phi float [ 1.000000e+00, %6094 ], [ %6133, %6128 ], [ %6115, %6123 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6140 = call float @dx.op.binary.f32(i32 36, float %6137, float 3.225500e+04)  ; FMin(a,b)
  %6141 = call float @dx.op.binary.f32(i32 36, float %6138, float 3.225500e+04)  ; FMin(a,b)
  %6142 = call float @dx.op.binary.f32(i32 36, float %6139, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6140)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6141)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6142)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6143 = call float @dx.op.binary.f32(i32 36, float %4387, float 3.225500e+04)  ; FMin(a,b)
  %6144 = call float @dx.op.binary.f32(i32 36, float %6135, float 3.225500e+04)  ; FMin(a,b)
  %6145 = call float @dx.op.binary.f32(i32 36, float %6136, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %6143)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %6144)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %6145)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!56 = !{[31 x i32] [i32 29, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119]}
!57 = !{void ()* @ps_main, !"ps_main", !58, !4, !78}
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
!74 = !{!75, !76}
!75 = !{i32 0, !"SV_Target", i8 9, i8 16, !61, i8 0, i32 1, i8 4, i32 0, i8 0, !62}
!76 = !{i32 1, !"SV_Target", i8 9, i8 16, !77, i8 0, i32 1, i8 4, i32 1, i8 0, !62}
!77 = !{i32 1}
!78 = !{i32 0, i64 16}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = !{!88, !88, i64 0}
!88 = !{!"int", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C/C++ TBAA"}
!91 = !{!92, !94, !96, !98}
!92 = distinct !{!92, !93, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!93 = distinct !{!93, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!94 = distinct !{!94, !95, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!95 = distinct !{!95, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!96 = distinct !{!96, !97, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!97 = distinct !{!97, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!98 = distinct !{!98, !99, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!99 = distinct !{!99, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = !{!102, !102, i64 0}
!102 = !{!"float", !89, i64 0}
!103 = distinct !{!103, !81}
!104 = distinct !{!104, !81}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = !{!113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!113 = distinct !{!113, !114, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!114 = distinct !{!114, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!115 = distinct !{!115, !116, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!116 = distinct !{!116, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!117 = distinct !{!117, !116, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!118 = distinct !{!118, !119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!119 = distinct !{!119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!120 = distinct !{!120, !119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!121 = distinct !{!121, !119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!122 = distinct !{!122, !123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!123 = distinct !{!123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!124 = distinct !{!124, !123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!125 = distinct !{!125, !123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!126 = distinct !{!126, !127, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!127 = distinct !{!127, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"\01?sort@@YAXAIAM00@Z: %c"}
!130 = distinct !{!130, !"\01?sort@@YAXAIAM00@Z"}
!131 = !{!132, !133, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!132 = distinct !{!132, !130, !"\01?sort@@YAXAIAM00@Z: %a"}
!133 = distinct !{!133, !130, !"\01?sort@@YAXAIAM00@Z: %b"}
!134 = !{!133}
!135 = !{!132, !129, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!136 = !{!132}
!137 = !{!133, !129, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!138 = !{!139}
!139 = distinct !{!139, !140, !"\01?sort@@YAXAIAM00@Z: %c"}
!140 = distinct !{!140, !"\01?sort@@YAXAIAM00@Z"}
!141 = !{!142, !143, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!142 = distinct !{!142, !140, !"\01?sort@@YAXAIAM00@Z: %a"}
!143 = distinct !{!143, !140, !"\01?sort@@YAXAIAM00@Z: %b"}
!144 = !{!143}
!145 = !{!142, !139, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!146 = !{!142}
!147 = !{!143, !139, !113, !115, !117, !118, !120, !121, !122, !124, !125, !126}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 2}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}

