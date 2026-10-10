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
; shader hash: 4220b1ceed23f77ebb41431a406f2600
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
;                                   texture     f32          2d     T36     t12,space2     1
;                                   texture     f32          2d     T37     t55,space2     1
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
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %878 = phi float [ 0.000000e+00, %254 ], [ %630, %858 ]
  %879 = phi float [ 0.000000e+00, %254 ], [ %631, %858 ]
  %880 = phi float [ 0.000000e+00, %254 ], [ %632, %858 ]
  %881 = phi float [ 0.000000e+00, %254 ], [ %753, %858 ]
  %882 = phi float [ 0.000000e+00, %254 ], [ %754, %858 ]
  %883 = phi float [ 0.000000e+00, %254 ], [ %755, %858 ]
  %884 = phi float [ 0.000000e+00, %254 ], [ %859, %858 ]
  %885 = phi float [ 0.000000e+00, %254 ], [ %860, %858 ]
  %886 = phi float [ 0.000000e+00, %254 ], [ %861, %858 ]
  %887 = phi float [ 0.000000e+00, %254 ], [ %809, %858 ]
  %888 = phi float [ 0.000000e+00, %254 ], [ %810, %858 ]
  %889 = phi float [ 0.000000e+00, %254 ], [ %811, %858 ]
  %890 = phi float [ 0.000000e+00, %254 ], [ %617, %858 ]
  %891 = phi float [ 0.000000e+00, %254 ], [ %418, %858 ]
  %892 = phi float [ 0.000000e+00, %254 ], [ %707, %858 ]
  %893 = phi float [ 0.000000e+00, %254 ], [ %710, %858 ]
  %894 = phi float [ 0.000000e+00, %254 ], [ %862, %858 ]
  %895 = phi float [ 0.000000e+00, %254 ], [ %874, %858 ]
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = bitcast i32 %897 to float
  %899 = fcmp fast oge float %898, 0.000000e+00
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 0
  %902 = select i1 %899, float %898, float %901
  %903 = call float @dx.op.dot2.f32(i32 54, float %876, float %877, float %876, float %877)  ; Dot2(ax,ay,bx,by)
  %904 = fmul fast float %903, 0x3FE3333340000000
  %905 = fsub fast float 1.000000e+00, %904
  %906 = call float @dx.op.dot3.f32(i32 55, float %876, float %877, float %905, float %876, float %877, float %905)  ; Dot3(ax,ay,az,bx,by,bz)
  %907 = call float @dx.op.unary.f32(i32 25, float %906)  ; Rsqrt(value)
  %908 = fmul fast float %907, %876
  %909 = fmul fast float %907, %877
  %910 = fmul fast float %905, %907
  %911 = fmul fast float %910, %87
  %912 = fmul fast float %910, %88
  %913 = fmul fast float %910, %89
  %914 = fmul fast float %908, %60
  %915 = fmul fast float %908, %61
  %916 = fmul fast float %908, %62
  %917 = fmul fast float %92, %63
  %918 = fmul fast float %917, %909
  %919 = fmul fast float %95, %63
  %920 = fmul fast float %919, %909
  %921 = fmul fast float %98, %63
  %922 = fmul fast float %921, %909
  %923 = fadd fast float %918, %914
  %924 = fmul fast float %923, %86
  %925 = fadd fast float %924, %911
  %926 = fadd fast float %920, %915
  %927 = fmul fast float %926, %86
  %928 = fadd fast float %927, %912
  %929 = fadd fast float %922, %916
  %930 = fmul fast float %929, %86
  %931 = fadd fast float %930, %913
  %932 = call float @dx.op.dot3.f32(i32 55, float %925, float %928, float %931, float %925, float %928, float %931)  ; Dot3(ax,ay,az,bx,by,bz)
  %933 = call float @dx.op.unary.f32(i32 25, float %932)  ; Rsqrt(value)
  %934 = fmul fast float %925, %933
  %935 = fmul fast float %928, %933
  %936 = fmul fast float %931, %933
  %937 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %938 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %939 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %940 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %941 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %942 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %943 = fadd fast float %937, %132
  %944 = fadd fast float %938, %133
  %945 = fadd fast float %939, %134
  %946 = fadd fast float %940, %132
  %947 = fadd fast float %941, %133
  %948 = fadd fast float %942, %134
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 0
  %951 = extractvalue %dx.types.CBufRet.f32 %949, 1
  %952 = extractvalue %dx.types.CBufRet.f32 %949, 2
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 2
  %955 = extractvalue %dx.types.CBufRet.f32 %953, 3
  %956 = fmul fast float %950, %84
  %957 = fmul fast float %956, %954
  %958 = fmul fast float %951, %85
  %959 = fmul fast float %958, %955
  %960 = fptoui float %957 to i32
  %961 = fptoui float %959 to i32
  %962 = fadd fast float %950, -1.000000e+00
  %963 = fadd fast float %951, -1.000000e+00
  %964 = fptoui float %962 to i32
  %965 = fptoui float %963 to i32
  %966 = call i32 @dx.op.binary.i32(i32 40, i32 %960, i32 %964)  ; UMin(a,b)
  %967 = call i32 @dx.op.binary.i32(i32 40, i32 %961, i32 %965)  ; UMin(a,b)
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %970 = extractvalue %dx.types.CBufRet.f32 %968, 3
  %971 = fmul fast float %969, %72
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
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = and i32 %984, 1023
  %986 = lshr i32 %984, 10
  %987 = icmp eq i32 %985, 0
  br i1 %987, label %1491, label %988

; <label>:988                                     ; preds = %875
  %989 = and i32 %984, 1023
  br label %990

; <label>:990                                     ; preds = %1122, %988
  %991 = phi i32 [ %1072, %1122 ], [ 0, %988 ]
  %992 = phi float [ %1123, %1122 ], [ 0.000000e+00, %988 ]
  %993 = phi float [ %1124, %1122 ], [ %902, %988 ]
  %994 = phi float [ %1125, %1122 ], [ %895, %988 ]
  %995 = phi float [ %1126, %1122 ], [ %887, %988 ]
  %996 = phi float [ %1127, %1122 ], [ %888, %988 ]
  %997 = phi float [ %1128, %1122 ], [ %889, %988 ]
  %998 = phi float [ %1129, %1122 ], [ 0.000000e+00, %988 ]
  %999 = phi float [ %1130, %1122 ], [ 0.000000e+00, %988 ]
  %1000 = phi float [ %1131, %1122 ], [ %884, %988 ]
  %1001 = phi float [ %1132, %1122 ], [ %885, %988 ]
  %1002 = phi float [ %1133, %1122 ], [ %886, %988 ]
  %1003 = phi float [ %1134, %1122 ], [ %881, %988 ]
  %1004 = phi float [ %1135, %1122 ], [ %882, %988 ]
  %1005 = phi float [ %1136, %1122 ], [ %883, %988 ]
  %1006 = phi float [ %1137, %1122 ], [ %934, %988 ]
  %1007 = phi float [ %1138, %1122 ], [ %935, %988 ]
  %1008 = phi float [ %1139, %1122 ], [ %936, %988 ]
  %1009 = phi float [ %1140, %1122 ], [ %893, %988 ]
  %1010 = phi float [ %1141, %1122 ], [ %892, %988 ]
  %1011 = phi float [ %1142, %1122 ], [ 0.000000e+00, %988 ]
  %1012 = phi float [ %1143, %1122 ], [ %890, %988 ]
  %1013 = phi float [ %1144, %1122 ], [ %878, %988 ]
  %1014 = phi float [ %1145, %1122 ], [ %879, %988 ]
  %1015 = phi float [ %1146, %1122 ], [ %880, %988 ]
  %1016 = add nuw nsw i32 %991, %986
  %1017 = shl i32 %1016, 2
  %1018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.i32 %1018, 0
  %1020 = shl i32 %1019, 8
  %1021 = or i32 %1020, 48
  %1022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.f32 %1022, 0
  %1024 = extractvalue %dx.types.ResRet.f32 %1022, 1
  %1025 = extractvalue %dx.types.ResRet.f32 %1022, 2
  %1026 = extractvalue %dx.types.ResRet.f32 %1022, 3
  %1027 = or i32 %1020, 64
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = extractvalue %dx.types.ResRet.i32 %1028, 1
  %1031 = or i32 %1020, 80
  %1032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 2
  %1034 = extractvalue %dx.types.ResRet.f32 %1032, 3
  %1035 = or i32 %1020, 96
  %1036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.ResRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.ResRet.f32 %1036, 2
  %1040 = extractvalue %dx.types.ResRet.f32 %1036, 3
  %1041 = or i32 %1020, 112
  %1042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 2
  %1044 = or i32 %1020, 128
  %1045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.ResRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.ResRet.f32 %1045, 2
  %1049 = extractvalue %dx.types.ResRet.f32 %1045, 3
  %1050 = or i32 %1020, 144
  %1051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.ResRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.ResRet.f32 %1051, 2
  %1055 = extractvalue %dx.types.ResRet.f32 %1051, 3
  %1056 = or i32 %1020, 160
  %1057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = extractvalue %dx.types.ResRet.f32 %1057, 1
  %1060 = extractvalue %dx.types.ResRet.f32 %1057, 2
  %1061 = extractvalue %dx.types.ResRet.f32 %1057, 3
  %1062 = or i32 %1020, 192
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = or i32 %1020, 208
  %1066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.f32 %1066, 0
  %1068 = or i32 %1020, 248
  %1069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.ResRet.f32 %1069, 1
  %1072 = add nuw nsw i32 %991, 1
  %1073 = bitcast float %1026 to i32
  %1074 = and i32 %1073, 512
  %1075 = icmp eq i32 %1074, 0
  %1076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.ResRet.f32 %1076, 2
  %1080 = extractvalue %dx.types.ResRet.f32 %1076, 3
  %1081 = call float @dx.op.dot4.f32(i32 56, float %1077, float %1078, float %1079, float %1080, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1082 = or i32 %1020, 16
  %1083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = extractvalue %dx.types.ResRet.f32 %1083, 3
  %1088 = call float @dx.op.dot4.f32(i32 56, float %1084, float %1085, float %1086, float %1087, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1089 = or i32 %1020, 32
  %1090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.ResRet.f32 %1090, 1
  %1093 = extractvalue %dx.types.ResRet.f32 %1090, 2
  %1094 = extractvalue %dx.types.ResRet.f32 %1090, 3
  %1095 = call float @dx.op.dot4.f32(i32 56, float %1091, float %1092, float %1093, float %1094, float %132, float %133, float %134, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
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
  %1113 = call float @dx.op.dot3.f32(i32 55, float %1023, float %1024, float %1025, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %1114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1115 = extractvalue %dx.types.CBufRet.f32 %1114, 2
  %1116 = fadd fast float %1115, %1113
  %1117 = call float @dx.op.unary.f32(i32 7, float %1116)  ; Saturate(value)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1114, 0
  %1119 = fcmp fast ogt float %1117, %1118
  %1120 = and i1 %1104, %1119
  %1121 = and i1 %1075, %1120
  br i1 %1121, label %1148, label %1122

; <label>:1122                                    ; preds = %1477, %1229, %1148, %990
  %1123 = phi float [ %992, %1148 ], [ %1232, %1229 ], [ %1232, %1477 ], [ %992, %990 ]
  %1124 = phi float [ %993, %1148 ], [ %993, %1229 ], [ %1453, %1477 ], [ %993, %990 ]
  %1125 = phi float [ %994, %1148 ], [ %994, %1229 ], [ %1451, %1477 ], [ %994, %990 ]
  %1126 = phi float [ %995, %1148 ], [ %995, %1229 ], [ %1429, %1477 ], [ %995, %990 ]
  %1127 = phi float [ %996, %1148 ], [ %996, %1229 ], [ %1430, %1477 ], [ %996, %990 ]
  %1128 = phi float [ %997, %1148 ], [ %997, %1229 ], [ %1431, %1477 ], [ %997, %990 ]
  %1129 = phi float [ %998, %1148 ], [ %998, %1229 ], [ %1356, %1477 ], [ %998, %990 ]
  %1130 = phi float [ %999, %1148 ], [ %999, %1229 ], [ %1354, %1477 ], [ %999, %990 ]
  %1131 = phi float [ %1000, %1148 ], [ %1000, %1229 ], [ %1399, %1477 ], [ %1000, %990 ]
  %1132 = phi float [ %1001, %1148 ], [ %1001, %1229 ], [ %1400, %1477 ], [ %1001, %990 ]
  %1133 = phi float [ %1002, %1148 ], [ %1002, %1229 ], [ %1401, %1477 ], [ %1002, %990 ]
  %1134 = phi float [ %1003, %1148 ], [ %1003, %1229 ], [ %1487, %1477 ], [ %1003, %990 ]
  %1135 = phi float [ %1004, %1148 ], [ %1004, %1229 ], [ %1488, %1477 ], [ %1004, %990 ]
  %1136 = phi float [ %1005, %1148 ], [ %1005, %1229 ], [ %1489, %1477 ], [ %1005, %990 ]
  %1137 = phi float [ %1006, %1148 ], [ %1006, %1229 ], [ %1335, %1477 ], [ %1006, %990 ]
  %1138 = phi float [ %1007, %1148 ], [ %1007, %1229 ], [ %1336, %1477 ], [ %1007, %990 ]
  %1139 = phi float [ %1008, %1148 ], [ %1008, %1229 ], [ %1337, %1477 ], [ %1008, %990 ]
  %1140 = phi float [ %1009, %1148 ], [ %1009, %1229 ], [ %1409, %1477 ], [ %1009, %990 ]
  %1141 = phi float [ %1010, %1148 ], [ %1010, %1229 ], [ %1406, %1477 ], [ %1010, %990 ]
  %1142 = phi float [ %1011, %1148 ], [ %1011, %1229 ], [ %1403, %1477 ], [ %1011, %990 ]
  %1143 = phi float [ %1012, %1148 ], [ %1012, %1229 ], [ %1352, %1477 ], [ %1012, %990 ]
  %1144 = phi float [ %1013, %1148 ], [ %1013, %1229 ], [ %1347, %1477 ], [ %1013, %990 ]
  %1145 = phi float [ %1014, %1148 ], [ %1014, %1229 ], [ %1348, %1477 ], [ %1014, %990 ]
  %1146 = phi float [ %1015, %1148 ], [ %1015, %1229 ], [ %1349, %1477 ], [ %1015, %990 ]
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
  %1211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1226, 0
  %1228 = fcmp fast ugt float %1225, %1227
  br i1 %1228, label %1229, label %1122

; <label>:1229                                    ; preds = %1148
  %1230 = select i1 %1188, float %1225, float 0.000000e+00
  %1231 = fadd fast float %1230, %992
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
  %1325 = fsub fast float %1316, %1006
  %1326 = fsub fast float %1317, %1007
  %1327 = fsub fast float %1318, %1008
  br label %1328

; <label>:1328                                    ; preds = %1324, %1233
  %1329 = phi float [ %1325, %1324 ], [ %1316, %1233 ]
  %1330 = phi float [ %1326, %1324 ], [ %1317, %1233 ]
  %1331 = phi float [ %1327, %1324 ], [ %1318, %1233 ]
  %1332 = fmul float %1331, %1321
  %1333 = fmul float %1330, %1321
  %1334 = fmul float %1329, %1321
  %1335 = fadd fast float %1334, %1006
  %1336 = fadd fast float %1333, %1007
  %1337 = fadd fast float %1332, %1008
  %1338 = icmp ne i32 %1234, 0
  %1339 = select i1 %1338, float 1.000000e+00, float 0.000000e+00
  %1340 = fmul fast float %1225, %1339
  %1341 = fsub fast float %1279, %1013
  %1342 = fsub fast float %1280, %1014
  %1343 = fsub fast float %1281, %1015
  %1344 = fmul fast float %1341, %1340
  %1345 = fmul fast float %1342, %1340
  %1346 = fmul fast float %1343, %1340
  %1347 = fadd fast float %1344, %1013
  %1348 = fadd fast float %1345, %1014
  %1349 = fadd fast float %1346, %1015
  %1350 = fsub fast float %1252, %1012
  %1351 = fmul fast float %1350, %1340
  %1352 = fadd fast float %1351, %1012
  %1353 = fmul fast float %1340, %999
  %1354 = fsub fast float %999, %1353
  %1355 = fmul fast float %1340, %998
  %1356 = fsub fast float %998, %1355
  %1357 = bitcast float %1067 to i32
  %1358 = lshr i32 %1357, 16
  %1359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1358)  ; LegacyF16ToF32(value)
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1393 = fsub fast float %1390, %1000
  %1394 = fsub fast float %1391, %1001
  %1395 = fsub fast float %1392, %1002
  %1396 = fmul fast float %1393, %1340
  %1397 = fmul fast float %1394, %1340
  %1398 = fmul fast float %1395, %1340
  %1399 = fadd fast float %1396, %1000
  %1400 = fadd fast float %1397, %1001
  %1401 = fadd fast float %1398, %1002
  %1402 = fadd fast float %1225, %1011
  %1403 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1404 = fsub fast float %1272, %1010
  %1405 = fmul fast float %1404, %1321
  %1406 = fadd fast float %1405, %1010
  %1407 = fsub fast float %1258, %1009
  %1408 = fmul fast float %1407, %1321
  %1409 = fadd fast float %1408, %1009
  br i1 %1323, label %1418, label %1410

; <label>:1410                                    ; preds = %1389
  %1411 = and i32 %1073, 32768
  %1412 = icmp eq i32 %1411, 0
  br i1 %1412, label %1428, label %1413

; <label>:1413                                    ; preds = %1410
  %1414 = fmul fast float %1321, 1.270000e+02
  %1415 = fadd fast float %1414, %995
  %1416 = fadd fast float %1414, %996
  %1417 = fadd fast float %1414, %997
  br label %1428

; <label>:1418                                    ; preds = %1389
  %1419 = fsub fast float 1.270000e+02, %995
  %1420 = fsub fast float 1.270000e+02, %996
  %1421 = fsub fast float 1.270000e+02, %997
  %1422 = fmul fast float %1321, %1419
  %1423 = fmul fast float %1321, %1420
  %1424 = fmul fast float %1321, %1421
  %1425 = fadd fast float %1422, %995
  %1426 = fadd fast float %1423, %996
  %1427 = fadd fast float %1424, %997
  br label %1428

; <label>:1428                                    ; preds = %1418, %1413, %1410
  %1429 = phi float [ %1415, %1413 ], [ %995, %1410 ], [ %1425, %1418 ]
  %1430 = phi float [ %1416, %1413 ], [ %996, %1410 ], [ %1426, %1418 ]
  %1431 = phi float [ %1417, %1413 ], [ %997, %1410 ], [ %1427, %1418 ]
  %1432 = call float @dx.op.dot3.f32(i32 55, float %1279, float %1280, float %1281, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1446 = extractvalue %dx.types.CBufRet.f32 %1445, 0
  %1447 = select i1 %1444, float %1441, float %1446
  %1448 = fadd fast float %1447, %1443
  %1449 = fsub fast float %1438, %994
  %1450 = fmul fast float %1449, %1225
  %1451 = fadd fast float %1450, %994
  %1452 = fmul fast float %1448, %1225
  %1453 = call float @dx.op.binary.f32(i32 35, float %993, float %1452)  ; FMax(a,b)
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
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1481 = fsub fast float %1478, %1003
  %1482 = fsub fast float %1479, %1004
  %1483 = fsub fast float %1480, %1005
  %1484 = fmul fast float %1481, %1225
  %1485 = fmul fast float %1482, %1225
  %1486 = fmul fast float %1483, %1225
  %1487 = fadd fast float %1484, %1003
  %1488 = fadd fast float %1485, %1004
  %1489 = fadd fast float %1486, %1005
  br label %1122

; <label>:1490                                    ; preds = %1122
  br label %1491

; <label>:1491                                    ; preds = %1490, %875
  %1492 = phi float [ 0.000000e+00, %875 ], [ %1123, %1490 ]
  %1493 = phi float [ %902, %875 ], [ %1124, %1490 ]
  %1494 = phi float [ %895, %875 ], [ %1125, %1490 ]
  %1495 = phi float [ %887, %875 ], [ %1126, %1490 ]
  %1496 = phi float [ %888, %875 ], [ %1127, %1490 ]
  %1497 = phi float [ %889, %875 ], [ %1128, %1490 ]
  %1498 = phi float [ 0.000000e+00, %875 ], [ %1129, %1490 ]
  %1499 = phi float [ 0.000000e+00, %875 ], [ %1130, %1490 ]
  %1500 = phi float [ %884, %875 ], [ %1131, %1490 ]
  %1501 = phi float [ %885, %875 ], [ %1132, %1490 ]
  %1502 = phi float [ %886, %875 ], [ %1133, %1490 ]
  %1503 = phi float [ %881, %875 ], [ %1134, %1490 ]
  %1504 = phi float [ %882, %875 ], [ %1135, %1490 ]
  %1505 = phi float [ %883, %875 ], [ %1136, %1490 ]
  %1506 = phi float [ %934, %875 ], [ %1137, %1490 ]
  %1507 = phi float [ %935, %875 ], [ %1138, %1490 ]
  %1508 = phi float [ %936, %875 ], [ %1139, %1490 ]
  %1509 = phi float [ %893, %875 ], [ %1140, %1490 ]
  %1510 = phi float [ %892, %875 ], [ %1141, %1490 ]
  %1511 = phi float [ 0.000000e+00, %875 ], [ %1142, %1490 ]
  %1512 = phi float [ %890, %875 ], [ %1143, %1490 ]
  %1513 = phi float [ %878, %875 ], [ %1144, %1490 ]
  %1514 = phi float [ %879, %875 ], [ %1145, %1490 ]
  %1515 = phi float [ %880, %875 ], [ %1146, %1490 ]
  %1516 = call float @dx.op.dot3.f32(i32 55, float %1506, float %1507, float %1508, float %1506, float %1507, float %1508)  ; Dot3(ax,ay,az,bx,by,bz)
  %1517 = call float @dx.op.unary.f32(i32 25, float %1516)  ; Rsqrt(value)
  %1518 = fmul fast float %1517, %1506
  %1519 = fmul fast float %1517, %1507
  %1520 = fmul fast float %1517, %1508
  %1521 = fadd fast float %1511, %891
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
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1575 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1576 = extractvalue %dx.types.CBufRet.i32 %1575, 3
  %1577 = and i32 %1576, 8
  %1578 = icmp ne i32 %1577, 0
  %1579 = call float @dx.op.binary.f32(i32 35, float %1537, float %1513)  ; FMax(a,b)
  %1580 = call float @dx.op.binary.f32(i32 35, float %1538, float %1513)  ; FMax(a,b)
  %1581 = call float @dx.op.binary.f32(i32 35, float %1539, float %1513)  ; FMax(a,b)
  %1582 = call float @dx.op.dot3.f32(i32 55, float %1537, float %1538, float %1539, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1583 = select i1 %193, float %1513, float %1537
  %1584 = select i1 %193, float %1582, float %1538
  %1585 = select i1 %193, float 1.000000e+00, float %1539
  %1586 = select i1 %1578, float %1579, float %1583
  %1587 = select i1 %1578, float %1580, float %1584
  %1588 = select i1 %1578, float %1581, float %1585
  %1589 = call float @dx.op.dot3.f32(i32 55, float %1569, float %1570, float %1571, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1590 = select i1 %193, float %1589, float %1569
  %1591 = select i1 %193, float %1589, float %1570
  %1592 = select i1 %193, float %1589, float %1571
  %1593 = and i32 %169, 3
  %1594 = select i1 %163, i32 %1593, i32 0
  %1595 = icmp eq i32 %1594, 1
  br i1 %1595, label %1596, label %1672

; <label>:1596                                    ; preds = %1568
  %1597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1598 = extractvalue %dx.types.CBufRet.f32 %1597, 0
  %1599 = extractvalue %dx.types.CBufRet.f32 %1597, 1
  %1600 = fadd fast float %1598, %132
  %1601 = fadd fast float %1599, %133
  %1602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1603 = extractvalue %dx.types.CBufRet.f32 %1602, 0
  %1604 = extractvalue %dx.types.CBufRet.f32 %1602, 1
  %1605 = fsub fast float %1600, %1603
  %1606 = fsub fast float %1601, %1604
  %1607 = fmul fast float %1605, %1605
  %1608 = fmul fast float %1606, %1606
  %1609 = fadd fast float %1607, %1608
  %1610 = call float @dx.op.unary.f32(i32 24, float %1609)  ; Sqrt(value)
  %1611 = extractvalue %dx.types.CBufRet.f32 %1602, 2
  %1612 = fcmp fast olt float %1610, %1611
  br i1 %1612, label %1613, label %1666

; <label>:1613                                    ; preds = %1596
  %1614 = extractvalue %dx.types.CBufRet.f32 %1597, 2
  %1615 = fadd fast float %1614, %134
  %1616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1617 = extractvalue %dx.types.CBufRet.f32 %1616, 0
  %1618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1619 = extractvalue %dx.types.CBufRet.f32 %1618, 0
  %1620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1621 = extractvalue %dx.types.CBufRet.f32 %1620, 0
  %1622 = extractvalue %dx.types.CBufRet.f32 %1616, 1
  %1623 = extractvalue %dx.types.CBufRet.f32 %1618, 1
  %1624 = extractvalue %dx.types.CBufRet.f32 %1620, 1
  %1625 = extractvalue %dx.types.CBufRet.f32 %1616, 3
  %1626 = extractvalue %dx.types.CBufRet.f32 %1618, 3
  %1627 = extractvalue %dx.types.CBufRet.f32 %1620, 3
  %1628 = fadd fast float %1625, %1600
  %1629 = fadd fast float %1626, %1601
  %1630 = fadd fast float %1615, %1627
  %1631 = fmul fast float %1628, %1617
  %1632 = call float @dx.op.tertiary.f32(i32 46, float %1629, float %1619, float %1631)  ; FMad(a,b,c)
  %1633 = call float @dx.op.tertiary.f32(i32 46, float %1630, float %1621, float %1632)  ; FMad(a,b,c)
  %1634 = fmul fast float %1628, %1622
  %1635 = call float @dx.op.tertiary.f32(i32 46, float %1629, float %1623, float %1634)  ; FMad(a,b,c)
  %1636 = call float @dx.op.tertiary.f32(i32 46, float %1630, float %1624, float %1635)  ; FMad(a,b,c)
  %1637 = fsub fast float %1633, %1625
  %1638 = fsub fast float %1636, %1626
  %1639 = fsub fast float %1637, %1603
  %1640 = fadd fast float %1639, %1611
  %1641 = fsub fast float %1638, %1604
  %1642 = fadd fast float %1641, %1611
  %1643 = extractvalue %dx.types.CBufRet.f32 %1602, 3
  %1644 = fmul fast float %1640, %1643
  %1645 = fmul fast float %1642, %1643
  %1646 = call float @dx.op.unary.f32(i32 7, float %1644)  ; Saturate(value)
  %1647 = call float @dx.op.unary.f32(i32 7, float %1645)  ; Saturate(value)
  %1648 = fsub fast float 1.000000e+00, %1646
  %1649 = fsub fast float 1.000000e+00, %1647
  %1650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %40, float %1648, float %1649, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1651 = extractvalue %dx.types.ResRet.f32 %1650, 0
  %1652 = fcmp fast ugt float %1651, 0.000000e+00
  br i1 %1652, label %1653, label %1666

; <label>:1653                                    ; preds = %1613
  %1654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.f32 %1654, 2
  %1656 = fmul fast float %1655, %1651
  %1657 = extractvalue %dx.types.CBufRet.f32 %1654, 3
  %1658 = fadd fast float %1657, %1656
  %1659 = extractvalue %dx.types.CBufRet.f32 %1620, 2
  %1660 = fadd fast float %1658, %1627
  %1661 = fmul fast float %1633, %1621
  %1662 = call float @dx.op.tertiary.f32(i32 46, float %1636, float %1624, float %1661)  ; FMad(a,b,c)
  %1663 = call float @dx.op.tertiary.f32(i32 46, float %1660, float %1659, float %1662)  ; FMad(a,b,c)
  %1664 = fsub fast float %1663, %1627
  %1665 = fsub fast float %1664, %1614
  br label %1666

; <label>:1666                                    ; preds = %1653, %1613, %1596
  %1667 = phi i1 [ true, %1653 ], [ false, %1613 ], [ false, %1596 ]
  %1668 = phi float [ %1665, %1653 ], [ -1.310720e+05, %1613 ], [ -1.310720e+05, %1596 ]
  %1669 = fsub fast float %1668, %134
  %1670 = call float @dx.op.unary.f32(i32 7, float %1669)  ; Saturate(value)
  %1671 = select i1 %1667, float %1670, float 1.000000e+00
  br label %1672

; <label>:1672                                    ; preds = %1666, %1568
  %1673 = phi float [ %1671, %1666 ], [ 0.000000e+00, %1568 ]
  %1674 = icmp eq i32 %1594, 3
  %1675 = select i1 %1674, float 1.000000e+00, float %1673
  %1676 = call float @dx.op.binary.f32(i32 35, float %1492, float %1675)  ; FMax(a,b)
  %1677 = fcmp fast olt float %1675, 1.000000e+00
  br i1 %1677, label %1678, label %1838

; <label>:1678                                    ; preds = %1672
  %1679 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.i32 %1679, 0
  %1681 = and i32 %1680, 7
  %1682 = icmp eq i32 %1681, 0
  br i1 %1682, label %1754, label %1683

; <label>:1683                                    ; preds = %1678
  %1684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1685 = extractvalue %dx.types.CBufRet.f32 %1684, 0
  %1686 = extractvalue %dx.types.CBufRet.f32 %1684, 1
  %1687 = extractvalue %dx.types.CBufRet.f32 %1684, 2
  %1688 = fadd fast float %1685, %132
  %1689 = fadd fast float %1686, %133
  %1690 = fadd fast float %1687, %134
  %1691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %1692 = extractvalue %dx.types.CBufRet.f32 %1691, 0
  %1693 = extractvalue %dx.types.CBufRet.f32 %1691, 1
  %1694 = extractvalue %dx.types.CBufRet.f32 %1691, 2
  %1695 = extractvalue %dx.types.CBufRet.f32 %1691, 3
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 0
  %1698 = extractvalue %dx.types.CBufRet.f32 %1696, 1
  %1699 = extractvalue %dx.types.CBufRet.f32 %1696, 2
  %1700 = extractvalue %dx.types.CBufRet.f32 %1696, 3
  %1701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %1702 = extractvalue %dx.types.CBufRet.f32 %1701, 0
  %1703 = extractvalue %dx.types.CBufRet.f32 %1701, 1
  %1704 = extractvalue %dx.types.CBufRet.f32 %1701, 2
  %1705 = extractvalue %dx.types.CBufRet.f32 %1701, 3
  %1706 = fmul fast float %1688, %1692
  %1707 = call float @dx.op.tertiary.f32(i32 46, float %1689, float %1693, float %1706)  ; FMad(a,b,c)
  %1708 = call float @dx.op.tertiary.f32(i32 46, float %1690, float %1694, float %1707)  ; FMad(a,b,c)
  %1709 = fadd fast float %1708, %1695
  %1710 = fmul fast float %1697, %1688
  %1711 = call float @dx.op.tertiary.f32(i32 46, float %1689, float %1698, float %1710)  ; FMad(a,b,c)
  %1712 = call float @dx.op.tertiary.f32(i32 46, float %1690, float %1699, float %1711)  ; FMad(a,b,c)
  %1713 = fadd fast float %1712, %1700
  %1714 = fmul fast float %1702, %1688
  %1715 = call float @dx.op.tertiary.f32(i32 46, float %1689, float %1703, float %1714)  ; FMad(a,b,c)
  %1716 = call float @dx.op.tertiary.f32(i32 46, float %1690, float %1704, float %1715)  ; FMad(a,b,c)
  %1717 = fadd fast float %1716, %1705
  %1718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %1719 = extractvalue %dx.types.CBufRet.f32 %1718, 1
  %1720 = extractvalue %dx.types.CBufRet.f32 %1718, 0
  %1721 = fmul fast float %1720, %204
  %1722 = fadd fast float %1717, %1721
  %1723 = fmul fast float %204, 0x401921FB60000000
  %1724 = call float @dx.op.unary.f32(i32 13, float %1723)  ; Sin(value)
  %1725 = call float @dx.op.unary.f32(i32 12, float %1723)  ; Cos(value)
  %1726 = fmul fast float %1725, %1719
  %1727 = call float @dx.op.tertiary.f32(i32 46, float %1724, float %1719, float 0.000000e+00)  ; FMad(a,b,c)
  %1728 = fmul fast float %1719, %1724
  %1729 = fsub fast float -0.000000e+00, %1728
  %1730 = call float @dx.op.tertiary.f32(i32 46, float %1725, float %1719, float 0.000000e+00)  ; FMad(a,b,c)
  br label %1731

; <label>:1731                                    ; preds = %1731, %1683
  %1732 = phi float [ 0.000000e+00, %1683 ], [ %1746, %1731 ]
  %1733 = phi i32 [ 0, %1683 ], [ %1747, %1731 ]
  %1734 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %1733
  %1735 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %1733
  %1736 = load float, float* %1734, align 4
  %1737 = load float, float* %1735, align 4
  %1738 = fmul fast float %1726, %1736
  %1739 = call float @dx.op.tertiary.f32(i32 46, float %1737, float %1729, float %1738)  ; FMad(a,b,c)
  %1740 = fmul fast float %1736, %1727
  %1741 = call float @dx.op.tertiary.f32(i32 46, float %1737, float %1730, float %1740)  ; FMad(a,b,c)
  %1742 = fadd fast float %1709, %1739
  %1743 = fadd fast float %1713, %1741
  %1744 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %42, float %1742, float %1743, float undef, float undef, i32 0, i32 0, i32 undef, float %1722)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1745 = extractvalue %dx.types.ResRet.f32 %1744, 0
  %1746 = fadd fast float %1745, %1732
  %1747 = add nuw nsw i32 %1733, 1
  %1748 = icmp eq i32 %1747, 4
  br i1 %1748, label %1749, label %1731

; <label>:1749                                    ; preds = %1731
  %1750 = fmul fast float %1746, 2.500000e-01
  %1751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %1752 = extractvalue %dx.types.CBufRet.f32 %1751, 1
  %1753 = fmul fast float %1752, %1750
  br label %1754

; <label>:1754                                    ; preds = %1749, %1678
  %1755 = phi float [ %1750, %1749 ], [ 0.000000e+00, %1678 ]
  %1756 = phi float [ %1753, %1749 ], [ 0.000000e+00, %1678 ]
  %1757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %1758 = extractvalue %dx.types.CBufRet.i32 %1757, 0
  %1759 = and i32 %1758, 7
  %1760 = icmp eq i32 %1759, 0
  br i1 %1760, label %1838, label %1761

; <label>:1761                                    ; preds = %1754
  %1762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %1763 = extractvalue %dx.types.CBufRet.f32 %1762, 0
  %1764 = fmul fast float %1763, %1755
  %1765 = fadd fast float %1764, %1676
  %1766 = extractvalue %dx.types.CBufRet.f32 %1762, 2
  %1767 = fmul fast float %1766, %1755
  %1768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %1769 = extractvalue %dx.types.CBufRet.f32 %1768, 0
  %1770 = fmul fast float %1769, %1755
  %1771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = and i32 %1758, 8
  %1773 = icmp eq i32 %1772, 0
  br i1 %1773, label %1838, label %1774

; <label>:1774                                    ; preds = %1761
  %1775 = extractvalue %dx.types.CBufRet.f32 %1771, 2
  %1776 = fadd fast float %1775, %134
  %1777 = extractvalue %dx.types.CBufRet.f32 %1771, 1
  %1778 = fadd fast float %1777, %133
  %1779 = extractvalue %dx.types.CBufRet.f32 %1771, 0
  %1780 = fadd fast float %1779, %132
  %1781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1781, 0
  %1783 = extractvalue %dx.types.CBufRet.f32 %1781, 1
  %1784 = extractvalue %dx.types.CBufRet.f32 %1781, 2
  %1785 = fsub fast float %1780, %1782
  %1786 = fsub fast float %1778, %1783
  %1787 = fsub fast float %1776, %1784
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 0
  %1790 = extractvalue %dx.types.CBufRet.f32 %1788, 1
  %1791 = extractvalue %dx.types.CBufRet.f32 %1788, 2
  %1792 = fmul fast float %1785, %1789
  %1793 = fmul fast float %1786, %1790
  %1794 = fmul fast float %1787, %1791
  %1795 = fcmp fast oge float %1792, 0.000000e+00
  %1796 = fcmp fast oge float %1793, 0.000000e+00
  %1797 = fcmp fast oge float %1794, 0.000000e+00
  %1798 = and i1 %1795, %1796
  %1799 = and i1 %1797, %1798
  %1800 = fcmp fast ole float %1792, 1.000000e+00
  %1801 = fcmp fast ole float %1793, 1.000000e+00
  %1802 = fcmp fast ole float %1794, 1.000000e+00
  %1803 = and i1 %1800, %1801
  %1804 = and i1 %1802, %1803
  %1805 = and i1 %1799, %1804
  br i1 %1805, label %1806, label %1838

; <label>:1806                                    ; preds = %1774
  %1807 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %1808 = extractvalue %dx.types.CBufRet.i32 %1807, 0
  %1809 = icmp eq i32 %1808, 0
  br i1 %1809, label %1816, label %1810

; <label>:1810                                    ; preds = %1806
  %1811 = add i32 %1808, 0
  %1812 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1811, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1813 = fsub fast float -0.000000e+00, %1793
  %1814 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1812, %dx.types.Handle %81, float %1792, float %1813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1815 = extractvalue %dx.types.ResRet.f32 %1814, 0
  br label %1816

; <label>:1816                                    ; preds = %1810, %1806
  %1817 = phi float [ %1815, %1810 ], [ 1.000000e+00, %1806 ]
  %1818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.i32 %1818, 0
  %1820 = and i32 %1819, 32
  %1821 = icmp ne i32 %1820, 0
  %1822 = fmul fast float %1817, %1755
  %1823 = select i1 %1821, float %1817, float %1822
  %1824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %1825 = extractvalue %dx.types.CBufRet.f32 %1824, 1
  %1826 = fmul fast float %1823, %1825
  %1827 = fadd fast float %1826, %1765
  %1828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %1829 = extractvalue %dx.types.CBufRet.f32 %1828, 0
  %1830 = fmul fast float %1823, %1829
  %1831 = fadd fast float %1830, %1756
  %1832 = extractvalue %dx.types.CBufRet.f32 %1828, 1
  %1833 = fmul fast float %1823, %1832
  %1834 = fadd fast float %1833, %1767
  %1835 = extractvalue %dx.types.CBufRet.f32 %1828, 2
  %1836 = fmul fast float %1835, %1823
  %1837 = fadd fast float %1836, %1770
  br label %1838

; <label>:1838                                    ; preds = %1816, %1774, %1761, %1754, %1672
  %1839 = phi float [ %1676, %1754 ], [ %1676, %1672 ], [ %1827, %1816 ], [ %1765, %1774 ], [ %1765, %1761 ]
  %1840 = phi float [ %1756, %1754 ], [ 0.000000e+00, %1672 ], [ %1831, %1816 ], [ %1756, %1774 ], [ %1756, %1761 ]
  %1841 = phi float [ 0.000000e+00, %1754 ], [ 0.000000e+00, %1672 ], [ %1834, %1816 ], [ %1767, %1774 ], [ %1767, %1761 ]
  %1842 = phi float [ 0.000000e+00, %1754 ], [ 0.000000e+00, %1672 ], [ %1837, %1816 ], [ %1770, %1774 ], [ %1770, %1761 ]
  %1843 = call float @dx.op.unary.f32(i32 7, float %1839)  ; Saturate(value)
  %1844 = call float @dx.op.unary.f32(i32 7, float %1840)  ; Saturate(value)
  %1845 = call float @dx.op.unary.f32(i32 7, float %1841)  ; Saturate(value)
  %1846 = call float @dx.op.unary.f32(i32 7, float %1842)  ; Saturate(value)
  %1847 = fcmp fast une float %1845, 0.000000e+00
  %1848 = fcmp fast une float %1846, 0.000000e+00
  %1849 = or i1 %1847, %1848
  br i1 %1849, label %1850, label %2432

; <label>:1850                                    ; preds = %1838
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 0
  %1853 = extractvalue %dx.types.CBufRet.f32 %1851, 1
  %1854 = extractvalue %dx.types.CBufRet.f32 %1851, 2
  %1855 = fadd fast float %1852, %132
  %1856 = fadd fast float %1853, %133
  %1857 = fadd fast float %1854, %134
  br i1 %1847, label %1858, label %2131

; <label>:1858                                    ; preds = %1850
  %1859 = call float @dx.op.unary.f32(i32 23, float %1509)  ; Log(value)
  %1860 = fmul fast float %1859, 4.000000e+00
  %1861 = call float @dx.op.unary.f32(i32 21, float %1860)  ; Exp(value)
  %1862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %1863 = extractvalue %dx.types.CBufRet.f32 %1862, 0
  %1864 = fmul fast float %1863, %1855
  %1865 = fmul fast float %1863, %1856
  %1866 = fmul fast float %1863, %1857
  %1867 = call float @dx.op.unary.f32(i32 6, float %87)  ; FAbs(value)
  %1868 = call float @dx.op.unary.f32(i32 6, float %88)  ; FAbs(value)
  %1869 = call float @dx.op.unary.f32(i32 6, float %89)  ; FAbs(value)
  %1870 = call float @dx.op.unary.f32(i32 23, float %1867)  ; Log(value)
  %1871 = call float @dx.op.unary.f32(i32 23, float %1868)  ; Log(value)
  %1872 = call float @dx.op.unary.f32(i32 23, float %1869)  ; Log(value)
  %1873 = fmul fast float %1870, 4.000000e+00
  %1874 = fmul fast float %1871, 4.000000e+00
  %1875 = fmul fast float %1872, 4.000000e+00
  %1876 = call float @dx.op.unary.f32(i32 21, float %1873)  ; Exp(value)
  %1877 = call float @dx.op.unary.f32(i32 21, float %1874)  ; Exp(value)
  %1878 = call float @dx.op.unary.f32(i32 21, float %1875)  ; Exp(value)
  %1879 = fadd fast float %1877, %1876
  %1880 = fadd fast float %1879, %1878
  %1881 = fdiv fast float 1.000000e+00, %1880
  %1882 = fmul fast float %1881, %1876
  %1883 = fcmp fast ogt float %87, 0.000000e+00
  %1884 = fcmp fast ogt float %88, 0.000000e+00
  %1885 = fcmp fast ogt float %89, 0.000000e+00
  %1886 = fcmp fast olt float %87, 0.000000e+00
  %1887 = fcmp fast olt float %88, 0.000000e+00
  %1888 = fcmp fast olt float %89, 0.000000e+00
  %1889 = zext i1 %1883 to i32
  %1890 = zext i1 %1884 to i32
  %1891 = zext i1 %1885 to i32
  %1892 = zext i1 %1886 to i32
  %1893 = zext i1 %1887 to i32
  %1894 = zext i1 %1888 to i32
  %1895 = sub nsw i32 %1889, %1892
  %1896 = sub nsw i32 %1890, %1893
  %1897 = sub nsw i32 %1891, %1894
  %1898 = call float @dx.op.unary.f32(i32 83, float %1864)  ; DerivCoarseX(value)
  %1899 = call float @dx.op.unary.f32(i32 83, float %1865)  ; DerivCoarseX(value)
  %1900 = call float @dx.op.unary.f32(i32 83, float %1866)  ; DerivCoarseX(value)
  %1901 = call float @dx.op.unary.f32(i32 84, float %1864)  ; DerivCoarseY(value)
  %1902 = call float @dx.op.unary.f32(i32 84, float %1865)  ; DerivCoarseY(value)
  %1903 = call float @dx.op.unary.f32(i32 84, float %1866)  ; DerivCoarseY(value)
  %1904 = fcmp fast ole float %204, %1882
  %1905 = fmul fast float %1881, %1879
  %1906 = fcmp fast ole float %204, %1905
  %1907 = select i1 %1906, float %1866, float %1864
  %1908 = select i1 %1906, float %1864, float %1865
  %1909 = select i1 %1904, float %1865, float %1907
  %1910 = select i1 %1904, float %1866, float %1908
  %1911 = select i1 %1906, float %1900, float %1898
  %1912 = select i1 %1906, float %1898, float %1899
  %1913 = select i1 %1904, float %1899, float %1911
  %1914 = select i1 %1904, float %1900, float %1912
  %1915 = select i1 %1906, float %1903, float %1901
  %1916 = select i1 %1906, float %1901, float %1902
  %1917 = select i1 %1904, float %1902, float %1915
  %1918 = select i1 %1904, float %1903, float %1916
  %1919 = call float @dx.op.unary.f32(i32 27, float %1909)  ; Round_ni(value)
  %1920 = call float @dx.op.unary.f32(i32 27, float %1910)  ; Round_ni(value)
  %1921 = fptosi float %1919 to i32
  %1922 = fptosi float %1920 to i32
  %1923 = xor i32 %1922, %1921
  %1924 = sitofp i32 %1923 to float
  %1925 = fptosi float %1924 to i32
  %1926 = sitofp i32 %1925 to float
  %1927 = fmul fast float %1926, 0x3FE3C6EF40000000
  %1928 = frem fast float %1919, 2.560000e+02
  %1929 = frem fast float %1920, 2.560000e+02
  %1930 = fptoui float %1928 to i32
  %1931 = fptoui float %1929 to i32
  %1932 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %1930, i32 %1931, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1933 = extractvalue %dx.types.ResRet.f32 %1932, 0
  %1934 = extractvalue %dx.types.ResRet.f32 %1932, 1
  %1935 = extractvalue %dx.types.ResRet.f32 %1932, 2
  %1936 = fadd fast float %1933, %1927
  %1937 = fadd fast float %1934, %1927
  %1938 = fadd fast float %1935, %1927
  %1939 = call float @dx.op.unary.f32(i32 22, float %1936)  ; Frc(value)
  %1940 = call float @dx.op.unary.f32(i32 22, float %1937)  ; Frc(value)
  %1941 = call float @dx.op.unary.f32(i32 22, float %1938)  ; Frc(value)
  %1942 = fmul fast float %1941, 0x401921FB60000000
  %1943 = call float @dx.op.unary.f32(i32 13, float %1942)  ; Sin(value)
  %1944 = call float @dx.op.unary.f32(i32 12, float %1942)  ; Cos(value)
  %1945 = fsub fast float -0.000000e+00, %1944
  %1946 = fmul fast float %1944, %1909
  %1947 = call float @dx.op.tertiary.f32(i32 46, float %1943, float %1910, float %1946)  ; FMad(a,b,c)
  %1948 = fmul fast float %1943, %1909
  %1949 = call float @dx.op.tertiary.f32(i32 46, float %1945, float %1910, float %1948)  ; FMad(a,b,c)
  %1950 = fadd fast float %1947, %1939
  %1951 = fadd fast float %1949, %1940
  %1952 = extractvalue %dx.types.CBufRet.f32 %1862, 3
  %1953 = bitcast float %1952 to i32
  %1954 = icmp eq i32 %1953, 0
  br i1 %1954, label %1993, label %1955

; <label>:1955                                    ; preds = %1858
  %1956 = add i32 %1953, 0
  %1957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1956, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1958 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1957, %dx.types.Handle %81, float %1950, float %1951, float undef, float undef, i32 0, i32 0, i32 undef, float %1913, float %1914, float undef, float %1917, float %1918, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1959 = extractvalue %dx.types.ResRet.f32 %1958, 0
  %1960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %1961 = extractvalue %dx.types.CBufRet.f32 %1960, 1
  %1962 = extractvalue %dx.types.CBufRet.f32 %1960, 2
  %1963 = fsub fast float 1.000000e+00, %1845
  %1964 = call float @dx.op.binary.f32(i32 35, float %1963, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1965 = bitcast float %1845 to i32
  %1966 = sitofp i32 %1965 to float
  %1967 = fadd fast float %1966, 0xC1CFBF8940000000
  %1968 = fmul fast float %1962, %1967
  %1969 = fadd fast float %1968, 0x41CFBF8940000000
  %1970 = fptosi float %1969 to i32
  %1971 = bitcast i32 %1970 to float
  %1972 = bitcast float %1964 to i32
  %1973 = sitofp i32 %1972 to float
  %1974 = fadd fast float %1973, 0xC1CFBF8940000000
  %1975 = fmul fast float %1974, %1962
  %1976 = fadd fast float %1975, 0x41CFBF8940000000
  %1977 = fptosi float %1976 to i32
  %1978 = bitcast i32 %1977 to float
  %1979 = fmul fast float %1971, %1961
  %1980 = fmul fast float %1978, %1961
  %1981 = fsub fast float %1964, %1979
  %1982 = fadd fast float %1980, %1964
  %1983 = call float @dx.op.unary.f32(i32 7, float %1981)  ; Saturate(value)
  %1984 = call float @dx.op.unary.f32(i32 7, float %1982)  ; Saturate(value)
  %1985 = fsub fast float %1959, %1983
  %1986 = fsub fast float %1984, %1983
  %1987 = bitcast float %1986 to i32
  %1988 = sub nsw i32 2129859010, %1987
  %1989 = bitcast i32 %1988 to float
  %1990 = fmul fast float %1989, %1985
  %1991 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1992 = fcmp fast olt float %1991, 0x3F70101020000000
  br i1 %1992, label %2131, label %1993

; <label>:1993                                    ; preds = %1955, %1858
  %1994 = phi float [ %1991, %1955 ], [ %1845, %1858 ]
  %1995 = fmul fast float %1994, %1861
  %1996 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %1997 = extractvalue %dx.types.CBufRet.i32 %1996, 1
  %1998 = extractvalue %dx.types.CBufRet.i32 %1996, 0
  %1999 = add i32 %1998, 0
  %2000 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1999, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2001 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2000, %dx.types.Handle %80, float %1950, float %1951, float undef, float undef, i32 0, i32 0, i32 undef, float %1913, float %1914, float undef, float %1917, float %1918, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2002 = extractvalue %dx.types.ResRet.f32 %2001, 0
  %2003 = extractvalue %dx.types.ResRet.f32 %2001, 1
  %2004 = extractvalue %dx.types.ResRet.f32 %2001, 2
  %2005 = extractvalue %dx.types.ResRet.f32 %2001, 3
  %2006 = and i32 %1997, 255
  %2007 = uitofp i32 %2006 to float
  %2008 = lshr i32 %1997, 8
  %2009 = and i32 %2008, 255
  %2010 = uitofp i32 %2009 to float
  %2011 = fmul fast float %2005, %2007
  %2012 = fadd fast float %2011, %2010
  %2013 = fmul fast float %2012, 0x3F70101000000000
  %2014 = fadd fast float %2013, 0xBFB99999A0000000
  %2015 = call float @dx.op.unary.f32(i32 7, float %2014)  ; Saturate(value)
  %2016 = fmul fast float %2015, 0x3FF1C71C80000000
  %2017 = call float @dx.op.binary.f32(i32 36, float %2013, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2018 = fsub fast float 1.000000e+00, %2016
  %2019 = call float @dx.op.unary.f32(i32 7, float %2018)  ; Saturate(value)
  %2020 = fmul fast float %2019, %2002
  %2021 = fmul fast float %2019, %2003
  %2022 = fmul fast float %2019, %2004
  %2023 = call float @dx.op.unary.f32(i32 7, float %2020)  ; Saturate(value)
  %2024 = call float @dx.op.unary.f32(i32 7, float %2021)  ; Saturate(value)
  %2025 = call float @dx.op.unary.f32(i32 7, float %2022)  ; Saturate(value)
  %2026 = fmul fast float %2016, %2002
  %2027 = fmul fast float %2016, %2003
  %2028 = fmul fast float %2016, %2004
  %2029 = fadd fast float %2026, %2017
  %2030 = fadd fast float %2027, %2017
  %2031 = fadd fast float %2028, %2017
  %2032 = call float @dx.op.unary.f32(i32 7, float %2029)  ; Saturate(value)
  %2033 = call float @dx.op.unary.f32(i32 7, float %2030)  ; Saturate(value)
  %2034 = call float @dx.op.unary.f32(i32 7, float %2031)  ; Saturate(value)
  %2035 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.i32 %2035, 3
  %2037 = extractvalue %dx.types.CBufRet.i32 %2035, 2
  %2038 = add i32 %2037, 0
  %2039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2038, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2040 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2039, %dx.types.Handle %80, float %1950, float %1951, float undef, float undef, i32 0, i32 0, i32 undef, float %1913, float %1914, float undef, float %1917, float %1918, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2041 = extractvalue %dx.types.ResRet.f32 %2040, 0
  %2042 = extractvalue %dx.types.ResRet.f32 %2040, 1
  %2043 = extractvalue %dx.types.ResRet.f32 %2040, 2
  %2044 = extractvalue %dx.types.ResRet.f32 %2040, 3
  %2045 = and i32 %2036, 255
  %2046 = uitofp i32 %2045 to float
  %2047 = lshr i32 %2036, 8
  %2048 = and i32 %2047, 255
  %2049 = uitofp i32 %2048 to float
  %2050 = lshr i32 %2036, 16
  %2051 = and i32 %2050, 255
  %2052 = uitofp i32 %2051 to float
  %2053 = fmul fast float %2052, 0x3F70101000000000
  %2054 = fmul fast float %2041, %2046
  %2055 = fadd fast float %2054, %2049
  %2056 = fmul fast float %2055, 0x3F70101000000000
  %2057 = fadd fast float %2042, -5.000000e-01
  %2058 = fadd fast float %2044, -5.000000e-01
  %2059 = fmul fast float %2057, %2053
  %2060 = fmul fast float %2058, %2053
  %2061 = fadd fast float %2059, 5.000000e-01
  %2062 = fadd fast float %2060, 5.000000e-01
  %2063 = fmul fast float %2061, 2.000000e+00
  %2064 = fadd fast float %2063, -1.000000e+00
  %2065 = fmul fast float %2062, 2.000000e+00
  %2066 = fadd fast float %2065, -1.000000e+00
  %2067 = fadd fast float %2064, %2066
  %2068 = fmul fast float %2067, 5.000000e-01
  %2069 = fsub fast float %2064, %2066
  %2070 = fmul fast float %2069, 5.000000e-01
  %2071 = call float @dx.op.unary.f32(i32 6, float %2068)  ; FAbs(value)
  %2072 = fsub fast float 1.000000e+00, %2071
  %2073 = call float @dx.op.unary.f32(i32 6, float %2070)  ; FAbs(value)
  %2074 = fsub fast float %2072, %2073
  %2075 = call float @dx.op.dot3.f32(i32 55, float %2068, float %2070, float %2074, float %2068, float %2070, float %2074)  ; Dot3(ax,ay,az,bx,by,bz)
  %2076 = call float @dx.op.unary.f32(i32 25, float %2075)  ; Rsqrt(value)
  %2077 = fmul fast float %2068, %2076
  %2078 = fmul fast float %2070, %2076
  %2079 = select i1 %1906, i32 %1896, i32 %1897
  %2080 = select i1 %1904, i32 %1895, i32 %2079
  %2081 = sitofp i32 %2080 to float
  %2082 = fmul fast float %2074, %2081
  %2083 = fmul fast float %2082, %2076
  %2084 = select i1 %1906, float %2083, float %2078
  %2085 = select i1 %1906, float %2078, float %2083
  %2086 = select i1 %1904, float %2083, float %2077
  %2087 = select i1 %1904, float %2078, float %2084
  %2088 = select i1 %1904, float %2077, float %2085
  %2089 = fsub fast float %2023, %1586
  %2090 = fsub fast float %2024, %1587
  %2091 = fsub fast float %2025, %1588
  %2092 = fmul fast float %2089, %1995
  %2093 = fmul fast float %2090, %1995
  %2094 = fmul fast float %2091, %1995
  %2095 = fadd fast float %2092, %1586
  %2096 = fadd fast float %2093, %1587
  %2097 = fadd fast float %2094, %1588
  %2098 = fsub fast float %2032, %1546
  %2099 = fsub fast float %2033, %1547
  %2100 = fsub fast float %2034, %1548
  %2101 = fmul fast float %2098, %1995
  %2102 = fmul fast float %2099, %1995
  %2103 = fmul fast float %2100, %1995
  %2104 = fadd fast float %2101, %1546
  %2105 = fadd fast float %2102, %1547
  %2106 = fadd fast float %2103, %1548
  %2107 = fadd fast float %2086, %1525
  %2108 = fadd fast float %2087, %1526
  %2109 = fadd fast float %2088, %1527
  %2110 = call float @dx.op.dot3.f32(i32 55, float %2107, float %2108, float %2109, float %2107, float %2108, float %2109)  ; Dot3(ax,ay,az,bx,by,bz)
  %2111 = call float @dx.op.unary.f32(i32 25, float %2110)  ; Rsqrt(value)
  %2112 = fmul fast float %2107, %2111
  %2113 = fmul fast float %2108, %2111
  %2114 = fmul fast float %2109, %2111
  %2115 = fsub fast float %2112, %1525
  %2116 = fsub fast float %2113, %1526
  %2117 = fsub fast float %2114, %1527
  %2118 = fmul fast float %2115, %1995
  %2119 = fmul fast float %2116, %1995
  %2120 = fmul fast float %2117, %1995
  %2121 = fadd fast float %2118, %1525
  %2122 = fadd fast float %2119, %1526
  %2123 = fadd fast float %2120, %1527
  %2124 = call float @dx.op.binary.f32(i32 36, float %1509, float %2043)  ; FMin(a,b)
  %2125 = fsub fast float %2124, %1509
  %2126 = fmul fast float %2125, %1995
  %2127 = fadd fast float %2126, %1509
  %2128 = fsub fast float %2056, %1549
  %2129 = fmul fast float %2128, %1995
  %2130 = fadd fast float %2129, %1549
  br label %2131

; <label>:2131                                    ; preds = %1993, %1955, %1850
  %2132 = phi float [ %2095, %1993 ], [ %1586, %1955 ], [ %1586, %1850 ]
  %2133 = phi float [ %2096, %1993 ], [ %1587, %1955 ], [ %1587, %1850 ]
  %2134 = phi float [ %2097, %1993 ], [ %1588, %1955 ], [ %1588, %1850 ]
  %2135 = phi float [ %2121, %1993 ], [ %1525, %1955 ], [ %1525, %1850 ]
  %2136 = phi float [ %2122, %1993 ], [ %1526, %1955 ], [ %1526, %1850 ]
  %2137 = phi float [ %2123, %1993 ], [ %1527, %1955 ], [ %1527, %1850 ]
  %2138 = phi float [ %2104, %1993 ], [ %1546, %1955 ], [ %1546, %1850 ]
  %2139 = phi float [ %2105, %1993 ], [ %1547, %1955 ], [ %1547, %1850 ]
  %2140 = phi float [ %2106, %1993 ], [ %1548, %1955 ], [ %1548, %1850 ]
  %2141 = phi float [ %2130, %1993 ], [ %1549, %1955 ], [ %1549, %1850 ]
  %2142 = phi float [ %2127, %1993 ], [ %1509, %1955 ], [ %1509, %1850 ]
  br i1 %1848, label %2143, label %2432

; <label>:2143                                    ; preds = %2131
  %2144 = call float @dx.op.unary.f32(i32 23, float %2142)  ; Log(value)
  %2145 = fmul fast float %2144, 4.000000e+00
  %2146 = call float @dx.op.unary.f32(i32 21, float %2145)  ; Exp(value)
  %2147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %2148 = extractvalue %dx.types.CBufRet.f32 %2147, 0
  %2149 = fmul fast float %2148, %1855
  %2150 = fmul fast float %2148, %1856
  %2151 = fmul fast float %2148, %1857
  %2152 = call float @dx.op.unary.f32(i32 6, float %87)  ; FAbs(value)
  %2153 = call float @dx.op.unary.f32(i32 6, float %88)  ; FAbs(value)
  %2154 = call float @dx.op.unary.f32(i32 6, float %89)  ; FAbs(value)
  %2155 = call float @dx.op.unary.f32(i32 23, float %2152)  ; Log(value)
  %2156 = call float @dx.op.unary.f32(i32 23, float %2153)  ; Log(value)
  %2157 = call float @dx.op.unary.f32(i32 23, float %2154)  ; Log(value)
  %2158 = fmul fast float %2155, 4.000000e+00
  %2159 = fmul fast float %2156, 4.000000e+00
  %2160 = fmul fast float %2157, 4.000000e+00
  %2161 = call float @dx.op.unary.f32(i32 21, float %2158)  ; Exp(value)
  %2162 = call float @dx.op.unary.f32(i32 21, float %2159)  ; Exp(value)
  %2163 = call float @dx.op.unary.f32(i32 21, float %2160)  ; Exp(value)
  %2164 = fadd fast float %2162, %2161
  %2165 = fadd fast float %2164, %2163
  %2166 = fdiv fast float 1.000000e+00, %2165
  %2167 = fmul fast float %2166, %2161
  %2168 = fcmp fast ogt float %87, 0.000000e+00
  %2169 = fcmp fast ogt float %88, 0.000000e+00
  %2170 = fcmp fast ogt float %89, 0.000000e+00
  %2171 = fcmp fast olt float %87, 0.000000e+00
  %2172 = fcmp fast olt float %88, 0.000000e+00
  %2173 = fcmp fast olt float %89, 0.000000e+00
  %2174 = zext i1 %2168 to i32
  %2175 = zext i1 %2169 to i32
  %2176 = zext i1 %2170 to i32
  %2177 = zext i1 %2171 to i32
  %2178 = zext i1 %2172 to i32
  %2179 = zext i1 %2173 to i32
  %2180 = sub nsw i32 %2174, %2177
  %2181 = sub nsw i32 %2175, %2178
  %2182 = sub nsw i32 %2176, %2179
  %2183 = call float @dx.op.unary.f32(i32 83, float %2149)  ; DerivCoarseX(value)
  %2184 = call float @dx.op.unary.f32(i32 83, float %2150)  ; DerivCoarseX(value)
  %2185 = call float @dx.op.unary.f32(i32 83, float %2151)  ; DerivCoarseX(value)
  %2186 = call float @dx.op.unary.f32(i32 84, float %2149)  ; DerivCoarseY(value)
  %2187 = call float @dx.op.unary.f32(i32 84, float %2150)  ; DerivCoarseY(value)
  %2188 = call float @dx.op.unary.f32(i32 84, float %2151)  ; DerivCoarseY(value)
  %2189 = fcmp fast ole float %204, %2167
  %2190 = fmul fast float %2166, %2164
  %2191 = fcmp fast ole float %204, %2190
  %2192 = select i1 %2191, float %2151, float %2149
  %2193 = select i1 %2191, float %2149, float %2150
  %2194 = select i1 %2189, float %2150, float %2192
  %2195 = select i1 %2189, float %2151, float %2193
  %2196 = select i1 %2191, float %2185, float %2183
  %2197 = select i1 %2191, float %2183, float %2184
  %2198 = select i1 %2189, float %2184, float %2196
  %2199 = select i1 %2189, float %2185, float %2197
  %2200 = select i1 %2191, float %2188, float %2186
  %2201 = select i1 %2191, float %2186, float %2187
  %2202 = select i1 %2189, float %2187, float %2200
  %2203 = select i1 %2189, float %2188, float %2201
  %2204 = call float @dx.op.unary.f32(i32 27, float %2194)  ; Round_ni(value)
  %2205 = call float @dx.op.unary.f32(i32 27, float %2195)  ; Round_ni(value)
  %2206 = fptosi float %2204 to i32
  %2207 = fptosi float %2205 to i32
  %2208 = xor i32 %2207, %2206
  %2209 = sitofp i32 %2208 to float
  %2210 = fptosi float %2209 to i32
  %2211 = sitofp i32 %2210 to float
  %2212 = fmul fast float %2211, 0x3FE3C6EF40000000
  %2213 = frem fast float %2204, 2.560000e+02
  %2214 = frem fast float %2205, 2.560000e+02
  %2215 = fptoui float %2213 to i32
  %2216 = fptoui float %2214 to i32
  %2217 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 0, i32 %2215, i32 %2216, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2218 = extractvalue %dx.types.ResRet.f32 %2217, 0
  %2219 = extractvalue %dx.types.ResRet.f32 %2217, 1
  %2220 = extractvalue %dx.types.ResRet.f32 %2217, 2
  %2221 = fadd fast float %2218, %2212
  %2222 = fadd fast float %2219, %2212
  %2223 = fadd fast float %2220, %2212
  %2224 = call float @dx.op.unary.f32(i32 22, float %2221)  ; Frc(value)
  %2225 = call float @dx.op.unary.f32(i32 22, float %2222)  ; Frc(value)
  %2226 = call float @dx.op.unary.f32(i32 22, float %2223)  ; Frc(value)
  %2227 = fmul fast float %2226, 0x401921FB60000000
  %2228 = call float @dx.op.unary.f32(i32 13, float %2227)  ; Sin(value)
  %2229 = call float @dx.op.unary.f32(i32 12, float %2227)  ; Cos(value)
  %2230 = fsub fast float -0.000000e+00, %2229
  %2231 = fmul fast float %2229, %2194
  %2232 = call float @dx.op.tertiary.f32(i32 46, float %2228, float %2195, float %2231)  ; FMad(a,b,c)
  %2233 = fmul fast float %2228, %2194
  %2234 = call float @dx.op.tertiary.f32(i32 46, float %2230, float %2195, float %2233)  ; FMad(a,b,c)
  %2235 = fadd fast float %2232, %2224
  %2236 = fadd fast float %2234, %2225
  %2237 = extractvalue %dx.types.CBufRet.f32 %2147, 3
  %2238 = bitcast float %2237 to i32
  %2239 = icmp eq i32 %2238, 0
  br i1 %2239, label %2278, label %2240

; <label>:2240                                    ; preds = %2143
  %2241 = add i32 %2238, 0
  %2242 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2241, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2243 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2242, %dx.types.Handle %81, float %2235, float %2236, float undef, float undef, i32 0, i32 0, i32 undef, float %2198, float %2199, float undef, float %2202, float %2203, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2244 = extractvalue %dx.types.ResRet.f32 %2243, 0
  %2245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %2246 = extractvalue %dx.types.CBufRet.f32 %2245, 1
  %2247 = extractvalue %dx.types.CBufRet.f32 %2245, 2
  %2248 = fsub fast float 1.000000e+00, %1846
  %2249 = call float @dx.op.binary.f32(i32 35, float %2248, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2250 = bitcast float %1846 to i32
  %2251 = sitofp i32 %2250 to float
  %2252 = fadd fast float %2251, 0xC1CFBF8940000000
  %2253 = fmul fast float %2247, %2252
  %2254 = fadd fast float %2253, 0x41CFBF8940000000
  %2255 = fptosi float %2254 to i32
  %2256 = bitcast i32 %2255 to float
  %2257 = bitcast float %2249 to i32
  %2258 = sitofp i32 %2257 to float
  %2259 = fadd fast float %2258, 0xC1CFBF8940000000
  %2260 = fmul fast float %2259, %2247
  %2261 = fadd fast float %2260, 0x41CFBF8940000000
  %2262 = fptosi float %2261 to i32
  %2263 = bitcast i32 %2262 to float
  %2264 = fmul fast float %2256, %2246
  %2265 = fmul fast float %2263, %2246
  %2266 = fsub fast float %2249, %2264
  %2267 = fadd fast float %2265, %2249
  %2268 = call float @dx.op.unary.f32(i32 7, float %2266)  ; Saturate(value)
  %2269 = call float @dx.op.unary.f32(i32 7, float %2267)  ; Saturate(value)
  %2270 = fsub fast float %2244, %2268
  %2271 = fsub fast float %2269, %2268
  %2272 = bitcast float %2271 to i32
  %2273 = sub nsw i32 2129859010, %2272
  %2274 = bitcast i32 %2273 to float
  %2275 = fmul fast float %2274, %2270
  %2276 = call float @dx.op.unary.f32(i32 7, float %2275)  ; Saturate(value)
  %2277 = fcmp fast olt float %2276, 0x3F70101020000000
  br i1 %2277, label %2432, label %2278

; <label>:2278                                    ; preds = %2240, %2143
  %2279 = phi float [ %2276, %2240 ], [ %1846, %2143 ]
  %2280 = fmul fast float %2279, %2146
  %2281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %2282 = extractvalue %dx.types.CBufRet.i32 %2281, 1
  %2283 = extractvalue %dx.types.CBufRet.i32 %2281, 0
  %2284 = add i32 %2283, 0
  %2285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2284, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2286 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2285, %dx.types.Handle %80, float %2235, float %2236, float undef, float undef, i32 0, i32 0, i32 undef, float %2198, float %2199, float undef, float %2202, float %2203, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2287 = extractvalue %dx.types.ResRet.f32 %2286, 0
  %2288 = extractvalue %dx.types.ResRet.f32 %2286, 1
  %2289 = extractvalue %dx.types.ResRet.f32 %2286, 2
  %2290 = extractvalue %dx.types.ResRet.f32 %2286, 3
  %2291 = and i32 %2282, 255
  %2292 = uitofp i32 %2291 to float
  %2293 = lshr i32 %2282, 8
  %2294 = and i32 %2293, 255
  %2295 = uitofp i32 %2294 to float
  %2296 = fmul fast float %2290, %2292
  %2297 = fadd fast float %2296, %2295
  %2298 = fmul fast float %2297, 0x3F70101000000000
  %2299 = fadd fast float %2298, 0xBFB99999A0000000
  %2300 = call float @dx.op.unary.f32(i32 7, float %2299)  ; Saturate(value)
  %2301 = fmul fast float %2300, 0x3FF1C71C80000000
  %2302 = call float @dx.op.binary.f32(i32 36, float %2298, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2303 = fsub fast float 1.000000e+00, %2301
  %2304 = call float @dx.op.unary.f32(i32 7, float %2303)  ; Saturate(value)
  %2305 = fmul fast float %2304, %2287
  %2306 = fmul fast float %2304, %2288
  %2307 = fmul fast float %2304, %2289
  %2308 = call float @dx.op.unary.f32(i32 7, float %2305)  ; Saturate(value)
  %2309 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2310 = call float @dx.op.unary.f32(i32 7, float %2307)  ; Saturate(value)
  %2311 = fmul fast float %2301, %2287
  %2312 = fmul fast float %2301, %2288
  %2313 = fmul fast float %2301, %2289
  %2314 = fadd fast float %2311, %2302
  %2315 = fadd fast float %2312, %2302
  %2316 = fadd fast float %2313, %2302
  %2317 = call float @dx.op.unary.f32(i32 7, float %2314)  ; Saturate(value)
  %2318 = call float @dx.op.unary.f32(i32 7, float %2315)  ; Saturate(value)
  %2319 = call float @dx.op.unary.f32(i32 7, float %2316)  ; Saturate(value)
  %2320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %2321 = extractvalue %dx.types.CBufRet.i32 %2320, 3
  %2322 = extractvalue %dx.types.CBufRet.i32 %2320, 2
  %2323 = add i32 %2322, 0
  %2324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2323, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2325 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2324, %dx.types.Handle %80, float %2235, float %2236, float undef, float undef, i32 0, i32 0, i32 undef, float %2198, float %2199, float undef, float %2202, float %2203, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2326 = extractvalue %dx.types.ResRet.f32 %2325, 0
  %2327 = extractvalue %dx.types.ResRet.f32 %2325, 1
  %2328 = extractvalue %dx.types.ResRet.f32 %2325, 2
  %2329 = extractvalue %dx.types.ResRet.f32 %2325, 3
  %2330 = and i32 %2321, 255
  %2331 = uitofp i32 %2330 to float
  %2332 = lshr i32 %2321, 8
  %2333 = and i32 %2332, 255
  %2334 = uitofp i32 %2333 to float
  %2335 = lshr i32 %2321, 16
  %2336 = and i32 %2335, 255
  %2337 = uitofp i32 %2336 to float
  %2338 = fmul fast float %2337, 0x3F70101000000000
  %2339 = fmul fast float %2326, %2331
  %2340 = fadd fast float %2339, %2334
  %2341 = fmul fast float %2340, 0x3F70101000000000
  %2342 = fadd fast float %2327, -5.000000e-01
  %2343 = fadd fast float %2329, -5.000000e-01
  %2344 = fmul fast float %2342, %2338
  %2345 = fmul fast float %2343, %2338
  %2346 = fadd fast float %2344, 5.000000e-01
  %2347 = fadd fast float %2345, 5.000000e-01
  %2348 = fmul fast float %2346, 2.000000e+00
  %2349 = fadd fast float %2348, -1.000000e+00
  %2350 = fmul fast float %2347, 2.000000e+00
  %2351 = fadd fast float %2350, -1.000000e+00
  %2352 = fadd fast float %2349, %2351
  %2353 = fmul fast float %2352, 5.000000e-01
  %2354 = fsub fast float %2349, %2351
  %2355 = fmul fast float %2354, 5.000000e-01
  %2356 = call float @dx.op.unary.f32(i32 6, float %2353)  ; FAbs(value)
  %2357 = fsub fast float 1.000000e+00, %2356
  %2358 = call float @dx.op.unary.f32(i32 6, float %2355)  ; FAbs(value)
  %2359 = fsub fast float %2357, %2358
  %2360 = call float @dx.op.dot3.f32(i32 55, float %2353, float %2355, float %2359, float %2353, float %2355, float %2359)  ; Dot3(ax,ay,az,bx,by,bz)
  %2361 = call float @dx.op.unary.f32(i32 25, float %2360)  ; Rsqrt(value)
  %2362 = fmul fast float %2353, %2361
  %2363 = fmul fast float %2355, %2361
  %2364 = select i1 %2191, i32 %2181, i32 %2182
  %2365 = select i1 %2189, i32 %2180, i32 %2364
  %2366 = sitofp i32 %2365 to float
  %2367 = fmul fast float %2359, %2366
  %2368 = fmul fast float %2367, %2361
  %2369 = select i1 %2191, float %2368, float %2363
  %2370 = select i1 %2191, float %2363, float %2368
  %2371 = select i1 %2189, float %2368, float %2362
  %2372 = select i1 %2189, float %2363, float %2369
  %2373 = select i1 %2189, float %2362, float %2370
  %2374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %2375 = extractvalue %dx.types.CBufRet.f32 %2374, 0
  %2376 = fptoui float %2375 to i32
  %2377 = add i32 %2376, 0
  %2378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2377, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2379 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2378, %dx.types.Handle %80, float %2235, float %2236, float undef, float undef, i32 0, i32 0, i32 undef, float %2198, float %2199, float undef, float %2202, float %2203, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2380 = extractvalue %dx.types.ResRet.f32 %2379, 0
  %2381 = fsub fast float %2308, %2132
  %2382 = fsub fast float %2309, %2133
  %2383 = fsub fast float %2310, %2134
  %2384 = fmul fast float %2381, %2280
  %2385 = fmul fast float %2382, %2280
  %2386 = fmul fast float %2383, %2280
  %2387 = fadd fast float %2384, %2132
  %2388 = fadd fast float %2385, %2133
  %2389 = fadd fast float %2386, %2134
  %2390 = fsub fast float %2317, %2138
  %2391 = fsub fast float %2318, %2139
  %2392 = fsub fast float %2319, %2140
  %2393 = fmul fast float %2390, %2280
  %2394 = fmul fast float %2391, %2280
  %2395 = fmul fast float %2392, %2280
  %2396 = fadd fast float %2393, %2138
  %2397 = fadd fast float %2394, %2139
  %2398 = fadd fast float %2395, %2140
  %2399 = fadd fast float %2371, %2135
  %2400 = fadd fast float %2372, %2136
  %2401 = fadd fast float %2373, %2137
  %2402 = call float @dx.op.dot3.f32(i32 55, float %2399, float %2400, float %2401, float %2399, float %2400, float %2401)  ; Dot3(ax,ay,az,bx,by,bz)
  %2403 = call float @dx.op.unary.f32(i32 25, float %2402)  ; Rsqrt(value)
  %2404 = fmul fast float %2403, %2399
  %2405 = fmul fast float %2403, %2400
  %2406 = fmul fast float %2403, %2401
  %2407 = fsub fast float %2404, %2135
  %2408 = fsub fast float %2405, %2136
  %2409 = fsub fast float %2406, %2137
  %2410 = fmul fast float %2407, %2280
  %2411 = fmul fast float %2408, %2280
  %2412 = fmul fast float %2409, %2280
  %2413 = fadd fast float %2410, %2135
  %2414 = fadd fast float %2411, %2136
  %2415 = fadd fast float %2412, %2137
  %2416 = call float @dx.op.binary.f32(i32 36, float %2142, float %2328)  ; FMin(a,b)
  %2417 = fsub fast float %2416, %2142
  %2418 = fmul fast float %2417, %2280
  %2419 = fadd fast float %2418, %2142
  %2420 = fsub fast float %2341, %2141
  %2421 = fmul fast float %2420, %2280
  %2422 = fadd fast float %2421, %2141
  %2423 = fsub fast float %2380, %1590
  %2424 = fsub fast float %2380, %1591
  %2425 = fsub fast float %2380, %1592
  %2426 = fmul fast float %2423, %2280
  %2427 = fmul fast float %2424, %2280
  %2428 = fmul fast float %2425, %2280
  %2429 = fadd fast float %2426, %1590
  %2430 = fadd fast float %2427, %1591
  %2431 = fadd fast float %2428, %1592
  br label %2432

; <label>:2432                                    ; preds = %2278, %2240, %2131, %1838
  %2433 = phi float [ %2387, %2278 ], [ %2132, %2240 ], [ %2132, %2131 ], [ %1586, %1838 ]
  %2434 = phi float [ %2388, %2278 ], [ %2133, %2240 ], [ %2133, %2131 ], [ %1587, %1838 ]
  %2435 = phi float [ %2389, %2278 ], [ %2134, %2240 ], [ %2134, %2131 ], [ %1588, %1838 ]
  %2436 = phi float [ %2413, %2278 ], [ %2135, %2240 ], [ %2135, %2131 ], [ %1525, %1838 ]
  %2437 = phi float [ %2414, %2278 ], [ %2136, %2240 ], [ %2136, %2131 ], [ %1526, %1838 ]
  %2438 = phi float [ %2415, %2278 ], [ %2137, %2240 ], [ %2137, %2131 ], [ %1527, %1838 ]
  %2439 = phi float [ %2429, %2278 ], [ %1590, %2240 ], [ %1590, %2131 ], [ %1590, %1838 ]
  %2440 = phi float [ %2430, %2278 ], [ %1591, %2240 ], [ %1591, %2131 ], [ %1591, %1838 ]
  %2441 = phi float [ %2431, %2278 ], [ %1592, %2240 ], [ %1592, %2131 ], [ %1592, %1838 ]
  %2442 = phi float [ %2396, %2278 ], [ %2138, %2240 ], [ %2138, %2131 ], [ %1546, %1838 ]
  %2443 = phi float [ %2397, %2278 ], [ %2139, %2240 ], [ %2139, %2131 ], [ %1547, %1838 ]
  %2444 = phi float [ %2398, %2278 ], [ %2140, %2240 ], [ %2140, %2131 ], [ %1548, %1838 ]
  %2445 = phi float [ %2422, %2278 ], [ %2141, %2240 ], [ %2141, %2131 ], [ %1549, %1838 ]
  %2446 = phi float [ %2419, %2278 ], [ %2142, %2240 ], [ %2142, %2131 ], [ %1509, %1838 ]
  %2447 = fcmp fast une float %1843, 0.000000e+00
  %2448 = call float @dx.op.dot3.f32(i32 55, float %132, float %133, float %134, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %2449 = call float @dx.op.unary.f32(i32 25, float %2448)  ; Rsqrt(value)
  br i1 %2447, label %2457, label %2450

; <label>:2450                                    ; preds = %2432
  %2451 = fmul fast float %2449, %132
  %2452 = fmul fast float %2449, %133
  %2453 = fmul fast float %2449, %134
  %2454 = fsub fast float -0.000000e+00, %2451
  %2455 = fsub fast float -0.000000e+00, %2452
  %2456 = fsub fast float -0.000000e+00, %2453
  br label %2818

; <label>:2457                                    ; preds = %2432
  %2458 = fmul fast float %132, %2449
  %2459 = fsub fast float -0.000000e+00, %2458
  %2460 = fmul fast float %133, %2449
  %2461 = fsub fast float -0.000000e+00, %2460
  %2462 = fmul fast float %134, %2449
  %2463 = fsub fast float -0.000000e+00, %2462
  %2464 = call float @dx.op.dot3.f32(i32 55, float %2459, float %2461, float %2463, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %2465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2466 = fmul fast float %1843, 2.500000e+00
  %2467 = call float @dx.op.unary.f32(i32 7, float %2466)  ; Saturate(value)
  %2468 = fmul fast float %1843, 0x4013FFFFE0000000
  %2469 = fadd fast float %2468, 0xBFFFFFFFE0000000
  %2470 = call float @dx.op.unary.f32(i32 7, float %2469)  ; Saturate(value)
  %2471 = fmul fast float %1843, 0x4004000020000000
  %2472 = fadd fast float %2471, 0xBFF8000040000000
  %2473 = call float @dx.op.unary.f32(i32 7, float %2472)  ; Saturate(value)
  %2474 = call float @dx.op.unary.f32(i32 7, float %2467)  ; Saturate(value)
  %2475 = fmul fast float %1528, 1.000000e+01
  %2476 = call float @dx.op.unary.f32(i32 7, float %2475)  ; Saturate(value)
  %2477 = fmul fast float %2476, 2.000000e+00
  %2478 = fsub fast float 3.000000e+00, %2477
  %2479 = fmul fast float %2476, %2476
  %2480 = fmul fast float %2479, %2478
  %2481 = fsub fast float 1.000000e+00, %2480
  %2482 = fsub fast float 0x3FE3333340000000, %2445
  %2483 = fmul fast float %2482, 0x400AAAAAA0000000
  %2484 = call float @dx.op.unary.f32(i32 7, float %2483)  ; Saturate(value)
  %2485 = fmul fast float %2481, %2484
  %2486 = fmul fast float %2433, 0x3FEA2B8620000000
  %2487 = fmul fast float %2434, 0x3FEA2B8620000000
  %2488 = fmul fast float %2435, 0x3FEA2B8620000000
  %2489 = fadd fast float %2486, 0x3FC81DFBA0000000
  %2490 = fmul fast float %2489, %2433
  %2491 = fadd fast float %2490, 0x3F910E6020000000
  %2492 = fadd fast float %2487, 0x3FC81DFBA0000000
  %2493 = fmul fast float %2492, %2434
  %2494 = fadd fast float %2493, 0x3F910E6020000000
  %2495 = fadd fast float %2488, 0x3FC81DFBA0000000
  %2496 = fmul fast float %2495, %2435
  %2497 = fadd fast float %2496, 0x3F910E6020000000
  %2498 = call float @dx.op.unary.f32(i32 7, float %2491)  ; Saturate(value)
  %2499 = call float @dx.op.unary.f32(i32 7, float %2494)  ; Saturate(value)
  %2500 = call float @dx.op.unary.f32(i32 7, float %2497)  ; Saturate(value)
  %2501 = fsub fast float %2498, %2433
  %2502 = fsub fast float %2499, %2434
  %2503 = fsub fast float %2500, %2435
  %2504 = fmul fast float %2501, %2474
  %2505 = fmul fast float %2504, %2485
  %2506 = fmul fast float %2502, %2474
  %2507 = fmul fast float %2506, %2485
  %2508 = fmul fast float %2503, %2474
  %2509 = fmul fast float %2508, %2485
  %2510 = fadd fast float %2505, %2433
  %2511 = fadd fast float %2507, %2434
  %2512 = fadd fast float %2509, %2435
  %2513 = fmul fast float %2446, %2446
  %2514 = fmul fast float %2513, %2513
  %2515 = fadd fast float %2470, 1.000000e+00
  %2516 = fsub fast float %2515, %2485
  %2517 = call float @dx.op.unary.f32(i32 7, float %2516)  ; Saturate(value)
  %2518 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2519 = call float @dx.op.unary.f32(i32 7, float %2518)  ; Saturate(value)
  %2520 = fsub fast float 1.000000e+00, %2514
  %2521 = call float @dx.op.binary.f32(i32 36, float %2517, float %2520)  ; FMin(a,b)
  %2522 = call float @dx.op.unary.f32(i32 7, float %2473)  ; Saturate(value)
  %2523 = call float @dx.op.binary.f32(i32 35, float %2521, float %2522)  ; FMax(a,b)
  %2524 = fadd fast float %2519, 0xBFE4CCCCC0000000
  %2525 = fmul fast float %2524, 0x4006DB6DA0000000
  %2526 = call float @dx.op.unary.f32(i32 7, float %2525)  ; Saturate(value)
  %2527 = fmul fast float %2526, 2.000000e+00
  %2528 = fsub fast float 3.000000e+00, %2527
  %2529 = bitcast float %2442 to i32
  %2530 = ashr i32 %2529, 1
  %2531 = add nsw i32 %2530, 532487669
  %2532 = bitcast i32 %2531 to float
  %2533 = fsub fast float 1.000000e+00, %2532
  %2534 = bitcast float %2533 to i32
  %2535 = sub nsw i32 2129859010, %2534
  %2536 = bitcast i32 %2535 to float
  %2537 = fmul fast float %2536, 2.000000e+00
  %2538 = bitcast float %2443 to i32
  %2539 = ashr i32 %2538, 1
  %2540 = add nsw i32 %2539, 532487669
  %2541 = bitcast i32 %2540 to float
  %2542 = fsub fast float 1.000000e+00, %2541
  %2543 = bitcast float %2542 to i32
  %2544 = sub nsw i32 2129859010, %2543
  %2545 = bitcast i32 %2544 to float
  %2546 = fmul fast float %2545, 2.000000e+00
  %2547 = bitcast float %2444 to i32
  %2548 = ashr i32 %2547, 1
  %2549 = add nsw i32 %2548, 532487669
  %2550 = bitcast i32 %2549 to float
  %2551 = fsub fast float 1.000000e+00, %2550
  %2552 = bitcast float %2551 to i32
  %2553 = sub nsw i32 2129859010, %2552
  %2554 = bitcast i32 %2553 to float
  %2555 = fmul fast float %2554, 2.000000e+00
  %2556 = fsub fast float 0x4002A9FBE0000000, %2537
  %2557 = fadd fast float %2537, 0x3FD54FDF00000000
  %2558 = bitcast float %2557 to i32
  %2559 = sub nsw i32 2129859010, %2558
  %2560 = bitcast i32 %2559 to float
  %2561 = fmul fast float %2560, %2556
  %2562 = fmul fast float %2561, %2561
  %2563 = fsub fast float 0x4002A9FBE0000000, %2546
  %2564 = fadd fast float %2546, 0x3FD54FDF00000000
  %2565 = bitcast float %2564 to i32
  %2566 = sub nsw i32 2129859010, %2565
  %2567 = bitcast i32 %2566 to float
  %2568 = fmul fast float %2567, %2563
  %2569 = fmul fast float %2568, %2568
  %2570 = fsub fast float 0x4002A9FBE0000000, %2555
  %2571 = fadd fast float %2555, 0x3FD54FDF00000000
  %2572 = bitcast float %2571 to i32
  %2573 = sub nsw i32 2129859010, %2572
  %2574 = bitcast i32 %2573 to float
  %2575 = fmul fast float %2574, %2570
  %2576 = fmul fast float %2575, %2575
  %2577 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2562)  ; FMax(a,b)
  %2578 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2569)  ; FMax(a,b)
  %2579 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2576)  ; FMax(a,b)
  %2580 = fsub fast float 1.000000e+00, %2464
  %2581 = fadd fast float %2580, %2481
  %2582 = call float @dx.op.unary.f32(i32 7, float %2581)  ; Saturate(value)
  %2583 = fsub fast float 1.000000e+00, %1675
  %2584 = fmul fast float %2523, %2583
  %2585 = fmul fast float %2526, %2526
  %2586 = fmul fast float %2585, %2584
  %2587 = fmul fast float %2586, %2528
  %2588 = fmul fast float %2583, 0xBFE99999A0000000
  %2589 = fmul fast float %2588, %2474
  %2590 = fmul fast float %2589, %2485
  %2591 = fadd fast float %2590, 1.000000e+00
  %2592 = fadd fast float %2445, -1.000000e+00
  %2593 = fmul fast float %2591, %2592
  %2594 = fadd fast float %2593, 1.000000e+00
  %2595 = fsub fast float %2577, %2442
  %2596 = fsub fast float %2578, %2443
  %2597 = fsub fast float %2579, %2444
  %2598 = fmul fast float %2587, %2595
  %2599 = fmul fast float %2587, %2596
  %2600 = fmul fast float %2587, %2597
  %2601 = fadd fast float %2598, %2442
  %2602 = fadd fast float %2599, %2443
  %2603 = fadd fast float %2600, %2444
  %2604 = fsub fast float %87, %2436
  %2605 = fsub fast float %88, %2437
  %2606 = fsub fast float %89, %2438
  %2607 = fmul fast float %2587, %2604
  %2608 = fmul fast float %2587, %2605
  %2609 = fmul fast float %2587, %2606
  %2610 = fadd fast float %2607, %2436
  %2611 = fadd fast float %2608, %2437
  %2612 = fadd fast float %2609, %2438
  %2613 = fmul fast float %2587, %2582
  %2614 = call float @dx.op.unary.f32(i32 7, float %2594)  ; Saturate(value)
  %2615 = fsub fast float 1.000000e+00, %2614
  %2616 = fmul fast float %2613, %2615
  %2617 = fadd fast float %2616, %2614
  %2618 = fsub fast float 1.000000e+00, %2446
  %2619 = fmul fast float %2587, %2618
  %2620 = fadd fast float %2619, %2446
  %2621 = fcmp fast une float %1844, 0.000000e+00
  %2622 = fcmp fast ogt float %2519, 0x3FE4CCCCC0000000
  %2623 = and i1 %2621, %2622
  br i1 %2623, label %2624, label %2810

; <label>:2624                                    ; preds = %2457
  %2625 = extractvalue %dx.types.CBufRet.f32 %2465, 1
  %2626 = fadd fast float %2625, %133
  %2627 = extractvalue %dx.types.CBufRet.f32 %2465, 0
  %2628 = fadd fast float %2627, %132
  %2629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2630 = extractvalue %dx.types.CBufRet.f32 %2629, 3
  %2631 = fadd fast float %2630, 0x3FC0A3D700000000
  %2632 = fmul fast float %2631, 0x3FF6666660000000
  %2633 = fmul fast float %2630, 0x3FF2978D40000000
  %2634 = fmul fast float %2630, 0x3FF5BA5E40000000
  %2635 = fmul fast float %2630, 0x3FF94FDF40000000
  %2636 = call float @dx.op.unary.f32(i32 6, float %2628)  ; FAbs(value)
  %2637 = call float @dx.op.unary.f32(i32 6, float %2626)  ; FAbs(value)
  %2638 = fmul fast float %2636, 0x3F8EB851E0000000
  %2639 = fmul fast float %2637, 0x3F8EB851E0000000
  %2640 = fmul fast float %1844, 4.000000e+00
  %2641 = call float @dx.op.unary.f32(i32 7, float %2640)  ; Saturate(value)
  %2642 = fadd fast float %2638, 2.500000e-01
  %2643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %2642, float %2639, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2644 = extractvalue %dx.types.ResRet.f32 %2643, 0
  %2645 = extractvalue %dx.types.ResRet.f32 %2643, 1
  %2646 = extractvalue %dx.types.ResRet.f32 %2643, 2
  %2647 = extractvalue %dx.types.ResRet.f32 %2643, 3
  %2648 = fmul fast float %2645, 2.000000e+00
  %2649 = fmul fast float %2646, 2.000000e+00
  %2650 = fadd fast float %2648, -1.000000e+00
  %2651 = fadd fast float %2649, -1.000000e+00
  %2652 = fsub fast float 1.000000e+00, %2641
  %2653 = fmul fast float %2652, 8.000000e+00
  %2654 = call float @dx.op.unary.f32(i32 21, float %2653)  ; Exp(value)
  %2655 = fmul fast float %2647, %2654
  %2656 = fadd fast float %2632, -1.000000e+00
  %2657 = fadd fast float %2656, %2647
  %2658 = fadd fast float %2657, %2655
  %2659 = frem fast float %2658, %2654
  %2660 = fcmp fast ole float %2659, 1.000000e+00
  %2661 = call float @dx.op.unary.f32(i32 22, float %2659)  ; Frc(value)
  %2662 = select i1 %2660, float %2661, float 0.000000e+00
  %2663 = fadd fast float %2644, -1.000000e+00
  %2664 = fadd fast float %2663, %2662
  %2665 = fsub fast float 1.000000e+00, %2662
  %2666 = call float @dx.op.unary.f32(i32 7, float %2665)  ; Saturate(value)
  %2667 = fmul fast float %2666, %2644
  %2668 = fmul fast float %2664, 8.000000e+00
  %2669 = call float @dx.op.binary.f32(i32 35, float %2668, float 0.000000e+00)  ; FMax(a,b)
  %2670 = call float @dx.op.binary.f32(i32 36, float %2669, float 4.000000e+00)  ; FMin(a,b)
  %2671 = fmul fast float %2670, 0x400921FB60000000
  %2672 = call float @dx.op.unary.f32(i32 13, float %2671)  ; Sin(value)
  %2673 = fadd fast float %2662, -1.000000e+00
  %2674 = fmul fast float %2667, %2673
  %2675 = fmul fast float %2674, %2672
  %2676 = fmul fast float %2675, %2650
  %2677 = fmul fast float %2675, %2651
  %2678 = fadd fast float %2640, -1.000000e+00
  %2679 = call float @dx.op.unary.f32(i32 7, float %2678)  ; Saturate(value)
  %2680 = fadd fast float %2638, 0xBFE19999A0000000
  %2681 = fadd fast float %2639, 0x3FD3D70A40000000
  %2682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %2680, float %2681, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2683 = extractvalue %dx.types.ResRet.f32 %2682, 0
  %2684 = extractvalue %dx.types.ResRet.f32 %2682, 1
  %2685 = extractvalue %dx.types.ResRet.f32 %2682, 2
  %2686 = extractvalue %dx.types.ResRet.f32 %2682, 3
  %2687 = fmul fast float %2684, 2.000000e+00
  %2688 = fmul fast float %2685, 2.000000e+00
  %2689 = fadd fast float %2687, -1.000000e+00
  %2690 = fadd fast float %2688, -1.000000e+00
  %2691 = fsub fast float 1.000000e+00, %2679
  %2692 = fmul fast float %2691, 8.000000e+00
  %2693 = call float @dx.op.unary.f32(i32 21, float %2692)  ; Exp(value)
  %2694 = fmul fast float %2686, %2693
  %2695 = fadd fast float %2633, 0xBFE5B22D00000000
  %2696 = fadd fast float %2695, %2686
  %2697 = fadd fast float %2696, %2694
  %2698 = frem fast float %2697, %2693
  %2699 = fcmp fast ole float %2698, 1.000000e+00
  %2700 = call float @dx.op.unary.f32(i32 22, float %2698)  ; Frc(value)
  %2701 = select i1 %2699, float %2700, float 0.000000e+00
  %2702 = fadd fast float %2683, -1.000000e+00
  %2703 = fadd fast float %2702, %2701
  %2704 = fsub fast float 1.000000e+00, %2701
  %2705 = call float @dx.op.unary.f32(i32 7, float %2704)  ; Saturate(value)
  %2706 = fmul fast float %2705, %2683
  %2707 = fmul fast float %2703, 8.000000e+00
  %2708 = call float @dx.op.binary.f32(i32 35, float %2707, float 0.000000e+00)  ; FMax(a,b)
  %2709 = call float @dx.op.binary.f32(i32 36, float %2708, float 4.000000e+00)  ; FMin(a,b)
  %2710 = fmul fast float %2709, 0x400921FB60000000
  %2711 = call float @dx.op.unary.f32(i32 13, float %2710)  ; Sin(value)
  %2712 = fadd fast float %2701, -1.000000e+00
  %2713 = fmul fast float %2706, %2712
  %2714 = fmul fast float %2713, %2711
  %2715 = fmul fast float %2714, %2689
  %2716 = fmul fast float %2714, %2690
  %2717 = fadd fast float %2640, -2.000000e+00
  %2718 = call float @dx.op.unary.f32(i32 7, float %2717)  ; Saturate(value)
  %2719 = fadd fast float %2638, 0x3FE3333340000000
  %2720 = fadd fast float %2639, 0x3FEB333340000000
  %2721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %2719, float %2720, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2722 = extractvalue %dx.types.ResRet.f32 %2721, 0
  %2723 = extractvalue %dx.types.ResRet.f32 %2721, 1
  %2724 = extractvalue %dx.types.ResRet.f32 %2721, 2
  %2725 = extractvalue %dx.types.ResRet.f32 %2721, 3
  %2726 = fmul fast float %2723, 2.000000e+00
  %2727 = fmul fast float %2724, 2.000000e+00
  %2728 = fadd fast float %2726, -1.000000e+00
  %2729 = fadd fast float %2727, -1.000000e+00
  %2730 = fsub fast float 1.000000e+00, %2718
  %2731 = fmul fast float %2730, 8.000000e+00
  %2732 = call float @dx.op.unary.f32(i32 21, float %2731)  ; Exp(value)
  %2733 = fmul fast float %2725, %2732
  %2734 = fadd fast float %2634, 0xBFD5E35400000000
  %2735 = fadd fast float %2734, %2725
  %2736 = fadd fast float %2735, %2733
  %2737 = frem fast float %2736, %2732
  %2738 = fcmp fast ole float %2737, 1.000000e+00
  %2739 = call float @dx.op.unary.f32(i32 22, float %2737)  ; Frc(value)
  %2740 = select i1 %2738, float %2739, float 0.000000e+00
  %2741 = fadd fast float %2722, -1.000000e+00
  %2742 = fadd fast float %2741, %2740
  %2743 = fsub fast float 1.000000e+00, %2740
  %2744 = call float @dx.op.unary.f32(i32 7, float %2743)  ; Saturate(value)
  %2745 = fmul fast float %2744, %2722
  %2746 = fmul fast float %2742, 8.000000e+00
  %2747 = call float @dx.op.binary.f32(i32 35, float %2746, float 0.000000e+00)  ; FMax(a,b)
  %2748 = call float @dx.op.binary.f32(i32 36, float %2747, float 4.000000e+00)  ; FMin(a,b)
  %2749 = fmul fast float %2748, 0x400921FB60000000
  %2750 = call float @dx.op.unary.f32(i32 13, float %2749)  ; Sin(value)
  %2751 = fadd fast float %2740, -1.000000e+00
  %2752 = fmul fast float %2745, %2751
  %2753 = fmul fast float %2752, %2750
  %2754 = fmul fast float %2753, %2728
  %2755 = fmul fast float %2753, %2729
  %2756 = fadd fast float %2640, -3.000000e+00
  %2757 = call float @dx.op.unary.f32(i32 7, float %2756)  ; Saturate(value)
  %2758 = fadd fast float %2638, 5.000000e-01
  %2759 = fadd fast float %2639, -7.500000e-01
  %2760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %2758, float %2759, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2761 = extractvalue %dx.types.ResRet.f32 %2760, 0
  %2762 = extractvalue %dx.types.ResRet.f32 %2760, 1
  %2763 = extractvalue %dx.types.ResRet.f32 %2760, 2
  %2764 = extractvalue %dx.types.ResRet.f32 %2760, 3
  %2765 = fmul fast float %2762, 2.000000e+00
  %2766 = fmul fast float %2763, 2.000000e+00
  %2767 = fadd fast float %2765, -1.000000e+00
  %2768 = fadd fast float %2766, -1.000000e+00
  %2769 = fsub fast float 1.000000e+00, %2757
  %2770 = fmul fast float %2769, 8.000000e+00
  %2771 = call float @dx.op.unary.f32(i32 21, float %2770)  ; Exp(value)
  %2772 = fmul fast float %2764, %2771
  %2773 = fadd fast float %2635, 0xBF78938000000000
  %2774 = fadd fast float %2773, %2764
  %2775 = fadd fast float %2774, %2772
  %2776 = frem fast float %2775, %2771
  %2777 = fcmp fast ole float %2776, 1.000000e+00
  %2778 = call float @dx.op.unary.f32(i32 22, float %2776)  ; Frc(value)
  %2779 = select i1 %2777, float %2778, float 0.000000e+00
  %2780 = fadd fast float %2761, -1.000000e+00
  %2781 = fadd fast float %2780, %2779
  %2782 = fsub fast float 1.000000e+00, %2779
  %2783 = call float @dx.op.unary.f32(i32 7, float %2782)  ; Saturate(value)
  %2784 = fmul fast float %2783, %2761
  %2785 = fmul fast float %2781, 8.000000e+00
  %2786 = call float @dx.op.binary.f32(i32 35, float %2785, float 0.000000e+00)  ; FMax(a,b)
  %2787 = call float @dx.op.binary.f32(i32 36, float %2786, float 4.000000e+00)  ; FMin(a,b)
  %2788 = fmul fast float %2787, 0x400921FB60000000
  %2789 = call float @dx.op.unary.f32(i32 13, float %2788)  ; Sin(value)
  %2790 = fadd fast float %2779, -1.000000e+00
  %2791 = fmul fast float %2784, %2790
  %2792 = fmul fast float %2791, %2789
  %2793 = fmul fast float %2792, %2767
  %2794 = fmul fast float %2792, %2768
  %2795 = fadd fast float %2715, %2676
  %2796 = fadd fast float %2716, %2677
  %2797 = fadd fast float %2795, %2754
  %2798 = fadd fast float %2796, %2755
  %2799 = fadd fast float %2797, %2793
  %2800 = fadd fast float %2798, %2794
  %2801 = fmul fast float %2519, 0x4006DB6DA0000000
  %2802 = fadd fast float %2801, 0xBFFDB6DB40000000
  %2803 = call float @dx.op.unary.f32(i32 7, float %2802)  ; Saturate(value)
  %2804 = fmul fast float %2803, %2474
  %2805 = fmul fast float %2804, %2583
  %2806 = fmul fast float %2805, %2799
  %2807 = fmul fast float %2805, %2800
  %2808 = fadd fast float %2806, %2610
  %2809 = fadd fast float %2807, %2611
  br label %2810

; <label>:2810                                    ; preds = %2624, %2457
  %2811 = phi float [ %2610, %2457 ], [ %2808, %2624 ]
  %2812 = phi float [ %2611, %2457 ], [ %2809, %2624 ]
  %2813 = call float @dx.op.dot3.f32(i32 55, float %2811, float %2812, float %2612, float %2811, float %2812, float %2612)  ; Dot3(ax,ay,az,bx,by,bz)
  %2814 = call float @dx.op.unary.f32(i32 25, float %2813)  ; Rsqrt(value)
  %2815 = fmul fast float %2814, %2811
  %2816 = fmul fast float %2814, %2812
  %2817 = fmul fast float %2814, %2612
  br label %2818

; <label>:2818                                    ; preds = %2810, %2450
  %2819 = phi float [ %2456, %2450 ], [ %2463, %2810 ]
  %2820 = phi float [ %2455, %2450 ], [ %2461, %2810 ]
  %2821 = phi float [ %2454, %2450 ], [ %2459, %2810 ]
  %2822 = phi float [ %2453, %2450 ], [ %2462, %2810 ]
  %2823 = phi float [ %2452, %2450 ], [ %2460, %2810 ]
  %2824 = phi float [ %2451, %2450 ], [ %2458, %2810 ]
  %2825 = phi float [ %2433, %2450 ], [ %2510, %2810 ]
  %2826 = phi float [ %2434, %2450 ], [ %2511, %2810 ]
  %2827 = phi float [ %2435, %2450 ], [ %2512, %2810 ]
  %2828 = phi float [ %2436, %2450 ], [ %2815, %2810 ]
  %2829 = phi float [ %2437, %2450 ], [ %2816, %2810 ]
  %2830 = phi float [ %2438, %2450 ], [ %2817, %2810 ]
  %2831 = phi float [ %2442, %2450 ], [ %2601, %2810 ]
  %2832 = phi float [ %2443, %2450 ], [ %2602, %2810 ]
  %2833 = phi float [ %2444, %2450 ], [ %2603, %2810 ]
  %2834 = phi float [ %2445, %2450 ], [ %2617, %2810 ]
  %2835 = phi float [ %2446, %2450 ], [ %2620, %2810 ]
  %2836 = select i1 %193, float 0.000000e+00, float %2833
  %2837 = call float @dx.op.dot3.f32(i32 55, float %2828, float %2829, float %2830, float %2821, float %2820, float %2819)  ; Dot3(ax,ay,az,bx,by,bz)
  %2838 = call float @dx.op.unary.f32(i32 7, float %2837)  ; Saturate(value)
  %2839 = call float @dx.op.dot3.f32(i32 55, float %2824, float %2823, float %2822, float %2828, float %2829, float %2830)  ; Dot3(ax,ay,az,bx,by,bz)
  %2840 = fmul fast float %2839, 2.000000e+00
  %2841 = fmul fast float %2840, %2828
  %2842 = fmul fast float %2840, %2829
  %2843 = fmul fast float %2840, %2830
  %2844 = fsub fast float %2824, %2841
  %2845 = fsub fast float %2823, %2842
  %2846 = fsub fast float %2822, %2843
  %2847 = call float @dx.op.binary.f32(i32 36, float %2835, float 1.000000e+00)  ; FMin(a,b)
  %2848 = fsub fast float 1.000000e+00, %2847
  %2849 = bitcast float %2848 to i32
  %2850 = ashr i32 %2849, 1
  %2851 = add nsw i32 %2850, 532487669
  %2852 = bitcast i32 %2851 to float
  %2853 = fsub fast float 1.000000e+00, %2834
  %2854 = call float @dx.op.binary.f32(i32 35, float %2853, float 0x3F847AE140000000)  ; FMax(a,b)
  %2855 = fmul fast float %2854, %2854
  %2856 = fmul fast float %2855, %2855
  %2857 = call float @dx.op.unary.f32(i32 7, float %2838)  ; Saturate(value)
  %2858 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %2852, float %2856, float %2857, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2859 = extractvalue %dx.types.ResRet.f32 %2858, 0
  %2860 = fsub fast float 1.000000e+00, %2835
  %2861 = bitcast float %2860 to i32
  %2862 = sub nsw i32 2129859010, %2861
  %2863 = bitcast i32 %2862 to float
  %2864 = call float @dx.op.dot3.f32(i32 55, float %56, float %52, float %48, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2865 = fmul fast float %2864, 0x3FD20DD760000000
  %2866 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %56)  ; FMax(a,b)
  %2867 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %2868 = fcmp fast oeq float %2867, 0.000000e+00
  %2869 = fcmp fast oeq float %2866, 0.000000e+00
  %2870 = or i1 %2869, %2868
  br i1 %2870, label %2900, label %2871

; <label>:2871                                    ; preds = %2818
  %2872 = fsub fast float -0.000000e+00, %59
  %2873 = fsub fast float -0.000000e+00, %57
  %2874 = call float @dx.op.unary.f32(i32 24, float %2867)  ; Sqrt(value)
  %2875 = fdiv fast float %2874, %2866
  %2876 = fcmp fast ogt float %2875, 0x3FFB6F8900000000
  %2877 = select i1 %2876, float 0x3FFB6F8900000000, float %2875
  %2878 = fmul fast float %2877, 0x3FE8A23460000000
  %2879 = call float @dx.op.unary.f32(i32 7, float %2878)  ; Saturate(value)
  %2880 = call float @dx.op.binary.f32(i32 35, float %2877, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2881 = fmul fast float %2879, %2866
  %2882 = fmul fast float %2880, 0x3FF279A740000000
  %2883 = fadd fast float %2882, -1.000000e+00
  %2884 = call float @dx.op.dot3.f32(i32 55, float %2872, float %2873, float %58, float %2872, float %2873, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %2885 = call float @dx.op.unary.f32(i32 25, float %2884)  ; Rsqrt(value)
  %2886 = fmul fast float %2885, %2872
  %2887 = fmul fast float %2885, %2873
  %2888 = fmul fast float %2885, %58
  %2889 = fmul fast float %2883, %2883
  %2890 = fsub fast float 1.000000e+00, %2889
  %2891 = fmul fast float %2880, 0x40005F8BE0000000
  %2892 = fsub fast float 0x400C5BF8A0000000, %2891
  %2893 = fdiv fast float %2881, %2892
  %2894 = fmul fast float %2893, 0x3FEE31C3C0000000
  %2895 = fmul fast float %2894, %2890
  %2896 = fmul fast float %2880, 0x3FDACB7480000000
  %2897 = fadd fast float %2896, 0xBFD7347680000000
  %2898 = fmul fast float %2897, %2893
  %2899 = fmul fast float %2898, %2890
  br label %2900

; <label>:2900                                    ; preds = %2871, %2818
  %2901 = phi float [ %2886, %2871 ], [ 0.000000e+00, %2818 ]
  %2902 = phi float [ %2887, %2871 ], [ 0.000000e+00, %2818 ]
  %2903 = phi float [ %2888, %2871 ], [ 0.000000e+00, %2818 ]
  %2904 = phi float [ %2895, %2871 ], [ 0.000000e+00, %2818 ]
  %2905 = phi float [ %2899, %2871 ], [ 0.000000e+00, %2818 ]
  %2906 = call float @dx.op.dot3.f32(i32 55, float %2901, float %2902, float %2903, float %2828, float %2829, float %2830)  ; Dot3(ax,ay,az,bx,by,bz)
  %2907 = fmul fast float %2906, 0x3FDF454380000000
  %2908 = fmul fast float %2906, %2906
  %2909 = fmul fast float %2908, 0x3FEE471020000000
  %2910 = fadd fast float %2909, 0xBFD42F6020000000
  %2911 = fmul fast float %2866, 0x3FD20DD760000000
  %2912 = fmul fast float %2910, %2905
  %2913 = fadd fast float %2912, %2911
  %2914 = fmul fast float %2907, %2904
  %2915 = fadd fast float %2913, %2914
  %2916 = fsub fast float %2913, %2914
  %2917 = call float @dx.op.dot3.f32(i32 55, float %2901, float %2902, float %2903, float %2844, float %2845, float %2846)  ; Dot3(ax,ay,az,bx,by,bz)
  %2918 = fmul fast float %2917, 0x3FDF454380000000
  %2919 = fmul fast float %2917, %2917
  %2920 = fmul fast float %2919, 0x3FEE471020000000
  %2921 = fadd fast float %2920, 0xBFD42F6020000000
  %2922 = call float @dx.op.dot3.f32(i32 55, float %2866, float %2904, float %2905, float 0x3FD20DD760000000, float %2918, float %2921)  ; Dot3(ax,ay,az,bx,by,bz)
  %2923 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %2924 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %2925 = fcmp fast oeq float %2924, 0.000000e+00
  %2926 = fcmp fast oeq float %2923, 0.000000e+00
  %2927 = or i1 %2926, %2925
  br i1 %2927, label %2957, label %2928

; <label>:2928                                    ; preds = %2900
  %2929 = fsub fast float -0.000000e+00, %55
  %2930 = fsub fast float -0.000000e+00, %53
  %2931 = call float @dx.op.unary.f32(i32 24, float %2924)  ; Sqrt(value)
  %2932 = fdiv fast float %2931, %2923
  %2933 = fcmp fast ogt float %2932, 0x3FFB6F8900000000
  %2934 = select i1 %2933, float 0x3FFB6F8900000000, float %2932
  %2935 = fmul fast float %2934, 0x3FE8A23460000000
  %2936 = call float @dx.op.unary.f32(i32 7, float %2935)  ; Saturate(value)
  %2937 = call float @dx.op.binary.f32(i32 35, float %2934, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2938 = fmul fast float %2936, %2923
  %2939 = fmul fast float %2937, 0x3FF279A740000000
  %2940 = fadd fast float %2939, -1.000000e+00
  %2941 = call float @dx.op.dot3.f32(i32 55, float %2929, float %2930, float %54, float %2929, float %2930, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %2942 = call float @dx.op.unary.f32(i32 25, float %2941)  ; Rsqrt(value)
  %2943 = fmul fast float %2942, %2929
  %2944 = fmul fast float %2942, %2930
  %2945 = fmul fast float %2942, %54
  %2946 = fmul fast float %2940, %2940
  %2947 = fsub fast float 1.000000e+00, %2946
  %2948 = fmul fast float %2937, 0x40005F8BE0000000
  %2949 = fsub fast float 0x400C5BF8A0000000, %2948
  %2950 = fdiv fast float %2938, %2949
  %2951 = fmul fast float %2950, 0x3FEE31C3C0000000
  %2952 = fmul fast float %2951, %2947
  %2953 = fmul fast float %2937, 0x3FDACB7480000000
  %2954 = fadd fast float %2953, 0xBFD7347680000000
  %2955 = fmul fast float %2954, %2950
  %2956 = fmul fast float %2955, %2947
  br label %2957

; <label>:2957                                    ; preds = %2928, %2900
  %2958 = phi float [ %2943, %2928 ], [ 0.000000e+00, %2900 ]
  %2959 = phi float [ %2944, %2928 ], [ 0.000000e+00, %2900 ]
  %2960 = phi float [ %2945, %2928 ], [ 0.000000e+00, %2900 ]
  %2961 = phi float [ %2952, %2928 ], [ 0.000000e+00, %2900 ]
  %2962 = phi float [ %2956, %2928 ], [ 0.000000e+00, %2900 ]
  %2963 = call float @dx.op.dot3.f32(i32 55, float %2958, float %2959, float %2960, float %2828, float %2829, float %2830)  ; Dot3(ax,ay,az,bx,by,bz)
  %2964 = fmul fast float %2963, 0x3FDF454380000000
  %2965 = fmul fast float %2963, %2963
  %2966 = fmul fast float %2965, 0x3FEE471020000000
  %2967 = fadd fast float %2966, 0xBFD42F6020000000
  %2968 = fmul fast float %2923, 0x3FD20DD760000000
  %2969 = fmul fast float %2967, %2962
  %2970 = fadd fast float %2969, %2968
  %2971 = fmul fast float %2964, %2961
  %2972 = fadd fast float %2970, %2971
  %2973 = fsub fast float %2970, %2971
  %2974 = call float @dx.op.dot3.f32(i32 55, float %2958, float %2959, float %2960, float %2844, float %2845, float %2846)  ; Dot3(ax,ay,az,bx,by,bz)
  %2975 = fmul fast float %2974, 0x3FDF454380000000
  %2976 = fmul fast float %2974, %2974
  %2977 = fmul fast float %2976, 0x3FEE471020000000
  %2978 = fadd fast float %2977, 0xBFD42F6020000000
  %2979 = call float @dx.op.dot3.f32(i32 55, float %2923, float %2961, float %2962, float 0x3FD20DD760000000, float %2975, float %2978)  ; Dot3(ax,ay,az,bx,by,bz)
  %2980 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %2981 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %2982 = fcmp fast oeq float %2981, 0.000000e+00
  %2983 = fcmp fast oeq float %2980, 0.000000e+00
  %2984 = or i1 %2983, %2982
  br i1 %2984, label %3014, label %2985

; <label>:2985                                    ; preds = %2957
  %2986 = fsub fast float -0.000000e+00, %51
  %2987 = fsub fast float -0.000000e+00, %49
  %2988 = call float @dx.op.unary.f32(i32 24, float %2981)  ; Sqrt(value)
  %2989 = fdiv fast float %2988, %2980
  %2990 = fcmp fast ogt float %2989, 0x3FFB6F8900000000
  %2991 = select i1 %2990, float 0x3FFB6F8900000000, float %2989
  %2992 = fmul fast float %2991, 0x3FE8A23460000000
  %2993 = call float @dx.op.unary.f32(i32 7, float %2992)  ; Saturate(value)
  %2994 = call float @dx.op.binary.f32(i32 35, float %2991, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2995 = fmul fast float %2993, %2980
  %2996 = fmul fast float %2994, 0x3FF279A740000000
  %2997 = fadd fast float %2996, -1.000000e+00
  %2998 = call float @dx.op.dot3.f32(i32 55, float %2986, float %2987, float %50, float %2986, float %2987, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %2999 = call float @dx.op.unary.f32(i32 25, float %2998)  ; Rsqrt(value)
  %3000 = fmul fast float %2999, %2986
  %3001 = fmul fast float %2999, %2987
  %3002 = fmul fast float %2999, %50
  %3003 = fmul fast float %2997, %2997
  %3004 = fsub fast float 1.000000e+00, %3003
  %3005 = fmul fast float %2994, 0x40005F8BE0000000
  %3006 = fsub fast float 0x400C5BF8A0000000, %3005
  %3007 = fdiv fast float %2995, %3006
  %3008 = fmul fast float %3007, 0x3FEE31C3C0000000
  %3009 = fmul fast float %3008, %3004
  %3010 = fmul fast float %2994, 0x3FDACB7480000000
  %3011 = fadd fast float %3010, 0xBFD7347680000000
  %3012 = fmul fast float %3011, %3007
  %3013 = fmul fast float %3012, %3004
  br label %3014

; <label>:3014                                    ; preds = %2985, %2957
  %3015 = phi float [ %3000, %2985 ], [ 0.000000e+00, %2957 ]
  %3016 = phi float [ %3001, %2985 ], [ 0.000000e+00, %2957 ]
  %3017 = phi float [ %3002, %2985 ], [ 0.000000e+00, %2957 ]
  %3018 = phi float [ %3009, %2985 ], [ 0.000000e+00, %2957 ]
  %3019 = phi float [ %3013, %2985 ], [ 0.000000e+00, %2957 ]
  %3020 = call float @dx.op.dot3.f32(i32 55, float %3015, float %3016, float %3017, float %2828, float %2829, float %2830)  ; Dot3(ax,ay,az,bx,by,bz)
  %3021 = fmul fast float %3020, 0x3FDF454380000000
  %3022 = fmul fast float %3020, %3020
  %3023 = fmul fast float %3022, 0x3FEE471020000000
  %3024 = fadd fast float %3023, 0xBFD42F6020000000
  %3025 = fmul fast float %2980, 0x3FD20DD760000000
  %3026 = fmul fast float %3024, %3019
  %3027 = fadd fast float %3026, %3025
  %3028 = fmul fast float %3021, %3018
  %3029 = fadd fast float %3027, %3028
  %3030 = fsub fast float %3027, %3028
  %3031 = call float @dx.op.dot3.f32(i32 55, float %3015, float %3016, float %3017, float %2844, float %2845, float %2846)  ; Dot3(ax,ay,az,bx,by,bz)
  %3032 = fmul fast float %3031, 0x3FDF454380000000
  %3033 = fmul fast float %3031, %3031
  %3034 = fmul fast float %3033, 0x3FEE471020000000
  %3035 = fadd fast float %3034, 0xBFD42F6020000000
  %3036 = call float @dx.op.dot3.f32(i32 55, float %2980, float %3018, float %3019, float 0x3FD20DD760000000, float %3032, float %3035)  ; Dot3(ax,ay,az,bx,by,bz)
  %3037 = call float @dx.op.binary.f32(i32 35, float %2915, float 0.000000e+00)  ; FMax(a,b)
  %3038 = call float @dx.op.binary.f32(i32 35, float %2972, float 0.000000e+00)  ; FMax(a,b)
  %3039 = call float @dx.op.binary.f32(i32 35, float %3029, float 0.000000e+00)  ; FMax(a,b)
  %3040 = call float @dx.op.binary.f32(i32 35, float %2916, float 0.000000e+00)  ; FMax(a,b)
  %3041 = call float @dx.op.binary.f32(i32 35, float %2973, float 0.000000e+00)  ; FMax(a,b)
  %3042 = call float @dx.op.binary.f32(i32 35, float %3030, float 0.000000e+00)  ; FMax(a,b)
  %3043 = call float @dx.op.binary.f32(i32 35, float %2922, float 0.000000e+00)  ; FMax(a,b)
  %3044 = call float @dx.op.binary.f32(i32 35, float %2979, float 0.000000e+00)  ; FMax(a,b)
  %3045 = call float @dx.op.binary.f32(i32 35, float %3036, float 0.000000e+00)  ; FMax(a,b)
  %3046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3047 = extractvalue %dx.types.CBufRet.f32 %3046, 0
  %3048 = call float @dx.op.binary.f32(i32 36, float %2825, float %3047)  ; FMin(a,b)
  %3049 = fmul fast float %3048, %2848
  %3050 = fsub fast float 1.000000e+00, %3049
  %3051 = bitcast float %3050 to i32
  %3052 = sub nsw i32 2129859010, %3051
  %3053 = bitcast i32 %3052 to float
  %3054 = call float @dx.op.binary.f32(i32 36, float %2826, float %3047)  ; FMin(a,b)
  %3055 = fmul fast float %3054, %2848
  %3056 = fsub fast float 1.000000e+00, %3055
  %3057 = bitcast float %3056 to i32
  %3058 = sub nsw i32 2129859010, %3057
  %3059 = bitcast i32 %3058 to float
  %3060 = call float @dx.op.binary.f32(i32 36, float %2827, float %3047)  ; FMin(a,b)
  %3061 = fmul fast float %3060, %2848
  %3062 = fsub fast float 1.000000e+00, %3061
  %3063 = bitcast float %3062 to i32
  %3064 = sub nsw i32 2129859010, %3063
  %3065 = bitcast i32 %3064 to float
  %3066 = fmul fast float %3037, %2847
  %3067 = fmul fast float %3066, %3053
  %3068 = fmul fast float %3038, %2847
  %3069 = fmul fast float %3068, %3059
  %3070 = fmul fast float %3039, %2847
  %3071 = fmul fast float %3070, %3065
  %3072 = call float @dx.op.binary.f32(i32 36, float %2831, float %3047)  ; FMin(a,b)
  %3073 = fmul fast float %3072, %2848
  %3074 = fsub fast float 1.000000e+00, %3073
  %3075 = bitcast float %3074 to i32
  %3076 = sub nsw i32 2129859010, %3075
  %3077 = bitcast i32 %3076 to float
  %3078 = call float @dx.op.binary.f32(i32 36, float %2832, float %3047)  ; FMin(a,b)
  %3079 = fmul fast float %3078, %2848
  %3080 = fsub fast float 1.000000e+00, %3079
  %3081 = bitcast float %3080 to i32
  %3082 = sub nsw i32 2129859010, %3081
  %3083 = bitcast i32 %3082 to float
  %3084 = call float @dx.op.binary.f32(i32 36, float %2836, float %3047)  ; FMin(a,b)
  %3085 = fmul fast float %3084, %2848
  %3086 = fsub fast float 1.000000e+00, %3085
  %3087 = bitcast float %3086 to i32
  %3088 = sub nsw i32 2129859010, %3087
  %3089 = bitcast i32 %3088 to float
  %3090 = fmul fast float %3043, %2847
  %3091 = fmul fast float %3090, %3077
  %3092 = fmul fast float %3044, %2847
  %3093 = fmul fast float %3092, %3083
  %3094 = fmul fast float %3045, %2847
  %3095 = fmul fast float %3094, %3089
  %3096 = call float @dx.op.dot3.f32(i32 55, float %3067, float %3069, float %3071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3097 = select i1 %193, float 0.000000e+00, float %3067
  %3098 = select i1 %193, float %3096, float %3069
  %3099 = select i1 %193, float 0.000000e+00, float %3071
  %3100 = call float @dx.op.dot3.f32(i32 55, float %3040, float %3041, float %3042, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3101 = select i1 %193, float 0.000000e+00, float %3040
  %3102 = select i1 %193, float %3100, float %3041
  %3103 = select i1 %193, float 0.000000e+00, float %3042
  %3104 = call float @dx.op.dot3.f32(i32 55, float %3091, float %3093, float %3095, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3105 = select i1 %193, float 0.000000e+00, float %3091
  %3106 = select i1 %193, float %3104, float %3093
  %3107 = select i1 %193, float 0.000000e+00, float %3095
  %3108 = fmul fast float %894, %894
  %3109 = call float @dx.op.unary.f32(i32 7, float %3108)  ; Saturate(value)
  %3110 = fmul fast float %2838, 9.843750e-01
  %3111 = fmul fast float %2834, 9.843750e-01
  %3112 = fadd fast float %3110, 7.812500e-03
  %3113 = fadd fast float %3111, 7.812500e-03
  %3114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %40, float %3112, float %3113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3115 = extractvalue %dx.types.ResRet.f32 %3114, 0
  %3116 = extractvalue %dx.types.ResRet.f32 %3114, 1
  %3117 = extractvalue %dx.types.ResRet.f32 %3114, 2
  %3118 = extractvalue %dx.types.ResRet.f32 %3114, 3
  %3119 = fsub fast float 1.000000e+00, %3109
  %3120 = fsub fast float %3117, %3115
  %3121 = fsub fast float %3118, %3116
  %3122 = fmul fast float %3120, %3119
  %3123 = fmul fast float %3121, %3119
  %3124 = fadd fast float %3122, %3115
  %3125 = fadd fast float %3123, %3116
  %3126 = fmul fast float %3124, %2831
  %3127 = fmul fast float %3124, %2832
  %3128 = fmul fast float %3124, %2836
  %3129 = fadd fast float %3126, %3125
  %3130 = fadd fast float %3127, %3125
  %3131 = fadd fast float %3128, %3125
  %3132 = fcmp fast ogt float %1499, 0.000000e+00
  br i1 %3132, label %3133, label %3159

; <label>:3133                                    ; preds = %3014
  %3134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %1499, float %2838, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3135 = extractvalue %dx.types.ResRet.f32 %3134, 0
  %3136 = extractvalue %dx.types.ResRet.f32 %3134, 1
  %3137 = extractvalue %dx.types.ResRet.f32 %3134, 2
  %3138 = fadd fast float %3135, -5.000000e-01
  %3139 = fadd fast float %3136, -5.000000e-01
  %3140 = fadd fast float %3137, -5.000000e-01
  %3141 = fsub fast float 1.000000e+00, %2831
  %3142 = fsub fast float 1.000000e+00, %2832
  %3143 = fsub fast float 1.000000e+00, %2836
  %3144 = fmul fast float %2831, 4.000000e+00
  %3145 = fmul fast float %3144, %3141
  %3146 = fmul fast float %3145, %3138
  %3147 = fmul fast float %2832, 4.000000e+00
  %3148 = fmul fast float %3147, %3142
  %3149 = fmul fast float %3148, %3139
  %3150 = fmul fast float %2836, 4.000000e+00
  %3151 = fmul fast float %3150, %3143
  %3152 = fmul fast float %3151, %3140
  %3153 = fadd fast float %3146, %3129
  %3154 = fadd fast float %3149, %3130
  %3155 = fadd fast float %3152, %3131
  %3156 = call float @dx.op.unary.f32(i32 7, float %3153)  ; Saturate(value)
  %3157 = call float @dx.op.unary.f32(i32 7, float %3154)  ; Saturate(value)
  %3158 = call float @dx.op.unary.f32(i32 7, float %3155)  ; Saturate(value)
  br label %3159

; <label>:3159                                    ; preds = %3133, %3014
  %3160 = phi float [ %3156, %3133 ], [ %3129, %3014 ]
  %3161 = phi float [ %3157, %3133 ], [ %3130, %3014 ]
  %3162 = phi float [ %3158, %3133 ], [ %3131, %3014 ]
  %3163 = call float @dx.op.binary.f32(i32 35, float %3161, float %3162)  ; FMax(a,b)
  %3164 = call float @dx.op.binary.f32(i32 35, float %3160, float %3163)  ; FMax(a,b)
  %3165 = fsub fast float 1.000000e+00, %3164
  %3166 = fmul fast float %3164, %2834
  %3167 = fadd fast float %3166, %2834
  %3168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3169 = extractvalue %dx.types.CBufRet.f32 %3168, 2
  %3170 = extractvalue %dx.types.CBufRet.f32 %3168, 3
  %3171 = fmul fast float %3167, %3169
  %3172 = fadd fast float %3171, %3170
  %3173 = call float @dx.op.unary.f32(i32 7, float %3172)  ; Saturate(value)
  %3174 = fsub fast float 1.000000e+00, %2859
  %3175 = fadd fast float %3174, %3173
  %3176 = call float @dx.op.unary.f32(i32 7, float %3175)  ; Saturate(value)
  %3177 = fcmp fast olt float %3176, 1.000000e+00
  br i1 %3177, label %3178, label %3626

; <label>:3178                                    ; preds = %3159
  %3179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3180 = extractvalue %dx.types.CBufRet.f32 %3179, 2
  %3181 = extractvalue %dx.types.CBufRet.f32 %3179, 3
  %3182 = fmul fast float %3180, %84
  %3183 = fmul fast float %3181, %85
  %3184 = fptoui float %3182 to i32
  %3185 = fptoui float %3183 to i32
  %3186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3187 = extractvalue %dx.types.CBufRet.f32 %3186, 0
  %3188 = extractvalue %dx.types.CBufRet.f32 %3186, 2
  %3189 = extractvalue %dx.types.CBufRet.f32 %3186, 3
  %3190 = fadd fast float %72, -4.000000e+00
  %3191 = call float @dx.op.binary.f32(i32 35, float %3190, float 0.000000e+00)  ; FMax(a,b)
  %3192 = fadd fast float %3191, %3187
  %3193 = fmul fast float %3192, %3188
  %3194 = call float @dx.op.unary.f32(i32 23, float %3193)  ; Log(value)
  %3195 = fmul fast float %3194, %3189
  %3196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3197 = extractvalue %dx.types.CBufRet.f32 %3196, 2
  %3198 = fmul fast float %3195, %3197
  %3199 = call float @dx.op.unary.f32(i32 7, float %3198)  ; Saturate(value)
  %3200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3201 = extractvalue %dx.types.CBufRet.i32 %3200, 1
  %3202 = add i32 %3201, -1
  %3203 = uitofp i32 %3201 to float
  %3204 = fmul fast float %3203, %3199
  %3205 = fptoui float %3204 to i32
  %3206 = call i32 @dx.op.binary.i32(i32 40, i32 %3205, i32 %3202)  ; UMin(a,b)
  %3207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3208 = extractvalue %dx.types.CBufRet.i32 %3207, 2
  %3209 = extractvalue %dx.types.CBufRet.i32 %3207, 3
  %3210 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3185, i32 %3208, i32 %3184)  ; UMad(a,b,c)
  %3211 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3206, i32 %3209, i32 %3210)  ; UMad(a,b,c)
  %3212 = call float @dx.op.binary.f32(i32 35, float %72, float 0.000000e+00)  ; FMax(a,b)
  %3213 = fptoui float %3212 to i32
  %3214 = lshr i32 %3213, 5
  %3215 = call i32 @dx.op.binary.i32(i32 40, i32 %3214, i32 8191)  ; UMin(a,b)
  br i1 false, label %3216, label %3223

; <label>:3216                                    ; preds = %3178
  %3217 = fadd fast float 0.000000e+00, %2846
  %3218 = call float @dx.op.dot3.f32(i32 55, float %2844, float %2845, float %3217, float %2844, float %2845, float %3217)  ; Dot3(ax,ay,az,bx,by,bz)
  %3219 = call float @dx.op.unary.f32(i32 25, float %3218)  ; Rsqrt(value)
  %3220 = fmul fast float %3219, %2844
  %3221 = fmul fast float %3219, %2845
  %3222 = fmul fast float %3217, %3219
  br label %3223

; <label>:3223                                    ; preds = %3216, %3178
  %3224 = phi float [ %3220, %3216 ], [ %2844, %3178 ]
  %3225 = phi float [ %3221, %3216 ], [ %2845, %3178 ]
  %3226 = phi float [ %3222, %3216 ], [ %2846, %3178 ]
  %3227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3228 = extractvalue %dx.types.CBufRet.i32 %3227, 2
  %3229 = add nsw i32 %3228, -1
  %3230 = call i32 @dx.op.binary.i32(i32 37, i32 %3229, i32 0)  ; IMax(a,b)
  %3231 = shl i32 %3215, 2
  %3232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3231, i32 undef)  ; BufferLoad(srv,index,wot)
  %3233 = extractvalue %dx.types.ResRet.i32 %3232, 0
  %3234 = lshr i32 %3233, 16
  %3235 = and i32 %3233, 65535
  %3236 = lshr i32 %3233, 21
  %3237 = lshr i32 %3235, 5
  %3238 = call i32 @dx.op.binary.i32(i32 40, i32 %3237, i32 %3230)  ; UMin(a,b)
  %3239 = icmp ugt i32 %3236, %3238
  br i1 %3239, label %3602, label %3240

; <label>:3240                                    ; preds = %3223
  br label %3241

; <label>:3241                                    ; preds = %3594, %3240
  %3242 = phi float [ %3595, %3594 ], [ 0.000000e+00, %3240 ]
  %3243 = phi float [ %3596, %3594 ], [ 0.000000e+00, %3240 ]
  %3244 = phi float [ %3597, %3594 ], [ 0.000000e+00, %3240 ]
  %3245 = phi float [ %3598, %3594 ], [ 1.000000e+00, %3240 ]
  %3246 = phi i32 [ %3599, %3594 ], [ %3236, %3240 ]
  %3247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3248 = extractvalue %dx.types.CBufRet.i32 %3247, 2
  %3249 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3211, i32 %3248, i32 %3246)  ; UMad(a,b,c)
  %3250 = shl i32 %3249, 2
  %3251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3250, i32 undef)  ; BufferLoad(srv,index,wot)
  %3252 = extractvalue %dx.types.ResRet.i32 %3251, 0
  %3253 = shl i32 %3246, 5
  %3254 = sub nsw i32 %3234, %3253
  %3255 = call i32 @dx.op.binary.i32(i32 37, i32 %3254, i32 0)  ; IMax(a,b)
  %3256 = call i32 @dx.op.binary.i32(i32 38, i32 %3255, i32 31)  ; IMin(a,b)
  %3257 = sub nsw i32 1, %3234
  %3258 = add nsw i32 %3257, %3235
  %3259 = call i32 @dx.op.binary.i32(i32 37, i32 %3258, i32 0)  ; IMax(a,b)
  %3260 = call i32 @dx.op.binary.i32(i32 38, i32 %3259, i32 32)  ; IMin(a,b)
  %3261 = and i32 %3260, 31
  %3262 = shl i32 -1, %3261
  %3263 = xor i32 %3262, -1
  %3264 = and i32 %3256, 31
  %3265 = shl i32 %3263, %3264
  %3266 = icmp eq i32 %3260, 32
  %3267 = select i1 %3266, i32 -1, i32 %3265
  %3268 = and i32 %3267, %3252
  %3269 = icmp eq i32 %3268, 0
  br i1 %3269, label %3594, label %3270

; <label>:3270                                    ; preds = %3241
  br label %3271

; <label>:3271                                    ; preds = %3377, %3270
  %3272 = phi float [ %3378, %3377 ], [ %3242, %3270 ]
  %3273 = phi float [ %3379, %3377 ], [ %3243, %3270 ]
  %3274 = phi float [ %3380, %3377 ], [ %3244, %3270 ]
  %3275 = phi float [ %3381, %3377 ], [ %3245, %3270 ]
  %3276 = phi i32 [ %3281, %3377 ], [ %3268, %3270 ]
  %3277 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3276)  ; FirstbitLo(value)
  %3278 = add i32 %3277, %3253
  %3279 = and i32 %3277, 31
  %3280 = shl i32 1, %3279
  %3281 = xor i32 %3280, %3276
  %3282 = mul i32 %3278, 72
  %3283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3282, i32 undef)  ; BufferLoad(srv,index,wot)
  %3284 = extractvalue %dx.types.ResRet.f32 %3283, 0
  %3285 = extractvalue %dx.types.ResRet.f32 %3283, 1
  %3286 = extractvalue %dx.types.ResRet.f32 %3283, 2
  %3287 = add i32 %3282, 12
  %3288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3287, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.i32 %3288, 0
  %3290 = add i32 %3282, 16
  %3291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3290, i32 undef)  ; BufferLoad(srv,index,wot)
  %3292 = extractvalue %dx.types.ResRet.f32 %3291, 0
  %3293 = extractvalue %dx.types.ResRet.f32 %3291, 1
  %3294 = extractvalue %dx.types.ResRet.f32 %3291, 2
  %3295 = add i32 %3282, 28
  %3296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3295, i32 undef)  ; BufferLoad(srv,index,wot)
  %3297 = extractvalue %dx.types.ResRet.f32 %3296, 0
  %3298 = add i32 %3282, 32
  %3299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3298, i32 undef)  ; BufferLoad(srv,index,wot)
  %3300 = extractvalue %dx.types.ResRet.f32 %3299, 0
  %3301 = extractvalue %dx.types.ResRet.f32 %3299, 1
  %3302 = extractvalue %dx.types.ResRet.f32 %3299, 2
  %3303 = extractvalue %dx.types.ResRet.f32 %3299, 3
  %3304 = add i32 %3282, 48
  %3305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3304, i32 undef)  ; BufferLoad(srv,index,wot)
  %3306 = extractvalue %dx.types.ResRet.f32 %3305, 0
  %3307 = extractvalue %dx.types.ResRet.f32 %3305, 1
  %3308 = add i32 %3282, 56
  %3309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.f32 %3309, 0
  %3311 = extractvalue %dx.types.ResRet.f32 %3309, 1
  %3312 = add i32 %3282, 64
  %3313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3314 = extractvalue %dx.types.ResRet.f32 %3313, 0
  %3315 = extractvalue %dx.types.ResRet.f32 %3313, 1
  %3316 = mul i32 %3278, 60
  %3317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3316, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.f32 %3317, 0
  %3319 = extractvalue %dx.types.ResRet.f32 %3317, 1
  %3320 = extractvalue %dx.types.ResRet.f32 %3317, 2
  %3321 = add i32 %3316, 12
  %3322 = add i32 %3316, 48
  %3323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3322, i32 undef)  ; BufferLoad(srv,index,wot)
  %3324 = extractvalue %dx.types.ResRet.f32 %3323, 0
  %3325 = extractvalue %dx.types.ResRet.f32 %3323, 1
  %3326 = extractvalue %dx.types.ResRet.f32 %3323, 2
  %3327 = and i32 %3289, 32767
  %3328 = bitcast float %3284 to i32
  %3329 = icmp eq i32 %3328, -1
  %3330 = bitcast float %3285 to i32
  %3331 = and i32 %3289, 32768
  %3332 = icmp ne i32 %3331, 0
  %3333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3334 = extractvalue %dx.types.CBufRet.f32 %3333, 0
  %3335 = extractvalue %dx.types.CBufRet.f32 %3333, 1
  %3336 = extractvalue %dx.types.CBufRet.f32 %3333, 2
  %3337 = fsub fast float %3318, %3334
  %3338 = fsub fast float %3319, %3335
  %3339 = fsub fast float %3320, %3336
  %3340 = fsub fast float %132, %3337
  %3341 = fsub fast float %133, %3338
  %3342 = fsub fast float %134, %3339
  %3343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3321, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.f32 %3343, 0
  %3345 = extractvalue %dx.types.ResRet.f32 %3343, 1
  %3346 = extractvalue %dx.types.ResRet.f32 %3343, 2
  %3347 = call float @dx.op.dot3.f32(i32 55, float %3340, float %3341, float %3342, float %3344, float %3345, float %3346)  ; Dot3(ax,ay,az,bx,by,bz)
  %3348 = add i32 %3316, 24
  %3349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3348, i32 undef)  ; BufferLoad(srv,index,wot)
  %3350 = extractvalue %dx.types.ResRet.f32 %3349, 0
  %3351 = extractvalue %dx.types.ResRet.f32 %3349, 1
  %3352 = extractvalue %dx.types.ResRet.f32 %3349, 2
  %3353 = call float @dx.op.dot3.f32(i32 55, float %3340, float %3341, float %3342, float %3350, float %3351, float %3352)  ; Dot3(ax,ay,az,bx,by,bz)
  %3354 = add i32 %3316, 36
  %3355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3356 = extractvalue %dx.types.ResRet.f32 %3355, 0
  %3357 = extractvalue %dx.types.ResRet.f32 %3355, 1
  %3358 = extractvalue %dx.types.ResRet.f32 %3355, 2
  %3359 = call float @dx.op.dot3.f32(i32 55, float %3340, float %3341, float %3342, float %3356, float %3357, float %3358)  ; Dot3(ax,ay,az,bx,by,bz)
  %3360 = call float @dx.op.unary.f32(i32 6, float %3347)  ; FAbs(value)
  %3361 = call float @dx.op.unary.f32(i32 6, float %3353)  ; FAbs(value)
  %3362 = call float @dx.op.unary.f32(i32 6, float %3359)  ; FAbs(value)
  %3363 = fsub fast float %3324, %3360
  %3364 = fsub fast float %3325, %3361
  %3365 = fsub fast float %3326, %3362
  %3366 = fmul fast float %3363, %3292
  %3367 = fmul fast float %3364, %3293
  %3368 = fmul fast float %3365, %3294
  %3369 = call float @dx.op.binary.f32(i32 36, float %3367, float %3368)  ; FMin(a,b)
  %3370 = call float @dx.op.binary.f32(i32 36, float %3366, float %3369)  ; FMin(a,b)
  %3371 = call float @dx.op.unary.f32(i32 7, float %3370)  ; Saturate(value)
  %3372 = call float @dx.op.binary.f32(i32 36, float %3275, float %3371)  ; FMin(a,b)
  %3373 = uitofp i1 %3332 to float
  %3374 = fsub fast float 1.000000e+00, %3373
  %3375 = fmul fast float %3372, %3374
  %3376 = fcmp fast ogt float %3375, 0.000000e+00
  br i1 %3376, label %3383, label %3377

; <label>:3377                                    ; preds = %3525, %3271
  %3378 = phi float [ %3589, %3525 ], [ %3272, %3271 ]
  %3379 = phi float [ %3590, %3525 ], [ %3273, %3271 ]
  %3380 = phi float [ %3591, %3525 ], [ %3274, %3271 ]
  %3381 = phi float [ %3592, %3525 ], [ %3275, %3271 ]
  %3382 = icmp eq i32 %3276, %3280
  br i1 %3382, label %3593, label %3271

; <label>:3383                                    ; preds = %3271
  br i1 %3329, label %3441, label %3384

; <label>:3384                                    ; preds = %3383
  %3385 = fsub fast float -0.000000e+00, %3344
  %3386 = fsub fast float -0.000000e+00, %3345
  %3387 = fsub fast float -0.000000e+00, %3346
  %3388 = call float @dx.op.dot3.f32(i32 55, float %3224, float %3225, float %3226, float %3385, float %3386, float %3387)  ; Dot3(ax,ay,az,bx,by,bz)
  %3389 = fsub fast float -0.000000e+00, %3388
  %3390 = call float @dx.op.dot3.f32(i32 55, float %3340, float %3341, float %3342, float %3385, float %3386, float %3387)  ; Dot3(ax,ay,az,bx,by,bz)
  %3391 = fadd fast float %3390, %3307
  %3392 = fadd fast float %3306, %3390
  %3393 = fsub fast float -0.000000e+00, %3392
  %3394 = fcmp ogt float %3388, -0.000000e+00
  %3395 = select i1 %3394, float %3393, float %3391
  %3396 = call float @dx.op.unary.f32(i32 6, float %3389)  ; FAbs(value)
  %3397 = fdiv fast float 1.000000e+00, %3396
  %3398 = fmul fast float %3395, %3397
  %3399 = call float @dx.op.binary.f32(i32 35, float %3398, float 0.000000e+00)  ; FMax(a,b)
  %3400 = fsub fast float -0.000000e+00, %3350
  %3401 = fsub fast float -0.000000e+00, %3351
  %3402 = fsub fast float -0.000000e+00, %3352
  %3403 = call float @dx.op.dot3.f32(i32 55, float %3224, float %3225, float %3226, float %3400, float %3401, float %3402)  ; Dot3(ax,ay,az,bx,by,bz)
  %3404 = fsub fast float -0.000000e+00, %3403
  %3405 = call float @dx.op.dot3.f32(i32 55, float %3340, float %3341, float %3342, float %3400, float %3401, float %3402)  ; Dot3(ax,ay,az,bx,by,bz)
  %3406 = fadd fast float %3405, %3311
  %3407 = fadd fast float %3310, %3405
  %3408 = fsub fast float -0.000000e+00, %3407
  %3409 = fcmp ogt float %3403, -0.000000e+00
  %3410 = select i1 %3409, float %3408, float %3406
  %3411 = call float @dx.op.unary.f32(i32 6, float %3404)  ; FAbs(value)
  %3412 = fdiv fast float 1.000000e+00, %3411
  %3413 = fmul fast float %3410, %3412
  %3414 = call float @dx.op.binary.f32(i32 35, float %3413, float 0.000000e+00)  ; FMax(a,b)
  %3415 = fsub fast float -0.000000e+00, %3356
  %3416 = fsub fast float -0.000000e+00, %3357
  %3417 = fsub fast float -0.000000e+00, %3358
  %3418 = call float @dx.op.dot3.f32(i32 55, float %3224, float %3225, float %3226, float %3415, float %3416, float %3417)  ; Dot3(ax,ay,az,bx,by,bz)
  %3419 = fsub fast float -0.000000e+00, %3418
  %3420 = call float @dx.op.dot3.f32(i32 55, float %3340, float %3341, float %3342, float %3415, float %3416, float %3417)  ; Dot3(ax,ay,az,bx,by,bz)
  %3421 = fadd fast float %3420, %3315
  %3422 = fadd fast float %3314, %3420
  %3423 = fsub fast float -0.000000e+00, %3422
  %3424 = fcmp ogt float %3418, -0.000000e+00
  %3425 = select i1 %3424, float %3423, float %3421
  %3426 = call float @dx.op.unary.f32(i32 6, float %3419)  ; FAbs(value)
  %3427 = fdiv fast float 1.000000e+00, %3426
  %3428 = fmul fast float %3425, %3427
  %3429 = call float @dx.op.binary.f32(i32 35, float %3428, float 0.000000e+00)  ; FMax(a,b)
  %3430 = call float @dx.op.binary.f32(i32 36, float %3414, float %3429)  ; FMin(a,b)
  %3431 = call float @dx.op.binary.f32(i32 36, float %3399, float %3430)  ; FMin(a,b)
  %3432 = fmul fast float %3431, %3224
  %3433 = fmul fast float %3431, %3225
  %3434 = fmul fast float %3431, %3226
  %3435 = fadd fast float %3432, %132
  %3436 = fadd fast float %3433, %133
  %3437 = fadd fast float %3434, %134
  %3438 = fsub fast float %3435, %3284
  %3439 = fsub fast float %3436, %3285
  %3440 = fsub fast float %3437, %3286
  br label %3448

; <label>:3441                                    ; preds = %3383
  %3442 = fmul fast float %3224, 8.096000e+03
  %3443 = fmul fast float %3225, 8.096000e+03
  %3444 = fmul fast float %3226, 8.096000e+03
  %3445 = fadd fast float %3442, %132
  %3446 = fadd fast float %3443, %133
  %3447 = fadd fast float %3444, %134
  br label %3448

; <label>:3448                                    ; preds = %3441, %3384
  %3449 = phi float [ %3224, %3441 ], [ %3438, %3384 ]
  %3450 = phi float [ %3225, %3441 ], [ %3439, %3384 ]
  %3451 = phi float [ %3226, %3441 ], [ %3440, %3384 ]
  %3452 = phi float [ %3445, %3441 ], [ %3435, %3384 ]
  %3453 = phi float [ %3446, %3441 ], [ %3436, %3384 ]
  %3454 = phi float [ %3447, %3441 ], [ %3437, %3384 ]
  %3455 = fcmp fast olt float %3303, 1.000000e+00
  br i1 %3455, label %3456, label %3487, !dx.controlflow.hints !81

; <label>:3456                                    ; preds = %3448
  %3457 = fmul fast float %3451, %3301
  %3458 = fmul fast float %3450, %3302
  %3459 = fsub fast float %3457, %3458
  %3460 = fmul fast float %3449, %3302
  %3461 = fmul fast float %3451, %3300
  %3462 = fsub fast float %3460, %3461
  %3463 = fmul fast float %3450, %3300
  %3464 = fmul fast float %3449, %3301
  %3465 = fsub fast float %3463, %3464
  %3466 = fmul fast float %3459, 2.000000e+00
  %3467 = fmul fast float %3462, 2.000000e+00
  %3468 = fmul fast float %3465, 2.000000e+00
  %3469 = fmul fast float %3466, %3303
  %3470 = fmul fast float %3467, %3303
  %3471 = fmul fast float %3468, %3303
  %3472 = fmul fast float %3468, %3301
  %3473 = fmul fast float %3467, %3302
  %3474 = fmul fast float %3466, %3302
  %3475 = fmul fast float %3468, %3300
  %3476 = fmul fast float %3467, %3300
  %3477 = fmul fast float %3466, %3301
  %3478 = fadd fast float %3472, %3449
  %3479 = fadd fast float %3478, %3469
  %3480 = fsub fast float %3479, %3473
  %3481 = fsub fast float %3450, %3475
  %3482 = fadd fast float %3481, %3470
  %3483 = fadd fast float %3482, %3474
  %3484 = fadd fast float %3471, %3451
  %3485 = fsub fast float %3484, %3477
  %3486 = fadd fast float %3485, %3476
  br label %3487

; <label>:3487                                    ; preds = %3456, %3448
  %3488 = phi float [ %3480, %3456 ], [ %3449, %3448 ]
  %3489 = phi float [ %3483, %3456 ], [ %3450, %3448 ]
  %3490 = phi float [ %3486, %3456 ], [ %3451, %3448 ]
  br i1 %3329, label %3522, label %3491

; <label>:3491                                    ; preds = %3487
  %3492 = fmul fast float %2834, 0x400187C840000000
  %3493 = fadd fast float %3492, 0xC00EFC2120000000
  %3494 = fmul fast float %3493, %2834
  %3495 = fadd fast float %3494, 0x3FE5D16340000000
  %3496 = fmul fast float %3495, %2834
  %3497 = fadd fast float %3496, 1.000000e+00
  %3498 = call float @dx.op.unary.f32(i32 7, float %3497)  ; Saturate(value)
  %3499 = fsub fast float %3452, %132
  %3500 = fsub fast float %3453, %133
  %3501 = fsub fast float %3454, %134
  %3502 = fsub fast float %3452, %3284
  %3503 = fsub fast float %3453, %3285
  %3504 = fsub fast float %3454, %3286
  %3505 = call float @dx.op.dot3.f32(i32 55, float %3499, float %3500, float %3501, float %3499, float %3500, float %3501)  ; Dot3(ax,ay,az,bx,by,bz)
  %3506 = call float @dx.op.dot3.f32(i32 55, float %3502, float %3503, float %3504, float %3502, float %3503, float %3504)  ; Dot3(ax,ay,az,bx,by,bz)
  %3507 = fadd fast float %3506, 0x3EE4F8B580000000
  %3508 = fdiv fast float %3505, %3507
  %3509 = bitcast float %3508 to i32
  %3510 = ashr i32 %3509, 1
  %3511 = add nsw i32 %3510, 532487669
  %3512 = bitcast i32 %3511 to float
  %3513 = fmul fast float %3512, %3498
  %3514 = call float @dx.op.unary.f32(i32 7, float %3513)  ; Saturate(value)
  %3515 = fmul fast float %3514, 0x4009981AE0000000
  %3516 = fsub fast float 0x40111BBD80000000, %3515
  %3517 = fmul fast float %3516, %3514
  %3518 = fadd fast float %3517, 0xC0009F6020000000
  %3519 = fmul fast float %3518, %3514
  %3520 = fadd fast float %3519, 1.000000e+00
  %3521 = call float @dx.op.unary.f32(i32 7, float %3520)  ; Saturate(value)
  br label %3525

; <label>:3522                                    ; preds = %3487
  %3523 = icmp ne i32 %3330, -1
  %3524 = zext i1 %3523 to i32
  br label %3525

; <label>:3525                                    ; preds = %3522, %3491
  %3526 = phi float [ %2834, %3522 ], [ %3521, %3491 ]
  %3527 = phi i32 [ %3524, %3522 ], [ 0, %3491 ]
  %3528 = fmul float %3526, 5.000000e+00
  %3529 = fsub float 5.000000e+00, %3528
  %3530 = icmp ne i32 %3527, 0
  %3531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3532 = extractvalue %dx.types.CBufRet.f32 %3531, 3
  %3533 = fadd fast float %3532, %3529
  %3534 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3533)  ; FMax(a,b)
  %3535 = call float @dx.op.unary.f32(i32 6, float %3488)  ; FAbs(value)
  %3536 = call float @dx.op.unary.f32(i32 6, float %3489)  ; FAbs(value)
  %3537 = fadd fast float %3536, %3535
  %3538 = call float @dx.op.unary.f32(i32 6, float %3490)  ; FAbs(value)
  %3539 = fadd fast float %3537, %3538
  %3540 = fcmp fast oeq float %3539, 0.000000e+00
  %3541 = fdiv fast float 1.000000e+00, %3539
  %3542 = select i1 %3540, float 1.000000e+00, float %3541
  %3543 = fmul fast float %3542, %3488
  %3544 = fmul fast float %3542, %3489
  %3545 = call float @dx.op.unary.f32(i32 6, float %3544)  ; FAbs(value)
  %3546 = call float @dx.op.unary.f32(i32 6, float %3543)  ; FAbs(value)
  %3547 = fsub fast float 1.000000e+00, %3545
  %3548 = fsub fast float 1.000000e+00, %3546
  %3549 = fcmp fast oge float %3543, 0.000000e+00
  %3550 = fcmp fast oge float %3544, 0.000000e+00
  %3551 = select i1 %3549, float 1.000000e+00, float -1.000000e+00
  %3552 = select i1 %3550, float 1.000000e+00, float -1.000000e+00
  %3553 = fcmp fast ole float %3490, 0.000000e+00
  %3554 = fmul fast float %3551, %3547
  %3555 = fmul fast float %3552, %3548
  %3556 = select i1 %3553, float %3554, float %3543
  %3557 = select i1 %3553, float %3555, float %3544
  %3558 = fmul fast float %3556, 5.000000e-01
  %3559 = fmul fast float %3557, 5.000000e-01
  %3560 = fadd fast float %3558, 5.000000e-01
  %3561 = fadd fast float %3559, 5.000000e-01
  %3562 = uitofp i32 %3327 to float
  %3563 = call float @dx.op.binary.f32(i32 36, float %3534, float 3.000000e+00)  ; FMin(a,b)
  %3564 = fadd fast float %3563, 2.000000e+00
  %3565 = call float @dx.op.unary.f32(i32 21, float %3564)  ; Exp(value)
  %3566 = extractvalue %dx.types.CBufRet.f32 %3531, 1
  %3567 = fmul fast float %3566, %3565
  %3568 = fmul fast float %3567, 2.000000e+00
  %3569 = fsub fast float 1.000000e+00, %3568
  %3570 = fmul fast float %3560, %3569
  %3571 = fmul fast float %3561, %3569
  %3572 = fadd fast float %3570, %3567
  %3573 = fadd fast float %3571, %3567
  %3574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %38, float %3572, float %3573, float %3562, float undef, i32 0, i32 0, i32 undef, float %3534)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3575 = extractvalue %dx.types.ResRet.f32 %3574, 0
  %3576 = extractvalue %dx.types.ResRet.f32 %3574, 1
  %3577 = extractvalue %dx.types.ResRet.f32 %3574, 2
  %3578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3579 = extractvalue %dx.types.CBufRet.f32 %3578, 3
  %3580 = fmul fast float %3579, %3297
  %3581 = call float @dx.op.binary.f32(i32 36, float %2865, float %3580)  ; FMin(a,b)
  %3582 = select i1 %3530, float %3581, float %3580
  %3583 = fmul fast float %3575, %3375
  %3584 = fmul fast float %3583, %3582
  %3585 = fmul fast float %3576, %3375
  %3586 = fmul fast float %3585, %3582
  %3587 = fmul fast float %3577, %3375
  %3588 = fmul fast float %3587, %3582
  %3589 = fadd fast float %3584, %3272
  %3590 = fadd fast float %3586, %3273
  %3591 = fadd fast float %3588, %3274
  %3592 = fsub fast float %3275, %3375
  br label %3377

; <label>:3593                                    ; preds = %3377
  br label %3594

; <label>:3594                                    ; preds = %3593, %3241
  %3595 = phi float [ %3242, %3241 ], [ %3378, %3593 ]
  %3596 = phi float [ %3243, %3241 ], [ %3379, %3593 ]
  %3597 = phi float [ %3244, %3241 ], [ %3380, %3593 ]
  %3598 = phi float [ %3245, %3241 ], [ %3381, %3593 ]
  %3599 = add i32 %3246, 1
  %3600 = icmp ugt i32 %3599, %3238
  br i1 %3600, label %3601, label %3241, !llvm.loop !82

; <label>:3601                                    ; preds = %3594
  br label %3602

; <label>:3602                                    ; preds = %3601, %3223
  %3603 = phi float [ 0.000000e+00, %3223 ], [ %3595, %3601 ]
  %3604 = phi float [ 0.000000e+00, %3223 ], [ %3596, %3601 ]
  %3605 = phi float [ 0.000000e+00, %3223 ], [ %3597, %3601 ]
  %3606 = call float @dx.op.dot3.f32(i32 55, float %3603, float %3604, float %3605, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3607 = select i1 %193, float 0.000000e+00, float %3603
  %3608 = select i1 %193, float %3606, float %3604
  %3609 = select i1 %193, float 0.000000e+00, float %3605
  %3610 = fcmp fast olt float %3176, 0.000000e+00
  %3611 = call float @dx.op.unary.f32(i32 6, float %3176)  ; FAbs(value)
  %3612 = fmul fast float %3611, %3105
  %3613 = fmul fast float %3611, %3106
  %3614 = fmul fast float %3611, %3107
  %3615 = select i1 %3610, float %3105, float %3612
  %3616 = select i1 %3610, float %3106, float %3613
  %3617 = select i1 %3610, float %3107, float %3614
  %3618 = fsub fast float 1.000000e+00, %3611
  %3619 = call float @dx.op.unary.f32(i32 7, float %3618)  ; Saturate(value)
  %3620 = fmul fast float %3619, %3607
  %3621 = fmul fast float %3619, %3608
  %3622 = fmul fast float %3619, %3609
  %3623 = fadd fast float %3615, %3620
  %3624 = fadd fast float %3616, %3621
  %3625 = fadd fast float %3617, %3622
  br label %3626

; <label>:3626                                    ; preds = %3602, %3159
  %3627 = phi float [ %3105, %3159 ], [ %3623, %3602 ]
  %3628 = phi float [ %3106, %3159 ], [ %3624, %3602 ]
  %3629 = phi float [ %3107, %3159 ], [ %3625, %3602 ]
  %3630 = call float @dx.op.dot3.f32(i32 55, float %2825, float %2826, float %2827, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3631 = fcmp fast ogt float %3630, 0x3E7FF19E20000000
  %3632 = fdiv fast float 1.000000e+00, %3630
  %3633 = select i1 %3631, float %3632, float 0.000000e+00
  %3634 = fmul fast float %3633, %2825
  %3635 = fmul fast float %3633, %2826
  %3636 = fmul fast float %3633, %2827
  %3637 = fadd fast float %3634, -1.000000e+00
  %3638 = fadd fast float %3635, -1.000000e+00
  %3639 = fadd fast float %3636, -1.000000e+00
  %3640 = fmul fast float %3637, 5.000000e-01
  %3641 = fmul fast float %3638, 5.000000e-01
  %3642 = fmul fast float %3639, 5.000000e-01
  %3643 = fadd fast float %3640, 1.000000e+00
  %3644 = fadd fast float %3641, 1.000000e+00
  %3645 = fadd fast float %3642, 1.000000e+00
  %3646 = call float @dx.op.binary.f32(i32 35, float %2838, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3647 = fdiv fast float %894, %3646
  %3648 = fcmp fast olt float %1572, 1.270000e+02
  %3649 = fcmp fast olt float %1573, 1.270000e+02
  %3650 = fcmp fast olt float %1574, 1.270000e+02
  %3651 = fmul fast float %1572, 0xBFF7154760000000
  %3652 = fmul fast float %3651, %3647
  %3653 = fmul fast float %1573, 0xBFF7154760000000
  %3654 = fmul fast float %3653, %3647
  %3655 = fmul fast float %1574, 0xBFF7154760000000
  %3656 = fmul fast float %3655, %3647
  %3657 = call float @dx.op.unary.f32(i32 21, float %3652)  ; Exp(value)
  %3658 = call float @dx.op.unary.f32(i32 21, float %3654)  ; Exp(value)
  %3659 = call float @dx.op.unary.f32(i32 21, float %3656)  ; Exp(value)
  %3660 = call float @dx.op.unary.f32(i32 7, float %3657)  ; Saturate(value)
  %3661 = call float @dx.op.unary.f32(i32 7, float %3658)  ; Saturate(value)
  %3662 = call float @dx.op.unary.f32(i32 7, float %3659)  ; Saturate(value)
  %3663 = select i1 %3648, float %3660, float 0.000000e+00
  %3664 = select i1 %3649, float %3661, float 0.000000e+00
  %3665 = select i1 %3650, float %3662, float 0.000000e+00
  %3666 = fmul fast float %3663, %3165
  %3667 = fmul fast float %3664, %3165
  %3668 = fmul fast float %3665, %3165
  %3669 = fadd fast float %3666, -1.000000e+00
  %3670 = fadd fast float %3667, -1.000000e+00
  %3671 = fadd fast float %3668, -1.000000e+00
  %3672 = fmul fast float %3669, %1522
  %3673 = fmul fast float %3670, %1522
  %3674 = fmul fast float %3671, %1522
  %3675 = fmul fast float %3627, %3160
  %3676 = fmul fast float %3628, %3161
  %3677 = fmul fast float %3629, %3162
  %3678 = fsub fast float 1.000000e+00, %2838
  %3679 = bitcast float %3678 to i32
  %3680 = sitofp i32 %3679 to float
  %3681 = fmul fast float %3680, 5.000000e+00
  %3682 = fadd fast float %3681, 0xC1EFBF8940000000
  %3683 = fptosi float %3682 to i32
  %3684 = bitcast i32 %3683 to float
  %3685 = fmul fast float %3684, %1498
  %3686 = fmul fast float %3097, %3685
  %3687 = fmul fast float %3686, %3165
  %3688 = fmul fast float %3687, %3643
  %3689 = fmul fast float %3098, %3685
  %3690 = fmul fast float %3689, %3165
  %3691 = fmul fast float %3690, %3644
  %3692 = fmul fast float %3099, %3685
  %3693 = fmul fast float %3692, %3165
  %3694 = fmul fast float %3693, %3645
  %3695 = fadd fast float %3675, %1503
  %3696 = fadd fast float %3695, %3688
  %3697 = fmul fast float %3696, %1522
  %3698 = fadd fast float %3676, %1504
  %3699 = fadd fast float %3698, %3691
  %3700 = fmul fast float %3699, %1522
  %3701 = fadd fast float %3677, %1505
  %3702 = fadd fast float %3701, %3694
  %3703 = fmul fast float %3702, %1522
  %3704 = fmul fast float %2832, 0x4012D0A400000000
  %3705 = fadd fast float %3674, 1.000000e+00
  %3706 = fadd fast float %3673, 1.000000e+00
  %3707 = fadd fast float %3672, 1.000000e+00
  %3708 = fmul fast float %3165, %3099
  %3709 = fmul fast float %3165, %3098
  %3710 = fmul fast float %3165, %3097
  %3711 = fmul fast float %2853, %1522
  %3712 = fsub fast float 1.000000e+00, %3711
  %3713 = call float @dx.op.unary.f32(i32 7, float %3712)  ; Saturate(value)
  %3714 = fsub fast float 1.000000e+00, %3713
  %3715 = fadd fast float %3704, 0x3FDB6377A0000000
  %3716 = fmul fast float %3714, %3715
  %3717 = call float @dx.op.dot3.f32(i32 55, float %2439, float %2440, float %2441, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3718 = fadd fast float %3716, %3717
  %3719 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3720 = call float @dx.op.binary.f32(i32 35, float %3719, float 0x3F847AE140000000)  ; FMax(a,b)
  %3721 = fmul fast float %3720, %3720
  %3722 = fmul fast float %3721, %3721
  %3723 = fmul fast float %3722, 0xC00A935000000000
  %3724 = call float @dx.op.unary.f32(i32 21, float %3723)  ; Exp(value)
  %3725 = fsub fast float 1.000000e+00, %3724
  %3726 = fmul fast float %3707, %3101
  %3727 = fmul fast float %3726, %3725
  %3728 = fmul fast float %3706, %3102
  %3729 = fmul fast float %3728, %3725
  %3730 = fmul fast float %3705, %3103
  %3731 = fmul fast float %3730, %3725
  %3732 = fadd fast float %3727, %3710
  %3733 = fmul fast float %3732, %1522
  %3734 = fadd fast float %3729, %3709
  %3735 = fmul fast float %3734, %1522
  %3736 = fadd fast float %3731, %3708
  %3737 = fmul fast float %3736, %1522
  %3738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3739 = extractvalue %dx.types.CBufRet.f32 %3738, 3
  %3740 = fcmp fast oeq float %3739, 0.000000e+00
  br i1 %3740, label %5343, label %3741

; <label>:3741                                    ; preds = %3626
  %3742 = extractvalue %dx.types.CBufRet.f32 %3738, 0
  %3743 = extractvalue %dx.types.CBufRet.f32 %3738, 1
  %3744 = extractvalue %dx.types.CBufRet.f32 %3738, 2
  %3745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3746 = extractvalue %dx.types.CBufRet.f32 %3745, 0
  %3747 = extractvalue %dx.types.CBufRet.f32 %3745, 1
  %3748 = extractvalue %dx.types.CBufRet.f32 %3745, 2
  %3749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3750 = extractvalue %dx.types.CBufRet.f32 %3749, 0
  %3751 = extractvalue %dx.types.CBufRet.f32 %3749, 1
  %3752 = call float @dx.op.dot3.f32(i32 55, float %3746, float %3747, float %3748, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3753 = select i1 %193, float %3750, float %3746
  %3754 = select i1 %193, float %3752, float %3747
  %3755 = select i1 %193, float %3751, float %3748
  %3756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3757 = extractvalue %dx.types.CBufRet.f32 %3756, 2
  %3758 = fmul fast float %3757, %87
  %3759 = fmul fast float %3757, %88
  %3760 = fmul fast float %3757, %89
  %3761 = fadd fast float %3758, %132
  %3762 = fadd fast float %3759, %133
  %3763 = fadd fast float %3760, %134
  %3764 = fcmp fast olt float %3739, 0.000000e+00
  br i1 %3764, label %4860, label %3765

; <label>:3765                                    ; preds = %3741
  %3766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3767 = extractvalue %dx.types.CBufRet.f32 %3766, 0
  %3768 = extractvalue %dx.types.CBufRet.f32 %3766, 1
  %3769 = extractvalue %dx.types.CBufRet.f32 %3766, 2
  %3770 = extractvalue %dx.types.CBufRet.f32 %3766, 3
  %3771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.f32 %3771, 0
  %3773 = extractvalue %dx.types.CBufRet.f32 %3771, 1
  %3774 = extractvalue %dx.types.CBufRet.f32 %3771, 2
  %3775 = extractvalue %dx.types.CBufRet.f32 %3771, 3
  %3776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3777 = extractvalue %dx.types.CBufRet.f32 %3776, 0
  %3778 = extractvalue %dx.types.CBufRet.f32 %3776, 1
  %3779 = extractvalue %dx.types.CBufRet.f32 %3776, 2
  %3780 = extractvalue %dx.types.CBufRet.f32 %3776, 3
  %3781 = fmul fast float %3767, %3761
  %3782 = call float @dx.op.tertiary.f32(i32 46, float %3762, float %3768, float %3781)  ; FMad(a,b,c)
  %3783 = call float @dx.op.tertiary.f32(i32 46, float %3763, float %3769, float %3782)  ; FMad(a,b,c)
  %3784 = fadd fast float %3783, %3770
  %3785 = fmul fast float %3772, %3761
  %3786 = call float @dx.op.tertiary.f32(i32 46, float %3762, float %3773, float %3785)  ; FMad(a,b,c)
  %3787 = call float @dx.op.tertiary.f32(i32 46, float %3763, float %3774, float %3786)  ; FMad(a,b,c)
  %3788 = fadd fast float %3787, %3775
  %3789 = fmul fast float %3777, %3761
  %3790 = call float @dx.op.tertiary.f32(i32 46, float %3762, float %3778, float %3789)  ; FMad(a,b,c)
  %3791 = call float @dx.op.tertiary.f32(i32 46, float %3763, float %3779, float %3790)  ; FMad(a,b,c)
  %3792 = fadd fast float %3791, %3780
  %3793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3794 = extractvalue %dx.types.CBufRet.f32 %3793, 0
  %3795 = extractvalue %dx.types.CBufRet.f32 %3793, 1
  %3796 = extractvalue %dx.types.CBufRet.f32 %3793, 3
  %3797 = fmul fast float %3796, %3784
  %3798 = fmul fast float %3796, %3788
  %3799 = fadd fast float %3797, %3794
  %3800 = fadd fast float %3798, %3795
  %3801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3801, 0
  %3803 = extractvalue %dx.types.CBufRet.f32 %3801, 1
  %3804 = extractvalue %dx.types.CBufRet.f32 %3801, 3
  %3805 = fmul fast float %3804, %3784
  %3806 = fmul fast float %3804, %3788
  %3807 = fadd fast float %3805, %3802
  %3808 = fadd fast float %3806, %3803
  %3809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3810 = extractvalue %dx.types.CBufRet.f32 %3809, 1
  %3811 = fsub fast float %3810, %3792
  %3812 = extractvalue %dx.types.CBufRet.f32 %3809, 2
  %3813 = fmul fast float %3811, %3812
  %3814 = fsub fast float 1.000000e+00, %3813
  %3815 = call float @dx.op.unary.f32(i32 7, float %3814)  ; Saturate(value)
  %3816 = extractvalue %dx.types.CBufRet.f32 %3801, 2
  %3817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3818 = extractvalue %dx.types.CBufRet.f32 %3817, 2
  %3819 = fadd fast float %3818, %3816
  %3820 = fcmp fast ogt float %3819, 0.000000e+00
  br i1 %3820, label %3821, label %3845

; <label>:3821                                    ; preds = %3765
  %3822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3823 = extractvalue %dx.types.CBufRet.f32 %3822, 0
  %3824 = extractvalue %dx.types.CBufRet.f32 %3822, 1
  %3825 = fsub fast float %3807, %3823
  %3826 = fsub fast float %3808, %3824
  %3827 = fcmp fast olt float %3825, 0.000000e+00
  %3828 = fcmp fast olt float %3826, 0.000000e+00
  %3829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3830 = extractvalue %dx.types.CBufRet.f32 %3829, 0
  %3831 = extractvalue %dx.types.CBufRet.f32 %3829, 1
  %3832 = extractvalue %dx.types.CBufRet.f32 %3829, 2
  %3833 = extractvalue %dx.types.CBufRet.f32 %3829, 3
  %3834 = select i1 %3827, float %3830, float %3832
  %3835 = select i1 %3828, float %3831, float %3833
  %3836 = fmul fast float %3834, %3825
  %3837 = fmul fast float %3835, %3826
  %3838 = call float @dx.op.unary.f32(i32 6, float %3836)  ; FAbs(value)
  %3839 = call float @dx.op.unary.f32(i32 6, float %3837)  ; FAbs(value)
  %3840 = extractvalue %dx.types.CBufRet.f32 %3756, 0
  %3841 = call float @dx.op.binary.f32(i32 35, float %3838, float %3839)  ; FMax(a,b)
  %3842 = fsub fast float %3840, %3841
  %3843 = call float @dx.op.unary.f32(i32 7, float %3842)  ; Saturate(value)
  %3844 = fmul fast float %3843, %3815
  br label %3845

; <label>:3845                                    ; preds = %3821, %3765
  %3846 = phi float [ %3844, %3821 ], [ 0.000000e+00, %3765 ]
  %3847 = extractvalue %dx.types.CBufRet.f32 %3793, 2
  %3848 = extractvalue %dx.types.CBufRet.f32 %3817, 1
  %3849 = fadd fast float %3848, %3847
  %3850 = fcmp fast ogt float %3849, 0.000000e+00
  %3851 = extractvalue %dx.types.CBufRet.f32 %3756, 0
  br i1 %3850, label %3852, label %3875

; <label>:3852                                    ; preds = %3845
  %3853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3854 = extractvalue %dx.types.CBufRet.f32 %3853, 0
  %3855 = extractvalue %dx.types.CBufRet.f32 %3853, 1
  %3856 = fsub fast float %3799, %3854
  %3857 = fsub fast float %3800, %3855
  %3858 = fcmp fast olt float %3856, 0.000000e+00
  %3859 = fcmp fast olt float %3857, 0.000000e+00
  %3860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3861 = extractvalue %dx.types.CBufRet.f32 %3860, 0
  %3862 = extractvalue %dx.types.CBufRet.f32 %3860, 1
  %3863 = extractvalue %dx.types.CBufRet.f32 %3860, 2
  %3864 = extractvalue %dx.types.CBufRet.f32 %3860, 3
  %3865 = select i1 %3858, float %3861, float %3863
  %3866 = select i1 %3859, float %3862, float %3864
  %3867 = fmul fast float %3865, %3856
  %3868 = fmul fast float %3866, %3857
  %3869 = call float @dx.op.unary.f32(i32 6, float %3867)  ; FAbs(value)
  %3870 = call float @dx.op.unary.f32(i32 6, float %3868)  ; FAbs(value)
  %3871 = call float @dx.op.binary.f32(i32 35, float %3869, float %3870)  ; FMax(a,b)
  %3872 = fsub fast float %3851, %3871
  %3873 = call float @dx.op.unary.f32(i32 7, float %3872)  ; Saturate(value)
  %3874 = fmul fast float %3873, %3815
  br label %3875

; <label>:3875                                    ; preds = %3852, %3845
  %3876 = phi float [ %3874, %3852 ], [ 0.000000e+00, %3845 ]
  %3877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3878 = extractvalue %dx.types.CBufRet.f32 %3877, 1
  %3879 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3881 = extractvalue %dx.types.CBufRet.f32 %3880, 0
  %3882 = extractvalue %dx.types.CBufRet.f32 %3880, 1
  %3883 = fsub fast float %3784, %3881
  %3884 = fsub fast float %3788, %3882
  %3885 = fcmp fast olt float %3883, 0.000000e+00
  %3886 = fcmp fast olt float %3884, 0.000000e+00
  %3887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3888 = extractvalue %dx.types.CBufRet.f32 %3887, 0
  %3889 = extractvalue %dx.types.CBufRet.f32 %3887, 1
  %3890 = extractvalue %dx.types.CBufRet.f32 %3887, 2
  %3891 = extractvalue %dx.types.CBufRet.f32 %3887, 3
  %3892 = select i1 %3885, float %3888, float %3890
  %3893 = select i1 %3886, float %3889, float %3891
  %3894 = fmul fast float %3892, %3883
  %3895 = fmul fast float %3893, %3884
  %3896 = call float @dx.op.unary.f32(i32 6, float %3894)  ; FAbs(value)
  %3897 = call float @dx.op.unary.f32(i32 6, float %3895)  ; FAbs(value)
  %3898 = call float @dx.op.binary.f32(i32 35, float %3896, float %3897)  ; FMax(a,b)
  %3899 = fsub fast float %3851, %3898
  %3900 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3901 = call float @dx.op.binary.f32(i32 36, float %3900, float %3879)  ; FMin(a,b)
  %3902 = fmul fast float %3901, %3815
  %3903 = fsub fast float %3876, %3902
  %3904 = fsub fast float %3846, %3876
  %3905 = fsub fast float %3904, %3902
  %3906 = call float @dx.op.binary.f32(i32 35, float %3876, float %3846)  ; FMax(a,b)
  %3907 = call float @dx.op.binary.f32(i32 35, float %3902, float %3906)  ; FMax(a,b)
  %3908 = fcmp fast olt float %3907, 1.000000e+00
  br i1 %3908, label %3909, label %4307, !dx.controlflow.hints !84

; <label>:3909                                    ; preds = %3875
  %3910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3911 = extractvalue %dx.types.CBufRet.f32 %3910, 0
  %3912 = fcmp fast une float %3911, 0.000000e+00
  br i1 %3912, label %3913, label %4307, !dx.controlflow.hints !85

; <label>:3913                                    ; preds = %3909
  %3914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3915 = extractvalue %dx.types.CBufRet.f32 %3914, 0
  %3916 = extractvalue %dx.types.CBufRet.f32 %3914, 1
  %3917 = extractvalue %dx.types.CBufRet.f32 %3914, 2
  %3918 = extractvalue %dx.types.CBufRet.f32 %3914, 3
  %3919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3920 = extractvalue %dx.types.CBufRet.f32 %3919, 0
  %3921 = extractvalue %dx.types.CBufRet.f32 %3919, 1
  %3922 = extractvalue %dx.types.CBufRet.f32 %3919, 2
  %3923 = extractvalue %dx.types.CBufRet.f32 %3919, 3
  %3924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3925 = extractvalue %dx.types.CBufRet.f32 %3924, 0
  %3926 = extractvalue %dx.types.CBufRet.f32 %3924, 1
  %3927 = extractvalue %dx.types.CBufRet.f32 %3924, 2
  %3928 = extractvalue %dx.types.CBufRet.f32 %3924, 3
  %3929 = fmul fast float %3915, %3761
  %3930 = call float @dx.op.tertiary.f32(i32 46, float %3762, float %3916, float %3929)  ; FMad(a,b,c)
  %3931 = call float @dx.op.tertiary.f32(i32 46, float %3763, float %3917, float %3930)  ; FMad(a,b,c)
  %3932 = fadd fast float %3931, %3918
  %3933 = fmul fast float %3920, %3761
  %3934 = call float @dx.op.tertiary.f32(i32 46, float %3762, float %3921, float %3933)  ; FMad(a,b,c)
  %3935 = call float @dx.op.tertiary.f32(i32 46, float %3763, float %3922, float %3934)  ; FMad(a,b,c)
  %3936 = fadd fast float %3935, %3923
  %3937 = fmul fast float %3925, %3761
  %3938 = call float @dx.op.tertiary.f32(i32 46, float %3762, float %3926, float %3937)  ; FMad(a,b,c)
  %3939 = call float @dx.op.tertiary.f32(i32 46, float %3763, float %3927, float %3938)  ; FMad(a,b,c)
  %3940 = fadd fast float %3939, %3928
  %3941 = fcmp fast oge float %3932, 1.000000e+00
  %3942 = fcmp fast oge float %3936, 1.000000e+00
  %3943 = or i1 %3941, %3942
  %3944 = fcmp fast olt float %3932, 0.000000e+00
  %3945 = fcmp fast olt float %3936, 0.000000e+00
  %3946 = or i1 %3944, %3945
  %3947 = or i1 %3943, %3946
  br i1 %3947, label %4307, label %3948, !dx.controlflow.hints !86

; <label>:3948                                    ; preds = %3913
  %3949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3950 = extractvalue %dx.types.CBufRet.f32 %3949, 0
  %3951 = extractvalue %dx.types.CBufRet.f32 %3949, 1
  %3952 = extractvalue %dx.types.CBufRet.f32 %3949, 2
  %3953 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3954 = extractvalue %dx.types.CBufRet.i32 %3953, 2
  %3955 = uitofp i32 %3954 to float
  %3956 = extractvalue %dx.types.CBufRet.i32 %3953, 3
  %3957 = uitofp i32 %3956 to float
  %3958 = extractvalue %dx.types.CBufRet.f32 %3949, 3
  %3959 = fmul fast float %3958, 2.000000e+00
  %3960 = fsub fast float %3932, %3950
  %3961 = fsub fast float %3936, %3951
  %3962 = fmul fast float %3959, %3960
  %3963 = fmul fast float %3959, %3961
  %3964 = fdiv fast float 1.000000e+00, %3744
  %3965 = fmul fast float %3963, %3964
  %3966 = call float @dx.op.unary.f32(i32 6, float %3965)  ; FAbs(value)
  %3967 = fmul fast float %3952, %3763
  %3968 = fmul fast float %3967, %3959
  %3969 = call float @dx.op.unary.f32(i32 6, float %3968)  ; FAbs(value)
  %3970 = call float @dx.op.unary.f32(i32 6, float %3962)  ; FAbs(value)
  %3971 = call float @dx.op.binary.f32(i32 35, float %3969, float %3966)  ; FMax(a,b)
  %3972 = call float @dx.op.binary.f32(i32 35, float %3970, float %3971)  ; FMax(a,b)
  %3973 = fmul fast float %3972, 2.000000e+00
  %3974 = call float @dx.op.unary.f32(i32 23, float %3973)  ; Log(value)
  %3975 = call float @dx.op.binary.f32(i32 35, float %3974, float %3955)  ; FMax(a,b)
  %3976 = call float @dx.op.unary.f32(i32 22, float %3975)  ; Frc(value)
  %3977 = fadd fast float %3976, 0xBFEA666660000000
  %3978 = fmul fast float %3977, 8.000000e+00
  %3979 = call float @dx.op.unary.f32(i32 7, float %3978)  ; Saturate(value)
  %3980 = call float @dx.op.unary.f32(i32 27, float %3975)  ; Round_ni(value)
  %3981 = fadd fast float %3980, %3979
  %3982 = call float @dx.op.binary.f32(i32 36, float %3981, float %3957)  ; FMin(a,b)
  %3983 = call float @dx.op.unary.f32(i32 27, float %3982)  ; Round_ni(value)
  %3984 = fsub fast float -0.000000e+00, %3983
  %3985 = call float @dx.op.unary.f32(i32 21, float %3984)  ; Exp(value)
  %3986 = fmul fast float %3985, %3959
  %3987 = fmul fast float %3986, %3932
  %3988 = fmul fast float %3986, %3936
  %3989 = fmul fast float %3987, 2.500000e-01
  %3990 = fmul fast float %3988, 2.500000e-01
  %3991 = fadd fast float %3989, 5.000000e-01
  %3992 = fadd fast float %3990, 5.000000e-01
  %3993 = fsub fast float %3957, %3955
  %3994 = fptoui float %3993 to i32
  %3995 = add i32 %3994, 320
  %3996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %3995)  ; CBufferLoadLegacy(handle,regIndex)
  %3997 = extractvalue %dx.types.CBufRet.f32 %3996, 0
  %3998 = extractvalue %dx.types.CBufRet.f32 %3996, 1
  %3999 = fcmp fast une float %3982, %3957
  %4000 = fsub fast float %3932, %3997
  %4001 = fsub fast float %3936, %3998
  %4002 = call float @dx.op.unary.f32(i32 6, float %4000)  ; FAbs(value)
  %4003 = call float @dx.op.unary.f32(i32 6, float %4001)  ; FAbs(value)
  %4004 = fmul fast float %4002, %3986
  %4005 = fmul fast float %4003, %3986
  %4006 = fcmp fast olt float %4004, 1.000000e+00
  %4007 = fcmp fast olt float %4005, 1.000000e+00
  %4008 = and i1 %4006, %4007
  %4009 = or i1 %3999, %4008
  br i1 %4009, label %4010, label %4307, !dx.controlflow.hints !87

; <label>:4010                                    ; preds = %3948
  %4011 = fmul fast float %3988, 5.000000e-01
  %4012 = fmul fast float %3987, 5.000000e-01
  %4013 = fadd fast float %4011, 5.000000e-01
  %4014 = fadd fast float %4012, 5.000000e-01
  %4015 = sitofp i32 %3954 to float
  %4016 = fsub fast float %3982, %4015
  %4017 = call float @dx.op.unary.f32(i32 27, float %4016)  ; Round_ni(value)
  %4018 = call float @dx.op.unary.f32(i32 22, float %3982)  ; Frc(value)
  %4019 = call float @dx.op.unary.f32(i32 22, float %4014)  ; Frc(value)
  %4020 = call float @dx.op.unary.f32(i32 22, float %4013)  ; Frc(value)
  %4021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %4019, float %4020, float %4017, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4022 = extractvalue %dx.types.ResRet.f32 %4021, 0
  %4023 = extractvalue %dx.types.ResRet.f32 %4021, 1
  %4024 = extractvalue %dx.types.ResRet.f32 %4021, 2
  %4025 = extractvalue %dx.types.ResRet.f32 %4021, 3
  %4026 = fcmp fast ogt float %4018, 0.000000e+00
  br i1 %4026, label %4027, label %4048, !dx.controlflow.hints !88

; <label>:4027                                    ; preds = %4010
  %4028 = fadd fast float %4017, 1.000000e+00
  %4029 = call float @dx.op.unary.f32(i32 22, float %3991)  ; Frc(value)
  %4030 = call float @dx.op.unary.f32(i32 22, float %3992)  ; Frc(value)
  %4031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %4029, float %4030, float %4028, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4032 = extractvalue %dx.types.ResRet.f32 %4031, 0
  %4033 = extractvalue %dx.types.ResRet.f32 %4031, 1
  %4034 = extractvalue %dx.types.ResRet.f32 %4031, 2
  %4035 = extractvalue %dx.types.ResRet.f32 %4031, 3
  %4036 = fsub fast float %4032, %4022
  %4037 = fsub fast float %4033, %4023
  %4038 = fsub fast float %4034, %4024
  %4039 = fsub fast float %4035, %4025
  %4040 = fmul fast float %4036, %4018
  %4041 = fmul fast float %4037, %4018
  %4042 = fmul fast float %4038, %4018
  %4043 = fmul fast float %4039, %4018
  %4044 = fadd fast float %4040, %4022
  %4045 = fadd fast float %4041, %4023
  %4046 = fadd fast float %4042, %4024
  %4047 = fadd fast float %4043, %4025
  br label %4048

; <label>:4048                                    ; preds = %4027, %4010
  %4049 = phi float [ %4044, %4027 ], [ %4022, %4010 ]
  %4050 = phi float [ %4045, %4027 ], [ %4023, %4010 ]
  %4051 = phi float [ %4046, %4027 ], [ %4024, %4010 ]
  %4052 = phi float [ %4047, %4027 ], [ %4025, %4010 ]
  %4053 = fadd fast float %4049, -5.000000e-01
  %4054 = fadd fast float %4051, -5.000000e-01
  %4055 = fmul fast float %4053, 0xBFD5555560000000
  %4056 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4054, float %4055)  ; FMad(a,b,c)
  %4057 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4050, float 0.000000e+00)  ; FMad(a,b,c)
  %4058 = fadd fast float %4057, %4052
  %4059 = fmul fast float %4053, -7.500000e-01
  %4060 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4054, float %4059)  ; FMad(a,b,c)
  %4061 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4050, float 0.000000e+00)  ; FMad(a,b,c)
  %4062 = fadd fast float %4061, %4052
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 0
  %4065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4066 = extractvalue %dx.types.CBufRet.f32 %4065, 0
  %4067 = extractvalue %dx.types.CBufRet.f32 %4065, 1
  %4068 = extractvalue %dx.types.CBufRet.f32 %4065, 2
  %4069 = extractvalue %dx.types.CBufRet.f32 %4065, 3
  %4070 = fsub fast float %4066, %4056
  %4071 = fsub fast float %4067, %4058
  %4072 = fsub fast float %4068, %4060
  %4073 = fsub fast float %4069, %4062
  %4074 = fmul fast float %4070, %4064
  %4075 = fmul fast float %4071, %4064
  %4076 = fmul fast float %4072, %4064
  %4077 = fmul fast float %4073, %4064
  %4078 = fadd fast float %4074, %4056
  %4079 = fadd fast float %4075, %4058
  %4080 = fadd fast float %4076, %4060
  %4081 = fadd fast float %4077, %4062
  %4082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4083 = extractvalue %dx.types.ResRet.i32 %4082, 0
  %4084 = and i32 %4083, 536870911
  %4085 = uitofp i32 %4084 to float
  %4086 = fmul fast float %4085, %3932
  %4087 = fmul fast float %4085, %3936
  %4088 = fptoui float %4086 to i32
  %4089 = fptoui float %4087 to i32
  %4090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.i32 %4090, 0
  %4092 = and i32 %4091, 31
  %4093 = lshr i32 %4088, %4092
  %4094 = lshr i32 %4089, %4092
  %4095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.i32 %4095, 0
  %4097 = and i32 %4096, 31
  %4098 = shl i32 1, %4097
  %4099 = call i32 @dx.op.binary.i32(i32 40, i32 %4098, i32 4)  ; UMin(a,b)
  %4100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4101 = extractvalue %dx.types.ResRet.i32 %4100, 0
  %4102 = extractvalue %dx.types.ResRet.i32 %4100, 1
  %4103 = icmp eq i32 %4099, 0
  br i1 %4103, label %4145, label %4104

; <label>:4104                                    ; preds = %4048
  br label %4105

; <label>:4105                                    ; preds = %4133, %4104
  %4106 = phi i32 [ %4136, %4133 ], [ 0, %4104 ]
  %4107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4108 = extractvalue %dx.types.ResRet.i32 %4107, 0
  %4109 = lshr i32 %4108, 16
  %4110 = and i32 %4109, 31
  %4111 = shl i32 %4094, %4110
  %4112 = add i32 %4111, %4093
  %4113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4114 = extractvalue %dx.types.ResRet.i32 %4113, 0
  %4115 = and i32 %4114, 31
  %4116 = shl i32 %4112, %4115
  %4117 = add i32 %4116, %4106
  %4118 = shl i32 %4117, 2
  %4119 = add i32 %4118, 32
  %4120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4119, i32 undef)  ; BufferLoad(srv,index,wot)
  %4121 = extractvalue %dx.types.ResRet.i32 %4120, 0
  %4122 = icmp slt i32 %4121, 0
  %4123 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 %4106
  %4124 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %4106
  %4125 = bitcast float* %4123 to i32*
  %4126 = bitcast float* %4124 to i32*
  br i1 %4122, label %4127, label %4133

; <label>:4127                                    ; preds = %4105
  %4128 = and i32 %4121, 1073741823
  %4129 = add nuw nsw i32 %4128, 20
  %4130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4129, i32 undef)  ; BufferLoad(srv,index,wot)
  %4131 = extractvalue %dx.types.ResRet.i32 %4130, 0
  %4132 = extractvalue %dx.types.ResRet.i32 %4130, 1
  br label %4133

; <label>:4133                                    ; preds = %4127, %4105
  %4134 = phi i32 [ %4131, %4127 ], [ %4101, %4105 ]
  %4135 = phi i32 [ %4132, %4127 ], [ %4102, %4105 ]
  store i32 %4134, i32* %4125, align 4
  store i32 %4135, i32* %4126, align 4
  %4136 = add nuw i32 %4106, 1
  %4137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4138 = extractvalue %dx.types.CBufRet.i32 %4137, 2
  %4139 = icmp eq i32 %4138, 0
  %4140 = icmp ugt i32 %4121, -1073741825
  %4141 = and i1 %4140, %4139
  %4142 = icmp ult i32 %4136, %4099
  %4143 = and i1 %4141, %4142
  br i1 %4143, label %4105, label %4144

; <label>:4144                                    ; preds = %4133
  br label %4145

; <label>:4145                                    ; preds = %4144, %4048
  %4146 = phi i32 [ 0, %4048 ], [ %4136, %4144 ]
  %4147 = extractvalue %dx.types.CBufRet.f32 %3910, 2
  %4148 = fptoui float %4147 to i32
  %4149 = icmp eq i32 %4148, 0
  br i1 %4149, label %4201, label %4150

; <label>:4150                                    ; preds = %4145
  br label %4151

; <label>:4151                                    ; preds = %4196, %4150
  %4152 = phi i32 [ %4197, %4196 ], [ %4146, %4150 ]
  %4153 = phi i32 [ %4198, %4196 ], [ 0, %4150 ]
  %4154 = lshr i32 %4153, 2
  %4155 = and i32 %4153, 3
  %4156 = add nuw nsw i32 %4154, 83
  %4157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 %4156)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.i32 %4157, 0
  %4159 = extractvalue %dx.types.CBufRet.i32 %4157, 1
  %4160 = extractvalue %dx.types.CBufRet.i32 %4157, 2
  %4161 = extractvalue %dx.types.CBufRet.i32 %4157, 3
  %4162 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 0
  store i32 %4158, i32* %4162, align 4
  %4163 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 1
  store i32 %4159, i32* %4163, align 4
  %4164 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 2
  store i32 %4160, i32* %4164, align 4
  %4165 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 3
  store i32 %4161, i32* %4165, align 4
  %4166 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i32 0, i32 %4155
  %4167 = load i32, i32* %4166, align 4, !tbaa !89, !noalias !93
  %4168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4169 = extractvalue %dx.types.ResRet.i32 %4168, 0
  %4170 = lshr i32 %4169, 16
  %4171 = and i32 %4170, 31
  %4172 = shl i32 %4094, %4171
  %4173 = add i32 %4172, %4093
  %4174 = shl i32 %4173, 2
  %4175 = add i32 %4174, %4167
  %4176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4175, i32 undef)  ; BufferLoad(srv,index,wot)
  %4177 = extractvalue %dx.types.ResRet.i32 %4176, 0
  %4178 = icmp eq i32 %4177, 0
  br i1 %4178, label %4196, label %4179

; <label>:4179                                    ; preds = %4151
  %4180 = icmp slt i32 %4177, 0
  %4181 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 %4152
  %4182 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %4152
  %4183 = bitcast float* %4181 to i32*
  %4184 = bitcast float* %4182 to i32*
  br i1 %4180, label %4185, label %4192

; <label>:4185                                    ; preds = %4179
  %4186 = and i32 %4177, 1073741823
  %4187 = add i32 %4167, 20
  %4188 = add i32 %4187, %4186
  %4189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4188, i32 undef)  ; BufferLoad(srv,index,wot)
  %4190 = extractvalue %dx.types.ResRet.i32 %4189, 0
  %4191 = extractvalue %dx.types.ResRet.i32 %4189, 1
  br label %4192

; <label>:4192                                    ; preds = %4185, %4179
  %4193 = phi i32 [ %4190, %4185 ], [ %4101, %4179 ]
  %4194 = phi i32 [ %4191, %4185 ], [ %4102, %4179 ]
  store i32 %4193, i32* %4183, align 4
  store i32 %4194, i32* %4184, align 4
  %4195 = add i32 %4152, 1
  br label %4196

; <label>:4196                                    ; preds = %4192, %4151
  %4197 = phi i32 [ %4152, %4151 ], [ %4195, %4192 ]
  %4198 = add nuw i32 %4153, 1
  %4199 = icmp eq i32 %4198, %4148
  br i1 %4199, label %4200, label %4151

; <label>:4200                                    ; preds = %4196
  br label %4201

; <label>:4201                                    ; preds = %4200, %4145
  %4202 = phi i32 [ %4146, %4145 ], [ %4197, %4200 ]
  %4203 = icmp eq i32 %4202, 1
  %4204 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 0
  %4205 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 0
  br i1 %4203, label %4206, label %4209

; <label>:4206                                    ; preds = %4201
  %4207 = load float, float* %4204, align 4
  %4208 = load float, float* %4205, align 4
  br label %4236

; <label>:4209                                    ; preds = %4201
  %4210 = load float, float* %4204, align 4
  %4211 = load float, float* %4205, align 4
  %4212 = fdiv fast float 1.000000e+00, %4211
  %4213 = fsub fast float %4210, %4212
  %4214 = icmp ugt i32 %4202, 1
  br i1 %4214, label %4215, label %4231

; <label>:4215                                    ; preds = %4209
  br label %4216

; <label>:4216                                    ; preds = %4216, %4215
  %4217 = phi float [ %4226, %4216 ], [ %4213, %4215 ]
  %4218 = phi float [ %4227, %4216 ], [ %4210, %4215 ]
  %4219 = phi i32 [ %4228, %4216 ], [ 1, %4215 ]
  %4220 = getelementptr [12 x float], [12 x float]* %73, i32 0, i32 %4219
  %4221 = load float, float* %4220, align 4
  %4222 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %4219
  %4223 = load float, float* %4222, align 4
  %4224 = fdiv fast float 1.000000e+00, %4223
  %4225 = fsub fast float %4221, %4224
  %4226 = call float @dx.op.binary.f32(i32 36, float %4217, float %4225)  ; FMin(a,b)
  %4227 = call float @dx.op.binary.f32(i32 35, float %4218, float %4221)  ; FMax(a,b)
  %4228 = add nuw i32 %4219, 1
  %4229 = icmp eq i32 %4228, %4202
  br i1 %4229, label %4230, label %4216

; <label>:4230                                    ; preds = %4216
  br label %4231

; <label>:4231                                    ; preds = %4230, %4209
  %4232 = phi float [ %4213, %4209 ], [ %4226, %4230 ]
  %4233 = phi float [ %4210, %4209 ], [ %4227, %4230 ]
  %4234 = fsub fast float %4233, %4232
  %4235 = fdiv fast float 1.000000e+00, %4234
  br label %4236

; <label>:4236                                    ; preds = %4231, %4206
  %4237 = phi float [ %4207, %4206 ], [ %4233, %4231 ]
  %4238 = phi float [ %4208, %4206 ], [ %4235, %4231 ]
  %4239 = fadd fast float %3940, %4237
  %4240 = fmul fast float %4239, %4238
  %4241 = call float @dx.op.unary.f32(i32 7, float %4240)  ; Saturate(value)
  %4242 = fmul fast float %4241, 2.000000e+00
  %4243 = fsub fast float 1.000000e+00, %4242
  %4244 = fmul fast float %4078, %4078
  %4245 = fsub fast float %4079, %4244
  %4246 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4245)  ; FMax(a,b)
  %4247 = fdiv fast float 1.000000e+00, %4246
  %4248 = fmul fast float %4079, %4078
  %4249 = fsub fast float %4080, %4248
  %4250 = fsub fast float %4243, %4078
  %4251 = fmul fast float %4243, %4243
  %4252 = fsub fast float %4251, %4079
  %4253 = fmul fast float %4247, %4249
  %4254 = fmul fast float %4253, %4250
  %4255 = fsub fast float %4252, %4254
  %4256 = fmul fast float %4079, %4079
  %4257 = fsub fast float %4081, %4256
  %4258 = fmul fast float %4249, %4249
  %4259 = fmul fast float %4258, %4247
  %4260 = fsub fast float %4257, %4259
  %4261 = fdiv fast float %4255, %4260
  %4262 = fmul fast float %4261, %4249
  %4263 = fsub fast float %4250, %4262
  %4264 = fmul fast float %4263, %4247
  %4265 = fmul fast float %4264, %4078
  %4266 = fsub fast float 1.000000e+00, %4265
  %4267 = fmul fast float %4261, %4079
  %4268 = fsub fast float %4266, %4267
  %4269 = fmul fast float %4264, %4264
  %4270 = fmul fast float %4261, 4.000000e+00
  %4271 = fmul fast float %4270, %4268
  %4272 = fsub fast float %4269, %4271
  %4273 = call float @dx.op.unary.f32(i32 24, float %4272)  ; Sqrt(value)
  %4274 = fcmp fast oge float %4264, 0.000000e+00
  %4275 = fsub fast float -0.000000e+00, %4273
  %4276 = select i1 %4274, float %4275, float %4273
  %4277 = fsub fast float %4276, %4264
  %4278 = fdiv fast float %4277, %4261
  %4279 = fdiv fast float %4268, %4277
  %4280 = fmul fast float %4278, 5.000000e-01
  %4281 = fmul fast float %4279, 2.000000e+00
  %4282 = select i1 %4274, float %4280, float %4281
  %4283 = select i1 %4274, float %4281, float %4280
  %4284 = call float @dx.op.binary.f32(i32 35, float %4282, float %4283)  ; FMax(a,b)
  %4285 = call float @dx.op.binary.f32(i32 36, float %4282, float %4283)  ; FMin(a,b)
  %4286 = fcmp fast ogt float %4243, %4284
  %4287 = fsub fast float %4243, %4285
  %4288 = fsub fast float %4243, %4284
  %4289 = fsub fast float %4284, %4285
  %4290 = select i1 %4286, float %4288, float %4289
  %4291 = fmul float %4287, %4290
  %4292 = select i1 %4286, float %4285, float %4243
  %4293 = fcmp fast ogt float %4243, %4285
  %4294 = fmul fast float %4292, %4284
  %4295 = fadd fast float %4292, %4284
  %4296 = fmul fast float %4295, %4078
  %4297 = fadd fast float %4294, %4079
  %4298 = fsub fast float %4297, %4296
  %4299 = fdiv fast float %4298, %4291
  %4300 = select i1 %4293, float %4299, float 0.000000e+00
  %4301 = fsub fast float 1.000000e+00, %4300
  %4302 = select i1 %4286, float %4301, float %4300
  %4303 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4063, 3
  %4305 = fmul fast float %4304, %4303
  %4306 = fsub fast float 1.000000e+00, %4305
  br label %4307

; <label>:4307                                    ; preds = %4236, %3948, %3913, %3909, %3875
  %4308 = phi float [ 1.000000e+00, %3875 ], [ %4306, %4236 ], [ 1.000000e+00, %3913 ], [ 1.000000e+00, %3948 ], [ 1.000000e+00, %3909 ]
  %4309 = fcmp fast ogt float %3905, 0.000000e+00
  br i1 %4309, label %4310, label %4472, !dx.controlflow.hints !102

; <label>:4310                                    ; preds = %4307
  %4311 = fadd fast float %3818, %3792
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 2
  %4314 = extractvalue %dx.types.CBufRet.f32 %4312, 3
  %4315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.f32 %4315, 2
  %4317 = call float @dx.op.binary.f32(i32 35, float %4311, float 0.000000e+00)  ; FMax(a,b)
  %4318 = fadd fast float %4317, 0x3F10000000000000
  %4319 = fcmp fast oeq float %4316, 0.000000e+00
  br i1 %4319, label %4320, label %4387

; <label>:4320                                    ; preds = %4310
  %4321 = extractvalue %dx.types.CBufRet.f32 %4312, 1
  %4322 = extractvalue %dx.types.CBufRet.f32 %4312, 0
  %4323 = fmul fast float %4322, %3807
  %4324 = fmul fast float %4321, %3808
  %4325 = fadd fast float %4323, 5.000000e-01
  %4326 = call float @dx.op.unary.f32(i32 27, float %4325)  ; Round_ni(value)
  %4327 = fadd fast float %4324, 5.000000e-01
  %4328 = call float @dx.op.unary.f32(i32 27, float %4327)  ; Round_ni(value)
  %4329 = fsub fast float %4325, %4326
  %4330 = fsub fast float %4327, %4328
  %4331 = fadd fast float %4326, -5.000000e-01
  %4332 = fadd fast float %4328, -5.000000e-01
  %4333 = fmul fast float %4329, 2.000000e+00
  %4334 = fsub fast float 3.000000e+00, %4333
  %4335 = fadd fast float %4333, 1.000000e+00
  %4336 = fsub fast float 2.000000e+00, %4329
  %4337 = bitcast float %4334 to i32
  %4338 = sub nsw i32 2129859010, %4337
  %4339 = bitcast i32 %4338 to float
  %4340 = fmul fast float %4339, %4336
  %4341 = fadd fast float %4340, -1.000000e+00
  %4342 = bitcast float %4335 to i32
  %4343 = sub nsw i32 2129859010, %4342
  %4344 = bitcast i32 %4343 to float
  %4345 = fmul fast float %4344, %4329
  %4346 = fadd fast float %4345, 1.000000e+00
  %4347 = fmul fast float %4330, 2.000000e+00
  %4348 = fsub fast float 3.000000e+00, %4347
  %4349 = fadd fast float %4347, 1.000000e+00
  %4350 = fsub fast float 2.000000e+00, %4330
  %4351 = bitcast float %4348 to i32
  %4352 = sub nsw i32 2129859010, %4351
  %4353 = bitcast i32 %4352 to float
  %4354 = fmul fast float %4353, %4350
  %4355 = fadd fast float %4354, -1.000000e+00
  %4356 = bitcast float %4349 to i32
  %4357 = sub nsw i32 2129859010, %4356
  %4358 = bitcast i32 %4357 to float
  %4359 = fmul fast float %4358, %4330
  %4360 = fadd fast float %4359, 1.000000e+00
  %4361 = fadd fast float %4341, %4331
  %4362 = fmul fast float %4361, %4313
  %4363 = fadd fast float %4355, %4332
  %4364 = fmul fast float %4363, %4314
  %4365 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %42, float %4362, float %4364, float undef, float undef, i32 0, i32 0, i32 undef, float %4318)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4366 = extractvalue %dx.types.ResRet.f32 %4365, 0
  %4367 = fmul fast float %4366, %4334
  %4368 = fadd fast float %4346, %4331
  %4369 = fmul fast float %4368, %4313
  %4370 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %42, float %4369, float %4364, float undef, float undef, i32 0, i32 0, i32 undef, float %4318)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4371 = extractvalue %dx.types.ResRet.f32 %4370, 0
  %4372 = fmul fast float %4371, %4335
  %4373 = fadd fast float %4360, %4332
  %4374 = fmul fast float %4373, %4314
  %4375 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %42, float %4362, float %4374, float undef, float undef, i32 0, i32 0, i32 undef, float %4318)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4376 = extractvalue %dx.types.ResRet.f32 %4375, 0
  %4377 = fmul fast float %4376, %4334
  %4378 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %42, float %4369, float %4374, float undef, float undef, i32 0, i32 0, i32 undef, float %4318)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4379 = extractvalue %dx.types.ResRet.f32 %4378, 0
  %4380 = fmul fast float %4379, %4335
  %4381 = fadd fast float %4380, %4377
  %4382 = fmul fast float %4381, %4349
  %4383 = fadd fast float %4372, %4367
  %4384 = fmul fast float %4383, %4348
  %4385 = fadd fast float %4384, %4382
  %4386 = fmul fast float %4385, 6.250000e-02
  br label %4472

; <label>:4387                                    ; preds = %4310
  %4388 = fmul fast float %204, 0x401921FB60000000
  %4389 = call float @dx.op.unary.f32(i32 13, float %4388)  ; Sin(value)
  %4390 = call float @dx.op.unary.f32(i32 12, float %4388)  ; Cos(value)
  %4391 = fsub fast float -0.000000e+00, %4389
  br label %4392

; <label>:4392                                    ; preds = %4441, %4387
  %4393 = phi float [ 0.000000e+00, %4387 ], [ %4436, %4441 ]
  %4394 = phi float [ 0.000000e+00, %4387 ], [ %4438, %4441 ]
  %4395 = phi i32 [ 0, %4387 ], [ %4442, %4441 ]
  %4396 = mul i32 %4395, 2
  %4397 = add i32 0, %4396
  %4398 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4397
  %4399 = load float, float* %4398, align 4
  %4400 = mul i32 %4395, 2
  %4401 = add i32 1, %4400
  %4402 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4401
  %4403 = load float, float* %4402, align 4
  %4404 = fmul fast float %4399, %4390
  %4405 = call float @dx.op.tertiary.f32(i32 46, float %4403, float %4391, float %4404)  ; FMad(a,b,c)
  %4406 = fmul fast float %4399, %4389
  %4407 = call float @dx.op.tertiary.f32(i32 46, float %4403, float %4390, float %4406)  ; FMad(a,b,c)
  %4408 = fmul fast float %4405, %4316
  %4409 = fmul fast float %4407, %4316
  %4410 = fadd fast float %4408, %3807
  %4411 = fadd fast float %4409, %3808
  %4412 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %41, float %4410, float %4411, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4413 = extractvalue %dx.types.ResRet.f32 %4412, 0
  %4414 = extractvalue %dx.types.ResRet.f32 %4412, 1
  %4415 = extractvalue %dx.types.ResRet.f32 %4412, 2
  %4416 = extractvalue %dx.types.ResRet.f32 %4412, 3
  %4417 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 0
  store float %4413, float* %4417, align 4
  %4418 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 1
  store float %4414, float* %4418, align 4
  %4419 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 2
  store float %4415, float* %4419, align 4
  %4420 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 3
  store float %4416, float* %4420, align 4
  %4421 = fsub fast float %4413, %4318
  %4422 = fcmp fast olt float %4421, 0.000000e+00
  %4423 = select i1 %4422, float 0.000000e+00, float 1.000000e+00
  %4424 = fadd fast float %4423, %4393
  %4425 = fmul fast float %4423, %4421
  %4426 = fadd fast float %4425, %4394
  br label %4427

; <label>:4427                                    ; preds = %4427, %4392
  %4428 = phi i32 [ 1, %4392 ], [ %4439, %4427 ]
  %4429 = phi float [ %4426, %4392 ], [ %4438, %4427 ]
  %4430 = phi float [ %4424, %4392 ], [ %4436, %4427 ]
  %4431 = getelementptr [4 x float], [4 x float]* %77, i32 0, i32 %4428
  %4432 = load float, float* %4431, align 4, !tbaa !103, !noalias !93
  %4433 = fsub fast float %4432, %4318
  %4434 = fcmp fast olt float %4433, 0.000000e+00
  %4435 = select i1 %4434, float 0.000000e+00, float 1.000000e+00
  %4436 = fadd fast float %4435, %4430
  %4437 = fmul fast float %4435, %4433
  %4438 = fadd fast float %4437, %4429
  %4439 = add nuw nsw i32 %4428, 1
  %4440 = icmp eq i32 %4439, 4
  br i1 %4440, label %4441, label %4427, !llvm.loop !105

; <label>:4441                                    ; preds = %4427
  %4442 = add nuw nsw i32 %4395, 1
  %4443 = icmp eq i32 %4442, 8
  br i1 %4443, label %4444, label %4392, !llvm.loop !106

; <label>:4444                                    ; preds = %4441
  %4445 = fdiv fast float 1.000000e+00, %4436
  %4446 = fmul fast float %4445, %4438
  %4447 = fdiv fast float 1.000000e+00, %4318
  %4448 = fmul fast float %4446, %4447
  %4449 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4450 = call float @dx.op.binary.f32(i32 35, float %4449, float 0.000000e+00)  ; FMax(a,b)
  %4451 = fmul fast float %4436, 3.125000e-02
  %4452 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4453 = fmul fast float %4452, 2.000000e+00
  %4454 = fadd fast float %4453, -1.000000e+00
  %4455 = fcmp fast ogt float %4454, 0.000000e+00
  %4456 = fcmp fast olt float %4454, 0.000000e+00
  %4457 = zext i1 %4455 to i32
  %4458 = zext i1 %4456 to i32
  %4459 = sub nsw i32 %4457, %4458
  %4460 = sitofp i32 %4459 to float
  %4461 = fmul fast float %4460, %4454
  %4462 = fsub fast float 1.000000e+00, %4461
  %4463 = fmul fast float %4462, %4462
  %4464 = fmul fast float %4463, %4462
  %4465 = fsub fast float %4462, %4464
  %4466 = fmul fast float %4465, %4450
  %4467 = fsub fast float 1.000000e+00, %4464
  %4468 = fsub fast float %4467, %4466
  %4469 = fmul fast float %4460, 5.000000e-01
  %4470 = fmul fast float %4469, %4468
  %4471 = fsub fast float 5.000000e-01, %4470
  br label %4472

; <label>:4472                                    ; preds = %4444, %4320, %4307
  %4473 = phi float [ 1.000000e+00, %4307 ], [ %4386, %4320 ], [ %4471, %4444 ]
  %4474 = fcmp fast ogt float %3903, 0.000000e+00
  br i1 %4474, label %4475, label %4639, !dx.controlflow.hints !107

; <label>:4475                                    ; preds = %4472
  %4476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4477 = extractvalue %dx.types.CBufRet.f32 %4476, 1
  %4478 = fadd fast float %4477, %3792
  %4479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4480 = extractvalue %dx.types.CBufRet.f32 %4479, 2
  %4481 = extractvalue %dx.types.CBufRet.f32 %4479, 3
  %4482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4483 = extractvalue %dx.types.CBufRet.f32 %4482, 1
  %4484 = call float @dx.op.binary.f32(i32 35, float %4478, float 0.000000e+00)  ; FMax(a,b)
  %4485 = fadd fast float %4484, 0x3F10000000000000
  %4486 = fcmp fast oeq float %4483, 0.000000e+00
  br i1 %4486, label %4487, label %4554

; <label>:4487                                    ; preds = %4475
  %4488 = extractvalue %dx.types.CBufRet.f32 %4479, 1
  %4489 = extractvalue %dx.types.CBufRet.f32 %4479, 0
  %4490 = fmul fast float %4489, %3799
  %4491 = fmul fast float %4488, %3800
  %4492 = fadd fast float %4490, 5.000000e-01
  %4493 = call float @dx.op.unary.f32(i32 27, float %4492)  ; Round_ni(value)
  %4494 = fadd fast float %4491, 5.000000e-01
  %4495 = call float @dx.op.unary.f32(i32 27, float %4494)  ; Round_ni(value)
  %4496 = fsub fast float %4492, %4493
  %4497 = fsub fast float %4494, %4495
  %4498 = fadd fast float %4493, -5.000000e-01
  %4499 = fadd fast float %4495, -5.000000e-01
  %4500 = fmul fast float %4496, 2.000000e+00
  %4501 = fsub fast float 3.000000e+00, %4500
  %4502 = fadd fast float %4500, 1.000000e+00
  %4503 = fsub fast float 2.000000e+00, %4496
  %4504 = bitcast float %4501 to i32
  %4505 = sub nsw i32 2129859010, %4504
  %4506 = bitcast i32 %4505 to float
  %4507 = fmul fast float %4506, %4503
  %4508 = fadd fast float %4507, -1.000000e+00
  %4509 = bitcast float %4502 to i32
  %4510 = sub nsw i32 2129859010, %4509
  %4511 = bitcast i32 %4510 to float
  %4512 = fmul fast float %4511, %4496
  %4513 = fadd fast float %4512, 1.000000e+00
  %4514 = fmul fast float %4497, 2.000000e+00
  %4515 = fsub fast float 3.000000e+00, %4514
  %4516 = fadd fast float %4514, 1.000000e+00
  %4517 = fsub fast float 2.000000e+00, %4497
  %4518 = bitcast float %4515 to i32
  %4519 = sub nsw i32 2129859010, %4518
  %4520 = bitcast i32 %4519 to float
  %4521 = fmul fast float %4520, %4517
  %4522 = fadd fast float %4521, -1.000000e+00
  %4523 = bitcast float %4516 to i32
  %4524 = sub nsw i32 2129859010, %4523
  %4525 = bitcast i32 %4524 to float
  %4526 = fmul fast float %4525, %4497
  %4527 = fadd fast float %4526, 1.000000e+00
  %4528 = fadd fast float %4508, %4498
  %4529 = fmul fast float %4528, %4480
  %4530 = fadd fast float %4522, %4499
  %4531 = fmul fast float %4530, %4481
  %4532 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %42, float %4529, float %4531, float undef, float undef, i32 0, i32 0, i32 undef, float %4485)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4533 = extractvalue %dx.types.ResRet.f32 %4532, 0
  %4534 = fmul fast float %4533, %4501
  %4535 = fadd fast float %4513, %4498
  %4536 = fmul fast float %4535, %4480
  %4537 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %42, float %4536, float %4531, float undef, float undef, i32 0, i32 0, i32 undef, float %4485)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4538 = extractvalue %dx.types.ResRet.f32 %4537, 0
  %4539 = fmul fast float %4538, %4502
  %4540 = fadd fast float %4527, %4499
  %4541 = fmul fast float %4540, %4481
  %4542 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %42, float %4529, float %4541, float undef, float undef, i32 0, i32 0, i32 undef, float %4485)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4543 = extractvalue %dx.types.ResRet.f32 %4542, 0
  %4544 = fmul fast float %4543, %4501
  %4545 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %42, float %4536, float %4541, float undef, float undef, i32 0, i32 0, i32 undef, float %4485)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4546 = extractvalue %dx.types.ResRet.f32 %4545, 0
  %4547 = fmul fast float %4546, %4502
  %4548 = fadd fast float %4547, %4544
  %4549 = fmul fast float %4548, %4516
  %4550 = fadd fast float %4539, %4534
  %4551 = fmul fast float %4550, %4515
  %4552 = fadd fast float %4551, %4549
  %4553 = fmul fast float %4552, 6.250000e-02
  br label %4639

; <label>:4554                                    ; preds = %4475
  %4555 = fmul fast float %204, 0x401921FB60000000
  %4556 = call float @dx.op.unary.f32(i32 13, float %4555)  ; Sin(value)
  %4557 = call float @dx.op.unary.f32(i32 12, float %4555)  ; Cos(value)
  %4558 = fsub fast float -0.000000e+00, %4556
  br label %4559

; <label>:4559                                    ; preds = %4608, %4554
  %4560 = phi float [ 0.000000e+00, %4554 ], [ %4603, %4608 ]
  %4561 = phi float [ 0.000000e+00, %4554 ], [ %4605, %4608 ]
  %4562 = phi i32 [ 0, %4554 ], [ %4609, %4608 ]
  %4563 = mul i32 %4562, 2
  %4564 = add i32 0, %4563
  %4565 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4564
  %4566 = load float, float* %4565, align 4
  %4567 = mul i32 %4562, 2
  %4568 = add i32 1, %4567
  %4569 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4568
  %4570 = load float, float* %4569, align 4
  %4571 = fmul fast float %4566, %4557
  %4572 = call float @dx.op.tertiary.f32(i32 46, float %4570, float %4558, float %4571)  ; FMad(a,b,c)
  %4573 = fmul fast float %4566, %4556
  %4574 = call float @dx.op.tertiary.f32(i32 46, float %4570, float %4557, float %4573)  ; FMad(a,b,c)
  %4575 = fmul fast float %4572, %4483
  %4576 = fmul fast float %4574, %4483
  %4577 = fadd fast float %4575, %3799
  %4578 = fadd fast float %4576, %3800
  %4579 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %41, float %4577, float %4578, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4580 = extractvalue %dx.types.ResRet.f32 %4579, 0
  %4581 = extractvalue %dx.types.ResRet.f32 %4579, 1
  %4582 = extractvalue %dx.types.ResRet.f32 %4579, 2
  %4583 = extractvalue %dx.types.ResRet.f32 %4579, 3
  %4584 = getelementptr inbounds [4 x float], [4 x float]* %76, i32 0, i32 0
  store float %4580, float* %4584, align 4
  %4585 = getelementptr inbounds [4 x float], [4 x float]* %76, i32 0, i32 1
  store float %4581, float* %4585, align 4
  %4586 = getelementptr inbounds [4 x float], [4 x float]* %76, i32 0, i32 2
  store float %4582, float* %4586, align 4
  %4587 = getelementptr inbounds [4 x float], [4 x float]* %76, i32 0, i32 3
  store float %4583, float* %4587, align 4
  %4588 = fsub fast float %4580, %4485
  %4589 = fcmp fast olt float %4588, 0.000000e+00
  %4590 = select i1 %4589, float 0.000000e+00, float 1.000000e+00
  %4591 = fadd fast float %4590, %4560
  %4592 = fmul fast float %4590, %4588
  %4593 = fadd fast float %4592, %4561
  br label %4594

; <label>:4594                                    ; preds = %4594, %4559
  %4595 = phi i32 [ 1, %4559 ], [ %4606, %4594 ]
  %4596 = phi float [ %4593, %4559 ], [ %4605, %4594 ]
  %4597 = phi float [ %4591, %4559 ], [ %4603, %4594 ]
  %4598 = getelementptr [4 x float], [4 x float]* %76, i32 0, i32 %4595
  %4599 = load float, float* %4598, align 4, !tbaa !103, !noalias !93
  %4600 = fsub fast float %4599, %4485
  %4601 = fcmp fast olt float %4600, 0.000000e+00
  %4602 = select i1 %4601, float 0.000000e+00, float 1.000000e+00
  %4603 = fadd fast float %4602, %4597
  %4604 = fmul fast float %4602, %4600
  %4605 = fadd fast float %4604, %4596
  %4606 = add nuw nsw i32 %4595, 1
  %4607 = icmp eq i32 %4606, 4
  br i1 %4607, label %4608, label %4594, !llvm.loop !105

; <label>:4608                                    ; preds = %4594
  %4609 = add nuw nsw i32 %4562, 1
  %4610 = icmp eq i32 %4609, 8
  br i1 %4610, label %4611, label %4559, !llvm.loop !106

; <label>:4611                                    ; preds = %4608
  %4612 = fdiv fast float 1.000000e+00, %4603
  %4613 = fmul fast float %4612, %4605
  %4614 = fdiv fast float 1.000000e+00, %4485
  %4615 = fmul fast float %4613, %4614
  %4616 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4617 = call float @dx.op.binary.f32(i32 35, float %4616, float 0.000000e+00)  ; FMax(a,b)
  %4618 = fmul fast float %4603, 3.125000e-02
  %4619 = call float @dx.op.unary.f32(i32 7, float %4618)  ; Saturate(value)
  %4620 = fmul fast float %4619, 2.000000e+00
  %4621 = fadd fast float %4620, -1.000000e+00
  %4622 = fcmp fast ogt float %4621, 0.000000e+00
  %4623 = fcmp fast olt float %4621, 0.000000e+00
  %4624 = zext i1 %4622 to i32
  %4625 = zext i1 %4623 to i32
  %4626 = sub nsw i32 %4624, %4625
  %4627 = sitofp i32 %4626 to float
  %4628 = fmul fast float %4627, %4621
  %4629 = fsub fast float 1.000000e+00, %4628
  %4630 = fmul fast float %4629, %4629
  %4631 = fmul fast float %4630, %4629
  %4632 = fsub fast float %4629, %4631
  %4633 = fmul fast float %4632, %4617
  %4634 = fsub fast float 1.000000e+00, %4631
  %4635 = fsub fast float %4634, %4633
  %4636 = fmul fast float %4627, 5.000000e-01
  %4637 = fmul fast float %4636, %4635
  %4638 = fsub fast float 5.000000e-01, %4637
  br label %4639

; <label>:4639                                    ; preds = %4611, %4487, %4472
  %4640 = phi float [ 1.000000e+00, %4472 ], [ %4553, %4487 ], [ %4638, %4611 ]
  %4641 = fcmp fast ogt float %3902, 0.000000e+00
  br i1 %4641, label %4642, label %4806, !dx.controlflow.hints !108

; <label>:4642                                    ; preds = %4639
  %4643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4643, 0
  %4645 = fadd fast float %4644, %3792
  %4646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4646, 2
  %4648 = extractvalue %dx.types.CBufRet.f32 %4646, 3
  %4649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4650 = extractvalue %dx.types.CBufRet.f32 %4649, 0
  %4651 = call float @dx.op.binary.f32(i32 35, float %4645, float 0.000000e+00)  ; FMax(a,b)
  %4652 = fadd fast float %4651, 0x3F10000000000000
  %4653 = fcmp fast oeq float %4650, 0.000000e+00
  br i1 %4653, label %4654, label %4721

; <label>:4654                                    ; preds = %4642
  %4655 = extractvalue %dx.types.CBufRet.f32 %4646, 1
  %4656 = extractvalue %dx.types.CBufRet.f32 %4646, 0
  %4657 = fmul fast float %4656, %3784
  %4658 = fmul fast float %4655, %3788
  %4659 = fadd fast float %4657, 5.000000e-01
  %4660 = call float @dx.op.unary.f32(i32 27, float %4659)  ; Round_ni(value)
  %4661 = fadd fast float %4658, 5.000000e-01
  %4662 = call float @dx.op.unary.f32(i32 27, float %4661)  ; Round_ni(value)
  %4663 = fsub fast float %4659, %4660
  %4664 = fsub fast float %4661, %4662
  %4665 = fadd fast float %4660, -5.000000e-01
  %4666 = fadd fast float %4662, -5.000000e-01
  %4667 = fmul fast float %4663, 2.000000e+00
  %4668 = fsub fast float 3.000000e+00, %4667
  %4669 = fadd fast float %4667, 1.000000e+00
  %4670 = fsub fast float 2.000000e+00, %4663
  %4671 = bitcast float %4668 to i32
  %4672 = sub nsw i32 2129859010, %4671
  %4673 = bitcast i32 %4672 to float
  %4674 = fmul fast float %4673, %4670
  %4675 = fadd fast float %4674, -1.000000e+00
  %4676 = bitcast float %4669 to i32
  %4677 = sub nsw i32 2129859010, %4676
  %4678 = bitcast i32 %4677 to float
  %4679 = fmul fast float %4678, %4663
  %4680 = fadd fast float %4679, 1.000000e+00
  %4681 = fmul fast float %4664, 2.000000e+00
  %4682 = fsub fast float 3.000000e+00, %4681
  %4683 = fadd fast float %4681, 1.000000e+00
  %4684 = fsub fast float 2.000000e+00, %4664
  %4685 = bitcast float %4682 to i32
  %4686 = sub nsw i32 2129859010, %4685
  %4687 = bitcast i32 %4686 to float
  %4688 = fmul fast float %4687, %4684
  %4689 = fadd fast float %4688, -1.000000e+00
  %4690 = bitcast float %4683 to i32
  %4691 = sub nsw i32 2129859010, %4690
  %4692 = bitcast i32 %4691 to float
  %4693 = fmul fast float %4692, %4664
  %4694 = fadd fast float %4693, 1.000000e+00
  %4695 = fadd fast float %4675, %4665
  %4696 = fmul fast float %4695, %4647
  %4697 = fadd fast float %4689, %4666
  %4698 = fmul fast float %4697, %4648
  %4699 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %42, float %4696, float %4698, float undef, float undef, i32 0, i32 0, i32 undef, float %4652)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4700 = extractvalue %dx.types.ResRet.f32 %4699, 0
  %4701 = fmul fast float %4700, %4668
  %4702 = fadd fast float %4680, %4665
  %4703 = fmul fast float %4702, %4647
  %4704 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %42, float %4703, float %4698, float undef, float undef, i32 0, i32 0, i32 undef, float %4652)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4705 = extractvalue %dx.types.ResRet.f32 %4704, 0
  %4706 = fmul fast float %4705, %4669
  %4707 = fadd fast float %4694, %4666
  %4708 = fmul fast float %4707, %4648
  %4709 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %42, float %4696, float %4708, float undef, float undef, i32 0, i32 0, i32 undef, float %4652)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4710 = extractvalue %dx.types.ResRet.f32 %4709, 0
  %4711 = fmul fast float %4710, %4668
  %4712 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %42, float %4703, float %4708, float undef, float undef, i32 0, i32 0, i32 undef, float %4652)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4713 = extractvalue %dx.types.ResRet.f32 %4712, 0
  %4714 = fmul fast float %4713, %4669
  %4715 = fadd fast float %4714, %4711
  %4716 = fmul fast float %4715, %4683
  %4717 = fadd fast float %4706, %4701
  %4718 = fmul fast float %4717, %4682
  %4719 = fadd fast float %4718, %4716
  %4720 = fmul fast float %4719, 6.250000e-02
  br label %4806

; <label>:4721                                    ; preds = %4642
  %4722 = fmul fast float %204, 0x401921FB60000000
  %4723 = call float @dx.op.unary.f32(i32 13, float %4722)  ; Sin(value)
  %4724 = call float @dx.op.unary.f32(i32 12, float %4722)  ; Cos(value)
  %4725 = fsub fast float -0.000000e+00, %4723
  br label %4726

; <label>:4726                                    ; preds = %4775, %4721
  %4727 = phi float [ 0.000000e+00, %4721 ], [ %4770, %4775 ]
  %4728 = phi float [ 0.000000e+00, %4721 ], [ %4772, %4775 ]
  %4729 = phi i32 [ 0, %4721 ], [ %4776, %4775 ]
  %4730 = mul i32 %4729, 2
  %4731 = add i32 0, %4730
  %4732 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4731
  %4733 = load float, float* %4732, align 4
  %4734 = mul i32 %4729, 2
  %4735 = add i32 1, %4734
  %4736 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4735
  %4737 = load float, float* %4736, align 4
  %4738 = fmul fast float %4733, %4724
  %4739 = call float @dx.op.tertiary.f32(i32 46, float %4737, float %4725, float %4738)  ; FMad(a,b,c)
  %4740 = fmul fast float %4733, %4723
  %4741 = call float @dx.op.tertiary.f32(i32 46, float %4737, float %4724, float %4740)  ; FMad(a,b,c)
  %4742 = fmul fast float %4739, %4650
  %4743 = fmul fast float %4741, %4650
  %4744 = fadd fast float %4742, %3784
  %4745 = fadd fast float %4743, %3788
  %4746 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %41, float %4744, float %4745, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4747 = extractvalue %dx.types.ResRet.f32 %4746, 0
  %4748 = extractvalue %dx.types.ResRet.f32 %4746, 1
  %4749 = extractvalue %dx.types.ResRet.f32 %4746, 2
  %4750 = extractvalue %dx.types.ResRet.f32 %4746, 3
  %4751 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 0
  store float %4747, float* %4751, align 4
  %4752 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 1
  store float %4748, float* %4752, align 4
  %4753 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 2
  store float %4749, float* %4753, align 4
  %4754 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 3
  store float %4750, float* %4754, align 4
  %4755 = fsub fast float %4747, %4652
  %4756 = fcmp fast olt float %4755, 0.000000e+00
  %4757 = select i1 %4756, float 0.000000e+00, float 1.000000e+00
  %4758 = fadd fast float %4757, %4727
  %4759 = fmul fast float %4757, %4755
  %4760 = fadd fast float %4759, %4728
  br label %4761

; <label>:4761                                    ; preds = %4761, %4726
  %4762 = phi i32 [ 1, %4726 ], [ %4773, %4761 ]
  %4763 = phi float [ %4760, %4726 ], [ %4772, %4761 ]
  %4764 = phi float [ %4758, %4726 ], [ %4770, %4761 ]
  %4765 = getelementptr [4 x float], [4 x float]* %75, i32 0, i32 %4762
  %4766 = load float, float* %4765, align 4, !tbaa !103, !noalias !93
  %4767 = fsub fast float %4766, %4652
  %4768 = fcmp fast olt float %4767, 0.000000e+00
  %4769 = select i1 %4768, float 0.000000e+00, float 1.000000e+00
  %4770 = fadd fast float %4769, %4764
  %4771 = fmul fast float %4769, %4767
  %4772 = fadd fast float %4771, %4763
  %4773 = add nuw nsw i32 %4762, 1
  %4774 = icmp eq i32 %4773, 4
  br i1 %4774, label %4775, label %4761, !llvm.loop !105

; <label>:4775                                    ; preds = %4761
  %4776 = add nuw nsw i32 %4729, 1
  %4777 = icmp eq i32 %4776, 8
  br i1 %4777, label %4778, label %4726, !llvm.loop !106

; <label>:4778                                    ; preds = %4775
  %4779 = fdiv fast float 1.000000e+00, %4770
  %4780 = fmul fast float %4779, %4772
  %4781 = fdiv fast float 1.000000e+00, %4652
  %4782 = fmul fast float %4780, %4781
  %4783 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4784 = call float @dx.op.binary.f32(i32 35, float %4783, float 0.000000e+00)  ; FMax(a,b)
  %4785 = fmul fast float %4770, 3.125000e-02
  %4786 = call float @dx.op.unary.f32(i32 7, float %4785)  ; Saturate(value)
  %4787 = fmul fast float %4786, 2.000000e+00
  %4788 = fadd fast float %4787, -1.000000e+00
  %4789 = fcmp fast ogt float %4788, 0.000000e+00
  %4790 = fcmp fast olt float %4788, 0.000000e+00
  %4791 = zext i1 %4789 to i32
  %4792 = zext i1 %4790 to i32
  %4793 = sub nsw i32 %4791, %4792
  %4794 = sitofp i32 %4793 to float
  %4795 = fmul fast float %4794, %4788
  %4796 = fsub fast float 1.000000e+00, %4795
  %4797 = fmul fast float %4796, %4796
  %4798 = fmul fast float %4797, %4796
  %4799 = fsub fast float %4796, %4798
  %4800 = fmul fast float %4799, %4784
  %4801 = fsub fast float 1.000000e+00, %4798
  %4802 = fsub fast float %4801, %4800
  %4803 = fmul fast float %4794, 5.000000e-01
  %4804 = fmul fast float %4803, %4802
  %4805 = fsub fast float 5.000000e-01, %4804
  br label %4806

; <label>:4806                                    ; preds = %4778, %4654, %4639
  %4807 = phi float [ 1.000000e+00, %4639 ], [ %4720, %4654 ], [ %4805, %4778 ]
  %4808 = fsub fast float %4473, %4308
  %4809 = fmul fast float %4808, %3846
  %4810 = fadd fast float %4809, %4308
  %4811 = fsub fast float %4640, %4810
  %4812 = fmul fast float %4811, %3876
  %4813 = fadd fast float %4812, %4810
  %4814 = fsub fast float %4807, %4813
  %4815 = fmul fast float %4814, %3902
  %4816 = fadd fast float %4815, %4813
  %4817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4818 = extractvalue %dx.types.CBufRet.f32 %4817, 2
  %4819 = fcmp fast ogt float %4818, 0.000000e+00
  br i1 %4819, label %4820, label %4860, !dx.controlflow.hints !109

; <label>:4820                                    ; preds = %4806
  %4821 = fcmp fast ugt float %4818, 0.000000e+00
  br i1 %4821, label %4822, label %4857

; <label>:4822                                    ; preds = %4820
  %4823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4824 = extractvalue %dx.types.CBufRet.f32 %4823, 0
  %4825 = extractvalue %dx.types.CBufRet.f32 %4823, 1
  %4826 = extractvalue %dx.types.CBufRet.f32 %4823, 2
  %4827 = extractvalue %dx.types.CBufRet.f32 %4823, 3
  %4828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4829 = extractvalue %dx.types.CBufRet.f32 %4828, 0
  %4830 = extractvalue %dx.types.CBufRet.f32 %4828, 1
  %4831 = extractvalue %dx.types.CBufRet.f32 %4828, 2
  %4832 = extractvalue %dx.types.CBufRet.f32 %4828, 3
  %4833 = extractvalue %dx.types.CBufRet.f32 %4817, 0
  %4834 = extractvalue %dx.types.CBufRet.f32 %4817, 1
  %4835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.f32 %4835, 0
  %4837 = extractvalue %dx.types.CBufRet.f32 %4835, 1
  %4838 = extractvalue %dx.types.CBufRet.f32 %4835, 2
  %4839 = fadd fast float %4836, %3761
  %4840 = fadd fast float %4837, %3762
  %4841 = fadd fast float %4838, %3763
  %4842 = fmul fast float %4839, %4824
  %4843 = call float @dx.op.tertiary.f32(i32 46, float %4825, float %4840, float %4842)  ; FMad(a,b,c)
  %4844 = call float @dx.op.tertiary.f32(i32 46, float %4826, float %4841, float %4843)  ; FMad(a,b,c)
  %4845 = fadd fast float %4844, %4827
  %4846 = fmul fast float %4839, %4829
  %4847 = call float @dx.op.tertiary.f32(i32 46, float %4830, float %4840, float %4846)  ; FMad(a,b,c)
  %4848 = call float @dx.op.tertiary.f32(i32 46, float %4831, float %4841, float %4847)  ; FMad(a,b,c)
  %4849 = fadd fast float %4848, %4832
  %4850 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %37, float %4845, float %4849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4851 = extractvalue %dx.types.ResRet.f32 %4850, 0
  %4852 = fmul fast float %4851, %4834
  %4853 = fadd fast float %4852, %4833
  %4854 = call float @dx.op.unary.f32(i32 7, float %4853)  ; Saturate(value)
  %4855 = fmul fast float %4854, %4818
  %4856 = fsub fast float 1.000000e+00, %4855
  br label %4857

; <label>:4857                                    ; preds = %4822, %4820
  %4858 = phi float [ %4856, %4822 ], [ 1.000000e+00, %4820 ]
  %4859 = fmul fast float %4858, %4816
  br label %4860

; <label>:4860                                    ; preds = %4857, %4806, %3741
  %4861 = phi float [ 1.000000e+00, %3741 ], [ %4859, %4857 ], [ %4816, %4806 ]
  %4862 = call float @dx.op.binary.f32(i32 36, float %4861, float %4861)  ; FMin(a,b)
  %4863 = call float @dx.op.binary.f32(i32 36, float %4861, float %4862)  ; FMin(a,b)
  %4864 = fcmp fast ogt float %4863, 0.000000e+00
  br i1 %4864, label %4865, label %5031, !dx.controlflow.hints !110

; <label>:4865                                    ; preds = %4860
  %4866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4867 = extractvalue %dx.types.CBufRet.f32 %4866, 0
  %4868 = extractvalue %dx.types.CBufRet.f32 %4866, 1
  %4869 = extractvalue %dx.types.CBufRet.f32 %4866, 2
  %4870 = extractvalue %dx.types.CBufRet.f32 %4866, 3
  %4871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4872 = extractvalue %dx.types.CBufRet.f32 %4871, 0
  %4873 = extractvalue %dx.types.CBufRet.f32 %4871, 1
  %4874 = extractvalue %dx.types.CBufRet.f32 %4871, 2
  %4875 = extractvalue %dx.types.CBufRet.f32 %4871, 3
  %4876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4877 = extractvalue %dx.types.CBufRet.f32 %4876, 0
  %4878 = extractvalue %dx.types.CBufRet.f32 %4876, 1
  %4879 = extractvalue %dx.types.CBufRet.f32 %4876, 2
  %4880 = extractvalue %dx.types.CBufRet.f32 %4876, 3
  %4881 = fmul fast float %4867, %3761
  %4882 = call float @dx.op.tertiary.f32(i32 46, float %3762, float %4868, float %4881)  ; FMad(a,b,c)
  %4883 = call float @dx.op.tertiary.f32(i32 46, float %3763, float %4869, float %4882)  ; FMad(a,b,c)
  %4884 = fadd fast float %4883, %4870
  %4885 = fmul fast float %4872, %3761
  %4886 = call float @dx.op.tertiary.f32(i32 46, float %3762, float %4873, float %4885)  ; FMad(a,b,c)
  %4887 = call float @dx.op.tertiary.f32(i32 46, float %3763, float %4874, float %4886)  ; FMad(a,b,c)
  %4888 = fadd fast float %4887, %4875
  %4889 = fmul fast float %4877, %3761
  %4890 = call float @dx.op.tertiary.f32(i32 46, float %3762, float %4878, float %4889)  ; FMad(a,b,c)
  %4891 = call float @dx.op.tertiary.f32(i32 46, float %3763, float %4879, float %4890)  ; FMad(a,b,c)
  %4892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4893 = extractvalue %dx.types.CBufRet.f32 %4892, 0
  %4894 = extractvalue %dx.types.CBufRet.f32 %4892, 1
  %4895 = extractvalue %dx.types.CBufRet.f32 %4892, 3
  %4896 = fmul fast float %4895, %4884
  %4897 = fmul fast float %4895, %4888
  %4898 = fadd fast float %4896, %4893
  %4899 = fadd fast float %4897, %4894
  %4900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4901 = extractvalue %dx.types.CBufRet.f32 %4900, 0
  %4902 = extractvalue %dx.types.CBufRet.f32 %4900, 1
  %4903 = fsub fast float %4898, %4901
  %4904 = fsub fast float %4899, %4902
  %4905 = fcmp fast olt float %4903, 0.000000e+00
  %4906 = fcmp fast olt float %4904, 0.000000e+00
  %4907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4908 = extractvalue %dx.types.CBufRet.f32 %4907, 0
  %4909 = extractvalue %dx.types.CBufRet.f32 %4907, 1
  %4910 = extractvalue %dx.types.CBufRet.f32 %4907, 2
  %4911 = extractvalue %dx.types.CBufRet.f32 %4907, 3
  %4912 = select i1 %4905, float %4908, float %4910
  %4913 = select i1 %4906, float %4909, float %4911
  %4914 = fmul fast float %4912, %4903
  %4915 = fmul fast float %4913, %4904
  %4916 = call float @dx.op.unary.f32(i32 6, float %4914)  ; FAbs(value)
  %4917 = call float @dx.op.unary.f32(i32 6, float %4915)  ; FAbs(value)
  %4918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4919 = extractvalue %dx.types.CBufRet.f32 %4918, 0
  %4920 = call float @dx.op.binary.f32(i32 35, float %4916, float %4917)  ; FMax(a,b)
  %4921 = fsub fast float %4919, %4920
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4923 = fcmp fast ogt float %4922, 0.000000e+00
  br i1 %4923, label %4924, label %4965, !dx.controlflow.hints !111

; <label>:4924                                    ; preds = %4865
  %4925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %40, float %4898, float %4899, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4926 = extractvalue %dx.types.ResRet.f32 %4925, 1
  %4927 = fcmp fast ogt float %4926, 0.000000e+00
  br i1 %4927, label %4928, label %4960

; <label>:4928                                    ; preds = %4924
  %4929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %4898, float %4899, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4930 = extractvalue %dx.types.ResRet.f32 %4929, 0
  %4931 = extractvalue %dx.types.ResRet.f32 %4929, 1
  %4932 = extractvalue %dx.types.ResRet.f32 %4929, 2
  %4933 = extractvalue %dx.types.ResRet.f32 %4929, 3
  %4934 = fsub fast float 1.000000e+00, %4880
  %4935 = fsub fast float %4934, %4891
  %4936 = fmul fast float %4935, 0x400921FB60000000
  %4937 = fadd fast float %4936, 0x3FF921FB60000000
  %4938 = call float @dx.op.unary.f32(i32 13, float %4937)  ; Sin(value)
  %4939 = fadd fast float %4938, -1.000000e+00
  %4940 = fmul fast float %4939, 0x3FD45F3060000000
  %4941 = fmul fast float %4935, 0x401921FB60000000
  %4942 = fadd fast float %4941, 0x400921FB60000000
  %4943 = call float @dx.op.unary.f32(i32 13, float %4942)  ; Sin(value)
  %4944 = fadd fast float %4943, 0x3E7777A5C0000000
  %4945 = fmul fast float %4944, 0x3FC45F3060000000
  %4946 = fmul fast float %4935, 0x4022D97C80000000
  %4947 = fadd fast float %4946, 0x4012D97C80000000
  %4948 = call float @dx.op.unary.f32(i32 13, float %4947)  ; Sin(value)
  %4949 = fadd fast float %4948, 1.000000e+00
  %4950 = fmul fast float %4949, 0x3FBB2995E0000000
  %4951 = fmul fast float %4935, 0x402921FB60000000
  %4952 = fadd fast float %4951, 0x401921FB60000000
  %4953 = call float @dx.op.unary.f32(i32 13, float %4952)  ; Sin(value)
  %4954 = fadd fast float %4953, 0xBE8777A5C0000000
  %4955 = fmul fast float %4954, 0x3FB45F3060000000
  %4956 = call float @dx.op.dot4.f32(i32 56, float %4930, float %4931, float %4932, float %4933, float %4940, float %4945, float %4950, float %4955)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4957 = fmul fast float %4956, 0xBFF7154760000000
  %4958 = call float @dx.op.unary.f32(i32 21, float %4957)  ; Exp(value)
  %4959 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  br label %4960

; <label>:4960                                    ; preds = %4928, %4924
  %4961 = phi float [ %4959, %4928 ], [ 1.000000e+00, %4924 ]
  %4962 = fadd fast float %4961, -1.000000e+00
  %4963 = fmul fast float %4962, %4922
  %4964 = fadd fast float %4963, 1.000000e+00
  br label %4965

; <label>:4965                                    ; preds = %4960, %4865
  %4966 = phi float [ %4964, %4960 ], [ 1.000000e+00, %4865 ]
  %4967 = fmul fast float %4966, %4861
  %4968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4969 = extractvalue %dx.types.CBufRet.f32 %4968, 0
  %4970 = extractvalue %dx.types.CBufRet.f32 %4968, 1
  %4971 = extractvalue %dx.types.CBufRet.f32 %4968, 2
  %4972 = fadd fast float %4969, %132
  %4973 = fadd fast float %4970, %133
  %4974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4975 = extractvalue %dx.types.CBufRet.f32 %4974, 1
  %4976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4977 = extractvalue %dx.types.CBufRet.f32 %4976, 0
  %4978 = extractvalue %dx.types.CBufRet.f32 %4976, 1
  %4979 = extractvalue %dx.types.CBufRet.f32 %4976, 2
  %4980 = fsub fast float -0.000000e+00, %4972
  %4981 = fsub fast float -0.000000e+00, %4973
  %4982 = fsub fast float -0.000000e+00, %134
  %4983 = fsub fast float %4982, %4971
  %4984 = fadd fast float %4983, %4975
  %4985 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4980, float %4981, float %4984)  ; Dot3(ax,ay,az,bx,by,bz)
  %4986 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4977, float %4978, float %4979)  ; Dot3(ax,ay,az,bx,by,bz)
  %4987 = fdiv fast float 1.000000e+00, %4986
  %4988 = fmul fast float %4987, %4985
  %4989 = fmul fast float %4977, %4988
  %4990 = fmul fast float %4978, %4988
  %4991 = fadd fast float %4989, %4972
  %4992 = fadd fast float %4990, %4973
  %4993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4994 = extractvalue %dx.types.CBufRet.f32 %4993, 0
  %4995 = extractvalue %dx.types.CBufRet.f32 %4993, 1
  %4996 = fsub fast float %4991, %4994
  %4997 = fsub fast float %4992, %4995
  %4998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4999 = extractvalue %dx.types.CBufRet.f32 %4998, 2
  %5000 = extractvalue %dx.types.CBufRet.f32 %4998, 3
  %5001 = fmul fast float %4996, %4999
  %5002 = fmul fast float %4997, %5000
  %5003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5004 = extractvalue %dx.types.CBufRet.i32 %5003, 3
  %5005 = icmp eq i32 %5004, 0
  br i1 %5005, label %5011, label %5006

; <label>:5006                                    ; preds = %4965
  %5007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %39, float %5001, float %5002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5008 = extractvalue %dx.types.ResRet.f32 %5007, 0
  %5009 = extractvalue %dx.types.ResRet.f32 %5007, 1
  %5010 = extractvalue %dx.types.ResRet.f32 %5007, 2
  br label %5016

; <label>:5011                                    ; preds = %4965
  %5012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %40, float %5001, float %5002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5013 = extractvalue %dx.types.ResRet.f32 %5012, 0
  %5014 = extractvalue %dx.types.ResRet.f32 %5012, 1
  %5015 = extractvalue %dx.types.ResRet.f32 %5012, 2
  br label %5016

; <label>:5016                                    ; preds = %5011, %5006
  %5017 = phi float [ %5008, %5006 ], [ %5013, %5011 ]
  %5018 = phi float [ %5009, %5006 ], [ %5014, %5011 ]
  %5019 = phi float [ %5010, %5006 ], [ %5015, %5011 ]
  %5020 = extractvalue %dx.types.CBufRet.f32 %4974, 2
  %5021 = fmul fast float %5020, %5017
  %5022 = extractvalue %dx.types.CBufRet.f32 %4974, 0
  %5023 = fsub fast float %4988, %5022
  %5024 = fsub fast float %5023, %5021
  %5025 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5024)  ; FMax(a,b)
  %5026 = fmul fast float %5025, %5018
  %5027 = call float @dx.op.binary.f32(i32 36, float %5019, float %5026)  ; FMin(a,b)
  %5028 = fmul fast float %5027, 0xBFF7154760000000
  %5029 = call float @dx.op.unary.f32(i32 21, float %5028)  ; Exp(value)
  %5030 = fmul fast float %4967, %5029
  br label %5031

; <label>:5031                                    ; preds = %5016, %4860
  %5032 = phi float [ %5030, %5016 ], [ %4861, %4860 ]
  %5033 = call float @dx.op.binary.f32(i32 36, float %5032, float %5032)  ; FMin(a,b)
  %5034 = call float @dx.op.binary.f32(i32 36, float %5032, float %5033)  ; FMin(a,b)
  %5035 = fcmp fast ogt float %5034, 0.000000e+00
  br i1 %5035, label %5036, label %5343, !dx.controlflow.hints !112

; <label>:5036                                    ; preds = %5031
  %5037 = fmul fast float %5032, %3753
  %5038 = fmul fast float %5032, %3754
  %5039 = fmul fast float %5032, %3755
  %5040 = fsub fast float %3742, %2824
  %5041 = fsub fast float %3743, %2823
  %5042 = fsub fast float %3744, %2822
  %5043 = call float @dx.op.dot3.f32(i32 55, float %5040, float %5041, float %5042, float %5040, float %5041, float %5042)  ; Dot3(ax,ay,az,bx,by,bz)
  %5044 = call float @dx.op.unary.f32(i32 25, float %5043)  ; Rsqrt(value)
  %5045 = fmul fast float %5044, %5040
  %5046 = fmul fast float %5044, %5041
  %5047 = fmul fast float %5044, %5042
  %5048 = call float @dx.op.dot3.f32(i32 55, float %3742, float %3743, float %3744, float %2828, float %2829, float %2830)  ; Dot3(ax,ay,az,bx,by,bz)
  %5049 = call float @dx.op.dot3.f32(i32 55, float %2821, float %2820, float %2819, float %5045, float %5046, float %5047)  ; Dot3(ax,ay,az,bx,by,bz)
  %5050 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5051 = fmul fast float %5050, %5050
  %5052 = fmul fast float %5051, %2863
  %5053 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5054 = fmul fast float %5053, %5050
  %5055 = call float @dx.op.dot3.f32(i32 55, float %2828, float %2829, float %2830, float %5045, float %5046, float %5047)  ; Dot3(ax,ay,az,bx,by,bz)
  %5056 = fmul fast float %5055, %5055
  %5057 = call float @dx.op.unary.f32(i32 6, float %5048)  ; FAbs(value)
  %5058 = fsub fast float 1.000000e+00, %2856
  %5059 = fmul fast float %2838, %2838
  %5060 = fmul fast float %5059, %5058
  %5061 = fadd fast float %5060, %2856
  %5062 = bitcast float %5061 to i32
  %5063 = ashr i32 %5062, 1
  %5064 = add nsw i32 %5063, 532487669
  %5065 = bitcast i32 %5064 to float
  %5066 = fadd fast float %5065, %2838
  %5067 = fmul fast float %2856, %5056
  %5068 = fsub fast float 1.000000e+00, %5056
  %5069 = fadd fast float %5068, %5067
  %5070 = fmul fast float %5057, %5057
  %5071 = fmul fast float %5070, %5058
  %5072 = fadd fast float %5071, %2856
  %5073 = bitcast float %5072 to i32
  %5074 = ashr i32 %5073, 1
  %5075 = add nsw i32 %5074, 532487669
  %5076 = bitcast i32 %5075 to float
  %5077 = fadd fast float %5076, %5057
  %5078 = fmul fast float %5069, %5069
  %5079 = fmul fast float %5078, %5066
  %5080 = fmul fast float %5079, %5077
  %5081 = fdiv fast float 0x3FF0A00000000000, %5080
  %5082 = fmul fast float %5081, %2856
  %5083 = fmul fast float %3109, 0x3FF9999980000000
  %5084 = fsub fast float 5.000000e+00, %5083
  %5085 = call float @dx.op.unary.f32(i32 6, float %5049)  ; FAbs(value)
  %5086 = fsub fast float 1.000000e+00, %5085
  %5087 = fmul fast float %3109, 0x41D9660740000000
  %5088 = fadd fast float %5087, 0xC1EFBF8940000000
  %5089 = bitcast float %5086 to i32
  %5090 = sitofp i32 %5089 to float
  %5091 = fmul fast float %5090, %5084
  %5092 = fadd fast float %5088, %5091
  %5093 = fptosi float %5092 to i32
  %5094 = bitcast i32 %5093 to float
  %5095 = fsub fast float 1.000000e+00, %2831
  %5096 = fsub fast float 1.000000e+00, %2832
  %5097 = fsub fast float 1.000000e+00, %2836
  %5098 = fmul fast float %5094, %5095
  %5099 = fmul fast float %5094, %5096
  %5100 = fmul fast float %5094, %5097
  %5101 = fadd fast float %5098, %2831
  %5102 = fadd fast float %5099, %2832
  %5103 = fadd fast float %5100, %2836
  br i1 %3132, label %5104, label %5127

; <label>:5104                                    ; preds = %5036
  %5105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %1499, float %5085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5106 = extractvalue %dx.types.ResRet.f32 %5105, 0
  %5107 = extractvalue %dx.types.ResRet.f32 %5105, 1
  %5108 = extractvalue %dx.types.ResRet.f32 %5105, 2
  %5109 = fadd fast float %5106, -5.000000e-01
  %5110 = fadd fast float %5107, -5.000000e-01
  %5111 = fadd fast float %5108, -5.000000e-01
  %5112 = fmul fast float %2831, 4.000000e+00
  %5113 = fmul fast float %5112, %5095
  %5114 = fmul fast float %5113, %5109
  %5115 = fmul fast float %2832, 4.000000e+00
  %5116 = fmul fast float %5115, %5096
  %5117 = fmul fast float %5116, %5110
  %5118 = fmul fast float %2836, 4.000000e+00
  %5119 = fmul fast float %5118, %5097
  %5120 = fmul fast float %5119, %5111
  %5121 = fadd fast float %5114, %5101
  %5122 = fadd fast float %5117, %5102
  %5123 = fadd fast float %5120, %5103
  %5124 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5125 = call float @dx.op.unary.f32(i32 7, float %5122)  ; Saturate(value)
  %5126 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  br label %5127

; <label>:5127                                    ; preds = %5104, %5036
  %5128 = phi float [ %5124, %5104 ], [ %5101, %5036 ]
  %5129 = phi float [ %5125, %5104 ], [ %5102, %5036 ]
  %5130 = phi float [ %5126, %5104 ], [ %5103, %5036 ]
  %5131 = fmul fast float %5048, 9.843750e-01
  %5132 = fadd fast float %5131, 7.812500e-03
  %5133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %40, float %5132, float %3113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5134 = extractvalue %dx.types.ResRet.f32 %5133, 0
  %5135 = extractvalue %dx.types.ResRet.f32 %5133, 1
  %5136 = extractvalue %dx.types.ResRet.f32 %5133, 2
  %5137 = extractvalue %dx.types.ResRet.f32 %5133, 3
  %5138 = fsub fast float %5136, %5134
  %5139 = fsub fast float %5137, %5135
  %5140 = fmul fast float %5138, %3119
  %5141 = fmul fast float %5139, %3119
  %5142 = fadd fast float %5140, %5134
  %5143 = fadd fast float %5141, %5135
  %5144 = fmul fast float %5142, %2831
  %5145 = fmul fast float %5142, %2832
  %5146 = fmul fast float %5142, %2836
  %5147 = fadd fast float %5144, %5143
  %5148 = fadd fast float %5145, %5143
  %5149 = fadd fast float %5146, %5143
  br i1 %3132, label %5150, label %5173

; <label>:5150                                    ; preds = %5127
  %5151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %1499, float %5048, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5152 = extractvalue %dx.types.ResRet.f32 %5151, 0
  %5153 = extractvalue %dx.types.ResRet.f32 %5151, 1
  %5154 = extractvalue %dx.types.ResRet.f32 %5151, 2
  %5155 = fadd fast float %5152, -5.000000e-01
  %5156 = fadd fast float %5153, -5.000000e-01
  %5157 = fadd fast float %5154, -5.000000e-01
  %5158 = fmul fast float %2831, 4.000000e+00
  %5159 = fmul fast float %5158, %5095
  %5160 = fmul fast float %5159, %5155
  %5161 = fmul fast float %2832, 4.000000e+00
  %5162 = fmul fast float %5161, %5096
  %5163 = fmul fast float %5162, %5156
  %5164 = fmul fast float %2836, 4.000000e+00
  %5165 = fmul fast float %5164, %5097
  %5166 = fmul fast float %5165, %5157
  %5167 = fadd fast float %5160, %5147
  %5168 = fadd fast float %5163, %5148
  %5169 = fadd fast float %5166, %5149
  %5170 = call float @dx.op.unary.f32(i32 7, float %5167)  ; Saturate(value)
  %5171 = call float @dx.op.unary.f32(i32 7, float %5168)  ; Saturate(value)
  %5172 = call float @dx.op.unary.f32(i32 7, float %5169)  ; Saturate(value)
  br label %5173

; <label>:5173                                    ; preds = %5150, %5127
  %5174 = phi float [ %5170, %5150 ], [ %5147, %5127 ]
  %5175 = phi float [ %5171, %5150 ], [ %5148, %5127 ]
  %5176 = phi float [ %5172, %5150 ], [ %5149, %5127 ]
  %5177 = call float @dx.op.binary.f32(i32 35, float %5175, float %5176)  ; FMax(a,b)
  %5178 = call float @dx.op.binary.f32(i32 35, float %5174, float %5177)  ; FMax(a,b)
  %5179 = fsub fast float 1.000000e+00, %5178
  %5180 = call float @dx.op.binary.f32(i32 35, float %5057, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5181 = fdiv fast float %894, %5180
  %5182 = fmul fast float %3651, %5181
  %5183 = fmul fast float %3653, %5181
  %5184 = fmul fast float %3655, %5181
  %5185 = call float @dx.op.unary.f32(i32 21, float %5182)  ; Exp(value)
  %5186 = call float @dx.op.unary.f32(i32 21, float %5183)  ; Exp(value)
  %5187 = call float @dx.op.unary.f32(i32 21, float %5184)  ; Exp(value)
  %5188 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5189 = call float @dx.op.unary.f32(i32 7, float %5186)  ; Saturate(value)
  %5190 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5191 = select i1 %3648, float %5188, float 0.000000e+00
  %5192 = select i1 %3649, float %5189, float 0.000000e+00
  %5193 = select i1 %3650, float %5190, float 0.000000e+00
  %5194 = fsub fast float -0.000000e+00, %2828
  %5195 = fsub fast float -0.000000e+00, %2829
  %5196 = fsub fast float -0.000000e+00, %2830
  %5197 = call float @dx.op.dot3.f32(i32 55, float %3742, float %3743, float %3744, float %5194, float %5195, float %5196)  ; Dot3(ax,ay,az,bx,by,bz)
  %5198 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5199 = fmul fast float %5198, 9.843750e-01
  %5200 = fadd fast float %5199, 7.812500e-03
  %5201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %40, float %5200, float %3113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5202 = extractvalue %dx.types.ResRet.f32 %5201, 0
  %5203 = extractvalue %dx.types.ResRet.f32 %5201, 1
  %5204 = extractvalue %dx.types.ResRet.f32 %5201, 2
  %5205 = extractvalue %dx.types.ResRet.f32 %5201, 3
  %5206 = fsub fast float %5204, %5202
  %5207 = fsub fast float %5205, %5203
  %5208 = fmul fast float %5206, %3119
  %5209 = fmul fast float %5207, %3119
  %5210 = fadd fast float %5208, %5202
  %5211 = fadd fast float %5209, %5203
  %5212 = fmul fast float %5210, %2831
  %5213 = fmul fast float %5210, %2832
  %5214 = fmul fast float %5210, %2836
  %5215 = fadd fast float %5212, %5211
  %5216 = fadd fast float %5213, %5211
  %5217 = fadd fast float %5214, %5211
  br i1 %3132, label %5218, label %5241

; <label>:5218                                    ; preds = %5173
  %5219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %1499, float %5198, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5220 = extractvalue %dx.types.ResRet.f32 %5219, 0
  %5221 = extractvalue %dx.types.ResRet.f32 %5219, 1
  %5222 = extractvalue %dx.types.ResRet.f32 %5219, 2
  %5223 = fadd fast float %5220, -5.000000e-01
  %5224 = fadd fast float %5221, -5.000000e-01
  %5225 = fadd fast float %5222, -5.000000e-01
  %5226 = fmul fast float %2831, 4.000000e+00
  %5227 = fmul fast float %5226, %5095
  %5228 = fmul fast float %5227, %5223
  %5229 = fmul fast float %2832, 4.000000e+00
  %5230 = fmul fast float %5229, %5096
  %5231 = fmul fast float %5230, %5224
  %5232 = fmul fast float %2836, 4.000000e+00
  %5233 = fmul fast float %5232, %5097
  %5234 = fmul fast float %5233, %5225
  %5235 = fadd fast float %5228, %5215
  %5236 = fadd fast float %5231, %5216
  %5237 = fadd fast float %5234, %5217
  %5238 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5239 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5240 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  br label %5241

; <label>:5241                                    ; preds = %5218, %5173
  %5242 = phi float [ %5238, %5218 ], [ %5215, %5173 ]
  %5243 = phi float [ %5239, %5218 ], [ %5216, %5173 ]
  %5244 = phi float [ %5240, %5218 ], [ %5217, %5173 ]
  %5245 = call float @dx.op.binary.f32(i32 35, float %5243, float %5244)  ; FMax(a,b)
  %5246 = call float @dx.op.binary.f32(i32 35, float %5242, float %5245)  ; FMax(a,b)
  %5247 = fsub fast float 1.000000e+00, %5246
  %5248 = fmul fast float %2853, %3715
  %5249 = fadd fast float %3717, %5248
  %5250 = call float @dx.op.unary.f32(i32 7, float %5249)  ; Saturate(value)
  %5251 = fsub fast float %3742, %2844
  %5252 = fsub fast float %3743, %2845
  %5253 = fsub fast float %3744, %2846
  %5254 = call float @dx.op.dot3.f32(i32 55, float %5251, float %5252, float %5253, float %5251, float %5252, float %5253)  ; Dot3(ax,ay,az,bx,by,bz)
  %5255 = call float @dx.op.unary.f32(i32 25, float %5254)  ; Rsqrt(value)
  %5256 = fmul fast float %5255, %5251
  %5257 = fmul fast float %5255, %5252
  %5258 = fmul fast float %5255, %5253
  %5259 = call float @dx.op.dot3.f32(i32 55, float %5194, float %5195, float %5196, float %5256, float %5257, float %5258)  ; Dot3(ax,ay,az,bx,by,bz)
  %5260 = fmul fast float %5259, %5259
  %5261 = call float @dx.op.unary.f32(i32 6, float %5198)  ; FAbs(value)
  %5262 = call float @dx.op.binary.f32(i32 35, float %5250, float 0x3F847AE140000000)  ; FMax(a,b)
  %5263 = fmul fast float %5262, %5262
  %5264 = fmul fast float %5263, %5263
  %5265 = fsub fast float 1.000000e+00, %5264
  %5266 = fmul fast float %5059, %5265
  %5267 = fadd fast float %5266, %5264
  %5268 = bitcast float %5267 to i32
  %5269 = ashr i32 %5268, 1
  %5270 = add nsw i32 %5269, 532487669
  %5271 = bitcast i32 %5270 to float
  %5272 = fadd fast float %5271, %2838
  %5273 = fmul fast float %5264, %5260
  %5274 = fsub fast float 1.000000e+00, %5260
  %5275 = fadd fast float %5274, %5273
  %5276 = fmul fast float %5261, %5261
  %5277 = fmul fast float %5276, %5265
  %5278 = fadd fast float %5277, %5264
  %5279 = bitcast float %5278 to i32
  %5280 = ashr i32 %5279, 1
  %5281 = add nsw i32 %5280, 532487669
  %5282 = bitcast i32 %5281 to float
  %5283 = fadd fast float %5282, %5261
  %5284 = fmul fast float %5275, %5275
  %5285 = fmul fast float %5284, %5272
  %5286 = fmul fast float %5285, %5283
  %5287 = fdiv fast float 0x3FF0A00000000000, %5286
  %5288 = fmul fast float %5287, %5264
  %5289 = fmul fast float %5198, %5191
  %5290 = fmul fast float %5198, %5192
  %5291 = fmul fast float %5198, %5193
  %5292 = fmul fast float %5289, %5247
  %5293 = fmul fast float %5292, %5288
  %5294 = fmul fast float %5290, %5247
  %5295 = fmul fast float %5294, %5288
  %5296 = fmul fast float %5291, %5247
  %5297 = fmul fast float %5296, %5288
  %5298 = fmul fast float %5128, %5082
  %5299 = fmul fast float %5129, %5082
  %5300 = fmul fast float %5130, %5082
  %5301 = fsub fast float 1.000000e+00, %5049
  %5302 = bitcast float %5301 to i32
  %5303 = sitofp i32 %5302 to float
  %5304 = fmul fast float %5303, 5.000000e+00
  %5305 = fadd fast float %5304, 0xC1EFBF8940000000
  %5306 = fptosi float %5305 to i32
  %5307 = bitcast i32 %5306 to float
  %5308 = fmul fast float %5307, %1498
  %5309 = fmul fast float %5179, %5308
  %5310 = fmul fast float %5309, %3643
  %5311 = fmul fast float %5309, %3644
  %5312 = fmul fast float %5309, %3645
  %5313 = fadd fast float %5310, %5298
  %5314 = fadd fast float %5311, %5299
  %5315 = fadd fast float %5312, %5300
  %5316 = fmul fast float %5313, %5054
  %5317 = fmul fast float %5314, %5054
  %5318 = fmul fast float %5315, %5054
  %5319 = fmul fast float %5054, %5037
  %5320 = fmul fast float %5319, %5179
  %5321 = fmul fast float %5054, %5038
  %5322 = fmul fast float %5321, %5179
  %5323 = fmul fast float %5054, %5039
  %5324 = fmul fast float %5323, %5179
  %5325 = fadd fast float %5316, %5293
  %5326 = fadd fast float %5317, %5295
  %5327 = fadd fast float %5318, %5297
  %5328 = fmul fast float %5325, %5037
  %5329 = fmul fast float %5326, %5038
  %5330 = fmul fast float %5327, %5039
  %5331 = fadd fast float %5320, %3732
  %5332 = fmul fast float %5331, %1522
  %5333 = fadd fast float %5322, %3734
  %5334 = fmul fast float %5333, %1522
  %5335 = fadd fast float %5324, %3736
  %5336 = fmul fast float %5335, %1522
  %5337 = fadd fast float %5328, %3696
  %5338 = fmul fast float %5337, %1522
  %5339 = fadd fast float %5329, %3699
  %5340 = fmul fast float %5339, %1522
  %5341 = fadd fast float %5330, %3702
  %5342 = fmul fast float %5341, %1522
  br label %5343

; <label>:5343                                    ; preds = %5241, %5031, %3626
  %5344 = phi float [ %3697, %3626 ], [ %3697, %5031 ], [ %5338, %5241 ]
  %5345 = phi float [ %3700, %3626 ], [ %3700, %5031 ], [ %5340, %5241 ]
  %5346 = phi float [ %3703, %3626 ], [ %3703, %5031 ], [ %5342, %5241 ]
  %5347 = phi float [ %3733, %3626 ], [ %3733, %5031 ], [ %5332, %5241 ]
  %5348 = phi float [ %3735, %3626 ], [ %3735, %5031 ], [ %5334, %5241 ]
  %5349 = phi float [ %3737, %3626 ], [ %3737, %5031 ], [ %5336, %5241 ]
  %5350 = fmul fast float %1522, %3672
  %5351 = fsub fast float -0.000000e+00, %5350
  %5352 = fmul fast float %1522, %3673
  %5353 = fsub fast float -0.000000e+00, %5352
  %5354 = fmul fast float %1522, %3674
  %5355 = fsub fast float -0.000000e+00, %5354
  %5356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5357 = extractvalue %dx.types.CBufRet.f32 %5356, 0
  %5358 = fmul fast float %5357, %3678
  %5359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5360 = extractvalue %dx.types.CBufRet.f32 %5359, 3
  %5361 = fsub fast float 1.000000e+00, %1494
  %5362 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5363 = fadd fast float %5349, %1493
  %5364 = fmul fast float %5363, %1494
  %5365 = fmul fast float %5362, %5360
  %5366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5367 = extractvalue %dx.types.CBufRet.f32 %5366, 3
  %5368 = fmul fast float %5347, %2825
  %5369 = fmul fast float %5348, %2826
  %5370 = fmul fast float %5349, %2827
  %5371 = fcmp fast ogt float %72, %154
  %5372 = and i1 %5371, %1595
  %5373 = or i1 %1674, %5372
  %5374 = icmp eq i32 %1594, 2
  %5375 = fcmp fast ole float %72, %154
  %5376 = and i1 %5375, %5374
  %5377 = or i1 %5376, %5373
  br i1 %5372, label %5378, label %5637

; <label>:5378                                    ; preds = %5343
  %5379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5380 = extractvalue %dx.types.CBufRet.f32 %5379, 2
  %5381 = extractvalue %dx.types.CBufRet.f32 %5379, 3
  %5382 = fmul fast float %5380, %84
  %5383 = fmul fast float %5381, %85
  %5384 = call float @dx.op.unary.f32(i32 7, float %5382)  ; Saturate(value)
  %5385 = call float @dx.op.unary.f32(i32 7, float %5383)  ; Saturate(value)
  %5386 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %40, float %5384, float %5385, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5387 = extractvalue %dx.types.ResRet.f32 %5386, 0
  %5388 = extractvalue %dx.types.ResRet.f32 %5386, 1
  %5389 = extractvalue %dx.types.ResRet.f32 %5386, 2
  %5390 = extractvalue %dx.types.ResRet.f32 %5386, 3
  %5391 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %40, float %5384, float %5385, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5392 = extractvalue %dx.types.ResRet.f32 %5391, 0
  %5393 = extractvalue %dx.types.ResRet.f32 %5391, 1
  %5394 = extractvalue %dx.types.ResRet.f32 %5391, 2
  %5395 = extractvalue %dx.types.ResRet.f32 %5391, 3
  %5396 = call float @dx.op.binary.f32(i32 35, float %5388, float %5389)  ; FMax(a,b)
  %5397 = call float @dx.op.binary.f32(i32 35, float %5387, float %5396)  ; FMax(a,b)
  %5398 = call float @dx.op.binary.f32(i32 35, float %5397, float %5390)  ; FMax(a,b)
  %5399 = call float @dx.op.binary.f32(i32 36, float %5393, float %5394)  ; FMin(a,b)
  %5400 = call float @dx.op.binary.f32(i32 36, float %5392, float %5399)  ; FMin(a,b)
  %5401 = call float @dx.op.binary.f32(i32 36, float %5400, float %5395)  ; FMin(a,b)
  %5402 = fmul fast float %5398, 2.550000e+02
  %5403 = fadd fast float %5402, 0x3F70101020000000
  %5404 = fptoui float %5403 to i32
  %5405 = fmul fast float %5401, 2.550000e+02
  %5406 = fadd fast float %5405, 0x3F70101020000000
  %5407 = fptoui float %5406 to i32
  %5408 = icmp ult i32 %5404, %5407
  br i1 %5408, label %5409, label %5577

; <label>:5409                                    ; preds = %5378
  %5410 = fcmp fast ogt float %71, 9.843750e-01
  %5411 = fadd fast float %72, -4.000000e+00
  %5412 = select i1 %5410, float -4.000000e+00, float %5411
  %5413 = call float @dx.op.binary.f32(i32 35, float %5412, float 0.000000e+00)  ; FMax(a,b)
  %5414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5415 = extractvalue %dx.types.CBufRet.f32 %5414, 0
  %5416 = fadd fast float %5415, %5413
  %5417 = extractvalue %dx.types.CBufRet.f32 %5414, 2
  %5418 = fmul fast float %5416, %5417
  %5419 = call float @dx.op.unary.f32(i32 23, float %5418)  ; Log(value)
  %5420 = extractvalue %dx.types.CBufRet.f32 %5414, 3
  %5421 = fmul fast float %5420, %5419
  %5422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5423 = extractvalue %dx.types.CBufRet.f32 %5422, 2
  %5424 = fmul fast float %5421, %5423
  %5425 = call float @dx.op.unary.f32(i32 7, float %5424)  ; Saturate(value)
  %5426 = uitofp i32 %5404 to float
  %5427 = uitofp i32 %5407 to float
  %5428 = fadd fast float %5426, 5.000000e-01
  %5429 = fadd fast float %5427, 5.000000e-01
  %5430 = fmul fast float %5423, %5428
  %5431 = fmul fast float %5423, %5429
  %5432 = fadd fast float %5430, 0x3F0FFB4800000000
  %5433 = fadd fast float %5431, 0xBF0FFB4800000000
  %5434 = call float @dx.op.binary.f32(i32 35, float %5425, float %5432)  ; FMax(a,b)
  %5435 = call float @dx.op.binary.f32(i32 36, float %5434, float %5433)  ; FMin(a,b)
  %5436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5437 = extractvalue %dx.types.CBufRet.f32 %5436, 1
  %5438 = extractvalue %dx.types.CBufRet.f32 %5436, 2
  %5439 = extractvalue %dx.types.CBufRet.f32 %5436, 0
  %5440 = fmul fast float %5437, %5435
  %5441 = fadd fast float %5439, %5440
  %5442 = fadd fast float %5439, %5438
  %5443 = fsub fast float %5437, %5438
  %5444 = fadd fast float %5443, %5439
  %5445 = call float @dx.op.binary.f32(i32 35, float %5441, float %5442)  ; FMax(a,b)
  %5446 = call float @dx.op.binary.f32(i32 36, float %5445, float %5444)  ; FMin(a,b)
  %5447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %5384, float %5385, float %5446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5448 = extractvalue %dx.types.ResRet.f32 %5447, 0
  %5449 = extractvalue %dx.types.ResRet.f32 %5447, 1
  %5450 = extractvalue %dx.types.ResRet.f32 %5447, 2
  %5451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5452 = extractvalue %dx.types.CBufRet.i32 %5451, 0
  %5453 = extractvalue %dx.types.CBufRet.i32 %5451, 1
  %5454 = uitofp i32 %5452 to float
  %5455 = uitofp i32 %5453 to float
  %5456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5457 = extractvalue %dx.types.CBufRet.f32 %5456, 0
  %5458 = extractvalue %dx.types.CBufRet.f32 %5456, 1
  %5459 = fmul fast float %5454, %5384
  %5460 = fmul fast float %5455, %5385
  %5461 = fadd fast float %5459, -5.000000e-01
  %5462 = fadd fast float %5460, -5.000000e-01
  %5463 = call float @dx.op.unary.f32(i32 22, float %5461)  ; Frc(value)
  %5464 = call float @dx.op.unary.f32(i32 22, float %5462)  ; Frc(value)
  %5465 = fmul fast float %5463, %5463
  %5466 = fmul fast float %5465, %5463
  %5467 = fsub fast float 3.000000e+00, %5463
  %5468 = fmul fast float %5465, %5467
  %5469 = fmul fast float %5463, 3.000000e+00
  %5470 = fmul fast float %5466, 3.000000e+00
  %5471 = fmul fast float %5465, 6.000000e+00
  %5472 = fsub fast float %5470, %5471
  %5473 = fadd fast float %5472, 4.000000e+00
  %5474 = fmul fast float %5473, 0x3FC5555560000000
  %5475 = fmul fast float %5466, -3.000000e+00
  %5476 = fadd fast float %5465, %5463
  %5477 = fmul fast float %5476, 3.000000e+00
  %5478 = fadd fast float %5475, 1.000000e+00
  %5479 = fadd fast float %5478, %5477
  %5480 = fmul fast float %5466, 0x3FC5555560000000
  %5481 = fmul fast float %5464, %5464
  %5482 = fmul fast float %5481, %5464
  %5483 = fsub fast float 3.000000e+00, %5464
  %5484 = fmul fast float %5481, %5483
  %5485 = fmul fast float %5464, 3.000000e+00
  %5486 = fmul fast float %5482, 3.000000e+00
  %5487 = fmul fast float %5481, 6.000000e+00
  %5488 = fsub fast float %5486, %5487
  %5489 = fadd fast float %5488, 4.000000e+00
  %5490 = fmul fast float %5489, 0x3FC5555560000000
  %5491 = fmul fast float %5482, -3.000000e+00
  %5492 = fadd fast float %5481, %5464
  %5493 = fmul fast float %5492, 3.000000e+00
  %5494 = fadd fast float %5491, 1.000000e+00
  %5495 = fadd fast float %5494, %5493
  %5496 = fmul fast float %5482, 0x3FC5555560000000
  %5497 = fadd fast float %5463, 1.000000e+00
  %5498 = fsub fast float 1.000000e+00, %5469
  %5499 = fadd fast float %5498, %5468
  %5500 = fadd fast float %5499, %5473
  %5501 = fmul fast float %5500, 0x3FC5555560000000
  %5502 = fdiv fast float %5474, %5501
  %5503 = fsub fast float %5497, %5502
  %5504 = fsub fast float 1.000000e+00, %5463
  %5505 = fadd fast float %5479, %5466
  %5506 = fmul fast float %5505, 0x3FC5555560000000
  %5507 = fdiv fast float %5480, %5506
  %5508 = fadd fast float %5504, %5507
  %5509 = fadd fast float %5464, 1.000000e+00
  %5510 = fsub fast float 1.000000e+00, %5485
  %5511 = fadd fast float %5510, %5484
  %5512 = fadd fast float %5511, %5489
  %5513 = fmul fast float %5512, 0x3FC5555560000000
  %5514 = fdiv fast float %5490, %5513
  %5515 = fsub fast float %5509, %5514
  %5516 = fsub fast float 1.000000e+00, %5464
  %5517 = fadd fast float %5495, %5482
  %5518 = fmul fast float %5517, 0x3FC5555560000000
  %5519 = fdiv fast float %5496, %5518
  %5520 = fadd fast float %5519, %5516
  %5521 = fmul fast float %5503, %5457
  %5522 = fsub fast float %5384, %5521
  %5523 = fmul fast float %5508, %5457
  %5524 = fadd fast float %5523, %5384
  %5525 = fmul fast float %5520, %5458
  %5526 = fadd fast float %5525, %5385
  %5527 = fmul fast float %5515, %5458
  %5528 = fsub fast float %5385, %5527
  %5529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %5522, float %5528, float %5446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5530 = extractvalue %dx.types.ResRet.f32 %5529, 0
  %5531 = extractvalue %dx.types.ResRet.f32 %5529, 1
  %5532 = extractvalue %dx.types.ResRet.f32 %5529, 2
  %5533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %5524, float %5528, float %5446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5534 = extractvalue %dx.types.ResRet.f32 %5533, 0
  %5535 = extractvalue %dx.types.ResRet.f32 %5533, 1
  %5536 = extractvalue %dx.types.ResRet.f32 %5533, 2
  %5537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %5522, float %5526, float %5446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5538 = extractvalue %dx.types.ResRet.f32 %5537, 0
  %5539 = extractvalue %dx.types.ResRet.f32 %5537, 1
  %5540 = extractvalue %dx.types.ResRet.f32 %5537, 2
  %5541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %5524, float %5526, float %5446, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5542 = extractvalue %dx.types.ResRet.f32 %5541, 0
  %5543 = extractvalue %dx.types.ResRet.f32 %5541, 1
  %5544 = extractvalue %dx.types.ResRet.f32 %5541, 2
  %5545 = fsub fast float %5538, %5530
  %5546 = fsub fast float %5539, %5531
  %5547 = fsub fast float %5540, %5532
  %5548 = fmul fast float %5545, %5518
  %5549 = fmul fast float %5546, %5518
  %5550 = fmul fast float %5547, %5518
  %5551 = fadd fast float %5548, %5530
  %5552 = fadd fast float %5549, %5531
  %5553 = fadd fast float %5550, %5532
  %5554 = fsub fast float %5542, %5534
  %5555 = fsub fast float %5543, %5535
  %5556 = fsub fast float %5544, %5536
  %5557 = fmul fast float %5554, %5518
  %5558 = fmul fast float %5555, %5518
  %5559 = fmul fast float %5556, %5518
  %5560 = fsub fast float %5534, %5551
  %5561 = fadd fast float %5560, %5557
  %5562 = fsub fast float %5535, %5552
  %5563 = fadd fast float %5562, %5558
  %5564 = fsub fast float %5536, %5553
  %5565 = fadd fast float %5564, %5559
  %5566 = fmul fast float %5561, %5506
  %5567 = fmul fast float %5563, %5506
  %5568 = fmul fast float %5565, %5506
  %5569 = fadd fast float %5566, %5551
  %5570 = fadd fast float %5567, %5552
  %5571 = fadd fast float %5568, %5553
  %5572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5573 = extractvalue %dx.types.CBufRet.f32 %5572, 1
  %5574 = fmul fast float %5569, %5573
  %5575 = fmul fast float %5570, %5573
  %5576 = fmul fast float %5571, %5573
  br label %5577

; <label>:5577                                    ; preds = %5409, %5378
  %5578 = phi float [ %5448, %5409 ], [ 1.000000e+00, %5378 ]
  %5579 = phi float [ %5449, %5409 ], [ 1.000000e+00, %5378 ]
  %5580 = phi float [ %5450, %5409 ], [ 1.000000e+00, %5378 ]
  %5581 = phi float [ %5574, %5409 ], [ 0.000000e+00, %5378 ]
  %5582 = phi float [ %5575, %5409 ], [ 0.000000e+00, %5378 ]
  %5583 = phi float [ %5576, %5409 ], [ 0.000000e+00, %5378 ]
  %5584 = fmul fast float %5581, %5351
  %5585 = fmul fast float %5582, %5353
  %5586 = fmul fast float %5583, %5355
  %5587 = call float @dx.op.dot3.f32(i32 55, float %5578, float %5579, float %5580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5588 = call float @dx.op.dot3.f32(i32 55, float %5584, float %5585, float %5586, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = select i1 %193, float %5587, float %5578
  %5590 = select i1 %193, float %5587, float %5579
  %5591 = select i1 %193, float 1.000000e+00, float %5580
  %5592 = select i1 %193, float %5588, float %5584
  %5593 = select i1 %193, float 0.000000e+00, float %5585
  %5594 = select i1 %193, float 0.000000e+00, float %5586
  %5595 = fmul fast float %5589, %5368
  %5596 = fmul fast float %5590, %5369
  %5597 = fmul fast float %5591, %5370
  %5598 = fadd fast float %5595, %5592
  %5599 = fadd fast float %5596, %5593
  %5600 = fadd fast float %5594, %5597
  %5601 = fmul fast float %5589, %5344
  %5602 = fmul fast float %5590, %5345
  %5603 = fmul fast float %5591, %5346
  %5604 = fmul fast float %84, 2.000000e+00
  %5605 = fmul fast float %5604, %5380
  %5606 = fmul fast float %85, 2.000000e+00
  %5607 = fmul fast float %5606, %5381
  %5608 = fsub fast float 1.000000e+00, %5605
  %5609 = fsub fast float 1.000000e+00, %5607
  %5610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5611 = extractvalue %dx.types.CBufRet.f32 %5610, 0
  %5612 = extractvalue %dx.types.CBufRet.f32 %5610, 1
  %5613 = extractvalue %dx.types.CBufRet.f32 %5610, 2
  %5614 = fmul fast float %5608, %5611
  %5615 = fmul fast float %5608, %5612
  %5616 = fmul fast float %5608, %5613
  %5617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5618 = extractvalue %dx.types.CBufRet.f32 %5617, 0
  %5619 = extractvalue %dx.types.CBufRet.f32 %5617, 1
  %5620 = extractvalue %dx.types.CBufRet.f32 %5617, 2
  %5621 = fmul fast float %5609, %5618
  %5622 = fmul fast float %5609, %5619
  %5623 = fmul fast float %5609, %5620
  %5624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5625 = extractvalue %dx.types.CBufRet.f32 %5624, 0
  %5626 = extractvalue %dx.types.CBufRet.f32 %5624, 1
  %5627 = extractvalue %dx.types.CBufRet.f32 %5624, 2
  %5628 = fadd fast float %5621, %5625
  %5629 = fadd fast float %5628, %5614
  %5630 = fadd fast float %5622, %5626
  %5631 = fadd fast float %5630, %5615
  %5632 = fadd fast float %5623, %5627
  %5633 = fadd fast float %5632, %5616
  %5634 = fmul fast float %5629, %154
  %5635 = fmul fast float %5631, %154
  %5636 = fmul fast float %5633, %154
  br label %5637

; <label>:5637                                    ; preds = %5577, %5343
  %5638 = phi float [ %5634, %5577 ], [ %132, %5343 ]
  %5639 = phi float [ %5635, %5577 ], [ %133, %5343 ]
  %5640 = phi float [ %5636, %5577 ], [ %134, %5343 ]
  %5641 = phi float [ %154, %5577 ], [ %72, %5343 ]
  %5642 = phi float [ %5598, %5577 ], [ %5368, %5343 ]
  %5643 = phi float [ %5599, %5577 ], [ %5369, %5343 ]
  %5644 = phi float [ %5600, %5577 ], [ %5370, %5343 ]
  %5645 = phi float [ %5601, %5577 ], [ %5344, %5343 ]
  %5646 = phi float [ %5602, %5577 ], [ %5345, %5343 ]
  %5647 = phi float [ %5603, %5577 ], [ %5346, %5343 ]
  %5648 = phi float [ %5578, %5577 ], [ 1.000000e+00, %5343 ]
  br i1 %5377, label %6803, label %5649

; <label>:5649                                    ; preds = %5637
  %5650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5651 = extractvalue %dx.types.CBufRet.f32 %5650, 0
  %5652 = extractvalue %dx.types.CBufRet.f32 %5650, 1
  %5653 = extractvalue %dx.types.CBufRet.f32 %5650, 2
  %5654 = extractvalue %dx.types.CBufRet.f32 %5650, 3
  %5655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5656 = extractvalue %dx.types.CBufRet.f32 %5655, 0
  %5657 = extractvalue %dx.types.CBufRet.f32 %5655, 1
  %5658 = extractvalue %dx.types.CBufRet.f32 %5655, 2
  %5659 = extractvalue %dx.types.CBufRet.f32 %5655, 3
  %5660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5661 = extractvalue %dx.types.CBufRet.f32 %5660, 0
  %5662 = extractvalue %dx.types.CBufRet.f32 %5660, 1
  %5663 = extractvalue %dx.types.CBufRet.f32 %5660, 2
  %5664 = extractvalue %dx.types.CBufRet.f32 %5660, 3
  %5665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5666 = extractvalue %dx.types.CBufRet.f32 %5665, 0
  %5667 = extractvalue %dx.types.CBufRet.f32 %5665, 1
  %5668 = extractvalue %dx.types.CBufRet.f32 %5665, 2
  %5669 = extractvalue %dx.types.CBufRet.f32 %5665, 3
  %5670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5671 = extractvalue %dx.types.CBufRet.f32 %5670, 3
  %5672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5673 = extractvalue %dx.types.CBufRet.f32 %5672, 3
  %5674 = extractvalue %dx.types.CBufRet.f32 %5672, 0
  %5675 = extractvalue %dx.types.CBufRet.f32 %5672, 1
  %5676 = extractvalue %dx.types.CBufRet.f32 %5672, 2
  %5677 = fcmp fast olt float %5676, -5.000000e-01
  %5678 = call float @dx.op.dot3.f32(i32 55, float %5638, float %5639, float %5640, float %5638, float %5639, float %5640)  ; Dot3(ax,ay,az,bx,by,bz)
  %5679 = call float @dx.op.unary.f32(i32 25, float %5678)  ; Rsqrt(value)
  %5680 = fmul fast float %5679, %5678
  %5681 = fmul fast float %5679, %5638
  %5682 = fmul fast float %5679, %5639
  %5683 = fmul fast float %5679, %5640
  %5684 = fadd fast float %5680, %5654
  %5685 = call float @dx.op.dot3.f32(i32 55, float %5681, float %5682, float %5683, float %5651, float %5652, float %5653)  ; Dot3(ax,ay,az,bx,by,bz)
  %5686 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5687 = extractvalue %dx.types.CBufRet.i32 %5686, 1
  %5688 = and i32 %5687, 1
  %5689 = icmp ne i32 %5688, 0
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 2
  %5692 = fcmp fast ogt float %5691, 0.000000e+00
  %5693 = and i1 %5689, %5692
  br i1 %5693, label %5694, label %6100, !dx.controlflow.hints !113

; <label>:5694                                    ; preds = %5649
  %5695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5696 = extractvalue %dx.types.CBufRet.f32 %5695, 3
  %5697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5698 = extractvalue %dx.types.CBufRet.f32 %5697, 2
  %5699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5700 = extractvalue %dx.types.CBufRet.f32 %5699, 2
  %5701 = fsub fast float %5698, %5700
  %5702 = and i32 %5687, 2
  %5703 = extractvalue %dx.types.CBufRet.i32 %5686, 0
  %5704 = call i32 @dx.op.binary.i32(i32 40, i32 %5703, i32 3)  ; UMin(a,b)
  %5705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5706 = extractvalue %dx.types.CBufRet.f32 %5705, 0
  %5707 = extractvalue %dx.types.CBufRet.f32 %5705, 1
  %5708 = extractvalue %dx.types.CBufRet.f32 %5699, 0
  %5709 = extractvalue %dx.types.CBufRet.f32 %5699, 1
  %5710 = fsub fast float %5706, %5708
  %5711 = fsub fast float %5707, %5709
  %5712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5713 = extractvalue %dx.types.CBufRet.f32 %5712, 0
  %5714 = fcmp fast ogt float %5713, 0.000000e+00
  %5715 = fsub fast float -0.000000e+00, %5710
  %5716 = fsub fast float -0.000000e+00, %5711
  %5717 = call float @dx.op.dot2.f32(i32 54, float %5681, float %5682, float %5681, float %5682)  ; Dot2(ax,ay,bx,by)
  %5718 = call float @dx.op.dot2.f32(i32 54, float %5681, float %5682, float %5715, float %5716)  ; Dot2(ax,ay,bx,by)
  %5719 = fmul fast float %5718, 2.000000e+00
  %5720 = call float @dx.op.dot2.f32(i32 54, float %5715, float %5716, float %5715, float %5716)  ; Dot2(ax,ay,bx,by)
  %5721 = fmul fast float %5713, %5713
  %5722 = fsub fast float %5720, %5721
  %5723 = fmul fast float %5719, %5719
  %5724 = fmul fast float %5717, 4.000000e+00
  %5725 = fmul fast float %5724, %5722
  %5726 = fsub fast float %5723, %5725
  %5727 = fcmp fast ogt float %5726, 0.000000e+00
  br i1 %5727, label %5728, label %5743

; <label>:5728                                    ; preds = %5694
  %5729 = fcmp fast ogt float %5719, 0.000000e+00
  %5730 = call float @dx.op.unary.f32(i32 24, float %5726)  ; Sqrt(value)
  %5731 = fsub fast float -0.000000e+00, %5730
  %5732 = select i1 %5729, float %5730, float %5731
  %5733 = fadd fast float %5732, %5719
  %5734 = fmul float %5733, -5.000000e-01
  %5735 = fdiv fast float %5734, %5717
  %5736 = call float @dx.op.binary.f32(i32 35, float %5735, float 0.000000e+00)  ; FMax(a,b)
  %5737 = call float @dx.op.binary.f32(i32 36, float %5680, float %5736)  ; FMin(a,b)
  %5738 = fdiv fast float %5722, %5734
  %5739 = call float @dx.op.binary.f32(i32 35, float %5738, float 0.000000e+00)  ; FMax(a,b)
  %5740 = call float @dx.op.binary.f32(i32 36, float %5680, float %5739)  ; FMin(a,b)
  %5741 = call float @dx.op.binary.f32(i32 36, float %5737, float %5740)  ; FMin(a,b)
  %5742 = call float @dx.op.binary.f32(i32 35, float %5737, float %5740)  ; FMax(a,b)
  br label %5743

; <label>:5743                                    ; preds = %5728, %5694
  %5744 = phi float [ %5742, %5728 ], [ -1.000000e+00, %5694 ]
  %5745 = phi float [ %5741, %5728 ], [ -1.000000e+00, %5694 ]
  %5746 = phi i1 [ true, %5728 ], [ false, %5694 ]
  %5747 = and i1 %5714, %5746
  br i1 %5747, label %5748, label %5750

; <label>:5748                                    ; preds = %5743
  %5749 = fcmp fast oeq float %5745, %5744
  br i1 %5749, label %6053, label %5751

; <label>:5750                                    ; preds = %5743
  br i1 %5714, label %6053, label %5751

; <label>:5751                                    ; preds = %5750, %5748
  %5752 = phi float [ %5680, %5750 ], [ %5744, %5748 ]
  %5753 = phi float [ 0.000000e+00, %5750 ], [ %5745, %5748 ]
  %5754 = icmp ne i32 %5702, 0
  %5755 = fmul fast float %5752, %5683
  %5756 = fadd fast float %5755, %5696
  %5757 = fmul fast float %5756, %5752
  %5758 = select i1 %5754, float 0.000000e+00, float %5757
  %5759 = fcmp fast oeq float %5683, 0.000000e+00
  %5760 = fdiv fast float %5701, %5683
  %5761 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5760)  ; FMax(a,b)
  %5762 = select i1 %5759, float %5752, float %5761
  %5763 = call float @dx.op.binary.f32(i32 36, float %5752, float %5762)  ; FMin(a,b)
  %5764 = fcmp fast ogt float %5683, 0.000000e+00
  %5765 = fcmp fast olt float %5701, 0.000000e+00
  br i1 %5764, label %5766, label %5823

; <label>:5766                                    ; preds = %5751
  %5767 = icmp eq i32 %5702, 0
  br i1 %5765, label %5768, label %5812

; <label>:5768                                    ; preds = %5766
  %5769 = select i1 %5767, float %5752, float 0.000000e+00
  %5770 = fsub fast float -0.000000e+00, %5769
  %5771 = call float @dx.op.unary.f32(i32 6, float %5770)  ; FAbs(value)
  %5772 = fmul fast float %5769, %5683
  %5773 = fadd fast float %5772, %5696
  %5774 = fmul fast float %5771, %5773
  %5775 = fsub fast float %5758, %5774
  %5776 = fsub fast float %5752, %5771
  %5777 = select i1 %5767, float %5776, float 0.000000e+00
  %5778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5779 = extractvalue %dx.types.CBufRet.f32 %5778, 0
  %5780 = extractvalue %dx.types.CBufRet.f32 %5778, 1
  %5781 = extractvalue %dx.types.CBufRet.f32 %5778, 2
  %5782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.f32 %5782, 0
  %5784 = extractvalue %dx.types.CBufRet.f32 %5782, 1
  %5785 = extractvalue %dx.types.CBufRet.f32 %5782, 2
  %5786 = extractvalue %dx.types.CBufRet.f32 %5782, 3
  %5787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.f32 %5787, 3
  %5789 = call float @dx.op.binary.f32(i32 36, float %5775, float %5788)  ; FMin(a,b)
  %5790 = fmul fast float %5786, %5777
  %5791 = call float @dx.op.unary.f32(i32 7, float %5790)  ; Saturate(value)
  %5792 = fsub fast float %5783, %5779
  %5793 = fsub fast float %5784, %5780
  %5794 = fsub fast float %5785, %5781
  %5795 = fmul fast float %5791, %5792
  %5796 = fmul fast float %5791, %5793
  %5797 = fmul fast float %5791, %5794
  %5798 = fadd fast float %5795, %5779
  %5799 = fadd fast float %5796, %5780
  %5800 = fadd fast float %5797, %5781
  %5801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5802 = extractvalue %dx.types.CBufRet.f32 %5801, 0
  %5803 = extractvalue %dx.types.CBufRet.f32 %5801, 1
  %5804 = fadd fast float %5803, %5802
  %5805 = call float @dx.op.unary.f32(i32 7, float %5804)  ; Saturate(value)
  %5806 = extractvalue %dx.types.CBufRet.f32 %5801, 2
  %5807 = extractvalue %dx.types.CBufRet.f32 %5801, 3
  %5808 = fadd fast float %5807, %5806
  %5809 = call float @dx.op.unary.f32(i32 7, float %5808)  ; Saturate(value)
  %5810 = fmul fast float %5805, %5789
  %5811 = fmul fast float %5810, %5809
  br label %6053

; <label>:5812                                    ; preds = %5766
  br i1 %5767, label %5813, label %5834

; <label>:5813                                    ; preds = %5812
  %5814 = call float @dx.op.binary.f32(i32 36, float %5763, float %5753)  ; FMin(a,b)
  %5815 = fsub fast float %5763, %5814
  %5816 = fsub fast float %5815, %5752
  %5817 = call float @dx.op.unary.f32(i32 6, float %5816)  ; FAbs(value)
  %5818 = fadd fast float %5815, %5752
  %5819 = fmul fast float %5818, %5683
  %5820 = fadd fast float %5819, %5696
  %5821 = fmul fast float %5820, %5817
  %5822 = fsub fast float %5758, %5821
  br label %5834

; <label>:5823                                    ; preds = %5751
  br i1 %5765, label %5824, label %5834

; <label>:5824                                    ; preds = %5823
  %5825 = call float @dx.op.binary.f32(i32 35, float %5753, float %5763)  ; FMax(a,b)
  %5826 = icmp eq i32 %5702, 0
  %5827 = select i1 %5826, float %5763, float 0.000000e+00
  %5828 = fsub fast float -0.000000e+00, %5827
  %5829 = call float @dx.op.unary.f32(i32 6, float %5828)  ; FAbs(value)
  %5830 = fmul fast float %5827, %5683
  %5831 = fadd fast float %5830, %5696
  %5832 = fmul fast float %5829, %5831
  %5833 = fsub fast float %5758, %5832
  br label %5834

; <label>:5834                                    ; preds = %5824, %5823, %5813, %5812
  %5835 = phi float [ %5753, %5812 ], [ %5753, %5813 ], [ %5825, %5824 ], [ %5753, %5823 ]
  %5836 = phi float [ 0.000000e+00, %5812 ], [ %5817, %5813 ], [ %5829, %5824 ], [ 0.000000e+00, %5823 ]
  %5837 = phi float [ %5758, %5812 ], [ %5822, %5813 ], [ %5833, %5824 ], [ %5758, %5823 ]
  %5838 = phi float [ %5763, %5812 ], [ %5763, %5813 ], [ %5752, %5824 ], [ %5752, %5823 ]
  %5839 = getelementptr inbounds [3 x float], [3 x float]* %78, i32 0, i32 0
  store float -1.000000e+00, float* %5839, align 4, !tbaa !103, !noalias !114
  %5840 = getelementptr inbounds [3 x float], [3 x float]* %78, i32 0, i32 1
  store float -1.000000e+00, float* %5840, align 4, !tbaa !103, !noalias !114
  %5841 = getelementptr inbounds [3 x float], [3 x float]* %78, i32 0, i32 2
  store float -1.000000e+00, float* %5841, align 4, !tbaa !103, !noalias !114
  %5842 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 0
  store float -1.000000e+00, float* %5842, align 4, !tbaa !103, !noalias !114
  %5843 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 1
  store float -1.000000e+00, float* %5843, align 4, !tbaa !103, !noalias !114
  %5844 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 2
  store float -1.000000e+00, float* %5844, align 4, !tbaa !103, !noalias !114
  %5845 = icmp sgt i32 %5704, 0
  br i1 %5845, label %5846, label %5907

; <label>:5846                                    ; preds = %5834
  br label %5847

; <label>:5847                                    ; preds = %5896, %5846
  %5848 = phi i32 [ %5897, %5896 ], [ 0, %5846 ]
  %5849 = phi i32 [ %5898, %5896 ], [ 0, %5846 ]
  %5850 = add nuw i32 %5849, 171
  %5851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 %5850)  ; CBufferLoadLegacy(handle,regIndex)
  %5852 = extractvalue %dx.types.CBufRet.f32 %5851, 0
  %5853 = extractvalue %dx.types.CBufRet.f32 %5851, 1
  %5854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5855 = extractvalue %dx.types.CBufRet.f32 %5854, 0
  %5856 = extractvalue %dx.types.CBufRet.f32 %5854, 1
  %5857 = fsub fast float %5852, %5855
  %5858 = fsub fast float %5853, %5856
  %5859 = extractvalue %dx.types.CBufRet.f32 %5851, 2
  %5860 = fsub fast float -0.000000e+00, %5857
  %5861 = fsub fast float -0.000000e+00, %5858
  %5862 = call float @dx.op.dot2.f32(i32 54, float %5681, float %5682, float %5860, float %5861)  ; Dot2(ax,ay,bx,by)
  %5863 = fmul fast float %5862, 2.000000e+00
  %5864 = call float @dx.op.dot2.f32(i32 54, float %5860, float %5861, float %5860, float %5861)  ; Dot2(ax,ay,bx,by)
  %5865 = fmul fast float %5859, %5859
  %5866 = fsub fast float %5864, %5865
  %5867 = fmul fast float %5863, %5863
  %5868 = fmul fast float %5724, %5866
  %5869 = fsub fast float %5867, %5868
  %5870 = fcmp fast ogt float %5869, 0.000000e+00
  br i1 %5870, label %5871, label %5886

; <label>:5871                                    ; preds = %5847
  %5872 = fcmp fast ogt float %5863, 0.000000e+00
  %5873 = call float @dx.op.unary.f32(i32 24, float %5869)  ; Sqrt(value)
  %5874 = fsub fast float -0.000000e+00, %5873
  %5875 = select i1 %5872, float %5873, float %5874
  %5876 = fadd fast float %5875, %5863
  %5877 = fmul float %5876, -5.000000e-01
  %5878 = fdiv fast float %5877, %5717
  %5879 = call float @dx.op.binary.f32(i32 35, float %5878, float 0.000000e+00)  ; FMax(a,b)
  %5880 = call float @dx.op.binary.f32(i32 36, float %5752, float %5879)  ; FMin(a,b)
  %5881 = fdiv fast float %5866, %5877
  %5882 = call float @dx.op.binary.f32(i32 35, float %5881, float 0.000000e+00)  ; FMax(a,b)
  %5883 = call float @dx.op.binary.f32(i32 36, float %5752, float %5882)  ; FMin(a,b)
  %5884 = call float @dx.op.binary.f32(i32 36, float %5880, float %5883)  ; FMin(a,b)
  %5885 = call float @dx.op.binary.f32(i32 35, float %5880, float %5883)  ; FMax(a,b)
  br label %5886

; <label>:5886                                    ; preds = %5871, %5847
  %5887 = phi float [ %5885, %5871 ], [ -1.000000e+00, %5847 ]
  %5888 = phi float [ %5884, %5871 ], [ -1.000000e+00, %5847 ]
  %5889 = phi i1 [ true, %5871 ], [ false, %5847 ]
  br i1 %5889, label %5890, label %5896

; <label>:5890                                    ; preds = %5886
  %5891 = call float @dx.op.binary.f32(i32 35, float %5835, float %5888)  ; FMax(a,b)
  %5892 = getelementptr inbounds [3 x float], [3 x float]* %78, i32 0, i32 %5849
  store float %5891, float* %5892, align 4, !tbaa !103, !noalias !114
  %5893 = call float @dx.op.binary.f32(i32 35, float %5835, float %5887)  ; FMax(a,b)
  %5894 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5849
  store float %5893, float* %5894, align 4, !tbaa !103, !noalias !114
  %5895 = add nsw i32 %5848, 1
  br label %5896

; <label>:5896                                    ; preds = %5890, %5886
  %5897 = phi i32 [ %5895, %5890 ], [ %5848, %5886 ]
  %5898 = add nuw nsw i32 %5849, 1
  %5899 = icmp eq i32 %5898, %5704
  br i1 %5899, label %5900, label %5847

; <label>:5900                                    ; preds = %5896
  %5901 = load float, float* %5841, align 4, !tbaa !103, !alias.scope !130, !noalias !133
  %5902 = load float, float* %5840, align 4, !tbaa !103, !alias.scope !136, !noalias !137
  %5903 = load float, float* %5839, align 4, !tbaa !103, !alias.scope !138, !noalias !139
  %5904 = load float, float* %5844, align 4, !tbaa !103, !alias.scope !140, !noalias !143
  %5905 = load float, float* %5843, align 4, !tbaa !103, !alias.scope !146, !noalias !147
  %5906 = load float, float* %5842, align 4, !tbaa !103, !alias.scope !148, !noalias !149
  br label %5907

; <label>:5907                                    ; preds = %5900, %5834
  %5908 = phi float [ -1.000000e+00, %5834 ], [ %5906, %5900 ]
  %5909 = phi float [ -1.000000e+00, %5834 ], [ %5905, %5900 ]
  %5910 = phi float [ -1.000000e+00, %5834 ], [ %5904, %5900 ]
  %5911 = phi float [ -1.000000e+00, %5834 ], [ %5903, %5900 ]
  %5912 = phi float [ -1.000000e+00, %5834 ], [ %5902, %5900 ]
  %5913 = phi float [ -1.000000e+00, %5834 ], [ %5901, %5900 ]
  %5914 = phi i32 [ 0, %5834 ], [ %5897, %5900 ]
  %5915 = call float @dx.op.binary.f32(i32 36, float %5912, float %5913)  ; FMin(a,b)
  %5916 = call float @dx.op.binary.f32(i32 36, float %5911, float %5915)  ; FMin(a,b)
  %5917 = call float @dx.op.binary.f32(i32 35, float %5911, float %5912)  ; FMax(a,b)
  %5918 = call float @dx.op.binary.f32(i32 36, float %5917, float %5913)  ; FMin(a,b)
  %5919 = call float @dx.op.binary.f32(i32 36, float %5911, float %5912)  ; FMin(a,b)
  %5920 = call float @dx.op.binary.f32(i32 35, float %5919, float %5918)  ; FMax(a,b)
  %5921 = call float @dx.op.binary.f32(i32 35, float %5912, float %5913)  ; FMax(a,b)
  %5922 = call float @dx.op.binary.f32(i32 35, float %5911, float %5921)  ; FMax(a,b)
  store float %5916, float* %5839, align 4, !tbaa !103, !alias.scope !138, !noalias !139
  store float %5920, float* %5840, align 4, !tbaa !103, !alias.scope !136, !noalias !137
  store float %5922, float* %5841, align 4, !tbaa !103, !alias.scope !130, !noalias !133
  %5923 = call float @dx.op.binary.f32(i32 36, float %5909, float %5910)  ; FMin(a,b)
  %5924 = call float @dx.op.binary.f32(i32 36, float %5908, float %5923)  ; FMin(a,b)
  %5925 = call float @dx.op.binary.f32(i32 35, float %5908, float %5909)  ; FMax(a,b)
  %5926 = call float @dx.op.binary.f32(i32 36, float %5925, float %5910)  ; FMin(a,b)
  %5927 = call float @dx.op.binary.f32(i32 36, float %5908, float %5909)  ; FMin(a,b)
  %5928 = call float @dx.op.binary.f32(i32 35, float %5927, float %5926)  ; FMax(a,b)
  %5929 = call float @dx.op.binary.f32(i32 35, float %5909, float %5910)  ; FMax(a,b)
  %5930 = call float @dx.op.binary.f32(i32 35, float %5908, float %5929)  ; FMax(a,b)
  store float %5924, float* %5842, align 4, !tbaa !103, !alias.scope !148, !noalias !149
  store float %5928, float* %5843, align 4, !tbaa !103, !alias.scope !146, !noalias !147
  store float %5930, float* %5844, align 4, !tbaa !103, !alias.scope !140, !noalias !143
  %5931 = sub nsw i32 3, %5914
  %5932 = icmp sgt i32 %5931, 2
  br i1 %5932, label %5933, label %5971

; <label>:5933                                    ; preds = %5907
  %5934 = icmp eq i32 %5702, 0
  %5935 = fsub fast float %5752, %5836
  %5936 = select i1 %5934, float %5935, float %5836
  %5937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5938 = extractvalue %dx.types.CBufRet.f32 %5937, 0
  %5939 = extractvalue %dx.types.CBufRet.f32 %5937, 1
  %5940 = extractvalue %dx.types.CBufRet.f32 %5937, 2
  %5941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5942 = extractvalue %dx.types.CBufRet.f32 %5941, 0
  %5943 = extractvalue %dx.types.CBufRet.f32 %5941, 1
  %5944 = extractvalue %dx.types.CBufRet.f32 %5941, 2
  %5945 = extractvalue %dx.types.CBufRet.f32 %5941, 3
  %5946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5947 = extractvalue %dx.types.CBufRet.f32 %5946, 3
  %5948 = call float @dx.op.binary.f32(i32 36, float %5837, float %5947)  ; FMin(a,b)
  %5949 = fmul fast float %5945, %5936
  %5950 = call float @dx.op.unary.f32(i32 7, float %5949)  ; Saturate(value)
  %5951 = fsub fast float %5942, %5938
  %5952 = fsub fast float %5943, %5939
  %5953 = fsub fast float %5944, %5940
  %5954 = fmul fast float %5950, %5951
  %5955 = fmul fast float %5950, %5952
  %5956 = fmul fast float %5950, %5953
  %5957 = fadd fast float %5954, %5938
  %5958 = fadd fast float %5955, %5939
  %5959 = fadd fast float %5956, %5940
  %5960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5960, 0
  %5962 = extractvalue %dx.types.CBufRet.f32 %5960, 1
  %5963 = fadd fast float %5962, %5961
  %5964 = call float @dx.op.unary.f32(i32 7, float %5963)  ; Saturate(value)
  %5965 = extractvalue %dx.types.CBufRet.f32 %5960, 2
  %5966 = extractvalue %dx.types.CBufRet.f32 %5960, 3
  %5967 = fadd fast float %5966, %5965
  %5968 = call float @dx.op.unary.f32(i32 7, float %5967)  ; Saturate(value)
  %5969 = fmul fast float %5964, %5948
  %5970 = fmul fast float %5969, %5968
  br label %6053

; <label>:5971                                    ; preds = %5907
  %5972 = getelementptr inbounds [3 x float], [3 x float]* %78, i32 0, i32 %5931
  %5973 = load float, float* %5972, align 4, !tbaa !103, !noalias !114
  %5974 = fcmp fast olt float %5973, %5838
  %5975 = icmp sgt i32 %5914, 0
  %5976 = and i1 %5975, %5974
  br i1 %5976, label %5977, label %6014

; <label>:5977                                    ; preds = %5971
  br label %5978

; <label>:5978                                    ; preds = %6007, %5977
  %5979 = phi float [ %6008, %6007 ], [ %5836, %5977 ]
  %5980 = phi float [ %6009, %6007 ], [ %5837, %5977 ]
  %5981 = phi float [ %5989, %6007 ], [ %5973, %5977 ]
  %5982 = phi i32 [ %5986, %6007 ], [ %5931, %5977 ]
  %5983 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %5982
  %5984 = load float, float* %5983, align 4, !tbaa !103, !noalias !114
  %5985 = icmp slt i32 %5982, 2
  %5986 = add nsw i32 %5982, 1
  %5987 = getelementptr inbounds [3 x float], [3 x float]* %78, i32 0, i32 %5986
  %5988 = load float, float* %5987, align 4, !tbaa !103, !noalias !114
  %5989 = select i1 %5985, float %5988, float %5752
  %5990 = call float @dx.op.binary.f32(i32 36, float %5989, float %5984)  ; FMin(a,b)
  %5991 = call float @dx.op.binary.f32(i32 36, float %5838, float %5990)  ; FMin(a,b)
  %5992 = icmp eq i32 %5702, 0
  %5993 = fadd fast float %5991, %5981
  %5994 = fmul fast float %5993, %5683
  %5995 = fadd fast float %5994, %5696
  br i1 %5992, label %6001, label %5996

; <label>:5996                                    ; preds = %5978
  %5997 = fsub fast float %5991, %5981
  %5998 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5997)  ; FMax(a,b)
  %5999 = fmul fast float %5998, %5995
  %6000 = fadd fast float %5999, %5980
  br label %6007

; <label>:6001                                    ; preds = %5978
  %6002 = fsub fast float %5981, %5991
  %6003 = call float @dx.op.unary.f32(i32 6, float %6002)  ; FAbs(value)
  %6004 = fadd fast float %6003, %5979
  %6005 = fmul fast float %6003, %5995
  %6006 = fsub fast float %5980, %6005
  br label %6007

; <label>:6007                                    ; preds = %6001, %5996
  %6008 = phi float [ %5998, %5996 ], [ %6004, %6001 ]
  %6009 = phi float [ %6000, %5996 ], [ %6006, %6001 ]
  %6010 = fcmp fast olt float %5989, %5838
  %6011 = icmp slt i32 %5986, 3
  %6012 = and i1 %6011, %6010
  br i1 %6012, label %5978, label %6013

; <label>:6013                                    ; preds = %6007
  br label %6014

; <label>:6014                                    ; preds = %6013, %5971
  %6015 = phi float [ %5836, %5971 ], [ %6008, %6013 ]
  %6016 = phi float [ %5837, %5971 ], [ %6009, %6013 ]
  %6017 = fsub fast float %5752, %6015
  %6018 = select i1 %5754, float %6015, float %6017
  %6019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6020 = extractvalue %dx.types.CBufRet.f32 %6019, 0
  %6021 = extractvalue %dx.types.CBufRet.f32 %6019, 1
  %6022 = extractvalue %dx.types.CBufRet.f32 %6019, 2
  %6023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6024 = extractvalue %dx.types.CBufRet.f32 %6023, 0
  %6025 = extractvalue %dx.types.CBufRet.f32 %6023, 1
  %6026 = extractvalue %dx.types.CBufRet.f32 %6023, 2
  %6027 = extractvalue %dx.types.CBufRet.f32 %6023, 3
  %6028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6029 = extractvalue %dx.types.CBufRet.f32 %6028, 3
  %6030 = call float @dx.op.binary.f32(i32 36, float %6016, float %6029)  ; FMin(a,b)
  %6031 = fmul fast float %6027, %6018
  %6032 = call float @dx.op.unary.f32(i32 7, float %6031)  ; Saturate(value)
  %6033 = fsub fast float %6024, %6020
  %6034 = fsub fast float %6025, %6021
  %6035 = fsub fast float %6026, %6022
  %6036 = fmul fast float %6032, %6033
  %6037 = fmul fast float %6032, %6034
  %6038 = fmul fast float %6032, %6035
  %6039 = fadd fast float %6036, %6020
  %6040 = fadd fast float %6037, %6021
  %6041 = fadd fast float %6038, %6022
  %6042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6043 = extractvalue %dx.types.CBufRet.f32 %6042, 0
  %6044 = extractvalue %dx.types.CBufRet.f32 %6042, 1
  %6045 = fadd fast float %6044, %6043
  %6046 = call float @dx.op.unary.f32(i32 7, float %6045)  ; Saturate(value)
  %6047 = extractvalue %dx.types.CBufRet.f32 %6042, 2
  %6048 = extractvalue %dx.types.CBufRet.f32 %6042, 3
  %6049 = fadd fast float %6048, %6047
  %6050 = call float @dx.op.unary.f32(i32 7, float %6049)  ; Saturate(value)
  %6051 = fmul fast float %6046, %6030
  %6052 = fmul fast float %6051, %6050
  br label %6053

; <label>:6053                                    ; preds = %6014, %5933, %5768, %5750, %5748
  %6054 = phi float [ %5777, %5768 ], [ %5936, %5933 ], [ %6018, %6014 ], [ 0.000000e+00, %5748 ], [ 0.000000e+00, %5750 ]
  %6055 = phi float [ %5811, %5768 ], [ %5970, %5933 ], [ %6052, %6014 ], [ 0.000000e+00, %5748 ], [ 0.000000e+00, %5750 ]
  %6056 = phi float [ %5798, %5768 ], [ %5957, %5933 ], [ %6039, %6014 ], [ 0.000000e+00, %5748 ], [ 0.000000e+00, %5750 ]
  %6057 = phi float [ %5799, %5768 ], [ %5958, %5933 ], [ %6040, %6014 ], [ 0.000000e+00, %5748 ], [ 0.000000e+00, %5750 ]
  %6058 = phi float [ %5800, %5768 ], [ %5959, %5933 ], [ %6041, %6014 ], [ 0.000000e+00, %5748 ], [ 0.000000e+00, %5750 ]
  %6059 = fmul fast float %5691, %6055
  %6060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6061 = extractvalue %dx.types.CBufRet.f32 %6060, 2
  %6062 = fsub fast float %5698, %6061
  %6063 = fcmp fast olt float %6059, -2.000000e+01
  %6064 = call float @dx.op.unary.f32(i32 21, float %6059)  ; Exp(value)
  %6065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6066 = extractvalue %dx.types.CBufRet.f32 %6065, 2
  %6067 = extractvalue %dx.types.CBufRet.f32 %6065, 3
  %6068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6069 = extractvalue %dx.types.CBufRet.f32 %6068, 2
  %6070 = fmul fast float %6067, %6062
  %6071 = call float @dx.op.unary.f32(i32 7, float %6070)  ; Saturate(value)
  %6072 = fsub fast float 1.000000e+00, %6071
  %6073 = fmul fast float %5683, 5.000000e-01
  %6074 = fadd fast float %6073, 5.000000e-01
  %6075 = call float @dx.op.unary.f32(i32 7, float %6074)  ; Saturate(value)
  %6076 = fsub fast float 1.000000e+00, %6075
  %6077 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6072)  ; FMax(a,b)
  %6078 = fdiv fast float %6076, %6077
  %6079 = fsub fast float %6062, %5640
  %6080 = call float @dx.op.unary.f32(i32 6, float %6079)  ; FAbs(value)
  %6081 = fmul fast float %6080, %6066
  %6082 = call float @dx.op.unary.f32(i32 7, float %6078)  ; Saturate(value)
  %6083 = fsub fast float 1.000000e+00, %6081
  %6084 = fmul fast float %6083, %6082
  %6085 = fadd fast float %6084, %6081
  %6086 = fmul fast float %6069, %6062
  %6087 = call float @dx.op.unary.f32(i32 7, float %6086)  ; Saturate(value)
  %6088 = fsub fast float 1.000000e+00, %6085
  %6089 = fmul fast float %6088, %6087
  %6090 = fadd fast float %6089, %6085
  %6091 = call float @dx.op.unary.f32(i32 7, float %6090)  ; Saturate(value)
  %6092 = fadd fast float %6064, -1.000000e+00
  %6093 = select i1 %6063, float -1.000000e+00, float %6092
  %6094 = fmul fast float %6091, %6093
  %6095 = fadd fast float %6094, 1.000000e+00
  %6096 = fsub fast float -0.000000e+00, %6094
  %6097 = fmul fast float %6056, %6096
  %6098 = fmul fast float %6057, %6096
  %6099 = fmul fast float %6058, %6096
  br label %6100

; <label>:6100                                    ; preds = %6053, %5649
  %6101 = phi float [ %6054, %6053 ], [ 0.000000e+00, %5649 ]
  %6102 = phi float [ %6095, %6053 ], [ 1.000000e+00, %5649 ]
  %6103 = phi float [ %6097, %6053 ], [ 0.000000e+00, %5649 ]
  %6104 = phi float [ %6098, %6053 ], [ 0.000000e+00, %5649 ]
  %6105 = phi float [ %6099, %6053 ], [ 0.000000e+00, %5649 ]
  %6106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6107 = extractvalue %dx.types.CBufRet.f32 %6106, 1
  %6108 = fsub fast float 1.000000e+00, %6102
  %6109 = fmul fast float %6108, %5684
  %6110 = fmul fast float %6109, %6107
  %6111 = fsub fast float %5684, %6110
  br i1 %5677, label %6112, label %6141, !dx.controlflow.hints !150

; <label>:6112                                    ; preds = %6100
  %6113 = fmul fast float %5685, %5674
  %6114 = fadd fast float %6113, %5675
  %6115 = call float @dx.op.unary.f32(i32 7, float %6114)  ; Saturate(value)
  %6116 = fmul fast float %5656, %6111
  %6117 = fsub fast float -0.000000e+00, %6116
  %6118 = fmul fast float %5657, %6111
  %6119 = fsub fast float -0.000000e+00, %6118
  %6120 = call float @dx.op.unary.f32(i32 21, float %6117)  ; Exp(value)
  %6121 = call float @dx.op.unary.f32(i32 21, float %6119)  ; Exp(value)
  %6122 = call float @dx.op.binary.f32(i32 35, float %5664, float %6120)  ; FMax(a,b)
  %6123 = call float @dx.op.binary.f32(i32 35, float %5664, float %6121)  ; FMax(a,b)
  %6124 = fsub fast float %6123, %6122
  %6125 = fmul fast float %6124, %6115
  %6126 = fadd fast float %6125, %6122
  %6127 = call float @dx.op.unary.f32(i32 7, float %6126)  ; Saturate(value)
  %6128 = fsub fast float %5661, %5666
  %6129 = fsub fast float %5662, %5667
  %6130 = fsub fast float %5663, %5668
  %6131 = fmul fast float %6115, %6128
  %6132 = fmul fast float %6115, %6129
  %6133 = fmul fast float %6115, %6130
  %6134 = fadd fast float %6131, %5666
  %6135 = fadd fast float %6132, %5667
  %6136 = fadd fast float %6133, %5668
  %6137 = fsub fast float 1.000000e+00, %6127
  %6138 = fmul fast float %6137, %6134
  %6139 = fmul fast float %6137, %6135
  %6140 = fmul fast float %6137, %6136
  br label %6200

; <label>:6141                                    ; preds = %6100
  %6142 = fmul fast float %6111, %5673
  %6143 = call float @dx.op.unary.f32(i32 7, float %6142)  ; Saturate(value)
  %6144 = fsub fast float 2.000000e+00, %6143
  %6145 = fmul fast float %6143, 9.921875e-01
  %6146 = fmul fast float %6145, %6144
  %6147 = fadd fast float %6146, 3.906250e-03
  %6148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %40, float %6147, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6149 = extractvalue %dx.types.ResRet.f32 %6148, 0
  %6150 = fsub fast float %6143, %6149
  %6151 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6150)  ; FMax(a,b)
  %6152 = fmul fast float %5659, %5640
  %6153 = call float @dx.op.unary.f32(i32 6, float %6152)  ; FAbs(value)
  %6154 = fcmp fast ogt float %6153, 0x3EB0C6F7A0000000
  br i1 %6154, label %6155, label %6161, !dx.controlflow.hints !151

; <label>:6155                                    ; preds = %6141
  %6156 = fmul fast float %6152, 0xBFF7154760000000
  %6157 = call float @dx.op.unary.f32(i32 21, float %6156)  ; Exp(value)
  %6158 = fsub fast float 1.000000e+00, %6157
  %6159 = fdiv fast float %6158, %6152
  %6160 = fmul fast float %6159, %5669
  br label %6161

; <label>:6161                                    ; preds = %6155, %6141
  %6162 = phi float [ %6160, %6155 ], [ %5669, %6141 ]
  %6163 = fadd fast float %6162, %5671
  %6164 = fmul fast float %6163, %6151
  %6165 = fmul fast float %5656, %6164
  %6166 = fsub fast float -0.000000e+00, %6165
  %6167 = fmul fast float %5657, %6164
  %6168 = fsub fast float -0.000000e+00, %6167
  %6169 = fmul fast float %5658, %6164
  %6170 = fsub fast float -0.000000e+00, %6169
  %6171 = call float @dx.op.unary.f32(i32 21, float %6166)  ; Exp(value)
  %6172 = call float @dx.op.unary.f32(i32 21, float %6168)  ; Exp(value)
  %6173 = call float @dx.op.unary.f32(i32 21, float %6170)  ; Exp(value)
  %6174 = fmul fast float %5685, %5685
  %6175 = fadd fast float %6174, 1.000000e+00
  %6176 = fmul fast float %6175, 0x3FAE8EC8A0000000
  %6177 = fmul fast float %6176, %5666
  %6178 = fmul fast float %6176, %5667
  %6179 = fmul fast float %6176, %5668
  %6180 = fmul fast float %5685, %5664
  %6181 = fsub fast float 1.000000e+00, %6180
  %6182 = fmul fast float %5664, %5664
  %6183 = fsub fast float 1.000000e+00, %6182
  %6184 = fmul fast float %6183, 0x3FB45F3060000000
  %6185 = fmul fast float %6181, %6181
  %6186 = fdiv fast float 1.000000e+00, %6185
  %6187 = fmul fast float %6184, %6186
  %6188 = fmul fast float %6187, %5661
  %6189 = fmul fast float %6187, %5662
  %6190 = fmul fast float %6187, %5663
  %6191 = fadd fast float %6188, %6177
  %6192 = fadd fast float %6189, %6178
  %6193 = fadd fast float %6190, %6179
  %6194 = fsub fast float 1.000000e+00, %6171
  %6195 = fsub fast float 1.000000e+00, %6172
  %6196 = fsub fast float 1.000000e+00, %6173
  %6197 = fmul fast float %6191, %6194
  %6198 = fmul fast float %6192, %6195
  %6199 = fmul fast float %6193, %6196
  br label %6200

; <label>:6200                                    ; preds = %6161, %6112
  %6201 = phi float [ %6138, %6112 ], [ %6197, %6161 ]
  %6202 = phi float [ %6139, %6112 ], [ %6198, %6161 ]
  %6203 = phi float [ %6140, %6112 ], [ %6199, %6161 ]
  %6204 = phi float [ %6127, %6112 ], [ %6171, %6161 ]
  %6205 = phi float [ %6127, %6112 ], [ %6172, %6161 ]
  %6206 = phi float [ %6127, %6112 ], [ %6173, %6161 ]
  br i1 %5693, label %6207, label %6405, !dx.controlflow.hints !152

; <label>:6207                                    ; preds = %6200
  %6208 = extractvalue %dx.types.CBufRet.f32 %6106, 0
  %6209 = fmul fast float %6208, %6108
  %6210 = fsub fast float %6103, %6201
  %6211 = fsub fast float %6104, %6202
  %6212 = fsub fast float %6105, %6203
  %6213 = fmul fast float %6209, %6210
  %6214 = fmul fast float %6209, %6211
  %6215 = fmul fast float %6209, %6212
  %6216 = fadd fast float %6213, %6201
  %6217 = fadd fast float %6214, %6202
  %6218 = fadd fast float %6215, %6203
  %6219 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6204)  ; FMax(a,b)
  %6220 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6205)  ; FMax(a,b)
  %6221 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6206)  ; FMax(a,b)
  %6222 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6102)  ; FMax(a,b)
  %6223 = call float @dx.op.binary.f32(i32 35, float %6101, float %6111)  ; FMax(a,b)
  %6224 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6223)  ; FMax(a,b)
  %6225 = fdiv fast float %6101, %6224
  %6226 = call float @dx.op.unary.f32(i32 7, float %6225)  ; Saturate(value)
  %6227 = fdiv fast float %6111, %6224
  %6228 = call float @dx.op.unary.f32(i32 7, float %6227)  ; Saturate(value)
  %6229 = fcmp fast une float %6222, 1.000000e+00
  br i1 %6229, label %6230, label %6243, !dx.controlflow.hints !153

; <label>:6230                                    ; preds = %6207
  %6231 = call float @dx.op.unary.f32(i32 23, float %6222)  ; Log(value)
  %6232 = fmul fast float %6231, 0x3FE62E4300000000
  %6233 = fmul fast float %6103, %6232
  %6234 = fsub fast float -0.000000e+00, %6233
  %6235 = fmul fast float %6104, %6232
  %6236 = fsub fast float -0.000000e+00, %6235
  %6237 = fmul fast float %6105, %6232
  %6238 = fsub fast float -0.000000e+00, %6237
  %6239 = fsub fast float 1.000000e+00, %6222
  %6240 = fdiv fast float %6234, %6239
  %6241 = fdiv fast float %6236, %6239
  %6242 = fdiv fast float %6238, %6239
  br label %6243

; <label>:6243                                    ; preds = %6230, %6207
  %6244 = phi float [ %6240, %6230 ], [ %6103, %6207 ]
  %6245 = phi float [ %6241, %6230 ], [ %6104, %6207 ]
  %6246 = phi float [ %6242, %6230 ], [ %6105, %6207 ]
  %6247 = phi float [ %6232, %6230 ], [ 0.000000e+00, %6207 ]
  %6248 = fcmp fast une float %6219, 1.000000e+00
  br i1 %6248, label %6249, label %6256, !dx.controlflow.hints !154

; <label>:6249                                    ; preds = %6243
  %6250 = call float @dx.op.unary.f32(i32 23, float %6219)  ; Log(value)
  %6251 = fmul fast float %6250, 0x3FE62E4300000000
  %6252 = fmul fast float %6216, %6251
  %6253 = fsub fast float -0.000000e+00, %6252
  %6254 = fsub fast float 1.000000e+00, %6219
  %6255 = fdiv fast float %6253, %6254
  br label %6256

; <label>:6256                                    ; preds = %6249, %6243
  %6257 = phi float [ %6255, %6249 ], [ %6216, %6243 ]
  %6258 = phi float [ %6251, %6249 ], [ 0.000000e+00, %6243 ]
  %6259 = fcmp fast une float %6220, 1.000000e+00
  br i1 %6259, label %6260, label %6267, !dx.controlflow.hints !154

; <label>:6260                                    ; preds = %6256
  %6261 = call float @dx.op.unary.f32(i32 23, float %6220)  ; Log(value)
  %6262 = fmul fast float %6261, 0x3FE62E4300000000
  %6263 = fmul fast float %6217, %6262
  %6264 = fsub fast float -0.000000e+00, %6263
  %6265 = fsub fast float 1.000000e+00, %6220
  %6266 = fdiv fast float %6264, %6265
  br label %6267

; <label>:6267                                    ; preds = %6260, %6256
  %6268 = phi float [ %6266, %6260 ], [ %6217, %6256 ]
  %6269 = phi float [ %6262, %6260 ], [ 0.000000e+00, %6256 ]
  %6270 = fcmp fast une float %6221, 1.000000e+00
  br i1 %6270, label %6271, label %6278, !dx.controlflow.hints !154

; <label>:6271                                    ; preds = %6267
  %6272 = call float @dx.op.unary.f32(i32 23, float %6221)  ; Log(value)
  %6273 = fmul fast float %6272, 0x3FE62E4300000000
  %6274 = fmul fast float %6218, %6273
  %6275 = fsub fast float -0.000000e+00, %6274
  %6276 = fsub fast float 1.000000e+00, %6221
  %6277 = fdiv fast float %6275, %6276
  br label %6278

; <label>:6278                                    ; preds = %6271, %6267
  %6279 = phi float [ %6277, %6271 ], [ %6218, %6267 ]
  %6280 = phi float [ %6273, %6271 ], [ 0.000000e+00, %6267 ]
  %6281 = fmul fast float %6244, %6228
  %6282 = fmul fast float %6245, %6228
  %6283 = fmul fast float %6246, %6228
  %6284 = fmul fast float %6247, %6228
  %6285 = fmul fast float %6257, %6226
  %6286 = fmul fast float %6268, %6226
  %6287 = fmul fast float %6279, %6226
  %6288 = fmul fast float %6258, %6226
  %6289 = fmul fast float %6269, %6226
  %6290 = fmul fast float %6280, %6226
  %6291 = fadd fast float %6285, %6281
  %6292 = fadd fast float %6286, %6282
  %6293 = fadd fast float %6287, %6283
  %6294 = fadd fast float %6288, %6284
  %6295 = fadd fast float %6289, %6284
  %6296 = fadd fast float %6290, %6284
  %6297 = fcmp fast une float %6294, 0.000000e+00
  br i1 %6297, label %6298, label %6305, !dx.controlflow.hints !155

; <label>:6298                                    ; preds = %6278
  %6299 = fmul fast float %6294, 0x3FF7154760000000
  %6300 = call float @dx.op.unary.f32(i32 21, float %6299)  ; Exp(value)
  %6301 = fsub fast float 1.000000e+00, %6300
  %6302 = fmul fast float %6291, %6301
  %6303 = fsub fast float -0.000000e+00, %6302
  %6304 = fdiv fast float %6303, %6294
  br label %6305

; <label>:6305                                    ; preds = %6298, %6278
  %6306 = phi float [ %6300, %6298 ], [ 1.000000e+00, %6278 ]
  %6307 = phi float [ %6304, %6298 ], [ %6291, %6278 ]
  %6308 = fcmp fast une float %6295, 0.000000e+00
  br i1 %6308, label %6309, label %6316, !dx.controlflow.hints !155

; <label>:6309                                    ; preds = %6305
  %6310 = fmul fast float %6295, 0x3FF7154760000000
  %6311 = call float @dx.op.unary.f32(i32 21, float %6310)  ; Exp(value)
  %6312 = fsub fast float 1.000000e+00, %6311
  %6313 = fmul fast float %6292, %6312
  %6314 = fsub fast float -0.000000e+00, %6313
  %6315 = fdiv fast float %6314, %6295
  br label %6316

; <label>:6316                                    ; preds = %6309, %6305
  %6317 = phi float [ %6311, %6309 ], [ 1.000000e+00, %6305 ]
  %6318 = phi float [ %6315, %6309 ], [ %6292, %6305 ]
  %6319 = fcmp fast une float %6296, 0.000000e+00
  br i1 %6319, label %6320, label %6327, !dx.controlflow.hints !155

; <label>:6320                                    ; preds = %6316
  %6321 = fmul fast float %6296, 0x3FF7154760000000
  %6322 = call float @dx.op.unary.f32(i32 21, float %6321)  ; Exp(value)
  %6323 = fsub fast float 1.000000e+00, %6322
  %6324 = fmul fast float %6293, %6323
  %6325 = fsub fast float -0.000000e+00, %6324
  %6326 = fdiv fast float %6325, %6296
  br label %6327

; <label>:6327                                    ; preds = %6320, %6316
  %6328 = phi float [ %6322, %6320 ], [ 1.000000e+00, %6316 ]
  %6329 = phi float [ %6326, %6320 ], [ %6293, %6316 ]
  %6330 = fcmp fast ogt float %6226, %6228
  br i1 %6330, label %6331, label %6351

; <label>:6331                                    ; preds = %6327
  %6332 = fsub fast float 1.000000e+00, %6228
  %6333 = fmul fast float %6244, %6332
  %6334 = fmul fast float %6245, %6332
  %6335 = fmul fast float %6246, %6332
  %6336 = fmul fast float %6247, %6332
  %6337 = fcmp fast une float %6336, 0.000000e+00
  br i1 %6337, label %6338, label %6389, !dx.controlflow.hints !156

; <label>:6338                                    ; preds = %6331
  %6339 = fmul fast float %6336, 0x3FF7154760000000
  %6340 = call float @dx.op.unary.f32(i32 21, float %6339)  ; Exp(value)
  %6341 = fsub fast float 1.000000e+00, %6340
  %6342 = fmul fast float %6333, %6341
  %6343 = fsub fast float -0.000000e+00, %6342
  %6344 = fmul fast float %6334, %6341
  %6345 = fsub fast float -0.000000e+00, %6344
  %6346 = fmul fast float %6335, %6341
  %6347 = fsub fast float -0.000000e+00, %6346
  %6348 = fdiv fast float %6343, %6336
  %6349 = fdiv fast float %6345, %6336
  %6350 = fdiv fast float %6347, %6336
  br label %6389

; <label>:6351                                    ; preds = %6327
  %6352 = fsub fast float 1.000000e+00, %6226
  %6353 = fmul fast float %6257, %6352
  %6354 = fmul fast float %6268, %6352
  %6355 = fmul fast float %6279, %6352
  %6356 = fmul fast float %6258, %6352
  %6357 = fmul fast float %6269, %6352
  %6358 = fmul fast float %6280, %6352
  %6359 = fcmp fast une float %6356, 0.000000e+00
  br i1 %6359, label %6360, label %6367, !dx.controlflow.hints !155

; <label>:6360                                    ; preds = %6351
  %6361 = fmul fast float %6356, 0x3FF7154760000000
  %6362 = call float @dx.op.unary.f32(i32 21, float %6361)  ; Exp(value)
  %6363 = fsub fast float 1.000000e+00, %6362
  %6364 = fmul fast float %6353, %6363
  %6365 = fsub fast float -0.000000e+00, %6364
  %6366 = fdiv fast float %6365, %6356
  br label %6367

; <label>:6367                                    ; preds = %6360, %6351
  %6368 = phi float [ %6366, %6360 ], [ %6353, %6351 ]
  %6369 = phi float [ %6362, %6360 ], [ 1.000000e+00, %6351 ]
  %6370 = fcmp fast une float %6357, 0.000000e+00
  br i1 %6370, label %6371, label %6378, !dx.controlflow.hints !155

; <label>:6371                                    ; preds = %6367
  %6372 = fmul fast float %6357, 0x3FF7154760000000
  %6373 = call float @dx.op.unary.f32(i32 21, float %6372)  ; Exp(value)
  %6374 = fsub fast float 1.000000e+00, %6373
  %6375 = fmul fast float %6354, %6374
  %6376 = fsub fast float -0.000000e+00, %6375
  %6377 = fdiv fast float %6376, %6357
  br label %6378

; <label>:6378                                    ; preds = %6371, %6367
  %6379 = phi float [ %6377, %6371 ], [ %6354, %6367 ]
  %6380 = phi float [ %6373, %6371 ], [ 1.000000e+00, %6367 ]
  %6381 = fcmp fast une float %6358, 0.000000e+00
  br i1 %6381, label %6382, label %6389, !dx.controlflow.hints !155

; <label>:6382                                    ; preds = %6378
  %6383 = fmul fast float %6358, 0x3FF7154760000000
  %6384 = call float @dx.op.unary.f32(i32 21, float %6383)  ; Exp(value)
  %6385 = fsub fast float 1.000000e+00, %6384
  %6386 = fmul fast float %6355, %6385
  %6387 = fsub fast float -0.000000e+00, %6386
  %6388 = fdiv fast float %6387, %6358
  br label %6389

; <label>:6389                                    ; preds = %6382, %6378, %6338, %6331
  %6390 = phi float [ %6388, %6382 ], [ %6350, %6338 ], [ %6335, %6331 ], [ %6355, %6378 ]
  %6391 = phi float [ %6379, %6382 ], [ %6349, %6338 ], [ %6334, %6331 ], [ %6379, %6378 ]
  %6392 = phi float [ %6368, %6382 ], [ %6348, %6338 ], [ %6333, %6331 ], [ %6368, %6378 ]
  %6393 = phi float [ %6384, %6382 ], [ %6340, %6338 ], [ 1.000000e+00, %6331 ], [ 1.000000e+00, %6378 ]
  %6394 = phi float [ %6380, %6382 ], [ %6340, %6338 ], [ 1.000000e+00, %6331 ], [ %6380, %6378 ]
  %6395 = phi float [ %6369, %6382 ], [ %6340, %6338 ], [ 1.000000e+00, %6331 ], [ %6369, %6378 ]
  %6396 = fmul fast float %6395, %6307
  %6397 = fmul fast float %6394, %6318
  %6398 = fmul fast float %6393, %6329
  %6399 = fadd fast float %6396, %6392
  %6400 = fadd fast float %6397, %6391
  %6401 = fadd fast float %6398, %6390
  %6402 = fmul fast float %6395, %6306
  %6403 = fmul fast float %6394, %6317
  %6404 = fmul fast float %6393, %6328
  br label %6405

; <label>:6405                                    ; preds = %6389, %6200
  %6406 = phi float [ %6404, %6389 ], [ %6206, %6200 ]
  %6407 = phi float [ %6403, %6389 ], [ %6205, %6200 ]
  %6408 = phi float [ %6402, %6389 ], [ %6204, %6200 ]
  %6409 = phi float [ %6401, %6389 ], [ %6203, %6200 ]
  %6410 = phi float [ %6400, %6389 ], [ %6202, %6200 ]
  %6411 = phi float [ %6399, %6389 ], [ %6201, %6200 ]
  %6412 = fmul fast float %6411, %5351
  %6413 = fmul fast float %6410, %5353
  %6414 = fmul fast float %6409, %5355
  %6415 = fmul fast float %6408, %5648
  %6416 = call float @dx.op.dot3.f32(i32 55, float %6408, float %6407, float %6406, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6417 = call float @dx.op.dot3.f32(i32 55, float %6412, float %6413, float %6414, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6418 = select i1 %193, float %6416, float %6408
  %6419 = select i1 %193, float %6416, float %6407
  %6420 = select i1 %193, float 1.000000e+00, float %6406
  %6421 = select i1 %193, float %6417, float %6412
  %6422 = select i1 %193, float 0.000000e+00, float %6413
  %6423 = select i1 %193, float 0.000000e+00, float %6414
  %6424 = fmul fast float %6418, %5642
  %6425 = fmul fast float %6419, %5643
  %6426 = fmul fast float %6420, %5644
  %6427 = fadd fast float %6424, %6421
  %6428 = fadd fast float %6425, %6422
  %6429 = fadd fast float %6423, %6426
  %6430 = fmul fast float %6418, %5645
  %6431 = fmul fast float %6419, %5646
  %6432 = fmul fast float %6420, %5647
  %6433 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6434 = extractvalue %dx.types.CBufRet.i32 %6433, 0
  %6435 = icmp eq i32 %6434, 0
  br i1 %6435, label %6803, label %6436, !dx.controlflow.hints !157

; <label>:6436                                    ; preds = %6405
  %6437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6438 = extractvalue %dx.types.CBufRet.f32 %6437, 2
  %6439 = extractvalue %dx.types.CBufRet.f32 %6437, 3
  %6440 = fmul fast float %6438, %84
  %6441 = fmul fast float %6439, %85
  %6442 = fmul fast float %6440, 2.000000e+00
  %6443 = fmul fast float %6441, 2.000000e+00
  %6444 = fsub fast float 1.000000e+00, %6442
  %6445 = fsub fast float 1.000000e+00, %6443
  %6446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6447 = extractvalue %dx.types.CBufRet.f32 %6446, 0
  %6448 = extractvalue %dx.types.CBufRet.f32 %6446, 1
  %6449 = extractvalue %dx.types.CBufRet.f32 %6446, 2
  %6450 = fmul fast float %6444, %6447
  %6451 = fmul fast float %6444, %6448
  %6452 = fmul fast float %6444, %6449
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 0
  %6455 = extractvalue %dx.types.CBufRet.f32 %6453, 1
  %6456 = extractvalue %dx.types.CBufRet.f32 %6453, 2
  %6457 = fmul fast float %6445, %6454
  %6458 = fmul fast float %6445, %6455
  %6459 = fmul fast float %6445, %6456
  %6460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6461 = extractvalue %dx.types.CBufRet.f32 %6460, 0
  %6462 = extractvalue %dx.types.CBufRet.f32 %6460, 1
  %6463 = extractvalue %dx.types.CBufRet.f32 %6460, 2
  %6464 = fadd fast float %6457, %6461
  %6465 = fadd fast float %6464, %6450
  %6466 = fadd fast float %6458, %6462
  %6467 = fadd fast float %6466, %6451
  %6468 = fadd fast float %6459, %6463
  %6469 = fadd fast float %6468, %6452
  %6470 = fmul fast float %6465, %5641
  %6471 = fmul fast float %6467, %5641
  %6472 = fmul fast float %6469, %5641
  %6473 = fmul fast float %6470, %6470
  %6474 = fmul fast float %6471, %6471
  %6475 = fadd fast float %6473, %6474
  %6476 = fmul fast float %6472, %6472
  %6477 = fadd fast float %6475, %6476
  %6478 = call float @dx.op.unary.f32(i32 24, float %6477)  ; Sqrt(value)
  %6479 = extractvalue %dx.types.CBufRet.f32 %5366, 0
  %6480 = fsub fast float %6478, %6479
  %6481 = extractvalue %dx.types.CBufRet.f32 %5366, 2
  %6482 = fmul fast float %6480, %6481
  %6483 = call float @dx.op.unary.f32(i32 7, float %6482)  ; Saturate(value)
  %6484 = fadd fast float %6483, -5.000000e-01
  %6485 = fmul fast float %6484, 2.000000e+00
  %6486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6487 = extractvalue %dx.types.CBufRet.f32 %6486, 2
  %6488 = call float @dx.op.binary.f32(i32 36, float %6487, float %6485)  ; FMin(a,b)
  %6489 = fsub fast float -0.000000e+00, %6487
  %6490 = fcmp fast ogt float %6488, %6489
  br i1 %6490, label %6491, label %6803, !dx.controlflow.hints !158

; <label>:6491                                    ; preds = %6436
  %6492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6493 = extractvalue %dx.types.CBufRet.f32 %6492, 3
  %6494 = fcmp fast ogt float %6493, 0.000000e+00
  br i1 %6494, label %6495, label %6570, !dx.controlflow.hints !159

; <label>:6495                                    ; preds = %6491
  %6496 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %6497 = extractvalue %dx.types.Dimensions %6496, 0
  %6498 = sitofp i32 %6497 to float
  %6499 = extractvalue %dx.types.Dimensions %6496, 1
  %6500 = sitofp i32 %6499 to float
  %6501 = fmul fast float %6440, %6498
  %6502 = fmul fast float %6441, %6500
  %6503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6504 = extractvalue %dx.types.CBufRet.f32 %6503, 1
  %6505 = fsub fast float -0.000000e+00, %6504
  %6506 = fptoui float %6505 to i32
  %6507 = fptoui float %6501 to i32
  %6508 = fptoui float %6502 to i32
  %6509 = and i32 %6506, 31
  %6510 = lshr i32 %6507, %6509
  %6511 = lshr i32 %6508, %6509
  %6512 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 %6506, i32 %6510, i32 %6511, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6513 = extractvalue %dx.types.ResRet.f32 %6512, 0
  %6514 = fcmp fast olt float %6513, -1.000000e+00
  %6515 = fcmp fast ogt float %6513, -1.000000e+00
  %6516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6517 = extractvalue %dx.types.CBufRet.f32 %6516, 1
  %6518 = select i1 %6515, float %6517, float 1.000000e+00
  %6519 = fadd fast float %6513, 1.000000e+00
  %6520 = fmul fast float %6518, %6519
  %6521 = call float @dx.op.unary.f32(i32 6, float %6520)  ; FAbs(value)
  %6522 = extractvalue %dx.types.CBufRet.f32 %6516, 3
  %6523 = fcmp fast oge float %6521, %6522
  %6524 = select i1 %6523, float 0x4197782600000000, float %6521
  %6525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6526 = extractvalue %dx.types.CBufRet.f32 %6525, 0
  %6527 = extractvalue %dx.types.CBufRet.f32 %6525, 1
  %6528 = extractvalue %dx.types.CBufRet.f32 %6525, 2
  %6529 = select i1 %6514, float %6526, float %6447
  %6530 = select i1 %6514, float %6527, float %6448
  %6531 = select i1 %6514, float %6528, float %6449
  %6532 = fmul fast float %6529, %6444
  %6533 = fmul fast float %6530, %6444
  %6534 = fmul fast float %6531, %6444
  %6535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6536 = extractvalue %dx.types.CBufRet.f32 %6535, 0
  %6537 = extractvalue %dx.types.CBufRet.f32 %6535, 1
  %6538 = extractvalue %dx.types.CBufRet.f32 %6535, 2
  %6539 = select i1 %6514, float %6536, float %6454
  %6540 = select i1 %6514, float %6537, float %6455
  %6541 = select i1 %6514, float %6538, float %6456
  %6542 = fmul fast float %6539, %6445
  %6543 = fmul fast float %6540, %6445
  %6544 = fmul fast float %6541, %6445
  %6545 = fadd fast float %6542, %6532
  %6546 = fadd fast float %6543, %6533
  %6547 = fadd fast float %6544, %6534
  %6548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6549 = extractvalue %dx.types.CBufRet.f32 %6548, 0
  %6550 = extractvalue %dx.types.CBufRet.f32 %6548, 1
  %6551 = extractvalue %dx.types.CBufRet.f32 %6548, 2
  %6552 = select i1 %6514, float %6549, float %6461
  %6553 = select i1 %6514, float %6550, float %6462
  %6554 = select i1 %6514, float %6551, float %6463
  %6555 = fadd fast float %6545, %6552
  %6556 = fadd fast float %6546, %6553
  %6557 = fadd fast float %6547, %6554
  %6558 = fmul fast float %6555, %6524
  %6559 = fmul fast float %6556, %6524
  %6560 = fmul fast float %6557, %6524
  %6561 = fmul fast float %6558, %6558
  %6562 = fmul fast float %6559, %6559
  %6563 = fadd fast float %6561, %6562
  %6564 = fmul fast float %6560, %6560
  %6565 = fadd fast float %6563, %6564
  %6566 = call float @dx.op.unary.f32(i32 24, float %6565)  ; Sqrt(value)
  %6567 = fsub fast float %6566, %6479
  %6568 = fmul fast float %6567, %6481
  %6569 = call float @dx.op.unary.f32(i32 7, float %6568)  ; Saturate(value)
  br label %6570

; <label>:6570                                    ; preds = %6495, %6491
  %6571 = phi float [ %6569, %6495 ], [ 1.000000e+00, %6491 ]
  %6572 = fmul fast float %6488, 5.000000e-01
  %6573 = fadd fast float %6572, 5.000000e-01
  %6574 = call float @dx.op.unary.f32(i32 22, float %6573)  ; Frc(value)
  %6575 = call float @dx.op.unary.f32(i32 27, float %6574)  ; Round_ni(value)
  %6576 = call float @dx.op.unary.f32(i32 22, float %6574)  ; Frc(value)
  %6577 = fmul fast float %6576, 2.000000e+00
  %6578 = fadd fast float %6577, -1.000000e+00
  %6579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %6440, float %6441, float %6575, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6580 = extractvalue %dx.types.ResRet.f32 %6579, 0
  %6581 = extractvalue %dx.types.ResRet.f32 %6579, 1
  %6582 = extractvalue %dx.types.ResRet.f32 %6579, 2
  %6583 = extractvalue %dx.types.ResRet.f32 %6579, 3
  %6584 = fadd fast float %6580, -5.000000e-01
  %6585 = fadd fast float %6582, -5.000000e-01
  %6586 = fmul fast float %6584, 0xBFD5555560000000
  %6587 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6585, float %6586)  ; FMad(a,b,c)
  %6588 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6581, float 0.000000e+00)  ; FMad(a,b,c)
  %6589 = fadd fast float %6588, %6583
  %6590 = fmul fast float %6584, -7.500000e-01
  %6591 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6585, float %6590)  ; FMad(a,b,c)
  %6592 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6581, float 0.000000e+00)  ; FMad(a,b,c)
  %6593 = fadd fast float %6592, %6583
  %6594 = call float @dx.op.binary.f32(i32 35, float %6587, float -1.000000e+00)  ; FMax(a,b)
  %6595 = call float @dx.op.binary.f32(i32 35, float %6589, float -1.000000e+00)  ; FMax(a,b)
  %6596 = call float @dx.op.binary.f32(i32 35, float %6591, float -1.000000e+00)  ; FMax(a,b)
  %6597 = call float @dx.op.binary.f32(i32 35, float %6593, float -1.000000e+00)  ; FMax(a,b)
  %6598 = call float @dx.op.binary.f32(i32 36, float %6594, float 1.000000e+00)  ; FMin(a,b)
  %6599 = call float @dx.op.binary.f32(i32 36, float %6595, float 1.000000e+00)  ; FMin(a,b)
  %6600 = call float @dx.op.binary.f32(i32 36, float %6596, float 1.000000e+00)  ; FMin(a,b)
  %6601 = call float @dx.op.binary.f32(i32 36, float %6597, float 1.000000e+00)  ; FMin(a,b)
  %6602 = fcmp fast olt float %6598, 0x3FEFFF8020000000
  br i1 %6602, label %6603, label %6718, !dx.controlflow.hints !160

; <label>:6603                                    ; preds = %6570
  %6604 = extractvalue %dx.types.CBufRet.f32 %6486, 3
  %6605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6606 = extractvalue %dx.types.CBufRet.f32 %6605, 0
  %6607 = extractvalue %dx.types.CBufRet.f32 %6605, 1
  %6608 = extractvalue %dx.types.CBufRet.f32 %6605, 2
  %6609 = extractvalue %dx.types.CBufRet.f32 %6605, 3
  %6610 = fsub fast float %6606, %6598
  %6611 = fsub fast float %6607, %6599
  %6612 = fsub fast float %6608, %6600
  %6613 = fsub fast float %6609, %6601
  %6614 = fmul fast float %6610, %6604
  %6615 = fmul fast float %6611, %6604
  %6616 = fmul fast float %6612, %6604
  %6617 = fmul fast float %6613, %6604
  %6618 = fadd fast float %6614, %6598
  %6619 = fadd fast float %6615, %6599
  %6620 = fsub fast float -0.000000e+00, %6619
  %6621 = fadd fast float %6616, %6600
  %6622 = fadd fast float %6617, %6601
  %6623 = fmul fast float %6618, %6618
  %6624 = fsub fast float %6619, %6623
  %6625 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6624)  ; FMax(a,b)
  %6626 = fdiv fast float 1.000000e+00, %6625
  %6627 = fmul fast float %6619, %6618
  %6628 = fsub fast float %6621, %6627
  %6629 = fsub fast float %6578, %6618
  %6630 = fmul fast float %6578, %6578
  %6631 = fsub fast float %6630, %6619
  %6632 = fmul fast float %6629, %6626
  %6633 = fmul fast float %6632, %6628
  %6634 = fsub fast float %6631, %6633
  %6635 = fmul fast float %6619, %6619
  %6636 = fsub fast float %6622, %6635
  %6637 = fmul fast float %6628, %6628
  %6638 = fmul fast float %6637, %6626
  %6639 = fsub fast float %6636, %6638
  %6640 = fdiv fast float %6634, %6639
  %6641 = fmul fast float %6628, %6640
  %6642 = fsub fast float %6629, %6641
  %6643 = fmul fast float %6642, %6626
  %6644 = fmul fast float %6643, %6618
  %6645 = fsub fast float 1.000000e+00, %6644
  %6646 = fmul fast float %6619, %6640
  %6647 = fsub fast float %6645, %6646
  %6648 = fmul fast float %6643, %6643
  %6649 = fmul fast float %6640, 4.000000e+00
  %6650 = fmul fast float %6649, %6647
  %6651 = fsub fast float %6648, %6650
  %6652 = call float @dx.op.unary.f32(i32 24, float %6651)  ; Sqrt(value)
  %6653 = fcmp fast oge float %6643, 0.000000e+00
  %6654 = fsub fast float -0.000000e+00, %6652
  %6655 = select i1 %6653, float %6654, float %6652
  %6656 = fsub fast float %6655, %6643
  %6657 = fdiv fast float %6656, %6640
  %6658 = fdiv fast float %6647, %6656
  %6659 = fmul fast float %6657, 5.000000e-01
  %6660 = fmul fast float %6658, 2.000000e+00
  %6661 = select i1 %6653, float %6659, float %6660
  %6662 = select i1 %6653, float %6660, float %6659
  %6663 = call float @dx.op.binary.f32(i32 35, float %6661, float %6662)  ; FMax(a,b)
  %6664 = call float @dx.op.binary.f32(i32 36, float %6661, float %6662)  ; FMin(a,b)
  %6665 = fcmp fast ogt float %6578, %6664
  br i1 %6665, label %6666, label %6676

; <label>:6666                                    ; preds = %6603
  %6667 = fsub fast float %6578, %6664
  %6668 = fsub fast float %6663, %6664
  %6669 = fmul fast float %6667, %6668
  %6670 = fmul fast float %6663, %6578
  %6671 = fadd fast float %6663, %6578
  %6672 = fmul fast float %6671, %6618
  %6673 = fadd fast float %6670, %6619
  %6674 = fsub fast float %6673, %6672
  %6675 = fdiv fast float %6674, %6669
  br label %6676

; <label>:6676                                    ; preds = %6666, %6603
  %6677 = phi float [ %6675, %6666 ], [ 0.000000e+00, %6603 ]
  %6678 = fcmp fast ogt float %6578, %6663
  %6679 = fsub fast float %6578, %6663
  br i1 %6678, label %6680, label %6690

; <label>:6680                                    ; preds = %6676
  %6681 = fsub fast float %6663, %6664
  %6682 = fmul fast float %6681, %6679
  %6683 = fmul fast float %6664, %6578
  %6684 = fadd fast float %6664, %6578
  %6685 = fmul fast float %6684, %6618
  %6686 = fsub fast float %6620, %6683
  %6687 = fadd fast float %6686, %6685
  %6688 = fdiv fast float %6687, %6682
  %6689 = fadd fast float %6688, %6677
  br label %6690

; <label>:6690                                    ; preds = %6680, %6676
  %6691 = phi float [ %6689, %6680 ], [ %6677, %6676 ]
  %6692 = fsub fast float %6578, %6664
  %6693 = fmul fast float %6692, %6679
  %6694 = fmul fast float %6664, %6663
  %6695 = fadd fast float %6664, %6663
  %6696 = fmul fast float %6695, %6618
  %6697 = fadd fast float %6694, %6619
  %6698 = fsub fast float %6697, %6696
  %6699 = fdiv fast float %6698, %6693
  %6700 = call float @dx.op.unary.f32(i32 7, float %6691)  ; Saturate(value)
  %6701 = fcmp fast oeq float %5367, 0.000000e+00
  %6702 = extractvalue %dx.types.CBufRet.f32 %6486, 0
  %6703 = fcmp fast oeq float %6702, 0.000000e+00
  %6704 = or i1 %6701, %6703
  %6705 = fmul fast float %6702, 2.000000e+00
  %6706 = fadd fast float %6487, %6488
  %6707 = fdiv fast float %6706, %6705
  %6708 = call float @dx.op.unary.f32(i32 7, float %6707)  ; Saturate(value)
  %6709 = fmul fast float %6708, 2.000000e+00
  %6710 = fsub fast float 3.000000e+00, %6709
  %6711 = fmul fast float %6708, %6708
  %6712 = fmul fast float %6711, %6710
  %6713 = select i1 %6704, float 1.000000e+00, float %6712
  %6714 = fmul fast float %6699, %5367
  %6715 = fadd fast float %6700, %6714
  %6716 = call float @dx.op.unary.f32(i32 7, float %6715)  ; Saturate(value)
  %6717 = fmul fast float %6713, %6716
  br label %6718

; <label>:6718                                    ; preds = %6690, %6570
  %6719 = phi float [ %6717, %6690 ], [ 0.000000e+00, %6570 ]
  %6720 = fsub fast float 1.000000e+00, %6719
  %6721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %6440, float %6441, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6722 = extractvalue %dx.types.ResRet.f32 %6721, 0
  %6723 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6724 = extractvalue %dx.types.CBufRet.i32 %6723, 2
  %6725 = icmp eq i32 %6724, 0
  br i1 %6725, label %6731, label %6726

; <label>:6726                                    ; preds = %6718
  %6727 = call float @dx.op.unary.f32(i32 7, float %6719)  ; Saturate(value)
  %6728 = fadd fast float %6722, -1.000000e+00
  %6729 = fmul fast float %6727, %6728
  %6730 = fadd fast float %6729, 1.000000e+00
  br label %6731

; <label>:6731                                    ; preds = %6726, %6718
  %6732 = phi float [ %6730, %6726 ], [ %6720, %6718 ]
  br i1 %6494, label %6733, label %6751

; <label>:6733                                    ; preds = %6731
  %6734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6735 = extractvalue %dx.types.CBufRet.f32 %6734, 1
  %6736 = fsub fast float %6571, %6735
  %6737 = call float @dx.op.unary.f32(i32 7, float %6736)  ; Saturate(value)
  %6738 = fsub fast float %6571, %6493
  %6739 = call float @dx.op.unary.f32(i32 7, float %6738)  ; Saturate(value)
  %6740 = fsub fast float %6737, %6739
  %6741 = fsub fast float %6573, %6739
  %6742 = fdiv fast float %6741, %6740
  %6743 = call float @dx.op.unary.f32(i32 7, float %6742)  ; Saturate(value)
  %6744 = fmul fast float %6743, 2.000000e+00
  %6745 = fsub fast float 3.000000e+00, %6744
  %6746 = fsub fast float %6722, %6732
  %6747 = fmul fast float %6743, %6743
  %6748 = fmul fast float %6747, %6746
  %6749 = fmul fast float %6748, %6745
  %6750 = fadd fast float %6749, %6732
  br label %6751

; <label>:6751                                    ; preds = %6733, %6731
  %6752 = phi float [ %6750, %6733 ], [ %6732, %6731 ]
  %6753 = call float @dx.op.binary.f32(i32 35, float %6722, float %6752)  ; FMax(a,b)
  %6754 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6755 = extractvalue %dx.types.CBufRet.i32 %6754, 2
  %6756 = and i32 %6755, 1
  %6757 = icmp eq i32 %6756, 0
  %6758 = fcmp fast une float %6753, 1.000000e+00
  %6759 = and i1 %6758, %6757
  br i1 %6759, label %6760, label %6779

; <label>:6760                                    ; preds = %6751
  %6761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %6440, float %6441, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6762 = extractvalue %dx.types.ResRet.f32 %6761, 0
  %6763 = extractvalue %dx.types.ResRet.f32 %6761, 1
  %6764 = extractvalue %dx.types.ResRet.f32 %6761, 2
  %6765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6766 = extractvalue %dx.types.CBufRet.f32 %6765, 1
  %6767 = fmul fast float %6766, %6762
  %6768 = fmul fast float %6766, %6763
  %6769 = fmul fast float %6766, %6764
  %6770 = fcmp fast ogt float %6722, 0x3FEFFF2E40000000
  %6771 = fsub fast float 1.000000e+00, %6753
  %6772 = fsub fast float 1.000000e+00, %6722
  %6773 = fdiv fast float %6771, %6772
  %6774 = call float @dx.op.unary.f32(i32 7, float %6773)  ; Saturate(value)
  %6775 = select i1 %6770, float 0.000000e+00, float %6774
  %6776 = fmul fast float %6767, %6775
  %6777 = fmul fast float %6768, %6775
  %6778 = fmul fast float %6769, %6775
  br label %6779

; <label>:6779                                    ; preds = %6760, %6751
  %6780 = phi float [ 0.000000e+00, %6751 ], [ %6776, %6760 ]
  %6781 = phi float [ 0.000000e+00, %6751 ], [ %6777, %6760 ]
  %6782 = phi float [ 0.000000e+00, %6751 ], [ %6778, %6760 ]
  %6783 = fmul fast float %6780, %5351
  %6784 = fmul fast float %6781, %5353
  %6785 = fmul fast float %6782, %5355
  %6786 = fmul fast float %6753, %6415
  %6787 = call float @dx.op.dot3.f32(i32 55, float %6753, float %6753, float %6753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6788 = call float @dx.op.dot3.f32(i32 55, float %6783, float %6784, float %6785, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6789 = select i1 %193, float %6787, float %6753
  %6790 = select i1 %193, float 1.000000e+00, float %6753
  %6791 = select i1 %193, float %6788, float %6783
  %6792 = select i1 %193, float 0.000000e+00, float %6784
  %6793 = select i1 %193, float 0.000000e+00, float %6785
  %6794 = fmul fast float %6789, %6427
  %6795 = fmul fast float %6789, %6428
  %6796 = fmul fast float %6790, %6429
  %6797 = fadd fast float %6794, %6791
  %6798 = fadd fast float %6795, %6792
  %6799 = fadd fast float %6793, %6796
  %6800 = fmul fast float %6789, %6430
  %6801 = fmul fast float %6789, %6431
  %6802 = fmul fast float %6790, %6432
  br label %6803

; <label>:6803                                    ; preds = %6779, %6436, %6405, %5637
  %6804 = phi float [ %5642, %5637 ], [ %6427, %6405 ], [ %6797, %6779 ], [ %6427, %6436 ]
  %6805 = phi float [ %5643, %5637 ], [ %6428, %6405 ], [ %6798, %6779 ], [ %6428, %6436 ]
  %6806 = phi float [ %5644, %5637 ], [ %6429, %6405 ], [ %6799, %6779 ], [ %6429, %6436 ]
  %6807 = phi float [ %5645, %5637 ], [ %6430, %6405 ], [ %6800, %6779 ], [ %6430, %6436 ]
  %6808 = phi float [ %5646, %5637 ], [ %6431, %6405 ], [ %6801, %6779 ], [ %6431, %6436 ]
  %6809 = phi float [ %5647, %5637 ], [ %6432, %6405 ], [ %6802, %6779 ], [ %6432, %6436 ]
  %6810 = phi float [ %5648, %5637 ], [ %6415, %6405 ], [ %6786, %6779 ], [ %6415, %6436 ]
  %6811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6812 = extractvalue %dx.types.CBufRet.f32 %6811, 2
  %6813 = extractvalue %dx.types.CBufRet.f32 %6811, 3
  %6814 = fmul fast float %6812, %84
  %6815 = fmul fast float %6813, %85
  %6816 = call float @dx.op.unary.f32(i32 7, float %6814)  ; Saturate(value)
  %6817 = call float @dx.op.unary.f32(i32 7, float %6815)  ; Saturate(value)
  %6818 = select i1 %5377, i32 2, i32 0
  %6819 = or i32 %6818, 1
  %6820 = uitofp i32 %6819 to float
  %6821 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %40, float %6816, float %6817, float %6820, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6822 = extractvalue %dx.types.ResRet.f32 %6821, 0
  %6823 = extractvalue %dx.types.ResRet.f32 %6821, 1
  %6824 = extractvalue %dx.types.ResRet.f32 %6821, 2
  %6825 = extractvalue %dx.types.ResRet.f32 %6821, 3
  %6826 = add nuw nsw i32 %6818, 2
  %6827 = uitofp i32 %6826 to float
  %6828 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %40, float %6816, float %6817, float %6827, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6829 = extractvalue %dx.types.ResRet.f32 %6828, 0
  %6830 = extractvalue %dx.types.ResRet.f32 %6828, 1
  %6831 = extractvalue %dx.types.ResRet.f32 %6828, 2
  %6832 = extractvalue %dx.types.ResRet.f32 %6828, 3
  %6833 = call float @dx.op.binary.f32(i32 35, float %6823, float %6824)  ; FMax(a,b)
  %6834 = call float @dx.op.binary.f32(i32 35, float %6822, float %6833)  ; FMax(a,b)
  %6835 = call float @dx.op.binary.f32(i32 35, float %6834, float %6825)  ; FMax(a,b)
  %6836 = call float @dx.op.binary.f32(i32 36, float %6830, float %6831)  ; FMin(a,b)
  %6837 = call float @dx.op.binary.f32(i32 36, float %6829, float %6836)  ; FMin(a,b)
  %6838 = call float @dx.op.binary.f32(i32 36, float %6837, float %6832)  ; FMin(a,b)
  %6839 = fmul fast float %6835, 2.550000e+02
  %6840 = fadd fast float %6839, 0x3F70101020000000
  %6841 = fptoui float %6840 to i32
  %6842 = fmul fast float %6838, 2.550000e+02
  %6843 = fadd fast float %6842, 0x3F70101020000000
  %6844 = fptoui float %6843 to i32
  %6845 = icmp ult i32 %6841, %6844
  br i1 %6845, label %6846, label %7015

; <label>:6846                                    ; preds = %6803
  %6847 = fcmp fast ogt float %71, 9.843750e-01
  %6848 = fadd fast float %5641, -4.000000e+00
  %6849 = select i1 %6847, float -4.000000e+00, float %6848
  %6850 = call float @dx.op.binary.f32(i32 35, float %6849, float 0.000000e+00)  ; FMax(a,b)
  %6851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6852 = extractvalue %dx.types.CBufRet.f32 %6851, 0
  %6853 = fadd fast float %6852, %6850
  %6854 = extractvalue %dx.types.CBufRet.f32 %6851, 2
  %6855 = fmul fast float %6853, %6854
  %6856 = call float @dx.op.unary.f32(i32 23, float %6855)  ; Log(value)
  %6857 = extractvalue %dx.types.CBufRet.f32 %6851, 3
  %6858 = fmul fast float %6857, %6856
  %6859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6860 = extractvalue %dx.types.CBufRet.f32 %6859, 2
  %6861 = fmul fast float %6858, %6860
  %6862 = call float @dx.op.unary.f32(i32 7, float %6861)  ; Saturate(value)
  %6863 = uitofp i32 %6841 to float
  %6864 = uitofp i32 %6844 to float
  %6865 = fadd fast float %6863, 5.000000e-01
  %6866 = fadd fast float %6864, 5.000000e-01
  %6867 = fmul fast float %6860, %6865
  %6868 = fmul fast float %6860, %6866
  %6869 = fadd fast float %6867, 0x3F0FFB4800000000
  %6870 = fadd fast float %6868, 0xBF0FFB4800000000
  %6871 = call float @dx.op.binary.f32(i32 35, float %6862, float %6869)  ; FMax(a,b)
  %6872 = call float @dx.op.binary.f32(i32 36, float %6871, float %6870)  ; FMin(a,b)
  %6873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6874 = extractvalue %dx.types.CBufRet.f32 %6873, 1
  %6875 = extractvalue %dx.types.CBufRet.f32 %6873, 2
  %6876 = extractvalue %dx.types.CBufRet.f32 %6873, 0
  %6877 = select i1 %5377, float %6876, float 0.000000e+00
  %6878 = fmul fast float %6874, %6872
  %6879 = fadd fast float %6877, %6878
  %6880 = fadd fast float %6877, %6875
  %6881 = fsub fast float %6874, %6875
  %6882 = fadd fast float %6881, %6877
  %6883 = call float @dx.op.binary.f32(i32 35, float %6879, float %6880)  ; FMax(a,b)
  %6884 = call float @dx.op.binary.f32(i32 36, float %6883, float %6882)  ; FMin(a,b)
  %6885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %6816, float %6817, float %6884, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6886 = extractvalue %dx.types.ResRet.f32 %6885, 0
  %6887 = extractvalue %dx.types.ResRet.f32 %6885, 1
  %6888 = extractvalue %dx.types.ResRet.f32 %6885, 2
  %6889 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6890 = extractvalue %dx.types.CBufRet.i32 %6889, 0
  %6891 = extractvalue %dx.types.CBufRet.i32 %6889, 1
  %6892 = uitofp i32 %6890 to float
  %6893 = uitofp i32 %6891 to float
  %6894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6895 = extractvalue %dx.types.CBufRet.f32 %6894, 0
  %6896 = extractvalue %dx.types.CBufRet.f32 %6894, 1
  %6897 = fmul fast float %6892, %6816
  %6898 = fmul fast float %6893, %6817
  %6899 = fadd fast float %6897, -5.000000e-01
  %6900 = fadd fast float %6898, -5.000000e-01
  %6901 = call float @dx.op.unary.f32(i32 22, float %6899)  ; Frc(value)
  %6902 = call float @dx.op.unary.f32(i32 22, float %6900)  ; Frc(value)
  %6903 = fmul fast float %6901, %6901
  %6904 = fmul fast float %6903, %6901
  %6905 = fsub fast float 3.000000e+00, %6901
  %6906 = fmul fast float %6903, %6905
  %6907 = fmul fast float %6901, 3.000000e+00
  %6908 = fmul fast float %6904, 3.000000e+00
  %6909 = fmul fast float %6903, 6.000000e+00
  %6910 = fsub fast float %6908, %6909
  %6911 = fadd fast float %6910, 4.000000e+00
  %6912 = fmul fast float %6911, 0x3FC5555560000000
  %6913 = fmul fast float %6904, -3.000000e+00
  %6914 = fadd fast float %6903, %6901
  %6915 = fmul fast float %6914, 3.000000e+00
  %6916 = fadd fast float %6913, 1.000000e+00
  %6917 = fadd fast float %6916, %6915
  %6918 = fmul fast float %6904, 0x3FC5555560000000
  %6919 = fmul fast float %6902, %6902
  %6920 = fmul fast float %6919, %6902
  %6921 = fsub fast float 3.000000e+00, %6902
  %6922 = fmul fast float %6919, %6921
  %6923 = fmul fast float %6902, 3.000000e+00
  %6924 = fmul fast float %6920, 3.000000e+00
  %6925 = fmul fast float %6919, 6.000000e+00
  %6926 = fsub fast float %6924, %6925
  %6927 = fadd fast float %6926, 4.000000e+00
  %6928 = fmul fast float %6927, 0x3FC5555560000000
  %6929 = fmul fast float %6920, -3.000000e+00
  %6930 = fadd fast float %6919, %6902
  %6931 = fmul fast float %6930, 3.000000e+00
  %6932 = fadd fast float %6929, 1.000000e+00
  %6933 = fadd fast float %6932, %6931
  %6934 = fmul fast float %6920, 0x3FC5555560000000
  %6935 = fadd fast float %6901, 1.000000e+00
  %6936 = fsub fast float 1.000000e+00, %6907
  %6937 = fadd fast float %6936, %6906
  %6938 = fadd fast float %6937, %6911
  %6939 = fmul fast float %6938, 0x3FC5555560000000
  %6940 = fdiv fast float %6912, %6939
  %6941 = fsub fast float %6935, %6940
  %6942 = fsub fast float 1.000000e+00, %6901
  %6943 = fadd fast float %6917, %6904
  %6944 = fmul fast float %6943, 0x3FC5555560000000
  %6945 = fdiv fast float %6918, %6944
  %6946 = fadd fast float %6942, %6945
  %6947 = fadd fast float %6902, 1.000000e+00
  %6948 = fsub fast float 1.000000e+00, %6923
  %6949 = fadd fast float %6948, %6922
  %6950 = fadd fast float %6949, %6927
  %6951 = fmul fast float %6950, 0x3FC5555560000000
  %6952 = fdiv fast float %6928, %6951
  %6953 = fsub fast float %6947, %6952
  %6954 = fsub fast float 1.000000e+00, %6902
  %6955 = fadd fast float %6933, %6920
  %6956 = fmul fast float %6955, 0x3FC5555560000000
  %6957 = fdiv fast float %6934, %6956
  %6958 = fadd fast float %6957, %6954
  %6959 = fmul fast float %6941, %6895
  %6960 = fsub fast float %6816, %6959
  %6961 = fmul fast float %6946, %6895
  %6962 = fadd fast float %6961, %6816
  %6963 = fmul fast float %6958, %6896
  %6964 = fadd fast float %6963, %6817
  %6965 = fmul fast float %6953, %6896
  %6966 = fsub fast float %6817, %6965
  %6967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %6960, float %6966, float %6884, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6968 = extractvalue %dx.types.ResRet.f32 %6967, 0
  %6969 = extractvalue %dx.types.ResRet.f32 %6967, 1
  %6970 = extractvalue %dx.types.ResRet.f32 %6967, 2
  %6971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %6962, float %6966, float %6884, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6972 = extractvalue %dx.types.ResRet.f32 %6971, 0
  %6973 = extractvalue %dx.types.ResRet.f32 %6971, 1
  %6974 = extractvalue %dx.types.ResRet.f32 %6971, 2
  %6975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %6960, float %6964, float %6884, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6976 = extractvalue %dx.types.ResRet.f32 %6975, 0
  %6977 = extractvalue %dx.types.ResRet.f32 %6975, 1
  %6978 = extractvalue %dx.types.ResRet.f32 %6975, 2
  %6979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %6962, float %6964, float %6884, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6980 = extractvalue %dx.types.ResRet.f32 %6979, 0
  %6981 = extractvalue %dx.types.ResRet.f32 %6979, 1
  %6982 = extractvalue %dx.types.ResRet.f32 %6979, 2
  %6983 = fsub fast float %6976, %6968
  %6984 = fsub fast float %6977, %6969
  %6985 = fsub fast float %6978, %6970
  %6986 = fmul fast float %6983, %6956
  %6987 = fmul fast float %6984, %6956
  %6988 = fmul fast float %6985, %6956
  %6989 = fadd fast float %6986, %6968
  %6990 = fadd fast float %6987, %6969
  %6991 = fadd fast float %6988, %6970
  %6992 = fsub fast float %6980, %6972
  %6993 = fsub fast float %6981, %6973
  %6994 = fsub fast float %6982, %6974
  %6995 = fmul fast float %6992, %6956
  %6996 = fmul fast float %6993, %6956
  %6997 = fmul fast float %6994, %6956
  %6998 = fsub fast float %6972, %6989
  %6999 = fadd fast float %6998, %6995
  %7000 = fsub fast float %6973, %6990
  %7001 = fadd fast float %7000, %6996
  %7002 = fsub fast float %6974, %6991
  %7003 = fadd fast float %7002, %6997
  %7004 = fmul fast float %6999, %6944
  %7005 = fmul fast float %7001, %6944
  %7006 = fmul fast float %7003, %6944
  %7007 = fadd fast float %7004, %6989
  %7008 = fadd fast float %7005, %6990
  %7009 = fadd fast float %7006, %6991
  %7010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7011 = extractvalue %dx.types.CBufRet.f32 %7010, 1
  %7012 = fmul fast float %7007, %7011
  %7013 = fmul fast float %7008, %7011
  %7014 = fmul fast float %7009, %7011
  br label %7015

; <label>:7015                                    ; preds = %6846, %6803
  %7016 = phi float [ %6886, %6846 ], [ 1.000000e+00, %6803 ]
  %7017 = phi float [ %6887, %6846 ], [ 1.000000e+00, %6803 ]
  %7018 = phi float [ %6888, %6846 ], [ 1.000000e+00, %6803 ]
  %7019 = phi float [ %7012, %6846 ], [ 0.000000e+00, %6803 ]
  %7020 = phi float [ %7013, %6846 ], [ 0.000000e+00, %6803 ]
  %7021 = phi float [ %7014, %6846 ], [ 0.000000e+00, %6803 ]
  %7022 = fmul fast float %7019, %5351
  %7023 = fmul fast float %7020, %5353
  %7024 = fmul fast float %7021, %5355
  %7025 = fmul fast float %7016, %6810
  %7026 = call float @dx.op.dot3.f32(i32 55, float %7016, float %7017, float %7018, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7027 = call float @dx.op.dot3.f32(i32 55, float %7022, float %7023, float %7024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7028 = select i1 %193, float %7026, float %7016
  %7029 = select i1 %193, float %7026, float %7017
  %7030 = select i1 %193, float 1.000000e+00, float %7018
  %7031 = select i1 %193, float %7027, float %7022
  %7032 = select i1 %193, float 0.000000e+00, float %7023
  %7033 = select i1 %193, float 0.000000e+00, float %7024
  %7034 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7035 = extractvalue %dx.types.CBufRet.i32 %7034, 3
  %7036 = and i32 %7035, 3
  %7037 = icmp ne i32 %7036, 0
  %7038 = and i32 %7035, 4
  %7039 = icmp ne i32 %7038, 0
  %7040 = and i1 %7037, %7039
  %7041 = and i1 %193, %7040
  br i1 %7041, label %7042, label %7048

; <label>:7042                                    ; preds = %7015
  %7043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7044 = extractvalue %dx.types.CBufRet.f32 %7043, 1
  %7045 = fadd fast float %7025, -1.000000e+00
  %7046 = fmul fast float %7044, %7045
  %7047 = fadd fast float %7046, 1.000000e+00
  br label %7048

; <label>:7048                                    ; preds = %7042, %7015
  %7049 = phi float [ %7047, %7042 ], [ %7025, %7015 ]
  %7050 = fadd fast float %6807, %6804
  %7051 = fmul fast float %7028, %7050
  %7052 = fadd fast float %7051, %7031
  %7053 = fadd fast float %6808, %6805
  %7054 = fmul fast float %7029, %7053
  %7055 = fadd fast float %7054, %7032
  %7056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7057 = extractvalue %dx.types.CBufRet.f32 %7056, 0
  br i1 %193, label %7058, label %7073

; <label>:7058                                    ; preds = %7048
  %7059 = fadd fast float %7052, %7055
  %7060 = fmul fast float %7057, %7059
  %7061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7062 = extractvalue %dx.types.CBufRet.f32 %7061, 3
  %7063 = extractvalue %dx.types.CBufRet.f32 %5359, 1
  %7064 = fsub fast float %5364, %5358
  %7065 = fadd fast float %7064, %5365
  %7066 = fsub fast float %7065, %7063
  %7067 = extractvalue %dx.types.CBufRet.f32 %5359, 2
  %7068 = fmul fast float %7066, %7067
  %7069 = call float @dx.op.unary.f32(i32 7, float %7068)  ; Saturate(value)
  %7070 = fsub fast float %7069, %7062
  %7071 = fmul fast float %7070, %7049
  %7072 = fadd fast float %7071, %7062
  br label %7098

; <label>:7073                                    ; preds = %7048
  %7074 = fadd fast float %6809, %6806
  %7075 = fmul fast float %7030, %7074
  %7076 = fadd fast float %7075, %7033
  %7077 = fmul fast float %7057, %7052
  %7078 = fmul fast float %7057, %7055
  %7079 = fmul fast float %7057, %7076
  %7080 = call float @dx.op.binary.f32(i32 35, float %7078, float %7079)  ; FMax(a,b)
  %7081 = call float @dx.op.binary.f32(i32 35, float %7077, float %7080)  ; FMax(a,b)
  %7082 = call float @dx.op.binary.f32(i32 35, float %5353, float %5355)  ; FMax(a,b)
  %7083 = call float @dx.op.binary.f32(i32 35, float %5351, float %7082)  ; FMax(a,b)
  %7084 = call float @dx.op.binary.f32(i32 35, float %7081, float %7083)  ; FMax(a,b)
  %7085 = fcmp fast ugt float %7084, 0x3F10000000000000
  br i1 %7085, label %7087, label %7086

; <label>:7086                                    ; preds = %7073
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7087

; <label>:7087                                    ; preds = %7086, %7073
  %7088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %7089 = extractvalue %dx.types.ResRet.i32 %7088, 0
  %7090 = and i32 %7089, 32
  %7091 = icmp eq i32 %7090, 0
  br i1 %7091, label %7098, label %7092

; <label>:7092                                    ; preds = %7087
  %7093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7094 = extractvalue %dx.types.CBufRet.f32 %7093, 0
  %7095 = fmul fast float %7094, 0x3FE99999A0000000
  %7096 = fadd fast float %7094, %7077
  %7097 = fadd fast float %7095, %7079
  br label %7098

; <label>:7098                                    ; preds = %7092, %7087, %7058
  %7099 = phi float [ 1.000000e+00, %7058 ], [ %5353, %7092 ], [ %5353, %7087 ]
  %7100 = phi float [ 1.000000e+00, %7058 ], [ %5355, %7092 ], [ %5355, %7087 ]
  %7101 = phi float [ %7060, %7058 ], [ %7096, %7092 ], [ %7077, %7087 ]
  %7102 = phi float [ %7072, %7058 ], [ %7078, %7092 ], [ %7078, %7087 ]
  %7103 = phi float [ 1.000000e+00, %7058 ], [ %7097, %7092 ], [ %7079, %7087 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7104 = call float @dx.op.binary.f32(i32 36, float %7101, float 3.225500e+04)  ; FMin(a,b)
  %7105 = call float @dx.op.binary.f32(i32 36, float %7102, float 3.225500e+04)  ; FMin(a,b)
  %7106 = call float @dx.op.binary.f32(i32 36, float %7103, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7104)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7105)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7106)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7107 = call float @dx.op.binary.f32(i32 36, float %5351, float 3.225500e+04)  ; FMin(a,b)
  %7108 = call float @dx.op.binary.f32(i32 36, float %7099, float 3.225500e+04)  ; FMin(a,b)
  %7109 = call float @dx.op.binary.f32(i32 36, float %7100, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %7107)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %7108)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %7109)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!58 = !{[31 x i32] [i32 29, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119]}
!59 = !{void ()* @ps_main, !"ps_main", !60, !4, !80}
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
!76 = !{!77, !78}
!77 = !{i32 0, !"SV_Target", i8 9, i8 16, !63, i8 0, i32 1, i8 4, i32 0, i8 0, !64}
!78 = !{i32 1, !"SV_Target", i8 9, i8 16, !79, i8 0, i32 1, i8 4, i32 1, i8 0, !64}
!79 = !{i32 1}
!80 = !{i32 0, i64 16}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.unroll.disable"}
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
!103 = !{!104, !104, i64 0}
!104 = !{!"float", !91, i64 0}
!105 = distinct !{!105, !83}
!106 = distinct !{!106, !83}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = !{!115, !117, !119, !120, !122, !123, !124, !126, !127, !128}
!115 = distinct !{!115, !116, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!116 = distinct !{!116, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!117 = distinct !{!117, !118, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!118 = distinct !{!118, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!119 = distinct !{!119, !118, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!120 = distinct !{!120, !121, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!121 = distinct !{!121, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!122 = distinct !{!122, !121, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!123 = distinct !{!123, !121, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!124 = distinct !{!124, !125, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!125 = distinct !{!125, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!126 = distinct !{!126, !125, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!127 = distinct !{!127, !125, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!128 = distinct !{!128, !129, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!129 = distinct !{!129, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"\01?sort@@YAXAIAM00@Z: %c"}
!132 = distinct !{!132, !"\01?sort@@YAXAIAM00@Z"}
!133 = !{!134, !135, !115, !117, !119, !120, !122, !123, !124, !126, !127, !128}
!134 = distinct !{!134, !132, !"\01?sort@@YAXAIAM00@Z: %a"}
!135 = distinct !{!135, !132, !"\01?sort@@YAXAIAM00@Z: %b"}
!136 = !{!135}
!137 = !{!134, !131, !115, !117, !119, !120, !122, !123, !124, !126, !127, !128}
!138 = !{!134}
!139 = !{!135, !131, !115, !117, !119, !120, !122, !123, !124, !126, !127, !128}
!140 = !{!141}
!141 = distinct !{!141, !142, !"\01?sort@@YAXAIAM00@Z: %c"}
!142 = distinct !{!142, !"\01?sort@@YAXAIAM00@Z"}
!143 = !{!144, !145, !115, !117, !119, !120, !122, !123, !124, !126, !127, !128}
!144 = distinct !{!144, !142, !"\01?sort@@YAXAIAM00@Z: %a"}
!145 = distinct !{!145, !142, !"\01?sort@@YAXAIAM00@Z: %b"}
!146 = !{!145}
!147 = !{!144, !141, !115, !117, !119, !120, !122, !123, !124, !126, !127, !128}
!148 = !{!144}
!149 = !{!145, !141, !115, !117, !119, !120, !122, !123, !124, !126, !127, !128}
!150 = distinct !{!150, !"dx.controlflow.hints", i32 1}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 2}
!152 = distinct !{!152, !"dx.controlflow.hints", i32 1}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}

