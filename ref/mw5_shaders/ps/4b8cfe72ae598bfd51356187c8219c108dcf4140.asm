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
; shader hash: 44c3339b326ca07c3a82cc479c341217
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
;                                   texture     f32          2d     T36     t12,space2     1
;                                   texture     f32          2d     T37     t55,space2     1
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

@PCF_OFFSETS_4.0 = internal unnamed_addr constant [4 x float] [float 0x3FE6A161E0000000, float 0.000000e+00, float 0xBFD6A161E0000000, float 2.500000e-01], align 4
@PCF_OFFSETS_4.1 = internal unnamed_addr constant [4 x float] [float 0xBFE6A161E0000000, float 7.500000e-01, float 0xBFD6A161E0000000, float 0.000000e+00], align 4
@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 55, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = alloca [4 x i32], align 4
  %46 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = icmp ne i32 %46, 0
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = alloca [12 x float], align 4
  %74 = alloca [12 x float], align 4
  %75 = alloca [4 x float], align 4
  %76 = alloca [4 x float], align 4
  %77 = alloca [4 x float], align 4
  %78 = alloca [3 x float], align 4
  %79 = alloca [3 x float], align 4
  %80 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %81 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = fmul fast float %83, %69
  %85 = fmul fast float %83, %70
  %86 = select i1 %47, float 1.000000e+00, float -1.000000e+00
  %87 = fmul fast float %64, %86
  %88 = fmul fast float %65, %86
  %89 = fmul fast float %66, %86
  %90 = fmul fast float %65, %62
  %91 = fmul fast float %66, %61
  %92 = fsub fast float %90, %91
  %93 = fmul fast float %66, %60
  %94 = fmul fast float %64, %62
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %64, %61
  %97 = fmul fast float %65, %60
  %98 = fsub fast float %96, %97
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 3
  %102 = fmul fast float %100, 2.000000e+00
  %103 = fmul fast float %102, %84
  %104 = fmul fast float %101, 2.000000e+00
  %105 = fmul fast float %104, %85
  %106 = fsub fast float 1.000000e+00, %103
  %107 = fsub fast float 1.000000e+00, %105
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %111 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %112 = fmul fast float %106, %109
  %113 = fmul fast float %106, %110
  %114 = fmul fast float %106, %111
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %119 = fmul fast float %107, %116
  %120 = fmul fast float %107, %117
  %121 = fmul fast float %107, %118
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 0
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 1
  %125 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %126 = fadd fast float %119, %123
  %127 = fadd fast float %126, %112
  %128 = fadd fast float %120, %124
  %129 = fadd fast float %128, %113
  %130 = fadd fast float %121, %125
  %131 = fadd fast float %130, %114
  %132 = fmul fast float %127, %72
  %133 = fmul fast float %129, %72
  %134 = fmul fast float %131, %72
  %135 = fmul fast float %84, 5.000000e-01
  %136 = fmul fast float %85, 5.000000e-01
  %137 = fptosi float %135 to i32
  %138 = fptosi float %136 to i32
  %139 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %137, i32 %138, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %140 = extractvalue %dx.types.ResRet.i32 %139, 0
  %141 = lshr i32 %140, 18
  %142 = uitofp i32 %141 to float
  %143 = fmul fast float %142, 0x3F4C00EBA0000000
  %144 = call float @dx.op.unary.f32(i32 21, float %143)  ; Exp(value)
  %145 = fadd fast float %144, -1.000000e+00
  %146 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %147 = extractvalue %dx.types.Dimensions %146, 0
  %148 = sitofp i32 %147 to float
  %149 = extractvalue %dx.types.Dimensions %146, 1
  %150 = sitofp i32 %149 to float
  %151 = fcmp fast oge float %135, %148
  %152 = fcmp fast oge float %136, %150
  %153 = or i1 %151, %152
  %154 = select i1 %153, float 0x4197782600000000, float %145
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 3
  %158 = fmul fast float %156, %84
  %159 = fmul fast float %157, %85
  %160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %161 = extractvalue %dx.types.ResRet.i32 %160, 0
  %162 = and i32 %161, 114688
  %163 = icmp ne i32 %162, 0
  %164 = select i1 %163, float %158, float 0.000000e+00
  %165 = select i1 %163, float %159, float 0.000000e+00
  %166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = fmul fast float %167, 2.550000e+02
  %169 = fptoui float %168 to i32
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.i32 %171, 3
  %173 = and i32 %172, 3
  %174 = icmp ne i32 %173, 0
  %175 = and i32 %172, 4
  %176 = icmp ne i32 %175, 0
  %177 = and i1 %174, %176
  br i1 %177, label %178, label %189

; <label>:178                                     ; preds = %0
  %179 = extractvalue %dx.types.CBufRet.f32 %170, 3
  %180 = fmul fast float %179, %85
  %181 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %182 = fmul fast float %181, %84
  %183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %40, float %182, float %180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = fsub fast float 1.000000e+00, %184
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %188 = fcmp fast olt float %185, %187
  br label %192

; <label>:189                                     ; preds = %0
  %190 = icmp eq i32 %175, 0
  %191 = and i1 %174, %190
  br label %192

; <label>:192                                     ; preds = %189, %178
  %193 = phi i1 [ %188, %178 ], [ %191, %189 ]
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %196 = fmul fast float %195, 0x3FE3C6EF40000000
  %197 = frem fast float %84, 2.560000e+02
  %198 = frem fast float %85, 2.560000e+02
  %199 = fptoui float %197 to i32
  %200 = fptoui float %198 to i32
  %201 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %199, i32 %200, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = fadd fast float %202, %196
  %204 = call float @dx.op.unary.f32(i32 22, float %203)  ; Frc(value)
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = shl i32 %206, 4
  %208 = and i32 %207, 32752
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = lshr i32 %206, 7
  %211 = and i32 %210, 32752
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = lshr i32 %206, 22
  %214 = shl nuw nsw i32 %213, 5
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = and i32 %217, 255
  %219 = uitofp i32 %218 to float
  %220 = fmul fast float %219, 0x3F70101020000000
  %221 = lshr i32 %217, 8
  %222 = and i32 %221, 255
  %223 = uitofp i32 %222 to float
  %224 = fmul fast float %223, 0x3F70101020000000
  %225 = lshr i32 %217, 16
  %226 = and i32 %225, 255
  %227 = uitofp i32 %226 to float
  %228 = fmul fast float %227, 0x3F70101020000000
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = and i32 %230, 65535
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = lshr i32 %230, 16
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 65535
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %236, 16
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = fmul fast float %238, 0x3F50624DE0000000
  %242 = fmul fast float %240, 0x3F50624DE0000000
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = and i32 %244, 2
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %254, label %247

; <label>:247                                     ; preds = %192
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = add i32 %249, 0
  %251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %250, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %252 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %251, %dx.types.Handle %81, float %67, float %68, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 3
  br label %254

; <label>:254                                     ; preds = %247, %192
  %255 = phi float [ 1.000000e+00, %192 ], [ %253, %247 ]
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = or i32 %259, %257
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %875, label %262

; <label>:262                                     ; preds = %254
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = lshr i32 %264, 16
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = fmul fast float %266, 0x3F50624DE0000000
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = lshr i32 %269, 16
  %271 = and i32 %270, 255
  %272 = lshr i32 %269, 24
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = and i32 %274, 65535
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %274, 16
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = lshr i32 %280, 22
  %282 = shl nuw nsw i32 %281, 5
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = shl i32 %280, 4
  %285 = and i32 %284, 32752
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %280, 7
  %288 = and i32 %287, 32752
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 3
  %292 = fmul fast float %291, 1.000000e+03
  %293 = fmul fast float %241, %292
  %294 = call float @dx.op.unary.f32(i32 22, float %293)  ; Frc(value)
  %295 = fadd fast float %294, %232
  %296 = fmul fast float %242, %292
  %297 = call float @dx.op.unary.f32(i32 22, float %296)  ; Frc(value)
  %298 = fadd fast float %297, %234
  %299 = fmul fast float %267, %292
  %300 = call float @dx.op.unary.f32(i32 22, float %299)  ; Frc(value)
  %301 = fmul fast float %300, 0x401921FB60000000
  %302 = fadd fast float %301, %283
  %303 = call float @dx.op.unary.f32(i32 13, float %302)  ; Sin(value)
  %304 = call float @dx.op.unary.f32(i32 12, float %302)  ; Cos(value)
  %305 = fsub fast float -0.000000e+00, %303
  %306 = fadd fast float %67, -5.000000e-01
  %307 = fadd fast float %68, -5.000000e-01
  %308 = fmul fast float %276, %306
  %309 = fmul fast float %278, %307
  %310 = fadd fast float %308, 5.000000e-01
  %311 = fadd fast float %309, 5.000000e-01
  %312 = fmul fast float %286, %310
  %313 = fmul fast float %289, %311
  %314 = fmul fast float %304, %312
  %315 = call float @dx.op.tertiary.f32(i32 46, float %305, float %313, float %314)  ; FMad(a,b,c)
  %316 = fmul fast float %303, %312
  %317 = call float @dx.op.tertiary.f32(i32 46, float %304, float %313, float %316)  ; FMad(a,b,c)
  %318 = fadd fast float %295, %315
  %319 = fadd fast float %298, %317
  %320 = icmp ugt i32 %271, 1
  %321 = icmp ugt i32 %269, 33554431
  %322 = or i1 %321, %320
  br i1 %322, label %323, label %347

; <label>:323                                     ; preds = %262
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = lshr i32 %325, 16
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = fmul fast float %291, %327
  %329 = call float @dx.op.unary.f32(i32 22, float %328)  ; Frc(value)
  %330 = mul nuw nsw i32 %271, %272
  %331 = uitofp i32 %330 to float
  %332 = fmul fast float %329, %331
  %333 = call float @dx.op.unary.f32(i32 27, float %332)  ; Round_ni(value)
  %334 = fptoui float %333 to i32
  %335 = urem i32 %334, %271
  %336 = udiv i32 %334, %272
  %337 = call float @dx.op.unary.f32(i32 22, float %318)  ; Frc(value)
  %338 = call float @dx.op.unary.f32(i32 22, float %319)  ; Frc(value)
  %339 = uitofp i32 %335 to float
  %340 = uitofp i32 %336 to float
  %341 = fadd fast float %337, %339
  %342 = fadd fast float %338, %340
  %343 = uitofp i32 %271 to float
  %344 = uitofp i32 %272 to float
  %345 = fdiv fast float %341, %343
  %346 = fdiv fast float %342, %344
  br label %347

; <label>:347                                     ; preds = %323, %262
  %348 = phi float [ %345, %323 ], [ %318, %262 ]
  %349 = phi float [ %346, %323 ], [ %319, %262 ]
  %350 = and i32 %257, 256
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %396, label %352

; <label>:352                                     ; preds = %347
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = add i32 %354, 0
  %356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %355, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %357 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %356, %dx.types.Handle %81, float %348, float %349, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %358 = extractvalue %dx.types.ResRet.f32 %357, 0
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = shl i32 %360, 4
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %360, 7
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = fsub fast float 1.000000e+00, %255
  %368 = call float @dx.op.binary.f32(i32 35, float %367, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %369 = bitcast float %255 to i32
  %370 = sitofp i32 %369 to float
  %371 = fadd fast float %370, 0xC1CFBF8940000000
  %372 = fmul fast float %366, %371
  %373 = fadd fast float %372, 0x41CFBF8940000000
  %374 = fptosi float %373 to i32
  %375 = bitcast i32 %374 to float
  %376 = bitcast float %368 to i32
  %377 = sitofp i32 %376 to float
  %378 = fadd fast float %377, 0xC1CFBF8940000000
  %379 = fmul fast float %378, %366
  %380 = fadd fast float %379, 0x41CFBF8940000000
  %381 = fptosi float %380 to i32
  %382 = bitcast i32 %381 to float
  %383 = fmul fast float %375, %363
  %384 = fmul fast float %382, %363
  %385 = fsub fast float %368, %383
  %386 = fadd fast float %384, %368
  %387 = call float @dx.op.unary.f32(i32 7, float %385)  ; Saturate(value)
  %388 = call float @dx.op.unary.f32(i32 7, float %386)  ; Saturate(value)
  %389 = fsub fast float %358, %387
  %390 = fsub fast float %388, %387
  %391 = bitcast float %390 to i32
  %392 = sub nsw i32 2129859010, %391
  %393 = bitcast i32 %392 to float
  %394 = fmul fast float %393, %389
  %395 = call float @dx.op.unary.f32(i32 7, float %394)  ; Saturate(value)
  br label %396

; <label>:396                                     ; preds = %352, %347
  %397 = phi float [ %395, %352 ], [ %255, %347 ]
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 128
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %417, label %402

; <label>:402                                     ; preds = %396
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = add i32 %404, 0
  %406 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %405, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %407 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %406, %dx.types.Handle %81, float %348, float %349, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 524288
  %412 = icmp ne i32 %411, 0
  %413 = fcmp fast ogt float %408, 0x3FE0101020000000
  %414 = select i1 %413, float 1.000000e+00, float 0.000000e+00
  %415 = select i1 %412, float %414, float %408
  %416 = fmul fast float %415, %397
  br label %417

; <label>:417                                     ; preds = %402, %396
  %418 = phi float [ %416, %402 ], [ %397, %396 ]
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 16
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %616, label %423

; <label>:423                                     ; preds = %417
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = add i32 %427, 0
  %429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %429, %dx.types.Handle %80, float %348, float %349, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = extractvalue %dx.types.ResRet.f32 %430, 3
  %435 = and i32 %425, 255
  %436 = uitofp i32 %435 to float
  %437 = lshr i32 %425, 8
  %438 = and i32 %437, 255
  %439 = uitofp i32 %438 to float
  %440 = fmul fast float %434, %436
  %441 = fadd fast float %440, %439
  %442 = fmul fast float %441, 0x3F70101000000000
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 512
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %454, label %447

; <label>:447                                     ; preds = %423
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = add i32 %449, 0
  %451 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %450, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %452 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %451, %dx.types.Handle %81, float %348, float %349, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %453 = extractvalue %dx.types.ResRet.f32 %452, 0
  br label %454

; <label>:454                                     ; preds = %447, %423
  %455 = phi float [ %453, %447 ], [ 1.000000e+00, %423 ]
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %457, 33554432
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %563, label %460

; <label>:460                                     ; preds = %454
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = and i32 %462, 65535
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = lshr i32 %462, 16
  %466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %465)  ; LegacyF16ToF32(value)
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = and i32 %468, 65535
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = lshr i32 %488, 24
  %490 = uitofp i32 %489 to float
  %491 = fmul fast float %490, 0x3F70101020000000
  %492 = and i32 %488, 255
  %493 = uitofp i32 %492 to float
  %494 = fmul fast float %493, 0x3F70101020000000
  %495 = lshr i32 %488, 8
  %496 = and i32 %495, 255
  %497 = uitofp i32 %496 to float
  %498 = fmul fast float %497, 0x3F70101020000000
  %499 = lshr i32 %488, 16
  %500 = and i32 %499, 255
  %501 = uitofp i32 %500 to float
  %502 = fmul fast float %501, 0x3F70101020000000
  %503 = bitcast float %431 to i32
  %504 = ashr i32 %503, 1
  %505 = sub nsw i32 1597463174, %504
  %506 = bitcast i32 %505 to float
  %507 = fmul fast float %431, 5.000000e-01
  %508 = fmul fast float %506, %506
  %509 = fmul fast float %508, %507
  %510 = fsub fast float 1.500000e+00, %509
  %511 = fmul fast float %506, %431
  %512 = fmul fast float %511, %510
  %513 = bitcast float %432 to i32
  %514 = ashr i32 %513, 1
  %515 = sub nsw i32 1597463174, %514
  %516 = bitcast i32 %515 to float
  %517 = fmul fast float %432, 5.000000e-01
  %518 = fmul fast float %516, %516
  %519 = fmul fast float %518, %517
  %520 = fsub fast float 1.500000e+00, %519
  %521 = fmul fast float %516, %432
  %522 = fmul fast float %521, %520
  %523 = bitcast float %433 to i32
  %524 = ashr i32 %523, 1
  %525 = sub nsw i32 1597463174, %524
  %526 = bitcast i32 %525 to float
  %527 = fmul fast float %433, 5.000000e-01
  %528 = fmul fast float %526, %526
  %529 = fmul fast float %528, %527
  %530 = fsub fast float 1.500000e+00, %529
  %531 = fmul fast float %526, %433
  %532 = fmul fast float %531, %530
  %533 = fsub fast float %512, %494
  %534 = fsub fast float %522, %498
  %535 = fsub fast float %532, %502
  %536 = fmul fast float %533, %464
  %537 = fmul fast float %534, %466
  %538 = fmul fast float %535, %470
  %539 = fadd fast float %536, %478
  %540 = fadd fast float %537, %482
  %541 = fadd fast float %538, %486
  %542 = call float @dx.op.unary.f32(i32 7, float %539)  ; Saturate(value)
  %543 = call float @dx.op.unary.f32(i32 7, float %540)  ; Saturate(value)
  %544 = call float @dx.op.unary.f32(i32 7, float %541)  ; Saturate(value)
  %545 = fmul fast float %542, %542
  %546 = fmul fast float %543, %543
  %547 = fmul fast float %544, %544
  %548 = fsub fast float %545, %431
  %549 = fsub fast float %546, %432
  %550 = fsub fast float %547, %433
  %551 = fmul fast float %548, %455
  %552 = fmul fast float %549, %455
  %553 = fmul fast float %550, %455
  %554 = fadd fast float %551, %431
  %555 = fadd fast float %552, %432
  %556 = fadd fast float %553, %433
  %557 = fadd fast float %475, %442
  %558 = fsub fast float %557, %491
  %559 = call float @dx.op.unary.f32(i32 7, float %558)  ; Saturate(value)
  %560 = fsub fast float %559, %442
  %561 = fmul fast float %560, %455
  %562 = fadd fast float %561, %442
  br label %616

; <label>:563                                     ; preds = %454
  %564 = and i32 %457, 134217728
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %600, label %566

; <label>:566                                     ; preds = %563
  %567 = call float @dx.op.unary.f32(i32 24, float %220)  ; Sqrt(value)
  %568 = call float @dx.op.unary.f32(i32 24, float %224)  ; Sqrt(value)
  %569 = call float @dx.op.unary.f32(i32 24, float %228)  ; Sqrt(value)
  %570 = fadd fast float %567, -5.000000e-01
  %571 = fadd fast float %568, -5.000000e-01
  %572 = fadd fast float %569, -5.000000e-01
  %573 = fmul fast float %570, %455
  %574 = fmul fast float %571, %455
  %575 = fmul fast float %572, %455
  %576 = fadd fast float %573, 5.000000e-01
  %577 = fadd fast float %574, 5.000000e-01
  %578 = fadd fast float %575, 5.000000e-01
  %579 = call float @dx.op.unary.f32(i32 24, float %431)  ; Sqrt(value)
  %580 = call float @dx.op.unary.f32(i32 24, float %432)  ; Sqrt(value)
  %581 = call float @dx.op.unary.f32(i32 24, float %433)  ; Sqrt(value)
  %582 = fmul fast float %576, 2.000000e+00
  %583 = fsub fast float 1.000000e+00, %582
  %584 = fmul fast float %583, %579
  %585 = fadd fast float %584, %582
  %586 = fmul fast float %585, %579
  %587 = fmul fast float %577, 2.000000e+00
  %588 = fsub fast float 1.000000e+00, %587
  %589 = fmul fast float %588, %580
  %590 = fadd fast float %589, %587
  %591 = fmul fast float %590, %580
  %592 = fmul fast float %578, 2.000000e+00
  %593 = fsub fast float 1.000000e+00, %592
  %594 = fmul fast float %593, %581
  %595 = fadd fast float %594, %592
  %596 = fmul fast float %595, %581
  %597 = fmul fast float %586, %586
  %598 = fmul fast float %591, %591
  %599 = fmul fast float %596, %596
  br label %616

; <label>:600                                     ; preds = %563
  %601 = fmul fast float %220, %220
  %602 = fmul fast float %224, %224
  %603 = fmul fast float %228, %228
  %604 = fadd fast float %601, -1.000000e+00
  %605 = fadd fast float %602, -1.000000e+00
  %606 = fadd fast float %603, -1.000000e+00
  %607 = fmul fast float %455, %604
  %608 = fmul fast float %455, %605
  %609 = fmul fast float %455, %606
  %610 = fadd fast float %607, 1.000000e+00
  %611 = fadd fast float %608, 1.000000e+00
  %612 = fadd fast float %609, 1.000000e+00
  %613 = fmul fast float %610, %431
  %614 = fmul fast float %611, %432
  %615 = fmul fast float %612, %433
  br label %616

; <label>:616                                     ; preds = %600, %566, %460, %417
  %617 = phi float [ %562, %460 ], [ %442, %566 ], [ %442, %600 ], [ 0x3FA23C0BE0000000, %417 ]
  %618 = phi float [ %554, %460 ], [ %597, %566 ], [ %613, %600 ], [ 1.000000e+00, %417 ]
  %619 = phi float [ %555, %460 ], [ %598, %566 ], [ %614, %600 ], [ 1.000000e+00, %417 ]
  %620 = phi float [ %556, %460 ], [ %599, %566 ], [ %615, %600 ], [ 1.000000e+00, %417 ]
  %621 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.i32 %621, 1
  %623 = and i32 %622, 1
  %624 = icmp ne i32 %623, 0
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = and i32 %626, 32
  %628 = icmp ne i32 %627, 0
  %629 = and i1 %624, %628
  %630 = select i1 %629, float 1.000000e+00, float %618
  %631 = select i1 %629, float 0x3FD3333340000000, float %619
  %632 = select i1 %629, float 0x3FD3333340000000, float %620
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 32
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %706, label %637

; <label>:637                                     ; preds = %616
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = add i32 %641, 0
  %643 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %642, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %644 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %643, %dx.types.Handle %80, float %348, float %349, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = extractvalue %dx.types.ResRet.f32 %644, 1
  %647 = extractvalue %dx.types.ResRet.f32 %644, 2
  %648 = extractvalue %dx.types.ResRet.f32 %644, 3
  %649 = and i32 %639, 255
  %650 = uitofp i32 %649 to float
  %651 = lshr i32 %639, 8
  %652 = and i32 %651, 255
  %653 = uitofp i32 %652 to float
  %654 = lshr i32 %639, 16
  %655 = and i32 %654, 255
  %656 = uitofp i32 %655 to float
  %657 = fmul fast float %656, 0x3F70101000000000
  %658 = fmul fast float %645, %650
  %659 = fadd fast float %658, %653
  %660 = fmul fast float %659, 0x3F70101000000000
  %661 = fadd fast float %646, -5.000000e-01
  %662 = fadd fast float %648, -5.000000e-01
  %663 = fmul fast float %661, %657
  %664 = fmul fast float %662, %657
  %665 = fadd fast float %663, 5.000000e-01
  %666 = fadd fast float %664, 5.000000e-01
  %667 = fmul fast float %665, 2.000000e+00
  %668 = fadd fast float %667, -1.000000e+00
  %669 = fmul fast float %666, 2.000000e+00
  %670 = fadd fast float %669, -1.000000e+00
  %671 = fadd fast float %668, %670
  %672 = fmul fast float %671, 5.000000e-01
  %673 = fsub fast float %668, %670
  %674 = fmul fast float %673, 5.000000e-01
  %675 = call float @dx.op.unary.f32(i32 6, float %672)  ; FAbs(value)
  %676 = fsub fast float 1.000000e+00, %675
  %677 = call float @dx.op.unary.f32(i32 6, float %674)  ; FAbs(value)
  %678 = fsub fast float %676, %677
  %679 = call float @dx.op.dot3.f32(i32 55, float %672, float %674, float %678, float %672, float %674, float %678)  ; Dot3(ax,ay,az,bx,by,bz)
  %680 = call float @dx.op.unary.f32(i32 25, float %679)  ; Rsqrt(value)
  %681 = fmul fast float %672, %680
  %682 = fmul fast float %674, %680
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = and i32 %684, 67108864
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %702, label %687

; <label>:687                                     ; preds = %637
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = and i32 %689, 65535
  %691 = call float @dx.op.legacyF16ToF32(i32 131, i32 %690)  ; LegacyF16ToF32(value)
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = and i32 %693, 65535
  %695 = call float @dx.op.legacyF16ToF32(i32 131, i32 %694)  ; LegacyF16ToF32(value)
  %696 = lshr i32 %689, 16
  %697 = call float @dx.op.legacyF16ToF32(i32 131, i32 %696)  ; LegacyF16ToF32(value)
  %698 = fsub fast float %660, %697
  %699 = fmul fast float %698, %691
  %700 = fadd fast float %699, %695
  %701 = call float @dx.op.unary.f32(i32 7, float %700)  ; Saturate(value)
  br label %702

; <label>:702                                     ; preds = %687, %637
  %703 = phi float [ %701, %687 ], [ %660, %637 ]
  %704 = call float @dx.op.dot2.f32(i32 54, float %681, float %682, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %705 = call float @dx.op.dot2.f32(i32 54, float %681, float %682, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %706

; <label>:706                                     ; preds = %702, %616
  %707 = phi float [ %703, %702 ], [ 0x3FD6666660000000, %616 ]
  %708 = phi float [ %704, %702 ], [ 0.000000e+00, %616 ]
  %709 = phi float [ %705, %702 ], [ 0.000000e+00, %616 ]
  %710 = phi float [ %647, %702 ], [ 1.000000e+00, %616 ]
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = lshr i32 %712, 22
  %714 = shl nuw nsw i32 %713, 5
  %715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %714)  ; LegacyF16ToF32(value)
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = and i32 %717, 64
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %752, label %720

; <label>:720                                     ; preds = %706
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = add i32 %722, 0
  %724 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %723, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = and i32 %726, 131072
  %728 = icmp eq i32 %727, 0
  %729 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %724, %dx.types.Handle %80, float %348, float %349, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %730 = extractvalue %dx.types.ResRet.f32 %729, 0
  %731 = extractvalue %dx.types.ResRet.f32 %729, 1
  %732 = extractvalue %dx.types.ResRet.f32 %729, 2
  %733 = fmul fast float %730, %209
  %734 = fmul fast float %731, %212
  %735 = fmul fast float %732, %215
  br i1 %728, label %742, label %736

; <label>:736                                     ; preds = %720
  %737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.f32 %737, 0
  %739 = fmul fast float %738, %733
  %740 = fmul fast float %738, %734
  %741 = fmul fast float %738, %735
  br label %742

; <label>:742                                     ; preds = %736, %720
  %743 = phi float [ %739, %736 ], [ %733, %720 ]
  %744 = phi float [ %740, %736 ], [ %734, %720 ]
  %745 = phi float [ %741, %736 ], [ %735, %720 ]
  %746 = fmul fast float %743, %715
  %747 = select i1 %193, float %746, float %743
  %748 = call float @dx.op.dot3.f32(i32 55, float %747, float %744, float %745, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %749 = select i1 %193, float 0.000000e+00, float %743
  %750 = select i1 %193, float %748, float %744
  %751 = select i1 %193, float 0.000000e+00, float %745
  br label %752

; <label>:752                                     ; preds = %742, %706
  %753 = phi float [ %749, %742 ], [ 0.000000e+00, %706 ]
  %754 = phi float [ %750, %742 ], [ 0.000000e+00, %706 ]
  %755 = phi float [ %751, %742 ], [ 0.000000e+00, %706 ]
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = and i32 %757, 1024
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %788, label %760

; <label>:760                                     ; preds = %752
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = and i32 %762, 255
  %764 = uitofp i32 %763 to float
  %765 = fmul fast float %764, 0x3F70101020000000
  %766 = lshr i32 %762, 8
  %767 = and i32 %766, 255
  %768 = uitofp i32 %767 to float
  %769 = fmul fast float %768, 0x3F70101020000000
  %770 = lshr i32 %762, 16
  %771 = and i32 %770, 255
  %772 = uitofp i32 %771 to float
  %773 = fmul fast float %772, 0x3F70101020000000
  %774 = fmul fast float %765, %765
  %775 = fmul fast float %769, %769
  %776 = fmul fast float %773, %773
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = add i32 %778, 0
  %780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %779, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %781 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %780, %dx.types.Handle %81, float %348, float %349, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = extractvalue %dx.types.ResRet.f32 %781, 1
  %784 = extractvalue %dx.types.ResRet.f32 %781, 2
  %785 = fmul fast float %774, %782
  %786 = fmul fast float %775, %783
  %787 = fmul fast float %776, %784
  br label %788

; <label>:788                                     ; preds = %760, %752
  %789 = phi float [ %785, %760 ], [ 0.000000e+00, %752 ]
  %790 = phi float [ %786, %760 ], [ 0.000000e+00, %752 ]
  %791 = phi float [ %787, %760 ], [ 0.000000e+00, %752 ]
  %792 = fcmp fast ogt float %789, 0.000000e+00
  %793 = fcmp fast ogt float %790, 0.000000e+00
  %794 = fcmp fast ogt float %791, 0.000000e+00
  %795 = call float @dx.op.unary.f32(i32 23, float %789)  ; Log(value)
  %796 = call float @dx.op.unary.f32(i32 23, float %790)  ; Log(value)
  %797 = call float @dx.op.unary.f32(i32 23, float %791)  ; Log(value)
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = lshr i32 %799, 7
  %801 = and i32 %800, 32752
  %802 = call float @dx.op.legacyF16ToF32(i32 131, i32 %801)  ; LegacyF16ToF32(value)
  %803 = fmul fast float %795, 0xBFE62E4300000000
  %804 = fmul fast float %803, %802
  %805 = fmul fast float %796, 0xBFE62E4300000000
  %806 = fmul fast float %805, %802
  %807 = fmul fast float %797, 0xBFE62E4300000000
  %808 = fmul fast float %807, %802
  %809 = select i1 %792, float %804, float 1.270000e+02
  %810 = select i1 %793, float %806, float 1.270000e+02
  %811 = select i1 %794, float %808, float 1.270000e+02
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = and i32 %813, 10240
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %858, label %816

; <label>:816                                     ; preds = %788
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = add i32 %818, 0
  %820 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %819, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %821 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %820, %dx.types.Handle %81, float %348, float %349, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %822 = extractvalue %dx.types.ResRet.f32 %821, 1
  %823 = extractvalue %dx.types.ResRet.f32 %821, 3
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = and i32 %825, 1048576
  %827 = icmp ne i32 %826, 0
  %828 = and i32 %825, 8192
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %844, label %830

; <label>:830                                     ; preds = %816
  %831 = extractvalue %dx.types.ResRet.f32 %821, 2
  %832 = select i1 %827, float %831, float %822
  %833 = extractvalue %dx.types.ResRet.f32 %821, 0
  %834 = select i1 %827, float %833, float %822
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = lshr i32 %836, 16
  %838 = and i32 %837, 255
  %839 = uitofp i32 %838 to float
  %840 = fmul fast float %839, 0x3F80101020000000
  %841 = fmul fast float %840, %834
  %842 = fmul fast float %840, %822
  %843 = fmul fast float %840, %832
  br label %844

; <label>:844                                     ; preds = %830, %816
  %845 = phi float [ %841, %830 ], [ 0.000000e+00, %816 ]
  %846 = phi float [ %842, %830 ], [ 0.000000e+00, %816 ]
  %847 = phi float [ %843, %830 ], [ 0.000000e+00, %816 ]
  %848 = and i32 %825, 2048
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %858, label %850

; <label>:850                                     ; preds = %844
  %851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.i32 %851, 0
  %853 = shl i32 %852, 4
  %854 = and i32 %853, 32752
  %855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %854)  ; LegacyF16ToF32(value)
  %856 = fmul fast float %855, %823
  %857 = call float @dx.op.binary.f32(i32 35, float %856, float 0x3F70101020000000)  ; FMax(a,b)
  br label %858

; <label>:858                                     ; preds = %850, %844, %788
  %859 = phi float [ %845, %850 ], [ %845, %844 ], [ 0.000000e+00, %788 ]
  %860 = phi float [ %846, %850 ], [ %846, %844 ], [ 0.000000e+00, %788 ]
  %861 = phi float [ %847, %850 ], [ %847, %844 ], [ 0.000000e+00, %788 ]
  %862 = phi float [ %857, %850 ], [ 0x3F70101020000000, %844 ], [ 0x3F70101020000000, %788 ]
  %863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.i32 %863, 0
  %865 = and i32 %864, 255
  %866 = uitofp i32 %865 to float
  %867 = lshr i32 %864, 8
  %868 = and i32 %867, 255
  %869 = uitofp i32 %868 to float
  %870 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %871 = fmul fast float %869, %870
  %872 = fadd fast float %871, %866
  %873 = fmul fast float %872, 0x3F70101020000000
  %874 = call float @dx.op.unary.f32(i32 7, float %873)  ; Saturate(value)
  br label %875

; <label>:875                                     ; preds = %858, %254
  %876 = phi float [ 0.000000e+00, %254 ], [ %708, %858 ]
  %877 = phi float [ 0.000000e+00, %254 ], [ %709, %858 ]
  %878 = phi float [ 0.000000e+00, %254 ], [ %859, %858 ]
  %879 = phi float [ 0.000000e+00, %254 ], [ %860, %858 ]
  %880 = phi float [ 0.000000e+00, %254 ], [ %861, %858 ]
  %881 = phi float [ 0.000000e+00, %254 ], [ %753, %858 ]
  %882 = phi float [ 0.000000e+00, %254 ], [ %754, %858 ]
  %883 = phi float [ 0.000000e+00, %254 ], [ %755, %858 ]
  %884 = phi float [ 0.000000e+00, %254 ], [ %809, %858 ]
  %885 = phi float [ 0.000000e+00, %254 ], [ %810, %858 ]
  %886 = phi float [ 0.000000e+00, %254 ], [ %811, %858 ]
  %887 = phi float [ 0.000000e+00, %254 ], [ %630, %858 ]
  %888 = phi float [ 0.000000e+00, %254 ], [ %631, %858 ]
  %889 = phi float [ 0.000000e+00, %254 ], [ %632, %858 ]
  %890 = phi float [ 0.000000e+00, %254 ], [ %617, %858 ]
  %891 = phi float [ 0.000000e+00, %254 ], [ %418, %858 ]
  %892 = phi float [ 0.000000e+00, %254 ], [ %707, %858 ]
  %893 = phi float [ 0.000000e+00, %254 ], [ %710, %858 ]
  %894 = phi float [ 0.000000e+00, %254 ], [ %862, %858 ]
  %895 = phi float [ 0.000000e+00, %254 ], [ %874, %858 ]
  %896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.f32 %896, 0
  %898 = call float @dx.op.dot2.f32(i32 54, float %876, float %877, float %876, float %877)  ; Dot2(ax,ay,bx,by)
  %899 = fmul fast float %898, 0x3FE3333340000000
  %900 = fsub fast float 1.000000e+00, %899
  %901 = call float @dx.op.dot3.f32(i32 55, float %876, float %877, float %900, float %876, float %877, float %900)  ; Dot3(ax,ay,az,bx,by,bz)
  %902 = call float @dx.op.unary.f32(i32 25, float %901)  ; Rsqrt(value)
  %903 = fmul fast float %902, %876
  %904 = fmul fast float %902, %877
  %905 = fmul fast float %900, %902
  %906 = fmul fast float %905, %87
  %907 = fmul fast float %905, %88
  %908 = fmul fast float %905, %89
  %909 = fmul fast float %903, %60
  %910 = fmul fast float %903, %61
  %911 = fmul fast float %903, %62
  %912 = fmul fast float %92, %63
  %913 = fmul fast float %912, %904
  %914 = fmul fast float %95, %63
  %915 = fmul fast float %914, %904
  %916 = fmul fast float %98, %63
  %917 = fmul fast float %916, %904
  %918 = fadd fast float %913, %909
  %919 = fmul fast float %918, %86
  %920 = fadd fast float %919, %906
  %921 = fadd fast float %915, %910
  %922 = fmul fast float %921, %86
  %923 = fadd fast float %922, %907
  %924 = fadd fast float %917, %911
  %925 = fmul fast float %924, %86
  %926 = fadd fast float %925, %908
  %927 = call float @dx.op.dot3.f32(i32 55, float %920, float %923, float %926, float %920, float %923, float %926)  ; Dot3(ax,ay,az,bx,by,bz)
  %928 = call float @dx.op.unary.f32(i32 25, float %927)  ; Rsqrt(value)
  %929 = fmul fast float %920, %928
  %930 = fmul fast float %923, %928
  %931 = fmul fast float %926, %928
  %932 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %933 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %934 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %935 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %936 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %937 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %938 = fadd fast float %932, %132
  %939 = fadd fast float %933, %133
  %940 = fadd fast float %934, %134
  %941 = fadd fast float %935, %132
  %942 = fadd fast float %936, %133
  %943 = fadd fast float %937, %134
  %944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %945 = extractvalue %dx.types.CBufRet.f32 %944, 0
  %946 = extractvalue %dx.types.CBufRet.f32 %944, 1
  %947 = extractvalue %dx.types.CBufRet.f32 %944, 2
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 2
  %950 = extractvalue %dx.types.CBufRet.f32 %948, 3
  %951 = fmul fast float %945, %84
  %952 = fmul fast float %951, %949
  %953 = fmul fast float %946, %85
  %954 = fmul fast float %953, %950
  %955 = fptoui float %952 to i32
  %956 = fptoui float %954 to i32
  %957 = fadd fast float %945, -1.000000e+00
  %958 = fadd fast float %946, -1.000000e+00
  %959 = fptoui float %957 to i32
  %960 = fptoui float %958 to i32
  %961 = call i32 @dx.op.binary.i32(i32 40, i32 %955, i32 %959)  ; UMin(a,b)
  %962 = call i32 @dx.op.binary.i32(i32 40, i32 %956, i32 %960)  ; UMin(a,b)
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 2
  %965 = extractvalue %dx.types.CBufRet.f32 %963, 3
  %966 = fmul fast float %964, %72
  %967 = fsub fast float %966, %965
  %968 = fadd fast float %947, -1.000000e+00
  %969 = call float @dx.op.binary.f32(i32 36, float %967, float %968)  ; FMin(a,b)
  %970 = fptoui float %969 to i32
  %971 = fptoui float %945 to i32
  %972 = fptoui float %946 to i32
  %973 = mul i32 %970, %972
  %974 = add i32 %973, %962
  %975 = mul i32 %974, %971
  %976 = add i32 %975, %961
  %977 = shl i32 %976, 2
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = and i32 %979, 1023
  %981 = lshr i32 %979, 10
  %982 = icmp eq i32 %980, 0
  br i1 %982, label %1486, label %983

; <label>:983                                     ; preds = %875
  %984 = and i32 %979, 1023
  br label %985

; <label>:985                                     ; preds = %1117, %983
  %986 = phi i32 [ %1067, %1117 ], [ 0, %983 ]
  %987 = phi float [ %1118, %1117 ], [ 0.000000e+00, %983 ]
  %988 = phi float [ %1119, %1117 ], [ %897, %983 ]
  %989 = phi float [ %1120, %1117 ], [ %895, %983 ]
  %990 = phi float [ %1121, %1117 ], [ %884, %983 ]
  %991 = phi float [ %1122, %1117 ], [ %885, %983 ]
  %992 = phi float [ %1123, %1117 ], [ %886, %983 ]
  %993 = phi float [ %1124, %1117 ], [ 0.000000e+00, %983 ]
  %994 = phi float [ %1125, %1117 ], [ 0.000000e+00, %983 ]
  %995 = phi float [ %1126, %1117 ], [ %878, %983 ]
  %996 = phi float [ %1127, %1117 ], [ %879, %983 ]
  %997 = phi float [ %1128, %1117 ], [ %880, %983 ]
  %998 = phi float [ %1129, %1117 ], [ %881, %983 ]
  %999 = phi float [ %1130, %1117 ], [ %882, %983 ]
  %1000 = phi float [ %1131, %1117 ], [ %883, %983 ]
  %1001 = phi float [ %1132, %1117 ], [ %929, %983 ]
  %1002 = phi float [ %1133, %1117 ], [ %930, %983 ]
  %1003 = phi float [ %1134, %1117 ], [ %931, %983 ]
  %1004 = phi float [ %1135, %1117 ], [ %893, %983 ]
  %1005 = phi float [ %1136, %1117 ], [ %892, %983 ]
  %1006 = phi float [ %1137, %1117 ], [ 0.000000e+00, %983 ]
  %1007 = phi float [ %1138, %1117 ], [ %890, %983 ]
  %1008 = phi float [ %1139, %1117 ], [ %887, %983 ]
  %1009 = phi float [ %1140, %1117 ], [ %888, %983 ]
  %1010 = phi float [ %1141, %1117 ], [ %889, %983 ]
  %1011 = add nuw nsw i32 %986, %981
  %1012 = shl i32 %1011, 2
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1012, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = shl i32 %1014, 8
  %1016 = or i32 %1015, 48
  %1017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.f32 %1017, 0
  %1019 = extractvalue %dx.types.ResRet.f32 %1017, 1
  %1020 = extractvalue %dx.types.ResRet.f32 %1017, 2
  %1021 = extractvalue %dx.types.ResRet.f32 %1017, 3
  %1022 = or i32 %1015, 64
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = extractvalue %dx.types.ResRet.i32 %1023, 1
  %1026 = or i32 %1015, 80
  %1027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1026, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 2
  %1029 = extractvalue %dx.types.ResRet.f32 %1027, 3
  %1030 = or i32 %1015, 96
  %1031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1030, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.f32 %1031, 0
  %1033 = extractvalue %dx.types.ResRet.f32 %1031, 1
  %1034 = extractvalue %dx.types.ResRet.f32 %1031, 2
  %1035 = extractvalue %dx.types.ResRet.f32 %1031, 3
  %1036 = or i32 %1015, 112
  %1037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.f32 %1037, 2
  %1039 = or i32 %1015, 128
  %1040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 0
  %1042 = extractvalue %dx.types.ResRet.f32 %1040, 1
  %1043 = extractvalue %dx.types.ResRet.f32 %1040, 2
  %1044 = extractvalue %dx.types.ResRet.f32 %1040, 3
  %1045 = or i32 %1015, 144
  %1046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.f32 %1046, 0
  %1048 = extractvalue %dx.types.ResRet.f32 %1046, 1
  %1049 = extractvalue %dx.types.ResRet.f32 %1046, 2
  %1050 = extractvalue %dx.types.ResRet.f32 %1046, 3
  %1051 = or i32 %1015, 160
  %1052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.ResRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.ResRet.f32 %1052, 2
  %1056 = extractvalue %dx.types.ResRet.f32 %1052, 3
  %1057 = or i32 %1015, 192
  %1058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = or i32 %1015, 208
  %1061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = or i32 %1015, 248
  %1064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.ResRet.f32 %1064, 1
  %1067 = add nuw nsw i32 %986, 1
  %1068 = bitcast float %1021 to i32
  %1069 = and i32 %1068, 512
  %1070 = icmp eq i32 %1069, 0
  %1071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.ResRet.f32 %1071, 1
  %1074 = extractvalue %dx.types.ResRet.f32 %1071, 2
  %1075 = extractvalue %dx.types.ResRet.f32 %1071, 3
  %1076 = call float @dx.op.dot4.f32(i32 56, float %1072, float %1073, float %1074, float %1075, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1077 = or i32 %1015, 16
  %1078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.ResRet.f32 %1078, 1
  %1081 = extractvalue %dx.types.ResRet.f32 %1078, 2
  %1082 = extractvalue %dx.types.ResRet.f32 %1078, 3
  %1083 = call float @dx.op.dot4.f32(i32 56, float %1079, float %1080, float %1081, float %1082, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1084 = or i32 %1015, 32
  %1085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.f32 %1085, 0
  %1087 = extractvalue %dx.types.ResRet.f32 %1085, 1
  %1088 = extractvalue %dx.types.ResRet.f32 %1085, 2
  %1089 = extractvalue %dx.types.ResRet.f32 %1085, 3
  %1090 = call float @dx.op.dot4.f32(i32 56, float %1086, float %1087, float %1088, float %1089, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1091 = call float @dx.op.unary.f32(i32 27, float %1076)  ; Round_ni(value)
  %1092 = call float @dx.op.unary.f32(i32 6, float %1091)  ; FAbs(value)
  %1093 = call float @dx.op.unary.f32(i32 27, float %1083)  ; Round_ni(value)
  %1094 = call float @dx.op.unary.f32(i32 6, float %1093)  ; FAbs(value)
  %1095 = call float @dx.op.unary.f32(i32 6, float %1090)  ; FAbs(value)
  %1096 = call float @dx.op.unary.f32(i32 27, float %1095)  ; Round_ni(value)
  %1097 = fadd fast float %1094, %1092
  %1098 = fadd fast float %1097, %1096
  %1099 = fcmp fast oeq float %1098, 0.000000e+00
  %1100 = call float @dx.op.dot4.f32(i32 56, float %1072, float %1073, float %1074, float %1075, float %938, float %939, float %940, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1101 = call float @dx.op.dot4.f32(i32 56, float %1079, float %1080, float %1081, float %1082, float %938, float %939, float %940, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1102 = call float @dx.op.dot4.f32(i32 56, float %1072, float %1073, float %1074, float %1075, float %941, float %942, float %943, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1103 = call float @dx.op.dot4.f32(i32 56, float %1079, float %1080, float %1081, float %1082, float %941, float %942, float %943, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1104 = fsub fast float %1100, %1076
  %1105 = fsub fast float %1102, %1076
  %1106 = fsub fast float %1101, %1083
  %1107 = fsub fast float %1103, %1083
  %1108 = call float @dx.op.dot3.f32(i32 55, float %1018, float %1019, float %1020, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 2
  %1111 = fadd fast float %1110, %1108
  %1112 = call float @dx.op.unary.f32(i32 7, float %1111)  ; Saturate(value)
  %1113 = extractvalue %dx.types.CBufRet.f32 %1109, 0
  %1114 = fcmp fast ogt float %1112, %1113
  %1115 = and i1 %1099, %1114
  %1116 = and i1 %1070, %1115
  br i1 %1116, label %1143, label %1117

; <label>:1117                                    ; preds = %1472, %1224, %1143, %985
  %1118 = phi float [ %987, %1143 ], [ %1227, %1224 ], [ %1227, %1472 ], [ %987, %985 ]
  %1119 = phi float [ %988, %1143 ], [ %988, %1224 ], [ %1448, %1472 ], [ %988, %985 ]
  %1120 = phi float [ %989, %1143 ], [ %989, %1224 ], [ %1446, %1472 ], [ %989, %985 ]
  %1121 = phi float [ %990, %1143 ], [ %990, %1224 ], [ %1424, %1472 ], [ %990, %985 ]
  %1122 = phi float [ %991, %1143 ], [ %991, %1224 ], [ %1425, %1472 ], [ %991, %985 ]
  %1123 = phi float [ %992, %1143 ], [ %992, %1224 ], [ %1426, %1472 ], [ %992, %985 ]
  %1124 = phi float [ %993, %1143 ], [ %993, %1224 ], [ %1351, %1472 ], [ %993, %985 ]
  %1125 = phi float [ %994, %1143 ], [ %994, %1224 ], [ %1349, %1472 ], [ %994, %985 ]
  %1126 = phi float [ %995, %1143 ], [ %995, %1224 ], [ %1394, %1472 ], [ %995, %985 ]
  %1127 = phi float [ %996, %1143 ], [ %996, %1224 ], [ %1395, %1472 ], [ %996, %985 ]
  %1128 = phi float [ %997, %1143 ], [ %997, %1224 ], [ %1396, %1472 ], [ %997, %985 ]
  %1129 = phi float [ %998, %1143 ], [ %998, %1224 ], [ %1482, %1472 ], [ %998, %985 ]
  %1130 = phi float [ %999, %1143 ], [ %999, %1224 ], [ %1483, %1472 ], [ %999, %985 ]
  %1131 = phi float [ %1000, %1143 ], [ %1000, %1224 ], [ %1484, %1472 ], [ %1000, %985 ]
  %1132 = phi float [ %1001, %1143 ], [ %1001, %1224 ], [ %1330, %1472 ], [ %1001, %985 ]
  %1133 = phi float [ %1002, %1143 ], [ %1002, %1224 ], [ %1331, %1472 ], [ %1002, %985 ]
  %1134 = phi float [ %1003, %1143 ], [ %1003, %1224 ], [ %1332, %1472 ], [ %1003, %985 ]
  %1135 = phi float [ %1004, %1143 ], [ %1004, %1224 ], [ %1404, %1472 ], [ %1004, %985 ]
  %1136 = phi float [ %1005, %1143 ], [ %1005, %1224 ], [ %1401, %1472 ], [ %1005, %985 ]
  %1137 = phi float [ %1006, %1143 ], [ %1006, %1224 ], [ %1398, %1472 ], [ %1006, %985 ]
  %1138 = phi float [ %1007, %1143 ], [ %1007, %1224 ], [ %1347, %1472 ], [ %1007, %985 ]
  %1139 = phi float [ %1008, %1143 ], [ %1008, %1224 ], [ %1342, %1472 ], [ %1008, %985 ]
  %1140 = phi float [ %1009, %1143 ], [ %1009, %1224 ], [ %1343, %1472 ], [ %1009, %985 ]
  %1141 = phi float [ %1010, %1143 ], [ %1010, %1224 ], [ %1344, %1472 ], [ %1010, %985 ]
  %1142 = icmp eq i32 %1067, %984
  br i1 %1142, label %1485, label %985

; <label>:1143                                    ; preds = %985
  %1144 = extractvalue %dx.types.ResRet.f32 %1037, 3
  %1145 = extractvalue %dx.types.ResRet.f32 %1037, 1
  %1146 = extractvalue %dx.types.ResRet.f32 %1037, 0
  %1147 = extractvalue %dx.types.ResRet.f32 %1027, 1
  %1148 = extractvalue %dx.types.ResRet.f32 %1027, 0
  %1149 = extractvalue %dx.types.ResRet.i32 %1023, 3
  %1150 = extractvalue %dx.types.ResRet.i32 %1023, 2
  %1151 = add i32 %1149, 0
  %1152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1151, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1154 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1152, %dx.types.Handle %1153, float %1076, float %1083, float undef, float undef, i32 0, i32 0, i32 undef, float %1104, float %1106, float undef, float %1105, float %1107, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1155 = extractvalue %dx.types.ResRet.f32 %1154, 0
  %1156 = fmul fast float %1155, %1148
  %1157 = fadd fast float %1156, %1147
  %1158 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  %1159 = fmul fast float %1076, %1032
  %1160 = call float @dx.op.tertiary.f32(i32 46, float %1033, float %1083, float %1159)  ; FMad(a,b,c)
  %1161 = fadd fast float %1160, %1146
  %1162 = fmul fast float %1076, %1034
  %1163 = call float @dx.op.tertiary.f32(i32 46, float %1035, float %1083, float %1162)  ; FMad(a,b,c)
  %1164 = fadd fast float %1163, %1145
  %1165 = fmul fast float %1104, %1032
  %1166 = call float @dx.op.tertiary.f32(i32 46, float %1033, float %1106, float %1165)  ; FMad(a,b,c)
  %1167 = fmul fast float %1104, %1034
  %1168 = call float @dx.op.tertiary.f32(i32 46, float %1035, float %1106, float %1167)  ; FMad(a,b,c)
  %1169 = fmul fast float %1105, %1032
  %1170 = call float @dx.op.tertiary.f32(i32 46, float %1033, float %1107, float %1169)  ; FMad(a,b,c)
  %1171 = fmul fast float %1105, %1034
  %1172 = call float @dx.op.tertiary.f32(i32 46, float %1035, float %1107, float %1171)  ; FMad(a,b,c)
  %1173 = add i32 %1150, 0
  %1174 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1173, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1175 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1174, %dx.types.Handle %1153, float %1161, float %1164, float undef, float undef, i32 0, i32 0, i32 undef, float %1166, float %1168, float undef, float %1170, float %1172, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = and i32 %1068, 1024
  %1178 = icmp ne i32 %1177, 0
  %1179 = fcmp fast ogt float %1176, 0x3FE0101020000000
  %1180 = uitofp i1 %1179 to float
  %1181 = select i1 %1178, float %1180, float %1176
  %1182 = and i32 %1068, 8192
  %1183 = icmp ne i32 %1182, 0
  %1184 = select i1 %1183, float %1144, float 1.000000e+00
  %1185 = fmul fast float %1076, 2.000000e+00
  %1186 = fadd fast float %1185, -1.000000e+00
  %1187 = call float @dx.op.unary.f32(i32 6, float %1186)  ; FAbs(value)
  %1188 = fmul fast float %1187, %1065
  %1189 = fsub fast float %1188, %1065
  %1190 = call float @dx.op.unary.f32(i32 7, float %1189)  ; Saturate(value)
  %1191 = fmul fast float %1083, 2.000000e+00
  %1192 = fadd fast float %1191, -1.000000e+00
  %1193 = call float @dx.op.unary.f32(i32 6, float %1192)  ; FAbs(value)
  %1194 = fmul fast float %1193, %1066
  %1195 = fsub fast float %1194, %1066
  %1196 = call float @dx.op.unary.f32(i32 7, float %1195)  ; Saturate(value)
  %1197 = fmul fast float %1095, %1028
  %1198 = fsub fast float %1197, %1028
  %1199 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1200 = fmul fast float %1158, %1184
  %1201 = fmul fast float %1200, %1155
  %1202 = fmul fast float %1201, %1190
  %1203 = fmul fast float %1202, %1181
  %1204 = fmul fast float %1203, %1196
  %1205 = fmul fast float %1204, %1199
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 1
  %1208 = extractvalue %dx.types.CBufRet.f32 %1206, 0
  %1209 = fsub fast float %1112, %1208
  %1210 = fmul fast float %1209, %1207
  %1211 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  %1212 = fmul fast float %1205, %1029
  %1213 = fadd fast float %1205, %1029
  %1214 = fmul fast float %1213, %1038
  %1215 = fsub fast float %1214, %1038
  %1216 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1217 = and i32 %1068, 128
  %1218 = icmp ne i32 %1217, 0
  %1219 = select i1 %1218, float %1216, float %1212
  %1220 = fmul fast float %1219, %1211
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 0
  %1223 = fcmp fast ugt float %1220, %1222
  br i1 %1223, label %1224, label %1117

; <label>:1224                                    ; preds = %1143
  %1225 = select i1 %1183, float %1220, float 0.000000e+00
  %1226 = fadd fast float %1225, %987
  %1227 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  br i1 %1183, label %1117, label %1228

; <label>:1228                                    ; preds = %1224
  %1229 = and i32 %1068, 4
  %1230 = and i32 %1068, 8
  %1231 = add i32 %1024, 0
  %1232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1231, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1234 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1232, %dx.types.Handle %1233, float %1161, float %1164, float undef, float undef, i32 0, i32 0, i32 undef, float %1166, float %1168, float undef, float %1170, float %1172, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1235 = extractvalue %dx.types.ResRet.f32 %1234, 0
  %1236 = extractvalue %dx.types.ResRet.f32 %1234, 1
  %1237 = extractvalue %dx.types.ResRet.f32 %1234, 2
  %1238 = extractvalue %dx.types.ResRet.f32 %1234, 3
  %1239 = bitcast float %1050 to i32
  %1240 = and i32 %1239, 255
  %1241 = uitofp i32 %1240 to float
  %1242 = lshr i32 %1239, 8
  %1243 = and i32 %1242, 255
  %1244 = uitofp i32 %1243 to float
  %1245 = fmul fast float %1238, %1241
  %1246 = fadd fast float %1245, %1244
  %1247 = fmul fast float %1246, 0x3F70101000000000
  %1248 = add i32 %1025, 0
  %1249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1248, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1250 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1249, %dx.types.Handle %1233, float %1161, float %1164, float undef, float undef, i32 0, i32 0, i32 undef, float %1166, float %1168, float undef, float %1170, float %1172, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.ResRet.f32 %1250, 1
  %1253 = extractvalue %dx.types.ResRet.f32 %1250, 2
  %1254 = extractvalue %dx.types.ResRet.f32 %1250, 3
  %1255 = bitcast float %1044 to i32
  %1256 = and i32 %1255, 255
  %1257 = uitofp i32 %1256 to float
  %1258 = lshr i32 %1255, 8
  %1259 = and i32 %1258, 255
  %1260 = uitofp i32 %1259 to float
  %1261 = lshr i32 %1255, 16
  %1262 = and i32 %1261, 255
  %1263 = uitofp i32 %1262 to float
  %1264 = fmul fast float %1263, 0x3F70101000000000
  %1265 = fmul fast float %1251, %1257
  %1266 = fadd fast float %1265, %1260
  %1267 = fmul fast float %1266, 0x3F70101000000000
  %1268 = fadd fast float %1252, -5.000000e-01
  %1269 = fadd fast float %1254, -5.000000e-01
  %1270 = fmul fast float %1268, %1264
  %1271 = fmul fast float %1269, %1264
  %1272 = fadd fast float %1270, 5.000000e-01
  %1273 = fadd fast float %1271, 5.000000e-01
  %1274 = fmul fast float %1235, %1053
  %1275 = fmul fast float %1236, %1054
  %1276 = fmul fast float %1237, %1055
  %1277 = fmul fast float %1272, 2.000000e+00
  %1278 = fadd fast float %1277, -1.000000e+00
  %1279 = fmul fast float %1273, 2.000000e+00
  %1280 = fadd fast float %1279, -1.000000e+00
  %1281 = fadd fast float %1278, %1280
  %1282 = fmul fast float %1281, 5.000000e-01
  %1283 = fsub fast float %1278, %1280
  %1284 = fmul fast float %1283, 5.000000e-01
  %1285 = call float @dx.op.unary.f32(i32 6, float %1282)  ; FAbs(value)
  %1286 = fsub fast float 1.000000e+00, %1285
  %1287 = call float @dx.op.unary.f32(i32 6, float %1284)  ; FAbs(value)
  %1288 = fsub fast float %1286, %1287
  %1289 = call float @dx.op.dot3.f32(i32 55, float %1282, float %1284, float %1288, float %1282, float %1284, float %1288)  ; Dot3(ax,ay,az,bx,by,bz)
  %1290 = call float @dx.op.unary.f32(i32 25, float %1289)  ; Rsqrt(value)
  %1291 = fmul fast float %1282, %1290
  %1292 = fmul fast float %1284, %1290
  %1293 = fmul fast float %1290, %1288
  %1294 = fmul fast float %1293, %1018
  %1295 = fmul fast float %1293, %1019
  %1296 = fmul fast float %1293, %1020
  %1297 = fmul fast float %1291, %1041
  %1298 = fmul fast float %1291, %1042
  %1299 = fmul fast float %1291, %1043
  %1300 = fadd fast float %1297, %1294
  %1301 = fadd fast float %1298, %1295
  %1302 = fadd fast float %1299, %1296
  %1303 = fmul fast float %1292, %1047
  %1304 = fmul fast float %1292, %1048
  %1305 = fmul fast float %1292, %1049
  %1306 = fadd fast float %1300, %1303
  %1307 = fadd fast float %1301, %1304
  %1308 = fadd fast float %1302, %1305
  %1309 = call float @dx.op.dot3.f32(i32 55, float %1306, float %1307, float %1308, float %1306, float %1307, float %1308)  ; Dot3(ax,ay,az,bx,by,bz)
  %1310 = call float @dx.op.unary.f32(i32 25, float %1309)  ; Rsqrt(value)
  %1311 = fmul fast float %1306, %1310
  %1312 = fmul fast float %1307, %1310
  %1313 = fmul fast float %1308, %1310
  %1314 = icmp ne i32 %1230, 0
  %1315 = select i1 %1314, float 1.000000e+00, float 0.000000e+00
  %1316 = fmul fast float %1220, %1315
  %1317 = and i32 %1068, 1
  %1318 = icmp eq i32 %1317, 0
  br i1 %1318, label %1319, label %1323

; <label>:1319                                    ; preds = %1228
  %1320 = fsub fast float %1311, %1001
  %1321 = fsub fast float %1312, %1002
  %1322 = fsub fast float %1313, %1003
  br label %1323

; <label>:1323                                    ; preds = %1319, %1228
  %1324 = phi float [ %1320, %1319 ], [ %1311, %1228 ]
  %1325 = phi float [ %1321, %1319 ], [ %1312, %1228 ]
  %1326 = phi float [ %1322, %1319 ], [ %1313, %1228 ]
  %1327 = fmul float %1326, %1316
  %1328 = fmul float %1325, %1316
  %1329 = fmul float %1324, %1316
  %1330 = fadd fast float %1329, %1001
  %1331 = fadd fast float %1328, %1002
  %1332 = fadd fast float %1327, %1003
  %1333 = icmp ne i32 %1229, 0
  %1334 = select i1 %1333, float 1.000000e+00, float 0.000000e+00
  %1335 = fmul fast float %1220, %1334
  %1336 = fsub fast float %1274, %1008
  %1337 = fsub fast float %1275, %1009
  %1338 = fsub fast float %1276, %1010
  %1339 = fmul fast float %1336, %1335
  %1340 = fmul fast float %1337, %1335
  %1341 = fmul fast float %1338, %1335
  %1342 = fadd fast float %1339, %1008
  %1343 = fadd fast float %1340, %1009
  %1344 = fadd fast float %1341, %1010
  %1345 = fsub fast float %1247, %1007
  %1346 = fmul fast float %1345, %1335
  %1347 = fadd fast float %1346, %1007
  %1348 = fmul fast float %1335, %994
  %1349 = fsub fast float %994, %1348
  %1350 = fmul fast float %1335, %993
  %1351 = fsub fast float %993, %1350
  %1352 = bitcast float %1062 to i32
  %1353 = lshr i32 %1352, 16
  %1354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1353)  ; LegacyF16ToF32(value)
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = and i32 %1356, 1
  %1358 = icmp eq i32 %1357, 0
  br i1 %1358, label %1359, label %1384

; <label>:1359                                    ; preds = %1323
  %1360 = fadd fast float %1247, 0xBFB99999A0000000
  %1361 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  %1362 = fmul fast float %1361, 0x3FF1C71C80000000
  %1363 = fsub fast float 1.000000e+00, %1362
  %1364 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1365 = fmul fast float %1364, %1274
  %1366 = fmul fast float %1364, %1275
  %1367 = fmul fast float %1364, %1276
  %1368 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1369 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1370 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  %1371 = call float @dx.op.binary.f32(i32 35, float %1369, float %1370)  ; FMax(a,b)
  %1372 = call float @dx.op.binary.f32(i32 35, float %1368, float %1371)  ; FMax(a,b)
  %1373 = fcmp fast ogt float %1372, 0.000000e+00
  %1374 = bitcast float %1372 to i32
  %1375 = sub nsw i32 2129859010, %1374
  %1376 = bitcast i32 %1375 to float
  %1377 = select i1 %1373, float %1376, float 0.000000e+00
  %1378 = fmul fast float %1368, %1354
  %1379 = fmul fast float %1369, %1354
  %1380 = fmul fast float %1370, %1354
  %1381 = fmul fast float %1378, %1377
  %1382 = fmul fast float %1379, %1377
  %1383 = fmul fast float %1380, %1377
  br label %1384

; <label>:1384                                    ; preds = %1359, %1323
  %1385 = phi float [ %1354, %1323 ], [ %1381, %1359 ]
  %1386 = phi float [ %1354, %1323 ], [ %1382, %1359 ]
  %1387 = phi float [ %1354, %1323 ], [ %1383, %1359 ]
  %1388 = fsub fast float %1385, %995
  %1389 = fsub fast float %1386, %996
  %1390 = fsub fast float %1387, %997
  %1391 = fmul fast float %1388, %1335
  %1392 = fmul fast float %1389, %1335
  %1393 = fmul fast float %1390, %1335
  %1394 = fadd fast float %1391, %995
  %1395 = fadd fast float %1392, %996
  %1396 = fadd fast float %1393, %997
  %1397 = fadd fast float %1220, %1006
  %1398 = call float @dx.op.unary.f32(i32 7, float %1397)  ; Saturate(value)
  %1399 = fsub fast float %1267, %1005
  %1400 = fmul fast float %1399, %1316
  %1401 = fadd fast float %1400, %1005
  %1402 = fsub fast float %1253, %1004
  %1403 = fmul fast float %1402, %1316
  %1404 = fadd fast float %1403, %1004
  br i1 %1318, label %1413, label %1405

; <label>:1405                                    ; preds = %1384
  %1406 = and i32 %1068, 32768
  %1407 = icmp eq i32 %1406, 0
  br i1 %1407, label %1423, label %1408

; <label>:1408                                    ; preds = %1405
  %1409 = fmul fast float %1316, 1.270000e+02
  %1410 = fadd fast float %1409, %990
  %1411 = fadd fast float %1409, %991
  %1412 = fadd fast float %1409, %992
  br label %1423

; <label>:1413                                    ; preds = %1384
  %1414 = fsub fast float 1.270000e+02, %990
  %1415 = fsub fast float 1.270000e+02, %991
  %1416 = fsub fast float 1.270000e+02, %992
  %1417 = fmul fast float %1316, %1414
  %1418 = fmul fast float %1316, %1415
  %1419 = fmul fast float %1316, %1416
  %1420 = fadd fast float %1417, %990
  %1421 = fadd fast float %1418, %991
  %1422 = fadd fast float %1419, %992
  br label %1423

; <label>:1423                                    ; preds = %1413, %1408, %1405
  %1424 = phi float [ %1410, %1408 ], [ %990, %1405 ], [ %1420, %1413 ]
  %1425 = phi float [ %1411, %1408 ], [ %991, %1405 ], [ %1421, %1413 ]
  %1426 = phi float [ %1412, %1408 ], [ %992, %1405 ], [ %1422, %1413 ]
  %1427 = call float @dx.op.dot3.f32(i32 55, float %1274, float %1275, float %1276, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 0
  %1430 = extractvalue %dx.types.CBufRet.f32 %1428, 1
  %1431 = fmul fast float %1430, %1427
  %1432 = fadd fast float %1431, %1429
  %1433 = call float @dx.op.unary.f32(i32 7, float %1432)  ; Saturate(value)
  %1434 = bitcast float %1056 to i32
  %1435 = and i32 %1434, 65535
  %1436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1435)  ; LegacyF16ToF32(value)
  %1437 = lshr i32 %1434, 16
  %1438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1437)  ; LegacyF16ToF32(value)
  %1439 = fcmp fast oge float %1436, 0.000000e+00
  %1440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1441 = extractvalue %dx.types.CBufRet.f32 %1440, 0
  %1442 = select i1 %1439, float %1436, float %1441
  %1443 = fadd fast float %1442, %1438
  %1444 = fsub fast float %1433, %989
  %1445 = fmul fast float %1444, %1220
  %1446 = fadd fast float %1445, %989
  %1447 = fmul fast float %1443, %1220
  %1448 = call float @dx.op.binary.f32(i32 35, float %988, float %1447)  ; FMax(a,b)
  %1449 = and i32 %1068, 16
  %1450 = icmp eq i32 %1449, 0
  br i1 %1450, label %1472, label %1451

; <label>:1451                                    ; preds = %1423
  %1452 = add i32 %1059, 0
  %1453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1452, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1454 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1453, %dx.types.Handle %1233, float %1161, float %1164, float undef, float undef, i32 0, i32 0, i32 undef, float %1166, float %1168, float undef, float %1170, float %1172, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1455 = extractvalue %dx.types.ResRet.f32 %1454, 0
  %1456 = extractvalue %dx.types.ResRet.f32 %1454, 1
  %1457 = extractvalue %dx.types.ResRet.f32 %1454, 2
  %1458 = and i32 %1352, 65535
  %1459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1458)  ; LegacyF16ToF32(value)
  %1460 = fmul fast float %1455, %1053
  %1461 = fmul fast float %1456, %1054
  %1462 = fmul fast float %1457, %1055
  %1463 = and i32 %1068, 16384
  %1464 = icmp ne i32 %1463, 0
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 0
  %1467 = select i1 %1464, float %1466, float 1.000000e+00
  %1468 = fmul fast float %1467, %1459
  %1469 = fmul fast float %1460, %1468
  %1470 = fmul fast float %1461, %1468
  %1471 = fmul fast float %1462, %1468
  br label %1472

; <label>:1472                                    ; preds = %1451, %1423
  %1473 = phi float [ %1469, %1451 ], [ 0.000000e+00, %1423 ]
  %1474 = phi float [ %1470, %1451 ], [ 0.000000e+00, %1423 ]
  %1475 = phi float [ %1471, %1451 ], [ 0.000000e+00, %1423 ]
  %1476 = fsub fast float %1473, %998
  %1477 = fsub fast float %1474, %999
  %1478 = fsub fast float %1475, %1000
  %1479 = fmul fast float %1476, %1220
  %1480 = fmul fast float %1477, %1220
  %1481 = fmul fast float %1478, %1220
  %1482 = fadd fast float %1479, %998
  %1483 = fadd fast float %1480, %999
  %1484 = fadd fast float %1481, %1000
  br label %1117

; <label>:1485                                    ; preds = %1117
  br label %1486

; <label>:1486                                    ; preds = %1485, %875
  %1487 = phi float [ 0.000000e+00, %875 ], [ %1118, %1485 ]
  %1488 = phi float [ %897, %875 ], [ %1119, %1485 ]
  %1489 = phi float [ %895, %875 ], [ %1120, %1485 ]
  %1490 = phi float [ %884, %875 ], [ %1121, %1485 ]
  %1491 = phi float [ %885, %875 ], [ %1122, %1485 ]
  %1492 = phi float [ %886, %875 ], [ %1123, %1485 ]
  %1493 = phi float [ 0.000000e+00, %875 ], [ %1124, %1485 ]
  %1494 = phi float [ 0.000000e+00, %875 ], [ %1125, %1485 ]
  %1495 = phi float [ %878, %875 ], [ %1126, %1485 ]
  %1496 = phi float [ %879, %875 ], [ %1127, %1485 ]
  %1497 = phi float [ %880, %875 ], [ %1128, %1485 ]
  %1498 = phi float [ %881, %875 ], [ %1129, %1485 ]
  %1499 = phi float [ %882, %875 ], [ %1130, %1485 ]
  %1500 = phi float [ %883, %875 ], [ %1131, %1485 ]
  %1501 = phi float [ %929, %875 ], [ %1132, %1485 ]
  %1502 = phi float [ %930, %875 ], [ %1133, %1485 ]
  %1503 = phi float [ %931, %875 ], [ %1134, %1485 ]
  %1504 = phi float [ %893, %875 ], [ %1135, %1485 ]
  %1505 = phi float [ %892, %875 ], [ %1136, %1485 ]
  %1506 = phi float [ 0.000000e+00, %875 ], [ %1137, %1485 ]
  %1507 = phi float [ %890, %875 ], [ %1138, %1485 ]
  %1508 = phi float [ %887, %875 ], [ %1139, %1485 ]
  %1509 = phi float [ %888, %875 ], [ %1140, %1485 ]
  %1510 = phi float [ %889, %875 ], [ %1141, %1485 ]
  %1511 = call float @dx.op.dot3.f32(i32 55, float %1501, float %1502, float %1503, float %1501, float %1502, float %1503)  ; Dot3(ax,ay,az,bx,by,bz)
  %1512 = call float @dx.op.unary.f32(i32 25, float %1511)  ; Rsqrt(value)
  %1513 = fmul fast float %1512, %1501
  %1514 = fmul fast float %1512, %1502
  %1515 = fmul fast float %1512, %1503
  %1516 = fadd fast float %1506, %891
  %1517 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  %1518 = call float @dx.op.dot3.f32(i32 55, float %1513, float %1514, float %1515, float %1513, float %1514, float %1515)  ; Dot3(ax,ay,az,bx,by,bz)
  %1519 = call float @dx.op.unary.f32(i32 25, float %1518)  ; Rsqrt(value)
  %1520 = fmul fast float %1519, %1513
  %1521 = fmul fast float %1519, %1514
  %1522 = fmul fast float %1519, %1515
  %1523 = fadd fast float %1507, 0xBFB99999A0000000
  %1524 = call float @dx.op.unary.f32(i32 7, float %1523)  ; Saturate(value)
  %1525 = fmul fast float %1524, 0x3FF1C71C80000000
  %1526 = call float @dx.op.binary.f32(i32 36, float %1507, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1527 = fsub fast float 1.000000e+00, %1525
  %1528 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1529 = fmul fast float %1528, %1508
  %1530 = fmul fast float %1528, %1509
  %1531 = fmul fast float %1528, %1510
  %1532 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1533 = call float @dx.op.unary.f32(i32 7, float %1530)  ; Saturate(value)
  %1534 = call float @dx.op.unary.f32(i32 7, float %1531)  ; Saturate(value)
  %1535 = fmul fast float %1525, %1508
  %1536 = fmul fast float %1525, %1509
  %1537 = fmul fast float %1525, %1510
  %1538 = fadd fast float %1535, %1526
  %1539 = fadd fast float %1536, %1526
  %1540 = fadd fast float %1537, %1526
  %1541 = call float @dx.op.unary.f32(i32 7, float %1538)  ; Saturate(value)
  %1542 = call float @dx.op.unary.f32(i32 7, float %1539)  ; Saturate(value)
  %1543 = call float @dx.op.unary.f32(i32 7, float %1540)  ; Saturate(value)
  %1544 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = and i32 %1546, 1
  %1548 = icmp eq i32 %1547, 0
  br i1 %1548, label %1563, label %1549

; <label>:1549                                    ; preds = %1486
  %1550 = call float @dx.op.binary.f32(i32 35, float %1533, float %1534)  ; FMax(a,b)
  %1551 = call float @dx.op.binary.f32(i32 35, float %1532, float %1550)  ; FMax(a,b)
  %1552 = fcmp fast ogt float %1551, 0.000000e+00
  %1553 = bitcast float %1551 to i32
  %1554 = sub nsw i32 2129859010, %1553
  %1555 = bitcast i32 %1554 to float
  %1556 = select i1 %1552, float %1555, float 0.000000e+00
  %1557 = fmul fast float %1532, %1495
  %1558 = fmul fast float %1533, %1496
  %1559 = fmul fast float %1534, %1497
  %1560 = fmul fast float %1557, %1556
  %1561 = fmul fast float %1558, %1556
  %1562 = fmul fast float %1559, %1556
  br label %1563

; <label>:1563                                    ; preds = %1549, %1486
  %1564 = phi float [ %1560, %1549 ], [ %1495, %1486 ]
  %1565 = phi float [ %1561, %1549 ], [ %1496, %1486 ]
  %1566 = phi float [ %1562, %1549 ], [ %1497, %1486 ]
  %1567 = call float @dx.op.binary.f32(i32 36, float %1490, float 1.270000e+02)  ; FMin(a,b)
  %1568 = call float @dx.op.binary.f32(i32 36, float %1491, float 1.270000e+02)  ; FMin(a,b)
  %1569 = call float @dx.op.binary.f32(i32 36, float %1492, float 1.270000e+02)  ; FMin(a,b)
  %1570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1571 = extractvalue %dx.types.CBufRet.i32 %1570, 3
  %1572 = and i32 %1571, 8
  %1573 = icmp ne i32 %1572, 0
  %1574 = call float @dx.op.binary.f32(i32 35, float %1532, float %1508)  ; FMax(a,b)
  %1575 = call float @dx.op.binary.f32(i32 35, float %1533, float %1508)  ; FMax(a,b)
  %1576 = call float @dx.op.binary.f32(i32 35, float %1534, float %1508)  ; FMax(a,b)
  %1577 = call float @dx.op.dot3.f32(i32 55, float %1532, float %1533, float %1534, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1578 = select i1 %193, float %1508, float %1532
  %1579 = select i1 %193, float %1577, float %1533
  %1580 = select i1 %193, float 1.000000e+00, float %1534
  %1581 = select i1 %1573, float %1574, float %1578
  %1582 = select i1 %1573, float %1575, float %1579
  %1583 = select i1 %1573, float %1576, float %1580
  %1584 = call float @dx.op.dot3.f32(i32 55, float %1564, float %1565, float %1566, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1585 = select i1 %193, float %1584, float %1564
  %1586 = select i1 %193, float %1584, float %1565
  %1587 = select i1 %193, float %1584, float %1566
  %1588 = and i32 %169, 3
  %1589 = select i1 %163, i32 %1588, i32 0
  %1590 = icmp eq i32 %1589, 1
  br i1 %1590, label %1591, label %1667

; <label>:1591                                    ; preds = %1563
  %1592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1593 = extractvalue %dx.types.CBufRet.f32 %1592, 0
  %1594 = extractvalue %dx.types.CBufRet.f32 %1592, 1
  %1595 = fadd fast float %1593, %132
  %1596 = fadd fast float %1594, %133
  %1597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1598 = extractvalue %dx.types.CBufRet.f32 %1597, 0
  %1599 = extractvalue %dx.types.CBufRet.f32 %1597, 1
  %1600 = fsub fast float %1595, %1598
  %1601 = fsub fast float %1596, %1599
  %1602 = fmul fast float %1600, %1600
  %1603 = fmul fast float %1601, %1601
  %1604 = fadd fast float %1602, %1603
  %1605 = call float @dx.op.unary.f32(i32 24, float %1604)  ; Sqrt(value)
  %1606 = extractvalue %dx.types.CBufRet.f32 %1597, 2
  %1607 = fcmp fast olt float %1605, %1606
  br i1 %1607, label %1608, label %1661

; <label>:1608                                    ; preds = %1591
  %1609 = extractvalue %dx.types.CBufRet.f32 %1592, 2
  %1610 = fadd fast float %1609, %134
  %1611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1612 = extractvalue %dx.types.CBufRet.f32 %1611, 0
  %1613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1614 = extractvalue %dx.types.CBufRet.f32 %1613, 0
  %1615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1616 = extractvalue %dx.types.CBufRet.f32 %1615, 0
  %1617 = extractvalue %dx.types.CBufRet.f32 %1611, 1
  %1618 = extractvalue %dx.types.CBufRet.f32 %1613, 1
  %1619 = extractvalue %dx.types.CBufRet.f32 %1615, 1
  %1620 = extractvalue %dx.types.CBufRet.f32 %1611, 3
  %1621 = extractvalue %dx.types.CBufRet.f32 %1613, 3
  %1622 = extractvalue %dx.types.CBufRet.f32 %1615, 3
  %1623 = fadd fast float %1620, %1595
  %1624 = fadd fast float %1621, %1596
  %1625 = fadd fast float %1610, %1622
  %1626 = fmul fast float %1623, %1612
  %1627 = call float @dx.op.tertiary.f32(i32 46, float %1624, float %1614, float %1626)  ; FMad(a,b,c)
  %1628 = call float @dx.op.tertiary.f32(i32 46, float %1625, float %1616, float %1627)  ; FMad(a,b,c)
  %1629 = fmul fast float %1623, %1617
  %1630 = call float @dx.op.tertiary.f32(i32 46, float %1624, float %1618, float %1629)  ; FMad(a,b,c)
  %1631 = call float @dx.op.tertiary.f32(i32 46, float %1625, float %1619, float %1630)  ; FMad(a,b,c)
  %1632 = fsub fast float %1628, %1620
  %1633 = fsub fast float %1631, %1621
  %1634 = fsub fast float %1632, %1598
  %1635 = fadd fast float %1634, %1606
  %1636 = fsub fast float %1633, %1599
  %1637 = fadd fast float %1636, %1606
  %1638 = extractvalue %dx.types.CBufRet.f32 %1597, 3
  %1639 = fmul fast float %1635, %1638
  %1640 = fmul fast float %1637, %1638
  %1641 = call float @dx.op.unary.f32(i32 7, float %1639)  ; Saturate(value)
  %1642 = call float @dx.op.unary.f32(i32 7, float %1640)  ; Saturate(value)
  %1643 = fsub fast float 1.000000e+00, %1641
  %1644 = fsub fast float 1.000000e+00, %1642
  %1645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %40, float %1643, float %1644, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1646 = extractvalue %dx.types.ResRet.f32 %1645, 0
  %1647 = fcmp fast ugt float %1646, 0.000000e+00
  br i1 %1647, label %1648, label %1661

; <label>:1648                                    ; preds = %1608
  %1649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1650 = extractvalue %dx.types.CBufRet.f32 %1649, 2
  %1651 = fmul fast float %1650, %1646
  %1652 = extractvalue %dx.types.CBufRet.f32 %1649, 3
  %1653 = fadd fast float %1652, %1651
  %1654 = extractvalue %dx.types.CBufRet.f32 %1615, 2
  %1655 = fadd fast float %1653, %1622
  %1656 = fmul fast float %1628, %1616
  %1657 = call float @dx.op.tertiary.f32(i32 46, float %1631, float %1619, float %1656)  ; FMad(a,b,c)
  %1658 = call float @dx.op.tertiary.f32(i32 46, float %1655, float %1654, float %1657)  ; FMad(a,b,c)
  %1659 = fsub fast float %1658, %1622
  %1660 = fsub fast float %1659, %1609
  br label %1661

; <label>:1661                                    ; preds = %1648, %1608, %1591
  %1662 = phi i1 [ true, %1648 ], [ false, %1608 ], [ false, %1591 ]
  %1663 = phi float [ %1660, %1648 ], [ -1.310720e+05, %1608 ], [ -1.310720e+05, %1591 ]
  %1664 = fsub fast float %1663, %134
  %1665 = call float @dx.op.unary.f32(i32 7, float %1664)  ; Saturate(value)
  %1666 = select i1 %1662, float %1665, float 1.000000e+00
  br label %1667

; <label>:1667                                    ; preds = %1661, %1563
  %1668 = phi float [ %1666, %1661 ], [ 0.000000e+00, %1563 ]
  %1669 = icmp eq i32 %1589, 3
  %1670 = select i1 %1669, float 1.000000e+00, float %1668
  %1671 = call float @dx.op.binary.f32(i32 35, float %1487, float %1670)  ; FMax(a,b)
  %1672 = fcmp fast olt float %1670, 1.000000e+00
  br i1 %1672, label %1673, label %1833

; <label>:1673                                    ; preds = %1667
  %1674 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %1675 = extractvalue %dx.types.CBufRet.i32 %1674, 0
  %1676 = and i32 %1675, 7
  %1677 = icmp eq i32 %1676, 0
  br i1 %1677, label %1749, label %1678

; <label>:1678                                    ; preds = %1673
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 0
  %1681 = extractvalue %dx.types.CBufRet.f32 %1679, 1
  %1682 = extractvalue %dx.types.CBufRet.f32 %1679, 2
  %1683 = fadd fast float %1680, %132
  %1684 = fadd fast float %1681, %133
  %1685 = fadd fast float %1682, %134
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 0
  %1688 = extractvalue %dx.types.CBufRet.f32 %1686, 1
  %1689 = extractvalue %dx.types.CBufRet.f32 %1686, 2
  %1690 = extractvalue %dx.types.CBufRet.f32 %1686, 3
  %1691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %1692 = extractvalue %dx.types.CBufRet.f32 %1691, 0
  %1693 = extractvalue %dx.types.CBufRet.f32 %1691, 1
  %1694 = extractvalue %dx.types.CBufRet.f32 %1691, 2
  %1695 = extractvalue %dx.types.CBufRet.f32 %1691, 3
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 0
  %1698 = extractvalue %dx.types.CBufRet.f32 %1696, 1
  %1699 = extractvalue %dx.types.CBufRet.f32 %1696, 2
  %1700 = extractvalue %dx.types.CBufRet.f32 %1696, 3
  %1701 = fmul fast float %1683, %1687
  %1702 = call float @dx.op.tertiary.f32(i32 46, float %1684, float %1688, float %1701)  ; FMad(a,b,c)
  %1703 = call float @dx.op.tertiary.f32(i32 46, float %1685, float %1689, float %1702)  ; FMad(a,b,c)
  %1704 = fadd fast float %1703, %1690
  %1705 = fmul fast float %1692, %1683
  %1706 = call float @dx.op.tertiary.f32(i32 46, float %1684, float %1693, float %1705)  ; FMad(a,b,c)
  %1707 = call float @dx.op.tertiary.f32(i32 46, float %1685, float %1694, float %1706)  ; FMad(a,b,c)
  %1708 = fadd fast float %1707, %1695
  %1709 = fmul fast float %1697, %1683
  %1710 = call float @dx.op.tertiary.f32(i32 46, float %1684, float %1698, float %1709)  ; FMad(a,b,c)
  %1711 = call float @dx.op.tertiary.f32(i32 46, float %1685, float %1699, float %1710)  ; FMad(a,b,c)
  %1712 = fadd fast float %1711, %1700
  %1713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %1714 = extractvalue %dx.types.CBufRet.f32 %1713, 1
  %1715 = extractvalue %dx.types.CBufRet.f32 %1713, 0
  %1716 = fmul fast float %1715, %204
  %1717 = fadd fast float %1712, %1716
  %1718 = fmul fast float %204, 0x401921FB60000000
  %1719 = call float @dx.op.unary.f32(i32 13, float %1718)  ; Sin(value)
  %1720 = call float @dx.op.unary.f32(i32 12, float %1718)  ; Cos(value)
  %1721 = fmul fast float %1720, %1714
  %1722 = call float @dx.op.tertiary.f32(i32 46, float %1719, float %1714, float 0.000000e+00)  ; FMad(a,b,c)
  %1723 = fmul fast float %1714, %1719
  %1724 = fsub fast float -0.000000e+00, %1723
  %1725 = call float @dx.op.tertiary.f32(i32 46, float %1720, float %1714, float 0.000000e+00)  ; FMad(a,b,c)
  br label %1726

; <label>:1726                                    ; preds = %1726, %1678
  %1727 = phi float [ 0.000000e+00, %1678 ], [ %1741, %1726 ]
  %1728 = phi i32 [ 0, %1678 ], [ %1742, %1726 ]
  %1729 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %1728
  %1730 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %1728
  %1731 = load float, float* %1729, align 4
  %1732 = load float, float* %1730, align 4
  %1733 = fmul fast float %1721, %1731
  %1734 = call float @dx.op.tertiary.f32(i32 46, float %1732, float %1724, float %1733)  ; FMad(a,b,c)
  %1735 = fmul fast float %1731, %1722
  %1736 = call float @dx.op.tertiary.f32(i32 46, float %1732, float %1725, float %1735)  ; FMad(a,b,c)
  %1737 = fadd fast float %1704, %1734
  %1738 = fadd fast float %1708, %1736
  %1739 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %42, float %1737, float %1738, float undef, float undef, i32 0, i32 0, i32 undef, float %1717)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1740 = extractvalue %dx.types.ResRet.f32 %1739, 0
  %1741 = fadd fast float %1740, %1727
  %1742 = add nuw nsw i32 %1728, 1
  %1743 = icmp eq i32 %1742, 4
  br i1 %1743, label %1744, label %1726

; <label>:1744                                    ; preds = %1726
  %1745 = fmul fast float %1741, 2.500000e-01
  %1746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %1747 = extractvalue %dx.types.CBufRet.f32 %1746, 1
  %1748 = fmul fast float %1747, %1745
  br label %1749

; <label>:1749                                    ; preds = %1744, %1673
  %1750 = phi float [ %1745, %1744 ], [ 0.000000e+00, %1673 ]
  %1751 = phi float [ %1748, %1744 ], [ 0.000000e+00, %1673 ]
  %1752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %1753 = extractvalue %dx.types.CBufRet.i32 %1752, 0
  %1754 = and i32 %1753, 7
  %1755 = icmp eq i32 %1754, 0
  br i1 %1755, label %1833, label %1756

; <label>:1756                                    ; preds = %1749
  %1757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %1758 = extractvalue %dx.types.CBufRet.f32 %1757, 0
  %1759 = fmul fast float %1758, %1750
  %1760 = fadd fast float %1759, %1671
  %1761 = extractvalue %dx.types.CBufRet.f32 %1757, 2
  %1762 = fmul fast float %1761, %1750
  %1763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.f32 %1763, 0
  %1765 = fmul fast float %1764, %1750
  %1766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1767 = and i32 %1753, 8
  %1768 = icmp eq i32 %1767, 0
  br i1 %1768, label %1833, label %1769

; <label>:1769                                    ; preds = %1756
  %1770 = extractvalue %dx.types.CBufRet.f32 %1766, 2
  %1771 = fadd fast float %1770, %134
  %1772 = extractvalue %dx.types.CBufRet.f32 %1766, 1
  %1773 = fadd fast float %1772, %133
  %1774 = extractvalue %dx.types.CBufRet.f32 %1766, 0
  %1775 = fadd fast float %1774, %132
  %1776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %1777 = extractvalue %dx.types.CBufRet.f32 %1776, 0
  %1778 = extractvalue %dx.types.CBufRet.f32 %1776, 1
  %1779 = extractvalue %dx.types.CBufRet.f32 %1776, 2
  %1780 = fsub fast float %1775, %1777
  %1781 = fsub fast float %1773, %1778
  %1782 = fsub fast float %1771, %1779
  %1783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %1784 = extractvalue %dx.types.CBufRet.f32 %1783, 0
  %1785 = extractvalue %dx.types.CBufRet.f32 %1783, 1
  %1786 = extractvalue %dx.types.CBufRet.f32 %1783, 2
  %1787 = fmul fast float %1780, %1784
  %1788 = fmul fast float %1781, %1785
  %1789 = fmul fast float %1782, %1786
  %1790 = fcmp fast oge float %1787, 0.000000e+00
  %1791 = fcmp fast oge float %1788, 0.000000e+00
  %1792 = fcmp fast oge float %1789, 0.000000e+00
  %1793 = and i1 %1790, %1791
  %1794 = and i1 %1792, %1793
  %1795 = fcmp fast ole float %1787, 1.000000e+00
  %1796 = fcmp fast ole float %1788, 1.000000e+00
  %1797 = fcmp fast ole float %1789, 1.000000e+00
  %1798 = and i1 %1795, %1796
  %1799 = and i1 %1797, %1798
  %1800 = and i1 %1794, %1799
  br i1 %1800, label %1801, label %1833

; <label>:1801                                    ; preds = %1769
  %1802 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.i32 %1802, 0
  %1804 = icmp eq i32 %1803, 0
  br i1 %1804, label %1811, label %1805

; <label>:1805                                    ; preds = %1801
  %1806 = add i32 %1803, 0
  %1807 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1806, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1808 = fsub fast float -0.000000e+00, %1788
  %1809 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1807, %dx.types.Handle %81, float %1787, float %1808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1810 = extractvalue %dx.types.ResRet.f32 %1809, 0
  br label %1811

; <label>:1811                                    ; preds = %1805, %1801
  %1812 = phi float [ %1810, %1805 ], [ 1.000000e+00, %1801 ]
  %1813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.i32 %1813, 0
  %1815 = and i32 %1814, 32
  %1816 = icmp ne i32 %1815, 0
  %1817 = fmul fast float %1812, %1750
  %1818 = select i1 %1816, float %1812, float %1817
  %1819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %1820 = extractvalue %dx.types.CBufRet.f32 %1819, 1
  %1821 = fmul fast float %1818, %1820
  %1822 = fadd fast float %1821, %1760
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 0
  %1825 = fmul fast float %1818, %1824
  %1826 = fadd fast float %1825, %1751
  %1827 = extractvalue %dx.types.CBufRet.f32 %1823, 1
  %1828 = fmul fast float %1818, %1827
  %1829 = fadd fast float %1828, %1762
  %1830 = extractvalue %dx.types.CBufRet.f32 %1823, 2
  %1831 = fmul fast float %1830, %1818
  %1832 = fadd fast float %1831, %1765
  br label %1833

; <label>:1833                                    ; preds = %1811, %1769, %1756, %1749, %1667
  %1834 = phi float [ %1671, %1749 ], [ %1671, %1667 ], [ %1822, %1811 ], [ %1760, %1769 ], [ %1760, %1756 ]
  %1835 = phi float [ %1751, %1749 ], [ 0.000000e+00, %1667 ], [ %1826, %1811 ], [ %1751, %1769 ], [ %1751, %1756 ]
  %1836 = phi float [ 0.000000e+00, %1749 ], [ 0.000000e+00, %1667 ], [ %1829, %1811 ], [ %1762, %1769 ], [ %1762, %1756 ]
  %1837 = phi float [ 0.000000e+00, %1749 ], [ 0.000000e+00, %1667 ], [ %1832, %1811 ], [ %1765, %1769 ], [ %1765, %1756 ]
  %1838 = call float @dx.op.unary.f32(i32 7, float %1834)  ; Saturate(value)
  %1839 = call float @dx.op.unary.f32(i32 7, float %1835)  ; Saturate(value)
  %1840 = call float @dx.op.unary.f32(i32 7, float %1836)  ; Saturate(value)
  %1841 = call float @dx.op.unary.f32(i32 7, float %1837)  ; Saturate(value)
  %1842 = fcmp fast une float %1840, 0.000000e+00
  %1843 = fcmp fast une float %1841, 0.000000e+00
  %1844 = or i1 %1842, %1843
  br i1 %1844, label %1845, label %2427

; <label>:1845                                    ; preds = %1833
  %1846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1847 = extractvalue %dx.types.CBufRet.f32 %1846, 0
  %1848 = extractvalue %dx.types.CBufRet.f32 %1846, 1
  %1849 = extractvalue %dx.types.CBufRet.f32 %1846, 2
  %1850 = fadd fast float %1847, %132
  %1851 = fadd fast float %1848, %133
  %1852 = fadd fast float %1849, %134
  br i1 %1842, label %1853, label %2126

; <label>:1853                                    ; preds = %1845
  %1854 = call float @dx.op.unary.f32(i32 23, float %1504)  ; Log(value)
  %1855 = fmul fast float %1854, 4.000000e+00
  %1856 = call float @dx.op.unary.f32(i32 21, float %1855)  ; Exp(value)
  %1857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %1858 = extractvalue %dx.types.CBufRet.f32 %1857, 0
  %1859 = fmul fast float %1858, %1850
  %1860 = fmul fast float %1858, %1851
  %1861 = fmul fast float %1858, %1852
  %1862 = call float @dx.op.unary.f32(i32 6, float %87)  ; FAbs(value)
  %1863 = call float @dx.op.unary.f32(i32 6, float %88)  ; FAbs(value)
  %1864 = call float @dx.op.unary.f32(i32 6, float %89)  ; FAbs(value)
  %1865 = call float @dx.op.unary.f32(i32 23, float %1862)  ; Log(value)
  %1866 = call float @dx.op.unary.f32(i32 23, float %1863)  ; Log(value)
  %1867 = call float @dx.op.unary.f32(i32 23, float %1864)  ; Log(value)
  %1868 = fmul fast float %1865, 4.000000e+00
  %1869 = fmul fast float %1866, 4.000000e+00
  %1870 = fmul fast float %1867, 4.000000e+00
  %1871 = call float @dx.op.unary.f32(i32 21, float %1868)  ; Exp(value)
  %1872 = call float @dx.op.unary.f32(i32 21, float %1869)  ; Exp(value)
  %1873 = call float @dx.op.unary.f32(i32 21, float %1870)  ; Exp(value)
  %1874 = fadd fast float %1872, %1871
  %1875 = fadd fast float %1874, %1873
  %1876 = fdiv fast float 1.000000e+00, %1875
  %1877 = fmul fast float %1876, %1871
  %1878 = fcmp fast ogt float %87, 0.000000e+00
  %1879 = fcmp fast ogt float %88, 0.000000e+00
  %1880 = fcmp fast ogt float %89, 0.000000e+00
  %1881 = fcmp fast olt float %87, 0.000000e+00
  %1882 = fcmp fast olt float %88, 0.000000e+00
  %1883 = fcmp fast olt float %89, 0.000000e+00
  %1884 = zext i1 %1878 to i32
  %1885 = zext i1 %1879 to i32
  %1886 = zext i1 %1880 to i32
  %1887 = zext i1 %1881 to i32
  %1888 = zext i1 %1882 to i32
  %1889 = zext i1 %1883 to i32
  %1890 = sub nsw i32 %1884, %1887
  %1891 = sub nsw i32 %1885, %1888
  %1892 = sub nsw i32 %1886, %1889
  %1893 = call float @dx.op.unary.f32(i32 83, float %1859)  ; DerivCoarseX(value)
  %1894 = call float @dx.op.unary.f32(i32 83, float %1860)  ; DerivCoarseX(value)
  %1895 = call float @dx.op.unary.f32(i32 83, float %1861)  ; DerivCoarseX(value)
  %1896 = call float @dx.op.unary.f32(i32 84, float %1859)  ; DerivCoarseY(value)
  %1897 = call float @dx.op.unary.f32(i32 84, float %1860)  ; DerivCoarseY(value)
  %1898 = call float @dx.op.unary.f32(i32 84, float %1861)  ; DerivCoarseY(value)
  %1899 = fcmp fast ole float %204, %1877
  %1900 = fmul fast float %1876, %1874
  %1901 = fcmp fast ole float %204, %1900
  %1902 = select i1 %1901, float %1861, float %1859
  %1903 = select i1 %1901, float %1859, float %1860
  %1904 = select i1 %1899, float %1860, float %1902
  %1905 = select i1 %1899, float %1861, float %1903
  %1906 = select i1 %1901, float %1895, float %1893
  %1907 = select i1 %1901, float %1893, float %1894
  %1908 = select i1 %1899, float %1894, float %1906
  %1909 = select i1 %1899, float %1895, float %1907
  %1910 = select i1 %1901, float %1898, float %1896
  %1911 = select i1 %1901, float %1896, float %1897
  %1912 = select i1 %1899, float %1897, float %1910
  %1913 = select i1 %1899, float %1898, float %1911
  %1914 = call float @dx.op.unary.f32(i32 27, float %1904)  ; Round_ni(value)
  %1915 = call float @dx.op.unary.f32(i32 27, float %1905)  ; Round_ni(value)
  %1916 = fptosi float %1914 to i32
  %1917 = fptosi float %1915 to i32
  %1918 = xor i32 %1917, %1916
  %1919 = sitofp i32 %1918 to float
  %1920 = fptosi float %1919 to i32
  %1921 = sitofp i32 %1920 to float
  %1922 = fmul fast float %1921, 0x3FE3C6EF40000000
  %1923 = frem fast float %1914, 2.560000e+02
  %1924 = frem fast float %1915, 2.560000e+02
  %1925 = fptoui float %1923 to i32
  %1926 = fptoui float %1924 to i32
  %1927 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %1925, i32 %1926, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1928 = extractvalue %dx.types.ResRet.f32 %1927, 0
  %1929 = extractvalue %dx.types.ResRet.f32 %1927, 1
  %1930 = extractvalue %dx.types.ResRet.f32 %1927, 2
  %1931 = fadd fast float %1928, %1922
  %1932 = fadd fast float %1929, %1922
  %1933 = fadd fast float %1930, %1922
  %1934 = call float @dx.op.unary.f32(i32 22, float %1931)  ; Frc(value)
  %1935 = call float @dx.op.unary.f32(i32 22, float %1932)  ; Frc(value)
  %1936 = call float @dx.op.unary.f32(i32 22, float %1933)  ; Frc(value)
  %1937 = fmul fast float %1936, 0x401921FB60000000
  %1938 = call float @dx.op.unary.f32(i32 13, float %1937)  ; Sin(value)
  %1939 = call float @dx.op.unary.f32(i32 12, float %1937)  ; Cos(value)
  %1940 = fsub fast float -0.000000e+00, %1939
  %1941 = fmul fast float %1939, %1904
  %1942 = call float @dx.op.tertiary.f32(i32 46, float %1938, float %1905, float %1941)  ; FMad(a,b,c)
  %1943 = fmul fast float %1938, %1904
  %1944 = call float @dx.op.tertiary.f32(i32 46, float %1940, float %1905, float %1943)  ; FMad(a,b,c)
  %1945 = fadd fast float %1942, %1934
  %1946 = fadd fast float %1944, %1935
  %1947 = extractvalue %dx.types.CBufRet.f32 %1857, 3
  %1948 = bitcast float %1947 to i32
  %1949 = icmp eq i32 %1948, 0
  br i1 %1949, label %1988, label %1950

; <label>:1950                                    ; preds = %1853
  %1951 = add i32 %1948, 0
  %1952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1951, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1953 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1952, %dx.types.Handle %81, float %1945, float %1946, float undef, float undef, i32 0, i32 0, i32 undef, float %1908, float %1909, float undef, float %1912, float %1913, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1954 = extractvalue %dx.types.ResRet.f32 %1953, 0
  %1955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %1956 = extractvalue %dx.types.CBufRet.f32 %1955, 1
  %1957 = extractvalue %dx.types.CBufRet.f32 %1955, 2
  %1958 = fsub fast float 1.000000e+00, %1840
  %1959 = call float @dx.op.binary.f32(i32 35, float %1958, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1960 = bitcast float %1840 to i32
  %1961 = sitofp i32 %1960 to float
  %1962 = fadd fast float %1961, 0xC1CFBF8940000000
  %1963 = fmul fast float %1957, %1962
  %1964 = fadd fast float %1963, 0x41CFBF8940000000
  %1965 = fptosi float %1964 to i32
  %1966 = bitcast i32 %1965 to float
  %1967 = bitcast float %1959 to i32
  %1968 = sitofp i32 %1967 to float
  %1969 = fadd fast float %1968, 0xC1CFBF8940000000
  %1970 = fmul fast float %1969, %1957
  %1971 = fadd fast float %1970, 0x41CFBF8940000000
  %1972 = fptosi float %1971 to i32
  %1973 = bitcast i32 %1972 to float
  %1974 = fmul fast float %1966, %1956
  %1975 = fmul fast float %1973, %1956
  %1976 = fsub fast float %1959, %1974
  %1977 = fadd fast float %1975, %1959
  %1978 = call float @dx.op.unary.f32(i32 7, float %1976)  ; Saturate(value)
  %1979 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1980 = fsub fast float %1954, %1978
  %1981 = fsub fast float %1979, %1978
  %1982 = bitcast float %1981 to i32
  %1983 = sub nsw i32 2129859010, %1982
  %1984 = bitcast i32 %1983 to float
  %1985 = fmul fast float %1984, %1980
  %1986 = call float @dx.op.unary.f32(i32 7, float %1985)  ; Saturate(value)
  %1987 = fcmp fast olt float %1986, 0x3F70101020000000
  br i1 %1987, label %2126, label %1988

; <label>:1988                                    ; preds = %1950, %1853
  %1989 = phi float [ %1986, %1950 ], [ %1840, %1853 ]
  %1990 = fmul fast float %1989, %1856
  %1991 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %1992 = extractvalue %dx.types.CBufRet.i32 %1991, 1
  %1993 = extractvalue %dx.types.CBufRet.i32 %1991, 0
  %1994 = add i32 %1993, 0
  %1995 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1994, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1996 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1995, %dx.types.Handle %80, float %1945, float %1946, float undef, float undef, i32 0, i32 0, i32 undef, float %1908, float %1909, float undef, float %1912, float %1913, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1997 = extractvalue %dx.types.ResRet.f32 %1996, 0
  %1998 = extractvalue %dx.types.ResRet.f32 %1996, 1
  %1999 = extractvalue %dx.types.ResRet.f32 %1996, 2
  %2000 = extractvalue %dx.types.ResRet.f32 %1996, 3
  %2001 = and i32 %1992, 255
  %2002 = uitofp i32 %2001 to float
  %2003 = lshr i32 %1992, 8
  %2004 = and i32 %2003, 255
  %2005 = uitofp i32 %2004 to float
  %2006 = fmul fast float %2000, %2002
  %2007 = fadd fast float %2006, %2005
  %2008 = fmul fast float %2007, 0x3F70101000000000
  %2009 = fadd fast float %2008, 0xBFB99999A0000000
  %2010 = call float @dx.op.unary.f32(i32 7, float %2009)  ; Saturate(value)
  %2011 = fmul fast float %2010, 0x3FF1C71C80000000
  %2012 = call float @dx.op.binary.f32(i32 36, float %2008, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2013 = fsub fast float 1.000000e+00, %2011
  %2014 = call float @dx.op.unary.f32(i32 7, float %2013)  ; Saturate(value)
  %2015 = fmul fast float %2014, %1997
  %2016 = fmul fast float %2014, %1998
  %2017 = fmul fast float %2014, %1999
  %2018 = call float @dx.op.unary.f32(i32 7, float %2015)  ; Saturate(value)
  %2019 = call float @dx.op.unary.f32(i32 7, float %2016)  ; Saturate(value)
  %2020 = call float @dx.op.unary.f32(i32 7, float %2017)  ; Saturate(value)
  %2021 = fmul fast float %2011, %1997
  %2022 = fmul fast float %2011, %1998
  %2023 = fmul fast float %2011, %1999
  %2024 = fadd fast float %2021, %2012
  %2025 = fadd fast float %2022, %2012
  %2026 = fadd fast float %2023, %2012
  %2027 = call float @dx.op.unary.f32(i32 7, float %2024)  ; Saturate(value)
  %2028 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2029 = call float @dx.op.unary.f32(i32 7, float %2026)  ; Saturate(value)
  %2030 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %2031 = extractvalue %dx.types.CBufRet.i32 %2030, 3
  %2032 = extractvalue %dx.types.CBufRet.i32 %2030, 2
  %2033 = add i32 %2032, 0
  %2034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2035 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2034, %dx.types.Handle %80, float %1945, float %1946, float undef, float undef, i32 0, i32 0, i32 undef, float %1908, float %1909, float undef, float %1912, float %1913, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2036 = extractvalue %dx.types.ResRet.f32 %2035, 0
  %2037 = extractvalue %dx.types.ResRet.f32 %2035, 1
  %2038 = extractvalue %dx.types.ResRet.f32 %2035, 2
  %2039 = extractvalue %dx.types.ResRet.f32 %2035, 3
  %2040 = and i32 %2031, 255
  %2041 = uitofp i32 %2040 to float
  %2042 = lshr i32 %2031, 8
  %2043 = and i32 %2042, 255
  %2044 = uitofp i32 %2043 to float
  %2045 = lshr i32 %2031, 16
  %2046 = and i32 %2045, 255
  %2047 = uitofp i32 %2046 to float
  %2048 = fmul fast float %2047, 0x3F70101000000000
  %2049 = fmul fast float %2036, %2041
  %2050 = fadd fast float %2049, %2044
  %2051 = fmul fast float %2050, 0x3F70101000000000
  %2052 = fadd fast float %2037, -5.000000e-01
  %2053 = fadd fast float %2039, -5.000000e-01
  %2054 = fmul fast float %2052, %2048
  %2055 = fmul fast float %2053, %2048
  %2056 = fadd fast float %2054, 5.000000e-01
  %2057 = fadd fast float %2055, 5.000000e-01
  %2058 = fmul fast float %2056, 2.000000e+00
  %2059 = fadd fast float %2058, -1.000000e+00
  %2060 = fmul fast float %2057, 2.000000e+00
  %2061 = fadd fast float %2060, -1.000000e+00
  %2062 = fadd fast float %2059, %2061
  %2063 = fmul fast float %2062, 5.000000e-01
  %2064 = fsub fast float %2059, %2061
  %2065 = fmul fast float %2064, 5.000000e-01
  %2066 = call float @dx.op.unary.f32(i32 6, float %2063)  ; FAbs(value)
  %2067 = fsub fast float 1.000000e+00, %2066
  %2068 = call float @dx.op.unary.f32(i32 6, float %2065)  ; FAbs(value)
  %2069 = fsub fast float %2067, %2068
  %2070 = call float @dx.op.dot3.f32(i32 55, float %2063, float %2065, float %2069, float %2063, float %2065, float %2069)  ; Dot3(ax,ay,az,bx,by,bz)
  %2071 = call float @dx.op.unary.f32(i32 25, float %2070)  ; Rsqrt(value)
  %2072 = fmul fast float %2063, %2071
  %2073 = fmul fast float %2065, %2071
  %2074 = select i1 %1901, i32 %1891, i32 %1892
  %2075 = select i1 %1899, i32 %1890, i32 %2074
  %2076 = sitofp i32 %2075 to float
  %2077 = fmul fast float %2069, %2076
  %2078 = fmul fast float %2077, %2071
  %2079 = select i1 %1901, float %2078, float %2073
  %2080 = select i1 %1901, float %2073, float %2078
  %2081 = select i1 %1899, float %2078, float %2072
  %2082 = select i1 %1899, float %2073, float %2079
  %2083 = select i1 %1899, float %2072, float %2080
  %2084 = fsub fast float %2018, %1581
  %2085 = fsub fast float %2019, %1582
  %2086 = fsub fast float %2020, %1583
  %2087 = fmul fast float %2084, %1990
  %2088 = fmul fast float %2085, %1990
  %2089 = fmul fast float %2086, %1990
  %2090 = fadd fast float %2087, %1581
  %2091 = fadd fast float %2088, %1582
  %2092 = fadd fast float %2089, %1583
  %2093 = fsub fast float %2027, %1541
  %2094 = fsub fast float %2028, %1542
  %2095 = fsub fast float %2029, %1543
  %2096 = fmul fast float %2093, %1990
  %2097 = fmul fast float %2094, %1990
  %2098 = fmul fast float %2095, %1990
  %2099 = fadd fast float %2096, %1541
  %2100 = fadd fast float %2097, %1542
  %2101 = fadd fast float %2098, %1543
  %2102 = fadd fast float %2081, %1520
  %2103 = fadd fast float %2082, %1521
  %2104 = fadd fast float %2083, %1522
  %2105 = call float @dx.op.dot3.f32(i32 55, float %2102, float %2103, float %2104, float %2102, float %2103, float %2104)  ; Dot3(ax,ay,az,bx,by,bz)
  %2106 = call float @dx.op.unary.f32(i32 25, float %2105)  ; Rsqrt(value)
  %2107 = fmul fast float %2102, %2106
  %2108 = fmul fast float %2103, %2106
  %2109 = fmul fast float %2104, %2106
  %2110 = fsub fast float %2107, %1520
  %2111 = fsub fast float %2108, %1521
  %2112 = fsub fast float %2109, %1522
  %2113 = fmul fast float %2110, %1990
  %2114 = fmul fast float %2111, %1990
  %2115 = fmul fast float %2112, %1990
  %2116 = fadd fast float %2113, %1520
  %2117 = fadd fast float %2114, %1521
  %2118 = fadd fast float %2115, %1522
  %2119 = call float @dx.op.binary.f32(i32 36, float %1504, float %2038)  ; FMin(a,b)
  %2120 = fsub fast float %2119, %1504
  %2121 = fmul fast float %2120, %1990
  %2122 = fadd fast float %2121, %1504
  %2123 = fsub fast float %2051, %1544
  %2124 = fmul fast float %2123, %1990
  %2125 = fadd fast float %2124, %1544
  br label %2126

; <label>:2126                                    ; preds = %1988, %1950, %1845
  %2127 = phi float [ %2099, %1988 ], [ %1541, %1950 ], [ %1541, %1845 ]
  %2128 = phi float [ %2100, %1988 ], [ %1542, %1950 ], [ %1542, %1845 ]
  %2129 = phi float [ %2101, %1988 ], [ %1543, %1950 ], [ %1543, %1845 ]
  %2130 = phi float [ %2116, %1988 ], [ %1520, %1950 ], [ %1520, %1845 ]
  %2131 = phi float [ %2117, %1988 ], [ %1521, %1950 ], [ %1521, %1845 ]
  %2132 = phi float [ %2118, %1988 ], [ %1522, %1950 ], [ %1522, %1845 ]
  %2133 = phi float [ %2090, %1988 ], [ %1581, %1950 ], [ %1581, %1845 ]
  %2134 = phi float [ %2091, %1988 ], [ %1582, %1950 ], [ %1582, %1845 ]
  %2135 = phi float [ %2092, %1988 ], [ %1583, %1950 ], [ %1583, %1845 ]
  %2136 = phi float [ %2125, %1988 ], [ %1544, %1950 ], [ %1544, %1845 ]
  %2137 = phi float [ %2122, %1988 ], [ %1504, %1950 ], [ %1504, %1845 ]
  br i1 %1843, label %2138, label %2427

; <label>:2138                                    ; preds = %2126
  %2139 = call float @dx.op.unary.f32(i32 23, float %2137)  ; Log(value)
  %2140 = fmul fast float %2139, 4.000000e+00
  %2141 = call float @dx.op.unary.f32(i32 21, float %2140)  ; Exp(value)
  %2142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %2143 = extractvalue %dx.types.CBufRet.f32 %2142, 0
  %2144 = fmul fast float %2143, %1850
  %2145 = fmul fast float %2143, %1851
  %2146 = fmul fast float %2143, %1852
  %2147 = call float @dx.op.unary.f32(i32 6, float %87)  ; FAbs(value)
  %2148 = call float @dx.op.unary.f32(i32 6, float %88)  ; FAbs(value)
  %2149 = call float @dx.op.unary.f32(i32 6, float %89)  ; FAbs(value)
  %2150 = call float @dx.op.unary.f32(i32 23, float %2147)  ; Log(value)
  %2151 = call float @dx.op.unary.f32(i32 23, float %2148)  ; Log(value)
  %2152 = call float @dx.op.unary.f32(i32 23, float %2149)  ; Log(value)
  %2153 = fmul fast float %2150, 4.000000e+00
  %2154 = fmul fast float %2151, 4.000000e+00
  %2155 = fmul fast float %2152, 4.000000e+00
  %2156 = call float @dx.op.unary.f32(i32 21, float %2153)  ; Exp(value)
  %2157 = call float @dx.op.unary.f32(i32 21, float %2154)  ; Exp(value)
  %2158 = call float @dx.op.unary.f32(i32 21, float %2155)  ; Exp(value)
  %2159 = fadd fast float %2157, %2156
  %2160 = fadd fast float %2159, %2158
  %2161 = fdiv fast float 1.000000e+00, %2160
  %2162 = fmul fast float %2161, %2156
  %2163 = fcmp fast ogt float %87, 0.000000e+00
  %2164 = fcmp fast ogt float %88, 0.000000e+00
  %2165 = fcmp fast ogt float %89, 0.000000e+00
  %2166 = fcmp fast olt float %87, 0.000000e+00
  %2167 = fcmp fast olt float %88, 0.000000e+00
  %2168 = fcmp fast olt float %89, 0.000000e+00
  %2169 = zext i1 %2163 to i32
  %2170 = zext i1 %2164 to i32
  %2171 = zext i1 %2165 to i32
  %2172 = zext i1 %2166 to i32
  %2173 = zext i1 %2167 to i32
  %2174 = zext i1 %2168 to i32
  %2175 = sub nsw i32 %2169, %2172
  %2176 = sub nsw i32 %2170, %2173
  %2177 = sub nsw i32 %2171, %2174
  %2178 = call float @dx.op.unary.f32(i32 83, float %2144)  ; DerivCoarseX(value)
  %2179 = call float @dx.op.unary.f32(i32 83, float %2145)  ; DerivCoarseX(value)
  %2180 = call float @dx.op.unary.f32(i32 83, float %2146)  ; DerivCoarseX(value)
  %2181 = call float @dx.op.unary.f32(i32 84, float %2144)  ; DerivCoarseY(value)
  %2182 = call float @dx.op.unary.f32(i32 84, float %2145)  ; DerivCoarseY(value)
  %2183 = call float @dx.op.unary.f32(i32 84, float %2146)  ; DerivCoarseY(value)
  %2184 = fcmp fast ole float %204, %2162
  %2185 = fmul fast float %2161, %2159
  %2186 = fcmp fast ole float %204, %2185
  %2187 = select i1 %2186, float %2146, float %2144
  %2188 = select i1 %2186, float %2144, float %2145
  %2189 = select i1 %2184, float %2145, float %2187
  %2190 = select i1 %2184, float %2146, float %2188
  %2191 = select i1 %2186, float %2180, float %2178
  %2192 = select i1 %2186, float %2178, float %2179
  %2193 = select i1 %2184, float %2179, float %2191
  %2194 = select i1 %2184, float %2180, float %2192
  %2195 = select i1 %2186, float %2183, float %2181
  %2196 = select i1 %2186, float %2181, float %2182
  %2197 = select i1 %2184, float %2182, float %2195
  %2198 = select i1 %2184, float %2183, float %2196
  %2199 = call float @dx.op.unary.f32(i32 27, float %2189)  ; Round_ni(value)
  %2200 = call float @dx.op.unary.f32(i32 27, float %2190)  ; Round_ni(value)
  %2201 = fptosi float %2199 to i32
  %2202 = fptosi float %2200 to i32
  %2203 = xor i32 %2202, %2201
  %2204 = sitofp i32 %2203 to float
  %2205 = fptosi float %2204 to i32
  %2206 = sitofp i32 %2205 to float
  %2207 = fmul fast float %2206, 0x3FE3C6EF40000000
  %2208 = frem fast float %2199, 2.560000e+02
  %2209 = frem fast float %2200, 2.560000e+02
  %2210 = fptoui float %2208 to i32
  %2211 = fptoui float %2209 to i32
  %2212 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %2210, i32 %2211, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2213 = extractvalue %dx.types.ResRet.f32 %2212, 0
  %2214 = extractvalue %dx.types.ResRet.f32 %2212, 1
  %2215 = extractvalue %dx.types.ResRet.f32 %2212, 2
  %2216 = fadd fast float %2213, %2207
  %2217 = fadd fast float %2214, %2207
  %2218 = fadd fast float %2215, %2207
  %2219 = call float @dx.op.unary.f32(i32 22, float %2216)  ; Frc(value)
  %2220 = call float @dx.op.unary.f32(i32 22, float %2217)  ; Frc(value)
  %2221 = call float @dx.op.unary.f32(i32 22, float %2218)  ; Frc(value)
  %2222 = fmul fast float %2221, 0x401921FB60000000
  %2223 = call float @dx.op.unary.f32(i32 13, float %2222)  ; Sin(value)
  %2224 = call float @dx.op.unary.f32(i32 12, float %2222)  ; Cos(value)
  %2225 = fsub fast float -0.000000e+00, %2224
  %2226 = fmul fast float %2224, %2189
  %2227 = call float @dx.op.tertiary.f32(i32 46, float %2223, float %2190, float %2226)  ; FMad(a,b,c)
  %2228 = fmul fast float %2223, %2189
  %2229 = call float @dx.op.tertiary.f32(i32 46, float %2225, float %2190, float %2228)  ; FMad(a,b,c)
  %2230 = fadd fast float %2227, %2219
  %2231 = fadd fast float %2229, %2220
  %2232 = extractvalue %dx.types.CBufRet.f32 %2142, 3
  %2233 = bitcast float %2232 to i32
  %2234 = icmp eq i32 %2233, 0
  br i1 %2234, label %2273, label %2235

; <label>:2235                                    ; preds = %2138
  %2236 = add i32 %2233, 0
  %2237 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2236, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2238 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2237, %dx.types.Handle %81, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float %2193, float %2194, float undef, float %2197, float %2198, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2239 = extractvalue %dx.types.ResRet.f32 %2238, 0
  %2240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %2241 = extractvalue %dx.types.CBufRet.f32 %2240, 1
  %2242 = extractvalue %dx.types.CBufRet.f32 %2240, 2
  %2243 = fsub fast float 1.000000e+00, %1841
  %2244 = call float @dx.op.binary.f32(i32 35, float %2243, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2245 = bitcast float %1841 to i32
  %2246 = sitofp i32 %2245 to float
  %2247 = fadd fast float %2246, 0xC1CFBF8940000000
  %2248 = fmul fast float %2242, %2247
  %2249 = fadd fast float %2248, 0x41CFBF8940000000
  %2250 = fptosi float %2249 to i32
  %2251 = bitcast i32 %2250 to float
  %2252 = bitcast float %2244 to i32
  %2253 = sitofp i32 %2252 to float
  %2254 = fadd fast float %2253, 0xC1CFBF8940000000
  %2255 = fmul fast float %2254, %2242
  %2256 = fadd fast float %2255, 0x41CFBF8940000000
  %2257 = fptosi float %2256 to i32
  %2258 = bitcast i32 %2257 to float
  %2259 = fmul fast float %2251, %2241
  %2260 = fmul fast float %2258, %2241
  %2261 = fsub fast float %2244, %2259
  %2262 = fadd fast float %2260, %2244
  %2263 = call float @dx.op.unary.f32(i32 7, float %2261)  ; Saturate(value)
  %2264 = call float @dx.op.unary.f32(i32 7, float %2262)  ; Saturate(value)
  %2265 = fsub fast float %2239, %2263
  %2266 = fsub fast float %2264, %2263
  %2267 = bitcast float %2266 to i32
  %2268 = sub nsw i32 2129859010, %2267
  %2269 = bitcast i32 %2268 to float
  %2270 = fmul fast float %2269, %2265
  %2271 = call float @dx.op.unary.f32(i32 7, float %2270)  ; Saturate(value)
  %2272 = fcmp fast olt float %2271, 0x3F70101020000000
  br i1 %2272, label %2427, label %2273

; <label>:2273                                    ; preds = %2235, %2138
  %2274 = phi float [ %2271, %2235 ], [ %1841, %2138 ]
  %2275 = fmul fast float %2274, %2141
  %2276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %2277 = extractvalue %dx.types.CBufRet.i32 %2276, 1
  %2278 = extractvalue %dx.types.CBufRet.i32 %2276, 0
  %2279 = add i32 %2278, 0
  %2280 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2279, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2281 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2280, %dx.types.Handle %80, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float %2193, float %2194, float undef, float %2197, float %2198, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2282 = extractvalue %dx.types.ResRet.f32 %2281, 0
  %2283 = extractvalue %dx.types.ResRet.f32 %2281, 1
  %2284 = extractvalue %dx.types.ResRet.f32 %2281, 2
  %2285 = extractvalue %dx.types.ResRet.f32 %2281, 3
  %2286 = and i32 %2277, 255
  %2287 = uitofp i32 %2286 to float
  %2288 = lshr i32 %2277, 8
  %2289 = and i32 %2288, 255
  %2290 = uitofp i32 %2289 to float
  %2291 = fmul fast float %2285, %2287
  %2292 = fadd fast float %2291, %2290
  %2293 = fmul fast float %2292, 0x3F70101000000000
  %2294 = fadd fast float %2293, 0xBFB99999A0000000
  %2295 = call float @dx.op.unary.f32(i32 7, float %2294)  ; Saturate(value)
  %2296 = fmul fast float %2295, 0x3FF1C71C80000000
  %2297 = call float @dx.op.binary.f32(i32 36, float %2293, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2298 = fsub fast float 1.000000e+00, %2296
  %2299 = call float @dx.op.unary.f32(i32 7, float %2298)  ; Saturate(value)
  %2300 = fmul fast float %2299, %2282
  %2301 = fmul fast float %2299, %2283
  %2302 = fmul fast float %2299, %2284
  %2303 = call float @dx.op.unary.f32(i32 7, float %2300)  ; Saturate(value)
  %2304 = call float @dx.op.unary.f32(i32 7, float %2301)  ; Saturate(value)
  %2305 = call float @dx.op.unary.f32(i32 7, float %2302)  ; Saturate(value)
  %2306 = fmul fast float %2296, %2282
  %2307 = fmul fast float %2296, %2283
  %2308 = fmul fast float %2296, %2284
  %2309 = fadd fast float %2306, %2297
  %2310 = fadd fast float %2307, %2297
  %2311 = fadd fast float %2308, %2297
  %2312 = call float @dx.op.unary.f32(i32 7, float %2309)  ; Saturate(value)
  %2313 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2314 = call float @dx.op.unary.f32(i32 7, float %2311)  ; Saturate(value)
  %2315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %2316 = extractvalue %dx.types.CBufRet.i32 %2315, 3
  %2317 = extractvalue %dx.types.CBufRet.i32 %2315, 2
  %2318 = add i32 %2317, 0
  %2319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2318, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2320 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2319, %dx.types.Handle %80, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float %2193, float %2194, float undef, float %2197, float %2198, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2321 = extractvalue %dx.types.ResRet.f32 %2320, 0
  %2322 = extractvalue %dx.types.ResRet.f32 %2320, 1
  %2323 = extractvalue %dx.types.ResRet.f32 %2320, 2
  %2324 = extractvalue %dx.types.ResRet.f32 %2320, 3
  %2325 = and i32 %2316, 255
  %2326 = uitofp i32 %2325 to float
  %2327 = lshr i32 %2316, 8
  %2328 = and i32 %2327, 255
  %2329 = uitofp i32 %2328 to float
  %2330 = lshr i32 %2316, 16
  %2331 = and i32 %2330, 255
  %2332 = uitofp i32 %2331 to float
  %2333 = fmul fast float %2332, 0x3F70101000000000
  %2334 = fmul fast float %2321, %2326
  %2335 = fadd fast float %2334, %2329
  %2336 = fmul fast float %2335, 0x3F70101000000000
  %2337 = fadd fast float %2322, -5.000000e-01
  %2338 = fadd fast float %2324, -5.000000e-01
  %2339 = fmul fast float %2337, %2333
  %2340 = fmul fast float %2338, %2333
  %2341 = fadd fast float %2339, 5.000000e-01
  %2342 = fadd fast float %2340, 5.000000e-01
  %2343 = fmul fast float %2341, 2.000000e+00
  %2344 = fadd fast float %2343, -1.000000e+00
  %2345 = fmul fast float %2342, 2.000000e+00
  %2346 = fadd fast float %2345, -1.000000e+00
  %2347 = fadd fast float %2344, %2346
  %2348 = fmul fast float %2347, 5.000000e-01
  %2349 = fsub fast float %2344, %2346
  %2350 = fmul fast float %2349, 5.000000e-01
  %2351 = call float @dx.op.unary.f32(i32 6, float %2348)  ; FAbs(value)
  %2352 = fsub fast float 1.000000e+00, %2351
  %2353 = call float @dx.op.unary.f32(i32 6, float %2350)  ; FAbs(value)
  %2354 = fsub fast float %2352, %2353
  %2355 = call float @dx.op.dot3.f32(i32 55, float %2348, float %2350, float %2354, float %2348, float %2350, float %2354)  ; Dot3(ax,ay,az,bx,by,bz)
  %2356 = call float @dx.op.unary.f32(i32 25, float %2355)  ; Rsqrt(value)
  %2357 = fmul fast float %2348, %2356
  %2358 = fmul fast float %2350, %2356
  %2359 = select i1 %2186, i32 %2176, i32 %2177
  %2360 = select i1 %2184, i32 %2175, i32 %2359
  %2361 = sitofp i32 %2360 to float
  %2362 = fmul fast float %2354, %2361
  %2363 = fmul fast float %2362, %2356
  %2364 = select i1 %2186, float %2363, float %2358
  %2365 = select i1 %2186, float %2358, float %2363
  %2366 = select i1 %2184, float %2363, float %2357
  %2367 = select i1 %2184, float %2358, float %2364
  %2368 = select i1 %2184, float %2357, float %2365
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 0
  %2371 = fptoui float %2370 to i32
  %2372 = add i32 %2371, 0
  %2373 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2372, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2374 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2373, %dx.types.Handle %80, float %2230, float %2231, float undef, float undef, i32 0, i32 0, i32 undef, float %2193, float %2194, float undef, float %2197, float %2198, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2375 = extractvalue %dx.types.ResRet.f32 %2374, 0
  %2376 = fsub fast float %2303, %2133
  %2377 = fsub fast float %2304, %2134
  %2378 = fsub fast float %2305, %2135
  %2379 = fmul fast float %2376, %2275
  %2380 = fmul fast float %2377, %2275
  %2381 = fmul fast float %2378, %2275
  %2382 = fadd fast float %2379, %2133
  %2383 = fadd fast float %2380, %2134
  %2384 = fadd fast float %2381, %2135
  %2385 = fsub fast float %2312, %2127
  %2386 = fsub fast float %2313, %2128
  %2387 = fsub fast float %2314, %2129
  %2388 = fmul fast float %2385, %2275
  %2389 = fmul fast float %2386, %2275
  %2390 = fmul fast float %2387, %2275
  %2391 = fadd fast float %2388, %2127
  %2392 = fadd fast float %2389, %2128
  %2393 = fadd fast float %2390, %2129
  %2394 = fadd fast float %2366, %2130
  %2395 = fadd fast float %2367, %2131
  %2396 = fadd fast float %2368, %2132
  %2397 = call float @dx.op.dot3.f32(i32 55, float %2394, float %2395, float %2396, float %2394, float %2395, float %2396)  ; Dot3(ax,ay,az,bx,by,bz)
  %2398 = call float @dx.op.unary.f32(i32 25, float %2397)  ; Rsqrt(value)
  %2399 = fmul fast float %2398, %2394
  %2400 = fmul fast float %2398, %2395
  %2401 = fmul fast float %2398, %2396
  %2402 = fsub fast float %2399, %2130
  %2403 = fsub fast float %2400, %2131
  %2404 = fsub fast float %2401, %2132
  %2405 = fmul fast float %2402, %2275
  %2406 = fmul fast float %2403, %2275
  %2407 = fmul fast float %2404, %2275
  %2408 = fadd fast float %2405, %2130
  %2409 = fadd fast float %2406, %2131
  %2410 = fadd fast float %2407, %2132
  %2411 = call float @dx.op.binary.f32(i32 36, float %2137, float %2323)  ; FMin(a,b)
  %2412 = fsub fast float %2411, %2137
  %2413 = fmul fast float %2412, %2275
  %2414 = fadd fast float %2413, %2137
  %2415 = fsub fast float %2336, %2136
  %2416 = fmul fast float %2415, %2275
  %2417 = fadd fast float %2416, %2136
  %2418 = fsub fast float %2375, %1585
  %2419 = fsub fast float %2375, %1586
  %2420 = fsub fast float %2375, %1587
  %2421 = fmul fast float %2418, %2275
  %2422 = fmul fast float %2419, %2275
  %2423 = fmul fast float %2420, %2275
  %2424 = fadd fast float %2421, %1585
  %2425 = fadd fast float %2422, %1586
  %2426 = fadd fast float %2423, %1587
  br label %2427

; <label>:2427                                    ; preds = %2273, %2235, %2126, %1833
  %2428 = phi float [ %2391, %2273 ], [ %2127, %2235 ], [ %2127, %2126 ], [ %1541, %1833 ]
  %2429 = phi float [ %2392, %2273 ], [ %2128, %2235 ], [ %2128, %2126 ], [ %1542, %1833 ]
  %2430 = phi float [ %2393, %2273 ], [ %2129, %2235 ], [ %2129, %2126 ], [ %1543, %1833 ]
  %2431 = phi float [ %2408, %2273 ], [ %2130, %2235 ], [ %2130, %2126 ], [ %1520, %1833 ]
  %2432 = phi float [ %2409, %2273 ], [ %2131, %2235 ], [ %2131, %2126 ], [ %1521, %1833 ]
  %2433 = phi float [ %2410, %2273 ], [ %2132, %2235 ], [ %2132, %2126 ], [ %1522, %1833 ]
  %2434 = phi float [ %2382, %2273 ], [ %2133, %2235 ], [ %2133, %2126 ], [ %1581, %1833 ]
  %2435 = phi float [ %2383, %2273 ], [ %2134, %2235 ], [ %2134, %2126 ], [ %1582, %1833 ]
  %2436 = phi float [ %2384, %2273 ], [ %2135, %2235 ], [ %2135, %2126 ], [ %1583, %1833 ]
  %2437 = phi float [ %2424, %2273 ], [ %1585, %2235 ], [ %1585, %2126 ], [ %1585, %1833 ]
  %2438 = phi float [ %2425, %2273 ], [ %1586, %2235 ], [ %1586, %2126 ], [ %1586, %1833 ]
  %2439 = phi float [ %2426, %2273 ], [ %1587, %2235 ], [ %1587, %2126 ], [ %1587, %1833 ]
  %2440 = phi float [ %2417, %2273 ], [ %2136, %2235 ], [ %2136, %2126 ], [ %1544, %1833 ]
  %2441 = phi float [ %2414, %2273 ], [ %2137, %2235 ], [ %2137, %2126 ], [ %1504, %1833 ]
  %2442 = fcmp fast une float %1838, 0.000000e+00
  %2443 = call float @dx.op.dot3.f32(i32 55, float %132, float %133, float %134, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %2444 = call float @dx.op.unary.f32(i32 25, float %2443)  ; Rsqrt(value)
  br i1 %2442, label %2452, label %2445

; <label>:2445                                    ; preds = %2427
  %2446 = fmul fast float %2444, %132
  %2447 = fmul fast float %2444, %133
  %2448 = fmul fast float %2444, %134
  %2449 = fsub fast float -0.000000e+00, %2446
  %2450 = fsub fast float -0.000000e+00, %2447
  %2451 = fsub fast float -0.000000e+00, %2448
  br label %2813

; <label>:2452                                    ; preds = %2427
  %2453 = fmul fast float %132, %2444
  %2454 = fsub fast float -0.000000e+00, %2453
  %2455 = fmul fast float %133, %2444
  %2456 = fsub fast float -0.000000e+00, %2455
  %2457 = fmul fast float %134, %2444
  %2458 = fsub fast float -0.000000e+00, %2457
  %2459 = call float @dx.op.dot3.f32(i32 55, float %2454, float %2456, float %2458, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %2460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2461 = fmul fast float %1838, 2.500000e+00
  %2462 = call float @dx.op.unary.f32(i32 7, float %2461)  ; Saturate(value)
  %2463 = fmul fast float %1838, 0x4013FFFFE0000000
  %2464 = fadd fast float %2463, 0xBFFFFFFFE0000000
  %2465 = call float @dx.op.unary.f32(i32 7, float %2464)  ; Saturate(value)
  %2466 = fmul fast float %1838, 0x4004000020000000
  %2467 = fadd fast float %2466, 0xBFF8000040000000
  %2468 = call float @dx.op.unary.f32(i32 7, float %2467)  ; Saturate(value)
  %2469 = call float @dx.op.unary.f32(i32 7, float %2462)  ; Saturate(value)
  %2470 = fmul fast float %1523, 1.000000e+01
  %2471 = call float @dx.op.unary.f32(i32 7, float %2470)  ; Saturate(value)
  %2472 = fmul fast float %2471, 2.000000e+00
  %2473 = fsub fast float 3.000000e+00, %2472
  %2474 = fmul fast float %2471, %2471
  %2475 = fmul fast float %2474, %2473
  %2476 = fsub fast float 1.000000e+00, %2475
  %2477 = fsub fast float 0x3FE3333340000000, %2440
  %2478 = fmul fast float %2477, 0x400AAAAAA0000000
  %2479 = call float @dx.op.unary.f32(i32 7, float %2478)  ; Saturate(value)
  %2480 = fmul fast float %2476, %2479
  %2481 = fmul fast float %2434, 0x3FEA2B8620000000
  %2482 = fmul fast float %2435, 0x3FEA2B8620000000
  %2483 = fmul fast float %2436, 0x3FEA2B8620000000
  %2484 = fadd fast float %2481, 0x3FC81DFBA0000000
  %2485 = fmul fast float %2484, %2434
  %2486 = fadd fast float %2485, 0x3F910E6020000000
  %2487 = fadd fast float %2482, 0x3FC81DFBA0000000
  %2488 = fmul fast float %2487, %2435
  %2489 = fadd fast float %2488, 0x3F910E6020000000
  %2490 = fadd fast float %2483, 0x3FC81DFBA0000000
  %2491 = fmul fast float %2490, %2436
  %2492 = fadd fast float %2491, 0x3F910E6020000000
  %2493 = call float @dx.op.unary.f32(i32 7, float %2486)  ; Saturate(value)
  %2494 = call float @dx.op.unary.f32(i32 7, float %2489)  ; Saturate(value)
  %2495 = call float @dx.op.unary.f32(i32 7, float %2492)  ; Saturate(value)
  %2496 = fsub fast float %2493, %2434
  %2497 = fsub fast float %2494, %2435
  %2498 = fsub fast float %2495, %2436
  %2499 = fmul fast float %2496, %2469
  %2500 = fmul fast float %2499, %2480
  %2501 = fmul fast float %2497, %2469
  %2502 = fmul fast float %2501, %2480
  %2503 = fmul fast float %2498, %2469
  %2504 = fmul fast float %2503, %2480
  %2505 = fadd fast float %2500, %2434
  %2506 = fadd fast float %2502, %2435
  %2507 = fadd fast float %2504, %2436
  %2508 = fmul fast float %2441, %2441
  %2509 = fmul fast float %2508, %2508
  %2510 = fadd fast float %2465, 1.000000e+00
  %2511 = fsub fast float %2510, %2480
  %2512 = call float @dx.op.unary.f32(i32 7, float %2511)  ; Saturate(value)
  %2513 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2514 = call float @dx.op.unary.f32(i32 7, float %2513)  ; Saturate(value)
  %2515 = fsub fast float 1.000000e+00, %2509
  %2516 = call float @dx.op.binary.f32(i32 36, float %2512, float %2515)  ; FMin(a,b)
  %2517 = call float @dx.op.unary.f32(i32 7, float %2468)  ; Saturate(value)
  %2518 = call float @dx.op.binary.f32(i32 35, float %2516, float %2517)  ; FMax(a,b)
  %2519 = fadd fast float %2514, 0xBFE4CCCCC0000000
  %2520 = fmul fast float %2519, 0x4006DB6DA0000000
  %2521 = call float @dx.op.unary.f32(i32 7, float %2520)  ; Saturate(value)
  %2522 = fmul fast float %2521, 2.000000e+00
  %2523 = fsub fast float 3.000000e+00, %2522
  %2524 = bitcast float %2428 to i32
  %2525 = ashr i32 %2524, 1
  %2526 = add nsw i32 %2525, 532487669
  %2527 = bitcast i32 %2526 to float
  %2528 = fsub fast float 1.000000e+00, %2527
  %2529 = bitcast float %2528 to i32
  %2530 = sub nsw i32 2129859010, %2529
  %2531 = bitcast i32 %2530 to float
  %2532 = fmul fast float %2531, 2.000000e+00
  %2533 = bitcast float %2429 to i32
  %2534 = ashr i32 %2533, 1
  %2535 = add nsw i32 %2534, 532487669
  %2536 = bitcast i32 %2535 to float
  %2537 = fsub fast float 1.000000e+00, %2536
  %2538 = bitcast float %2537 to i32
  %2539 = sub nsw i32 2129859010, %2538
  %2540 = bitcast i32 %2539 to float
  %2541 = fmul fast float %2540, 2.000000e+00
  %2542 = bitcast float %2430 to i32
  %2543 = ashr i32 %2542, 1
  %2544 = add nsw i32 %2543, 532487669
  %2545 = bitcast i32 %2544 to float
  %2546 = fsub fast float 1.000000e+00, %2545
  %2547 = bitcast float %2546 to i32
  %2548 = sub nsw i32 2129859010, %2547
  %2549 = bitcast i32 %2548 to float
  %2550 = fmul fast float %2549, 2.000000e+00
  %2551 = fsub fast float 0x4002A9FBE0000000, %2532
  %2552 = fadd fast float %2532, 0x3FD54FDF00000000
  %2553 = bitcast float %2552 to i32
  %2554 = sub nsw i32 2129859010, %2553
  %2555 = bitcast i32 %2554 to float
  %2556 = fmul fast float %2555, %2551
  %2557 = fmul fast float %2556, %2556
  %2558 = fsub fast float 0x4002A9FBE0000000, %2541
  %2559 = fadd fast float %2541, 0x3FD54FDF00000000
  %2560 = bitcast float %2559 to i32
  %2561 = sub nsw i32 2129859010, %2560
  %2562 = bitcast i32 %2561 to float
  %2563 = fmul fast float %2562, %2558
  %2564 = fmul fast float %2563, %2563
  %2565 = fsub fast float 0x4002A9FBE0000000, %2550
  %2566 = fadd fast float %2550, 0x3FD54FDF00000000
  %2567 = bitcast float %2566 to i32
  %2568 = sub nsw i32 2129859010, %2567
  %2569 = bitcast i32 %2568 to float
  %2570 = fmul fast float %2569, %2565
  %2571 = fmul fast float %2570, %2570
  %2572 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2557)  ; FMax(a,b)
  %2573 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2564)  ; FMax(a,b)
  %2574 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2571)  ; FMax(a,b)
  %2575 = fsub fast float 1.000000e+00, %2459
  %2576 = fadd fast float %2575, %2476
  %2577 = call float @dx.op.unary.f32(i32 7, float %2576)  ; Saturate(value)
  %2578 = fsub fast float 1.000000e+00, %1670
  %2579 = fmul fast float %2518, %2578
  %2580 = fmul fast float %2521, %2521
  %2581 = fmul fast float %2580, %2579
  %2582 = fmul fast float %2581, %2523
  %2583 = fmul fast float %2578, 0xBFE99999A0000000
  %2584 = fmul fast float %2583, %2469
  %2585 = fmul fast float %2584, %2480
  %2586 = fadd fast float %2585, 1.000000e+00
  %2587 = fadd fast float %2440, -1.000000e+00
  %2588 = fmul fast float %2586, %2587
  %2589 = fadd fast float %2588, 1.000000e+00
  %2590 = fsub fast float %2572, %2428
  %2591 = fsub fast float %2573, %2429
  %2592 = fsub fast float %2574, %2430
  %2593 = fmul fast float %2582, %2590
  %2594 = fmul fast float %2582, %2591
  %2595 = fmul fast float %2582, %2592
  %2596 = fadd fast float %2593, %2428
  %2597 = fadd fast float %2594, %2429
  %2598 = fadd fast float %2595, %2430
  %2599 = fsub fast float %87, %2431
  %2600 = fsub fast float %88, %2432
  %2601 = fsub fast float %89, %2433
  %2602 = fmul fast float %2582, %2599
  %2603 = fmul fast float %2582, %2600
  %2604 = fmul fast float %2582, %2601
  %2605 = fadd fast float %2602, %2431
  %2606 = fadd fast float %2603, %2432
  %2607 = fadd fast float %2604, %2433
  %2608 = fmul fast float %2582, %2577
  %2609 = call float @dx.op.unary.f32(i32 7, float %2589)  ; Saturate(value)
  %2610 = fsub fast float 1.000000e+00, %2609
  %2611 = fmul fast float %2608, %2610
  %2612 = fadd fast float %2611, %2609
  %2613 = fsub fast float 1.000000e+00, %2441
  %2614 = fmul fast float %2582, %2613
  %2615 = fadd fast float %2614, %2441
  %2616 = fcmp fast une float %1839, 0.000000e+00
  %2617 = fcmp fast ogt float %2514, 0x3FE4CCCCC0000000
  %2618 = and i1 %2616, %2617
  br i1 %2618, label %2619, label %2805

; <label>:2619                                    ; preds = %2452
  %2620 = extractvalue %dx.types.CBufRet.f32 %2460, 1
  %2621 = fadd fast float %2620, %133
  %2622 = extractvalue %dx.types.CBufRet.f32 %2460, 0
  %2623 = fadd fast float %2622, %132
  %2624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2625 = extractvalue %dx.types.CBufRet.f32 %2624, 3
  %2626 = fadd fast float %2625, 0x3FC0A3D700000000
  %2627 = fmul fast float %2626, 0x3FF6666660000000
  %2628 = fmul fast float %2625, 0x3FF2978D40000000
  %2629 = fmul fast float %2625, 0x3FF5BA5E40000000
  %2630 = fmul fast float %2625, 0x3FF94FDF40000000
  %2631 = call float @dx.op.unary.f32(i32 6, float %2623)  ; FAbs(value)
  %2632 = call float @dx.op.unary.f32(i32 6, float %2621)  ; FAbs(value)
  %2633 = fmul fast float %2631, 0x3F8EB851E0000000
  %2634 = fmul fast float %2632, 0x3F8EB851E0000000
  %2635 = fmul fast float %1839, 4.000000e+00
  %2636 = call float @dx.op.unary.f32(i32 7, float %2635)  ; Saturate(value)
  %2637 = fadd fast float %2633, 2.500000e-01
  %2638 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %2637, float %2634, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2639 = extractvalue %dx.types.ResRet.f32 %2638, 0
  %2640 = extractvalue %dx.types.ResRet.f32 %2638, 1
  %2641 = extractvalue %dx.types.ResRet.f32 %2638, 2
  %2642 = extractvalue %dx.types.ResRet.f32 %2638, 3
  %2643 = fmul fast float %2640, 2.000000e+00
  %2644 = fmul fast float %2641, 2.000000e+00
  %2645 = fadd fast float %2643, -1.000000e+00
  %2646 = fadd fast float %2644, -1.000000e+00
  %2647 = fsub fast float 1.000000e+00, %2636
  %2648 = fmul fast float %2647, 8.000000e+00
  %2649 = call float @dx.op.unary.f32(i32 21, float %2648)  ; Exp(value)
  %2650 = fmul fast float %2642, %2649
  %2651 = fadd fast float %2627, -1.000000e+00
  %2652 = fadd fast float %2651, %2642
  %2653 = fadd fast float %2652, %2650
  %2654 = frem fast float %2653, %2649
  %2655 = fcmp fast ole float %2654, 1.000000e+00
  %2656 = call float @dx.op.unary.f32(i32 22, float %2654)  ; Frc(value)
  %2657 = select i1 %2655, float %2656, float 0.000000e+00
  %2658 = fadd fast float %2639, -1.000000e+00
  %2659 = fadd fast float %2658, %2657
  %2660 = fsub fast float 1.000000e+00, %2657
  %2661 = call float @dx.op.unary.f32(i32 7, float %2660)  ; Saturate(value)
  %2662 = fmul fast float %2661, %2639
  %2663 = fmul fast float %2659, 8.000000e+00
  %2664 = call float @dx.op.binary.f32(i32 35, float %2663, float 0.000000e+00)  ; FMax(a,b)
  %2665 = call float @dx.op.binary.f32(i32 36, float %2664, float 4.000000e+00)  ; FMin(a,b)
  %2666 = fmul fast float %2665, 0x400921FB60000000
  %2667 = call float @dx.op.unary.f32(i32 13, float %2666)  ; Sin(value)
  %2668 = fadd fast float %2657, -1.000000e+00
  %2669 = fmul fast float %2662, %2668
  %2670 = fmul fast float %2669, %2667
  %2671 = fmul fast float %2670, %2645
  %2672 = fmul fast float %2670, %2646
  %2673 = fadd fast float %2635, -1.000000e+00
  %2674 = call float @dx.op.unary.f32(i32 7, float %2673)  ; Saturate(value)
  %2675 = fadd fast float %2633, 0xBFE19999A0000000
  %2676 = fadd fast float %2634, 0x3FD3D70A40000000
  %2677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %2675, float %2676, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2678 = extractvalue %dx.types.ResRet.f32 %2677, 0
  %2679 = extractvalue %dx.types.ResRet.f32 %2677, 1
  %2680 = extractvalue %dx.types.ResRet.f32 %2677, 2
  %2681 = extractvalue %dx.types.ResRet.f32 %2677, 3
  %2682 = fmul fast float %2679, 2.000000e+00
  %2683 = fmul fast float %2680, 2.000000e+00
  %2684 = fadd fast float %2682, -1.000000e+00
  %2685 = fadd fast float %2683, -1.000000e+00
  %2686 = fsub fast float 1.000000e+00, %2674
  %2687 = fmul fast float %2686, 8.000000e+00
  %2688 = call float @dx.op.unary.f32(i32 21, float %2687)  ; Exp(value)
  %2689 = fmul fast float %2681, %2688
  %2690 = fadd fast float %2628, 0xBFE5B22D00000000
  %2691 = fadd fast float %2690, %2681
  %2692 = fadd fast float %2691, %2689
  %2693 = frem fast float %2692, %2688
  %2694 = fcmp fast ole float %2693, 1.000000e+00
  %2695 = call float @dx.op.unary.f32(i32 22, float %2693)  ; Frc(value)
  %2696 = select i1 %2694, float %2695, float 0.000000e+00
  %2697 = fadd fast float %2678, -1.000000e+00
  %2698 = fadd fast float %2697, %2696
  %2699 = fsub fast float 1.000000e+00, %2696
  %2700 = call float @dx.op.unary.f32(i32 7, float %2699)  ; Saturate(value)
  %2701 = fmul fast float %2700, %2678
  %2702 = fmul fast float %2698, 8.000000e+00
  %2703 = call float @dx.op.binary.f32(i32 35, float %2702, float 0.000000e+00)  ; FMax(a,b)
  %2704 = call float @dx.op.binary.f32(i32 36, float %2703, float 4.000000e+00)  ; FMin(a,b)
  %2705 = fmul fast float %2704, 0x400921FB60000000
  %2706 = call float @dx.op.unary.f32(i32 13, float %2705)  ; Sin(value)
  %2707 = fadd fast float %2696, -1.000000e+00
  %2708 = fmul fast float %2701, %2707
  %2709 = fmul fast float %2708, %2706
  %2710 = fmul fast float %2709, %2684
  %2711 = fmul fast float %2709, %2685
  %2712 = fadd fast float %2635, -2.000000e+00
  %2713 = call float @dx.op.unary.f32(i32 7, float %2712)  ; Saturate(value)
  %2714 = fadd fast float %2633, 0x3FE3333340000000
  %2715 = fadd fast float %2634, 0x3FEB333340000000
  %2716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %2714, float %2715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2717 = extractvalue %dx.types.ResRet.f32 %2716, 0
  %2718 = extractvalue %dx.types.ResRet.f32 %2716, 1
  %2719 = extractvalue %dx.types.ResRet.f32 %2716, 2
  %2720 = extractvalue %dx.types.ResRet.f32 %2716, 3
  %2721 = fmul fast float %2718, 2.000000e+00
  %2722 = fmul fast float %2719, 2.000000e+00
  %2723 = fadd fast float %2721, -1.000000e+00
  %2724 = fadd fast float %2722, -1.000000e+00
  %2725 = fsub fast float 1.000000e+00, %2713
  %2726 = fmul fast float %2725, 8.000000e+00
  %2727 = call float @dx.op.unary.f32(i32 21, float %2726)  ; Exp(value)
  %2728 = fmul fast float %2720, %2727
  %2729 = fadd fast float %2629, 0xBFD5E35400000000
  %2730 = fadd fast float %2729, %2720
  %2731 = fadd fast float %2730, %2728
  %2732 = frem fast float %2731, %2727
  %2733 = fcmp fast ole float %2732, 1.000000e+00
  %2734 = call float @dx.op.unary.f32(i32 22, float %2732)  ; Frc(value)
  %2735 = select i1 %2733, float %2734, float 0.000000e+00
  %2736 = fadd fast float %2717, -1.000000e+00
  %2737 = fadd fast float %2736, %2735
  %2738 = fsub fast float 1.000000e+00, %2735
  %2739 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  %2740 = fmul fast float %2739, %2717
  %2741 = fmul fast float %2737, 8.000000e+00
  %2742 = call float @dx.op.binary.f32(i32 35, float %2741, float 0.000000e+00)  ; FMax(a,b)
  %2743 = call float @dx.op.binary.f32(i32 36, float %2742, float 4.000000e+00)  ; FMin(a,b)
  %2744 = fmul fast float %2743, 0x400921FB60000000
  %2745 = call float @dx.op.unary.f32(i32 13, float %2744)  ; Sin(value)
  %2746 = fadd fast float %2735, -1.000000e+00
  %2747 = fmul fast float %2740, %2746
  %2748 = fmul fast float %2747, %2745
  %2749 = fmul fast float %2748, %2723
  %2750 = fmul fast float %2748, %2724
  %2751 = fadd fast float %2635, -3.000000e+00
  %2752 = call float @dx.op.unary.f32(i32 7, float %2751)  ; Saturate(value)
  %2753 = fadd fast float %2633, 5.000000e-01
  %2754 = fadd fast float %2634, -7.500000e-01
  %2755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %2753, float %2754, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2756 = extractvalue %dx.types.ResRet.f32 %2755, 0
  %2757 = extractvalue %dx.types.ResRet.f32 %2755, 1
  %2758 = extractvalue %dx.types.ResRet.f32 %2755, 2
  %2759 = extractvalue %dx.types.ResRet.f32 %2755, 3
  %2760 = fmul fast float %2757, 2.000000e+00
  %2761 = fmul fast float %2758, 2.000000e+00
  %2762 = fadd fast float %2760, -1.000000e+00
  %2763 = fadd fast float %2761, -1.000000e+00
  %2764 = fsub fast float 1.000000e+00, %2752
  %2765 = fmul fast float %2764, 8.000000e+00
  %2766 = call float @dx.op.unary.f32(i32 21, float %2765)  ; Exp(value)
  %2767 = fmul fast float %2759, %2766
  %2768 = fadd fast float %2630, 0xBF78938000000000
  %2769 = fadd fast float %2768, %2759
  %2770 = fadd fast float %2769, %2767
  %2771 = frem fast float %2770, %2766
  %2772 = fcmp fast ole float %2771, 1.000000e+00
  %2773 = call float @dx.op.unary.f32(i32 22, float %2771)  ; Frc(value)
  %2774 = select i1 %2772, float %2773, float 0.000000e+00
  %2775 = fadd fast float %2756, -1.000000e+00
  %2776 = fadd fast float %2775, %2774
  %2777 = fsub fast float 1.000000e+00, %2774
  %2778 = call float @dx.op.unary.f32(i32 7, float %2777)  ; Saturate(value)
  %2779 = fmul fast float %2778, %2756
  %2780 = fmul fast float %2776, 8.000000e+00
  %2781 = call float @dx.op.binary.f32(i32 35, float %2780, float 0.000000e+00)  ; FMax(a,b)
  %2782 = call float @dx.op.binary.f32(i32 36, float %2781, float 4.000000e+00)  ; FMin(a,b)
  %2783 = fmul fast float %2782, 0x400921FB60000000
  %2784 = call float @dx.op.unary.f32(i32 13, float %2783)  ; Sin(value)
  %2785 = fadd fast float %2774, -1.000000e+00
  %2786 = fmul fast float %2779, %2785
  %2787 = fmul fast float %2786, %2784
  %2788 = fmul fast float %2787, %2762
  %2789 = fmul fast float %2787, %2763
  %2790 = fadd fast float %2710, %2671
  %2791 = fadd fast float %2711, %2672
  %2792 = fadd fast float %2790, %2749
  %2793 = fadd fast float %2791, %2750
  %2794 = fadd fast float %2792, %2788
  %2795 = fadd fast float %2793, %2789
  %2796 = fmul fast float %2514, 0x4006DB6DA0000000
  %2797 = fadd fast float %2796, 0xBFFDB6DB40000000
  %2798 = call float @dx.op.unary.f32(i32 7, float %2797)  ; Saturate(value)
  %2799 = fmul fast float %2798, %2469
  %2800 = fmul fast float %2799, %2578
  %2801 = fmul fast float %2800, %2794
  %2802 = fmul fast float %2800, %2795
  %2803 = fadd fast float %2801, %2605
  %2804 = fadd fast float %2802, %2606
  br label %2805

; <label>:2805                                    ; preds = %2619, %2452
  %2806 = phi float [ %2605, %2452 ], [ %2803, %2619 ]
  %2807 = phi float [ %2606, %2452 ], [ %2804, %2619 ]
  %2808 = call float @dx.op.dot3.f32(i32 55, float %2806, float %2807, float %2607, float %2806, float %2807, float %2607)  ; Dot3(ax,ay,az,bx,by,bz)
  %2809 = call float @dx.op.unary.f32(i32 25, float %2808)  ; Rsqrt(value)
  %2810 = fmul fast float %2809, %2806
  %2811 = fmul fast float %2809, %2807
  %2812 = fmul fast float %2809, %2607
  br label %2813

; <label>:2813                                    ; preds = %2805, %2445
  %2814 = phi float [ %2451, %2445 ], [ %2458, %2805 ]
  %2815 = phi float [ %2450, %2445 ], [ %2456, %2805 ]
  %2816 = phi float [ %2449, %2445 ], [ %2454, %2805 ]
  %2817 = phi float [ %2448, %2445 ], [ %2457, %2805 ]
  %2818 = phi float [ %2447, %2445 ], [ %2455, %2805 ]
  %2819 = phi float [ %2446, %2445 ], [ %2453, %2805 ]
  %2820 = phi float [ %2428, %2445 ], [ %2596, %2805 ]
  %2821 = phi float [ %2429, %2445 ], [ %2597, %2805 ]
  %2822 = phi float [ %2430, %2445 ], [ %2598, %2805 ]
  %2823 = phi float [ %2431, %2445 ], [ %2810, %2805 ]
  %2824 = phi float [ %2432, %2445 ], [ %2811, %2805 ]
  %2825 = phi float [ %2433, %2445 ], [ %2812, %2805 ]
  %2826 = phi float [ %2434, %2445 ], [ %2505, %2805 ]
  %2827 = phi float [ %2435, %2445 ], [ %2506, %2805 ]
  %2828 = phi float [ %2436, %2445 ], [ %2507, %2805 ]
  %2829 = phi float [ %2440, %2445 ], [ %2612, %2805 ]
  %2830 = phi float [ %2441, %2445 ], [ %2615, %2805 ]
  %2831 = select i1 %193, float 0.000000e+00, float %2822
  %2832 = call float @dx.op.dot3.f32(i32 55, float %2823, float %2824, float %2825, float %2816, float %2815, float %2814)  ; Dot3(ax,ay,az,bx,by,bz)
  %2833 = call float @dx.op.unary.f32(i32 7, float %2832)  ; Saturate(value)
  %2834 = call float @dx.op.dot3.f32(i32 55, float %2819, float %2818, float %2817, float %2823, float %2824, float %2825)  ; Dot3(ax,ay,az,bx,by,bz)
  %2835 = fmul fast float %2834, 2.000000e+00
  %2836 = fmul fast float %2835, %2823
  %2837 = fmul fast float %2835, %2824
  %2838 = fmul fast float %2835, %2825
  %2839 = fsub fast float %2819, %2836
  %2840 = fsub fast float %2818, %2837
  %2841 = fsub fast float %2817, %2838
  %2842 = call float @dx.op.binary.f32(i32 36, float %2830, float 1.000000e+00)  ; FMin(a,b)
  %2843 = fsub fast float 1.000000e+00, %2842
  %2844 = bitcast float %2843 to i32
  %2845 = ashr i32 %2844, 1
  %2846 = add nsw i32 %2845, 532487669
  %2847 = bitcast i32 %2846 to float
  %2848 = fsub fast float 1.000000e+00, %2829
  %2849 = call float @dx.op.binary.f32(i32 35, float %2848, float 0x3F847AE140000000)  ; FMax(a,b)
  %2850 = fmul fast float %2849, %2849
  %2851 = fmul fast float %2850, %2850
  %2852 = call float @dx.op.unary.f32(i32 7, float %2833)  ; Saturate(value)
  %2853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %2847, float %2851, float %2852, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2854 = extractvalue %dx.types.ResRet.f32 %2853, 0
  %2855 = fsub fast float 1.000000e+00, %2830
  %2856 = bitcast float %2855 to i32
  %2857 = sub nsw i32 2129859010, %2856
  %2858 = bitcast i32 %2857 to float
  %2859 = call float @dx.op.dot3.f32(i32 55, float %56, float %52, float %48, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2860 = fmul fast float %2859, 0x3FD20DD760000000
  %2861 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %56)  ; FMax(a,b)
  %2862 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %2863 = fcmp fast oeq float %2862, 0.000000e+00
  %2864 = fcmp fast oeq float %2861, 0.000000e+00
  %2865 = or i1 %2864, %2863
  br i1 %2865, label %2895, label %2866

; <label>:2866                                    ; preds = %2813
  %2867 = fsub fast float -0.000000e+00, %59
  %2868 = fsub fast float -0.000000e+00, %57
  %2869 = call float @dx.op.unary.f32(i32 24, float %2862)  ; Sqrt(value)
  %2870 = fdiv fast float %2869, %2861
  %2871 = fcmp fast ogt float %2870, 0x3FFB6F8900000000
  %2872 = select i1 %2871, float 0x3FFB6F8900000000, float %2870
  %2873 = fmul fast float %2872, 0x3FE8A23460000000
  %2874 = call float @dx.op.unary.f32(i32 7, float %2873)  ; Saturate(value)
  %2875 = call float @dx.op.binary.f32(i32 35, float %2872, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2876 = fmul fast float %2874, %2861
  %2877 = fmul fast float %2875, 0x3FF279A740000000
  %2878 = fadd fast float %2877, -1.000000e+00
  %2879 = call float @dx.op.dot3.f32(i32 55, float %2867, float %2868, float %58, float %2867, float %2868, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %2880 = call float @dx.op.unary.f32(i32 25, float %2879)  ; Rsqrt(value)
  %2881 = fmul fast float %2880, %2867
  %2882 = fmul fast float %2880, %2868
  %2883 = fmul fast float %2880, %58
  %2884 = fmul fast float %2878, %2878
  %2885 = fsub fast float 1.000000e+00, %2884
  %2886 = fmul fast float %2875, 0x40005F8BE0000000
  %2887 = fsub fast float 0x400C5BF8A0000000, %2886
  %2888 = fdiv fast float %2876, %2887
  %2889 = fmul fast float %2888, 0x3FEE31C3C0000000
  %2890 = fmul fast float %2889, %2885
  %2891 = fmul fast float %2875, 0x3FDACB7480000000
  %2892 = fadd fast float %2891, 0xBFD7347680000000
  %2893 = fmul fast float %2892, %2888
  %2894 = fmul fast float %2893, %2885
  br label %2895

; <label>:2895                                    ; preds = %2866, %2813
  %2896 = phi float [ %2881, %2866 ], [ 0.000000e+00, %2813 ]
  %2897 = phi float [ %2882, %2866 ], [ 0.000000e+00, %2813 ]
  %2898 = phi float [ %2883, %2866 ], [ 0.000000e+00, %2813 ]
  %2899 = phi float [ %2890, %2866 ], [ 0.000000e+00, %2813 ]
  %2900 = phi float [ %2894, %2866 ], [ 0.000000e+00, %2813 ]
  %2901 = call float @dx.op.dot3.f32(i32 55, float %2896, float %2897, float %2898, float %2823, float %2824, float %2825)  ; Dot3(ax,ay,az,bx,by,bz)
  %2902 = fmul fast float %2901, 0x3FDF454380000000
  %2903 = fmul fast float %2901, %2901
  %2904 = fmul fast float %2903, 0x3FEE471020000000
  %2905 = fadd fast float %2904, 0xBFD42F6020000000
  %2906 = fmul fast float %2861, 0x3FD20DD760000000
  %2907 = fmul fast float %2905, %2900
  %2908 = fadd fast float %2907, %2906
  %2909 = fmul fast float %2902, %2899
  %2910 = fadd fast float %2908, %2909
  %2911 = fsub fast float %2908, %2909
  %2912 = call float @dx.op.dot3.f32(i32 55, float %2896, float %2897, float %2898, float %2839, float %2840, float %2841)  ; Dot3(ax,ay,az,bx,by,bz)
  %2913 = fmul fast float %2912, 0x3FDF454380000000
  %2914 = fmul fast float %2912, %2912
  %2915 = fmul fast float %2914, 0x3FEE471020000000
  %2916 = fadd fast float %2915, 0xBFD42F6020000000
  %2917 = call float @dx.op.dot3.f32(i32 55, float %2861, float %2899, float %2900, float 0x3FD20DD760000000, float %2913, float %2916)  ; Dot3(ax,ay,az,bx,by,bz)
  %2918 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %2919 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %2920 = fcmp fast oeq float %2919, 0.000000e+00
  %2921 = fcmp fast oeq float %2918, 0.000000e+00
  %2922 = or i1 %2921, %2920
  br i1 %2922, label %2952, label %2923

; <label>:2923                                    ; preds = %2895
  %2924 = fsub fast float -0.000000e+00, %55
  %2925 = fsub fast float -0.000000e+00, %53
  %2926 = call float @dx.op.unary.f32(i32 24, float %2919)  ; Sqrt(value)
  %2927 = fdiv fast float %2926, %2918
  %2928 = fcmp fast ogt float %2927, 0x3FFB6F8900000000
  %2929 = select i1 %2928, float 0x3FFB6F8900000000, float %2927
  %2930 = fmul fast float %2929, 0x3FE8A23460000000
  %2931 = call float @dx.op.unary.f32(i32 7, float %2930)  ; Saturate(value)
  %2932 = call float @dx.op.binary.f32(i32 35, float %2929, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2933 = fmul fast float %2931, %2918
  %2934 = fmul fast float %2932, 0x3FF279A740000000
  %2935 = fadd fast float %2934, -1.000000e+00
  %2936 = call float @dx.op.dot3.f32(i32 55, float %2924, float %2925, float %54, float %2924, float %2925, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %2937 = call float @dx.op.unary.f32(i32 25, float %2936)  ; Rsqrt(value)
  %2938 = fmul fast float %2937, %2924
  %2939 = fmul fast float %2937, %2925
  %2940 = fmul fast float %2937, %54
  %2941 = fmul fast float %2935, %2935
  %2942 = fsub fast float 1.000000e+00, %2941
  %2943 = fmul fast float %2932, 0x40005F8BE0000000
  %2944 = fsub fast float 0x400C5BF8A0000000, %2943
  %2945 = fdiv fast float %2933, %2944
  %2946 = fmul fast float %2945, 0x3FEE31C3C0000000
  %2947 = fmul fast float %2946, %2942
  %2948 = fmul fast float %2932, 0x3FDACB7480000000
  %2949 = fadd fast float %2948, 0xBFD7347680000000
  %2950 = fmul fast float %2949, %2945
  %2951 = fmul fast float %2950, %2942
  br label %2952

; <label>:2952                                    ; preds = %2923, %2895
  %2953 = phi float [ %2938, %2923 ], [ 0.000000e+00, %2895 ]
  %2954 = phi float [ %2939, %2923 ], [ 0.000000e+00, %2895 ]
  %2955 = phi float [ %2940, %2923 ], [ 0.000000e+00, %2895 ]
  %2956 = phi float [ %2947, %2923 ], [ 0.000000e+00, %2895 ]
  %2957 = phi float [ %2951, %2923 ], [ 0.000000e+00, %2895 ]
  %2958 = call float @dx.op.dot3.f32(i32 55, float %2953, float %2954, float %2955, float %2823, float %2824, float %2825)  ; Dot3(ax,ay,az,bx,by,bz)
  %2959 = fmul fast float %2958, 0x3FDF454380000000
  %2960 = fmul fast float %2958, %2958
  %2961 = fmul fast float %2960, 0x3FEE471020000000
  %2962 = fadd fast float %2961, 0xBFD42F6020000000
  %2963 = fmul fast float %2918, 0x3FD20DD760000000
  %2964 = fmul fast float %2962, %2957
  %2965 = fadd fast float %2964, %2963
  %2966 = fmul fast float %2959, %2956
  %2967 = fadd fast float %2965, %2966
  %2968 = fsub fast float %2965, %2966
  %2969 = call float @dx.op.dot3.f32(i32 55, float %2953, float %2954, float %2955, float %2839, float %2840, float %2841)  ; Dot3(ax,ay,az,bx,by,bz)
  %2970 = fmul fast float %2969, 0x3FDF454380000000
  %2971 = fmul fast float %2969, %2969
  %2972 = fmul fast float %2971, 0x3FEE471020000000
  %2973 = fadd fast float %2972, 0xBFD42F6020000000
  %2974 = call float @dx.op.dot3.f32(i32 55, float %2918, float %2956, float %2957, float 0x3FD20DD760000000, float %2970, float %2973)  ; Dot3(ax,ay,az,bx,by,bz)
  %2975 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %2976 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %2977 = fcmp fast oeq float %2976, 0.000000e+00
  %2978 = fcmp fast oeq float %2975, 0.000000e+00
  %2979 = or i1 %2978, %2977
  br i1 %2979, label %3009, label %2980

; <label>:2980                                    ; preds = %2952
  %2981 = fsub fast float -0.000000e+00, %51
  %2982 = fsub fast float -0.000000e+00, %49
  %2983 = call float @dx.op.unary.f32(i32 24, float %2976)  ; Sqrt(value)
  %2984 = fdiv fast float %2983, %2975
  %2985 = fcmp fast ogt float %2984, 0x3FFB6F8900000000
  %2986 = select i1 %2985, float 0x3FFB6F8900000000, float %2984
  %2987 = fmul fast float %2986, 0x3FE8A23460000000
  %2988 = call float @dx.op.unary.f32(i32 7, float %2987)  ; Saturate(value)
  %2989 = call float @dx.op.binary.f32(i32 35, float %2986, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2990 = fmul fast float %2988, %2975
  %2991 = fmul fast float %2989, 0x3FF279A740000000
  %2992 = fadd fast float %2991, -1.000000e+00
  %2993 = call float @dx.op.dot3.f32(i32 55, float %2981, float %2982, float %50, float %2981, float %2982, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %2994 = call float @dx.op.unary.f32(i32 25, float %2993)  ; Rsqrt(value)
  %2995 = fmul fast float %2994, %2981
  %2996 = fmul fast float %2994, %2982
  %2997 = fmul fast float %2994, %50
  %2998 = fmul fast float %2992, %2992
  %2999 = fsub fast float 1.000000e+00, %2998
  %3000 = fmul fast float %2989, 0x40005F8BE0000000
  %3001 = fsub fast float 0x400C5BF8A0000000, %3000
  %3002 = fdiv fast float %2990, %3001
  %3003 = fmul fast float %3002, 0x3FEE31C3C0000000
  %3004 = fmul fast float %3003, %2999
  %3005 = fmul fast float %2989, 0x3FDACB7480000000
  %3006 = fadd fast float %3005, 0xBFD7347680000000
  %3007 = fmul fast float %3006, %3002
  %3008 = fmul fast float %3007, %2999
  br label %3009

; <label>:3009                                    ; preds = %2980, %2952
  %3010 = phi float [ %2995, %2980 ], [ 0.000000e+00, %2952 ]
  %3011 = phi float [ %2996, %2980 ], [ 0.000000e+00, %2952 ]
  %3012 = phi float [ %2997, %2980 ], [ 0.000000e+00, %2952 ]
  %3013 = phi float [ %3004, %2980 ], [ 0.000000e+00, %2952 ]
  %3014 = phi float [ %3008, %2980 ], [ 0.000000e+00, %2952 ]
  %3015 = call float @dx.op.dot3.f32(i32 55, float %3010, float %3011, float %3012, float %2823, float %2824, float %2825)  ; Dot3(ax,ay,az,bx,by,bz)
  %3016 = fmul fast float %3015, 0x3FDF454380000000
  %3017 = fmul fast float %3015, %3015
  %3018 = fmul fast float %3017, 0x3FEE471020000000
  %3019 = fadd fast float %3018, 0xBFD42F6020000000
  %3020 = fmul fast float %2975, 0x3FD20DD760000000
  %3021 = fmul fast float %3019, %3014
  %3022 = fadd fast float %3021, %3020
  %3023 = fmul fast float %3016, %3013
  %3024 = fadd fast float %3022, %3023
  %3025 = fsub fast float %3022, %3023
  %3026 = call float @dx.op.dot3.f32(i32 55, float %3010, float %3011, float %3012, float %2839, float %2840, float %2841)  ; Dot3(ax,ay,az,bx,by,bz)
  %3027 = fmul fast float %3026, 0x3FDF454380000000
  %3028 = fmul fast float %3026, %3026
  %3029 = fmul fast float %3028, 0x3FEE471020000000
  %3030 = fadd fast float %3029, 0xBFD42F6020000000
  %3031 = call float @dx.op.dot3.f32(i32 55, float %2975, float %3013, float %3014, float 0x3FD20DD760000000, float %3027, float %3030)  ; Dot3(ax,ay,az,bx,by,bz)
  %3032 = call float @dx.op.binary.f32(i32 35, float %2910, float 0.000000e+00)  ; FMax(a,b)
  %3033 = call float @dx.op.binary.f32(i32 35, float %2967, float 0.000000e+00)  ; FMax(a,b)
  %3034 = call float @dx.op.binary.f32(i32 35, float %3024, float 0.000000e+00)  ; FMax(a,b)
  %3035 = call float @dx.op.binary.f32(i32 35, float %2911, float 0.000000e+00)  ; FMax(a,b)
  %3036 = call float @dx.op.binary.f32(i32 35, float %2968, float 0.000000e+00)  ; FMax(a,b)
  %3037 = call float @dx.op.binary.f32(i32 35, float %3025, float 0.000000e+00)  ; FMax(a,b)
  %3038 = call float @dx.op.binary.f32(i32 35, float %2917, float 0.000000e+00)  ; FMax(a,b)
  %3039 = call float @dx.op.binary.f32(i32 35, float %2974, float 0.000000e+00)  ; FMax(a,b)
  %3040 = call float @dx.op.binary.f32(i32 35, float %3031, float 0.000000e+00)  ; FMax(a,b)
  %3041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3042 = extractvalue %dx.types.CBufRet.f32 %3041, 0
  %3043 = call float @dx.op.binary.f32(i32 36, float %2826, float %3042)  ; FMin(a,b)
  %3044 = fmul fast float %3043, %2843
  %3045 = fsub fast float 1.000000e+00, %3044
  %3046 = bitcast float %3045 to i32
  %3047 = sub nsw i32 2129859010, %3046
  %3048 = bitcast i32 %3047 to float
  %3049 = call float @dx.op.binary.f32(i32 36, float %2827, float %3042)  ; FMin(a,b)
  %3050 = fmul fast float %3049, %2843
  %3051 = fsub fast float 1.000000e+00, %3050
  %3052 = bitcast float %3051 to i32
  %3053 = sub nsw i32 2129859010, %3052
  %3054 = bitcast i32 %3053 to float
  %3055 = call float @dx.op.binary.f32(i32 36, float %2828, float %3042)  ; FMin(a,b)
  %3056 = fmul fast float %3055, %2843
  %3057 = fsub fast float 1.000000e+00, %3056
  %3058 = bitcast float %3057 to i32
  %3059 = sub nsw i32 2129859010, %3058
  %3060 = bitcast i32 %3059 to float
  %3061 = fmul fast float %3032, %2842
  %3062 = fmul fast float %3061, %3048
  %3063 = fmul fast float %3033, %2842
  %3064 = fmul fast float %3063, %3054
  %3065 = fmul fast float %3034, %2842
  %3066 = fmul fast float %3065, %3060
  %3067 = call float @dx.op.binary.f32(i32 36, float %2820, float %3042)  ; FMin(a,b)
  %3068 = fmul fast float %3067, %2843
  %3069 = fsub fast float 1.000000e+00, %3068
  %3070 = bitcast float %3069 to i32
  %3071 = sub nsw i32 2129859010, %3070
  %3072 = bitcast i32 %3071 to float
  %3073 = call float @dx.op.binary.f32(i32 36, float %2821, float %3042)  ; FMin(a,b)
  %3074 = fmul fast float %3073, %2843
  %3075 = fsub fast float 1.000000e+00, %3074
  %3076 = bitcast float %3075 to i32
  %3077 = sub nsw i32 2129859010, %3076
  %3078 = bitcast i32 %3077 to float
  %3079 = call float @dx.op.binary.f32(i32 36, float %2831, float %3042)  ; FMin(a,b)
  %3080 = fmul fast float %3079, %2843
  %3081 = fsub fast float 1.000000e+00, %3080
  %3082 = bitcast float %3081 to i32
  %3083 = sub nsw i32 2129859010, %3082
  %3084 = bitcast i32 %3083 to float
  %3085 = fmul fast float %3038, %2842
  %3086 = fmul fast float %3085, %3072
  %3087 = fmul fast float %3039, %2842
  %3088 = fmul fast float %3087, %3078
  %3089 = fmul fast float %3040, %2842
  %3090 = fmul fast float %3089, %3084
  %3091 = call float @dx.op.dot3.f32(i32 55, float %3062, float %3064, float %3066, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3092 = select i1 %193, float 0.000000e+00, float %3062
  %3093 = select i1 %193, float %3091, float %3064
  %3094 = select i1 %193, float 0.000000e+00, float %3066
  %3095 = call float @dx.op.dot3.f32(i32 55, float %3035, float %3036, float %3037, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3096 = select i1 %193, float 0.000000e+00, float %3035
  %3097 = select i1 %193, float %3095, float %3036
  %3098 = select i1 %193, float 0.000000e+00, float %3037
  %3099 = call float @dx.op.dot3.f32(i32 55, float %3086, float %3088, float %3090, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3100 = select i1 %193, float 0.000000e+00, float %3086
  %3101 = select i1 %193, float %3099, float %3088
  %3102 = select i1 %193, float 0.000000e+00, float %3090
  %3103 = fmul fast float %894, %894
  %3104 = call float @dx.op.unary.f32(i32 7, float %3103)  ; Saturate(value)
  %3105 = fmul fast float %2833, 9.843750e-01
  %3106 = fmul fast float %2829, 9.843750e-01
  %3107 = fadd fast float %3105, 7.812500e-03
  %3108 = fadd fast float %3106, 7.812500e-03
  %3109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %40, float %3107, float %3108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3110 = extractvalue %dx.types.ResRet.f32 %3109, 0
  %3111 = extractvalue %dx.types.ResRet.f32 %3109, 1
  %3112 = extractvalue %dx.types.ResRet.f32 %3109, 2
  %3113 = extractvalue %dx.types.ResRet.f32 %3109, 3
  %3114 = fsub fast float 1.000000e+00, %3104
  %3115 = fsub fast float %3112, %3110
  %3116 = fsub fast float %3113, %3111
  %3117 = fmul fast float %3115, %3114
  %3118 = fmul fast float %3116, %3114
  %3119 = fadd fast float %3117, %3110
  %3120 = fadd fast float %3118, %3111
  %3121 = fmul fast float %3119, %2820
  %3122 = fmul fast float %3119, %2821
  %3123 = fmul fast float %3119, %2831
  %3124 = fadd fast float %3121, %3120
  %3125 = fadd fast float %3122, %3120
  %3126 = fadd fast float %3123, %3120
  %3127 = fcmp fast ogt float %1494, 0.000000e+00
  br i1 %3127, label %3128, label %3154

; <label>:3128                                    ; preds = %3009
  %3129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %1494, float %2833, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3130 = extractvalue %dx.types.ResRet.f32 %3129, 0
  %3131 = extractvalue %dx.types.ResRet.f32 %3129, 1
  %3132 = extractvalue %dx.types.ResRet.f32 %3129, 2
  %3133 = fadd fast float %3130, -5.000000e-01
  %3134 = fadd fast float %3131, -5.000000e-01
  %3135 = fadd fast float %3132, -5.000000e-01
  %3136 = fsub fast float 1.000000e+00, %2820
  %3137 = fsub fast float 1.000000e+00, %2821
  %3138 = fsub fast float 1.000000e+00, %2831
  %3139 = fmul fast float %2820, 4.000000e+00
  %3140 = fmul fast float %3139, %3136
  %3141 = fmul fast float %3140, %3133
  %3142 = fmul fast float %2821, 4.000000e+00
  %3143 = fmul fast float %3142, %3137
  %3144 = fmul fast float %3143, %3134
  %3145 = fmul fast float %2831, 4.000000e+00
  %3146 = fmul fast float %3145, %3138
  %3147 = fmul fast float %3146, %3135
  %3148 = fadd fast float %3141, %3124
  %3149 = fadd fast float %3144, %3125
  %3150 = fadd fast float %3147, %3126
  %3151 = call float @dx.op.unary.f32(i32 7, float %3148)  ; Saturate(value)
  %3152 = call float @dx.op.unary.f32(i32 7, float %3149)  ; Saturate(value)
  %3153 = call float @dx.op.unary.f32(i32 7, float %3150)  ; Saturate(value)
  br label %3154

; <label>:3154                                    ; preds = %3128, %3009
  %3155 = phi float [ %3151, %3128 ], [ %3124, %3009 ]
  %3156 = phi float [ %3152, %3128 ], [ %3125, %3009 ]
  %3157 = phi float [ %3153, %3128 ], [ %3126, %3009 ]
  %3158 = call float @dx.op.binary.f32(i32 35, float %3156, float %3157)  ; FMax(a,b)
  %3159 = call float @dx.op.binary.f32(i32 35, float %3155, float %3158)  ; FMax(a,b)
  %3160 = fsub fast float 1.000000e+00, %3159
  %3161 = fmul fast float %3159, %2829
  %3162 = fadd fast float %3161, %2829
  %3163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3164 = extractvalue %dx.types.CBufRet.f32 %3163, 2
  %3165 = extractvalue %dx.types.CBufRet.f32 %3163, 3
  %3166 = fmul fast float %3162, %3164
  %3167 = fadd fast float %3166, %3165
  %3168 = call float @dx.op.unary.f32(i32 7, float %3167)  ; Saturate(value)
  %3169 = fsub fast float 1.000000e+00, %2854
  %3170 = fadd fast float %3169, %3168
  %3171 = call float @dx.op.unary.f32(i32 7, float %3170)  ; Saturate(value)
  %3172 = fcmp fast olt float %3171, 1.000000e+00
  br i1 %3172, label %3173, label %3621

; <label>:3173                                    ; preds = %3154
  %3174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3175 = extractvalue %dx.types.CBufRet.f32 %3174, 2
  %3176 = extractvalue %dx.types.CBufRet.f32 %3174, 3
  %3177 = fmul fast float %3175, %84
  %3178 = fmul fast float %3176, %85
  %3179 = fptoui float %3177 to i32
  %3180 = fptoui float %3178 to i32
  %3181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3182 = extractvalue %dx.types.CBufRet.f32 %3181, 0
  %3183 = extractvalue %dx.types.CBufRet.f32 %3181, 2
  %3184 = extractvalue %dx.types.CBufRet.f32 %3181, 3
  %3185 = fadd fast float %72, -4.000000e+00
  %3186 = call float @dx.op.binary.f32(i32 35, float %3185, float 0.000000e+00)  ; FMax(a,b)
  %3187 = fadd fast float %3186, %3182
  %3188 = fmul fast float %3187, %3183
  %3189 = call float @dx.op.unary.f32(i32 23, float %3188)  ; Log(value)
  %3190 = fmul fast float %3189, %3184
  %3191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3192 = extractvalue %dx.types.CBufRet.f32 %3191, 2
  %3193 = fmul fast float %3190, %3192
  %3194 = call float @dx.op.unary.f32(i32 7, float %3193)  ; Saturate(value)
  %3195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3196 = extractvalue %dx.types.CBufRet.i32 %3195, 1
  %3197 = add i32 %3196, -1
  %3198 = uitofp i32 %3196 to float
  %3199 = fmul fast float %3198, %3194
  %3200 = fptoui float %3199 to i32
  %3201 = call i32 @dx.op.binary.i32(i32 40, i32 %3200, i32 %3197)  ; UMin(a,b)
  %3202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3203 = extractvalue %dx.types.CBufRet.i32 %3202, 2
  %3204 = extractvalue %dx.types.CBufRet.i32 %3202, 3
  %3205 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3180, i32 %3203, i32 %3179)  ; UMad(a,b,c)
  %3206 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3201, i32 %3204, i32 %3205)  ; UMad(a,b,c)
  %3207 = call float @dx.op.binary.f32(i32 35, float %72, float 0.000000e+00)  ; FMax(a,b)
  %3208 = fptoui float %3207 to i32
  %3209 = lshr i32 %3208, 5
  %3210 = call i32 @dx.op.binary.i32(i32 40, i32 %3209, i32 8191)  ; UMin(a,b)
  br i1 false, label %3211, label %3218

; <label>:3211                                    ; preds = %3173
  %3212 = fadd fast float 0.000000e+00, %2841
  %3213 = call float @dx.op.dot3.f32(i32 55, float %2839, float %2840, float %3212, float %2839, float %2840, float %3212)  ; Dot3(ax,ay,az,bx,by,bz)
  %3214 = call float @dx.op.unary.f32(i32 25, float %3213)  ; Rsqrt(value)
  %3215 = fmul fast float %3214, %2839
  %3216 = fmul fast float %3214, %2840
  %3217 = fmul fast float %3212, %3214
  br label %3218

; <label>:3218                                    ; preds = %3211, %3173
  %3219 = phi float [ %3215, %3211 ], [ %2839, %3173 ]
  %3220 = phi float [ %3216, %3211 ], [ %2840, %3173 ]
  %3221 = phi float [ %3217, %3211 ], [ %2841, %3173 ]
  %3222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3223 = extractvalue %dx.types.CBufRet.i32 %3222, 2
  %3224 = add nsw i32 %3223, -1
  %3225 = call i32 @dx.op.binary.i32(i32 37, i32 %3224, i32 0)  ; IMax(a,b)
  %3226 = shl i32 %3210, 2
  %3227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.i32 %3227, 0
  %3229 = lshr i32 %3228, 16
  %3230 = and i32 %3228, 65535
  %3231 = lshr i32 %3228, 21
  %3232 = lshr i32 %3230, 5
  %3233 = call i32 @dx.op.binary.i32(i32 40, i32 %3232, i32 %3225)  ; UMin(a,b)
  %3234 = icmp ugt i32 %3231, %3233
  br i1 %3234, label %3597, label %3235

; <label>:3235                                    ; preds = %3218
  br label %3236

; <label>:3236                                    ; preds = %3589, %3235
  %3237 = phi float [ %3590, %3589 ], [ 0.000000e+00, %3235 ]
  %3238 = phi float [ %3591, %3589 ], [ 0.000000e+00, %3235 ]
  %3239 = phi float [ %3592, %3589 ], [ 0.000000e+00, %3235 ]
  %3240 = phi float [ %3593, %3589 ], [ 1.000000e+00, %3235 ]
  %3241 = phi i32 [ %3594, %3589 ], [ %3231, %3235 ]
  %3242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3243 = extractvalue %dx.types.CBufRet.i32 %3242, 2
  %3244 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3206, i32 %3243, i32 %3241)  ; UMad(a,b,c)
  %3245 = shl i32 %3244, 2
  %3246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3245, i32 undef)  ; BufferLoad(srv,index,wot)
  %3247 = extractvalue %dx.types.ResRet.i32 %3246, 0
  %3248 = shl i32 %3241, 5
  %3249 = sub nsw i32 %3229, %3248
  %3250 = call i32 @dx.op.binary.i32(i32 37, i32 %3249, i32 0)  ; IMax(a,b)
  %3251 = call i32 @dx.op.binary.i32(i32 38, i32 %3250, i32 31)  ; IMin(a,b)
  %3252 = sub nsw i32 1, %3229
  %3253 = add nsw i32 %3252, %3230
  %3254 = call i32 @dx.op.binary.i32(i32 37, i32 %3253, i32 0)  ; IMax(a,b)
  %3255 = call i32 @dx.op.binary.i32(i32 38, i32 %3254, i32 32)  ; IMin(a,b)
  %3256 = and i32 %3255, 31
  %3257 = shl i32 -1, %3256
  %3258 = xor i32 %3257, -1
  %3259 = and i32 %3251, 31
  %3260 = shl i32 %3258, %3259
  %3261 = icmp eq i32 %3255, 32
  %3262 = select i1 %3261, i32 -1, i32 %3260
  %3263 = and i32 %3262, %3247
  %3264 = icmp eq i32 %3263, 0
  br i1 %3264, label %3589, label %3265

; <label>:3265                                    ; preds = %3236
  br label %3266

; <label>:3266                                    ; preds = %3372, %3265
  %3267 = phi float [ %3373, %3372 ], [ %3237, %3265 ]
  %3268 = phi float [ %3374, %3372 ], [ %3238, %3265 ]
  %3269 = phi float [ %3375, %3372 ], [ %3239, %3265 ]
  %3270 = phi float [ %3376, %3372 ], [ %3240, %3265 ]
  %3271 = phi i32 [ %3276, %3372 ], [ %3263, %3265 ]
  %3272 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3271)  ; FirstbitLo(value)
  %3273 = add i32 %3272, %3248
  %3274 = and i32 %3272, 31
  %3275 = shl i32 1, %3274
  %3276 = xor i32 %3275, %3271
  %3277 = mul i32 %3273, 72
  %3278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3277, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.f32 %3278, 0
  %3280 = extractvalue %dx.types.ResRet.f32 %3278, 1
  %3281 = extractvalue %dx.types.ResRet.f32 %3278, 2
  %3282 = add i32 %3277, 12
  %3283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3282, i32 undef)  ; BufferLoad(srv,index,wot)
  %3284 = extractvalue %dx.types.ResRet.i32 %3283, 0
  %3285 = add i32 %3277, 16
  %3286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3285, i32 undef)  ; BufferLoad(srv,index,wot)
  %3287 = extractvalue %dx.types.ResRet.f32 %3286, 0
  %3288 = extractvalue %dx.types.ResRet.f32 %3286, 1
  %3289 = extractvalue %dx.types.ResRet.f32 %3286, 2
  %3290 = add i32 %3277, 28
  %3291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3290, i32 undef)  ; BufferLoad(srv,index,wot)
  %3292 = extractvalue %dx.types.ResRet.f32 %3291, 0
  %3293 = add i32 %3277, 32
  %3294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3293, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.f32 %3294, 0
  %3296 = extractvalue %dx.types.ResRet.f32 %3294, 1
  %3297 = extractvalue %dx.types.ResRet.f32 %3294, 2
  %3298 = extractvalue %dx.types.ResRet.f32 %3294, 3
  %3299 = add i32 %3277, 48
  %3300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3299, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.f32 %3300, 0
  %3302 = extractvalue %dx.types.ResRet.f32 %3300, 1
  %3303 = add i32 %3277, 56
  %3304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3303, i32 undef)  ; BufferLoad(srv,index,wot)
  %3305 = extractvalue %dx.types.ResRet.f32 %3304, 0
  %3306 = extractvalue %dx.types.ResRet.f32 %3304, 1
  %3307 = add i32 %3277, 64
  %3308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3309 = extractvalue %dx.types.ResRet.f32 %3308, 0
  %3310 = extractvalue %dx.types.ResRet.f32 %3308, 1
  %3311 = mul i32 %3273, 60
  %3312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3311, i32 undef)  ; BufferLoad(srv,index,wot)
  %3313 = extractvalue %dx.types.ResRet.f32 %3312, 0
  %3314 = extractvalue %dx.types.ResRet.f32 %3312, 1
  %3315 = extractvalue %dx.types.ResRet.f32 %3312, 2
  %3316 = add i32 %3311, 12
  %3317 = add i32 %3311, 48
  %3318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3317, i32 undef)  ; BufferLoad(srv,index,wot)
  %3319 = extractvalue %dx.types.ResRet.f32 %3318, 0
  %3320 = extractvalue %dx.types.ResRet.f32 %3318, 1
  %3321 = extractvalue %dx.types.ResRet.f32 %3318, 2
  %3322 = and i32 %3284, 32767
  %3323 = bitcast float %3279 to i32
  %3324 = icmp eq i32 %3323, -1
  %3325 = bitcast float %3280 to i32
  %3326 = and i32 %3284, 32768
  %3327 = icmp ne i32 %3326, 0
  %3328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3329 = extractvalue %dx.types.CBufRet.f32 %3328, 0
  %3330 = extractvalue %dx.types.CBufRet.f32 %3328, 1
  %3331 = extractvalue %dx.types.CBufRet.f32 %3328, 2
  %3332 = fsub fast float %3313, %3329
  %3333 = fsub fast float %3314, %3330
  %3334 = fsub fast float %3315, %3331
  %3335 = fsub fast float %132, %3332
  %3336 = fsub fast float %133, %3333
  %3337 = fsub fast float %134, %3334
  %3338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3316, i32 undef)  ; BufferLoad(srv,index,wot)
  %3339 = extractvalue %dx.types.ResRet.f32 %3338, 0
  %3340 = extractvalue %dx.types.ResRet.f32 %3338, 1
  %3341 = extractvalue %dx.types.ResRet.f32 %3338, 2
  %3342 = call float @dx.op.dot3.f32(i32 55, float %3335, float %3336, float %3337, float %3339, float %3340, float %3341)  ; Dot3(ax,ay,az,bx,by,bz)
  %3343 = add i32 %3311, 24
  %3344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3343, i32 undef)  ; BufferLoad(srv,index,wot)
  %3345 = extractvalue %dx.types.ResRet.f32 %3344, 0
  %3346 = extractvalue %dx.types.ResRet.f32 %3344, 1
  %3347 = extractvalue %dx.types.ResRet.f32 %3344, 2
  %3348 = call float @dx.op.dot3.f32(i32 55, float %3335, float %3336, float %3337, float %3345, float %3346, float %3347)  ; Dot3(ax,ay,az,bx,by,bz)
  %3349 = add i32 %3311, 36
  %3350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3349, i32 undef)  ; BufferLoad(srv,index,wot)
  %3351 = extractvalue %dx.types.ResRet.f32 %3350, 0
  %3352 = extractvalue %dx.types.ResRet.f32 %3350, 1
  %3353 = extractvalue %dx.types.ResRet.f32 %3350, 2
  %3354 = call float @dx.op.dot3.f32(i32 55, float %3335, float %3336, float %3337, float %3351, float %3352, float %3353)  ; Dot3(ax,ay,az,bx,by,bz)
  %3355 = call float @dx.op.unary.f32(i32 6, float %3342)  ; FAbs(value)
  %3356 = call float @dx.op.unary.f32(i32 6, float %3348)  ; FAbs(value)
  %3357 = call float @dx.op.unary.f32(i32 6, float %3354)  ; FAbs(value)
  %3358 = fsub fast float %3319, %3355
  %3359 = fsub fast float %3320, %3356
  %3360 = fsub fast float %3321, %3357
  %3361 = fmul fast float %3358, %3287
  %3362 = fmul fast float %3359, %3288
  %3363 = fmul fast float %3360, %3289
  %3364 = call float @dx.op.binary.f32(i32 36, float %3362, float %3363)  ; FMin(a,b)
  %3365 = call float @dx.op.binary.f32(i32 36, float %3361, float %3364)  ; FMin(a,b)
  %3366 = call float @dx.op.unary.f32(i32 7, float %3365)  ; Saturate(value)
  %3367 = call float @dx.op.binary.f32(i32 36, float %3270, float %3366)  ; FMin(a,b)
  %3368 = uitofp i1 %3327 to float
  %3369 = fsub fast float 1.000000e+00, %3368
  %3370 = fmul fast float %3367, %3369
  %3371 = fcmp fast ogt float %3370, 0.000000e+00
  br i1 %3371, label %3378, label %3372

; <label>:3372                                    ; preds = %3520, %3266
  %3373 = phi float [ %3584, %3520 ], [ %3267, %3266 ]
  %3374 = phi float [ %3585, %3520 ], [ %3268, %3266 ]
  %3375 = phi float [ %3586, %3520 ], [ %3269, %3266 ]
  %3376 = phi float [ %3587, %3520 ], [ %3270, %3266 ]
  %3377 = icmp eq i32 %3271, %3275
  br i1 %3377, label %3588, label %3266

; <label>:3378                                    ; preds = %3266
  br i1 %3324, label %3436, label %3379

; <label>:3379                                    ; preds = %3378
  %3380 = fsub fast float -0.000000e+00, %3339
  %3381 = fsub fast float -0.000000e+00, %3340
  %3382 = fsub fast float -0.000000e+00, %3341
  %3383 = call float @dx.op.dot3.f32(i32 55, float %3219, float %3220, float %3221, float %3380, float %3381, float %3382)  ; Dot3(ax,ay,az,bx,by,bz)
  %3384 = fsub fast float -0.000000e+00, %3383
  %3385 = call float @dx.op.dot3.f32(i32 55, float %3335, float %3336, float %3337, float %3380, float %3381, float %3382)  ; Dot3(ax,ay,az,bx,by,bz)
  %3386 = fadd fast float %3385, %3302
  %3387 = fadd fast float %3301, %3385
  %3388 = fsub fast float -0.000000e+00, %3387
  %3389 = fcmp ogt float %3383, -0.000000e+00
  %3390 = select i1 %3389, float %3388, float %3386
  %3391 = call float @dx.op.unary.f32(i32 6, float %3384)  ; FAbs(value)
  %3392 = fdiv fast float 1.000000e+00, %3391
  %3393 = fmul fast float %3390, %3392
  %3394 = call float @dx.op.binary.f32(i32 35, float %3393, float 0.000000e+00)  ; FMax(a,b)
  %3395 = fsub fast float -0.000000e+00, %3345
  %3396 = fsub fast float -0.000000e+00, %3346
  %3397 = fsub fast float -0.000000e+00, %3347
  %3398 = call float @dx.op.dot3.f32(i32 55, float %3219, float %3220, float %3221, float %3395, float %3396, float %3397)  ; Dot3(ax,ay,az,bx,by,bz)
  %3399 = fsub fast float -0.000000e+00, %3398
  %3400 = call float @dx.op.dot3.f32(i32 55, float %3335, float %3336, float %3337, float %3395, float %3396, float %3397)  ; Dot3(ax,ay,az,bx,by,bz)
  %3401 = fadd fast float %3400, %3306
  %3402 = fadd fast float %3305, %3400
  %3403 = fsub fast float -0.000000e+00, %3402
  %3404 = fcmp ogt float %3398, -0.000000e+00
  %3405 = select i1 %3404, float %3403, float %3401
  %3406 = call float @dx.op.unary.f32(i32 6, float %3399)  ; FAbs(value)
  %3407 = fdiv fast float 1.000000e+00, %3406
  %3408 = fmul fast float %3405, %3407
  %3409 = call float @dx.op.binary.f32(i32 35, float %3408, float 0.000000e+00)  ; FMax(a,b)
  %3410 = fsub fast float -0.000000e+00, %3351
  %3411 = fsub fast float -0.000000e+00, %3352
  %3412 = fsub fast float -0.000000e+00, %3353
  %3413 = call float @dx.op.dot3.f32(i32 55, float %3219, float %3220, float %3221, float %3410, float %3411, float %3412)  ; Dot3(ax,ay,az,bx,by,bz)
  %3414 = fsub fast float -0.000000e+00, %3413
  %3415 = call float @dx.op.dot3.f32(i32 55, float %3335, float %3336, float %3337, float %3410, float %3411, float %3412)  ; Dot3(ax,ay,az,bx,by,bz)
  %3416 = fadd fast float %3415, %3310
  %3417 = fadd fast float %3309, %3415
  %3418 = fsub fast float -0.000000e+00, %3417
  %3419 = fcmp ogt float %3413, -0.000000e+00
  %3420 = select i1 %3419, float %3418, float %3416
  %3421 = call float @dx.op.unary.f32(i32 6, float %3414)  ; FAbs(value)
  %3422 = fdiv fast float 1.000000e+00, %3421
  %3423 = fmul fast float %3420, %3422
  %3424 = call float @dx.op.binary.f32(i32 35, float %3423, float 0.000000e+00)  ; FMax(a,b)
  %3425 = call float @dx.op.binary.f32(i32 36, float %3409, float %3424)  ; FMin(a,b)
  %3426 = call float @dx.op.binary.f32(i32 36, float %3394, float %3425)  ; FMin(a,b)
  %3427 = fmul fast float %3426, %3219
  %3428 = fmul fast float %3426, %3220
  %3429 = fmul fast float %3426, %3221
  %3430 = fadd fast float %3427, %132
  %3431 = fadd fast float %3428, %133
  %3432 = fadd fast float %3429, %134
  %3433 = fsub fast float %3430, %3279
  %3434 = fsub fast float %3431, %3280
  %3435 = fsub fast float %3432, %3281
  br label %3443

; <label>:3436                                    ; preds = %3378
  %3437 = fmul fast float %3219, 8.096000e+03
  %3438 = fmul fast float %3220, 8.096000e+03
  %3439 = fmul fast float %3221, 8.096000e+03
  %3440 = fadd fast float %3437, %132
  %3441 = fadd fast float %3438, %133
  %3442 = fadd fast float %3439, %134
  br label %3443

; <label>:3443                                    ; preds = %3436, %3379
  %3444 = phi float [ %3219, %3436 ], [ %3433, %3379 ]
  %3445 = phi float [ %3220, %3436 ], [ %3434, %3379 ]
  %3446 = phi float [ %3221, %3436 ], [ %3435, %3379 ]
  %3447 = phi float [ %3440, %3436 ], [ %3430, %3379 ]
  %3448 = phi float [ %3441, %3436 ], [ %3431, %3379 ]
  %3449 = phi float [ %3442, %3436 ], [ %3432, %3379 ]
  %3450 = fcmp fast olt float %3298, 1.000000e+00
  br i1 %3450, label %3451, label %3482, !dx.controlflow.hints !79

; <label>:3451                                    ; preds = %3443
  %3452 = fmul fast float %3446, %3296
  %3453 = fmul fast float %3445, %3297
  %3454 = fsub fast float %3452, %3453
  %3455 = fmul fast float %3444, %3297
  %3456 = fmul fast float %3446, %3295
  %3457 = fsub fast float %3455, %3456
  %3458 = fmul fast float %3445, %3295
  %3459 = fmul fast float %3444, %3296
  %3460 = fsub fast float %3458, %3459
  %3461 = fmul fast float %3454, 2.000000e+00
  %3462 = fmul fast float %3457, 2.000000e+00
  %3463 = fmul fast float %3460, 2.000000e+00
  %3464 = fmul fast float %3461, %3298
  %3465 = fmul fast float %3462, %3298
  %3466 = fmul fast float %3463, %3298
  %3467 = fmul fast float %3463, %3296
  %3468 = fmul fast float %3462, %3297
  %3469 = fmul fast float %3461, %3297
  %3470 = fmul fast float %3463, %3295
  %3471 = fmul fast float %3462, %3295
  %3472 = fmul fast float %3461, %3296
  %3473 = fadd fast float %3467, %3444
  %3474 = fadd fast float %3473, %3464
  %3475 = fsub fast float %3474, %3468
  %3476 = fsub fast float %3445, %3470
  %3477 = fadd fast float %3476, %3465
  %3478 = fadd fast float %3477, %3469
  %3479 = fadd fast float %3466, %3446
  %3480 = fsub fast float %3479, %3472
  %3481 = fadd fast float %3480, %3471
  br label %3482

; <label>:3482                                    ; preds = %3451, %3443
  %3483 = phi float [ %3475, %3451 ], [ %3444, %3443 ]
  %3484 = phi float [ %3478, %3451 ], [ %3445, %3443 ]
  %3485 = phi float [ %3481, %3451 ], [ %3446, %3443 ]
  br i1 %3324, label %3517, label %3486

; <label>:3486                                    ; preds = %3482
  %3487 = fmul fast float %2829, 0x400187C840000000
  %3488 = fadd fast float %3487, 0xC00EFC2120000000
  %3489 = fmul fast float %3488, %2829
  %3490 = fadd fast float %3489, 0x3FE5D16340000000
  %3491 = fmul fast float %3490, %2829
  %3492 = fadd fast float %3491, 1.000000e+00
  %3493 = call float @dx.op.unary.f32(i32 7, float %3492)  ; Saturate(value)
  %3494 = fsub fast float %3447, %132
  %3495 = fsub fast float %3448, %133
  %3496 = fsub fast float %3449, %134
  %3497 = fsub fast float %3447, %3279
  %3498 = fsub fast float %3448, %3280
  %3499 = fsub fast float %3449, %3281
  %3500 = call float @dx.op.dot3.f32(i32 55, float %3494, float %3495, float %3496, float %3494, float %3495, float %3496)  ; Dot3(ax,ay,az,bx,by,bz)
  %3501 = call float @dx.op.dot3.f32(i32 55, float %3497, float %3498, float %3499, float %3497, float %3498, float %3499)  ; Dot3(ax,ay,az,bx,by,bz)
  %3502 = fadd fast float %3501, 0x3EE4F8B580000000
  %3503 = fdiv fast float %3500, %3502
  %3504 = bitcast float %3503 to i32
  %3505 = ashr i32 %3504, 1
  %3506 = add nsw i32 %3505, 532487669
  %3507 = bitcast i32 %3506 to float
  %3508 = fmul fast float %3507, %3493
  %3509 = call float @dx.op.unary.f32(i32 7, float %3508)  ; Saturate(value)
  %3510 = fmul fast float %3509, 0x4009981AE0000000
  %3511 = fsub fast float 0x40111BBD80000000, %3510
  %3512 = fmul fast float %3511, %3509
  %3513 = fadd fast float %3512, 0xC0009F6020000000
  %3514 = fmul fast float %3513, %3509
  %3515 = fadd fast float %3514, 1.000000e+00
  %3516 = call float @dx.op.unary.f32(i32 7, float %3515)  ; Saturate(value)
  br label %3520

; <label>:3517                                    ; preds = %3482
  %3518 = icmp ne i32 %3325, -1
  %3519 = zext i1 %3518 to i32
  br label %3520

; <label>:3520                                    ; preds = %3517, %3486
  %3521 = phi float [ %2829, %3517 ], [ %3516, %3486 ]
  %3522 = phi i32 [ %3519, %3517 ], [ 0, %3486 ]
  %3523 = fmul float %3521, 5.000000e+00
  %3524 = fsub float 5.000000e+00, %3523
  %3525 = icmp ne i32 %3522, 0
  %3526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3527 = extractvalue %dx.types.CBufRet.f32 %3526, 3
  %3528 = fadd fast float %3527, %3524
  %3529 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3528)  ; FMax(a,b)
  %3530 = call float @dx.op.unary.f32(i32 6, float %3483)  ; FAbs(value)
  %3531 = call float @dx.op.unary.f32(i32 6, float %3484)  ; FAbs(value)
  %3532 = fadd fast float %3531, %3530
  %3533 = call float @dx.op.unary.f32(i32 6, float %3485)  ; FAbs(value)
  %3534 = fadd fast float %3532, %3533
  %3535 = fcmp fast oeq float %3534, 0.000000e+00
  %3536 = fdiv fast float 1.000000e+00, %3534
  %3537 = select i1 %3535, float 1.000000e+00, float %3536
  %3538 = fmul fast float %3537, %3483
  %3539 = fmul fast float %3537, %3484
  %3540 = call float @dx.op.unary.f32(i32 6, float %3539)  ; FAbs(value)
  %3541 = call float @dx.op.unary.f32(i32 6, float %3538)  ; FAbs(value)
  %3542 = fsub fast float 1.000000e+00, %3540
  %3543 = fsub fast float 1.000000e+00, %3541
  %3544 = fcmp fast oge float %3538, 0.000000e+00
  %3545 = fcmp fast oge float %3539, 0.000000e+00
  %3546 = select i1 %3544, float 1.000000e+00, float -1.000000e+00
  %3547 = select i1 %3545, float 1.000000e+00, float -1.000000e+00
  %3548 = fcmp fast ole float %3485, 0.000000e+00
  %3549 = fmul fast float %3546, %3542
  %3550 = fmul fast float %3547, %3543
  %3551 = select i1 %3548, float %3549, float %3538
  %3552 = select i1 %3548, float %3550, float %3539
  %3553 = fmul fast float %3551, 5.000000e-01
  %3554 = fmul fast float %3552, 5.000000e-01
  %3555 = fadd fast float %3553, 5.000000e-01
  %3556 = fadd fast float %3554, 5.000000e-01
  %3557 = uitofp i32 %3322 to float
  %3558 = call float @dx.op.binary.f32(i32 36, float %3529, float 3.000000e+00)  ; FMin(a,b)
  %3559 = fadd fast float %3558, 2.000000e+00
  %3560 = call float @dx.op.unary.f32(i32 21, float %3559)  ; Exp(value)
  %3561 = extractvalue %dx.types.CBufRet.f32 %3526, 1
  %3562 = fmul fast float %3561, %3560
  %3563 = fmul fast float %3562, 2.000000e+00
  %3564 = fsub fast float 1.000000e+00, %3563
  %3565 = fmul fast float %3555, %3564
  %3566 = fmul fast float %3556, %3564
  %3567 = fadd fast float %3565, %3562
  %3568 = fadd fast float %3566, %3562
  %3569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %3567, float %3568, float %3557, float undef, i32 0, i32 0, i32 undef, float %3529)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3570 = extractvalue %dx.types.ResRet.f32 %3569, 0
  %3571 = extractvalue %dx.types.ResRet.f32 %3569, 1
  %3572 = extractvalue %dx.types.ResRet.f32 %3569, 2
  %3573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3574 = extractvalue %dx.types.CBufRet.f32 %3573, 3
  %3575 = fmul fast float %3574, %3292
  %3576 = call float @dx.op.binary.f32(i32 36, float %2860, float %3575)  ; FMin(a,b)
  %3577 = select i1 %3525, float %3576, float %3575
  %3578 = fmul fast float %3570, %3370
  %3579 = fmul fast float %3578, %3577
  %3580 = fmul fast float %3571, %3370
  %3581 = fmul fast float %3580, %3577
  %3582 = fmul fast float %3572, %3370
  %3583 = fmul fast float %3582, %3577
  %3584 = fadd fast float %3579, %3267
  %3585 = fadd fast float %3581, %3268
  %3586 = fadd fast float %3583, %3269
  %3587 = fsub fast float %3270, %3370
  br label %3372

; <label>:3588                                    ; preds = %3372
  br label %3589

; <label>:3589                                    ; preds = %3588, %3236
  %3590 = phi float [ %3237, %3236 ], [ %3373, %3588 ]
  %3591 = phi float [ %3238, %3236 ], [ %3374, %3588 ]
  %3592 = phi float [ %3239, %3236 ], [ %3375, %3588 ]
  %3593 = phi float [ %3240, %3236 ], [ %3376, %3588 ]
  %3594 = add i32 %3241, 1
  %3595 = icmp ugt i32 %3594, %3233
  br i1 %3595, label %3596, label %3236, !llvm.loop !80

; <label>:3596                                    ; preds = %3589
  br label %3597

; <label>:3597                                    ; preds = %3596, %3218
  %3598 = phi float [ 0.000000e+00, %3218 ], [ %3590, %3596 ]
  %3599 = phi float [ 0.000000e+00, %3218 ], [ %3591, %3596 ]
  %3600 = phi float [ 0.000000e+00, %3218 ], [ %3592, %3596 ]
  %3601 = call float @dx.op.dot3.f32(i32 55, float %3598, float %3599, float %3600, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3602 = select i1 %193, float 0.000000e+00, float %3598
  %3603 = select i1 %193, float %3601, float %3599
  %3604 = select i1 %193, float 0.000000e+00, float %3600
  %3605 = fcmp fast olt float %3171, 0.000000e+00
  %3606 = call float @dx.op.unary.f32(i32 6, float %3171)  ; FAbs(value)
  %3607 = fmul fast float %3606, %3100
  %3608 = fmul fast float %3606, %3101
  %3609 = fmul fast float %3606, %3102
  %3610 = select i1 %3605, float %3100, float %3607
  %3611 = select i1 %3605, float %3101, float %3608
  %3612 = select i1 %3605, float %3102, float %3609
  %3613 = fsub fast float 1.000000e+00, %3606
  %3614 = call float @dx.op.unary.f32(i32 7, float %3613)  ; Saturate(value)
  %3615 = fmul fast float %3614, %3602
  %3616 = fmul fast float %3614, %3603
  %3617 = fmul fast float %3614, %3604
  %3618 = fadd fast float %3610, %3615
  %3619 = fadd fast float %3611, %3616
  %3620 = fadd fast float %3612, %3617
  br label %3621

; <label>:3621                                    ; preds = %3597, %3154
  %3622 = phi float [ %3100, %3154 ], [ %3618, %3597 ]
  %3623 = phi float [ %3101, %3154 ], [ %3619, %3597 ]
  %3624 = phi float [ %3102, %3154 ], [ %3620, %3597 ]
  %3625 = call float @dx.op.dot3.f32(i32 55, float %2826, float %2827, float %2828, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3626 = fcmp fast ogt float %3625, 0x3E7FF19E20000000
  %3627 = fdiv fast float 1.000000e+00, %3625
  %3628 = select i1 %3626, float %3627, float 0.000000e+00
  %3629 = fmul fast float %3628, %2826
  %3630 = fmul fast float %3628, %2827
  %3631 = fmul fast float %3628, %2828
  %3632 = fadd fast float %3629, -1.000000e+00
  %3633 = fadd fast float %3630, -1.000000e+00
  %3634 = fadd fast float %3631, -1.000000e+00
  %3635 = fmul fast float %3632, 5.000000e-01
  %3636 = fmul fast float %3633, 5.000000e-01
  %3637 = fmul fast float %3634, 5.000000e-01
  %3638 = fadd fast float %3635, 1.000000e+00
  %3639 = fadd fast float %3636, 1.000000e+00
  %3640 = fadd fast float %3637, 1.000000e+00
  %3641 = call float @dx.op.binary.f32(i32 35, float %2833, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3642 = fdiv fast float %894, %3641
  %3643 = fcmp fast olt float %1567, 1.270000e+02
  %3644 = fcmp fast olt float %1568, 1.270000e+02
  %3645 = fcmp fast olt float %1569, 1.270000e+02
  %3646 = fmul fast float %1567, 0xBFF7154760000000
  %3647 = fmul fast float %3646, %3642
  %3648 = fmul fast float %1568, 0xBFF7154760000000
  %3649 = fmul fast float %3648, %3642
  %3650 = fmul fast float %1569, 0xBFF7154760000000
  %3651 = fmul fast float %3650, %3642
  %3652 = call float @dx.op.unary.f32(i32 21, float %3647)  ; Exp(value)
  %3653 = call float @dx.op.unary.f32(i32 21, float %3649)  ; Exp(value)
  %3654 = call float @dx.op.unary.f32(i32 21, float %3651)  ; Exp(value)
  %3655 = call float @dx.op.unary.f32(i32 7, float %3652)  ; Saturate(value)
  %3656 = call float @dx.op.unary.f32(i32 7, float %3653)  ; Saturate(value)
  %3657 = call float @dx.op.unary.f32(i32 7, float %3654)  ; Saturate(value)
  %3658 = select i1 %3643, float %3655, float 0.000000e+00
  %3659 = select i1 %3644, float %3656, float 0.000000e+00
  %3660 = select i1 %3645, float %3657, float 0.000000e+00
  %3661 = fmul fast float %3658, %3160
  %3662 = fmul fast float %3659, %3160
  %3663 = fmul fast float %3660, %3160
  %3664 = fadd fast float %3661, -1.000000e+00
  %3665 = fadd fast float %3662, -1.000000e+00
  %3666 = fadd fast float %3663, -1.000000e+00
  %3667 = fmul fast float %3664, %1517
  %3668 = fmul fast float %3665, %1517
  %3669 = fmul fast float %3666, %1517
  %3670 = fmul fast float %3622, %3155
  %3671 = fmul fast float %3623, %3156
  %3672 = fmul fast float %3624, %3157
  %3673 = fsub fast float 1.000000e+00, %2833
  %3674 = bitcast float %3673 to i32
  %3675 = sitofp i32 %3674 to float
  %3676 = fmul fast float %3675, 5.000000e+00
  %3677 = fadd fast float %3676, 0xC1EFBF8940000000
  %3678 = fptosi float %3677 to i32
  %3679 = bitcast i32 %3678 to float
  %3680 = fmul fast float %3679, %1493
  %3681 = fmul fast float %3092, %3680
  %3682 = fmul fast float %3681, %3160
  %3683 = fmul fast float %3682, %3638
  %3684 = fmul fast float %3093, %3680
  %3685 = fmul fast float %3684, %3160
  %3686 = fmul fast float %3685, %3639
  %3687 = fmul fast float %3094, %3680
  %3688 = fmul fast float %3687, %3160
  %3689 = fmul fast float %3688, %3640
  %3690 = fadd fast float %3670, %1498
  %3691 = fadd fast float %3690, %3683
  %3692 = fmul fast float %3691, %1517
  %3693 = fadd fast float %3671, %1499
  %3694 = fadd fast float %3693, %3686
  %3695 = fmul fast float %3694, %1517
  %3696 = fadd fast float %3672, %1500
  %3697 = fadd fast float %3696, %3689
  %3698 = fmul fast float %3697, %1517
  %3699 = fmul fast float %2821, 0x4012D0A400000000
  %3700 = fadd fast float %3669, 1.000000e+00
  %3701 = fadd fast float %3668, 1.000000e+00
  %3702 = fadd fast float %3667, 1.000000e+00
  %3703 = fmul fast float %3160, %3094
  %3704 = fmul fast float %3160, %3093
  %3705 = fmul fast float %3160, %3092
  %3706 = fmul fast float %2848, %1517
  %3707 = fsub fast float 1.000000e+00, %3706
  %3708 = call float @dx.op.unary.f32(i32 7, float %3707)  ; Saturate(value)
  %3709 = fsub fast float 1.000000e+00, %3708
  %3710 = fadd fast float %3699, 0x3FDB6377A0000000
  %3711 = fmul fast float %3709, %3710
  %3712 = call float @dx.op.dot3.f32(i32 55, float %2437, float %2438, float %2439, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3713 = fadd fast float %3711, %3712
  %3714 = call float @dx.op.unary.f32(i32 7, float %3713)  ; Saturate(value)
  %3715 = call float @dx.op.binary.f32(i32 35, float %3714, float 0x3F847AE140000000)  ; FMax(a,b)
  %3716 = fmul fast float %3715, %3715
  %3717 = fmul fast float %3716, %3716
  %3718 = fmul fast float %3717, 0xC00A935000000000
  %3719 = call float @dx.op.unary.f32(i32 21, float %3718)  ; Exp(value)
  %3720 = fsub fast float 1.000000e+00, %3719
  %3721 = fmul fast float %3702, %3096
  %3722 = fmul fast float %3721, %3720
  %3723 = fmul fast float %3701, %3097
  %3724 = fmul fast float %3723, %3720
  %3725 = fmul fast float %3700, %3098
  %3726 = fmul fast float %3725, %3720
  %3727 = fadd fast float %3722, %3705
  %3728 = fmul fast float %3727, %1517
  %3729 = fadd fast float %3724, %3704
  %3730 = fmul fast float %3729, %1517
  %3731 = fadd fast float %3726, %3703
  %3732 = fmul fast float %3731, %1517
  %3733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3734 = extractvalue %dx.types.CBufRet.f32 %3733, 3
  %3735 = fcmp fast oeq float %3734, 0.000000e+00
  br i1 %3735, label %5338, label %3736

; <label>:3736                                    ; preds = %3621
  %3737 = extractvalue %dx.types.CBufRet.f32 %3733, 0
  %3738 = extractvalue %dx.types.CBufRet.f32 %3733, 1
  %3739 = extractvalue %dx.types.CBufRet.f32 %3733, 2
  %3740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3741 = extractvalue %dx.types.CBufRet.f32 %3740, 0
  %3742 = extractvalue %dx.types.CBufRet.f32 %3740, 1
  %3743 = extractvalue %dx.types.CBufRet.f32 %3740, 2
  %3744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3745 = extractvalue %dx.types.CBufRet.f32 %3744, 0
  %3746 = extractvalue %dx.types.CBufRet.f32 %3744, 1
  %3747 = call float @dx.op.dot3.f32(i32 55, float %3741, float %3742, float %3743, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3748 = select i1 %193, float %3745, float %3741
  %3749 = select i1 %193, float %3747, float %3742
  %3750 = select i1 %193, float %3746, float %3743
  %3751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3752 = extractvalue %dx.types.CBufRet.f32 %3751, 2
  %3753 = fmul fast float %3752, %87
  %3754 = fmul fast float %3752, %88
  %3755 = fmul fast float %3752, %89
  %3756 = fadd fast float %3753, %132
  %3757 = fadd fast float %3754, %133
  %3758 = fadd fast float %3755, %134
  %3759 = fcmp fast olt float %3734, 0.000000e+00
  br i1 %3759, label %4855, label %3760

; <label>:3760                                    ; preds = %3736
  %3761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3762 = extractvalue %dx.types.CBufRet.f32 %3761, 0
  %3763 = extractvalue %dx.types.CBufRet.f32 %3761, 1
  %3764 = extractvalue %dx.types.CBufRet.f32 %3761, 2
  %3765 = extractvalue %dx.types.CBufRet.f32 %3761, 3
  %3766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3767 = extractvalue %dx.types.CBufRet.f32 %3766, 0
  %3768 = extractvalue %dx.types.CBufRet.f32 %3766, 1
  %3769 = extractvalue %dx.types.CBufRet.f32 %3766, 2
  %3770 = extractvalue %dx.types.CBufRet.f32 %3766, 3
  %3771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.f32 %3771, 0
  %3773 = extractvalue %dx.types.CBufRet.f32 %3771, 1
  %3774 = extractvalue %dx.types.CBufRet.f32 %3771, 2
  %3775 = extractvalue %dx.types.CBufRet.f32 %3771, 3
  %3776 = fmul fast float %3762, %3756
  %3777 = call float @dx.op.tertiary.f32(i32 46, float %3757, float %3763, float %3776)  ; FMad(a,b,c)
  %3778 = call float @dx.op.tertiary.f32(i32 46, float %3758, float %3764, float %3777)  ; FMad(a,b,c)
  %3779 = fadd fast float %3778, %3765
  %3780 = fmul fast float %3767, %3756
  %3781 = call float @dx.op.tertiary.f32(i32 46, float %3757, float %3768, float %3780)  ; FMad(a,b,c)
  %3782 = call float @dx.op.tertiary.f32(i32 46, float %3758, float %3769, float %3781)  ; FMad(a,b,c)
  %3783 = fadd fast float %3782, %3770
  %3784 = fmul fast float %3772, %3756
  %3785 = call float @dx.op.tertiary.f32(i32 46, float %3757, float %3773, float %3784)  ; FMad(a,b,c)
  %3786 = call float @dx.op.tertiary.f32(i32 46, float %3758, float %3774, float %3785)  ; FMad(a,b,c)
  %3787 = fadd fast float %3786, %3775
  %3788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3789 = extractvalue %dx.types.CBufRet.f32 %3788, 0
  %3790 = extractvalue %dx.types.CBufRet.f32 %3788, 1
  %3791 = extractvalue %dx.types.CBufRet.f32 %3788, 3
  %3792 = fmul fast float %3791, %3779
  %3793 = fmul fast float %3791, %3783
  %3794 = fadd fast float %3792, %3789
  %3795 = fadd fast float %3793, %3790
  %3796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3797 = extractvalue %dx.types.CBufRet.f32 %3796, 0
  %3798 = extractvalue %dx.types.CBufRet.f32 %3796, 1
  %3799 = extractvalue %dx.types.CBufRet.f32 %3796, 3
  %3800 = fmul fast float %3799, %3779
  %3801 = fmul fast float %3799, %3783
  %3802 = fadd fast float %3800, %3797
  %3803 = fadd fast float %3801, %3798
  %3804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3805 = extractvalue %dx.types.CBufRet.f32 %3804, 1
  %3806 = fsub fast float %3805, %3787
  %3807 = extractvalue %dx.types.CBufRet.f32 %3804, 2
  %3808 = fmul fast float %3806, %3807
  %3809 = fsub fast float 1.000000e+00, %3808
  %3810 = call float @dx.op.unary.f32(i32 7, float %3809)  ; Saturate(value)
  %3811 = extractvalue %dx.types.CBufRet.f32 %3796, 2
  %3812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3813 = extractvalue %dx.types.CBufRet.f32 %3812, 2
  %3814 = fadd fast float %3813, %3811
  %3815 = fcmp fast ogt float %3814, 0.000000e+00
  br i1 %3815, label %3816, label %3840

; <label>:3816                                    ; preds = %3760
  %3817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3818 = extractvalue %dx.types.CBufRet.f32 %3817, 0
  %3819 = extractvalue %dx.types.CBufRet.f32 %3817, 1
  %3820 = fsub fast float %3802, %3818
  %3821 = fsub fast float %3803, %3819
  %3822 = fcmp fast olt float %3820, 0.000000e+00
  %3823 = fcmp fast olt float %3821, 0.000000e+00
  %3824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3825 = extractvalue %dx.types.CBufRet.f32 %3824, 0
  %3826 = extractvalue %dx.types.CBufRet.f32 %3824, 1
  %3827 = extractvalue %dx.types.CBufRet.f32 %3824, 2
  %3828 = extractvalue %dx.types.CBufRet.f32 %3824, 3
  %3829 = select i1 %3822, float %3825, float %3827
  %3830 = select i1 %3823, float %3826, float %3828
  %3831 = fmul fast float %3829, %3820
  %3832 = fmul fast float %3830, %3821
  %3833 = call float @dx.op.unary.f32(i32 6, float %3831)  ; FAbs(value)
  %3834 = call float @dx.op.unary.f32(i32 6, float %3832)  ; FAbs(value)
  %3835 = extractvalue %dx.types.CBufRet.f32 %3751, 0
  %3836 = call float @dx.op.binary.f32(i32 35, float %3833, float %3834)  ; FMax(a,b)
  %3837 = fsub fast float %3835, %3836
  %3838 = call float @dx.op.unary.f32(i32 7, float %3837)  ; Saturate(value)
  %3839 = fmul fast float %3838, %3810
  br label %3840

; <label>:3840                                    ; preds = %3816, %3760
  %3841 = phi float [ %3839, %3816 ], [ 0.000000e+00, %3760 ]
  %3842 = extractvalue %dx.types.CBufRet.f32 %3788, 2
  %3843 = extractvalue %dx.types.CBufRet.f32 %3812, 1
  %3844 = fadd fast float %3843, %3842
  %3845 = fcmp fast ogt float %3844, 0.000000e+00
  %3846 = extractvalue %dx.types.CBufRet.f32 %3751, 0
  br i1 %3845, label %3847, label %3870

; <label>:3847                                    ; preds = %3840
  %3848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3849 = extractvalue %dx.types.CBufRet.f32 %3848, 0
  %3850 = extractvalue %dx.types.CBufRet.f32 %3848, 1
  %3851 = fsub fast float %3794, %3849
  %3852 = fsub fast float %3795, %3850
  %3853 = fcmp fast olt float %3851, 0.000000e+00
  %3854 = fcmp fast olt float %3852, 0.000000e+00
  %3855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3856 = extractvalue %dx.types.CBufRet.f32 %3855, 0
  %3857 = extractvalue %dx.types.CBufRet.f32 %3855, 1
  %3858 = extractvalue %dx.types.CBufRet.f32 %3855, 2
  %3859 = extractvalue %dx.types.CBufRet.f32 %3855, 3
  %3860 = select i1 %3853, float %3856, float %3858
  %3861 = select i1 %3854, float %3857, float %3859
  %3862 = fmul fast float %3860, %3851
  %3863 = fmul fast float %3861, %3852
  %3864 = call float @dx.op.unary.f32(i32 6, float %3862)  ; FAbs(value)
  %3865 = call float @dx.op.unary.f32(i32 6, float %3863)  ; FAbs(value)
  %3866 = call float @dx.op.binary.f32(i32 35, float %3864, float %3865)  ; FMax(a,b)
  %3867 = fsub fast float %3846, %3866
  %3868 = call float @dx.op.unary.f32(i32 7, float %3867)  ; Saturate(value)
  %3869 = fmul fast float %3868, %3810
  br label %3870

; <label>:3870                                    ; preds = %3847, %3840
  %3871 = phi float [ %3869, %3847 ], [ 0.000000e+00, %3840 ]
  %3872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3873 = extractvalue %dx.types.CBufRet.f32 %3872, 1
  %3874 = call float @dx.op.unary.f32(i32 7, float %3873)  ; Saturate(value)
  %3875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3876 = extractvalue %dx.types.CBufRet.f32 %3875, 0
  %3877 = extractvalue %dx.types.CBufRet.f32 %3875, 1
  %3878 = fsub fast float %3779, %3876
  %3879 = fsub fast float %3783, %3877
  %3880 = fcmp fast olt float %3878, 0.000000e+00
  %3881 = fcmp fast olt float %3879, 0.000000e+00
  %3882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3883 = extractvalue %dx.types.CBufRet.f32 %3882, 0
  %3884 = extractvalue %dx.types.CBufRet.f32 %3882, 1
  %3885 = extractvalue %dx.types.CBufRet.f32 %3882, 2
  %3886 = extractvalue %dx.types.CBufRet.f32 %3882, 3
  %3887 = select i1 %3880, float %3883, float %3885
  %3888 = select i1 %3881, float %3884, float %3886
  %3889 = fmul fast float %3887, %3878
  %3890 = fmul fast float %3888, %3879
  %3891 = call float @dx.op.unary.f32(i32 6, float %3889)  ; FAbs(value)
  %3892 = call float @dx.op.unary.f32(i32 6, float %3890)  ; FAbs(value)
  %3893 = call float @dx.op.binary.f32(i32 35, float %3891, float %3892)  ; FMax(a,b)
  %3894 = fsub fast float %3846, %3893
  %3895 = call float @dx.op.unary.f32(i32 7, float %3894)  ; Saturate(value)
  %3896 = call float @dx.op.binary.f32(i32 36, float %3895, float %3874)  ; FMin(a,b)
  %3897 = fmul fast float %3896, %3810
  %3898 = fsub fast float %3871, %3897
  %3899 = fsub fast float %3841, %3871
  %3900 = fsub fast float %3899, %3897
  %3901 = call float @dx.op.binary.f32(i32 35, float %3871, float %3841)  ; FMax(a,b)
  %3902 = call float @dx.op.binary.f32(i32 35, float %3897, float %3901)  ; FMax(a,b)
  %3903 = fcmp fast olt float %3902, 1.000000e+00
  br i1 %3903, label %3904, label %4302, !dx.controlflow.hints !82

; <label>:3904                                    ; preds = %3870
  %3905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3906 = extractvalue %dx.types.CBufRet.f32 %3905, 0
  %3907 = fcmp fast une float %3906, 0.000000e+00
  br i1 %3907, label %3908, label %4302, !dx.controlflow.hints !83

; <label>:3908                                    ; preds = %3904
  %3909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3910 = extractvalue %dx.types.CBufRet.f32 %3909, 0
  %3911 = extractvalue %dx.types.CBufRet.f32 %3909, 1
  %3912 = extractvalue %dx.types.CBufRet.f32 %3909, 2
  %3913 = extractvalue %dx.types.CBufRet.f32 %3909, 3
  %3914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3915 = extractvalue %dx.types.CBufRet.f32 %3914, 0
  %3916 = extractvalue %dx.types.CBufRet.f32 %3914, 1
  %3917 = extractvalue %dx.types.CBufRet.f32 %3914, 2
  %3918 = extractvalue %dx.types.CBufRet.f32 %3914, 3
  %3919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3920 = extractvalue %dx.types.CBufRet.f32 %3919, 0
  %3921 = extractvalue %dx.types.CBufRet.f32 %3919, 1
  %3922 = extractvalue %dx.types.CBufRet.f32 %3919, 2
  %3923 = extractvalue %dx.types.CBufRet.f32 %3919, 3
  %3924 = fmul fast float %3910, %3756
  %3925 = call float @dx.op.tertiary.f32(i32 46, float %3757, float %3911, float %3924)  ; FMad(a,b,c)
  %3926 = call float @dx.op.tertiary.f32(i32 46, float %3758, float %3912, float %3925)  ; FMad(a,b,c)
  %3927 = fadd fast float %3926, %3913
  %3928 = fmul fast float %3915, %3756
  %3929 = call float @dx.op.tertiary.f32(i32 46, float %3757, float %3916, float %3928)  ; FMad(a,b,c)
  %3930 = call float @dx.op.tertiary.f32(i32 46, float %3758, float %3917, float %3929)  ; FMad(a,b,c)
  %3931 = fadd fast float %3930, %3918
  %3932 = fmul fast float %3920, %3756
  %3933 = call float @dx.op.tertiary.f32(i32 46, float %3757, float %3921, float %3932)  ; FMad(a,b,c)
  %3934 = call float @dx.op.tertiary.f32(i32 46, float %3758, float %3922, float %3933)  ; FMad(a,b,c)
  %3935 = fadd fast float %3934, %3923
  %3936 = fcmp fast oge float %3927, 1.000000e+00
  %3937 = fcmp fast oge float %3931, 1.000000e+00
  %3938 = or i1 %3936, %3937
  %3939 = fcmp fast olt float %3927, 0.000000e+00
  %3940 = fcmp fast olt float %3931, 0.000000e+00
  %3941 = or i1 %3939, %3940
  %3942 = or i1 %3938, %3941
  br i1 %3942, label %4302, label %3943, !dx.controlflow.hints !84

; <label>:3943                                    ; preds = %3908
  %3944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3945 = extractvalue %dx.types.CBufRet.f32 %3944, 0
  %3946 = extractvalue %dx.types.CBufRet.f32 %3944, 1
  %3947 = extractvalue %dx.types.CBufRet.f32 %3944, 2
  %3948 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3949 = extractvalue %dx.types.CBufRet.i32 %3948, 2
  %3950 = uitofp i32 %3949 to float
  %3951 = extractvalue %dx.types.CBufRet.i32 %3948, 3
  %3952 = uitofp i32 %3951 to float
  %3953 = extractvalue %dx.types.CBufRet.f32 %3944, 3
  %3954 = fmul fast float %3953, 2.000000e+00
  %3955 = fsub fast float %3927, %3945
  %3956 = fsub fast float %3931, %3946
  %3957 = fmul fast float %3954, %3955
  %3958 = fmul fast float %3954, %3956
  %3959 = fdiv fast float 1.000000e+00, %3739
  %3960 = fmul fast float %3958, %3959
  %3961 = call float @dx.op.unary.f32(i32 6, float %3960)  ; FAbs(value)
  %3962 = fmul fast float %3947, %3758
  %3963 = fmul fast float %3962, %3954
  %3964 = call float @dx.op.unary.f32(i32 6, float %3963)  ; FAbs(value)
  %3965 = call float @dx.op.unary.f32(i32 6, float %3957)  ; FAbs(value)
  %3966 = call float @dx.op.binary.f32(i32 35, float %3964, float %3961)  ; FMax(a,b)
  %3967 = call float @dx.op.binary.f32(i32 35, float %3965, float %3966)  ; FMax(a,b)
  %3968 = fmul fast float %3967, 2.000000e+00
  %3969 = call float @dx.op.unary.f32(i32 23, float %3968)  ; Log(value)
  %3970 = call float @dx.op.binary.f32(i32 35, float %3969, float %3950)  ; FMax(a,b)
  %3971 = call float @dx.op.unary.f32(i32 22, float %3970)  ; Frc(value)
  %3972 = fadd fast float %3971, 0xBFEA666660000000
  %3973 = fmul fast float %3972, 8.000000e+00
  %3974 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3975 = call float @dx.op.unary.f32(i32 27, float %3970)  ; Round_ni(value)
  %3976 = fadd fast float %3975, %3974
  %3977 = call float @dx.op.binary.f32(i32 36, float %3976, float %3952)  ; FMin(a,b)
  %3978 = call float @dx.op.unary.f32(i32 27, float %3977)  ; Round_ni(value)
  %3979 = fsub fast float -0.000000e+00, %3978
  %3980 = call float @dx.op.unary.f32(i32 21, float %3979)  ; Exp(value)
  %3981 = fmul fast float %3980, %3954
  %3982 = fmul fast float %3981, %3927
  %3983 = fmul fast float %3981, %3931
  %3984 = fmul fast float %3982, 2.500000e-01
  %3985 = fmul fast float %3983, 2.500000e-01
  %3986 = fadd fast float %3984, 5.000000e-01
  %3987 = fadd fast float %3985, 5.000000e-01
  %3988 = fsub fast float %3952, %3950
  %3989 = fptoui float %3988 to i32
  %3990 = add i32 %3989, 320
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %3990)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 0
  %3993 = extractvalue %dx.types.CBufRet.f32 %3991, 1
  %3994 = fcmp fast une float %3977, %3952
  %3995 = fsub fast float %3927, %3992
  %3996 = fsub fast float %3931, %3993
  %3997 = call float @dx.op.unary.f32(i32 6, float %3995)  ; FAbs(value)
  %3998 = call float @dx.op.unary.f32(i32 6, float %3996)  ; FAbs(value)
  %3999 = fmul fast float %3997, %3981
  %4000 = fmul fast float %3998, %3981
  %4001 = fcmp fast olt float %3999, 1.000000e+00
  %4002 = fcmp fast olt float %4000, 1.000000e+00
  %4003 = and i1 %4001, %4002
  %4004 = or i1 %3994, %4003
  br i1 %4004, label %4005, label %4302, !dx.controlflow.hints !85

; <label>:4005                                    ; preds = %3943
  %4006 = fmul fast float %3983, 5.000000e-01
  %4007 = fmul fast float %3982, 5.000000e-01
  %4008 = fadd fast float %4006, 5.000000e-01
  %4009 = fadd fast float %4007, 5.000000e-01
  %4010 = sitofp i32 %3949 to float
  %4011 = fsub fast float %3977, %4010
  %4012 = call float @dx.op.unary.f32(i32 27, float %4011)  ; Round_ni(value)
  %4013 = call float @dx.op.unary.f32(i32 22, float %3977)  ; Frc(value)
  %4014 = call float @dx.op.unary.f32(i32 22, float %4009)  ; Frc(value)
  %4015 = call float @dx.op.unary.f32(i32 22, float %4008)  ; Frc(value)
  %4016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %4014, float %4015, float %4012, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4017 = extractvalue %dx.types.ResRet.f32 %4016, 0
  %4018 = extractvalue %dx.types.ResRet.f32 %4016, 1
  %4019 = extractvalue %dx.types.ResRet.f32 %4016, 2
  %4020 = extractvalue %dx.types.ResRet.f32 %4016, 3
  %4021 = fcmp fast ogt float %4013, 0.000000e+00
  br i1 %4021, label %4022, label %4043, !dx.controlflow.hints !86

; <label>:4022                                    ; preds = %4005
  %4023 = fadd fast float %4012, 1.000000e+00
  %4024 = call float @dx.op.unary.f32(i32 22, float %3986)  ; Frc(value)
  %4025 = call float @dx.op.unary.f32(i32 22, float %3987)  ; Frc(value)
  %4026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %4024, float %4025, float %4023, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4027 = extractvalue %dx.types.ResRet.f32 %4026, 0
  %4028 = extractvalue %dx.types.ResRet.f32 %4026, 1
  %4029 = extractvalue %dx.types.ResRet.f32 %4026, 2
  %4030 = extractvalue %dx.types.ResRet.f32 %4026, 3
  %4031 = fsub fast float %4027, %4017
  %4032 = fsub fast float %4028, %4018
  %4033 = fsub fast float %4029, %4019
  %4034 = fsub fast float %4030, %4020
  %4035 = fmul fast float %4031, %4013
  %4036 = fmul fast float %4032, %4013
  %4037 = fmul fast float %4033, %4013
  %4038 = fmul fast float %4034, %4013
  %4039 = fadd fast float %4035, %4017
  %4040 = fadd fast float %4036, %4018
  %4041 = fadd fast float %4037, %4019
  %4042 = fadd fast float %4038, %4020
  br label %4043

; <label>:4043                                    ; preds = %4022, %4005
  %4044 = phi float [ %4039, %4022 ], [ %4017, %4005 ]
  %4045 = phi float [ %4040, %4022 ], [ %4018, %4005 ]
  %4046 = phi float [ %4041, %4022 ], [ %4019, %4005 ]
  %4047 = phi float [ %4042, %4022 ], [ %4020, %4005 ]
  %4048 = fadd fast float %4044, -5.000000e-01
  %4049 = fadd fast float %4046, -5.000000e-01
  %4050 = fmul fast float %4048, 0xBFD5555560000000
  %4051 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4049, float %4050)  ; FMad(a,b,c)
  %4052 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4045, float 0.000000e+00)  ; FMad(a,b,c)
  %4053 = fadd fast float %4052, %4047
  %4054 = fmul fast float %4048, -7.500000e-01
  %4055 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4049, float %4054)  ; FMad(a,b,c)
  %4056 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4045, float 0.000000e+00)  ; FMad(a,b,c)
  %4057 = fadd fast float %4056, %4047
  %4058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.f32 %4058, 0
  %4060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.f32 %4060, 0
  %4062 = extractvalue %dx.types.CBufRet.f32 %4060, 1
  %4063 = extractvalue %dx.types.CBufRet.f32 %4060, 2
  %4064 = extractvalue %dx.types.CBufRet.f32 %4060, 3
  %4065 = fsub fast float %4061, %4051
  %4066 = fsub fast float %4062, %4053
  %4067 = fsub fast float %4063, %4055
  %4068 = fsub fast float %4064, %4057
  %4069 = fmul fast float %4065, %4059
  %4070 = fmul fast float %4066, %4059
  %4071 = fmul fast float %4067, %4059
  %4072 = fmul fast float %4068, %4059
  %4073 = fadd fast float %4069, %4051
  %4074 = fadd fast float %4070, %4053
  %4075 = fadd fast float %4071, %4055
  %4076 = fadd fast float %4072, %4057
  %4077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4078 = extractvalue %dx.types.ResRet.i32 %4077, 0
  %4079 = and i32 %4078, 536870911
  %4080 = uitofp i32 %4079 to float
  %4081 = fmul fast float %4080, %3927
  %4082 = fmul fast float %4080, %3931
  %4083 = fptoui float %4081 to i32
  %4084 = fptoui float %4082 to i32
  %4085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4086 = extractvalue %dx.types.ResRet.i32 %4085, 0
  %4087 = and i32 %4086, 31
  %4088 = lshr i32 %4083, %4087
  %4089 = lshr i32 %4084, %4087
  %4090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.i32 %4090, 0
  %4092 = and i32 %4091, 31
  %4093 = shl i32 1, %4092
  %4094 = call i32 @dx.op.binary.i32(i32 40, i32 %4093, i32 4)  ; UMin(a,b)
  %4095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.i32 %4095, 0
  %4097 = extractvalue %dx.types.ResRet.i32 %4095, 1
  %4098 = icmp eq i32 %4094, 0
  br i1 %4098, label %4140, label %4099

; <label>:4099                                    ; preds = %4043
  br label %4100

; <label>:4100                                    ; preds = %4128, %4099
  %4101 = phi i32 [ %4131, %4128 ], [ 0, %4099 ]
  %4102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4103 = extractvalue %dx.types.ResRet.i32 %4102, 0
  %4104 = lshr i32 %4103, 16
  %4105 = and i32 %4104, 31
  %4106 = shl i32 %4089, %4105
  %4107 = add i32 %4106, %4088
  %4108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4109 = extractvalue %dx.types.ResRet.i32 %4108, 0
  %4110 = and i32 %4109, 31
  %4111 = shl i32 %4107, %4110
  %4112 = add i32 %4111, %4101
  %4113 = shl i32 %4112, 2
  %4114 = add i32 %4113, 32
  %4115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4114, i32 undef)  ; BufferLoad(srv,index,wot)
  %4116 = extractvalue %dx.types.ResRet.i32 %4115, 0
  %4117 = icmp slt i32 %4116, 0
  %4118 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 %4101
  %4119 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %4101
  %4120 = bitcast float* %4118 to i32*
  %4121 = bitcast float* %4119 to i32*
  br i1 %4117, label %4122, label %4128

; <label>:4122                                    ; preds = %4100
  %4123 = and i32 %4116, 1073741823
  %4124 = add nuw nsw i32 %4123, 20
  %4125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4124, i32 undef)  ; BufferLoad(srv,index,wot)
  %4126 = extractvalue %dx.types.ResRet.i32 %4125, 0
  %4127 = extractvalue %dx.types.ResRet.i32 %4125, 1
  br label %4128

; <label>:4128                                    ; preds = %4122, %4100
  %4129 = phi i32 [ %4126, %4122 ], [ %4096, %4100 ]
  %4130 = phi i32 [ %4127, %4122 ], [ %4097, %4100 ]
  store i32 %4129, i32* %4120, align 4
  store i32 %4130, i32* %4121, align 4
  %4131 = add nuw i32 %4101, 1
  %4132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4133 = extractvalue %dx.types.CBufRet.i32 %4132, 2
  %4134 = icmp eq i32 %4133, 0
  %4135 = icmp ugt i32 %4116, -1073741825
  %4136 = and i1 %4135, %4134
  %4137 = icmp ult i32 %4131, %4094
  %4138 = and i1 %4136, %4137
  br i1 %4138, label %4100, label %4139

; <label>:4139                                    ; preds = %4128
  br label %4140

; <label>:4140                                    ; preds = %4139, %4043
  %4141 = phi i32 [ 0, %4043 ], [ %4131, %4139 ]
  %4142 = extractvalue %dx.types.CBufRet.f32 %3905, 2
  %4143 = fptoui float %4142 to i32
  %4144 = icmp eq i32 %4143, 0
  br i1 %4144, label %4196, label %4145

; <label>:4145                                    ; preds = %4140
  br label %4146

; <label>:4146                                    ; preds = %4191, %4145
  %4147 = phi i32 [ %4192, %4191 ], [ %4141, %4145 ]
  %4148 = phi i32 [ %4193, %4191 ], [ 0, %4145 ]
  %4149 = lshr i32 %4148, 2
  %4150 = and i32 %4148, 3
  %4151 = add nuw nsw i32 %4149, 83
  %4152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 %4151)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.i32 %4152, 0
  %4154 = extractvalue %dx.types.CBufRet.i32 %4152, 1
  %4155 = extractvalue %dx.types.CBufRet.i32 %4152, 2
  %4156 = extractvalue %dx.types.CBufRet.i32 %4152, 3
  %4157 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 0
  store i32 %4153, i32* %4157, align 4
  %4158 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 1
  store i32 %4154, i32* %4158, align 4
  %4159 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 2
  store i32 %4155, i32* %4159, align 4
  %4160 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 3
  store i32 %4156, i32* %4160, align 4
  %4161 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 %4150
  %4162 = load i32, i32* %4161, align 4, !tbaa !87, !noalias !91
  %4163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4164 = extractvalue %dx.types.ResRet.i32 %4163, 0
  %4165 = lshr i32 %4164, 16
  %4166 = and i32 %4165, 31
  %4167 = shl i32 %4089, %4166
  %4168 = add i32 %4167, %4088
  %4169 = shl i32 %4168, 2
  %4170 = add i32 %4169, %4162
  %4171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4170, i32 undef)  ; BufferLoad(srv,index,wot)
  %4172 = extractvalue %dx.types.ResRet.i32 %4171, 0
  %4173 = icmp eq i32 %4172, 0
  br i1 %4173, label %4191, label %4174

; <label>:4174                                    ; preds = %4146
  %4175 = icmp slt i32 %4172, 0
  %4176 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 %4147
  %4177 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %4147
  %4178 = bitcast float* %4176 to i32*
  %4179 = bitcast float* %4177 to i32*
  br i1 %4175, label %4180, label %4187

; <label>:4180                                    ; preds = %4174
  %4181 = and i32 %4172, 1073741823
  %4182 = add i32 %4162, 20
  %4183 = add i32 %4182, %4181
  %4184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4183, i32 undef)  ; BufferLoad(srv,index,wot)
  %4185 = extractvalue %dx.types.ResRet.i32 %4184, 0
  %4186 = extractvalue %dx.types.ResRet.i32 %4184, 1
  br label %4187

; <label>:4187                                    ; preds = %4180, %4174
  %4188 = phi i32 [ %4185, %4180 ], [ %4096, %4174 ]
  %4189 = phi i32 [ %4186, %4180 ], [ %4097, %4174 ]
  store i32 %4188, i32* %4178, align 4
  store i32 %4189, i32* %4179, align 4
  %4190 = add i32 %4147, 1
  br label %4191

; <label>:4191                                    ; preds = %4187, %4146
  %4192 = phi i32 [ %4147, %4146 ], [ %4190, %4187 ]
  %4193 = add nuw i32 %4148, 1
  %4194 = icmp eq i32 %4193, %4143
  br i1 %4194, label %4195, label %4146

; <label>:4195                                    ; preds = %4191
  br label %4196

; <label>:4196                                    ; preds = %4195, %4140
  %4197 = phi i32 [ %4141, %4140 ], [ %4192, %4195 ]
  %4198 = icmp eq i32 %4197, 1
  %4199 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 0
  %4200 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 0
  br i1 %4198, label %4201, label %4204

; <label>:4201                                    ; preds = %4196
  %4202 = load float, float* %4199, align 4
  %4203 = load float, float* %4200, align 4
  br label %4231

; <label>:4204                                    ; preds = %4196
  %4205 = load float, float* %4199, align 4
  %4206 = load float, float* %4200, align 4
  %4207 = fdiv fast float 1.000000e+00, %4206
  %4208 = fsub fast float %4205, %4207
  %4209 = icmp ugt i32 %4197, 1
  br i1 %4209, label %4210, label %4226

; <label>:4210                                    ; preds = %4204
  br label %4211

; <label>:4211                                    ; preds = %4211, %4210
  %4212 = phi float [ %4221, %4211 ], [ %4208, %4210 ]
  %4213 = phi float [ %4222, %4211 ], [ %4205, %4210 ]
  %4214 = phi i32 [ %4223, %4211 ], [ 1, %4210 ]
  %4215 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 %4214
  %4216 = load float, float* %4215, align 4
  %4217 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %4214
  %4218 = load float, float* %4217, align 4
  %4219 = fdiv fast float 1.000000e+00, %4218
  %4220 = fsub fast float %4216, %4219
  %4221 = call float @dx.op.binary.f32(i32 36, float %4212, float %4220)  ; FMin(a,b)
  %4222 = call float @dx.op.binary.f32(i32 35, float %4213, float %4216)  ; FMax(a,b)
  %4223 = add nuw i32 %4214, 1
  %4224 = icmp eq i32 %4223, %4197
  br i1 %4224, label %4225, label %4211

; <label>:4225                                    ; preds = %4211
  br label %4226

; <label>:4226                                    ; preds = %4225, %4204
  %4227 = phi float [ %4208, %4204 ], [ %4221, %4225 ]
  %4228 = phi float [ %4205, %4204 ], [ %4222, %4225 ]
  %4229 = fsub fast float %4228, %4227
  %4230 = fdiv fast float 1.000000e+00, %4229
  br label %4231

; <label>:4231                                    ; preds = %4226, %4201
  %4232 = phi float [ %4202, %4201 ], [ %4228, %4226 ]
  %4233 = phi float [ %4203, %4201 ], [ %4230, %4226 ]
  %4234 = fadd fast float %3935, %4232
  %4235 = fmul fast float %4234, %4233
  %4236 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4237 = fmul fast float %4236, 2.000000e+00
  %4238 = fsub fast float 1.000000e+00, %4237
  %4239 = fmul fast float %4073, %4073
  %4240 = fsub fast float %4074, %4239
  %4241 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4240)  ; FMax(a,b)
  %4242 = fdiv fast float 1.000000e+00, %4241
  %4243 = fmul fast float %4074, %4073
  %4244 = fsub fast float %4075, %4243
  %4245 = fsub fast float %4238, %4073
  %4246 = fmul fast float %4238, %4238
  %4247 = fsub fast float %4246, %4074
  %4248 = fmul fast float %4242, %4244
  %4249 = fmul fast float %4248, %4245
  %4250 = fsub fast float %4247, %4249
  %4251 = fmul fast float %4074, %4074
  %4252 = fsub fast float %4076, %4251
  %4253 = fmul fast float %4244, %4244
  %4254 = fmul fast float %4253, %4242
  %4255 = fsub fast float %4252, %4254
  %4256 = fdiv fast float %4250, %4255
  %4257 = fmul fast float %4256, %4244
  %4258 = fsub fast float %4245, %4257
  %4259 = fmul fast float %4258, %4242
  %4260 = fmul fast float %4259, %4073
  %4261 = fsub fast float 1.000000e+00, %4260
  %4262 = fmul fast float %4256, %4074
  %4263 = fsub fast float %4261, %4262
  %4264 = fmul fast float %4259, %4259
  %4265 = fmul fast float %4256, 4.000000e+00
  %4266 = fmul fast float %4265, %4263
  %4267 = fsub fast float %4264, %4266
  %4268 = call float @dx.op.unary.f32(i32 24, float %4267)  ; Sqrt(value)
  %4269 = fcmp fast oge float %4259, 0.000000e+00
  %4270 = fsub fast float -0.000000e+00, %4268
  %4271 = select i1 %4269, float %4270, float %4268
  %4272 = fsub fast float %4271, %4259
  %4273 = fdiv fast float %4272, %4256
  %4274 = fdiv fast float %4263, %4272
  %4275 = fmul fast float %4273, 5.000000e-01
  %4276 = fmul fast float %4274, 2.000000e+00
  %4277 = select i1 %4269, float %4275, float %4276
  %4278 = select i1 %4269, float %4276, float %4275
  %4279 = call float @dx.op.binary.f32(i32 35, float %4277, float %4278)  ; FMax(a,b)
  %4280 = call float @dx.op.binary.f32(i32 36, float %4277, float %4278)  ; FMin(a,b)
  %4281 = fcmp fast ogt float %4238, %4279
  %4282 = fsub fast float %4238, %4280
  %4283 = fsub fast float %4238, %4279
  %4284 = fsub fast float %4279, %4280
  %4285 = select i1 %4281, float %4283, float %4284
  %4286 = fmul float %4282, %4285
  %4287 = select i1 %4281, float %4280, float %4238
  %4288 = fcmp fast ogt float %4238, %4280
  %4289 = fmul fast float %4287, %4279
  %4290 = fadd fast float %4287, %4279
  %4291 = fmul fast float %4290, %4073
  %4292 = fadd fast float %4289, %4074
  %4293 = fsub fast float %4292, %4291
  %4294 = fdiv fast float %4293, %4286
  %4295 = select i1 %4288, float %4294, float 0.000000e+00
  %4296 = fsub fast float 1.000000e+00, %4295
  %4297 = select i1 %4281, float %4296, float %4295
  %4298 = call float @dx.op.unary.f32(i32 7, float %4297)  ; Saturate(value)
  %4299 = extractvalue %dx.types.CBufRet.f32 %4058, 3
  %4300 = fmul fast float %4299, %4298
  %4301 = fsub fast float 1.000000e+00, %4300
  br label %4302

; <label>:4302                                    ; preds = %4231, %3943, %3908, %3904, %3870
  %4303 = phi float [ 1.000000e+00, %3870 ], [ %4301, %4231 ], [ 1.000000e+00, %3908 ], [ 1.000000e+00, %3943 ], [ 1.000000e+00, %3904 ]
  %4304 = fcmp fast ogt float %3900, 0.000000e+00
  br i1 %4304, label %4305, label %4467, !dx.controlflow.hints !100

; <label>:4305                                    ; preds = %4302
  %4306 = fadd fast float %3813, %3787
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 2
  %4309 = extractvalue %dx.types.CBufRet.f32 %4307, 3
  %4310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4311 = extractvalue %dx.types.CBufRet.f32 %4310, 2
  %4312 = call float @dx.op.binary.f32(i32 35, float %4306, float 0.000000e+00)  ; FMax(a,b)
  %4313 = fadd fast float %4312, 0x3F10000000000000
  %4314 = fcmp fast oeq float %4311, 0.000000e+00
  br i1 %4314, label %4315, label %4382

; <label>:4315                                    ; preds = %4305
  %4316 = extractvalue %dx.types.CBufRet.f32 %4307, 1
  %4317 = extractvalue %dx.types.CBufRet.f32 %4307, 0
  %4318 = fmul fast float %4317, %3802
  %4319 = fmul fast float %4316, %3803
  %4320 = fadd fast float %4318, 5.000000e-01
  %4321 = call float @dx.op.unary.f32(i32 27, float %4320)  ; Round_ni(value)
  %4322 = fadd fast float %4319, 5.000000e-01
  %4323 = call float @dx.op.unary.f32(i32 27, float %4322)  ; Round_ni(value)
  %4324 = fsub fast float %4320, %4321
  %4325 = fsub fast float %4322, %4323
  %4326 = fadd fast float %4321, -5.000000e-01
  %4327 = fadd fast float %4323, -5.000000e-01
  %4328 = fmul fast float %4324, 2.000000e+00
  %4329 = fsub fast float 3.000000e+00, %4328
  %4330 = fadd fast float %4328, 1.000000e+00
  %4331 = fsub fast float 2.000000e+00, %4324
  %4332 = bitcast float %4329 to i32
  %4333 = sub nsw i32 2129859010, %4332
  %4334 = bitcast i32 %4333 to float
  %4335 = fmul fast float %4334, %4331
  %4336 = fadd fast float %4335, -1.000000e+00
  %4337 = bitcast float %4330 to i32
  %4338 = sub nsw i32 2129859010, %4337
  %4339 = bitcast i32 %4338 to float
  %4340 = fmul fast float %4339, %4324
  %4341 = fadd fast float %4340, 1.000000e+00
  %4342 = fmul fast float %4325, 2.000000e+00
  %4343 = fsub fast float 3.000000e+00, %4342
  %4344 = fadd fast float %4342, 1.000000e+00
  %4345 = fsub fast float 2.000000e+00, %4325
  %4346 = bitcast float %4343 to i32
  %4347 = sub nsw i32 2129859010, %4346
  %4348 = bitcast i32 %4347 to float
  %4349 = fmul fast float %4348, %4345
  %4350 = fadd fast float %4349, -1.000000e+00
  %4351 = bitcast float %4344 to i32
  %4352 = sub nsw i32 2129859010, %4351
  %4353 = bitcast i32 %4352 to float
  %4354 = fmul fast float %4353, %4325
  %4355 = fadd fast float %4354, 1.000000e+00
  %4356 = fadd fast float %4336, %4326
  %4357 = fmul fast float %4356, %4308
  %4358 = fadd fast float %4350, %4327
  %4359 = fmul fast float %4358, %4309
  %4360 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %42, float %4357, float %4359, float undef, float undef, i32 0, i32 0, i32 undef, float %4313)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4361 = extractvalue %dx.types.ResRet.f32 %4360, 0
  %4362 = fmul fast float %4361, %4329
  %4363 = fadd fast float %4341, %4326
  %4364 = fmul fast float %4363, %4308
  %4365 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %42, float %4364, float %4359, float undef, float undef, i32 0, i32 0, i32 undef, float %4313)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4366 = extractvalue %dx.types.ResRet.f32 %4365, 0
  %4367 = fmul fast float %4366, %4330
  %4368 = fadd fast float %4355, %4327
  %4369 = fmul fast float %4368, %4309
  %4370 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %42, float %4357, float %4369, float undef, float undef, i32 0, i32 0, i32 undef, float %4313)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4371 = extractvalue %dx.types.ResRet.f32 %4370, 0
  %4372 = fmul fast float %4371, %4329
  %4373 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %42, float %4364, float %4369, float undef, float undef, i32 0, i32 0, i32 undef, float %4313)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4374 = extractvalue %dx.types.ResRet.f32 %4373, 0
  %4375 = fmul fast float %4374, %4330
  %4376 = fadd fast float %4375, %4372
  %4377 = fmul fast float %4376, %4344
  %4378 = fadd fast float %4367, %4362
  %4379 = fmul fast float %4378, %4343
  %4380 = fadd fast float %4379, %4377
  %4381 = fmul fast float %4380, 6.250000e-02
  br label %4467

; <label>:4382                                    ; preds = %4305
  %4383 = fmul fast float %204, 0x401921FB60000000
  %4384 = call float @dx.op.unary.f32(i32 13, float %4383)  ; Sin(value)
  %4385 = call float @dx.op.unary.f32(i32 12, float %4383)  ; Cos(value)
  %4386 = fsub fast float -0.000000e+00, %4384
  br label %4387

; <label>:4387                                    ; preds = %4436, %4382
  %4388 = phi float [ 0.000000e+00, %4382 ], [ %4431, %4436 ]
  %4389 = phi float [ 0.000000e+00, %4382 ], [ %4433, %4436 ]
  %4390 = phi i32 [ 0, %4382 ], [ %4437, %4436 ]
  %4391 = mul i32 %4390, 2
  %4392 = add i32 0, %4391
  %4393 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4392
  %4394 = load float, float* %4393, align 4
  %4395 = mul i32 %4390, 2
  %4396 = add i32 1, %4395
  %4397 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4396
  %4398 = load float, float* %4397, align 4
  %4399 = fmul fast float %4394, %4385
  %4400 = call float @dx.op.tertiary.f32(i32 46, float %4398, float %4386, float %4399)  ; FMad(a,b,c)
  %4401 = fmul fast float %4394, %4384
  %4402 = call float @dx.op.tertiary.f32(i32 46, float %4398, float %4385, float %4401)  ; FMad(a,b,c)
  %4403 = fmul fast float %4400, %4311
  %4404 = fmul fast float %4402, %4311
  %4405 = fadd fast float %4403, %3802
  %4406 = fadd fast float %4404, %3803
  %4407 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %41, float %4405, float %4406, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4408 = extractvalue %dx.types.ResRet.f32 %4407, 0
  %4409 = extractvalue %dx.types.ResRet.f32 %4407, 1
  %4410 = extractvalue %dx.types.ResRet.f32 %4407, 2
  %4411 = extractvalue %dx.types.ResRet.f32 %4407, 3
  %4412 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 0
  store float %4408, float* %4412, align 4
  %4413 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 1
  store float %4409, float* %4413, align 4
  %4414 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 2
  store float %4410, float* %4414, align 4
  %4415 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 3
  store float %4411, float* %4415, align 4
  %4416 = fsub fast float %4408, %4313
  %4417 = fcmp fast olt float %4416, 0.000000e+00
  %4418 = select i1 %4417, float 0.000000e+00, float 1.000000e+00
  %4419 = fadd fast float %4418, %4388
  %4420 = fmul fast float %4418, %4416
  %4421 = fadd fast float %4420, %4389
  br label %4422

; <label>:4422                                    ; preds = %4422, %4387
  %4423 = phi i32 [ 1, %4387 ], [ %4434, %4422 ]
  %4424 = phi float [ %4421, %4387 ], [ %4433, %4422 ]
  %4425 = phi float [ %4419, %4387 ], [ %4431, %4422 ]
  %4426 = getelementptr [4 x float], [4 x float]* %77, i32 0, i32 %4423
  %4427 = load float, float* %4426, align 4, !tbaa !101, !noalias !91
  %4428 = fsub fast float %4427, %4313
  %4429 = fcmp fast olt float %4428, 0.000000e+00
  %4430 = select i1 %4429, float 0.000000e+00, float 1.000000e+00
  %4431 = fadd fast float %4430, %4425
  %4432 = fmul fast float %4430, %4428
  %4433 = fadd fast float %4432, %4424
  %4434 = add nuw nsw i32 %4423, 1
  %4435 = icmp eq i32 %4434, 4
  br i1 %4435, label %4436, label %4422, !llvm.loop !103

; <label>:4436                                    ; preds = %4422
  %4437 = add nuw nsw i32 %4390, 1
  %4438 = icmp eq i32 %4437, 8
  br i1 %4438, label %4439, label %4387, !llvm.loop !104

; <label>:4439                                    ; preds = %4436
  %4440 = fdiv fast float 1.000000e+00, %4431
  %4441 = fmul fast float %4440, %4433
  %4442 = fdiv fast float 1.000000e+00, %4313
  %4443 = fmul fast float %4441, %4442
  %4444 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4445 = call float @dx.op.binary.f32(i32 35, float %4444, float 0.000000e+00)  ; FMax(a,b)
  %4446 = fmul fast float %4431, 3.125000e-02
  %4447 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4448 = fmul fast float %4447, 2.000000e+00
  %4449 = fadd fast float %4448, -1.000000e+00
  %4450 = fcmp fast ogt float %4449, 0.000000e+00
  %4451 = fcmp fast olt float %4449, 0.000000e+00
  %4452 = zext i1 %4450 to i32
  %4453 = zext i1 %4451 to i32
  %4454 = sub nsw i32 %4452, %4453
  %4455 = sitofp i32 %4454 to float
  %4456 = fmul fast float %4455, %4449
  %4457 = fsub fast float 1.000000e+00, %4456
  %4458 = fmul fast float %4457, %4457
  %4459 = fmul fast float %4458, %4457
  %4460 = fsub fast float %4457, %4459
  %4461 = fmul fast float %4460, %4445
  %4462 = fsub fast float 1.000000e+00, %4459
  %4463 = fsub fast float %4462, %4461
  %4464 = fmul fast float %4455, 5.000000e-01
  %4465 = fmul fast float %4464, %4463
  %4466 = fsub fast float 5.000000e-01, %4465
  br label %4467

; <label>:4467                                    ; preds = %4439, %4315, %4302
  %4468 = phi float [ 1.000000e+00, %4302 ], [ %4381, %4315 ], [ %4466, %4439 ]
  %4469 = fcmp fast ogt float %3898, 0.000000e+00
  br i1 %4469, label %4470, label %4634, !dx.controlflow.hints !105

; <label>:4470                                    ; preds = %4467
  %4471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4471, 1
  %4473 = fadd fast float %4472, %3787
  %4474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.f32 %4474, 2
  %4476 = extractvalue %dx.types.CBufRet.f32 %4474, 3
  %4477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4478 = extractvalue %dx.types.CBufRet.f32 %4477, 1
  %4479 = call float @dx.op.binary.f32(i32 35, float %4473, float 0.000000e+00)  ; FMax(a,b)
  %4480 = fadd fast float %4479, 0x3F10000000000000
  %4481 = fcmp fast oeq float %4478, 0.000000e+00
  br i1 %4481, label %4482, label %4549

; <label>:4482                                    ; preds = %4470
  %4483 = extractvalue %dx.types.CBufRet.f32 %4474, 1
  %4484 = extractvalue %dx.types.CBufRet.f32 %4474, 0
  %4485 = fmul fast float %4484, %3794
  %4486 = fmul fast float %4483, %3795
  %4487 = fadd fast float %4485, 5.000000e-01
  %4488 = call float @dx.op.unary.f32(i32 27, float %4487)  ; Round_ni(value)
  %4489 = fadd fast float %4486, 5.000000e-01
  %4490 = call float @dx.op.unary.f32(i32 27, float %4489)  ; Round_ni(value)
  %4491 = fsub fast float %4487, %4488
  %4492 = fsub fast float %4489, %4490
  %4493 = fadd fast float %4488, -5.000000e-01
  %4494 = fadd fast float %4490, -5.000000e-01
  %4495 = fmul fast float %4491, 2.000000e+00
  %4496 = fsub fast float 3.000000e+00, %4495
  %4497 = fadd fast float %4495, 1.000000e+00
  %4498 = fsub fast float 2.000000e+00, %4491
  %4499 = bitcast float %4496 to i32
  %4500 = sub nsw i32 2129859010, %4499
  %4501 = bitcast i32 %4500 to float
  %4502 = fmul fast float %4501, %4498
  %4503 = fadd fast float %4502, -1.000000e+00
  %4504 = bitcast float %4497 to i32
  %4505 = sub nsw i32 2129859010, %4504
  %4506 = bitcast i32 %4505 to float
  %4507 = fmul fast float %4506, %4491
  %4508 = fadd fast float %4507, 1.000000e+00
  %4509 = fmul fast float %4492, 2.000000e+00
  %4510 = fsub fast float 3.000000e+00, %4509
  %4511 = fadd fast float %4509, 1.000000e+00
  %4512 = fsub fast float 2.000000e+00, %4492
  %4513 = bitcast float %4510 to i32
  %4514 = sub nsw i32 2129859010, %4513
  %4515 = bitcast i32 %4514 to float
  %4516 = fmul fast float %4515, %4512
  %4517 = fadd fast float %4516, -1.000000e+00
  %4518 = bitcast float %4511 to i32
  %4519 = sub nsw i32 2129859010, %4518
  %4520 = bitcast i32 %4519 to float
  %4521 = fmul fast float %4520, %4492
  %4522 = fadd fast float %4521, 1.000000e+00
  %4523 = fadd fast float %4503, %4493
  %4524 = fmul fast float %4523, %4475
  %4525 = fadd fast float %4517, %4494
  %4526 = fmul fast float %4525, %4476
  %4527 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %42, float %4524, float %4526, float undef, float undef, i32 0, i32 0, i32 undef, float %4480)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4528 = extractvalue %dx.types.ResRet.f32 %4527, 0
  %4529 = fmul fast float %4528, %4496
  %4530 = fadd fast float %4508, %4493
  %4531 = fmul fast float %4530, %4475
  %4532 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %42, float %4531, float %4526, float undef, float undef, i32 0, i32 0, i32 undef, float %4480)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4533 = extractvalue %dx.types.ResRet.f32 %4532, 0
  %4534 = fmul fast float %4533, %4497
  %4535 = fadd fast float %4522, %4494
  %4536 = fmul fast float %4535, %4476
  %4537 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %42, float %4524, float %4536, float undef, float undef, i32 0, i32 0, i32 undef, float %4480)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4538 = extractvalue %dx.types.ResRet.f32 %4537, 0
  %4539 = fmul fast float %4538, %4496
  %4540 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %42, float %4531, float %4536, float undef, float undef, i32 0, i32 0, i32 undef, float %4480)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 0
  %4542 = fmul fast float %4541, %4497
  %4543 = fadd fast float %4542, %4539
  %4544 = fmul fast float %4543, %4511
  %4545 = fadd fast float %4534, %4529
  %4546 = fmul fast float %4545, %4510
  %4547 = fadd fast float %4546, %4544
  %4548 = fmul fast float %4547, 6.250000e-02
  br label %4634

; <label>:4549                                    ; preds = %4470
  %4550 = fmul fast float %204, 0x401921FB60000000
  %4551 = call float @dx.op.unary.f32(i32 13, float %4550)  ; Sin(value)
  %4552 = call float @dx.op.unary.f32(i32 12, float %4550)  ; Cos(value)
  %4553 = fsub fast float -0.000000e+00, %4551
  br label %4554

; <label>:4554                                    ; preds = %4603, %4549
  %4555 = phi float [ 0.000000e+00, %4549 ], [ %4598, %4603 ]
  %4556 = phi float [ 0.000000e+00, %4549 ], [ %4600, %4603 ]
  %4557 = phi i32 [ 0, %4549 ], [ %4604, %4603 ]
  %4558 = mul i32 %4557, 2
  %4559 = add i32 0, %4558
  %4560 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4559
  %4561 = load float, float* %4560, align 4
  %4562 = mul i32 %4557, 2
  %4563 = add i32 1, %4562
  %4564 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4563
  %4565 = load float, float* %4564, align 4
  %4566 = fmul fast float %4561, %4552
  %4567 = call float @dx.op.tertiary.f32(i32 46, float %4565, float %4553, float %4566)  ; FMad(a,b,c)
  %4568 = fmul fast float %4561, %4551
  %4569 = call float @dx.op.tertiary.f32(i32 46, float %4565, float %4552, float %4568)  ; FMad(a,b,c)
  %4570 = fmul fast float %4567, %4478
  %4571 = fmul fast float %4569, %4478
  %4572 = fadd fast float %4570, %3794
  %4573 = fadd fast float %4571, %3795
  %4574 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %41, float %4572, float %4573, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4576 = extractvalue %dx.types.ResRet.f32 %4574, 1
  %4577 = extractvalue %dx.types.ResRet.f32 %4574, 2
  %4578 = extractvalue %dx.types.ResRet.f32 %4574, 3
  %4579 = getelementptr inbounds [4 x float], [4 x float]* %76, i32 0, i32 0
  store float %4575, float* %4579, align 4
  %4580 = getelementptr inbounds [4 x float], [4 x float]* %76, i32 0, i32 1
  store float %4576, float* %4580, align 4
  %4581 = getelementptr inbounds [4 x float], [4 x float]* %76, i32 0, i32 2
  store float %4577, float* %4581, align 4
  %4582 = getelementptr inbounds [4 x float], [4 x float]* %76, i32 0, i32 3
  store float %4578, float* %4582, align 4
  %4583 = fsub fast float %4575, %4480
  %4584 = fcmp fast olt float %4583, 0.000000e+00
  %4585 = select i1 %4584, float 0.000000e+00, float 1.000000e+00
  %4586 = fadd fast float %4585, %4555
  %4587 = fmul fast float %4585, %4583
  %4588 = fadd fast float %4587, %4556
  br label %4589

; <label>:4589                                    ; preds = %4589, %4554
  %4590 = phi i32 [ 1, %4554 ], [ %4601, %4589 ]
  %4591 = phi float [ %4588, %4554 ], [ %4600, %4589 ]
  %4592 = phi float [ %4586, %4554 ], [ %4598, %4589 ]
  %4593 = getelementptr [4 x float], [4 x float]* %76, i32 0, i32 %4590
  %4594 = load float, float* %4593, align 4, !tbaa !101, !noalias !91
  %4595 = fsub fast float %4594, %4480
  %4596 = fcmp fast olt float %4595, 0.000000e+00
  %4597 = select i1 %4596, float 0.000000e+00, float 1.000000e+00
  %4598 = fadd fast float %4597, %4592
  %4599 = fmul fast float %4597, %4595
  %4600 = fadd fast float %4599, %4591
  %4601 = add nuw nsw i32 %4590, 1
  %4602 = icmp eq i32 %4601, 4
  br i1 %4602, label %4603, label %4589, !llvm.loop !103

; <label>:4603                                    ; preds = %4589
  %4604 = add nuw nsw i32 %4557, 1
  %4605 = icmp eq i32 %4604, 8
  br i1 %4605, label %4606, label %4554, !llvm.loop !104

; <label>:4606                                    ; preds = %4603
  %4607 = fdiv fast float 1.000000e+00, %4598
  %4608 = fmul fast float %4607, %4600
  %4609 = fdiv fast float 1.000000e+00, %4480
  %4610 = fmul fast float %4608, %4609
  %4611 = call float @dx.op.unary.f32(i32 7, float %4610)  ; Saturate(value)
  %4612 = call float @dx.op.binary.f32(i32 35, float %4611, float 0.000000e+00)  ; FMax(a,b)
  %4613 = fmul fast float %4598, 3.125000e-02
  %4614 = call float @dx.op.unary.f32(i32 7, float %4613)  ; Saturate(value)
  %4615 = fmul fast float %4614, 2.000000e+00
  %4616 = fadd fast float %4615, -1.000000e+00
  %4617 = fcmp fast ogt float %4616, 0.000000e+00
  %4618 = fcmp fast olt float %4616, 0.000000e+00
  %4619 = zext i1 %4617 to i32
  %4620 = zext i1 %4618 to i32
  %4621 = sub nsw i32 %4619, %4620
  %4622 = sitofp i32 %4621 to float
  %4623 = fmul fast float %4622, %4616
  %4624 = fsub fast float 1.000000e+00, %4623
  %4625 = fmul fast float %4624, %4624
  %4626 = fmul fast float %4625, %4624
  %4627 = fsub fast float %4624, %4626
  %4628 = fmul fast float %4627, %4612
  %4629 = fsub fast float 1.000000e+00, %4626
  %4630 = fsub fast float %4629, %4628
  %4631 = fmul fast float %4622, 5.000000e-01
  %4632 = fmul fast float %4631, %4630
  %4633 = fsub fast float 5.000000e-01, %4632
  br label %4634

; <label>:4634                                    ; preds = %4606, %4482, %4467
  %4635 = phi float [ 1.000000e+00, %4467 ], [ %4548, %4482 ], [ %4633, %4606 ]
  %4636 = fcmp fast ogt float %3897, 0.000000e+00
  br i1 %4636, label %4637, label %4801, !dx.controlflow.hints !106

; <label>:4637                                    ; preds = %4634
  %4638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4638, 0
  %4640 = fadd fast float %4639, %3787
  %4641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4642 = extractvalue %dx.types.CBufRet.f32 %4641, 2
  %4643 = extractvalue %dx.types.CBufRet.f32 %4641, 3
  %4644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4644, 0
  %4646 = call float @dx.op.binary.f32(i32 35, float %4640, float 0.000000e+00)  ; FMax(a,b)
  %4647 = fadd fast float %4646, 0x3F10000000000000
  %4648 = fcmp fast oeq float %4645, 0.000000e+00
  br i1 %4648, label %4649, label %4716

; <label>:4649                                    ; preds = %4637
  %4650 = extractvalue %dx.types.CBufRet.f32 %4641, 1
  %4651 = extractvalue %dx.types.CBufRet.f32 %4641, 0
  %4652 = fmul fast float %4651, %3779
  %4653 = fmul fast float %4650, %3783
  %4654 = fadd fast float %4652, 5.000000e-01
  %4655 = call float @dx.op.unary.f32(i32 27, float %4654)  ; Round_ni(value)
  %4656 = fadd fast float %4653, 5.000000e-01
  %4657 = call float @dx.op.unary.f32(i32 27, float %4656)  ; Round_ni(value)
  %4658 = fsub fast float %4654, %4655
  %4659 = fsub fast float %4656, %4657
  %4660 = fadd fast float %4655, -5.000000e-01
  %4661 = fadd fast float %4657, -5.000000e-01
  %4662 = fmul fast float %4658, 2.000000e+00
  %4663 = fsub fast float 3.000000e+00, %4662
  %4664 = fadd fast float %4662, 1.000000e+00
  %4665 = fsub fast float 2.000000e+00, %4658
  %4666 = bitcast float %4663 to i32
  %4667 = sub nsw i32 2129859010, %4666
  %4668 = bitcast i32 %4667 to float
  %4669 = fmul fast float %4668, %4665
  %4670 = fadd fast float %4669, -1.000000e+00
  %4671 = bitcast float %4664 to i32
  %4672 = sub nsw i32 2129859010, %4671
  %4673 = bitcast i32 %4672 to float
  %4674 = fmul fast float %4673, %4658
  %4675 = fadd fast float %4674, 1.000000e+00
  %4676 = fmul fast float %4659, 2.000000e+00
  %4677 = fsub fast float 3.000000e+00, %4676
  %4678 = fadd fast float %4676, 1.000000e+00
  %4679 = fsub fast float 2.000000e+00, %4659
  %4680 = bitcast float %4677 to i32
  %4681 = sub nsw i32 2129859010, %4680
  %4682 = bitcast i32 %4681 to float
  %4683 = fmul fast float %4682, %4679
  %4684 = fadd fast float %4683, -1.000000e+00
  %4685 = bitcast float %4678 to i32
  %4686 = sub nsw i32 2129859010, %4685
  %4687 = bitcast i32 %4686 to float
  %4688 = fmul fast float %4687, %4659
  %4689 = fadd fast float %4688, 1.000000e+00
  %4690 = fadd fast float %4670, %4660
  %4691 = fmul fast float %4690, %4642
  %4692 = fadd fast float %4684, %4661
  %4693 = fmul fast float %4692, %4643
  %4694 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %42, float %4691, float %4693, float undef, float undef, i32 0, i32 0, i32 undef, float %4647)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4695 = extractvalue %dx.types.ResRet.f32 %4694, 0
  %4696 = fmul fast float %4695, %4663
  %4697 = fadd fast float %4675, %4660
  %4698 = fmul fast float %4697, %4642
  %4699 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %42, float %4698, float %4693, float undef, float undef, i32 0, i32 0, i32 undef, float %4647)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4700 = extractvalue %dx.types.ResRet.f32 %4699, 0
  %4701 = fmul fast float %4700, %4664
  %4702 = fadd fast float %4689, %4661
  %4703 = fmul fast float %4702, %4643
  %4704 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %42, float %4691, float %4703, float undef, float undef, i32 0, i32 0, i32 undef, float %4647)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4705 = extractvalue %dx.types.ResRet.f32 %4704, 0
  %4706 = fmul fast float %4705, %4663
  %4707 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %42, float %4698, float %4703, float undef, float undef, i32 0, i32 0, i32 undef, float %4647)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4708 = extractvalue %dx.types.ResRet.f32 %4707, 0
  %4709 = fmul fast float %4708, %4664
  %4710 = fadd fast float %4709, %4706
  %4711 = fmul fast float %4710, %4678
  %4712 = fadd fast float %4701, %4696
  %4713 = fmul fast float %4712, %4677
  %4714 = fadd fast float %4713, %4711
  %4715 = fmul fast float %4714, 6.250000e-02
  br label %4801

; <label>:4716                                    ; preds = %4637
  %4717 = fmul fast float %204, 0x401921FB60000000
  %4718 = call float @dx.op.unary.f32(i32 13, float %4717)  ; Sin(value)
  %4719 = call float @dx.op.unary.f32(i32 12, float %4717)  ; Cos(value)
  %4720 = fsub fast float -0.000000e+00, %4718
  br label %4721

; <label>:4721                                    ; preds = %4770, %4716
  %4722 = phi float [ 0.000000e+00, %4716 ], [ %4765, %4770 ]
  %4723 = phi float [ 0.000000e+00, %4716 ], [ %4767, %4770 ]
  %4724 = phi i32 [ 0, %4716 ], [ %4771, %4770 ]
  %4725 = mul i32 %4724, 2
  %4726 = add i32 0, %4725
  %4727 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4726
  %4728 = load float, float* %4727, align 4
  %4729 = mul i32 %4724, 2
  %4730 = add i32 1, %4729
  %4731 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4730
  %4732 = load float, float* %4731, align 4
  %4733 = fmul fast float %4728, %4719
  %4734 = call float @dx.op.tertiary.f32(i32 46, float %4732, float %4720, float %4733)  ; FMad(a,b,c)
  %4735 = fmul fast float %4728, %4718
  %4736 = call float @dx.op.tertiary.f32(i32 46, float %4732, float %4719, float %4735)  ; FMad(a,b,c)
  %4737 = fmul fast float %4734, %4645
  %4738 = fmul fast float %4736, %4645
  %4739 = fadd fast float %4737, %3779
  %4740 = fadd fast float %4738, %3783
  %4741 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %41, float %4739, float %4740, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4742 = extractvalue %dx.types.ResRet.f32 %4741, 0
  %4743 = extractvalue %dx.types.ResRet.f32 %4741, 1
  %4744 = extractvalue %dx.types.ResRet.f32 %4741, 2
  %4745 = extractvalue %dx.types.ResRet.f32 %4741, 3
  %4746 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 0
  store float %4742, float* %4746, align 4
  %4747 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 1
  store float %4743, float* %4747, align 4
  %4748 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 2
  store float %4744, float* %4748, align 4
  %4749 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 3
  store float %4745, float* %4749, align 4
  %4750 = fsub fast float %4742, %4647
  %4751 = fcmp fast olt float %4750, 0.000000e+00
  %4752 = select i1 %4751, float 0.000000e+00, float 1.000000e+00
  %4753 = fadd fast float %4752, %4722
  %4754 = fmul fast float %4752, %4750
  %4755 = fadd fast float %4754, %4723
  br label %4756

; <label>:4756                                    ; preds = %4756, %4721
  %4757 = phi i32 [ 1, %4721 ], [ %4768, %4756 ]
  %4758 = phi float [ %4755, %4721 ], [ %4767, %4756 ]
  %4759 = phi float [ %4753, %4721 ], [ %4765, %4756 ]
  %4760 = getelementptr [4 x float], [4 x float]* %75, i32 0, i32 %4757
  %4761 = load float, float* %4760, align 4, !tbaa !101, !noalias !91
  %4762 = fsub fast float %4761, %4647
  %4763 = fcmp fast olt float %4762, 0.000000e+00
  %4764 = select i1 %4763, float 0.000000e+00, float 1.000000e+00
  %4765 = fadd fast float %4764, %4759
  %4766 = fmul fast float %4764, %4762
  %4767 = fadd fast float %4766, %4758
  %4768 = add nuw nsw i32 %4757, 1
  %4769 = icmp eq i32 %4768, 4
  br i1 %4769, label %4770, label %4756, !llvm.loop !103

; <label>:4770                                    ; preds = %4756
  %4771 = add nuw nsw i32 %4724, 1
  %4772 = icmp eq i32 %4771, 8
  br i1 %4772, label %4773, label %4721, !llvm.loop !104

; <label>:4773                                    ; preds = %4770
  %4774 = fdiv fast float 1.000000e+00, %4765
  %4775 = fmul fast float %4774, %4767
  %4776 = fdiv fast float 1.000000e+00, %4647
  %4777 = fmul fast float %4775, %4776
  %4778 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4779 = call float @dx.op.binary.f32(i32 35, float %4778, float 0.000000e+00)  ; FMax(a,b)
  %4780 = fmul fast float %4765, 3.125000e-02
  %4781 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4782 = fmul fast float %4781, 2.000000e+00
  %4783 = fadd fast float %4782, -1.000000e+00
  %4784 = fcmp fast ogt float %4783, 0.000000e+00
  %4785 = fcmp fast olt float %4783, 0.000000e+00
  %4786 = zext i1 %4784 to i32
  %4787 = zext i1 %4785 to i32
  %4788 = sub nsw i32 %4786, %4787
  %4789 = sitofp i32 %4788 to float
  %4790 = fmul fast float %4789, %4783
  %4791 = fsub fast float 1.000000e+00, %4790
  %4792 = fmul fast float %4791, %4791
  %4793 = fmul fast float %4792, %4791
  %4794 = fsub fast float %4791, %4793
  %4795 = fmul fast float %4794, %4779
  %4796 = fsub fast float 1.000000e+00, %4793
  %4797 = fsub fast float %4796, %4795
  %4798 = fmul fast float %4789, 5.000000e-01
  %4799 = fmul fast float %4798, %4797
  %4800 = fsub fast float 5.000000e-01, %4799
  br label %4801

; <label>:4801                                    ; preds = %4773, %4649, %4634
  %4802 = phi float [ 1.000000e+00, %4634 ], [ %4715, %4649 ], [ %4800, %4773 ]
  %4803 = fsub fast float %4468, %4303
  %4804 = fmul fast float %4803, %3841
  %4805 = fadd fast float %4804, %4303
  %4806 = fsub fast float %4635, %4805
  %4807 = fmul fast float %4806, %3871
  %4808 = fadd fast float %4807, %4805
  %4809 = fsub fast float %4802, %4808
  %4810 = fmul fast float %4809, %3897
  %4811 = fadd fast float %4810, %4808
  %4812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4813 = extractvalue %dx.types.CBufRet.f32 %4812, 2
  %4814 = fcmp fast ogt float %4813, 0.000000e+00
  br i1 %4814, label %4815, label %4855, !dx.controlflow.hints !107

; <label>:4815                                    ; preds = %4801
  %4816 = fcmp fast ugt float %4813, 0.000000e+00
  br i1 %4816, label %4817, label %4852

; <label>:4817                                    ; preds = %4815
  %4818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4819 = extractvalue %dx.types.CBufRet.f32 %4818, 0
  %4820 = extractvalue %dx.types.CBufRet.f32 %4818, 1
  %4821 = extractvalue %dx.types.CBufRet.f32 %4818, 2
  %4822 = extractvalue %dx.types.CBufRet.f32 %4818, 3
  %4823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4824 = extractvalue %dx.types.CBufRet.f32 %4823, 0
  %4825 = extractvalue %dx.types.CBufRet.f32 %4823, 1
  %4826 = extractvalue %dx.types.CBufRet.f32 %4823, 2
  %4827 = extractvalue %dx.types.CBufRet.f32 %4823, 3
  %4828 = extractvalue %dx.types.CBufRet.f32 %4812, 0
  %4829 = extractvalue %dx.types.CBufRet.f32 %4812, 1
  %4830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.f32 %4830, 0
  %4832 = extractvalue %dx.types.CBufRet.f32 %4830, 1
  %4833 = extractvalue %dx.types.CBufRet.f32 %4830, 2
  %4834 = fadd fast float %4831, %3756
  %4835 = fadd fast float %4832, %3757
  %4836 = fadd fast float %4833, %3758
  %4837 = fmul fast float %4834, %4819
  %4838 = call float @dx.op.tertiary.f32(i32 46, float %4820, float %4835, float %4837)  ; FMad(a,b,c)
  %4839 = call float @dx.op.tertiary.f32(i32 46, float %4821, float %4836, float %4838)  ; FMad(a,b,c)
  %4840 = fadd fast float %4839, %4822
  %4841 = fmul fast float %4834, %4824
  %4842 = call float @dx.op.tertiary.f32(i32 46, float %4825, float %4835, float %4841)  ; FMad(a,b,c)
  %4843 = call float @dx.op.tertiary.f32(i32 46, float %4826, float %4836, float %4842)  ; FMad(a,b,c)
  %4844 = fadd fast float %4843, %4827
  %4845 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %37, float %4840, float %4844, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4846 = extractvalue %dx.types.ResRet.f32 %4845, 0
  %4847 = fmul fast float %4846, %4829
  %4848 = fadd fast float %4847, %4828
  %4849 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4850 = fmul fast float %4849, %4813
  %4851 = fsub fast float 1.000000e+00, %4850
  br label %4852

; <label>:4852                                    ; preds = %4817, %4815
  %4853 = phi float [ %4851, %4817 ], [ 1.000000e+00, %4815 ]
  %4854 = fmul fast float %4853, %4811
  br label %4855

; <label>:4855                                    ; preds = %4852, %4801, %3736
  %4856 = phi float [ 1.000000e+00, %3736 ], [ %4854, %4852 ], [ %4811, %4801 ]
  %4857 = call float @dx.op.binary.f32(i32 36, float %4856, float %4856)  ; FMin(a,b)
  %4858 = call float @dx.op.binary.f32(i32 36, float %4856, float %4857)  ; FMin(a,b)
  %4859 = fcmp fast ogt float %4858, 0.000000e+00
  br i1 %4859, label %4860, label %5026, !dx.controlflow.hints !108

; <label>:4860                                    ; preds = %4855
  %4861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4862 = extractvalue %dx.types.CBufRet.f32 %4861, 0
  %4863 = extractvalue %dx.types.CBufRet.f32 %4861, 1
  %4864 = extractvalue %dx.types.CBufRet.f32 %4861, 2
  %4865 = extractvalue %dx.types.CBufRet.f32 %4861, 3
  %4866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4867 = extractvalue %dx.types.CBufRet.f32 %4866, 0
  %4868 = extractvalue %dx.types.CBufRet.f32 %4866, 1
  %4869 = extractvalue %dx.types.CBufRet.f32 %4866, 2
  %4870 = extractvalue %dx.types.CBufRet.f32 %4866, 3
  %4871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4872 = extractvalue %dx.types.CBufRet.f32 %4871, 0
  %4873 = extractvalue %dx.types.CBufRet.f32 %4871, 1
  %4874 = extractvalue %dx.types.CBufRet.f32 %4871, 2
  %4875 = extractvalue %dx.types.CBufRet.f32 %4871, 3
  %4876 = fmul fast float %4862, %3756
  %4877 = call float @dx.op.tertiary.f32(i32 46, float %3757, float %4863, float %4876)  ; FMad(a,b,c)
  %4878 = call float @dx.op.tertiary.f32(i32 46, float %3758, float %4864, float %4877)  ; FMad(a,b,c)
  %4879 = fadd fast float %4878, %4865
  %4880 = fmul fast float %4867, %3756
  %4881 = call float @dx.op.tertiary.f32(i32 46, float %3757, float %4868, float %4880)  ; FMad(a,b,c)
  %4882 = call float @dx.op.tertiary.f32(i32 46, float %3758, float %4869, float %4881)  ; FMad(a,b,c)
  %4883 = fadd fast float %4882, %4870
  %4884 = fmul fast float %4872, %3756
  %4885 = call float @dx.op.tertiary.f32(i32 46, float %3757, float %4873, float %4884)  ; FMad(a,b,c)
  %4886 = call float @dx.op.tertiary.f32(i32 46, float %3758, float %4874, float %4885)  ; FMad(a,b,c)
  %4887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4888 = extractvalue %dx.types.CBufRet.f32 %4887, 0
  %4889 = extractvalue %dx.types.CBufRet.f32 %4887, 1
  %4890 = extractvalue %dx.types.CBufRet.f32 %4887, 3
  %4891 = fmul fast float %4890, %4879
  %4892 = fmul fast float %4890, %4883
  %4893 = fadd fast float %4891, %4888
  %4894 = fadd fast float %4892, %4889
  %4895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4896 = extractvalue %dx.types.CBufRet.f32 %4895, 0
  %4897 = extractvalue %dx.types.CBufRet.f32 %4895, 1
  %4898 = fsub fast float %4893, %4896
  %4899 = fsub fast float %4894, %4897
  %4900 = fcmp fast olt float %4898, 0.000000e+00
  %4901 = fcmp fast olt float %4899, 0.000000e+00
  %4902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4903 = extractvalue %dx.types.CBufRet.f32 %4902, 0
  %4904 = extractvalue %dx.types.CBufRet.f32 %4902, 1
  %4905 = extractvalue %dx.types.CBufRet.f32 %4902, 2
  %4906 = extractvalue %dx.types.CBufRet.f32 %4902, 3
  %4907 = select i1 %4900, float %4903, float %4905
  %4908 = select i1 %4901, float %4904, float %4906
  %4909 = fmul fast float %4907, %4898
  %4910 = fmul fast float %4908, %4899
  %4911 = call float @dx.op.unary.f32(i32 6, float %4909)  ; FAbs(value)
  %4912 = call float @dx.op.unary.f32(i32 6, float %4910)  ; FAbs(value)
  %4913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4914 = extractvalue %dx.types.CBufRet.f32 %4913, 0
  %4915 = call float @dx.op.binary.f32(i32 35, float %4911, float %4912)  ; FMax(a,b)
  %4916 = fsub fast float %4914, %4915
  %4917 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4918 = fcmp fast ogt float %4917, 0.000000e+00
  br i1 %4918, label %4919, label %4960, !dx.controlflow.hints !109

; <label>:4919                                    ; preds = %4860
  %4920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %40, float %4893, float %4894, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4921 = extractvalue %dx.types.ResRet.f32 %4920, 1
  %4922 = fcmp fast ogt float %4921, 0.000000e+00
  br i1 %4922, label %4923, label %4955

; <label>:4923                                    ; preds = %4919
  %4924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %4893, float %4894, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4925 = extractvalue %dx.types.ResRet.f32 %4924, 0
  %4926 = extractvalue %dx.types.ResRet.f32 %4924, 1
  %4927 = extractvalue %dx.types.ResRet.f32 %4924, 2
  %4928 = extractvalue %dx.types.ResRet.f32 %4924, 3
  %4929 = fsub fast float 1.000000e+00, %4875
  %4930 = fsub fast float %4929, %4886
  %4931 = fmul fast float %4930, 0x400921FB60000000
  %4932 = fadd fast float %4931, 0x3FF921FB60000000
  %4933 = call float @dx.op.unary.f32(i32 13, float %4932)  ; Sin(value)
  %4934 = fadd fast float %4933, -1.000000e+00
  %4935 = fmul fast float %4934, 0x3FD45F3060000000
  %4936 = fmul fast float %4930, 0x401921FB60000000
  %4937 = fadd fast float %4936, 0x400921FB60000000
  %4938 = call float @dx.op.unary.f32(i32 13, float %4937)  ; Sin(value)
  %4939 = fadd fast float %4938, 0x3E7777A5C0000000
  %4940 = fmul fast float %4939, 0x3FC45F3060000000
  %4941 = fmul fast float %4930, 0x4022D97C80000000
  %4942 = fadd fast float %4941, 0x4012D97C80000000
  %4943 = call float @dx.op.unary.f32(i32 13, float %4942)  ; Sin(value)
  %4944 = fadd fast float %4943, 1.000000e+00
  %4945 = fmul fast float %4944, 0x3FBB2995E0000000
  %4946 = fmul fast float %4930, 0x402921FB60000000
  %4947 = fadd fast float %4946, 0x401921FB60000000
  %4948 = call float @dx.op.unary.f32(i32 13, float %4947)  ; Sin(value)
  %4949 = fadd fast float %4948, 0xBE8777A5C0000000
  %4950 = fmul fast float %4949, 0x3FB45F3060000000
  %4951 = call float @dx.op.dot4.f32(i32 56, float %4925, float %4926, float %4927, float %4928, float %4935, float %4940, float %4945, float %4950)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4952 = fmul fast float %4951, 0xBFF7154760000000
  %4953 = call float @dx.op.unary.f32(i32 21, float %4952)  ; Exp(value)
  %4954 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  br label %4955

; <label>:4955                                    ; preds = %4923, %4919
  %4956 = phi float [ %4954, %4923 ], [ 1.000000e+00, %4919 ]
  %4957 = fadd fast float %4956, -1.000000e+00
  %4958 = fmul fast float %4957, %4917
  %4959 = fadd fast float %4958, 1.000000e+00
  br label %4960

; <label>:4960                                    ; preds = %4955, %4860
  %4961 = phi float [ %4959, %4955 ], [ 1.000000e+00, %4860 ]
  %4962 = fmul fast float %4961, %4856
  %4963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4964 = extractvalue %dx.types.CBufRet.f32 %4963, 0
  %4965 = extractvalue %dx.types.CBufRet.f32 %4963, 1
  %4966 = extractvalue %dx.types.CBufRet.f32 %4963, 2
  %4967 = fadd fast float %4964, %132
  %4968 = fadd fast float %4965, %133
  %4969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4970 = extractvalue %dx.types.CBufRet.f32 %4969, 1
  %4971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4972 = extractvalue %dx.types.CBufRet.f32 %4971, 0
  %4973 = extractvalue %dx.types.CBufRet.f32 %4971, 1
  %4974 = extractvalue %dx.types.CBufRet.f32 %4971, 2
  %4975 = fsub fast float -0.000000e+00, %4967
  %4976 = fsub fast float -0.000000e+00, %4968
  %4977 = fsub fast float -0.000000e+00, %134
  %4978 = fsub fast float %4977, %4966
  %4979 = fadd fast float %4978, %4970
  %4980 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4975, float %4976, float %4979)  ; Dot3(ax,ay,az,bx,by,bz)
  %4981 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4972, float %4973, float %4974)  ; Dot3(ax,ay,az,bx,by,bz)
  %4982 = fdiv fast float 1.000000e+00, %4981
  %4983 = fmul fast float %4982, %4980
  %4984 = fmul fast float %4972, %4983
  %4985 = fmul fast float %4973, %4983
  %4986 = fadd fast float %4984, %4967
  %4987 = fadd fast float %4985, %4968
  %4988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4989 = extractvalue %dx.types.CBufRet.f32 %4988, 0
  %4990 = extractvalue %dx.types.CBufRet.f32 %4988, 1
  %4991 = fsub fast float %4986, %4989
  %4992 = fsub fast float %4987, %4990
  %4993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4994 = extractvalue %dx.types.CBufRet.f32 %4993, 2
  %4995 = extractvalue %dx.types.CBufRet.f32 %4993, 3
  %4996 = fmul fast float %4991, %4994
  %4997 = fmul fast float %4992, %4995
  %4998 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4999 = extractvalue %dx.types.CBufRet.i32 %4998, 3
  %5000 = icmp eq i32 %4999, 0
  br i1 %5000, label %5006, label %5001

; <label>:5001                                    ; preds = %4960
  %5002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %39, float %4996, float %4997, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5003 = extractvalue %dx.types.ResRet.f32 %5002, 0
  %5004 = extractvalue %dx.types.ResRet.f32 %5002, 1
  %5005 = extractvalue %dx.types.ResRet.f32 %5002, 2
  br label %5011

; <label>:5006                                    ; preds = %4960
  %5007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %40, float %4996, float %4997, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5008 = extractvalue %dx.types.ResRet.f32 %5007, 0
  %5009 = extractvalue %dx.types.ResRet.f32 %5007, 1
  %5010 = extractvalue %dx.types.ResRet.f32 %5007, 2
  br label %5011

; <label>:5011                                    ; preds = %5006, %5001
  %5012 = phi float [ %5003, %5001 ], [ %5008, %5006 ]
  %5013 = phi float [ %5004, %5001 ], [ %5009, %5006 ]
  %5014 = phi float [ %5005, %5001 ], [ %5010, %5006 ]
  %5015 = extractvalue %dx.types.CBufRet.f32 %4969, 2
  %5016 = fmul fast float %5015, %5012
  %5017 = extractvalue %dx.types.CBufRet.f32 %4969, 0
  %5018 = fsub fast float %4983, %5017
  %5019 = fsub fast float %5018, %5016
  %5020 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5019)  ; FMax(a,b)
  %5021 = fmul fast float %5020, %5013
  %5022 = call float @dx.op.binary.f32(i32 36, float %5014, float %5021)  ; FMin(a,b)
  %5023 = fmul fast float %5022, 0xBFF7154760000000
  %5024 = call float @dx.op.unary.f32(i32 21, float %5023)  ; Exp(value)
  %5025 = fmul fast float %4962, %5024
  br label %5026

; <label>:5026                                    ; preds = %5011, %4855
  %5027 = phi float [ %5025, %5011 ], [ %4856, %4855 ]
  %5028 = call float @dx.op.binary.f32(i32 36, float %5027, float %5027)  ; FMin(a,b)
  %5029 = call float @dx.op.binary.f32(i32 36, float %5027, float %5028)  ; FMin(a,b)
  %5030 = fcmp fast ogt float %5029, 0.000000e+00
  br i1 %5030, label %5031, label %5338, !dx.controlflow.hints !110

; <label>:5031                                    ; preds = %5026
  %5032 = fmul fast float %5027, %3748
  %5033 = fmul fast float %5027, %3749
  %5034 = fmul fast float %5027, %3750
  %5035 = fsub fast float %3737, %2819
  %5036 = fsub fast float %3738, %2818
  %5037 = fsub fast float %3739, %2817
  %5038 = call float @dx.op.dot3.f32(i32 55, float %5035, float %5036, float %5037, float %5035, float %5036, float %5037)  ; Dot3(ax,ay,az,bx,by,bz)
  %5039 = call float @dx.op.unary.f32(i32 25, float %5038)  ; Rsqrt(value)
  %5040 = fmul fast float %5039, %5035
  %5041 = fmul fast float %5039, %5036
  %5042 = fmul fast float %5039, %5037
  %5043 = call float @dx.op.dot3.f32(i32 55, float %3737, float %3738, float %3739, float %2823, float %2824, float %2825)  ; Dot3(ax,ay,az,bx,by,bz)
  %5044 = call float @dx.op.dot3.f32(i32 55, float %2816, float %2815, float %2814, float %5040, float %5041, float %5042)  ; Dot3(ax,ay,az,bx,by,bz)
  %5045 = call float @dx.op.unary.f32(i32 7, float %5043)  ; Saturate(value)
  %5046 = fmul fast float %5045, %5045
  %5047 = fmul fast float %5046, %2858
  %5048 = call float @dx.op.unary.f32(i32 7, float %5047)  ; Saturate(value)
  %5049 = fmul fast float %5048, %5045
  %5050 = call float @dx.op.dot3.f32(i32 55, float %2823, float %2824, float %2825, float %5040, float %5041, float %5042)  ; Dot3(ax,ay,az,bx,by,bz)
  %5051 = fmul fast float %5050, %5050
  %5052 = call float @dx.op.unary.f32(i32 6, float %5043)  ; FAbs(value)
  %5053 = fsub fast float 1.000000e+00, %2851
  %5054 = fmul fast float %2833, %2833
  %5055 = fmul fast float %5054, %5053
  %5056 = fadd fast float %5055, %2851
  %5057 = bitcast float %5056 to i32
  %5058 = ashr i32 %5057, 1
  %5059 = add nsw i32 %5058, 532487669
  %5060 = bitcast i32 %5059 to float
  %5061 = fadd fast float %5060, %2833
  %5062 = fmul fast float %2851, %5051
  %5063 = fsub fast float 1.000000e+00, %5051
  %5064 = fadd fast float %5063, %5062
  %5065 = fmul fast float %5052, %5052
  %5066 = fmul fast float %5065, %5053
  %5067 = fadd fast float %5066, %2851
  %5068 = bitcast float %5067 to i32
  %5069 = ashr i32 %5068, 1
  %5070 = add nsw i32 %5069, 532487669
  %5071 = bitcast i32 %5070 to float
  %5072 = fadd fast float %5071, %5052
  %5073 = fmul fast float %5064, %5064
  %5074 = fmul fast float %5073, %5061
  %5075 = fmul fast float %5074, %5072
  %5076 = fdiv fast float 0x3FF0A00000000000, %5075
  %5077 = fmul fast float %5076, %2851
  %5078 = fmul fast float %3104, 0x3FF9999980000000
  %5079 = fsub fast float 5.000000e+00, %5078
  %5080 = call float @dx.op.unary.f32(i32 6, float %5044)  ; FAbs(value)
  %5081 = fsub fast float 1.000000e+00, %5080
  %5082 = fmul fast float %3104, 0x41D9660740000000
  %5083 = fadd fast float %5082, 0xC1EFBF8940000000
  %5084 = bitcast float %5081 to i32
  %5085 = sitofp i32 %5084 to float
  %5086 = fmul fast float %5085, %5079
  %5087 = fadd fast float %5083, %5086
  %5088 = fptosi float %5087 to i32
  %5089 = bitcast i32 %5088 to float
  %5090 = fsub fast float 1.000000e+00, %2820
  %5091 = fsub fast float 1.000000e+00, %2821
  %5092 = fsub fast float 1.000000e+00, %2831
  %5093 = fmul fast float %5089, %5090
  %5094 = fmul fast float %5089, %5091
  %5095 = fmul fast float %5089, %5092
  %5096 = fadd fast float %5093, %2820
  %5097 = fadd fast float %5094, %2821
  %5098 = fadd fast float %5095, %2831
  br i1 %3127, label %5099, label %5122

; <label>:5099                                    ; preds = %5031
  %5100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %1494, float %5080, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5101 = extractvalue %dx.types.ResRet.f32 %5100, 0
  %5102 = extractvalue %dx.types.ResRet.f32 %5100, 1
  %5103 = extractvalue %dx.types.ResRet.f32 %5100, 2
  %5104 = fadd fast float %5101, -5.000000e-01
  %5105 = fadd fast float %5102, -5.000000e-01
  %5106 = fadd fast float %5103, -5.000000e-01
  %5107 = fmul fast float %2820, 4.000000e+00
  %5108 = fmul fast float %5107, %5090
  %5109 = fmul fast float %5108, %5104
  %5110 = fmul fast float %2821, 4.000000e+00
  %5111 = fmul fast float %5110, %5091
  %5112 = fmul fast float %5111, %5105
  %5113 = fmul fast float %2831, 4.000000e+00
  %5114 = fmul fast float %5113, %5092
  %5115 = fmul fast float %5114, %5106
  %5116 = fadd fast float %5109, %5096
  %5117 = fadd fast float %5112, %5097
  %5118 = fadd fast float %5115, %5098
  %5119 = call float @dx.op.unary.f32(i32 7, float %5116)  ; Saturate(value)
  %5120 = call float @dx.op.unary.f32(i32 7, float %5117)  ; Saturate(value)
  %5121 = call float @dx.op.unary.f32(i32 7, float %5118)  ; Saturate(value)
  br label %5122

; <label>:5122                                    ; preds = %5099, %5031
  %5123 = phi float [ %5119, %5099 ], [ %5096, %5031 ]
  %5124 = phi float [ %5120, %5099 ], [ %5097, %5031 ]
  %5125 = phi float [ %5121, %5099 ], [ %5098, %5031 ]
  %5126 = fmul fast float %5043, 9.843750e-01
  %5127 = fadd fast float %5126, 7.812500e-03
  %5128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %40, float %5127, float %3108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5129 = extractvalue %dx.types.ResRet.f32 %5128, 0
  %5130 = extractvalue %dx.types.ResRet.f32 %5128, 1
  %5131 = extractvalue %dx.types.ResRet.f32 %5128, 2
  %5132 = extractvalue %dx.types.ResRet.f32 %5128, 3
  %5133 = fsub fast float %5131, %5129
  %5134 = fsub fast float %5132, %5130
  %5135 = fmul fast float %5133, %3114
  %5136 = fmul fast float %5134, %3114
  %5137 = fadd fast float %5135, %5129
  %5138 = fadd fast float %5136, %5130
  %5139 = fmul fast float %5137, %2820
  %5140 = fmul fast float %5137, %2821
  %5141 = fmul fast float %5137, %2831
  %5142 = fadd fast float %5139, %5138
  %5143 = fadd fast float %5140, %5138
  %5144 = fadd fast float %5141, %5138
  br i1 %3127, label %5145, label %5168

; <label>:5145                                    ; preds = %5122
  %5146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %1494, float %5043, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5147 = extractvalue %dx.types.ResRet.f32 %5146, 0
  %5148 = extractvalue %dx.types.ResRet.f32 %5146, 1
  %5149 = extractvalue %dx.types.ResRet.f32 %5146, 2
  %5150 = fadd fast float %5147, -5.000000e-01
  %5151 = fadd fast float %5148, -5.000000e-01
  %5152 = fadd fast float %5149, -5.000000e-01
  %5153 = fmul fast float %2820, 4.000000e+00
  %5154 = fmul fast float %5153, %5090
  %5155 = fmul fast float %5154, %5150
  %5156 = fmul fast float %2821, 4.000000e+00
  %5157 = fmul fast float %5156, %5091
  %5158 = fmul fast float %5157, %5151
  %5159 = fmul fast float %2831, 4.000000e+00
  %5160 = fmul fast float %5159, %5092
  %5161 = fmul fast float %5160, %5152
  %5162 = fadd fast float %5155, %5142
  %5163 = fadd fast float %5158, %5143
  %5164 = fadd fast float %5161, %5144
  %5165 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5166 = call float @dx.op.unary.f32(i32 7, float %5163)  ; Saturate(value)
  %5167 = call float @dx.op.unary.f32(i32 7, float %5164)  ; Saturate(value)
  br label %5168

; <label>:5168                                    ; preds = %5145, %5122
  %5169 = phi float [ %5165, %5145 ], [ %5142, %5122 ]
  %5170 = phi float [ %5166, %5145 ], [ %5143, %5122 ]
  %5171 = phi float [ %5167, %5145 ], [ %5144, %5122 ]
  %5172 = call float @dx.op.binary.f32(i32 35, float %5170, float %5171)  ; FMax(a,b)
  %5173 = call float @dx.op.binary.f32(i32 35, float %5169, float %5172)  ; FMax(a,b)
  %5174 = fsub fast float 1.000000e+00, %5173
  %5175 = call float @dx.op.binary.f32(i32 35, float %5052, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5176 = fdiv fast float %894, %5175
  %5177 = fmul fast float %3646, %5176
  %5178 = fmul fast float %3648, %5176
  %5179 = fmul fast float %3650, %5176
  %5180 = call float @dx.op.unary.f32(i32 21, float %5177)  ; Exp(value)
  %5181 = call float @dx.op.unary.f32(i32 21, float %5178)  ; Exp(value)
  %5182 = call float @dx.op.unary.f32(i32 21, float %5179)  ; Exp(value)
  %5183 = call float @dx.op.unary.f32(i32 7, float %5180)  ; Saturate(value)
  %5184 = call float @dx.op.unary.f32(i32 7, float %5181)  ; Saturate(value)
  %5185 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5186 = select i1 %3643, float %5183, float 0.000000e+00
  %5187 = select i1 %3644, float %5184, float 0.000000e+00
  %5188 = select i1 %3645, float %5185, float 0.000000e+00
  %5189 = fsub fast float -0.000000e+00, %2823
  %5190 = fsub fast float -0.000000e+00, %2824
  %5191 = fsub fast float -0.000000e+00, %2825
  %5192 = call float @dx.op.dot3.f32(i32 55, float %3737, float %3738, float %3739, float %5189, float %5190, float %5191)  ; Dot3(ax,ay,az,bx,by,bz)
  %5193 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  %5194 = fmul fast float %5193, 9.843750e-01
  %5195 = fadd fast float %5194, 7.812500e-03
  %5196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %40, float %5195, float %3108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5197 = extractvalue %dx.types.ResRet.f32 %5196, 0
  %5198 = extractvalue %dx.types.ResRet.f32 %5196, 1
  %5199 = extractvalue %dx.types.ResRet.f32 %5196, 2
  %5200 = extractvalue %dx.types.ResRet.f32 %5196, 3
  %5201 = fsub fast float %5199, %5197
  %5202 = fsub fast float %5200, %5198
  %5203 = fmul fast float %5201, %3114
  %5204 = fmul fast float %5202, %3114
  %5205 = fadd fast float %5203, %5197
  %5206 = fadd fast float %5204, %5198
  %5207 = fmul fast float %5205, %2820
  %5208 = fmul fast float %5205, %2821
  %5209 = fmul fast float %5205, %2831
  %5210 = fadd fast float %5207, %5206
  %5211 = fadd fast float %5208, %5206
  %5212 = fadd fast float %5209, %5206
  br i1 %3127, label %5213, label %5236

; <label>:5213                                    ; preds = %5168
  %5214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %1494, float %5193, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5215 = extractvalue %dx.types.ResRet.f32 %5214, 0
  %5216 = extractvalue %dx.types.ResRet.f32 %5214, 1
  %5217 = extractvalue %dx.types.ResRet.f32 %5214, 2
  %5218 = fadd fast float %5215, -5.000000e-01
  %5219 = fadd fast float %5216, -5.000000e-01
  %5220 = fadd fast float %5217, -5.000000e-01
  %5221 = fmul fast float %2820, 4.000000e+00
  %5222 = fmul fast float %5221, %5090
  %5223 = fmul fast float %5222, %5218
  %5224 = fmul fast float %2821, 4.000000e+00
  %5225 = fmul fast float %5224, %5091
  %5226 = fmul fast float %5225, %5219
  %5227 = fmul fast float %2831, 4.000000e+00
  %5228 = fmul fast float %5227, %5092
  %5229 = fmul fast float %5228, %5220
  %5230 = fadd fast float %5223, %5210
  %5231 = fadd fast float %5226, %5211
  %5232 = fadd fast float %5229, %5212
  %5233 = call float @dx.op.unary.f32(i32 7, float %5230)  ; Saturate(value)
  %5234 = call float @dx.op.unary.f32(i32 7, float %5231)  ; Saturate(value)
  %5235 = call float @dx.op.unary.f32(i32 7, float %5232)  ; Saturate(value)
  br label %5236

; <label>:5236                                    ; preds = %5213, %5168
  %5237 = phi float [ %5233, %5213 ], [ %5210, %5168 ]
  %5238 = phi float [ %5234, %5213 ], [ %5211, %5168 ]
  %5239 = phi float [ %5235, %5213 ], [ %5212, %5168 ]
  %5240 = call float @dx.op.binary.f32(i32 35, float %5238, float %5239)  ; FMax(a,b)
  %5241 = call float @dx.op.binary.f32(i32 35, float %5237, float %5240)  ; FMax(a,b)
  %5242 = fsub fast float 1.000000e+00, %5241
  %5243 = fmul fast float %2848, %3710
  %5244 = fadd fast float %3712, %5243
  %5245 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  %5246 = fsub fast float %3737, %2839
  %5247 = fsub fast float %3738, %2840
  %5248 = fsub fast float %3739, %2841
  %5249 = call float @dx.op.dot3.f32(i32 55, float %5246, float %5247, float %5248, float %5246, float %5247, float %5248)  ; Dot3(ax,ay,az,bx,by,bz)
  %5250 = call float @dx.op.unary.f32(i32 25, float %5249)  ; Rsqrt(value)
  %5251 = fmul fast float %5250, %5246
  %5252 = fmul fast float %5250, %5247
  %5253 = fmul fast float %5250, %5248
  %5254 = call float @dx.op.dot3.f32(i32 55, float %5189, float %5190, float %5191, float %5251, float %5252, float %5253)  ; Dot3(ax,ay,az,bx,by,bz)
  %5255 = fmul fast float %5254, %5254
  %5256 = call float @dx.op.unary.f32(i32 6, float %5193)  ; FAbs(value)
  %5257 = call float @dx.op.binary.f32(i32 35, float %5245, float 0x3F847AE140000000)  ; FMax(a,b)
  %5258 = fmul fast float %5257, %5257
  %5259 = fmul fast float %5258, %5258
  %5260 = fsub fast float 1.000000e+00, %5259
  %5261 = fmul fast float %5054, %5260
  %5262 = fadd fast float %5261, %5259
  %5263 = bitcast float %5262 to i32
  %5264 = ashr i32 %5263, 1
  %5265 = add nsw i32 %5264, 532487669
  %5266 = bitcast i32 %5265 to float
  %5267 = fadd fast float %5266, %2833
  %5268 = fmul fast float %5259, %5255
  %5269 = fsub fast float 1.000000e+00, %5255
  %5270 = fadd fast float %5269, %5268
  %5271 = fmul fast float %5256, %5256
  %5272 = fmul fast float %5271, %5260
  %5273 = fadd fast float %5272, %5259
  %5274 = bitcast float %5273 to i32
  %5275 = ashr i32 %5274, 1
  %5276 = add nsw i32 %5275, 532487669
  %5277 = bitcast i32 %5276 to float
  %5278 = fadd fast float %5277, %5256
  %5279 = fmul fast float %5270, %5270
  %5280 = fmul fast float %5279, %5267
  %5281 = fmul fast float %5280, %5278
  %5282 = fdiv fast float 0x3FF0A00000000000, %5281
  %5283 = fmul fast float %5282, %5259
  %5284 = fmul fast float %5193, %5186
  %5285 = fmul fast float %5193, %5187
  %5286 = fmul fast float %5193, %5188
  %5287 = fmul fast float %5284, %5242
  %5288 = fmul fast float %5287, %5283
  %5289 = fmul fast float %5285, %5242
  %5290 = fmul fast float %5289, %5283
  %5291 = fmul fast float %5286, %5242
  %5292 = fmul fast float %5291, %5283
  %5293 = fmul fast float %5123, %5077
  %5294 = fmul fast float %5124, %5077
  %5295 = fmul fast float %5125, %5077
  %5296 = fsub fast float 1.000000e+00, %5044
  %5297 = bitcast float %5296 to i32
  %5298 = sitofp i32 %5297 to float
  %5299 = fmul fast float %5298, 5.000000e+00
  %5300 = fadd fast float %5299, 0xC1EFBF8940000000
  %5301 = fptosi float %5300 to i32
  %5302 = bitcast i32 %5301 to float
  %5303 = fmul fast float %5302, %1493
  %5304 = fmul fast float %5174, %5303
  %5305 = fmul fast float %5304, %3638
  %5306 = fmul fast float %5304, %3639
  %5307 = fmul fast float %5304, %3640
  %5308 = fadd fast float %5305, %5293
  %5309 = fadd fast float %5306, %5294
  %5310 = fadd fast float %5307, %5295
  %5311 = fmul fast float %5308, %5049
  %5312 = fmul fast float %5309, %5049
  %5313 = fmul fast float %5310, %5049
  %5314 = fmul fast float %5049, %5032
  %5315 = fmul fast float %5314, %5174
  %5316 = fmul fast float %5049, %5033
  %5317 = fmul fast float %5316, %5174
  %5318 = fmul fast float %5049, %5034
  %5319 = fmul fast float %5318, %5174
  %5320 = fadd fast float %5311, %5288
  %5321 = fadd fast float %5312, %5290
  %5322 = fadd fast float %5313, %5292
  %5323 = fmul fast float %5320, %5032
  %5324 = fmul fast float %5321, %5033
  %5325 = fmul fast float %5322, %5034
  %5326 = fadd fast float %5315, %3727
  %5327 = fmul fast float %5326, %1517
  %5328 = fadd fast float %5317, %3729
  %5329 = fmul fast float %5328, %1517
  %5330 = fadd fast float %5319, %3731
  %5331 = fmul fast float %5330, %1517
  %5332 = fadd fast float %5323, %3691
  %5333 = fmul fast float %5332, %1517
  %5334 = fadd fast float %5324, %3694
  %5335 = fmul fast float %5334, %1517
  %5336 = fadd fast float %5325, %3697
  %5337 = fmul fast float %5336, %1517
  br label %5338

; <label>:5338                                    ; preds = %5236, %5026, %3621
  %5339 = phi float [ %3692, %3621 ], [ %3692, %5026 ], [ %5333, %5236 ]
  %5340 = phi float [ %3695, %3621 ], [ %3695, %5026 ], [ %5335, %5236 ]
  %5341 = phi float [ %3698, %3621 ], [ %3698, %5026 ], [ %5337, %5236 ]
  %5342 = phi float [ %3728, %3621 ], [ %3728, %5026 ], [ %5327, %5236 ]
  %5343 = phi float [ %3730, %3621 ], [ %3730, %5026 ], [ %5329, %5236 ]
  %5344 = phi float [ %3732, %3621 ], [ %3732, %5026 ], [ %5331, %5236 ]
  %5345 = fmul fast float %3667, %1517
  %5346 = fmul fast float %3668, %1517
  %5347 = fmul fast float %3669, %1517
  %5348 = fadd fast float %5345, 1.000000e+00
  %5349 = fadd fast float %5346, 1.000000e+00
  %5350 = fadd fast float %5347, 1.000000e+00
  %5351 = call float @dx.op.dot3.f32(i32 55, float %5348, float %5349, float %5350, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5352 = fsub fast float 1.000000e+00, %5351
  %5353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5354 = extractvalue %dx.types.CBufRet.f32 %5353, 0
  %5355 = fmul fast float %5354, %3673
  %5356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5357 = extractvalue %dx.types.CBufRet.f32 %5356, 3
  %5358 = fsub fast float 1.000000e+00, %1489
  %5359 = call float @dx.op.unary.f32(i32 7, float %5358)  ; Saturate(value)
  %5360 = fadd fast float %5344, %1488
  %5361 = fmul fast float %5360, %1489
  %5362 = fmul fast float %5359, %5357
  %5363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5364 = extractvalue %dx.types.CBufRet.f32 %5363, 3
  %5365 = fmul fast float %5342, %2826
  %5366 = fmul fast float %5343, %2827
  %5367 = fmul fast float %5344, %2828
  %5368 = fcmp fast ogt float %72, %154
  %5369 = and i1 %5368, %1590
  %5370 = or i1 %1669, %5369
  %5371 = icmp eq i32 %1589, 2
  %5372 = fcmp fast ole float %72, %154
  %5373 = and i1 %5372, %5371
  %5374 = or i1 %5373, %5370
  br i1 %5369, label %5375, label %5634

; <label>:5375                                    ; preds = %5338
  %5376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5377 = extractvalue %dx.types.CBufRet.f32 %5376, 2
  %5378 = extractvalue %dx.types.CBufRet.f32 %5376, 3
  %5379 = fmul fast float %5377, %84
  %5380 = fmul fast float %5378, %85
  %5381 = call float @dx.op.unary.f32(i32 7, float %5379)  ; Saturate(value)
  %5382 = call float @dx.op.unary.f32(i32 7, float %5380)  ; Saturate(value)
  %5383 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %40, float %5381, float %5382, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5384 = extractvalue %dx.types.ResRet.f32 %5383, 0
  %5385 = extractvalue %dx.types.ResRet.f32 %5383, 1
  %5386 = extractvalue %dx.types.ResRet.f32 %5383, 2
  %5387 = extractvalue %dx.types.ResRet.f32 %5383, 3
  %5388 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %40, float %5381, float %5382, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5389 = extractvalue %dx.types.ResRet.f32 %5388, 0
  %5390 = extractvalue %dx.types.ResRet.f32 %5388, 1
  %5391 = extractvalue %dx.types.ResRet.f32 %5388, 2
  %5392 = extractvalue %dx.types.ResRet.f32 %5388, 3
  %5393 = call float @dx.op.binary.f32(i32 35, float %5385, float %5386)  ; FMax(a,b)
  %5394 = call float @dx.op.binary.f32(i32 35, float %5384, float %5393)  ; FMax(a,b)
  %5395 = call float @dx.op.binary.f32(i32 35, float %5394, float %5387)  ; FMax(a,b)
  %5396 = call float @dx.op.binary.f32(i32 36, float %5390, float %5391)  ; FMin(a,b)
  %5397 = call float @dx.op.binary.f32(i32 36, float %5389, float %5396)  ; FMin(a,b)
  %5398 = call float @dx.op.binary.f32(i32 36, float %5397, float %5392)  ; FMin(a,b)
  %5399 = fmul fast float %5395, 2.550000e+02
  %5400 = fadd fast float %5399, 0x3F70101020000000
  %5401 = fptoui float %5400 to i32
  %5402 = fmul fast float %5398, 2.550000e+02
  %5403 = fadd fast float %5402, 0x3F70101020000000
  %5404 = fptoui float %5403 to i32
  %5405 = icmp ult i32 %5401, %5404
  br i1 %5405, label %5406, label %5574

; <label>:5406                                    ; preds = %5375
  %5407 = fcmp fast ogt float %71, 9.843750e-01
  %5408 = fadd fast float %72, -4.000000e+00
  %5409 = select i1 %5407, float -4.000000e+00, float %5408
  %5410 = call float @dx.op.binary.f32(i32 35, float %5409, float 0.000000e+00)  ; FMax(a,b)
  %5411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5412 = extractvalue %dx.types.CBufRet.f32 %5411, 0
  %5413 = fadd fast float %5412, %5410
  %5414 = extractvalue %dx.types.CBufRet.f32 %5411, 2
  %5415 = fmul fast float %5413, %5414
  %5416 = call float @dx.op.unary.f32(i32 23, float %5415)  ; Log(value)
  %5417 = extractvalue %dx.types.CBufRet.f32 %5411, 3
  %5418 = fmul fast float %5417, %5416
  %5419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5420 = extractvalue %dx.types.CBufRet.f32 %5419, 2
  %5421 = fmul fast float %5418, %5420
  %5422 = call float @dx.op.unary.f32(i32 7, float %5421)  ; Saturate(value)
  %5423 = uitofp i32 %5401 to float
  %5424 = uitofp i32 %5404 to float
  %5425 = fadd fast float %5423, 5.000000e-01
  %5426 = fadd fast float %5424, 5.000000e-01
  %5427 = fmul fast float %5420, %5425
  %5428 = fmul fast float %5420, %5426
  %5429 = fadd fast float %5427, 0x3F0FFB4800000000
  %5430 = fadd fast float %5428, 0xBF0FFB4800000000
  %5431 = call float @dx.op.binary.f32(i32 35, float %5422, float %5429)  ; FMax(a,b)
  %5432 = call float @dx.op.binary.f32(i32 36, float %5431, float %5430)  ; FMin(a,b)
  %5433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5434 = extractvalue %dx.types.CBufRet.f32 %5433, 1
  %5435 = extractvalue %dx.types.CBufRet.f32 %5433, 2
  %5436 = extractvalue %dx.types.CBufRet.f32 %5433, 0
  %5437 = fmul fast float %5434, %5432
  %5438 = fadd fast float %5436, %5437
  %5439 = fadd fast float %5436, %5435
  %5440 = fsub fast float %5434, %5435
  %5441 = fadd fast float %5440, %5436
  %5442 = call float @dx.op.binary.f32(i32 35, float %5438, float %5439)  ; FMax(a,b)
  %5443 = call float @dx.op.binary.f32(i32 36, float %5442, float %5441)  ; FMin(a,b)
  %5444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %5381, float %5382, float %5443, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5445 = extractvalue %dx.types.ResRet.f32 %5444, 0
  %5446 = extractvalue %dx.types.ResRet.f32 %5444, 1
  %5447 = extractvalue %dx.types.ResRet.f32 %5444, 2
  %5448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5449 = extractvalue %dx.types.CBufRet.i32 %5448, 0
  %5450 = extractvalue %dx.types.CBufRet.i32 %5448, 1
  %5451 = uitofp i32 %5449 to float
  %5452 = uitofp i32 %5450 to float
  %5453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5454 = extractvalue %dx.types.CBufRet.f32 %5453, 0
  %5455 = extractvalue %dx.types.CBufRet.f32 %5453, 1
  %5456 = fmul fast float %5451, %5381
  %5457 = fmul fast float %5452, %5382
  %5458 = fadd fast float %5456, -5.000000e-01
  %5459 = fadd fast float %5457, -5.000000e-01
  %5460 = call float @dx.op.unary.f32(i32 22, float %5458)  ; Frc(value)
  %5461 = call float @dx.op.unary.f32(i32 22, float %5459)  ; Frc(value)
  %5462 = fmul fast float %5460, %5460
  %5463 = fmul fast float %5462, %5460
  %5464 = fsub fast float 3.000000e+00, %5460
  %5465 = fmul fast float %5462, %5464
  %5466 = fmul fast float %5460, 3.000000e+00
  %5467 = fmul fast float %5463, 3.000000e+00
  %5468 = fmul fast float %5462, 6.000000e+00
  %5469 = fsub fast float %5467, %5468
  %5470 = fadd fast float %5469, 4.000000e+00
  %5471 = fmul fast float %5470, 0x3FC5555560000000
  %5472 = fmul fast float %5463, -3.000000e+00
  %5473 = fadd fast float %5462, %5460
  %5474 = fmul fast float %5473, 3.000000e+00
  %5475 = fadd fast float %5472, 1.000000e+00
  %5476 = fadd fast float %5475, %5474
  %5477 = fmul fast float %5463, 0x3FC5555560000000
  %5478 = fmul fast float %5461, %5461
  %5479 = fmul fast float %5478, %5461
  %5480 = fsub fast float 3.000000e+00, %5461
  %5481 = fmul fast float %5478, %5480
  %5482 = fmul fast float %5461, 3.000000e+00
  %5483 = fmul fast float %5479, 3.000000e+00
  %5484 = fmul fast float %5478, 6.000000e+00
  %5485 = fsub fast float %5483, %5484
  %5486 = fadd fast float %5485, 4.000000e+00
  %5487 = fmul fast float %5486, 0x3FC5555560000000
  %5488 = fmul fast float %5479, -3.000000e+00
  %5489 = fadd fast float %5478, %5461
  %5490 = fmul fast float %5489, 3.000000e+00
  %5491 = fadd fast float %5488, 1.000000e+00
  %5492 = fadd fast float %5491, %5490
  %5493 = fmul fast float %5479, 0x3FC5555560000000
  %5494 = fadd fast float %5460, 1.000000e+00
  %5495 = fsub fast float 1.000000e+00, %5466
  %5496 = fadd fast float %5495, %5465
  %5497 = fadd fast float %5496, %5470
  %5498 = fmul fast float %5497, 0x3FC5555560000000
  %5499 = fdiv fast float %5471, %5498
  %5500 = fsub fast float %5494, %5499
  %5501 = fsub fast float 1.000000e+00, %5460
  %5502 = fadd fast float %5476, %5463
  %5503 = fmul fast float %5502, 0x3FC5555560000000
  %5504 = fdiv fast float %5477, %5503
  %5505 = fadd fast float %5501, %5504
  %5506 = fadd fast float %5461, 1.000000e+00
  %5507 = fsub fast float 1.000000e+00, %5482
  %5508 = fadd fast float %5507, %5481
  %5509 = fadd fast float %5508, %5486
  %5510 = fmul fast float %5509, 0x3FC5555560000000
  %5511 = fdiv fast float %5487, %5510
  %5512 = fsub fast float %5506, %5511
  %5513 = fsub fast float 1.000000e+00, %5461
  %5514 = fadd fast float %5492, %5479
  %5515 = fmul fast float %5514, 0x3FC5555560000000
  %5516 = fdiv fast float %5493, %5515
  %5517 = fadd fast float %5516, %5513
  %5518 = fmul fast float %5500, %5454
  %5519 = fsub fast float %5381, %5518
  %5520 = fmul fast float %5505, %5454
  %5521 = fadd fast float %5520, %5381
  %5522 = fmul fast float %5517, %5455
  %5523 = fadd fast float %5522, %5382
  %5524 = fmul fast float %5512, %5455
  %5525 = fsub fast float %5382, %5524
  %5526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %5519, float %5525, float %5443, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5527 = extractvalue %dx.types.ResRet.f32 %5526, 0
  %5528 = extractvalue %dx.types.ResRet.f32 %5526, 1
  %5529 = extractvalue %dx.types.ResRet.f32 %5526, 2
  %5530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %5521, float %5525, float %5443, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5531 = extractvalue %dx.types.ResRet.f32 %5530, 0
  %5532 = extractvalue %dx.types.ResRet.f32 %5530, 1
  %5533 = extractvalue %dx.types.ResRet.f32 %5530, 2
  %5534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %5519, float %5523, float %5443, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5535 = extractvalue %dx.types.ResRet.f32 %5534, 0
  %5536 = extractvalue %dx.types.ResRet.f32 %5534, 1
  %5537 = extractvalue %dx.types.ResRet.f32 %5534, 2
  %5538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %5521, float %5523, float %5443, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5539 = extractvalue %dx.types.ResRet.f32 %5538, 0
  %5540 = extractvalue %dx.types.ResRet.f32 %5538, 1
  %5541 = extractvalue %dx.types.ResRet.f32 %5538, 2
  %5542 = fsub fast float %5535, %5527
  %5543 = fsub fast float %5536, %5528
  %5544 = fsub fast float %5537, %5529
  %5545 = fmul fast float %5542, %5515
  %5546 = fmul fast float %5543, %5515
  %5547 = fmul fast float %5544, %5515
  %5548 = fadd fast float %5545, %5527
  %5549 = fadd fast float %5546, %5528
  %5550 = fadd fast float %5547, %5529
  %5551 = fsub fast float %5539, %5531
  %5552 = fsub fast float %5540, %5532
  %5553 = fsub fast float %5541, %5533
  %5554 = fmul fast float %5551, %5515
  %5555 = fmul fast float %5552, %5515
  %5556 = fmul fast float %5553, %5515
  %5557 = fsub fast float %5531, %5548
  %5558 = fadd fast float %5557, %5554
  %5559 = fsub fast float %5532, %5549
  %5560 = fadd fast float %5559, %5555
  %5561 = fsub fast float %5533, %5550
  %5562 = fadd fast float %5561, %5556
  %5563 = fmul fast float %5558, %5503
  %5564 = fmul fast float %5560, %5503
  %5565 = fmul fast float %5562, %5503
  %5566 = fadd fast float %5563, %5548
  %5567 = fadd fast float %5564, %5549
  %5568 = fadd fast float %5565, %5550
  %5569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5570 = extractvalue %dx.types.CBufRet.f32 %5569, 1
  %5571 = fmul fast float %5566, %5570
  %5572 = fmul fast float %5567, %5570
  %5573 = fmul fast float %5568, %5570
  br label %5574

; <label>:5574                                    ; preds = %5406, %5375
  %5575 = phi float [ %5445, %5406 ], [ 1.000000e+00, %5375 ]
  %5576 = phi float [ %5446, %5406 ], [ 1.000000e+00, %5375 ]
  %5577 = phi float [ %5447, %5406 ], [ 1.000000e+00, %5375 ]
  %5578 = phi float [ %5571, %5406 ], [ 0.000000e+00, %5375 ]
  %5579 = phi float [ %5572, %5406 ], [ 0.000000e+00, %5375 ]
  %5580 = phi float [ %5573, %5406 ], [ 0.000000e+00, %5375 ]
  %5581 = fmul fast float %5578, %5352
  %5582 = fmul fast float %5579, %5352
  %5583 = fmul fast float %5580, %5352
  %5584 = call float @dx.op.dot3.f32(i32 55, float %5575, float %5576, float %5577, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5585 = call float @dx.op.dot3.f32(i32 55, float %5581, float %5582, float %5583, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5586 = select i1 %193, float %5584, float %5575
  %5587 = select i1 %193, float %5584, float %5576
  %5588 = select i1 %193, float 1.000000e+00, float %5577
  %5589 = select i1 %193, float %5585, float %5581
  %5590 = select i1 %193, float 0.000000e+00, float %5582
  %5591 = select i1 %193, float 0.000000e+00, float %5583
  %5592 = fmul fast float %5586, %5365
  %5593 = fmul fast float %5587, %5366
  %5594 = fmul fast float %5588, %5367
  %5595 = fadd fast float %5592, %5589
  %5596 = fadd fast float %5593, %5590
  %5597 = fadd fast float %5591, %5594
  %5598 = fmul fast float %5586, %5339
  %5599 = fmul fast float %5587, %5340
  %5600 = fmul fast float %5588, %5341
  %5601 = fmul fast float %84, 2.000000e+00
  %5602 = fmul fast float %5601, %5377
  %5603 = fmul fast float %85, 2.000000e+00
  %5604 = fmul fast float %5603, %5378
  %5605 = fsub fast float 1.000000e+00, %5602
  %5606 = fsub fast float 1.000000e+00, %5604
  %5607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5608 = extractvalue %dx.types.CBufRet.f32 %5607, 0
  %5609 = extractvalue %dx.types.CBufRet.f32 %5607, 1
  %5610 = extractvalue %dx.types.CBufRet.f32 %5607, 2
  %5611 = fmul fast float %5605, %5608
  %5612 = fmul fast float %5605, %5609
  %5613 = fmul fast float %5605, %5610
  %5614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5615 = extractvalue %dx.types.CBufRet.f32 %5614, 0
  %5616 = extractvalue %dx.types.CBufRet.f32 %5614, 1
  %5617 = extractvalue %dx.types.CBufRet.f32 %5614, 2
  %5618 = fmul fast float %5606, %5615
  %5619 = fmul fast float %5606, %5616
  %5620 = fmul fast float %5606, %5617
  %5621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5622 = extractvalue %dx.types.CBufRet.f32 %5621, 0
  %5623 = extractvalue %dx.types.CBufRet.f32 %5621, 1
  %5624 = extractvalue %dx.types.CBufRet.f32 %5621, 2
  %5625 = fadd fast float %5618, %5622
  %5626 = fadd fast float %5625, %5611
  %5627 = fadd fast float %5619, %5623
  %5628 = fadd fast float %5627, %5612
  %5629 = fadd fast float %5620, %5624
  %5630 = fadd fast float %5629, %5613
  %5631 = fmul fast float %5626, %154
  %5632 = fmul fast float %5628, %154
  %5633 = fmul fast float %5630, %154
  br label %5634

; <label>:5634                                    ; preds = %5574, %5338
  %5635 = phi float [ %5631, %5574 ], [ %132, %5338 ]
  %5636 = phi float [ %5632, %5574 ], [ %133, %5338 ]
  %5637 = phi float [ %5633, %5574 ], [ %134, %5338 ]
  %5638 = phi float [ %154, %5574 ], [ %72, %5338 ]
  %5639 = phi float [ %5595, %5574 ], [ %5365, %5338 ]
  %5640 = phi float [ %5596, %5574 ], [ %5366, %5338 ]
  %5641 = phi float [ %5597, %5574 ], [ %5367, %5338 ]
  %5642 = phi float [ %5598, %5574 ], [ %5339, %5338 ]
  %5643 = phi float [ %5599, %5574 ], [ %5340, %5338 ]
  %5644 = phi float [ %5600, %5574 ], [ %5341, %5338 ]
  %5645 = phi float [ %5575, %5574 ], [ 1.000000e+00, %5338 ]
  br i1 %5374, label %6800, label %5646

; <label>:5646                                    ; preds = %5634
  %5647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5648 = extractvalue %dx.types.CBufRet.f32 %5647, 0
  %5649 = extractvalue %dx.types.CBufRet.f32 %5647, 1
  %5650 = extractvalue %dx.types.CBufRet.f32 %5647, 2
  %5651 = extractvalue %dx.types.CBufRet.f32 %5647, 3
  %5652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5653 = extractvalue %dx.types.CBufRet.f32 %5652, 0
  %5654 = extractvalue %dx.types.CBufRet.f32 %5652, 1
  %5655 = extractvalue %dx.types.CBufRet.f32 %5652, 2
  %5656 = extractvalue %dx.types.CBufRet.f32 %5652, 3
  %5657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5658 = extractvalue %dx.types.CBufRet.f32 %5657, 0
  %5659 = extractvalue %dx.types.CBufRet.f32 %5657, 1
  %5660 = extractvalue %dx.types.CBufRet.f32 %5657, 2
  %5661 = extractvalue %dx.types.CBufRet.f32 %5657, 3
  %5662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5663 = extractvalue %dx.types.CBufRet.f32 %5662, 0
  %5664 = extractvalue %dx.types.CBufRet.f32 %5662, 1
  %5665 = extractvalue %dx.types.CBufRet.f32 %5662, 2
  %5666 = extractvalue %dx.types.CBufRet.f32 %5662, 3
  %5667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5668 = extractvalue %dx.types.CBufRet.f32 %5667, 3
  %5669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5670 = extractvalue %dx.types.CBufRet.f32 %5669, 3
  %5671 = extractvalue %dx.types.CBufRet.f32 %5669, 0
  %5672 = extractvalue %dx.types.CBufRet.f32 %5669, 1
  %5673 = extractvalue %dx.types.CBufRet.f32 %5669, 2
  %5674 = fcmp fast olt float %5673, -5.000000e-01
  %5675 = call float @dx.op.dot3.f32(i32 55, float %5635, float %5636, float %5637, float %5635, float %5636, float %5637)  ; Dot3(ax,ay,az,bx,by,bz)
  %5676 = call float @dx.op.unary.f32(i32 25, float %5675)  ; Rsqrt(value)
  %5677 = fmul fast float %5676, %5675
  %5678 = fmul fast float %5676, %5635
  %5679 = fmul fast float %5676, %5636
  %5680 = fmul fast float %5676, %5637
  %5681 = fadd fast float %5677, %5651
  %5682 = call float @dx.op.dot3.f32(i32 55, float %5678, float %5679, float %5680, float %5648, float %5649, float %5650)  ; Dot3(ax,ay,az,bx,by,bz)
  %5683 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5684 = extractvalue %dx.types.CBufRet.i32 %5683, 1
  %5685 = and i32 %5684, 1
  %5686 = icmp ne i32 %5685, 0
  %5687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5688 = extractvalue %dx.types.CBufRet.f32 %5687, 2
  %5689 = fcmp fast ogt float %5688, 0.000000e+00
  %5690 = and i1 %5686, %5689
  br i1 %5690, label %5691, label %6097, !dx.controlflow.hints !111

; <label>:5691                                    ; preds = %5646
  %5692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5693 = extractvalue %dx.types.CBufRet.f32 %5692, 3
  %5694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5695 = extractvalue %dx.types.CBufRet.f32 %5694, 2
  %5696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5697 = extractvalue %dx.types.CBufRet.f32 %5696, 2
  %5698 = fsub fast float %5695, %5697
  %5699 = and i32 %5684, 2
  %5700 = extractvalue %dx.types.CBufRet.i32 %5683, 0
  %5701 = call i32 @dx.op.binary.i32(i32 40, i32 %5700, i32 3)  ; UMin(a,b)
  %5702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5703 = extractvalue %dx.types.CBufRet.f32 %5702, 0
  %5704 = extractvalue %dx.types.CBufRet.f32 %5702, 1
  %5705 = extractvalue %dx.types.CBufRet.f32 %5696, 0
  %5706 = extractvalue %dx.types.CBufRet.f32 %5696, 1
  %5707 = fsub fast float %5703, %5705
  %5708 = fsub fast float %5704, %5706
  %5709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5710 = extractvalue %dx.types.CBufRet.f32 %5709, 0
  %5711 = fcmp fast ogt float %5710, 0.000000e+00
  %5712 = fsub fast float -0.000000e+00, %5707
  %5713 = fsub fast float -0.000000e+00, %5708
  %5714 = call float @dx.op.dot2.f32(i32 54, float %5678, float %5679, float %5678, float %5679)  ; Dot2(ax,ay,bx,by)
  %5715 = call float @dx.op.dot2.f32(i32 54, float %5678, float %5679, float %5712, float %5713)  ; Dot2(ax,ay,bx,by)
  %5716 = fmul fast float %5715, 2.000000e+00
  %5717 = call float @dx.op.dot2.f32(i32 54, float %5712, float %5713, float %5712, float %5713)  ; Dot2(ax,ay,bx,by)
  %5718 = fmul fast float %5710, %5710
  %5719 = fsub fast float %5717, %5718
  %5720 = fmul fast float %5716, %5716
  %5721 = fmul fast float %5714, 4.000000e+00
  %5722 = fmul fast float %5721, %5719
  %5723 = fsub fast float %5720, %5722
  %5724 = fcmp fast ogt float %5723, 0.000000e+00
  br i1 %5724, label %5725, label %5740

; <label>:5725                                    ; preds = %5691
  %5726 = fcmp fast ogt float %5716, 0.000000e+00
  %5727 = call float @dx.op.unary.f32(i32 24, float %5723)  ; Sqrt(value)
  %5728 = fsub fast float -0.000000e+00, %5727
  %5729 = select i1 %5726, float %5727, float %5728
  %5730 = fadd fast float %5729, %5716
  %5731 = fmul float %5730, -5.000000e-01
  %5732 = fdiv fast float %5731, %5714
  %5733 = call float @dx.op.binary.f32(i32 35, float %5732, float 0.000000e+00)  ; FMax(a,b)
  %5734 = call float @dx.op.binary.f32(i32 36, float %5677, float %5733)  ; FMin(a,b)
  %5735 = fdiv fast float %5719, %5731
  %5736 = call float @dx.op.binary.f32(i32 35, float %5735, float 0.000000e+00)  ; FMax(a,b)
  %5737 = call float @dx.op.binary.f32(i32 36, float %5677, float %5736)  ; FMin(a,b)
  %5738 = call float @dx.op.binary.f32(i32 36, float %5734, float %5737)  ; FMin(a,b)
  %5739 = call float @dx.op.binary.f32(i32 35, float %5734, float %5737)  ; FMax(a,b)
  br label %5740

; <label>:5740                                    ; preds = %5725, %5691
  %5741 = phi float [ %5739, %5725 ], [ -1.000000e+00, %5691 ]
  %5742 = phi float [ %5738, %5725 ], [ -1.000000e+00, %5691 ]
  %5743 = phi i1 [ true, %5725 ], [ false, %5691 ]
  %5744 = and i1 %5711, %5743
  br i1 %5744, label %5745, label %5747

; <label>:5745                                    ; preds = %5740
  %5746 = fcmp fast oeq float %5742, %5741
  br i1 %5746, label %6050, label %5748

; <label>:5747                                    ; preds = %5740
  br i1 %5711, label %6050, label %5748

; <label>:5748                                    ; preds = %5747, %5745
  %5749 = phi float [ %5677, %5747 ], [ %5741, %5745 ]
  %5750 = phi float [ 0.000000e+00, %5747 ], [ %5742, %5745 ]
  %5751 = icmp ne i32 %5699, 0
  %5752 = fmul fast float %5749, %5680
  %5753 = fadd fast float %5752, %5693
  %5754 = fmul fast float %5753, %5749
  %5755 = select i1 %5751, float 0.000000e+00, float %5754
  %5756 = fcmp fast oeq float %5680, 0.000000e+00
  %5757 = fdiv fast float %5698, %5680
  %5758 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5757)  ; FMax(a,b)
  %5759 = select i1 %5756, float %5749, float %5758
  %5760 = call float @dx.op.binary.f32(i32 36, float %5749, float %5759)  ; FMin(a,b)
  %5761 = fcmp fast ogt float %5680, 0.000000e+00
  %5762 = fcmp fast olt float %5698, 0.000000e+00
  br i1 %5761, label %5763, label %5820

; <label>:5763                                    ; preds = %5748
  %5764 = icmp eq i32 %5699, 0
  br i1 %5762, label %5765, label %5809

; <label>:5765                                    ; preds = %5763
  %5766 = select i1 %5764, float %5749, float 0.000000e+00
  %5767 = fsub fast float -0.000000e+00, %5766
  %5768 = call float @dx.op.unary.f32(i32 6, float %5767)  ; FAbs(value)
  %5769 = fmul fast float %5766, %5680
  %5770 = fadd fast float %5769, %5693
  %5771 = fmul fast float %5768, %5770
  %5772 = fsub fast float %5755, %5771
  %5773 = fsub fast float %5749, %5768
  %5774 = select i1 %5764, float %5773, float 0.000000e+00
  %5775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5777 = extractvalue %dx.types.CBufRet.f32 %5775, 1
  %5778 = extractvalue %dx.types.CBufRet.f32 %5775, 2
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5782 = extractvalue %dx.types.CBufRet.f32 %5779, 2
  %5783 = extractvalue %dx.types.CBufRet.f32 %5779, 3
  %5784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5785 = extractvalue %dx.types.CBufRet.f32 %5784, 3
  %5786 = call float @dx.op.binary.f32(i32 36, float %5772, float %5785)  ; FMin(a,b)
  %5787 = fmul fast float %5783, %5774
  %5788 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  %5789 = fsub fast float %5780, %5776
  %5790 = fsub fast float %5781, %5777
  %5791 = fsub fast float %5782, %5778
  %5792 = fmul fast float %5788, %5789
  %5793 = fmul fast float %5788, %5790
  %5794 = fmul fast float %5788, %5791
  %5795 = fadd fast float %5792, %5776
  %5796 = fadd fast float %5793, %5777
  %5797 = fadd fast float %5794, %5778
  %5798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5799 = extractvalue %dx.types.CBufRet.f32 %5798, 0
  %5800 = extractvalue %dx.types.CBufRet.f32 %5798, 1
  %5801 = fadd fast float %5800, %5799
  %5802 = call float @dx.op.unary.f32(i32 7, float %5801)  ; Saturate(value)
  %5803 = extractvalue %dx.types.CBufRet.f32 %5798, 2
  %5804 = extractvalue %dx.types.CBufRet.f32 %5798, 3
  %5805 = fadd fast float %5804, %5803
  %5806 = call float @dx.op.unary.f32(i32 7, float %5805)  ; Saturate(value)
  %5807 = fmul fast float %5802, %5786
  %5808 = fmul fast float %5807, %5806
  br label %6050

; <label>:5809                                    ; preds = %5763
  br i1 %5764, label %5810, label %5831

; <label>:5810                                    ; preds = %5809
  %5811 = call float @dx.op.binary.f32(i32 36, float %5760, float %5750)  ; FMin(a,b)
  %5812 = fsub fast float %5760, %5811
  %5813 = fsub fast float %5812, %5749
  %5814 = call float @dx.op.unary.f32(i32 6, float %5813)  ; FAbs(value)
  %5815 = fadd fast float %5812, %5749
  %5816 = fmul fast float %5815, %5680
  %5817 = fadd fast float %5816, %5693
  %5818 = fmul fast float %5817, %5814
  %5819 = fsub fast float %5755, %5818
  br label %5831

; <label>:5820                                    ; preds = %5748
  br i1 %5762, label %5821, label %5831

; <label>:5821                                    ; preds = %5820
  %5822 = call float @dx.op.binary.f32(i32 35, float %5750, float %5760)  ; FMax(a,b)
  %5823 = icmp eq i32 %5699, 0
  %5824 = select i1 %5823, float %5760, float 0.000000e+00
  %5825 = fsub fast float -0.000000e+00, %5824
  %5826 = call float @dx.op.unary.f32(i32 6, float %5825)  ; FAbs(value)
  %5827 = fmul fast float %5824, %5680
  %5828 = fadd fast float %5827, %5693
  %5829 = fmul fast float %5826, %5828
  %5830 = fsub fast float %5755, %5829
  br label %5831

; <label>:5831                                    ; preds = %5821, %5820, %5810, %5809
  %5832 = phi float [ %5750, %5809 ], [ %5750, %5810 ], [ %5822, %5821 ], [ %5750, %5820 ]
  %5833 = phi float [ 0.000000e+00, %5809 ], [ %5814, %5810 ], [ %5826, %5821 ], [ 0.000000e+00, %5820 ]
  %5834 = phi float [ %5755, %5809 ], [ %5819, %5810 ], [ %5830, %5821 ], [ %5755, %5820 ]
  %5835 = phi float [ %5760, %5809 ], [ %5760, %5810 ], [ %5749, %5821 ], [ %5749, %5820 ]
  %5836 = getelementptr inbounds [3 x float], [3 x float]* %78, i32 0, i32 0
  store float -1.000000e+00, float* %5836, align 4, !tbaa !101, !noalias !112
  %5837 = getelementptr inbounds [3 x float], [3 x float]* %78, i32 0, i32 1
  store float -1.000000e+00, float* %5837, align 4, !tbaa !101, !noalias !112
  %5838 = getelementptr inbounds [3 x float], [3 x float]* %78, i32 0, i32 2
  store float -1.000000e+00, float* %5838, align 4, !tbaa !101, !noalias !112
  %5839 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 0
  store float -1.000000e+00, float* %5839, align 4, !tbaa !101, !noalias !112
  %5840 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 1
  store float -1.000000e+00, float* %5840, align 4, !tbaa !101, !noalias !112
  %5841 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 2
  store float -1.000000e+00, float* %5841, align 4, !tbaa !101, !noalias !112
  %5842 = icmp sgt i32 %5701, 0
  br i1 %5842, label %5843, label %5904

; <label>:5843                                    ; preds = %5831
  br label %5844

; <label>:5844                                    ; preds = %5893, %5843
  %5845 = phi i32 [ %5894, %5893 ], [ 0, %5843 ]
  %5846 = phi i32 [ %5895, %5893 ], [ 0, %5843 ]
  %5847 = add nuw i32 %5846, 171
  %5848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %5847)  ; CBufferLoadLegacy(handle,regIndex)
  %5849 = extractvalue %dx.types.CBufRet.f32 %5848, 0
  %5850 = extractvalue %dx.types.CBufRet.f32 %5848, 1
  %5851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5852 = extractvalue %dx.types.CBufRet.f32 %5851, 0
  %5853 = extractvalue %dx.types.CBufRet.f32 %5851, 1
  %5854 = fsub fast float %5849, %5852
  %5855 = fsub fast float %5850, %5853
  %5856 = extractvalue %dx.types.CBufRet.f32 %5848, 2
  %5857 = fsub fast float -0.000000e+00, %5854
  %5858 = fsub fast float -0.000000e+00, %5855
  %5859 = call float @dx.op.dot2.f32(i32 54, float %5678, float %5679, float %5857, float %5858)  ; Dot2(ax,ay,bx,by)
  %5860 = fmul fast float %5859, 2.000000e+00
  %5861 = call float @dx.op.dot2.f32(i32 54, float %5857, float %5858, float %5857, float %5858)  ; Dot2(ax,ay,bx,by)
  %5862 = fmul fast float %5856, %5856
  %5863 = fsub fast float %5861, %5862
  %5864 = fmul fast float %5860, %5860
  %5865 = fmul fast float %5721, %5863
  %5866 = fsub fast float %5864, %5865
  %5867 = fcmp fast ogt float %5866, 0.000000e+00
  br i1 %5867, label %5868, label %5883

; <label>:5868                                    ; preds = %5844
  %5869 = fcmp fast ogt float %5860, 0.000000e+00
  %5870 = call float @dx.op.unary.f32(i32 24, float %5866)  ; Sqrt(value)
  %5871 = fsub fast float -0.000000e+00, %5870
  %5872 = select i1 %5869, float %5870, float %5871
  %5873 = fadd fast float %5872, %5860
  %5874 = fmul float %5873, -5.000000e-01
  %5875 = fdiv fast float %5874, %5714
  %5876 = call float @dx.op.binary.f32(i32 35, float %5875, float 0.000000e+00)  ; FMax(a,b)
  %5877 = call float @dx.op.binary.f32(i32 36, float %5749, float %5876)  ; FMin(a,b)
  %5878 = fdiv fast float %5863, %5874
  %5879 = call float @dx.op.binary.f32(i32 35, float %5878, float 0.000000e+00)  ; FMax(a,b)
  %5880 = call float @dx.op.binary.f32(i32 36, float %5749, float %5879)  ; FMin(a,b)
  %5881 = call float @dx.op.binary.f32(i32 36, float %5877, float %5880)  ; FMin(a,b)
  %5882 = call float @dx.op.binary.f32(i32 35, float %5877, float %5880)  ; FMax(a,b)
  br label %5883

; <label>:5883                                    ; preds = %5868, %5844
  %5884 = phi float [ %5882, %5868 ], [ -1.000000e+00, %5844 ]
  %5885 = phi float [ %5881, %5868 ], [ -1.000000e+00, %5844 ]
  %5886 = phi i1 [ true, %5868 ], [ false, %5844 ]
  br i1 %5886, label %5887, label %5893

; <label>:5887                                    ; preds = %5883
  %5888 = call float @dx.op.binary.f32(i32 35, float %5832, float %5885)  ; FMax(a,b)
  %5889 = getelementptr inbounds [3 x float], [3 x float]* %78, i32 0, i32 %5846
  store float %5888, float* %5889, align 4, !tbaa !101, !noalias !112
  %5890 = call float @dx.op.binary.f32(i32 35, float %5832, float %5884)  ; FMax(a,b)
  %5891 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5846
  store float %5890, float* %5891, align 4, !tbaa !101, !noalias !112
  %5892 = add nsw i32 %5845, 1
  br label %5893

; <label>:5893                                    ; preds = %5887, %5883
  %5894 = phi i32 [ %5892, %5887 ], [ %5845, %5883 ]
  %5895 = add nuw nsw i32 %5846, 1
  %5896 = icmp eq i32 %5895, %5701
  br i1 %5896, label %5897, label %5844

; <label>:5897                                    ; preds = %5893
  %5898 = load float, float* %5838, align 4, !tbaa !101, !alias.scope !128, !noalias !131
  %5899 = load float, float* %5837, align 4, !tbaa !101, !alias.scope !134, !noalias !135
  %5900 = load float, float* %5836, align 4, !tbaa !101, !alias.scope !136, !noalias !137
  %5901 = load float, float* %5841, align 4, !tbaa !101, !alias.scope !138, !noalias !141
  %5902 = load float, float* %5840, align 4, !tbaa !101, !alias.scope !144, !noalias !145
  %5903 = load float, float* %5839, align 4, !tbaa !101, !alias.scope !146, !noalias !147
  br label %5904

; <label>:5904                                    ; preds = %5897, %5831
  %5905 = phi float [ -1.000000e+00, %5831 ], [ %5903, %5897 ]
  %5906 = phi float [ -1.000000e+00, %5831 ], [ %5902, %5897 ]
  %5907 = phi float [ -1.000000e+00, %5831 ], [ %5901, %5897 ]
  %5908 = phi float [ -1.000000e+00, %5831 ], [ %5900, %5897 ]
  %5909 = phi float [ -1.000000e+00, %5831 ], [ %5899, %5897 ]
  %5910 = phi float [ -1.000000e+00, %5831 ], [ %5898, %5897 ]
  %5911 = phi i32 [ 0, %5831 ], [ %5894, %5897 ]
  %5912 = call float @dx.op.binary.f32(i32 36, float %5909, float %5910)  ; FMin(a,b)
  %5913 = call float @dx.op.binary.f32(i32 36, float %5908, float %5912)  ; FMin(a,b)
  %5914 = call float @dx.op.binary.f32(i32 35, float %5908, float %5909)  ; FMax(a,b)
  %5915 = call float @dx.op.binary.f32(i32 36, float %5914, float %5910)  ; FMin(a,b)
  %5916 = call float @dx.op.binary.f32(i32 36, float %5908, float %5909)  ; FMin(a,b)
  %5917 = call float @dx.op.binary.f32(i32 35, float %5916, float %5915)  ; FMax(a,b)
  %5918 = call float @dx.op.binary.f32(i32 35, float %5909, float %5910)  ; FMax(a,b)
  %5919 = call float @dx.op.binary.f32(i32 35, float %5908, float %5918)  ; FMax(a,b)
  store float %5913, float* %5836, align 4, !tbaa !101, !alias.scope !136, !noalias !137
  store float %5917, float* %5837, align 4, !tbaa !101, !alias.scope !134, !noalias !135
  store float %5919, float* %5838, align 4, !tbaa !101, !alias.scope !128, !noalias !131
  %5920 = call float @dx.op.binary.f32(i32 36, float %5906, float %5907)  ; FMin(a,b)
  %5921 = call float @dx.op.binary.f32(i32 36, float %5905, float %5920)  ; FMin(a,b)
  %5922 = call float @dx.op.binary.f32(i32 35, float %5905, float %5906)  ; FMax(a,b)
  %5923 = call float @dx.op.binary.f32(i32 36, float %5922, float %5907)  ; FMin(a,b)
  %5924 = call float @dx.op.binary.f32(i32 36, float %5905, float %5906)  ; FMin(a,b)
  %5925 = call float @dx.op.binary.f32(i32 35, float %5924, float %5923)  ; FMax(a,b)
  %5926 = call float @dx.op.binary.f32(i32 35, float %5906, float %5907)  ; FMax(a,b)
  %5927 = call float @dx.op.binary.f32(i32 35, float %5905, float %5926)  ; FMax(a,b)
  store float %5921, float* %5839, align 4, !tbaa !101, !alias.scope !146, !noalias !147
  store float %5925, float* %5840, align 4, !tbaa !101, !alias.scope !144, !noalias !145
  store float %5927, float* %5841, align 4, !tbaa !101, !alias.scope !138, !noalias !141
  %5928 = sub nsw i32 3, %5911
  %5929 = icmp sgt i32 %5928, 2
  br i1 %5929, label %5930, label %5968

; <label>:5930                                    ; preds = %5904
  %5931 = icmp eq i32 %5699, 0
  %5932 = fsub fast float %5749, %5833
  %5933 = select i1 %5931, float %5932, float %5833
  %5934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5935 = extractvalue %dx.types.CBufRet.f32 %5934, 0
  %5936 = extractvalue %dx.types.CBufRet.f32 %5934, 1
  %5937 = extractvalue %dx.types.CBufRet.f32 %5934, 2
  %5938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5939 = extractvalue %dx.types.CBufRet.f32 %5938, 0
  %5940 = extractvalue %dx.types.CBufRet.f32 %5938, 1
  %5941 = extractvalue %dx.types.CBufRet.f32 %5938, 2
  %5942 = extractvalue %dx.types.CBufRet.f32 %5938, 3
  %5943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5944 = extractvalue %dx.types.CBufRet.f32 %5943, 3
  %5945 = call float @dx.op.binary.f32(i32 36, float %5834, float %5944)  ; FMin(a,b)
  %5946 = fmul fast float %5942, %5933
  %5947 = call float @dx.op.unary.f32(i32 7, float %5946)  ; Saturate(value)
  %5948 = fsub fast float %5939, %5935
  %5949 = fsub fast float %5940, %5936
  %5950 = fsub fast float %5941, %5937
  %5951 = fmul fast float %5947, %5948
  %5952 = fmul fast float %5947, %5949
  %5953 = fmul fast float %5947, %5950
  %5954 = fadd fast float %5951, %5935
  %5955 = fadd fast float %5952, %5936
  %5956 = fadd fast float %5953, %5937
  %5957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5958 = extractvalue %dx.types.CBufRet.f32 %5957, 0
  %5959 = extractvalue %dx.types.CBufRet.f32 %5957, 1
  %5960 = fadd fast float %5959, %5958
  %5961 = call float @dx.op.unary.f32(i32 7, float %5960)  ; Saturate(value)
  %5962 = extractvalue %dx.types.CBufRet.f32 %5957, 2
  %5963 = extractvalue %dx.types.CBufRet.f32 %5957, 3
  %5964 = fadd fast float %5963, %5962
  %5965 = call float @dx.op.unary.f32(i32 7, float %5964)  ; Saturate(value)
  %5966 = fmul fast float %5961, %5945
  %5967 = fmul fast float %5966, %5965
  br label %6050

; <label>:5968                                    ; preds = %5904
  %5969 = getelementptr inbounds [3 x float], [3 x float]* %78, i32 0, i32 %5928
  %5970 = load float, float* %5969, align 4, !tbaa !101, !noalias !112
  %5971 = fcmp fast olt float %5970, %5835
  %5972 = icmp sgt i32 %5911, 0
  %5973 = and i1 %5972, %5971
  br i1 %5973, label %5974, label %6011

; <label>:5974                                    ; preds = %5968
  br label %5975

; <label>:5975                                    ; preds = %6004, %5974
  %5976 = phi float [ %6005, %6004 ], [ %5833, %5974 ]
  %5977 = phi float [ %6006, %6004 ], [ %5834, %5974 ]
  %5978 = phi float [ %5986, %6004 ], [ %5970, %5974 ]
  %5979 = phi i32 [ %5983, %6004 ], [ %5928, %5974 ]
  %5980 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5979
  %5981 = load float, float* %5980, align 4, !tbaa !101, !noalias !112
  %5982 = icmp slt i32 %5979, 2
  %5983 = add nsw i32 %5979, 1
  %5984 = getelementptr inbounds [3 x float], [3 x float]* %78, i32 0, i32 %5983
  %5985 = load float, float* %5984, align 4, !tbaa !101, !noalias !112
  %5986 = select i1 %5982, float %5985, float %5749
  %5987 = call float @dx.op.binary.f32(i32 36, float %5986, float %5981)  ; FMin(a,b)
  %5988 = call float @dx.op.binary.f32(i32 36, float %5835, float %5987)  ; FMin(a,b)
  %5989 = icmp eq i32 %5699, 0
  %5990 = fadd fast float %5988, %5978
  %5991 = fmul fast float %5990, %5680
  %5992 = fadd fast float %5991, %5693
  br i1 %5989, label %5998, label %5993

; <label>:5993                                    ; preds = %5975
  %5994 = fsub fast float %5988, %5978
  %5995 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5994)  ; FMax(a,b)
  %5996 = fmul fast float %5995, %5992
  %5997 = fadd fast float %5996, %5977
  br label %6004

; <label>:5998                                    ; preds = %5975
  %5999 = fsub fast float %5978, %5988
  %6000 = call float @dx.op.unary.f32(i32 6, float %5999)  ; FAbs(value)
  %6001 = fadd fast float %6000, %5976
  %6002 = fmul fast float %6000, %5992
  %6003 = fsub fast float %5977, %6002
  br label %6004

; <label>:6004                                    ; preds = %5998, %5993
  %6005 = phi float [ %5995, %5993 ], [ %6001, %5998 ]
  %6006 = phi float [ %5997, %5993 ], [ %6003, %5998 ]
  %6007 = fcmp fast olt float %5986, %5835
  %6008 = icmp slt i32 %5983, 3
  %6009 = and i1 %6008, %6007
  br i1 %6009, label %5975, label %6010

; <label>:6010                                    ; preds = %6004
  br label %6011

; <label>:6011                                    ; preds = %6010, %5968
  %6012 = phi float [ %5833, %5968 ], [ %6005, %6010 ]
  %6013 = phi float [ %5834, %5968 ], [ %6006, %6010 ]
  %6014 = fsub fast float %5749, %6012
  %6015 = select i1 %5751, float %6012, float %6014
  %6016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6017 = extractvalue %dx.types.CBufRet.f32 %6016, 0
  %6018 = extractvalue %dx.types.CBufRet.f32 %6016, 1
  %6019 = extractvalue %dx.types.CBufRet.f32 %6016, 2
  %6020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6021 = extractvalue %dx.types.CBufRet.f32 %6020, 0
  %6022 = extractvalue %dx.types.CBufRet.f32 %6020, 1
  %6023 = extractvalue %dx.types.CBufRet.f32 %6020, 2
  %6024 = extractvalue %dx.types.CBufRet.f32 %6020, 3
  %6025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6026 = extractvalue %dx.types.CBufRet.f32 %6025, 3
  %6027 = call float @dx.op.binary.f32(i32 36, float %6013, float %6026)  ; FMin(a,b)
  %6028 = fmul fast float %6024, %6015
  %6029 = call float @dx.op.unary.f32(i32 7, float %6028)  ; Saturate(value)
  %6030 = fsub fast float %6021, %6017
  %6031 = fsub fast float %6022, %6018
  %6032 = fsub fast float %6023, %6019
  %6033 = fmul fast float %6029, %6030
  %6034 = fmul fast float %6029, %6031
  %6035 = fmul fast float %6029, %6032
  %6036 = fadd fast float %6033, %6017
  %6037 = fadd fast float %6034, %6018
  %6038 = fadd fast float %6035, %6019
  %6039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6040 = extractvalue %dx.types.CBufRet.f32 %6039, 0
  %6041 = extractvalue %dx.types.CBufRet.f32 %6039, 1
  %6042 = fadd fast float %6041, %6040
  %6043 = call float @dx.op.unary.f32(i32 7, float %6042)  ; Saturate(value)
  %6044 = extractvalue %dx.types.CBufRet.f32 %6039, 2
  %6045 = extractvalue %dx.types.CBufRet.f32 %6039, 3
  %6046 = fadd fast float %6045, %6044
  %6047 = call float @dx.op.unary.f32(i32 7, float %6046)  ; Saturate(value)
  %6048 = fmul fast float %6043, %6027
  %6049 = fmul fast float %6048, %6047
  br label %6050

; <label>:6050                                    ; preds = %6011, %5930, %5765, %5747, %5745
  %6051 = phi float [ %5774, %5765 ], [ %5933, %5930 ], [ %6015, %6011 ], [ 0.000000e+00, %5745 ], [ 0.000000e+00, %5747 ]
  %6052 = phi float [ %5808, %5765 ], [ %5967, %5930 ], [ %6049, %6011 ], [ 0.000000e+00, %5745 ], [ 0.000000e+00, %5747 ]
  %6053 = phi float [ %5795, %5765 ], [ %5954, %5930 ], [ %6036, %6011 ], [ 0.000000e+00, %5745 ], [ 0.000000e+00, %5747 ]
  %6054 = phi float [ %5796, %5765 ], [ %5955, %5930 ], [ %6037, %6011 ], [ 0.000000e+00, %5745 ], [ 0.000000e+00, %5747 ]
  %6055 = phi float [ %5797, %5765 ], [ %5956, %5930 ], [ %6038, %6011 ], [ 0.000000e+00, %5745 ], [ 0.000000e+00, %5747 ]
  %6056 = fmul fast float %5688, %6052
  %6057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6058 = extractvalue %dx.types.CBufRet.f32 %6057, 2
  %6059 = fsub fast float %5695, %6058
  %6060 = fcmp fast olt float %6056, -2.000000e+01
  %6061 = call float @dx.op.unary.f32(i32 21, float %6056)  ; Exp(value)
  %6062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6063 = extractvalue %dx.types.CBufRet.f32 %6062, 2
  %6064 = extractvalue %dx.types.CBufRet.f32 %6062, 3
  %6065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6066 = extractvalue %dx.types.CBufRet.f32 %6065, 2
  %6067 = fmul fast float %6064, %6059
  %6068 = call float @dx.op.unary.f32(i32 7, float %6067)  ; Saturate(value)
  %6069 = fsub fast float 1.000000e+00, %6068
  %6070 = fmul fast float %5680, 5.000000e-01
  %6071 = fadd fast float %6070, 5.000000e-01
  %6072 = call float @dx.op.unary.f32(i32 7, float %6071)  ; Saturate(value)
  %6073 = fsub fast float 1.000000e+00, %6072
  %6074 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6069)  ; FMax(a,b)
  %6075 = fdiv fast float %6073, %6074
  %6076 = fsub fast float %6059, %5637
  %6077 = call float @dx.op.unary.f32(i32 6, float %6076)  ; FAbs(value)
  %6078 = fmul fast float %6077, %6063
  %6079 = call float @dx.op.unary.f32(i32 7, float %6075)  ; Saturate(value)
  %6080 = fsub fast float 1.000000e+00, %6078
  %6081 = fmul fast float %6080, %6079
  %6082 = fadd fast float %6081, %6078
  %6083 = fmul fast float %6066, %6059
  %6084 = call float @dx.op.unary.f32(i32 7, float %6083)  ; Saturate(value)
  %6085 = fsub fast float 1.000000e+00, %6082
  %6086 = fmul fast float %6085, %6084
  %6087 = fadd fast float %6086, %6082
  %6088 = call float @dx.op.unary.f32(i32 7, float %6087)  ; Saturate(value)
  %6089 = fadd fast float %6061, -1.000000e+00
  %6090 = select i1 %6060, float -1.000000e+00, float %6089
  %6091 = fmul fast float %6088, %6090
  %6092 = fadd fast float %6091, 1.000000e+00
  %6093 = fsub fast float -0.000000e+00, %6091
  %6094 = fmul fast float %6053, %6093
  %6095 = fmul fast float %6054, %6093
  %6096 = fmul fast float %6055, %6093
  br label %6097

; <label>:6097                                    ; preds = %6050, %5646
  %6098 = phi float [ %6051, %6050 ], [ 0.000000e+00, %5646 ]
  %6099 = phi float [ %6092, %6050 ], [ 1.000000e+00, %5646 ]
  %6100 = phi float [ %6094, %6050 ], [ 0.000000e+00, %5646 ]
  %6101 = phi float [ %6095, %6050 ], [ 0.000000e+00, %5646 ]
  %6102 = phi float [ %6096, %6050 ], [ 0.000000e+00, %5646 ]
  %6103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6104 = extractvalue %dx.types.CBufRet.f32 %6103, 1
  %6105 = fsub fast float 1.000000e+00, %6099
  %6106 = fmul fast float %6105, %5681
  %6107 = fmul fast float %6106, %6104
  %6108 = fsub fast float %5681, %6107
  br i1 %5674, label %6109, label %6138, !dx.controlflow.hints !148

; <label>:6109                                    ; preds = %6097
  %6110 = fmul fast float %5682, %5671
  %6111 = fadd fast float %6110, %5672
  %6112 = call float @dx.op.unary.f32(i32 7, float %6111)  ; Saturate(value)
  %6113 = fmul fast float %5653, %6108
  %6114 = fsub fast float -0.000000e+00, %6113
  %6115 = fmul fast float %5654, %6108
  %6116 = fsub fast float -0.000000e+00, %6115
  %6117 = call float @dx.op.unary.f32(i32 21, float %6114)  ; Exp(value)
  %6118 = call float @dx.op.unary.f32(i32 21, float %6116)  ; Exp(value)
  %6119 = call float @dx.op.binary.f32(i32 35, float %5661, float %6117)  ; FMax(a,b)
  %6120 = call float @dx.op.binary.f32(i32 35, float %5661, float %6118)  ; FMax(a,b)
  %6121 = fsub fast float %6120, %6119
  %6122 = fmul fast float %6121, %6112
  %6123 = fadd fast float %6122, %6119
  %6124 = call float @dx.op.unary.f32(i32 7, float %6123)  ; Saturate(value)
  %6125 = fsub fast float %5658, %5663
  %6126 = fsub fast float %5659, %5664
  %6127 = fsub fast float %5660, %5665
  %6128 = fmul fast float %6112, %6125
  %6129 = fmul fast float %6112, %6126
  %6130 = fmul fast float %6112, %6127
  %6131 = fadd fast float %6128, %5663
  %6132 = fadd fast float %6129, %5664
  %6133 = fadd fast float %6130, %5665
  %6134 = fsub fast float 1.000000e+00, %6124
  %6135 = fmul fast float %6134, %6131
  %6136 = fmul fast float %6134, %6132
  %6137 = fmul fast float %6134, %6133
  br label %6197

; <label>:6138                                    ; preds = %6097
  %6139 = fmul fast float %6108, %5670
  %6140 = call float @dx.op.unary.f32(i32 7, float %6139)  ; Saturate(value)
  %6141 = fsub fast float 2.000000e+00, %6140
  %6142 = fmul fast float %6140, 9.921875e-01
  %6143 = fmul fast float %6142, %6141
  %6144 = fadd fast float %6143, 3.906250e-03
  %6145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %40, float %6144, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6146 = extractvalue %dx.types.ResRet.f32 %6145, 0
  %6147 = fsub fast float %6140, %6146
  %6148 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6147)  ; FMax(a,b)
  %6149 = fmul fast float %5656, %5637
  %6150 = call float @dx.op.unary.f32(i32 6, float %6149)  ; FAbs(value)
  %6151 = fcmp fast ogt float %6150, 0x3EB0C6F7A0000000
  br i1 %6151, label %6152, label %6158, !dx.controlflow.hints !149

; <label>:6152                                    ; preds = %6138
  %6153 = fmul fast float %6149, 0xBFF7154760000000
  %6154 = call float @dx.op.unary.f32(i32 21, float %6153)  ; Exp(value)
  %6155 = fsub fast float 1.000000e+00, %6154
  %6156 = fdiv fast float %6155, %6149
  %6157 = fmul fast float %6156, %5666
  br label %6158

; <label>:6158                                    ; preds = %6152, %6138
  %6159 = phi float [ %6157, %6152 ], [ %5666, %6138 ]
  %6160 = fadd fast float %6159, %5668
  %6161 = fmul fast float %6160, %6148
  %6162 = fmul fast float %5653, %6161
  %6163 = fsub fast float -0.000000e+00, %6162
  %6164 = fmul fast float %5654, %6161
  %6165 = fsub fast float -0.000000e+00, %6164
  %6166 = fmul fast float %5655, %6161
  %6167 = fsub fast float -0.000000e+00, %6166
  %6168 = call float @dx.op.unary.f32(i32 21, float %6163)  ; Exp(value)
  %6169 = call float @dx.op.unary.f32(i32 21, float %6165)  ; Exp(value)
  %6170 = call float @dx.op.unary.f32(i32 21, float %6167)  ; Exp(value)
  %6171 = fmul fast float %5682, %5682
  %6172 = fadd fast float %6171, 1.000000e+00
  %6173 = fmul fast float %6172, 0x3FAE8EC8A0000000
  %6174 = fmul fast float %6173, %5663
  %6175 = fmul fast float %6173, %5664
  %6176 = fmul fast float %6173, %5665
  %6177 = fmul fast float %5682, %5661
  %6178 = fsub fast float 1.000000e+00, %6177
  %6179 = fmul fast float %5661, %5661
  %6180 = fsub fast float 1.000000e+00, %6179
  %6181 = fmul fast float %6180, 0x3FB45F3060000000
  %6182 = fmul fast float %6178, %6178
  %6183 = fdiv fast float 1.000000e+00, %6182
  %6184 = fmul fast float %6181, %6183
  %6185 = fmul fast float %6184, %5658
  %6186 = fmul fast float %6184, %5659
  %6187 = fmul fast float %6184, %5660
  %6188 = fadd fast float %6185, %6174
  %6189 = fadd fast float %6186, %6175
  %6190 = fadd fast float %6187, %6176
  %6191 = fsub fast float 1.000000e+00, %6168
  %6192 = fsub fast float 1.000000e+00, %6169
  %6193 = fsub fast float 1.000000e+00, %6170
  %6194 = fmul fast float %6188, %6191
  %6195 = fmul fast float %6189, %6192
  %6196 = fmul fast float %6190, %6193
  br label %6197

; <label>:6197                                    ; preds = %6158, %6109
  %6198 = phi float [ %6135, %6109 ], [ %6194, %6158 ]
  %6199 = phi float [ %6136, %6109 ], [ %6195, %6158 ]
  %6200 = phi float [ %6137, %6109 ], [ %6196, %6158 ]
  %6201 = phi float [ %6124, %6109 ], [ %6168, %6158 ]
  %6202 = phi float [ %6124, %6109 ], [ %6169, %6158 ]
  %6203 = phi float [ %6124, %6109 ], [ %6170, %6158 ]
  br i1 %5690, label %6204, label %6402, !dx.controlflow.hints !150

; <label>:6204                                    ; preds = %6197
  %6205 = extractvalue %dx.types.CBufRet.f32 %6103, 0
  %6206 = fmul fast float %6205, %6105
  %6207 = fsub fast float %6100, %6198
  %6208 = fsub fast float %6101, %6199
  %6209 = fsub fast float %6102, %6200
  %6210 = fmul fast float %6206, %6207
  %6211 = fmul fast float %6206, %6208
  %6212 = fmul fast float %6206, %6209
  %6213 = fadd fast float %6210, %6198
  %6214 = fadd fast float %6211, %6199
  %6215 = fadd fast float %6212, %6200
  %6216 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6201)  ; FMax(a,b)
  %6217 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6202)  ; FMax(a,b)
  %6218 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6203)  ; FMax(a,b)
  %6219 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6099)  ; FMax(a,b)
  %6220 = call float @dx.op.binary.f32(i32 35, float %6098, float %6108)  ; FMax(a,b)
  %6221 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6220)  ; FMax(a,b)
  %6222 = fdiv fast float %6098, %6221
  %6223 = call float @dx.op.unary.f32(i32 7, float %6222)  ; Saturate(value)
  %6224 = fdiv fast float %6108, %6221
  %6225 = call float @dx.op.unary.f32(i32 7, float %6224)  ; Saturate(value)
  %6226 = fcmp fast une float %6219, 1.000000e+00
  br i1 %6226, label %6227, label %6240, !dx.controlflow.hints !151

; <label>:6227                                    ; preds = %6204
  %6228 = call float @dx.op.unary.f32(i32 23, float %6219)  ; Log(value)
  %6229 = fmul fast float %6228, 0x3FE62E4300000000
  %6230 = fmul fast float %6100, %6229
  %6231 = fsub fast float -0.000000e+00, %6230
  %6232 = fmul fast float %6101, %6229
  %6233 = fsub fast float -0.000000e+00, %6232
  %6234 = fmul fast float %6102, %6229
  %6235 = fsub fast float -0.000000e+00, %6234
  %6236 = fsub fast float 1.000000e+00, %6219
  %6237 = fdiv fast float %6231, %6236
  %6238 = fdiv fast float %6233, %6236
  %6239 = fdiv fast float %6235, %6236
  br label %6240

; <label>:6240                                    ; preds = %6227, %6204
  %6241 = phi float [ %6237, %6227 ], [ %6100, %6204 ]
  %6242 = phi float [ %6238, %6227 ], [ %6101, %6204 ]
  %6243 = phi float [ %6239, %6227 ], [ %6102, %6204 ]
  %6244 = phi float [ %6229, %6227 ], [ 0.000000e+00, %6204 ]
  %6245 = fcmp fast une float %6216, 1.000000e+00
  br i1 %6245, label %6246, label %6253, !dx.controlflow.hints !152

; <label>:6246                                    ; preds = %6240
  %6247 = call float @dx.op.unary.f32(i32 23, float %6216)  ; Log(value)
  %6248 = fmul fast float %6247, 0x3FE62E4300000000
  %6249 = fmul fast float %6213, %6248
  %6250 = fsub fast float -0.000000e+00, %6249
  %6251 = fsub fast float 1.000000e+00, %6216
  %6252 = fdiv fast float %6250, %6251
  br label %6253

; <label>:6253                                    ; preds = %6246, %6240
  %6254 = phi float [ %6252, %6246 ], [ %6213, %6240 ]
  %6255 = phi float [ %6248, %6246 ], [ 0.000000e+00, %6240 ]
  %6256 = fcmp fast une float %6217, 1.000000e+00
  br i1 %6256, label %6257, label %6264, !dx.controlflow.hints !152

; <label>:6257                                    ; preds = %6253
  %6258 = call float @dx.op.unary.f32(i32 23, float %6217)  ; Log(value)
  %6259 = fmul fast float %6258, 0x3FE62E4300000000
  %6260 = fmul fast float %6214, %6259
  %6261 = fsub fast float -0.000000e+00, %6260
  %6262 = fsub fast float 1.000000e+00, %6217
  %6263 = fdiv fast float %6261, %6262
  br label %6264

; <label>:6264                                    ; preds = %6257, %6253
  %6265 = phi float [ %6263, %6257 ], [ %6214, %6253 ]
  %6266 = phi float [ %6259, %6257 ], [ 0.000000e+00, %6253 ]
  %6267 = fcmp fast une float %6218, 1.000000e+00
  br i1 %6267, label %6268, label %6275, !dx.controlflow.hints !152

; <label>:6268                                    ; preds = %6264
  %6269 = call float @dx.op.unary.f32(i32 23, float %6218)  ; Log(value)
  %6270 = fmul fast float %6269, 0x3FE62E4300000000
  %6271 = fmul fast float %6215, %6270
  %6272 = fsub fast float -0.000000e+00, %6271
  %6273 = fsub fast float 1.000000e+00, %6218
  %6274 = fdiv fast float %6272, %6273
  br label %6275

; <label>:6275                                    ; preds = %6268, %6264
  %6276 = phi float [ %6274, %6268 ], [ %6215, %6264 ]
  %6277 = phi float [ %6270, %6268 ], [ 0.000000e+00, %6264 ]
  %6278 = fmul fast float %6241, %6225
  %6279 = fmul fast float %6242, %6225
  %6280 = fmul fast float %6243, %6225
  %6281 = fmul fast float %6244, %6225
  %6282 = fmul fast float %6254, %6223
  %6283 = fmul fast float %6265, %6223
  %6284 = fmul fast float %6276, %6223
  %6285 = fmul fast float %6255, %6223
  %6286 = fmul fast float %6266, %6223
  %6287 = fmul fast float %6277, %6223
  %6288 = fadd fast float %6282, %6278
  %6289 = fadd fast float %6283, %6279
  %6290 = fadd fast float %6284, %6280
  %6291 = fadd fast float %6285, %6281
  %6292 = fadd fast float %6286, %6281
  %6293 = fadd fast float %6287, %6281
  %6294 = fcmp fast une float %6291, 0.000000e+00
  br i1 %6294, label %6295, label %6302, !dx.controlflow.hints !153

; <label>:6295                                    ; preds = %6275
  %6296 = fmul fast float %6291, 0x3FF7154760000000
  %6297 = call float @dx.op.unary.f32(i32 21, float %6296)  ; Exp(value)
  %6298 = fsub fast float 1.000000e+00, %6297
  %6299 = fmul fast float %6288, %6298
  %6300 = fsub fast float -0.000000e+00, %6299
  %6301 = fdiv fast float %6300, %6291
  br label %6302

; <label>:6302                                    ; preds = %6295, %6275
  %6303 = phi float [ %6297, %6295 ], [ 1.000000e+00, %6275 ]
  %6304 = phi float [ %6301, %6295 ], [ %6288, %6275 ]
  %6305 = fcmp fast une float %6292, 0.000000e+00
  br i1 %6305, label %6306, label %6313, !dx.controlflow.hints !153

; <label>:6306                                    ; preds = %6302
  %6307 = fmul fast float %6292, 0x3FF7154760000000
  %6308 = call float @dx.op.unary.f32(i32 21, float %6307)  ; Exp(value)
  %6309 = fsub fast float 1.000000e+00, %6308
  %6310 = fmul fast float %6289, %6309
  %6311 = fsub fast float -0.000000e+00, %6310
  %6312 = fdiv fast float %6311, %6292
  br label %6313

; <label>:6313                                    ; preds = %6306, %6302
  %6314 = phi float [ %6308, %6306 ], [ 1.000000e+00, %6302 ]
  %6315 = phi float [ %6312, %6306 ], [ %6289, %6302 ]
  %6316 = fcmp fast une float %6293, 0.000000e+00
  br i1 %6316, label %6317, label %6324, !dx.controlflow.hints !153

; <label>:6317                                    ; preds = %6313
  %6318 = fmul fast float %6293, 0x3FF7154760000000
  %6319 = call float @dx.op.unary.f32(i32 21, float %6318)  ; Exp(value)
  %6320 = fsub fast float 1.000000e+00, %6319
  %6321 = fmul fast float %6290, %6320
  %6322 = fsub fast float -0.000000e+00, %6321
  %6323 = fdiv fast float %6322, %6293
  br label %6324

; <label>:6324                                    ; preds = %6317, %6313
  %6325 = phi float [ %6319, %6317 ], [ 1.000000e+00, %6313 ]
  %6326 = phi float [ %6323, %6317 ], [ %6290, %6313 ]
  %6327 = fcmp fast ogt float %6223, %6225
  br i1 %6327, label %6328, label %6348

; <label>:6328                                    ; preds = %6324
  %6329 = fsub fast float 1.000000e+00, %6225
  %6330 = fmul fast float %6241, %6329
  %6331 = fmul fast float %6242, %6329
  %6332 = fmul fast float %6243, %6329
  %6333 = fmul fast float %6244, %6329
  %6334 = fcmp fast une float %6333, 0.000000e+00
  br i1 %6334, label %6335, label %6386, !dx.controlflow.hints !154

; <label>:6335                                    ; preds = %6328
  %6336 = fmul fast float %6333, 0x3FF7154760000000
  %6337 = call float @dx.op.unary.f32(i32 21, float %6336)  ; Exp(value)
  %6338 = fsub fast float 1.000000e+00, %6337
  %6339 = fmul fast float %6330, %6338
  %6340 = fsub fast float -0.000000e+00, %6339
  %6341 = fmul fast float %6331, %6338
  %6342 = fsub fast float -0.000000e+00, %6341
  %6343 = fmul fast float %6332, %6338
  %6344 = fsub fast float -0.000000e+00, %6343
  %6345 = fdiv fast float %6340, %6333
  %6346 = fdiv fast float %6342, %6333
  %6347 = fdiv fast float %6344, %6333
  br label %6386

; <label>:6348                                    ; preds = %6324
  %6349 = fsub fast float 1.000000e+00, %6223
  %6350 = fmul fast float %6254, %6349
  %6351 = fmul fast float %6265, %6349
  %6352 = fmul fast float %6276, %6349
  %6353 = fmul fast float %6255, %6349
  %6354 = fmul fast float %6266, %6349
  %6355 = fmul fast float %6277, %6349
  %6356 = fcmp fast une float %6353, 0.000000e+00
  br i1 %6356, label %6357, label %6364, !dx.controlflow.hints !153

; <label>:6357                                    ; preds = %6348
  %6358 = fmul fast float %6353, 0x3FF7154760000000
  %6359 = call float @dx.op.unary.f32(i32 21, float %6358)  ; Exp(value)
  %6360 = fsub fast float 1.000000e+00, %6359
  %6361 = fmul fast float %6350, %6360
  %6362 = fsub fast float -0.000000e+00, %6361
  %6363 = fdiv fast float %6362, %6353
  br label %6364

; <label>:6364                                    ; preds = %6357, %6348
  %6365 = phi float [ %6363, %6357 ], [ %6350, %6348 ]
  %6366 = phi float [ %6359, %6357 ], [ 1.000000e+00, %6348 ]
  %6367 = fcmp fast une float %6354, 0.000000e+00
  br i1 %6367, label %6368, label %6375, !dx.controlflow.hints !153

; <label>:6368                                    ; preds = %6364
  %6369 = fmul fast float %6354, 0x3FF7154760000000
  %6370 = call float @dx.op.unary.f32(i32 21, float %6369)  ; Exp(value)
  %6371 = fsub fast float 1.000000e+00, %6370
  %6372 = fmul fast float %6351, %6371
  %6373 = fsub fast float -0.000000e+00, %6372
  %6374 = fdiv fast float %6373, %6354
  br label %6375

; <label>:6375                                    ; preds = %6368, %6364
  %6376 = phi float [ %6374, %6368 ], [ %6351, %6364 ]
  %6377 = phi float [ %6370, %6368 ], [ 1.000000e+00, %6364 ]
  %6378 = fcmp fast une float %6355, 0.000000e+00
  br i1 %6378, label %6379, label %6386, !dx.controlflow.hints !153

; <label>:6379                                    ; preds = %6375
  %6380 = fmul fast float %6355, 0x3FF7154760000000
  %6381 = call float @dx.op.unary.f32(i32 21, float %6380)  ; Exp(value)
  %6382 = fsub fast float 1.000000e+00, %6381
  %6383 = fmul fast float %6352, %6382
  %6384 = fsub fast float -0.000000e+00, %6383
  %6385 = fdiv fast float %6384, %6355
  br label %6386

; <label>:6386                                    ; preds = %6379, %6375, %6335, %6328
  %6387 = phi float [ %6385, %6379 ], [ %6347, %6335 ], [ %6332, %6328 ], [ %6352, %6375 ]
  %6388 = phi float [ %6376, %6379 ], [ %6346, %6335 ], [ %6331, %6328 ], [ %6376, %6375 ]
  %6389 = phi float [ %6365, %6379 ], [ %6345, %6335 ], [ %6330, %6328 ], [ %6365, %6375 ]
  %6390 = phi float [ %6381, %6379 ], [ %6337, %6335 ], [ 1.000000e+00, %6328 ], [ 1.000000e+00, %6375 ]
  %6391 = phi float [ %6377, %6379 ], [ %6337, %6335 ], [ 1.000000e+00, %6328 ], [ %6377, %6375 ]
  %6392 = phi float [ %6366, %6379 ], [ %6337, %6335 ], [ 1.000000e+00, %6328 ], [ %6366, %6375 ]
  %6393 = fmul fast float %6392, %6304
  %6394 = fmul fast float %6391, %6315
  %6395 = fmul fast float %6390, %6326
  %6396 = fadd fast float %6393, %6389
  %6397 = fadd fast float %6394, %6388
  %6398 = fadd fast float %6395, %6387
  %6399 = fmul fast float %6392, %6303
  %6400 = fmul fast float %6391, %6314
  %6401 = fmul fast float %6390, %6325
  br label %6402

; <label>:6402                                    ; preds = %6386, %6197
  %6403 = phi float [ %6401, %6386 ], [ %6203, %6197 ]
  %6404 = phi float [ %6400, %6386 ], [ %6202, %6197 ]
  %6405 = phi float [ %6399, %6386 ], [ %6201, %6197 ]
  %6406 = phi float [ %6398, %6386 ], [ %6200, %6197 ]
  %6407 = phi float [ %6397, %6386 ], [ %6199, %6197 ]
  %6408 = phi float [ %6396, %6386 ], [ %6198, %6197 ]
  %6409 = fmul fast float %6408, %5352
  %6410 = fmul fast float %6407, %5352
  %6411 = fmul fast float %6406, %5352
  %6412 = fmul fast float %6405, %5645
  %6413 = call float @dx.op.dot3.f32(i32 55, float %6405, float %6404, float %6403, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6414 = call float @dx.op.dot3.f32(i32 55, float %6409, float %6410, float %6411, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6415 = select i1 %193, float %6413, float %6405
  %6416 = select i1 %193, float %6413, float %6404
  %6417 = select i1 %193, float 1.000000e+00, float %6403
  %6418 = select i1 %193, float %6414, float %6409
  %6419 = select i1 %193, float 0.000000e+00, float %6410
  %6420 = select i1 %193, float 0.000000e+00, float %6411
  %6421 = fmul fast float %6415, %5639
  %6422 = fmul fast float %6416, %5640
  %6423 = fmul fast float %6417, %5641
  %6424 = fadd fast float %6421, %6418
  %6425 = fadd fast float %6422, %6419
  %6426 = fadd fast float %6420, %6423
  %6427 = fmul fast float %6415, %5642
  %6428 = fmul fast float %6416, %5643
  %6429 = fmul fast float %6417, %5644
  %6430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6431 = extractvalue %dx.types.CBufRet.i32 %6430, 0
  %6432 = icmp eq i32 %6431, 0
  br i1 %6432, label %6800, label %6433, !dx.controlflow.hints !155

; <label>:6433                                    ; preds = %6402
  %6434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6435 = extractvalue %dx.types.CBufRet.f32 %6434, 2
  %6436 = extractvalue %dx.types.CBufRet.f32 %6434, 3
  %6437 = fmul fast float %6435, %84
  %6438 = fmul fast float %6436, %85
  %6439 = fmul fast float %6437, 2.000000e+00
  %6440 = fmul fast float %6438, 2.000000e+00
  %6441 = fsub fast float 1.000000e+00, %6439
  %6442 = fsub fast float 1.000000e+00, %6440
  %6443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6444 = extractvalue %dx.types.CBufRet.f32 %6443, 0
  %6445 = extractvalue %dx.types.CBufRet.f32 %6443, 1
  %6446 = extractvalue %dx.types.CBufRet.f32 %6443, 2
  %6447 = fmul fast float %6441, %6444
  %6448 = fmul fast float %6441, %6445
  %6449 = fmul fast float %6441, %6446
  %6450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6451 = extractvalue %dx.types.CBufRet.f32 %6450, 0
  %6452 = extractvalue %dx.types.CBufRet.f32 %6450, 1
  %6453 = extractvalue %dx.types.CBufRet.f32 %6450, 2
  %6454 = fmul fast float %6442, %6451
  %6455 = fmul fast float %6442, %6452
  %6456 = fmul fast float %6442, %6453
  %6457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6458 = extractvalue %dx.types.CBufRet.f32 %6457, 0
  %6459 = extractvalue %dx.types.CBufRet.f32 %6457, 1
  %6460 = extractvalue %dx.types.CBufRet.f32 %6457, 2
  %6461 = fadd fast float %6454, %6458
  %6462 = fadd fast float %6461, %6447
  %6463 = fadd fast float %6455, %6459
  %6464 = fadd fast float %6463, %6448
  %6465 = fadd fast float %6456, %6460
  %6466 = fadd fast float %6465, %6449
  %6467 = fmul fast float %6462, %5638
  %6468 = fmul fast float %6464, %5638
  %6469 = fmul fast float %6466, %5638
  %6470 = fmul fast float %6467, %6467
  %6471 = fmul fast float %6468, %6468
  %6472 = fadd fast float %6470, %6471
  %6473 = fmul fast float %6469, %6469
  %6474 = fadd fast float %6472, %6473
  %6475 = call float @dx.op.unary.f32(i32 24, float %6474)  ; Sqrt(value)
  %6476 = extractvalue %dx.types.CBufRet.f32 %5363, 0
  %6477 = fsub fast float %6475, %6476
  %6478 = extractvalue %dx.types.CBufRet.f32 %5363, 2
  %6479 = fmul fast float %6477, %6478
  %6480 = call float @dx.op.unary.f32(i32 7, float %6479)  ; Saturate(value)
  %6481 = fadd fast float %6480, -5.000000e-01
  %6482 = fmul fast float %6481, 2.000000e+00
  %6483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6484 = extractvalue %dx.types.CBufRet.f32 %6483, 2
  %6485 = call float @dx.op.binary.f32(i32 36, float %6484, float %6482)  ; FMin(a,b)
  %6486 = fsub fast float -0.000000e+00, %6484
  %6487 = fcmp fast ogt float %6485, %6486
  br i1 %6487, label %6488, label %6800, !dx.controlflow.hints !156

; <label>:6488                                    ; preds = %6433
  %6489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6490 = extractvalue %dx.types.CBufRet.f32 %6489, 3
  %6491 = fcmp fast ogt float %6490, 0.000000e+00
  br i1 %6491, label %6492, label %6567, !dx.controlflow.hints !157

; <label>:6492                                    ; preds = %6488
  %6493 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %6494 = extractvalue %dx.types.Dimensions %6493, 0
  %6495 = sitofp i32 %6494 to float
  %6496 = extractvalue %dx.types.Dimensions %6493, 1
  %6497 = sitofp i32 %6496 to float
  %6498 = fmul fast float %6437, %6495
  %6499 = fmul fast float %6438, %6497
  %6500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6500, 1
  %6502 = fsub fast float -0.000000e+00, %6501
  %6503 = fptoui float %6502 to i32
  %6504 = fptoui float %6498 to i32
  %6505 = fptoui float %6499 to i32
  %6506 = and i32 %6503, 31
  %6507 = lshr i32 %6504, %6506
  %6508 = lshr i32 %6505, %6506
  %6509 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 %6503, i32 %6507, i32 %6508, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6510 = extractvalue %dx.types.ResRet.f32 %6509, 0
  %6511 = fcmp fast olt float %6510, -1.000000e+00
  %6512 = fcmp fast ogt float %6510, -1.000000e+00
  %6513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6514 = extractvalue %dx.types.CBufRet.f32 %6513, 1
  %6515 = select i1 %6512, float %6514, float 1.000000e+00
  %6516 = fadd fast float %6510, 1.000000e+00
  %6517 = fmul fast float %6515, %6516
  %6518 = call float @dx.op.unary.f32(i32 6, float %6517)  ; FAbs(value)
  %6519 = extractvalue %dx.types.CBufRet.f32 %6513, 3
  %6520 = fcmp fast oge float %6518, %6519
  %6521 = select i1 %6520, float 0x4197782600000000, float %6518
  %6522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6523 = extractvalue %dx.types.CBufRet.f32 %6522, 0
  %6524 = extractvalue %dx.types.CBufRet.f32 %6522, 1
  %6525 = extractvalue %dx.types.CBufRet.f32 %6522, 2
  %6526 = select i1 %6511, float %6523, float %6444
  %6527 = select i1 %6511, float %6524, float %6445
  %6528 = select i1 %6511, float %6525, float %6446
  %6529 = fmul fast float %6526, %6441
  %6530 = fmul fast float %6527, %6441
  %6531 = fmul fast float %6528, %6441
  %6532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6533 = extractvalue %dx.types.CBufRet.f32 %6532, 0
  %6534 = extractvalue %dx.types.CBufRet.f32 %6532, 1
  %6535 = extractvalue %dx.types.CBufRet.f32 %6532, 2
  %6536 = select i1 %6511, float %6533, float %6451
  %6537 = select i1 %6511, float %6534, float %6452
  %6538 = select i1 %6511, float %6535, float %6453
  %6539 = fmul fast float %6536, %6442
  %6540 = fmul fast float %6537, %6442
  %6541 = fmul fast float %6538, %6442
  %6542 = fadd fast float %6539, %6529
  %6543 = fadd fast float %6540, %6530
  %6544 = fadd fast float %6541, %6531
  %6545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6546 = extractvalue %dx.types.CBufRet.f32 %6545, 0
  %6547 = extractvalue %dx.types.CBufRet.f32 %6545, 1
  %6548 = extractvalue %dx.types.CBufRet.f32 %6545, 2
  %6549 = select i1 %6511, float %6546, float %6458
  %6550 = select i1 %6511, float %6547, float %6459
  %6551 = select i1 %6511, float %6548, float %6460
  %6552 = fadd fast float %6542, %6549
  %6553 = fadd fast float %6543, %6550
  %6554 = fadd fast float %6544, %6551
  %6555 = fmul fast float %6552, %6521
  %6556 = fmul fast float %6553, %6521
  %6557 = fmul fast float %6554, %6521
  %6558 = fmul fast float %6555, %6555
  %6559 = fmul fast float %6556, %6556
  %6560 = fadd fast float %6558, %6559
  %6561 = fmul fast float %6557, %6557
  %6562 = fadd fast float %6560, %6561
  %6563 = call float @dx.op.unary.f32(i32 24, float %6562)  ; Sqrt(value)
  %6564 = fsub fast float %6563, %6476
  %6565 = fmul fast float %6564, %6478
  %6566 = call float @dx.op.unary.f32(i32 7, float %6565)  ; Saturate(value)
  br label %6567

; <label>:6567                                    ; preds = %6492, %6488
  %6568 = phi float [ %6566, %6492 ], [ 1.000000e+00, %6488 ]
  %6569 = fmul fast float %6485, 5.000000e-01
  %6570 = fadd fast float %6569, 5.000000e-01
  %6571 = call float @dx.op.unary.f32(i32 22, float %6570)  ; Frc(value)
  %6572 = call float @dx.op.unary.f32(i32 27, float %6571)  ; Round_ni(value)
  %6573 = call float @dx.op.unary.f32(i32 22, float %6571)  ; Frc(value)
  %6574 = fmul fast float %6573, 2.000000e+00
  %6575 = fadd fast float %6574, -1.000000e+00
  %6576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %6437, float %6438, float %6572, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6577 = extractvalue %dx.types.ResRet.f32 %6576, 0
  %6578 = extractvalue %dx.types.ResRet.f32 %6576, 1
  %6579 = extractvalue %dx.types.ResRet.f32 %6576, 2
  %6580 = extractvalue %dx.types.ResRet.f32 %6576, 3
  %6581 = fadd fast float %6577, -5.000000e-01
  %6582 = fadd fast float %6579, -5.000000e-01
  %6583 = fmul fast float %6581, 0xBFD5555560000000
  %6584 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6582, float %6583)  ; FMad(a,b,c)
  %6585 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6578, float 0.000000e+00)  ; FMad(a,b,c)
  %6586 = fadd fast float %6585, %6580
  %6587 = fmul fast float %6581, -7.500000e-01
  %6588 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6582, float %6587)  ; FMad(a,b,c)
  %6589 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6578, float 0.000000e+00)  ; FMad(a,b,c)
  %6590 = fadd fast float %6589, %6580
  %6591 = call float @dx.op.binary.f32(i32 35, float %6584, float -1.000000e+00)  ; FMax(a,b)
  %6592 = call float @dx.op.binary.f32(i32 35, float %6586, float -1.000000e+00)  ; FMax(a,b)
  %6593 = call float @dx.op.binary.f32(i32 35, float %6588, float -1.000000e+00)  ; FMax(a,b)
  %6594 = call float @dx.op.binary.f32(i32 35, float %6590, float -1.000000e+00)  ; FMax(a,b)
  %6595 = call float @dx.op.binary.f32(i32 36, float %6591, float 1.000000e+00)  ; FMin(a,b)
  %6596 = call float @dx.op.binary.f32(i32 36, float %6592, float 1.000000e+00)  ; FMin(a,b)
  %6597 = call float @dx.op.binary.f32(i32 36, float %6593, float 1.000000e+00)  ; FMin(a,b)
  %6598 = call float @dx.op.binary.f32(i32 36, float %6594, float 1.000000e+00)  ; FMin(a,b)
  %6599 = fcmp fast olt float %6595, 0x3FEFFF8020000000
  br i1 %6599, label %6600, label %6715, !dx.controlflow.hints !158

; <label>:6600                                    ; preds = %6567
  %6601 = extractvalue %dx.types.CBufRet.f32 %6483, 3
  %6602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6603 = extractvalue %dx.types.CBufRet.f32 %6602, 0
  %6604 = extractvalue %dx.types.CBufRet.f32 %6602, 1
  %6605 = extractvalue %dx.types.CBufRet.f32 %6602, 2
  %6606 = extractvalue %dx.types.CBufRet.f32 %6602, 3
  %6607 = fsub fast float %6603, %6595
  %6608 = fsub fast float %6604, %6596
  %6609 = fsub fast float %6605, %6597
  %6610 = fsub fast float %6606, %6598
  %6611 = fmul fast float %6607, %6601
  %6612 = fmul fast float %6608, %6601
  %6613 = fmul fast float %6609, %6601
  %6614 = fmul fast float %6610, %6601
  %6615 = fadd fast float %6611, %6595
  %6616 = fadd fast float %6612, %6596
  %6617 = fsub fast float -0.000000e+00, %6616
  %6618 = fadd fast float %6613, %6597
  %6619 = fadd fast float %6614, %6598
  %6620 = fmul fast float %6615, %6615
  %6621 = fsub fast float %6616, %6620
  %6622 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6621)  ; FMax(a,b)
  %6623 = fdiv fast float 1.000000e+00, %6622
  %6624 = fmul fast float %6616, %6615
  %6625 = fsub fast float %6618, %6624
  %6626 = fsub fast float %6575, %6615
  %6627 = fmul fast float %6575, %6575
  %6628 = fsub fast float %6627, %6616
  %6629 = fmul fast float %6626, %6623
  %6630 = fmul fast float %6629, %6625
  %6631 = fsub fast float %6628, %6630
  %6632 = fmul fast float %6616, %6616
  %6633 = fsub fast float %6619, %6632
  %6634 = fmul fast float %6625, %6625
  %6635 = fmul fast float %6634, %6623
  %6636 = fsub fast float %6633, %6635
  %6637 = fdiv fast float %6631, %6636
  %6638 = fmul fast float %6625, %6637
  %6639 = fsub fast float %6626, %6638
  %6640 = fmul fast float %6639, %6623
  %6641 = fmul fast float %6640, %6615
  %6642 = fsub fast float 1.000000e+00, %6641
  %6643 = fmul fast float %6616, %6637
  %6644 = fsub fast float %6642, %6643
  %6645 = fmul fast float %6640, %6640
  %6646 = fmul fast float %6637, 4.000000e+00
  %6647 = fmul fast float %6646, %6644
  %6648 = fsub fast float %6645, %6647
  %6649 = call float @dx.op.unary.f32(i32 24, float %6648)  ; Sqrt(value)
  %6650 = fcmp fast oge float %6640, 0.000000e+00
  %6651 = fsub fast float -0.000000e+00, %6649
  %6652 = select i1 %6650, float %6651, float %6649
  %6653 = fsub fast float %6652, %6640
  %6654 = fdiv fast float %6653, %6637
  %6655 = fdiv fast float %6644, %6653
  %6656 = fmul fast float %6654, 5.000000e-01
  %6657 = fmul fast float %6655, 2.000000e+00
  %6658 = select i1 %6650, float %6656, float %6657
  %6659 = select i1 %6650, float %6657, float %6656
  %6660 = call float @dx.op.binary.f32(i32 35, float %6658, float %6659)  ; FMax(a,b)
  %6661 = call float @dx.op.binary.f32(i32 36, float %6658, float %6659)  ; FMin(a,b)
  %6662 = fcmp fast ogt float %6575, %6661
  br i1 %6662, label %6663, label %6673

; <label>:6663                                    ; preds = %6600
  %6664 = fsub fast float %6575, %6661
  %6665 = fsub fast float %6660, %6661
  %6666 = fmul fast float %6664, %6665
  %6667 = fmul fast float %6660, %6575
  %6668 = fadd fast float %6660, %6575
  %6669 = fmul fast float %6668, %6615
  %6670 = fadd fast float %6667, %6616
  %6671 = fsub fast float %6670, %6669
  %6672 = fdiv fast float %6671, %6666
  br label %6673

; <label>:6673                                    ; preds = %6663, %6600
  %6674 = phi float [ %6672, %6663 ], [ 0.000000e+00, %6600 ]
  %6675 = fcmp fast ogt float %6575, %6660
  %6676 = fsub fast float %6575, %6660
  br i1 %6675, label %6677, label %6687

; <label>:6677                                    ; preds = %6673
  %6678 = fsub fast float %6660, %6661
  %6679 = fmul fast float %6678, %6676
  %6680 = fmul fast float %6661, %6575
  %6681 = fadd fast float %6661, %6575
  %6682 = fmul fast float %6681, %6615
  %6683 = fsub fast float %6617, %6680
  %6684 = fadd fast float %6683, %6682
  %6685 = fdiv fast float %6684, %6679
  %6686 = fadd fast float %6685, %6674
  br label %6687

; <label>:6687                                    ; preds = %6677, %6673
  %6688 = phi float [ %6686, %6677 ], [ %6674, %6673 ]
  %6689 = fsub fast float %6575, %6661
  %6690 = fmul fast float %6689, %6676
  %6691 = fmul fast float %6661, %6660
  %6692 = fadd fast float %6661, %6660
  %6693 = fmul fast float %6692, %6615
  %6694 = fadd fast float %6691, %6616
  %6695 = fsub fast float %6694, %6693
  %6696 = fdiv fast float %6695, %6690
  %6697 = call float @dx.op.unary.f32(i32 7, float %6688)  ; Saturate(value)
  %6698 = fcmp fast oeq float %5364, 0.000000e+00
  %6699 = extractvalue %dx.types.CBufRet.f32 %6483, 0
  %6700 = fcmp fast oeq float %6699, 0.000000e+00
  %6701 = or i1 %6698, %6700
  %6702 = fmul fast float %6699, 2.000000e+00
  %6703 = fadd fast float %6484, %6485
  %6704 = fdiv fast float %6703, %6702
  %6705 = call float @dx.op.unary.f32(i32 7, float %6704)  ; Saturate(value)
  %6706 = fmul fast float %6705, 2.000000e+00
  %6707 = fsub fast float 3.000000e+00, %6706
  %6708 = fmul fast float %6705, %6705
  %6709 = fmul fast float %6708, %6707
  %6710 = select i1 %6701, float 1.000000e+00, float %6709
  %6711 = fmul fast float %6696, %5364
  %6712 = fadd fast float %6697, %6711
  %6713 = call float @dx.op.unary.f32(i32 7, float %6712)  ; Saturate(value)
  %6714 = fmul fast float %6710, %6713
  br label %6715

; <label>:6715                                    ; preds = %6687, %6567
  %6716 = phi float [ %6714, %6687 ], [ 0.000000e+00, %6567 ]
  %6717 = fsub fast float 1.000000e+00, %6716
  %6718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %6437, float %6438, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6719 = extractvalue %dx.types.ResRet.f32 %6718, 0
  %6720 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6721 = extractvalue %dx.types.CBufRet.i32 %6720, 2
  %6722 = icmp eq i32 %6721, 0
  br i1 %6722, label %6728, label %6723

; <label>:6723                                    ; preds = %6715
  %6724 = call float @dx.op.unary.f32(i32 7, float %6716)  ; Saturate(value)
  %6725 = fadd fast float %6719, -1.000000e+00
  %6726 = fmul fast float %6724, %6725
  %6727 = fadd fast float %6726, 1.000000e+00
  br label %6728

; <label>:6728                                    ; preds = %6723, %6715
  %6729 = phi float [ %6727, %6723 ], [ %6717, %6715 ]
  br i1 %6491, label %6730, label %6748

; <label>:6730                                    ; preds = %6728
  %6731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6732 = extractvalue %dx.types.CBufRet.f32 %6731, 1
  %6733 = fsub fast float %6568, %6732
  %6734 = call float @dx.op.unary.f32(i32 7, float %6733)  ; Saturate(value)
  %6735 = fsub fast float %6568, %6490
  %6736 = call float @dx.op.unary.f32(i32 7, float %6735)  ; Saturate(value)
  %6737 = fsub fast float %6734, %6736
  %6738 = fsub fast float %6570, %6736
  %6739 = fdiv fast float %6738, %6737
  %6740 = call float @dx.op.unary.f32(i32 7, float %6739)  ; Saturate(value)
  %6741 = fmul fast float %6740, 2.000000e+00
  %6742 = fsub fast float 3.000000e+00, %6741
  %6743 = fsub fast float %6719, %6729
  %6744 = fmul fast float %6740, %6740
  %6745 = fmul fast float %6744, %6743
  %6746 = fmul fast float %6745, %6742
  %6747 = fadd fast float %6746, %6729
  br label %6748

; <label>:6748                                    ; preds = %6730, %6728
  %6749 = phi float [ %6747, %6730 ], [ %6729, %6728 ]
  %6750 = call float @dx.op.binary.f32(i32 35, float %6719, float %6749)  ; FMax(a,b)
  %6751 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6752 = extractvalue %dx.types.CBufRet.i32 %6751, 2
  %6753 = and i32 %6752, 1
  %6754 = icmp eq i32 %6753, 0
  %6755 = fcmp fast une float %6750, 1.000000e+00
  %6756 = and i1 %6755, %6754
  br i1 %6756, label %6757, label %6776

; <label>:6757                                    ; preds = %6748
  %6758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %6437, float %6438, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6759 = extractvalue %dx.types.ResRet.f32 %6758, 0
  %6760 = extractvalue %dx.types.ResRet.f32 %6758, 1
  %6761 = extractvalue %dx.types.ResRet.f32 %6758, 2
  %6762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6763 = extractvalue %dx.types.CBufRet.f32 %6762, 1
  %6764 = fmul fast float %6763, %6759
  %6765 = fmul fast float %6763, %6760
  %6766 = fmul fast float %6763, %6761
  %6767 = fcmp fast ogt float %6719, 0x3FEFFF2E40000000
  %6768 = fsub fast float 1.000000e+00, %6750
  %6769 = fsub fast float 1.000000e+00, %6719
  %6770 = fdiv fast float %6768, %6769
  %6771 = call float @dx.op.unary.f32(i32 7, float %6770)  ; Saturate(value)
  %6772 = select i1 %6767, float 0.000000e+00, float %6771
  %6773 = fmul fast float %6764, %6772
  %6774 = fmul fast float %6765, %6772
  %6775 = fmul fast float %6766, %6772
  br label %6776

; <label>:6776                                    ; preds = %6757, %6748
  %6777 = phi float [ 0.000000e+00, %6748 ], [ %6773, %6757 ]
  %6778 = phi float [ 0.000000e+00, %6748 ], [ %6774, %6757 ]
  %6779 = phi float [ 0.000000e+00, %6748 ], [ %6775, %6757 ]
  %6780 = fmul fast float %6777, %5352
  %6781 = fmul fast float %6778, %5352
  %6782 = fmul fast float %6779, %5352
  %6783 = fmul fast float %6750, %6412
  %6784 = call float @dx.op.dot3.f32(i32 55, float %6750, float %6750, float %6750, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6785 = call float @dx.op.dot3.f32(i32 55, float %6780, float %6781, float %6782, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6786 = select i1 %193, float %6784, float %6750
  %6787 = select i1 %193, float 1.000000e+00, float %6750
  %6788 = select i1 %193, float %6785, float %6780
  %6789 = select i1 %193, float 0.000000e+00, float %6781
  %6790 = select i1 %193, float 0.000000e+00, float %6782
  %6791 = fmul fast float %6786, %6424
  %6792 = fmul fast float %6786, %6425
  %6793 = fmul fast float %6787, %6426
  %6794 = fadd fast float %6791, %6788
  %6795 = fadd fast float %6792, %6789
  %6796 = fadd fast float %6790, %6793
  %6797 = fmul fast float %6786, %6427
  %6798 = fmul fast float %6786, %6428
  %6799 = fmul fast float %6787, %6429
  br label %6800

; <label>:6800                                    ; preds = %6776, %6433, %6402, %5634
  %6801 = phi float [ %5639, %5634 ], [ %6424, %6402 ], [ %6794, %6776 ], [ %6424, %6433 ]
  %6802 = phi float [ %5640, %5634 ], [ %6425, %6402 ], [ %6795, %6776 ], [ %6425, %6433 ]
  %6803 = phi float [ %5641, %5634 ], [ %6426, %6402 ], [ %6796, %6776 ], [ %6426, %6433 ]
  %6804 = phi float [ %5642, %5634 ], [ %6427, %6402 ], [ %6797, %6776 ], [ %6427, %6433 ]
  %6805 = phi float [ %5643, %5634 ], [ %6428, %6402 ], [ %6798, %6776 ], [ %6428, %6433 ]
  %6806 = phi float [ %5644, %5634 ], [ %6429, %6402 ], [ %6799, %6776 ], [ %6429, %6433 ]
  %6807 = phi float [ %5645, %5634 ], [ %6412, %6402 ], [ %6783, %6776 ], [ %6412, %6433 ]
  %6808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6809 = extractvalue %dx.types.CBufRet.f32 %6808, 2
  %6810 = extractvalue %dx.types.CBufRet.f32 %6808, 3
  %6811 = fmul fast float %6809, %84
  %6812 = fmul fast float %6810, %85
  %6813 = call float @dx.op.unary.f32(i32 7, float %6811)  ; Saturate(value)
  %6814 = call float @dx.op.unary.f32(i32 7, float %6812)  ; Saturate(value)
  %6815 = select i1 %5374, i32 2, i32 0
  %6816 = or i32 %6815, 1
  %6817 = uitofp i32 %6816 to float
  %6818 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %40, float %6813, float %6814, float %6817, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6819 = extractvalue %dx.types.ResRet.f32 %6818, 0
  %6820 = extractvalue %dx.types.ResRet.f32 %6818, 1
  %6821 = extractvalue %dx.types.ResRet.f32 %6818, 2
  %6822 = extractvalue %dx.types.ResRet.f32 %6818, 3
  %6823 = add nuw nsw i32 %6815, 2
  %6824 = uitofp i32 %6823 to float
  %6825 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %40, float %6813, float %6814, float %6824, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6826 = extractvalue %dx.types.ResRet.f32 %6825, 0
  %6827 = extractvalue %dx.types.ResRet.f32 %6825, 1
  %6828 = extractvalue %dx.types.ResRet.f32 %6825, 2
  %6829 = extractvalue %dx.types.ResRet.f32 %6825, 3
  %6830 = call float @dx.op.binary.f32(i32 35, float %6820, float %6821)  ; FMax(a,b)
  %6831 = call float @dx.op.binary.f32(i32 35, float %6819, float %6830)  ; FMax(a,b)
  %6832 = call float @dx.op.binary.f32(i32 35, float %6831, float %6822)  ; FMax(a,b)
  %6833 = call float @dx.op.binary.f32(i32 36, float %6827, float %6828)  ; FMin(a,b)
  %6834 = call float @dx.op.binary.f32(i32 36, float %6826, float %6833)  ; FMin(a,b)
  %6835 = call float @dx.op.binary.f32(i32 36, float %6834, float %6829)  ; FMin(a,b)
  %6836 = fmul fast float %6832, 2.550000e+02
  %6837 = fadd fast float %6836, 0x3F70101020000000
  %6838 = fptoui float %6837 to i32
  %6839 = fmul fast float %6835, 2.550000e+02
  %6840 = fadd fast float %6839, 0x3F70101020000000
  %6841 = fptoui float %6840 to i32
  %6842 = icmp ult i32 %6838, %6841
  br i1 %6842, label %6843, label %7012

; <label>:6843                                    ; preds = %6800
  %6844 = fcmp fast ogt float %71, 9.843750e-01
  %6845 = fadd fast float %5638, -4.000000e+00
  %6846 = select i1 %6844, float -4.000000e+00, float %6845
  %6847 = call float @dx.op.binary.f32(i32 35, float %6846, float 0.000000e+00)  ; FMax(a,b)
  %6848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.f32 %6848, 0
  %6850 = fadd fast float %6849, %6847
  %6851 = extractvalue %dx.types.CBufRet.f32 %6848, 2
  %6852 = fmul fast float %6850, %6851
  %6853 = call float @dx.op.unary.f32(i32 23, float %6852)  ; Log(value)
  %6854 = extractvalue %dx.types.CBufRet.f32 %6848, 3
  %6855 = fmul fast float %6854, %6853
  %6856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6857 = extractvalue %dx.types.CBufRet.f32 %6856, 2
  %6858 = fmul fast float %6855, %6857
  %6859 = call float @dx.op.unary.f32(i32 7, float %6858)  ; Saturate(value)
  %6860 = uitofp i32 %6838 to float
  %6861 = uitofp i32 %6841 to float
  %6862 = fadd fast float %6860, 5.000000e-01
  %6863 = fadd fast float %6861, 5.000000e-01
  %6864 = fmul fast float %6857, %6862
  %6865 = fmul fast float %6857, %6863
  %6866 = fadd fast float %6864, 0x3F0FFB4800000000
  %6867 = fadd fast float %6865, 0xBF0FFB4800000000
  %6868 = call float @dx.op.binary.f32(i32 35, float %6859, float %6866)  ; FMax(a,b)
  %6869 = call float @dx.op.binary.f32(i32 36, float %6868, float %6867)  ; FMin(a,b)
  %6870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6871 = extractvalue %dx.types.CBufRet.f32 %6870, 1
  %6872 = extractvalue %dx.types.CBufRet.f32 %6870, 2
  %6873 = extractvalue %dx.types.CBufRet.f32 %6870, 0
  %6874 = select i1 %5374, float %6873, float 0.000000e+00
  %6875 = fmul fast float %6871, %6869
  %6876 = fadd fast float %6874, %6875
  %6877 = fadd fast float %6874, %6872
  %6878 = fsub fast float %6871, %6872
  %6879 = fadd fast float %6878, %6874
  %6880 = call float @dx.op.binary.f32(i32 35, float %6876, float %6877)  ; FMax(a,b)
  %6881 = call float @dx.op.binary.f32(i32 36, float %6880, float %6879)  ; FMin(a,b)
  %6882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %6813, float %6814, float %6881, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6883 = extractvalue %dx.types.ResRet.f32 %6882, 0
  %6884 = extractvalue %dx.types.ResRet.f32 %6882, 1
  %6885 = extractvalue %dx.types.ResRet.f32 %6882, 2
  %6886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6887 = extractvalue %dx.types.CBufRet.i32 %6886, 0
  %6888 = extractvalue %dx.types.CBufRet.i32 %6886, 1
  %6889 = uitofp i32 %6887 to float
  %6890 = uitofp i32 %6888 to float
  %6891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6892 = extractvalue %dx.types.CBufRet.f32 %6891, 0
  %6893 = extractvalue %dx.types.CBufRet.f32 %6891, 1
  %6894 = fmul fast float %6889, %6813
  %6895 = fmul fast float %6890, %6814
  %6896 = fadd fast float %6894, -5.000000e-01
  %6897 = fadd fast float %6895, -5.000000e-01
  %6898 = call float @dx.op.unary.f32(i32 22, float %6896)  ; Frc(value)
  %6899 = call float @dx.op.unary.f32(i32 22, float %6897)  ; Frc(value)
  %6900 = fmul fast float %6898, %6898
  %6901 = fmul fast float %6900, %6898
  %6902 = fsub fast float 3.000000e+00, %6898
  %6903 = fmul fast float %6900, %6902
  %6904 = fmul fast float %6898, 3.000000e+00
  %6905 = fmul fast float %6901, 3.000000e+00
  %6906 = fmul fast float %6900, 6.000000e+00
  %6907 = fsub fast float %6905, %6906
  %6908 = fadd fast float %6907, 4.000000e+00
  %6909 = fmul fast float %6908, 0x3FC5555560000000
  %6910 = fmul fast float %6901, -3.000000e+00
  %6911 = fadd fast float %6900, %6898
  %6912 = fmul fast float %6911, 3.000000e+00
  %6913 = fadd fast float %6910, 1.000000e+00
  %6914 = fadd fast float %6913, %6912
  %6915 = fmul fast float %6901, 0x3FC5555560000000
  %6916 = fmul fast float %6899, %6899
  %6917 = fmul fast float %6916, %6899
  %6918 = fsub fast float 3.000000e+00, %6899
  %6919 = fmul fast float %6916, %6918
  %6920 = fmul fast float %6899, 3.000000e+00
  %6921 = fmul fast float %6917, 3.000000e+00
  %6922 = fmul fast float %6916, 6.000000e+00
  %6923 = fsub fast float %6921, %6922
  %6924 = fadd fast float %6923, 4.000000e+00
  %6925 = fmul fast float %6924, 0x3FC5555560000000
  %6926 = fmul fast float %6917, -3.000000e+00
  %6927 = fadd fast float %6916, %6899
  %6928 = fmul fast float %6927, 3.000000e+00
  %6929 = fadd fast float %6926, 1.000000e+00
  %6930 = fadd fast float %6929, %6928
  %6931 = fmul fast float %6917, 0x3FC5555560000000
  %6932 = fadd fast float %6898, 1.000000e+00
  %6933 = fsub fast float 1.000000e+00, %6904
  %6934 = fadd fast float %6933, %6903
  %6935 = fadd fast float %6934, %6908
  %6936 = fmul fast float %6935, 0x3FC5555560000000
  %6937 = fdiv fast float %6909, %6936
  %6938 = fsub fast float %6932, %6937
  %6939 = fsub fast float 1.000000e+00, %6898
  %6940 = fadd fast float %6914, %6901
  %6941 = fmul fast float %6940, 0x3FC5555560000000
  %6942 = fdiv fast float %6915, %6941
  %6943 = fadd fast float %6939, %6942
  %6944 = fadd fast float %6899, 1.000000e+00
  %6945 = fsub fast float 1.000000e+00, %6920
  %6946 = fadd fast float %6945, %6919
  %6947 = fadd fast float %6946, %6924
  %6948 = fmul fast float %6947, 0x3FC5555560000000
  %6949 = fdiv fast float %6925, %6948
  %6950 = fsub fast float %6944, %6949
  %6951 = fsub fast float 1.000000e+00, %6899
  %6952 = fadd fast float %6930, %6917
  %6953 = fmul fast float %6952, 0x3FC5555560000000
  %6954 = fdiv fast float %6931, %6953
  %6955 = fadd fast float %6954, %6951
  %6956 = fmul fast float %6938, %6892
  %6957 = fsub fast float %6813, %6956
  %6958 = fmul fast float %6943, %6892
  %6959 = fadd fast float %6958, %6813
  %6960 = fmul fast float %6955, %6893
  %6961 = fadd fast float %6960, %6814
  %6962 = fmul fast float %6950, %6893
  %6963 = fsub fast float %6814, %6962
  %6964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %6957, float %6963, float %6881, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6965 = extractvalue %dx.types.ResRet.f32 %6964, 0
  %6966 = extractvalue %dx.types.ResRet.f32 %6964, 1
  %6967 = extractvalue %dx.types.ResRet.f32 %6964, 2
  %6968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %6959, float %6963, float %6881, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6969 = extractvalue %dx.types.ResRet.f32 %6968, 0
  %6970 = extractvalue %dx.types.ResRet.f32 %6968, 1
  %6971 = extractvalue %dx.types.ResRet.f32 %6968, 2
  %6972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %6957, float %6961, float %6881, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6973 = extractvalue %dx.types.ResRet.f32 %6972, 0
  %6974 = extractvalue %dx.types.ResRet.f32 %6972, 1
  %6975 = extractvalue %dx.types.ResRet.f32 %6972, 2
  %6976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %6959, float %6961, float %6881, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6977 = extractvalue %dx.types.ResRet.f32 %6976, 0
  %6978 = extractvalue %dx.types.ResRet.f32 %6976, 1
  %6979 = extractvalue %dx.types.ResRet.f32 %6976, 2
  %6980 = fsub fast float %6973, %6965
  %6981 = fsub fast float %6974, %6966
  %6982 = fsub fast float %6975, %6967
  %6983 = fmul fast float %6980, %6953
  %6984 = fmul fast float %6981, %6953
  %6985 = fmul fast float %6982, %6953
  %6986 = fadd fast float %6983, %6965
  %6987 = fadd fast float %6984, %6966
  %6988 = fadd fast float %6985, %6967
  %6989 = fsub fast float %6977, %6969
  %6990 = fsub fast float %6978, %6970
  %6991 = fsub fast float %6979, %6971
  %6992 = fmul fast float %6989, %6953
  %6993 = fmul fast float %6990, %6953
  %6994 = fmul fast float %6991, %6953
  %6995 = fsub fast float %6969, %6986
  %6996 = fadd fast float %6995, %6992
  %6997 = fsub fast float %6970, %6987
  %6998 = fadd fast float %6997, %6993
  %6999 = fsub fast float %6971, %6988
  %7000 = fadd fast float %6999, %6994
  %7001 = fmul fast float %6996, %6941
  %7002 = fmul fast float %6998, %6941
  %7003 = fmul fast float %7000, %6941
  %7004 = fadd fast float %7001, %6986
  %7005 = fadd fast float %7002, %6987
  %7006 = fadd fast float %7003, %6988
  %7007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7008 = extractvalue %dx.types.CBufRet.f32 %7007, 1
  %7009 = fmul fast float %7004, %7008
  %7010 = fmul fast float %7005, %7008
  %7011 = fmul fast float %7006, %7008
  br label %7012

; <label>:7012                                    ; preds = %6843, %6800
  %7013 = phi float [ %6883, %6843 ], [ 1.000000e+00, %6800 ]
  %7014 = phi float [ %6884, %6843 ], [ 1.000000e+00, %6800 ]
  %7015 = phi float [ %6885, %6843 ], [ 1.000000e+00, %6800 ]
  %7016 = phi float [ %7009, %6843 ], [ 0.000000e+00, %6800 ]
  %7017 = phi float [ %7010, %6843 ], [ 0.000000e+00, %6800 ]
  %7018 = phi float [ %7011, %6843 ], [ 0.000000e+00, %6800 ]
  %7019 = fmul fast float %7016, %5352
  %7020 = fmul fast float %7017, %5352
  %7021 = fmul fast float %7018, %5352
  %7022 = fmul fast float %7013, %6807
  %7023 = call float @dx.op.dot3.f32(i32 55, float %7013, float %7014, float %7015, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7024 = call float @dx.op.dot3.f32(i32 55, float %7019, float %7020, float %7021, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7025 = select i1 %193, float %7023, float %7013
  %7026 = select i1 %193, float %7023, float %7014
  %7027 = select i1 %193, float 1.000000e+00, float %7015
  %7028 = select i1 %193, float %7024, float %7019
  %7029 = select i1 %193, float 0.000000e+00, float %7020
  %7030 = select i1 %193, float 0.000000e+00, float %7021
  %7031 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7032 = extractvalue %dx.types.CBufRet.i32 %7031, 3
  %7033 = and i32 %7032, 3
  %7034 = icmp ne i32 %7033, 0
  %7035 = and i32 %7032, 4
  %7036 = icmp ne i32 %7035, 0
  %7037 = and i1 %7034, %7036
  %7038 = and i1 %193, %7037
  br i1 %7038, label %7039, label %7045

; <label>:7039                                    ; preds = %7012
  %7040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7041 = extractvalue %dx.types.CBufRet.f32 %7040, 1
  %7042 = fadd fast float %7022, -1.000000e+00
  %7043 = fmul fast float %7041, %7042
  %7044 = fadd fast float %7043, 1.000000e+00
  br label %7045

; <label>:7045                                    ; preds = %7039, %7012
  %7046 = phi float [ %7044, %7039 ], [ %7022, %7012 ]
  %7047 = fadd fast float %6804, %6801
  %7048 = fmul fast float %7025, %7047
  %7049 = fadd fast float %7048, %7028
  %7050 = fadd fast float %6805, %6802
  %7051 = fmul fast float %7026, %7050
  %7052 = fadd fast float %7051, %7029
  %7053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7054 = extractvalue %dx.types.CBufRet.f32 %7053, 0
  br i1 %193, label %7055, label %7078

; <label>:7055                                    ; preds = %7045
  %7056 = fadd fast float %7049, %7052
  %7057 = fmul fast float %7054, %7056
  %7058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7059 = extractvalue %dx.types.CBufRet.f32 %7058, 3
  %7060 = extractvalue %dx.types.CBufRet.f32 %5356, 1
  %7061 = fsub fast float %5361, %5355
  %7062 = fadd fast float %7061, %5362
  %7063 = fsub fast float %7062, %7060
  %7064 = extractvalue %dx.types.CBufRet.f32 %5356, 2
  %7065 = fmul fast float %7063, %7064
  %7066 = call float @dx.op.unary.f32(i32 7, float %7065)  ; Saturate(value)
  %7067 = fsub fast float %7066, %7059
  %7068 = fmul fast float %7067, %7046
  %7069 = fadd fast float %7068, %7059
  %7070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7071 = extractvalue %dx.types.CBufRet.f32 %7070, 0
  %7072 = fsub fast float %7069, %7071
  %7073 = fmul fast float %7072, 1.000000e+01
  %7074 = call float @dx.op.unary.f32(i32 7, float %7073)  ; Saturate(value)
  %7075 = fmul fast float %7074, %5351
  %7076 = fadd fast float %7075, %5352
  %7077 = fmul fast float %7076, %7069
  br label %7101

; <label>:7078                                    ; preds = %7045
  %7079 = fadd fast float %6806, %6803
  %7080 = fmul fast float %7027, %7079
  %7081 = fadd fast float %7080, %7030
  %7082 = fmul fast float %7054, %7049
  %7083 = fmul fast float %7054, %7052
  %7084 = fmul fast float %7054, %7081
  %7085 = call float @dx.op.binary.f32(i32 35, float %7083, float %7084)  ; FMax(a,b)
  %7086 = call float @dx.op.binary.f32(i32 35, float %7082, float %7085)  ; FMax(a,b)
  %7087 = call float @dx.op.binary.f32(i32 35, float %7086, float %5352)  ; FMax(a,b)
  %7088 = fcmp fast ugt float %7087, 0x3F10000000000000
  br i1 %7088, label %7090, label %7089

; <label>:7089                                    ; preds = %7078
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7090

; <label>:7090                                    ; preds = %7089, %7078
  %7091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %7092 = extractvalue %dx.types.ResRet.i32 %7091, 0
  %7093 = and i32 %7092, 32
  %7094 = icmp eq i32 %7093, 0
  br i1 %7094, label %7101, label %7095

; <label>:7095                                    ; preds = %7090
  %7096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7097 = extractvalue %dx.types.CBufRet.f32 %7096, 0
  %7098 = fmul fast float %7097, 0x3FE99999A0000000
  %7099 = fadd fast float %7097, %7082
  %7100 = fadd fast float %7098, %7084
  br label %7101

; <label>:7101                                    ; preds = %7095, %7090, %7055
  %7102 = phi float [ %7057, %7055 ], [ %7099, %7095 ], [ %7082, %7090 ]
  %7103 = phi float [ %7077, %7055 ], [ %7083, %7095 ], [ %7083, %7090 ]
  %7104 = phi float [ %7076, %7055 ], [ %7100, %7095 ], [ %7084, %7090 ]
  %7105 = phi float [ %7076, %7055 ], [ %5352, %7095 ], [ %5352, %7090 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7106 = call float @dx.op.binary.f32(i32 36, float %7102, float 3.225500e+04)  ; FMin(a,b)
  %7107 = call float @dx.op.binary.f32(i32 36, float %7103, float 3.225500e+04)  ; FMin(a,b)
  %7108 = call float @dx.op.binary.f32(i32 36, float %7104, float 3.225500e+04)  ; FMin(a,b)
  %7109 = call float @dx.op.binary.f32(i32 36, float %7105, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7106)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7107)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7108)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7109)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!58}
!dx.entryPoints = !{!59}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !47, !50}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
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
!45 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 12, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 55, i32 1, i32 2, i32 0, !7}
!47 = !{!48, !49}
!48 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!49 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!50 = !{!51, !52, !53, !54, !55, !56, !57}
!51 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!52 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!53 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!54 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!55 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!56 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!57 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!58 = !{[31 x i32] [i32 29, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15]}
!59 = !{void ()* @ps_main, !"ps_main", !60, !4, !78}
!60 = !{!61, !76, null}
!61 = !{!62, !65, !67, !69, !70, !71, !72, !73, !75}
!62 = !{i32 0, !"SV_Position", i8 9, i8 3, !63, i8 4, i32 1, i8 4, i32 0, i8 0, !64}
!63 = !{i32 0}
!64 = !{i32 3, i32 15}
!65 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !63, i8 2, i32 1, i8 2, i32 1, i8 0, !66}
!66 = !{i32 3, i32 3}
!67 = !{i32 2, !"NORMAL", i8 9, i8 0, !63, i8 2, i32 1, i8 3, i32 2, i8 0, !68}
!68 = !{i32 3, i32 7}
!69 = !{i32 3, !"TANGENT", i8 9, i8 0, !63, i8 2, i32 1, i8 4, i32 3, i8 0, !64}
!70 = !{i32 4, !"SH_RED", i8 9, i8 0, !63, i8 2, i32 1, i8 4, i32 4, i8 0, !64}
!71 = !{i32 5, !"SH_GREEN", i8 9, i8 0, !63, i8 2, i32 1, i8 4, i32 5, i8 0, !64}
!72 = !{i32 6, !"SH_BLUE", i8 9, i8 0, !63, i8 2, i32 1, i8 4, i32 6, i8 0, !64}
!73 = !{i32 7, !"SV_IsFrontFace", i8 5, i8 13, !63, i8 1, i32 1, i8 1, i32 7, i8 0, !74}
!74 = !{i32 3, i32 1}
!75 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !63, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!76 = !{!77}
!77 = !{i32 0, !"SV_Target", i8 9, i8 16, !63, i8 0, i32 1, i8 4, i32 0, i8 0, !64}
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
!118 = distinct !{!118, !119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!119 = distinct !{!119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!120 = distinct !{!120, !119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!121 = distinct !{!121, !119, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!122 = distinct !{!122, !123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!123 = distinct !{!123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!124 = distinct !{!124, !123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!125 = distinct !{!125, !123, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
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

