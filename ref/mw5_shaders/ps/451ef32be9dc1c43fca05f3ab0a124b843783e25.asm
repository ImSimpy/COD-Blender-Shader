;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xy          1     NONE   float   xy  
; NORMAL                   0   xyz         2     NONE   float   xyz 
; TANGENT                  0   xyzw        3     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         4     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        5     NONE   float   xyzw
; SV_IsFrontFace           0   x           6    FFACE    uint   x   
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
; shader hash: 957589256f5896f521f7de12652d366c
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
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
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
;                                   texture     f32          2d     T36     t12,space2     1
;                                   texture     f32          2d     T37     t55,space2     1
;
;
; ViewId state:
;
; Number of inputs: 25, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 24 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 24 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 24 }
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
  %46 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = icmp ne i32 %46, 0
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = alloca [12 x float], align 4
  %69 = alloca [12 x float], align 4
  %70 = alloca [4 x float], align 4
  %71 = alloca [4 x float], align 4
  %72 = alloca [4 x float], align 4
  %73 = alloca [3 x float], align 4
  %74 = alloca [3 x float], align 4
  %75 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %76 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 0
  %79 = fmul fast float %78, %64
  %80 = fmul fast float %78, %65
  %81 = select i1 %47, float 1.000000e+00, float -1.000000e+00
  %82 = fmul fast float %59, %81
  %83 = fmul fast float %60, %81
  %84 = fmul fast float %61, %81
  %85 = fmul fast float %60, %57
  %86 = fmul fast float %61, %56
  %87 = fsub fast float %85, %86
  %88 = fmul fast float %61, %55
  %89 = fmul fast float %59, %57
  %90 = fsub fast float %88, %89
  %91 = fmul fast float %59, %56
  %92 = fmul fast float %60, %55
  %93 = fsub fast float %91, %92
  %94 = call float @dx.op.dot3.f32(i32 55, float %48, float %49, float %50, float %48, float %49, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %95 = bitcast float %94 to i32
  %96 = ashr i32 %95, 1
  %97 = sub nsw i32 1597250115, %96
  %98 = bitcast i32 %97 to float
  %99 = fmul fast float %98, %48
  %100 = fmul fast float %98, %49
  %101 = fmul fast float %98, %50
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 3
  %105 = fmul fast float %79, 2.000000e+00
  %106 = fmul fast float %105, %103
  %107 = fmul fast float %80, 2.000000e+00
  %108 = fmul fast float %107, %104
  %109 = fsub fast float 1.000000e+00, %106
  %110 = fsub fast float 1.000000e+00, %108
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %114 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %115 = fmul fast float %109, %112
  %116 = fmul fast float %109, %113
  %117 = fmul fast float %109, %114
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = fmul fast float %110, %119
  %123 = fmul fast float %110, %120
  %124 = fmul fast float %110, %121
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %129 = fadd fast float %122, %126
  %130 = fadd fast float %129, %115
  %131 = fadd fast float %123, %127
  %132 = fadd fast float %131, %116
  %133 = fadd fast float %124, %128
  %134 = fadd fast float %133, %117
  %135 = fmul fast float %130, %67
  %136 = fmul fast float %132, %67
  %137 = fmul fast float %134, %67
  %138 = fmul fast float %79, 5.000000e-01
  %139 = fmul fast float %80, 5.000000e-01
  %140 = fptosi float %138 to i32
  %141 = fptosi float %139 to i32
  %142 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %140, i32 %141, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  %144 = lshr i32 %143, 18
  %145 = uitofp i32 %144 to float
  %146 = fmul fast float %145, 0x3F4C00EBA0000000
  %147 = call float @dx.op.unary.f32(i32 21, float %146)  ; Exp(value)
  %148 = fadd fast float %147, -1.000000e+00
  %149 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %150 = extractvalue %dx.types.Dimensions %149, 0
  %151 = sitofp i32 %150 to float
  %152 = extractvalue %dx.types.Dimensions %149, 1
  %153 = sitofp i32 %152 to float
  %154 = fcmp fast oge float %138, %151
  %155 = fcmp fast oge float %139, %153
  %156 = or i1 %154, %155
  %157 = select i1 %156, float 0x4197782600000000, float %148
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 3
  %161 = fmul fast float %159, %79
  %162 = fmul fast float %160, %80
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = and i32 %164, 114688
  %166 = icmp ne i32 %165, 0
  %167 = select i1 %166, float %161, float 0.000000e+00
  %168 = select i1 %166, float %162, float 0.000000e+00
  %169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = fmul fast float %170, 2.550000e+02
  %172 = fptoui float %171 to i32
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.i32 %174, 3
  %176 = and i32 %175, 3
  %177 = icmp ne i32 %176, 0
  %178 = and i32 %175, 4
  %179 = icmp ne i32 %178, 0
  %180 = and i1 %177, %179
  br i1 %180, label %181, label %192

; <label>:181                                     ; preds = %0
  %182 = extractvalue %dx.types.CBufRet.f32 %173, 3
  %183 = fmul fast float %182, %80
  %184 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %185 = fmul fast float %184, %79
  %186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %40, float %185, float %183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = fsub fast float 1.000000e+00, %187
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = fcmp fast olt float %188, %190
  br label %195

; <label>:192                                     ; preds = %0
  %193 = icmp eq i32 %178, 0
  %194 = and i1 %177, %193
  br label %195

; <label>:195                                     ; preds = %192, %181
  %196 = phi i1 [ %191, %181 ], [ %194, %192 ]
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %199 = fmul fast float %198, 0x3FE3C6EF40000000
  %200 = frem fast float %79, 2.560000e+02
  %201 = frem fast float %80, 2.560000e+02
  %202 = fptoui float %200 to i32
  %203 = fptoui float %201 to i32
  %204 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %202, i32 %203, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = fadd fast float %205, %199
  %207 = call float @dx.op.unary.f32(i32 22, float %206)  ; Frc(value)
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = shl i32 %209, 4
  %211 = and i32 %210, 32752
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = lshr i32 %209, 7
  %214 = and i32 %213, 32752
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = lshr i32 %209, 22
  %217 = shl nuw nsw i32 %216, 5
  %218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %217)  ; LegacyF16ToF32(value)
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = and i32 %220, 255
  %222 = uitofp i32 %221 to float
  %223 = fmul fast float %222, 0x3F70101020000000
  %224 = lshr i32 %220, 8
  %225 = and i32 %224, 255
  %226 = uitofp i32 %225 to float
  %227 = fmul fast float %226, 0x3F70101020000000
  %228 = lshr i32 %220, 16
  %229 = and i32 %228, 255
  %230 = uitofp i32 %229 to float
  %231 = fmul fast float %230, 0x3F70101020000000
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = and i32 %233, 65535
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %233, 16
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = and i32 %239, 65535
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = lshr i32 %239, 16
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = fmul fast float %241, 0x3F50624DE0000000
  %245 = fmul fast float %243, 0x3F50624DE0000000
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = and i32 %247, 2
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %257, label %250

; <label>:250                                     ; preds = %195
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = add i32 %252, 0
  %254 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %253, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %255 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %254, %dx.types.Handle %76, float %62, float %63, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 3
  br label %257

; <label>:257                                     ; preds = %250, %195
  %258 = phi float [ 1.000000e+00, %195 ], [ %256, %250 ]
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = or i32 %262, %260
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %852, label %265

; <label>:265                                     ; preds = %257
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = lshr i32 %267, 16
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = fmul fast float %269, 0x3F50624DE0000000
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = lshr i32 %272, 16
  %274 = and i32 %273, 255
  %275 = lshr i32 %272, 24
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 65535
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %277, 16
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = lshr i32 %283, 22
  %285 = shl nuw nsw i32 %284, 5
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = shl i32 %283, 4
  %288 = and i32 %287, 32752
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %283, 7
  %291 = and i32 %290, 32752
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 3
  %295 = fmul fast float %294, 1.000000e+03
  %296 = fmul fast float %244, %295
  %297 = call float @dx.op.unary.f32(i32 22, float %296)  ; Frc(value)
  %298 = fadd fast float %297, %235
  %299 = fmul fast float %245, %295
  %300 = call float @dx.op.unary.f32(i32 22, float %299)  ; Frc(value)
  %301 = fadd fast float %300, %237
  %302 = fmul fast float %270, %295
  %303 = call float @dx.op.unary.f32(i32 22, float %302)  ; Frc(value)
  %304 = fmul fast float %303, 0x401921FB60000000
  %305 = fadd fast float %304, %286
  %306 = call float @dx.op.unary.f32(i32 13, float %305)  ; Sin(value)
  %307 = call float @dx.op.unary.f32(i32 12, float %305)  ; Cos(value)
  %308 = fsub fast float -0.000000e+00, %306
  %309 = fadd fast float %62, -5.000000e-01
  %310 = fadd fast float %63, -5.000000e-01
  %311 = fmul fast float %279, %309
  %312 = fmul fast float %281, %310
  %313 = fadd fast float %311, 5.000000e-01
  %314 = fadd fast float %312, 5.000000e-01
  %315 = fmul fast float %289, %313
  %316 = fmul fast float %292, %314
  %317 = fmul fast float %307, %315
  %318 = call float @dx.op.tertiary.f32(i32 46, float %308, float %316, float %317)  ; FMad(a,b,c)
  %319 = fmul fast float %306, %315
  %320 = call float @dx.op.tertiary.f32(i32 46, float %307, float %316, float %319)  ; FMad(a,b,c)
  %321 = fadd fast float %298, %318
  %322 = fadd fast float %301, %320
  %323 = icmp ugt i32 %274, 1
  %324 = icmp ugt i32 %272, 33554431
  %325 = or i1 %324, %323
  br i1 %325, label %326, label %350

; <label>:326                                     ; preds = %265
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = lshr i32 %328, 16
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = fmul fast float %294, %330
  %332 = call float @dx.op.unary.f32(i32 22, float %331)  ; Frc(value)
  %333 = mul nuw nsw i32 %274, %275
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %332, %334
  %336 = call float @dx.op.unary.f32(i32 27, float %335)  ; Round_ni(value)
  %337 = fptoui float %336 to i32
  %338 = urem i32 %337, %274
  %339 = udiv i32 %337, %275
  %340 = call float @dx.op.unary.f32(i32 22, float %321)  ; Frc(value)
  %341 = call float @dx.op.unary.f32(i32 22, float %322)  ; Frc(value)
  %342 = uitofp i32 %338 to float
  %343 = uitofp i32 %339 to float
  %344 = fadd fast float %340, %342
  %345 = fadd fast float %341, %343
  %346 = uitofp i32 %274 to float
  %347 = uitofp i32 %275 to float
  %348 = fdiv fast float %344, %346
  %349 = fdiv fast float %345, %347
  br label %350

; <label>:350                                     ; preds = %326, %265
  %351 = phi float [ %348, %326 ], [ %321, %265 ]
  %352 = phi float [ %349, %326 ], [ %322, %265 ]
  %353 = and i32 %260, 256
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %399, label %355

; <label>:355                                     ; preds = %350
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = add i32 %357, 0
  %359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %358, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %360 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %359, %dx.types.Handle %76, float %351, float %352, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = shl i32 %363, 4
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %363, 7
  %368 = and i32 %367, 32752
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = fsub fast float 1.000000e+00, %258
  %371 = call float @dx.op.binary.f32(i32 35, float %370, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %372 = bitcast float %258 to i32
  %373 = sitofp i32 %372 to float
  %374 = fadd fast float %373, 0xC1CFBF8940000000
  %375 = fmul fast float %369, %374
  %376 = fadd fast float %375, 0x41CFBF8940000000
  %377 = fptosi float %376 to i32
  %378 = bitcast i32 %377 to float
  %379 = bitcast float %371 to i32
  %380 = sitofp i32 %379 to float
  %381 = fadd fast float %380, 0xC1CFBF8940000000
  %382 = fmul fast float %381, %369
  %383 = fadd fast float %382, 0x41CFBF8940000000
  %384 = fptosi float %383 to i32
  %385 = bitcast i32 %384 to float
  %386 = fmul fast float %378, %366
  %387 = fmul fast float %385, %366
  %388 = fsub fast float %371, %386
  %389 = fadd fast float %387, %371
  %390 = call float @dx.op.unary.f32(i32 7, float %388)  ; Saturate(value)
  %391 = call float @dx.op.unary.f32(i32 7, float %389)  ; Saturate(value)
  %392 = fsub fast float %361, %390
  %393 = fsub fast float %391, %390
  %394 = bitcast float %393 to i32
  %395 = sub nsw i32 2129859010, %394
  %396 = bitcast i32 %395 to float
  %397 = fmul fast float %396, %392
  %398 = call float @dx.op.unary.f32(i32 7, float %397)  ; Saturate(value)
  br label %399

; <label>:399                                     ; preds = %355, %350
  %400 = phi float [ %398, %355 ], [ %258, %350 ]
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 128
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %420, label %405

; <label>:405                                     ; preds = %399
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = add i32 %407, 0
  %409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %408, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %410 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %409, %dx.types.Handle %76, float %351, float %352, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %411 = extractvalue %dx.types.ResRet.f32 %410, 0
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 524288
  %415 = icmp ne i32 %414, 0
  %416 = fcmp fast ogt float %411, 0x3FE0101020000000
  %417 = select i1 %416, float 1.000000e+00, float 0.000000e+00
  %418 = select i1 %415, float %417, float %411
  %419 = fmul fast float %418, %400
  br label %420

; <label>:420                                     ; preds = %405, %399
  %421 = phi float [ %419, %405 ], [ %400, %399 ]
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 16
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %619, label %426

; <label>:426                                     ; preds = %420
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = add i32 %430, 0
  %432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %431, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %433 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %432, %dx.types.Handle %75, float %351, float %352, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %434 = extractvalue %dx.types.ResRet.f32 %433, 0
  %435 = extractvalue %dx.types.ResRet.f32 %433, 1
  %436 = extractvalue %dx.types.ResRet.f32 %433, 2
  %437 = extractvalue %dx.types.ResRet.f32 %433, 3
  %438 = and i32 %428, 255
  %439 = uitofp i32 %438 to float
  %440 = lshr i32 %428, 8
  %441 = and i32 %440, 255
  %442 = uitofp i32 %441 to float
  %443 = fmul fast float %437, %439
  %444 = fadd fast float %443, %442
  %445 = fmul fast float %444, 0x3F70101000000000
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = and i32 %447, 512
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %457, label %450

; <label>:450                                     ; preds = %426
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = add i32 %452, 0
  %454 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %453, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %455 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %454, %dx.types.Handle %76, float %351, float %352, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %456 = extractvalue %dx.types.ResRet.f32 %455, 0
  br label %457

; <label>:457                                     ; preds = %450, %426
  %458 = phi float [ %456, %450 ], [ 1.000000e+00, %426 ]
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = and i32 %460, 33554432
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %566, label %463

; <label>:463                                     ; preds = %457
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = and i32 %465, 65535
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = lshr i32 %465, 16
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = and i32 %471, 65535
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = lshr i32 %475, 24
  %477 = uitofp i32 %476 to float
  %478 = fmul fast float %477, 0x3F70101020000000
  %479 = and i32 %475, 255
  %480 = uitofp i32 %479 to float
  %481 = fmul fast float %480, 0x3F70101020000000
  %482 = lshr i32 %475, 8
  %483 = and i32 %482, 255
  %484 = uitofp i32 %483 to float
  %485 = fmul fast float %484, 0x3F70101020000000
  %486 = lshr i32 %475, 16
  %487 = and i32 %486, 255
  %488 = uitofp i32 %487 to float
  %489 = fmul fast float %488, 0x3F70101020000000
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = lshr i32 %491, 24
  %493 = uitofp i32 %492 to float
  %494 = fmul fast float %493, 0x3F70101020000000
  %495 = and i32 %491, 255
  %496 = uitofp i32 %495 to float
  %497 = fmul fast float %496, 0x3F70101020000000
  %498 = lshr i32 %491, 8
  %499 = and i32 %498, 255
  %500 = uitofp i32 %499 to float
  %501 = fmul fast float %500, 0x3F70101020000000
  %502 = lshr i32 %491, 16
  %503 = and i32 %502, 255
  %504 = uitofp i32 %503 to float
  %505 = fmul fast float %504, 0x3F70101020000000
  %506 = bitcast float %434 to i32
  %507 = ashr i32 %506, 1
  %508 = sub nsw i32 1597463174, %507
  %509 = bitcast i32 %508 to float
  %510 = fmul fast float %434, 5.000000e-01
  %511 = fmul fast float %509, %509
  %512 = fmul fast float %511, %510
  %513 = fsub fast float 1.500000e+00, %512
  %514 = fmul fast float %509, %434
  %515 = fmul fast float %514, %513
  %516 = bitcast float %435 to i32
  %517 = ashr i32 %516, 1
  %518 = sub nsw i32 1597463174, %517
  %519 = bitcast i32 %518 to float
  %520 = fmul fast float %435, 5.000000e-01
  %521 = fmul fast float %519, %519
  %522 = fmul fast float %521, %520
  %523 = fsub fast float 1.500000e+00, %522
  %524 = fmul fast float %519, %435
  %525 = fmul fast float %524, %523
  %526 = bitcast float %436 to i32
  %527 = ashr i32 %526, 1
  %528 = sub nsw i32 1597463174, %527
  %529 = bitcast i32 %528 to float
  %530 = fmul fast float %436, 5.000000e-01
  %531 = fmul fast float %529, %529
  %532 = fmul fast float %531, %530
  %533 = fsub fast float 1.500000e+00, %532
  %534 = fmul fast float %529, %436
  %535 = fmul fast float %534, %533
  %536 = fsub fast float %515, %497
  %537 = fsub fast float %525, %501
  %538 = fsub fast float %535, %505
  %539 = fmul fast float %536, %467
  %540 = fmul fast float %537, %469
  %541 = fmul fast float %538, %473
  %542 = fadd fast float %539, %481
  %543 = fadd fast float %540, %485
  %544 = fadd fast float %541, %489
  %545 = call float @dx.op.unary.f32(i32 7, float %542)  ; Saturate(value)
  %546 = call float @dx.op.unary.f32(i32 7, float %543)  ; Saturate(value)
  %547 = call float @dx.op.unary.f32(i32 7, float %544)  ; Saturate(value)
  %548 = fmul fast float %545, %545
  %549 = fmul fast float %546, %546
  %550 = fmul fast float %547, %547
  %551 = fsub fast float %548, %434
  %552 = fsub fast float %549, %435
  %553 = fsub fast float %550, %436
  %554 = fmul fast float %551, %458
  %555 = fmul fast float %552, %458
  %556 = fmul fast float %553, %458
  %557 = fadd fast float %554, %434
  %558 = fadd fast float %555, %435
  %559 = fadd fast float %556, %436
  %560 = fadd fast float %478, %445
  %561 = fsub fast float %560, %494
  %562 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  %563 = fsub fast float %562, %445
  %564 = fmul fast float %563, %458
  %565 = fadd fast float %564, %445
  br label %619

; <label>:566                                     ; preds = %457
  %567 = and i32 %460, 134217728
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %603, label %569

; <label>:569                                     ; preds = %566
  %570 = call float @dx.op.unary.f32(i32 24, float %223)  ; Sqrt(value)
  %571 = call float @dx.op.unary.f32(i32 24, float %227)  ; Sqrt(value)
  %572 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %573 = fadd fast float %570, -5.000000e-01
  %574 = fadd fast float %571, -5.000000e-01
  %575 = fadd fast float %572, -5.000000e-01
  %576 = fmul fast float %573, %458
  %577 = fmul fast float %574, %458
  %578 = fmul fast float %575, %458
  %579 = fadd fast float %576, 5.000000e-01
  %580 = fadd fast float %577, 5.000000e-01
  %581 = fadd fast float %578, 5.000000e-01
  %582 = call float @dx.op.unary.f32(i32 24, float %434)  ; Sqrt(value)
  %583 = call float @dx.op.unary.f32(i32 24, float %435)  ; Sqrt(value)
  %584 = call float @dx.op.unary.f32(i32 24, float %436)  ; Sqrt(value)
  %585 = fmul fast float %579, 2.000000e+00
  %586 = fsub fast float 1.000000e+00, %585
  %587 = fmul fast float %586, %582
  %588 = fadd fast float %587, %585
  %589 = fmul fast float %588, %582
  %590 = fmul fast float %580, 2.000000e+00
  %591 = fsub fast float 1.000000e+00, %590
  %592 = fmul fast float %591, %583
  %593 = fadd fast float %592, %590
  %594 = fmul fast float %593, %583
  %595 = fmul fast float %581, 2.000000e+00
  %596 = fsub fast float 1.000000e+00, %595
  %597 = fmul fast float %596, %584
  %598 = fadd fast float %597, %595
  %599 = fmul fast float %598, %584
  %600 = fmul fast float %589, %589
  %601 = fmul fast float %594, %594
  %602 = fmul fast float %599, %599
  br label %619

; <label>:603                                     ; preds = %566
  %604 = fmul fast float %223, %223
  %605 = fmul fast float %227, %227
  %606 = fmul fast float %231, %231
  %607 = fadd fast float %604, -1.000000e+00
  %608 = fadd fast float %605, -1.000000e+00
  %609 = fadd fast float %606, -1.000000e+00
  %610 = fmul fast float %458, %607
  %611 = fmul fast float %458, %608
  %612 = fmul fast float %458, %609
  %613 = fadd fast float %610, 1.000000e+00
  %614 = fadd fast float %611, 1.000000e+00
  %615 = fadd fast float %612, 1.000000e+00
  %616 = fmul fast float %613, %434
  %617 = fmul fast float %614, %435
  %618 = fmul fast float %615, %436
  br label %619

; <label>:619                                     ; preds = %603, %569, %463, %420
  %620 = phi float [ %565, %463 ], [ %445, %569 ], [ %445, %603 ], [ 0x3FA23C0BE0000000, %420 ]
  %621 = phi float [ %557, %463 ], [ %600, %569 ], [ %616, %603 ], [ 1.000000e+00, %420 ]
  %622 = phi float [ %558, %463 ], [ %601, %569 ], [ %617, %603 ], [ 1.000000e+00, %420 ]
  %623 = phi float [ %559, %463 ], [ %602, %569 ], [ %618, %603 ], [ 1.000000e+00, %420 ]
  %624 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.i32 %624, 1
  %626 = and i32 %625, 1
  %627 = icmp ne i32 %626, 0
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = and i32 %629, 32
  %631 = icmp ne i32 %630, 0
  %632 = and i1 %627, %631
  %633 = select i1 %632, float 1.000000e+00, float %621
  %634 = select i1 %632, float 0x3FD3333340000000, float %622
  %635 = select i1 %632, float 0x3FD3333340000000, float %623
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = and i32 %637, 32
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %709, label %640

; <label>:640                                     ; preds = %619
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = add i32 %644, 0
  %646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %646, %dx.types.Handle %75, float %351, float %352, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = extractvalue %dx.types.ResRet.f32 %647, 1
  %650 = extractvalue %dx.types.ResRet.f32 %647, 2
  %651 = extractvalue %dx.types.ResRet.f32 %647, 3
  %652 = and i32 %642, 255
  %653 = uitofp i32 %652 to float
  %654 = lshr i32 %642, 8
  %655 = and i32 %654, 255
  %656 = uitofp i32 %655 to float
  %657 = lshr i32 %642, 16
  %658 = and i32 %657, 255
  %659 = uitofp i32 %658 to float
  %660 = fmul fast float %659, 0x3F70101000000000
  %661 = fmul fast float %648, %653
  %662 = fadd fast float %661, %656
  %663 = fmul fast float %662, 0x3F70101000000000
  %664 = fadd fast float %649, -5.000000e-01
  %665 = fadd fast float %651, -5.000000e-01
  %666 = fmul fast float %664, %660
  %667 = fmul fast float %665, %660
  %668 = fadd fast float %666, 5.000000e-01
  %669 = fadd fast float %667, 5.000000e-01
  %670 = fmul fast float %668, 2.000000e+00
  %671 = fadd fast float %670, -1.000000e+00
  %672 = fmul fast float %669, 2.000000e+00
  %673 = fadd fast float %672, -1.000000e+00
  %674 = fadd fast float %671, %673
  %675 = fmul fast float %674, 5.000000e-01
  %676 = fsub fast float %671, %673
  %677 = fmul fast float %676, 5.000000e-01
  %678 = call float @dx.op.unary.f32(i32 6, float %675)  ; FAbs(value)
  %679 = fsub fast float 1.000000e+00, %678
  %680 = call float @dx.op.unary.f32(i32 6, float %677)  ; FAbs(value)
  %681 = fsub fast float %679, %680
  %682 = call float @dx.op.dot3.f32(i32 55, float %675, float %677, float %681, float %675, float %677, float %681)  ; Dot3(ax,ay,az,bx,by,bz)
  %683 = call float @dx.op.unary.f32(i32 25, float %682)  ; Rsqrt(value)
  %684 = fmul fast float %675, %683
  %685 = fmul fast float %677, %683
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = and i32 %687, 67108864
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %705, label %690

; <label>:690                                     ; preds = %640
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = and i32 %692, 65535
  %694 = call float @dx.op.legacyF16ToF32(i32 131, i32 %693)  ; LegacyF16ToF32(value)
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = and i32 %696, 65535
  %698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %697)  ; LegacyF16ToF32(value)
  %699 = lshr i32 %692, 16
  %700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %699)  ; LegacyF16ToF32(value)
  %701 = fsub fast float %663, %700
  %702 = fmul fast float %701, %694
  %703 = fadd fast float %702, %698
  %704 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  br label %705

; <label>:705                                     ; preds = %690, %640
  %706 = phi float [ %704, %690 ], [ %663, %640 ]
  %707 = call float @dx.op.dot2.f32(i32 54, float %684, float %685, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %708 = call float @dx.op.dot2.f32(i32 54, float %684, float %685, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %709

; <label>:709                                     ; preds = %705, %619
  %710 = phi float [ %706, %705 ], [ 0x3FD6666660000000, %619 ]
  %711 = phi float [ %707, %705 ], [ 0.000000e+00, %619 ]
  %712 = phi float [ %708, %705 ], [ 0.000000e+00, %619 ]
  %713 = phi float [ %650, %705 ], [ 1.000000e+00, %619 ]
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = lshr i32 %715, 22
  %717 = shl nuw nsw i32 %716, 5
  %718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %717)  ; LegacyF16ToF32(value)
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = and i32 %720, 64
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %755, label %723

; <label>:723                                     ; preds = %709
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = add i32 %725, 0
  %727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %726, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 131072
  %731 = icmp eq i32 %730, 0
  %732 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %727, %dx.types.Handle %75, float %351, float %352, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %733 = extractvalue %dx.types.ResRet.f32 %732, 0
  %734 = extractvalue %dx.types.ResRet.f32 %732, 1
  %735 = extractvalue %dx.types.ResRet.f32 %732, 2
  %736 = fmul fast float %733, %212
  %737 = fmul fast float %734, %215
  %738 = fmul fast float %735, %218
  br i1 %731, label %745, label %739

; <label>:739                                     ; preds = %723
  %740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.f32 %740, 0
  %742 = fmul fast float %741, %736
  %743 = fmul fast float %741, %737
  %744 = fmul fast float %741, %738
  br label %745

; <label>:745                                     ; preds = %739, %723
  %746 = phi float [ %742, %739 ], [ %736, %723 ]
  %747 = phi float [ %743, %739 ], [ %737, %723 ]
  %748 = phi float [ %744, %739 ], [ %738, %723 ]
  %749 = fmul fast float %746, %718
  %750 = select i1 %196, float %749, float %746
  %751 = call float @dx.op.dot3.f32(i32 55, float %750, float %747, float %748, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %752 = select i1 %196, float 0.000000e+00, float %746
  %753 = select i1 %196, float %751, float %747
  %754 = select i1 %196, float 0.000000e+00, float %748
  br label %755

; <label>:755                                     ; preds = %745, %709
  %756 = phi float [ %752, %745 ], [ 0.000000e+00, %709 ]
  %757 = phi float [ %753, %745 ], [ 0.000000e+00, %709 ]
  %758 = phi float [ %754, %745 ], [ 0.000000e+00, %709 ]
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = and i32 %760, 1024
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %791, label %763

; <label>:763                                     ; preds = %755
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = and i32 %765, 255
  %767 = uitofp i32 %766 to float
  %768 = fmul fast float %767, 0x3F70101020000000
  %769 = lshr i32 %765, 8
  %770 = and i32 %769, 255
  %771 = uitofp i32 %770 to float
  %772 = fmul fast float %771, 0x3F70101020000000
  %773 = lshr i32 %765, 16
  %774 = and i32 %773, 255
  %775 = uitofp i32 %774 to float
  %776 = fmul fast float %775, 0x3F70101020000000
  %777 = fmul fast float %768, %768
  %778 = fmul fast float %772, %772
  %779 = fmul fast float %776, %776
  %780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.i32 %780, 0
  %782 = add i32 %781, 0
  %783 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %782, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %784 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %783, %dx.types.Handle %76, float %351, float %352, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %785 = extractvalue %dx.types.ResRet.f32 %784, 0
  %786 = extractvalue %dx.types.ResRet.f32 %784, 1
  %787 = extractvalue %dx.types.ResRet.f32 %784, 2
  %788 = fmul fast float %777, %785
  %789 = fmul fast float %778, %786
  %790 = fmul fast float %779, %787
  br label %791

; <label>:791                                     ; preds = %763, %755
  %792 = phi float [ %788, %763 ], [ 0.000000e+00, %755 ]
  %793 = phi float [ %789, %763 ], [ 0.000000e+00, %755 ]
  %794 = phi float [ %790, %763 ], [ 0.000000e+00, %755 ]
  %795 = fcmp fast ogt float %792, 0.000000e+00
  %796 = fcmp fast ogt float %793, 0.000000e+00
  %797 = fcmp fast ogt float %794, 0.000000e+00
  %798 = call float @dx.op.unary.f32(i32 23, float %792)  ; Log(value)
  %799 = call float @dx.op.unary.f32(i32 23, float %793)  ; Log(value)
  %800 = call float @dx.op.unary.f32(i32 23, float %794)  ; Log(value)
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = lshr i32 %802, 7
  %804 = and i32 %803, 32752
  %805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %804)  ; LegacyF16ToF32(value)
  %806 = fmul fast float %798, 0xBFE62E4300000000
  %807 = fmul fast float %806, %805
  %808 = fmul fast float %799, 0xBFE62E4300000000
  %809 = fmul fast float %808, %805
  %810 = fmul fast float %800, 0xBFE62E4300000000
  %811 = fmul fast float %810, %805
  %812 = select i1 %795, float %807, float 1.270000e+02
  %813 = select i1 %796, float %809, float 1.270000e+02
  %814 = select i1 %797, float %811, float 1.270000e+02
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, 10240
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %838, label %819

; <label>:819                                     ; preds = %791
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = and i32 %821, 2048
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %838, label %824

; <label>:824                                     ; preds = %819
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = add i32 %826, 0
  %828 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %827, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %829 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %828, %dx.types.Handle %76, float %351, float %352, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 3
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = shl i32 %832, 4
  %834 = and i32 %833, 32752
  %835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %834)  ; LegacyF16ToF32(value)
  %836 = fmul fast float %835, %830
  %837 = call float @dx.op.binary.f32(i32 35, float %836, float 0x3F70101020000000)  ; FMax(a,b)
  br label %838

; <label>:838                                     ; preds = %824, %819, %791
  %839 = phi float [ %837, %824 ], [ 0x3F70101020000000, %819 ], [ 0x3F70101020000000, %791 ]
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = and i32 %841, 255
  %843 = uitofp i32 %842 to float
  %844 = lshr i32 %841, 8
  %845 = and i32 %844, 255
  %846 = uitofp i32 %845 to float
  %847 = call float @dx.op.dot3.f32(i32 55, float %633, float %634, float %635, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %848 = fmul fast float %846, %847
  %849 = fadd fast float %848, %843
  %850 = fmul fast float %849, 0x3F70101020000000
  %851 = call float @dx.op.unary.f32(i32 7, float %850)  ; Saturate(value)
  br label %852

; <label>:852                                     ; preds = %838, %257
  %853 = phi float [ 0.000000e+00, %257 ], [ %711, %838 ]
  %854 = phi float [ 0.000000e+00, %257 ], [ %712, %838 ]
  %855 = phi float [ 0.000000e+00, %257 ], [ %633, %838 ]
  %856 = phi float [ 0.000000e+00, %257 ], [ %634, %838 ]
  %857 = phi float [ 0.000000e+00, %257 ], [ %635, %838 ]
  %858 = phi float [ 0.000000e+00, %257 ], [ %756, %838 ]
  %859 = phi float [ 0.000000e+00, %257 ], [ %757, %838 ]
  %860 = phi float [ 0.000000e+00, %257 ], [ %758, %838 ]
  %861 = phi float [ 0.000000e+00, %257 ], [ %812, %838 ]
  %862 = phi float [ 0.000000e+00, %257 ], [ %813, %838 ]
  %863 = phi float [ 0.000000e+00, %257 ], [ %814, %838 ]
  %864 = phi float [ 0.000000e+00, %257 ], [ %620, %838 ]
  %865 = phi float [ 0.000000e+00, %257 ], [ %421, %838 ]
  %866 = phi float [ 0.000000e+00, %257 ], [ %710, %838 ]
  %867 = phi float [ 0.000000e+00, %257 ], [ %713, %838 ]
  %868 = phi float [ 0.000000e+00, %257 ], [ %839, %838 ]
  %869 = phi float [ 0.000000e+00, %257 ], [ %851, %838 ]
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 0
  %872 = call float @dx.op.dot2.f32(i32 54, float %853, float %854, float %853, float %854)  ; Dot2(ax,ay,bx,by)
  %873 = fmul fast float %872, 0x3FE3333340000000
  %874 = fsub fast float 1.000000e+00, %873
  %875 = call float @dx.op.dot3.f32(i32 55, float %853, float %854, float %874, float %853, float %854, float %874)  ; Dot3(ax,ay,az,bx,by,bz)
  %876 = call float @dx.op.unary.f32(i32 25, float %875)  ; Rsqrt(value)
  %877 = fmul fast float %876, %853
  %878 = fmul fast float %876, %854
  %879 = fmul fast float %874, %876
  %880 = fmul fast float %879, %82
  %881 = fmul fast float %879, %83
  %882 = fmul fast float %879, %84
  %883 = fmul fast float %877, %55
  %884 = fmul fast float %877, %56
  %885 = fmul fast float %877, %57
  %886 = fmul fast float %87, %58
  %887 = fmul fast float %886, %878
  %888 = fmul fast float %90, %58
  %889 = fmul fast float %888, %878
  %890 = fmul fast float %93, %58
  %891 = fmul fast float %890, %878
  %892 = fadd fast float %887, %883
  %893 = fmul fast float %892, %81
  %894 = fadd fast float %893, %880
  %895 = fadd fast float %889, %884
  %896 = fmul fast float %895, %81
  %897 = fadd fast float %896, %881
  %898 = fadd fast float %891, %885
  %899 = fmul fast float %898, %81
  %900 = fadd fast float %899, %882
  %901 = call float @dx.op.dot3.f32(i32 55, float %894, float %897, float %900, float %894, float %897, float %900)  ; Dot3(ax,ay,az,bx,by,bz)
  %902 = call float @dx.op.unary.f32(i32 25, float %901)  ; Rsqrt(value)
  %903 = fmul fast float %894, %902
  %904 = fmul fast float %897, %902
  %905 = fmul fast float %900, %902
  %906 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %907 = call float @dx.op.unary.f32(i32 83, float %136)  ; DerivCoarseX(value)
  %908 = call float @dx.op.unary.f32(i32 83, float %137)  ; DerivCoarseX(value)
  %909 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %910 = call float @dx.op.unary.f32(i32 84, float %136)  ; DerivCoarseY(value)
  %911 = call float @dx.op.unary.f32(i32 84, float %137)  ; DerivCoarseY(value)
  %912 = fadd fast float %906, %135
  %913 = fadd fast float %907, %136
  %914 = fadd fast float %908, %137
  %915 = fadd fast float %909, %135
  %916 = fadd fast float %910, %136
  %917 = fadd fast float %911, %137
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 0
  %920 = extractvalue %dx.types.CBufRet.f32 %918, 1
  %921 = extractvalue %dx.types.CBufRet.f32 %918, 2
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 2
  %924 = extractvalue %dx.types.CBufRet.f32 %922, 3
  %925 = fmul fast float %919, %79
  %926 = fmul fast float %925, %923
  %927 = fmul fast float %920, %80
  %928 = fmul fast float %927, %924
  %929 = fptoui float %926 to i32
  %930 = fptoui float %928 to i32
  %931 = fadd fast float %919, -1.000000e+00
  %932 = fadd fast float %920, -1.000000e+00
  %933 = fptoui float %931 to i32
  %934 = fptoui float %932 to i32
  %935 = call i32 @dx.op.binary.i32(i32 40, i32 %929, i32 %933)  ; UMin(a,b)
  %936 = call i32 @dx.op.binary.i32(i32 40, i32 %930, i32 %934)  ; UMin(a,b)
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 2
  %939 = extractvalue %dx.types.CBufRet.f32 %937, 3
  %940 = fmul fast float %938, %67
  %941 = fsub fast float %940, %939
  %942 = fadd fast float %921, -1.000000e+00
  %943 = call float @dx.op.binary.f32(i32 36, float %941, float %942)  ; FMin(a,b)
  %944 = fptoui float %943 to i32
  %945 = fptoui float %919 to i32
  %946 = fptoui float %920 to i32
  %947 = mul i32 %944, %946
  %948 = add i32 %947, %936
  %949 = mul i32 %948, %945
  %950 = add i32 %949, %935
  %951 = shl i32 %950, 2
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = and i32 %953, 1023
  %955 = lshr i32 %953, 10
  %956 = icmp eq i32 %954, 0
  br i1 %956, label %1410, label %957

; <label>:957                                     ; preds = %852
  %958 = and i32 %953, 1023
  br label %959

; <label>:959                                     ; preds = %1088, %957
  %960 = phi float [ %1089, %1088 ], [ 0.000000e+00, %957 ]
  %961 = phi float [ %1090, %1088 ], [ %871, %957 ]
  %962 = phi float [ %1091, %1088 ], [ %869, %957 ]
  %963 = phi float [ %1092, %1088 ], [ %861, %957 ]
  %964 = phi float [ %1093, %1088 ], [ %862, %957 ]
  %965 = phi float [ %1094, %1088 ], [ %863, %957 ]
  %966 = phi float [ %1095, %1088 ], [ 0.000000e+00, %957 ]
  %967 = phi float [ %1096, %1088 ], [ 0.000000e+00, %957 ]
  %968 = phi float [ %1097, %1088 ], [ %858, %957 ]
  %969 = phi float [ %1098, %1088 ], [ %859, %957 ]
  %970 = phi float [ %1099, %1088 ], [ %860, %957 ]
  %971 = phi float [ %1100, %1088 ], [ %903, %957 ]
  %972 = phi float [ %1101, %1088 ], [ %904, %957 ]
  %973 = phi float [ %1102, %1088 ], [ %905, %957 ]
  %974 = phi float [ %1103, %1088 ], [ %867, %957 ]
  %975 = phi float [ %1104, %1088 ], [ %866, %957 ]
  %976 = phi float [ %1105, %1088 ], [ 0.000000e+00, %957 ]
  %977 = phi float [ %1106, %1088 ], [ %864, %957 ]
  %978 = phi float [ %1107, %1088 ], [ %855, %957 ]
  %979 = phi float [ %1108, %1088 ], [ %856, %957 ]
  %980 = phi float [ %1109, %1088 ], [ %857, %957 ]
  %981 = phi i32 [ %1038, %1088 ], [ 0, %957 ]
  %982 = add nuw nsw i32 %981, %955
  %983 = shl i32 %982, 2
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = shl i32 %985, 8
  %987 = or i32 %986, 48
  %988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.f32 %988, 0
  %990 = extractvalue %dx.types.ResRet.f32 %988, 1
  %991 = extractvalue %dx.types.ResRet.f32 %988, 2
  %992 = extractvalue %dx.types.ResRet.f32 %988, 3
  %993 = or i32 %986, 64
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = extractvalue %dx.types.ResRet.i32 %994, 1
  %997 = or i32 %986, 80
  %998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %997, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.f32 %998, 2
  %1000 = extractvalue %dx.types.ResRet.f32 %998, 3
  %1001 = or i32 %986, 96
  %1002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1001, i32 undef)  ; BufferLoad(srv,index,wot)
  %1003 = extractvalue %dx.types.ResRet.f32 %1002, 0
  %1004 = extractvalue %dx.types.ResRet.f32 %1002, 1
  %1005 = extractvalue %dx.types.ResRet.f32 %1002, 2
  %1006 = extractvalue %dx.types.ResRet.f32 %1002, 3
  %1007 = or i32 %986, 112
  %1008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.f32 %1008, 2
  %1010 = or i32 %986, 128
  %1011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.ResRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.ResRet.f32 %1011, 2
  %1015 = extractvalue %dx.types.ResRet.f32 %1011, 3
  %1016 = or i32 %986, 144
  %1017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.f32 %1017, 0
  %1019 = extractvalue %dx.types.ResRet.f32 %1017, 1
  %1020 = extractvalue %dx.types.ResRet.f32 %1017, 2
  %1021 = extractvalue %dx.types.ResRet.f32 %1017, 3
  %1022 = or i32 %986, 160
  %1023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.f32 %1023, 0
  %1025 = extractvalue %dx.types.ResRet.f32 %1023, 1
  %1026 = extractvalue %dx.types.ResRet.f32 %1023, 2
  %1027 = extractvalue %dx.types.ResRet.f32 %1023, 3
  %1028 = or i32 %986, 192
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = or i32 %986, 208
  %1032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 0
  %1034 = or i32 %986, 248
  %1035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = extractvalue %dx.types.ResRet.f32 %1035, 1
  %1038 = add nuw nsw i32 %981, 1
  %1039 = bitcast float %992 to i32
  %1040 = and i32 %1039, 512
  %1041 = icmp eq i32 %1040, 0
  %1042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.ResRet.f32 %1042, 1
  %1045 = extractvalue %dx.types.ResRet.f32 %1042, 2
  %1046 = extractvalue %dx.types.ResRet.f32 %1042, 3
  %1047 = call float @dx.op.dot4.f32(i32 56, float %1043, float %1044, float %1045, float %1046, float %135, float %136, float %137, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1048 = or i32 %986, 16
  %1049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1048, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1053 = extractvalue %dx.types.ResRet.f32 %1049, 3
  %1054 = call float @dx.op.dot4.f32(i32 56, float %1050, float %1051, float %1052, float %1053, float %135, float %136, float %137, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1055 = or i32 %986, 32
  %1056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1058 = extractvalue %dx.types.ResRet.f32 %1056, 1
  %1059 = extractvalue %dx.types.ResRet.f32 %1056, 2
  %1060 = extractvalue %dx.types.ResRet.f32 %1056, 3
  %1061 = call float @dx.op.dot4.f32(i32 56, float %1057, float %1058, float %1059, float %1060, float %135, float %136, float %137, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1062 = call float @dx.op.unary.f32(i32 27, float %1047)  ; Round_ni(value)
  %1063 = call float @dx.op.unary.f32(i32 6, float %1062)  ; FAbs(value)
  %1064 = call float @dx.op.unary.f32(i32 27, float %1054)  ; Round_ni(value)
  %1065 = call float @dx.op.unary.f32(i32 6, float %1064)  ; FAbs(value)
  %1066 = call float @dx.op.unary.f32(i32 6, float %1061)  ; FAbs(value)
  %1067 = call float @dx.op.unary.f32(i32 27, float %1066)  ; Round_ni(value)
  %1068 = fadd fast float %1065, %1063
  %1069 = fadd fast float %1068, %1067
  %1070 = fcmp fast oeq float %1069, 0.000000e+00
  %1071 = call float @dx.op.dot4.f32(i32 56, float %1043, float %1044, float %1045, float %1046, float %912, float %913, float %914, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1072 = call float @dx.op.dot4.f32(i32 56, float %1050, float %1051, float %1052, float %1053, float %912, float %913, float %914, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1073 = call float @dx.op.dot4.f32(i32 56, float %1043, float %1044, float %1045, float %1046, float %915, float %916, float %917, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1074 = call float @dx.op.dot4.f32(i32 56, float %1050, float %1051, float %1052, float %1053, float %915, float %916, float %917, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1075 = fsub fast float %1071, %1047
  %1076 = fsub fast float %1073, %1047
  %1077 = fsub fast float %1072, %1054
  %1078 = fsub fast float %1074, %1054
  %1079 = call float @dx.op.dot3.f32(i32 55, float %989, float %990, float %991, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %1080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1081 = extractvalue %dx.types.CBufRet.f32 %1080, 2
  %1082 = fadd fast float %1081, %1079
  %1083 = call float @dx.op.unary.f32(i32 7, float %1082)  ; Saturate(value)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1080, 0
  %1085 = fcmp fast ogt float %1083, %1084
  %1086 = and i1 %1070, %1085
  %1087 = and i1 %1041, %1086
  br i1 %1087, label %1111, label %1088

; <label>:1088                                    ; preds = %1396, %1192, %1111, %959
  %1089 = phi float [ %960, %1111 ], [ %1195, %1192 ], [ %1195, %1396 ], [ %960, %959 ]
  %1090 = phi float [ %961, %1111 ], [ %961, %1192 ], [ %1372, %1396 ], [ %961, %959 ]
  %1091 = phi float [ %962, %1111 ], [ %962, %1192 ], [ %1370, %1396 ], [ %962, %959 ]
  %1092 = phi float [ %963, %1111 ], [ %963, %1192 ], [ %1348, %1396 ], [ %963, %959 ]
  %1093 = phi float [ %964, %1111 ], [ %964, %1192 ], [ %1349, %1396 ], [ %964, %959 ]
  %1094 = phi float [ %965, %1111 ], [ %965, %1192 ], [ %1350, %1396 ], [ %965, %959 ]
  %1095 = phi float [ %966, %1111 ], [ %966, %1192 ], [ %1319, %1396 ], [ %966, %959 ]
  %1096 = phi float [ %967, %1111 ], [ %967, %1192 ], [ %1317, %1396 ], [ %967, %959 ]
  %1097 = phi float [ %968, %1111 ], [ %968, %1192 ], [ %1406, %1396 ], [ %968, %959 ]
  %1098 = phi float [ %969, %1111 ], [ %969, %1192 ], [ %1407, %1396 ], [ %969, %959 ]
  %1099 = phi float [ %970, %1111 ], [ %970, %1192 ], [ %1408, %1396 ], [ %970, %959 ]
  %1100 = phi float [ %971, %1111 ], [ %971, %1192 ], [ %1298, %1396 ], [ %971, %959 ]
  %1101 = phi float [ %972, %1111 ], [ %972, %1192 ], [ %1299, %1396 ], [ %972, %959 ]
  %1102 = phi float [ %973, %1111 ], [ %973, %1192 ], [ %1300, %1396 ], [ %973, %959 ]
  %1103 = phi float [ %974, %1111 ], [ %974, %1192 ], [ %1328, %1396 ], [ %974, %959 ]
  %1104 = phi float [ %975, %1111 ], [ %975, %1192 ], [ %1325, %1396 ], [ %975, %959 ]
  %1105 = phi float [ %976, %1111 ], [ %976, %1192 ], [ %1322, %1396 ], [ %976, %959 ]
  %1106 = phi float [ %977, %1111 ], [ %977, %1192 ], [ %1315, %1396 ], [ %977, %959 ]
  %1107 = phi float [ %978, %1111 ], [ %978, %1192 ], [ %1310, %1396 ], [ %978, %959 ]
  %1108 = phi float [ %979, %1111 ], [ %979, %1192 ], [ %1311, %1396 ], [ %979, %959 ]
  %1109 = phi float [ %980, %1111 ], [ %980, %1192 ], [ %1312, %1396 ], [ %980, %959 ]
  %1110 = icmp eq i32 %1038, %958
  br i1 %1110, label %1409, label %959

; <label>:1111                                    ; preds = %959
  %1112 = extractvalue %dx.types.ResRet.f32 %1008, 3
  %1113 = extractvalue %dx.types.ResRet.f32 %1008, 1
  %1114 = extractvalue %dx.types.ResRet.f32 %1008, 0
  %1115 = extractvalue %dx.types.ResRet.f32 %998, 1
  %1116 = extractvalue %dx.types.ResRet.f32 %998, 0
  %1117 = extractvalue %dx.types.ResRet.i32 %994, 3
  %1118 = extractvalue %dx.types.ResRet.i32 %994, 2
  %1119 = add i32 %1117, 0
  %1120 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1119, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1122 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1120, %dx.types.Handle %1121, float %1047, float %1054, float undef, float undef, i32 0, i32 0, i32 undef, float %1075, float %1077, float undef, float %1076, float %1078, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1123 = extractvalue %dx.types.ResRet.f32 %1122, 0
  %1124 = fmul fast float %1123, %1116
  %1125 = fadd fast float %1124, %1115
  %1126 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  %1127 = fmul fast float %1047, %1003
  %1128 = call float @dx.op.tertiary.f32(i32 46, float %1004, float %1054, float %1127)  ; FMad(a,b,c)
  %1129 = fadd fast float %1128, %1114
  %1130 = fmul fast float %1047, %1005
  %1131 = call float @dx.op.tertiary.f32(i32 46, float %1006, float %1054, float %1130)  ; FMad(a,b,c)
  %1132 = fadd fast float %1131, %1113
  %1133 = fmul fast float %1075, %1003
  %1134 = call float @dx.op.tertiary.f32(i32 46, float %1004, float %1077, float %1133)  ; FMad(a,b,c)
  %1135 = fmul fast float %1075, %1005
  %1136 = call float @dx.op.tertiary.f32(i32 46, float %1006, float %1077, float %1135)  ; FMad(a,b,c)
  %1137 = fmul fast float %1076, %1003
  %1138 = call float @dx.op.tertiary.f32(i32 46, float %1004, float %1078, float %1137)  ; FMad(a,b,c)
  %1139 = fmul fast float %1076, %1005
  %1140 = call float @dx.op.tertiary.f32(i32 46, float %1006, float %1078, float %1139)  ; FMad(a,b,c)
  %1141 = add i32 %1118, 0
  %1142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1141, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1143 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1142, %dx.types.Handle %1121, float %1129, float %1132, float undef, float undef, i32 0, i32 0, i32 undef, float %1134, float %1136, float undef, float %1138, float %1140, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  %1145 = and i32 %1039, 1024
  %1146 = icmp ne i32 %1145, 0
  %1147 = fcmp fast ogt float %1144, 0x3FE0101020000000
  %1148 = uitofp i1 %1147 to float
  %1149 = select i1 %1146, float %1148, float %1144
  %1150 = and i32 %1039, 8192
  %1151 = icmp ne i32 %1150, 0
  %1152 = select i1 %1151, float %1112, float 1.000000e+00
  %1153 = fmul fast float %1047, 2.000000e+00
  %1154 = fadd fast float %1153, -1.000000e+00
  %1155 = call float @dx.op.unary.f32(i32 6, float %1154)  ; FAbs(value)
  %1156 = fmul fast float %1155, %1036
  %1157 = fsub fast float %1156, %1036
  %1158 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  %1159 = fmul fast float %1054, 2.000000e+00
  %1160 = fadd fast float %1159, -1.000000e+00
  %1161 = call float @dx.op.unary.f32(i32 6, float %1160)  ; FAbs(value)
  %1162 = fmul fast float %1161, %1037
  %1163 = fsub fast float %1162, %1037
  %1164 = call float @dx.op.unary.f32(i32 7, float %1163)  ; Saturate(value)
  %1165 = fmul fast float %1066, %999
  %1166 = fsub fast float %1165, %999
  %1167 = call float @dx.op.unary.f32(i32 7, float %1166)  ; Saturate(value)
  %1168 = fmul fast float %1126, %1152
  %1169 = fmul fast float %1168, %1123
  %1170 = fmul fast float %1169, %1158
  %1171 = fmul fast float %1170, %1149
  %1172 = fmul fast float %1171, %1164
  %1173 = fmul fast float %1172, %1167
  %1174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1174, 1
  %1176 = extractvalue %dx.types.CBufRet.f32 %1174, 0
  %1177 = fsub fast float %1083, %1176
  %1178 = fmul fast float %1177, %1175
  %1179 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1180 = fmul fast float %1173, %1000
  %1181 = fadd fast float %1173, %1000
  %1182 = fmul fast float %1181, %1009
  %1183 = fsub fast float %1182, %1009
  %1184 = call float @dx.op.unary.f32(i32 7, float %1183)  ; Saturate(value)
  %1185 = and i32 %1039, 128
  %1186 = icmp ne i32 %1185, 0
  %1187 = select i1 %1186, float %1184, float %1180
  %1188 = fmul fast float %1187, %1179
  %1189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1190 = extractvalue %dx.types.CBufRet.f32 %1189, 0
  %1191 = fcmp fast ugt float %1188, %1190
  br i1 %1191, label %1192, label %1088

; <label>:1192                                    ; preds = %1111
  %1193 = select i1 %1151, float %1188, float 0.000000e+00
  %1194 = fadd fast float %1193, %960
  %1195 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  br i1 %1151, label %1088, label %1196

; <label>:1196                                    ; preds = %1192
  %1197 = and i32 %1039, 4
  %1198 = and i32 %1039, 8
  %1199 = add i32 %995, 0
  %1200 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1199, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1202 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1200, %dx.types.Handle %1201, float %1129, float %1132, float undef, float undef, i32 0, i32 0, i32 undef, float %1134, float %1136, float undef, float %1138, float %1140, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.ResRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.ResRet.f32 %1202, 2
  %1206 = extractvalue %dx.types.ResRet.f32 %1202, 3
  %1207 = bitcast float %1021 to i32
  %1208 = and i32 %1207, 255
  %1209 = uitofp i32 %1208 to float
  %1210 = lshr i32 %1207, 8
  %1211 = and i32 %1210, 255
  %1212 = uitofp i32 %1211 to float
  %1213 = fmul fast float %1206, %1209
  %1214 = fadd fast float %1213, %1212
  %1215 = fmul fast float %1214, 0x3F70101000000000
  %1216 = add i32 %996, 0
  %1217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1216, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1218 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1217, %dx.types.Handle %1201, float %1129, float %1132, float undef, float undef, i32 0, i32 0, i32 undef, float %1134, float %1136, float undef, float %1138, float %1140, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1222 = extractvalue %dx.types.ResRet.f32 %1218, 3
  %1223 = bitcast float %1015 to i32
  %1224 = and i32 %1223, 255
  %1225 = uitofp i32 %1224 to float
  %1226 = lshr i32 %1223, 8
  %1227 = and i32 %1226, 255
  %1228 = uitofp i32 %1227 to float
  %1229 = lshr i32 %1223, 16
  %1230 = and i32 %1229, 255
  %1231 = uitofp i32 %1230 to float
  %1232 = fmul fast float %1231, 0x3F70101000000000
  %1233 = fmul fast float %1219, %1225
  %1234 = fadd fast float %1233, %1228
  %1235 = fmul fast float %1234, 0x3F70101000000000
  %1236 = fadd fast float %1220, -5.000000e-01
  %1237 = fadd fast float %1222, -5.000000e-01
  %1238 = fmul fast float %1236, %1232
  %1239 = fmul fast float %1237, %1232
  %1240 = fadd fast float %1238, 5.000000e-01
  %1241 = fadd fast float %1239, 5.000000e-01
  %1242 = fmul fast float %1203, %1024
  %1243 = fmul fast float %1204, %1025
  %1244 = fmul fast float %1205, %1026
  %1245 = fmul fast float %1240, 2.000000e+00
  %1246 = fadd fast float %1245, -1.000000e+00
  %1247 = fmul fast float %1241, 2.000000e+00
  %1248 = fadd fast float %1247, -1.000000e+00
  %1249 = fadd fast float %1246, %1248
  %1250 = fmul fast float %1249, 5.000000e-01
  %1251 = fsub fast float %1246, %1248
  %1252 = fmul fast float %1251, 5.000000e-01
  %1253 = call float @dx.op.unary.f32(i32 6, float %1250)  ; FAbs(value)
  %1254 = fsub fast float 1.000000e+00, %1253
  %1255 = call float @dx.op.unary.f32(i32 6, float %1252)  ; FAbs(value)
  %1256 = fsub fast float %1254, %1255
  %1257 = call float @dx.op.dot3.f32(i32 55, float %1250, float %1252, float %1256, float %1250, float %1252, float %1256)  ; Dot3(ax,ay,az,bx,by,bz)
  %1258 = call float @dx.op.unary.f32(i32 25, float %1257)  ; Rsqrt(value)
  %1259 = fmul fast float %1250, %1258
  %1260 = fmul fast float %1252, %1258
  %1261 = fmul fast float %1258, %1256
  %1262 = fmul fast float %1261, %989
  %1263 = fmul fast float %1261, %990
  %1264 = fmul fast float %1261, %991
  %1265 = fmul fast float %1259, %1012
  %1266 = fmul fast float %1259, %1013
  %1267 = fmul fast float %1259, %1014
  %1268 = fadd fast float %1265, %1262
  %1269 = fadd fast float %1266, %1263
  %1270 = fadd fast float %1267, %1264
  %1271 = fmul fast float %1260, %1018
  %1272 = fmul fast float %1260, %1019
  %1273 = fmul fast float %1260, %1020
  %1274 = fadd fast float %1268, %1271
  %1275 = fadd fast float %1269, %1272
  %1276 = fadd fast float %1270, %1273
  %1277 = call float @dx.op.dot3.f32(i32 55, float %1274, float %1275, float %1276, float %1274, float %1275, float %1276)  ; Dot3(ax,ay,az,bx,by,bz)
  %1278 = call float @dx.op.unary.f32(i32 25, float %1277)  ; Rsqrt(value)
  %1279 = fmul fast float %1274, %1278
  %1280 = fmul fast float %1275, %1278
  %1281 = fmul fast float %1276, %1278
  %1282 = icmp ne i32 %1198, 0
  %1283 = select i1 %1282, float 1.000000e+00, float 0.000000e+00
  %1284 = fmul fast float %1188, %1283
  %1285 = and i32 %1039, 1
  %1286 = icmp eq i32 %1285, 0
  br i1 %1286, label %1287, label %1291

; <label>:1287                                    ; preds = %1196
  %1288 = fsub fast float %1279, %971
  %1289 = fsub fast float %1280, %972
  %1290 = fsub fast float %1281, %973
  br label %1291

; <label>:1291                                    ; preds = %1287, %1196
  %1292 = phi float [ %1288, %1287 ], [ %1279, %1196 ]
  %1293 = phi float [ %1289, %1287 ], [ %1280, %1196 ]
  %1294 = phi float [ %1290, %1287 ], [ %1281, %1196 ]
  %1295 = fmul float %1294, %1284
  %1296 = fmul float %1293, %1284
  %1297 = fmul float %1292, %1284
  %1298 = fadd fast float %1297, %971
  %1299 = fadd fast float %1296, %972
  %1300 = fadd fast float %1295, %973
  %1301 = icmp ne i32 %1197, 0
  %1302 = select i1 %1301, float 1.000000e+00, float 0.000000e+00
  %1303 = fmul fast float %1188, %1302
  %1304 = fsub fast float %1242, %978
  %1305 = fsub fast float %1243, %979
  %1306 = fsub fast float %1244, %980
  %1307 = fmul fast float %1304, %1303
  %1308 = fmul fast float %1305, %1303
  %1309 = fmul fast float %1306, %1303
  %1310 = fadd fast float %1307, %978
  %1311 = fadd fast float %1308, %979
  %1312 = fadd fast float %1309, %980
  %1313 = fsub fast float %1215, %977
  %1314 = fmul fast float %1313, %1303
  %1315 = fadd fast float %1314, %977
  %1316 = fmul fast float %1303, %967
  %1317 = fsub fast float %967, %1316
  %1318 = fmul fast float %1303, %966
  %1319 = fsub fast float %966, %1318
  %1320 = bitcast float %1033 to i32
  %1321 = fadd fast float %1188, %976
  %1322 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1323 = fsub fast float %1235, %975
  %1324 = fmul fast float %1323, %1284
  %1325 = fadd fast float %1324, %975
  %1326 = fsub fast float %1221, %974
  %1327 = fmul fast float %1326, %1284
  %1328 = fadd fast float %1327, %974
  br i1 %1286, label %1337, label %1329

; <label>:1329                                    ; preds = %1291
  %1330 = and i32 %1039, 32768
  %1331 = icmp eq i32 %1330, 0
  br i1 %1331, label %1347, label %1332

; <label>:1332                                    ; preds = %1329
  %1333 = fmul fast float %1284, 1.270000e+02
  %1334 = fadd fast float %1333, %963
  %1335 = fadd fast float %1333, %964
  %1336 = fadd fast float %1333, %965
  br label %1347

; <label>:1337                                    ; preds = %1291
  %1338 = fsub fast float 1.270000e+02, %963
  %1339 = fsub fast float 1.270000e+02, %964
  %1340 = fsub fast float 1.270000e+02, %965
  %1341 = fmul fast float %1284, %1338
  %1342 = fmul fast float %1284, %1339
  %1343 = fmul fast float %1284, %1340
  %1344 = fadd fast float %1341, %963
  %1345 = fadd fast float %1342, %964
  %1346 = fadd fast float %1343, %965
  br label %1347

; <label>:1347                                    ; preds = %1337, %1332, %1329
  %1348 = phi float [ %1334, %1332 ], [ %963, %1329 ], [ %1344, %1337 ]
  %1349 = phi float [ %1335, %1332 ], [ %964, %1329 ], [ %1345, %1337 ]
  %1350 = phi float [ %1336, %1332 ], [ %965, %1329 ], [ %1346, %1337 ]
  %1351 = call float @dx.op.dot3.f32(i32 55, float %1242, float %1243, float %1244, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1353 = extractvalue %dx.types.CBufRet.f32 %1352, 0
  %1354 = extractvalue %dx.types.CBufRet.f32 %1352, 1
  %1355 = fmul fast float %1354, %1351
  %1356 = fadd fast float %1355, %1353
  %1357 = call float @dx.op.unary.f32(i32 7, float %1356)  ; Saturate(value)
  %1358 = bitcast float %1027 to i32
  %1359 = and i32 %1358, 65535
  %1360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1359)  ; LegacyF16ToF32(value)
  %1361 = lshr i32 %1358, 16
  %1362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1361)  ; LegacyF16ToF32(value)
  %1363 = fcmp fast oge float %1360, 0.000000e+00
  %1364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.f32 %1364, 0
  %1366 = select i1 %1363, float %1360, float %1365
  %1367 = fadd fast float %1366, %1362
  %1368 = fsub fast float %1357, %962
  %1369 = fmul fast float %1368, %1188
  %1370 = fadd fast float %1369, %962
  %1371 = fmul fast float %1367, %1188
  %1372 = call float @dx.op.binary.f32(i32 35, float %961, float %1371)  ; FMax(a,b)
  %1373 = and i32 %1039, 16
  %1374 = icmp eq i32 %1373, 0
  br i1 %1374, label %1396, label %1375

; <label>:1375                                    ; preds = %1347
  %1376 = add i32 %1030, 0
  %1377 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1376, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1378 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1377, %dx.types.Handle %1201, float %1129, float %1132, float undef, float undef, i32 0, i32 0, i32 undef, float %1134, float %1136, float undef, float %1138, float %1140, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1379 = extractvalue %dx.types.ResRet.f32 %1378, 0
  %1380 = extractvalue %dx.types.ResRet.f32 %1378, 1
  %1381 = extractvalue %dx.types.ResRet.f32 %1378, 2
  %1382 = and i32 %1320, 65535
  %1383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1382)  ; LegacyF16ToF32(value)
  %1384 = fmul fast float %1379, %1024
  %1385 = fmul fast float %1380, %1025
  %1386 = fmul fast float %1381, %1026
  %1387 = and i32 %1039, 16384
  %1388 = icmp ne i32 %1387, 0
  %1389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1390 = extractvalue %dx.types.CBufRet.f32 %1389, 0
  %1391 = select i1 %1388, float %1390, float 1.000000e+00
  %1392 = fmul fast float %1391, %1383
  %1393 = fmul fast float %1384, %1392
  %1394 = fmul fast float %1385, %1392
  %1395 = fmul fast float %1386, %1392
  br label %1396

; <label>:1396                                    ; preds = %1375, %1347
  %1397 = phi float [ %1393, %1375 ], [ 0.000000e+00, %1347 ]
  %1398 = phi float [ %1394, %1375 ], [ 0.000000e+00, %1347 ]
  %1399 = phi float [ %1395, %1375 ], [ 0.000000e+00, %1347 ]
  %1400 = fsub fast float %1397, %968
  %1401 = fsub fast float %1398, %969
  %1402 = fsub fast float %1399, %970
  %1403 = fmul fast float %1400, %1188
  %1404 = fmul fast float %1401, %1188
  %1405 = fmul fast float %1402, %1188
  %1406 = fadd fast float %1403, %968
  %1407 = fadd fast float %1404, %969
  %1408 = fadd fast float %1405, %970
  br label %1088

; <label>:1409                                    ; preds = %1088
  br label %1410

; <label>:1410                                    ; preds = %1409, %852
  %1411 = phi float [ 0.000000e+00, %852 ], [ %1089, %1409 ]
  %1412 = phi float [ %871, %852 ], [ %1090, %1409 ]
  %1413 = phi float [ %869, %852 ], [ %1091, %1409 ]
  %1414 = phi float [ %861, %852 ], [ %1092, %1409 ]
  %1415 = phi float [ %862, %852 ], [ %1093, %1409 ]
  %1416 = phi float [ %863, %852 ], [ %1094, %1409 ]
  %1417 = phi float [ 0.000000e+00, %852 ], [ %1095, %1409 ]
  %1418 = phi float [ 0.000000e+00, %852 ], [ %1096, %1409 ]
  %1419 = phi float [ %858, %852 ], [ %1097, %1409 ]
  %1420 = phi float [ %859, %852 ], [ %1098, %1409 ]
  %1421 = phi float [ %860, %852 ], [ %1099, %1409 ]
  %1422 = phi float [ %903, %852 ], [ %1100, %1409 ]
  %1423 = phi float [ %904, %852 ], [ %1101, %1409 ]
  %1424 = phi float [ %905, %852 ], [ %1102, %1409 ]
  %1425 = phi float [ %867, %852 ], [ %1103, %1409 ]
  %1426 = phi float [ %866, %852 ], [ %1104, %1409 ]
  %1427 = phi float [ 0.000000e+00, %852 ], [ %1105, %1409 ]
  %1428 = phi float [ %864, %852 ], [ %1106, %1409 ]
  %1429 = phi float [ %855, %852 ], [ %1107, %1409 ]
  %1430 = phi float [ %856, %852 ], [ %1108, %1409 ]
  %1431 = phi float [ %857, %852 ], [ %1109, %1409 ]
  %1432 = call float @dx.op.dot3.f32(i32 55, float %1422, float %1423, float %1424, float %1422, float %1423, float %1424)  ; Dot3(ax,ay,az,bx,by,bz)
  %1433 = call float @dx.op.unary.f32(i32 25, float %1432)  ; Rsqrt(value)
  %1434 = fmul fast float %1433, %1422
  %1435 = fmul fast float %1433, %1423
  %1436 = fmul fast float %1433, %1424
  %1437 = fadd fast float %1427, %865
  %1438 = call float @dx.op.unary.f32(i32 7, float %1437)  ; Saturate(value)
  %1439 = call float @dx.op.dot3.f32(i32 55, float %1434, float %1435, float %1436, float %1434, float %1435, float %1436)  ; Dot3(ax,ay,az,bx,by,bz)
  %1440 = call float @dx.op.unary.f32(i32 25, float %1439)  ; Rsqrt(value)
  %1441 = fmul fast float %1440, %1434
  %1442 = fmul fast float %1440, %1435
  %1443 = fmul fast float %1440, %1436
  %1444 = fadd fast float %1428, 0xBFB99999A0000000
  %1445 = call float @dx.op.unary.f32(i32 7, float %1444)  ; Saturate(value)
  %1446 = fmul fast float %1445, 0x3FF1C71C80000000
  %1447 = call float @dx.op.binary.f32(i32 36, float %1428, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1448 = fsub fast float 1.000000e+00, %1446
  %1449 = call float @dx.op.unary.f32(i32 7, float %1448)  ; Saturate(value)
  %1450 = fmul fast float %1449, %1429
  %1451 = fmul fast float %1449, %1430
  %1452 = fmul fast float %1449, %1431
  %1453 = call float @dx.op.unary.f32(i32 7, float %1450)  ; Saturate(value)
  %1454 = call float @dx.op.unary.f32(i32 7, float %1451)  ; Saturate(value)
  %1455 = call float @dx.op.unary.f32(i32 7, float %1452)  ; Saturate(value)
  %1456 = fmul fast float %1446, %1429
  %1457 = fmul fast float %1446, %1430
  %1458 = fmul fast float %1446, %1431
  %1459 = fadd fast float %1456, %1447
  %1460 = fadd fast float %1457, %1447
  %1461 = fadd fast float %1458, %1447
  %1462 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  %1463 = call float @dx.op.unary.f32(i32 7, float %1460)  ; Saturate(value)
  %1464 = call float @dx.op.unary.f32(i32 7, float %1461)  ; Saturate(value)
  %1465 = call float @dx.op.unary.f32(i32 7, float %1426)  ; Saturate(value)
  %1466 = call float @dx.op.binary.f32(i32 36, float %1414, float 1.270000e+02)  ; FMin(a,b)
  %1467 = call float @dx.op.binary.f32(i32 36, float %1415, float 1.270000e+02)  ; FMin(a,b)
  %1468 = call float @dx.op.binary.f32(i32 36, float %1416, float 1.270000e+02)  ; FMin(a,b)
  %1469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.i32 %1469, 3
  %1471 = and i32 %1470, 8
  %1472 = icmp ne i32 %1471, 0
  %1473 = call float @dx.op.binary.f32(i32 35, float %1453, float %1429)  ; FMax(a,b)
  %1474 = call float @dx.op.binary.f32(i32 35, float %1454, float %1429)  ; FMax(a,b)
  %1475 = call float @dx.op.binary.f32(i32 35, float %1455, float %1429)  ; FMax(a,b)
  %1476 = call float @dx.op.dot3.f32(i32 55, float %1453, float %1454, float %1455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1477 = select i1 %196, float %1429, float %1453
  %1478 = select i1 %196, float %1476, float %1454
  %1479 = select i1 %196, float 1.000000e+00, float %1455
  %1480 = select i1 %1472, float %1473, float %1477
  %1481 = select i1 %1472, float %1474, float %1478
  %1482 = select i1 %1472, float %1475, float %1479
  %1483 = and i32 %172, 3
  %1484 = select i1 %166, i32 %1483, i32 0
  %1485 = icmp eq i32 %1484, 1
  br i1 %1485, label %1486, label %1562

; <label>:1486                                    ; preds = %1410
  %1487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1488 = extractvalue %dx.types.CBufRet.f32 %1487, 0
  %1489 = extractvalue %dx.types.CBufRet.f32 %1487, 1
  %1490 = fadd fast float %1488, %135
  %1491 = fadd fast float %1489, %136
  %1492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.f32 %1492, 0
  %1494 = extractvalue %dx.types.CBufRet.f32 %1492, 1
  %1495 = fsub fast float %1490, %1493
  %1496 = fsub fast float %1491, %1494
  %1497 = fmul fast float %1495, %1495
  %1498 = fmul fast float %1496, %1496
  %1499 = fadd fast float %1497, %1498
  %1500 = call float @dx.op.unary.f32(i32 24, float %1499)  ; Sqrt(value)
  %1501 = extractvalue %dx.types.CBufRet.f32 %1492, 2
  %1502 = fcmp fast olt float %1500, %1501
  br i1 %1502, label %1503, label %1556

; <label>:1503                                    ; preds = %1486
  %1504 = extractvalue %dx.types.CBufRet.f32 %1487, 2
  %1505 = fadd fast float %1504, %137
  %1506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1507 = extractvalue %dx.types.CBufRet.f32 %1506, 0
  %1508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1509 = extractvalue %dx.types.CBufRet.f32 %1508, 0
  %1510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.f32 %1510, 0
  %1512 = extractvalue %dx.types.CBufRet.f32 %1506, 1
  %1513 = extractvalue %dx.types.CBufRet.f32 %1508, 1
  %1514 = extractvalue %dx.types.CBufRet.f32 %1510, 1
  %1515 = extractvalue %dx.types.CBufRet.f32 %1506, 3
  %1516 = extractvalue %dx.types.CBufRet.f32 %1508, 3
  %1517 = extractvalue %dx.types.CBufRet.f32 %1510, 3
  %1518 = fadd fast float %1515, %1490
  %1519 = fadd fast float %1516, %1491
  %1520 = fadd fast float %1505, %1517
  %1521 = fmul fast float %1518, %1507
  %1522 = call float @dx.op.tertiary.f32(i32 46, float %1519, float %1509, float %1521)  ; FMad(a,b,c)
  %1523 = call float @dx.op.tertiary.f32(i32 46, float %1520, float %1511, float %1522)  ; FMad(a,b,c)
  %1524 = fmul fast float %1518, %1512
  %1525 = call float @dx.op.tertiary.f32(i32 46, float %1519, float %1513, float %1524)  ; FMad(a,b,c)
  %1526 = call float @dx.op.tertiary.f32(i32 46, float %1520, float %1514, float %1525)  ; FMad(a,b,c)
  %1527 = fsub fast float %1523, %1515
  %1528 = fsub fast float %1526, %1516
  %1529 = fsub fast float %1527, %1493
  %1530 = fadd fast float %1529, %1501
  %1531 = fsub fast float %1528, %1494
  %1532 = fadd fast float %1531, %1501
  %1533 = extractvalue %dx.types.CBufRet.f32 %1492, 3
  %1534 = fmul fast float %1530, %1533
  %1535 = fmul fast float %1532, %1533
  %1536 = call float @dx.op.unary.f32(i32 7, float %1534)  ; Saturate(value)
  %1537 = call float @dx.op.unary.f32(i32 7, float %1535)  ; Saturate(value)
  %1538 = fsub fast float 1.000000e+00, %1536
  %1539 = fsub fast float 1.000000e+00, %1537
  %1540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %40, float %1538, float %1539, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1541 = extractvalue %dx.types.ResRet.f32 %1540, 0
  %1542 = fcmp fast ugt float %1541, 0.000000e+00
  br i1 %1542, label %1543, label %1556

; <label>:1543                                    ; preds = %1503
  %1544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1545 = extractvalue %dx.types.CBufRet.f32 %1544, 2
  %1546 = fmul fast float %1545, %1541
  %1547 = extractvalue %dx.types.CBufRet.f32 %1544, 3
  %1548 = fadd fast float %1547, %1546
  %1549 = extractvalue %dx.types.CBufRet.f32 %1510, 2
  %1550 = fadd fast float %1548, %1517
  %1551 = fmul fast float %1523, %1511
  %1552 = call float @dx.op.tertiary.f32(i32 46, float %1526, float %1514, float %1551)  ; FMad(a,b,c)
  %1553 = call float @dx.op.tertiary.f32(i32 46, float %1550, float %1549, float %1552)  ; FMad(a,b,c)
  %1554 = fsub fast float %1553, %1517
  %1555 = fsub fast float %1554, %1504
  br label %1556

; <label>:1556                                    ; preds = %1543, %1503, %1486
  %1557 = phi i1 [ true, %1543 ], [ false, %1503 ], [ false, %1486 ]
  %1558 = phi float [ %1555, %1543 ], [ -1.310720e+05, %1503 ], [ -1.310720e+05, %1486 ]
  %1559 = fsub fast float %1558, %137
  %1560 = call float @dx.op.unary.f32(i32 7, float %1559)  ; Saturate(value)
  %1561 = select i1 %1557, float %1560, float 1.000000e+00
  br label %1562

; <label>:1562                                    ; preds = %1556, %1410
  %1563 = phi float [ %1561, %1556 ], [ 0.000000e+00, %1410 ]
  %1564 = icmp eq i32 %1484, 3
  %1565 = select i1 %1564, float 1.000000e+00, float %1563
  %1566 = call float @dx.op.binary.f32(i32 35, float %1411, float %1565)  ; FMax(a,b)
  %1567 = fcmp fast olt float %1565, 1.000000e+00
  br i1 %1567, label %1568, label %1728

; <label>:1568                                    ; preds = %1562
  %1569 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.i32 %1569, 0
  %1571 = and i32 %1570, 7
  %1572 = icmp eq i32 %1571, 0
  br i1 %1572, label %1644, label %1573

; <label>:1573                                    ; preds = %1568
  %1574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1575 = extractvalue %dx.types.CBufRet.f32 %1574, 0
  %1576 = extractvalue %dx.types.CBufRet.f32 %1574, 1
  %1577 = extractvalue %dx.types.CBufRet.f32 %1574, 2
  %1578 = fadd fast float %1575, %135
  %1579 = fadd fast float %1576, %136
  %1580 = fadd fast float %1577, %137
  %1581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %1582 = extractvalue %dx.types.CBufRet.f32 %1581, 0
  %1583 = extractvalue %dx.types.CBufRet.f32 %1581, 1
  %1584 = extractvalue %dx.types.CBufRet.f32 %1581, 2
  %1585 = extractvalue %dx.types.CBufRet.f32 %1581, 3
  %1586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %1587 = extractvalue %dx.types.CBufRet.f32 %1586, 0
  %1588 = extractvalue %dx.types.CBufRet.f32 %1586, 1
  %1589 = extractvalue %dx.types.CBufRet.f32 %1586, 2
  %1590 = extractvalue %dx.types.CBufRet.f32 %1586, 3
  %1591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %1592 = extractvalue %dx.types.CBufRet.f32 %1591, 0
  %1593 = extractvalue %dx.types.CBufRet.f32 %1591, 1
  %1594 = extractvalue %dx.types.CBufRet.f32 %1591, 2
  %1595 = extractvalue %dx.types.CBufRet.f32 %1591, 3
  %1596 = fmul fast float %1578, %1582
  %1597 = call float @dx.op.tertiary.f32(i32 46, float %1579, float %1583, float %1596)  ; FMad(a,b,c)
  %1598 = call float @dx.op.tertiary.f32(i32 46, float %1580, float %1584, float %1597)  ; FMad(a,b,c)
  %1599 = fadd fast float %1598, %1585
  %1600 = fmul fast float %1587, %1578
  %1601 = call float @dx.op.tertiary.f32(i32 46, float %1579, float %1588, float %1600)  ; FMad(a,b,c)
  %1602 = call float @dx.op.tertiary.f32(i32 46, float %1580, float %1589, float %1601)  ; FMad(a,b,c)
  %1603 = fadd fast float %1602, %1590
  %1604 = fmul fast float %1592, %1578
  %1605 = call float @dx.op.tertiary.f32(i32 46, float %1579, float %1593, float %1604)  ; FMad(a,b,c)
  %1606 = call float @dx.op.tertiary.f32(i32 46, float %1580, float %1594, float %1605)  ; FMad(a,b,c)
  %1607 = fadd fast float %1606, %1595
  %1608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %1609 = extractvalue %dx.types.CBufRet.f32 %1608, 1
  %1610 = extractvalue %dx.types.CBufRet.f32 %1608, 0
  %1611 = fmul fast float %1610, %207
  %1612 = fadd fast float %1607, %1611
  %1613 = fmul fast float %207, 0x401921FB60000000
  %1614 = call float @dx.op.unary.f32(i32 13, float %1613)  ; Sin(value)
  %1615 = call float @dx.op.unary.f32(i32 12, float %1613)  ; Cos(value)
  %1616 = fmul fast float %1615, %1609
  %1617 = call float @dx.op.tertiary.f32(i32 46, float %1614, float %1609, float 0.000000e+00)  ; FMad(a,b,c)
  %1618 = fmul fast float %1609, %1614
  %1619 = fsub fast float -0.000000e+00, %1618
  %1620 = call float @dx.op.tertiary.f32(i32 46, float %1615, float %1609, float 0.000000e+00)  ; FMad(a,b,c)
  br label %1621

; <label>:1621                                    ; preds = %1621, %1573
  %1622 = phi float [ 0.000000e+00, %1573 ], [ %1636, %1621 ]
  %1623 = phi i32 [ 0, %1573 ], [ %1637, %1621 ]
  %1624 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %1623
  %1625 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %1623
  %1626 = load float, float* %1624, align 4
  %1627 = load float, float* %1625, align 4
  %1628 = fmul fast float %1616, %1626
  %1629 = call float @dx.op.tertiary.f32(i32 46, float %1627, float %1619, float %1628)  ; FMad(a,b,c)
  %1630 = fmul fast float %1626, %1617
  %1631 = call float @dx.op.tertiary.f32(i32 46, float %1627, float %1620, float %1630)  ; FMad(a,b,c)
  %1632 = fadd fast float %1599, %1629
  %1633 = fadd fast float %1603, %1631
  %1634 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %42, float %1632, float %1633, float undef, float undef, i32 0, i32 0, i32 undef, float %1612)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1635 = extractvalue %dx.types.ResRet.f32 %1634, 0
  %1636 = fadd fast float %1635, %1622
  %1637 = add nuw nsw i32 %1623, 1
  %1638 = icmp eq i32 %1637, 4
  br i1 %1638, label %1639, label %1621

; <label>:1639                                    ; preds = %1621
  %1640 = fmul fast float %1636, 2.500000e-01
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 1
  %1643 = fmul fast float %1642, %1640
  br label %1644

; <label>:1644                                    ; preds = %1639, %1568
  %1645 = phi float [ %1640, %1639 ], [ 0.000000e+00, %1568 ]
  %1646 = phi float [ %1643, %1639 ], [ 0.000000e+00, %1568 ]
  %1647 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %1648 = extractvalue %dx.types.CBufRet.i32 %1647, 0
  %1649 = and i32 %1648, 7
  %1650 = icmp eq i32 %1649, 0
  br i1 %1650, label %1728, label %1651

; <label>:1651                                    ; preds = %1644
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 0
  %1654 = fmul fast float %1653, %1645
  %1655 = fadd fast float %1654, %1566
  %1656 = extractvalue %dx.types.CBufRet.f32 %1652, 2
  %1657 = fmul fast float %1656, %1645
  %1658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %1659 = extractvalue %dx.types.CBufRet.f32 %1658, 0
  %1660 = fmul fast float %1659, %1645
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = and i32 %1648, 8
  %1663 = icmp eq i32 %1662, 0
  br i1 %1663, label %1728, label %1664

; <label>:1664                                    ; preds = %1651
  %1665 = extractvalue %dx.types.CBufRet.f32 %1661, 2
  %1666 = fadd fast float %1665, %137
  %1667 = extractvalue %dx.types.CBufRet.f32 %1661, 1
  %1668 = fadd fast float %1667, %136
  %1669 = extractvalue %dx.types.CBufRet.f32 %1661, 0
  %1670 = fadd fast float %1669, %135
  %1671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %1672 = extractvalue %dx.types.CBufRet.f32 %1671, 0
  %1673 = extractvalue %dx.types.CBufRet.f32 %1671, 1
  %1674 = extractvalue %dx.types.CBufRet.f32 %1671, 2
  %1675 = fsub fast float %1670, %1672
  %1676 = fsub fast float %1668, %1673
  %1677 = fsub fast float %1666, %1674
  %1678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %1679 = extractvalue %dx.types.CBufRet.f32 %1678, 0
  %1680 = extractvalue %dx.types.CBufRet.f32 %1678, 1
  %1681 = extractvalue %dx.types.CBufRet.f32 %1678, 2
  %1682 = fmul fast float %1675, %1679
  %1683 = fmul fast float %1676, %1680
  %1684 = fmul fast float %1677, %1681
  %1685 = fcmp fast oge float %1682, 0.000000e+00
  %1686 = fcmp fast oge float %1683, 0.000000e+00
  %1687 = fcmp fast oge float %1684, 0.000000e+00
  %1688 = and i1 %1685, %1686
  %1689 = and i1 %1687, %1688
  %1690 = fcmp fast ole float %1682, 1.000000e+00
  %1691 = fcmp fast ole float %1683, 1.000000e+00
  %1692 = fcmp fast ole float %1684, 1.000000e+00
  %1693 = and i1 %1690, %1691
  %1694 = and i1 %1692, %1693
  %1695 = and i1 %1689, %1694
  br i1 %1695, label %1696, label %1728

; <label>:1696                                    ; preds = %1664
  %1697 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %1698 = extractvalue %dx.types.CBufRet.i32 %1697, 0
  %1699 = icmp eq i32 %1698, 0
  br i1 %1699, label %1706, label %1700

; <label>:1700                                    ; preds = %1696
  %1701 = add i32 %1698, 0
  %1702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1701, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1703 = fsub fast float -0.000000e+00, %1683
  %1704 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1702, %dx.types.Handle %76, float %1682, float %1703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1705 = extractvalue %dx.types.ResRet.f32 %1704, 0
  br label %1706

; <label>:1706                                    ; preds = %1700, %1696
  %1707 = phi float [ %1705, %1700 ], [ 1.000000e+00, %1696 ]
  %1708 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %1709 = extractvalue %dx.types.CBufRet.i32 %1708, 0
  %1710 = and i32 %1709, 32
  %1711 = icmp ne i32 %1710, 0
  %1712 = fmul fast float %1707, %1645
  %1713 = select i1 %1711, float %1707, float %1712
  %1714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %1715 = extractvalue %dx.types.CBufRet.f32 %1714, 1
  %1716 = fmul fast float %1713, %1715
  %1717 = fadd fast float %1716, %1655
  %1718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %1719 = extractvalue %dx.types.CBufRet.f32 %1718, 0
  %1720 = fmul fast float %1713, %1719
  %1721 = fadd fast float %1720, %1646
  %1722 = extractvalue %dx.types.CBufRet.f32 %1718, 1
  %1723 = fmul fast float %1713, %1722
  %1724 = fadd fast float %1723, %1657
  %1725 = extractvalue %dx.types.CBufRet.f32 %1718, 2
  %1726 = fmul fast float %1725, %1713
  %1727 = fadd fast float %1726, %1660
  br label %1728

; <label>:1728                                    ; preds = %1706, %1664, %1651, %1644, %1562
  %1729 = phi float [ %1566, %1644 ], [ %1566, %1562 ], [ %1717, %1706 ], [ %1655, %1664 ], [ %1655, %1651 ]
  %1730 = phi float [ %1646, %1644 ], [ 0.000000e+00, %1562 ], [ %1721, %1706 ], [ %1646, %1664 ], [ %1646, %1651 ]
  %1731 = phi float [ 0.000000e+00, %1644 ], [ 0.000000e+00, %1562 ], [ %1724, %1706 ], [ %1657, %1664 ], [ %1657, %1651 ]
  %1732 = phi float [ 0.000000e+00, %1644 ], [ 0.000000e+00, %1562 ], [ %1727, %1706 ], [ %1660, %1664 ], [ %1660, %1651 ]
  %1733 = call float @dx.op.unary.f32(i32 7, float %1729)  ; Saturate(value)
  %1734 = call float @dx.op.unary.f32(i32 7, float %1730)  ; Saturate(value)
  %1735 = call float @dx.op.unary.f32(i32 7, float %1731)  ; Saturate(value)
  %1736 = call float @dx.op.unary.f32(i32 7, float %1732)  ; Saturate(value)
  %1737 = fcmp fast une float %1735, 0.000000e+00
  %1738 = fcmp fast une float %1736, 0.000000e+00
  %1739 = or i1 %1737, %1738
  br i1 %1739, label %1740, label %2306

; <label>:1740                                    ; preds = %1728
  %1741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1742 = extractvalue %dx.types.CBufRet.f32 %1741, 0
  %1743 = extractvalue %dx.types.CBufRet.f32 %1741, 1
  %1744 = extractvalue %dx.types.CBufRet.f32 %1741, 2
  %1745 = fadd fast float %1742, %135
  %1746 = fadd fast float %1743, %136
  %1747 = fadd fast float %1744, %137
  br i1 %1737, label %1748, label %2021

; <label>:1748                                    ; preds = %1740
  %1749 = call float @dx.op.unary.f32(i32 23, float %1425)  ; Log(value)
  %1750 = fmul fast float %1749, 4.000000e+00
  %1751 = call float @dx.op.unary.f32(i32 21, float %1750)  ; Exp(value)
  %1752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %1753 = extractvalue %dx.types.CBufRet.f32 %1752, 0
  %1754 = fmul fast float %1753, %1745
  %1755 = fmul fast float %1753, %1746
  %1756 = fmul fast float %1753, %1747
  %1757 = call float @dx.op.unary.f32(i32 6, float %82)  ; FAbs(value)
  %1758 = call float @dx.op.unary.f32(i32 6, float %83)  ; FAbs(value)
  %1759 = call float @dx.op.unary.f32(i32 6, float %84)  ; FAbs(value)
  %1760 = call float @dx.op.unary.f32(i32 23, float %1757)  ; Log(value)
  %1761 = call float @dx.op.unary.f32(i32 23, float %1758)  ; Log(value)
  %1762 = call float @dx.op.unary.f32(i32 23, float %1759)  ; Log(value)
  %1763 = fmul fast float %1760, 4.000000e+00
  %1764 = fmul fast float %1761, 4.000000e+00
  %1765 = fmul fast float %1762, 4.000000e+00
  %1766 = call float @dx.op.unary.f32(i32 21, float %1763)  ; Exp(value)
  %1767 = call float @dx.op.unary.f32(i32 21, float %1764)  ; Exp(value)
  %1768 = call float @dx.op.unary.f32(i32 21, float %1765)  ; Exp(value)
  %1769 = fadd fast float %1767, %1766
  %1770 = fadd fast float %1769, %1768
  %1771 = fdiv fast float 1.000000e+00, %1770
  %1772 = fmul fast float %1771, %1766
  %1773 = fcmp fast ogt float %82, 0.000000e+00
  %1774 = fcmp fast ogt float %83, 0.000000e+00
  %1775 = fcmp fast ogt float %84, 0.000000e+00
  %1776 = fcmp fast olt float %82, 0.000000e+00
  %1777 = fcmp fast olt float %83, 0.000000e+00
  %1778 = fcmp fast olt float %84, 0.000000e+00
  %1779 = zext i1 %1773 to i32
  %1780 = zext i1 %1774 to i32
  %1781 = zext i1 %1775 to i32
  %1782 = zext i1 %1776 to i32
  %1783 = zext i1 %1777 to i32
  %1784 = zext i1 %1778 to i32
  %1785 = sub nsw i32 %1779, %1782
  %1786 = sub nsw i32 %1780, %1783
  %1787 = sub nsw i32 %1781, %1784
  %1788 = call float @dx.op.unary.f32(i32 83, float %1754)  ; DerivCoarseX(value)
  %1789 = call float @dx.op.unary.f32(i32 83, float %1755)  ; DerivCoarseX(value)
  %1790 = call float @dx.op.unary.f32(i32 83, float %1756)  ; DerivCoarseX(value)
  %1791 = call float @dx.op.unary.f32(i32 84, float %1754)  ; DerivCoarseY(value)
  %1792 = call float @dx.op.unary.f32(i32 84, float %1755)  ; DerivCoarseY(value)
  %1793 = call float @dx.op.unary.f32(i32 84, float %1756)  ; DerivCoarseY(value)
  %1794 = fcmp fast ole float %207, %1772
  %1795 = fmul fast float %1771, %1769
  %1796 = fcmp fast ole float %207, %1795
  %1797 = select i1 %1796, float %1756, float %1754
  %1798 = select i1 %1796, float %1754, float %1755
  %1799 = select i1 %1794, float %1755, float %1797
  %1800 = select i1 %1794, float %1756, float %1798
  %1801 = select i1 %1796, float %1790, float %1788
  %1802 = select i1 %1796, float %1788, float %1789
  %1803 = select i1 %1794, float %1789, float %1801
  %1804 = select i1 %1794, float %1790, float %1802
  %1805 = select i1 %1796, float %1793, float %1791
  %1806 = select i1 %1796, float %1791, float %1792
  %1807 = select i1 %1794, float %1792, float %1805
  %1808 = select i1 %1794, float %1793, float %1806
  %1809 = call float @dx.op.unary.f32(i32 27, float %1799)  ; Round_ni(value)
  %1810 = call float @dx.op.unary.f32(i32 27, float %1800)  ; Round_ni(value)
  %1811 = fptosi float %1809 to i32
  %1812 = fptosi float %1810 to i32
  %1813 = xor i32 %1812, %1811
  %1814 = sitofp i32 %1813 to float
  %1815 = fptosi float %1814 to i32
  %1816 = sitofp i32 %1815 to float
  %1817 = fmul fast float %1816, 0x3FE3C6EF40000000
  %1818 = frem fast float %1809, 2.560000e+02
  %1819 = frem fast float %1810, 2.560000e+02
  %1820 = fptoui float %1818 to i32
  %1821 = fptoui float %1819 to i32
  %1822 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %1820, i32 %1821, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1823 = extractvalue %dx.types.ResRet.f32 %1822, 0
  %1824 = extractvalue %dx.types.ResRet.f32 %1822, 1
  %1825 = extractvalue %dx.types.ResRet.f32 %1822, 2
  %1826 = fadd fast float %1823, %1817
  %1827 = fadd fast float %1824, %1817
  %1828 = fadd fast float %1825, %1817
  %1829 = call float @dx.op.unary.f32(i32 22, float %1826)  ; Frc(value)
  %1830 = call float @dx.op.unary.f32(i32 22, float %1827)  ; Frc(value)
  %1831 = call float @dx.op.unary.f32(i32 22, float %1828)  ; Frc(value)
  %1832 = fmul fast float %1831, 0x401921FB60000000
  %1833 = call float @dx.op.unary.f32(i32 13, float %1832)  ; Sin(value)
  %1834 = call float @dx.op.unary.f32(i32 12, float %1832)  ; Cos(value)
  %1835 = fsub fast float -0.000000e+00, %1834
  %1836 = fmul fast float %1834, %1799
  %1837 = call float @dx.op.tertiary.f32(i32 46, float %1833, float %1800, float %1836)  ; FMad(a,b,c)
  %1838 = fmul fast float %1833, %1799
  %1839 = call float @dx.op.tertiary.f32(i32 46, float %1835, float %1800, float %1838)  ; FMad(a,b,c)
  %1840 = fadd fast float %1837, %1829
  %1841 = fadd fast float %1839, %1830
  %1842 = extractvalue %dx.types.CBufRet.f32 %1752, 3
  %1843 = bitcast float %1842 to i32
  %1844 = icmp eq i32 %1843, 0
  br i1 %1844, label %1883, label %1845

; <label>:1845                                    ; preds = %1748
  %1846 = add i32 %1843, 0
  %1847 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1846, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1848 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1847, %dx.types.Handle %76, float %1840, float %1841, float undef, float undef, i32 0, i32 0, i32 undef, float %1803, float %1804, float undef, float %1807, float %1808, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1849 = extractvalue %dx.types.ResRet.f32 %1848, 0
  %1850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %1851 = extractvalue %dx.types.CBufRet.f32 %1850, 1
  %1852 = extractvalue %dx.types.CBufRet.f32 %1850, 2
  %1853 = fsub fast float 1.000000e+00, %1735
  %1854 = call float @dx.op.binary.f32(i32 35, float %1853, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1855 = bitcast float %1735 to i32
  %1856 = sitofp i32 %1855 to float
  %1857 = fadd fast float %1856, 0xC1CFBF8940000000
  %1858 = fmul fast float %1852, %1857
  %1859 = fadd fast float %1858, 0x41CFBF8940000000
  %1860 = fptosi float %1859 to i32
  %1861 = bitcast i32 %1860 to float
  %1862 = bitcast float %1854 to i32
  %1863 = sitofp i32 %1862 to float
  %1864 = fadd fast float %1863, 0xC1CFBF8940000000
  %1865 = fmul fast float %1864, %1852
  %1866 = fadd fast float %1865, 0x41CFBF8940000000
  %1867 = fptosi float %1866 to i32
  %1868 = bitcast i32 %1867 to float
  %1869 = fmul fast float %1861, %1851
  %1870 = fmul fast float %1868, %1851
  %1871 = fsub fast float %1854, %1869
  %1872 = fadd fast float %1870, %1854
  %1873 = call float @dx.op.unary.f32(i32 7, float %1871)  ; Saturate(value)
  %1874 = call float @dx.op.unary.f32(i32 7, float %1872)  ; Saturate(value)
  %1875 = fsub fast float %1849, %1873
  %1876 = fsub fast float %1874, %1873
  %1877 = bitcast float %1876 to i32
  %1878 = sub nsw i32 2129859010, %1877
  %1879 = bitcast i32 %1878 to float
  %1880 = fmul fast float %1879, %1875
  %1881 = call float @dx.op.unary.f32(i32 7, float %1880)  ; Saturate(value)
  %1882 = fcmp fast olt float %1881, 0x3F70101020000000
  br i1 %1882, label %2021, label %1883

; <label>:1883                                    ; preds = %1845, %1748
  %1884 = phi float [ %1881, %1845 ], [ %1735, %1748 ]
  %1885 = fmul fast float %1884, %1751
  %1886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %1887 = extractvalue %dx.types.CBufRet.i32 %1886, 1
  %1888 = extractvalue %dx.types.CBufRet.i32 %1886, 0
  %1889 = add i32 %1888, 0
  %1890 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1889, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1891 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1890, %dx.types.Handle %75, float %1840, float %1841, float undef, float undef, i32 0, i32 0, i32 undef, float %1803, float %1804, float undef, float %1807, float %1808, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1892 = extractvalue %dx.types.ResRet.f32 %1891, 0
  %1893 = extractvalue %dx.types.ResRet.f32 %1891, 1
  %1894 = extractvalue %dx.types.ResRet.f32 %1891, 2
  %1895 = extractvalue %dx.types.ResRet.f32 %1891, 3
  %1896 = and i32 %1887, 255
  %1897 = uitofp i32 %1896 to float
  %1898 = lshr i32 %1887, 8
  %1899 = and i32 %1898, 255
  %1900 = uitofp i32 %1899 to float
  %1901 = fmul fast float %1895, %1897
  %1902 = fadd fast float %1901, %1900
  %1903 = fmul fast float %1902, 0x3F70101000000000
  %1904 = fadd fast float %1903, 0xBFB99999A0000000
  %1905 = call float @dx.op.unary.f32(i32 7, float %1904)  ; Saturate(value)
  %1906 = fmul fast float %1905, 0x3FF1C71C80000000
  %1907 = call float @dx.op.binary.f32(i32 36, float %1903, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1908 = fsub fast float 1.000000e+00, %1906
  %1909 = call float @dx.op.unary.f32(i32 7, float %1908)  ; Saturate(value)
  %1910 = fmul fast float %1909, %1892
  %1911 = fmul fast float %1909, %1893
  %1912 = fmul fast float %1909, %1894
  %1913 = call float @dx.op.unary.f32(i32 7, float %1910)  ; Saturate(value)
  %1914 = call float @dx.op.unary.f32(i32 7, float %1911)  ; Saturate(value)
  %1915 = call float @dx.op.unary.f32(i32 7, float %1912)  ; Saturate(value)
  %1916 = fmul fast float %1906, %1892
  %1917 = fmul fast float %1906, %1893
  %1918 = fmul fast float %1906, %1894
  %1919 = fadd fast float %1916, %1907
  %1920 = fadd fast float %1917, %1907
  %1921 = fadd fast float %1918, %1907
  %1922 = call float @dx.op.unary.f32(i32 7, float %1919)  ; Saturate(value)
  %1923 = call float @dx.op.unary.f32(i32 7, float %1920)  ; Saturate(value)
  %1924 = call float @dx.op.unary.f32(i32 7, float %1921)  ; Saturate(value)
  %1925 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %1926 = extractvalue %dx.types.CBufRet.i32 %1925, 3
  %1927 = extractvalue %dx.types.CBufRet.i32 %1925, 2
  %1928 = add i32 %1927, 0
  %1929 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1928, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1930 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1929, %dx.types.Handle %75, float %1840, float %1841, float undef, float undef, i32 0, i32 0, i32 undef, float %1803, float %1804, float undef, float %1807, float %1808, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1931 = extractvalue %dx.types.ResRet.f32 %1930, 0
  %1932 = extractvalue %dx.types.ResRet.f32 %1930, 1
  %1933 = extractvalue %dx.types.ResRet.f32 %1930, 2
  %1934 = extractvalue %dx.types.ResRet.f32 %1930, 3
  %1935 = and i32 %1926, 255
  %1936 = uitofp i32 %1935 to float
  %1937 = lshr i32 %1926, 8
  %1938 = and i32 %1937, 255
  %1939 = uitofp i32 %1938 to float
  %1940 = lshr i32 %1926, 16
  %1941 = and i32 %1940, 255
  %1942 = uitofp i32 %1941 to float
  %1943 = fmul fast float %1942, 0x3F70101000000000
  %1944 = fmul fast float %1931, %1936
  %1945 = fadd fast float %1944, %1939
  %1946 = fmul fast float %1945, 0x3F70101000000000
  %1947 = fadd fast float %1932, -5.000000e-01
  %1948 = fadd fast float %1934, -5.000000e-01
  %1949 = fmul fast float %1947, %1943
  %1950 = fmul fast float %1948, %1943
  %1951 = fadd fast float %1949, 5.000000e-01
  %1952 = fadd fast float %1950, 5.000000e-01
  %1953 = fmul fast float %1951, 2.000000e+00
  %1954 = fadd fast float %1953, -1.000000e+00
  %1955 = fmul fast float %1952, 2.000000e+00
  %1956 = fadd fast float %1955, -1.000000e+00
  %1957 = fadd fast float %1954, %1956
  %1958 = fmul fast float %1957, 5.000000e-01
  %1959 = fsub fast float %1954, %1956
  %1960 = fmul fast float %1959, 5.000000e-01
  %1961 = call float @dx.op.unary.f32(i32 6, float %1958)  ; FAbs(value)
  %1962 = fsub fast float 1.000000e+00, %1961
  %1963 = call float @dx.op.unary.f32(i32 6, float %1960)  ; FAbs(value)
  %1964 = fsub fast float %1962, %1963
  %1965 = call float @dx.op.dot3.f32(i32 55, float %1958, float %1960, float %1964, float %1958, float %1960, float %1964)  ; Dot3(ax,ay,az,bx,by,bz)
  %1966 = call float @dx.op.unary.f32(i32 25, float %1965)  ; Rsqrt(value)
  %1967 = fmul fast float %1958, %1966
  %1968 = fmul fast float %1960, %1966
  %1969 = select i1 %1796, i32 %1786, i32 %1787
  %1970 = select i1 %1794, i32 %1785, i32 %1969
  %1971 = sitofp i32 %1970 to float
  %1972 = fmul fast float %1964, %1971
  %1973 = fmul fast float %1972, %1966
  %1974 = select i1 %1796, float %1973, float %1968
  %1975 = select i1 %1796, float %1968, float %1973
  %1976 = select i1 %1794, float %1973, float %1967
  %1977 = select i1 %1794, float %1968, float %1974
  %1978 = select i1 %1794, float %1967, float %1975
  %1979 = fsub fast float %1913, %1480
  %1980 = fsub fast float %1914, %1481
  %1981 = fsub fast float %1915, %1482
  %1982 = fmul fast float %1979, %1885
  %1983 = fmul fast float %1980, %1885
  %1984 = fmul fast float %1981, %1885
  %1985 = fadd fast float %1982, %1480
  %1986 = fadd fast float %1983, %1481
  %1987 = fadd fast float %1984, %1482
  %1988 = fsub fast float %1922, %1462
  %1989 = fsub fast float %1923, %1463
  %1990 = fsub fast float %1924, %1464
  %1991 = fmul fast float %1988, %1885
  %1992 = fmul fast float %1989, %1885
  %1993 = fmul fast float %1990, %1885
  %1994 = fadd fast float %1991, %1462
  %1995 = fadd fast float %1992, %1463
  %1996 = fadd fast float %1993, %1464
  %1997 = fadd fast float %1976, %1441
  %1998 = fadd fast float %1977, %1442
  %1999 = fadd fast float %1978, %1443
  %2000 = call float @dx.op.dot3.f32(i32 55, float %1997, float %1998, float %1999, float %1997, float %1998, float %1999)  ; Dot3(ax,ay,az,bx,by,bz)
  %2001 = call float @dx.op.unary.f32(i32 25, float %2000)  ; Rsqrt(value)
  %2002 = fmul fast float %1997, %2001
  %2003 = fmul fast float %1998, %2001
  %2004 = fmul fast float %1999, %2001
  %2005 = fsub fast float %2002, %1441
  %2006 = fsub fast float %2003, %1442
  %2007 = fsub fast float %2004, %1443
  %2008 = fmul fast float %2005, %1885
  %2009 = fmul fast float %2006, %1885
  %2010 = fmul fast float %2007, %1885
  %2011 = fadd fast float %2008, %1441
  %2012 = fadd fast float %2009, %1442
  %2013 = fadd fast float %2010, %1443
  %2014 = call float @dx.op.binary.f32(i32 36, float %1425, float %1933)  ; FMin(a,b)
  %2015 = fsub fast float %2014, %1425
  %2016 = fmul fast float %2015, %1885
  %2017 = fadd fast float %2016, %1425
  %2018 = fsub fast float %1946, %1465
  %2019 = fmul fast float %2018, %1885
  %2020 = fadd fast float %2019, %1465
  br label %2021

; <label>:2021                                    ; preds = %1883, %1845, %1740
  %2022 = phi float [ %1985, %1883 ], [ %1480, %1845 ], [ %1480, %1740 ]
  %2023 = phi float [ %1986, %1883 ], [ %1481, %1845 ], [ %1481, %1740 ]
  %2024 = phi float [ %1987, %1883 ], [ %1482, %1845 ], [ %1482, %1740 ]
  %2025 = phi float [ %1994, %1883 ], [ %1462, %1845 ], [ %1462, %1740 ]
  %2026 = phi float [ %1995, %1883 ], [ %1463, %1845 ], [ %1463, %1740 ]
  %2027 = phi float [ %1996, %1883 ], [ %1464, %1845 ], [ %1464, %1740 ]
  %2028 = phi float [ %2011, %1883 ], [ %1441, %1845 ], [ %1441, %1740 ]
  %2029 = phi float [ %2012, %1883 ], [ %1442, %1845 ], [ %1442, %1740 ]
  %2030 = phi float [ %2013, %1883 ], [ %1443, %1845 ], [ %1443, %1740 ]
  %2031 = phi float [ %2020, %1883 ], [ %1465, %1845 ], [ %1465, %1740 ]
  %2032 = phi float [ %2017, %1883 ], [ %1425, %1845 ], [ %1425, %1740 ]
  br i1 %1738, label %2033, label %2306

; <label>:2033                                    ; preds = %2021
  %2034 = call float @dx.op.unary.f32(i32 23, float %2032)  ; Log(value)
  %2035 = fmul fast float %2034, 4.000000e+00
  %2036 = call float @dx.op.unary.f32(i32 21, float %2035)  ; Exp(value)
  %2037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %2038 = extractvalue %dx.types.CBufRet.f32 %2037, 0
  %2039 = fmul fast float %2038, %1745
  %2040 = fmul fast float %2038, %1746
  %2041 = fmul fast float %2038, %1747
  %2042 = call float @dx.op.unary.f32(i32 6, float %82)  ; FAbs(value)
  %2043 = call float @dx.op.unary.f32(i32 6, float %83)  ; FAbs(value)
  %2044 = call float @dx.op.unary.f32(i32 6, float %84)  ; FAbs(value)
  %2045 = call float @dx.op.unary.f32(i32 23, float %2042)  ; Log(value)
  %2046 = call float @dx.op.unary.f32(i32 23, float %2043)  ; Log(value)
  %2047 = call float @dx.op.unary.f32(i32 23, float %2044)  ; Log(value)
  %2048 = fmul fast float %2045, 4.000000e+00
  %2049 = fmul fast float %2046, 4.000000e+00
  %2050 = fmul fast float %2047, 4.000000e+00
  %2051 = call float @dx.op.unary.f32(i32 21, float %2048)  ; Exp(value)
  %2052 = call float @dx.op.unary.f32(i32 21, float %2049)  ; Exp(value)
  %2053 = call float @dx.op.unary.f32(i32 21, float %2050)  ; Exp(value)
  %2054 = fadd fast float %2052, %2051
  %2055 = fadd fast float %2054, %2053
  %2056 = fdiv fast float 1.000000e+00, %2055
  %2057 = fmul fast float %2056, %2051
  %2058 = fcmp fast ogt float %82, 0.000000e+00
  %2059 = fcmp fast ogt float %83, 0.000000e+00
  %2060 = fcmp fast ogt float %84, 0.000000e+00
  %2061 = fcmp fast olt float %82, 0.000000e+00
  %2062 = fcmp fast olt float %83, 0.000000e+00
  %2063 = fcmp fast olt float %84, 0.000000e+00
  %2064 = zext i1 %2058 to i32
  %2065 = zext i1 %2059 to i32
  %2066 = zext i1 %2060 to i32
  %2067 = zext i1 %2061 to i32
  %2068 = zext i1 %2062 to i32
  %2069 = zext i1 %2063 to i32
  %2070 = sub nsw i32 %2064, %2067
  %2071 = sub nsw i32 %2065, %2068
  %2072 = sub nsw i32 %2066, %2069
  %2073 = call float @dx.op.unary.f32(i32 83, float %2039)  ; DerivCoarseX(value)
  %2074 = call float @dx.op.unary.f32(i32 83, float %2040)  ; DerivCoarseX(value)
  %2075 = call float @dx.op.unary.f32(i32 83, float %2041)  ; DerivCoarseX(value)
  %2076 = call float @dx.op.unary.f32(i32 84, float %2039)  ; DerivCoarseY(value)
  %2077 = call float @dx.op.unary.f32(i32 84, float %2040)  ; DerivCoarseY(value)
  %2078 = call float @dx.op.unary.f32(i32 84, float %2041)  ; DerivCoarseY(value)
  %2079 = fcmp fast ole float %207, %2057
  %2080 = fmul fast float %2056, %2054
  %2081 = fcmp fast ole float %207, %2080
  %2082 = select i1 %2081, float %2041, float %2039
  %2083 = select i1 %2081, float %2039, float %2040
  %2084 = select i1 %2079, float %2040, float %2082
  %2085 = select i1 %2079, float %2041, float %2083
  %2086 = select i1 %2081, float %2075, float %2073
  %2087 = select i1 %2081, float %2073, float %2074
  %2088 = select i1 %2079, float %2074, float %2086
  %2089 = select i1 %2079, float %2075, float %2087
  %2090 = select i1 %2081, float %2078, float %2076
  %2091 = select i1 %2081, float %2076, float %2077
  %2092 = select i1 %2079, float %2077, float %2090
  %2093 = select i1 %2079, float %2078, float %2091
  %2094 = call float @dx.op.unary.f32(i32 27, float %2084)  ; Round_ni(value)
  %2095 = call float @dx.op.unary.f32(i32 27, float %2085)  ; Round_ni(value)
  %2096 = fptosi float %2094 to i32
  %2097 = fptosi float %2095 to i32
  %2098 = xor i32 %2097, %2096
  %2099 = sitofp i32 %2098 to float
  %2100 = fptosi float %2099 to i32
  %2101 = sitofp i32 %2100 to float
  %2102 = fmul fast float %2101, 0x3FE3C6EF40000000
  %2103 = frem fast float %2094, 2.560000e+02
  %2104 = frem fast float %2095, 2.560000e+02
  %2105 = fptoui float %2103 to i32
  %2106 = fptoui float %2104 to i32
  %2107 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %2105, i32 %2106, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2108 = extractvalue %dx.types.ResRet.f32 %2107, 0
  %2109 = extractvalue %dx.types.ResRet.f32 %2107, 1
  %2110 = extractvalue %dx.types.ResRet.f32 %2107, 2
  %2111 = fadd fast float %2108, %2102
  %2112 = fadd fast float %2109, %2102
  %2113 = fadd fast float %2110, %2102
  %2114 = call float @dx.op.unary.f32(i32 22, float %2111)  ; Frc(value)
  %2115 = call float @dx.op.unary.f32(i32 22, float %2112)  ; Frc(value)
  %2116 = call float @dx.op.unary.f32(i32 22, float %2113)  ; Frc(value)
  %2117 = fmul fast float %2116, 0x401921FB60000000
  %2118 = call float @dx.op.unary.f32(i32 13, float %2117)  ; Sin(value)
  %2119 = call float @dx.op.unary.f32(i32 12, float %2117)  ; Cos(value)
  %2120 = fsub fast float -0.000000e+00, %2119
  %2121 = fmul fast float %2119, %2084
  %2122 = call float @dx.op.tertiary.f32(i32 46, float %2118, float %2085, float %2121)  ; FMad(a,b,c)
  %2123 = fmul fast float %2118, %2084
  %2124 = call float @dx.op.tertiary.f32(i32 46, float %2120, float %2085, float %2123)  ; FMad(a,b,c)
  %2125 = fadd fast float %2122, %2114
  %2126 = fadd fast float %2124, %2115
  %2127 = extractvalue %dx.types.CBufRet.f32 %2037, 3
  %2128 = bitcast float %2127 to i32
  %2129 = icmp eq i32 %2128, 0
  br i1 %2129, label %2168, label %2130

; <label>:2130                                    ; preds = %2033
  %2131 = add i32 %2128, 0
  %2132 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2131, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2133 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2132, %dx.types.Handle %76, float %2125, float %2126, float undef, float undef, i32 0, i32 0, i32 undef, float %2088, float %2089, float undef, float %2092, float %2093, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2134 = extractvalue %dx.types.ResRet.f32 %2133, 0
  %2135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %2136 = extractvalue %dx.types.CBufRet.f32 %2135, 1
  %2137 = extractvalue %dx.types.CBufRet.f32 %2135, 2
  %2138 = fsub fast float 1.000000e+00, %1736
  %2139 = call float @dx.op.binary.f32(i32 35, float %2138, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2140 = bitcast float %1736 to i32
  %2141 = sitofp i32 %2140 to float
  %2142 = fadd fast float %2141, 0xC1CFBF8940000000
  %2143 = fmul fast float %2137, %2142
  %2144 = fadd fast float %2143, 0x41CFBF8940000000
  %2145 = fptosi float %2144 to i32
  %2146 = bitcast i32 %2145 to float
  %2147 = bitcast float %2139 to i32
  %2148 = sitofp i32 %2147 to float
  %2149 = fadd fast float %2148, 0xC1CFBF8940000000
  %2150 = fmul fast float %2149, %2137
  %2151 = fadd fast float %2150, 0x41CFBF8940000000
  %2152 = fptosi float %2151 to i32
  %2153 = bitcast i32 %2152 to float
  %2154 = fmul fast float %2146, %2136
  %2155 = fmul fast float %2153, %2136
  %2156 = fsub fast float %2139, %2154
  %2157 = fadd fast float %2155, %2139
  %2158 = call float @dx.op.unary.f32(i32 7, float %2156)  ; Saturate(value)
  %2159 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  %2160 = fsub fast float %2134, %2158
  %2161 = fsub fast float %2159, %2158
  %2162 = bitcast float %2161 to i32
  %2163 = sub nsw i32 2129859010, %2162
  %2164 = bitcast i32 %2163 to float
  %2165 = fmul fast float %2164, %2160
  %2166 = call float @dx.op.unary.f32(i32 7, float %2165)  ; Saturate(value)
  %2167 = fcmp fast olt float %2166, 0x3F70101020000000
  br i1 %2167, label %2306, label %2168

; <label>:2168                                    ; preds = %2130, %2033
  %2169 = phi float [ %2166, %2130 ], [ %1736, %2033 ]
  %2170 = fmul fast float %2169, %2036
  %2171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %2172 = extractvalue %dx.types.CBufRet.i32 %2171, 1
  %2173 = extractvalue %dx.types.CBufRet.i32 %2171, 0
  %2174 = add i32 %2173, 0
  %2175 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2174, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2176 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2175, %dx.types.Handle %75, float %2125, float %2126, float undef, float undef, i32 0, i32 0, i32 undef, float %2088, float %2089, float undef, float %2092, float %2093, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2177 = extractvalue %dx.types.ResRet.f32 %2176, 0
  %2178 = extractvalue %dx.types.ResRet.f32 %2176, 1
  %2179 = extractvalue %dx.types.ResRet.f32 %2176, 2
  %2180 = extractvalue %dx.types.ResRet.f32 %2176, 3
  %2181 = and i32 %2172, 255
  %2182 = uitofp i32 %2181 to float
  %2183 = lshr i32 %2172, 8
  %2184 = and i32 %2183, 255
  %2185 = uitofp i32 %2184 to float
  %2186 = fmul fast float %2180, %2182
  %2187 = fadd fast float %2186, %2185
  %2188 = fmul fast float %2187, 0x3F70101000000000
  %2189 = fadd fast float %2188, 0xBFB99999A0000000
  %2190 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2191 = fmul fast float %2190, 0x3FF1C71C80000000
  %2192 = call float @dx.op.binary.f32(i32 36, float %2188, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2193 = fsub fast float 1.000000e+00, %2191
  %2194 = call float @dx.op.unary.f32(i32 7, float %2193)  ; Saturate(value)
  %2195 = fmul fast float %2194, %2177
  %2196 = fmul fast float %2194, %2178
  %2197 = fmul fast float %2194, %2179
  %2198 = call float @dx.op.unary.f32(i32 7, float %2195)  ; Saturate(value)
  %2199 = call float @dx.op.unary.f32(i32 7, float %2196)  ; Saturate(value)
  %2200 = call float @dx.op.unary.f32(i32 7, float %2197)  ; Saturate(value)
  %2201 = fmul fast float %2191, %2177
  %2202 = fmul fast float %2191, %2178
  %2203 = fmul fast float %2191, %2179
  %2204 = fadd fast float %2201, %2192
  %2205 = fadd fast float %2202, %2192
  %2206 = fadd fast float %2203, %2192
  %2207 = call float @dx.op.unary.f32(i32 7, float %2204)  ; Saturate(value)
  %2208 = call float @dx.op.unary.f32(i32 7, float %2205)  ; Saturate(value)
  %2209 = call float @dx.op.unary.f32(i32 7, float %2206)  ; Saturate(value)
  %2210 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %2211 = extractvalue %dx.types.CBufRet.i32 %2210, 3
  %2212 = extractvalue %dx.types.CBufRet.i32 %2210, 2
  %2213 = add i32 %2212, 0
  %2214 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2213, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2215 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2214, %dx.types.Handle %75, float %2125, float %2126, float undef, float undef, i32 0, i32 0, i32 undef, float %2088, float %2089, float undef, float %2092, float %2093, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2216 = extractvalue %dx.types.ResRet.f32 %2215, 0
  %2217 = extractvalue %dx.types.ResRet.f32 %2215, 1
  %2218 = extractvalue %dx.types.ResRet.f32 %2215, 2
  %2219 = extractvalue %dx.types.ResRet.f32 %2215, 3
  %2220 = and i32 %2211, 255
  %2221 = uitofp i32 %2220 to float
  %2222 = lshr i32 %2211, 8
  %2223 = and i32 %2222, 255
  %2224 = uitofp i32 %2223 to float
  %2225 = lshr i32 %2211, 16
  %2226 = and i32 %2225, 255
  %2227 = uitofp i32 %2226 to float
  %2228 = fmul fast float %2227, 0x3F70101000000000
  %2229 = fmul fast float %2216, %2221
  %2230 = fadd fast float %2229, %2224
  %2231 = fmul fast float %2230, 0x3F70101000000000
  %2232 = fadd fast float %2217, -5.000000e-01
  %2233 = fadd fast float %2219, -5.000000e-01
  %2234 = fmul fast float %2232, %2228
  %2235 = fmul fast float %2233, %2228
  %2236 = fadd fast float %2234, 5.000000e-01
  %2237 = fadd fast float %2235, 5.000000e-01
  %2238 = fmul fast float %2236, 2.000000e+00
  %2239 = fadd fast float %2238, -1.000000e+00
  %2240 = fmul fast float %2237, 2.000000e+00
  %2241 = fadd fast float %2240, -1.000000e+00
  %2242 = fadd fast float %2239, %2241
  %2243 = fmul fast float %2242, 5.000000e-01
  %2244 = fsub fast float %2239, %2241
  %2245 = fmul fast float %2244, 5.000000e-01
  %2246 = call float @dx.op.unary.f32(i32 6, float %2243)  ; FAbs(value)
  %2247 = fsub fast float 1.000000e+00, %2246
  %2248 = call float @dx.op.unary.f32(i32 6, float %2245)  ; FAbs(value)
  %2249 = fsub fast float %2247, %2248
  %2250 = call float @dx.op.dot3.f32(i32 55, float %2243, float %2245, float %2249, float %2243, float %2245, float %2249)  ; Dot3(ax,ay,az,bx,by,bz)
  %2251 = call float @dx.op.unary.f32(i32 25, float %2250)  ; Rsqrt(value)
  %2252 = fmul fast float %2243, %2251
  %2253 = fmul fast float %2245, %2251
  %2254 = select i1 %2081, i32 %2071, i32 %2072
  %2255 = select i1 %2079, i32 %2070, i32 %2254
  %2256 = sitofp i32 %2255 to float
  %2257 = fmul fast float %2249, %2256
  %2258 = fmul fast float %2257, %2251
  %2259 = select i1 %2081, float %2258, float %2253
  %2260 = select i1 %2081, float %2253, float %2258
  %2261 = select i1 %2079, float %2258, float %2252
  %2262 = select i1 %2079, float %2253, float %2259
  %2263 = select i1 %2079, float %2252, float %2260
  %2264 = fsub fast float %2198, %2022
  %2265 = fsub fast float %2199, %2023
  %2266 = fsub fast float %2200, %2024
  %2267 = fmul fast float %2264, %2170
  %2268 = fmul fast float %2265, %2170
  %2269 = fmul fast float %2266, %2170
  %2270 = fadd fast float %2267, %2022
  %2271 = fadd fast float %2268, %2023
  %2272 = fadd fast float %2269, %2024
  %2273 = fsub fast float %2207, %2025
  %2274 = fsub fast float %2208, %2026
  %2275 = fsub fast float %2209, %2027
  %2276 = fmul fast float %2273, %2170
  %2277 = fmul fast float %2274, %2170
  %2278 = fmul fast float %2275, %2170
  %2279 = fadd fast float %2276, %2025
  %2280 = fadd fast float %2277, %2026
  %2281 = fadd fast float %2278, %2027
  %2282 = fadd fast float %2261, %2028
  %2283 = fadd fast float %2262, %2029
  %2284 = fadd fast float %2263, %2030
  %2285 = call float @dx.op.dot3.f32(i32 55, float %2282, float %2283, float %2284, float %2282, float %2283, float %2284)  ; Dot3(ax,ay,az,bx,by,bz)
  %2286 = call float @dx.op.unary.f32(i32 25, float %2285)  ; Rsqrt(value)
  %2287 = fmul fast float %2282, %2286
  %2288 = fmul fast float %2283, %2286
  %2289 = fmul fast float %2284, %2286
  %2290 = fsub fast float %2287, %2028
  %2291 = fsub fast float %2288, %2029
  %2292 = fsub fast float %2289, %2030
  %2293 = fmul fast float %2290, %2170
  %2294 = fmul fast float %2291, %2170
  %2295 = fmul fast float %2292, %2170
  %2296 = fadd fast float %2293, %2028
  %2297 = fadd fast float %2294, %2029
  %2298 = fadd fast float %2295, %2030
  %2299 = call float @dx.op.binary.f32(i32 36, float %2032, float %2218)  ; FMin(a,b)
  %2300 = fsub fast float %2299, %2032
  %2301 = fmul fast float %2300, %2170
  %2302 = fadd fast float %2301, %2032
  %2303 = fsub fast float %2231, %2031
  %2304 = fmul fast float %2303, %2170
  %2305 = fadd fast float %2304, %2031
  br label %2306

; <label>:2306                                    ; preds = %2168, %2130, %2021, %1728
  %2307 = phi float [ %2270, %2168 ], [ %2022, %2130 ], [ %2022, %2021 ], [ %1480, %1728 ]
  %2308 = phi float [ %2271, %2168 ], [ %2023, %2130 ], [ %2023, %2021 ], [ %1481, %1728 ]
  %2309 = phi float [ %2272, %2168 ], [ %2024, %2130 ], [ %2024, %2021 ], [ %1482, %1728 ]
  %2310 = phi float [ %2279, %2168 ], [ %2025, %2130 ], [ %2025, %2021 ], [ %1462, %1728 ]
  %2311 = phi float [ %2280, %2168 ], [ %2026, %2130 ], [ %2026, %2021 ], [ %1463, %1728 ]
  %2312 = phi float [ %2281, %2168 ], [ %2027, %2130 ], [ %2027, %2021 ], [ %1464, %1728 ]
  %2313 = phi float [ %2296, %2168 ], [ %2028, %2130 ], [ %2028, %2021 ], [ %1441, %1728 ]
  %2314 = phi float [ %2297, %2168 ], [ %2029, %2130 ], [ %2029, %2021 ], [ %1442, %1728 ]
  %2315 = phi float [ %2298, %2168 ], [ %2030, %2130 ], [ %2030, %2021 ], [ %1443, %1728 ]
  %2316 = phi float [ %2305, %2168 ], [ %2031, %2130 ], [ %2031, %2021 ], [ %1465, %1728 ]
  %2317 = phi float [ %2302, %2168 ], [ %2032, %2130 ], [ %2032, %2021 ], [ %1425, %1728 ]
  %2318 = fcmp fast une float %1733, 0.000000e+00
  %2319 = call float @dx.op.dot3.f32(i32 55, float %135, float %136, float %137, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %2320 = call float @dx.op.unary.f32(i32 25, float %2319)  ; Rsqrt(value)
  br i1 %2318, label %2328, label %2321

; <label>:2321                                    ; preds = %2306
  %2322 = fmul fast float %2320, %135
  %2323 = fmul fast float %2320, %136
  %2324 = fmul fast float %2320, %137
  %2325 = fsub fast float -0.000000e+00, %2322
  %2326 = fsub fast float -0.000000e+00, %2323
  %2327 = fsub fast float -0.000000e+00, %2324
  br label %2689

; <label>:2328                                    ; preds = %2306
  %2329 = fmul fast float %135, %2320
  %2330 = fsub fast float -0.000000e+00, %2329
  %2331 = fmul fast float %136, %2320
  %2332 = fsub fast float -0.000000e+00, %2331
  %2333 = fmul fast float %137, %2320
  %2334 = fsub fast float -0.000000e+00, %2333
  %2335 = call float @dx.op.dot3.f32(i32 55, float %2330, float %2332, float %2334, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %2336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2337 = fmul fast float %1733, 2.500000e+00
  %2338 = call float @dx.op.unary.f32(i32 7, float %2337)  ; Saturate(value)
  %2339 = fmul fast float %1733, 0x4013FFFFE0000000
  %2340 = fadd fast float %2339, 0xBFFFFFFFE0000000
  %2341 = call float @dx.op.unary.f32(i32 7, float %2340)  ; Saturate(value)
  %2342 = fmul fast float %1733, 0x4004000020000000
  %2343 = fadd fast float %2342, 0xBFF8000040000000
  %2344 = call float @dx.op.unary.f32(i32 7, float %2343)  ; Saturate(value)
  %2345 = call float @dx.op.unary.f32(i32 7, float %2338)  ; Saturate(value)
  %2346 = fmul fast float %1444, 1.000000e+01
  %2347 = call float @dx.op.unary.f32(i32 7, float %2346)  ; Saturate(value)
  %2348 = fmul fast float %2347, 2.000000e+00
  %2349 = fsub fast float 3.000000e+00, %2348
  %2350 = fmul fast float %2347, %2347
  %2351 = fmul fast float %2350, %2349
  %2352 = fsub fast float 1.000000e+00, %2351
  %2353 = fsub fast float 0x3FE3333340000000, %2316
  %2354 = fmul fast float %2353, 0x400AAAAAA0000000
  %2355 = call float @dx.op.unary.f32(i32 7, float %2354)  ; Saturate(value)
  %2356 = fmul fast float %2352, %2355
  %2357 = fmul fast float %2307, 0x3FEA2B8620000000
  %2358 = fmul fast float %2308, 0x3FEA2B8620000000
  %2359 = fmul fast float %2309, 0x3FEA2B8620000000
  %2360 = fadd fast float %2357, 0x3FC81DFBA0000000
  %2361 = fmul fast float %2360, %2307
  %2362 = fadd fast float %2361, 0x3F910E6020000000
  %2363 = fadd fast float %2358, 0x3FC81DFBA0000000
  %2364 = fmul fast float %2363, %2308
  %2365 = fadd fast float %2364, 0x3F910E6020000000
  %2366 = fadd fast float %2359, 0x3FC81DFBA0000000
  %2367 = fmul fast float %2366, %2309
  %2368 = fadd fast float %2367, 0x3F910E6020000000
  %2369 = call float @dx.op.unary.f32(i32 7, float %2362)  ; Saturate(value)
  %2370 = call float @dx.op.unary.f32(i32 7, float %2365)  ; Saturate(value)
  %2371 = call float @dx.op.unary.f32(i32 7, float %2368)  ; Saturate(value)
  %2372 = fsub fast float %2369, %2307
  %2373 = fsub fast float %2370, %2308
  %2374 = fsub fast float %2371, %2309
  %2375 = fmul fast float %2372, %2345
  %2376 = fmul fast float %2375, %2356
  %2377 = fmul fast float %2373, %2345
  %2378 = fmul fast float %2377, %2356
  %2379 = fmul fast float %2374, %2345
  %2380 = fmul fast float %2379, %2356
  %2381 = fadd fast float %2376, %2307
  %2382 = fadd fast float %2378, %2308
  %2383 = fadd fast float %2380, %2309
  %2384 = fmul fast float %2317, %2317
  %2385 = fmul fast float %2384, %2384
  %2386 = fadd fast float %2341, 1.000000e+00
  %2387 = fsub fast float %2386, %2356
  %2388 = call float @dx.op.unary.f32(i32 7, float %2387)  ; Saturate(value)
  %2389 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2390 = call float @dx.op.unary.f32(i32 7, float %2389)  ; Saturate(value)
  %2391 = fsub fast float 1.000000e+00, %2385
  %2392 = call float @dx.op.binary.f32(i32 36, float %2388, float %2391)  ; FMin(a,b)
  %2393 = call float @dx.op.unary.f32(i32 7, float %2344)  ; Saturate(value)
  %2394 = call float @dx.op.binary.f32(i32 35, float %2392, float %2393)  ; FMax(a,b)
  %2395 = fadd fast float %2390, 0xBFE4CCCCC0000000
  %2396 = fmul fast float %2395, 0x4006DB6DA0000000
  %2397 = call float @dx.op.unary.f32(i32 7, float %2396)  ; Saturate(value)
  %2398 = fmul fast float %2397, 2.000000e+00
  %2399 = fsub fast float 3.000000e+00, %2398
  %2400 = bitcast float %2310 to i32
  %2401 = ashr i32 %2400, 1
  %2402 = add nsw i32 %2401, 532487669
  %2403 = bitcast i32 %2402 to float
  %2404 = fsub fast float 1.000000e+00, %2403
  %2405 = bitcast float %2404 to i32
  %2406 = sub nsw i32 2129859010, %2405
  %2407 = bitcast i32 %2406 to float
  %2408 = fmul fast float %2407, 2.000000e+00
  %2409 = bitcast float %2311 to i32
  %2410 = ashr i32 %2409, 1
  %2411 = add nsw i32 %2410, 532487669
  %2412 = bitcast i32 %2411 to float
  %2413 = fsub fast float 1.000000e+00, %2412
  %2414 = bitcast float %2413 to i32
  %2415 = sub nsw i32 2129859010, %2414
  %2416 = bitcast i32 %2415 to float
  %2417 = fmul fast float %2416, 2.000000e+00
  %2418 = bitcast float %2312 to i32
  %2419 = ashr i32 %2418, 1
  %2420 = add nsw i32 %2419, 532487669
  %2421 = bitcast i32 %2420 to float
  %2422 = fsub fast float 1.000000e+00, %2421
  %2423 = bitcast float %2422 to i32
  %2424 = sub nsw i32 2129859010, %2423
  %2425 = bitcast i32 %2424 to float
  %2426 = fmul fast float %2425, 2.000000e+00
  %2427 = fsub fast float 0x4002A9FBE0000000, %2408
  %2428 = fadd fast float %2408, 0x3FD54FDF00000000
  %2429 = bitcast float %2428 to i32
  %2430 = sub nsw i32 2129859010, %2429
  %2431 = bitcast i32 %2430 to float
  %2432 = fmul fast float %2431, %2427
  %2433 = fmul fast float %2432, %2432
  %2434 = fsub fast float 0x4002A9FBE0000000, %2417
  %2435 = fadd fast float %2417, 0x3FD54FDF00000000
  %2436 = bitcast float %2435 to i32
  %2437 = sub nsw i32 2129859010, %2436
  %2438 = bitcast i32 %2437 to float
  %2439 = fmul fast float %2438, %2434
  %2440 = fmul fast float %2439, %2439
  %2441 = fsub fast float 0x4002A9FBE0000000, %2426
  %2442 = fadd fast float %2426, 0x3FD54FDF00000000
  %2443 = bitcast float %2442 to i32
  %2444 = sub nsw i32 2129859010, %2443
  %2445 = bitcast i32 %2444 to float
  %2446 = fmul fast float %2445, %2441
  %2447 = fmul fast float %2446, %2446
  %2448 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2433)  ; FMax(a,b)
  %2449 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2440)  ; FMax(a,b)
  %2450 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2447)  ; FMax(a,b)
  %2451 = fsub fast float 1.000000e+00, %2335
  %2452 = fadd fast float %2451, %2352
  %2453 = call float @dx.op.unary.f32(i32 7, float %2452)  ; Saturate(value)
  %2454 = fsub fast float 1.000000e+00, %1565
  %2455 = fmul fast float %2394, %2454
  %2456 = fmul fast float %2397, %2397
  %2457 = fmul fast float %2456, %2455
  %2458 = fmul fast float %2457, %2399
  %2459 = fmul fast float %2454, 0xBFE99999A0000000
  %2460 = fmul fast float %2459, %2345
  %2461 = fmul fast float %2460, %2356
  %2462 = fadd fast float %2461, 1.000000e+00
  %2463 = fadd fast float %2316, -1.000000e+00
  %2464 = fmul fast float %2462, %2463
  %2465 = fadd fast float %2464, 1.000000e+00
  %2466 = fsub fast float %2448, %2310
  %2467 = fsub fast float %2449, %2311
  %2468 = fsub fast float %2450, %2312
  %2469 = fmul fast float %2458, %2466
  %2470 = fmul fast float %2458, %2467
  %2471 = fmul fast float %2458, %2468
  %2472 = fadd fast float %2469, %2310
  %2473 = fadd fast float %2470, %2311
  %2474 = fadd fast float %2471, %2312
  %2475 = fsub fast float %82, %2313
  %2476 = fsub fast float %83, %2314
  %2477 = fsub fast float %84, %2315
  %2478 = fmul fast float %2458, %2475
  %2479 = fmul fast float %2458, %2476
  %2480 = fmul fast float %2458, %2477
  %2481 = fadd fast float %2478, %2313
  %2482 = fadd fast float %2479, %2314
  %2483 = fadd fast float %2480, %2315
  %2484 = fmul fast float %2458, %2453
  %2485 = call float @dx.op.unary.f32(i32 7, float %2465)  ; Saturate(value)
  %2486 = fsub fast float 1.000000e+00, %2485
  %2487 = fmul fast float %2484, %2486
  %2488 = fadd fast float %2487, %2485
  %2489 = fsub fast float 1.000000e+00, %2317
  %2490 = fmul fast float %2458, %2489
  %2491 = fadd fast float %2490, %2317
  %2492 = fcmp fast une float %1734, 0.000000e+00
  %2493 = fcmp fast ogt float %2390, 0x3FE4CCCCC0000000
  %2494 = and i1 %2492, %2493
  br i1 %2494, label %2495, label %2681

; <label>:2495                                    ; preds = %2328
  %2496 = extractvalue %dx.types.CBufRet.f32 %2336, 1
  %2497 = fadd fast float %2496, %136
  %2498 = extractvalue %dx.types.CBufRet.f32 %2336, 0
  %2499 = fadd fast float %2498, %135
  %2500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.f32 %2500, 3
  %2502 = fadd fast float %2501, 0x3FC0A3D700000000
  %2503 = fmul fast float %2502, 0x3FF6666660000000
  %2504 = fmul fast float %2501, 0x3FF2978D40000000
  %2505 = fmul fast float %2501, 0x3FF5BA5E40000000
  %2506 = fmul fast float %2501, 0x3FF94FDF40000000
  %2507 = call float @dx.op.unary.f32(i32 6, float %2499)  ; FAbs(value)
  %2508 = call float @dx.op.unary.f32(i32 6, float %2497)  ; FAbs(value)
  %2509 = fmul fast float %2507, 0x3F8EB851E0000000
  %2510 = fmul fast float %2508, 0x3F8EB851E0000000
  %2511 = fmul fast float %1734, 4.000000e+00
  %2512 = call float @dx.op.unary.f32(i32 7, float %2511)  ; Saturate(value)
  %2513 = fadd fast float %2509, 2.500000e-01
  %2514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %2513, float %2510, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2515 = extractvalue %dx.types.ResRet.f32 %2514, 0
  %2516 = extractvalue %dx.types.ResRet.f32 %2514, 1
  %2517 = extractvalue %dx.types.ResRet.f32 %2514, 2
  %2518 = extractvalue %dx.types.ResRet.f32 %2514, 3
  %2519 = fmul fast float %2516, 2.000000e+00
  %2520 = fmul fast float %2517, 2.000000e+00
  %2521 = fadd fast float %2519, -1.000000e+00
  %2522 = fadd fast float %2520, -1.000000e+00
  %2523 = fsub fast float 1.000000e+00, %2512
  %2524 = fmul fast float %2523, 8.000000e+00
  %2525 = call float @dx.op.unary.f32(i32 21, float %2524)  ; Exp(value)
  %2526 = fmul fast float %2518, %2525
  %2527 = fadd fast float %2503, -1.000000e+00
  %2528 = fadd fast float %2527, %2518
  %2529 = fadd fast float %2528, %2526
  %2530 = frem fast float %2529, %2525
  %2531 = fcmp fast ole float %2530, 1.000000e+00
  %2532 = call float @dx.op.unary.f32(i32 22, float %2530)  ; Frc(value)
  %2533 = select i1 %2531, float %2532, float 0.000000e+00
  %2534 = fadd fast float %2515, -1.000000e+00
  %2535 = fadd fast float %2534, %2533
  %2536 = fsub fast float 1.000000e+00, %2533
  %2537 = call float @dx.op.unary.f32(i32 7, float %2536)  ; Saturate(value)
  %2538 = fmul fast float %2537, %2515
  %2539 = fmul fast float %2535, 8.000000e+00
  %2540 = call float @dx.op.binary.f32(i32 35, float %2539, float 0.000000e+00)  ; FMax(a,b)
  %2541 = call float @dx.op.binary.f32(i32 36, float %2540, float 4.000000e+00)  ; FMin(a,b)
  %2542 = fmul fast float %2541, 0x400921FB60000000
  %2543 = call float @dx.op.unary.f32(i32 13, float %2542)  ; Sin(value)
  %2544 = fadd fast float %2533, -1.000000e+00
  %2545 = fmul fast float %2538, %2544
  %2546 = fmul fast float %2545, %2543
  %2547 = fmul fast float %2546, %2521
  %2548 = fmul fast float %2546, %2522
  %2549 = fadd fast float %2511, -1.000000e+00
  %2550 = call float @dx.op.unary.f32(i32 7, float %2549)  ; Saturate(value)
  %2551 = fadd fast float %2509, 0xBFE19999A0000000
  %2552 = fadd fast float %2510, 0x3FD3D70A40000000
  %2553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %2551, float %2552, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2554 = extractvalue %dx.types.ResRet.f32 %2553, 0
  %2555 = extractvalue %dx.types.ResRet.f32 %2553, 1
  %2556 = extractvalue %dx.types.ResRet.f32 %2553, 2
  %2557 = extractvalue %dx.types.ResRet.f32 %2553, 3
  %2558 = fmul fast float %2555, 2.000000e+00
  %2559 = fmul fast float %2556, 2.000000e+00
  %2560 = fadd fast float %2558, -1.000000e+00
  %2561 = fadd fast float %2559, -1.000000e+00
  %2562 = fsub fast float 1.000000e+00, %2550
  %2563 = fmul fast float %2562, 8.000000e+00
  %2564 = call float @dx.op.unary.f32(i32 21, float %2563)  ; Exp(value)
  %2565 = fmul fast float %2557, %2564
  %2566 = fadd fast float %2504, 0xBFE5B22D00000000
  %2567 = fadd fast float %2566, %2557
  %2568 = fadd fast float %2567, %2565
  %2569 = frem fast float %2568, %2564
  %2570 = fcmp fast ole float %2569, 1.000000e+00
  %2571 = call float @dx.op.unary.f32(i32 22, float %2569)  ; Frc(value)
  %2572 = select i1 %2570, float %2571, float 0.000000e+00
  %2573 = fadd fast float %2554, -1.000000e+00
  %2574 = fadd fast float %2573, %2572
  %2575 = fsub fast float 1.000000e+00, %2572
  %2576 = call float @dx.op.unary.f32(i32 7, float %2575)  ; Saturate(value)
  %2577 = fmul fast float %2576, %2554
  %2578 = fmul fast float %2574, 8.000000e+00
  %2579 = call float @dx.op.binary.f32(i32 35, float %2578, float 0.000000e+00)  ; FMax(a,b)
  %2580 = call float @dx.op.binary.f32(i32 36, float %2579, float 4.000000e+00)  ; FMin(a,b)
  %2581 = fmul fast float %2580, 0x400921FB60000000
  %2582 = call float @dx.op.unary.f32(i32 13, float %2581)  ; Sin(value)
  %2583 = fadd fast float %2572, -1.000000e+00
  %2584 = fmul fast float %2577, %2583
  %2585 = fmul fast float %2584, %2582
  %2586 = fmul fast float %2585, %2560
  %2587 = fmul fast float %2585, %2561
  %2588 = fadd fast float %2511, -2.000000e+00
  %2589 = call float @dx.op.unary.f32(i32 7, float %2588)  ; Saturate(value)
  %2590 = fadd fast float %2509, 0x3FE3333340000000
  %2591 = fadd fast float %2510, 0x3FEB333340000000
  %2592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %2590, float %2591, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2593 = extractvalue %dx.types.ResRet.f32 %2592, 0
  %2594 = extractvalue %dx.types.ResRet.f32 %2592, 1
  %2595 = extractvalue %dx.types.ResRet.f32 %2592, 2
  %2596 = extractvalue %dx.types.ResRet.f32 %2592, 3
  %2597 = fmul fast float %2594, 2.000000e+00
  %2598 = fmul fast float %2595, 2.000000e+00
  %2599 = fadd fast float %2597, -1.000000e+00
  %2600 = fadd fast float %2598, -1.000000e+00
  %2601 = fsub fast float 1.000000e+00, %2589
  %2602 = fmul fast float %2601, 8.000000e+00
  %2603 = call float @dx.op.unary.f32(i32 21, float %2602)  ; Exp(value)
  %2604 = fmul fast float %2596, %2603
  %2605 = fadd fast float %2505, 0xBFD5E35400000000
  %2606 = fadd fast float %2605, %2596
  %2607 = fadd fast float %2606, %2604
  %2608 = frem fast float %2607, %2603
  %2609 = fcmp fast ole float %2608, 1.000000e+00
  %2610 = call float @dx.op.unary.f32(i32 22, float %2608)  ; Frc(value)
  %2611 = select i1 %2609, float %2610, float 0.000000e+00
  %2612 = fadd fast float %2593, -1.000000e+00
  %2613 = fadd fast float %2612, %2611
  %2614 = fsub fast float 1.000000e+00, %2611
  %2615 = call float @dx.op.unary.f32(i32 7, float %2614)  ; Saturate(value)
  %2616 = fmul fast float %2615, %2593
  %2617 = fmul fast float %2613, 8.000000e+00
  %2618 = call float @dx.op.binary.f32(i32 35, float %2617, float 0.000000e+00)  ; FMax(a,b)
  %2619 = call float @dx.op.binary.f32(i32 36, float %2618, float 4.000000e+00)  ; FMin(a,b)
  %2620 = fmul fast float %2619, 0x400921FB60000000
  %2621 = call float @dx.op.unary.f32(i32 13, float %2620)  ; Sin(value)
  %2622 = fadd fast float %2611, -1.000000e+00
  %2623 = fmul fast float %2616, %2622
  %2624 = fmul fast float %2623, %2621
  %2625 = fmul fast float %2624, %2599
  %2626 = fmul fast float %2624, %2600
  %2627 = fadd fast float %2511, -3.000000e+00
  %2628 = call float @dx.op.unary.f32(i32 7, float %2627)  ; Saturate(value)
  %2629 = fadd fast float %2509, 5.000000e-01
  %2630 = fadd fast float %2510, -7.500000e-01
  %2631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %2629, float %2630, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2632 = extractvalue %dx.types.ResRet.f32 %2631, 0
  %2633 = extractvalue %dx.types.ResRet.f32 %2631, 1
  %2634 = extractvalue %dx.types.ResRet.f32 %2631, 2
  %2635 = extractvalue %dx.types.ResRet.f32 %2631, 3
  %2636 = fmul fast float %2633, 2.000000e+00
  %2637 = fmul fast float %2634, 2.000000e+00
  %2638 = fadd fast float %2636, -1.000000e+00
  %2639 = fadd fast float %2637, -1.000000e+00
  %2640 = fsub fast float 1.000000e+00, %2628
  %2641 = fmul fast float %2640, 8.000000e+00
  %2642 = call float @dx.op.unary.f32(i32 21, float %2641)  ; Exp(value)
  %2643 = fmul fast float %2635, %2642
  %2644 = fadd fast float %2506, 0xBF78938000000000
  %2645 = fadd fast float %2644, %2635
  %2646 = fadd fast float %2645, %2643
  %2647 = frem fast float %2646, %2642
  %2648 = fcmp fast ole float %2647, 1.000000e+00
  %2649 = call float @dx.op.unary.f32(i32 22, float %2647)  ; Frc(value)
  %2650 = select i1 %2648, float %2649, float 0.000000e+00
  %2651 = fadd fast float %2632, -1.000000e+00
  %2652 = fadd fast float %2651, %2650
  %2653 = fsub fast float 1.000000e+00, %2650
  %2654 = call float @dx.op.unary.f32(i32 7, float %2653)  ; Saturate(value)
  %2655 = fmul fast float %2654, %2632
  %2656 = fmul fast float %2652, 8.000000e+00
  %2657 = call float @dx.op.binary.f32(i32 35, float %2656, float 0.000000e+00)  ; FMax(a,b)
  %2658 = call float @dx.op.binary.f32(i32 36, float %2657, float 4.000000e+00)  ; FMin(a,b)
  %2659 = fmul fast float %2658, 0x400921FB60000000
  %2660 = call float @dx.op.unary.f32(i32 13, float %2659)  ; Sin(value)
  %2661 = fadd fast float %2650, -1.000000e+00
  %2662 = fmul fast float %2655, %2661
  %2663 = fmul fast float %2662, %2660
  %2664 = fmul fast float %2663, %2638
  %2665 = fmul fast float %2663, %2639
  %2666 = fadd fast float %2586, %2547
  %2667 = fadd fast float %2587, %2548
  %2668 = fadd fast float %2666, %2625
  %2669 = fadd fast float %2667, %2626
  %2670 = fadd fast float %2668, %2664
  %2671 = fadd fast float %2669, %2665
  %2672 = fmul fast float %2390, 0x4006DB6DA0000000
  %2673 = fadd fast float %2672, 0xBFFDB6DB40000000
  %2674 = call float @dx.op.unary.f32(i32 7, float %2673)  ; Saturate(value)
  %2675 = fmul fast float %2674, %2345
  %2676 = fmul fast float %2675, %2454
  %2677 = fmul fast float %2676, %2670
  %2678 = fmul fast float %2676, %2671
  %2679 = fadd fast float %2677, %2481
  %2680 = fadd fast float %2678, %2482
  br label %2681

; <label>:2681                                    ; preds = %2495, %2328
  %2682 = phi float [ %2481, %2328 ], [ %2679, %2495 ]
  %2683 = phi float [ %2482, %2328 ], [ %2680, %2495 ]
  %2684 = call float @dx.op.dot3.f32(i32 55, float %2682, float %2683, float %2483, float %2682, float %2683, float %2483)  ; Dot3(ax,ay,az,bx,by,bz)
  %2685 = call float @dx.op.unary.f32(i32 25, float %2684)  ; Rsqrt(value)
  %2686 = fmul fast float %2685, %2682
  %2687 = fmul fast float %2685, %2683
  %2688 = fmul fast float %2685, %2483
  br label %2689

; <label>:2689                                    ; preds = %2681, %2321
  %2690 = phi float [ %2327, %2321 ], [ %2334, %2681 ]
  %2691 = phi float [ %2326, %2321 ], [ %2332, %2681 ]
  %2692 = phi float [ %2325, %2321 ], [ %2330, %2681 ]
  %2693 = phi float [ %2324, %2321 ], [ %2333, %2681 ]
  %2694 = phi float [ %2323, %2321 ], [ %2331, %2681 ]
  %2695 = phi float [ %2322, %2321 ], [ %2329, %2681 ]
  %2696 = phi float [ %2307, %2321 ], [ %2381, %2681 ]
  %2697 = phi float [ %2308, %2321 ], [ %2382, %2681 ]
  %2698 = phi float [ %2309, %2321 ], [ %2383, %2681 ]
  %2699 = phi float [ %2310, %2321 ], [ %2472, %2681 ]
  %2700 = phi float [ %2311, %2321 ], [ %2473, %2681 ]
  %2701 = phi float [ %2312, %2321 ], [ %2474, %2681 ]
  %2702 = phi float [ %2313, %2321 ], [ %2686, %2681 ]
  %2703 = phi float [ %2314, %2321 ], [ %2687, %2681 ]
  %2704 = phi float [ %2315, %2321 ], [ %2688, %2681 ]
  %2705 = phi float [ %2316, %2321 ], [ %2488, %2681 ]
  %2706 = phi float [ %2317, %2321 ], [ %2491, %2681 ]
  %2707 = select i1 %196, float 0.000000e+00, float %2701
  %2708 = call float @dx.op.dot3.f32(i32 55, float %2702, float %2703, float %2704, float %2692, float %2691, float %2690)  ; Dot3(ax,ay,az,bx,by,bz)
  %2709 = call float @dx.op.unary.f32(i32 7, float %2708)  ; Saturate(value)
  %2710 = call float @dx.op.dot3.f32(i32 55, float %2695, float %2694, float %2693, float %2702, float %2703, float %2704)  ; Dot3(ax,ay,az,bx,by,bz)
  %2711 = fmul fast float %2710, 2.000000e+00
  %2712 = fmul fast float %2711, %2702
  %2713 = fmul fast float %2711, %2703
  %2714 = fmul fast float %2711, %2704
  %2715 = fsub fast float %2695, %2712
  %2716 = fsub fast float %2694, %2713
  %2717 = fsub fast float %2693, %2714
  %2718 = call float @dx.op.binary.f32(i32 36, float %2706, float 1.000000e+00)  ; FMin(a,b)
  %2719 = fsub fast float 1.000000e+00, %2718
  %2720 = bitcast float %2719 to i32
  %2721 = ashr i32 %2720, 1
  %2722 = add nsw i32 %2721, 532487669
  %2723 = bitcast i32 %2722 to float
  %2724 = fsub fast float 1.000000e+00, %2705
  %2725 = call float @dx.op.binary.f32(i32 35, float %2724, float 0x3F847AE140000000)  ; FMax(a,b)
  %2726 = fmul fast float %2725, %2725
  %2727 = fmul fast float %2726, %2726
  %2728 = call float @dx.op.unary.f32(i32 7, float %2709)  ; Saturate(value)
  %2729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %2723, float %2727, float %2728, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2730 = extractvalue %dx.types.ResRet.f32 %2729, 0
  %2731 = fsub fast float 1.000000e+00, %2706
  %2732 = bitcast float %2731 to i32
  %2733 = sub nsw i32 2129859010, %2732
  %2734 = bitcast i32 %2733 to float
  %2735 = fsub fast float 1.000000e+00, %51
  %2736 = call float @dx.op.dot3.f32(i32 55, float %99, float %100, float %101, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %2737 = call float @dx.op.binary.f32(i32 35, float %2736, float 0x3FA99999A0000000)  ; FMax(a,b)
  %2738 = fdiv fast float %2735, %2737
  %2739 = call float @dx.op.dot3.f32(i32 55, float %2702, float %2703, float %2704, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %2740 = call float @dx.op.unary.f32(i32 7, float %2739)  ; Saturate(value)
  %2741 = fmul fast float %2740, 5.000000e-01
  %2742 = fadd fast float %2741, 5.000000e-01
  %2743 = fmul fast float %2742, %51
  %2744 = call float @dx.op.dot3.f32(i32 55, float %2702, float %2703, float %2704, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %2745 = call float @dx.op.unary.f32(i32 7, float %2744)  ; Saturate(value)
  %2746 = fmul fast float %2745, %2738
  %2747 = fadd fast float %2743, %2746
  %2748 = fsub fast float 5.000000e-01, %2741
  %2749 = fmul fast float %2748, %2696
  %2750 = fmul fast float %2748, %2697
  %2751 = fmul fast float %2748, %2698
  %2752 = fadd fast float %2747, %2749
  %2753 = fadd fast float %2747, %2750
  %2754 = fadd fast float %2747, %2751
  %2755 = call float @dx.op.dot3.f32(i32 55, float %2715, float %2716, float %2717, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %2756 = call float @dx.op.unary.f32(i32 7, float %2755)  ; Saturate(value)
  %2757 = fmul fast float %2756, 5.000000e-01
  %2758 = fadd fast float %2757, 5.000000e-01
  %2759 = fmul fast float %2758, %51
  %2760 = call float @dx.op.dot3.f32(i32 55, float %2715, float %2716, float %2717, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %2761 = call float @dx.op.unary.f32(i32 7, float %2760)  ; Saturate(value)
  %2762 = fmul fast float %2761, %2738
  %2763 = fadd fast float %2759, %2762
  %2764 = fsub fast float 5.000000e-01, %2757
  %2765 = fmul fast float %2764, %2696
  %2766 = fmul fast float %2764, %2697
  %2767 = fmul fast float %2764, %2698
  %2768 = fadd fast float %2763, %2765
  %2769 = fadd fast float %2763, %2766
  %2770 = fadd fast float %2763, %2767
  %2771 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2773 = extractvalue %dx.types.CBufRet.f32 %2772, 0
  %2774 = call float @dx.op.binary.f32(i32 36, float %2696, float %2773)  ; FMin(a,b)
  %2775 = fmul fast float %2774, %2719
  %2776 = fsub fast float 1.000000e+00, %2775
  %2777 = bitcast float %2776 to i32
  %2778 = sub nsw i32 2129859010, %2777
  %2779 = bitcast i32 %2778 to float
  %2780 = call float @dx.op.binary.f32(i32 36, float %2697, float %2773)  ; FMin(a,b)
  %2781 = fmul fast float %2780, %2719
  %2782 = fsub fast float 1.000000e+00, %2781
  %2783 = bitcast float %2782 to i32
  %2784 = sub nsw i32 2129859010, %2783
  %2785 = bitcast i32 %2784 to float
  %2786 = call float @dx.op.binary.f32(i32 36, float %2698, float %2773)  ; FMin(a,b)
  %2787 = fmul fast float %2786, %2719
  %2788 = fsub fast float 1.000000e+00, %2787
  %2789 = bitcast float %2788 to i32
  %2790 = sub nsw i32 2129859010, %2789
  %2791 = bitcast i32 %2790 to float
  %2792 = fmul fast float %2718, %52
  %2793 = fmul fast float %2792, %2752
  %2794 = fmul fast float %2793, %2779
  %2795 = fmul fast float %2718, %53
  %2796 = fmul fast float %2795, %2753
  %2797 = fmul fast float %2796, %2785
  %2798 = fmul fast float %2718, %54
  %2799 = fmul fast float %2798, %2754
  %2800 = fmul fast float %2799, %2791
  %2801 = call float @dx.op.binary.f32(i32 36, float %2699, float %2773)  ; FMin(a,b)
  %2802 = fmul fast float %2801, %2719
  %2803 = fsub fast float 1.000000e+00, %2802
  %2804 = bitcast float %2803 to i32
  %2805 = sub nsw i32 2129859010, %2804
  %2806 = bitcast i32 %2805 to float
  %2807 = call float @dx.op.binary.f32(i32 36, float %2700, float %2773)  ; FMin(a,b)
  %2808 = fmul fast float %2807, %2719
  %2809 = fsub fast float 1.000000e+00, %2808
  %2810 = bitcast float %2809 to i32
  %2811 = sub nsw i32 2129859010, %2810
  %2812 = bitcast i32 %2811 to float
  %2813 = call float @dx.op.binary.f32(i32 36, float %2707, float %2773)  ; FMin(a,b)
  %2814 = fmul fast float %2813, %2719
  %2815 = fsub fast float 1.000000e+00, %2814
  %2816 = bitcast float %2815 to i32
  %2817 = sub nsw i32 2129859010, %2816
  %2818 = bitcast i32 %2817 to float
  %2819 = fmul fast float %2792, %2768
  %2820 = fmul fast float %2819, %2806
  %2821 = fmul fast float %2795, %2769
  %2822 = fmul fast float %2821, %2812
  %2823 = fmul fast float %2798, %2770
  %2824 = fmul fast float %2823, %2818
  %2825 = call float @dx.op.dot3.f32(i32 55, float %2794, float %2797, float %2800, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2826 = select i1 %196, float 0.000000e+00, float %2794
  %2827 = select i1 %196, float %2825, float %2797
  %2828 = select i1 %196, float 0.000000e+00, float %2800
  %2829 = call float @dx.op.dot3.f32(i32 55, float %2820, float %2822, float %2824, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2830 = select i1 %196, float 0.000000e+00, float %2820
  %2831 = select i1 %196, float %2829, float %2822
  %2832 = select i1 %196, float 0.000000e+00, float %2824
  %2833 = fmul fast float %868, %868
  %2834 = call float @dx.op.unary.f32(i32 7, float %2833)  ; Saturate(value)
  %2835 = fmul fast float %2709, 9.843750e-01
  %2836 = fmul fast float %2705, 9.843750e-01
  %2837 = fadd fast float %2835, 7.812500e-03
  %2838 = fadd fast float %2836, 7.812500e-03
  %2839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %40, float %2837, float %2838, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2840 = extractvalue %dx.types.ResRet.f32 %2839, 0
  %2841 = extractvalue %dx.types.ResRet.f32 %2839, 1
  %2842 = extractvalue %dx.types.ResRet.f32 %2839, 2
  %2843 = extractvalue %dx.types.ResRet.f32 %2839, 3
  %2844 = fsub fast float 1.000000e+00, %2834
  %2845 = fsub fast float %2842, %2840
  %2846 = fsub fast float %2843, %2841
  %2847 = fmul fast float %2845, %2844
  %2848 = fmul fast float %2846, %2844
  %2849 = fadd fast float %2847, %2840
  %2850 = fadd fast float %2848, %2841
  %2851 = fmul fast float %2849, %2699
  %2852 = fmul fast float %2849, %2700
  %2853 = fmul fast float %2849, %2707
  %2854 = fadd fast float %2851, %2850
  %2855 = fadd fast float %2852, %2850
  %2856 = fadd fast float %2853, %2850
  %2857 = fcmp fast ogt float %1418, 0.000000e+00
  br i1 %2857, label %2858, label %2884

; <label>:2858                                    ; preds = %2689
  %2859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %1418, float %2709, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2860 = extractvalue %dx.types.ResRet.f32 %2859, 0
  %2861 = extractvalue %dx.types.ResRet.f32 %2859, 1
  %2862 = extractvalue %dx.types.ResRet.f32 %2859, 2
  %2863 = fadd fast float %2860, -5.000000e-01
  %2864 = fadd fast float %2861, -5.000000e-01
  %2865 = fadd fast float %2862, -5.000000e-01
  %2866 = fsub fast float 1.000000e+00, %2699
  %2867 = fsub fast float 1.000000e+00, %2700
  %2868 = fsub fast float 1.000000e+00, %2707
  %2869 = fmul fast float %2699, 4.000000e+00
  %2870 = fmul fast float %2869, %2866
  %2871 = fmul fast float %2870, %2863
  %2872 = fmul fast float %2700, 4.000000e+00
  %2873 = fmul fast float %2872, %2867
  %2874 = fmul fast float %2873, %2864
  %2875 = fmul fast float %2707, 4.000000e+00
  %2876 = fmul fast float %2875, %2868
  %2877 = fmul fast float %2876, %2865
  %2878 = fadd fast float %2871, %2854
  %2879 = fadd fast float %2874, %2855
  %2880 = fadd fast float %2877, %2856
  %2881 = call float @dx.op.unary.f32(i32 7, float %2878)  ; Saturate(value)
  %2882 = call float @dx.op.unary.f32(i32 7, float %2879)  ; Saturate(value)
  %2883 = call float @dx.op.unary.f32(i32 7, float %2880)  ; Saturate(value)
  br label %2884

; <label>:2884                                    ; preds = %2858, %2689
  %2885 = phi float [ %2881, %2858 ], [ %2854, %2689 ]
  %2886 = phi float [ %2882, %2858 ], [ %2855, %2689 ]
  %2887 = phi float [ %2883, %2858 ], [ %2856, %2689 ]
  %2888 = call float @dx.op.binary.f32(i32 35, float %2886, float %2887)  ; FMax(a,b)
  %2889 = call float @dx.op.binary.f32(i32 35, float %2885, float %2888)  ; FMax(a,b)
  %2890 = fsub fast float 1.000000e+00, %2889
  %2891 = fmul fast float %2889, %2705
  %2892 = fadd fast float %2891, %2705
  %2893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2894 = extractvalue %dx.types.CBufRet.f32 %2893, 2
  %2895 = extractvalue %dx.types.CBufRet.f32 %2893, 3
  %2896 = fmul fast float %2892, %2894
  %2897 = fadd fast float %2896, %2895
  %2898 = call float @dx.op.unary.f32(i32 7, float %2897)  ; Saturate(value)
  %2899 = fsub fast float 1.000000e+00, %2730
  %2900 = fadd fast float %2899, %2898
  %2901 = call float @dx.op.unary.f32(i32 7, float %2900)  ; Saturate(value)
  %2902 = fcmp fast olt float %2901, 1.000000e+00
  br i1 %2902, label %2903, label %3351

; <label>:2903                                    ; preds = %2884
  %2904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2905 = extractvalue %dx.types.CBufRet.f32 %2904, 2
  %2906 = extractvalue %dx.types.CBufRet.f32 %2904, 3
  %2907 = fmul fast float %2905, %79
  %2908 = fmul fast float %2906, %80
  %2909 = fptoui float %2907 to i32
  %2910 = fptoui float %2908 to i32
  %2911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2912 = extractvalue %dx.types.CBufRet.f32 %2911, 0
  %2913 = extractvalue %dx.types.CBufRet.f32 %2911, 2
  %2914 = extractvalue %dx.types.CBufRet.f32 %2911, 3
  %2915 = fadd fast float %67, -4.000000e+00
  %2916 = call float @dx.op.binary.f32(i32 35, float %2915, float 0.000000e+00)  ; FMax(a,b)
  %2917 = fadd fast float %2916, %2912
  %2918 = fmul fast float %2917, %2913
  %2919 = call float @dx.op.unary.f32(i32 23, float %2918)  ; Log(value)
  %2920 = fmul fast float %2919, %2914
  %2921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2922 = extractvalue %dx.types.CBufRet.f32 %2921, 2
  %2923 = fmul fast float %2920, %2922
  %2924 = call float @dx.op.unary.f32(i32 7, float %2923)  ; Saturate(value)
  %2925 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2926 = extractvalue %dx.types.CBufRet.i32 %2925, 1
  %2927 = add i32 %2926, -1
  %2928 = uitofp i32 %2926 to float
  %2929 = fmul fast float %2928, %2924
  %2930 = fptoui float %2929 to i32
  %2931 = call i32 @dx.op.binary.i32(i32 40, i32 %2930, i32 %2927)  ; UMin(a,b)
  %2932 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2933 = extractvalue %dx.types.CBufRet.i32 %2932, 2
  %2934 = extractvalue %dx.types.CBufRet.i32 %2932, 3
  %2935 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2910, i32 %2933, i32 %2909)  ; UMad(a,b,c)
  %2936 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2931, i32 %2934, i32 %2935)  ; UMad(a,b,c)
  %2937 = call float @dx.op.binary.f32(i32 35, float %67, float 0.000000e+00)  ; FMax(a,b)
  %2938 = fptoui float %2937 to i32
  %2939 = lshr i32 %2938, 5
  %2940 = call i32 @dx.op.binary.i32(i32 40, i32 %2939, i32 8191)  ; UMin(a,b)
  br i1 false, label %2941, label %2948

; <label>:2941                                    ; preds = %2903
  %2942 = fadd fast float 0.000000e+00, %2717
  %2943 = call float @dx.op.dot3.f32(i32 55, float %2715, float %2716, float %2942, float %2715, float %2716, float %2942)  ; Dot3(ax,ay,az,bx,by,bz)
  %2944 = call float @dx.op.unary.f32(i32 25, float %2943)  ; Rsqrt(value)
  %2945 = fmul fast float %2944, %2715
  %2946 = fmul fast float %2944, %2716
  %2947 = fmul fast float %2942, %2944
  br label %2948

; <label>:2948                                    ; preds = %2941, %2903
  %2949 = phi float [ %2945, %2941 ], [ %2715, %2903 ]
  %2950 = phi float [ %2946, %2941 ], [ %2716, %2903 ]
  %2951 = phi float [ %2947, %2941 ], [ %2717, %2903 ]
  %2952 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2953 = extractvalue %dx.types.CBufRet.i32 %2952, 2
  %2954 = add nsw i32 %2953, -1
  %2955 = call i32 @dx.op.binary.i32(i32 37, i32 %2954, i32 0)  ; IMax(a,b)
  %2956 = shl i32 %2940, 2
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = lshr i32 %2958, 16
  %2960 = and i32 %2958, 65535
  %2961 = lshr i32 %2958, 21
  %2962 = lshr i32 %2960, 5
  %2963 = call i32 @dx.op.binary.i32(i32 40, i32 %2962, i32 %2955)  ; UMin(a,b)
  %2964 = icmp ugt i32 %2961, %2963
  br i1 %2964, label %3327, label %2965

; <label>:2965                                    ; preds = %2948
  br label %2966

; <label>:2966                                    ; preds = %3319, %2965
  %2967 = phi float [ %3320, %3319 ], [ 0.000000e+00, %2965 ]
  %2968 = phi float [ %3321, %3319 ], [ 0.000000e+00, %2965 ]
  %2969 = phi float [ %3322, %3319 ], [ 0.000000e+00, %2965 ]
  %2970 = phi float [ %3323, %3319 ], [ 1.000000e+00, %2965 ]
  %2971 = phi i32 [ %3324, %3319 ], [ %2961, %2965 ]
  %2972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2973 = extractvalue %dx.types.CBufRet.i32 %2972, 2
  %2974 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2936, i32 %2973, i32 %2971)  ; UMad(a,b,c)
  %2975 = shl i32 %2974, 2
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = shl i32 %2971, 5
  %2979 = sub nsw i32 %2959, %2978
  %2980 = call i32 @dx.op.binary.i32(i32 37, i32 %2979, i32 0)  ; IMax(a,b)
  %2981 = call i32 @dx.op.binary.i32(i32 38, i32 %2980, i32 31)  ; IMin(a,b)
  %2982 = sub nsw i32 1, %2959
  %2983 = add nsw i32 %2982, %2960
  %2984 = call i32 @dx.op.binary.i32(i32 37, i32 %2983, i32 0)  ; IMax(a,b)
  %2985 = call i32 @dx.op.binary.i32(i32 38, i32 %2984, i32 32)  ; IMin(a,b)
  %2986 = and i32 %2985, 31
  %2987 = shl i32 -1, %2986
  %2988 = xor i32 %2987, -1
  %2989 = and i32 %2981, 31
  %2990 = shl i32 %2988, %2989
  %2991 = icmp eq i32 %2985, 32
  %2992 = select i1 %2991, i32 -1, i32 %2990
  %2993 = and i32 %2992, %2977
  %2994 = icmp eq i32 %2993, 0
  br i1 %2994, label %3319, label %2995

; <label>:2995                                    ; preds = %2966
  br label %2996

; <label>:2996                                    ; preds = %3102, %2995
  %2997 = phi float [ %3103, %3102 ], [ %2967, %2995 ]
  %2998 = phi float [ %3104, %3102 ], [ %2968, %2995 ]
  %2999 = phi float [ %3105, %3102 ], [ %2969, %2995 ]
  %3000 = phi float [ %3106, %3102 ], [ %2970, %2995 ]
  %3001 = phi i32 [ %3006, %3102 ], [ %2993, %2995 ]
  %3002 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3001)  ; FirstbitLo(value)
  %3003 = add i32 %3002, %2978
  %3004 = and i32 %3002, 31
  %3005 = shl i32 1, %3004
  %3006 = xor i32 %3005, %3001
  %3007 = mul i32 %3003, 72
  %3008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.f32 %3008, 0
  %3010 = extractvalue %dx.types.ResRet.f32 %3008, 1
  %3011 = extractvalue %dx.types.ResRet.f32 %3008, 2
  %3012 = add i32 %3007, 12
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3012, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = add i32 %3007, 16
  %3016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3015, i32 undef)  ; BufferLoad(srv,index,wot)
  %3017 = extractvalue %dx.types.ResRet.f32 %3016, 0
  %3018 = extractvalue %dx.types.ResRet.f32 %3016, 1
  %3019 = extractvalue %dx.types.ResRet.f32 %3016, 2
  %3020 = add i32 %3007, 28
  %3021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3020, i32 undef)  ; BufferLoad(srv,index,wot)
  %3022 = extractvalue %dx.types.ResRet.f32 %3021, 0
  %3023 = add i32 %3007, 32
  %3024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3023, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.f32 %3024, 0
  %3026 = extractvalue %dx.types.ResRet.f32 %3024, 1
  %3027 = extractvalue %dx.types.ResRet.f32 %3024, 2
  %3028 = extractvalue %dx.types.ResRet.f32 %3024, 3
  %3029 = add i32 %3007, 48
  %3030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3029, i32 undef)  ; BufferLoad(srv,index,wot)
  %3031 = extractvalue %dx.types.ResRet.f32 %3030, 0
  %3032 = extractvalue %dx.types.ResRet.f32 %3030, 1
  %3033 = add i32 %3007, 56
  %3034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3033, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.f32 %3034, 0
  %3036 = extractvalue %dx.types.ResRet.f32 %3034, 1
  %3037 = add i32 %3007, 64
  %3038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3037, i32 undef)  ; BufferLoad(srv,index,wot)
  %3039 = extractvalue %dx.types.ResRet.f32 %3038, 0
  %3040 = extractvalue %dx.types.ResRet.f32 %3038, 1
  %3041 = mul i32 %3003, 60
  %3042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3041, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.f32 %3042, 0
  %3044 = extractvalue %dx.types.ResRet.f32 %3042, 1
  %3045 = extractvalue %dx.types.ResRet.f32 %3042, 2
  %3046 = add i32 %3041, 12
  %3047 = add i32 %3041, 48
  %3048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3047, i32 undef)  ; BufferLoad(srv,index,wot)
  %3049 = extractvalue %dx.types.ResRet.f32 %3048, 0
  %3050 = extractvalue %dx.types.ResRet.f32 %3048, 1
  %3051 = extractvalue %dx.types.ResRet.f32 %3048, 2
  %3052 = and i32 %3014, 32767
  %3053 = bitcast float %3009 to i32
  %3054 = icmp eq i32 %3053, -1
  %3055 = bitcast float %3010 to i32
  %3056 = and i32 %3014, 32768
  %3057 = icmp ne i32 %3056, 0
  %3058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3059 = extractvalue %dx.types.CBufRet.f32 %3058, 0
  %3060 = extractvalue %dx.types.CBufRet.f32 %3058, 1
  %3061 = extractvalue %dx.types.CBufRet.f32 %3058, 2
  %3062 = fsub fast float %3043, %3059
  %3063 = fsub fast float %3044, %3060
  %3064 = fsub fast float %3045, %3061
  %3065 = fsub fast float %135, %3062
  %3066 = fsub fast float %136, %3063
  %3067 = fsub fast float %137, %3064
  %3068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3046, i32 undef)  ; BufferLoad(srv,index,wot)
  %3069 = extractvalue %dx.types.ResRet.f32 %3068, 0
  %3070 = extractvalue %dx.types.ResRet.f32 %3068, 1
  %3071 = extractvalue %dx.types.ResRet.f32 %3068, 2
  %3072 = call float @dx.op.dot3.f32(i32 55, float %3065, float %3066, float %3067, float %3069, float %3070, float %3071)  ; Dot3(ax,ay,az,bx,by,bz)
  %3073 = add i32 %3041, 24
  %3074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3073, i32 undef)  ; BufferLoad(srv,index,wot)
  %3075 = extractvalue %dx.types.ResRet.f32 %3074, 0
  %3076 = extractvalue %dx.types.ResRet.f32 %3074, 1
  %3077 = extractvalue %dx.types.ResRet.f32 %3074, 2
  %3078 = call float @dx.op.dot3.f32(i32 55, float %3065, float %3066, float %3067, float %3075, float %3076, float %3077)  ; Dot3(ax,ay,az,bx,by,bz)
  %3079 = add i32 %3041, 36
  %3080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3079, i32 undef)  ; BufferLoad(srv,index,wot)
  %3081 = extractvalue %dx.types.ResRet.f32 %3080, 0
  %3082 = extractvalue %dx.types.ResRet.f32 %3080, 1
  %3083 = extractvalue %dx.types.ResRet.f32 %3080, 2
  %3084 = call float @dx.op.dot3.f32(i32 55, float %3065, float %3066, float %3067, float %3081, float %3082, float %3083)  ; Dot3(ax,ay,az,bx,by,bz)
  %3085 = call float @dx.op.unary.f32(i32 6, float %3072)  ; FAbs(value)
  %3086 = call float @dx.op.unary.f32(i32 6, float %3078)  ; FAbs(value)
  %3087 = call float @dx.op.unary.f32(i32 6, float %3084)  ; FAbs(value)
  %3088 = fsub fast float %3049, %3085
  %3089 = fsub fast float %3050, %3086
  %3090 = fsub fast float %3051, %3087
  %3091 = fmul fast float %3088, %3017
  %3092 = fmul fast float %3089, %3018
  %3093 = fmul fast float %3090, %3019
  %3094 = call float @dx.op.binary.f32(i32 36, float %3092, float %3093)  ; FMin(a,b)
  %3095 = call float @dx.op.binary.f32(i32 36, float %3091, float %3094)  ; FMin(a,b)
  %3096 = call float @dx.op.unary.f32(i32 7, float %3095)  ; Saturate(value)
  %3097 = call float @dx.op.binary.f32(i32 36, float %3000, float %3096)  ; FMin(a,b)
  %3098 = uitofp i1 %3057 to float
  %3099 = fsub fast float 1.000000e+00, %3098
  %3100 = fmul fast float %3097, %3099
  %3101 = fcmp fast ogt float %3100, 0.000000e+00
  br i1 %3101, label %3108, label %3102

; <label>:3102                                    ; preds = %3250, %2996
  %3103 = phi float [ %3314, %3250 ], [ %2997, %2996 ]
  %3104 = phi float [ %3315, %3250 ], [ %2998, %2996 ]
  %3105 = phi float [ %3316, %3250 ], [ %2999, %2996 ]
  %3106 = phi float [ %3317, %3250 ], [ %3000, %2996 ]
  %3107 = icmp eq i32 %3001, %3005
  br i1 %3107, label %3318, label %2996

; <label>:3108                                    ; preds = %2996
  br i1 %3054, label %3166, label %3109

; <label>:3109                                    ; preds = %3108
  %3110 = fsub fast float -0.000000e+00, %3069
  %3111 = fsub fast float -0.000000e+00, %3070
  %3112 = fsub fast float -0.000000e+00, %3071
  %3113 = call float @dx.op.dot3.f32(i32 55, float %2949, float %2950, float %2951, float %3110, float %3111, float %3112)  ; Dot3(ax,ay,az,bx,by,bz)
  %3114 = fsub fast float -0.000000e+00, %3113
  %3115 = call float @dx.op.dot3.f32(i32 55, float %3065, float %3066, float %3067, float %3110, float %3111, float %3112)  ; Dot3(ax,ay,az,bx,by,bz)
  %3116 = fadd fast float %3115, %3032
  %3117 = fadd fast float %3031, %3115
  %3118 = fsub fast float -0.000000e+00, %3117
  %3119 = fcmp ogt float %3113, -0.000000e+00
  %3120 = select i1 %3119, float %3118, float %3116
  %3121 = call float @dx.op.unary.f32(i32 6, float %3114)  ; FAbs(value)
  %3122 = fdiv fast float 1.000000e+00, %3121
  %3123 = fmul fast float %3120, %3122
  %3124 = call float @dx.op.binary.f32(i32 35, float %3123, float 0.000000e+00)  ; FMax(a,b)
  %3125 = fsub fast float -0.000000e+00, %3075
  %3126 = fsub fast float -0.000000e+00, %3076
  %3127 = fsub fast float -0.000000e+00, %3077
  %3128 = call float @dx.op.dot3.f32(i32 55, float %2949, float %2950, float %2951, float %3125, float %3126, float %3127)  ; Dot3(ax,ay,az,bx,by,bz)
  %3129 = fsub fast float -0.000000e+00, %3128
  %3130 = call float @dx.op.dot3.f32(i32 55, float %3065, float %3066, float %3067, float %3125, float %3126, float %3127)  ; Dot3(ax,ay,az,bx,by,bz)
  %3131 = fadd fast float %3130, %3036
  %3132 = fadd fast float %3035, %3130
  %3133 = fsub fast float -0.000000e+00, %3132
  %3134 = fcmp ogt float %3128, -0.000000e+00
  %3135 = select i1 %3134, float %3133, float %3131
  %3136 = call float @dx.op.unary.f32(i32 6, float %3129)  ; FAbs(value)
  %3137 = fdiv fast float 1.000000e+00, %3136
  %3138 = fmul fast float %3135, %3137
  %3139 = call float @dx.op.binary.f32(i32 35, float %3138, float 0.000000e+00)  ; FMax(a,b)
  %3140 = fsub fast float -0.000000e+00, %3081
  %3141 = fsub fast float -0.000000e+00, %3082
  %3142 = fsub fast float -0.000000e+00, %3083
  %3143 = call float @dx.op.dot3.f32(i32 55, float %2949, float %2950, float %2951, float %3140, float %3141, float %3142)  ; Dot3(ax,ay,az,bx,by,bz)
  %3144 = fsub fast float -0.000000e+00, %3143
  %3145 = call float @dx.op.dot3.f32(i32 55, float %3065, float %3066, float %3067, float %3140, float %3141, float %3142)  ; Dot3(ax,ay,az,bx,by,bz)
  %3146 = fadd fast float %3145, %3040
  %3147 = fadd fast float %3039, %3145
  %3148 = fsub fast float -0.000000e+00, %3147
  %3149 = fcmp ogt float %3143, -0.000000e+00
  %3150 = select i1 %3149, float %3148, float %3146
  %3151 = call float @dx.op.unary.f32(i32 6, float %3144)  ; FAbs(value)
  %3152 = fdiv fast float 1.000000e+00, %3151
  %3153 = fmul fast float %3150, %3152
  %3154 = call float @dx.op.binary.f32(i32 35, float %3153, float 0.000000e+00)  ; FMax(a,b)
  %3155 = call float @dx.op.binary.f32(i32 36, float %3139, float %3154)  ; FMin(a,b)
  %3156 = call float @dx.op.binary.f32(i32 36, float %3124, float %3155)  ; FMin(a,b)
  %3157 = fmul fast float %3156, %2949
  %3158 = fmul fast float %3156, %2950
  %3159 = fmul fast float %3156, %2951
  %3160 = fadd fast float %3157, %135
  %3161 = fadd fast float %3158, %136
  %3162 = fadd fast float %3159, %137
  %3163 = fsub fast float %3160, %3009
  %3164 = fsub fast float %3161, %3010
  %3165 = fsub fast float %3162, %3011
  br label %3173

; <label>:3166                                    ; preds = %3108
  %3167 = fmul fast float %2949, 8.096000e+03
  %3168 = fmul fast float %2950, 8.096000e+03
  %3169 = fmul fast float %2951, 8.096000e+03
  %3170 = fadd fast float %3167, %135
  %3171 = fadd fast float %3168, %136
  %3172 = fadd fast float %3169, %137
  br label %3173

; <label>:3173                                    ; preds = %3166, %3109
  %3174 = phi float [ %2949, %3166 ], [ %3163, %3109 ]
  %3175 = phi float [ %2950, %3166 ], [ %3164, %3109 ]
  %3176 = phi float [ %2951, %3166 ], [ %3165, %3109 ]
  %3177 = phi float [ %3170, %3166 ], [ %3160, %3109 ]
  %3178 = phi float [ %3171, %3166 ], [ %3161, %3109 ]
  %3179 = phi float [ %3172, %3166 ], [ %3162, %3109 ]
  %3180 = fcmp fast olt float %3028, 1.000000e+00
  br i1 %3180, label %3181, label %3212, !dx.controlflow.hints !80

; <label>:3181                                    ; preds = %3173
  %3182 = fmul fast float %3176, %3026
  %3183 = fmul fast float %3175, %3027
  %3184 = fsub fast float %3182, %3183
  %3185 = fmul fast float %3174, %3027
  %3186 = fmul fast float %3176, %3025
  %3187 = fsub fast float %3185, %3186
  %3188 = fmul fast float %3175, %3025
  %3189 = fmul fast float %3174, %3026
  %3190 = fsub fast float %3188, %3189
  %3191 = fmul fast float %3184, 2.000000e+00
  %3192 = fmul fast float %3187, 2.000000e+00
  %3193 = fmul fast float %3190, 2.000000e+00
  %3194 = fmul fast float %3191, %3028
  %3195 = fmul fast float %3192, %3028
  %3196 = fmul fast float %3193, %3028
  %3197 = fmul fast float %3193, %3026
  %3198 = fmul fast float %3192, %3027
  %3199 = fmul fast float %3191, %3027
  %3200 = fmul fast float %3193, %3025
  %3201 = fmul fast float %3192, %3025
  %3202 = fmul fast float %3191, %3026
  %3203 = fadd fast float %3197, %3174
  %3204 = fadd fast float %3203, %3194
  %3205 = fsub fast float %3204, %3198
  %3206 = fsub fast float %3175, %3200
  %3207 = fadd fast float %3206, %3195
  %3208 = fadd fast float %3207, %3199
  %3209 = fadd fast float %3196, %3176
  %3210 = fsub fast float %3209, %3202
  %3211 = fadd fast float %3210, %3201
  br label %3212

; <label>:3212                                    ; preds = %3181, %3173
  %3213 = phi float [ %3205, %3181 ], [ %3174, %3173 ]
  %3214 = phi float [ %3208, %3181 ], [ %3175, %3173 ]
  %3215 = phi float [ %3211, %3181 ], [ %3176, %3173 ]
  br i1 %3054, label %3247, label %3216

; <label>:3216                                    ; preds = %3212
  %3217 = fmul fast float %2705, 0x400187C840000000
  %3218 = fadd fast float %3217, 0xC00EFC2120000000
  %3219 = fmul fast float %3218, %2705
  %3220 = fadd fast float %3219, 0x3FE5D16340000000
  %3221 = fmul fast float %3220, %2705
  %3222 = fadd fast float %3221, 1.000000e+00
  %3223 = call float @dx.op.unary.f32(i32 7, float %3222)  ; Saturate(value)
  %3224 = fsub fast float %3177, %135
  %3225 = fsub fast float %3178, %136
  %3226 = fsub fast float %3179, %137
  %3227 = fsub fast float %3177, %3009
  %3228 = fsub fast float %3178, %3010
  %3229 = fsub fast float %3179, %3011
  %3230 = call float @dx.op.dot3.f32(i32 55, float %3224, float %3225, float %3226, float %3224, float %3225, float %3226)  ; Dot3(ax,ay,az,bx,by,bz)
  %3231 = call float @dx.op.dot3.f32(i32 55, float %3227, float %3228, float %3229, float %3227, float %3228, float %3229)  ; Dot3(ax,ay,az,bx,by,bz)
  %3232 = fadd fast float %3231, 0x3EE4F8B580000000
  %3233 = fdiv fast float %3230, %3232
  %3234 = bitcast float %3233 to i32
  %3235 = ashr i32 %3234, 1
  %3236 = add nsw i32 %3235, 532487669
  %3237 = bitcast i32 %3236 to float
  %3238 = fmul fast float %3237, %3223
  %3239 = call float @dx.op.unary.f32(i32 7, float %3238)  ; Saturate(value)
  %3240 = fmul fast float %3239, 0x4009981AE0000000
  %3241 = fsub fast float 0x40111BBD80000000, %3240
  %3242 = fmul fast float %3241, %3239
  %3243 = fadd fast float %3242, 0xC0009F6020000000
  %3244 = fmul fast float %3243, %3239
  %3245 = fadd fast float %3244, 1.000000e+00
  %3246 = call float @dx.op.unary.f32(i32 7, float %3245)  ; Saturate(value)
  br label %3250

; <label>:3247                                    ; preds = %3212
  %3248 = icmp ne i32 %3055, -1
  %3249 = zext i1 %3248 to i32
  br label %3250

; <label>:3250                                    ; preds = %3247, %3216
  %3251 = phi float [ %2705, %3247 ], [ %3246, %3216 ]
  %3252 = phi i32 [ %3249, %3247 ], [ 0, %3216 ]
  %3253 = fmul float %3251, 5.000000e+00
  %3254 = fsub float 5.000000e+00, %3253
  %3255 = icmp ne i32 %3252, 0
  %3256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3257 = extractvalue %dx.types.CBufRet.f32 %3256, 3
  %3258 = fadd fast float %3257, %3254
  %3259 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3258)  ; FMax(a,b)
  %3260 = call float @dx.op.unary.f32(i32 6, float %3213)  ; FAbs(value)
  %3261 = call float @dx.op.unary.f32(i32 6, float %3214)  ; FAbs(value)
  %3262 = fadd fast float %3261, %3260
  %3263 = call float @dx.op.unary.f32(i32 6, float %3215)  ; FAbs(value)
  %3264 = fadd fast float %3262, %3263
  %3265 = fcmp fast oeq float %3264, 0.000000e+00
  %3266 = fdiv fast float 1.000000e+00, %3264
  %3267 = select i1 %3265, float 1.000000e+00, float %3266
  %3268 = fmul fast float %3267, %3213
  %3269 = fmul fast float %3267, %3214
  %3270 = call float @dx.op.unary.f32(i32 6, float %3269)  ; FAbs(value)
  %3271 = call float @dx.op.unary.f32(i32 6, float %3268)  ; FAbs(value)
  %3272 = fsub fast float 1.000000e+00, %3270
  %3273 = fsub fast float 1.000000e+00, %3271
  %3274 = fcmp fast oge float %3268, 0.000000e+00
  %3275 = fcmp fast oge float %3269, 0.000000e+00
  %3276 = select i1 %3274, float 1.000000e+00, float -1.000000e+00
  %3277 = select i1 %3275, float 1.000000e+00, float -1.000000e+00
  %3278 = fcmp fast ole float %3215, 0.000000e+00
  %3279 = fmul fast float %3276, %3272
  %3280 = fmul fast float %3277, %3273
  %3281 = select i1 %3278, float %3279, float %3268
  %3282 = select i1 %3278, float %3280, float %3269
  %3283 = fmul fast float %3281, 5.000000e-01
  %3284 = fmul fast float %3282, 5.000000e-01
  %3285 = fadd fast float %3283, 5.000000e-01
  %3286 = fadd fast float %3284, 5.000000e-01
  %3287 = uitofp i32 %3052 to float
  %3288 = call float @dx.op.binary.f32(i32 36, float %3259, float 3.000000e+00)  ; FMin(a,b)
  %3289 = fadd fast float %3288, 2.000000e+00
  %3290 = call float @dx.op.unary.f32(i32 21, float %3289)  ; Exp(value)
  %3291 = extractvalue %dx.types.CBufRet.f32 %3256, 1
  %3292 = fmul fast float %3291, %3290
  %3293 = fmul fast float %3292, 2.000000e+00
  %3294 = fsub fast float 1.000000e+00, %3293
  %3295 = fmul fast float %3285, %3294
  %3296 = fmul fast float %3286, %3294
  %3297 = fadd fast float %3295, %3292
  %3298 = fadd fast float %3296, %3292
  %3299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %3297, float %3298, float %3287, float undef, i32 0, i32 0, i32 undef, float %3259)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3300 = extractvalue %dx.types.ResRet.f32 %3299, 0
  %3301 = extractvalue %dx.types.ResRet.f32 %3299, 1
  %3302 = extractvalue %dx.types.ResRet.f32 %3299, 2
  %3303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3304 = extractvalue %dx.types.CBufRet.f32 %3303, 3
  %3305 = fmul fast float %3304, %3022
  %3306 = call float @dx.op.binary.f32(i32 36, float %2771, float %3305)  ; FMin(a,b)
  %3307 = select i1 %3255, float %3306, float %3305
  %3308 = fmul fast float %3300, %3100
  %3309 = fmul fast float %3308, %3307
  %3310 = fmul fast float %3301, %3100
  %3311 = fmul fast float %3310, %3307
  %3312 = fmul fast float %3302, %3100
  %3313 = fmul fast float %3312, %3307
  %3314 = fadd fast float %3309, %2997
  %3315 = fadd fast float %3311, %2998
  %3316 = fadd fast float %3313, %2999
  %3317 = fsub fast float %3000, %3100
  br label %3102

; <label>:3318                                    ; preds = %3102
  br label %3319

; <label>:3319                                    ; preds = %3318, %2966
  %3320 = phi float [ %2967, %2966 ], [ %3103, %3318 ]
  %3321 = phi float [ %2968, %2966 ], [ %3104, %3318 ]
  %3322 = phi float [ %2969, %2966 ], [ %3105, %3318 ]
  %3323 = phi float [ %2970, %2966 ], [ %3106, %3318 ]
  %3324 = add i32 %2971, 1
  %3325 = icmp ugt i32 %3324, %2963
  br i1 %3325, label %3326, label %2966, !llvm.loop !81

; <label>:3326                                    ; preds = %3319
  br label %3327

; <label>:3327                                    ; preds = %3326, %2948
  %3328 = phi float [ 0.000000e+00, %2948 ], [ %3320, %3326 ]
  %3329 = phi float [ 0.000000e+00, %2948 ], [ %3321, %3326 ]
  %3330 = phi float [ 0.000000e+00, %2948 ], [ %3322, %3326 ]
  %3331 = call float @dx.op.dot3.f32(i32 55, float %3328, float %3329, float %3330, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3332 = select i1 %196, float 0.000000e+00, float %3328
  %3333 = select i1 %196, float %3331, float %3329
  %3334 = select i1 %196, float 0.000000e+00, float %3330
  %3335 = fcmp fast olt float %2901, 0.000000e+00
  %3336 = call float @dx.op.unary.f32(i32 6, float %2901)  ; FAbs(value)
  %3337 = fmul fast float %3336, %2830
  %3338 = fmul fast float %3336, %2831
  %3339 = fmul fast float %3336, %2832
  %3340 = select i1 %3335, float %2830, float %3337
  %3341 = select i1 %3335, float %2831, float %3338
  %3342 = select i1 %3335, float %2832, float %3339
  %3343 = fsub fast float 1.000000e+00, %3336
  %3344 = call float @dx.op.unary.f32(i32 7, float %3343)  ; Saturate(value)
  %3345 = fmul fast float %3344, %3332
  %3346 = fmul fast float %3344, %3333
  %3347 = fmul fast float %3344, %3334
  %3348 = fadd fast float %3340, %3345
  %3349 = fadd fast float %3341, %3346
  %3350 = fadd fast float %3342, %3347
  br label %3351

; <label>:3351                                    ; preds = %3327, %2884
  %3352 = phi float [ %2830, %2884 ], [ %3348, %3327 ]
  %3353 = phi float [ %2831, %2884 ], [ %3349, %3327 ]
  %3354 = phi float [ %2832, %2884 ], [ %3350, %3327 ]
  %3355 = fmul fast float %2890, %2826
  %3356 = fmul fast float %2890, %2827
  %3357 = fmul fast float %2890, %2828
  %3358 = call float @dx.op.dot3.f32(i32 55, float %2696, float %2697, float %2698, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3359 = fcmp fast ogt float %3358, 0x3E7FF19E20000000
  %3360 = fdiv fast float 1.000000e+00, %3358
  %3361 = select i1 %3359, float %3360, float 0.000000e+00
  %3362 = fmul fast float %3361, %2696
  %3363 = fmul fast float %3361, %2697
  %3364 = fmul fast float %3361, %2698
  %3365 = fadd fast float %3362, -1.000000e+00
  %3366 = fadd fast float %3363, -1.000000e+00
  %3367 = fadd fast float %3364, -1.000000e+00
  %3368 = fmul fast float %3365, 5.000000e-01
  %3369 = fmul fast float %3366, 5.000000e-01
  %3370 = fmul fast float %3367, 5.000000e-01
  %3371 = fadd fast float %3368, 1.000000e+00
  %3372 = fadd fast float %3369, 1.000000e+00
  %3373 = fadd fast float %3370, 1.000000e+00
  %3374 = call float @dx.op.binary.f32(i32 35, float %2709, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3375 = fdiv fast float %868, %3374
  %3376 = fcmp fast olt float %1466, 1.270000e+02
  %3377 = fcmp fast olt float %1467, 1.270000e+02
  %3378 = fcmp fast olt float %1468, 1.270000e+02
  %3379 = fmul fast float %1466, 0xBFF7154760000000
  %3380 = fmul fast float %3379, %3375
  %3381 = fmul fast float %1467, 0xBFF7154760000000
  %3382 = fmul fast float %3381, %3375
  %3383 = fmul fast float %1468, 0xBFF7154760000000
  %3384 = fmul fast float %3383, %3375
  %3385 = call float @dx.op.unary.f32(i32 21, float %3380)  ; Exp(value)
  %3386 = call float @dx.op.unary.f32(i32 21, float %3382)  ; Exp(value)
  %3387 = call float @dx.op.unary.f32(i32 21, float %3384)  ; Exp(value)
  %3388 = call float @dx.op.unary.f32(i32 7, float %3385)  ; Saturate(value)
  %3389 = call float @dx.op.unary.f32(i32 7, float %3386)  ; Saturate(value)
  %3390 = call float @dx.op.unary.f32(i32 7, float %3387)  ; Saturate(value)
  %3391 = select i1 %3376, float %3388, float 0.000000e+00
  %3392 = select i1 %3377, float %3389, float 0.000000e+00
  %3393 = select i1 %3378, float %3390, float 0.000000e+00
  %3394 = fmul fast float %3391, %2890
  %3395 = fmul fast float %3392, %2890
  %3396 = fmul fast float %3393, %2890
  %3397 = fadd fast float %3394, -1.000000e+00
  %3398 = fadd fast float %3395, -1.000000e+00
  %3399 = fadd fast float %3396, -1.000000e+00
  %3400 = fmul fast float %3352, %2885
  %3401 = fmul fast float %3353, %2886
  %3402 = fmul fast float %3354, %2887
  %3403 = fsub fast float 1.000000e+00, %2709
  %3404 = bitcast float %3403 to i32
  %3405 = sitofp i32 %3404 to float
  %3406 = fmul fast float %3405, 5.000000e+00
  %3407 = fadd fast float %3406, 0xC1EFBF8940000000
  %3408 = fptosi float %3407 to i32
  %3409 = bitcast i32 %3408 to float
  %3410 = fmul fast float %3409, %1417
  %3411 = fmul fast float %2826, %3410
  %3412 = fmul fast float %3411, %2890
  %3413 = fmul fast float %3412, %3371
  %3414 = fmul fast float %2827, %3410
  %3415 = fmul fast float %3414, %2890
  %3416 = fmul fast float %3415, %3372
  %3417 = fmul fast float %2828, %3410
  %3418 = fmul fast float %3417, %2890
  %3419 = fmul fast float %3418, %3373
  %3420 = fmul fast float %3355, %1438
  %3421 = fmul fast float %3356, %1438
  %3422 = fmul fast float %3357, %1438
  %3423 = fadd fast float %3400, %1419
  %3424 = fadd fast float %3423, %3413
  %3425 = fmul fast float %3424, %1438
  %3426 = fadd fast float %3401, %1420
  %3427 = fadd fast float %3426, %3416
  %3428 = fmul fast float %3427, %1438
  %3429 = fadd fast float %3402, %1421
  %3430 = fadd fast float %3429, %3419
  %3431 = fmul fast float %3430, %1438
  %3432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3433 = extractvalue %dx.types.CBufRet.f32 %3432, 3
  %3434 = fcmp fast oeq float %3433, 0.000000e+00
  br i1 %3434, label %4913, label %3435

; <label>:3435                                    ; preds = %3351
  %3436 = extractvalue %dx.types.CBufRet.f32 %3432, 0
  %3437 = extractvalue %dx.types.CBufRet.f32 %3432, 1
  %3438 = extractvalue %dx.types.CBufRet.f32 %3432, 2
  %3439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3440 = extractvalue %dx.types.CBufRet.f32 %3439, 0
  %3441 = extractvalue %dx.types.CBufRet.f32 %3439, 1
  %3442 = extractvalue %dx.types.CBufRet.f32 %3439, 2
  %3443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3444 = extractvalue %dx.types.CBufRet.f32 %3443, 0
  %3445 = extractvalue %dx.types.CBufRet.f32 %3443, 1
  %3446 = call float @dx.op.dot3.f32(i32 55, float %3440, float %3441, float %3442, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3447 = select i1 %196, float %3444, float %3440
  %3448 = select i1 %196, float %3446, float %3441
  %3449 = select i1 %196, float %3445, float %3442
  %3450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3451 = extractvalue %dx.types.CBufRet.f32 %3450, 2
  %3452 = fmul fast float %3451, %82
  %3453 = fmul fast float %3451, %83
  %3454 = fmul fast float %3451, %84
  %3455 = fadd fast float %3452, %135
  %3456 = fadd fast float %3453, %136
  %3457 = fadd fast float %3454, %137
  %3458 = fcmp fast olt float %3433, 0.000000e+00
  br i1 %3458, label %4554, label %3459

; <label>:3459                                    ; preds = %3435
  %3460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3461 = extractvalue %dx.types.CBufRet.f32 %3460, 0
  %3462 = extractvalue %dx.types.CBufRet.f32 %3460, 1
  %3463 = extractvalue %dx.types.CBufRet.f32 %3460, 2
  %3464 = extractvalue %dx.types.CBufRet.f32 %3460, 3
  %3465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3466 = extractvalue %dx.types.CBufRet.f32 %3465, 0
  %3467 = extractvalue %dx.types.CBufRet.f32 %3465, 1
  %3468 = extractvalue %dx.types.CBufRet.f32 %3465, 2
  %3469 = extractvalue %dx.types.CBufRet.f32 %3465, 3
  %3470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3471 = extractvalue %dx.types.CBufRet.f32 %3470, 0
  %3472 = extractvalue %dx.types.CBufRet.f32 %3470, 1
  %3473 = extractvalue %dx.types.CBufRet.f32 %3470, 2
  %3474 = extractvalue %dx.types.CBufRet.f32 %3470, 3
  %3475 = fmul fast float %3461, %3455
  %3476 = call float @dx.op.tertiary.f32(i32 46, float %3456, float %3462, float %3475)  ; FMad(a,b,c)
  %3477 = call float @dx.op.tertiary.f32(i32 46, float %3457, float %3463, float %3476)  ; FMad(a,b,c)
  %3478 = fadd fast float %3477, %3464
  %3479 = fmul fast float %3466, %3455
  %3480 = call float @dx.op.tertiary.f32(i32 46, float %3456, float %3467, float %3479)  ; FMad(a,b,c)
  %3481 = call float @dx.op.tertiary.f32(i32 46, float %3457, float %3468, float %3480)  ; FMad(a,b,c)
  %3482 = fadd fast float %3481, %3469
  %3483 = fmul fast float %3471, %3455
  %3484 = call float @dx.op.tertiary.f32(i32 46, float %3456, float %3472, float %3483)  ; FMad(a,b,c)
  %3485 = call float @dx.op.tertiary.f32(i32 46, float %3457, float %3473, float %3484)  ; FMad(a,b,c)
  %3486 = fadd fast float %3485, %3474
  %3487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3488 = extractvalue %dx.types.CBufRet.f32 %3487, 0
  %3489 = extractvalue %dx.types.CBufRet.f32 %3487, 1
  %3490 = extractvalue %dx.types.CBufRet.f32 %3487, 3
  %3491 = fmul fast float %3490, %3478
  %3492 = fmul fast float %3490, %3482
  %3493 = fadd fast float %3491, %3488
  %3494 = fadd fast float %3492, %3489
  %3495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3496 = extractvalue %dx.types.CBufRet.f32 %3495, 0
  %3497 = extractvalue %dx.types.CBufRet.f32 %3495, 1
  %3498 = extractvalue %dx.types.CBufRet.f32 %3495, 3
  %3499 = fmul fast float %3498, %3478
  %3500 = fmul fast float %3498, %3482
  %3501 = fadd fast float %3499, %3496
  %3502 = fadd fast float %3500, %3497
  %3503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3504 = extractvalue %dx.types.CBufRet.f32 %3503, 1
  %3505 = fsub fast float %3504, %3486
  %3506 = extractvalue %dx.types.CBufRet.f32 %3503, 2
  %3507 = fmul fast float %3505, %3506
  %3508 = fsub fast float 1.000000e+00, %3507
  %3509 = call float @dx.op.unary.f32(i32 7, float %3508)  ; Saturate(value)
  %3510 = extractvalue %dx.types.CBufRet.f32 %3495, 2
  %3511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3512 = extractvalue %dx.types.CBufRet.f32 %3511, 2
  %3513 = fadd fast float %3512, %3510
  %3514 = fcmp fast ogt float %3513, 0.000000e+00
  br i1 %3514, label %3515, label %3539

; <label>:3515                                    ; preds = %3459
  %3516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3517 = extractvalue %dx.types.CBufRet.f32 %3516, 0
  %3518 = extractvalue %dx.types.CBufRet.f32 %3516, 1
  %3519 = fsub fast float %3501, %3517
  %3520 = fsub fast float %3502, %3518
  %3521 = fcmp fast olt float %3519, 0.000000e+00
  %3522 = fcmp fast olt float %3520, 0.000000e+00
  %3523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3524 = extractvalue %dx.types.CBufRet.f32 %3523, 0
  %3525 = extractvalue %dx.types.CBufRet.f32 %3523, 1
  %3526 = extractvalue %dx.types.CBufRet.f32 %3523, 2
  %3527 = extractvalue %dx.types.CBufRet.f32 %3523, 3
  %3528 = select i1 %3521, float %3524, float %3526
  %3529 = select i1 %3522, float %3525, float %3527
  %3530 = fmul fast float %3528, %3519
  %3531 = fmul fast float %3529, %3520
  %3532 = call float @dx.op.unary.f32(i32 6, float %3530)  ; FAbs(value)
  %3533 = call float @dx.op.unary.f32(i32 6, float %3531)  ; FAbs(value)
  %3534 = extractvalue %dx.types.CBufRet.f32 %3450, 0
  %3535 = call float @dx.op.binary.f32(i32 35, float %3532, float %3533)  ; FMax(a,b)
  %3536 = fsub fast float %3534, %3535
  %3537 = call float @dx.op.unary.f32(i32 7, float %3536)  ; Saturate(value)
  %3538 = fmul fast float %3537, %3509
  br label %3539

; <label>:3539                                    ; preds = %3515, %3459
  %3540 = phi float [ %3538, %3515 ], [ 0.000000e+00, %3459 ]
  %3541 = extractvalue %dx.types.CBufRet.f32 %3487, 2
  %3542 = extractvalue %dx.types.CBufRet.f32 %3511, 1
  %3543 = fadd fast float %3542, %3541
  %3544 = fcmp fast ogt float %3543, 0.000000e+00
  %3545 = extractvalue %dx.types.CBufRet.f32 %3450, 0
  br i1 %3544, label %3546, label %3569

; <label>:3546                                    ; preds = %3539
  %3547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3548 = extractvalue %dx.types.CBufRet.f32 %3547, 0
  %3549 = extractvalue %dx.types.CBufRet.f32 %3547, 1
  %3550 = fsub fast float %3493, %3548
  %3551 = fsub fast float %3494, %3549
  %3552 = fcmp fast olt float %3550, 0.000000e+00
  %3553 = fcmp fast olt float %3551, 0.000000e+00
  %3554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3555 = extractvalue %dx.types.CBufRet.f32 %3554, 0
  %3556 = extractvalue %dx.types.CBufRet.f32 %3554, 1
  %3557 = extractvalue %dx.types.CBufRet.f32 %3554, 2
  %3558 = extractvalue %dx.types.CBufRet.f32 %3554, 3
  %3559 = select i1 %3552, float %3555, float %3557
  %3560 = select i1 %3553, float %3556, float %3558
  %3561 = fmul fast float %3559, %3550
  %3562 = fmul fast float %3560, %3551
  %3563 = call float @dx.op.unary.f32(i32 6, float %3561)  ; FAbs(value)
  %3564 = call float @dx.op.unary.f32(i32 6, float %3562)  ; FAbs(value)
  %3565 = call float @dx.op.binary.f32(i32 35, float %3563, float %3564)  ; FMax(a,b)
  %3566 = fsub fast float %3545, %3565
  %3567 = call float @dx.op.unary.f32(i32 7, float %3566)  ; Saturate(value)
  %3568 = fmul fast float %3567, %3509
  br label %3569

; <label>:3569                                    ; preds = %3546, %3539
  %3570 = phi float [ %3568, %3546 ], [ 0.000000e+00, %3539 ]
  %3571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3572 = extractvalue %dx.types.CBufRet.f32 %3571, 1
  %3573 = call float @dx.op.unary.f32(i32 7, float %3572)  ; Saturate(value)
  %3574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3575 = extractvalue %dx.types.CBufRet.f32 %3574, 0
  %3576 = extractvalue %dx.types.CBufRet.f32 %3574, 1
  %3577 = fsub fast float %3478, %3575
  %3578 = fsub fast float %3482, %3576
  %3579 = fcmp fast olt float %3577, 0.000000e+00
  %3580 = fcmp fast olt float %3578, 0.000000e+00
  %3581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3582 = extractvalue %dx.types.CBufRet.f32 %3581, 0
  %3583 = extractvalue %dx.types.CBufRet.f32 %3581, 1
  %3584 = extractvalue %dx.types.CBufRet.f32 %3581, 2
  %3585 = extractvalue %dx.types.CBufRet.f32 %3581, 3
  %3586 = select i1 %3579, float %3582, float %3584
  %3587 = select i1 %3580, float %3583, float %3585
  %3588 = fmul fast float %3586, %3577
  %3589 = fmul fast float %3587, %3578
  %3590 = call float @dx.op.unary.f32(i32 6, float %3588)  ; FAbs(value)
  %3591 = call float @dx.op.unary.f32(i32 6, float %3589)  ; FAbs(value)
  %3592 = call float @dx.op.binary.f32(i32 35, float %3590, float %3591)  ; FMax(a,b)
  %3593 = fsub fast float %3545, %3592
  %3594 = call float @dx.op.unary.f32(i32 7, float %3593)  ; Saturate(value)
  %3595 = call float @dx.op.binary.f32(i32 36, float %3594, float %3573)  ; FMin(a,b)
  %3596 = fmul fast float %3595, %3509
  %3597 = fsub fast float %3570, %3596
  %3598 = fsub fast float %3540, %3570
  %3599 = fsub fast float %3598, %3596
  %3600 = call float @dx.op.binary.f32(i32 35, float %3570, float %3540)  ; FMax(a,b)
  %3601 = call float @dx.op.binary.f32(i32 35, float %3596, float %3600)  ; FMax(a,b)
  %3602 = fcmp fast olt float %3601, 1.000000e+00
  br i1 %3602, label %3603, label %4001, !dx.controlflow.hints !83

; <label>:3603                                    ; preds = %3569
  %3604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3605 = extractvalue %dx.types.CBufRet.f32 %3604, 0
  %3606 = fcmp fast une float %3605, 0.000000e+00
  br i1 %3606, label %3607, label %4001, !dx.controlflow.hints !84

; <label>:3607                                    ; preds = %3603
  %3608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3609 = extractvalue %dx.types.CBufRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.CBufRet.f32 %3608, 1
  %3611 = extractvalue %dx.types.CBufRet.f32 %3608, 2
  %3612 = extractvalue %dx.types.CBufRet.f32 %3608, 3
  %3613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3614 = extractvalue %dx.types.CBufRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.CBufRet.f32 %3613, 1
  %3616 = extractvalue %dx.types.CBufRet.f32 %3613, 2
  %3617 = extractvalue %dx.types.CBufRet.f32 %3613, 3
  %3618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3619 = extractvalue %dx.types.CBufRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.CBufRet.f32 %3618, 1
  %3621 = extractvalue %dx.types.CBufRet.f32 %3618, 2
  %3622 = extractvalue %dx.types.CBufRet.f32 %3618, 3
  %3623 = fmul fast float %3609, %3455
  %3624 = call float @dx.op.tertiary.f32(i32 46, float %3456, float %3610, float %3623)  ; FMad(a,b,c)
  %3625 = call float @dx.op.tertiary.f32(i32 46, float %3457, float %3611, float %3624)  ; FMad(a,b,c)
  %3626 = fadd fast float %3625, %3612
  %3627 = fmul fast float %3614, %3455
  %3628 = call float @dx.op.tertiary.f32(i32 46, float %3456, float %3615, float %3627)  ; FMad(a,b,c)
  %3629 = call float @dx.op.tertiary.f32(i32 46, float %3457, float %3616, float %3628)  ; FMad(a,b,c)
  %3630 = fadd fast float %3629, %3617
  %3631 = fmul fast float %3619, %3455
  %3632 = call float @dx.op.tertiary.f32(i32 46, float %3456, float %3620, float %3631)  ; FMad(a,b,c)
  %3633 = call float @dx.op.tertiary.f32(i32 46, float %3457, float %3621, float %3632)  ; FMad(a,b,c)
  %3634 = fadd fast float %3633, %3622
  %3635 = fcmp fast oge float %3626, 1.000000e+00
  %3636 = fcmp fast oge float %3630, 1.000000e+00
  %3637 = or i1 %3635, %3636
  %3638 = fcmp fast olt float %3626, 0.000000e+00
  %3639 = fcmp fast olt float %3630, 0.000000e+00
  %3640 = or i1 %3638, %3639
  %3641 = or i1 %3637, %3640
  br i1 %3641, label %4001, label %3642, !dx.controlflow.hints !85

; <label>:3642                                    ; preds = %3607
  %3643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3644 = extractvalue %dx.types.CBufRet.f32 %3643, 0
  %3645 = extractvalue %dx.types.CBufRet.f32 %3643, 1
  %3646 = extractvalue %dx.types.CBufRet.f32 %3643, 2
  %3647 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3648 = extractvalue %dx.types.CBufRet.i32 %3647, 2
  %3649 = uitofp i32 %3648 to float
  %3650 = extractvalue %dx.types.CBufRet.i32 %3647, 3
  %3651 = uitofp i32 %3650 to float
  %3652 = extractvalue %dx.types.CBufRet.f32 %3643, 3
  %3653 = fmul fast float %3652, 2.000000e+00
  %3654 = fsub fast float %3626, %3644
  %3655 = fsub fast float %3630, %3645
  %3656 = fmul fast float %3653, %3654
  %3657 = fmul fast float %3653, %3655
  %3658 = fdiv fast float 1.000000e+00, %3438
  %3659 = fmul fast float %3657, %3658
  %3660 = call float @dx.op.unary.f32(i32 6, float %3659)  ; FAbs(value)
  %3661 = fmul fast float %3646, %3457
  %3662 = fmul fast float %3661, %3653
  %3663 = call float @dx.op.unary.f32(i32 6, float %3662)  ; FAbs(value)
  %3664 = call float @dx.op.unary.f32(i32 6, float %3656)  ; FAbs(value)
  %3665 = call float @dx.op.binary.f32(i32 35, float %3663, float %3660)  ; FMax(a,b)
  %3666 = call float @dx.op.binary.f32(i32 35, float %3664, float %3665)  ; FMax(a,b)
  %3667 = fmul fast float %3666, 2.000000e+00
  %3668 = call float @dx.op.unary.f32(i32 23, float %3667)  ; Log(value)
  %3669 = call float @dx.op.binary.f32(i32 35, float %3668, float %3649)  ; FMax(a,b)
  %3670 = call float @dx.op.unary.f32(i32 22, float %3669)  ; Frc(value)
  %3671 = fadd fast float %3670, 0xBFEA666660000000
  %3672 = fmul fast float %3671, 8.000000e+00
  %3673 = call float @dx.op.unary.f32(i32 7, float %3672)  ; Saturate(value)
  %3674 = call float @dx.op.unary.f32(i32 27, float %3669)  ; Round_ni(value)
  %3675 = fadd fast float %3674, %3673
  %3676 = call float @dx.op.binary.f32(i32 36, float %3675, float %3651)  ; FMin(a,b)
  %3677 = call float @dx.op.unary.f32(i32 27, float %3676)  ; Round_ni(value)
  %3678 = fsub fast float -0.000000e+00, %3677
  %3679 = call float @dx.op.unary.f32(i32 21, float %3678)  ; Exp(value)
  %3680 = fmul fast float %3679, %3653
  %3681 = fmul fast float %3680, %3626
  %3682 = fmul fast float %3680, %3630
  %3683 = fmul fast float %3681, 2.500000e-01
  %3684 = fmul fast float %3682, 2.500000e-01
  %3685 = fadd fast float %3683, 5.000000e-01
  %3686 = fadd fast float %3684, 5.000000e-01
  %3687 = fsub fast float %3651, %3649
  %3688 = fptoui float %3687 to i32
  %3689 = add i32 %3688, 320
  %3690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %3689)  ; CBufferLoadLegacy(handle,regIndex)
  %3691 = extractvalue %dx.types.CBufRet.f32 %3690, 0
  %3692 = extractvalue %dx.types.CBufRet.f32 %3690, 1
  %3693 = fcmp fast une float %3676, %3651
  %3694 = fsub fast float %3626, %3691
  %3695 = fsub fast float %3630, %3692
  %3696 = call float @dx.op.unary.f32(i32 6, float %3694)  ; FAbs(value)
  %3697 = call float @dx.op.unary.f32(i32 6, float %3695)  ; FAbs(value)
  %3698 = fmul fast float %3696, %3680
  %3699 = fmul fast float %3697, %3680
  %3700 = fcmp fast olt float %3698, 1.000000e+00
  %3701 = fcmp fast olt float %3699, 1.000000e+00
  %3702 = and i1 %3700, %3701
  %3703 = or i1 %3693, %3702
  br i1 %3703, label %3704, label %4001, !dx.controlflow.hints !86

; <label>:3704                                    ; preds = %3642
  %3705 = fmul fast float %3682, 5.000000e-01
  %3706 = fmul fast float %3681, 5.000000e-01
  %3707 = fadd fast float %3705, 5.000000e-01
  %3708 = fadd fast float %3706, 5.000000e-01
  %3709 = sitofp i32 %3648 to float
  %3710 = fsub fast float %3676, %3709
  %3711 = call float @dx.op.unary.f32(i32 27, float %3710)  ; Round_ni(value)
  %3712 = call float @dx.op.unary.f32(i32 22, float %3676)  ; Frc(value)
  %3713 = call float @dx.op.unary.f32(i32 22, float %3708)  ; Frc(value)
  %3714 = call float @dx.op.unary.f32(i32 22, float %3707)  ; Frc(value)
  %3715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %3713, float %3714, float %3711, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3716 = extractvalue %dx.types.ResRet.f32 %3715, 0
  %3717 = extractvalue %dx.types.ResRet.f32 %3715, 1
  %3718 = extractvalue %dx.types.ResRet.f32 %3715, 2
  %3719 = extractvalue %dx.types.ResRet.f32 %3715, 3
  %3720 = fcmp fast ogt float %3712, 0.000000e+00
  br i1 %3720, label %3721, label %3742, !dx.controlflow.hints !87

; <label>:3721                                    ; preds = %3704
  %3722 = fadd fast float %3711, 1.000000e+00
  %3723 = call float @dx.op.unary.f32(i32 22, float %3685)  ; Frc(value)
  %3724 = call float @dx.op.unary.f32(i32 22, float %3686)  ; Frc(value)
  %3725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %3723, float %3724, float %3722, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3726 = extractvalue %dx.types.ResRet.f32 %3725, 0
  %3727 = extractvalue %dx.types.ResRet.f32 %3725, 1
  %3728 = extractvalue %dx.types.ResRet.f32 %3725, 2
  %3729 = extractvalue %dx.types.ResRet.f32 %3725, 3
  %3730 = fsub fast float %3726, %3716
  %3731 = fsub fast float %3727, %3717
  %3732 = fsub fast float %3728, %3718
  %3733 = fsub fast float %3729, %3719
  %3734 = fmul fast float %3730, %3712
  %3735 = fmul fast float %3731, %3712
  %3736 = fmul fast float %3732, %3712
  %3737 = fmul fast float %3733, %3712
  %3738 = fadd fast float %3734, %3716
  %3739 = fadd fast float %3735, %3717
  %3740 = fadd fast float %3736, %3718
  %3741 = fadd fast float %3737, %3719
  br label %3742

; <label>:3742                                    ; preds = %3721, %3704
  %3743 = phi float [ %3738, %3721 ], [ %3716, %3704 ]
  %3744 = phi float [ %3739, %3721 ], [ %3717, %3704 ]
  %3745 = phi float [ %3740, %3721 ], [ %3718, %3704 ]
  %3746 = phi float [ %3741, %3721 ], [ %3719, %3704 ]
  %3747 = fadd fast float %3743, -5.000000e-01
  %3748 = fadd fast float %3745, -5.000000e-01
  %3749 = fmul fast float %3747, 0xBFD5555560000000
  %3750 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3748, float %3749)  ; FMad(a,b,c)
  %3751 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3744, float 0.000000e+00)  ; FMad(a,b,c)
  %3752 = fadd fast float %3751, %3746
  %3753 = fmul fast float %3747, -7.500000e-01
  %3754 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3748, float %3753)  ; FMad(a,b,c)
  %3755 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3744, float 0.000000e+00)  ; FMad(a,b,c)
  %3756 = fadd fast float %3755, %3746
  %3757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3758 = extractvalue %dx.types.CBufRet.f32 %3757, 0
  %3759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3760 = extractvalue %dx.types.CBufRet.f32 %3759, 0
  %3761 = extractvalue %dx.types.CBufRet.f32 %3759, 1
  %3762 = extractvalue %dx.types.CBufRet.f32 %3759, 2
  %3763 = extractvalue %dx.types.CBufRet.f32 %3759, 3
  %3764 = fsub fast float %3760, %3750
  %3765 = fsub fast float %3761, %3752
  %3766 = fsub fast float %3762, %3754
  %3767 = fsub fast float %3763, %3756
  %3768 = fmul fast float %3764, %3758
  %3769 = fmul fast float %3765, %3758
  %3770 = fmul fast float %3766, %3758
  %3771 = fmul fast float %3767, %3758
  %3772 = fadd fast float %3768, %3750
  %3773 = fadd fast float %3769, %3752
  %3774 = fadd fast float %3770, %3754
  %3775 = fadd fast float %3771, %3756
  %3776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3777 = extractvalue %dx.types.ResRet.i32 %3776, 0
  %3778 = and i32 %3777, 536870911
  %3779 = uitofp i32 %3778 to float
  %3780 = fmul fast float %3779, %3626
  %3781 = fmul fast float %3779, %3630
  %3782 = fptoui float %3780 to i32
  %3783 = fptoui float %3781 to i32
  %3784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3785 = extractvalue %dx.types.ResRet.i32 %3784, 0
  %3786 = and i32 %3785, 31
  %3787 = lshr i32 %3782, %3786
  %3788 = lshr i32 %3783, %3786
  %3789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3790 = extractvalue %dx.types.ResRet.i32 %3789, 0
  %3791 = and i32 %3790, 31
  %3792 = shl i32 1, %3791
  %3793 = call i32 @dx.op.binary.i32(i32 40, i32 %3792, i32 4)  ; UMin(a,b)
  %3794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3795 = extractvalue %dx.types.ResRet.i32 %3794, 0
  %3796 = extractvalue %dx.types.ResRet.i32 %3794, 1
  %3797 = icmp eq i32 %3793, 0
  br i1 %3797, label %3839, label %3798

; <label>:3798                                    ; preds = %3742
  br label %3799

; <label>:3799                                    ; preds = %3827, %3798
  %3800 = phi i32 [ %3830, %3827 ], [ 0, %3798 ]
  %3801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3802 = extractvalue %dx.types.ResRet.i32 %3801, 0
  %3803 = lshr i32 %3802, 16
  %3804 = and i32 %3803, 31
  %3805 = shl i32 %3788, %3804
  %3806 = add i32 %3805, %3787
  %3807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3808 = extractvalue %dx.types.ResRet.i32 %3807, 0
  %3809 = and i32 %3808, 31
  %3810 = shl i32 %3806, %3809
  %3811 = add i32 %3810, %3800
  %3812 = shl i32 %3811, 2
  %3813 = add i32 %3812, 32
  %3814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3815 = extractvalue %dx.types.ResRet.i32 %3814, 0
  %3816 = icmp slt i32 %3815, 0
  %3817 = getelementptr [12 x float], [12 x float]* %68, i32 0, i32 %3800
  %3818 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %3800
  %3819 = bitcast float* %3817 to i32*
  %3820 = bitcast float* %3818 to i32*
  br i1 %3816, label %3821, label %3827

; <label>:3821                                    ; preds = %3799
  %3822 = and i32 %3815, 1073741823
  %3823 = add nuw nsw i32 %3822, 20
  %3824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3823, i32 undef)  ; BufferLoad(srv,index,wot)
  %3825 = extractvalue %dx.types.ResRet.i32 %3824, 0
  %3826 = extractvalue %dx.types.ResRet.i32 %3824, 1
  br label %3827

; <label>:3827                                    ; preds = %3821, %3799
  %3828 = phi i32 [ %3825, %3821 ], [ %3795, %3799 ]
  %3829 = phi i32 [ %3826, %3821 ], [ %3796, %3799 ]
  store i32 %3828, i32* %3819, align 4
  store i32 %3829, i32* %3820, align 4
  %3830 = add nuw i32 %3800, 1
  %3831 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3832 = extractvalue %dx.types.CBufRet.i32 %3831, 2
  %3833 = icmp eq i32 %3832, 0
  %3834 = icmp ugt i32 %3815, -1073741825
  %3835 = and i1 %3834, %3833
  %3836 = icmp ult i32 %3830, %3793
  %3837 = and i1 %3835, %3836
  br i1 %3837, label %3799, label %3838

; <label>:3838                                    ; preds = %3827
  br label %3839

; <label>:3839                                    ; preds = %3838, %3742
  %3840 = phi i32 [ 0, %3742 ], [ %3830, %3838 ]
  %3841 = extractvalue %dx.types.CBufRet.f32 %3604, 2
  %3842 = fptoui float %3841 to i32
  %3843 = icmp eq i32 %3842, 0
  br i1 %3843, label %3895, label %3844

; <label>:3844                                    ; preds = %3839
  br label %3845

; <label>:3845                                    ; preds = %3890, %3844
  %3846 = phi i32 [ %3891, %3890 ], [ %3840, %3844 ]
  %3847 = phi i32 [ %3892, %3890 ], [ 0, %3844 ]
  %3848 = lshr i32 %3847, 2
  %3849 = and i32 %3847, 3
  %3850 = add nuw nsw i32 %3848, 83
  %3851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 %3850)  ; CBufferLoadLegacy(handle,regIndex)
  %3852 = extractvalue %dx.types.CBufRet.i32 %3851, 0
  %3853 = extractvalue %dx.types.CBufRet.i32 %3851, 1
  %3854 = extractvalue %dx.types.CBufRet.i32 %3851, 2
  %3855 = extractvalue %dx.types.CBufRet.i32 %3851, 3
  %3856 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 0
  store i32 %3852, i32* %3856, align 4
  %3857 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 1
  store i32 %3853, i32* %3857, align 4
  %3858 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 2
  store i32 %3854, i32* %3858, align 4
  %3859 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 3
  store i32 %3855, i32* %3859, align 4
  %3860 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 %3849
  %3861 = load i32, i32* %3860, align 4, !tbaa !88, !noalias !92
  %3862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.i32 %3862, 0
  %3864 = lshr i32 %3863, 16
  %3865 = and i32 %3864, 31
  %3866 = shl i32 %3788, %3865
  %3867 = add i32 %3866, %3787
  %3868 = shl i32 %3867, 2
  %3869 = add i32 %3868, %3861
  %3870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3869, i32 undef)  ; BufferLoad(srv,index,wot)
  %3871 = extractvalue %dx.types.ResRet.i32 %3870, 0
  %3872 = icmp eq i32 %3871, 0
  br i1 %3872, label %3890, label %3873

; <label>:3873                                    ; preds = %3845
  %3874 = icmp slt i32 %3871, 0
  %3875 = getelementptr [12 x float], [12 x float]* %68, i32 0, i32 %3846
  %3876 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %3846
  %3877 = bitcast float* %3875 to i32*
  %3878 = bitcast float* %3876 to i32*
  br i1 %3874, label %3879, label %3886

; <label>:3879                                    ; preds = %3873
  %3880 = and i32 %3871, 1073741823
  %3881 = add i32 %3861, 20
  %3882 = add i32 %3881, %3880
  %3883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3882, i32 undef)  ; BufferLoad(srv,index,wot)
  %3884 = extractvalue %dx.types.ResRet.i32 %3883, 0
  %3885 = extractvalue %dx.types.ResRet.i32 %3883, 1
  br label %3886

; <label>:3886                                    ; preds = %3879, %3873
  %3887 = phi i32 [ %3884, %3879 ], [ %3795, %3873 ]
  %3888 = phi i32 [ %3885, %3879 ], [ %3796, %3873 ]
  store i32 %3887, i32* %3877, align 4
  store i32 %3888, i32* %3878, align 4
  %3889 = add i32 %3846, 1
  br label %3890

; <label>:3890                                    ; preds = %3886, %3845
  %3891 = phi i32 [ %3846, %3845 ], [ %3889, %3886 ]
  %3892 = add nuw i32 %3847, 1
  %3893 = icmp eq i32 %3892, %3842
  br i1 %3893, label %3894, label %3845

; <label>:3894                                    ; preds = %3890
  br label %3895

; <label>:3895                                    ; preds = %3894, %3839
  %3896 = phi i32 [ %3840, %3839 ], [ %3891, %3894 ]
  %3897 = icmp eq i32 %3896, 1
  %3898 = getelementptr [12 x float], [12 x float]* %68, i32 0, i32 0
  %3899 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 0
  br i1 %3897, label %3900, label %3903

; <label>:3900                                    ; preds = %3895
  %3901 = load float, float* %3898, align 4
  %3902 = load float, float* %3899, align 4
  br label %3930

; <label>:3903                                    ; preds = %3895
  %3904 = load float, float* %3898, align 4
  %3905 = load float, float* %3899, align 4
  %3906 = fdiv fast float 1.000000e+00, %3905
  %3907 = fsub fast float %3904, %3906
  %3908 = icmp ugt i32 %3896, 1
  br i1 %3908, label %3909, label %3925

; <label>:3909                                    ; preds = %3903
  br label %3910

; <label>:3910                                    ; preds = %3910, %3909
  %3911 = phi float [ %3920, %3910 ], [ %3907, %3909 ]
  %3912 = phi float [ %3921, %3910 ], [ %3904, %3909 ]
  %3913 = phi i32 [ %3922, %3910 ], [ 1, %3909 ]
  %3914 = getelementptr [12 x float], [12 x float]* %68, i32 0, i32 %3913
  %3915 = load float, float* %3914, align 4
  %3916 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %3913
  %3917 = load float, float* %3916, align 4
  %3918 = fdiv fast float 1.000000e+00, %3917
  %3919 = fsub fast float %3915, %3918
  %3920 = call float @dx.op.binary.f32(i32 36, float %3911, float %3919)  ; FMin(a,b)
  %3921 = call float @dx.op.binary.f32(i32 35, float %3912, float %3915)  ; FMax(a,b)
  %3922 = add nuw i32 %3913, 1
  %3923 = icmp eq i32 %3922, %3896
  br i1 %3923, label %3924, label %3910

; <label>:3924                                    ; preds = %3910
  br label %3925

; <label>:3925                                    ; preds = %3924, %3903
  %3926 = phi float [ %3907, %3903 ], [ %3920, %3924 ]
  %3927 = phi float [ %3904, %3903 ], [ %3921, %3924 ]
  %3928 = fsub fast float %3927, %3926
  %3929 = fdiv fast float 1.000000e+00, %3928
  br label %3930

; <label>:3930                                    ; preds = %3925, %3900
  %3931 = phi float [ %3901, %3900 ], [ %3927, %3925 ]
  %3932 = phi float [ %3902, %3900 ], [ %3929, %3925 ]
  %3933 = fadd fast float %3634, %3931
  %3934 = fmul fast float %3933, %3932
  %3935 = call float @dx.op.unary.f32(i32 7, float %3934)  ; Saturate(value)
  %3936 = fmul fast float %3935, 2.000000e+00
  %3937 = fsub fast float 1.000000e+00, %3936
  %3938 = fmul fast float %3772, %3772
  %3939 = fsub fast float %3773, %3938
  %3940 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3939)  ; FMax(a,b)
  %3941 = fdiv fast float 1.000000e+00, %3940
  %3942 = fmul fast float %3773, %3772
  %3943 = fsub fast float %3774, %3942
  %3944 = fsub fast float %3937, %3772
  %3945 = fmul fast float %3937, %3937
  %3946 = fsub fast float %3945, %3773
  %3947 = fmul fast float %3941, %3943
  %3948 = fmul fast float %3947, %3944
  %3949 = fsub fast float %3946, %3948
  %3950 = fmul fast float %3773, %3773
  %3951 = fsub fast float %3775, %3950
  %3952 = fmul fast float %3943, %3943
  %3953 = fmul fast float %3952, %3941
  %3954 = fsub fast float %3951, %3953
  %3955 = fdiv fast float %3949, %3954
  %3956 = fmul fast float %3955, %3943
  %3957 = fsub fast float %3944, %3956
  %3958 = fmul fast float %3957, %3941
  %3959 = fmul fast float %3958, %3772
  %3960 = fsub fast float 1.000000e+00, %3959
  %3961 = fmul fast float %3955, %3773
  %3962 = fsub fast float %3960, %3961
  %3963 = fmul fast float %3958, %3958
  %3964 = fmul fast float %3955, 4.000000e+00
  %3965 = fmul fast float %3964, %3962
  %3966 = fsub fast float %3963, %3965
  %3967 = call float @dx.op.unary.f32(i32 24, float %3966)  ; Sqrt(value)
  %3968 = fcmp fast oge float %3958, 0.000000e+00
  %3969 = fsub fast float -0.000000e+00, %3967
  %3970 = select i1 %3968, float %3969, float %3967
  %3971 = fsub fast float %3970, %3958
  %3972 = fdiv fast float %3971, %3955
  %3973 = fdiv fast float %3962, %3971
  %3974 = fmul fast float %3972, 5.000000e-01
  %3975 = fmul fast float %3973, 2.000000e+00
  %3976 = select i1 %3968, float %3974, float %3975
  %3977 = select i1 %3968, float %3975, float %3974
  %3978 = call float @dx.op.binary.f32(i32 35, float %3976, float %3977)  ; FMax(a,b)
  %3979 = call float @dx.op.binary.f32(i32 36, float %3976, float %3977)  ; FMin(a,b)
  %3980 = fcmp fast ogt float %3937, %3978
  %3981 = fsub fast float %3937, %3979
  %3982 = fsub fast float %3937, %3978
  %3983 = fsub fast float %3978, %3979
  %3984 = select i1 %3980, float %3982, float %3983
  %3985 = fmul float %3981, %3984
  %3986 = select i1 %3980, float %3979, float %3937
  %3987 = fcmp fast ogt float %3937, %3979
  %3988 = fmul fast float %3986, %3978
  %3989 = fadd fast float %3986, %3978
  %3990 = fmul fast float %3989, %3772
  %3991 = fadd fast float %3988, %3773
  %3992 = fsub fast float %3991, %3990
  %3993 = fdiv fast float %3992, %3985
  %3994 = select i1 %3987, float %3993, float 0.000000e+00
  %3995 = fsub fast float 1.000000e+00, %3994
  %3996 = select i1 %3980, float %3995, float %3994
  %3997 = call float @dx.op.unary.f32(i32 7, float %3996)  ; Saturate(value)
  %3998 = extractvalue %dx.types.CBufRet.f32 %3757, 3
  %3999 = fmul fast float %3998, %3997
  %4000 = fsub fast float 1.000000e+00, %3999
  br label %4001

; <label>:4001                                    ; preds = %3930, %3642, %3607, %3603, %3569
  %4002 = phi float [ 1.000000e+00, %3569 ], [ %4000, %3930 ], [ 1.000000e+00, %3607 ], [ 1.000000e+00, %3642 ], [ 1.000000e+00, %3603 ]
  %4003 = fcmp fast ogt float %3599, 0.000000e+00
  br i1 %4003, label %4004, label %4166, !dx.controlflow.hints !101

; <label>:4004                                    ; preds = %4001
  %4005 = fadd fast float %3512, %3486
  %4006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.f32 %4006, 2
  %4008 = extractvalue %dx.types.CBufRet.f32 %4006, 3
  %4009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4010 = extractvalue %dx.types.CBufRet.f32 %4009, 2
  %4011 = call float @dx.op.binary.f32(i32 35, float %4005, float 0.000000e+00)  ; FMax(a,b)
  %4012 = fadd fast float %4011, 0x3F10000000000000
  %4013 = fcmp fast oeq float %4010, 0.000000e+00
  br i1 %4013, label %4014, label %4081

; <label>:4014                                    ; preds = %4004
  %4015 = extractvalue %dx.types.CBufRet.f32 %4006, 1
  %4016 = extractvalue %dx.types.CBufRet.f32 %4006, 0
  %4017 = fmul fast float %4016, %3501
  %4018 = fmul fast float %4015, %3502
  %4019 = fadd fast float %4017, 5.000000e-01
  %4020 = call float @dx.op.unary.f32(i32 27, float %4019)  ; Round_ni(value)
  %4021 = fadd fast float %4018, 5.000000e-01
  %4022 = call float @dx.op.unary.f32(i32 27, float %4021)  ; Round_ni(value)
  %4023 = fsub fast float %4019, %4020
  %4024 = fsub fast float %4021, %4022
  %4025 = fadd fast float %4020, -5.000000e-01
  %4026 = fadd fast float %4022, -5.000000e-01
  %4027 = fmul fast float %4023, 2.000000e+00
  %4028 = fsub fast float 3.000000e+00, %4027
  %4029 = fadd fast float %4027, 1.000000e+00
  %4030 = fsub fast float 2.000000e+00, %4023
  %4031 = bitcast float %4028 to i32
  %4032 = sub nsw i32 2129859010, %4031
  %4033 = bitcast i32 %4032 to float
  %4034 = fmul fast float %4033, %4030
  %4035 = fadd fast float %4034, -1.000000e+00
  %4036 = bitcast float %4029 to i32
  %4037 = sub nsw i32 2129859010, %4036
  %4038 = bitcast i32 %4037 to float
  %4039 = fmul fast float %4038, %4023
  %4040 = fadd fast float %4039, 1.000000e+00
  %4041 = fmul fast float %4024, 2.000000e+00
  %4042 = fsub fast float 3.000000e+00, %4041
  %4043 = fadd fast float %4041, 1.000000e+00
  %4044 = fsub fast float 2.000000e+00, %4024
  %4045 = bitcast float %4042 to i32
  %4046 = sub nsw i32 2129859010, %4045
  %4047 = bitcast i32 %4046 to float
  %4048 = fmul fast float %4047, %4044
  %4049 = fadd fast float %4048, -1.000000e+00
  %4050 = bitcast float %4043 to i32
  %4051 = sub nsw i32 2129859010, %4050
  %4052 = bitcast i32 %4051 to float
  %4053 = fmul fast float %4052, %4024
  %4054 = fadd fast float %4053, 1.000000e+00
  %4055 = fadd fast float %4035, %4025
  %4056 = fmul fast float %4055, %4007
  %4057 = fadd fast float %4049, %4026
  %4058 = fmul fast float %4057, %4008
  %4059 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %42, float %4056, float %4058, float undef, float undef, i32 0, i32 0, i32 undef, float %4012)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4060 = extractvalue %dx.types.ResRet.f32 %4059, 0
  %4061 = fmul fast float %4060, %4028
  %4062 = fadd fast float %4040, %4025
  %4063 = fmul fast float %4062, %4007
  %4064 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %42, float %4063, float %4058, float undef, float undef, i32 0, i32 0, i32 undef, float %4012)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4065 = extractvalue %dx.types.ResRet.f32 %4064, 0
  %4066 = fmul fast float %4065, %4029
  %4067 = fadd fast float %4054, %4026
  %4068 = fmul fast float %4067, %4008
  %4069 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %42, float %4056, float %4068, float undef, float undef, i32 0, i32 0, i32 undef, float %4012)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4070 = extractvalue %dx.types.ResRet.f32 %4069, 0
  %4071 = fmul fast float %4070, %4028
  %4072 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %42, float %4063, float %4068, float undef, float undef, i32 0, i32 0, i32 undef, float %4012)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4073 = extractvalue %dx.types.ResRet.f32 %4072, 0
  %4074 = fmul fast float %4073, %4029
  %4075 = fadd fast float %4074, %4071
  %4076 = fmul fast float %4075, %4043
  %4077 = fadd fast float %4066, %4061
  %4078 = fmul fast float %4077, %4042
  %4079 = fadd fast float %4078, %4076
  %4080 = fmul fast float %4079, 6.250000e-02
  br label %4166

; <label>:4081                                    ; preds = %4004
  %4082 = fmul fast float %207, 0x401921FB60000000
  %4083 = call float @dx.op.unary.f32(i32 13, float %4082)  ; Sin(value)
  %4084 = call float @dx.op.unary.f32(i32 12, float %4082)  ; Cos(value)
  %4085 = fsub fast float -0.000000e+00, %4083
  br label %4086

; <label>:4086                                    ; preds = %4135, %4081
  %4087 = phi float [ 0.000000e+00, %4081 ], [ %4130, %4135 ]
  %4088 = phi float [ 0.000000e+00, %4081 ], [ %4132, %4135 ]
  %4089 = phi i32 [ 0, %4081 ], [ %4136, %4135 ]
  %4090 = mul i32 %4089, 2
  %4091 = add i32 0, %4090
  %4092 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4091
  %4093 = load float, float* %4092, align 4
  %4094 = mul i32 %4089, 2
  %4095 = add i32 1, %4094
  %4096 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4095
  %4097 = load float, float* %4096, align 4
  %4098 = fmul fast float %4093, %4084
  %4099 = call float @dx.op.tertiary.f32(i32 46, float %4097, float %4085, float %4098)  ; FMad(a,b,c)
  %4100 = fmul fast float %4093, %4083
  %4101 = call float @dx.op.tertiary.f32(i32 46, float %4097, float %4084, float %4100)  ; FMad(a,b,c)
  %4102 = fmul fast float %4099, %4010
  %4103 = fmul fast float %4101, %4010
  %4104 = fadd fast float %4102, %3501
  %4105 = fadd fast float %4103, %3502
  %4106 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %41, float %4104, float %4105, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4107 = extractvalue %dx.types.ResRet.f32 %4106, 0
  %4108 = extractvalue %dx.types.ResRet.f32 %4106, 1
  %4109 = extractvalue %dx.types.ResRet.f32 %4106, 2
  %4110 = extractvalue %dx.types.ResRet.f32 %4106, 3
  %4111 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 0
  store float %4107, float* %4111, align 4
  %4112 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 1
  store float %4108, float* %4112, align 4
  %4113 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 2
  store float %4109, float* %4113, align 4
  %4114 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 3
  store float %4110, float* %4114, align 4
  %4115 = fsub fast float %4107, %4012
  %4116 = fcmp fast olt float %4115, 0.000000e+00
  %4117 = select i1 %4116, float 0.000000e+00, float 1.000000e+00
  %4118 = fadd fast float %4117, %4087
  %4119 = fmul fast float %4117, %4115
  %4120 = fadd fast float %4119, %4088
  br label %4121

; <label>:4121                                    ; preds = %4121, %4086
  %4122 = phi i32 [ 1, %4086 ], [ %4133, %4121 ]
  %4123 = phi float [ %4120, %4086 ], [ %4132, %4121 ]
  %4124 = phi float [ %4118, %4086 ], [ %4130, %4121 ]
  %4125 = getelementptr [4 x float], [4 x float]* %72, i32 0, i32 %4122
  %4126 = load float, float* %4125, align 4, !tbaa !102, !noalias !92
  %4127 = fsub fast float %4126, %4012
  %4128 = fcmp fast olt float %4127, 0.000000e+00
  %4129 = select i1 %4128, float 0.000000e+00, float 1.000000e+00
  %4130 = fadd fast float %4129, %4124
  %4131 = fmul fast float %4129, %4127
  %4132 = fadd fast float %4131, %4123
  %4133 = add nuw nsw i32 %4122, 1
  %4134 = icmp eq i32 %4133, 4
  br i1 %4134, label %4135, label %4121, !llvm.loop !104

; <label>:4135                                    ; preds = %4121
  %4136 = add nuw nsw i32 %4089, 1
  %4137 = icmp eq i32 %4136, 8
  br i1 %4137, label %4138, label %4086, !llvm.loop !105

; <label>:4138                                    ; preds = %4135
  %4139 = fdiv fast float 1.000000e+00, %4130
  %4140 = fmul fast float %4139, %4132
  %4141 = fdiv fast float 1.000000e+00, %4012
  %4142 = fmul fast float %4140, %4141
  %4143 = call float @dx.op.unary.f32(i32 7, float %4142)  ; Saturate(value)
  %4144 = call float @dx.op.binary.f32(i32 35, float %4143, float 0.000000e+00)  ; FMax(a,b)
  %4145 = fmul fast float %4130, 3.125000e-02
  %4146 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4147 = fmul fast float %4146, 2.000000e+00
  %4148 = fadd fast float %4147, -1.000000e+00
  %4149 = fcmp fast ogt float %4148, 0.000000e+00
  %4150 = fcmp fast olt float %4148, 0.000000e+00
  %4151 = zext i1 %4149 to i32
  %4152 = zext i1 %4150 to i32
  %4153 = sub nsw i32 %4151, %4152
  %4154 = sitofp i32 %4153 to float
  %4155 = fmul fast float %4154, %4148
  %4156 = fsub fast float 1.000000e+00, %4155
  %4157 = fmul fast float %4156, %4156
  %4158 = fmul fast float %4157, %4156
  %4159 = fsub fast float %4156, %4158
  %4160 = fmul fast float %4159, %4144
  %4161 = fsub fast float 1.000000e+00, %4158
  %4162 = fsub fast float %4161, %4160
  %4163 = fmul fast float %4154, 5.000000e-01
  %4164 = fmul fast float %4163, %4162
  %4165 = fsub fast float 5.000000e-01, %4164
  br label %4166

; <label>:4166                                    ; preds = %4138, %4014, %4001
  %4167 = phi float [ 1.000000e+00, %4001 ], [ %4080, %4014 ], [ %4165, %4138 ]
  %4168 = fcmp fast ogt float %3597, 0.000000e+00
  br i1 %4168, label %4169, label %4333, !dx.controlflow.hints !106

; <label>:4169                                    ; preds = %4166
  %4170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4171 = extractvalue %dx.types.CBufRet.f32 %4170, 1
  %4172 = fadd fast float %4171, %3486
  %4173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.f32 %4173, 2
  %4175 = extractvalue %dx.types.CBufRet.f32 %4173, 3
  %4176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4177 = extractvalue %dx.types.CBufRet.f32 %4176, 1
  %4178 = call float @dx.op.binary.f32(i32 35, float %4172, float 0.000000e+00)  ; FMax(a,b)
  %4179 = fadd fast float %4178, 0x3F10000000000000
  %4180 = fcmp fast oeq float %4177, 0.000000e+00
  br i1 %4180, label %4181, label %4248

; <label>:4181                                    ; preds = %4169
  %4182 = extractvalue %dx.types.CBufRet.f32 %4173, 1
  %4183 = extractvalue %dx.types.CBufRet.f32 %4173, 0
  %4184 = fmul fast float %4183, %3493
  %4185 = fmul fast float %4182, %3494
  %4186 = fadd fast float %4184, 5.000000e-01
  %4187 = call float @dx.op.unary.f32(i32 27, float %4186)  ; Round_ni(value)
  %4188 = fadd fast float %4185, 5.000000e-01
  %4189 = call float @dx.op.unary.f32(i32 27, float %4188)  ; Round_ni(value)
  %4190 = fsub fast float %4186, %4187
  %4191 = fsub fast float %4188, %4189
  %4192 = fadd fast float %4187, -5.000000e-01
  %4193 = fadd fast float %4189, -5.000000e-01
  %4194 = fmul fast float %4190, 2.000000e+00
  %4195 = fsub fast float 3.000000e+00, %4194
  %4196 = fadd fast float %4194, 1.000000e+00
  %4197 = fsub fast float 2.000000e+00, %4190
  %4198 = bitcast float %4195 to i32
  %4199 = sub nsw i32 2129859010, %4198
  %4200 = bitcast i32 %4199 to float
  %4201 = fmul fast float %4200, %4197
  %4202 = fadd fast float %4201, -1.000000e+00
  %4203 = bitcast float %4196 to i32
  %4204 = sub nsw i32 2129859010, %4203
  %4205 = bitcast i32 %4204 to float
  %4206 = fmul fast float %4205, %4190
  %4207 = fadd fast float %4206, 1.000000e+00
  %4208 = fmul fast float %4191, 2.000000e+00
  %4209 = fsub fast float 3.000000e+00, %4208
  %4210 = fadd fast float %4208, 1.000000e+00
  %4211 = fsub fast float 2.000000e+00, %4191
  %4212 = bitcast float %4209 to i32
  %4213 = sub nsw i32 2129859010, %4212
  %4214 = bitcast i32 %4213 to float
  %4215 = fmul fast float %4214, %4211
  %4216 = fadd fast float %4215, -1.000000e+00
  %4217 = bitcast float %4210 to i32
  %4218 = sub nsw i32 2129859010, %4217
  %4219 = bitcast i32 %4218 to float
  %4220 = fmul fast float %4219, %4191
  %4221 = fadd fast float %4220, 1.000000e+00
  %4222 = fadd fast float %4202, %4192
  %4223 = fmul fast float %4222, %4174
  %4224 = fadd fast float %4216, %4193
  %4225 = fmul fast float %4224, %4175
  %4226 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %42, float %4223, float %4225, float undef, float undef, i32 0, i32 0, i32 undef, float %4179)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4227 = extractvalue %dx.types.ResRet.f32 %4226, 0
  %4228 = fmul fast float %4227, %4195
  %4229 = fadd fast float %4207, %4192
  %4230 = fmul fast float %4229, %4174
  %4231 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %42, float %4230, float %4225, float undef, float undef, i32 0, i32 0, i32 undef, float %4179)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4232 = extractvalue %dx.types.ResRet.f32 %4231, 0
  %4233 = fmul fast float %4232, %4196
  %4234 = fadd fast float %4221, %4193
  %4235 = fmul fast float %4234, %4175
  %4236 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %42, float %4223, float %4235, float undef, float undef, i32 0, i32 0, i32 undef, float %4179)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4237 = extractvalue %dx.types.ResRet.f32 %4236, 0
  %4238 = fmul fast float %4237, %4195
  %4239 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %42, float %4230, float %4235, float undef, float undef, i32 0, i32 0, i32 undef, float %4179)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4240 = extractvalue %dx.types.ResRet.f32 %4239, 0
  %4241 = fmul fast float %4240, %4196
  %4242 = fadd fast float %4241, %4238
  %4243 = fmul fast float %4242, %4210
  %4244 = fadd fast float %4233, %4228
  %4245 = fmul fast float %4244, %4209
  %4246 = fadd fast float %4245, %4243
  %4247 = fmul fast float %4246, 6.250000e-02
  br label %4333

; <label>:4248                                    ; preds = %4169
  %4249 = fmul fast float %207, 0x401921FB60000000
  %4250 = call float @dx.op.unary.f32(i32 13, float %4249)  ; Sin(value)
  %4251 = call float @dx.op.unary.f32(i32 12, float %4249)  ; Cos(value)
  %4252 = fsub fast float -0.000000e+00, %4250
  br label %4253

; <label>:4253                                    ; preds = %4302, %4248
  %4254 = phi float [ 0.000000e+00, %4248 ], [ %4297, %4302 ]
  %4255 = phi float [ 0.000000e+00, %4248 ], [ %4299, %4302 ]
  %4256 = phi i32 [ 0, %4248 ], [ %4303, %4302 ]
  %4257 = mul i32 %4256, 2
  %4258 = add i32 0, %4257
  %4259 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4258
  %4260 = load float, float* %4259, align 4
  %4261 = mul i32 %4256, 2
  %4262 = add i32 1, %4261
  %4263 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4262
  %4264 = load float, float* %4263, align 4
  %4265 = fmul fast float %4260, %4251
  %4266 = call float @dx.op.tertiary.f32(i32 46, float %4264, float %4252, float %4265)  ; FMad(a,b,c)
  %4267 = fmul fast float %4260, %4250
  %4268 = call float @dx.op.tertiary.f32(i32 46, float %4264, float %4251, float %4267)  ; FMad(a,b,c)
  %4269 = fmul fast float %4266, %4177
  %4270 = fmul fast float %4268, %4177
  %4271 = fadd fast float %4269, %3493
  %4272 = fadd fast float %4270, %3494
  %4273 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %41, float %4271, float %4272, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4274 = extractvalue %dx.types.ResRet.f32 %4273, 0
  %4275 = extractvalue %dx.types.ResRet.f32 %4273, 1
  %4276 = extractvalue %dx.types.ResRet.f32 %4273, 2
  %4277 = extractvalue %dx.types.ResRet.f32 %4273, 3
  %4278 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 0
  store float %4274, float* %4278, align 4
  %4279 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 1
  store float %4275, float* %4279, align 4
  %4280 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 2
  store float %4276, float* %4280, align 4
  %4281 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 3
  store float %4277, float* %4281, align 4
  %4282 = fsub fast float %4274, %4179
  %4283 = fcmp fast olt float %4282, 0.000000e+00
  %4284 = select i1 %4283, float 0.000000e+00, float 1.000000e+00
  %4285 = fadd fast float %4284, %4254
  %4286 = fmul fast float %4284, %4282
  %4287 = fadd fast float %4286, %4255
  br label %4288

; <label>:4288                                    ; preds = %4288, %4253
  %4289 = phi i32 [ 1, %4253 ], [ %4300, %4288 ]
  %4290 = phi float [ %4287, %4253 ], [ %4299, %4288 ]
  %4291 = phi float [ %4285, %4253 ], [ %4297, %4288 ]
  %4292 = getelementptr [4 x float], [4 x float]* %71, i32 0, i32 %4289
  %4293 = load float, float* %4292, align 4, !tbaa !102, !noalias !92
  %4294 = fsub fast float %4293, %4179
  %4295 = fcmp fast olt float %4294, 0.000000e+00
  %4296 = select i1 %4295, float 0.000000e+00, float 1.000000e+00
  %4297 = fadd fast float %4296, %4291
  %4298 = fmul fast float %4296, %4294
  %4299 = fadd fast float %4298, %4290
  %4300 = add nuw nsw i32 %4289, 1
  %4301 = icmp eq i32 %4300, 4
  br i1 %4301, label %4302, label %4288, !llvm.loop !104

; <label>:4302                                    ; preds = %4288
  %4303 = add nuw nsw i32 %4256, 1
  %4304 = icmp eq i32 %4303, 8
  br i1 %4304, label %4305, label %4253, !llvm.loop !105

; <label>:4305                                    ; preds = %4302
  %4306 = fdiv fast float 1.000000e+00, %4297
  %4307 = fmul fast float %4306, %4299
  %4308 = fdiv fast float 1.000000e+00, %4179
  %4309 = fmul fast float %4307, %4308
  %4310 = call float @dx.op.unary.f32(i32 7, float %4309)  ; Saturate(value)
  %4311 = call float @dx.op.binary.f32(i32 35, float %4310, float 0.000000e+00)  ; FMax(a,b)
  %4312 = fmul fast float %4297, 3.125000e-02
  %4313 = call float @dx.op.unary.f32(i32 7, float %4312)  ; Saturate(value)
  %4314 = fmul fast float %4313, 2.000000e+00
  %4315 = fadd fast float %4314, -1.000000e+00
  %4316 = fcmp fast ogt float %4315, 0.000000e+00
  %4317 = fcmp fast olt float %4315, 0.000000e+00
  %4318 = zext i1 %4316 to i32
  %4319 = zext i1 %4317 to i32
  %4320 = sub nsw i32 %4318, %4319
  %4321 = sitofp i32 %4320 to float
  %4322 = fmul fast float %4321, %4315
  %4323 = fsub fast float 1.000000e+00, %4322
  %4324 = fmul fast float %4323, %4323
  %4325 = fmul fast float %4324, %4323
  %4326 = fsub fast float %4323, %4325
  %4327 = fmul fast float %4326, %4311
  %4328 = fsub fast float 1.000000e+00, %4325
  %4329 = fsub fast float %4328, %4327
  %4330 = fmul fast float %4321, 5.000000e-01
  %4331 = fmul fast float %4330, %4329
  %4332 = fsub fast float 5.000000e-01, %4331
  br label %4333

; <label>:4333                                    ; preds = %4305, %4181, %4166
  %4334 = phi float [ 1.000000e+00, %4166 ], [ %4247, %4181 ], [ %4332, %4305 ]
  %4335 = fcmp fast ogt float %3596, 0.000000e+00
  br i1 %4335, label %4336, label %4500, !dx.controlflow.hints !107

; <label>:4336                                    ; preds = %4333
  %4337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4338 = extractvalue %dx.types.CBufRet.f32 %4337, 0
  %4339 = fadd fast float %4338, %3486
  %4340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4341 = extractvalue %dx.types.CBufRet.f32 %4340, 2
  %4342 = extractvalue %dx.types.CBufRet.f32 %4340, 3
  %4343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4344 = extractvalue %dx.types.CBufRet.f32 %4343, 0
  %4345 = call float @dx.op.binary.f32(i32 35, float %4339, float 0.000000e+00)  ; FMax(a,b)
  %4346 = fadd fast float %4345, 0x3F10000000000000
  %4347 = fcmp fast oeq float %4344, 0.000000e+00
  br i1 %4347, label %4348, label %4415

; <label>:4348                                    ; preds = %4336
  %4349 = extractvalue %dx.types.CBufRet.f32 %4340, 1
  %4350 = extractvalue %dx.types.CBufRet.f32 %4340, 0
  %4351 = fmul fast float %4350, %3478
  %4352 = fmul fast float %4349, %3482
  %4353 = fadd fast float %4351, 5.000000e-01
  %4354 = call float @dx.op.unary.f32(i32 27, float %4353)  ; Round_ni(value)
  %4355 = fadd fast float %4352, 5.000000e-01
  %4356 = call float @dx.op.unary.f32(i32 27, float %4355)  ; Round_ni(value)
  %4357 = fsub fast float %4353, %4354
  %4358 = fsub fast float %4355, %4356
  %4359 = fadd fast float %4354, -5.000000e-01
  %4360 = fadd fast float %4356, -5.000000e-01
  %4361 = fmul fast float %4357, 2.000000e+00
  %4362 = fsub fast float 3.000000e+00, %4361
  %4363 = fadd fast float %4361, 1.000000e+00
  %4364 = fsub fast float 2.000000e+00, %4357
  %4365 = bitcast float %4362 to i32
  %4366 = sub nsw i32 2129859010, %4365
  %4367 = bitcast i32 %4366 to float
  %4368 = fmul fast float %4367, %4364
  %4369 = fadd fast float %4368, -1.000000e+00
  %4370 = bitcast float %4363 to i32
  %4371 = sub nsw i32 2129859010, %4370
  %4372 = bitcast i32 %4371 to float
  %4373 = fmul fast float %4372, %4357
  %4374 = fadd fast float %4373, 1.000000e+00
  %4375 = fmul fast float %4358, 2.000000e+00
  %4376 = fsub fast float 3.000000e+00, %4375
  %4377 = fadd fast float %4375, 1.000000e+00
  %4378 = fsub fast float 2.000000e+00, %4358
  %4379 = bitcast float %4376 to i32
  %4380 = sub nsw i32 2129859010, %4379
  %4381 = bitcast i32 %4380 to float
  %4382 = fmul fast float %4381, %4378
  %4383 = fadd fast float %4382, -1.000000e+00
  %4384 = bitcast float %4377 to i32
  %4385 = sub nsw i32 2129859010, %4384
  %4386 = bitcast i32 %4385 to float
  %4387 = fmul fast float %4386, %4358
  %4388 = fadd fast float %4387, 1.000000e+00
  %4389 = fadd fast float %4369, %4359
  %4390 = fmul fast float %4389, %4341
  %4391 = fadd fast float %4383, %4360
  %4392 = fmul fast float %4391, %4342
  %4393 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %42, float %4390, float %4392, float undef, float undef, i32 0, i32 0, i32 undef, float %4346)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4394 = extractvalue %dx.types.ResRet.f32 %4393, 0
  %4395 = fmul fast float %4394, %4362
  %4396 = fadd fast float %4374, %4359
  %4397 = fmul fast float %4396, %4341
  %4398 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %42, float %4397, float %4392, float undef, float undef, i32 0, i32 0, i32 undef, float %4346)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4399 = extractvalue %dx.types.ResRet.f32 %4398, 0
  %4400 = fmul fast float %4399, %4363
  %4401 = fadd fast float %4388, %4360
  %4402 = fmul fast float %4401, %4342
  %4403 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %42, float %4390, float %4402, float undef, float undef, i32 0, i32 0, i32 undef, float %4346)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4404 = extractvalue %dx.types.ResRet.f32 %4403, 0
  %4405 = fmul fast float %4404, %4362
  %4406 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %42, float %4397, float %4402, float undef, float undef, i32 0, i32 0, i32 undef, float %4346)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4407 = extractvalue %dx.types.ResRet.f32 %4406, 0
  %4408 = fmul fast float %4407, %4363
  %4409 = fadd fast float %4408, %4405
  %4410 = fmul fast float %4409, %4377
  %4411 = fadd fast float %4400, %4395
  %4412 = fmul fast float %4411, %4376
  %4413 = fadd fast float %4412, %4410
  %4414 = fmul fast float %4413, 6.250000e-02
  br label %4500

; <label>:4415                                    ; preds = %4336
  %4416 = fmul fast float %207, 0x401921FB60000000
  %4417 = call float @dx.op.unary.f32(i32 13, float %4416)  ; Sin(value)
  %4418 = call float @dx.op.unary.f32(i32 12, float %4416)  ; Cos(value)
  %4419 = fsub fast float -0.000000e+00, %4417
  br label %4420

; <label>:4420                                    ; preds = %4469, %4415
  %4421 = phi float [ 0.000000e+00, %4415 ], [ %4464, %4469 ]
  %4422 = phi float [ 0.000000e+00, %4415 ], [ %4466, %4469 ]
  %4423 = phi i32 [ 0, %4415 ], [ %4470, %4469 ]
  %4424 = mul i32 %4423, 2
  %4425 = add i32 0, %4424
  %4426 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4425
  %4427 = load float, float* %4426, align 4
  %4428 = mul i32 %4423, 2
  %4429 = add i32 1, %4428
  %4430 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4429
  %4431 = load float, float* %4430, align 4
  %4432 = fmul fast float %4427, %4418
  %4433 = call float @dx.op.tertiary.f32(i32 46, float %4431, float %4419, float %4432)  ; FMad(a,b,c)
  %4434 = fmul fast float %4427, %4417
  %4435 = call float @dx.op.tertiary.f32(i32 46, float %4431, float %4418, float %4434)  ; FMad(a,b,c)
  %4436 = fmul fast float %4433, %4344
  %4437 = fmul fast float %4435, %4344
  %4438 = fadd fast float %4436, %3478
  %4439 = fadd fast float %4437, %3482
  %4440 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %41, float %4438, float %4439, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4441 = extractvalue %dx.types.ResRet.f32 %4440, 0
  %4442 = extractvalue %dx.types.ResRet.f32 %4440, 1
  %4443 = extractvalue %dx.types.ResRet.f32 %4440, 2
  %4444 = extractvalue %dx.types.ResRet.f32 %4440, 3
  %4445 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 0
  store float %4441, float* %4445, align 4
  %4446 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 1
  store float %4442, float* %4446, align 4
  %4447 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 2
  store float %4443, float* %4447, align 4
  %4448 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 3
  store float %4444, float* %4448, align 4
  %4449 = fsub fast float %4441, %4346
  %4450 = fcmp fast olt float %4449, 0.000000e+00
  %4451 = select i1 %4450, float 0.000000e+00, float 1.000000e+00
  %4452 = fadd fast float %4451, %4421
  %4453 = fmul fast float %4451, %4449
  %4454 = fadd fast float %4453, %4422
  br label %4455

; <label>:4455                                    ; preds = %4455, %4420
  %4456 = phi i32 [ 1, %4420 ], [ %4467, %4455 ]
  %4457 = phi float [ %4454, %4420 ], [ %4466, %4455 ]
  %4458 = phi float [ %4452, %4420 ], [ %4464, %4455 ]
  %4459 = getelementptr [4 x float], [4 x float]* %70, i32 0, i32 %4456
  %4460 = load float, float* %4459, align 4, !tbaa !102, !noalias !92
  %4461 = fsub fast float %4460, %4346
  %4462 = fcmp fast olt float %4461, 0.000000e+00
  %4463 = select i1 %4462, float 0.000000e+00, float 1.000000e+00
  %4464 = fadd fast float %4463, %4458
  %4465 = fmul fast float %4463, %4461
  %4466 = fadd fast float %4465, %4457
  %4467 = add nuw nsw i32 %4456, 1
  %4468 = icmp eq i32 %4467, 4
  br i1 %4468, label %4469, label %4455, !llvm.loop !104

; <label>:4469                                    ; preds = %4455
  %4470 = add nuw nsw i32 %4423, 1
  %4471 = icmp eq i32 %4470, 8
  br i1 %4471, label %4472, label %4420, !llvm.loop !105

; <label>:4472                                    ; preds = %4469
  %4473 = fdiv fast float 1.000000e+00, %4464
  %4474 = fmul fast float %4473, %4466
  %4475 = fdiv fast float 1.000000e+00, %4346
  %4476 = fmul fast float %4474, %4475
  %4477 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4478 = call float @dx.op.binary.f32(i32 35, float %4477, float 0.000000e+00)  ; FMax(a,b)
  %4479 = fmul fast float %4464, 3.125000e-02
  %4480 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4481 = fmul fast float %4480, 2.000000e+00
  %4482 = fadd fast float %4481, -1.000000e+00
  %4483 = fcmp fast ogt float %4482, 0.000000e+00
  %4484 = fcmp fast olt float %4482, 0.000000e+00
  %4485 = zext i1 %4483 to i32
  %4486 = zext i1 %4484 to i32
  %4487 = sub nsw i32 %4485, %4486
  %4488 = sitofp i32 %4487 to float
  %4489 = fmul fast float %4488, %4482
  %4490 = fsub fast float 1.000000e+00, %4489
  %4491 = fmul fast float %4490, %4490
  %4492 = fmul fast float %4491, %4490
  %4493 = fsub fast float %4490, %4492
  %4494 = fmul fast float %4493, %4478
  %4495 = fsub fast float 1.000000e+00, %4492
  %4496 = fsub fast float %4495, %4494
  %4497 = fmul fast float %4488, 5.000000e-01
  %4498 = fmul fast float %4497, %4496
  %4499 = fsub fast float 5.000000e-01, %4498
  br label %4500

; <label>:4500                                    ; preds = %4472, %4348, %4333
  %4501 = phi float [ 1.000000e+00, %4333 ], [ %4414, %4348 ], [ %4499, %4472 ]
  %4502 = fsub fast float %4167, %4002
  %4503 = fmul fast float %4502, %3540
  %4504 = fadd fast float %4503, %4002
  %4505 = fsub fast float %4334, %4504
  %4506 = fmul fast float %4505, %3570
  %4507 = fadd fast float %4506, %4504
  %4508 = fsub fast float %4501, %4507
  %4509 = fmul fast float %4508, %3596
  %4510 = fadd fast float %4509, %4507
  %4511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4512 = extractvalue %dx.types.CBufRet.f32 %4511, 2
  %4513 = fcmp fast ogt float %4512, 0.000000e+00
  br i1 %4513, label %4514, label %4554, !dx.controlflow.hints !108

; <label>:4514                                    ; preds = %4500
  %4515 = fcmp fast ugt float %4512, 0.000000e+00
  br i1 %4515, label %4516, label %4551

; <label>:4516                                    ; preds = %4514
  %4517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4518 = extractvalue %dx.types.CBufRet.f32 %4517, 0
  %4519 = extractvalue %dx.types.CBufRet.f32 %4517, 1
  %4520 = extractvalue %dx.types.CBufRet.f32 %4517, 2
  %4521 = extractvalue %dx.types.CBufRet.f32 %4517, 3
  %4522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4523 = extractvalue %dx.types.CBufRet.f32 %4522, 0
  %4524 = extractvalue %dx.types.CBufRet.f32 %4522, 1
  %4525 = extractvalue %dx.types.CBufRet.f32 %4522, 2
  %4526 = extractvalue %dx.types.CBufRet.f32 %4522, 3
  %4527 = extractvalue %dx.types.CBufRet.f32 %4511, 0
  %4528 = extractvalue %dx.types.CBufRet.f32 %4511, 1
  %4529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4530 = extractvalue %dx.types.CBufRet.f32 %4529, 0
  %4531 = extractvalue %dx.types.CBufRet.f32 %4529, 1
  %4532 = extractvalue %dx.types.CBufRet.f32 %4529, 2
  %4533 = fadd fast float %4530, %3455
  %4534 = fadd fast float %4531, %3456
  %4535 = fadd fast float %4532, %3457
  %4536 = fmul fast float %4533, %4518
  %4537 = call float @dx.op.tertiary.f32(i32 46, float %4519, float %4534, float %4536)  ; FMad(a,b,c)
  %4538 = call float @dx.op.tertiary.f32(i32 46, float %4520, float %4535, float %4537)  ; FMad(a,b,c)
  %4539 = fadd fast float %4538, %4521
  %4540 = fmul fast float %4533, %4523
  %4541 = call float @dx.op.tertiary.f32(i32 46, float %4524, float %4534, float %4540)  ; FMad(a,b,c)
  %4542 = call float @dx.op.tertiary.f32(i32 46, float %4525, float %4535, float %4541)  ; FMad(a,b,c)
  %4543 = fadd fast float %4542, %4526
  %4544 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %37, float %4539, float %4543, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4545 = extractvalue %dx.types.ResRet.f32 %4544, 0
  %4546 = fmul fast float %4545, %4528
  %4547 = fadd fast float %4546, %4527
  %4548 = call float @dx.op.unary.f32(i32 7, float %4547)  ; Saturate(value)
  %4549 = fmul fast float %4548, %4512
  %4550 = fsub fast float 1.000000e+00, %4549
  br label %4551

; <label>:4551                                    ; preds = %4516, %4514
  %4552 = phi float [ %4550, %4516 ], [ 1.000000e+00, %4514 ]
  %4553 = fmul fast float %4552, %4510
  br label %4554

; <label>:4554                                    ; preds = %4551, %4500, %3435
  %4555 = phi float [ 1.000000e+00, %3435 ], [ %4553, %4551 ], [ %4510, %4500 ]
  %4556 = call float @dx.op.binary.f32(i32 36, float %4555, float %4555)  ; FMin(a,b)
  %4557 = call float @dx.op.binary.f32(i32 36, float %4555, float %4556)  ; FMin(a,b)
  %4558 = fcmp fast ogt float %4557, 0.000000e+00
  br i1 %4558, label %4559, label %4725, !dx.controlflow.hints !109

; <label>:4559                                    ; preds = %4554
  %4560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4561 = extractvalue %dx.types.CBufRet.f32 %4560, 0
  %4562 = extractvalue %dx.types.CBufRet.f32 %4560, 1
  %4563 = extractvalue %dx.types.CBufRet.f32 %4560, 2
  %4564 = extractvalue %dx.types.CBufRet.f32 %4560, 3
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 0
  %4567 = extractvalue %dx.types.CBufRet.f32 %4565, 1
  %4568 = extractvalue %dx.types.CBufRet.f32 %4565, 2
  %4569 = extractvalue %dx.types.CBufRet.f32 %4565, 3
  %4570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4571 = extractvalue %dx.types.CBufRet.f32 %4570, 0
  %4572 = extractvalue %dx.types.CBufRet.f32 %4570, 1
  %4573 = extractvalue %dx.types.CBufRet.f32 %4570, 2
  %4574 = extractvalue %dx.types.CBufRet.f32 %4570, 3
  %4575 = fmul fast float %4561, %3455
  %4576 = call float @dx.op.tertiary.f32(i32 46, float %3456, float %4562, float %4575)  ; FMad(a,b,c)
  %4577 = call float @dx.op.tertiary.f32(i32 46, float %3457, float %4563, float %4576)  ; FMad(a,b,c)
  %4578 = fadd fast float %4577, %4564
  %4579 = fmul fast float %4566, %3455
  %4580 = call float @dx.op.tertiary.f32(i32 46, float %3456, float %4567, float %4579)  ; FMad(a,b,c)
  %4581 = call float @dx.op.tertiary.f32(i32 46, float %3457, float %4568, float %4580)  ; FMad(a,b,c)
  %4582 = fadd fast float %4581, %4569
  %4583 = fmul fast float %4571, %3455
  %4584 = call float @dx.op.tertiary.f32(i32 46, float %3456, float %4572, float %4583)  ; FMad(a,b,c)
  %4585 = call float @dx.op.tertiary.f32(i32 46, float %3457, float %4573, float %4584)  ; FMad(a,b,c)
  %4586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4587 = extractvalue %dx.types.CBufRet.f32 %4586, 0
  %4588 = extractvalue %dx.types.CBufRet.f32 %4586, 1
  %4589 = extractvalue %dx.types.CBufRet.f32 %4586, 3
  %4590 = fmul fast float %4589, %4578
  %4591 = fmul fast float %4589, %4582
  %4592 = fadd fast float %4590, %4587
  %4593 = fadd fast float %4591, %4588
  %4594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4595 = extractvalue %dx.types.CBufRet.f32 %4594, 0
  %4596 = extractvalue %dx.types.CBufRet.f32 %4594, 1
  %4597 = fsub fast float %4592, %4595
  %4598 = fsub fast float %4593, %4596
  %4599 = fcmp fast olt float %4597, 0.000000e+00
  %4600 = fcmp fast olt float %4598, 0.000000e+00
  %4601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4602 = extractvalue %dx.types.CBufRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.CBufRet.f32 %4601, 1
  %4604 = extractvalue %dx.types.CBufRet.f32 %4601, 2
  %4605 = extractvalue %dx.types.CBufRet.f32 %4601, 3
  %4606 = select i1 %4599, float %4602, float %4604
  %4607 = select i1 %4600, float %4603, float %4605
  %4608 = fmul fast float %4606, %4597
  %4609 = fmul fast float %4607, %4598
  %4610 = call float @dx.op.unary.f32(i32 6, float %4608)  ; FAbs(value)
  %4611 = call float @dx.op.unary.f32(i32 6, float %4609)  ; FAbs(value)
  %4612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4613 = extractvalue %dx.types.CBufRet.f32 %4612, 0
  %4614 = call float @dx.op.binary.f32(i32 35, float %4610, float %4611)  ; FMax(a,b)
  %4615 = fsub fast float %4613, %4614
  %4616 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4617 = fcmp fast ogt float %4616, 0.000000e+00
  br i1 %4617, label %4618, label %4659, !dx.controlflow.hints !110

; <label>:4618                                    ; preds = %4559
  %4619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %40, float %4592, float %4593, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4620 = extractvalue %dx.types.ResRet.f32 %4619, 1
  %4621 = fcmp fast ogt float %4620, 0.000000e+00
  br i1 %4621, label %4622, label %4654

; <label>:4622                                    ; preds = %4618
  %4623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %4592, float %4593, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4624 = extractvalue %dx.types.ResRet.f32 %4623, 0
  %4625 = extractvalue %dx.types.ResRet.f32 %4623, 1
  %4626 = extractvalue %dx.types.ResRet.f32 %4623, 2
  %4627 = extractvalue %dx.types.ResRet.f32 %4623, 3
  %4628 = fsub fast float 1.000000e+00, %4574
  %4629 = fsub fast float %4628, %4585
  %4630 = fmul fast float %4629, 0x400921FB60000000
  %4631 = fadd fast float %4630, 0x3FF921FB60000000
  %4632 = call float @dx.op.unary.f32(i32 13, float %4631)  ; Sin(value)
  %4633 = fadd fast float %4632, -1.000000e+00
  %4634 = fmul fast float %4633, 0x3FD45F3060000000
  %4635 = fmul fast float %4629, 0x401921FB60000000
  %4636 = fadd fast float %4635, 0x400921FB60000000
  %4637 = call float @dx.op.unary.f32(i32 13, float %4636)  ; Sin(value)
  %4638 = fadd fast float %4637, 0x3E7777A5C0000000
  %4639 = fmul fast float %4638, 0x3FC45F3060000000
  %4640 = fmul fast float %4629, 0x4022D97C80000000
  %4641 = fadd fast float %4640, 0x4012D97C80000000
  %4642 = call float @dx.op.unary.f32(i32 13, float %4641)  ; Sin(value)
  %4643 = fadd fast float %4642, 1.000000e+00
  %4644 = fmul fast float %4643, 0x3FBB2995E0000000
  %4645 = fmul fast float %4629, 0x402921FB60000000
  %4646 = fadd fast float %4645, 0x401921FB60000000
  %4647 = call float @dx.op.unary.f32(i32 13, float %4646)  ; Sin(value)
  %4648 = fadd fast float %4647, 0xBE8777A5C0000000
  %4649 = fmul fast float %4648, 0x3FB45F3060000000
  %4650 = call float @dx.op.dot4.f32(i32 56, float %4624, float %4625, float %4626, float %4627, float %4634, float %4639, float %4644, float %4649)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4651 = fmul fast float %4650, 0xBFF7154760000000
  %4652 = call float @dx.op.unary.f32(i32 21, float %4651)  ; Exp(value)
  %4653 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  br label %4654

; <label>:4654                                    ; preds = %4622, %4618
  %4655 = phi float [ %4653, %4622 ], [ 1.000000e+00, %4618 ]
  %4656 = fadd fast float %4655, -1.000000e+00
  %4657 = fmul fast float %4656, %4616
  %4658 = fadd fast float %4657, 1.000000e+00
  br label %4659

; <label>:4659                                    ; preds = %4654, %4559
  %4660 = phi float [ %4658, %4654 ], [ 1.000000e+00, %4559 ]
  %4661 = fmul fast float %4660, %4555
  %4662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4663 = extractvalue %dx.types.CBufRet.f32 %4662, 0
  %4664 = extractvalue %dx.types.CBufRet.f32 %4662, 1
  %4665 = extractvalue %dx.types.CBufRet.f32 %4662, 2
  %4666 = fadd fast float %4663, %135
  %4667 = fadd fast float %4664, %136
  %4668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4669 = extractvalue %dx.types.CBufRet.f32 %4668, 1
  %4670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4671 = extractvalue %dx.types.CBufRet.f32 %4670, 0
  %4672 = extractvalue %dx.types.CBufRet.f32 %4670, 1
  %4673 = extractvalue %dx.types.CBufRet.f32 %4670, 2
  %4674 = fsub fast float -0.000000e+00, %4666
  %4675 = fsub fast float -0.000000e+00, %4667
  %4676 = fsub fast float -0.000000e+00, %137
  %4677 = fsub fast float %4676, %4665
  %4678 = fadd fast float %4677, %4669
  %4679 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4674, float %4675, float %4678)  ; Dot3(ax,ay,az,bx,by,bz)
  %4680 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4671, float %4672, float %4673)  ; Dot3(ax,ay,az,bx,by,bz)
  %4681 = fdiv fast float 1.000000e+00, %4680
  %4682 = fmul fast float %4681, %4679
  %4683 = fmul fast float %4671, %4682
  %4684 = fmul fast float %4672, %4682
  %4685 = fadd fast float %4683, %4666
  %4686 = fadd fast float %4684, %4667
  %4687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4688 = extractvalue %dx.types.CBufRet.f32 %4687, 0
  %4689 = extractvalue %dx.types.CBufRet.f32 %4687, 1
  %4690 = fsub fast float %4685, %4688
  %4691 = fsub fast float %4686, %4689
  %4692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4693 = extractvalue %dx.types.CBufRet.f32 %4692, 2
  %4694 = extractvalue %dx.types.CBufRet.f32 %4692, 3
  %4695 = fmul fast float %4690, %4693
  %4696 = fmul fast float %4691, %4694
  %4697 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4698 = extractvalue %dx.types.CBufRet.i32 %4697, 3
  %4699 = icmp eq i32 %4698, 0
  br i1 %4699, label %4705, label %4700

; <label>:4700                                    ; preds = %4659
  %4701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %39, float %4695, float %4696, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4702 = extractvalue %dx.types.ResRet.f32 %4701, 0
  %4703 = extractvalue %dx.types.ResRet.f32 %4701, 1
  %4704 = extractvalue %dx.types.ResRet.f32 %4701, 2
  br label %4710

; <label>:4705                                    ; preds = %4659
  %4706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %40, float %4695, float %4696, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4707 = extractvalue %dx.types.ResRet.f32 %4706, 0
  %4708 = extractvalue %dx.types.ResRet.f32 %4706, 1
  %4709 = extractvalue %dx.types.ResRet.f32 %4706, 2
  br label %4710

; <label>:4710                                    ; preds = %4705, %4700
  %4711 = phi float [ %4702, %4700 ], [ %4707, %4705 ]
  %4712 = phi float [ %4703, %4700 ], [ %4708, %4705 ]
  %4713 = phi float [ %4704, %4700 ], [ %4709, %4705 ]
  %4714 = extractvalue %dx.types.CBufRet.f32 %4668, 2
  %4715 = fmul fast float %4714, %4711
  %4716 = extractvalue %dx.types.CBufRet.f32 %4668, 0
  %4717 = fsub fast float %4682, %4716
  %4718 = fsub fast float %4717, %4715
  %4719 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4718)  ; FMax(a,b)
  %4720 = fmul fast float %4719, %4712
  %4721 = call float @dx.op.binary.f32(i32 36, float %4713, float %4720)  ; FMin(a,b)
  %4722 = fmul fast float %4721, 0xBFF7154760000000
  %4723 = call float @dx.op.unary.f32(i32 21, float %4722)  ; Exp(value)
  %4724 = fmul fast float %4661, %4723
  br label %4725

; <label>:4725                                    ; preds = %4710, %4554
  %4726 = phi float [ %4724, %4710 ], [ %4555, %4554 ]
  %4727 = call float @dx.op.binary.f32(i32 36, float %4726, float %4726)  ; FMin(a,b)
  %4728 = call float @dx.op.binary.f32(i32 36, float %4726, float %4727)  ; FMin(a,b)
  %4729 = fcmp fast ogt float %4728, 0.000000e+00
  br i1 %4729, label %4730, label %4913, !dx.controlflow.hints !111

; <label>:4730                                    ; preds = %4725
  %4731 = fmul fast float %4726, %3447
  %4732 = fmul fast float %4726, %3448
  %4733 = fmul fast float %4726, %3449
  %4734 = fsub fast float %3436, %2695
  %4735 = fsub fast float %3437, %2694
  %4736 = fsub fast float %3438, %2693
  %4737 = call float @dx.op.dot3.f32(i32 55, float %4734, float %4735, float %4736, float %4734, float %4735, float %4736)  ; Dot3(ax,ay,az,bx,by,bz)
  %4738 = call float @dx.op.unary.f32(i32 25, float %4737)  ; Rsqrt(value)
  %4739 = fmul fast float %4738, %4734
  %4740 = fmul fast float %4738, %4735
  %4741 = fmul fast float %4738, %4736
  %4742 = call float @dx.op.dot3.f32(i32 55, float %3436, float %3437, float %3438, float %2702, float %2703, float %2704)  ; Dot3(ax,ay,az,bx,by,bz)
  %4743 = call float @dx.op.dot3.f32(i32 55, float %2692, float %2691, float %2690, float %4739, float %4740, float %4741)  ; Dot3(ax,ay,az,bx,by,bz)
  %4744 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4745 = fmul fast float %4744, %4744
  %4746 = fmul fast float %4745, %2734
  %4747 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4748 = fmul fast float %4747, %4744
  %4749 = call float @dx.op.dot3.f32(i32 55, float %2702, float %2703, float %2704, float %4739, float %4740, float %4741)  ; Dot3(ax,ay,az,bx,by,bz)
  %4750 = fmul fast float %4749, %4749
  %4751 = call float @dx.op.unary.f32(i32 6, float %4742)  ; FAbs(value)
  %4752 = fsub fast float 1.000000e+00, %2727
  %4753 = fmul fast float %2709, %2709
  %4754 = fmul fast float %4753, %4752
  %4755 = fadd fast float %4754, %2727
  %4756 = bitcast float %4755 to i32
  %4757 = ashr i32 %4756, 1
  %4758 = add nsw i32 %4757, 532487669
  %4759 = bitcast i32 %4758 to float
  %4760 = fadd fast float %4759, %2709
  %4761 = fmul fast float %2727, %4750
  %4762 = fsub fast float 1.000000e+00, %4750
  %4763 = fadd fast float %4762, %4761
  %4764 = fmul fast float %4751, %4751
  %4765 = fmul fast float %4764, %4752
  %4766 = fadd fast float %4765, %2727
  %4767 = bitcast float %4766 to i32
  %4768 = ashr i32 %4767, 1
  %4769 = add nsw i32 %4768, 532487669
  %4770 = bitcast i32 %4769 to float
  %4771 = fadd fast float %4770, %4751
  %4772 = fmul fast float %4763, %4763
  %4773 = fmul fast float %4772, %4760
  %4774 = fmul fast float %4773, %4771
  %4775 = fdiv fast float 0x3FF0A00000000000, %4774
  %4776 = fmul fast float %4775, %2727
  %4777 = fmul fast float %2834, 0x3FF9999980000000
  %4778 = fsub fast float 5.000000e+00, %4777
  %4779 = call float @dx.op.unary.f32(i32 6, float %4743)  ; FAbs(value)
  %4780 = fsub fast float 1.000000e+00, %4779
  %4781 = fmul fast float %2834, 0x41D9660740000000
  %4782 = fadd fast float %4781, 0xC1EFBF8940000000
  %4783 = bitcast float %4780 to i32
  %4784 = sitofp i32 %4783 to float
  %4785 = fmul fast float %4784, %4778
  %4786 = fadd fast float %4782, %4785
  %4787 = fptosi float %4786 to i32
  %4788 = bitcast i32 %4787 to float
  %4789 = fsub fast float 1.000000e+00, %2699
  %4790 = fsub fast float 1.000000e+00, %2700
  %4791 = fsub fast float 1.000000e+00, %2707
  %4792 = fmul fast float %4788, %4789
  %4793 = fmul fast float %4788, %4790
  %4794 = fmul fast float %4788, %4791
  %4795 = fadd fast float %4792, %2699
  %4796 = fadd fast float %4793, %2700
  %4797 = fadd fast float %4794, %2707
  br i1 %2857, label %4798, label %4821

; <label>:4798                                    ; preds = %4730
  %4799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %1418, float %4779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4800 = extractvalue %dx.types.ResRet.f32 %4799, 0
  %4801 = extractvalue %dx.types.ResRet.f32 %4799, 1
  %4802 = extractvalue %dx.types.ResRet.f32 %4799, 2
  %4803 = fadd fast float %4800, -5.000000e-01
  %4804 = fadd fast float %4801, -5.000000e-01
  %4805 = fadd fast float %4802, -5.000000e-01
  %4806 = fmul fast float %2699, 4.000000e+00
  %4807 = fmul fast float %4806, %4789
  %4808 = fmul fast float %4807, %4803
  %4809 = fmul fast float %2700, 4.000000e+00
  %4810 = fmul fast float %4809, %4790
  %4811 = fmul fast float %4810, %4804
  %4812 = fmul fast float %2707, 4.000000e+00
  %4813 = fmul fast float %4812, %4791
  %4814 = fmul fast float %4813, %4805
  %4815 = fadd fast float %4808, %4795
  %4816 = fadd fast float %4811, %4796
  %4817 = fadd fast float %4814, %4797
  %4818 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  %4819 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  %4820 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  br label %4821

; <label>:4821                                    ; preds = %4798, %4730
  %4822 = phi float [ %4818, %4798 ], [ %4795, %4730 ]
  %4823 = phi float [ %4819, %4798 ], [ %4796, %4730 ]
  %4824 = phi float [ %4820, %4798 ], [ %4797, %4730 ]
  %4825 = fmul fast float %4742, 9.843750e-01
  %4826 = fadd fast float %4825, 7.812500e-03
  %4827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %40, float %4826, float %2838, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4828 = extractvalue %dx.types.ResRet.f32 %4827, 0
  %4829 = extractvalue %dx.types.ResRet.f32 %4827, 1
  %4830 = extractvalue %dx.types.ResRet.f32 %4827, 2
  %4831 = extractvalue %dx.types.ResRet.f32 %4827, 3
  %4832 = fsub fast float %4830, %4828
  %4833 = fsub fast float %4831, %4829
  %4834 = fmul fast float %4832, %2844
  %4835 = fmul fast float %4833, %2844
  %4836 = fadd fast float %4834, %4828
  %4837 = fadd fast float %4835, %4829
  %4838 = fmul fast float %4836, %2699
  %4839 = fmul fast float %4836, %2700
  %4840 = fmul fast float %4836, %2707
  %4841 = fadd fast float %4838, %4837
  %4842 = fadd fast float %4839, %4837
  %4843 = fadd fast float %4840, %4837
  br i1 %2857, label %4844, label %4867

; <label>:4844                                    ; preds = %4821
  %4845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %1418, float %4742, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4846 = extractvalue %dx.types.ResRet.f32 %4845, 0
  %4847 = extractvalue %dx.types.ResRet.f32 %4845, 1
  %4848 = extractvalue %dx.types.ResRet.f32 %4845, 2
  %4849 = fadd fast float %4846, -5.000000e-01
  %4850 = fadd fast float %4847, -5.000000e-01
  %4851 = fadd fast float %4848, -5.000000e-01
  %4852 = fmul fast float %2699, 4.000000e+00
  %4853 = fmul fast float %4852, %4789
  %4854 = fmul fast float %4853, %4849
  %4855 = fmul fast float %2700, 4.000000e+00
  %4856 = fmul fast float %4855, %4790
  %4857 = fmul fast float %4856, %4850
  %4858 = fmul fast float %2707, 4.000000e+00
  %4859 = fmul fast float %4858, %4791
  %4860 = fmul fast float %4859, %4851
  %4861 = fadd fast float %4854, %4841
  %4862 = fadd fast float %4857, %4842
  %4863 = fadd fast float %4860, %4843
  %4864 = call float @dx.op.unary.f32(i32 7, float %4861)  ; Saturate(value)
  %4865 = call float @dx.op.unary.f32(i32 7, float %4862)  ; Saturate(value)
  %4866 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  br label %4867

; <label>:4867                                    ; preds = %4844, %4821
  %4868 = phi float [ %4864, %4844 ], [ %4841, %4821 ]
  %4869 = phi float [ %4865, %4844 ], [ %4842, %4821 ]
  %4870 = phi float [ %4866, %4844 ], [ %4843, %4821 ]
  %4871 = call float @dx.op.binary.f32(i32 35, float %4869, float %4870)  ; FMax(a,b)
  %4872 = call float @dx.op.binary.f32(i32 35, float %4868, float %4871)  ; FMax(a,b)
  %4873 = fsub fast float 1.000000e+00, %4872
  %4874 = fmul fast float %4822, %4776
  %4875 = fmul fast float %4823, %4776
  %4876 = fmul fast float %4824, %4776
  %4877 = fsub fast float 1.000000e+00, %4743
  %4878 = bitcast float %4877 to i32
  %4879 = sitofp i32 %4878 to float
  %4880 = fmul fast float %4879, 5.000000e+00
  %4881 = fadd fast float %4880, 0xC1EFBF8940000000
  %4882 = fptosi float %4881 to i32
  %4883 = bitcast i32 %4882 to float
  %4884 = fmul fast float %4883, %1417
  %4885 = fmul fast float %4873, %4884
  %4886 = fmul fast float %4885, %3371
  %4887 = fmul fast float %4885, %3372
  %4888 = fmul fast float %4885, %3373
  %4889 = fadd fast float %4886, %4874
  %4890 = fadd fast float %4887, %4875
  %4891 = fadd fast float %4888, %4876
  %4892 = fmul fast float %4748, %4731
  %4893 = fmul fast float %4892, %4873
  %4894 = fmul fast float %4748, %4732
  %4895 = fmul fast float %4894, %4873
  %4896 = fmul fast float %4748, %4733
  %4897 = fmul fast float %4896, %4873
  %4898 = fmul fast float %4892, %4889
  %4899 = fmul fast float %4894, %4890
  %4900 = fmul fast float %4896, %4891
  %4901 = fadd fast float %4893, %3355
  %4902 = fmul fast float %4901, %1438
  %4903 = fadd fast float %4895, %3356
  %4904 = fmul fast float %4903, %1438
  %4905 = fadd fast float %4897, %3357
  %4906 = fmul fast float %4905, %1438
  %4907 = fadd fast float %4898, %3424
  %4908 = fmul fast float %4907, %1438
  %4909 = fadd fast float %4899, %3427
  %4910 = fmul fast float %4909, %1438
  %4911 = fadd fast float %4900, %3430
  %4912 = fmul fast float %4911, %1438
  br label %4913

; <label>:4913                                    ; preds = %4867, %4725, %3351
  %4914 = phi float [ %3425, %3351 ], [ %3425, %4725 ], [ %4908, %4867 ]
  %4915 = phi float [ %3428, %3351 ], [ %3428, %4725 ], [ %4910, %4867 ]
  %4916 = phi float [ %3431, %3351 ], [ %3431, %4725 ], [ %4912, %4867 ]
  %4917 = phi float [ %3420, %3351 ], [ %3420, %4725 ], [ %4902, %4867 ]
  %4918 = phi float [ %3421, %3351 ], [ %3421, %4725 ], [ %4904, %4867 ]
  %4919 = phi float [ %3422, %3351 ], [ %3422, %4725 ], [ %4906, %4867 ]
  %4920 = fmul fast float %1438, %1438
  %4921 = fmul fast float %4920, %3397
  %4922 = fsub fast float -0.000000e+00, %4921
  %4923 = fmul fast float %4920, %3398
  %4924 = fsub fast float -0.000000e+00, %4923
  %4925 = fmul fast float %4920, %3399
  %4926 = fsub fast float -0.000000e+00, %4925
  %4927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4928 = extractvalue %dx.types.CBufRet.f32 %4927, 0
  %4929 = fmul fast float %4928, %3403
  %4930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4931 = extractvalue %dx.types.CBufRet.f32 %4930, 3
  %4932 = fsub fast float 1.000000e+00, %1413
  %4933 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4934 = fadd fast float %4919, %1412
  %4935 = fmul fast float %4934, %1413
  %4936 = fmul fast float %4933, %4931
  %4937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %4938 = extractvalue %dx.types.CBufRet.f32 %4937, 3
  %4939 = fmul fast float %4917, %2696
  %4940 = fmul fast float %4918, %2697
  %4941 = fmul fast float %4919, %2698
  %4942 = fcmp fast ogt float %67, %157
  %4943 = and i1 %4942, %1485
  %4944 = or i1 %1564, %4943
  %4945 = icmp eq i32 %1484, 2
  %4946 = fcmp fast ole float %67, %157
  %4947 = and i1 %4946, %4945
  %4948 = or i1 %4947, %4944
  br i1 %4943, label %4949, label %5206

; <label>:4949                                    ; preds = %4913
  %4950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4951 = extractvalue %dx.types.CBufRet.f32 %4950, 2
  %4952 = extractvalue %dx.types.CBufRet.f32 %4950, 3
  %4953 = fmul fast float %4951, %79
  %4954 = fmul fast float %4952, %80
  %4955 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  %4956 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4957 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %40, float %4955, float %4956, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4958 = extractvalue %dx.types.ResRet.f32 %4957, 0
  %4959 = extractvalue %dx.types.ResRet.f32 %4957, 1
  %4960 = extractvalue %dx.types.ResRet.f32 %4957, 2
  %4961 = extractvalue %dx.types.ResRet.f32 %4957, 3
  %4962 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %40, float %4955, float %4956, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4963 = extractvalue %dx.types.ResRet.f32 %4962, 0
  %4964 = extractvalue %dx.types.ResRet.f32 %4962, 1
  %4965 = extractvalue %dx.types.ResRet.f32 %4962, 2
  %4966 = extractvalue %dx.types.ResRet.f32 %4962, 3
  %4967 = call float @dx.op.binary.f32(i32 35, float %4959, float %4960)  ; FMax(a,b)
  %4968 = call float @dx.op.binary.f32(i32 35, float %4958, float %4967)  ; FMax(a,b)
  %4969 = call float @dx.op.binary.f32(i32 35, float %4968, float %4961)  ; FMax(a,b)
  %4970 = call float @dx.op.binary.f32(i32 36, float %4964, float %4965)  ; FMin(a,b)
  %4971 = call float @dx.op.binary.f32(i32 36, float %4963, float %4970)  ; FMin(a,b)
  %4972 = call float @dx.op.binary.f32(i32 36, float %4971, float %4966)  ; FMin(a,b)
  %4973 = fmul fast float %4969, 2.550000e+02
  %4974 = fadd fast float %4973, 0x3F70101020000000
  %4975 = fptoui float %4974 to i32
  %4976 = fmul fast float %4972, 2.550000e+02
  %4977 = fadd fast float %4976, 0x3F70101020000000
  %4978 = fptoui float %4977 to i32
  %4979 = icmp ult i32 %4975, %4978
  br i1 %4979, label %4980, label %5148

; <label>:4980                                    ; preds = %4949
  %4981 = fcmp fast ogt float %66, 9.843750e-01
  %4982 = fadd fast float %67, -4.000000e+00
  %4983 = select i1 %4981, float -4.000000e+00, float %4982
  %4984 = call float @dx.op.binary.f32(i32 35, float %4983, float 0.000000e+00)  ; FMax(a,b)
  %4985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4986 = extractvalue %dx.types.CBufRet.f32 %4985, 0
  %4987 = fadd fast float %4986, %4984
  %4988 = extractvalue %dx.types.CBufRet.f32 %4985, 2
  %4989 = fmul fast float %4987, %4988
  %4990 = call float @dx.op.unary.f32(i32 23, float %4989)  ; Log(value)
  %4991 = extractvalue %dx.types.CBufRet.f32 %4985, 3
  %4992 = fmul fast float %4991, %4990
  %4993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4994 = extractvalue %dx.types.CBufRet.f32 %4993, 2
  %4995 = fmul fast float %4992, %4994
  %4996 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4997 = uitofp i32 %4975 to float
  %4998 = uitofp i32 %4978 to float
  %4999 = fadd fast float %4997, 5.000000e-01
  %5000 = fadd fast float %4998, 5.000000e-01
  %5001 = fmul fast float %4994, %4999
  %5002 = fmul fast float %4994, %5000
  %5003 = fadd fast float %5001, 0x3F0FFB4800000000
  %5004 = fadd fast float %5002, 0xBF0FFB4800000000
  %5005 = call float @dx.op.binary.f32(i32 35, float %4996, float %5003)  ; FMax(a,b)
  %5006 = call float @dx.op.binary.f32(i32 36, float %5005, float %5004)  ; FMin(a,b)
  %5007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5008 = extractvalue %dx.types.CBufRet.f32 %5007, 1
  %5009 = extractvalue %dx.types.CBufRet.f32 %5007, 2
  %5010 = extractvalue %dx.types.CBufRet.f32 %5007, 0
  %5011 = fmul fast float %5008, %5006
  %5012 = fadd fast float %5010, %5011
  %5013 = fadd fast float %5010, %5009
  %5014 = fsub fast float %5008, %5009
  %5015 = fadd fast float %5014, %5010
  %5016 = call float @dx.op.binary.f32(i32 35, float %5012, float %5013)  ; FMax(a,b)
  %5017 = call float @dx.op.binary.f32(i32 36, float %5016, float %5015)  ; FMin(a,b)
  %5018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %4955, float %4956, float %5017, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5019 = extractvalue %dx.types.ResRet.f32 %5018, 0
  %5020 = extractvalue %dx.types.ResRet.f32 %5018, 1
  %5021 = extractvalue %dx.types.ResRet.f32 %5018, 2
  %5022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5023 = extractvalue %dx.types.CBufRet.i32 %5022, 0
  %5024 = extractvalue %dx.types.CBufRet.i32 %5022, 1
  %5025 = uitofp i32 %5023 to float
  %5026 = uitofp i32 %5024 to float
  %5027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5028 = extractvalue %dx.types.CBufRet.f32 %5027, 0
  %5029 = extractvalue %dx.types.CBufRet.f32 %5027, 1
  %5030 = fmul fast float %5025, %4955
  %5031 = fmul fast float %5026, %4956
  %5032 = fadd fast float %5030, -5.000000e-01
  %5033 = fadd fast float %5031, -5.000000e-01
  %5034 = call float @dx.op.unary.f32(i32 22, float %5032)  ; Frc(value)
  %5035 = call float @dx.op.unary.f32(i32 22, float %5033)  ; Frc(value)
  %5036 = fmul fast float %5034, %5034
  %5037 = fmul fast float %5036, %5034
  %5038 = fsub fast float 3.000000e+00, %5034
  %5039 = fmul fast float %5036, %5038
  %5040 = fmul fast float %5034, 3.000000e+00
  %5041 = fmul fast float %5037, 3.000000e+00
  %5042 = fmul fast float %5036, 6.000000e+00
  %5043 = fsub fast float %5041, %5042
  %5044 = fadd fast float %5043, 4.000000e+00
  %5045 = fmul fast float %5044, 0x3FC5555560000000
  %5046 = fmul fast float %5037, -3.000000e+00
  %5047 = fadd fast float %5036, %5034
  %5048 = fmul fast float %5047, 3.000000e+00
  %5049 = fadd fast float %5046, 1.000000e+00
  %5050 = fadd fast float %5049, %5048
  %5051 = fmul fast float %5037, 0x3FC5555560000000
  %5052 = fmul fast float %5035, %5035
  %5053 = fmul fast float %5052, %5035
  %5054 = fsub fast float 3.000000e+00, %5035
  %5055 = fmul fast float %5052, %5054
  %5056 = fmul fast float %5035, 3.000000e+00
  %5057 = fmul fast float %5053, 3.000000e+00
  %5058 = fmul fast float %5052, 6.000000e+00
  %5059 = fsub fast float %5057, %5058
  %5060 = fadd fast float %5059, 4.000000e+00
  %5061 = fmul fast float %5060, 0x3FC5555560000000
  %5062 = fmul fast float %5053, -3.000000e+00
  %5063 = fadd fast float %5052, %5035
  %5064 = fmul fast float %5063, 3.000000e+00
  %5065 = fadd fast float %5062, 1.000000e+00
  %5066 = fadd fast float %5065, %5064
  %5067 = fmul fast float %5053, 0x3FC5555560000000
  %5068 = fadd fast float %5034, 1.000000e+00
  %5069 = fsub fast float 1.000000e+00, %5040
  %5070 = fadd fast float %5069, %5039
  %5071 = fadd fast float %5070, %5044
  %5072 = fmul fast float %5071, 0x3FC5555560000000
  %5073 = fdiv fast float %5045, %5072
  %5074 = fsub fast float %5068, %5073
  %5075 = fsub fast float 1.000000e+00, %5034
  %5076 = fadd fast float %5050, %5037
  %5077 = fmul fast float %5076, 0x3FC5555560000000
  %5078 = fdiv fast float %5051, %5077
  %5079 = fadd fast float %5075, %5078
  %5080 = fadd fast float %5035, 1.000000e+00
  %5081 = fsub fast float 1.000000e+00, %5056
  %5082 = fadd fast float %5081, %5055
  %5083 = fadd fast float %5082, %5060
  %5084 = fmul fast float %5083, 0x3FC5555560000000
  %5085 = fdiv fast float %5061, %5084
  %5086 = fsub fast float %5080, %5085
  %5087 = fsub fast float 1.000000e+00, %5035
  %5088 = fadd fast float %5066, %5053
  %5089 = fmul fast float %5088, 0x3FC5555560000000
  %5090 = fdiv fast float %5067, %5089
  %5091 = fadd fast float %5090, %5087
  %5092 = fmul fast float %5074, %5028
  %5093 = fsub fast float %4955, %5092
  %5094 = fmul fast float %5079, %5028
  %5095 = fadd fast float %5094, %4955
  %5096 = fmul fast float %5091, %5029
  %5097 = fadd fast float %5096, %4956
  %5098 = fmul fast float %5086, %5029
  %5099 = fsub fast float %4956, %5098
  %5100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %5093, float %5099, float %5017, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5101 = extractvalue %dx.types.ResRet.f32 %5100, 0
  %5102 = extractvalue %dx.types.ResRet.f32 %5100, 1
  %5103 = extractvalue %dx.types.ResRet.f32 %5100, 2
  %5104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %5095, float %5099, float %5017, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5105 = extractvalue %dx.types.ResRet.f32 %5104, 0
  %5106 = extractvalue %dx.types.ResRet.f32 %5104, 1
  %5107 = extractvalue %dx.types.ResRet.f32 %5104, 2
  %5108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %5093, float %5097, float %5017, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5109 = extractvalue %dx.types.ResRet.f32 %5108, 0
  %5110 = extractvalue %dx.types.ResRet.f32 %5108, 1
  %5111 = extractvalue %dx.types.ResRet.f32 %5108, 2
  %5112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %5095, float %5097, float %5017, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5113 = extractvalue %dx.types.ResRet.f32 %5112, 0
  %5114 = extractvalue %dx.types.ResRet.f32 %5112, 1
  %5115 = extractvalue %dx.types.ResRet.f32 %5112, 2
  %5116 = fsub fast float %5109, %5101
  %5117 = fsub fast float %5110, %5102
  %5118 = fsub fast float %5111, %5103
  %5119 = fmul fast float %5116, %5089
  %5120 = fmul fast float %5117, %5089
  %5121 = fmul fast float %5118, %5089
  %5122 = fadd fast float %5119, %5101
  %5123 = fadd fast float %5120, %5102
  %5124 = fadd fast float %5121, %5103
  %5125 = fsub fast float %5113, %5105
  %5126 = fsub fast float %5114, %5106
  %5127 = fsub fast float %5115, %5107
  %5128 = fmul fast float %5125, %5089
  %5129 = fmul fast float %5126, %5089
  %5130 = fmul fast float %5127, %5089
  %5131 = fsub fast float %5105, %5122
  %5132 = fadd fast float %5131, %5128
  %5133 = fsub fast float %5106, %5123
  %5134 = fadd fast float %5133, %5129
  %5135 = fsub fast float %5107, %5124
  %5136 = fadd fast float %5135, %5130
  %5137 = fmul fast float %5132, %5077
  %5138 = fmul fast float %5134, %5077
  %5139 = fmul fast float %5136, %5077
  %5140 = fadd fast float %5137, %5122
  %5141 = fadd fast float %5138, %5123
  %5142 = fadd fast float %5139, %5124
  %5143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5144 = extractvalue %dx.types.CBufRet.f32 %5143, 1
  %5145 = fmul fast float %5140, %5144
  %5146 = fmul fast float %5141, %5144
  %5147 = fmul fast float %5142, %5144
  br label %5148

; <label>:5148                                    ; preds = %4980, %4949
  %5149 = phi float [ %5019, %4980 ], [ 1.000000e+00, %4949 ]
  %5150 = phi float [ %5020, %4980 ], [ 1.000000e+00, %4949 ]
  %5151 = phi float [ %5021, %4980 ], [ 1.000000e+00, %4949 ]
  %5152 = phi float [ %5145, %4980 ], [ 0.000000e+00, %4949 ]
  %5153 = phi float [ %5146, %4980 ], [ 0.000000e+00, %4949 ]
  %5154 = phi float [ %5147, %4980 ], [ 0.000000e+00, %4949 ]
  %5155 = fmul fast float %5152, %4922
  %5156 = fmul fast float %5153, %4924
  %5157 = fmul fast float %5154, %4926
  %5158 = call float @dx.op.dot3.f32(i32 55, float %5149, float %5150, float %5151, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5159 = call float @dx.op.dot3.f32(i32 55, float %5155, float %5156, float %5157, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5160 = select i1 %196, float %5158, float %5149
  %5161 = select i1 %196, float %5158, float %5150
  %5162 = select i1 %196, float 1.000000e+00, float %5151
  %5163 = select i1 %196, float %5159, float %5155
  %5164 = select i1 %196, float 0.000000e+00, float %5156
  %5165 = select i1 %196, float 0.000000e+00, float %5157
  %5166 = fmul fast float %5160, %4939
  %5167 = fmul fast float %5161, %4940
  %5168 = fmul fast float %5162, %4941
  %5169 = fadd fast float %5166, %5163
  %5170 = fadd fast float %5167, %5164
  %5171 = fadd fast float %5165, %5168
  %5172 = fmul fast float %5160, %4914
  %5173 = fmul fast float %5161, %4915
  %5174 = fmul fast float %5162, %4916
  %5175 = fmul fast float %105, %4951
  %5176 = fmul fast float %107, %4952
  %5177 = fsub fast float 1.000000e+00, %5175
  %5178 = fsub fast float 1.000000e+00, %5176
  %5179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5180 = extractvalue %dx.types.CBufRet.f32 %5179, 0
  %5181 = extractvalue %dx.types.CBufRet.f32 %5179, 1
  %5182 = extractvalue %dx.types.CBufRet.f32 %5179, 2
  %5183 = fmul fast float %5177, %5180
  %5184 = fmul fast float %5177, %5181
  %5185 = fmul fast float %5177, %5182
  %5186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5187 = extractvalue %dx.types.CBufRet.f32 %5186, 0
  %5188 = extractvalue %dx.types.CBufRet.f32 %5186, 1
  %5189 = extractvalue %dx.types.CBufRet.f32 %5186, 2
  %5190 = fmul fast float %5178, %5187
  %5191 = fmul fast float %5178, %5188
  %5192 = fmul fast float %5178, %5189
  %5193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5194 = extractvalue %dx.types.CBufRet.f32 %5193, 0
  %5195 = extractvalue %dx.types.CBufRet.f32 %5193, 1
  %5196 = extractvalue %dx.types.CBufRet.f32 %5193, 2
  %5197 = fadd fast float %5190, %5194
  %5198 = fadd fast float %5197, %5183
  %5199 = fadd fast float %5191, %5195
  %5200 = fadd fast float %5199, %5184
  %5201 = fadd fast float %5192, %5196
  %5202 = fadd fast float %5201, %5185
  %5203 = fmul fast float %5198, %157
  %5204 = fmul fast float %5200, %157
  %5205 = fmul fast float %5202, %157
  br label %5206

; <label>:5206                                    ; preds = %5148, %4913
  %5207 = phi float [ %5203, %5148 ], [ %135, %4913 ]
  %5208 = phi float [ %5204, %5148 ], [ %136, %4913 ]
  %5209 = phi float [ %5205, %5148 ], [ %137, %4913 ]
  %5210 = phi float [ %157, %5148 ], [ %67, %4913 ]
  %5211 = phi float [ %5169, %5148 ], [ %4939, %4913 ]
  %5212 = phi float [ %5170, %5148 ], [ %4940, %4913 ]
  %5213 = phi float [ %5171, %5148 ], [ %4941, %4913 ]
  %5214 = phi float [ %5172, %5148 ], [ %4914, %4913 ]
  %5215 = phi float [ %5173, %5148 ], [ %4915, %4913 ]
  %5216 = phi float [ %5174, %5148 ], [ %4916, %4913 ]
  %5217 = phi float [ %5149, %5148 ], [ 1.000000e+00, %4913 ]
  br i1 %4948, label %6372, label %5218

; <label>:5218                                    ; preds = %5206
  %5219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5220 = extractvalue %dx.types.CBufRet.f32 %5219, 0
  %5221 = extractvalue %dx.types.CBufRet.f32 %5219, 1
  %5222 = extractvalue %dx.types.CBufRet.f32 %5219, 2
  %5223 = extractvalue %dx.types.CBufRet.f32 %5219, 3
  %5224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5225 = extractvalue %dx.types.CBufRet.f32 %5224, 0
  %5226 = extractvalue %dx.types.CBufRet.f32 %5224, 1
  %5227 = extractvalue %dx.types.CBufRet.f32 %5224, 2
  %5228 = extractvalue %dx.types.CBufRet.f32 %5224, 3
  %5229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5230 = extractvalue %dx.types.CBufRet.f32 %5229, 0
  %5231 = extractvalue %dx.types.CBufRet.f32 %5229, 1
  %5232 = extractvalue %dx.types.CBufRet.f32 %5229, 2
  %5233 = extractvalue %dx.types.CBufRet.f32 %5229, 3
  %5234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5235 = extractvalue %dx.types.CBufRet.f32 %5234, 0
  %5236 = extractvalue %dx.types.CBufRet.f32 %5234, 1
  %5237 = extractvalue %dx.types.CBufRet.f32 %5234, 2
  %5238 = extractvalue %dx.types.CBufRet.f32 %5234, 3
  %5239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5240 = extractvalue %dx.types.CBufRet.f32 %5239, 3
  %5241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5242 = extractvalue %dx.types.CBufRet.f32 %5241, 3
  %5243 = extractvalue %dx.types.CBufRet.f32 %5241, 0
  %5244 = extractvalue %dx.types.CBufRet.f32 %5241, 1
  %5245 = extractvalue %dx.types.CBufRet.f32 %5241, 2
  %5246 = fcmp fast olt float %5245, -5.000000e-01
  %5247 = call float @dx.op.dot3.f32(i32 55, float %5207, float %5208, float %5209, float %5207, float %5208, float %5209)  ; Dot3(ax,ay,az,bx,by,bz)
  %5248 = call float @dx.op.unary.f32(i32 25, float %5247)  ; Rsqrt(value)
  %5249 = fmul fast float %5248, %5247
  %5250 = fmul fast float %5248, %5207
  %5251 = fmul fast float %5248, %5208
  %5252 = fmul fast float %5248, %5209
  %5253 = fadd fast float %5249, %5223
  %5254 = call float @dx.op.dot3.f32(i32 55, float %5250, float %5251, float %5252, float %5220, float %5221, float %5222)  ; Dot3(ax,ay,az,bx,by,bz)
  %5255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5256 = extractvalue %dx.types.CBufRet.i32 %5255, 1
  %5257 = and i32 %5256, 1
  %5258 = icmp ne i32 %5257, 0
  %5259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5260 = extractvalue %dx.types.CBufRet.f32 %5259, 2
  %5261 = fcmp fast ogt float %5260, 0.000000e+00
  %5262 = and i1 %5258, %5261
  br i1 %5262, label %5263, label %5669, !dx.controlflow.hints !112

; <label>:5263                                    ; preds = %5218
  %5264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5265 = extractvalue %dx.types.CBufRet.f32 %5264, 3
  %5266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.f32 %5266, 2
  %5268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5269 = extractvalue %dx.types.CBufRet.f32 %5268, 2
  %5270 = fsub fast float %5267, %5269
  %5271 = and i32 %5256, 2
  %5272 = extractvalue %dx.types.CBufRet.i32 %5255, 0
  %5273 = call i32 @dx.op.binary.i32(i32 40, i32 %5272, i32 3)  ; UMin(a,b)
  %5274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5275 = extractvalue %dx.types.CBufRet.f32 %5274, 0
  %5276 = extractvalue %dx.types.CBufRet.f32 %5274, 1
  %5277 = extractvalue %dx.types.CBufRet.f32 %5268, 0
  %5278 = extractvalue %dx.types.CBufRet.f32 %5268, 1
  %5279 = fsub fast float %5275, %5277
  %5280 = fsub fast float %5276, %5278
  %5281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5282 = extractvalue %dx.types.CBufRet.f32 %5281, 0
  %5283 = fcmp fast ogt float %5282, 0.000000e+00
  %5284 = fsub fast float -0.000000e+00, %5279
  %5285 = fsub fast float -0.000000e+00, %5280
  %5286 = call float @dx.op.dot2.f32(i32 54, float %5250, float %5251, float %5250, float %5251)  ; Dot2(ax,ay,bx,by)
  %5287 = call float @dx.op.dot2.f32(i32 54, float %5250, float %5251, float %5284, float %5285)  ; Dot2(ax,ay,bx,by)
  %5288 = fmul fast float %5287, 2.000000e+00
  %5289 = call float @dx.op.dot2.f32(i32 54, float %5284, float %5285, float %5284, float %5285)  ; Dot2(ax,ay,bx,by)
  %5290 = fmul fast float %5282, %5282
  %5291 = fsub fast float %5289, %5290
  %5292 = fmul fast float %5288, %5288
  %5293 = fmul fast float %5286, 4.000000e+00
  %5294 = fmul fast float %5293, %5291
  %5295 = fsub fast float %5292, %5294
  %5296 = fcmp fast ogt float %5295, 0.000000e+00
  br i1 %5296, label %5297, label %5312

; <label>:5297                                    ; preds = %5263
  %5298 = fcmp fast ogt float %5288, 0.000000e+00
  %5299 = call float @dx.op.unary.f32(i32 24, float %5295)  ; Sqrt(value)
  %5300 = fsub fast float -0.000000e+00, %5299
  %5301 = select i1 %5298, float %5299, float %5300
  %5302 = fadd fast float %5301, %5288
  %5303 = fmul float %5302, -5.000000e-01
  %5304 = fdiv fast float %5303, %5286
  %5305 = call float @dx.op.binary.f32(i32 35, float %5304, float 0.000000e+00)  ; FMax(a,b)
  %5306 = call float @dx.op.binary.f32(i32 36, float %5249, float %5305)  ; FMin(a,b)
  %5307 = fdiv fast float %5291, %5303
  %5308 = call float @dx.op.binary.f32(i32 35, float %5307, float 0.000000e+00)  ; FMax(a,b)
  %5309 = call float @dx.op.binary.f32(i32 36, float %5249, float %5308)  ; FMin(a,b)
  %5310 = call float @dx.op.binary.f32(i32 36, float %5306, float %5309)  ; FMin(a,b)
  %5311 = call float @dx.op.binary.f32(i32 35, float %5306, float %5309)  ; FMax(a,b)
  br label %5312

; <label>:5312                                    ; preds = %5297, %5263
  %5313 = phi float [ %5311, %5297 ], [ -1.000000e+00, %5263 ]
  %5314 = phi float [ %5310, %5297 ], [ -1.000000e+00, %5263 ]
  %5315 = phi i1 [ true, %5297 ], [ false, %5263 ]
  %5316 = and i1 %5283, %5315
  br i1 %5316, label %5317, label %5319

; <label>:5317                                    ; preds = %5312
  %5318 = fcmp fast oeq float %5314, %5313
  br i1 %5318, label %5622, label %5320

; <label>:5319                                    ; preds = %5312
  br i1 %5283, label %5622, label %5320

; <label>:5320                                    ; preds = %5319, %5317
  %5321 = phi float [ %5249, %5319 ], [ %5313, %5317 ]
  %5322 = phi float [ 0.000000e+00, %5319 ], [ %5314, %5317 ]
  %5323 = icmp ne i32 %5271, 0
  %5324 = fmul fast float %5321, %5252
  %5325 = fadd fast float %5324, %5265
  %5326 = fmul fast float %5325, %5321
  %5327 = select i1 %5323, float 0.000000e+00, float %5326
  %5328 = fcmp fast oeq float %5252, 0.000000e+00
  %5329 = fdiv fast float %5270, %5252
  %5330 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5329)  ; FMax(a,b)
  %5331 = select i1 %5328, float %5321, float %5330
  %5332 = call float @dx.op.binary.f32(i32 36, float %5321, float %5331)  ; FMin(a,b)
  %5333 = fcmp fast ogt float %5252, 0.000000e+00
  %5334 = fcmp fast olt float %5270, 0.000000e+00
  br i1 %5333, label %5335, label %5392

; <label>:5335                                    ; preds = %5320
  %5336 = icmp eq i32 %5271, 0
  br i1 %5334, label %5337, label %5381

; <label>:5337                                    ; preds = %5335
  %5338 = select i1 %5336, float %5321, float 0.000000e+00
  %5339 = fsub fast float -0.000000e+00, %5338
  %5340 = call float @dx.op.unary.f32(i32 6, float %5339)  ; FAbs(value)
  %5341 = fmul fast float %5338, %5252
  %5342 = fadd fast float %5341, %5265
  %5343 = fmul fast float %5340, %5342
  %5344 = fsub fast float %5327, %5343
  %5345 = fsub fast float %5321, %5340
  %5346 = select i1 %5336, float %5345, float 0.000000e+00
  %5347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5348 = extractvalue %dx.types.CBufRet.f32 %5347, 0
  %5349 = extractvalue %dx.types.CBufRet.f32 %5347, 1
  %5350 = extractvalue %dx.types.CBufRet.f32 %5347, 2
  %5351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5352 = extractvalue %dx.types.CBufRet.f32 %5351, 0
  %5353 = extractvalue %dx.types.CBufRet.f32 %5351, 1
  %5354 = extractvalue %dx.types.CBufRet.f32 %5351, 2
  %5355 = extractvalue %dx.types.CBufRet.f32 %5351, 3
  %5356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5357 = extractvalue %dx.types.CBufRet.f32 %5356, 3
  %5358 = call float @dx.op.binary.f32(i32 36, float %5344, float %5357)  ; FMin(a,b)
  %5359 = fmul fast float %5355, %5346
  %5360 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5361 = fsub fast float %5352, %5348
  %5362 = fsub fast float %5353, %5349
  %5363 = fsub fast float %5354, %5350
  %5364 = fmul fast float %5360, %5361
  %5365 = fmul fast float %5360, %5362
  %5366 = fmul fast float %5360, %5363
  %5367 = fadd fast float %5364, %5348
  %5368 = fadd fast float %5365, %5349
  %5369 = fadd fast float %5366, %5350
  %5370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5371 = extractvalue %dx.types.CBufRet.f32 %5370, 0
  %5372 = extractvalue %dx.types.CBufRet.f32 %5370, 1
  %5373 = fadd fast float %5372, %5371
  %5374 = call float @dx.op.unary.f32(i32 7, float %5373)  ; Saturate(value)
  %5375 = extractvalue %dx.types.CBufRet.f32 %5370, 2
  %5376 = extractvalue %dx.types.CBufRet.f32 %5370, 3
  %5377 = fadd fast float %5376, %5375
  %5378 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  %5379 = fmul fast float %5374, %5358
  %5380 = fmul fast float %5379, %5378
  br label %5622

; <label>:5381                                    ; preds = %5335
  br i1 %5336, label %5382, label %5403

; <label>:5382                                    ; preds = %5381
  %5383 = call float @dx.op.binary.f32(i32 36, float %5332, float %5322)  ; FMin(a,b)
  %5384 = fsub fast float %5332, %5383
  %5385 = fsub fast float %5384, %5321
  %5386 = call float @dx.op.unary.f32(i32 6, float %5385)  ; FAbs(value)
  %5387 = fadd fast float %5384, %5321
  %5388 = fmul fast float %5387, %5252
  %5389 = fadd fast float %5388, %5265
  %5390 = fmul fast float %5389, %5386
  %5391 = fsub fast float %5327, %5390
  br label %5403

; <label>:5392                                    ; preds = %5320
  br i1 %5334, label %5393, label %5403

; <label>:5393                                    ; preds = %5392
  %5394 = call float @dx.op.binary.f32(i32 35, float %5322, float %5332)  ; FMax(a,b)
  %5395 = icmp eq i32 %5271, 0
  %5396 = select i1 %5395, float %5332, float 0.000000e+00
  %5397 = fsub fast float -0.000000e+00, %5396
  %5398 = call float @dx.op.unary.f32(i32 6, float %5397)  ; FAbs(value)
  %5399 = fmul fast float %5396, %5252
  %5400 = fadd fast float %5399, %5265
  %5401 = fmul fast float %5398, %5400
  %5402 = fsub fast float %5327, %5401
  br label %5403

; <label>:5403                                    ; preds = %5393, %5392, %5382, %5381
  %5404 = phi float [ %5322, %5381 ], [ %5322, %5382 ], [ %5394, %5393 ], [ %5322, %5392 ]
  %5405 = phi float [ 0.000000e+00, %5381 ], [ %5386, %5382 ], [ %5398, %5393 ], [ 0.000000e+00, %5392 ]
  %5406 = phi float [ %5327, %5381 ], [ %5391, %5382 ], [ %5402, %5393 ], [ %5327, %5392 ]
  %5407 = phi float [ %5332, %5381 ], [ %5332, %5382 ], [ %5321, %5393 ], [ %5321, %5392 ]
  %5408 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 0
  store float -1.000000e+00, float* %5408, align 4, !tbaa !102, !noalias !113
  %5409 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 1
  store float -1.000000e+00, float* %5409, align 4, !tbaa !102, !noalias !113
  %5410 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 2
  store float -1.000000e+00, float* %5410, align 4, !tbaa !102, !noalias !113
  %5411 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 0
  store float -1.000000e+00, float* %5411, align 4, !tbaa !102, !noalias !113
  %5412 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 1
  store float -1.000000e+00, float* %5412, align 4, !tbaa !102, !noalias !113
  %5413 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 2
  store float -1.000000e+00, float* %5413, align 4, !tbaa !102, !noalias !113
  %5414 = icmp sgt i32 %5273, 0
  br i1 %5414, label %5415, label %5476

; <label>:5415                                    ; preds = %5403
  br label %5416

; <label>:5416                                    ; preds = %5465, %5415
  %5417 = phi i32 [ %5466, %5465 ], [ 0, %5415 ]
  %5418 = phi i32 [ %5467, %5465 ], [ 0, %5415 ]
  %5419 = add nuw i32 %5418, 171
  %5420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %5419)  ; CBufferLoadLegacy(handle,regIndex)
  %5421 = extractvalue %dx.types.CBufRet.f32 %5420, 0
  %5422 = extractvalue %dx.types.CBufRet.f32 %5420, 1
  %5423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5424 = extractvalue %dx.types.CBufRet.f32 %5423, 0
  %5425 = extractvalue %dx.types.CBufRet.f32 %5423, 1
  %5426 = fsub fast float %5421, %5424
  %5427 = fsub fast float %5422, %5425
  %5428 = extractvalue %dx.types.CBufRet.f32 %5420, 2
  %5429 = fsub fast float -0.000000e+00, %5426
  %5430 = fsub fast float -0.000000e+00, %5427
  %5431 = call float @dx.op.dot2.f32(i32 54, float %5250, float %5251, float %5429, float %5430)  ; Dot2(ax,ay,bx,by)
  %5432 = fmul fast float %5431, 2.000000e+00
  %5433 = call float @dx.op.dot2.f32(i32 54, float %5429, float %5430, float %5429, float %5430)  ; Dot2(ax,ay,bx,by)
  %5434 = fmul fast float %5428, %5428
  %5435 = fsub fast float %5433, %5434
  %5436 = fmul fast float %5432, %5432
  %5437 = fmul fast float %5293, %5435
  %5438 = fsub fast float %5436, %5437
  %5439 = fcmp fast ogt float %5438, 0.000000e+00
  br i1 %5439, label %5440, label %5455

; <label>:5440                                    ; preds = %5416
  %5441 = fcmp fast ogt float %5432, 0.000000e+00
  %5442 = call float @dx.op.unary.f32(i32 24, float %5438)  ; Sqrt(value)
  %5443 = fsub fast float -0.000000e+00, %5442
  %5444 = select i1 %5441, float %5442, float %5443
  %5445 = fadd fast float %5444, %5432
  %5446 = fmul float %5445, -5.000000e-01
  %5447 = fdiv fast float %5446, %5286
  %5448 = call float @dx.op.binary.f32(i32 35, float %5447, float 0.000000e+00)  ; FMax(a,b)
  %5449 = call float @dx.op.binary.f32(i32 36, float %5321, float %5448)  ; FMin(a,b)
  %5450 = fdiv fast float %5435, %5446
  %5451 = call float @dx.op.binary.f32(i32 35, float %5450, float 0.000000e+00)  ; FMax(a,b)
  %5452 = call float @dx.op.binary.f32(i32 36, float %5321, float %5451)  ; FMin(a,b)
  %5453 = call float @dx.op.binary.f32(i32 36, float %5449, float %5452)  ; FMin(a,b)
  %5454 = call float @dx.op.binary.f32(i32 35, float %5449, float %5452)  ; FMax(a,b)
  br label %5455

; <label>:5455                                    ; preds = %5440, %5416
  %5456 = phi float [ %5454, %5440 ], [ -1.000000e+00, %5416 ]
  %5457 = phi float [ %5453, %5440 ], [ -1.000000e+00, %5416 ]
  %5458 = phi i1 [ true, %5440 ], [ false, %5416 ]
  br i1 %5458, label %5459, label %5465

; <label>:5459                                    ; preds = %5455
  %5460 = call float @dx.op.binary.f32(i32 35, float %5404, float %5457)  ; FMax(a,b)
  %5461 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 %5418
  store float %5460, float* %5461, align 4, !tbaa !102, !noalias !113
  %5462 = call float @dx.op.binary.f32(i32 35, float %5404, float %5456)  ; FMax(a,b)
  %5463 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 %5418
  store float %5462, float* %5463, align 4, !tbaa !102, !noalias !113
  %5464 = add nsw i32 %5417, 1
  br label %5465

; <label>:5465                                    ; preds = %5459, %5455
  %5466 = phi i32 [ %5464, %5459 ], [ %5417, %5455 ]
  %5467 = add nuw nsw i32 %5418, 1
  %5468 = icmp eq i32 %5467, %5273
  br i1 %5468, label %5469, label %5416

; <label>:5469                                    ; preds = %5465
  %5470 = load float, float* %5410, align 4, !tbaa !102, !alias.scope !129, !noalias !132
  %5471 = load float, float* %5409, align 4, !tbaa !102, !alias.scope !135, !noalias !136
  %5472 = load float, float* %5408, align 4, !tbaa !102, !alias.scope !137, !noalias !138
  %5473 = load float, float* %5413, align 4, !tbaa !102, !alias.scope !139, !noalias !142
  %5474 = load float, float* %5412, align 4, !tbaa !102, !alias.scope !145, !noalias !146
  %5475 = load float, float* %5411, align 4, !tbaa !102, !alias.scope !147, !noalias !148
  br label %5476

; <label>:5476                                    ; preds = %5469, %5403
  %5477 = phi float [ -1.000000e+00, %5403 ], [ %5475, %5469 ]
  %5478 = phi float [ -1.000000e+00, %5403 ], [ %5474, %5469 ]
  %5479 = phi float [ -1.000000e+00, %5403 ], [ %5473, %5469 ]
  %5480 = phi float [ -1.000000e+00, %5403 ], [ %5472, %5469 ]
  %5481 = phi float [ -1.000000e+00, %5403 ], [ %5471, %5469 ]
  %5482 = phi float [ -1.000000e+00, %5403 ], [ %5470, %5469 ]
  %5483 = phi i32 [ 0, %5403 ], [ %5466, %5469 ]
  %5484 = call float @dx.op.binary.f32(i32 36, float %5481, float %5482)  ; FMin(a,b)
  %5485 = call float @dx.op.binary.f32(i32 36, float %5480, float %5484)  ; FMin(a,b)
  %5486 = call float @dx.op.binary.f32(i32 35, float %5480, float %5481)  ; FMax(a,b)
  %5487 = call float @dx.op.binary.f32(i32 36, float %5486, float %5482)  ; FMin(a,b)
  %5488 = call float @dx.op.binary.f32(i32 36, float %5480, float %5481)  ; FMin(a,b)
  %5489 = call float @dx.op.binary.f32(i32 35, float %5488, float %5487)  ; FMax(a,b)
  %5490 = call float @dx.op.binary.f32(i32 35, float %5481, float %5482)  ; FMax(a,b)
  %5491 = call float @dx.op.binary.f32(i32 35, float %5480, float %5490)  ; FMax(a,b)
  store float %5485, float* %5408, align 4, !tbaa !102, !alias.scope !137, !noalias !138
  store float %5489, float* %5409, align 4, !tbaa !102, !alias.scope !135, !noalias !136
  store float %5491, float* %5410, align 4, !tbaa !102, !alias.scope !129, !noalias !132
  %5492 = call float @dx.op.binary.f32(i32 36, float %5478, float %5479)  ; FMin(a,b)
  %5493 = call float @dx.op.binary.f32(i32 36, float %5477, float %5492)  ; FMin(a,b)
  %5494 = call float @dx.op.binary.f32(i32 35, float %5477, float %5478)  ; FMax(a,b)
  %5495 = call float @dx.op.binary.f32(i32 36, float %5494, float %5479)  ; FMin(a,b)
  %5496 = call float @dx.op.binary.f32(i32 36, float %5477, float %5478)  ; FMin(a,b)
  %5497 = call float @dx.op.binary.f32(i32 35, float %5496, float %5495)  ; FMax(a,b)
  %5498 = call float @dx.op.binary.f32(i32 35, float %5478, float %5479)  ; FMax(a,b)
  %5499 = call float @dx.op.binary.f32(i32 35, float %5477, float %5498)  ; FMax(a,b)
  store float %5493, float* %5411, align 4, !tbaa !102, !alias.scope !147, !noalias !148
  store float %5497, float* %5412, align 4, !tbaa !102, !alias.scope !145, !noalias !146
  store float %5499, float* %5413, align 4, !tbaa !102, !alias.scope !139, !noalias !142
  %5500 = sub nsw i32 3, %5483
  %5501 = icmp sgt i32 %5500, 2
  br i1 %5501, label %5502, label %5540

; <label>:5502                                    ; preds = %5476
  %5503 = icmp eq i32 %5271, 0
  %5504 = fsub fast float %5321, %5405
  %5505 = select i1 %5503, float %5504, float %5405
  %5506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5507 = extractvalue %dx.types.CBufRet.f32 %5506, 0
  %5508 = extractvalue %dx.types.CBufRet.f32 %5506, 1
  %5509 = extractvalue %dx.types.CBufRet.f32 %5506, 2
  %5510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5511 = extractvalue %dx.types.CBufRet.f32 %5510, 0
  %5512 = extractvalue %dx.types.CBufRet.f32 %5510, 1
  %5513 = extractvalue %dx.types.CBufRet.f32 %5510, 2
  %5514 = extractvalue %dx.types.CBufRet.f32 %5510, 3
  %5515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5516 = extractvalue %dx.types.CBufRet.f32 %5515, 3
  %5517 = call float @dx.op.binary.f32(i32 36, float %5406, float %5516)  ; FMin(a,b)
  %5518 = fmul fast float %5514, %5505
  %5519 = call float @dx.op.unary.f32(i32 7, float %5518)  ; Saturate(value)
  %5520 = fsub fast float %5511, %5507
  %5521 = fsub fast float %5512, %5508
  %5522 = fsub fast float %5513, %5509
  %5523 = fmul fast float %5519, %5520
  %5524 = fmul fast float %5519, %5521
  %5525 = fmul fast float %5519, %5522
  %5526 = fadd fast float %5523, %5507
  %5527 = fadd fast float %5524, %5508
  %5528 = fadd fast float %5525, %5509
  %5529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5530 = extractvalue %dx.types.CBufRet.f32 %5529, 0
  %5531 = extractvalue %dx.types.CBufRet.f32 %5529, 1
  %5532 = fadd fast float %5531, %5530
  %5533 = call float @dx.op.unary.f32(i32 7, float %5532)  ; Saturate(value)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5529, 2
  %5535 = extractvalue %dx.types.CBufRet.f32 %5529, 3
  %5536 = fadd fast float %5535, %5534
  %5537 = call float @dx.op.unary.f32(i32 7, float %5536)  ; Saturate(value)
  %5538 = fmul fast float %5533, %5517
  %5539 = fmul fast float %5538, %5537
  br label %5622

; <label>:5540                                    ; preds = %5476
  %5541 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 %5500
  %5542 = load float, float* %5541, align 4, !tbaa !102, !noalias !113
  %5543 = fcmp fast olt float %5542, %5407
  %5544 = icmp sgt i32 %5483, 0
  %5545 = and i1 %5544, %5543
  br i1 %5545, label %5546, label %5583

; <label>:5546                                    ; preds = %5540
  br label %5547

; <label>:5547                                    ; preds = %5576, %5546
  %5548 = phi float [ %5577, %5576 ], [ %5405, %5546 ]
  %5549 = phi float [ %5578, %5576 ], [ %5406, %5546 ]
  %5550 = phi float [ %5558, %5576 ], [ %5542, %5546 ]
  %5551 = phi i32 [ %5555, %5576 ], [ %5500, %5546 ]
  %5552 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 %5551
  %5553 = load float, float* %5552, align 4, !tbaa !102, !noalias !113
  %5554 = icmp slt i32 %5551, 2
  %5555 = add nsw i32 %5551, 1
  %5556 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 %5555
  %5557 = load float, float* %5556, align 4, !tbaa !102, !noalias !113
  %5558 = select i1 %5554, float %5557, float %5321
  %5559 = call float @dx.op.binary.f32(i32 36, float %5558, float %5553)  ; FMin(a,b)
  %5560 = call float @dx.op.binary.f32(i32 36, float %5407, float %5559)  ; FMin(a,b)
  %5561 = icmp eq i32 %5271, 0
  %5562 = fadd fast float %5560, %5550
  %5563 = fmul fast float %5562, %5252
  %5564 = fadd fast float %5563, %5265
  br i1 %5561, label %5570, label %5565

; <label>:5565                                    ; preds = %5547
  %5566 = fsub fast float %5560, %5550
  %5567 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5566)  ; FMax(a,b)
  %5568 = fmul fast float %5567, %5564
  %5569 = fadd fast float %5568, %5549
  br label %5576

; <label>:5570                                    ; preds = %5547
  %5571 = fsub fast float %5550, %5560
  %5572 = call float @dx.op.unary.f32(i32 6, float %5571)  ; FAbs(value)
  %5573 = fadd fast float %5572, %5548
  %5574 = fmul fast float %5572, %5564
  %5575 = fsub fast float %5549, %5574
  br label %5576

; <label>:5576                                    ; preds = %5570, %5565
  %5577 = phi float [ %5567, %5565 ], [ %5573, %5570 ]
  %5578 = phi float [ %5569, %5565 ], [ %5575, %5570 ]
  %5579 = fcmp fast olt float %5558, %5407
  %5580 = icmp slt i32 %5555, 3
  %5581 = and i1 %5580, %5579
  br i1 %5581, label %5547, label %5582

; <label>:5582                                    ; preds = %5576
  br label %5583

; <label>:5583                                    ; preds = %5582, %5540
  %5584 = phi float [ %5405, %5540 ], [ %5577, %5582 ]
  %5585 = phi float [ %5406, %5540 ], [ %5578, %5582 ]
  %5586 = fsub fast float %5321, %5584
  %5587 = select i1 %5323, float %5584, float %5586
  %5588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5589 = extractvalue %dx.types.CBufRet.f32 %5588, 0
  %5590 = extractvalue %dx.types.CBufRet.f32 %5588, 1
  %5591 = extractvalue %dx.types.CBufRet.f32 %5588, 2
  %5592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5593 = extractvalue %dx.types.CBufRet.f32 %5592, 0
  %5594 = extractvalue %dx.types.CBufRet.f32 %5592, 1
  %5595 = extractvalue %dx.types.CBufRet.f32 %5592, 2
  %5596 = extractvalue %dx.types.CBufRet.f32 %5592, 3
  %5597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5598 = extractvalue %dx.types.CBufRet.f32 %5597, 3
  %5599 = call float @dx.op.binary.f32(i32 36, float %5585, float %5598)  ; FMin(a,b)
  %5600 = fmul fast float %5596, %5587
  %5601 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5602 = fsub fast float %5593, %5589
  %5603 = fsub fast float %5594, %5590
  %5604 = fsub fast float %5595, %5591
  %5605 = fmul fast float %5601, %5602
  %5606 = fmul fast float %5601, %5603
  %5607 = fmul fast float %5601, %5604
  %5608 = fadd fast float %5605, %5589
  %5609 = fadd fast float %5606, %5590
  %5610 = fadd fast float %5607, %5591
  %5611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5612 = extractvalue %dx.types.CBufRet.f32 %5611, 0
  %5613 = extractvalue %dx.types.CBufRet.f32 %5611, 1
  %5614 = fadd fast float %5613, %5612
  %5615 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  %5616 = extractvalue %dx.types.CBufRet.f32 %5611, 2
  %5617 = extractvalue %dx.types.CBufRet.f32 %5611, 3
  %5618 = fadd fast float %5617, %5616
  %5619 = call float @dx.op.unary.f32(i32 7, float %5618)  ; Saturate(value)
  %5620 = fmul fast float %5615, %5599
  %5621 = fmul fast float %5620, %5619
  br label %5622

; <label>:5622                                    ; preds = %5583, %5502, %5337, %5319, %5317
  %5623 = phi float [ %5346, %5337 ], [ %5505, %5502 ], [ %5587, %5583 ], [ 0.000000e+00, %5317 ], [ 0.000000e+00, %5319 ]
  %5624 = phi float [ %5380, %5337 ], [ %5539, %5502 ], [ %5621, %5583 ], [ 0.000000e+00, %5317 ], [ 0.000000e+00, %5319 ]
  %5625 = phi float [ %5367, %5337 ], [ %5526, %5502 ], [ %5608, %5583 ], [ 0.000000e+00, %5317 ], [ 0.000000e+00, %5319 ]
  %5626 = phi float [ %5368, %5337 ], [ %5527, %5502 ], [ %5609, %5583 ], [ 0.000000e+00, %5317 ], [ 0.000000e+00, %5319 ]
  %5627 = phi float [ %5369, %5337 ], [ %5528, %5502 ], [ %5610, %5583 ], [ 0.000000e+00, %5317 ], [ 0.000000e+00, %5319 ]
  %5628 = fmul fast float %5260, %5624
  %5629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5630 = extractvalue %dx.types.CBufRet.f32 %5629, 2
  %5631 = fsub fast float %5267, %5630
  %5632 = fcmp fast olt float %5628, -2.000000e+01
  %5633 = call float @dx.op.unary.f32(i32 21, float %5628)  ; Exp(value)
  %5634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5635 = extractvalue %dx.types.CBufRet.f32 %5634, 2
  %5636 = extractvalue %dx.types.CBufRet.f32 %5634, 3
  %5637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5638 = extractvalue %dx.types.CBufRet.f32 %5637, 2
  %5639 = fmul fast float %5636, %5631
  %5640 = call float @dx.op.unary.f32(i32 7, float %5639)  ; Saturate(value)
  %5641 = fsub fast float 1.000000e+00, %5640
  %5642 = fmul fast float %5252, 5.000000e-01
  %5643 = fadd fast float %5642, 5.000000e-01
  %5644 = call float @dx.op.unary.f32(i32 7, float %5643)  ; Saturate(value)
  %5645 = fsub fast float 1.000000e+00, %5644
  %5646 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5641)  ; FMax(a,b)
  %5647 = fdiv fast float %5645, %5646
  %5648 = fsub fast float %5631, %5209
  %5649 = call float @dx.op.unary.f32(i32 6, float %5648)  ; FAbs(value)
  %5650 = fmul fast float %5649, %5635
  %5651 = call float @dx.op.unary.f32(i32 7, float %5647)  ; Saturate(value)
  %5652 = fsub fast float 1.000000e+00, %5650
  %5653 = fmul fast float %5652, %5651
  %5654 = fadd fast float %5653, %5650
  %5655 = fmul fast float %5638, %5631
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5657 = fsub fast float 1.000000e+00, %5654
  %5658 = fmul fast float %5657, %5656
  %5659 = fadd fast float %5658, %5654
  %5660 = call float @dx.op.unary.f32(i32 7, float %5659)  ; Saturate(value)
  %5661 = fadd fast float %5633, -1.000000e+00
  %5662 = select i1 %5632, float -1.000000e+00, float %5661
  %5663 = fmul fast float %5660, %5662
  %5664 = fadd fast float %5663, 1.000000e+00
  %5665 = fsub fast float -0.000000e+00, %5663
  %5666 = fmul fast float %5625, %5665
  %5667 = fmul fast float %5626, %5665
  %5668 = fmul fast float %5627, %5665
  br label %5669

; <label>:5669                                    ; preds = %5622, %5218
  %5670 = phi float [ %5623, %5622 ], [ 0.000000e+00, %5218 ]
  %5671 = phi float [ %5664, %5622 ], [ 1.000000e+00, %5218 ]
  %5672 = phi float [ %5666, %5622 ], [ 0.000000e+00, %5218 ]
  %5673 = phi float [ %5667, %5622 ], [ 0.000000e+00, %5218 ]
  %5674 = phi float [ %5668, %5622 ], [ 0.000000e+00, %5218 ]
  %5675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5676 = extractvalue %dx.types.CBufRet.f32 %5675, 1
  %5677 = fsub fast float 1.000000e+00, %5671
  %5678 = fmul fast float %5677, %5253
  %5679 = fmul fast float %5678, %5676
  %5680 = fsub fast float %5253, %5679
  br i1 %5246, label %5681, label %5710, !dx.controlflow.hints !149

; <label>:5681                                    ; preds = %5669
  %5682 = fmul fast float %5254, %5243
  %5683 = fadd fast float %5682, %5244
  %5684 = call float @dx.op.unary.f32(i32 7, float %5683)  ; Saturate(value)
  %5685 = fmul fast float %5225, %5680
  %5686 = fsub fast float -0.000000e+00, %5685
  %5687 = fmul fast float %5226, %5680
  %5688 = fsub fast float -0.000000e+00, %5687
  %5689 = call float @dx.op.unary.f32(i32 21, float %5686)  ; Exp(value)
  %5690 = call float @dx.op.unary.f32(i32 21, float %5688)  ; Exp(value)
  %5691 = call float @dx.op.binary.f32(i32 35, float %5233, float %5689)  ; FMax(a,b)
  %5692 = call float @dx.op.binary.f32(i32 35, float %5233, float %5690)  ; FMax(a,b)
  %5693 = fsub fast float %5692, %5691
  %5694 = fmul fast float %5693, %5684
  %5695 = fadd fast float %5694, %5691
  %5696 = call float @dx.op.unary.f32(i32 7, float %5695)  ; Saturate(value)
  %5697 = fsub fast float %5230, %5235
  %5698 = fsub fast float %5231, %5236
  %5699 = fsub fast float %5232, %5237
  %5700 = fmul fast float %5684, %5697
  %5701 = fmul fast float %5684, %5698
  %5702 = fmul fast float %5684, %5699
  %5703 = fadd fast float %5700, %5235
  %5704 = fadd fast float %5701, %5236
  %5705 = fadd fast float %5702, %5237
  %5706 = fsub fast float 1.000000e+00, %5696
  %5707 = fmul fast float %5706, %5703
  %5708 = fmul fast float %5706, %5704
  %5709 = fmul fast float %5706, %5705
  br label %5769

; <label>:5710                                    ; preds = %5669
  %5711 = fmul fast float %5680, %5242
  %5712 = call float @dx.op.unary.f32(i32 7, float %5711)  ; Saturate(value)
  %5713 = fsub fast float 2.000000e+00, %5712
  %5714 = fmul fast float %5712, 9.921875e-01
  %5715 = fmul fast float %5714, %5713
  %5716 = fadd fast float %5715, 3.906250e-03
  %5717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %40, float %5716, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5718 = extractvalue %dx.types.ResRet.f32 %5717, 0
  %5719 = fsub fast float %5712, %5718
  %5720 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5719)  ; FMax(a,b)
  %5721 = fmul fast float %5228, %5209
  %5722 = call float @dx.op.unary.f32(i32 6, float %5721)  ; FAbs(value)
  %5723 = fcmp fast ogt float %5722, 0x3EB0C6F7A0000000
  br i1 %5723, label %5724, label %5730, !dx.controlflow.hints !150

; <label>:5724                                    ; preds = %5710
  %5725 = fmul fast float %5721, 0xBFF7154760000000
  %5726 = call float @dx.op.unary.f32(i32 21, float %5725)  ; Exp(value)
  %5727 = fsub fast float 1.000000e+00, %5726
  %5728 = fdiv fast float %5727, %5721
  %5729 = fmul fast float %5728, %5238
  br label %5730

; <label>:5730                                    ; preds = %5724, %5710
  %5731 = phi float [ %5729, %5724 ], [ %5238, %5710 ]
  %5732 = fadd fast float %5731, %5240
  %5733 = fmul fast float %5732, %5720
  %5734 = fmul fast float %5225, %5733
  %5735 = fsub fast float -0.000000e+00, %5734
  %5736 = fmul fast float %5226, %5733
  %5737 = fsub fast float -0.000000e+00, %5736
  %5738 = fmul fast float %5227, %5733
  %5739 = fsub fast float -0.000000e+00, %5738
  %5740 = call float @dx.op.unary.f32(i32 21, float %5735)  ; Exp(value)
  %5741 = call float @dx.op.unary.f32(i32 21, float %5737)  ; Exp(value)
  %5742 = call float @dx.op.unary.f32(i32 21, float %5739)  ; Exp(value)
  %5743 = fmul fast float %5254, %5254
  %5744 = fadd fast float %5743, 1.000000e+00
  %5745 = fmul fast float %5744, 0x3FAE8EC8A0000000
  %5746 = fmul fast float %5745, %5235
  %5747 = fmul fast float %5745, %5236
  %5748 = fmul fast float %5745, %5237
  %5749 = fmul fast float %5254, %5233
  %5750 = fsub fast float 1.000000e+00, %5749
  %5751 = fmul fast float %5233, %5233
  %5752 = fsub fast float 1.000000e+00, %5751
  %5753 = fmul fast float %5752, 0x3FB45F3060000000
  %5754 = fmul fast float %5750, %5750
  %5755 = fdiv fast float 1.000000e+00, %5754
  %5756 = fmul fast float %5753, %5755
  %5757 = fmul fast float %5756, %5230
  %5758 = fmul fast float %5756, %5231
  %5759 = fmul fast float %5756, %5232
  %5760 = fadd fast float %5757, %5746
  %5761 = fadd fast float %5758, %5747
  %5762 = fadd fast float %5759, %5748
  %5763 = fsub fast float 1.000000e+00, %5740
  %5764 = fsub fast float 1.000000e+00, %5741
  %5765 = fsub fast float 1.000000e+00, %5742
  %5766 = fmul fast float %5760, %5763
  %5767 = fmul fast float %5761, %5764
  %5768 = fmul fast float %5762, %5765
  br label %5769

; <label>:5769                                    ; preds = %5730, %5681
  %5770 = phi float [ %5707, %5681 ], [ %5766, %5730 ]
  %5771 = phi float [ %5708, %5681 ], [ %5767, %5730 ]
  %5772 = phi float [ %5709, %5681 ], [ %5768, %5730 ]
  %5773 = phi float [ %5696, %5681 ], [ %5740, %5730 ]
  %5774 = phi float [ %5696, %5681 ], [ %5741, %5730 ]
  %5775 = phi float [ %5696, %5681 ], [ %5742, %5730 ]
  br i1 %5262, label %5776, label %5974, !dx.controlflow.hints !151

; <label>:5776                                    ; preds = %5769
  %5777 = extractvalue %dx.types.CBufRet.f32 %5675, 0
  %5778 = fmul fast float %5777, %5677
  %5779 = fsub fast float %5672, %5770
  %5780 = fsub fast float %5673, %5771
  %5781 = fsub fast float %5674, %5772
  %5782 = fmul fast float %5778, %5779
  %5783 = fmul fast float %5778, %5780
  %5784 = fmul fast float %5778, %5781
  %5785 = fadd fast float %5782, %5770
  %5786 = fadd fast float %5783, %5771
  %5787 = fadd fast float %5784, %5772
  %5788 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5773)  ; FMax(a,b)
  %5789 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5774)  ; FMax(a,b)
  %5790 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5775)  ; FMax(a,b)
  %5791 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5671)  ; FMax(a,b)
  %5792 = call float @dx.op.binary.f32(i32 35, float %5670, float %5680)  ; FMax(a,b)
  %5793 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5792)  ; FMax(a,b)
  %5794 = fdiv fast float %5670, %5793
  %5795 = call float @dx.op.unary.f32(i32 7, float %5794)  ; Saturate(value)
  %5796 = fdiv fast float %5680, %5793
  %5797 = call float @dx.op.unary.f32(i32 7, float %5796)  ; Saturate(value)
  %5798 = fcmp fast une float %5791, 1.000000e+00
  br i1 %5798, label %5799, label %5812, !dx.controlflow.hints !152

; <label>:5799                                    ; preds = %5776
  %5800 = call float @dx.op.unary.f32(i32 23, float %5791)  ; Log(value)
  %5801 = fmul fast float %5800, 0x3FE62E4300000000
  %5802 = fmul fast float %5672, %5801
  %5803 = fsub fast float -0.000000e+00, %5802
  %5804 = fmul fast float %5673, %5801
  %5805 = fsub fast float -0.000000e+00, %5804
  %5806 = fmul fast float %5674, %5801
  %5807 = fsub fast float -0.000000e+00, %5806
  %5808 = fsub fast float 1.000000e+00, %5791
  %5809 = fdiv fast float %5803, %5808
  %5810 = fdiv fast float %5805, %5808
  %5811 = fdiv fast float %5807, %5808
  br label %5812

; <label>:5812                                    ; preds = %5799, %5776
  %5813 = phi float [ %5809, %5799 ], [ %5672, %5776 ]
  %5814 = phi float [ %5810, %5799 ], [ %5673, %5776 ]
  %5815 = phi float [ %5811, %5799 ], [ %5674, %5776 ]
  %5816 = phi float [ %5801, %5799 ], [ 0.000000e+00, %5776 ]
  %5817 = fcmp fast une float %5788, 1.000000e+00
  br i1 %5817, label %5818, label %5825, !dx.controlflow.hints !153

; <label>:5818                                    ; preds = %5812
  %5819 = call float @dx.op.unary.f32(i32 23, float %5788)  ; Log(value)
  %5820 = fmul fast float %5819, 0x3FE62E4300000000
  %5821 = fmul fast float %5785, %5820
  %5822 = fsub fast float -0.000000e+00, %5821
  %5823 = fsub fast float 1.000000e+00, %5788
  %5824 = fdiv fast float %5822, %5823
  br label %5825

; <label>:5825                                    ; preds = %5818, %5812
  %5826 = phi float [ %5824, %5818 ], [ %5785, %5812 ]
  %5827 = phi float [ %5820, %5818 ], [ 0.000000e+00, %5812 ]
  %5828 = fcmp fast une float %5789, 1.000000e+00
  br i1 %5828, label %5829, label %5836, !dx.controlflow.hints !153

; <label>:5829                                    ; preds = %5825
  %5830 = call float @dx.op.unary.f32(i32 23, float %5789)  ; Log(value)
  %5831 = fmul fast float %5830, 0x3FE62E4300000000
  %5832 = fmul fast float %5786, %5831
  %5833 = fsub fast float -0.000000e+00, %5832
  %5834 = fsub fast float 1.000000e+00, %5789
  %5835 = fdiv fast float %5833, %5834
  br label %5836

; <label>:5836                                    ; preds = %5829, %5825
  %5837 = phi float [ %5835, %5829 ], [ %5786, %5825 ]
  %5838 = phi float [ %5831, %5829 ], [ 0.000000e+00, %5825 ]
  %5839 = fcmp fast une float %5790, 1.000000e+00
  br i1 %5839, label %5840, label %5847, !dx.controlflow.hints !153

; <label>:5840                                    ; preds = %5836
  %5841 = call float @dx.op.unary.f32(i32 23, float %5790)  ; Log(value)
  %5842 = fmul fast float %5841, 0x3FE62E4300000000
  %5843 = fmul fast float %5787, %5842
  %5844 = fsub fast float -0.000000e+00, %5843
  %5845 = fsub fast float 1.000000e+00, %5790
  %5846 = fdiv fast float %5844, %5845
  br label %5847

; <label>:5847                                    ; preds = %5840, %5836
  %5848 = phi float [ %5846, %5840 ], [ %5787, %5836 ]
  %5849 = phi float [ %5842, %5840 ], [ 0.000000e+00, %5836 ]
  %5850 = fmul fast float %5813, %5797
  %5851 = fmul fast float %5814, %5797
  %5852 = fmul fast float %5815, %5797
  %5853 = fmul fast float %5816, %5797
  %5854 = fmul fast float %5826, %5795
  %5855 = fmul fast float %5837, %5795
  %5856 = fmul fast float %5848, %5795
  %5857 = fmul fast float %5827, %5795
  %5858 = fmul fast float %5838, %5795
  %5859 = fmul fast float %5849, %5795
  %5860 = fadd fast float %5854, %5850
  %5861 = fadd fast float %5855, %5851
  %5862 = fadd fast float %5856, %5852
  %5863 = fadd fast float %5857, %5853
  %5864 = fadd fast float %5858, %5853
  %5865 = fadd fast float %5859, %5853
  %5866 = fcmp fast une float %5863, 0.000000e+00
  br i1 %5866, label %5867, label %5874, !dx.controlflow.hints !154

; <label>:5867                                    ; preds = %5847
  %5868 = fmul fast float %5863, 0x3FF7154760000000
  %5869 = call float @dx.op.unary.f32(i32 21, float %5868)  ; Exp(value)
  %5870 = fsub fast float 1.000000e+00, %5869
  %5871 = fmul fast float %5860, %5870
  %5872 = fsub fast float -0.000000e+00, %5871
  %5873 = fdiv fast float %5872, %5863
  br label %5874

; <label>:5874                                    ; preds = %5867, %5847
  %5875 = phi float [ %5869, %5867 ], [ 1.000000e+00, %5847 ]
  %5876 = phi float [ %5873, %5867 ], [ %5860, %5847 ]
  %5877 = fcmp fast une float %5864, 0.000000e+00
  br i1 %5877, label %5878, label %5885, !dx.controlflow.hints !154

; <label>:5878                                    ; preds = %5874
  %5879 = fmul fast float %5864, 0x3FF7154760000000
  %5880 = call float @dx.op.unary.f32(i32 21, float %5879)  ; Exp(value)
  %5881 = fsub fast float 1.000000e+00, %5880
  %5882 = fmul fast float %5861, %5881
  %5883 = fsub fast float -0.000000e+00, %5882
  %5884 = fdiv fast float %5883, %5864
  br label %5885

; <label>:5885                                    ; preds = %5878, %5874
  %5886 = phi float [ %5880, %5878 ], [ 1.000000e+00, %5874 ]
  %5887 = phi float [ %5884, %5878 ], [ %5861, %5874 ]
  %5888 = fcmp fast une float %5865, 0.000000e+00
  br i1 %5888, label %5889, label %5896, !dx.controlflow.hints !154

; <label>:5889                                    ; preds = %5885
  %5890 = fmul fast float %5865, 0x3FF7154760000000
  %5891 = call float @dx.op.unary.f32(i32 21, float %5890)  ; Exp(value)
  %5892 = fsub fast float 1.000000e+00, %5891
  %5893 = fmul fast float %5862, %5892
  %5894 = fsub fast float -0.000000e+00, %5893
  %5895 = fdiv fast float %5894, %5865
  br label %5896

; <label>:5896                                    ; preds = %5889, %5885
  %5897 = phi float [ %5891, %5889 ], [ 1.000000e+00, %5885 ]
  %5898 = phi float [ %5895, %5889 ], [ %5862, %5885 ]
  %5899 = fcmp fast ogt float %5795, %5797
  br i1 %5899, label %5900, label %5920

; <label>:5900                                    ; preds = %5896
  %5901 = fsub fast float 1.000000e+00, %5797
  %5902 = fmul fast float %5813, %5901
  %5903 = fmul fast float %5814, %5901
  %5904 = fmul fast float %5815, %5901
  %5905 = fmul fast float %5816, %5901
  %5906 = fcmp fast une float %5905, 0.000000e+00
  br i1 %5906, label %5907, label %5958, !dx.controlflow.hints !155

; <label>:5907                                    ; preds = %5900
  %5908 = fmul fast float %5905, 0x3FF7154760000000
  %5909 = call float @dx.op.unary.f32(i32 21, float %5908)  ; Exp(value)
  %5910 = fsub fast float 1.000000e+00, %5909
  %5911 = fmul fast float %5902, %5910
  %5912 = fsub fast float -0.000000e+00, %5911
  %5913 = fmul fast float %5903, %5910
  %5914 = fsub fast float -0.000000e+00, %5913
  %5915 = fmul fast float %5904, %5910
  %5916 = fsub fast float -0.000000e+00, %5915
  %5917 = fdiv fast float %5912, %5905
  %5918 = fdiv fast float %5914, %5905
  %5919 = fdiv fast float %5916, %5905
  br label %5958

; <label>:5920                                    ; preds = %5896
  %5921 = fsub fast float 1.000000e+00, %5795
  %5922 = fmul fast float %5826, %5921
  %5923 = fmul fast float %5837, %5921
  %5924 = fmul fast float %5848, %5921
  %5925 = fmul fast float %5827, %5921
  %5926 = fmul fast float %5838, %5921
  %5927 = fmul fast float %5849, %5921
  %5928 = fcmp fast une float %5925, 0.000000e+00
  br i1 %5928, label %5929, label %5936, !dx.controlflow.hints !154

; <label>:5929                                    ; preds = %5920
  %5930 = fmul fast float %5925, 0x3FF7154760000000
  %5931 = call float @dx.op.unary.f32(i32 21, float %5930)  ; Exp(value)
  %5932 = fsub fast float 1.000000e+00, %5931
  %5933 = fmul fast float %5922, %5932
  %5934 = fsub fast float -0.000000e+00, %5933
  %5935 = fdiv fast float %5934, %5925
  br label %5936

; <label>:5936                                    ; preds = %5929, %5920
  %5937 = phi float [ %5935, %5929 ], [ %5922, %5920 ]
  %5938 = phi float [ %5931, %5929 ], [ 1.000000e+00, %5920 ]
  %5939 = fcmp fast une float %5926, 0.000000e+00
  br i1 %5939, label %5940, label %5947, !dx.controlflow.hints !154

; <label>:5940                                    ; preds = %5936
  %5941 = fmul fast float %5926, 0x3FF7154760000000
  %5942 = call float @dx.op.unary.f32(i32 21, float %5941)  ; Exp(value)
  %5943 = fsub fast float 1.000000e+00, %5942
  %5944 = fmul fast float %5923, %5943
  %5945 = fsub fast float -0.000000e+00, %5944
  %5946 = fdiv fast float %5945, %5926
  br label %5947

; <label>:5947                                    ; preds = %5940, %5936
  %5948 = phi float [ %5946, %5940 ], [ %5923, %5936 ]
  %5949 = phi float [ %5942, %5940 ], [ 1.000000e+00, %5936 ]
  %5950 = fcmp fast une float %5927, 0.000000e+00
  br i1 %5950, label %5951, label %5958, !dx.controlflow.hints !154

; <label>:5951                                    ; preds = %5947
  %5952 = fmul fast float %5927, 0x3FF7154760000000
  %5953 = call float @dx.op.unary.f32(i32 21, float %5952)  ; Exp(value)
  %5954 = fsub fast float 1.000000e+00, %5953
  %5955 = fmul fast float %5924, %5954
  %5956 = fsub fast float -0.000000e+00, %5955
  %5957 = fdiv fast float %5956, %5927
  br label %5958

; <label>:5958                                    ; preds = %5951, %5947, %5907, %5900
  %5959 = phi float [ %5957, %5951 ], [ %5919, %5907 ], [ %5904, %5900 ], [ %5924, %5947 ]
  %5960 = phi float [ %5948, %5951 ], [ %5918, %5907 ], [ %5903, %5900 ], [ %5948, %5947 ]
  %5961 = phi float [ %5937, %5951 ], [ %5917, %5907 ], [ %5902, %5900 ], [ %5937, %5947 ]
  %5962 = phi float [ %5953, %5951 ], [ %5909, %5907 ], [ 1.000000e+00, %5900 ], [ 1.000000e+00, %5947 ]
  %5963 = phi float [ %5949, %5951 ], [ %5909, %5907 ], [ 1.000000e+00, %5900 ], [ %5949, %5947 ]
  %5964 = phi float [ %5938, %5951 ], [ %5909, %5907 ], [ 1.000000e+00, %5900 ], [ %5938, %5947 ]
  %5965 = fmul fast float %5964, %5876
  %5966 = fmul fast float %5963, %5887
  %5967 = fmul fast float %5962, %5898
  %5968 = fadd fast float %5965, %5961
  %5969 = fadd fast float %5966, %5960
  %5970 = fadd fast float %5967, %5959
  %5971 = fmul fast float %5964, %5875
  %5972 = fmul fast float %5963, %5886
  %5973 = fmul fast float %5962, %5897
  br label %5974

; <label>:5974                                    ; preds = %5958, %5769
  %5975 = phi float [ %5973, %5958 ], [ %5775, %5769 ]
  %5976 = phi float [ %5972, %5958 ], [ %5774, %5769 ]
  %5977 = phi float [ %5971, %5958 ], [ %5773, %5769 ]
  %5978 = phi float [ %5970, %5958 ], [ %5772, %5769 ]
  %5979 = phi float [ %5969, %5958 ], [ %5771, %5769 ]
  %5980 = phi float [ %5968, %5958 ], [ %5770, %5769 ]
  %5981 = fmul fast float %5980, %4922
  %5982 = fmul fast float %5979, %4924
  %5983 = fmul fast float %5978, %4926
  %5984 = fmul fast float %5977, %5217
  %5985 = call float @dx.op.dot3.f32(i32 55, float %5977, float %5976, float %5975, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5986 = call float @dx.op.dot3.f32(i32 55, float %5981, float %5982, float %5983, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5987 = select i1 %196, float %5985, float %5977
  %5988 = select i1 %196, float %5985, float %5976
  %5989 = select i1 %196, float 1.000000e+00, float %5975
  %5990 = select i1 %196, float %5986, float %5981
  %5991 = select i1 %196, float 0.000000e+00, float %5982
  %5992 = select i1 %196, float 0.000000e+00, float %5983
  %5993 = fmul fast float %5987, %5211
  %5994 = fmul fast float %5988, %5212
  %5995 = fmul fast float %5989, %5213
  %5996 = fadd fast float %5993, %5990
  %5997 = fadd fast float %5994, %5991
  %5998 = fadd fast float %5992, %5995
  %5999 = fmul fast float %5987, %5214
  %6000 = fmul fast float %5988, %5215
  %6001 = fmul fast float %5989, %5216
  %6002 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6003 = extractvalue %dx.types.CBufRet.i32 %6002, 0
  %6004 = icmp eq i32 %6003, 0
  br i1 %6004, label %6372, label %6005, !dx.controlflow.hints !156

; <label>:6005                                    ; preds = %5974
  %6006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6007 = extractvalue %dx.types.CBufRet.f32 %6006, 2
  %6008 = extractvalue %dx.types.CBufRet.f32 %6006, 3
  %6009 = fmul fast float %6007, %79
  %6010 = fmul fast float %6008, %80
  %6011 = fmul fast float %6009, 2.000000e+00
  %6012 = fmul fast float %6010, 2.000000e+00
  %6013 = fsub fast float 1.000000e+00, %6011
  %6014 = fsub fast float 1.000000e+00, %6012
  %6015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6016 = extractvalue %dx.types.CBufRet.f32 %6015, 0
  %6017 = extractvalue %dx.types.CBufRet.f32 %6015, 1
  %6018 = extractvalue %dx.types.CBufRet.f32 %6015, 2
  %6019 = fmul fast float %6013, %6016
  %6020 = fmul fast float %6013, %6017
  %6021 = fmul fast float %6013, %6018
  %6022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6023 = extractvalue %dx.types.CBufRet.f32 %6022, 0
  %6024 = extractvalue %dx.types.CBufRet.f32 %6022, 1
  %6025 = extractvalue %dx.types.CBufRet.f32 %6022, 2
  %6026 = fmul fast float %6014, %6023
  %6027 = fmul fast float %6014, %6024
  %6028 = fmul fast float %6014, %6025
  %6029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6030 = extractvalue %dx.types.CBufRet.f32 %6029, 0
  %6031 = extractvalue %dx.types.CBufRet.f32 %6029, 1
  %6032 = extractvalue %dx.types.CBufRet.f32 %6029, 2
  %6033 = fadd fast float %6026, %6030
  %6034 = fadd fast float %6033, %6019
  %6035 = fadd fast float %6027, %6031
  %6036 = fadd fast float %6035, %6020
  %6037 = fadd fast float %6028, %6032
  %6038 = fadd fast float %6037, %6021
  %6039 = fmul fast float %6034, %5210
  %6040 = fmul fast float %6036, %5210
  %6041 = fmul fast float %6038, %5210
  %6042 = fmul fast float %6039, %6039
  %6043 = fmul fast float %6040, %6040
  %6044 = fadd fast float %6042, %6043
  %6045 = fmul fast float %6041, %6041
  %6046 = fadd fast float %6044, %6045
  %6047 = call float @dx.op.unary.f32(i32 24, float %6046)  ; Sqrt(value)
  %6048 = extractvalue %dx.types.CBufRet.f32 %4937, 0
  %6049 = fsub fast float %6047, %6048
  %6050 = extractvalue %dx.types.CBufRet.f32 %4937, 2
  %6051 = fmul fast float %6049, %6050
  %6052 = call float @dx.op.unary.f32(i32 7, float %6051)  ; Saturate(value)
  %6053 = fadd fast float %6052, -5.000000e-01
  %6054 = fmul fast float %6053, 2.000000e+00
  %6055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6056 = extractvalue %dx.types.CBufRet.f32 %6055, 2
  %6057 = call float @dx.op.binary.f32(i32 36, float %6056, float %6054)  ; FMin(a,b)
  %6058 = fsub fast float -0.000000e+00, %6056
  %6059 = fcmp fast ogt float %6057, %6058
  br i1 %6059, label %6060, label %6372, !dx.controlflow.hints !157

; <label>:6060                                    ; preds = %6005
  %6061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6062 = extractvalue %dx.types.CBufRet.f32 %6061, 3
  %6063 = fcmp fast ogt float %6062, 0.000000e+00
  br i1 %6063, label %6064, label %6139, !dx.controlflow.hints !158

; <label>:6064                                    ; preds = %6060
  %6065 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %6066 = extractvalue %dx.types.Dimensions %6065, 0
  %6067 = sitofp i32 %6066 to float
  %6068 = extractvalue %dx.types.Dimensions %6065, 1
  %6069 = sitofp i32 %6068 to float
  %6070 = fmul fast float %6009, %6067
  %6071 = fmul fast float %6010, %6069
  %6072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6073 = extractvalue %dx.types.CBufRet.f32 %6072, 1
  %6074 = fsub fast float -0.000000e+00, %6073
  %6075 = fptoui float %6074 to i32
  %6076 = fptoui float %6070 to i32
  %6077 = fptoui float %6071 to i32
  %6078 = and i32 %6075, 31
  %6079 = lshr i32 %6076, %6078
  %6080 = lshr i32 %6077, %6078
  %6081 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 %6075, i32 %6079, i32 %6080, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6082 = extractvalue %dx.types.ResRet.f32 %6081, 0
  %6083 = fcmp fast olt float %6082, -1.000000e+00
  %6084 = fcmp fast ogt float %6082, -1.000000e+00
  %6085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6086 = extractvalue %dx.types.CBufRet.f32 %6085, 1
  %6087 = select i1 %6084, float %6086, float 1.000000e+00
  %6088 = fadd fast float %6082, 1.000000e+00
  %6089 = fmul fast float %6087, %6088
  %6090 = call float @dx.op.unary.f32(i32 6, float %6089)  ; FAbs(value)
  %6091 = extractvalue %dx.types.CBufRet.f32 %6085, 3
  %6092 = fcmp fast oge float %6090, %6091
  %6093 = select i1 %6092, float 0x4197782600000000, float %6090
  %6094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6095 = extractvalue %dx.types.CBufRet.f32 %6094, 0
  %6096 = extractvalue %dx.types.CBufRet.f32 %6094, 1
  %6097 = extractvalue %dx.types.CBufRet.f32 %6094, 2
  %6098 = select i1 %6083, float %6095, float %6016
  %6099 = select i1 %6083, float %6096, float %6017
  %6100 = select i1 %6083, float %6097, float %6018
  %6101 = fmul fast float %6098, %6013
  %6102 = fmul fast float %6099, %6013
  %6103 = fmul fast float %6100, %6013
  %6104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6105 = extractvalue %dx.types.CBufRet.f32 %6104, 0
  %6106 = extractvalue %dx.types.CBufRet.f32 %6104, 1
  %6107 = extractvalue %dx.types.CBufRet.f32 %6104, 2
  %6108 = select i1 %6083, float %6105, float %6023
  %6109 = select i1 %6083, float %6106, float %6024
  %6110 = select i1 %6083, float %6107, float %6025
  %6111 = fmul fast float %6108, %6014
  %6112 = fmul fast float %6109, %6014
  %6113 = fmul fast float %6110, %6014
  %6114 = fadd fast float %6111, %6101
  %6115 = fadd fast float %6112, %6102
  %6116 = fadd fast float %6113, %6103
  %6117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6118 = extractvalue %dx.types.CBufRet.f32 %6117, 0
  %6119 = extractvalue %dx.types.CBufRet.f32 %6117, 1
  %6120 = extractvalue %dx.types.CBufRet.f32 %6117, 2
  %6121 = select i1 %6083, float %6118, float %6030
  %6122 = select i1 %6083, float %6119, float %6031
  %6123 = select i1 %6083, float %6120, float %6032
  %6124 = fadd fast float %6114, %6121
  %6125 = fadd fast float %6115, %6122
  %6126 = fadd fast float %6116, %6123
  %6127 = fmul fast float %6124, %6093
  %6128 = fmul fast float %6125, %6093
  %6129 = fmul fast float %6126, %6093
  %6130 = fmul fast float %6127, %6127
  %6131 = fmul fast float %6128, %6128
  %6132 = fadd fast float %6130, %6131
  %6133 = fmul fast float %6129, %6129
  %6134 = fadd fast float %6132, %6133
  %6135 = call float @dx.op.unary.f32(i32 24, float %6134)  ; Sqrt(value)
  %6136 = fsub fast float %6135, %6048
  %6137 = fmul fast float %6136, %6050
  %6138 = call float @dx.op.unary.f32(i32 7, float %6137)  ; Saturate(value)
  br label %6139

; <label>:6139                                    ; preds = %6064, %6060
  %6140 = phi float [ %6138, %6064 ], [ 1.000000e+00, %6060 ]
  %6141 = fmul fast float %6057, 5.000000e-01
  %6142 = fadd fast float %6141, 5.000000e-01
  %6143 = call float @dx.op.unary.f32(i32 22, float %6142)  ; Frc(value)
  %6144 = call float @dx.op.unary.f32(i32 27, float %6143)  ; Round_ni(value)
  %6145 = call float @dx.op.unary.f32(i32 22, float %6143)  ; Frc(value)
  %6146 = fmul fast float %6145, 2.000000e+00
  %6147 = fadd fast float %6146, -1.000000e+00
  %6148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %6009, float %6010, float %6144, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6149 = extractvalue %dx.types.ResRet.f32 %6148, 0
  %6150 = extractvalue %dx.types.ResRet.f32 %6148, 1
  %6151 = extractvalue %dx.types.ResRet.f32 %6148, 2
  %6152 = extractvalue %dx.types.ResRet.f32 %6148, 3
  %6153 = fadd fast float %6149, -5.000000e-01
  %6154 = fadd fast float %6151, -5.000000e-01
  %6155 = fmul fast float %6153, 0xBFD5555560000000
  %6156 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6154, float %6155)  ; FMad(a,b,c)
  %6157 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6150, float 0.000000e+00)  ; FMad(a,b,c)
  %6158 = fadd fast float %6157, %6152
  %6159 = fmul fast float %6153, -7.500000e-01
  %6160 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6154, float %6159)  ; FMad(a,b,c)
  %6161 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6150, float 0.000000e+00)  ; FMad(a,b,c)
  %6162 = fadd fast float %6161, %6152
  %6163 = call float @dx.op.binary.f32(i32 35, float %6156, float -1.000000e+00)  ; FMax(a,b)
  %6164 = call float @dx.op.binary.f32(i32 35, float %6158, float -1.000000e+00)  ; FMax(a,b)
  %6165 = call float @dx.op.binary.f32(i32 35, float %6160, float -1.000000e+00)  ; FMax(a,b)
  %6166 = call float @dx.op.binary.f32(i32 35, float %6162, float -1.000000e+00)  ; FMax(a,b)
  %6167 = call float @dx.op.binary.f32(i32 36, float %6163, float 1.000000e+00)  ; FMin(a,b)
  %6168 = call float @dx.op.binary.f32(i32 36, float %6164, float 1.000000e+00)  ; FMin(a,b)
  %6169 = call float @dx.op.binary.f32(i32 36, float %6165, float 1.000000e+00)  ; FMin(a,b)
  %6170 = call float @dx.op.binary.f32(i32 36, float %6166, float 1.000000e+00)  ; FMin(a,b)
  %6171 = fcmp fast olt float %6167, 0x3FEFFF8020000000
  br i1 %6171, label %6172, label %6287, !dx.controlflow.hints !159

; <label>:6172                                    ; preds = %6139
  %6173 = extractvalue %dx.types.CBufRet.f32 %6055, 3
  %6174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6175 = extractvalue %dx.types.CBufRet.f32 %6174, 0
  %6176 = extractvalue %dx.types.CBufRet.f32 %6174, 1
  %6177 = extractvalue %dx.types.CBufRet.f32 %6174, 2
  %6178 = extractvalue %dx.types.CBufRet.f32 %6174, 3
  %6179 = fsub fast float %6175, %6167
  %6180 = fsub fast float %6176, %6168
  %6181 = fsub fast float %6177, %6169
  %6182 = fsub fast float %6178, %6170
  %6183 = fmul fast float %6179, %6173
  %6184 = fmul fast float %6180, %6173
  %6185 = fmul fast float %6181, %6173
  %6186 = fmul fast float %6182, %6173
  %6187 = fadd fast float %6183, %6167
  %6188 = fadd fast float %6184, %6168
  %6189 = fsub fast float -0.000000e+00, %6188
  %6190 = fadd fast float %6185, %6169
  %6191 = fadd fast float %6186, %6170
  %6192 = fmul fast float %6187, %6187
  %6193 = fsub fast float %6188, %6192
  %6194 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6193)  ; FMax(a,b)
  %6195 = fdiv fast float 1.000000e+00, %6194
  %6196 = fmul fast float %6188, %6187
  %6197 = fsub fast float %6190, %6196
  %6198 = fsub fast float %6147, %6187
  %6199 = fmul fast float %6147, %6147
  %6200 = fsub fast float %6199, %6188
  %6201 = fmul fast float %6198, %6195
  %6202 = fmul fast float %6201, %6197
  %6203 = fsub fast float %6200, %6202
  %6204 = fmul fast float %6188, %6188
  %6205 = fsub fast float %6191, %6204
  %6206 = fmul fast float %6197, %6197
  %6207 = fmul fast float %6206, %6195
  %6208 = fsub fast float %6205, %6207
  %6209 = fdiv fast float %6203, %6208
  %6210 = fmul fast float %6197, %6209
  %6211 = fsub fast float %6198, %6210
  %6212 = fmul fast float %6211, %6195
  %6213 = fmul fast float %6212, %6187
  %6214 = fsub fast float 1.000000e+00, %6213
  %6215 = fmul fast float %6188, %6209
  %6216 = fsub fast float %6214, %6215
  %6217 = fmul fast float %6212, %6212
  %6218 = fmul fast float %6209, 4.000000e+00
  %6219 = fmul fast float %6218, %6216
  %6220 = fsub fast float %6217, %6219
  %6221 = call float @dx.op.unary.f32(i32 24, float %6220)  ; Sqrt(value)
  %6222 = fcmp fast oge float %6212, 0.000000e+00
  %6223 = fsub fast float -0.000000e+00, %6221
  %6224 = select i1 %6222, float %6223, float %6221
  %6225 = fsub fast float %6224, %6212
  %6226 = fdiv fast float %6225, %6209
  %6227 = fdiv fast float %6216, %6225
  %6228 = fmul fast float %6226, 5.000000e-01
  %6229 = fmul fast float %6227, 2.000000e+00
  %6230 = select i1 %6222, float %6228, float %6229
  %6231 = select i1 %6222, float %6229, float %6228
  %6232 = call float @dx.op.binary.f32(i32 35, float %6230, float %6231)  ; FMax(a,b)
  %6233 = call float @dx.op.binary.f32(i32 36, float %6230, float %6231)  ; FMin(a,b)
  %6234 = fcmp fast ogt float %6147, %6233
  br i1 %6234, label %6235, label %6245

; <label>:6235                                    ; preds = %6172
  %6236 = fsub fast float %6147, %6233
  %6237 = fsub fast float %6232, %6233
  %6238 = fmul fast float %6236, %6237
  %6239 = fmul fast float %6232, %6147
  %6240 = fadd fast float %6232, %6147
  %6241 = fmul fast float %6240, %6187
  %6242 = fadd fast float %6239, %6188
  %6243 = fsub fast float %6242, %6241
  %6244 = fdiv fast float %6243, %6238
  br label %6245

; <label>:6245                                    ; preds = %6235, %6172
  %6246 = phi float [ %6244, %6235 ], [ 0.000000e+00, %6172 ]
  %6247 = fcmp fast ogt float %6147, %6232
  %6248 = fsub fast float %6147, %6232
  br i1 %6247, label %6249, label %6259

; <label>:6249                                    ; preds = %6245
  %6250 = fsub fast float %6232, %6233
  %6251 = fmul fast float %6250, %6248
  %6252 = fmul fast float %6233, %6147
  %6253 = fadd fast float %6233, %6147
  %6254 = fmul fast float %6253, %6187
  %6255 = fsub fast float %6189, %6252
  %6256 = fadd fast float %6255, %6254
  %6257 = fdiv fast float %6256, %6251
  %6258 = fadd fast float %6257, %6246
  br label %6259

; <label>:6259                                    ; preds = %6249, %6245
  %6260 = phi float [ %6258, %6249 ], [ %6246, %6245 ]
  %6261 = fsub fast float %6147, %6233
  %6262 = fmul fast float %6261, %6248
  %6263 = fmul fast float %6233, %6232
  %6264 = fadd fast float %6233, %6232
  %6265 = fmul fast float %6264, %6187
  %6266 = fadd fast float %6263, %6188
  %6267 = fsub fast float %6266, %6265
  %6268 = fdiv fast float %6267, %6262
  %6269 = call float @dx.op.unary.f32(i32 7, float %6260)  ; Saturate(value)
  %6270 = fcmp fast oeq float %4938, 0.000000e+00
  %6271 = extractvalue %dx.types.CBufRet.f32 %6055, 0
  %6272 = fcmp fast oeq float %6271, 0.000000e+00
  %6273 = or i1 %6270, %6272
  %6274 = fmul fast float %6271, 2.000000e+00
  %6275 = fadd fast float %6056, %6057
  %6276 = fdiv fast float %6275, %6274
  %6277 = call float @dx.op.unary.f32(i32 7, float %6276)  ; Saturate(value)
  %6278 = fmul fast float %6277, 2.000000e+00
  %6279 = fsub fast float 3.000000e+00, %6278
  %6280 = fmul fast float %6277, %6277
  %6281 = fmul fast float %6280, %6279
  %6282 = select i1 %6273, float 1.000000e+00, float %6281
  %6283 = fmul fast float %6268, %4938
  %6284 = fadd fast float %6269, %6283
  %6285 = call float @dx.op.unary.f32(i32 7, float %6284)  ; Saturate(value)
  %6286 = fmul fast float %6282, %6285
  br label %6287

; <label>:6287                                    ; preds = %6259, %6139
  %6288 = phi float [ %6286, %6259 ], [ 0.000000e+00, %6139 ]
  %6289 = fsub fast float 1.000000e+00, %6288
  %6290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %6009, float %6010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6291 = extractvalue %dx.types.ResRet.f32 %6290, 0
  %6292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6293 = extractvalue %dx.types.CBufRet.i32 %6292, 2
  %6294 = icmp eq i32 %6293, 0
  br i1 %6294, label %6300, label %6295

; <label>:6295                                    ; preds = %6287
  %6296 = call float @dx.op.unary.f32(i32 7, float %6288)  ; Saturate(value)
  %6297 = fadd fast float %6291, -1.000000e+00
  %6298 = fmul fast float %6296, %6297
  %6299 = fadd fast float %6298, 1.000000e+00
  br label %6300

; <label>:6300                                    ; preds = %6295, %6287
  %6301 = phi float [ %6299, %6295 ], [ %6289, %6287 ]
  br i1 %6063, label %6302, label %6320

; <label>:6302                                    ; preds = %6300
  %6303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6304 = extractvalue %dx.types.CBufRet.f32 %6303, 1
  %6305 = fsub fast float %6140, %6304
  %6306 = call float @dx.op.unary.f32(i32 7, float %6305)  ; Saturate(value)
  %6307 = fsub fast float %6140, %6062
  %6308 = call float @dx.op.unary.f32(i32 7, float %6307)  ; Saturate(value)
  %6309 = fsub fast float %6306, %6308
  %6310 = fsub fast float %6142, %6308
  %6311 = fdiv fast float %6310, %6309
  %6312 = call float @dx.op.unary.f32(i32 7, float %6311)  ; Saturate(value)
  %6313 = fmul fast float %6312, 2.000000e+00
  %6314 = fsub fast float 3.000000e+00, %6313
  %6315 = fsub fast float %6291, %6301
  %6316 = fmul fast float %6312, %6312
  %6317 = fmul fast float %6316, %6315
  %6318 = fmul fast float %6317, %6314
  %6319 = fadd fast float %6318, %6301
  br label %6320

; <label>:6320                                    ; preds = %6302, %6300
  %6321 = phi float [ %6319, %6302 ], [ %6301, %6300 ]
  %6322 = call float @dx.op.binary.f32(i32 35, float %6291, float %6321)  ; FMax(a,b)
  %6323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6324 = extractvalue %dx.types.CBufRet.i32 %6323, 2
  %6325 = and i32 %6324, 1
  %6326 = icmp eq i32 %6325, 0
  %6327 = fcmp fast une float %6322, 1.000000e+00
  %6328 = and i1 %6327, %6326
  br i1 %6328, label %6329, label %6348

; <label>:6329                                    ; preds = %6320
  %6330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %6009, float %6010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6331 = extractvalue %dx.types.ResRet.f32 %6330, 0
  %6332 = extractvalue %dx.types.ResRet.f32 %6330, 1
  %6333 = extractvalue %dx.types.ResRet.f32 %6330, 2
  %6334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6335 = extractvalue %dx.types.CBufRet.f32 %6334, 1
  %6336 = fmul fast float %6335, %6331
  %6337 = fmul fast float %6335, %6332
  %6338 = fmul fast float %6335, %6333
  %6339 = fcmp fast ogt float %6291, 0x3FEFFF2E40000000
  %6340 = fsub fast float 1.000000e+00, %6322
  %6341 = fsub fast float 1.000000e+00, %6291
  %6342 = fdiv fast float %6340, %6341
  %6343 = call float @dx.op.unary.f32(i32 7, float %6342)  ; Saturate(value)
  %6344 = select i1 %6339, float 0.000000e+00, float %6343
  %6345 = fmul fast float %6336, %6344
  %6346 = fmul fast float %6337, %6344
  %6347 = fmul fast float %6338, %6344
  br label %6348

; <label>:6348                                    ; preds = %6329, %6320
  %6349 = phi float [ 0.000000e+00, %6320 ], [ %6345, %6329 ]
  %6350 = phi float [ 0.000000e+00, %6320 ], [ %6346, %6329 ]
  %6351 = phi float [ 0.000000e+00, %6320 ], [ %6347, %6329 ]
  %6352 = fmul fast float %6349, %4922
  %6353 = fmul fast float %6350, %4924
  %6354 = fmul fast float %6351, %4926
  %6355 = fmul fast float %6322, %5984
  %6356 = call float @dx.op.dot3.f32(i32 55, float %6322, float %6322, float %6322, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6357 = call float @dx.op.dot3.f32(i32 55, float %6352, float %6353, float %6354, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6358 = select i1 %196, float %6356, float %6322
  %6359 = select i1 %196, float 1.000000e+00, float %6322
  %6360 = select i1 %196, float %6357, float %6352
  %6361 = select i1 %196, float 0.000000e+00, float %6353
  %6362 = select i1 %196, float 0.000000e+00, float %6354
  %6363 = fmul fast float %6358, %5996
  %6364 = fmul fast float %6358, %5997
  %6365 = fmul fast float %6359, %5998
  %6366 = fadd fast float %6363, %6360
  %6367 = fadd fast float %6364, %6361
  %6368 = fadd fast float %6362, %6365
  %6369 = fmul fast float %6358, %5999
  %6370 = fmul fast float %6358, %6000
  %6371 = fmul fast float %6359, %6001
  br label %6372

; <label>:6372                                    ; preds = %6348, %6005, %5974, %5206
  %6373 = phi float [ %5211, %5206 ], [ %5996, %5974 ], [ %6366, %6348 ], [ %5996, %6005 ]
  %6374 = phi float [ %5212, %5206 ], [ %5997, %5974 ], [ %6367, %6348 ], [ %5997, %6005 ]
  %6375 = phi float [ %5213, %5206 ], [ %5998, %5974 ], [ %6368, %6348 ], [ %5998, %6005 ]
  %6376 = phi float [ %5214, %5206 ], [ %5999, %5974 ], [ %6369, %6348 ], [ %5999, %6005 ]
  %6377 = phi float [ %5215, %5206 ], [ %6000, %5974 ], [ %6370, %6348 ], [ %6000, %6005 ]
  %6378 = phi float [ %5216, %5206 ], [ %6001, %5974 ], [ %6371, %6348 ], [ %6001, %6005 ]
  %6379 = phi float [ %5217, %5206 ], [ %5984, %5974 ], [ %6355, %6348 ], [ %5984, %6005 ]
  %6380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6381 = extractvalue %dx.types.CBufRet.f32 %6380, 2
  %6382 = extractvalue %dx.types.CBufRet.f32 %6380, 3
  %6383 = fmul fast float %6381, %79
  %6384 = fmul fast float %6382, %80
  %6385 = call float @dx.op.unary.f32(i32 7, float %6383)  ; Saturate(value)
  %6386 = call float @dx.op.unary.f32(i32 7, float %6384)  ; Saturate(value)
  %6387 = select i1 %4948, i32 2, i32 0
  %6388 = or i32 %6387, 1
  %6389 = uitofp i32 %6388 to float
  %6390 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %40, float %6385, float %6386, float %6389, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6391 = extractvalue %dx.types.ResRet.f32 %6390, 0
  %6392 = extractvalue %dx.types.ResRet.f32 %6390, 1
  %6393 = extractvalue %dx.types.ResRet.f32 %6390, 2
  %6394 = extractvalue %dx.types.ResRet.f32 %6390, 3
  %6395 = add nuw nsw i32 %6387, 2
  %6396 = uitofp i32 %6395 to float
  %6397 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %40, float %6385, float %6386, float %6396, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6398 = extractvalue %dx.types.ResRet.f32 %6397, 0
  %6399 = extractvalue %dx.types.ResRet.f32 %6397, 1
  %6400 = extractvalue %dx.types.ResRet.f32 %6397, 2
  %6401 = extractvalue %dx.types.ResRet.f32 %6397, 3
  %6402 = call float @dx.op.binary.f32(i32 35, float %6392, float %6393)  ; FMax(a,b)
  %6403 = call float @dx.op.binary.f32(i32 35, float %6391, float %6402)  ; FMax(a,b)
  %6404 = call float @dx.op.binary.f32(i32 35, float %6403, float %6394)  ; FMax(a,b)
  %6405 = call float @dx.op.binary.f32(i32 36, float %6399, float %6400)  ; FMin(a,b)
  %6406 = call float @dx.op.binary.f32(i32 36, float %6398, float %6405)  ; FMin(a,b)
  %6407 = call float @dx.op.binary.f32(i32 36, float %6406, float %6401)  ; FMin(a,b)
  %6408 = fmul fast float %6404, 2.550000e+02
  %6409 = fadd fast float %6408, 0x3F70101020000000
  %6410 = fptoui float %6409 to i32
  %6411 = fmul fast float %6407, 2.550000e+02
  %6412 = fadd fast float %6411, 0x3F70101020000000
  %6413 = fptoui float %6412 to i32
  %6414 = icmp ult i32 %6410, %6413
  br i1 %6414, label %6415, label %6584

; <label>:6415                                    ; preds = %6372
  %6416 = fcmp fast ogt float %66, 9.843750e-01
  %6417 = fadd fast float %5210, -4.000000e+00
  %6418 = select i1 %6416, float -4.000000e+00, float %6417
  %6419 = call float @dx.op.binary.f32(i32 35, float %6418, float 0.000000e+00)  ; FMax(a,b)
  %6420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6421 = extractvalue %dx.types.CBufRet.f32 %6420, 0
  %6422 = fadd fast float %6421, %6419
  %6423 = extractvalue %dx.types.CBufRet.f32 %6420, 2
  %6424 = fmul fast float %6422, %6423
  %6425 = call float @dx.op.unary.f32(i32 23, float %6424)  ; Log(value)
  %6426 = extractvalue %dx.types.CBufRet.f32 %6420, 3
  %6427 = fmul fast float %6426, %6425
  %6428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6429 = extractvalue %dx.types.CBufRet.f32 %6428, 2
  %6430 = fmul fast float %6427, %6429
  %6431 = call float @dx.op.unary.f32(i32 7, float %6430)  ; Saturate(value)
  %6432 = uitofp i32 %6410 to float
  %6433 = uitofp i32 %6413 to float
  %6434 = fadd fast float %6432, 5.000000e-01
  %6435 = fadd fast float %6433, 5.000000e-01
  %6436 = fmul fast float %6429, %6434
  %6437 = fmul fast float %6429, %6435
  %6438 = fadd fast float %6436, 0x3F0FFB4800000000
  %6439 = fadd fast float %6437, 0xBF0FFB4800000000
  %6440 = call float @dx.op.binary.f32(i32 35, float %6431, float %6438)  ; FMax(a,b)
  %6441 = call float @dx.op.binary.f32(i32 36, float %6440, float %6439)  ; FMin(a,b)
  %6442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6443 = extractvalue %dx.types.CBufRet.f32 %6442, 1
  %6444 = extractvalue %dx.types.CBufRet.f32 %6442, 2
  %6445 = extractvalue %dx.types.CBufRet.f32 %6442, 0
  %6446 = select i1 %4948, float %6445, float 0.000000e+00
  %6447 = fmul fast float %6443, %6441
  %6448 = fadd fast float %6446, %6447
  %6449 = fadd fast float %6446, %6444
  %6450 = fsub fast float %6443, %6444
  %6451 = fadd fast float %6450, %6446
  %6452 = call float @dx.op.binary.f32(i32 35, float %6448, float %6449)  ; FMax(a,b)
  %6453 = call float @dx.op.binary.f32(i32 36, float %6452, float %6451)  ; FMin(a,b)
  %6454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %6385, float %6386, float %6453, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6455 = extractvalue %dx.types.ResRet.f32 %6454, 0
  %6456 = extractvalue %dx.types.ResRet.f32 %6454, 1
  %6457 = extractvalue %dx.types.ResRet.f32 %6454, 2
  %6458 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6459 = extractvalue %dx.types.CBufRet.i32 %6458, 0
  %6460 = extractvalue %dx.types.CBufRet.i32 %6458, 1
  %6461 = uitofp i32 %6459 to float
  %6462 = uitofp i32 %6460 to float
  %6463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6464 = extractvalue %dx.types.CBufRet.f32 %6463, 0
  %6465 = extractvalue %dx.types.CBufRet.f32 %6463, 1
  %6466 = fmul fast float %6461, %6385
  %6467 = fmul fast float %6462, %6386
  %6468 = fadd fast float %6466, -5.000000e-01
  %6469 = fadd fast float %6467, -5.000000e-01
  %6470 = call float @dx.op.unary.f32(i32 22, float %6468)  ; Frc(value)
  %6471 = call float @dx.op.unary.f32(i32 22, float %6469)  ; Frc(value)
  %6472 = fmul fast float %6470, %6470
  %6473 = fmul fast float %6472, %6470
  %6474 = fsub fast float 3.000000e+00, %6470
  %6475 = fmul fast float %6472, %6474
  %6476 = fmul fast float %6470, 3.000000e+00
  %6477 = fmul fast float %6473, 3.000000e+00
  %6478 = fmul fast float %6472, 6.000000e+00
  %6479 = fsub fast float %6477, %6478
  %6480 = fadd fast float %6479, 4.000000e+00
  %6481 = fmul fast float %6480, 0x3FC5555560000000
  %6482 = fmul fast float %6473, -3.000000e+00
  %6483 = fadd fast float %6472, %6470
  %6484 = fmul fast float %6483, 3.000000e+00
  %6485 = fadd fast float %6482, 1.000000e+00
  %6486 = fadd fast float %6485, %6484
  %6487 = fmul fast float %6473, 0x3FC5555560000000
  %6488 = fmul fast float %6471, %6471
  %6489 = fmul fast float %6488, %6471
  %6490 = fsub fast float 3.000000e+00, %6471
  %6491 = fmul fast float %6488, %6490
  %6492 = fmul fast float %6471, 3.000000e+00
  %6493 = fmul fast float %6489, 3.000000e+00
  %6494 = fmul fast float %6488, 6.000000e+00
  %6495 = fsub fast float %6493, %6494
  %6496 = fadd fast float %6495, 4.000000e+00
  %6497 = fmul fast float %6496, 0x3FC5555560000000
  %6498 = fmul fast float %6489, -3.000000e+00
  %6499 = fadd fast float %6488, %6471
  %6500 = fmul fast float %6499, 3.000000e+00
  %6501 = fadd fast float %6498, 1.000000e+00
  %6502 = fadd fast float %6501, %6500
  %6503 = fmul fast float %6489, 0x3FC5555560000000
  %6504 = fadd fast float %6470, 1.000000e+00
  %6505 = fsub fast float 1.000000e+00, %6476
  %6506 = fadd fast float %6505, %6475
  %6507 = fadd fast float %6506, %6480
  %6508 = fmul fast float %6507, 0x3FC5555560000000
  %6509 = fdiv fast float %6481, %6508
  %6510 = fsub fast float %6504, %6509
  %6511 = fsub fast float 1.000000e+00, %6470
  %6512 = fadd fast float %6486, %6473
  %6513 = fmul fast float %6512, 0x3FC5555560000000
  %6514 = fdiv fast float %6487, %6513
  %6515 = fadd fast float %6511, %6514
  %6516 = fadd fast float %6471, 1.000000e+00
  %6517 = fsub fast float 1.000000e+00, %6492
  %6518 = fadd fast float %6517, %6491
  %6519 = fadd fast float %6518, %6496
  %6520 = fmul fast float %6519, 0x3FC5555560000000
  %6521 = fdiv fast float %6497, %6520
  %6522 = fsub fast float %6516, %6521
  %6523 = fsub fast float 1.000000e+00, %6471
  %6524 = fadd fast float %6502, %6489
  %6525 = fmul fast float %6524, 0x3FC5555560000000
  %6526 = fdiv fast float %6503, %6525
  %6527 = fadd fast float %6526, %6523
  %6528 = fmul fast float %6510, %6464
  %6529 = fsub fast float %6385, %6528
  %6530 = fmul fast float %6515, %6464
  %6531 = fadd fast float %6530, %6385
  %6532 = fmul fast float %6527, %6465
  %6533 = fadd fast float %6532, %6386
  %6534 = fmul fast float %6522, %6465
  %6535 = fsub fast float %6386, %6534
  %6536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %6529, float %6535, float %6453, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6537 = extractvalue %dx.types.ResRet.f32 %6536, 0
  %6538 = extractvalue %dx.types.ResRet.f32 %6536, 1
  %6539 = extractvalue %dx.types.ResRet.f32 %6536, 2
  %6540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %6531, float %6535, float %6453, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6541 = extractvalue %dx.types.ResRet.f32 %6540, 0
  %6542 = extractvalue %dx.types.ResRet.f32 %6540, 1
  %6543 = extractvalue %dx.types.ResRet.f32 %6540, 2
  %6544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %6529, float %6533, float %6453, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6545 = extractvalue %dx.types.ResRet.f32 %6544, 0
  %6546 = extractvalue %dx.types.ResRet.f32 %6544, 1
  %6547 = extractvalue %dx.types.ResRet.f32 %6544, 2
  %6548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %6531, float %6533, float %6453, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6549 = extractvalue %dx.types.ResRet.f32 %6548, 0
  %6550 = extractvalue %dx.types.ResRet.f32 %6548, 1
  %6551 = extractvalue %dx.types.ResRet.f32 %6548, 2
  %6552 = fsub fast float %6545, %6537
  %6553 = fsub fast float %6546, %6538
  %6554 = fsub fast float %6547, %6539
  %6555 = fmul fast float %6552, %6525
  %6556 = fmul fast float %6553, %6525
  %6557 = fmul fast float %6554, %6525
  %6558 = fadd fast float %6555, %6537
  %6559 = fadd fast float %6556, %6538
  %6560 = fadd fast float %6557, %6539
  %6561 = fsub fast float %6549, %6541
  %6562 = fsub fast float %6550, %6542
  %6563 = fsub fast float %6551, %6543
  %6564 = fmul fast float %6561, %6525
  %6565 = fmul fast float %6562, %6525
  %6566 = fmul fast float %6563, %6525
  %6567 = fsub fast float %6541, %6558
  %6568 = fadd fast float %6567, %6564
  %6569 = fsub fast float %6542, %6559
  %6570 = fadd fast float %6569, %6565
  %6571 = fsub fast float %6543, %6560
  %6572 = fadd fast float %6571, %6566
  %6573 = fmul fast float %6568, %6513
  %6574 = fmul fast float %6570, %6513
  %6575 = fmul fast float %6572, %6513
  %6576 = fadd fast float %6573, %6558
  %6577 = fadd fast float %6574, %6559
  %6578 = fadd fast float %6575, %6560
  %6579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6580 = extractvalue %dx.types.CBufRet.f32 %6579, 1
  %6581 = fmul fast float %6576, %6580
  %6582 = fmul fast float %6577, %6580
  %6583 = fmul fast float %6578, %6580
  br label %6584

; <label>:6584                                    ; preds = %6415, %6372
  %6585 = phi float [ %6455, %6415 ], [ 1.000000e+00, %6372 ]
  %6586 = phi float [ %6456, %6415 ], [ 1.000000e+00, %6372 ]
  %6587 = phi float [ %6457, %6415 ], [ 1.000000e+00, %6372 ]
  %6588 = phi float [ %6581, %6415 ], [ 0.000000e+00, %6372 ]
  %6589 = phi float [ %6582, %6415 ], [ 0.000000e+00, %6372 ]
  %6590 = phi float [ %6583, %6415 ], [ 0.000000e+00, %6372 ]
  %6591 = fmul fast float %6588, %4922
  %6592 = fmul fast float %6589, %4924
  %6593 = fmul fast float %6590, %4926
  %6594 = fmul fast float %6585, %6379
  %6595 = call float @dx.op.dot3.f32(i32 55, float %6585, float %6586, float %6587, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6596 = call float @dx.op.dot3.f32(i32 55, float %6591, float %6592, float %6593, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6597 = select i1 %196, float %6595, float %6585
  %6598 = select i1 %196, float %6595, float %6586
  %6599 = select i1 %196, float 1.000000e+00, float %6587
  %6600 = select i1 %196, float %6596, float %6591
  %6601 = select i1 %196, float 0.000000e+00, float %6592
  %6602 = select i1 %196, float 0.000000e+00, float %6593
  %6603 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6604 = extractvalue %dx.types.CBufRet.i32 %6603, 3
  %6605 = and i32 %6604, 3
  %6606 = icmp ne i32 %6605, 0
  %6607 = and i32 %6604, 4
  %6608 = icmp ne i32 %6607, 0
  %6609 = and i1 %6606, %6608
  %6610 = and i1 %196, %6609
  br i1 %6610, label %6611, label %6617

; <label>:6611                                    ; preds = %6584
  %6612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6613 = extractvalue %dx.types.CBufRet.f32 %6612, 1
  %6614 = fadd fast float %6594, -1.000000e+00
  %6615 = fmul fast float %6613, %6614
  %6616 = fadd fast float %6615, 1.000000e+00
  br label %6617

; <label>:6617                                    ; preds = %6611, %6584
  %6618 = phi float [ %6616, %6611 ], [ %6594, %6584 ]
  %6619 = fadd fast float %6376, %6373
  %6620 = fmul fast float %6597, %6619
  %6621 = fadd fast float %6620, %6600
  %6622 = fadd fast float %6377, %6374
  %6623 = fmul fast float %6598, %6622
  %6624 = fadd fast float %6623, %6601
  %6625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6626 = extractvalue %dx.types.CBufRet.f32 %6625, 0
  br i1 %196, label %6627, label %6642

; <label>:6627                                    ; preds = %6617
  %6628 = fadd fast float %6621, %6624
  %6629 = fmul fast float %6626, %6628
  %6630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6631 = extractvalue %dx.types.CBufRet.f32 %6630, 3
  %6632 = extractvalue %dx.types.CBufRet.f32 %4930, 1
  %6633 = fsub fast float %4935, %4929
  %6634 = fadd fast float %6633, %4936
  %6635 = fsub fast float %6634, %6632
  %6636 = extractvalue %dx.types.CBufRet.f32 %4930, 2
  %6637 = fmul fast float %6635, %6636
  %6638 = call float @dx.op.unary.f32(i32 7, float %6637)  ; Saturate(value)
  %6639 = fsub fast float %6638, %6631
  %6640 = fmul fast float %6639, %6618
  %6641 = fadd fast float %6640, %6631
  br label %6667

; <label>:6642                                    ; preds = %6617
  %6643 = fadd fast float %6378, %6375
  %6644 = fmul fast float %6599, %6643
  %6645 = fadd fast float %6644, %6602
  %6646 = fmul fast float %6626, %6621
  %6647 = fmul fast float %6626, %6624
  %6648 = fmul fast float %6626, %6645
  %6649 = call float @dx.op.binary.f32(i32 35, float %6647, float %6648)  ; FMax(a,b)
  %6650 = call float @dx.op.binary.f32(i32 35, float %6646, float %6649)  ; FMax(a,b)
  %6651 = call float @dx.op.binary.f32(i32 35, float %4924, float %4926)  ; FMax(a,b)
  %6652 = call float @dx.op.binary.f32(i32 35, float %4922, float %6651)  ; FMax(a,b)
  %6653 = call float @dx.op.binary.f32(i32 35, float %6650, float %6652)  ; FMax(a,b)
  %6654 = fcmp fast ugt float %6653, 0x3F10000000000000
  br i1 %6654, label %6656, label %6655

; <label>:6655                                    ; preds = %6642
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6656

; <label>:6656                                    ; preds = %6655, %6642
  %6657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %6658 = extractvalue %dx.types.ResRet.i32 %6657, 0
  %6659 = and i32 %6658, 32
  %6660 = icmp eq i32 %6659, 0
  br i1 %6660, label %6667, label %6661

; <label>:6661                                    ; preds = %6656
  %6662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6663 = extractvalue %dx.types.CBufRet.f32 %6662, 0
  %6664 = fmul fast float %6663, 0x3FE99999A0000000
  %6665 = fadd fast float %6663, %6646
  %6666 = fadd fast float %6664, %6648
  br label %6667

; <label>:6667                                    ; preds = %6661, %6656, %6627
  %6668 = phi float [ 1.000000e+00, %6627 ], [ %4924, %6661 ], [ %4924, %6656 ]
  %6669 = phi float [ 1.000000e+00, %6627 ], [ %4926, %6661 ], [ %4926, %6656 ]
  %6670 = phi float [ %6629, %6627 ], [ %6665, %6661 ], [ %6646, %6656 ]
  %6671 = phi float [ %6641, %6627 ], [ %6647, %6661 ], [ %6647, %6656 ]
  %6672 = phi float [ 1.000000e+00, %6627 ], [ %6666, %6661 ], [ %6648, %6656 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6673 = call float @dx.op.binary.f32(i32 36, float %6670, float 3.225500e+04)  ; FMin(a,b)
  %6674 = call float @dx.op.binary.f32(i32 36, float %6671, float 3.225500e+04)  ; FMin(a,b)
  %6675 = call float @dx.op.binary.f32(i32 36, float %6672, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6673)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6674)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6675)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6676 = call float @dx.op.binary.f32(i32 36, float %4922, float 3.225500e+04)  ; FMin(a,b)
  %6677 = call float @dx.op.binary.f32(i32 36, float %6668, float 3.225500e+04)  ; FMin(a,b)
  %6678 = call float @dx.op.binary.f32(i32 36, float %6669, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %6676)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %6677)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %6678)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!58 = !{[27 x i32] [i32 25, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119]}
!59 = !{void ()* @ps_main, !"ps_main", !60, !4, !79}
!60 = !{!61, !75, null}
!61 = !{!62, !65, !67, !69, !70, !71, !72, !74}
!62 = !{i32 0, !"SV_Position", i8 9, i8 3, !63, i8 4, i32 1, i8 4, i32 0, i8 0, !64}
!63 = !{i32 0}
!64 = !{i32 3, i32 15}
!65 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !63, i8 2, i32 1, i8 2, i32 1, i8 0, !66}
!66 = !{i32 3, i32 3}
!67 = !{i32 2, !"NORMAL", i8 9, i8 0, !63, i8 2, i32 1, i8 3, i32 2, i8 0, !68}
!68 = !{i32 3, i32 7}
!69 = !{i32 3, !"TANGENT", i8 9, i8 0, !63, i8 2, i32 1, i8 4, i32 3, i8 0, !64}
!70 = !{i32 4, !"AMBIENT_COLOR", i8 9, i8 0, !63, i8 2, i32 1, i8 3, i32 4, i8 0, !68}
!71 = !{i32 5, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !63, i8 2, i32 1, i8 4, i32 5, i8 0, !64}
!72 = !{i32 6, !"SV_IsFrontFace", i8 5, i8 13, !63, i8 1, i32 1, i8 1, i32 6, i8 0, !73}
!73 = !{i32 3, i32 1}
!74 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !63, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!75 = !{!76, !77}
!76 = !{i32 0, !"SV_Target", i8 9, i8 16, !63, i8 0, i32 1, i8 4, i32 0, i8 0, !64}
!77 = !{i32 1, !"SV_Target", i8 9, i8 16, !78, i8 0, i32 1, i8 4, i32 1, i8 0, !64}
!78 = !{i32 1}
!79 = !{i32 0, i64 16}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = !{!89, !89, i64 0}
!89 = !{!"int", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C/C++ TBAA"}
!92 = !{!93, !95, !97, !99}
!93 = distinct !{!93, !94, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!94 = distinct !{!94, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!95 = distinct !{!95, !96, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!96 = distinct !{!96, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!97 = distinct !{!97, !98, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!98 = distinct !{!98, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!99 = distinct !{!99, !100, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!100 = distinct !{!100, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = !{!103, !103, i64 0}
!103 = !{!"float", !90, i64 0}
!104 = distinct !{!104, !82}
!105 = distinct !{!105, !82}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = !{!114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!114 = distinct !{!114, !115, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!115 = distinct !{!115, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!116 = distinct !{!116, !117, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!117 = distinct !{!117, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!118 = distinct !{!118, !117, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!119 = distinct !{!119, !120, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!120 = distinct !{!120, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!121 = distinct !{!121, !120, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!122 = distinct !{!122, !120, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!123 = distinct !{!123, !124, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!124 = distinct !{!124, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!125 = distinct !{!125, !124, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!126 = distinct !{!126, !124, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!127 = distinct !{!127, !128, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!128 = distinct !{!128, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"\01?sort@@YAXAIAM00@Z: %c"}
!131 = distinct !{!131, !"\01?sort@@YAXAIAM00@Z"}
!132 = !{!133, !134, !114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!133 = distinct !{!133, !131, !"\01?sort@@YAXAIAM00@Z: %a"}
!134 = distinct !{!134, !131, !"\01?sort@@YAXAIAM00@Z: %b"}
!135 = !{!134}
!136 = !{!133, !130, !114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!137 = !{!133}
!138 = !{!134, !130, !114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!139 = !{!140}
!140 = distinct !{!140, !141, !"\01?sort@@YAXAIAM00@Z: %c"}
!141 = distinct !{!141, !"\01?sort@@YAXAIAM00@Z"}
!142 = !{!143, !144, !114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!143 = distinct !{!143, !141, !"\01?sort@@YAXAIAM00@Z: %a"}
!144 = distinct !{!144, !141, !"\01?sort@@YAXAIAM00@Z: %b"}
!145 = !{!144}
!146 = !{!143, !140, !114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!147 = !{!143}
!148 = !{!144, !140, !114, !116, !118, !119, !121, !122, !123, !125, !126, !127}
!149 = distinct !{!149, !"dx.controlflow.hints", i32 1}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 2}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}

