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
; shader hash: 330bb4aebe026949fcc03c260977d357
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
  %133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %134 = extractvalue %dx.types.ResRet.i32 %133, 0
  %135 = extractvalue %dx.types.ResRet.i32 %133, 1
  %136 = extractvalue %dx.types.ResRet.i32 %133, 2
  %137 = extractvalue %dx.types.ResRet.i32 %133, 3
  %138 = bitcast i32 %134 to float
  %139 = bitcast i32 %135 to float
  %140 = bitcast i32 %136 to float
  %141 = bitcast i32 %137 to float
  %142 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %143 = call float @dx.op.unary.f32(i32 25, float %142)  ; Rsqrt(value)
  %144 = fmul fast float %143, %85
  %145 = fmul fast float %143, %86
  %146 = fmul fast float %143, %87
  %147 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %148 = call float @dx.op.unary.f32(i32 25, float %147)  ; Rsqrt(value)
  %149 = fmul fast float %148, %130
  %150 = fmul fast float %148, %131
  %151 = fmul fast float %148, %132
  %152 = call float @dx.op.dot3.f32(i32 55, float %149, float %150, float %151, float %144, float %145, float %146)  ; Dot3(ax,ay,az,bx,by,bz)
  %153 = fmul fast float %152, %152
  %154 = fmul fast float %153, %140
  %155 = fadd fast float %154, %141
  %156 = call float @dx.op.unary.f32(i32 7, float %155)  ; Saturate(value)
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 3
  %159 = fmul fast float %158, %147
  %160 = fsub fast float %138, %159
  %161 = fmul fast float %160, %139
  %162 = call float @dx.op.unary.f32(i32 7, float %161)  ; Saturate(value)
  %163 = fmul fast float %162, %156
  %164 = fmul fast float %82, 5.000000e-01
  %165 = fmul fast float %83, 5.000000e-01
  %166 = fptosi float %164 to i32
  %167 = fptosi float %165 to i32
  %168 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %166, i32 %167, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = lshr i32 %169, 18
  %171 = uitofp i32 %170 to float
  %172 = fmul fast float %171, 0x3F4C00EBA0000000
  %173 = call float @dx.op.unary.f32(i32 21, float %172)  ; Exp(value)
  %174 = fadd fast float %173, -1.000000e+00
  %175 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %20, i32 0)  ; GetDimensions(handle,mipLevel)
  %176 = extractvalue %dx.types.Dimensions %175, 0
  %177 = sitofp i32 %176 to float
  %178 = extractvalue %dx.types.Dimensions %175, 1
  %179 = sitofp i32 %178 to float
  %180 = fcmp fast oge float %164, %177
  %181 = fcmp fast oge float %165, %179
  %182 = or i1 %180, %181
  %183 = select i1 %182, float 0x4197782600000000, float %174
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %186 = extractvalue %dx.types.CBufRet.f32 %184, 3
  %187 = fmul fast float %185, %82
  %188 = fmul fast float %186, %83
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = and i32 %190, 114688
  %192 = icmp ne i32 %191, 0
  %193 = select i1 %192, float %187, float 0.000000e+00
  %194 = select i1 %192, float %188, float 0.000000e+00
  %195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %39, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = fmul fast float %196, 2.550000e+02
  %198 = fptoui float %197 to i32
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.i32 %200, 3
  %202 = and i32 %201, 3
  %203 = icmp ne i32 %202, 0
  %204 = and i32 %201, 4
  %205 = icmp ne i32 %204, 0
  %206 = and i1 %203, %205
  br i1 %206, label %207, label %218

; <label>:207                                     ; preds = %0
  %208 = extractvalue %dx.types.CBufRet.f32 %199, 3
  %209 = fmul fast float %208, %83
  %210 = extractvalue %dx.types.CBufRet.f32 %199, 2
  %211 = fmul fast float %210, %82
  %212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %38, float %211, float %209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = fsub fast float 1.000000e+00, %213
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 0
  %217 = fcmp fast olt float %214, %216
  br label %221

; <label>:218                                     ; preds = %0
  %219 = icmp eq i32 %204, 0
  %220 = and i1 %203, %219
  br label %221

; <label>:221                                     ; preds = %218, %207
  %222 = phi i1 [ %217, %207 ], [ %220, %218 ]
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %225 = fmul fast float %224, 0x3FE3C6EF40000000
  %226 = frem fast float %82, 2.560000e+02
  %227 = frem fast float %83, 2.560000e+02
  %228 = fptoui float %226 to i32
  %229 = fptoui float %227 to i32
  %230 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 0, i32 %228, i32 %229, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = fadd fast float %231, %225
  %233 = call float @dx.op.unary.f32(i32 22, float %232)  ; Frc(value)
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = shl i32 %235, 4
  %237 = and i32 %236, 32752
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %235, 7
  %240 = and i32 %239, 32752
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = lshr i32 %235, 22
  %243 = shl nuw nsw i32 %242, 5
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = and i32 %246, 255
  %248 = uitofp i32 %247 to float
  %249 = fmul fast float %248, 0x3F70101020000000
  %250 = lshr i32 %246, 8
  %251 = and i32 %250, 255
  %252 = uitofp i32 %251 to float
  %253 = fmul fast float %252, 0x3F70101020000000
  %254 = lshr i32 %246, 16
  %255 = and i32 %254, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F70101020000000
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = and i32 %259, 65535
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = lshr i32 %259, 16
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 65535
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %265, 16
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = fmul fast float %267, 0x3F50624DE0000000
  %271 = fmul fast float %269, 0x3F50624DE0000000
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = and i32 %273, 2
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %283, label %276

; <label>:276                                     ; preds = %221
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = add i32 %278, 0
  %280 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %279, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %281 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %280, %dx.types.Handle %79, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 3
  br label %283

; <label>:283                                     ; preds = %276, %221
  %284 = phi float [ 1.000000e+00, %221 ], [ %282, %276 ]
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = or i32 %288, %286
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %904, label %291

; <label>:291                                     ; preds = %283
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = lshr i32 %293, 16
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = fmul fast float %295, 0x3F50624DE0000000
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = lshr i32 %298, 16
  %300 = and i32 %299, 255
  %301 = lshr i32 %298, 24
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 65535
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %303, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = lshr i32 %309, 22
  %311 = shl nuw nsw i32 %310, 5
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = shl i32 %309, 4
  %314 = and i32 %313, 32752
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %309, 7
  %317 = and i32 %316, 32752
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.f32 %319, 3
  %321 = fmul fast float %320, 1.000000e+03
  %322 = fmul fast float %270, %321
  %323 = call float @dx.op.unary.f32(i32 22, float %322)  ; Frc(value)
  %324 = fadd fast float %323, %261
  %325 = fmul fast float %271, %321
  %326 = call float @dx.op.unary.f32(i32 22, float %325)  ; Frc(value)
  %327 = fadd fast float %326, %263
  %328 = fmul fast float %296, %321
  %329 = call float @dx.op.unary.f32(i32 22, float %328)  ; Frc(value)
  %330 = fmul fast float %329, 0x401921FB60000000
  %331 = fadd fast float %330, %312
  %332 = call float @dx.op.unary.f32(i32 13, float %331)  ; Sin(value)
  %333 = call float @dx.op.unary.f32(i32 12, float %331)  ; Cos(value)
  %334 = fsub fast float -0.000000e+00, %332
  %335 = fadd fast float %65, -5.000000e-01
  %336 = fadd fast float %66, -5.000000e-01
  %337 = fmul fast float %305, %335
  %338 = fmul fast float %307, %336
  %339 = fadd fast float %337, 5.000000e-01
  %340 = fadd fast float %338, 5.000000e-01
  %341 = fmul fast float %315, %339
  %342 = fmul fast float %318, %340
  %343 = fmul fast float %333, %341
  %344 = call float @dx.op.tertiary.f32(i32 46, float %334, float %342, float %343)  ; FMad(a,b,c)
  %345 = fmul fast float %332, %341
  %346 = call float @dx.op.tertiary.f32(i32 46, float %333, float %342, float %345)  ; FMad(a,b,c)
  %347 = fadd fast float %324, %344
  %348 = fadd fast float %327, %346
  %349 = icmp ugt i32 %300, 1
  %350 = icmp ugt i32 %298, 33554431
  %351 = or i1 %350, %349
  br i1 %351, label %352, label %376

; <label>:352                                     ; preds = %291
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = lshr i32 %354, 16
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = fmul fast float %320, %356
  %358 = call float @dx.op.unary.f32(i32 22, float %357)  ; Frc(value)
  %359 = mul nuw nsw i32 %300, %301
  %360 = uitofp i32 %359 to float
  %361 = fmul fast float %358, %360
  %362 = call float @dx.op.unary.f32(i32 27, float %361)  ; Round_ni(value)
  %363 = fptoui float %362 to i32
  %364 = urem i32 %363, %300
  %365 = udiv i32 %363, %301
  %366 = call float @dx.op.unary.f32(i32 22, float %347)  ; Frc(value)
  %367 = call float @dx.op.unary.f32(i32 22, float %348)  ; Frc(value)
  %368 = uitofp i32 %364 to float
  %369 = uitofp i32 %365 to float
  %370 = fadd fast float %366, %368
  %371 = fadd fast float %367, %369
  %372 = uitofp i32 %300 to float
  %373 = uitofp i32 %301 to float
  %374 = fdiv fast float %370, %372
  %375 = fdiv fast float %371, %373
  br label %376

; <label>:376                                     ; preds = %352, %291
  %377 = phi float [ %374, %352 ], [ %347, %291 ]
  %378 = phi float [ %375, %352 ], [ %348, %291 ]
  %379 = and i32 %286, 256
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %425, label %381

; <label>:381                                     ; preds = %376
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = add i32 %383, 0
  %385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %384, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %386 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %385, %dx.types.Handle %79, float %377, float %378, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %387 = extractvalue %dx.types.ResRet.f32 %386, 0
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = shl i32 %389, 4
  %391 = and i32 %390, 32752
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %389, 7
  %394 = and i32 %393, 32752
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = fsub fast float 1.000000e+00, %284
  %397 = call float @dx.op.binary.f32(i32 35, float %396, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %398 = bitcast float %284 to i32
  %399 = sitofp i32 %398 to float
  %400 = fadd fast float %399, 0xC1CFBF8940000000
  %401 = fmul fast float %395, %400
  %402 = fadd fast float %401, 0x41CFBF8940000000
  %403 = fptosi float %402 to i32
  %404 = bitcast i32 %403 to float
  %405 = bitcast float %397 to i32
  %406 = sitofp i32 %405 to float
  %407 = fadd fast float %406, 0xC1CFBF8940000000
  %408 = fmul fast float %407, %395
  %409 = fadd fast float %408, 0x41CFBF8940000000
  %410 = fptosi float %409 to i32
  %411 = bitcast i32 %410 to float
  %412 = fmul fast float %404, %392
  %413 = fmul fast float %411, %392
  %414 = fsub fast float %397, %412
  %415 = fadd fast float %413, %397
  %416 = call float @dx.op.unary.f32(i32 7, float %414)  ; Saturate(value)
  %417 = call float @dx.op.unary.f32(i32 7, float %415)  ; Saturate(value)
  %418 = fsub fast float %387, %416
  %419 = fsub fast float %417, %416
  %420 = bitcast float %419 to i32
  %421 = sub nsw i32 2129859010, %420
  %422 = bitcast i32 %421 to float
  %423 = fmul fast float %422, %418
  %424 = call float @dx.op.unary.f32(i32 7, float %423)  ; Saturate(value)
  br label %425

; <label>:425                                     ; preds = %381, %376
  %426 = phi float [ %424, %381 ], [ %284, %376 ]
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 128
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %446, label %431

; <label>:431                                     ; preds = %425
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 180, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = add i32 %433, 0
  %435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %434, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %436 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %435, %dx.types.Handle %79, float %377, float %378, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %437 = extractvalue %dx.types.ResRet.f32 %436, 0
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = and i32 %439, 524288
  %441 = icmp ne i32 %440, 0
  %442 = fcmp fast ogt float %437, 0x3FE0101020000000
  %443 = select i1 %442, float 1.000000e+00, float 0.000000e+00
  %444 = select i1 %441, float %443, float %437
  %445 = fmul fast float %444, %426
  br label %446

; <label>:446                                     ; preds = %431, %425
  %447 = phi float [ %445, %431 ], [ %426, %425 ]
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = and i32 %449, 16
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %645, label %452

; <label>:452                                     ; preds = %446
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = add i32 %456, 0
  %458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %457, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %459 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %458, %dx.types.Handle %78, float %377, float %378, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = extractvalue %dx.types.ResRet.f32 %459, 1
  %462 = extractvalue %dx.types.ResRet.f32 %459, 2
  %463 = extractvalue %dx.types.ResRet.f32 %459, 3
  %464 = and i32 %454, 255
  %465 = uitofp i32 %464 to float
  %466 = lshr i32 %454, 8
  %467 = and i32 %466, 255
  %468 = uitofp i32 %467 to float
  %469 = fmul fast float %463, %465
  %470 = fadd fast float %469, %468
  %471 = fmul fast float %470, 0x3F70101000000000
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = and i32 %473, 512
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %483, label %476

; <label>:476                                     ; preds = %452
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = add i32 %478, 0
  %480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %481 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %480, %dx.types.Handle %79, float %377, float %378, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  br label %483

; <label>:483                                     ; preds = %476, %452
  %484 = phi float [ %482, %476 ], [ 1.000000e+00, %452 ]
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = and i32 %486, 33554432
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %592, label %489

; <label>:489                                     ; preds = %483
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = and i32 %491, 65535
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = lshr i32 %491, 16
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = and i32 %497, 65535
  %499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %498)  ; LegacyF16ToF32(value)
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = lshr i32 %501, 24
  %503 = uitofp i32 %502 to float
  %504 = fmul fast float %503, 0x3F70101020000000
  %505 = and i32 %501, 255
  %506 = uitofp i32 %505 to float
  %507 = fmul fast float %506, 0x3F70101020000000
  %508 = lshr i32 %501, 8
  %509 = and i32 %508, 255
  %510 = uitofp i32 %509 to float
  %511 = fmul fast float %510, 0x3F70101020000000
  %512 = lshr i32 %501, 16
  %513 = and i32 %512, 255
  %514 = uitofp i32 %513 to float
  %515 = fmul fast float %514, 0x3F70101020000000
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = lshr i32 %517, 24
  %519 = uitofp i32 %518 to float
  %520 = fmul fast float %519, 0x3F70101020000000
  %521 = and i32 %517, 255
  %522 = uitofp i32 %521 to float
  %523 = fmul fast float %522, 0x3F70101020000000
  %524 = lshr i32 %517, 8
  %525 = and i32 %524, 255
  %526 = uitofp i32 %525 to float
  %527 = fmul fast float %526, 0x3F70101020000000
  %528 = lshr i32 %517, 16
  %529 = and i32 %528, 255
  %530 = uitofp i32 %529 to float
  %531 = fmul fast float %530, 0x3F70101020000000
  %532 = bitcast float %460 to i32
  %533 = ashr i32 %532, 1
  %534 = sub nsw i32 1597463174, %533
  %535 = bitcast i32 %534 to float
  %536 = fmul fast float %460, 5.000000e-01
  %537 = fmul fast float %535, %535
  %538 = fmul fast float %537, %536
  %539 = fsub fast float 1.500000e+00, %538
  %540 = fmul fast float %535, %460
  %541 = fmul fast float %540, %539
  %542 = bitcast float %461 to i32
  %543 = ashr i32 %542, 1
  %544 = sub nsw i32 1597463174, %543
  %545 = bitcast i32 %544 to float
  %546 = fmul fast float %461, 5.000000e-01
  %547 = fmul fast float %545, %545
  %548 = fmul fast float %547, %546
  %549 = fsub fast float 1.500000e+00, %548
  %550 = fmul fast float %545, %461
  %551 = fmul fast float %550, %549
  %552 = bitcast float %462 to i32
  %553 = ashr i32 %552, 1
  %554 = sub nsw i32 1597463174, %553
  %555 = bitcast i32 %554 to float
  %556 = fmul fast float %462, 5.000000e-01
  %557 = fmul fast float %555, %555
  %558 = fmul fast float %557, %556
  %559 = fsub fast float 1.500000e+00, %558
  %560 = fmul fast float %555, %462
  %561 = fmul fast float %560, %559
  %562 = fsub fast float %541, %523
  %563 = fsub fast float %551, %527
  %564 = fsub fast float %561, %531
  %565 = fmul fast float %562, %493
  %566 = fmul fast float %563, %495
  %567 = fmul fast float %564, %499
  %568 = fadd fast float %565, %507
  %569 = fadd fast float %566, %511
  %570 = fadd fast float %567, %515
  %571 = call float @dx.op.unary.f32(i32 7, float %568)  ; Saturate(value)
  %572 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  %573 = call float @dx.op.unary.f32(i32 7, float %570)  ; Saturate(value)
  %574 = fmul fast float %571, %571
  %575 = fmul fast float %572, %572
  %576 = fmul fast float %573, %573
  %577 = fsub fast float %574, %460
  %578 = fsub fast float %575, %461
  %579 = fsub fast float %576, %462
  %580 = fmul fast float %577, %484
  %581 = fmul fast float %578, %484
  %582 = fmul fast float %579, %484
  %583 = fadd fast float %580, %460
  %584 = fadd fast float %581, %461
  %585 = fadd fast float %582, %462
  %586 = fadd fast float %504, %471
  %587 = fsub fast float %586, %520
  %588 = call float @dx.op.unary.f32(i32 7, float %587)  ; Saturate(value)
  %589 = fsub fast float %588, %471
  %590 = fmul fast float %589, %484
  %591 = fadd fast float %590, %471
  br label %645

; <label>:592                                     ; preds = %483
  %593 = and i32 %486, 134217728
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %629, label %595

; <label>:595                                     ; preds = %592
  %596 = call float @dx.op.unary.f32(i32 24, float %249)  ; Sqrt(value)
  %597 = call float @dx.op.unary.f32(i32 24, float %253)  ; Sqrt(value)
  %598 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %599 = fadd fast float %596, -5.000000e-01
  %600 = fadd fast float %597, -5.000000e-01
  %601 = fadd fast float %598, -5.000000e-01
  %602 = fmul fast float %599, %484
  %603 = fmul fast float %600, %484
  %604 = fmul fast float %601, %484
  %605 = fadd fast float %602, 5.000000e-01
  %606 = fadd fast float %603, 5.000000e-01
  %607 = fadd fast float %604, 5.000000e-01
  %608 = call float @dx.op.unary.f32(i32 24, float %460)  ; Sqrt(value)
  %609 = call float @dx.op.unary.f32(i32 24, float %461)  ; Sqrt(value)
  %610 = call float @dx.op.unary.f32(i32 24, float %462)  ; Sqrt(value)
  %611 = fmul fast float %605, 2.000000e+00
  %612 = fsub fast float 1.000000e+00, %611
  %613 = fmul fast float %612, %608
  %614 = fadd fast float %613, %611
  %615 = fmul fast float %614, %608
  %616 = fmul fast float %606, 2.000000e+00
  %617 = fsub fast float 1.000000e+00, %616
  %618 = fmul fast float %617, %609
  %619 = fadd fast float %618, %616
  %620 = fmul fast float %619, %609
  %621 = fmul fast float %607, 2.000000e+00
  %622 = fsub fast float 1.000000e+00, %621
  %623 = fmul fast float %622, %610
  %624 = fadd fast float %623, %621
  %625 = fmul fast float %624, %610
  %626 = fmul fast float %615, %615
  %627 = fmul fast float %620, %620
  %628 = fmul fast float %625, %625
  br label %645

; <label>:629                                     ; preds = %592
  %630 = fmul fast float %249, %249
  %631 = fmul fast float %253, %253
  %632 = fmul fast float %257, %257
  %633 = fadd fast float %630, -1.000000e+00
  %634 = fadd fast float %631, -1.000000e+00
  %635 = fadd fast float %632, -1.000000e+00
  %636 = fmul fast float %484, %633
  %637 = fmul fast float %484, %634
  %638 = fmul fast float %484, %635
  %639 = fadd fast float %636, 1.000000e+00
  %640 = fadd fast float %637, 1.000000e+00
  %641 = fadd fast float %638, 1.000000e+00
  %642 = fmul fast float %639, %460
  %643 = fmul fast float %640, %461
  %644 = fmul fast float %641, %462
  br label %645

; <label>:645                                     ; preds = %629, %595, %489, %446
  %646 = phi float [ %591, %489 ], [ %471, %595 ], [ %471, %629 ], [ 0x3FA23C0BE0000000, %446 ]
  %647 = phi float [ %583, %489 ], [ %626, %595 ], [ %642, %629 ], [ 1.000000e+00, %446 ]
  %648 = phi float [ %584, %489 ], [ %627, %595 ], [ %643, %629 ], [ 1.000000e+00, %446 ]
  %649 = phi float [ %585, %489 ], [ %628, %595 ], [ %644, %629 ], [ 1.000000e+00, %446 ]
  %650 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.i32 %650, 1
  %652 = and i32 %651, 1
  %653 = icmp ne i32 %652, 0
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = and i32 %655, 32
  %657 = icmp ne i32 %656, 0
  %658 = and i1 %653, %657
  %659 = select i1 %658, float 1.000000e+00, float %647
  %660 = select i1 %658, float 0x3FD3333340000000, float %648
  %661 = select i1 %658, float 0x3FD3333340000000, float %649
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = and i32 %663, 32
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %735, label %666

; <label>:666                                     ; preds = %645
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = add i32 %670, 0
  %672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %671, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %673 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %672, %dx.types.Handle %78, float %377, float %378, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %674 = extractvalue %dx.types.ResRet.f32 %673, 0
  %675 = extractvalue %dx.types.ResRet.f32 %673, 1
  %676 = extractvalue %dx.types.ResRet.f32 %673, 2
  %677 = extractvalue %dx.types.ResRet.f32 %673, 3
  %678 = and i32 %668, 255
  %679 = uitofp i32 %678 to float
  %680 = lshr i32 %668, 8
  %681 = and i32 %680, 255
  %682 = uitofp i32 %681 to float
  %683 = lshr i32 %668, 16
  %684 = and i32 %683, 255
  %685 = uitofp i32 %684 to float
  %686 = fmul fast float %685, 0x3F70101000000000
  %687 = fmul fast float %674, %679
  %688 = fadd fast float %687, %682
  %689 = fmul fast float %688, 0x3F70101000000000
  %690 = fadd fast float %675, -5.000000e-01
  %691 = fadd fast float %677, -5.000000e-01
  %692 = fmul fast float %690, %686
  %693 = fmul fast float %691, %686
  %694 = fadd fast float %692, 5.000000e-01
  %695 = fadd fast float %693, 5.000000e-01
  %696 = fmul fast float %694, 2.000000e+00
  %697 = fadd fast float %696, -1.000000e+00
  %698 = fmul fast float %695, 2.000000e+00
  %699 = fadd fast float %698, -1.000000e+00
  %700 = fadd fast float %697, %699
  %701 = fmul fast float %700, 5.000000e-01
  %702 = fsub fast float %697, %699
  %703 = fmul fast float %702, 5.000000e-01
  %704 = call float @dx.op.unary.f32(i32 6, float %701)  ; FAbs(value)
  %705 = fsub fast float 1.000000e+00, %704
  %706 = call float @dx.op.unary.f32(i32 6, float %703)  ; FAbs(value)
  %707 = fsub fast float %705, %706
  %708 = call float @dx.op.dot3.f32(i32 55, float %701, float %703, float %707, float %701, float %703, float %707)  ; Dot3(ax,ay,az,bx,by,bz)
  %709 = call float @dx.op.unary.f32(i32 25, float %708)  ; Rsqrt(value)
  %710 = fmul fast float %701, %709
  %711 = fmul fast float %703, %709
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = and i32 %713, 67108864
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %731, label %716

; <label>:716                                     ; preds = %666
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = and i32 %718, 65535
  %720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %719)  ; LegacyF16ToF32(value)
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 65535
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = lshr i32 %718, 16
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = fsub fast float %689, %726
  %728 = fmul fast float %727, %720
  %729 = fadd fast float %728, %724
  %730 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  br label %731

; <label>:731                                     ; preds = %716, %666
  %732 = phi float [ %730, %716 ], [ %689, %666 ]
  %733 = call float @dx.op.dot2.f32(i32 54, float %710, float %711, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %734 = call float @dx.op.dot2.f32(i32 54, float %710, float %711, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %735

; <label>:735                                     ; preds = %731, %645
  %736 = phi float [ %732, %731 ], [ 0x3FD6666660000000, %645 ]
  %737 = phi float [ %733, %731 ], [ 0.000000e+00, %645 ]
  %738 = phi float [ %734, %731 ], [ 0.000000e+00, %645 ]
  %739 = phi float [ %676, %731 ], [ 1.000000e+00, %645 ]
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = lshr i32 %741, 22
  %743 = shl nuw nsw i32 %742, 5
  %744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %743)  ; LegacyF16ToF32(value)
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 64
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %781, label %749

; <label>:749                                     ; preds = %735
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 176, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 0
  %752 = add i32 %751, 0
  %753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %752, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = and i32 %755, 131072
  %757 = icmp eq i32 %756, 0
  %758 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %753, %dx.types.Handle %78, float %377, float %378, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %759 = extractvalue %dx.types.ResRet.f32 %758, 0
  %760 = extractvalue %dx.types.ResRet.f32 %758, 1
  %761 = extractvalue %dx.types.ResRet.f32 %758, 2
  %762 = fmul fast float %759, %238
  %763 = fmul fast float %760, %241
  %764 = fmul fast float %761, %244
  br i1 %757, label %771, label %765

; <label>:765                                     ; preds = %749
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.f32 %766, 0
  %768 = fmul fast float %767, %762
  %769 = fmul fast float %767, %763
  %770 = fmul fast float %767, %764
  br label %771

; <label>:771                                     ; preds = %765, %749
  %772 = phi float [ %768, %765 ], [ %762, %749 ]
  %773 = phi float [ %769, %765 ], [ %763, %749 ]
  %774 = phi float [ %770, %765 ], [ %764, %749 ]
  %775 = fmul fast float %772, %744
  %776 = select i1 %222, float %775, float %772
  %777 = call float @dx.op.dot3.f32(i32 55, float %776, float %773, float %774, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %778 = select i1 %222, float 0.000000e+00, float %772
  %779 = select i1 %222, float %777, float %773
  %780 = select i1 %222, float 0.000000e+00, float %774
  br label %781

; <label>:781                                     ; preds = %771, %735
  %782 = phi float [ %778, %771 ], [ 0.000000e+00, %735 ]
  %783 = phi float [ %779, %771 ], [ 0.000000e+00, %735 ]
  %784 = phi float [ %780, %771 ], [ 0.000000e+00, %735 ]
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = and i32 %786, 1024
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %817, label %789

; <label>:789                                     ; preds = %781
  %790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.i32 %790, 0
  %792 = and i32 %791, 255
  %793 = uitofp i32 %792 to float
  %794 = fmul fast float %793, 0x3F70101020000000
  %795 = lshr i32 %791, 8
  %796 = and i32 %795, 255
  %797 = uitofp i32 %796 to float
  %798 = fmul fast float %797, 0x3F70101020000000
  %799 = lshr i32 %791, 16
  %800 = and i32 %799, 255
  %801 = uitofp i32 %800 to float
  %802 = fmul fast float %801, 0x3F70101020000000
  %803 = fmul fast float %794, %794
  %804 = fmul fast float %798, %798
  %805 = fmul fast float %802, %802
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 192, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = add i32 %807, 0
  %809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %808, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %810 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %809, %dx.types.Handle %79, float %377, float %378, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 0
  %812 = extractvalue %dx.types.ResRet.f32 %810, 1
  %813 = extractvalue %dx.types.ResRet.f32 %810, 2
  %814 = fmul fast float %803, %811
  %815 = fmul fast float %804, %812
  %816 = fmul fast float %805, %813
  br label %817

; <label>:817                                     ; preds = %789, %781
  %818 = phi float [ %814, %789 ], [ 0.000000e+00, %781 ]
  %819 = phi float [ %815, %789 ], [ 0.000000e+00, %781 ]
  %820 = phi float [ %816, %789 ], [ 0.000000e+00, %781 ]
  %821 = fcmp fast ogt float %818, 0.000000e+00
  %822 = fcmp fast ogt float %819, 0.000000e+00
  %823 = fcmp fast ogt float %820, 0.000000e+00
  %824 = call float @dx.op.unary.f32(i32 23, float %818)  ; Log(value)
  %825 = call float @dx.op.unary.f32(i32 23, float %819)  ; Log(value)
  %826 = call float @dx.op.unary.f32(i32 23, float %820)  ; Log(value)
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = lshr i32 %828, 7
  %830 = and i32 %829, 32752
  %831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %830)  ; LegacyF16ToF32(value)
  %832 = fmul fast float %824, 0xBFE62E4300000000
  %833 = fmul fast float %832, %831
  %834 = fmul fast float %825, 0xBFE62E4300000000
  %835 = fmul fast float %834, %831
  %836 = fmul fast float %826, 0xBFE62E4300000000
  %837 = fmul fast float %836, %831
  %838 = select i1 %821, float %833, float 1.270000e+02
  %839 = select i1 %822, float %835, float 1.270000e+02
  %840 = select i1 %823, float %837, float 1.270000e+02
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = and i32 %842, 10240
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %887, label %845

; <label>:845                                     ; preds = %817
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = add i32 %847, 0
  %849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %848, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %850 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %849, %dx.types.Handle %79, float %377, float %378, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 1
  %852 = extractvalue %dx.types.ResRet.f32 %850, 3
  %853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.i32 %853, 0
  %855 = and i32 %854, 1048576
  %856 = icmp ne i32 %855, 0
  %857 = and i32 %854, 8192
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %873, label %859

; <label>:859                                     ; preds = %845
  %860 = extractvalue %dx.types.ResRet.f32 %850, 2
  %861 = select i1 %856, float %860, float %851
  %862 = extractvalue %dx.types.ResRet.f32 %850, 0
  %863 = select i1 %856, float %862, float %851
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = lshr i32 %865, 16
  %867 = and i32 %866, 255
  %868 = uitofp i32 %867 to float
  %869 = fmul fast float %868, 0x3F80101020000000
  %870 = fmul fast float %869, %863
  %871 = fmul fast float %869, %851
  %872 = fmul fast float %869, %861
  br label %873

; <label>:873                                     ; preds = %859, %845
  %874 = phi float [ %870, %859 ], [ 0.000000e+00, %845 ]
  %875 = phi float [ %871, %859 ], [ 0.000000e+00, %845 ]
  %876 = phi float [ %872, %859 ], [ 0.000000e+00, %845 ]
  %877 = and i32 %854, 2048
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %887, label %879

; <label>:879                                     ; preds = %873
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = shl i32 %881, 4
  %883 = and i32 %882, 32752
  %884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %883)  ; LegacyF16ToF32(value)
  %885 = fmul fast float %884, %852
  %886 = call float @dx.op.binary.f32(i32 35, float %885, float 0x3F70101020000000)  ; FMax(a,b)
  br label %887

; <label>:887                                     ; preds = %879, %873, %817
  %888 = phi float [ %874, %879 ], [ %874, %873 ], [ 0.000000e+00, %817 ]
  %889 = phi float [ %875, %879 ], [ %875, %873 ], [ 0.000000e+00, %817 ]
  %890 = phi float [ %876, %879 ], [ %876, %873 ], [ 0.000000e+00, %817 ]
  %891 = phi float [ %886, %879 ], [ 0x3F70101020000000, %873 ], [ 0x3F70101020000000, %817 ]
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = and i32 %893, 255
  %895 = uitofp i32 %894 to float
  %896 = lshr i32 %893, 8
  %897 = and i32 %896, 255
  %898 = uitofp i32 %897 to float
  %899 = call float @dx.op.dot3.f32(i32 55, float %659, float %660, float %661, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %900 = fmul fast float %898, %899
  %901 = fadd fast float %900, %895
  %902 = fmul fast float %901, 0x3F70101020000000
  %903 = call float @dx.op.unary.f32(i32 7, float %902)  ; Saturate(value)
  br label %904

; <label>:904                                     ; preds = %887, %283
  %905 = phi float [ 0.000000e+00, %283 ], [ %737, %887 ]
  %906 = phi float [ 0.000000e+00, %283 ], [ %738, %887 ]
  %907 = phi float [ 0.000000e+00, %283 ], [ %659, %887 ]
  %908 = phi float [ 0.000000e+00, %283 ], [ %660, %887 ]
  %909 = phi float [ 0.000000e+00, %283 ], [ %661, %887 ]
  %910 = phi float [ 0.000000e+00, %283 ], [ %888, %887 ]
  %911 = phi float [ 0.000000e+00, %283 ], [ %889, %887 ]
  %912 = phi float [ 0.000000e+00, %283 ], [ %890, %887 ]
  %913 = phi float [ 0.000000e+00, %283 ], [ %782, %887 ]
  %914 = phi float [ 0.000000e+00, %283 ], [ %783, %887 ]
  %915 = phi float [ 0.000000e+00, %283 ], [ %784, %887 ]
  %916 = phi float [ 0.000000e+00, %283 ], [ %838, %887 ]
  %917 = phi float [ 0.000000e+00, %283 ], [ %839, %887 ]
  %918 = phi float [ 0.000000e+00, %283 ], [ %840, %887 ]
  %919 = phi float [ 0.000000e+00, %283 ], [ %646, %887 ]
  %920 = phi float [ 0.000000e+00, %283 ], [ %447, %887 ]
  %921 = phi float [ 0.000000e+00, %283 ], [ %736, %887 ]
  %922 = phi float [ 0.000000e+00, %283 ], [ %739, %887 ]
  %923 = phi float [ 0.000000e+00, %283 ], [ %891, %887 ]
  %924 = phi float [ 0.000000e+00, %283 ], [ %903, %887 ]
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 0
  %927 = call float @dx.op.dot2.f32(i32 54, float %905, float %906, float %905, float %906)  ; Dot2(ax,ay,bx,by)
  %928 = fmul fast float %927, 0x3FE3333340000000
  %929 = fsub fast float 1.000000e+00, %928
  %930 = call float @dx.op.dot3.f32(i32 55, float %905, float %906, float %929, float %905, float %906, float %929)  ; Dot3(ax,ay,az,bx,by,bz)
  %931 = call float @dx.op.unary.f32(i32 25, float %930)  ; Rsqrt(value)
  %932 = fmul fast float %931, %905
  %933 = fmul fast float %931, %906
  %934 = fmul fast float %929, %931
  %935 = fmul fast float %934, %85
  %936 = fmul fast float %934, %86
  %937 = fmul fast float %934, %87
  %938 = fmul fast float %932, %58
  %939 = fmul fast float %932, %59
  %940 = fmul fast float %932, %60
  %941 = fmul fast float %90, %61
  %942 = fmul fast float %941, %933
  %943 = fmul fast float %93, %61
  %944 = fmul fast float %943, %933
  %945 = fmul fast float %96, %61
  %946 = fmul fast float %945, %933
  %947 = fadd fast float %942, %938
  %948 = fmul fast float %947, %84
  %949 = fadd fast float %948, %935
  %950 = fadd fast float %944, %939
  %951 = fmul fast float %950, %84
  %952 = fadd fast float %951, %936
  %953 = fadd fast float %946, %940
  %954 = fmul fast float %953, %84
  %955 = fadd fast float %954, %937
  %956 = call float @dx.op.dot3.f32(i32 55, float %949, float %952, float %955, float %949, float %952, float %955)  ; Dot3(ax,ay,az,bx,by,bz)
  %957 = call float @dx.op.unary.f32(i32 25, float %956)  ; Rsqrt(value)
  %958 = fmul fast float %949, %957
  %959 = fmul fast float %952, %957
  %960 = fmul fast float %955, %957
  %961 = call float @dx.op.unary.f32(i32 83, float %130)  ; DerivCoarseX(value)
  %962 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %963 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %964 = call float @dx.op.unary.f32(i32 84, float %130)  ; DerivCoarseY(value)
  %965 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %966 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %967 = fadd fast float %961, %130
  %968 = fadd fast float %962, %131
  %969 = fadd fast float %963, %132
  %970 = fadd fast float %964, %130
  %971 = fadd fast float %965, %131
  %972 = fadd fast float %966, %132
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 0
  %975 = extractvalue %dx.types.CBufRet.f32 %973, 1
  %976 = extractvalue %dx.types.CBufRet.f32 %973, 2
  %977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.f32 %977, 2
  %979 = extractvalue %dx.types.CBufRet.f32 %977, 3
  %980 = fmul fast float %974, %82
  %981 = fmul fast float %980, %978
  %982 = fmul fast float %975, %83
  %983 = fmul fast float %982, %979
  %984 = fptoui float %981 to i32
  %985 = fptoui float %983 to i32
  %986 = fadd fast float %974, -1.000000e+00
  %987 = fadd fast float %975, -1.000000e+00
  %988 = fptoui float %986 to i32
  %989 = fptoui float %987 to i32
  %990 = call i32 @dx.op.binary.i32(i32 40, i32 %984, i32 %988)  ; UMin(a,b)
  %991 = call i32 @dx.op.binary.i32(i32 40, i32 %985, i32 %989)  ; UMin(a,b)
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 2
  %994 = extractvalue %dx.types.CBufRet.f32 %992, 3
  %995 = fmul fast float %993, %70
  %996 = fsub fast float %995, %994
  %997 = fadd fast float %976, -1.000000e+00
  %998 = call float @dx.op.binary.f32(i32 36, float %996, float %997)  ; FMin(a,b)
  %999 = fptoui float %998 to i32
  %1000 = fptoui float %974 to i32
  %1001 = fptoui float %975 to i32
  %1002 = mul i32 %999, %1001
  %1003 = add i32 %1002, %991
  %1004 = mul i32 %1003, %1000
  %1005 = add i32 %1004, %990
  %1006 = shl i32 %1005, 2
  %1007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.i32 %1007, 0
  %1009 = and i32 %1008, 1023
  %1010 = lshr i32 %1008, 10
  %1011 = icmp eq i32 %1009, 0
  br i1 %1011, label %1515, label %1012

; <label>:1012                                    ; preds = %904
  %1013 = and i32 %1008, 1023
  br label %1014

; <label>:1014                                    ; preds = %1146, %1012
  %1015 = phi i32 [ %1096, %1146 ], [ 0, %1012 ]
  %1016 = phi float [ %1147, %1146 ], [ 0.000000e+00, %1012 ]
  %1017 = phi float [ %1148, %1146 ], [ %926, %1012 ]
  %1018 = phi float [ %1149, %1146 ], [ %924, %1012 ]
  %1019 = phi float [ %1150, %1146 ], [ %916, %1012 ]
  %1020 = phi float [ %1151, %1146 ], [ %917, %1012 ]
  %1021 = phi float [ %1152, %1146 ], [ %918, %1012 ]
  %1022 = phi float [ %1153, %1146 ], [ 0.000000e+00, %1012 ]
  %1023 = phi float [ %1154, %1146 ], [ 0.000000e+00, %1012 ]
  %1024 = phi float [ %1155, %1146 ], [ %910, %1012 ]
  %1025 = phi float [ %1156, %1146 ], [ %911, %1012 ]
  %1026 = phi float [ %1157, %1146 ], [ %912, %1012 ]
  %1027 = phi float [ %1158, %1146 ], [ %913, %1012 ]
  %1028 = phi float [ %1159, %1146 ], [ %914, %1012 ]
  %1029 = phi float [ %1160, %1146 ], [ %915, %1012 ]
  %1030 = phi float [ %1161, %1146 ], [ %958, %1012 ]
  %1031 = phi float [ %1162, %1146 ], [ %959, %1012 ]
  %1032 = phi float [ %1163, %1146 ], [ %960, %1012 ]
  %1033 = phi float [ %1164, %1146 ], [ %922, %1012 ]
  %1034 = phi float [ %1165, %1146 ], [ %921, %1012 ]
  %1035 = phi float [ %1166, %1146 ], [ 0.000000e+00, %1012 ]
  %1036 = phi float [ %1167, %1146 ], [ %919, %1012 ]
  %1037 = phi float [ %1168, %1146 ], [ %907, %1012 ]
  %1038 = phi float [ %1169, %1146 ], [ %908, %1012 ]
  %1039 = phi float [ %1170, %1146 ], [ %909, %1012 ]
  %1040 = add nuw nsw i32 %1015, %1010
  %1041 = shl i32 %1040, 2
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = shl i32 %1043, 8
  %1045 = or i32 %1044, 48
  %1046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.f32 %1046, 0
  %1048 = extractvalue %dx.types.ResRet.f32 %1046, 1
  %1049 = extractvalue %dx.types.ResRet.f32 %1046, 2
  %1050 = extractvalue %dx.types.ResRet.f32 %1046, 3
  %1051 = or i32 %1044, 64
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = extractvalue %dx.types.ResRet.i32 %1052, 1
  %1055 = or i32 %1044, 80
  %1056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 2
  %1058 = extractvalue %dx.types.ResRet.f32 %1056, 3
  %1059 = or i32 %1044, 96
  %1060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.ResRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.ResRet.f32 %1060, 2
  %1064 = extractvalue %dx.types.ResRet.f32 %1060, 3
  %1065 = or i32 %1044, 112
  %1066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.f32 %1066, 2
  %1068 = or i32 %1044, 128
  %1069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.ResRet.f32 %1069, 1
  %1072 = extractvalue %dx.types.ResRet.f32 %1069, 2
  %1073 = extractvalue %dx.types.ResRet.f32 %1069, 3
  %1074 = or i32 %1044, 144
  %1075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.ResRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.ResRet.f32 %1075, 2
  %1079 = extractvalue %dx.types.ResRet.f32 %1075, 3
  %1080 = or i32 %1044, 160
  %1081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1085 = extractvalue %dx.types.ResRet.f32 %1081, 3
  %1086 = or i32 %1044, 192
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = or i32 %1044, 208
  %1090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.f32 %1090, 0
  %1092 = or i32 %1044, 248
  %1093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.ResRet.f32 %1093, 1
  %1096 = add nuw nsw i32 %1015, 1
  %1097 = bitcast float %1050 to i32
  %1098 = and i32 %1097, 512
  %1099 = icmp eq i32 %1098, 0
  %1100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.f32 %1100, 0
  %1102 = extractvalue %dx.types.ResRet.f32 %1100, 1
  %1103 = extractvalue %dx.types.ResRet.f32 %1100, 2
  %1104 = extractvalue %dx.types.ResRet.f32 %1100, 3
  %1105 = call float @dx.op.dot4.f32(i32 56, float %1101, float %1102, float %1103, float %1104, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1106 = or i32 %1044, 16
  %1107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 0
  %1109 = extractvalue %dx.types.ResRet.f32 %1107, 1
  %1110 = extractvalue %dx.types.ResRet.f32 %1107, 2
  %1111 = extractvalue %dx.types.ResRet.f32 %1107, 3
  %1112 = call float @dx.op.dot4.f32(i32 56, float %1108, float %1109, float %1110, float %1111, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1113 = or i32 %1044, 32
  %1114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1113, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = extractvalue %dx.types.ResRet.f32 %1114, 3
  %1119 = call float @dx.op.dot4.f32(i32 56, float %1115, float %1116, float %1117, float %1118, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1120 = call float @dx.op.unary.f32(i32 27, float %1105)  ; Round_ni(value)
  %1121 = call float @dx.op.unary.f32(i32 6, float %1120)  ; FAbs(value)
  %1122 = call float @dx.op.unary.f32(i32 27, float %1112)  ; Round_ni(value)
  %1123 = call float @dx.op.unary.f32(i32 6, float %1122)  ; FAbs(value)
  %1124 = call float @dx.op.unary.f32(i32 6, float %1119)  ; FAbs(value)
  %1125 = call float @dx.op.unary.f32(i32 27, float %1124)  ; Round_ni(value)
  %1126 = fadd fast float %1123, %1121
  %1127 = fadd fast float %1126, %1125
  %1128 = fcmp fast oeq float %1127, 0.000000e+00
  %1129 = call float @dx.op.dot4.f32(i32 56, float %1101, float %1102, float %1103, float %1104, float %967, float %968, float %969, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1130 = call float @dx.op.dot4.f32(i32 56, float %1108, float %1109, float %1110, float %1111, float %967, float %968, float %969, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1131 = call float @dx.op.dot4.f32(i32 56, float %1101, float %1102, float %1103, float %1104, float %970, float %971, float %972, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1132 = call float @dx.op.dot4.f32(i32 56, float %1108, float %1109, float %1110, float %1111, float %970, float %971, float %972, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1133 = fsub fast float %1129, %1105
  %1134 = fsub fast float %1131, %1105
  %1135 = fsub fast float %1130, %1112
  %1136 = fsub fast float %1132, %1112
  %1137 = call float @dx.op.dot3.f32(i32 55, float %1047, float %1048, float %1049, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 2
  %1140 = fadd fast float %1139, %1137
  %1141 = call float @dx.op.unary.f32(i32 7, float %1140)  ; Saturate(value)
  %1142 = extractvalue %dx.types.CBufRet.f32 %1138, 0
  %1143 = fcmp fast ogt float %1141, %1142
  %1144 = and i1 %1128, %1143
  %1145 = and i1 %1099, %1144
  br i1 %1145, label %1172, label %1146

; <label>:1146                                    ; preds = %1501, %1253, %1172, %1014
  %1147 = phi float [ %1016, %1172 ], [ %1256, %1253 ], [ %1256, %1501 ], [ %1016, %1014 ]
  %1148 = phi float [ %1017, %1172 ], [ %1017, %1253 ], [ %1477, %1501 ], [ %1017, %1014 ]
  %1149 = phi float [ %1018, %1172 ], [ %1018, %1253 ], [ %1475, %1501 ], [ %1018, %1014 ]
  %1150 = phi float [ %1019, %1172 ], [ %1019, %1253 ], [ %1453, %1501 ], [ %1019, %1014 ]
  %1151 = phi float [ %1020, %1172 ], [ %1020, %1253 ], [ %1454, %1501 ], [ %1020, %1014 ]
  %1152 = phi float [ %1021, %1172 ], [ %1021, %1253 ], [ %1455, %1501 ], [ %1021, %1014 ]
  %1153 = phi float [ %1022, %1172 ], [ %1022, %1253 ], [ %1380, %1501 ], [ %1022, %1014 ]
  %1154 = phi float [ %1023, %1172 ], [ %1023, %1253 ], [ %1378, %1501 ], [ %1023, %1014 ]
  %1155 = phi float [ %1024, %1172 ], [ %1024, %1253 ], [ %1423, %1501 ], [ %1024, %1014 ]
  %1156 = phi float [ %1025, %1172 ], [ %1025, %1253 ], [ %1424, %1501 ], [ %1025, %1014 ]
  %1157 = phi float [ %1026, %1172 ], [ %1026, %1253 ], [ %1425, %1501 ], [ %1026, %1014 ]
  %1158 = phi float [ %1027, %1172 ], [ %1027, %1253 ], [ %1511, %1501 ], [ %1027, %1014 ]
  %1159 = phi float [ %1028, %1172 ], [ %1028, %1253 ], [ %1512, %1501 ], [ %1028, %1014 ]
  %1160 = phi float [ %1029, %1172 ], [ %1029, %1253 ], [ %1513, %1501 ], [ %1029, %1014 ]
  %1161 = phi float [ %1030, %1172 ], [ %1030, %1253 ], [ %1359, %1501 ], [ %1030, %1014 ]
  %1162 = phi float [ %1031, %1172 ], [ %1031, %1253 ], [ %1360, %1501 ], [ %1031, %1014 ]
  %1163 = phi float [ %1032, %1172 ], [ %1032, %1253 ], [ %1361, %1501 ], [ %1032, %1014 ]
  %1164 = phi float [ %1033, %1172 ], [ %1033, %1253 ], [ %1433, %1501 ], [ %1033, %1014 ]
  %1165 = phi float [ %1034, %1172 ], [ %1034, %1253 ], [ %1430, %1501 ], [ %1034, %1014 ]
  %1166 = phi float [ %1035, %1172 ], [ %1035, %1253 ], [ %1427, %1501 ], [ %1035, %1014 ]
  %1167 = phi float [ %1036, %1172 ], [ %1036, %1253 ], [ %1376, %1501 ], [ %1036, %1014 ]
  %1168 = phi float [ %1037, %1172 ], [ %1037, %1253 ], [ %1371, %1501 ], [ %1037, %1014 ]
  %1169 = phi float [ %1038, %1172 ], [ %1038, %1253 ], [ %1372, %1501 ], [ %1038, %1014 ]
  %1170 = phi float [ %1039, %1172 ], [ %1039, %1253 ], [ %1373, %1501 ], [ %1039, %1014 ]
  %1171 = icmp eq i32 %1096, %1013
  br i1 %1171, label %1514, label %1014

; <label>:1172                                    ; preds = %1014
  %1173 = extractvalue %dx.types.ResRet.f32 %1066, 3
  %1174 = extractvalue %dx.types.ResRet.f32 %1066, 1
  %1175 = extractvalue %dx.types.ResRet.f32 %1066, 0
  %1176 = extractvalue %dx.types.ResRet.f32 %1056, 1
  %1177 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1178 = extractvalue %dx.types.ResRet.i32 %1052, 3
  %1179 = extractvalue %dx.types.ResRet.i32 %1052, 2
  %1180 = add i32 %1178, 0
  %1181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1180, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1183 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1181, %dx.types.Handle %1182, float %1105, float %1112, float undef, float undef, i32 0, i32 0, i32 undef, float %1133, float %1135, float undef, float %1134, float %1136, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = fmul fast float %1184, %1177
  %1186 = fadd fast float %1185, %1176
  %1187 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  %1188 = fmul fast float %1105, %1061
  %1189 = call float @dx.op.tertiary.f32(i32 46, float %1062, float %1112, float %1188)  ; FMad(a,b,c)
  %1190 = fadd fast float %1189, %1175
  %1191 = fmul fast float %1105, %1063
  %1192 = call float @dx.op.tertiary.f32(i32 46, float %1064, float %1112, float %1191)  ; FMad(a,b,c)
  %1193 = fadd fast float %1192, %1174
  %1194 = fmul fast float %1133, %1061
  %1195 = call float @dx.op.tertiary.f32(i32 46, float %1062, float %1135, float %1194)  ; FMad(a,b,c)
  %1196 = fmul fast float %1133, %1063
  %1197 = call float @dx.op.tertiary.f32(i32 46, float %1064, float %1135, float %1196)  ; FMad(a,b,c)
  %1198 = fmul fast float %1134, %1061
  %1199 = call float @dx.op.tertiary.f32(i32 46, float %1062, float %1136, float %1198)  ; FMad(a,b,c)
  %1200 = fmul fast float %1134, %1063
  %1201 = call float @dx.op.tertiary.f32(i32 46, float %1064, float %1136, float %1200)  ; FMad(a,b,c)
  %1202 = add i32 %1179, 0
  %1203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1202, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1204 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1203, %dx.types.Handle %1182, float %1190, float %1193, float undef, float undef, i32 0, i32 0, i32 undef, float %1195, float %1197, float undef, float %1199, float %1201, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1205 = extractvalue %dx.types.ResRet.f32 %1204, 0
  %1206 = and i32 %1097, 1024
  %1207 = icmp ne i32 %1206, 0
  %1208 = fcmp fast ogt float %1205, 0x3FE0101020000000
  %1209 = uitofp i1 %1208 to float
  %1210 = select i1 %1207, float %1209, float %1205
  %1211 = and i32 %1097, 8192
  %1212 = icmp ne i32 %1211, 0
  %1213 = select i1 %1212, float %1173, float 1.000000e+00
  %1214 = fmul fast float %1105, 2.000000e+00
  %1215 = fadd fast float %1214, -1.000000e+00
  %1216 = call float @dx.op.unary.f32(i32 6, float %1215)  ; FAbs(value)
  %1217 = fmul fast float %1216, %1094
  %1218 = fsub fast float %1217, %1094
  %1219 = call float @dx.op.unary.f32(i32 7, float %1218)  ; Saturate(value)
  %1220 = fmul fast float %1112, 2.000000e+00
  %1221 = fadd fast float %1220, -1.000000e+00
  %1222 = call float @dx.op.unary.f32(i32 6, float %1221)  ; FAbs(value)
  %1223 = fmul fast float %1222, %1095
  %1224 = fsub fast float %1223, %1095
  %1225 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  %1226 = fmul fast float %1124, %1057
  %1227 = fsub fast float %1226, %1057
  %1228 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  %1229 = fmul fast float %1187, %1213
  %1230 = fmul fast float %1229, %1184
  %1231 = fmul fast float %1230, %1219
  %1232 = fmul fast float %1231, %1210
  %1233 = fmul fast float %1232, %1225
  %1234 = fmul fast float %1233, %1228
  %1235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1236 = extractvalue %dx.types.CBufRet.f32 %1235, 1
  %1237 = extractvalue %dx.types.CBufRet.f32 %1235, 0
  %1238 = fsub fast float %1141, %1237
  %1239 = fmul fast float %1238, %1236
  %1240 = call float @dx.op.unary.f32(i32 7, float %1239)  ; Saturate(value)
  %1241 = fmul fast float %1234, %1058
  %1242 = fadd fast float %1234, %1058
  %1243 = fmul fast float %1242, %1067
  %1244 = fsub fast float %1243, %1067
  %1245 = call float @dx.op.unary.f32(i32 7, float %1244)  ; Saturate(value)
  %1246 = and i32 %1097, 128
  %1247 = icmp ne i32 %1246, 0
  %1248 = select i1 %1247, float %1245, float %1241
  %1249 = fmul fast float %1248, %1240
  %1250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.f32 %1250, 0
  %1252 = fcmp fast ugt float %1249, %1251
  br i1 %1252, label %1253, label %1146

; <label>:1253                                    ; preds = %1172
  %1254 = select i1 %1212, float %1249, float 0.000000e+00
  %1255 = fadd fast float %1254, %1016
  %1256 = call float @dx.op.unary.f32(i32 7, float %1255)  ; Saturate(value)
  br i1 %1212, label %1146, label %1257

; <label>:1257                                    ; preds = %1253
  %1258 = and i32 %1097, 4
  %1259 = and i32 %1097, 8
  %1260 = add i32 %1053, 0
  %1261 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1260, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1263 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1261, %dx.types.Handle %1262, float %1190, float %1193, float undef, float undef, i32 0, i32 0, i32 undef, float %1195, float %1197, float undef, float %1199, float %1201, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.ResRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.ResRet.f32 %1263, 2
  %1267 = extractvalue %dx.types.ResRet.f32 %1263, 3
  %1268 = bitcast float %1079 to i32
  %1269 = and i32 %1268, 255
  %1270 = uitofp i32 %1269 to float
  %1271 = lshr i32 %1268, 8
  %1272 = and i32 %1271, 255
  %1273 = uitofp i32 %1272 to float
  %1274 = fmul fast float %1267, %1270
  %1275 = fadd fast float %1274, %1273
  %1276 = fmul fast float %1275, 0x3F70101000000000
  %1277 = add i32 %1054, 0
  %1278 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1277, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1279 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1278, %dx.types.Handle %1262, float %1190, float %1193, float undef, float undef, i32 0, i32 0, i32 undef, float %1195, float %1197, float undef, float %1199, float %1201, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  %1281 = extractvalue %dx.types.ResRet.f32 %1279, 1
  %1282 = extractvalue %dx.types.ResRet.f32 %1279, 2
  %1283 = extractvalue %dx.types.ResRet.f32 %1279, 3
  %1284 = bitcast float %1073 to i32
  %1285 = and i32 %1284, 255
  %1286 = uitofp i32 %1285 to float
  %1287 = lshr i32 %1284, 8
  %1288 = and i32 %1287, 255
  %1289 = uitofp i32 %1288 to float
  %1290 = lshr i32 %1284, 16
  %1291 = and i32 %1290, 255
  %1292 = uitofp i32 %1291 to float
  %1293 = fmul fast float %1292, 0x3F70101000000000
  %1294 = fmul fast float %1280, %1286
  %1295 = fadd fast float %1294, %1289
  %1296 = fmul fast float %1295, 0x3F70101000000000
  %1297 = fadd fast float %1281, -5.000000e-01
  %1298 = fadd fast float %1283, -5.000000e-01
  %1299 = fmul fast float %1297, %1293
  %1300 = fmul fast float %1298, %1293
  %1301 = fadd fast float %1299, 5.000000e-01
  %1302 = fadd fast float %1300, 5.000000e-01
  %1303 = fmul fast float %1264, %1082
  %1304 = fmul fast float %1265, %1083
  %1305 = fmul fast float %1266, %1084
  %1306 = fmul fast float %1301, 2.000000e+00
  %1307 = fadd fast float %1306, -1.000000e+00
  %1308 = fmul fast float %1302, 2.000000e+00
  %1309 = fadd fast float %1308, -1.000000e+00
  %1310 = fadd fast float %1307, %1309
  %1311 = fmul fast float %1310, 5.000000e-01
  %1312 = fsub fast float %1307, %1309
  %1313 = fmul fast float %1312, 5.000000e-01
  %1314 = call float @dx.op.unary.f32(i32 6, float %1311)  ; FAbs(value)
  %1315 = fsub fast float 1.000000e+00, %1314
  %1316 = call float @dx.op.unary.f32(i32 6, float %1313)  ; FAbs(value)
  %1317 = fsub fast float %1315, %1316
  %1318 = call float @dx.op.dot3.f32(i32 55, float %1311, float %1313, float %1317, float %1311, float %1313, float %1317)  ; Dot3(ax,ay,az,bx,by,bz)
  %1319 = call float @dx.op.unary.f32(i32 25, float %1318)  ; Rsqrt(value)
  %1320 = fmul fast float %1311, %1319
  %1321 = fmul fast float %1313, %1319
  %1322 = fmul fast float %1319, %1317
  %1323 = fmul fast float %1322, %1047
  %1324 = fmul fast float %1322, %1048
  %1325 = fmul fast float %1322, %1049
  %1326 = fmul fast float %1320, %1070
  %1327 = fmul fast float %1320, %1071
  %1328 = fmul fast float %1320, %1072
  %1329 = fadd fast float %1326, %1323
  %1330 = fadd fast float %1327, %1324
  %1331 = fadd fast float %1328, %1325
  %1332 = fmul fast float %1321, %1076
  %1333 = fmul fast float %1321, %1077
  %1334 = fmul fast float %1321, %1078
  %1335 = fadd fast float %1329, %1332
  %1336 = fadd fast float %1330, %1333
  %1337 = fadd fast float %1331, %1334
  %1338 = call float @dx.op.dot3.f32(i32 55, float %1335, float %1336, float %1337, float %1335, float %1336, float %1337)  ; Dot3(ax,ay,az,bx,by,bz)
  %1339 = call float @dx.op.unary.f32(i32 25, float %1338)  ; Rsqrt(value)
  %1340 = fmul fast float %1335, %1339
  %1341 = fmul fast float %1336, %1339
  %1342 = fmul fast float %1337, %1339
  %1343 = icmp ne i32 %1259, 0
  %1344 = select i1 %1343, float 1.000000e+00, float 0.000000e+00
  %1345 = fmul fast float %1249, %1344
  %1346 = and i32 %1097, 1
  %1347 = icmp eq i32 %1346, 0
  br i1 %1347, label %1348, label %1352

; <label>:1348                                    ; preds = %1257
  %1349 = fsub fast float %1340, %1030
  %1350 = fsub fast float %1341, %1031
  %1351 = fsub fast float %1342, %1032
  br label %1352

; <label>:1352                                    ; preds = %1348, %1257
  %1353 = phi float [ %1349, %1348 ], [ %1340, %1257 ]
  %1354 = phi float [ %1350, %1348 ], [ %1341, %1257 ]
  %1355 = phi float [ %1351, %1348 ], [ %1342, %1257 ]
  %1356 = fmul float %1355, %1345
  %1357 = fmul float %1354, %1345
  %1358 = fmul float %1353, %1345
  %1359 = fadd fast float %1358, %1030
  %1360 = fadd fast float %1357, %1031
  %1361 = fadd fast float %1356, %1032
  %1362 = icmp ne i32 %1258, 0
  %1363 = select i1 %1362, float 1.000000e+00, float 0.000000e+00
  %1364 = fmul fast float %1249, %1363
  %1365 = fsub fast float %1303, %1037
  %1366 = fsub fast float %1304, %1038
  %1367 = fsub fast float %1305, %1039
  %1368 = fmul fast float %1365, %1364
  %1369 = fmul fast float %1366, %1364
  %1370 = fmul fast float %1367, %1364
  %1371 = fadd fast float %1368, %1037
  %1372 = fadd fast float %1369, %1038
  %1373 = fadd fast float %1370, %1039
  %1374 = fsub fast float %1276, %1036
  %1375 = fmul fast float %1374, %1364
  %1376 = fadd fast float %1375, %1036
  %1377 = fmul fast float %1364, %1023
  %1378 = fsub fast float %1023, %1377
  %1379 = fmul fast float %1364, %1022
  %1380 = fsub fast float %1022, %1379
  %1381 = bitcast float %1091 to i32
  %1382 = lshr i32 %1381, 16
  %1383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1382)  ; LegacyF16ToF32(value)
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = and i32 %1385, 1
  %1387 = icmp eq i32 %1386, 0
  br i1 %1387, label %1388, label %1413

; <label>:1388                                    ; preds = %1352
  %1389 = fadd fast float %1276, 0xBFB99999A0000000
  %1390 = call float @dx.op.unary.f32(i32 7, float %1389)  ; Saturate(value)
  %1391 = fmul fast float %1390, 0x3FF1C71C80000000
  %1392 = fsub fast float 1.000000e+00, %1391
  %1393 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  %1394 = fmul fast float %1393, %1303
  %1395 = fmul fast float %1393, %1304
  %1396 = fmul fast float %1393, %1305
  %1397 = call float @dx.op.unary.f32(i32 7, float %1394)  ; Saturate(value)
  %1398 = call float @dx.op.unary.f32(i32 7, float %1395)  ; Saturate(value)
  %1399 = call float @dx.op.unary.f32(i32 7, float %1396)  ; Saturate(value)
  %1400 = call float @dx.op.binary.f32(i32 35, float %1398, float %1399)  ; FMax(a,b)
  %1401 = call float @dx.op.binary.f32(i32 35, float %1397, float %1400)  ; FMax(a,b)
  %1402 = fcmp fast ogt float %1401, 0.000000e+00
  %1403 = bitcast float %1401 to i32
  %1404 = sub nsw i32 2129859010, %1403
  %1405 = bitcast i32 %1404 to float
  %1406 = select i1 %1402, float %1405, float 0.000000e+00
  %1407 = fmul fast float %1397, %1383
  %1408 = fmul fast float %1398, %1383
  %1409 = fmul fast float %1399, %1383
  %1410 = fmul fast float %1407, %1406
  %1411 = fmul fast float %1408, %1406
  %1412 = fmul fast float %1409, %1406
  br label %1413

; <label>:1413                                    ; preds = %1388, %1352
  %1414 = phi float [ %1383, %1352 ], [ %1410, %1388 ]
  %1415 = phi float [ %1383, %1352 ], [ %1411, %1388 ]
  %1416 = phi float [ %1383, %1352 ], [ %1412, %1388 ]
  %1417 = fsub fast float %1414, %1024
  %1418 = fsub fast float %1415, %1025
  %1419 = fsub fast float %1416, %1026
  %1420 = fmul fast float %1417, %1364
  %1421 = fmul fast float %1418, %1364
  %1422 = fmul fast float %1419, %1364
  %1423 = fadd fast float %1420, %1024
  %1424 = fadd fast float %1421, %1025
  %1425 = fadd fast float %1422, %1026
  %1426 = fadd fast float %1249, %1035
  %1427 = call float @dx.op.unary.f32(i32 7, float %1426)  ; Saturate(value)
  %1428 = fsub fast float %1296, %1034
  %1429 = fmul fast float %1428, %1345
  %1430 = fadd fast float %1429, %1034
  %1431 = fsub fast float %1282, %1033
  %1432 = fmul fast float %1431, %1345
  %1433 = fadd fast float %1432, %1033
  br i1 %1347, label %1442, label %1434

; <label>:1434                                    ; preds = %1413
  %1435 = and i32 %1097, 32768
  %1436 = icmp eq i32 %1435, 0
  br i1 %1436, label %1452, label %1437

; <label>:1437                                    ; preds = %1434
  %1438 = fmul fast float %1345, 1.270000e+02
  %1439 = fadd fast float %1438, %1019
  %1440 = fadd fast float %1438, %1020
  %1441 = fadd fast float %1438, %1021
  br label %1452

; <label>:1442                                    ; preds = %1413
  %1443 = fsub fast float 1.270000e+02, %1019
  %1444 = fsub fast float 1.270000e+02, %1020
  %1445 = fsub fast float 1.270000e+02, %1021
  %1446 = fmul fast float %1345, %1443
  %1447 = fmul fast float %1345, %1444
  %1448 = fmul fast float %1345, %1445
  %1449 = fadd fast float %1446, %1019
  %1450 = fadd fast float %1447, %1020
  %1451 = fadd fast float %1448, %1021
  br label %1452

; <label>:1452                                    ; preds = %1442, %1437, %1434
  %1453 = phi float [ %1439, %1437 ], [ %1019, %1434 ], [ %1449, %1442 ]
  %1454 = phi float [ %1440, %1437 ], [ %1020, %1434 ], [ %1450, %1442 ]
  %1455 = phi float [ %1441, %1437 ], [ %1021, %1434 ], [ %1451, %1442 ]
  %1456 = call float @dx.op.dot3.f32(i32 55, float %1303, float %1304, float %1305, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 0
  %1459 = extractvalue %dx.types.CBufRet.f32 %1457, 1
  %1460 = fmul fast float %1459, %1456
  %1461 = fadd fast float %1460, %1458
  %1462 = call float @dx.op.unary.f32(i32 7, float %1461)  ; Saturate(value)
  %1463 = bitcast float %1085 to i32
  %1464 = and i32 %1463, 65535
  %1465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1464)  ; LegacyF16ToF32(value)
  %1466 = lshr i32 %1463, 16
  %1467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1466)  ; LegacyF16ToF32(value)
  %1468 = fcmp fast oge float %1465, 0.000000e+00
  %1469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.f32 %1469, 0
  %1471 = select i1 %1468, float %1465, float %1470
  %1472 = fadd fast float %1471, %1467
  %1473 = fsub fast float %1462, %1018
  %1474 = fmul fast float %1473, %1249
  %1475 = fadd fast float %1474, %1018
  %1476 = fmul fast float %1472, %1249
  %1477 = call float @dx.op.binary.f32(i32 35, float %1017, float %1476)  ; FMax(a,b)
  %1478 = and i32 %1097, 16
  %1479 = icmp eq i32 %1478, 0
  br i1 %1479, label %1501, label %1480

; <label>:1480                                    ; preds = %1452
  %1481 = add i32 %1088, 0
  %1482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1481, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1483 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1482, %dx.types.Handle %1262, float %1190, float %1193, float undef, float undef, i32 0, i32 0, i32 undef, float %1195, float %1197, float undef, float %1199, float %1201, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1484 = extractvalue %dx.types.ResRet.f32 %1483, 0
  %1485 = extractvalue %dx.types.ResRet.f32 %1483, 1
  %1486 = extractvalue %dx.types.ResRet.f32 %1483, 2
  %1487 = and i32 %1381, 65535
  %1488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1487)  ; LegacyF16ToF32(value)
  %1489 = fmul fast float %1484, %1082
  %1490 = fmul fast float %1485, %1083
  %1491 = fmul fast float %1486, %1084
  %1492 = and i32 %1097, 16384
  %1493 = icmp ne i32 %1492, 0
  %1494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1495 = extractvalue %dx.types.CBufRet.f32 %1494, 0
  %1496 = select i1 %1493, float %1495, float 1.000000e+00
  %1497 = fmul fast float %1496, %1488
  %1498 = fmul fast float %1489, %1497
  %1499 = fmul fast float %1490, %1497
  %1500 = fmul fast float %1491, %1497
  br label %1501

; <label>:1501                                    ; preds = %1480, %1452
  %1502 = phi float [ %1498, %1480 ], [ 0.000000e+00, %1452 ]
  %1503 = phi float [ %1499, %1480 ], [ 0.000000e+00, %1452 ]
  %1504 = phi float [ %1500, %1480 ], [ 0.000000e+00, %1452 ]
  %1505 = fsub fast float %1502, %1027
  %1506 = fsub fast float %1503, %1028
  %1507 = fsub fast float %1504, %1029
  %1508 = fmul fast float %1505, %1249
  %1509 = fmul fast float %1506, %1249
  %1510 = fmul fast float %1507, %1249
  %1511 = fadd fast float %1508, %1027
  %1512 = fadd fast float %1509, %1028
  %1513 = fadd fast float %1510, %1029
  br label %1146

; <label>:1514                                    ; preds = %1146
  br label %1515

; <label>:1515                                    ; preds = %1514, %904
  %1516 = phi float [ 0.000000e+00, %904 ], [ %1147, %1514 ]
  %1517 = phi float [ %926, %904 ], [ %1148, %1514 ]
  %1518 = phi float [ %924, %904 ], [ %1149, %1514 ]
  %1519 = phi float [ %916, %904 ], [ %1150, %1514 ]
  %1520 = phi float [ %917, %904 ], [ %1151, %1514 ]
  %1521 = phi float [ %918, %904 ], [ %1152, %1514 ]
  %1522 = phi float [ 0.000000e+00, %904 ], [ %1153, %1514 ]
  %1523 = phi float [ 0.000000e+00, %904 ], [ %1154, %1514 ]
  %1524 = phi float [ %910, %904 ], [ %1155, %1514 ]
  %1525 = phi float [ %911, %904 ], [ %1156, %1514 ]
  %1526 = phi float [ %912, %904 ], [ %1157, %1514 ]
  %1527 = phi float [ %913, %904 ], [ %1158, %1514 ]
  %1528 = phi float [ %914, %904 ], [ %1159, %1514 ]
  %1529 = phi float [ %915, %904 ], [ %1160, %1514 ]
  %1530 = phi float [ %958, %904 ], [ %1161, %1514 ]
  %1531 = phi float [ %959, %904 ], [ %1162, %1514 ]
  %1532 = phi float [ %960, %904 ], [ %1163, %1514 ]
  %1533 = phi float [ %922, %904 ], [ %1164, %1514 ]
  %1534 = phi float [ %921, %904 ], [ %1165, %1514 ]
  %1535 = phi float [ 0.000000e+00, %904 ], [ %1166, %1514 ]
  %1536 = phi float [ %919, %904 ], [ %1167, %1514 ]
  %1537 = phi float [ %907, %904 ], [ %1168, %1514 ]
  %1538 = phi float [ %908, %904 ], [ %1169, %1514 ]
  %1539 = phi float [ %909, %904 ], [ %1170, %1514 ]
  %1540 = call float @dx.op.dot3.f32(i32 55, float %1530, float %1531, float %1532, float %1530, float %1531, float %1532)  ; Dot3(ax,ay,az,bx,by,bz)
  %1541 = call float @dx.op.unary.f32(i32 25, float %1540)  ; Rsqrt(value)
  %1542 = fmul fast float %1541, %1530
  %1543 = fmul fast float %1541, %1531
  %1544 = fmul fast float %1541, %1532
  %1545 = fadd fast float %1535, %920
  %1546 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1547 = call float @dx.op.dot3.f32(i32 55, float %1542, float %1543, float %1544, float %1542, float %1543, float %1544)  ; Dot3(ax,ay,az,bx,by,bz)
  %1548 = call float @dx.op.unary.f32(i32 25, float %1547)  ; Rsqrt(value)
  %1549 = fmul fast float %1548, %1542
  %1550 = fmul fast float %1548, %1543
  %1551 = fmul fast float %1548, %1544
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = extractvalue %dx.types.ResRet.i32 %1552, 1
  %1555 = extractvalue %dx.types.ResRet.i32 %1552, 2
  %1556 = extractvalue %dx.types.ResRet.i32 %1552, 3
  %1557 = bitcast i32 %1553 to float
  %1558 = bitcast i32 %1554 to float
  %1559 = bitcast i32 %1555 to float
  %1560 = bitcast i32 %1556 to float
  %1561 = fsub fast float %1537, %1557
  %1562 = fsub fast float %1538, %1558
  %1563 = fsub fast float %1539, %1559
  %1564 = fmul fast float %1561, %163
  %1565 = fmul fast float %1562, %163
  %1566 = fmul fast float %1563, %163
  %1567 = fadd fast float %1564, %1557
  %1568 = fadd fast float %1565, %1558
  %1569 = fadd fast float %1566, %1559
  %1570 = fsub fast float %1546, %1560
  %1571 = fmul fast float %1570, %163
  %1572 = fadd fast float %1571, %1560
  %1573 = fadd fast float %1536, 0xBFB99999A0000000
  %1574 = call float @dx.op.unary.f32(i32 7, float %1573)  ; Saturate(value)
  %1575 = fmul fast float %1574, 0x3FF1C71C80000000
  %1576 = call float @dx.op.binary.f32(i32 36, float %1536, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1577 = fsub fast float 1.000000e+00, %1575
  %1578 = call float @dx.op.unary.f32(i32 7, float %1577)  ; Saturate(value)
  %1579 = fmul fast float %1567, %1578
  %1580 = fmul fast float %1568, %1578
  %1581 = fmul fast float %1569, %1578
  %1582 = call float @dx.op.unary.f32(i32 7, float %1579)  ; Saturate(value)
  %1583 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  %1584 = call float @dx.op.unary.f32(i32 7, float %1581)  ; Saturate(value)
  %1585 = fmul fast float %1567, %1575
  %1586 = fmul fast float %1568, %1575
  %1587 = fmul fast float %1569, %1575
  %1588 = fadd fast float %1585, %1576
  %1589 = fadd fast float %1586, %1576
  %1590 = fadd fast float %1587, %1576
  %1591 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  %1592 = call float @dx.op.unary.f32(i32 7, float %1589)  ; Saturate(value)
  %1593 = call float @dx.op.unary.f32(i32 7, float %1590)  ; Saturate(value)
  %1594 = call float @dx.op.unary.f32(i32 7, float %1534)  ; Saturate(value)
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = and i32 %1596, 1
  %1598 = icmp eq i32 %1597, 0
  br i1 %1598, label %1613, label %1599

; <label>:1599                                    ; preds = %1515
  %1600 = call float @dx.op.binary.f32(i32 35, float %1583, float %1584)  ; FMax(a,b)
  %1601 = call float @dx.op.binary.f32(i32 35, float %1582, float %1600)  ; FMax(a,b)
  %1602 = fcmp fast ogt float %1601, 0.000000e+00
  %1603 = bitcast float %1601 to i32
  %1604 = sub nsw i32 2129859010, %1603
  %1605 = bitcast i32 %1604 to float
  %1606 = select i1 %1602, float %1605, float 0.000000e+00
  %1607 = fmul fast float %1582, %1524
  %1608 = fmul fast float %1583, %1525
  %1609 = fmul fast float %1584, %1526
  %1610 = fmul fast float %1607, %1606
  %1611 = fmul fast float %1608, %1606
  %1612 = fmul fast float %1609, %1606
  br label %1613

; <label>:1613                                    ; preds = %1599, %1515
  %1614 = phi float [ %1610, %1599 ], [ %1524, %1515 ]
  %1615 = phi float [ %1611, %1599 ], [ %1525, %1515 ]
  %1616 = phi float [ %1612, %1599 ], [ %1526, %1515 ]
  %1617 = call float @dx.op.binary.f32(i32 36, float %1519, float 1.270000e+02)  ; FMin(a,b)
  %1618 = call float @dx.op.binary.f32(i32 36, float %1520, float 1.270000e+02)  ; FMin(a,b)
  %1619 = call float @dx.op.binary.f32(i32 36, float %1521, float 1.270000e+02)  ; FMin(a,b)
  %1620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1621 = extractvalue %dx.types.CBufRet.i32 %1620, 3
  %1622 = and i32 %1621, 8
  %1623 = icmp ne i32 %1622, 0
  %1624 = call float @dx.op.binary.f32(i32 35, float %1582, float %1567)  ; FMax(a,b)
  %1625 = call float @dx.op.binary.f32(i32 35, float %1583, float %1567)  ; FMax(a,b)
  %1626 = call float @dx.op.binary.f32(i32 35, float %1584, float %1567)  ; FMax(a,b)
  %1627 = call float @dx.op.dot3.f32(i32 55, float %1582, float %1583, float %1584, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1628 = select i1 %222, float %1567, float %1582
  %1629 = select i1 %222, float %1627, float %1583
  %1630 = select i1 %222, float 1.000000e+00, float %1584
  %1631 = select i1 %1623, float %1624, float %1628
  %1632 = select i1 %1623, float %1625, float %1629
  %1633 = select i1 %1623, float %1626, float %1630
  %1634 = call float @dx.op.dot3.f32(i32 55, float %1614, float %1615, float %1616, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1635 = select i1 %222, float %1634, float %1614
  %1636 = select i1 %222, float %1634, float %1615
  %1637 = select i1 %222, float %1634, float %1616
  %1638 = and i32 %198, 3
  %1639 = select i1 %192, i32 %1638, i32 0
  %1640 = icmp eq i32 %1639, 1
  br i1 %1640, label %1641, label %1717

; <label>:1641                                    ; preds = %1613
  %1642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1643 = extractvalue %dx.types.CBufRet.f32 %1642, 0
  %1644 = extractvalue %dx.types.CBufRet.f32 %1642, 1
  %1645 = fadd fast float %1643, %130
  %1646 = fadd fast float %1644, %131
  %1647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1647, 0
  %1649 = extractvalue %dx.types.CBufRet.f32 %1647, 1
  %1650 = fsub fast float %1645, %1648
  %1651 = fsub fast float %1646, %1649
  %1652 = fmul fast float %1650, %1650
  %1653 = fmul fast float %1651, %1651
  %1654 = fadd fast float %1652, %1653
  %1655 = call float @dx.op.unary.f32(i32 24, float %1654)  ; Sqrt(value)
  %1656 = extractvalue %dx.types.CBufRet.f32 %1647, 2
  %1657 = fcmp fast olt float %1655, %1656
  br i1 %1657, label %1658, label %1711

; <label>:1658                                    ; preds = %1641
  %1659 = extractvalue %dx.types.CBufRet.f32 %1642, 2
  %1660 = fadd fast float %1659, %132
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 0
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 0
  %1665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1666 = extractvalue %dx.types.CBufRet.f32 %1665, 0
  %1667 = extractvalue %dx.types.CBufRet.f32 %1661, 1
  %1668 = extractvalue %dx.types.CBufRet.f32 %1663, 1
  %1669 = extractvalue %dx.types.CBufRet.f32 %1665, 1
  %1670 = extractvalue %dx.types.CBufRet.f32 %1661, 3
  %1671 = extractvalue %dx.types.CBufRet.f32 %1663, 3
  %1672 = extractvalue %dx.types.CBufRet.f32 %1665, 3
  %1673 = fadd fast float %1670, %1645
  %1674 = fadd fast float %1671, %1646
  %1675 = fadd fast float %1660, %1672
  %1676 = fmul fast float %1673, %1662
  %1677 = call float @dx.op.tertiary.f32(i32 46, float %1674, float %1664, float %1676)  ; FMad(a,b,c)
  %1678 = call float @dx.op.tertiary.f32(i32 46, float %1675, float %1666, float %1677)  ; FMad(a,b,c)
  %1679 = fmul fast float %1673, %1667
  %1680 = call float @dx.op.tertiary.f32(i32 46, float %1674, float %1668, float %1679)  ; FMad(a,b,c)
  %1681 = call float @dx.op.tertiary.f32(i32 46, float %1675, float %1669, float %1680)  ; FMad(a,b,c)
  %1682 = fsub fast float %1678, %1670
  %1683 = fsub fast float %1681, %1671
  %1684 = fsub fast float %1682, %1648
  %1685 = fadd fast float %1684, %1656
  %1686 = fsub fast float %1683, %1649
  %1687 = fadd fast float %1686, %1656
  %1688 = extractvalue %dx.types.CBufRet.f32 %1647, 3
  %1689 = fmul fast float %1685, %1688
  %1690 = fmul fast float %1687, %1688
  %1691 = call float @dx.op.unary.f32(i32 7, float %1689)  ; Saturate(value)
  %1692 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1693 = fsub fast float 1.000000e+00, %1691
  %1694 = fsub fast float 1.000000e+00, %1692
  %1695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %38, float %1693, float %1694, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1696 = extractvalue %dx.types.ResRet.f32 %1695, 0
  %1697 = fcmp fast ugt float %1696, 0.000000e+00
  br i1 %1697, label %1698, label %1711

; <label>:1698                                    ; preds = %1658
  %1699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1700 = extractvalue %dx.types.CBufRet.f32 %1699, 2
  %1701 = fmul fast float %1700, %1696
  %1702 = extractvalue %dx.types.CBufRet.f32 %1699, 3
  %1703 = fadd fast float %1702, %1701
  %1704 = extractvalue %dx.types.CBufRet.f32 %1665, 2
  %1705 = fadd fast float %1703, %1672
  %1706 = fmul fast float %1678, %1666
  %1707 = call float @dx.op.tertiary.f32(i32 46, float %1681, float %1669, float %1706)  ; FMad(a,b,c)
  %1708 = call float @dx.op.tertiary.f32(i32 46, float %1705, float %1704, float %1707)  ; FMad(a,b,c)
  %1709 = fsub fast float %1708, %1672
  %1710 = fsub fast float %1709, %1659
  br label %1711

; <label>:1711                                    ; preds = %1698, %1658, %1641
  %1712 = phi i1 [ true, %1698 ], [ false, %1658 ], [ false, %1641 ]
  %1713 = phi float [ %1710, %1698 ], [ -1.310720e+05, %1658 ], [ -1.310720e+05, %1641 ]
  %1714 = fsub fast float %1713, %132
  %1715 = call float @dx.op.unary.f32(i32 7, float %1714)  ; Saturate(value)
  %1716 = select i1 %1712, float %1715, float 1.000000e+00
  br label %1717

; <label>:1717                                    ; preds = %1711, %1613
  %1718 = phi float [ %1716, %1711 ], [ 0.000000e+00, %1613 ]
  %1719 = icmp eq i32 %1639, 3
  %1720 = select i1 %1719, float 1.000000e+00, float %1718
  %1721 = call float @dx.op.binary.f32(i32 35, float %1516, float %1720)  ; FMax(a,b)
  %1722 = call float @dx.op.unary.f32(i32 7, float %1721)  ; Saturate(value)
  %1723 = fcmp fast une float %1722, 0.000000e+00
  %1724 = fsub fast float -0.000000e+00, %149
  %1725 = fsub fast float -0.000000e+00, %150
  %1726 = fsub fast float -0.000000e+00, %151
  br i1 %1723, label %1727, label %1889

; <label>:1727                                    ; preds = %1717
  %1728 = call float @dx.op.dot3.f32(i32 55, float %1724, float %1725, float %1726, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %1729 = fmul fast float %1722, 2.500000e+00
  %1730 = call float @dx.op.unary.f32(i32 7, float %1729)  ; Saturate(value)
  %1731 = fmul fast float %1722, 0x4013FFFFE0000000
  %1732 = fadd fast float %1731, 0xBFFFFFFFE0000000
  %1733 = call float @dx.op.unary.f32(i32 7, float %1732)  ; Saturate(value)
  %1734 = fmul fast float %1722, 0x4004000020000000
  %1735 = fadd fast float %1734, 0xBFF8000040000000
  %1736 = call float @dx.op.unary.f32(i32 7, float %1735)  ; Saturate(value)
  %1737 = call float @dx.op.unary.f32(i32 7, float %1730)  ; Saturate(value)
  %1738 = fmul fast float %1573, 1.000000e+01
  %1739 = call float @dx.op.unary.f32(i32 7, float %1738)  ; Saturate(value)
  %1740 = fmul fast float %1739, 2.000000e+00
  %1741 = fsub fast float 3.000000e+00, %1740
  %1742 = fmul fast float %1739, %1739
  %1743 = fmul fast float %1742, %1741
  %1744 = fsub fast float 1.000000e+00, %1743
  %1745 = fsub fast float 0x3FE3333340000000, %1594
  %1746 = fmul fast float %1745, 0x400AAAAAA0000000
  %1747 = call float @dx.op.unary.f32(i32 7, float %1746)  ; Saturate(value)
  %1748 = fmul fast float %1744, %1747
  %1749 = fmul fast float %1631, 0x3FEA2B8620000000
  %1750 = fmul fast float %1632, 0x3FEA2B8620000000
  %1751 = fmul fast float %1633, 0x3FEA2B8620000000
  %1752 = fadd fast float %1749, 0x3FC81DFBA0000000
  %1753 = fmul fast float %1752, %1631
  %1754 = fadd fast float %1753, 0x3F910E6020000000
  %1755 = fadd fast float %1750, 0x3FC81DFBA0000000
  %1756 = fmul fast float %1755, %1632
  %1757 = fadd fast float %1756, 0x3F910E6020000000
  %1758 = fadd fast float %1751, 0x3FC81DFBA0000000
  %1759 = fmul fast float %1758, %1633
  %1760 = fadd fast float %1759, 0x3F910E6020000000
  %1761 = call float @dx.op.unary.f32(i32 7, float %1754)  ; Saturate(value)
  %1762 = call float @dx.op.unary.f32(i32 7, float %1757)  ; Saturate(value)
  %1763 = call float @dx.op.unary.f32(i32 7, float %1760)  ; Saturate(value)
  %1764 = fsub fast float %1761, %1631
  %1765 = fsub fast float %1762, %1632
  %1766 = fsub fast float %1763, %1633
  %1767 = fmul fast float %1764, %1737
  %1768 = fmul fast float %1767, %1748
  %1769 = fmul fast float %1765, %1737
  %1770 = fmul fast float %1769, %1748
  %1771 = fmul fast float %1766, %1737
  %1772 = fmul fast float %1771, %1748
  %1773 = fadd fast float %1768, %1631
  %1774 = fadd fast float %1770, %1632
  %1775 = fadd fast float %1772, %1633
  %1776 = fmul fast float %1533, %1533
  %1777 = fmul fast float %1776, %1776
  %1778 = fadd fast float %1733, 1.000000e+00
  %1779 = fsub fast float %1778, %1748
  %1780 = call float @dx.op.unary.f32(i32 7, float %1779)  ; Saturate(value)
  %1781 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1782 = call float @dx.op.unary.f32(i32 7, float %1781)  ; Saturate(value)
  %1783 = fsub fast float 1.000000e+00, %1777
  %1784 = call float @dx.op.binary.f32(i32 36, float %1780, float %1783)  ; FMin(a,b)
  %1785 = call float @dx.op.unary.f32(i32 7, float %1736)  ; Saturate(value)
  %1786 = call float @dx.op.binary.f32(i32 35, float %1784, float %1785)  ; FMax(a,b)
  %1787 = fadd fast float %1782, 0xBFE4CCCCC0000000
  %1788 = fmul fast float %1787, 0x4006DB6DA0000000
  %1789 = call float @dx.op.unary.f32(i32 7, float %1788)  ; Saturate(value)
  %1790 = fmul fast float %1789, 2.000000e+00
  %1791 = fsub fast float 3.000000e+00, %1790
  %1792 = bitcast float %1591 to i32
  %1793 = ashr i32 %1792, 1
  %1794 = add nsw i32 %1793, 532487669
  %1795 = bitcast i32 %1794 to float
  %1796 = fsub fast float 1.000000e+00, %1795
  %1797 = bitcast float %1796 to i32
  %1798 = sub nsw i32 2129859010, %1797
  %1799 = bitcast i32 %1798 to float
  %1800 = fmul fast float %1799, 2.000000e+00
  %1801 = bitcast float %1592 to i32
  %1802 = ashr i32 %1801, 1
  %1803 = add nsw i32 %1802, 532487669
  %1804 = bitcast i32 %1803 to float
  %1805 = fsub fast float 1.000000e+00, %1804
  %1806 = bitcast float %1805 to i32
  %1807 = sub nsw i32 2129859010, %1806
  %1808 = bitcast i32 %1807 to float
  %1809 = fmul fast float %1808, 2.000000e+00
  %1810 = bitcast float %1593 to i32
  %1811 = ashr i32 %1810, 1
  %1812 = add nsw i32 %1811, 532487669
  %1813 = bitcast i32 %1812 to float
  %1814 = fsub fast float 1.000000e+00, %1813
  %1815 = bitcast float %1814 to i32
  %1816 = sub nsw i32 2129859010, %1815
  %1817 = bitcast i32 %1816 to float
  %1818 = fmul fast float %1817, 2.000000e+00
  %1819 = fsub fast float 0x4002A9FBE0000000, %1800
  %1820 = fadd fast float %1800, 0x3FD54FDF00000000
  %1821 = bitcast float %1820 to i32
  %1822 = sub nsw i32 2129859010, %1821
  %1823 = bitcast i32 %1822 to float
  %1824 = fmul fast float %1823, %1819
  %1825 = fmul fast float %1824, %1824
  %1826 = fsub fast float 0x4002A9FBE0000000, %1809
  %1827 = fadd fast float %1809, 0x3FD54FDF00000000
  %1828 = bitcast float %1827 to i32
  %1829 = sub nsw i32 2129859010, %1828
  %1830 = bitcast i32 %1829 to float
  %1831 = fmul fast float %1830, %1826
  %1832 = fmul fast float %1831, %1831
  %1833 = fsub fast float 0x4002A9FBE0000000, %1818
  %1834 = fadd fast float %1818, 0x3FD54FDF00000000
  %1835 = bitcast float %1834 to i32
  %1836 = sub nsw i32 2129859010, %1835
  %1837 = bitcast i32 %1836 to float
  %1838 = fmul fast float %1837, %1833
  %1839 = fmul fast float %1838, %1838
  %1840 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1825)  ; FMax(a,b)
  %1841 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1832)  ; FMax(a,b)
  %1842 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1839)  ; FMax(a,b)
  %1843 = fsub fast float 1.000000e+00, %1728
  %1844 = fadd fast float %1843, %1744
  %1845 = call float @dx.op.unary.f32(i32 7, float %1844)  ; Saturate(value)
  %1846 = fsub fast float 1.000000e+00, %1720
  %1847 = fmul fast float %1786, %1846
  %1848 = fmul fast float %1789, %1789
  %1849 = fmul fast float %1848, %1847
  %1850 = fmul fast float %1849, %1791
  %1851 = fmul fast float %1846, 0xBFE99999A0000000
  %1852 = fmul fast float %1851, %1737
  %1853 = fmul fast float %1852, %1748
  %1854 = fadd fast float %1853, 1.000000e+00
  %1855 = fadd fast float %1594, -1.000000e+00
  %1856 = fmul fast float %1854, %1855
  %1857 = fadd fast float %1856, 1.000000e+00
  %1858 = fsub fast float %1840, %1591
  %1859 = fsub fast float %1841, %1592
  %1860 = fsub fast float %1842, %1593
  %1861 = fmul fast float %1850, %1858
  %1862 = fmul fast float %1850, %1859
  %1863 = fmul fast float %1850, %1860
  %1864 = fadd fast float %1861, %1591
  %1865 = fadd fast float %1862, %1592
  %1866 = fadd fast float %1863, %1593
  %1867 = fsub fast float %85, %1549
  %1868 = fsub fast float %86, %1550
  %1869 = fsub fast float %87, %1551
  %1870 = fmul fast float %1850, %1867
  %1871 = fmul fast float %1850, %1868
  %1872 = fmul fast float %1850, %1869
  %1873 = fadd fast float %1870, %1549
  %1874 = fadd fast float %1871, %1550
  %1875 = fadd fast float %1872, %1551
  %1876 = fmul fast float %1850, %1845
  %1877 = call float @dx.op.unary.f32(i32 7, float %1857)  ; Saturate(value)
  %1878 = fsub fast float 1.000000e+00, %1877
  %1879 = fmul fast float %1876, %1878
  %1880 = fadd fast float %1879, %1877
  %1881 = fsub fast float 1.000000e+00, %1533
  %1882 = fmul fast float %1850, %1881
  %1883 = fadd fast float %1882, %1533
  %1884 = call float @dx.op.dot3.f32(i32 55, float %1873, float %1874, float %1875, float %1873, float %1874, float %1875)  ; Dot3(ax,ay,az,bx,by,bz)
  %1885 = call float @dx.op.unary.f32(i32 25, float %1884)  ; Rsqrt(value)
  %1886 = fmul fast float %1873, %1885
  %1887 = fmul fast float %1874, %1885
  %1888 = fmul fast float %1875, %1885
  br label %1889

; <label>:1889                                    ; preds = %1727, %1717
  %1890 = phi float [ %1886, %1727 ], [ %1549, %1717 ]
  %1891 = phi float [ %1887, %1727 ], [ %1550, %1717 ]
  %1892 = phi float [ %1888, %1727 ], [ %1551, %1717 ]
  %1893 = phi float [ %1864, %1727 ], [ %1591, %1717 ]
  %1894 = phi float [ %1865, %1727 ], [ %1592, %1717 ]
  %1895 = phi float [ %1866, %1727 ], [ %1593, %1717 ]
  %1896 = phi float [ %1773, %1727 ], [ %1631, %1717 ]
  %1897 = phi float [ %1774, %1727 ], [ %1632, %1717 ]
  %1898 = phi float [ %1775, %1727 ], [ %1633, %1717 ]
  %1899 = phi float [ %1880, %1727 ], [ %1594, %1717 ]
  %1900 = phi float [ %1883, %1727 ], [ %1533, %1717 ]
  %1901 = select i1 %222, float 0.000000e+00, float %1895
  %1902 = call float @dx.op.dot3.f32(i32 55, float %1890, float %1891, float %1892, float %1724, float %1725, float %1726)  ; Dot3(ax,ay,az,bx,by,bz)
  %1903 = call float @dx.op.unary.f32(i32 7, float %1902)  ; Saturate(value)
  %1904 = call float @dx.op.dot3.f32(i32 55, float %149, float %150, float %151, float %1890, float %1891, float %1892)  ; Dot3(ax,ay,az,bx,by,bz)
  %1905 = fmul fast float %1904, 2.000000e+00
  %1906 = fmul fast float %1905, %1890
  %1907 = fmul fast float %1905, %1891
  %1908 = fmul fast float %1905, %1892
  %1909 = fsub fast float %149, %1906
  %1910 = fsub fast float %150, %1907
  %1911 = fsub fast float %151, %1908
  %1912 = call float @dx.op.binary.f32(i32 36, float %1900, float 1.000000e+00)  ; FMin(a,b)
  %1913 = fsub fast float 1.000000e+00, %1912
  %1914 = bitcast float %1913 to i32
  %1915 = ashr i32 %1914, 1
  %1916 = add nsw i32 %1915, 532487669
  %1917 = bitcast i32 %1916 to float
  %1918 = fsub fast float 1.000000e+00, %1899
  %1919 = call float @dx.op.binary.f32(i32 35, float %1918, float 0x3F847AE140000000)  ; FMax(a,b)
  %1920 = fmul fast float %1919, %1919
  %1921 = fmul fast float %1920, %1920
  %1922 = call float @dx.op.unary.f32(i32 7, float %1903)  ; Saturate(value)
  %1923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %38, float %1917, float %1921, float %1922, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1924 = extractvalue %dx.types.ResRet.f32 %1923, 0
  %1925 = fsub fast float 1.000000e+00, %1900
  %1926 = bitcast float %1925 to i32
  %1927 = sub nsw i32 2129859010, %1926
  %1928 = call float @dx.op.dot3.f32(i32 55, float %54, float %50, float %46, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1929 = fmul fast float %1928, 0x3FD20DD760000000
  %1930 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %1931 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %1932 = fcmp fast oeq float %1931, 0.000000e+00
  %1933 = fcmp fast oeq float %1930, 0.000000e+00
  %1934 = or i1 %1933, %1932
  br i1 %1934, label %1964, label %1935

; <label>:1935                                    ; preds = %1889
  %1936 = fsub fast float -0.000000e+00, %57
  %1937 = fsub fast float -0.000000e+00, %55
  %1938 = call float @dx.op.unary.f32(i32 24, float %1931)  ; Sqrt(value)
  %1939 = fdiv fast float %1938, %1930
  %1940 = fcmp fast ogt float %1939, 0x3FFB6F8900000000
  %1941 = select i1 %1940, float 0x3FFB6F8900000000, float %1939
  %1942 = fmul fast float %1941, 0x3FE8A23460000000
  %1943 = call float @dx.op.unary.f32(i32 7, float %1942)  ; Saturate(value)
  %1944 = call float @dx.op.binary.f32(i32 35, float %1941, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1945 = fmul fast float %1943, %1930
  %1946 = fmul fast float %1944, 0x3FF279A740000000
  %1947 = fadd fast float %1946, -1.000000e+00
  %1948 = call float @dx.op.dot3.f32(i32 55, float %1936, float %1937, float %56, float %1936, float %1937, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %1949 = call float @dx.op.unary.f32(i32 25, float %1948)  ; Rsqrt(value)
  %1950 = fmul fast float %1949, %1936
  %1951 = fmul fast float %1949, %1937
  %1952 = fmul fast float %1949, %56
  %1953 = fmul fast float %1947, %1947
  %1954 = fsub fast float 1.000000e+00, %1953
  %1955 = fmul fast float %1944, 0x40005F8BE0000000
  %1956 = fsub fast float 0x400C5BF8A0000000, %1955
  %1957 = fdiv fast float %1945, %1956
  %1958 = fmul fast float %1957, 0x3FEE31C3C0000000
  %1959 = fmul fast float %1958, %1954
  %1960 = fmul fast float %1944, 0x3FDACB7480000000
  %1961 = fadd fast float %1960, 0xBFD7347680000000
  %1962 = fmul fast float %1961, %1957
  %1963 = fmul fast float %1962, %1954
  br label %1964

; <label>:1964                                    ; preds = %1935, %1889
  %1965 = phi float [ %1950, %1935 ], [ 0.000000e+00, %1889 ]
  %1966 = phi float [ %1951, %1935 ], [ 0.000000e+00, %1889 ]
  %1967 = phi float [ %1952, %1935 ], [ 0.000000e+00, %1889 ]
  %1968 = phi float [ %1959, %1935 ], [ 0.000000e+00, %1889 ]
  %1969 = phi float [ %1963, %1935 ], [ 0.000000e+00, %1889 ]
  %1970 = call float @dx.op.dot3.f32(i32 55, float %1965, float %1966, float %1967, float %1890, float %1891, float %1892)  ; Dot3(ax,ay,az,bx,by,bz)
  %1971 = fmul fast float %1970, 0x3FDF454380000000
  %1972 = fmul fast float %1970, %1970
  %1973 = fmul fast float %1972, 0x3FEE471020000000
  %1974 = fadd fast float %1973, 0xBFD42F6020000000
  %1975 = fmul fast float %1930, 0x3FD20DD760000000
  %1976 = fmul fast float %1974, %1969
  %1977 = fadd fast float %1976, %1975
  %1978 = fmul fast float %1971, %1968
  %1979 = fadd fast float %1977, %1978
  %1980 = fsub fast float %1977, %1978
  %1981 = call float @dx.op.dot3.f32(i32 55, float %1965, float %1966, float %1967, float %1909, float %1910, float %1911)  ; Dot3(ax,ay,az,bx,by,bz)
  %1982 = fmul fast float %1981, 0x3FDF454380000000
  %1983 = fmul fast float %1981, %1981
  %1984 = fmul fast float %1983, 0x3FEE471020000000
  %1985 = fadd fast float %1984, 0xBFD42F6020000000
  %1986 = call float @dx.op.dot3.f32(i32 55, float %1930, float %1968, float %1969, float 0x3FD20DD760000000, float %1982, float %1985)  ; Dot3(ax,ay,az,bx,by,bz)
  %1987 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %1988 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %1989 = fcmp fast oeq float %1988, 0.000000e+00
  %1990 = fcmp fast oeq float %1987, 0.000000e+00
  %1991 = or i1 %1990, %1989
  br i1 %1991, label %2021, label %1992

; <label>:1992                                    ; preds = %1964
  %1993 = fsub fast float -0.000000e+00, %53
  %1994 = fsub fast float -0.000000e+00, %51
  %1995 = call float @dx.op.unary.f32(i32 24, float %1988)  ; Sqrt(value)
  %1996 = fdiv fast float %1995, %1987
  %1997 = fcmp fast ogt float %1996, 0x3FFB6F8900000000
  %1998 = select i1 %1997, float 0x3FFB6F8900000000, float %1996
  %1999 = fmul fast float %1998, 0x3FE8A23460000000
  %2000 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2001 = call float @dx.op.binary.f32(i32 35, float %1998, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2002 = fmul fast float %2000, %1987
  %2003 = fmul fast float %2001, 0x3FF279A740000000
  %2004 = fadd fast float %2003, -1.000000e+00
  %2005 = call float @dx.op.dot3.f32(i32 55, float %1993, float %1994, float %52, float %1993, float %1994, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %2006 = call float @dx.op.unary.f32(i32 25, float %2005)  ; Rsqrt(value)
  %2007 = fmul fast float %2006, %1993
  %2008 = fmul fast float %2006, %1994
  %2009 = fmul fast float %2006, %52
  %2010 = fmul fast float %2004, %2004
  %2011 = fsub fast float 1.000000e+00, %2010
  %2012 = fmul fast float %2001, 0x40005F8BE0000000
  %2013 = fsub fast float 0x400C5BF8A0000000, %2012
  %2014 = fdiv fast float %2002, %2013
  %2015 = fmul fast float %2014, 0x3FEE31C3C0000000
  %2016 = fmul fast float %2015, %2011
  %2017 = fmul fast float %2001, 0x3FDACB7480000000
  %2018 = fadd fast float %2017, 0xBFD7347680000000
  %2019 = fmul fast float %2018, %2014
  %2020 = fmul fast float %2019, %2011
  br label %2021

; <label>:2021                                    ; preds = %1992, %1964
  %2022 = phi float [ %2007, %1992 ], [ 0.000000e+00, %1964 ]
  %2023 = phi float [ %2008, %1992 ], [ 0.000000e+00, %1964 ]
  %2024 = phi float [ %2009, %1992 ], [ 0.000000e+00, %1964 ]
  %2025 = phi float [ %2016, %1992 ], [ 0.000000e+00, %1964 ]
  %2026 = phi float [ %2020, %1992 ], [ 0.000000e+00, %1964 ]
  %2027 = call float @dx.op.dot3.f32(i32 55, float %2022, float %2023, float %2024, float %1890, float %1891, float %1892)  ; Dot3(ax,ay,az,bx,by,bz)
  %2028 = fmul fast float %2027, 0x3FDF454380000000
  %2029 = fmul fast float %2027, %2027
  %2030 = fmul fast float %2029, 0x3FEE471020000000
  %2031 = fadd fast float %2030, 0xBFD42F6020000000
  %2032 = fmul fast float %1987, 0x3FD20DD760000000
  %2033 = fmul fast float %2031, %2026
  %2034 = fadd fast float %2033, %2032
  %2035 = fmul fast float %2028, %2025
  %2036 = fadd fast float %2034, %2035
  %2037 = fsub fast float %2034, %2035
  %2038 = call float @dx.op.dot3.f32(i32 55, float %2022, float %2023, float %2024, float %1909, float %1910, float %1911)  ; Dot3(ax,ay,az,bx,by,bz)
  %2039 = fmul fast float %2038, 0x3FDF454380000000
  %2040 = fmul fast float %2038, %2038
  %2041 = fmul fast float %2040, 0x3FEE471020000000
  %2042 = fadd fast float %2041, 0xBFD42F6020000000
  %2043 = call float @dx.op.dot3.f32(i32 55, float %1987, float %2025, float %2026, float 0x3FD20DD760000000, float %2039, float %2042)  ; Dot3(ax,ay,az,bx,by,bz)
  %2044 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %46)  ; FMax(a,b)
  %2045 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float %47, float %48, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %2046 = fcmp fast oeq float %2045, 0.000000e+00
  %2047 = fcmp fast oeq float %2044, 0.000000e+00
  %2048 = or i1 %2047, %2046
  br i1 %2048, label %2078, label %2049

; <label>:2049                                    ; preds = %2021
  %2050 = fsub fast float -0.000000e+00, %49
  %2051 = fsub fast float -0.000000e+00, %47
  %2052 = call float @dx.op.unary.f32(i32 24, float %2045)  ; Sqrt(value)
  %2053 = fdiv fast float %2052, %2044
  %2054 = fcmp fast ogt float %2053, 0x3FFB6F8900000000
  %2055 = select i1 %2054, float 0x3FFB6F8900000000, float %2053
  %2056 = fmul fast float %2055, 0x3FE8A23460000000
  %2057 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  %2058 = call float @dx.op.binary.f32(i32 35, float %2055, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2059 = fmul fast float %2057, %2044
  %2060 = fmul fast float %2058, 0x3FF279A740000000
  %2061 = fadd fast float %2060, -1.000000e+00
  %2062 = call float @dx.op.dot3.f32(i32 55, float %2050, float %2051, float %48, float %2050, float %2051, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %2063 = call float @dx.op.unary.f32(i32 25, float %2062)  ; Rsqrt(value)
  %2064 = fmul fast float %2063, %2050
  %2065 = fmul fast float %2063, %2051
  %2066 = fmul fast float %2063, %48
  %2067 = fmul fast float %2061, %2061
  %2068 = fsub fast float 1.000000e+00, %2067
  %2069 = fmul fast float %2058, 0x40005F8BE0000000
  %2070 = fsub fast float 0x400C5BF8A0000000, %2069
  %2071 = fdiv fast float %2059, %2070
  %2072 = fmul fast float %2071, 0x3FEE31C3C0000000
  %2073 = fmul fast float %2072, %2068
  %2074 = fmul fast float %2058, 0x3FDACB7480000000
  %2075 = fadd fast float %2074, 0xBFD7347680000000
  %2076 = fmul fast float %2075, %2071
  %2077 = fmul fast float %2076, %2068
  br label %2078

; <label>:2078                                    ; preds = %2049, %2021
  %2079 = phi float [ %2064, %2049 ], [ 0.000000e+00, %2021 ]
  %2080 = phi float [ %2065, %2049 ], [ 0.000000e+00, %2021 ]
  %2081 = phi float [ %2066, %2049 ], [ 0.000000e+00, %2021 ]
  %2082 = phi float [ %2073, %2049 ], [ 0.000000e+00, %2021 ]
  %2083 = phi float [ %2077, %2049 ], [ 0.000000e+00, %2021 ]
  %2084 = call float @dx.op.dot3.f32(i32 55, float %2079, float %2080, float %2081, float %1890, float %1891, float %1892)  ; Dot3(ax,ay,az,bx,by,bz)
  %2085 = fmul fast float %2084, 0x3FDF454380000000
  %2086 = fmul fast float %2084, %2084
  %2087 = fmul fast float %2086, 0x3FEE471020000000
  %2088 = fadd fast float %2087, 0xBFD42F6020000000
  %2089 = fmul fast float %2044, 0x3FD20DD760000000
  %2090 = fmul fast float %2088, %2083
  %2091 = fadd fast float %2090, %2089
  %2092 = fmul fast float %2085, %2082
  %2093 = fadd fast float %2091, %2092
  %2094 = fsub fast float %2091, %2092
  %2095 = call float @dx.op.dot3.f32(i32 55, float %2079, float %2080, float %2081, float %1909, float %1910, float %1911)  ; Dot3(ax,ay,az,bx,by,bz)
  %2096 = fmul fast float %2095, 0x3FDF454380000000
  %2097 = fmul fast float %2095, %2095
  %2098 = fmul fast float %2097, 0x3FEE471020000000
  %2099 = fadd fast float %2098, 0xBFD42F6020000000
  %2100 = call float @dx.op.dot3.f32(i32 55, float %2044, float %2082, float %2083, float 0x3FD20DD760000000, float %2096, float %2099)  ; Dot3(ax,ay,az,bx,by,bz)
  %2101 = call float @dx.op.binary.f32(i32 35, float %1979, float 0.000000e+00)  ; FMax(a,b)
  %2102 = call float @dx.op.binary.f32(i32 35, float %2036, float 0.000000e+00)  ; FMax(a,b)
  %2103 = call float @dx.op.binary.f32(i32 35, float %2093, float 0.000000e+00)  ; FMax(a,b)
  %2104 = call float @dx.op.binary.f32(i32 35, float %1980, float 0.000000e+00)  ; FMax(a,b)
  %2105 = call float @dx.op.binary.f32(i32 35, float %2037, float 0.000000e+00)  ; FMax(a,b)
  %2106 = call float @dx.op.binary.f32(i32 35, float %2094, float 0.000000e+00)  ; FMax(a,b)
  %2107 = call float @dx.op.binary.f32(i32 35, float %1986, float 0.000000e+00)  ; FMax(a,b)
  %2108 = call float @dx.op.binary.f32(i32 35, float %2043, float 0.000000e+00)  ; FMax(a,b)
  %2109 = call float @dx.op.binary.f32(i32 35, float %2100, float 0.000000e+00)  ; FMax(a,b)
  %2110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.f32 %2110, 0
  %2112 = call float @dx.op.binary.f32(i32 36, float %1896, float %2111)  ; FMin(a,b)
  %2113 = fmul fast float %2112, %1913
  %2114 = fsub fast float 1.000000e+00, %2113
  %2115 = bitcast float %2114 to i32
  %2116 = sub nsw i32 2129859010, %2115
  %2117 = bitcast i32 %2116 to float
  %2118 = call float @dx.op.binary.f32(i32 36, float %1897, float %2111)  ; FMin(a,b)
  %2119 = fmul fast float %2118, %1913
  %2120 = fsub fast float 1.000000e+00, %2119
  %2121 = bitcast float %2120 to i32
  %2122 = sub nsw i32 2129859010, %2121
  %2123 = bitcast i32 %2122 to float
  %2124 = call float @dx.op.binary.f32(i32 36, float %1898, float %2111)  ; FMin(a,b)
  %2125 = fmul fast float %2124, %1913
  %2126 = fsub fast float 1.000000e+00, %2125
  %2127 = bitcast float %2126 to i32
  %2128 = sub nsw i32 2129859010, %2127
  %2129 = bitcast i32 %2128 to float
  %2130 = fmul fast float %2101, %1912
  %2131 = fmul fast float %2130, %2117
  %2132 = fmul fast float %2102, %1912
  %2133 = fmul fast float %2132, %2123
  %2134 = fmul fast float %2103, %1912
  %2135 = fmul fast float %2134, %2129
  %2136 = call float @dx.op.binary.f32(i32 36, float %1893, float %2111)  ; FMin(a,b)
  %2137 = fmul fast float %2136, %1913
  %2138 = fsub fast float 1.000000e+00, %2137
  %2139 = bitcast float %2138 to i32
  %2140 = sub nsw i32 2129859010, %2139
  %2141 = bitcast i32 %2140 to float
  %2142 = call float @dx.op.binary.f32(i32 36, float %1894, float %2111)  ; FMin(a,b)
  %2143 = fmul fast float %2142, %1913
  %2144 = fsub fast float 1.000000e+00, %2143
  %2145 = bitcast float %2144 to i32
  %2146 = sub nsw i32 2129859010, %2145
  %2147 = bitcast i32 %2146 to float
  %2148 = call float @dx.op.binary.f32(i32 36, float %1901, float %2111)  ; FMin(a,b)
  %2149 = fmul fast float %2148, %1913
  %2150 = fsub fast float 1.000000e+00, %2149
  %2151 = bitcast float %2150 to i32
  %2152 = sub nsw i32 2129859010, %2151
  %2153 = bitcast i32 %2152 to float
  %2154 = fmul fast float %2107, %1912
  %2155 = fmul fast float %2154, %2141
  %2156 = fmul fast float %2108, %1912
  %2157 = fmul fast float %2156, %2147
  %2158 = fmul fast float %2109, %1912
  %2159 = fmul fast float %2158, %2153
  %2160 = call float @dx.op.dot3.f32(i32 55, float %2131, float %2133, float %2135, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2161 = select i1 %222, float 0.000000e+00, float %2131
  %2162 = select i1 %222, float %2160, float %2133
  %2163 = select i1 %222, float 0.000000e+00, float %2135
  %2164 = call float @dx.op.dot3.f32(i32 55, float %2104, float %2105, float %2106, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2165 = select i1 %222, float 0.000000e+00, float %2104
  %2166 = select i1 %222, float %2164, float %2105
  %2167 = select i1 %222, float 0.000000e+00, float %2106
  %2168 = call float @dx.op.dot3.f32(i32 55, float %2155, float %2157, float %2159, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2169 = select i1 %222, float 0.000000e+00, float %2155
  %2170 = select i1 %222, float %2168, float %2157
  %2171 = select i1 %222, float 0.000000e+00, float %2159
  %2172 = fmul fast float %923, %923
  %2173 = call float @dx.op.unary.f32(i32 7, float %2172)  ; Saturate(value)
  %2174 = fmul fast float %1903, 9.843750e-01
  %2175 = fmul fast float %1899, 9.843750e-01
  %2176 = fadd fast float %2174, 7.812500e-03
  %2177 = fadd fast float %2175, 7.812500e-03
  %2178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %38, float %2176, float %2177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2179 = extractvalue %dx.types.ResRet.f32 %2178, 0
  %2180 = extractvalue %dx.types.ResRet.f32 %2178, 1
  %2181 = extractvalue %dx.types.ResRet.f32 %2178, 2
  %2182 = extractvalue %dx.types.ResRet.f32 %2178, 3
  %2183 = fsub fast float 1.000000e+00, %2173
  %2184 = fsub fast float %2181, %2179
  %2185 = fsub fast float %2182, %2180
  %2186 = fmul fast float %2184, %2183
  %2187 = fmul fast float %2185, %2183
  %2188 = fadd fast float %2186, %2179
  %2189 = fadd fast float %2187, %2180
  %2190 = fmul fast float %2188, %1893
  %2191 = fmul fast float %2188, %1894
  %2192 = fmul fast float %2188, %1901
  %2193 = fadd fast float %2190, %2189
  %2194 = fadd fast float %2191, %2189
  %2195 = fadd fast float %2192, %2189
  %2196 = fcmp fast ogt float %1523, 0.000000e+00
  br i1 %2196, label %2197, label %2223

; <label>:2197                                    ; preds = %2078
  %2198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %38, float %1523, float %1903, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2199 = extractvalue %dx.types.ResRet.f32 %2198, 0
  %2200 = extractvalue %dx.types.ResRet.f32 %2198, 1
  %2201 = extractvalue %dx.types.ResRet.f32 %2198, 2
  %2202 = fadd fast float %2199, -5.000000e-01
  %2203 = fadd fast float %2200, -5.000000e-01
  %2204 = fadd fast float %2201, -5.000000e-01
  %2205 = fsub fast float 1.000000e+00, %1893
  %2206 = fsub fast float 1.000000e+00, %1894
  %2207 = fsub fast float 1.000000e+00, %1901
  %2208 = fmul fast float %1893, 4.000000e+00
  %2209 = fmul fast float %2208, %2205
  %2210 = fmul fast float %2209, %2202
  %2211 = fmul fast float %1894, 4.000000e+00
  %2212 = fmul fast float %2211, %2206
  %2213 = fmul fast float %2212, %2203
  %2214 = fmul fast float %1901, 4.000000e+00
  %2215 = fmul fast float %2214, %2207
  %2216 = fmul fast float %2215, %2204
  %2217 = fadd fast float %2210, %2193
  %2218 = fadd fast float %2213, %2194
  %2219 = fadd fast float %2216, %2195
  %2220 = call float @dx.op.unary.f32(i32 7, float %2217)  ; Saturate(value)
  %2221 = call float @dx.op.unary.f32(i32 7, float %2218)  ; Saturate(value)
  %2222 = call float @dx.op.unary.f32(i32 7, float %2219)  ; Saturate(value)
  br label %2223

; <label>:2223                                    ; preds = %2197, %2078
  %2224 = phi float [ %2220, %2197 ], [ %2193, %2078 ]
  %2225 = phi float [ %2221, %2197 ], [ %2194, %2078 ]
  %2226 = phi float [ %2222, %2197 ], [ %2195, %2078 ]
  %2227 = call float @dx.op.binary.f32(i32 35, float %2225, float %2226)  ; FMax(a,b)
  %2228 = call float @dx.op.binary.f32(i32 35, float %2224, float %2227)  ; FMax(a,b)
  %2229 = fsub fast float 1.000000e+00, %2228
  %2230 = fmul fast float %2228, %1899
  %2231 = fadd fast float %2230, %1899
  %2232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2233 = extractvalue %dx.types.CBufRet.f32 %2232, 2
  %2234 = extractvalue %dx.types.CBufRet.f32 %2232, 3
  %2235 = fmul fast float %2231, %2233
  %2236 = fadd fast float %2235, %2234
  %2237 = call float @dx.op.unary.f32(i32 7, float %2236)  ; Saturate(value)
  %2238 = fsub fast float 1.000000e+00, %1924
  %2239 = fadd fast float %2238, %2237
  %2240 = call float @dx.op.unary.f32(i32 7, float %2239)  ; Saturate(value)
  %2241 = fcmp fast olt float %2240, 1.000000e+00
  br i1 %2241, label %2242, label %2690

; <label>:2242                                    ; preds = %2223
  %2243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2244 = extractvalue %dx.types.CBufRet.f32 %2243, 2
  %2245 = extractvalue %dx.types.CBufRet.f32 %2243, 3
  %2246 = fmul fast float %2244, %82
  %2247 = fmul fast float %2245, %83
  %2248 = fptoui float %2246 to i32
  %2249 = fptoui float %2247 to i32
  %2250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2251 = extractvalue %dx.types.CBufRet.f32 %2250, 0
  %2252 = extractvalue %dx.types.CBufRet.f32 %2250, 2
  %2253 = extractvalue %dx.types.CBufRet.f32 %2250, 3
  %2254 = fadd fast float %70, -4.000000e+00
  %2255 = call float @dx.op.binary.f32(i32 35, float %2254, float 0.000000e+00)  ; FMax(a,b)
  %2256 = fadd fast float %2255, %2251
  %2257 = fmul fast float %2256, %2252
  %2258 = call float @dx.op.unary.f32(i32 23, float %2257)  ; Log(value)
  %2259 = fmul fast float %2258, %2253
  %2260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2261 = extractvalue %dx.types.CBufRet.f32 %2260, 2
  %2262 = fmul fast float %2259, %2261
  %2263 = call float @dx.op.unary.f32(i32 7, float %2262)  ; Saturate(value)
  %2264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2265 = extractvalue %dx.types.CBufRet.i32 %2264, 1
  %2266 = add i32 %2265, -1
  %2267 = uitofp i32 %2265 to float
  %2268 = fmul fast float %2267, %2263
  %2269 = fptoui float %2268 to i32
  %2270 = call i32 @dx.op.binary.i32(i32 40, i32 %2269, i32 %2266)  ; UMin(a,b)
  %2271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2272 = extractvalue %dx.types.CBufRet.i32 %2271, 2
  %2273 = extractvalue %dx.types.CBufRet.i32 %2271, 3
  %2274 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2249, i32 %2272, i32 %2248)  ; UMad(a,b,c)
  %2275 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2270, i32 %2273, i32 %2274)  ; UMad(a,b,c)
  %2276 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %2277 = fptoui float %2276 to i32
  %2278 = lshr i32 %2277, 5
  %2279 = call i32 @dx.op.binary.i32(i32 40, i32 %2278, i32 8191)  ; UMin(a,b)
  br i1 false, label %2280, label %2287

; <label>:2280                                    ; preds = %2242
  %2281 = fadd fast float 0.000000e+00, %1911
  %2282 = call float @dx.op.dot3.f32(i32 55, float %1909, float %1910, float %2281, float %1909, float %1910, float %2281)  ; Dot3(ax,ay,az,bx,by,bz)
  %2283 = call float @dx.op.unary.f32(i32 25, float %2282)  ; Rsqrt(value)
  %2284 = fmul fast float %2283, %1909
  %2285 = fmul fast float %2283, %1910
  %2286 = fmul fast float %2281, %2283
  br label %2287

; <label>:2287                                    ; preds = %2280, %2242
  %2288 = phi float [ %2284, %2280 ], [ %1909, %2242 ]
  %2289 = phi float [ %2285, %2280 ], [ %1910, %2242 ]
  %2290 = phi float [ %2286, %2280 ], [ %1911, %2242 ]
  %2291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2292 = extractvalue %dx.types.CBufRet.i32 %2291, 2
  %2293 = add nsw i32 %2292, -1
  %2294 = call i32 @dx.op.binary.i32(i32 37, i32 %2293, i32 0)  ; IMax(a,b)
  %2295 = shl i32 %2279, 2
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = lshr i32 %2297, 16
  %2299 = and i32 %2297, 65535
  %2300 = lshr i32 %2297, 21
  %2301 = lshr i32 %2299, 5
  %2302 = call i32 @dx.op.binary.i32(i32 40, i32 %2301, i32 %2294)  ; UMin(a,b)
  %2303 = icmp ugt i32 %2300, %2302
  br i1 %2303, label %2666, label %2304

; <label>:2304                                    ; preds = %2287
  br label %2305

; <label>:2305                                    ; preds = %2658, %2304
  %2306 = phi float [ %2659, %2658 ], [ 0.000000e+00, %2304 ]
  %2307 = phi float [ %2660, %2658 ], [ 0.000000e+00, %2304 ]
  %2308 = phi float [ %2661, %2658 ], [ 0.000000e+00, %2304 ]
  %2309 = phi float [ %2662, %2658 ], [ 1.000000e+00, %2304 ]
  %2310 = phi i32 [ %2663, %2658 ], [ %2300, %2304 ]
  %2311 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2312 = extractvalue %dx.types.CBufRet.i32 %2311, 2
  %2313 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2275, i32 %2312, i32 %2310)  ; UMad(a,b,c)
  %2314 = shl i32 %2313, 2
  %2315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.i32 %2315, 0
  %2317 = shl i32 %2310, 5
  %2318 = sub nsw i32 %2298, %2317
  %2319 = call i32 @dx.op.binary.i32(i32 37, i32 %2318, i32 0)  ; IMax(a,b)
  %2320 = call i32 @dx.op.binary.i32(i32 38, i32 %2319, i32 31)  ; IMin(a,b)
  %2321 = sub nsw i32 1, %2298
  %2322 = add nsw i32 %2321, %2299
  %2323 = call i32 @dx.op.binary.i32(i32 37, i32 %2322, i32 0)  ; IMax(a,b)
  %2324 = call i32 @dx.op.binary.i32(i32 38, i32 %2323, i32 32)  ; IMin(a,b)
  %2325 = and i32 %2324, 31
  %2326 = shl i32 -1, %2325
  %2327 = xor i32 %2326, -1
  %2328 = and i32 %2320, 31
  %2329 = shl i32 %2327, %2328
  %2330 = icmp eq i32 %2324, 32
  %2331 = select i1 %2330, i32 -1, i32 %2329
  %2332 = and i32 %2331, %2316
  %2333 = icmp eq i32 %2332, 0
  br i1 %2333, label %2658, label %2334

; <label>:2334                                    ; preds = %2305
  br label %2335

; <label>:2335                                    ; preds = %2441, %2334
  %2336 = phi float [ %2442, %2441 ], [ %2306, %2334 ]
  %2337 = phi float [ %2443, %2441 ], [ %2307, %2334 ]
  %2338 = phi float [ %2444, %2441 ], [ %2308, %2334 ]
  %2339 = phi float [ %2445, %2441 ], [ %2309, %2334 ]
  %2340 = phi i32 [ %2345, %2441 ], [ %2332, %2334 ]
  %2341 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2340)  ; FirstbitLo(value)
  %2342 = add i32 %2341, %2317
  %2343 = and i32 %2341, 31
  %2344 = shl i32 1, %2343
  %2345 = xor i32 %2344, %2340
  %2346 = mul i32 %2342, 72
  %2347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2346, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.f32 %2347, 0
  %2349 = extractvalue %dx.types.ResRet.f32 %2347, 1
  %2350 = extractvalue %dx.types.ResRet.f32 %2347, 2
  %2351 = add i32 %2346, 12
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2351, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = add i32 %2346, 16
  %2355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2356 = extractvalue %dx.types.ResRet.f32 %2355, 0
  %2357 = extractvalue %dx.types.ResRet.f32 %2355, 1
  %2358 = extractvalue %dx.types.ResRet.f32 %2355, 2
  %2359 = add i32 %2346, 28
  %2360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2359, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.f32 %2360, 0
  %2362 = add i32 %2346, 32
  %2363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2362, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.f32 %2363, 0
  %2365 = extractvalue %dx.types.ResRet.f32 %2363, 1
  %2366 = extractvalue %dx.types.ResRet.f32 %2363, 2
  %2367 = extractvalue %dx.types.ResRet.f32 %2363, 3
  %2368 = add i32 %2346, 48
  %2369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.f32 %2369, 0
  %2371 = extractvalue %dx.types.ResRet.f32 %2369, 1
  %2372 = add i32 %2346, 56
  %2373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.f32 %2373, 0
  %2375 = extractvalue %dx.types.ResRet.f32 %2373, 1
  %2376 = add i32 %2346, 64
  %2377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2376, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.f32 %2377, 0
  %2379 = extractvalue %dx.types.ResRet.f32 %2377, 1
  %2380 = mul i32 %2342, 60
  %2381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2380, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.f32 %2381, 0
  %2383 = extractvalue %dx.types.ResRet.f32 %2381, 1
  %2384 = extractvalue %dx.types.ResRet.f32 %2381, 2
  %2385 = add i32 %2380, 12
  %2386 = add i32 %2380, 48
  %2387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2386, i32 undef)  ; BufferLoad(srv,index,wot)
  %2388 = extractvalue %dx.types.ResRet.f32 %2387, 0
  %2389 = extractvalue %dx.types.ResRet.f32 %2387, 1
  %2390 = extractvalue %dx.types.ResRet.f32 %2387, 2
  %2391 = and i32 %2353, 32767
  %2392 = bitcast float %2348 to i32
  %2393 = icmp eq i32 %2392, -1
  %2394 = bitcast float %2349 to i32
  %2395 = and i32 %2353, 32768
  %2396 = icmp ne i32 %2395, 0
  %2397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2398 = extractvalue %dx.types.CBufRet.f32 %2397, 0
  %2399 = extractvalue %dx.types.CBufRet.f32 %2397, 1
  %2400 = extractvalue %dx.types.CBufRet.f32 %2397, 2
  %2401 = fsub fast float %2382, %2398
  %2402 = fsub fast float %2383, %2399
  %2403 = fsub fast float %2384, %2400
  %2404 = fsub fast float %130, %2401
  %2405 = fsub fast float %131, %2402
  %2406 = fsub fast float %132, %2403
  %2407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.f32 %2407, 0
  %2409 = extractvalue %dx.types.ResRet.f32 %2407, 1
  %2410 = extractvalue %dx.types.ResRet.f32 %2407, 2
  %2411 = call float @dx.op.dot3.f32(i32 55, float %2404, float %2405, float %2406, float %2408, float %2409, float %2410)  ; Dot3(ax,ay,az,bx,by,bz)
  %2412 = add i32 %2380, 24
  %2413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2412, i32 undef)  ; BufferLoad(srv,index,wot)
  %2414 = extractvalue %dx.types.ResRet.f32 %2413, 0
  %2415 = extractvalue %dx.types.ResRet.f32 %2413, 1
  %2416 = extractvalue %dx.types.ResRet.f32 %2413, 2
  %2417 = call float @dx.op.dot3.f32(i32 55, float %2404, float %2405, float %2406, float %2414, float %2415, float %2416)  ; Dot3(ax,ay,az,bx,by,bz)
  %2418 = add i32 %2380, 36
  %2419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %2418, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.f32 %2419, 0
  %2421 = extractvalue %dx.types.ResRet.f32 %2419, 1
  %2422 = extractvalue %dx.types.ResRet.f32 %2419, 2
  %2423 = call float @dx.op.dot3.f32(i32 55, float %2404, float %2405, float %2406, float %2420, float %2421, float %2422)  ; Dot3(ax,ay,az,bx,by,bz)
  %2424 = call float @dx.op.unary.f32(i32 6, float %2411)  ; FAbs(value)
  %2425 = call float @dx.op.unary.f32(i32 6, float %2417)  ; FAbs(value)
  %2426 = call float @dx.op.unary.f32(i32 6, float %2423)  ; FAbs(value)
  %2427 = fsub fast float %2388, %2424
  %2428 = fsub fast float %2389, %2425
  %2429 = fsub fast float %2390, %2426
  %2430 = fmul fast float %2427, %2356
  %2431 = fmul fast float %2428, %2357
  %2432 = fmul fast float %2429, %2358
  %2433 = call float @dx.op.binary.f32(i32 36, float %2431, float %2432)  ; FMin(a,b)
  %2434 = call float @dx.op.binary.f32(i32 36, float %2430, float %2433)  ; FMin(a,b)
  %2435 = call float @dx.op.unary.f32(i32 7, float %2434)  ; Saturate(value)
  %2436 = call float @dx.op.binary.f32(i32 36, float %2339, float %2435)  ; FMin(a,b)
  %2437 = uitofp i1 %2396 to float
  %2438 = fsub fast float 1.000000e+00, %2437
  %2439 = fmul fast float %2436, %2438
  %2440 = fcmp fast ogt float %2439, 0.000000e+00
  br i1 %2440, label %2447, label %2441

; <label>:2441                                    ; preds = %2589, %2335
  %2442 = phi float [ %2653, %2589 ], [ %2336, %2335 ]
  %2443 = phi float [ %2654, %2589 ], [ %2337, %2335 ]
  %2444 = phi float [ %2655, %2589 ], [ %2338, %2335 ]
  %2445 = phi float [ %2656, %2589 ], [ %2339, %2335 ]
  %2446 = icmp eq i32 %2340, %2344
  br i1 %2446, label %2657, label %2335

; <label>:2447                                    ; preds = %2335
  br i1 %2393, label %2505, label %2448

; <label>:2448                                    ; preds = %2447
  %2449 = fsub fast float -0.000000e+00, %2408
  %2450 = fsub fast float -0.000000e+00, %2409
  %2451 = fsub fast float -0.000000e+00, %2410
  %2452 = call float @dx.op.dot3.f32(i32 55, float %2288, float %2289, float %2290, float %2449, float %2450, float %2451)  ; Dot3(ax,ay,az,bx,by,bz)
  %2453 = fsub fast float -0.000000e+00, %2452
  %2454 = call float @dx.op.dot3.f32(i32 55, float %2404, float %2405, float %2406, float %2449, float %2450, float %2451)  ; Dot3(ax,ay,az,bx,by,bz)
  %2455 = fadd fast float %2454, %2371
  %2456 = fadd fast float %2370, %2454
  %2457 = fsub fast float -0.000000e+00, %2456
  %2458 = fcmp ogt float %2452, -0.000000e+00
  %2459 = select i1 %2458, float %2457, float %2455
  %2460 = call float @dx.op.unary.f32(i32 6, float %2453)  ; FAbs(value)
  %2461 = fdiv fast float 1.000000e+00, %2460
  %2462 = fmul fast float %2459, %2461
  %2463 = call float @dx.op.binary.f32(i32 35, float %2462, float 0.000000e+00)  ; FMax(a,b)
  %2464 = fsub fast float -0.000000e+00, %2414
  %2465 = fsub fast float -0.000000e+00, %2415
  %2466 = fsub fast float -0.000000e+00, %2416
  %2467 = call float @dx.op.dot3.f32(i32 55, float %2288, float %2289, float %2290, float %2464, float %2465, float %2466)  ; Dot3(ax,ay,az,bx,by,bz)
  %2468 = fsub fast float -0.000000e+00, %2467
  %2469 = call float @dx.op.dot3.f32(i32 55, float %2404, float %2405, float %2406, float %2464, float %2465, float %2466)  ; Dot3(ax,ay,az,bx,by,bz)
  %2470 = fadd fast float %2469, %2375
  %2471 = fadd fast float %2374, %2469
  %2472 = fsub fast float -0.000000e+00, %2471
  %2473 = fcmp ogt float %2467, -0.000000e+00
  %2474 = select i1 %2473, float %2472, float %2470
  %2475 = call float @dx.op.unary.f32(i32 6, float %2468)  ; FAbs(value)
  %2476 = fdiv fast float 1.000000e+00, %2475
  %2477 = fmul fast float %2474, %2476
  %2478 = call float @dx.op.binary.f32(i32 35, float %2477, float 0.000000e+00)  ; FMax(a,b)
  %2479 = fsub fast float -0.000000e+00, %2420
  %2480 = fsub fast float -0.000000e+00, %2421
  %2481 = fsub fast float -0.000000e+00, %2422
  %2482 = call float @dx.op.dot3.f32(i32 55, float %2288, float %2289, float %2290, float %2479, float %2480, float %2481)  ; Dot3(ax,ay,az,bx,by,bz)
  %2483 = fsub fast float -0.000000e+00, %2482
  %2484 = call float @dx.op.dot3.f32(i32 55, float %2404, float %2405, float %2406, float %2479, float %2480, float %2481)  ; Dot3(ax,ay,az,bx,by,bz)
  %2485 = fadd fast float %2484, %2379
  %2486 = fadd fast float %2378, %2484
  %2487 = fsub fast float -0.000000e+00, %2486
  %2488 = fcmp ogt float %2482, -0.000000e+00
  %2489 = select i1 %2488, float %2487, float %2485
  %2490 = call float @dx.op.unary.f32(i32 6, float %2483)  ; FAbs(value)
  %2491 = fdiv fast float 1.000000e+00, %2490
  %2492 = fmul fast float %2489, %2491
  %2493 = call float @dx.op.binary.f32(i32 35, float %2492, float 0.000000e+00)  ; FMax(a,b)
  %2494 = call float @dx.op.binary.f32(i32 36, float %2478, float %2493)  ; FMin(a,b)
  %2495 = call float @dx.op.binary.f32(i32 36, float %2463, float %2494)  ; FMin(a,b)
  %2496 = fmul fast float %2495, %2288
  %2497 = fmul fast float %2495, %2289
  %2498 = fmul fast float %2495, %2290
  %2499 = fadd fast float %2496, %130
  %2500 = fadd fast float %2497, %131
  %2501 = fadd fast float %2498, %132
  %2502 = fsub fast float %2499, %2348
  %2503 = fsub fast float %2500, %2349
  %2504 = fsub fast float %2501, %2350
  br label %2512

; <label>:2505                                    ; preds = %2447
  %2506 = fmul fast float %2288, 8.096000e+03
  %2507 = fmul fast float %2289, 8.096000e+03
  %2508 = fmul fast float %2290, 8.096000e+03
  %2509 = fadd fast float %2506, %130
  %2510 = fadd fast float %2507, %131
  %2511 = fadd fast float %2508, %132
  br label %2512

; <label>:2512                                    ; preds = %2505, %2448
  %2513 = phi float [ %2288, %2505 ], [ %2502, %2448 ]
  %2514 = phi float [ %2289, %2505 ], [ %2503, %2448 ]
  %2515 = phi float [ %2290, %2505 ], [ %2504, %2448 ]
  %2516 = phi float [ %2509, %2505 ], [ %2499, %2448 ]
  %2517 = phi float [ %2510, %2505 ], [ %2500, %2448 ]
  %2518 = phi float [ %2511, %2505 ], [ %2501, %2448 ]
  %2519 = fcmp fast olt float %2367, 1.000000e+00
  br i1 %2519, label %2520, label %2551, !dx.controlflow.hints !77

; <label>:2520                                    ; preds = %2512
  %2521 = fmul fast float %2515, %2365
  %2522 = fmul fast float %2514, %2366
  %2523 = fsub fast float %2521, %2522
  %2524 = fmul fast float %2513, %2366
  %2525 = fmul fast float %2515, %2364
  %2526 = fsub fast float %2524, %2525
  %2527 = fmul fast float %2514, %2364
  %2528 = fmul fast float %2513, %2365
  %2529 = fsub fast float %2527, %2528
  %2530 = fmul fast float %2523, 2.000000e+00
  %2531 = fmul fast float %2526, 2.000000e+00
  %2532 = fmul fast float %2529, 2.000000e+00
  %2533 = fmul fast float %2530, %2367
  %2534 = fmul fast float %2531, %2367
  %2535 = fmul fast float %2532, %2367
  %2536 = fmul fast float %2532, %2365
  %2537 = fmul fast float %2531, %2366
  %2538 = fmul fast float %2530, %2366
  %2539 = fmul fast float %2532, %2364
  %2540 = fmul fast float %2531, %2364
  %2541 = fmul fast float %2530, %2365
  %2542 = fadd fast float %2536, %2513
  %2543 = fadd fast float %2542, %2533
  %2544 = fsub fast float %2543, %2537
  %2545 = fsub fast float %2514, %2539
  %2546 = fadd fast float %2545, %2534
  %2547 = fadd fast float %2546, %2538
  %2548 = fadd fast float %2535, %2515
  %2549 = fsub fast float %2548, %2541
  %2550 = fadd fast float %2549, %2540
  br label %2551

; <label>:2551                                    ; preds = %2520, %2512
  %2552 = phi float [ %2544, %2520 ], [ %2513, %2512 ]
  %2553 = phi float [ %2547, %2520 ], [ %2514, %2512 ]
  %2554 = phi float [ %2550, %2520 ], [ %2515, %2512 ]
  br i1 %2393, label %2586, label %2555

; <label>:2555                                    ; preds = %2551
  %2556 = fmul fast float %1899, 0x400187C840000000
  %2557 = fadd fast float %2556, 0xC00EFC2120000000
  %2558 = fmul fast float %2557, %1899
  %2559 = fadd fast float %2558, 0x3FE5D16340000000
  %2560 = fmul fast float %2559, %1899
  %2561 = fadd fast float %2560, 1.000000e+00
  %2562 = call float @dx.op.unary.f32(i32 7, float %2561)  ; Saturate(value)
  %2563 = fsub fast float %2516, %130
  %2564 = fsub fast float %2517, %131
  %2565 = fsub fast float %2518, %132
  %2566 = fsub fast float %2516, %2348
  %2567 = fsub fast float %2517, %2349
  %2568 = fsub fast float %2518, %2350
  %2569 = call float @dx.op.dot3.f32(i32 55, float %2563, float %2564, float %2565, float %2563, float %2564, float %2565)  ; Dot3(ax,ay,az,bx,by,bz)
  %2570 = call float @dx.op.dot3.f32(i32 55, float %2566, float %2567, float %2568, float %2566, float %2567, float %2568)  ; Dot3(ax,ay,az,bx,by,bz)
  %2571 = fadd fast float %2570, 0x3EE4F8B580000000
  %2572 = fdiv fast float %2569, %2571
  %2573 = bitcast float %2572 to i32
  %2574 = ashr i32 %2573, 1
  %2575 = add nsw i32 %2574, 532487669
  %2576 = bitcast i32 %2575 to float
  %2577 = fmul fast float %2576, %2562
  %2578 = call float @dx.op.unary.f32(i32 7, float %2577)  ; Saturate(value)
  %2579 = fmul fast float %2578, 0x4009981AE0000000
  %2580 = fsub fast float 0x40111BBD80000000, %2579
  %2581 = fmul fast float %2580, %2578
  %2582 = fadd fast float %2581, 0xC0009F6020000000
  %2583 = fmul fast float %2582, %2578
  %2584 = fadd fast float %2583, 1.000000e+00
  %2585 = call float @dx.op.unary.f32(i32 7, float %2584)  ; Saturate(value)
  br label %2589

; <label>:2586                                    ; preds = %2551
  %2587 = icmp ne i32 %2394, -1
  %2588 = zext i1 %2587 to i32
  br label %2589

; <label>:2589                                    ; preds = %2586, %2555
  %2590 = phi float [ %1899, %2586 ], [ %2585, %2555 ]
  %2591 = phi i32 [ %2588, %2586 ], [ 0, %2555 ]
  %2592 = fmul float %2590, 5.000000e+00
  %2593 = fsub float 5.000000e+00, %2592
  %2594 = icmp ne i32 %2591, 0
  %2595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2596 = extractvalue %dx.types.CBufRet.f32 %2595, 3
  %2597 = fadd fast float %2596, %2593
  %2598 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2597)  ; FMax(a,b)
  %2599 = call float @dx.op.unary.f32(i32 6, float %2552)  ; FAbs(value)
  %2600 = call float @dx.op.unary.f32(i32 6, float %2553)  ; FAbs(value)
  %2601 = fadd fast float %2600, %2599
  %2602 = call float @dx.op.unary.f32(i32 6, float %2554)  ; FAbs(value)
  %2603 = fadd fast float %2601, %2602
  %2604 = fcmp fast oeq float %2603, 0.000000e+00
  %2605 = fdiv fast float 1.000000e+00, %2603
  %2606 = select i1 %2604, float 1.000000e+00, float %2605
  %2607 = fmul fast float %2606, %2552
  %2608 = fmul fast float %2606, %2553
  %2609 = call float @dx.op.unary.f32(i32 6, float %2608)  ; FAbs(value)
  %2610 = call float @dx.op.unary.f32(i32 6, float %2607)  ; FAbs(value)
  %2611 = fsub fast float 1.000000e+00, %2609
  %2612 = fsub fast float 1.000000e+00, %2610
  %2613 = fcmp fast oge float %2607, 0.000000e+00
  %2614 = fcmp fast oge float %2608, 0.000000e+00
  %2615 = select i1 %2613, float 1.000000e+00, float -1.000000e+00
  %2616 = select i1 %2614, float 1.000000e+00, float -1.000000e+00
  %2617 = fcmp fast ole float %2554, 0.000000e+00
  %2618 = fmul fast float %2615, %2611
  %2619 = fmul fast float %2616, %2612
  %2620 = select i1 %2617, float %2618, float %2607
  %2621 = select i1 %2617, float %2619, float %2608
  %2622 = fmul fast float %2620, 5.000000e-01
  %2623 = fmul fast float %2621, 5.000000e-01
  %2624 = fadd fast float %2622, 5.000000e-01
  %2625 = fadd fast float %2623, 5.000000e-01
  %2626 = uitofp i32 %2391 to float
  %2627 = call float @dx.op.binary.f32(i32 36, float %2598, float 3.000000e+00)  ; FMin(a,b)
  %2628 = fadd fast float %2627, 2.000000e+00
  %2629 = call float @dx.op.unary.f32(i32 21, float %2628)  ; Exp(value)
  %2630 = extractvalue %dx.types.CBufRet.f32 %2595, 1
  %2631 = fmul fast float %2630, %2629
  %2632 = fmul fast float %2631, 2.000000e+00
  %2633 = fsub fast float 1.000000e+00, %2632
  %2634 = fmul fast float %2624, %2633
  %2635 = fmul fast float %2625, %2633
  %2636 = fadd fast float %2634, %2631
  %2637 = fadd fast float %2635, %2631
  %2638 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %36, float %2636, float %2637, float %2626, float undef, i32 0, i32 0, i32 undef, float %2598)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2639 = extractvalue %dx.types.ResRet.f32 %2638, 0
  %2640 = extractvalue %dx.types.ResRet.f32 %2638, 1
  %2641 = extractvalue %dx.types.ResRet.f32 %2638, 2
  %2642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2643 = extractvalue %dx.types.CBufRet.f32 %2642, 3
  %2644 = fmul fast float %2643, %2361
  %2645 = call float @dx.op.binary.f32(i32 36, float %1929, float %2644)  ; FMin(a,b)
  %2646 = select i1 %2594, float %2645, float %2644
  %2647 = fmul fast float %2639, %2439
  %2648 = fmul fast float %2647, %2646
  %2649 = fmul fast float %2640, %2439
  %2650 = fmul fast float %2649, %2646
  %2651 = fmul fast float %2641, %2439
  %2652 = fmul fast float %2651, %2646
  %2653 = fadd fast float %2648, %2336
  %2654 = fadd fast float %2650, %2337
  %2655 = fadd fast float %2652, %2338
  %2656 = fsub fast float %2339, %2439
  br label %2441

; <label>:2657                                    ; preds = %2441
  br label %2658

; <label>:2658                                    ; preds = %2657, %2305
  %2659 = phi float [ %2306, %2305 ], [ %2442, %2657 ]
  %2660 = phi float [ %2307, %2305 ], [ %2443, %2657 ]
  %2661 = phi float [ %2308, %2305 ], [ %2444, %2657 ]
  %2662 = phi float [ %2309, %2305 ], [ %2445, %2657 ]
  %2663 = add i32 %2310, 1
  %2664 = icmp ugt i32 %2663, %2302
  br i1 %2664, label %2665, label %2305, !llvm.loop !78

; <label>:2665                                    ; preds = %2658
  br label %2666

; <label>:2666                                    ; preds = %2665, %2287
  %2667 = phi float [ 0.000000e+00, %2287 ], [ %2659, %2665 ]
  %2668 = phi float [ 0.000000e+00, %2287 ], [ %2660, %2665 ]
  %2669 = phi float [ 0.000000e+00, %2287 ], [ %2661, %2665 ]
  %2670 = call float @dx.op.dot3.f32(i32 55, float %2667, float %2668, float %2669, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2671 = select i1 %222, float 0.000000e+00, float %2667
  %2672 = select i1 %222, float %2670, float %2668
  %2673 = select i1 %222, float 0.000000e+00, float %2669
  %2674 = fcmp fast olt float %2240, 0.000000e+00
  %2675 = call float @dx.op.unary.f32(i32 6, float %2240)  ; FAbs(value)
  %2676 = fmul fast float %2675, %2169
  %2677 = fmul fast float %2675, %2170
  %2678 = fmul fast float %2675, %2171
  %2679 = select i1 %2674, float %2169, float %2676
  %2680 = select i1 %2674, float %2170, float %2677
  %2681 = select i1 %2674, float %2171, float %2678
  %2682 = fsub fast float 1.000000e+00, %2675
  %2683 = call float @dx.op.unary.f32(i32 7, float %2682)  ; Saturate(value)
  %2684 = fmul fast float %2683, %2671
  %2685 = fmul fast float %2683, %2672
  %2686 = fmul fast float %2683, %2673
  %2687 = fadd fast float %2679, %2684
  %2688 = fadd fast float %2680, %2685
  %2689 = fadd fast float %2681, %2686
  br label %2690

; <label>:2690                                    ; preds = %2666, %2223
  %2691 = phi float [ %2169, %2223 ], [ %2687, %2666 ]
  %2692 = phi float [ %2170, %2223 ], [ %2688, %2666 ]
  %2693 = phi float [ %2171, %2223 ], [ %2689, %2666 ]
  %2694 = call float @dx.op.dot3.f32(i32 55, float %1896, float %1897, float %1898, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2695 = fcmp fast ogt float %2694, 0x3E7FF19E20000000
  %2696 = fdiv fast float 1.000000e+00, %2694
  %2697 = select i1 %2695, float %2696, float 0.000000e+00
  %2698 = fmul fast float %2697, %1896
  %2699 = fmul fast float %2697, %1897
  %2700 = fmul fast float %2697, %1898
  %2701 = fadd fast float %2698, -1.000000e+00
  %2702 = fadd fast float %2699, -1.000000e+00
  %2703 = fadd fast float %2700, -1.000000e+00
  %2704 = fmul fast float %2701, 5.000000e-01
  %2705 = fmul fast float %2702, 5.000000e-01
  %2706 = fmul fast float %2703, 5.000000e-01
  %2707 = fadd fast float %2704, 1.000000e+00
  %2708 = fadd fast float %2705, 1.000000e+00
  %2709 = fadd fast float %2706, 1.000000e+00
  %2710 = call float @dx.op.binary.f32(i32 35, float %1903, float 0x3F50624DE0000000)  ; FMax(a,b)
  %2711 = fdiv fast float %923, %2710
  %2712 = fcmp fast olt float %1617, 1.270000e+02
  %2713 = fcmp fast olt float %1618, 1.270000e+02
  %2714 = fcmp fast olt float %1619, 1.270000e+02
  %2715 = fmul fast float %1617, 0xBFF7154760000000
  %2716 = fmul fast float %2715, %2711
  %2717 = fmul fast float %1618, 0xBFF7154760000000
  %2718 = fmul fast float %2717, %2711
  %2719 = fmul fast float %1619, 0xBFF7154760000000
  %2720 = fmul fast float %2719, %2711
  %2721 = call float @dx.op.unary.f32(i32 21, float %2716)  ; Exp(value)
  %2722 = call float @dx.op.unary.f32(i32 21, float %2718)  ; Exp(value)
  %2723 = call float @dx.op.unary.f32(i32 21, float %2720)  ; Exp(value)
  %2724 = call float @dx.op.unary.f32(i32 7, float %2721)  ; Saturate(value)
  %2725 = call float @dx.op.unary.f32(i32 7, float %2722)  ; Saturate(value)
  %2726 = call float @dx.op.unary.f32(i32 7, float %2723)  ; Saturate(value)
  %2727 = select i1 %2712, float %2724, float 0.000000e+00
  %2728 = select i1 %2713, float %2725, float 0.000000e+00
  %2729 = select i1 %2714, float %2726, float 0.000000e+00
  %2730 = fmul fast float %2727, %2229
  %2731 = fmul fast float %2728, %2229
  %2732 = fmul fast float %2729, %2229
  %2733 = fadd fast float %2730, -1.000000e+00
  %2734 = fadd fast float %2731, -1.000000e+00
  %2735 = fadd fast float %2732, -1.000000e+00
  %2736 = fmul fast float %2733, %1572
  %2737 = fmul fast float %2734, %1572
  %2738 = fmul fast float %2735, %1572
  %2739 = fmul fast float %2691, %2224
  %2740 = fmul fast float %2692, %2225
  %2741 = fmul fast float %2693, %2226
  %2742 = fsub fast float 1.000000e+00, %1903
  %2743 = bitcast float %2742 to i32
  %2744 = sitofp i32 %2743 to float
  %2745 = fmul fast float %2744, 5.000000e+00
  %2746 = fadd fast float %2745, 0xC1EFBF8940000000
  %2747 = fptosi float %2746 to i32
  %2748 = bitcast i32 %2747 to float
  %2749 = fmul fast float %2748, %1522
  %2750 = fmul fast float %2161, %2749
  %2751 = fmul fast float %2750, %2229
  %2752 = fmul fast float %2751, %2707
  %2753 = fmul fast float %2162, %2749
  %2754 = fmul fast float %2753, %2229
  %2755 = fmul fast float %2754, %2708
  %2756 = fmul fast float %2163, %2749
  %2757 = fmul fast float %2756, %2229
  %2758 = fmul fast float %2757, %2709
  %2759 = fadd fast float %2739, %1527
  %2760 = fadd fast float %2759, %2752
  %2761 = fmul fast float %2760, %1572
  %2762 = fadd fast float %2740, %1528
  %2763 = fadd fast float %2762, %2755
  %2764 = fmul fast float %2763, %1572
  %2765 = fadd fast float %2741, %1529
  %2766 = fadd fast float %2765, %2758
  %2767 = fmul fast float %2766, %1572
  %2768 = fmul fast float %1894, 0x4012D0A400000000
  %2769 = fadd fast float %2738, 1.000000e+00
  %2770 = fadd fast float %2737, 1.000000e+00
  %2771 = fadd fast float %2736, 1.000000e+00
  %2772 = fmul fast float %2229, %2163
  %2773 = fmul fast float %2229, %2162
  %2774 = fmul fast float %2229, %2161
  %2775 = fmul fast float %1918, %1572
  %2776 = fsub fast float 1.000000e+00, %2775
  %2777 = call float @dx.op.unary.f32(i32 7, float %2776)  ; Saturate(value)
  %2778 = fsub fast float 1.000000e+00, %2777
  %2779 = fadd fast float %2768, 0x3FDB6377A0000000
  %2780 = fmul fast float %2778, %2779
  %2781 = call float @dx.op.dot3.f32(i32 55, float %1635, float %1636, float %1637, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2782 = fadd fast float %2780, %2781
  %2783 = call float @dx.op.unary.f32(i32 7, float %2782)  ; Saturate(value)
  %2784 = call float @dx.op.binary.f32(i32 35, float %2783, float 0x3F847AE140000000)  ; FMax(a,b)
  %2785 = fmul fast float %2784, %2784
  %2786 = fmul fast float %2785, %2785
  %2787 = fmul fast float %2786, 0xC00A935000000000
  %2788 = call float @dx.op.unary.f32(i32 21, float %2787)  ; Exp(value)
  %2789 = fsub fast float 1.000000e+00, %2788
  %2790 = fmul fast float %2771, %2165
  %2791 = fmul fast float %2790, %2789
  %2792 = fmul fast float %2770, %2166
  %2793 = fmul fast float %2792, %2789
  %2794 = fmul fast float %2769, %2167
  %2795 = fmul fast float %2794, %2789
  %2796 = fadd fast float %2791, %2774
  %2797 = fmul fast float %2796, %1572
  %2798 = fadd fast float %2793, %2773
  %2799 = fmul fast float %2798, %1572
  %2800 = fadd fast float %2795, %2772
  %2801 = fmul fast float %2800, %1572
  %2802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2803 = extractvalue %dx.types.CBufRet.f32 %2802, 3
  %2804 = fcmp fast oeq float %2803, 0.000000e+00
  br i1 %2804, label %4408, label %2805

; <label>:2805                                    ; preds = %2690
  %2806 = extractvalue %dx.types.CBufRet.f32 %2802, 0
  %2807 = extractvalue %dx.types.CBufRet.f32 %2802, 1
  %2808 = extractvalue %dx.types.CBufRet.f32 %2802, 2
  %2809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.f32 %2809, 0
  %2811 = extractvalue %dx.types.CBufRet.f32 %2809, 1
  %2812 = extractvalue %dx.types.CBufRet.f32 %2809, 2
  %2813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2814 = extractvalue %dx.types.CBufRet.f32 %2813, 0
  %2815 = extractvalue %dx.types.CBufRet.f32 %2813, 1
  %2816 = call float @dx.op.dot3.f32(i32 55, float %2810, float %2811, float %2812, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2817 = select i1 %222, float %2814, float %2810
  %2818 = select i1 %222, float %2816, float %2811
  %2819 = select i1 %222, float %2815, float %2812
  %2820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2821 = extractvalue %dx.types.CBufRet.f32 %2820, 2
  %2822 = fmul fast float %2821, %85
  %2823 = fmul fast float %2821, %86
  %2824 = fmul fast float %2821, %87
  %2825 = fadd fast float %2822, %130
  %2826 = fadd fast float %2823, %131
  %2827 = fadd fast float %2824, %132
  %2828 = fcmp fast olt float %2803, 0.000000e+00
  br i1 %2828, label %3924, label %2829

; <label>:2829                                    ; preds = %2805
  %2830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2831 = extractvalue %dx.types.CBufRet.f32 %2830, 0
  %2832 = extractvalue %dx.types.CBufRet.f32 %2830, 1
  %2833 = extractvalue %dx.types.CBufRet.f32 %2830, 2
  %2834 = extractvalue %dx.types.CBufRet.f32 %2830, 3
  %2835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2836 = extractvalue %dx.types.CBufRet.f32 %2835, 0
  %2837 = extractvalue %dx.types.CBufRet.f32 %2835, 1
  %2838 = extractvalue %dx.types.CBufRet.f32 %2835, 2
  %2839 = extractvalue %dx.types.CBufRet.f32 %2835, 3
  %2840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2841 = extractvalue %dx.types.CBufRet.f32 %2840, 0
  %2842 = extractvalue %dx.types.CBufRet.f32 %2840, 1
  %2843 = extractvalue %dx.types.CBufRet.f32 %2840, 2
  %2844 = extractvalue %dx.types.CBufRet.f32 %2840, 3
  %2845 = fmul fast float %2831, %2825
  %2846 = call float @dx.op.tertiary.f32(i32 46, float %2826, float %2832, float %2845)  ; FMad(a,b,c)
  %2847 = call float @dx.op.tertiary.f32(i32 46, float %2827, float %2833, float %2846)  ; FMad(a,b,c)
  %2848 = fadd fast float %2847, %2834
  %2849 = fmul fast float %2836, %2825
  %2850 = call float @dx.op.tertiary.f32(i32 46, float %2826, float %2837, float %2849)  ; FMad(a,b,c)
  %2851 = call float @dx.op.tertiary.f32(i32 46, float %2827, float %2838, float %2850)  ; FMad(a,b,c)
  %2852 = fadd fast float %2851, %2839
  %2853 = fmul fast float %2841, %2825
  %2854 = call float @dx.op.tertiary.f32(i32 46, float %2826, float %2842, float %2853)  ; FMad(a,b,c)
  %2855 = call float @dx.op.tertiary.f32(i32 46, float %2827, float %2843, float %2854)  ; FMad(a,b,c)
  %2856 = fadd fast float %2855, %2844
  %2857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2858 = extractvalue %dx.types.CBufRet.f32 %2857, 0
  %2859 = extractvalue %dx.types.CBufRet.f32 %2857, 1
  %2860 = extractvalue %dx.types.CBufRet.f32 %2857, 3
  %2861 = fmul fast float %2860, %2848
  %2862 = fmul fast float %2860, %2852
  %2863 = fadd fast float %2861, %2858
  %2864 = fadd fast float %2862, %2859
  %2865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2866 = extractvalue %dx.types.CBufRet.f32 %2865, 0
  %2867 = extractvalue %dx.types.CBufRet.f32 %2865, 1
  %2868 = extractvalue %dx.types.CBufRet.f32 %2865, 3
  %2869 = fmul fast float %2868, %2848
  %2870 = fmul fast float %2868, %2852
  %2871 = fadd fast float %2869, %2866
  %2872 = fadd fast float %2870, %2867
  %2873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2874 = extractvalue %dx.types.CBufRet.f32 %2873, 1
  %2875 = fsub fast float %2874, %2856
  %2876 = extractvalue %dx.types.CBufRet.f32 %2873, 2
  %2877 = fmul fast float %2875, %2876
  %2878 = fsub fast float 1.000000e+00, %2877
  %2879 = call float @dx.op.unary.f32(i32 7, float %2878)  ; Saturate(value)
  %2880 = extractvalue %dx.types.CBufRet.f32 %2865, 2
  %2881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2882 = extractvalue %dx.types.CBufRet.f32 %2881, 2
  %2883 = fadd fast float %2882, %2880
  %2884 = fcmp fast ogt float %2883, 0.000000e+00
  br i1 %2884, label %2885, label %2909

; <label>:2885                                    ; preds = %2829
  %2886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2887 = extractvalue %dx.types.CBufRet.f32 %2886, 0
  %2888 = extractvalue %dx.types.CBufRet.f32 %2886, 1
  %2889 = fsub fast float %2871, %2887
  %2890 = fsub fast float %2872, %2888
  %2891 = fcmp fast olt float %2889, 0.000000e+00
  %2892 = fcmp fast olt float %2890, 0.000000e+00
  %2893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2894 = extractvalue %dx.types.CBufRet.f32 %2893, 0
  %2895 = extractvalue %dx.types.CBufRet.f32 %2893, 1
  %2896 = extractvalue %dx.types.CBufRet.f32 %2893, 2
  %2897 = extractvalue %dx.types.CBufRet.f32 %2893, 3
  %2898 = select i1 %2891, float %2894, float %2896
  %2899 = select i1 %2892, float %2895, float %2897
  %2900 = fmul fast float %2898, %2889
  %2901 = fmul fast float %2899, %2890
  %2902 = call float @dx.op.unary.f32(i32 6, float %2900)  ; FAbs(value)
  %2903 = call float @dx.op.unary.f32(i32 6, float %2901)  ; FAbs(value)
  %2904 = extractvalue %dx.types.CBufRet.f32 %2820, 0
  %2905 = call float @dx.op.binary.f32(i32 35, float %2902, float %2903)  ; FMax(a,b)
  %2906 = fsub fast float %2904, %2905
  %2907 = call float @dx.op.unary.f32(i32 7, float %2906)  ; Saturate(value)
  %2908 = fmul fast float %2907, %2879
  br label %2909

; <label>:2909                                    ; preds = %2885, %2829
  %2910 = phi float [ %2908, %2885 ], [ 0.000000e+00, %2829 ]
  %2911 = extractvalue %dx.types.CBufRet.f32 %2857, 2
  %2912 = extractvalue %dx.types.CBufRet.f32 %2881, 1
  %2913 = fadd fast float %2912, %2911
  %2914 = fcmp fast ogt float %2913, 0.000000e+00
  %2915 = extractvalue %dx.types.CBufRet.f32 %2820, 0
  br i1 %2914, label %2916, label %2939

; <label>:2916                                    ; preds = %2909
  %2917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2918 = extractvalue %dx.types.CBufRet.f32 %2917, 0
  %2919 = extractvalue %dx.types.CBufRet.f32 %2917, 1
  %2920 = fsub fast float %2863, %2918
  %2921 = fsub fast float %2864, %2919
  %2922 = fcmp fast olt float %2920, 0.000000e+00
  %2923 = fcmp fast olt float %2921, 0.000000e+00
  %2924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2925 = extractvalue %dx.types.CBufRet.f32 %2924, 0
  %2926 = extractvalue %dx.types.CBufRet.f32 %2924, 1
  %2927 = extractvalue %dx.types.CBufRet.f32 %2924, 2
  %2928 = extractvalue %dx.types.CBufRet.f32 %2924, 3
  %2929 = select i1 %2922, float %2925, float %2927
  %2930 = select i1 %2923, float %2926, float %2928
  %2931 = fmul fast float %2929, %2920
  %2932 = fmul fast float %2930, %2921
  %2933 = call float @dx.op.unary.f32(i32 6, float %2931)  ; FAbs(value)
  %2934 = call float @dx.op.unary.f32(i32 6, float %2932)  ; FAbs(value)
  %2935 = call float @dx.op.binary.f32(i32 35, float %2933, float %2934)  ; FMax(a,b)
  %2936 = fsub fast float %2915, %2935
  %2937 = call float @dx.op.unary.f32(i32 7, float %2936)  ; Saturate(value)
  %2938 = fmul fast float %2937, %2879
  br label %2939

; <label>:2939                                    ; preds = %2916, %2909
  %2940 = phi float [ %2938, %2916 ], [ 0.000000e+00, %2909 ]
  %2941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2942 = extractvalue %dx.types.CBufRet.f32 %2941, 1
  %2943 = call float @dx.op.unary.f32(i32 7, float %2942)  ; Saturate(value)
  %2944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2945 = extractvalue %dx.types.CBufRet.f32 %2944, 0
  %2946 = extractvalue %dx.types.CBufRet.f32 %2944, 1
  %2947 = fsub fast float %2848, %2945
  %2948 = fsub fast float %2852, %2946
  %2949 = fcmp fast olt float %2947, 0.000000e+00
  %2950 = fcmp fast olt float %2948, 0.000000e+00
  %2951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2952 = extractvalue %dx.types.CBufRet.f32 %2951, 0
  %2953 = extractvalue %dx.types.CBufRet.f32 %2951, 1
  %2954 = extractvalue %dx.types.CBufRet.f32 %2951, 2
  %2955 = extractvalue %dx.types.CBufRet.f32 %2951, 3
  %2956 = select i1 %2949, float %2952, float %2954
  %2957 = select i1 %2950, float %2953, float %2955
  %2958 = fmul fast float %2956, %2947
  %2959 = fmul fast float %2957, %2948
  %2960 = call float @dx.op.unary.f32(i32 6, float %2958)  ; FAbs(value)
  %2961 = call float @dx.op.unary.f32(i32 6, float %2959)  ; FAbs(value)
  %2962 = call float @dx.op.binary.f32(i32 35, float %2960, float %2961)  ; FMax(a,b)
  %2963 = fsub fast float %2915, %2962
  %2964 = call float @dx.op.unary.f32(i32 7, float %2963)  ; Saturate(value)
  %2965 = call float @dx.op.binary.f32(i32 36, float %2964, float %2943)  ; FMin(a,b)
  %2966 = fmul fast float %2965, %2879
  %2967 = fsub fast float %2940, %2966
  %2968 = fsub fast float %2910, %2940
  %2969 = fsub fast float %2968, %2966
  %2970 = call float @dx.op.binary.f32(i32 35, float %2940, float %2910)  ; FMax(a,b)
  %2971 = call float @dx.op.binary.f32(i32 35, float %2966, float %2970)  ; FMax(a,b)
  %2972 = fcmp fast olt float %2971, 1.000000e+00
  br i1 %2972, label %2973, label %3371, !dx.controlflow.hints !80

; <label>:2973                                    ; preds = %2939
  %2974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2975 = extractvalue %dx.types.CBufRet.f32 %2974, 0
  %2976 = fcmp fast une float %2975, 0.000000e+00
  br i1 %2976, label %2977, label %3371, !dx.controlflow.hints !81

; <label>:2977                                    ; preds = %2973
  %2978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2979 = extractvalue %dx.types.CBufRet.f32 %2978, 0
  %2980 = extractvalue %dx.types.CBufRet.f32 %2978, 1
  %2981 = extractvalue %dx.types.CBufRet.f32 %2978, 2
  %2982 = extractvalue %dx.types.CBufRet.f32 %2978, 3
  %2983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2984 = extractvalue %dx.types.CBufRet.f32 %2983, 0
  %2985 = extractvalue %dx.types.CBufRet.f32 %2983, 1
  %2986 = extractvalue %dx.types.CBufRet.f32 %2983, 2
  %2987 = extractvalue %dx.types.CBufRet.f32 %2983, 3
  %2988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2989 = extractvalue %dx.types.CBufRet.f32 %2988, 0
  %2990 = extractvalue %dx.types.CBufRet.f32 %2988, 1
  %2991 = extractvalue %dx.types.CBufRet.f32 %2988, 2
  %2992 = extractvalue %dx.types.CBufRet.f32 %2988, 3
  %2993 = fmul fast float %2979, %2825
  %2994 = call float @dx.op.tertiary.f32(i32 46, float %2826, float %2980, float %2993)  ; FMad(a,b,c)
  %2995 = call float @dx.op.tertiary.f32(i32 46, float %2827, float %2981, float %2994)  ; FMad(a,b,c)
  %2996 = fadd fast float %2995, %2982
  %2997 = fmul fast float %2984, %2825
  %2998 = call float @dx.op.tertiary.f32(i32 46, float %2826, float %2985, float %2997)  ; FMad(a,b,c)
  %2999 = call float @dx.op.tertiary.f32(i32 46, float %2827, float %2986, float %2998)  ; FMad(a,b,c)
  %3000 = fadd fast float %2999, %2987
  %3001 = fmul fast float %2989, %2825
  %3002 = call float @dx.op.tertiary.f32(i32 46, float %2826, float %2990, float %3001)  ; FMad(a,b,c)
  %3003 = call float @dx.op.tertiary.f32(i32 46, float %2827, float %2991, float %3002)  ; FMad(a,b,c)
  %3004 = fadd fast float %3003, %2992
  %3005 = fcmp fast oge float %2996, 1.000000e+00
  %3006 = fcmp fast oge float %3000, 1.000000e+00
  %3007 = or i1 %3005, %3006
  %3008 = fcmp fast olt float %2996, 0.000000e+00
  %3009 = fcmp fast olt float %3000, 0.000000e+00
  %3010 = or i1 %3008, %3009
  %3011 = or i1 %3007, %3010
  br i1 %3011, label %3371, label %3012, !dx.controlflow.hints !82

; <label>:3012                                    ; preds = %2977
  %3013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3014 = extractvalue %dx.types.CBufRet.f32 %3013, 0
  %3015 = extractvalue %dx.types.CBufRet.f32 %3013, 1
  %3016 = extractvalue %dx.types.CBufRet.f32 %3013, 2
  %3017 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3018 = extractvalue %dx.types.CBufRet.i32 %3017, 2
  %3019 = uitofp i32 %3018 to float
  %3020 = extractvalue %dx.types.CBufRet.i32 %3017, 3
  %3021 = uitofp i32 %3020 to float
  %3022 = extractvalue %dx.types.CBufRet.f32 %3013, 3
  %3023 = fmul fast float %3022, 2.000000e+00
  %3024 = fsub fast float %2996, %3014
  %3025 = fsub fast float %3000, %3015
  %3026 = fmul fast float %3023, %3024
  %3027 = fmul fast float %3023, %3025
  %3028 = fdiv fast float 1.000000e+00, %2808
  %3029 = fmul fast float %3027, %3028
  %3030 = call float @dx.op.unary.f32(i32 6, float %3029)  ; FAbs(value)
  %3031 = fmul fast float %3016, %2827
  %3032 = fmul fast float %3031, %3023
  %3033 = call float @dx.op.unary.f32(i32 6, float %3032)  ; FAbs(value)
  %3034 = call float @dx.op.unary.f32(i32 6, float %3026)  ; FAbs(value)
  %3035 = call float @dx.op.binary.f32(i32 35, float %3033, float %3030)  ; FMax(a,b)
  %3036 = call float @dx.op.binary.f32(i32 35, float %3034, float %3035)  ; FMax(a,b)
  %3037 = fmul fast float %3036, 2.000000e+00
  %3038 = call float @dx.op.unary.f32(i32 23, float %3037)  ; Log(value)
  %3039 = call float @dx.op.binary.f32(i32 35, float %3038, float %3019)  ; FMax(a,b)
  %3040 = call float @dx.op.unary.f32(i32 22, float %3039)  ; Frc(value)
  %3041 = fadd fast float %3040, 0xBFEA666660000000
  %3042 = fmul fast float %3041, 8.000000e+00
  %3043 = call float @dx.op.unary.f32(i32 7, float %3042)  ; Saturate(value)
  %3044 = call float @dx.op.unary.f32(i32 27, float %3039)  ; Round_ni(value)
  %3045 = fadd fast float %3044, %3043
  %3046 = call float @dx.op.binary.f32(i32 36, float %3045, float %3021)  ; FMin(a,b)
  %3047 = call float @dx.op.unary.f32(i32 27, float %3046)  ; Round_ni(value)
  %3048 = fsub fast float -0.000000e+00, %3047
  %3049 = call float @dx.op.unary.f32(i32 21, float %3048)  ; Exp(value)
  %3050 = fmul fast float %3049, %3023
  %3051 = fmul fast float %3050, %2996
  %3052 = fmul fast float %3050, %3000
  %3053 = fmul fast float %3051, 2.500000e-01
  %3054 = fmul fast float %3052, 2.500000e-01
  %3055 = fadd fast float %3053, 5.000000e-01
  %3056 = fadd fast float %3054, 5.000000e-01
  %3057 = fsub fast float %3021, %3019
  %3058 = fptoui float %3057 to i32
  %3059 = add i32 %3058, 320
  %3060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 %3059)  ; CBufferLoadLegacy(handle,regIndex)
  %3061 = extractvalue %dx.types.CBufRet.f32 %3060, 0
  %3062 = extractvalue %dx.types.CBufRet.f32 %3060, 1
  %3063 = fcmp fast une float %3046, %3021
  %3064 = fsub fast float %2996, %3061
  %3065 = fsub fast float %3000, %3062
  %3066 = call float @dx.op.unary.f32(i32 6, float %3064)  ; FAbs(value)
  %3067 = call float @dx.op.unary.f32(i32 6, float %3065)  ; FAbs(value)
  %3068 = fmul fast float %3066, %3050
  %3069 = fmul fast float %3067, %3050
  %3070 = fcmp fast olt float %3068, 1.000000e+00
  %3071 = fcmp fast olt float %3069, 1.000000e+00
  %3072 = and i1 %3070, %3071
  %3073 = or i1 %3063, %3072
  br i1 %3073, label %3074, label %3371, !dx.controlflow.hints !83

; <label>:3074                                    ; preds = %3012
  %3075 = fmul fast float %3052, 5.000000e-01
  %3076 = fmul fast float %3051, 5.000000e-01
  %3077 = fadd fast float %3075, 5.000000e-01
  %3078 = fadd fast float %3076, 5.000000e-01
  %3079 = sitofp i32 %3018 to float
  %3080 = fsub fast float %3046, %3079
  %3081 = call float @dx.op.unary.f32(i32 27, float %3080)  ; Round_ni(value)
  %3082 = call float @dx.op.unary.f32(i32 22, float %3046)  ; Frc(value)
  %3083 = call float @dx.op.unary.f32(i32 22, float %3078)  ; Frc(value)
  %3084 = call float @dx.op.unary.f32(i32 22, float %3077)  ; Frc(value)
  %3085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %37, float %3083, float %3084, float %3081, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3086 = extractvalue %dx.types.ResRet.f32 %3085, 0
  %3087 = extractvalue %dx.types.ResRet.f32 %3085, 1
  %3088 = extractvalue %dx.types.ResRet.f32 %3085, 2
  %3089 = extractvalue %dx.types.ResRet.f32 %3085, 3
  %3090 = fcmp fast ogt float %3082, 0.000000e+00
  br i1 %3090, label %3091, label %3112, !dx.controlflow.hints !84

; <label>:3091                                    ; preds = %3074
  %3092 = fadd fast float %3081, 1.000000e+00
  %3093 = call float @dx.op.unary.f32(i32 22, float %3055)  ; Frc(value)
  %3094 = call float @dx.op.unary.f32(i32 22, float %3056)  ; Frc(value)
  %3095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %37, float %3093, float %3094, float %3092, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3096 = extractvalue %dx.types.ResRet.f32 %3095, 0
  %3097 = extractvalue %dx.types.ResRet.f32 %3095, 1
  %3098 = extractvalue %dx.types.ResRet.f32 %3095, 2
  %3099 = extractvalue %dx.types.ResRet.f32 %3095, 3
  %3100 = fsub fast float %3096, %3086
  %3101 = fsub fast float %3097, %3087
  %3102 = fsub fast float %3098, %3088
  %3103 = fsub fast float %3099, %3089
  %3104 = fmul fast float %3100, %3082
  %3105 = fmul fast float %3101, %3082
  %3106 = fmul fast float %3102, %3082
  %3107 = fmul fast float %3103, %3082
  %3108 = fadd fast float %3104, %3086
  %3109 = fadd fast float %3105, %3087
  %3110 = fadd fast float %3106, %3088
  %3111 = fadd fast float %3107, %3089
  br label %3112

; <label>:3112                                    ; preds = %3091, %3074
  %3113 = phi float [ %3108, %3091 ], [ %3086, %3074 ]
  %3114 = phi float [ %3109, %3091 ], [ %3087, %3074 ]
  %3115 = phi float [ %3110, %3091 ], [ %3088, %3074 ]
  %3116 = phi float [ %3111, %3091 ], [ %3089, %3074 ]
  %3117 = fadd fast float %3113, -5.000000e-01
  %3118 = fadd fast float %3115, -5.000000e-01
  %3119 = fmul fast float %3117, 0xBFD5555560000000
  %3120 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3118, float %3119)  ; FMad(a,b,c)
  %3121 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3114, float 0.000000e+00)  ; FMad(a,b,c)
  %3122 = fadd fast float %3121, %3116
  %3123 = fmul fast float %3117, -7.500000e-01
  %3124 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3118, float %3123)  ; FMad(a,b,c)
  %3125 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3114, float 0.000000e+00)  ; FMad(a,b,c)
  %3126 = fadd fast float %3125, %3116
  %3127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3128 = extractvalue %dx.types.CBufRet.f32 %3127, 0
  %3129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3130 = extractvalue %dx.types.CBufRet.f32 %3129, 0
  %3131 = extractvalue %dx.types.CBufRet.f32 %3129, 1
  %3132 = extractvalue %dx.types.CBufRet.f32 %3129, 2
  %3133 = extractvalue %dx.types.CBufRet.f32 %3129, 3
  %3134 = fsub fast float %3130, %3120
  %3135 = fsub fast float %3131, %3122
  %3136 = fsub fast float %3132, %3124
  %3137 = fsub fast float %3133, %3126
  %3138 = fmul fast float %3134, %3128
  %3139 = fmul fast float %3135, %3128
  %3140 = fmul fast float %3136, %3128
  %3141 = fmul fast float %3137, %3128
  %3142 = fadd fast float %3138, %3120
  %3143 = fadd fast float %3139, %3122
  %3144 = fadd fast float %3140, %3124
  %3145 = fadd fast float %3141, %3126
  %3146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3147 = extractvalue %dx.types.ResRet.i32 %3146, 0
  %3148 = and i32 %3147, 536870911
  %3149 = uitofp i32 %3148 to float
  %3150 = fmul fast float %3149, %2996
  %3151 = fmul fast float %3149, %3000
  %3152 = fptoui float %3150 to i32
  %3153 = fptoui float %3151 to i32
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = and i32 %3155, 31
  %3157 = lshr i32 %3152, %3156
  %3158 = lshr i32 %3153, %3156
  %3159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3160 = extractvalue %dx.types.ResRet.i32 %3159, 0
  %3161 = and i32 %3160, 31
  %3162 = shl i32 1, %3161
  %3163 = call i32 @dx.op.binary.i32(i32 40, i32 %3162, i32 4)  ; UMin(a,b)
  %3164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.i32 %3164, 0
  %3166 = extractvalue %dx.types.ResRet.i32 %3164, 1
  %3167 = icmp eq i32 %3163, 0
  br i1 %3167, label %3209, label %3168

; <label>:3168                                    ; preds = %3112
  br label %3169

; <label>:3169                                    ; preds = %3197, %3168
  %3170 = phi i32 [ %3200, %3197 ], [ 0, %3168 ]
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = lshr i32 %3172, 16
  %3174 = and i32 %3173, 31
  %3175 = shl i32 %3158, %3174
  %3176 = add i32 %3175, %3157
  %3177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3178 = extractvalue %dx.types.ResRet.i32 %3177, 0
  %3179 = and i32 %3178, 31
  %3180 = shl i32 %3176, %3179
  %3181 = add i32 %3180, %3170
  %3182 = shl i32 %3181, 2
  %3183 = add i32 %3182, 32
  %3184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3183, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.i32 %3184, 0
  %3186 = icmp slt i32 %3185, 0
  %3187 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %3170
  %3188 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %3170
  %3189 = bitcast float* %3187 to i32*
  %3190 = bitcast float* %3188 to i32*
  br i1 %3186, label %3191, label %3197

; <label>:3191                                    ; preds = %3169
  %3192 = and i32 %3185, 1073741823
  %3193 = add nuw nsw i32 %3192, 20
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3193, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = extractvalue %dx.types.ResRet.i32 %3194, 1
  br label %3197

; <label>:3197                                    ; preds = %3191, %3169
  %3198 = phi i32 [ %3195, %3191 ], [ %3165, %3169 ]
  %3199 = phi i32 [ %3196, %3191 ], [ %3166, %3169 ]
  store i32 %3198, i32* %3189, align 4
  store i32 %3199, i32* %3190, align 4
  %3200 = add nuw i32 %3170, 1
  %3201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3202 = extractvalue %dx.types.CBufRet.i32 %3201, 2
  %3203 = icmp eq i32 %3202, 0
  %3204 = icmp ugt i32 %3185, -1073741825
  %3205 = and i1 %3204, %3203
  %3206 = icmp ult i32 %3200, %3163
  %3207 = and i1 %3205, %3206
  br i1 %3207, label %3169, label %3208

; <label>:3208                                    ; preds = %3197
  br label %3209

; <label>:3209                                    ; preds = %3208, %3112
  %3210 = phi i32 [ 0, %3112 ], [ %3200, %3208 ]
  %3211 = extractvalue %dx.types.CBufRet.f32 %2974, 2
  %3212 = fptoui float %3211 to i32
  %3213 = icmp eq i32 %3212, 0
  br i1 %3213, label %3265, label %3214

; <label>:3214                                    ; preds = %3209
  br label %3215

; <label>:3215                                    ; preds = %3260, %3214
  %3216 = phi i32 [ %3261, %3260 ], [ %3210, %3214 ]
  %3217 = phi i32 [ %3262, %3260 ], [ 0, %3214 ]
  %3218 = lshr i32 %3217, 2
  %3219 = and i32 %3217, 3
  %3220 = add nuw nsw i32 %3218, 83
  %3221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 %3220)  ; CBufferLoadLegacy(handle,regIndex)
  %3222 = extractvalue %dx.types.CBufRet.i32 %3221, 0
  %3223 = extractvalue %dx.types.CBufRet.i32 %3221, 1
  %3224 = extractvalue %dx.types.CBufRet.i32 %3221, 2
  %3225 = extractvalue %dx.types.CBufRet.i32 %3221, 3
  %3226 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 0
  store i32 %3222, i32* %3226, align 4
  %3227 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 1
  store i32 %3223, i32* %3227, align 4
  %3228 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 2
  store i32 %3224, i32* %3228, align 4
  %3229 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 3
  store i32 %3225, i32* %3229, align 4
  %3230 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i32 0, i32 %3219
  %3231 = load i32, i32* %3230, align 4, !tbaa !85, !noalias !89
  %3232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3233 = extractvalue %dx.types.ResRet.i32 %3232, 0
  %3234 = lshr i32 %3233, 16
  %3235 = and i32 %3234, 31
  %3236 = shl i32 %3158, %3235
  %3237 = add i32 %3236, %3157
  %3238 = shl i32 %3237, 2
  %3239 = add i32 %3238, %3231
  %3240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.i32 %3240, 0
  %3242 = icmp eq i32 %3241, 0
  br i1 %3242, label %3260, label %3243

; <label>:3243                                    ; preds = %3215
  %3244 = icmp slt i32 %3241, 0
  %3245 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %3216
  %3246 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %3216
  %3247 = bitcast float* %3245 to i32*
  %3248 = bitcast float* %3246 to i32*
  br i1 %3244, label %3249, label %3256

; <label>:3249                                    ; preds = %3243
  %3250 = and i32 %3241, 1073741823
  %3251 = add i32 %3231, 20
  %3252 = add i32 %3251, %3250
  %3253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3252, i32 undef)  ; BufferLoad(srv,index,wot)
  %3254 = extractvalue %dx.types.ResRet.i32 %3253, 0
  %3255 = extractvalue %dx.types.ResRet.i32 %3253, 1
  br label %3256

; <label>:3256                                    ; preds = %3249, %3243
  %3257 = phi i32 [ %3254, %3249 ], [ %3165, %3243 ]
  %3258 = phi i32 [ %3255, %3249 ], [ %3166, %3243 ]
  store i32 %3257, i32* %3247, align 4
  store i32 %3258, i32* %3248, align 4
  %3259 = add i32 %3216, 1
  br label %3260

; <label>:3260                                    ; preds = %3256, %3215
  %3261 = phi i32 [ %3216, %3215 ], [ %3259, %3256 ]
  %3262 = add nuw i32 %3217, 1
  %3263 = icmp eq i32 %3262, %3212
  br i1 %3263, label %3264, label %3215

; <label>:3264                                    ; preds = %3260
  br label %3265

; <label>:3265                                    ; preds = %3264, %3209
  %3266 = phi i32 [ %3210, %3209 ], [ %3261, %3264 ]
  %3267 = icmp eq i32 %3266, 1
  %3268 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 0
  %3269 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 0
  br i1 %3267, label %3270, label %3273

; <label>:3270                                    ; preds = %3265
  %3271 = load float, float* %3268, align 4
  %3272 = load float, float* %3269, align 4
  br label %3300

; <label>:3273                                    ; preds = %3265
  %3274 = load float, float* %3268, align 4
  %3275 = load float, float* %3269, align 4
  %3276 = fdiv fast float 1.000000e+00, %3275
  %3277 = fsub fast float %3274, %3276
  %3278 = icmp ugt i32 %3266, 1
  br i1 %3278, label %3279, label %3295

; <label>:3279                                    ; preds = %3273
  br label %3280

; <label>:3280                                    ; preds = %3280, %3279
  %3281 = phi float [ %3290, %3280 ], [ %3277, %3279 ]
  %3282 = phi float [ %3291, %3280 ], [ %3274, %3279 ]
  %3283 = phi i32 [ %3292, %3280 ], [ 1, %3279 ]
  %3284 = getelementptr [12 x float], [12 x float]* %71, i32 0, i32 %3283
  %3285 = load float, float* %3284, align 4
  %3286 = getelementptr [12 x float], [12 x float]* %72, i32 0, i32 %3283
  %3287 = load float, float* %3286, align 4
  %3288 = fdiv fast float 1.000000e+00, %3287
  %3289 = fsub fast float %3285, %3288
  %3290 = call float @dx.op.binary.f32(i32 36, float %3281, float %3289)  ; FMin(a,b)
  %3291 = call float @dx.op.binary.f32(i32 35, float %3282, float %3285)  ; FMax(a,b)
  %3292 = add nuw i32 %3283, 1
  %3293 = icmp eq i32 %3292, %3266
  br i1 %3293, label %3294, label %3280

; <label>:3294                                    ; preds = %3280
  br label %3295

; <label>:3295                                    ; preds = %3294, %3273
  %3296 = phi float [ %3277, %3273 ], [ %3290, %3294 ]
  %3297 = phi float [ %3274, %3273 ], [ %3291, %3294 ]
  %3298 = fsub fast float %3297, %3296
  %3299 = fdiv fast float 1.000000e+00, %3298
  br label %3300

; <label>:3300                                    ; preds = %3295, %3270
  %3301 = phi float [ %3271, %3270 ], [ %3297, %3295 ]
  %3302 = phi float [ %3272, %3270 ], [ %3299, %3295 ]
  %3303 = fadd fast float %3004, %3301
  %3304 = fmul fast float %3303, %3302
  %3305 = call float @dx.op.unary.f32(i32 7, float %3304)  ; Saturate(value)
  %3306 = fmul fast float %3305, 2.000000e+00
  %3307 = fsub fast float 1.000000e+00, %3306
  %3308 = fmul fast float %3142, %3142
  %3309 = fsub fast float %3143, %3308
  %3310 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3309)  ; FMax(a,b)
  %3311 = fdiv fast float 1.000000e+00, %3310
  %3312 = fmul fast float %3143, %3142
  %3313 = fsub fast float %3144, %3312
  %3314 = fsub fast float %3307, %3142
  %3315 = fmul fast float %3307, %3307
  %3316 = fsub fast float %3315, %3143
  %3317 = fmul fast float %3311, %3313
  %3318 = fmul fast float %3317, %3314
  %3319 = fsub fast float %3316, %3318
  %3320 = fmul fast float %3143, %3143
  %3321 = fsub fast float %3145, %3320
  %3322 = fmul fast float %3313, %3313
  %3323 = fmul fast float %3322, %3311
  %3324 = fsub fast float %3321, %3323
  %3325 = fdiv fast float %3319, %3324
  %3326 = fmul fast float %3325, %3313
  %3327 = fsub fast float %3314, %3326
  %3328 = fmul fast float %3327, %3311
  %3329 = fmul fast float %3328, %3142
  %3330 = fsub fast float 1.000000e+00, %3329
  %3331 = fmul fast float %3325, %3143
  %3332 = fsub fast float %3330, %3331
  %3333 = fmul fast float %3328, %3328
  %3334 = fmul fast float %3325, 4.000000e+00
  %3335 = fmul fast float %3334, %3332
  %3336 = fsub fast float %3333, %3335
  %3337 = call float @dx.op.unary.f32(i32 24, float %3336)  ; Sqrt(value)
  %3338 = fcmp fast oge float %3328, 0.000000e+00
  %3339 = fsub fast float -0.000000e+00, %3337
  %3340 = select i1 %3338, float %3339, float %3337
  %3341 = fsub fast float %3340, %3328
  %3342 = fdiv fast float %3341, %3325
  %3343 = fdiv fast float %3332, %3341
  %3344 = fmul fast float %3342, 5.000000e-01
  %3345 = fmul fast float %3343, 2.000000e+00
  %3346 = select i1 %3338, float %3344, float %3345
  %3347 = select i1 %3338, float %3345, float %3344
  %3348 = call float @dx.op.binary.f32(i32 35, float %3346, float %3347)  ; FMax(a,b)
  %3349 = call float @dx.op.binary.f32(i32 36, float %3346, float %3347)  ; FMin(a,b)
  %3350 = fcmp fast ogt float %3307, %3348
  %3351 = fsub fast float %3307, %3349
  %3352 = fsub fast float %3307, %3348
  %3353 = fsub fast float %3348, %3349
  %3354 = select i1 %3350, float %3352, float %3353
  %3355 = fmul float %3351, %3354
  %3356 = select i1 %3350, float %3349, float %3307
  %3357 = fcmp fast ogt float %3307, %3349
  %3358 = fmul fast float %3356, %3348
  %3359 = fadd fast float %3356, %3348
  %3360 = fmul fast float %3359, %3142
  %3361 = fadd fast float %3358, %3143
  %3362 = fsub fast float %3361, %3360
  %3363 = fdiv fast float %3362, %3355
  %3364 = select i1 %3357, float %3363, float 0.000000e+00
  %3365 = fsub fast float 1.000000e+00, %3364
  %3366 = select i1 %3350, float %3365, float %3364
  %3367 = call float @dx.op.unary.f32(i32 7, float %3366)  ; Saturate(value)
  %3368 = extractvalue %dx.types.CBufRet.f32 %3127, 3
  %3369 = fmul fast float %3368, %3367
  %3370 = fsub fast float 1.000000e+00, %3369
  br label %3371

; <label>:3371                                    ; preds = %3300, %3012, %2977, %2973, %2939
  %3372 = phi float [ 1.000000e+00, %2939 ], [ %3370, %3300 ], [ 1.000000e+00, %2977 ], [ 1.000000e+00, %3012 ], [ 1.000000e+00, %2973 ]
  %3373 = fcmp fast ogt float %2969, 0.000000e+00
  br i1 %3373, label %3374, label %3536, !dx.controlflow.hints !98

; <label>:3374                                    ; preds = %3371
  %3375 = fadd fast float %2882, %2856
  %3376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3377 = extractvalue %dx.types.CBufRet.f32 %3376, 2
  %3378 = extractvalue %dx.types.CBufRet.f32 %3376, 3
  %3379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3380 = extractvalue %dx.types.CBufRet.f32 %3379, 2
  %3381 = call float @dx.op.binary.f32(i32 35, float %3375, float 0.000000e+00)  ; FMax(a,b)
  %3382 = fadd fast float %3381, 0x3F10000000000000
  %3383 = fcmp fast oeq float %3380, 0.000000e+00
  br i1 %3383, label %3384, label %3451

; <label>:3384                                    ; preds = %3374
  %3385 = extractvalue %dx.types.CBufRet.f32 %3376, 1
  %3386 = extractvalue %dx.types.CBufRet.f32 %3376, 0
  %3387 = fmul fast float %3386, %2871
  %3388 = fmul fast float %3385, %2872
  %3389 = fadd fast float %3387, 5.000000e-01
  %3390 = call float @dx.op.unary.f32(i32 27, float %3389)  ; Round_ni(value)
  %3391 = fadd fast float %3388, 5.000000e-01
  %3392 = call float @dx.op.unary.f32(i32 27, float %3391)  ; Round_ni(value)
  %3393 = fsub fast float %3389, %3390
  %3394 = fsub fast float %3391, %3392
  %3395 = fadd fast float %3390, -5.000000e-01
  %3396 = fadd fast float %3392, -5.000000e-01
  %3397 = fmul fast float %3393, 2.000000e+00
  %3398 = fsub fast float 3.000000e+00, %3397
  %3399 = fadd fast float %3397, 1.000000e+00
  %3400 = fsub fast float 2.000000e+00, %3393
  %3401 = bitcast float %3398 to i32
  %3402 = sub nsw i32 2129859010, %3401
  %3403 = bitcast i32 %3402 to float
  %3404 = fmul fast float %3403, %3400
  %3405 = fadd fast float %3404, -1.000000e+00
  %3406 = bitcast float %3399 to i32
  %3407 = sub nsw i32 2129859010, %3406
  %3408 = bitcast i32 %3407 to float
  %3409 = fmul fast float %3408, %3393
  %3410 = fadd fast float %3409, 1.000000e+00
  %3411 = fmul fast float %3394, 2.000000e+00
  %3412 = fsub fast float 3.000000e+00, %3411
  %3413 = fadd fast float %3411, 1.000000e+00
  %3414 = fsub fast float 2.000000e+00, %3394
  %3415 = bitcast float %3412 to i32
  %3416 = sub nsw i32 2129859010, %3415
  %3417 = bitcast i32 %3416 to float
  %3418 = fmul fast float %3417, %3414
  %3419 = fadd fast float %3418, -1.000000e+00
  %3420 = bitcast float %3413 to i32
  %3421 = sub nsw i32 2129859010, %3420
  %3422 = bitcast i32 %3421 to float
  %3423 = fmul fast float %3422, %3394
  %3424 = fadd fast float %3423, 1.000000e+00
  %3425 = fadd fast float %3405, %3395
  %3426 = fmul fast float %3425, %3377
  %3427 = fadd fast float %3419, %3396
  %3428 = fmul fast float %3427, %3378
  %3429 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %40, float %3426, float %3428, float undef, float undef, i32 0, i32 0, i32 undef, float %3382)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3430 = extractvalue %dx.types.ResRet.f32 %3429, 0
  %3431 = fmul fast float %3430, %3398
  %3432 = fadd fast float %3410, %3395
  %3433 = fmul fast float %3432, %3377
  %3434 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %40, float %3433, float %3428, float undef, float undef, i32 0, i32 0, i32 undef, float %3382)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3435 = extractvalue %dx.types.ResRet.f32 %3434, 0
  %3436 = fmul fast float %3435, %3399
  %3437 = fadd fast float %3424, %3396
  %3438 = fmul fast float %3437, %3378
  %3439 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %40, float %3426, float %3438, float undef, float undef, i32 0, i32 0, i32 undef, float %3382)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3440 = extractvalue %dx.types.ResRet.f32 %3439, 0
  %3441 = fmul fast float %3440, %3398
  %3442 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %40, float %3433, float %3438, float undef, float undef, i32 0, i32 0, i32 undef, float %3382)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3443 = extractvalue %dx.types.ResRet.f32 %3442, 0
  %3444 = fmul fast float %3443, %3399
  %3445 = fadd fast float %3444, %3441
  %3446 = fmul fast float %3445, %3413
  %3447 = fadd fast float %3436, %3431
  %3448 = fmul fast float %3447, %3412
  %3449 = fadd fast float %3448, %3446
  %3450 = fmul fast float %3449, 6.250000e-02
  br label %3536

; <label>:3451                                    ; preds = %3374
  %3452 = fmul fast float %233, 0x401921FB60000000
  %3453 = call float @dx.op.unary.f32(i32 13, float %3452)  ; Sin(value)
  %3454 = call float @dx.op.unary.f32(i32 12, float %3452)  ; Cos(value)
  %3455 = fsub fast float -0.000000e+00, %3453
  br label %3456

; <label>:3456                                    ; preds = %3505, %3451
  %3457 = phi float [ 0.000000e+00, %3451 ], [ %3500, %3505 ]
  %3458 = phi float [ 0.000000e+00, %3451 ], [ %3502, %3505 ]
  %3459 = phi i32 [ 0, %3451 ], [ %3506, %3505 ]
  %3460 = mul i32 %3459, 2
  %3461 = add i32 0, %3460
  %3462 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3461
  %3463 = load float, float* %3462, align 4
  %3464 = mul i32 %3459, 2
  %3465 = add i32 1, %3464
  %3466 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3465
  %3467 = load float, float* %3466, align 4
  %3468 = fmul fast float %3463, %3454
  %3469 = call float @dx.op.tertiary.f32(i32 46, float %3467, float %3455, float %3468)  ; FMad(a,b,c)
  %3470 = fmul fast float %3463, %3453
  %3471 = call float @dx.op.tertiary.f32(i32 46, float %3467, float %3454, float %3470)  ; FMad(a,b,c)
  %3472 = fmul fast float %3469, %3380
  %3473 = fmul fast float %3471, %3380
  %3474 = fadd fast float %3472, %2871
  %3475 = fadd fast float %3473, %2872
  %3476 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %39, float %3474, float %3475, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.ResRet.f32 %3476, 1
  %3479 = extractvalue %dx.types.ResRet.f32 %3476, 2
  %3480 = extractvalue %dx.types.ResRet.f32 %3476, 3
  %3481 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 0
  store float %3477, float* %3481, align 4
  %3482 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 1
  store float %3478, float* %3482, align 4
  %3483 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 2
  store float %3479, float* %3483, align 4
  %3484 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 3
  store float %3480, float* %3484, align 4
  %3485 = fsub fast float %3477, %3382
  %3486 = fcmp fast olt float %3485, 0.000000e+00
  %3487 = select i1 %3486, float 0.000000e+00, float 1.000000e+00
  %3488 = fadd fast float %3487, %3457
  %3489 = fmul fast float %3487, %3485
  %3490 = fadd fast float %3489, %3458
  br label %3491

; <label>:3491                                    ; preds = %3491, %3456
  %3492 = phi i32 [ 1, %3456 ], [ %3503, %3491 ]
  %3493 = phi float [ %3490, %3456 ], [ %3502, %3491 ]
  %3494 = phi float [ %3488, %3456 ], [ %3500, %3491 ]
  %3495 = getelementptr [4 x float], [4 x float]* %75, i32 0, i32 %3492
  %3496 = load float, float* %3495, align 4, !tbaa !99, !noalias !89
  %3497 = fsub fast float %3496, %3382
  %3498 = fcmp fast olt float %3497, 0.000000e+00
  %3499 = select i1 %3498, float 0.000000e+00, float 1.000000e+00
  %3500 = fadd fast float %3499, %3494
  %3501 = fmul fast float %3499, %3497
  %3502 = fadd fast float %3501, %3493
  %3503 = add nuw nsw i32 %3492, 1
  %3504 = icmp eq i32 %3503, 4
  br i1 %3504, label %3505, label %3491, !llvm.loop !101

; <label>:3505                                    ; preds = %3491
  %3506 = add nuw nsw i32 %3459, 1
  %3507 = icmp eq i32 %3506, 8
  br i1 %3507, label %3508, label %3456, !llvm.loop !102

; <label>:3508                                    ; preds = %3505
  %3509 = fdiv fast float 1.000000e+00, %3500
  %3510 = fmul fast float %3509, %3502
  %3511 = fdiv fast float 1.000000e+00, %3382
  %3512 = fmul fast float %3510, %3511
  %3513 = call float @dx.op.unary.f32(i32 7, float %3512)  ; Saturate(value)
  %3514 = call float @dx.op.binary.f32(i32 35, float %3513, float 0.000000e+00)  ; FMax(a,b)
  %3515 = fmul fast float %3500, 3.125000e-02
  %3516 = call float @dx.op.unary.f32(i32 7, float %3515)  ; Saturate(value)
  %3517 = fmul fast float %3516, 2.000000e+00
  %3518 = fadd fast float %3517, -1.000000e+00
  %3519 = fcmp fast ogt float %3518, 0.000000e+00
  %3520 = fcmp fast olt float %3518, 0.000000e+00
  %3521 = zext i1 %3519 to i32
  %3522 = zext i1 %3520 to i32
  %3523 = sub nsw i32 %3521, %3522
  %3524 = sitofp i32 %3523 to float
  %3525 = fmul fast float %3524, %3518
  %3526 = fsub fast float 1.000000e+00, %3525
  %3527 = fmul fast float %3526, %3526
  %3528 = fmul fast float %3527, %3526
  %3529 = fsub fast float %3526, %3528
  %3530 = fmul fast float %3529, %3514
  %3531 = fsub fast float 1.000000e+00, %3528
  %3532 = fsub fast float %3531, %3530
  %3533 = fmul fast float %3524, 5.000000e-01
  %3534 = fmul fast float %3533, %3532
  %3535 = fsub fast float 5.000000e-01, %3534
  br label %3536

; <label>:3536                                    ; preds = %3508, %3384, %3371
  %3537 = phi float [ 1.000000e+00, %3371 ], [ %3450, %3384 ], [ %3535, %3508 ]
  %3538 = fcmp fast ogt float %2967, 0.000000e+00
  br i1 %3538, label %3539, label %3703, !dx.controlflow.hints !103

; <label>:3539                                    ; preds = %3536
  %3540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3541 = extractvalue %dx.types.CBufRet.f32 %3540, 1
  %3542 = fadd fast float %3541, %2856
  %3543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3544 = extractvalue %dx.types.CBufRet.f32 %3543, 2
  %3545 = extractvalue %dx.types.CBufRet.f32 %3543, 3
  %3546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3547 = extractvalue %dx.types.CBufRet.f32 %3546, 1
  %3548 = call float @dx.op.binary.f32(i32 35, float %3542, float 0.000000e+00)  ; FMax(a,b)
  %3549 = fadd fast float %3548, 0x3F10000000000000
  %3550 = fcmp fast oeq float %3547, 0.000000e+00
  br i1 %3550, label %3551, label %3618

; <label>:3551                                    ; preds = %3539
  %3552 = extractvalue %dx.types.CBufRet.f32 %3543, 1
  %3553 = extractvalue %dx.types.CBufRet.f32 %3543, 0
  %3554 = fmul fast float %3553, %2863
  %3555 = fmul fast float %3552, %2864
  %3556 = fadd fast float %3554, 5.000000e-01
  %3557 = call float @dx.op.unary.f32(i32 27, float %3556)  ; Round_ni(value)
  %3558 = fadd fast float %3555, 5.000000e-01
  %3559 = call float @dx.op.unary.f32(i32 27, float %3558)  ; Round_ni(value)
  %3560 = fsub fast float %3556, %3557
  %3561 = fsub fast float %3558, %3559
  %3562 = fadd fast float %3557, -5.000000e-01
  %3563 = fadd fast float %3559, -5.000000e-01
  %3564 = fmul fast float %3560, 2.000000e+00
  %3565 = fsub fast float 3.000000e+00, %3564
  %3566 = fadd fast float %3564, 1.000000e+00
  %3567 = fsub fast float 2.000000e+00, %3560
  %3568 = bitcast float %3565 to i32
  %3569 = sub nsw i32 2129859010, %3568
  %3570 = bitcast i32 %3569 to float
  %3571 = fmul fast float %3570, %3567
  %3572 = fadd fast float %3571, -1.000000e+00
  %3573 = bitcast float %3566 to i32
  %3574 = sub nsw i32 2129859010, %3573
  %3575 = bitcast i32 %3574 to float
  %3576 = fmul fast float %3575, %3560
  %3577 = fadd fast float %3576, 1.000000e+00
  %3578 = fmul fast float %3561, 2.000000e+00
  %3579 = fsub fast float 3.000000e+00, %3578
  %3580 = fadd fast float %3578, 1.000000e+00
  %3581 = fsub fast float 2.000000e+00, %3561
  %3582 = bitcast float %3579 to i32
  %3583 = sub nsw i32 2129859010, %3582
  %3584 = bitcast i32 %3583 to float
  %3585 = fmul fast float %3584, %3581
  %3586 = fadd fast float %3585, -1.000000e+00
  %3587 = bitcast float %3580 to i32
  %3588 = sub nsw i32 2129859010, %3587
  %3589 = bitcast i32 %3588 to float
  %3590 = fmul fast float %3589, %3561
  %3591 = fadd fast float %3590, 1.000000e+00
  %3592 = fadd fast float %3572, %3562
  %3593 = fmul fast float %3592, %3544
  %3594 = fadd fast float %3586, %3563
  %3595 = fmul fast float %3594, %3545
  %3596 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %40, float %3593, float %3595, float undef, float undef, i32 0, i32 0, i32 undef, float %3549)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3597 = extractvalue %dx.types.ResRet.f32 %3596, 0
  %3598 = fmul fast float %3597, %3565
  %3599 = fadd fast float %3577, %3562
  %3600 = fmul fast float %3599, %3544
  %3601 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %40, float %3600, float %3595, float undef, float undef, i32 0, i32 0, i32 undef, float %3549)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3602 = extractvalue %dx.types.ResRet.f32 %3601, 0
  %3603 = fmul fast float %3602, %3566
  %3604 = fadd fast float %3591, %3563
  %3605 = fmul fast float %3604, %3545
  %3606 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %40, float %3593, float %3605, float undef, float undef, i32 0, i32 0, i32 undef, float %3549)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = fmul fast float %3607, %3565
  %3609 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %40, float %3600, float %3605, float undef, float undef, i32 0, i32 0, i32 undef, float %3549)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3610 = extractvalue %dx.types.ResRet.f32 %3609, 0
  %3611 = fmul fast float %3610, %3566
  %3612 = fadd fast float %3611, %3608
  %3613 = fmul fast float %3612, %3580
  %3614 = fadd fast float %3603, %3598
  %3615 = fmul fast float %3614, %3579
  %3616 = fadd fast float %3615, %3613
  %3617 = fmul fast float %3616, 6.250000e-02
  br label %3703

; <label>:3618                                    ; preds = %3539
  %3619 = fmul fast float %233, 0x401921FB60000000
  %3620 = call float @dx.op.unary.f32(i32 13, float %3619)  ; Sin(value)
  %3621 = call float @dx.op.unary.f32(i32 12, float %3619)  ; Cos(value)
  %3622 = fsub fast float -0.000000e+00, %3620
  br label %3623

; <label>:3623                                    ; preds = %3672, %3618
  %3624 = phi float [ 0.000000e+00, %3618 ], [ %3667, %3672 ]
  %3625 = phi float [ 0.000000e+00, %3618 ], [ %3669, %3672 ]
  %3626 = phi i32 [ 0, %3618 ], [ %3673, %3672 ]
  %3627 = mul i32 %3626, 2
  %3628 = add i32 0, %3627
  %3629 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3628
  %3630 = load float, float* %3629, align 4
  %3631 = mul i32 %3626, 2
  %3632 = add i32 1, %3631
  %3633 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3632
  %3634 = load float, float* %3633, align 4
  %3635 = fmul fast float %3630, %3621
  %3636 = call float @dx.op.tertiary.f32(i32 46, float %3634, float %3622, float %3635)  ; FMad(a,b,c)
  %3637 = fmul fast float %3630, %3620
  %3638 = call float @dx.op.tertiary.f32(i32 46, float %3634, float %3621, float %3637)  ; FMad(a,b,c)
  %3639 = fmul fast float %3636, %3547
  %3640 = fmul fast float %3638, %3547
  %3641 = fadd fast float %3639, %2863
  %3642 = fadd fast float %3640, %2864
  %3643 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %39, float %3641, float %3642, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3644 = extractvalue %dx.types.ResRet.f32 %3643, 0
  %3645 = extractvalue %dx.types.ResRet.f32 %3643, 1
  %3646 = extractvalue %dx.types.ResRet.f32 %3643, 2
  %3647 = extractvalue %dx.types.ResRet.f32 %3643, 3
  %3648 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 0
  store float %3644, float* %3648, align 4
  %3649 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 1
  store float %3645, float* %3649, align 4
  %3650 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 2
  store float %3646, float* %3650, align 4
  %3651 = getelementptr inbounds [4 x float], [4 x float]* %74, i32 0, i32 3
  store float %3647, float* %3651, align 4
  %3652 = fsub fast float %3644, %3549
  %3653 = fcmp fast olt float %3652, 0.000000e+00
  %3654 = select i1 %3653, float 0.000000e+00, float 1.000000e+00
  %3655 = fadd fast float %3654, %3624
  %3656 = fmul fast float %3654, %3652
  %3657 = fadd fast float %3656, %3625
  br label %3658

; <label>:3658                                    ; preds = %3658, %3623
  %3659 = phi i32 [ 1, %3623 ], [ %3670, %3658 ]
  %3660 = phi float [ %3657, %3623 ], [ %3669, %3658 ]
  %3661 = phi float [ %3655, %3623 ], [ %3667, %3658 ]
  %3662 = getelementptr [4 x float], [4 x float]* %74, i32 0, i32 %3659
  %3663 = load float, float* %3662, align 4, !tbaa !99, !noalias !89
  %3664 = fsub fast float %3663, %3549
  %3665 = fcmp fast olt float %3664, 0.000000e+00
  %3666 = select i1 %3665, float 0.000000e+00, float 1.000000e+00
  %3667 = fadd fast float %3666, %3661
  %3668 = fmul fast float %3666, %3664
  %3669 = fadd fast float %3668, %3660
  %3670 = add nuw nsw i32 %3659, 1
  %3671 = icmp eq i32 %3670, 4
  br i1 %3671, label %3672, label %3658, !llvm.loop !101

; <label>:3672                                    ; preds = %3658
  %3673 = add nuw nsw i32 %3626, 1
  %3674 = icmp eq i32 %3673, 8
  br i1 %3674, label %3675, label %3623, !llvm.loop !102

; <label>:3675                                    ; preds = %3672
  %3676 = fdiv fast float 1.000000e+00, %3667
  %3677 = fmul fast float %3676, %3669
  %3678 = fdiv fast float 1.000000e+00, %3549
  %3679 = fmul fast float %3677, %3678
  %3680 = call float @dx.op.unary.f32(i32 7, float %3679)  ; Saturate(value)
  %3681 = call float @dx.op.binary.f32(i32 35, float %3680, float 0.000000e+00)  ; FMax(a,b)
  %3682 = fmul fast float %3667, 3.125000e-02
  %3683 = call float @dx.op.unary.f32(i32 7, float %3682)  ; Saturate(value)
  %3684 = fmul fast float %3683, 2.000000e+00
  %3685 = fadd fast float %3684, -1.000000e+00
  %3686 = fcmp fast ogt float %3685, 0.000000e+00
  %3687 = fcmp fast olt float %3685, 0.000000e+00
  %3688 = zext i1 %3686 to i32
  %3689 = zext i1 %3687 to i32
  %3690 = sub nsw i32 %3688, %3689
  %3691 = sitofp i32 %3690 to float
  %3692 = fmul fast float %3691, %3685
  %3693 = fsub fast float 1.000000e+00, %3692
  %3694 = fmul fast float %3693, %3693
  %3695 = fmul fast float %3694, %3693
  %3696 = fsub fast float %3693, %3695
  %3697 = fmul fast float %3696, %3681
  %3698 = fsub fast float 1.000000e+00, %3695
  %3699 = fsub fast float %3698, %3697
  %3700 = fmul fast float %3691, 5.000000e-01
  %3701 = fmul fast float %3700, %3699
  %3702 = fsub fast float 5.000000e-01, %3701
  br label %3703

; <label>:3703                                    ; preds = %3675, %3551, %3536
  %3704 = phi float [ 1.000000e+00, %3536 ], [ %3617, %3551 ], [ %3702, %3675 ]
  %3705 = fcmp fast ogt float %2966, 0.000000e+00
  br i1 %3705, label %3706, label %3870, !dx.controlflow.hints !104

; <label>:3706                                    ; preds = %3703
  %3707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3708 = extractvalue %dx.types.CBufRet.f32 %3707, 0
  %3709 = fadd fast float %3708, %2856
  %3710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3711 = extractvalue %dx.types.CBufRet.f32 %3710, 2
  %3712 = extractvalue %dx.types.CBufRet.f32 %3710, 3
  %3713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3714 = extractvalue %dx.types.CBufRet.f32 %3713, 0
  %3715 = call float @dx.op.binary.f32(i32 35, float %3709, float 0.000000e+00)  ; FMax(a,b)
  %3716 = fadd fast float %3715, 0x3F10000000000000
  %3717 = fcmp fast oeq float %3714, 0.000000e+00
  br i1 %3717, label %3718, label %3785

; <label>:3718                                    ; preds = %3706
  %3719 = extractvalue %dx.types.CBufRet.f32 %3710, 1
  %3720 = extractvalue %dx.types.CBufRet.f32 %3710, 0
  %3721 = fmul fast float %3720, %2848
  %3722 = fmul fast float %3719, %2852
  %3723 = fadd fast float %3721, 5.000000e-01
  %3724 = call float @dx.op.unary.f32(i32 27, float %3723)  ; Round_ni(value)
  %3725 = fadd fast float %3722, 5.000000e-01
  %3726 = call float @dx.op.unary.f32(i32 27, float %3725)  ; Round_ni(value)
  %3727 = fsub fast float %3723, %3724
  %3728 = fsub fast float %3725, %3726
  %3729 = fadd fast float %3724, -5.000000e-01
  %3730 = fadd fast float %3726, -5.000000e-01
  %3731 = fmul fast float %3727, 2.000000e+00
  %3732 = fsub fast float 3.000000e+00, %3731
  %3733 = fadd fast float %3731, 1.000000e+00
  %3734 = fsub fast float 2.000000e+00, %3727
  %3735 = bitcast float %3732 to i32
  %3736 = sub nsw i32 2129859010, %3735
  %3737 = bitcast i32 %3736 to float
  %3738 = fmul fast float %3737, %3734
  %3739 = fadd fast float %3738, -1.000000e+00
  %3740 = bitcast float %3733 to i32
  %3741 = sub nsw i32 2129859010, %3740
  %3742 = bitcast i32 %3741 to float
  %3743 = fmul fast float %3742, %3727
  %3744 = fadd fast float %3743, 1.000000e+00
  %3745 = fmul fast float %3728, 2.000000e+00
  %3746 = fsub fast float 3.000000e+00, %3745
  %3747 = fadd fast float %3745, 1.000000e+00
  %3748 = fsub fast float 2.000000e+00, %3728
  %3749 = bitcast float %3746 to i32
  %3750 = sub nsw i32 2129859010, %3749
  %3751 = bitcast i32 %3750 to float
  %3752 = fmul fast float %3751, %3748
  %3753 = fadd fast float %3752, -1.000000e+00
  %3754 = bitcast float %3747 to i32
  %3755 = sub nsw i32 2129859010, %3754
  %3756 = bitcast i32 %3755 to float
  %3757 = fmul fast float %3756, %3728
  %3758 = fadd fast float %3757, 1.000000e+00
  %3759 = fadd fast float %3739, %3729
  %3760 = fmul fast float %3759, %3711
  %3761 = fadd fast float %3753, %3730
  %3762 = fmul fast float %3761, %3712
  %3763 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %40, float %3760, float %3762, float undef, float undef, i32 0, i32 0, i32 undef, float %3716)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3764 = extractvalue %dx.types.ResRet.f32 %3763, 0
  %3765 = fmul fast float %3764, %3732
  %3766 = fadd fast float %3744, %3729
  %3767 = fmul fast float %3766, %3711
  %3768 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %40, float %3767, float %3762, float undef, float undef, i32 0, i32 0, i32 undef, float %3716)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3769 = extractvalue %dx.types.ResRet.f32 %3768, 0
  %3770 = fmul fast float %3769, %3733
  %3771 = fadd fast float %3758, %3730
  %3772 = fmul fast float %3771, %3712
  %3773 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %40, float %3760, float %3772, float undef, float undef, i32 0, i32 0, i32 undef, float %3716)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3774 = extractvalue %dx.types.ResRet.f32 %3773, 0
  %3775 = fmul fast float %3774, %3732
  %3776 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %40, float %3767, float %3772, float undef, float undef, i32 0, i32 0, i32 undef, float %3716)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3777 = extractvalue %dx.types.ResRet.f32 %3776, 0
  %3778 = fmul fast float %3777, %3733
  %3779 = fadd fast float %3778, %3775
  %3780 = fmul fast float %3779, %3747
  %3781 = fadd fast float %3770, %3765
  %3782 = fmul fast float %3781, %3746
  %3783 = fadd fast float %3782, %3780
  %3784 = fmul fast float %3783, 6.250000e-02
  br label %3870

; <label>:3785                                    ; preds = %3706
  %3786 = fmul fast float %233, 0x401921FB60000000
  %3787 = call float @dx.op.unary.f32(i32 13, float %3786)  ; Sin(value)
  %3788 = call float @dx.op.unary.f32(i32 12, float %3786)  ; Cos(value)
  %3789 = fsub fast float -0.000000e+00, %3787
  br label %3790

; <label>:3790                                    ; preds = %3839, %3785
  %3791 = phi float [ 0.000000e+00, %3785 ], [ %3834, %3839 ]
  %3792 = phi float [ 0.000000e+00, %3785 ], [ %3836, %3839 ]
  %3793 = phi i32 [ 0, %3785 ], [ %3840, %3839 ]
  %3794 = mul i32 %3793, 2
  %3795 = add i32 0, %3794
  %3796 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3795
  %3797 = load float, float* %3796, align 4
  %3798 = mul i32 %3793, 2
  %3799 = add i32 1, %3798
  %3800 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3799
  %3801 = load float, float* %3800, align 4
  %3802 = fmul fast float %3797, %3788
  %3803 = call float @dx.op.tertiary.f32(i32 46, float %3801, float %3789, float %3802)  ; FMad(a,b,c)
  %3804 = fmul fast float %3797, %3787
  %3805 = call float @dx.op.tertiary.f32(i32 46, float %3801, float %3788, float %3804)  ; FMad(a,b,c)
  %3806 = fmul fast float %3803, %3714
  %3807 = fmul fast float %3805, %3714
  %3808 = fadd fast float %3806, %2848
  %3809 = fadd fast float %3807, %2852
  %3810 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %39, float %3808, float %3809, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3811 = extractvalue %dx.types.ResRet.f32 %3810, 0
  %3812 = extractvalue %dx.types.ResRet.f32 %3810, 1
  %3813 = extractvalue %dx.types.ResRet.f32 %3810, 2
  %3814 = extractvalue %dx.types.ResRet.f32 %3810, 3
  %3815 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 0
  store float %3811, float* %3815, align 4
  %3816 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 1
  store float %3812, float* %3816, align 4
  %3817 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 2
  store float %3813, float* %3817, align 4
  %3818 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 3
  store float %3814, float* %3818, align 4
  %3819 = fsub fast float %3811, %3716
  %3820 = fcmp fast olt float %3819, 0.000000e+00
  %3821 = select i1 %3820, float 0.000000e+00, float 1.000000e+00
  %3822 = fadd fast float %3821, %3791
  %3823 = fmul fast float %3821, %3819
  %3824 = fadd fast float %3823, %3792
  br label %3825

; <label>:3825                                    ; preds = %3825, %3790
  %3826 = phi i32 [ 1, %3790 ], [ %3837, %3825 ]
  %3827 = phi float [ %3824, %3790 ], [ %3836, %3825 ]
  %3828 = phi float [ %3822, %3790 ], [ %3834, %3825 ]
  %3829 = getelementptr [4 x float], [4 x float]* %73, i32 0, i32 %3826
  %3830 = load float, float* %3829, align 4, !tbaa !99, !noalias !89
  %3831 = fsub fast float %3830, %3716
  %3832 = fcmp fast olt float %3831, 0.000000e+00
  %3833 = select i1 %3832, float 0.000000e+00, float 1.000000e+00
  %3834 = fadd fast float %3833, %3828
  %3835 = fmul fast float %3833, %3831
  %3836 = fadd fast float %3835, %3827
  %3837 = add nuw nsw i32 %3826, 1
  %3838 = icmp eq i32 %3837, 4
  br i1 %3838, label %3839, label %3825, !llvm.loop !101

; <label>:3839                                    ; preds = %3825
  %3840 = add nuw nsw i32 %3793, 1
  %3841 = icmp eq i32 %3840, 8
  br i1 %3841, label %3842, label %3790, !llvm.loop !102

; <label>:3842                                    ; preds = %3839
  %3843 = fdiv fast float 1.000000e+00, %3834
  %3844 = fmul fast float %3843, %3836
  %3845 = fdiv fast float 1.000000e+00, %3716
  %3846 = fmul fast float %3844, %3845
  %3847 = call float @dx.op.unary.f32(i32 7, float %3846)  ; Saturate(value)
  %3848 = call float @dx.op.binary.f32(i32 35, float %3847, float 0.000000e+00)  ; FMax(a,b)
  %3849 = fmul fast float %3834, 3.125000e-02
  %3850 = call float @dx.op.unary.f32(i32 7, float %3849)  ; Saturate(value)
  %3851 = fmul fast float %3850, 2.000000e+00
  %3852 = fadd fast float %3851, -1.000000e+00
  %3853 = fcmp fast ogt float %3852, 0.000000e+00
  %3854 = fcmp fast olt float %3852, 0.000000e+00
  %3855 = zext i1 %3853 to i32
  %3856 = zext i1 %3854 to i32
  %3857 = sub nsw i32 %3855, %3856
  %3858 = sitofp i32 %3857 to float
  %3859 = fmul fast float %3858, %3852
  %3860 = fsub fast float 1.000000e+00, %3859
  %3861 = fmul fast float %3860, %3860
  %3862 = fmul fast float %3861, %3860
  %3863 = fsub fast float %3860, %3862
  %3864 = fmul fast float %3863, %3848
  %3865 = fsub fast float 1.000000e+00, %3862
  %3866 = fsub fast float %3865, %3864
  %3867 = fmul fast float %3858, 5.000000e-01
  %3868 = fmul fast float %3867, %3866
  %3869 = fsub fast float 5.000000e-01, %3868
  br label %3870

; <label>:3870                                    ; preds = %3842, %3718, %3703
  %3871 = phi float [ 1.000000e+00, %3703 ], [ %3784, %3718 ], [ %3869, %3842 ]
  %3872 = fsub fast float %3537, %3372
  %3873 = fmul fast float %3872, %2910
  %3874 = fadd fast float %3873, %3372
  %3875 = fsub fast float %3704, %3874
  %3876 = fmul fast float %3875, %2940
  %3877 = fadd fast float %3876, %3874
  %3878 = fsub fast float %3871, %3877
  %3879 = fmul fast float %3878, %2966
  %3880 = fadd fast float %3879, %3877
  %3881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3882 = extractvalue %dx.types.CBufRet.f32 %3881, 2
  %3883 = fcmp fast ogt float %3882, 0.000000e+00
  br i1 %3883, label %3884, label %3924, !dx.controlflow.hints !105

; <label>:3884                                    ; preds = %3870
  %3885 = fcmp fast ugt float %3882, 0.000000e+00
  br i1 %3885, label %3886, label %3921

; <label>:3886                                    ; preds = %3884
  %3887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3888 = extractvalue %dx.types.CBufRet.f32 %3887, 0
  %3889 = extractvalue %dx.types.CBufRet.f32 %3887, 1
  %3890 = extractvalue %dx.types.CBufRet.f32 %3887, 2
  %3891 = extractvalue %dx.types.CBufRet.f32 %3887, 3
  %3892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3893 = extractvalue %dx.types.CBufRet.f32 %3892, 0
  %3894 = extractvalue %dx.types.CBufRet.f32 %3892, 1
  %3895 = extractvalue %dx.types.CBufRet.f32 %3892, 2
  %3896 = extractvalue %dx.types.CBufRet.f32 %3892, 3
  %3897 = extractvalue %dx.types.CBufRet.f32 %3881, 0
  %3898 = extractvalue %dx.types.CBufRet.f32 %3881, 1
  %3899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3900 = extractvalue %dx.types.CBufRet.f32 %3899, 0
  %3901 = extractvalue %dx.types.CBufRet.f32 %3899, 1
  %3902 = extractvalue %dx.types.CBufRet.f32 %3899, 2
  %3903 = fadd fast float %3900, %2825
  %3904 = fadd fast float %3901, %2826
  %3905 = fadd fast float %3902, %2827
  %3906 = fmul fast float %3903, %3888
  %3907 = call float @dx.op.tertiary.f32(i32 46, float %3889, float %3904, float %3906)  ; FMad(a,b,c)
  %3908 = call float @dx.op.tertiary.f32(i32 46, float %3890, float %3905, float %3907)  ; FMad(a,b,c)
  %3909 = fadd fast float %3908, %3891
  %3910 = fmul fast float %3903, %3893
  %3911 = call float @dx.op.tertiary.f32(i32 46, float %3894, float %3904, float %3910)  ; FMad(a,b,c)
  %3912 = call float @dx.op.tertiary.f32(i32 46, float %3895, float %3905, float %3911)  ; FMad(a,b,c)
  %3913 = fadd fast float %3912, %3896
  %3914 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %35, float %3909, float %3913, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3915 = extractvalue %dx.types.ResRet.f32 %3914, 0
  %3916 = fmul fast float %3915, %3898
  %3917 = fadd fast float %3916, %3897
  %3918 = call float @dx.op.unary.f32(i32 7, float %3917)  ; Saturate(value)
  %3919 = fmul fast float %3918, %3882
  %3920 = fsub fast float 1.000000e+00, %3919
  br label %3921

; <label>:3921                                    ; preds = %3886, %3884
  %3922 = phi float [ %3920, %3886 ], [ 1.000000e+00, %3884 ]
  %3923 = fmul fast float %3922, %3880
  br label %3924

; <label>:3924                                    ; preds = %3921, %3870, %2805
  %3925 = phi float [ 1.000000e+00, %2805 ], [ %3923, %3921 ], [ %3880, %3870 ]
  %3926 = call float @dx.op.binary.f32(i32 36, float %3925, float %3925)  ; FMin(a,b)
  %3927 = call float @dx.op.binary.f32(i32 36, float %3925, float %3926)  ; FMin(a,b)
  %3928 = fcmp fast ogt float %3927, 0.000000e+00
  br i1 %3928, label %3929, label %4095, !dx.controlflow.hints !106

; <label>:3929                                    ; preds = %3924
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 0
  %3932 = extractvalue %dx.types.CBufRet.f32 %3930, 1
  %3933 = extractvalue %dx.types.CBufRet.f32 %3930, 2
  %3934 = extractvalue %dx.types.CBufRet.f32 %3930, 3
  %3935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3936 = extractvalue %dx.types.CBufRet.f32 %3935, 0
  %3937 = extractvalue %dx.types.CBufRet.f32 %3935, 1
  %3938 = extractvalue %dx.types.CBufRet.f32 %3935, 2
  %3939 = extractvalue %dx.types.CBufRet.f32 %3935, 3
  %3940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.f32 %3940, 0
  %3942 = extractvalue %dx.types.CBufRet.f32 %3940, 1
  %3943 = extractvalue %dx.types.CBufRet.f32 %3940, 2
  %3944 = extractvalue %dx.types.CBufRet.f32 %3940, 3
  %3945 = fmul fast float %3931, %2825
  %3946 = call float @dx.op.tertiary.f32(i32 46, float %2826, float %3932, float %3945)  ; FMad(a,b,c)
  %3947 = call float @dx.op.tertiary.f32(i32 46, float %2827, float %3933, float %3946)  ; FMad(a,b,c)
  %3948 = fadd fast float %3947, %3934
  %3949 = fmul fast float %3936, %2825
  %3950 = call float @dx.op.tertiary.f32(i32 46, float %2826, float %3937, float %3949)  ; FMad(a,b,c)
  %3951 = call float @dx.op.tertiary.f32(i32 46, float %2827, float %3938, float %3950)  ; FMad(a,b,c)
  %3952 = fadd fast float %3951, %3939
  %3953 = fmul fast float %3941, %2825
  %3954 = call float @dx.op.tertiary.f32(i32 46, float %2826, float %3942, float %3953)  ; FMad(a,b,c)
  %3955 = call float @dx.op.tertiary.f32(i32 46, float %2827, float %3943, float %3954)  ; FMad(a,b,c)
  %3956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3957 = extractvalue %dx.types.CBufRet.f32 %3956, 0
  %3958 = extractvalue %dx.types.CBufRet.f32 %3956, 1
  %3959 = extractvalue %dx.types.CBufRet.f32 %3956, 3
  %3960 = fmul fast float %3959, %3948
  %3961 = fmul fast float %3959, %3952
  %3962 = fadd fast float %3960, %3957
  %3963 = fadd fast float %3961, %3958
  %3964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3965 = extractvalue %dx.types.CBufRet.f32 %3964, 0
  %3966 = extractvalue %dx.types.CBufRet.f32 %3964, 1
  %3967 = fsub fast float %3962, %3965
  %3968 = fsub fast float %3963, %3966
  %3969 = fcmp fast olt float %3967, 0.000000e+00
  %3970 = fcmp fast olt float %3968, 0.000000e+00
  %3971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3972 = extractvalue %dx.types.CBufRet.f32 %3971, 0
  %3973 = extractvalue %dx.types.CBufRet.f32 %3971, 1
  %3974 = extractvalue %dx.types.CBufRet.f32 %3971, 2
  %3975 = extractvalue %dx.types.CBufRet.f32 %3971, 3
  %3976 = select i1 %3969, float %3972, float %3974
  %3977 = select i1 %3970, float %3973, float %3975
  %3978 = fmul fast float %3976, %3967
  %3979 = fmul fast float %3977, %3968
  %3980 = call float @dx.op.unary.f32(i32 6, float %3978)  ; FAbs(value)
  %3981 = call float @dx.op.unary.f32(i32 6, float %3979)  ; FAbs(value)
  %3982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3983 = extractvalue %dx.types.CBufRet.f32 %3982, 0
  %3984 = call float @dx.op.binary.f32(i32 35, float %3980, float %3981)  ; FMax(a,b)
  %3985 = fsub fast float %3983, %3984
  %3986 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3987 = fcmp fast ogt float %3986, 0.000000e+00
  br i1 %3987, label %3988, label %4029, !dx.controlflow.hints !107

; <label>:3988                                    ; preds = %3929
  %3989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %38, float %3962, float %3963, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3990 = extractvalue %dx.types.ResRet.f32 %3989, 1
  %3991 = fcmp fast ogt float %3990, 0.000000e+00
  br i1 %3991, label %3992, label %4024

; <label>:3992                                    ; preds = %3988
  %3993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %38, float %3962, float %3963, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3994 = extractvalue %dx.types.ResRet.f32 %3993, 0
  %3995 = extractvalue %dx.types.ResRet.f32 %3993, 1
  %3996 = extractvalue %dx.types.ResRet.f32 %3993, 2
  %3997 = extractvalue %dx.types.ResRet.f32 %3993, 3
  %3998 = fsub fast float 1.000000e+00, %3944
  %3999 = fsub fast float %3998, %3955
  %4000 = fmul fast float %3999, 0x400921FB60000000
  %4001 = fadd fast float %4000, 0x3FF921FB60000000
  %4002 = call float @dx.op.unary.f32(i32 13, float %4001)  ; Sin(value)
  %4003 = fadd fast float %4002, -1.000000e+00
  %4004 = fmul fast float %4003, 0x3FD45F3060000000
  %4005 = fmul fast float %3999, 0x401921FB60000000
  %4006 = fadd fast float %4005, 0x400921FB60000000
  %4007 = call float @dx.op.unary.f32(i32 13, float %4006)  ; Sin(value)
  %4008 = fadd fast float %4007, 0x3E7777A5C0000000
  %4009 = fmul fast float %4008, 0x3FC45F3060000000
  %4010 = fmul fast float %3999, 0x4022D97C80000000
  %4011 = fadd fast float %4010, 0x4012D97C80000000
  %4012 = call float @dx.op.unary.f32(i32 13, float %4011)  ; Sin(value)
  %4013 = fadd fast float %4012, 1.000000e+00
  %4014 = fmul fast float %4013, 0x3FBB2995E0000000
  %4015 = fmul fast float %3999, 0x402921FB60000000
  %4016 = fadd fast float %4015, 0x401921FB60000000
  %4017 = call float @dx.op.unary.f32(i32 13, float %4016)  ; Sin(value)
  %4018 = fadd fast float %4017, 0xBE8777A5C0000000
  %4019 = fmul fast float %4018, 0x3FB45F3060000000
  %4020 = call float @dx.op.dot4.f32(i32 56, float %3994, float %3995, float %3996, float %3997, float %4004, float %4009, float %4014, float %4019)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4021 = fmul fast float %4020, 0xBFF7154760000000
  %4022 = call float @dx.op.unary.f32(i32 21, float %4021)  ; Exp(value)
  %4023 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  br label %4024

; <label>:4024                                    ; preds = %3992, %3988
  %4025 = phi float [ %4023, %3992 ], [ 1.000000e+00, %3988 ]
  %4026 = fadd fast float %4025, -1.000000e+00
  %4027 = fmul fast float %4026, %3986
  %4028 = fadd fast float %4027, 1.000000e+00
  br label %4029

; <label>:4029                                    ; preds = %4024, %3929
  %4030 = phi float [ %4028, %4024 ], [ 1.000000e+00, %3929 ]
  %4031 = fmul fast float %4030, %3925
  %4032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4033 = extractvalue %dx.types.CBufRet.f32 %4032, 0
  %4034 = extractvalue %dx.types.CBufRet.f32 %4032, 1
  %4035 = extractvalue %dx.types.CBufRet.f32 %4032, 2
  %4036 = fadd fast float %4033, %130
  %4037 = fadd fast float %4034, %131
  %4038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4039 = extractvalue %dx.types.CBufRet.f32 %4038, 1
  %4040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.f32 %4040, 0
  %4042 = extractvalue %dx.types.CBufRet.f32 %4040, 1
  %4043 = extractvalue %dx.types.CBufRet.f32 %4040, 2
  %4044 = fsub fast float -0.000000e+00, %4036
  %4045 = fsub fast float -0.000000e+00, %4037
  %4046 = fsub fast float -0.000000e+00, %132
  %4047 = fsub fast float %4046, %4035
  %4048 = fadd fast float %4047, %4039
  %4049 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4044, float %4045, float %4048)  ; Dot3(ax,ay,az,bx,by,bz)
  %4050 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4041, float %4042, float %4043)  ; Dot3(ax,ay,az,bx,by,bz)
  %4051 = fdiv fast float 1.000000e+00, %4050
  %4052 = fmul fast float %4051, %4049
  %4053 = fmul fast float %4041, %4052
  %4054 = fmul fast float %4042, %4052
  %4055 = fadd fast float %4053, %4036
  %4056 = fadd fast float %4054, %4037
  %4057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4058 = extractvalue %dx.types.CBufRet.f32 %4057, 0
  %4059 = extractvalue %dx.types.CBufRet.f32 %4057, 1
  %4060 = fsub fast float %4055, %4058
  %4061 = fsub fast float %4056, %4059
  %4062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4063 = extractvalue %dx.types.CBufRet.f32 %4062, 2
  %4064 = extractvalue %dx.types.CBufRet.f32 %4062, 3
  %4065 = fmul fast float %4060, %4063
  %4066 = fmul fast float %4061, %4064
  %4067 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4068 = extractvalue %dx.types.CBufRet.i32 %4067, 3
  %4069 = icmp eq i32 %4068, 0
  br i1 %4069, label %4075, label %4070

; <label>:4070                                    ; preds = %4029
  %4071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %37, float %4065, float %4066, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4072 = extractvalue %dx.types.ResRet.f32 %4071, 0
  %4073 = extractvalue %dx.types.ResRet.f32 %4071, 1
  %4074 = extractvalue %dx.types.ResRet.f32 %4071, 2
  br label %4080

; <label>:4075                                    ; preds = %4029
  %4076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %4065, float %4066, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4077 = extractvalue %dx.types.ResRet.f32 %4076, 0
  %4078 = extractvalue %dx.types.ResRet.f32 %4076, 1
  %4079 = extractvalue %dx.types.ResRet.f32 %4076, 2
  br label %4080

; <label>:4080                                    ; preds = %4075, %4070
  %4081 = phi float [ %4072, %4070 ], [ %4077, %4075 ]
  %4082 = phi float [ %4073, %4070 ], [ %4078, %4075 ]
  %4083 = phi float [ %4074, %4070 ], [ %4079, %4075 ]
  %4084 = extractvalue %dx.types.CBufRet.f32 %4038, 2
  %4085 = fmul fast float %4084, %4081
  %4086 = extractvalue %dx.types.CBufRet.f32 %4038, 0
  %4087 = fsub fast float %4052, %4086
  %4088 = fsub fast float %4087, %4085
  %4089 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4088)  ; FMax(a,b)
  %4090 = fmul fast float %4089, %4082
  %4091 = call float @dx.op.binary.f32(i32 36, float %4083, float %4090)  ; FMin(a,b)
  %4092 = fmul fast float %4091, 0xBFF7154760000000
  %4093 = call float @dx.op.unary.f32(i32 21, float %4092)  ; Exp(value)
  %4094 = fmul fast float %4031, %4093
  br label %4095

; <label>:4095                                    ; preds = %4080, %3924
  %4096 = phi float [ %4094, %4080 ], [ %3925, %3924 ]
  %4097 = call float @dx.op.binary.f32(i32 36, float %4096, float %4096)  ; FMin(a,b)
  %4098 = call float @dx.op.binary.f32(i32 36, float %4096, float %4097)  ; FMin(a,b)
  %4099 = fcmp fast ogt float %4098, 0.000000e+00
  br i1 %4099, label %4100, label %4408, !dx.controlflow.hints !108

; <label>:4100                                    ; preds = %4095
  %4101 = bitcast i32 %1927 to float
  %4102 = fmul fast float %4096, %2817
  %4103 = fmul fast float %4096, %2818
  %4104 = fmul fast float %4096, %2819
  %4105 = fsub fast float %2806, %149
  %4106 = fsub fast float %2807, %150
  %4107 = fsub fast float %2808, %151
  %4108 = call float @dx.op.dot3.f32(i32 55, float %4105, float %4106, float %4107, float %4105, float %4106, float %4107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4109 = call float @dx.op.unary.f32(i32 25, float %4108)  ; Rsqrt(value)
  %4110 = fmul fast float %4109, %4105
  %4111 = fmul fast float %4109, %4106
  %4112 = fmul fast float %4109, %4107
  %4113 = call float @dx.op.dot3.f32(i32 55, float %2806, float %2807, float %2808, float %1890, float %1891, float %1892)  ; Dot3(ax,ay,az,bx,by,bz)
  %4114 = call float @dx.op.dot3.f32(i32 55, float %1724, float %1725, float %1726, float %4110, float %4111, float %4112)  ; Dot3(ax,ay,az,bx,by,bz)
  %4115 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4116 = fmul fast float %4115, %4115
  %4117 = fmul fast float %4116, %4101
  %4118 = call float @dx.op.unary.f32(i32 7, float %4117)  ; Saturate(value)
  %4119 = fmul fast float %4118, %4115
  %4120 = call float @dx.op.dot3.f32(i32 55, float %1890, float %1891, float %1892, float %4110, float %4111, float %4112)  ; Dot3(ax,ay,az,bx,by,bz)
  %4121 = fmul fast float %4120, %4120
  %4122 = call float @dx.op.unary.f32(i32 6, float %4113)  ; FAbs(value)
  %4123 = fsub fast float 1.000000e+00, %1921
  %4124 = fmul fast float %1903, %1903
  %4125 = fmul fast float %4124, %4123
  %4126 = fadd fast float %4125, %1921
  %4127 = bitcast float %4126 to i32
  %4128 = ashr i32 %4127, 1
  %4129 = add nsw i32 %4128, 532487669
  %4130 = bitcast i32 %4129 to float
  %4131 = fadd fast float %4130, %1903
  %4132 = fmul fast float %1921, %4121
  %4133 = fsub fast float 1.000000e+00, %4121
  %4134 = fadd fast float %4133, %4132
  %4135 = fmul fast float %4122, %4122
  %4136 = fmul fast float %4135, %4123
  %4137 = fadd fast float %4136, %1921
  %4138 = bitcast float %4137 to i32
  %4139 = ashr i32 %4138, 1
  %4140 = add nsw i32 %4139, 532487669
  %4141 = bitcast i32 %4140 to float
  %4142 = fadd fast float %4141, %4122
  %4143 = fmul fast float %4134, %4134
  %4144 = fmul fast float %4143, %4131
  %4145 = fmul fast float %4144, %4142
  %4146 = fdiv fast float 0x3FF0A00000000000, %4145
  %4147 = fmul fast float %4146, %1921
  %4148 = fmul fast float %2173, 0x3FF9999980000000
  %4149 = fsub fast float 5.000000e+00, %4148
  %4150 = call float @dx.op.unary.f32(i32 6, float %4114)  ; FAbs(value)
  %4151 = fsub fast float 1.000000e+00, %4150
  %4152 = fmul fast float %2173, 0x41D9660740000000
  %4153 = fadd fast float %4152, 0xC1EFBF8940000000
  %4154 = bitcast float %4151 to i32
  %4155 = sitofp i32 %4154 to float
  %4156 = fmul fast float %4155, %4149
  %4157 = fadd fast float %4153, %4156
  %4158 = fptosi float %4157 to i32
  %4159 = bitcast i32 %4158 to float
  %4160 = fsub fast float 1.000000e+00, %1893
  %4161 = fsub fast float 1.000000e+00, %1894
  %4162 = fsub fast float 1.000000e+00, %1901
  %4163 = fmul fast float %4159, %4160
  %4164 = fmul fast float %4159, %4161
  %4165 = fmul fast float %4159, %4162
  %4166 = fadd fast float %4163, %1893
  %4167 = fadd fast float %4164, %1894
  %4168 = fadd fast float %4165, %1901
  br i1 %2196, label %4169, label %4192

; <label>:4169                                    ; preds = %4100
  %4170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %38, float %1523, float %4150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4171 = extractvalue %dx.types.ResRet.f32 %4170, 0
  %4172 = extractvalue %dx.types.ResRet.f32 %4170, 1
  %4173 = extractvalue %dx.types.ResRet.f32 %4170, 2
  %4174 = fadd fast float %4171, -5.000000e-01
  %4175 = fadd fast float %4172, -5.000000e-01
  %4176 = fadd fast float %4173, -5.000000e-01
  %4177 = fmul fast float %1893, 4.000000e+00
  %4178 = fmul fast float %4177, %4160
  %4179 = fmul fast float %4178, %4174
  %4180 = fmul fast float %1894, 4.000000e+00
  %4181 = fmul fast float %4180, %4161
  %4182 = fmul fast float %4181, %4175
  %4183 = fmul fast float %1901, 4.000000e+00
  %4184 = fmul fast float %4183, %4162
  %4185 = fmul fast float %4184, %4176
  %4186 = fadd fast float %4179, %4166
  %4187 = fadd fast float %4182, %4167
  %4188 = fadd fast float %4185, %4168
  %4189 = call float @dx.op.unary.f32(i32 7, float %4186)  ; Saturate(value)
  %4190 = call float @dx.op.unary.f32(i32 7, float %4187)  ; Saturate(value)
  %4191 = call float @dx.op.unary.f32(i32 7, float %4188)  ; Saturate(value)
  br label %4192

; <label>:4192                                    ; preds = %4169, %4100
  %4193 = phi float [ %4189, %4169 ], [ %4166, %4100 ]
  %4194 = phi float [ %4190, %4169 ], [ %4167, %4100 ]
  %4195 = phi float [ %4191, %4169 ], [ %4168, %4100 ]
  %4196 = fmul fast float %4113, 9.843750e-01
  %4197 = fadd fast float %4196, 7.812500e-03
  %4198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %38, float %4197, float %2177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4199 = extractvalue %dx.types.ResRet.f32 %4198, 0
  %4200 = extractvalue %dx.types.ResRet.f32 %4198, 1
  %4201 = extractvalue %dx.types.ResRet.f32 %4198, 2
  %4202 = extractvalue %dx.types.ResRet.f32 %4198, 3
  %4203 = fsub fast float %4201, %4199
  %4204 = fsub fast float %4202, %4200
  %4205 = fmul fast float %4203, %2183
  %4206 = fmul fast float %4204, %2183
  %4207 = fadd fast float %4205, %4199
  %4208 = fadd fast float %4206, %4200
  %4209 = fmul fast float %4207, %1893
  %4210 = fmul fast float %4207, %1894
  %4211 = fmul fast float %4207, %1901
  %4212 = fadd fast float %4209, %4208
  %4213 = fadd fast float %4210, %4208
  %4214 = fadd fast float %4211, %4208
  br i1 %2196, label %4215, label %4238

; <label>:4215                                    ; preds = %4192
  %4216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %38, float %1523, float %4113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4217 = extractvalue %dx.types.ResRet.f32 %4216, 0
  %4218 = extractvalue %dx.types.ResRet.f32 %4216, 1
  %4219 = extractvalue %dx.types.ResRet.f32 %4216, 2
  %4220 = fadd fast float %4217, -5.000000e-01
  %4221 = fadd fast float %4218, -5.000000e-01
  %4222 = fadd fast float %4219, -5.000000e-01
  %4223 = fmul fast float %1893, 4.000000e+00
  %4224 = fmul fast float %4223, %4160
  %4225 = fmul fast float %4224, %4220
  %4226 = fmul fast float %1894, 4.000000e+00
  %4227 = fmul fast float %4226, %4161
  %4228 = fmul fast float %4227, %4221
  %4229 = fmul fast float %1901, 4.000000e+00
  %4230 = fmul fast float %4229, %4162
  %4231 = fmul fast float %4230, %4222
  %4232 = fadd fast float %4225, %4212
  %4233 = fadd fast float %4228, %4213
  %4234 = fadd fast float %4231, %4214
  %4235 = call float @dx.op.unary.f32(i32 7, float %4232)  ; Saturate(value)
  %4236 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4237 = call float @dx.op.unary.f32(i32 7, float %4234)  ; Saturate(value)
  br label %4238

; <label>:4238                                    ; preds = %4215, %4192
  %4239 = phi float [ %4235, %4215 ], [ %4212, %4192 ]
  %4240 = phi float [ %4236, %4215 ], [ %4213, %4192 ]
  %4241 = phi float [ %4237, %4215 ], [ %4214, %4192 ]
  %4242 = call float @dx.op.binary.f32(i32 35, float %4240, float %4241)  ; FMax(a,b)
  %4243 = call float @dx.op.binary.f32(i32 35, float %4239, float %4242)  ; FMax(a,b)
  %4244 = fsub fast float 1.000000e+00, %4243
  %4245 = call float @dx.op.binary.f32(i32 35, float %4122, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4246 = fdiv fast float %923, %4245
  %4247 = fmul fast float %2715, %4246
  %4248 = fmul fast float %2717, %4246
  %4249 = fmul fast float %2719, %4246
  %4250 = call float @dx.op.unary.f32(i32 21, float %4247)  ; Exp(value)
  %4251 = call float @dx.op.unary.f32(i32 21, float %4248)  ; Exp(value)
  %4252 = call float @dx.op.unary.f32(i32 21, float %4249)  ; Exp(value)
  %4253 = call float @dx.op.unary.f32(i32 7, float %4250)  ; Saturate(value)
  %4254 = call float @dx.op.unary.f32(i32 7, float %4251)  ; Saturate(value)
  %4255 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4256 = select i1 %2712, float %4253, float 0.000000e+00
  %4257 = select i1 %2713, float %4254, float 0.000000e+00
  %4258 = select i1 %2714, float %4255, float 0.000000e+00
  %4259 = fsub fast float -0.000000e+00, %1890
  %4260 = fsub fast float -0.000000e+00, %1891
  %4261 = fsub fast float -0.000000e+00, %1892
  %4262 = call float @dx.op.dot3.f32(i32 55, float %2806, float %2807, float %2808, float %4259, float %4260, float %4261)  ; Dot3(ax,ay,az,bx,by,bz)
  %4263 = call float @dx.op.unary.f32(i32 7, float %4262)  ; Saturate(value)
  %4264 = fmul fast float %4263, 9.843750e-01
  %4265 = fadd fast float %4264, 7.812500e-03
  %4266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %38, float %4265, float %2177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4267 = extractvalue %dx.types.ResRet.f32 %4266, 0
  %4268 = extractvalue %dx.types.ResRet.f32 %4266, 1
  %4269 = extractvalue %dx.types.ResRet.f32 %4266, 2
  %4270 = extractvalue %dx.types.ResRet.f32 %4266, 3
  %4271 = fsub fast float %4269, %4267
  %4272 = fsub fast float %4270, %4268
  %4273 = fmul fast float %4271, %2183
  %4274 = fmul fast float %4272, %2183
  %4275 = fadd fast float %4273, %4267
  %4276 = fadd fast float %4274, %4268
  %4277 = fmul fast float %4275, %1893
  %4278 = fmul fast float %4275, %1894
  %4279 = fmul fast float %4275, %1901
  %4280 = fadd fast float %4277, %4276
  %4281 = fadd fast float %4278, %4276
  %4282 = fadd fast float %4279, %4276
  br i1 %2196, label %4283, label %4306

; <label>:4283                                    ; preds = %4238
  %4284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %38, float %1523, float %4263, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4285 = extractvalue %dx.types.ResRet.f32 %4284, 0
  %4286 = extractvalue %dx.types.ResRet.f32 %4284, 1
  %4287 = extractvalue %dx.types.ResRet.f32 %4284, 2
  %4288 = fadd fast float %4285, -5.000000e-01
  %4289 = fadd fast float %4286, -5.000000e-01
  %4290 = fadd fast float %4287, -5.000000e-01
  %4291 = fmul fast float %1893, 4.000000e+00
  %4292 = fmul fast float %4291, %4160
  %4293 = fmul fast float %4292, %4288
  %4294 = fmul fast float %1894, 4.000000e+00
  %4295 = fmul fast float %4294, %4161
  %4296 = fmul fast float %4295, %4289
  %4297 = fmul fast float %1901, 4.000000e+00
  %4298 = fmul fast float %4297, %4162
  %4299 = fmul fast float %4298, %4290
  %4300 = fadd fast float %4293, %4280
  %4301 = fadd fast float %4296, %4281
  %4302 = fadd fast float %4299, %4282
  %4303 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4304 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4305 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  br label %4306

; <label>:4306                                    ; preds = %4283, %4238
  %4307 = phi float [ %4303, %4283 ], [ %4280, %4238 ]
  %4308 = phi float [ %4304, %4283 ], [ %4281, %4238 ]
  %4309 = phi float [ %4305, %4283 ], [ %4282, %4238 ]
  %4310 = call float @dx.op.binary.f32(i32 35, float %4308, float %4309)  ; FMax(a,b)
  %4311 = call float @dx.op.binary.f32(i32 35, float %4307, float %4310)  ; FMax(a,b)
  %4312 = fsub fast float 1.000000e+00, %4311
  %4313 = fmul fast float %1918, %2779
  %4314 = fadd fast float %2781, %4313
  %4315 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4316 = fsub fast float %2806, %1909
  %4317 = fsub fast float %2807, %1910
  %4318 = fsub fast float %2808, %1911
  %4319 = call float @dx.op.dot3.f32(i32 55, float %4316, float %4317, float %4318, float %4316, float %4317, float %4318)  ; Dot3(ax,ay,az,bx,by,bz)
  %4320 = call float @dx.op.unary.f32(i32 25, float %4319)  ; Rsqrt(value)
  %4321 = fmul fast float %4320, %4316
  %4322 = fmul fast float %4320, %4317
  %4323 = fmul fast float %4320, %4318
  %4324 = call float @dx.op.dot3.f32(i32 55, float %4259, float %4260, float %4261, float %4321, float %4322, float %4323)  ; Dot3(ax,ay,az,bx,by,bz)
  %4325 = fmul fast float %4324, %4324
  %4326 = call float @dx.op.unary.f32(i32 6, float %4263)  ; FAbs(value)
  %4327 = call float @dx.op.binary.f32(i32 35, float %4315, float 0x3F847AE140000000)  ; FMax(a,b)
  %4328 = fmul fast float %4327, %4327
  %4329 = fmul fast float %4328, %4328
  %4330 = fsub fast float 1.000000e+00, %4329
  %4331 = fmul fast float %4124, %4330
  %4332 = fadd fast float %4331, %4329
  %4333 = bitcast float %4332 to i32
  %4334 = ashr i32 %4333, 1
  %4335 = add nsw i32 %4334, 532487669
  %4336 = bitcast i32 %4335 to float
  %4337 = fadd fast float %4336, %1903
  %4338 = fmul fast float %4329, %4325
  %4339 = fsub fast float 1.000000e+00, %4325
  %4340 = fadd fast float %4339, %4338
  %4341 = fmul fast float %4326, %4326
  %4342 = fmul fast float %4341, %4330
  %4343 = fadd fast float %4342, %4329
  %4344 = bitcast float %4343 to i32
  %4345 = ashr i32 %4344, 1
  %4346 = add nsw i32 %4345, 532487669
  %4347 = bitcast i32 %4346 to float
  %4348 = fadd fast float %4347, %4326
  %4349 = fmul fast float %4340, %4340
  %4350 = fmul fast float %4349, %4337
  %4351 = fmul fast float %4350, %4348
  %4352 = fdiv fast float 0x3FF0A00000000000, %4351
  %4353 = fmul fast float %4352, %4329
  %4354 = fmul fast float %4263, %4256
  %4355 = fmul fast float %4263, %4257
  %4356 = fmul fast float %4263, %4258
  %4357 = fmul fast float %4354, %4312
  %4358 = fmul fast float %4357, %4353
  %4359 = fmul fast float %4355, %4312
  %4360 = fmul fast float %4359, %4353
  %4361 = fmul fast float %4356, %4312
  %4362 = fmul fast float %4361, %4353
  %4363 = fmul fast float %4193, %4147
  %4364 = fmul fast float %4194, %4147
  %4365 = fmul fast float %4195, %4147
  %4366 = fsub fast float 1.000000e+00, %4114
  %4367 = bitcast float %4366 to i32
  %4368 = sitofp i32 %4367 to float
  %4369 = fmul fast float %4368, 5.000000e+00
  %4370 = fadd fast float %4369, 0xC1EFBF8940000000
  %4371 = fptosi float %4370 to i32
  %4372 = bitcast i32 %4371 to float
  %4373 = fmul fast float %4372, %1522
  %4374 = fmul fast float %4244, %4373
  %4375 = fmul fast float %4374, %2707
  %4376 = fmul fast float %4374, %2708
  %4377 = fmul fast float %4374, %2709
  %4378 = fadd fast float %4375, %4363
  %4379 = fadd fast float %4376, %4364
  %4380 = fadd fast float %4377, %4365
  %4381 = fmul fast float %4378, %4119
  %4382 = fmul fast float %4379, %4119
  %4383 = fmul fast float %4380, %4119
  %4384 = fmul fast float %4119, %4102
  %4385 = fmul fast float %4384, %4244
  %4386 = fmul fast float %4119, %4103
  %4387 = fmul fast float %4386, %4244
  %4388 = fmul fast float %4119, %4104
  %4389 = fmul fast float %4388, %4244
  %4390 = fadd fast float %4381, %4358
  %4391 = fadd fast float %4382, %4360
  %4392 = fadd fast float %4383, %4362
  %4393 = fmul fast float %4390, %4102
  %4394 = fmul fast float %4391, %4103
  %4395 = fmul fast float %4392, %4104
  %4396 = fadd fast float %4385, %2796
  %4397 = fmul fast float %4396, %1572
  %4398 = fadd fast float %4387, %2798
  %4399 = fmul fast float %4398, %1572
  %4400 = fadd fast float %4389, %2800
  %4401 = fmul fast float %4400, %1572
  %4402 = fadd fast float %4393, %2760
  %4403 = fmul fast float %4402, %1572
  %4404 = fadd fast float %4394, %2763
  %4405 = fmul fast float %4404, %1572
  %4406 = fadd fast float %4395, %2766
  %4407 = fmul fast float %4406, %1572
  br label %4408

; <label>:4408                                    ; preds = %4306, %4095, %2690
  %4409 = phi float [ %2761, %2690 ], [ %2761, %4095 ], [ %4403, %4306 ]
  %4410 = phi float [ %2764, %2690 ], [ %2764, %4095 ], [ %4405, %4306 ]
  %4411 = phi float [ %2767, %2690 ], [ %2767, %4095 ], [ %4407, %4306 ]
  %4412 = phi float [ %2797, %2690 ], [ %2797, %4095 ], [ %4397, %4306 ]
  %4413 = phi float [ %2799, %2690 ], [ %2799, %4095 ], [ %4399, %4306 ]
  %4414 = phi float [ %2801, %2690 ], [ %2801, %4095 ], [ %4401, %4306 ]
  %4415 = fmul fast float %2736, %1572
  %4416 = fmul fast float %2737, %1572
  %4417 = fmul fast float %2738, %1572
  %4418 = fadd fast float %4415, 1.000000e+00
  %4419 = fadd fast float %4416, 1.000000e+00
  %4420 = fadd fast float %4417, 1.000000e+00
  %4421 = call float @dx.op.dot3.f32(i32 55, float %4418, float %4419, float %4420, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4422 = fsub fast float 1.000000e+00, %4421
  %4423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4424 = extractvalue %dx.types.CBufRet.f32 %4423, 0
  %4425 = fmul fast float %4424, %2742
  %4426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4427 = extractvalue %dx.types.CBufRet.f32 %4426, 3
  %4428 = fsub fast float 1.000000e+00, %1518
  %4429 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4430 = fadd fast float %4414, %1517
  %4431 = fmul fast float %4430, %1518
  %4432 = fmul fast float %4429, %4427
  %4433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %4434 = extractvalue %dx.types.ResRet.i32 %4433, 3
  %4435 = bitcast i32 %4434 to float
  %4436 = fsub fast float %4422, %4435
  %4437 = fmul fast float %4436, %163
  %4438 = fadd fast float %4437, %4435
  %4439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %4440 = extractvalue %dx.types.CBufRet.f32 %4439, 3
  %4441 = fmul fast float %4412, %1896
  %4442 = fmul fast float %4413, %1897
  %4443 = fmul fast float %4414, %1898
  %4444 = fcmp fast ogt float %70, %183
  %4445 = and i1 %4444, %1640
  %4446 = or i1 %1719, %4445
  %4447 = icmp eq i32 %1639, 2
  %4448 = fcmp fast ole float %70, %183
  %4449 = and i1 %4448, %4447
  %4450 = or i1 %4449, %4446
  br i1 %4445, label %4451, label %4710

; <label>:4451                                    ; preds = %4408
  %4452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.f32 %4452, 2
  %4454 = extractvalue %dx.types.CBufRet.f32 %4452, 3
  %4455 = fmul fast float %4453, %82
  %4456 = fmul fast float %4454, %83
  %4457 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4458 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4459 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %4457, float %4458, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4460 = extractvalue %dx.types.ResRet.f32 %4459, 0
  %4461 = extractvalue %dx.types.ResRet.f32 %4459, 1
  %4462 = extractvalue %dx.types.ResRet.f32 %4459, 2
  %4463 = extractvalue %dx.types.ResRet.f32 %4459, 3
  %4464 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %4457, float %4458, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4465 = extractvalue %dx.types.ResRet.f32 %4464, 0
  %4466 = extractvalue %dx.types.ResRet.f32 %4464, 1
  %4467 = extractvalue %dx.types.ResRet.f32 %4464, 2
  %4468 = extractvalue %dx.types.ResRet.f32 %4464, 3
  %4469 = call float @dx.op.binary.f32(i32 35, float %4461, float %4462)  ; FMax(a,b)
  %4470 = call float @dx.op.binary.f32(i32 35, float %4460, float %4469)  ; FMax(a,b)
  %4471 = call float @dx.op.binary.f32(i32 35, float %4470, float %4463)  ; FMax(a,b)
  %4472 = call float @dx.op.binary.f32(i32 36, float %4466, float %4467)  ; FMin(a,b)
  %4473 = call float @dx.op.binary.f32(i32 36, float %4465, float %4472)  ; FMin(a,b)
  %4474 = call float @dx.op.binary.f32(i32 36, float %4473, float %4468)  ; FMin(a,b)
  %4475 = fmul fast float %4471, 2.550000e+02
  %4476 = fadd fast float %4475, 0x3F70101020000000
  %4477 = fptoui float %4476 to i32
  %4478 = fmul fast float %4474, 2.550000e+02
  %4479 = fadd fast float %4478, 0x3F70101020000000
  %4480 = fptoui float %4479 to i32
  %4481 = icmp ult i32 %4477, %4480
  br i1 %4481, label %4482, label %4650

; <label>:4482                                    ; preds = %4451
  %4483 = fcmp fast ogt float %69, 9.843750e-01
  %4484 = fadd fast float %70, -4.000000e+00
  %4485 = select i1 %4483, float -4.000000e+00, float %4484
  %4486 = call float @dx.op.binary.f32(i32 35, float %4485, float 0.000000e+00)  ; FMax(a,b)
  %4487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.f32 %4487, 0
  %4489 = fadd fast float %4488, %4486
  %4490 = extractvalue %dx.types.CBufRet.f32 %4487, 2
  %4491 = fmul fast float %4489, %4490
  %4492 = call float @dx.op.unary.f32(i32 23, float %4491)  ; Log(value)
  %4493 = extractvalue %dx.types.CBufRet.f32 %4487, 3
  %4494 = fmul fast float %4493, %4492
  %4495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4496 = extractvalue %dx.types.CBufRet.f32 %4495, 2
  %4497 = fmul fast float %4494, %4496
  %4498 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4499 = uitofp i32 %4477 to float
  %4500 = uitofp i32 %4480 to float
  %4501 = fadd fast float %4499, 5.000000e-01
  %4502 = fadd fast float %4500, 5.000000e-01
  %4503 = fmul fast float %4496, %4501
  %4504 = fmul fast float %4496, %4502
  %4505 = fadd fast float %4503, 0x3F0FFB4800000000
  %4506 = fadd fast float %4504, 0xBF0FFB4800000000
  %4507 = call float @dx.op.binary.f32(i32 35, float %4498, float %4505)  ; FMax(a,b)
  %4508 = call float @dx.op.binary.f32(i32 36, float %4507, float %4506)  ; FMin(a,b)
  %4509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4510 = extractvalue %dx.types.CBufRet.f32 %4509, 1
  %4511 = extractvalue %dx.types.CBufRet.f32 %4509, 2
  %4512 = extractvalue %dx.types.CBufRet.f32 %4509, 0
  %4513 = fmul fast float %4510, %4508
  %4514 = fadd fast float %4512, %4513
  %4515 = fadd fast float %4512, %4511
  %4516 = fsub fast float %4510, %4511
  %4517 = fadd fast float %4516, %4512
  %4518 = call float @dx.op.binary.f32(i32 35, float %4514, float %4515)  ; FMax(a,b)
  %4519 = call float @dx.op.binary.f32(i32 36, float %4518, float %4517)  ; FMin(a,b)
  %4520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %36, float %4457, float %4458, float %4519, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4521 = extractvalue %dx.types.ResRet.f32 %4520, 0
  %4522 = extractvalue %dx.types.ResRet.f32 %4520, 1
  %4523 = extractvalue %dx.types.ResRet.f32 %4520, 2
  %4524 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4525 = extractvalue %dx.types.CBufRet.i32 %4524, 0
  %4526 = extractvalue %dx.types.CBufRet.i32 %4524, 1
  %4527 = uitofp i32 %4525 to float
  %4528 = uitofp i32 %4526 to float
  %4529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4530 = extractvalue %dx.types.CBufRet.f32 %4529, 0
  %4531 = extractvalue %dx.types.CBufRet.f32 %4529, 1
  %4532 = fmul fast float %4527, %4457
  %4533 = fmul fast float %4528, %4458
  %4534 = fadd fast float %4532, -5.000000e-01
  %4535 = fadd fast float %4533, -5.000000e-01
  %4536 = call float @dx.op.unary.f32(i32 22, float %4534)  ; Frc(value)
  %4537 = call float @dx.op.unary.f32(i32 22, float %4535)  ; Frc(value)
  %4538 = fmul fast float %4536, %4536
  %4539 = fmul fast float %4538, %4536
  %4540 = fsub fast float 3.000000e+00, %4536
  %4541 = fmul fast float %4538, %4540
  %4542 = fmul fast float %4536, 3.000000e+00
  %4543 = fmul fast float %4539, 3.000000e+00
  %4544 = fmul fast float %4538, 6.000000e+00
  %4545 = fsub fast float %4543, %4544
  %4546 = fadd fast float %4545, 4.000000e+00
  %4547 = fmul fast float %4546, 0x3FC5555560000000
  %4548 = fmul fast float %4539, -3.000000e+00
  %4549 = fadd fast float %4538, %4536
  %4550 = fmul fast float %4549, 3.000000e+00
  %4551 = fadd fast float %4548, 1.000000e+00
  %4552 = fadd fast float %4551, %4550
  %4553 = fmul fast float %4539, 0x3FC5555560000000
  %4554 = fmul fast float %4537, %4537
  %4555 = fmul fast float %4554, %4537
  %4556 = fsub fast float 3.000000e+00, %4537
  %4557 = fmul fast float %4554, %4556
  %4558 = fmul fast float %4537, 3.000000e+00
  %4559 = fmul fast float %4555, 3.000000e+00
  %4560 = fmul fast float %4554, 6.000000e+00
  %4561 = fsub fast float %4559, %4560
  %4562 = fadd fast float %4561, 4.000000e+00
  %4563 = fmul fast float %4562, 0x3FC5555560000000
  %4564 = fmul fast float %4555, -3.000000e+00
  %4565 = fadd fast float %4554, %4537
  %4566 = fmul fast float %4565, 3.000000e+00
  %4567 = fadd fast float %4564, 1.000000e+00
  %4568 = fadd fast float %4567, %4566
  %4569 = fmul fast float %4555, 0x3FC5555560000000
  %4570 = fadd fast float %4536, 1.000000e+00
  %4571 = fsub fast float 1.000000e+00, %4542
  %4572 = fadd fast float %4571, %4541
  %4573 = fadd fast float %4572, %4546
  %4574 = fmul fast float %4573, 0x3FC5555560000000
  %4575 = fdiv fast float %4547, %4574
  %4576 = fsub fast float %4570, %4575
  %4577 = fsub fast float 1.000000e+00, %4536
  %4578 = fadd fast float %4552, %4539
  %4579 = fmul fast float %4578, 0x3FC5555560000000
  %4580 = fdiv fast float %4553, %4579
  %4581 = fadd fast float %4577, %4580
  %4582 = fadd fast float %4537, 1.000000e+00
  %4583 = fsub fast float 1.000000e+00, %4558
  %4584 = fadd fast float %4583, %4557
  %4585 = fadd fast float %4584, %4562
  %4586 = fmul fast float %4585, 0x3FC5555560000000
  %4587 = fdiv fast float %4563, %4586
  %4588 = fsub fast float %4582, %4587
  %4589 = fsub fast float 1.000000e+00, %4537
  %4590 = fadd fast float %4568, %4555
  %4591 = fmul fast float %4590, 0x3FC5555560000000
  %4592 = fdiv fast float %4569, %4591
  %4593 = fadd fast float %4592, %4589
  %4594 = fmul fast float %4576, %4530
  %4595 = fsub fast float %4457, %4594
  %4596 = fmul fast float %4581, %4530
  %4597 = fadd fast float %4596, %4457
  %4598 = fmul fast float %4593, %4531
  %4599 = fadd fast float %4598, %4458
  %4600 = fmul fast float %4588, %4531
  %4601 = fsub fast float %4458, %4600
  %4602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %4595, float %4601, float %4519, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4603 = extractvalue %dx.types.ResRet.f32 %4602, 0
  %4604 = extractvalue %dx.types.ResRet.f32 %4602, 1
  %4605 = extractvalue %dx.types.ResRet.f32 %4602, 2
  %4606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %4597, float %4601, float %4519, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.ResRet.f32 %4606, 1
  %4609 = extractvalue %dx.types.ResRet.f32 %4606, 2
  %4610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %4595, float %4599, float %4519, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4611 = extractvalue %dx.types.ResRet.f32 %4610, 0
  %4612 = extractvalue %dx.types.ResRet.f32 %4610, 1
  %4613 = extractvalue %dx.types.ResRet.f32 %4610, 2
  %4614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %4597, float %4599, float %4519, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4615 = extractvalue %dx.types.ResRet.f32 %4614, 0
  %4616 = extractvalue %dx.types.ResRet.f32 %4614, 1
  %4617 = extractvalue %dx.types.ResRet.f32 %4614, 2
  %4618 = fsub fast float %4611, %4603
  %4619 = fsub fast float %4612, %4604
  %4620 = fsub fast float %4613, %4605
  %4621 = fmul fast float %4618, %4591
  %4622 = fmul fast float %4619, %4591
  %4623 = fmul fast float %4620, %4591
  %4624 = fadd fast float %4621, %4603
  %4625 = fadd fast float %4622, %4604
  %4626 = fadd fast float %4623, %4605
  %4627 = fsub fast float %4615, %4607
  %4628 = fsub fast float %4616, %4608
  %4629 = fsub fast float %4617, %4609
  %4630 = fmul fast float %4627, %4591
  %4631 = fmul fast float %4628, %4591
  %4632 = fmul fast float %4629, %4591
  %4633 = fsub fast float %4607, %4624
  %4634 = fadd fast float %4633, %4630
  %4635 = fsub fast float %4608, %4625
  %4636 = fadd fast float %4635, %4631
  %4637 = fsub fast float %4609, %4626
  %4638 = fadd fast float %4637, %4632
  %4639 = fmul fast float %4634, %4579
  %4640 = fmul fast float %4636, %4579
  %4641 = fmul fast float %4638, %4579
  %4642 = fadd fast float %4639, %4624
  %4643 = fadd fast float %4640, %4625
  %4644 = fadd fast float %4641, %4626
  %4645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4646 = extractvalue %dx.types.CBufRet.f32 %4645, 1
  %4647 = fmul fast float %4642, %4646
  %4648 = fmul fast float %4643, %4646
  %4649 = fmul fast float %4644, %4646
  br label %4650

; <label>:4650                                    ; preds = %4482, %4451
  %4651 = phi float [ %4521, %4482 ], [ 1.000000e+00, %4451 ]
  %4652 = phi float [ %4522, %4482 ], [ 1.000000e+00, %4451 ]
  %4653 = phi float [ %4523, %4482 ], [ 1.000000e+00, %4451 ]
  %4654 = phi float [ %4647, %4482 ], [ 0.000000e+00, %4451 ]
  %4655 = phi float [ %4648, %4482 ], [ 0.000000e+00, %4451 ]
  %4656 = phi float [ %4649, %4482 ], [ 0.000000e+00, %4451 ]
  %4657 = fmul fast float %4654, %4438
  %4658 = fmul fast float %4655, %4438
  %4659 = fmul fast float %4656, %4438
  %4660 = call float @dx.op.dot3.f32(i32 55, float %4651, float %4652, float %4653, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4661 = call float @dx.op.dot3.f32(i32 55, float %4657, float %4658, float %4659, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4662 = select i1 %222, float %4660, float %4651
  %4663 = select i1 %222, float %4660, float %4652
  %4664 = select i1 %222, float 1.000000e+00, float %4653
  %4665 = select i1 %222, float %4661, float %4657
  %4666 = select i1 %222, float 0.000000e+00, float %4658
  %4667 = select i1 %222, float 0.000000e+00, float %4659
  %4668 = fmul fast float %4662, %4441
  %4669 = fmul fast float %4663, %4442
  %4670 = fmul fast float %4664, %4443
  %4671 = fadd fast float %4668, %4665
  %4672 = fadd fast float %4669, %4666
  %4673 = fadd fast float %4667, %4670
  %4674 = fmul fast float %4662, %4409
  %4675 = fmul fast float %4663, %4410
  %4676 = fmul fast float %4664, %4411
  %4677 = fmul fast float %82, 2.000000e+00
  %4678 = fmul fast float %4677, %4453
  %4679 = fmul fast float %83, 2.000000e+00
  %4680 = fmul fast float %4679, %4454
  %4681 = fsub fast float 1.000000e+00, %4678
  %4682 = fsub fast float 1.000000e+00, %4680
  %4683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4684 = extractvalue %dx.types.CBufRet.f32 %4683, 0
  %4685 = extractvalue %dx.types.CBufRet.f32 %4683, 1
  %4686 = extractvalue %dx.types.CBufRet.f32 %4683, 2
  %4687 = fmul fast float %4681, %4684
  %4688 = fmul fast float %4681, %4685
  %4689 = fmul fast float %4681, %4686
  %4690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4691 = extractvalue %dx.types.CBufRet.f32 %4690, 0
  %4692 = extractvalue %dx.types.CBufRet.f32 %4690, 1
  %4693 = extractvalue %dx.types.CBufRet.f32 %4690, 2
  %4694 = fmul fast float %4682, %4691
  %4695 = fmul fast float %4682, %4692
  %4696 = fmul fast float %4682, %4693
  %4697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4698 = extractvalue %dx.types.CBufRet.f32 %4697, 0
  %4699 = extractvalue %dx.types.CBufRet.f32 %4697, 1
  %4700 = extractvalue %dx.types.CBufRet.f32 %4697, 2
  %4701 = fadd fast float %4694, %4698
  %4702 = fadd fast float %4701, %4687
  %4703 = fadd fast float %4695, %4699
  %4704 = fadd fast float %4703, %4688
  %4705 = fadd fast float %4696, %4700
  %4706 = fadd fast float %4705, %4689
  %4707 = fmul fast float %4702, %183
  %4708 = fmul fast float %4704, %183
  %4709 = fmul fast float %4706, %183
  br label %4710

; <label>:4710                                    ; preds = %4650, %4408
  %4711 = phi float [ %4707, %4650 ], [ %130, %4408 ]
  %4712 = phi float [ %4708, %4650 ], [ %131, %4408 ]
  %4713 = phi float [ %4709, %4650 ], [ %132, %4408 ]
  %4714 = phi float [ %183, %4650 ], [ %70, %4408 ]
  %4715 = phi float [ %4671, %4650 ], [ %4441, %4408 ]
  %4716 = phi float [ %4672, %4650 ], [ %4442, %4408 ]
  %4717 = phi float [ %4673, %4650 ], [ %4443, %4408 ]
  %4718 = phi float [ %4674, %4650 ], [ %4409, %4408 ]
  %4719 = phi float [ %4675, %4650 ], [ %4410, %4408 ]
  %4720 = phi float [ %4676, %4650 ], [ %4411, %4408 ]
  %4721 = phi float [ %4651, %4650 ], [ 1.000000e+00, %4408 ]
  br i1 %4450, label %5876, label %4722

; <label>:4722                                    ; preds = %4710
  %4723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %4724 = extractvalue %dx.types.CBufRet.f32 %4723, 0
  %4725 = extractvalue %dx.types.CBufRet.f32 %4723, 1
  %4726 = extractvalue %dx.types.CBufRet.f32 %4723, 2
  %4727 = extractvalue %dx.types.CBufRet.f32 %4723, 3
  %4728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %4729 = extractvalue %dx.types.CBufRet.f32 %4728, 0
  %4730 = extractvalue %dx.types.CBufRet.f32 %4728, 1
  %4731 = extractvalue %dx.types.CBufRet.f32 %4728, 2
  %4732 = extractvalue %dx.types.CBufRet.f32 %4728, 3
  %4733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %4734 = extractvalue %dx.types.CBufRet.f32 %4733, 0
  %4735 = extractvalue %dx.types.CBufRet.f32 %4733, 1
  %4736 = extractvalue %dx.types.CBufRet.f32 %4733, 2
  %4737 = extractvalue %dx.types.CBufRet.f32 %4733, 3
  %4738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %4739 = extractvalue %dx.types.CBufRet.f32 %4738, 0
  %4740 = extractvalue %dx.types.CBufRet.f32 %4738, 1
  %4741 = extractvalue %dx.types.CBufRet.f32 %4738, 2
  %4742 = extractvalue %dx.types.CBufRet.f32 %4738, 3
  %4743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %4744 = extractvalue %dx.types.CBufRet.f32 %4743, 3
  %4745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %4746 = extractvalue %dx.types.CBufRet.f32 %4745, 3
  %4747 = extractvalue %dx.types.CBufRet.f32 %4745, 0
  %4748 = extractvalue %dx.types.CBufRet.f32 %4745, 1
  %4749 = extractvalue %dx.types.CBufRet.f32 %4745, 2
  %4750 = fcmp fast olt float %4749, -5.000000e-01
  %4751 = call float @dx.op.dot3.f32(i32 55, float %4711, float %4712, float %4713, float %4711, float %4712, float %4713)  ; Dot3(ax,ay,az,bx,by,bz)
  %4752 = call float @dx.op.unary.f32(i32 25, float %4751)  ; Rsqrt(value)
  %4753 = fmul fast float %4752, %4751
  %4754 = fmul fast float %4752, %4711
  %4755 = fmul fast float %4752, %4712
  %4756 = fmul fast float %4752, %4713
  %4757 = fadd fast float %4753, %4727
  %4758 = call float @dx.op.dot3.f32(i32 55, float %4754, float %4755, float %4756, float %4724, float %4725, float %4726)  ; Dot3(ax,ay,az,bx,by,bz)
  %4759 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4760 = extractvalue %dx.types.CBufRet.i32 %4759, 1
  %4761 = and i32 %4760, 1
  %4762 = icmp ne i32 %4761, 0
  %4763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %4764 = extractvalue %dx.types.CBufRet.f32 %4763, 2
  %4765 = fcmp fast ogt float %4764, 0.000000e+00
  %4766 = and i1 %4762, %4765
  br i1 %4766, label %4767, label %5173, !dx.controlflow.hints !109

; <label>:4767                                    ; preds = %4722
  %4768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %4769 = extractvalue %dx.types.CBufRet.f32 %4768, 3
  %4770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4771 = extractvalue %dx.types.CBufRet.f32 %4770, 2
  %4772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4773 = extractvalue %dx.types.CBufRet.f32 %4772, 2
  %4774 = fsub fast float %4771, %4773
  %4775 = and i32 %4760, 2
  %4776 = extractvalue %dx.types.CBufRet.i32 %4759, 0
  %4777 = call i32 @dx.op.binary.i32(i32 40, i32 %4776, i32 3)  ; UMin(a,b)
  %4778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %4779 = extractvalue %dx.types.CBufRet.f32 %4778, 0
  %4780 = extractvalue %dx.types.CBufRet.f32 %4778, 1
  %4781 = extractvalue %dx.types.CBufRet.f32 %4772, 0
  %4782 = extractvalue %dx.types.CBufRet.f32 %4772, 1
  %4783 = fsub fast float %4779, %4781
  %4784 = fsub fast float %4780, %4782
  %4785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %4786 = extractvalue %dx.types.CBufRet.f32 %4785, 0
  %4787 = fcmp fast ogt float %4786, 0.000000e+00
  %4788 = fsub fast float -0.000000e+00, %4783
  %4789 = fsub fast float -0.000000e+00, %4784
  %4790 = call float @dx.op.dot2.f32(i32 54, float %4754, float %4755, float %4754, float %4755)  ; Dot2(ax,ay,bx,by)
  %4791 = call float @dx.op.dot2.f32(i32 54, float %4754, float %4755, float %4788, float %4789)  ; Dot2(ax,ay,bx,by)
  %4792 = fmul fast float %4791, 2.000000e+00
  %4793 = call float @dx.op.dot2.f32(i32 54, float %4788, float %4789, float %4788, float %4789)  ; Dot2(ax,ay,bx,by)
  %4794 = fmul fast float %4786, %4786
  %4795 = fsub fast float %4793, %4794
  %4796 = fmul fast float %4792, %4792
  %4797 = fmul fast float %4790, 4.000000e+00
  %4798 = fmul fast float %4797, %4795
  %4799 = fsub fast float %4796, %4798
  %4800 = fcmp fast ogt float %4799, 0.000000e+00
  br i1 %4800, label %4801, label %4816

; <label>:4801                                    ; preds = %4767
  %4802 = fcmp fast ogt float %4792, 0.000000e+00
  %4803 = call float @dx.op.unary.f32(i32 24, float %4799)  ; Sqrt(value)
  %4804 = fsub fast float -0.000000e+00, %4803
  %4805 = select i1 %4802, float %4803, float %4804
  %4806 = fadd fast float %4805, %4792
  %4807 = fmul float %4806, -5.000000e-01
  %4808 = fdiv fast float %4807, %4790
  %4809 = call float @dx.op.binary.f32(i32 35, float %4808, float 0.000000e+00)  ; FMax(a,b)
  %4810 = call float @dx.op.binary.f32(i32 36, float %4753, float %4809)  ; FMin(a,b)
  %4811 = fdiv fast float %4795, %4807
  %4812 = call float @dx.op.binary.f32(i32 35, float %4811, float 0.000000e+00)  ; FMax(a,b)
  %4813 = call float @dx.op.binary.f32(i32 36, float %4753, float %4812)  ; FMin(a,b)
  %4814 = call float @dx.op.binary.f32(i32 36, float %4810, float %4813)  ; FMin(a,b)
  %4815 = call float @dx.op.binary.f32(i32 35, float %4810, float %4813)  ; FMax(a,b)
  br label %4816

; <label>:4816                                    ; preds = %4801, %4767
  %4817 = phi float [ %4815, %4801 ], [ -1.000000e+00, %4767 ]
  %4818 = phi float [ %4814, %4801 ], [ -1.000000e+00, %4767 ]
  %4819 = phi i1 [ true, %4801 ], [ false, %4767 ]
  %4820 = and i1 %4787, %4819
  br i1 %4820, label %4821, label %4823

; <label>:4821                                    ; preds = %4816
  %4822 = fcmp fast oeq float %4818, %4817
  br i1 %4822, label %5126, label %4824

; <label>:4823                                    ; preds = %4816
  br i1 %4787, label %5126, label %4824

; <label>:4824                                    ; preds = %4823, %4821
  %4825 = phi float [ %4753, %4823 ], [ %4817, %4821 ]
  %4826 = phi float [ 0.000000e+00, %4823 ], [ %4818, %4821 ]
  %4827 = icmp ne i32 %4775, 0
  %4828 = fmul fast float %4825, %4756
  %4829 = fadd fast float %4828, %4769
  %4830 = fmul fast float %4829, %4825
  %4831 = select i1 %4827, float 0.000000e+00, float %4830
  %4832 = fcmp fast oeq float %4756, 0.000000e+00
  %4833 = fdiv fast float %4774, %4756
  %4834 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4833)  ; FMax(a,b)
  %4835 = select i1 %4832, float %4825, float %4834
  %4836 = call float @dx.op.binary.f32(i32 36, float %4825, float %4835)  ; FMin(a,b)
  %4837 = fcmp fast ogt float %4756, 0.000000e+00
  %4838 = fcmp fast olt float %4774, 0.000000e+00
  br i1 %4837, label %4839, label %4896

; <label>:4839                                    ; preds = %4824
  %4840 = icmp eq i32 %4775, 0
  br i1 %4838, label %4841, label %4885

; <label>:4841                                    ; preds = %4839
  %4842 = select i1 %4840, float %4825, float 0.000000e+00
  %4843 = fsub fast float -0.000000e+00, %4842
  %4844 = call float @dx.op.unary.f32(i32 6, float %4843)  ; FAbs(value)
  %4845 = fmul fast float %4842, %4756
  %4846 = fadd fast float %4845, %4769
  %4847 = fmul fast float %4844, %4846
  %4848 = fsub fast float %4831, %4847
  %4849 = fsub fast float %4825, %4844
  %4850 = select i1 %4840, float %4849, float 0.000000e+00
  %4851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.f32 %4851, 0
  %4853 = extractvalue %dx.types.CBufRet.f32 %4851, 1
  %4854 = extractvalue %dx.types.CBufRet.f32 %4851, 2
  %4855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4856 = extractvalue %dx.types.CBufRet.f32 %4855, 0
  %4857 = extractvalue %dx.types.CBufRet.f32 %4855, 1
  %4858 = extractvalue %dx.types.CBufRet.f32 %4855, 2
  %4859 = extractvalue %dx.types.CBufRet.f32 %4855, 3
  %4860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4861 = extractvalue %dx.types.CBufRet.f32 %4860, 3
  %4862 = call float @dx.op.binary.f32(i32 36, float %4848, float %4861)  ; FMin(a,b)
  %4863 = fmul fast float %4859, %4850
  %4864 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  %4865 = fsub fast float %4856, %4852
  %4866 = fsub fast float %4857, %4853
  %4867 = fsub fast float %4858, %4854
  %4868 = fmul fast float %4864, %4865
  %4869 = fmul fast float %4864, %4866
  %4870 = fmul fast float %4864, %4867
  %4871 = fadd fast float %4868, %4852
  %4872 = fadd fast float %4869, %4853
  %4873 = fadd fast float %4870, %4854
  %4874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4875 = extractvalue %dx.types.CBufRet.f32 %4874, 0
  %4876 = extractvalue %dx.types.CBufRet.f32 %4874, 1
  %4877 = fadd fast float %4876, %4875
  %4878 = call float @dx.op.unary.f32(i32 7, float %4877)  ; Saturate(value)
  %4879 = extractvalue %dx.types.CBufRet.f32 %4874, 2
  %4880 = extractvalue %dx.types.CBufRet.f32 %4874, 3
  %4881 = fadd fast float %4880, %4879
  %4882 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4883 = fmul fast float %4878, %4862
  %4884 = fmul fast float %4883, %4882
  br label %5126

; <label>:4885                                    ; preds = %4839
  br i1 %4840, label %4886, label %4907

; <label>:4886                                    ; preds = %4885
  %4887 = call float @dx.op.binary.f32(i32 36, float %4836, float %4826)  ; FMin(a,b)
  %4888 = fsub fast float %4836, %4887
  %4889 = fsub fast float %4888, %4825
  %4890 = call float @dx.op.unary.f32(i32 6, float %4889)  ; FAbs(value)
  %4891 = fadd fast float %4888, %4825
  %4892 = fmul fast float %4891, %4756
  %4893 = fadd fast float %4892, %4769
  %4894 = fmul fast float %4893, %4890
  %4895 = fsub fast float %4831, %4894
  br label %4907

; <label>:4896                                    ; preds = %4824
  br i1 %4838, label %4897, label %4907

; <label>:4897                                    ; preds = %4896
  %4898 = call float @dx.op.binary.f32(i32 35, float %4826, float %4836)  ; FMax(a,b)
  %4899 = icmp eq i32 %4775, 0
  %4900 = select i1 %4899, float %4836, float 0.000000e+00
  %4901 = fsub fast float -0.000000e+00, %4900
  %4902 = call float @dx.op.unary.f32(i32 6, float %4901)  ; FAbs(value)
  %4903 = fmul fast float %4900, %4756
  %4904 = fadd fast float %4903, %4769
  %4905 = fmul fast float %4902, %4904
  %4906 = fsub fast float %4831, %4905
  br label %4907

; <label>:4907                                    ; preds = %4897, %4896, %4886, %4885
  %4908 = phi float [ %4826, %4885 ], [ %4826, %4886 ], [ %4898, %4897 ], [ %4826, %4896 ]
  %4909 = phi float [ 0.000000e+00, %4885 ], [ %4890, %4886 ], [ %4902, %4897 ], [ 0.000000e+00, %4896 ]
  %4910 = phi float [ %4831, %4885 ], [ %4895, %4886 ], [ %4906, %4897 ], [ %4831, %4896 ]
  %4911 = phi float [ %4836, %4885 ], [ %4836, %4886 ], [ %4825, %4897 ], [ %4825, %4896 ]
  %4912 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 0
  store float -1.000000e+00, float* %4912, align 4, !tbaa !99, !noalias !110
  %4913 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 1
  store float -1.000000e+00, float* %4913, align 4, !tbaa !99, !noalias !110
  %4914 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 2
  store float -1.000000e+00, float* %4914, align 4, !tbaa !99, !noalias !110
  %4915 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 0
  store float -1.000000e+00, float* %4915, align 4, !tbaa !99, !noalias !110
  %4916 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 1
  store float -1.000000e+00, float* %4916, align 4, !tbaa !99, !noalias !110
  %4917 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 2
  store float -1.000000e+00, float* %4917, align 4, !tbaa !99, !noalias !110
  %4918 = icmp sgt i32 %4777, 0
  br i1 %4918, label %4919, label %4980

; <label>:4919                                    ; preds = %4907
  br label %4920

; <label>:4920                                    ; preds = %4969, %4919
  %4921 = phi i32 [ %4970, %4969 ], [ 0, %4919 ]
  %4922 = phi i32 [ %4971, %4969 ], [ 0, %4919 ]
  %4923 = add nuw i32 %4922, 171
  %4924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 %4923)  ; CBufferLoadLegacy(handle,regIndex)
  %4925 = extractvalue %dx.types.CBufRet.f32 %4924, 0
  %4926 = extractvalue %dx.types.CBufRet.f32 %4924, 1
  %4927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4928 = extractvalue %dx.types.CBufRet.f32 %4927, 0
  %4929 = extractvalue %dx.types.CBufRet.f32 %4927, 1
  %4930 = fsub fast float %4925, %4928
  %4931 = fsub fast float %4926, %4929
  %4932 = extractvalue %dx.types.CBufRet.f32 %4924, 2
  %4933 = fsub fast float -0.000000e+00, %4930
  %4934 = fsub fast float -0.000000e+00, %4931
  %4935 = call float @dx.op.dot2.f32(i32 54, float %4754, float %4755, float %4933, float %4934)  ; Dot2(ax,ay,bx,by)
  %4936 = fmul fast float %4935, 2.000000e+00
  %4937 = call float @dx.op.dot2.f32(i32 54, float %4933, float %4934, float %4933, float %4934)  ; Dot2(ax,ay,bx,by)
  %4938 = fmul fast float %4932, %4932
  %4939 = fsub fast float %4937, %4938
  %4940 = fmul fast float %4936, %4936
  %4941 = fmul fast float %4797, %4939
  %4942 = fsub fast float %4940, %4941
  %4943 = fcmp fast ogt float %4942, 0.000000e+00
  br i1 %4943, label %4944, label %4959

; <label>:4944                                    ; preds = %4920
  %4945 = fcmp fast ogt float %4936, 0.000000e+00
  %4946 = call float @dx.op.unary.f32(i32 24, float %4942)  ; Sqrt(value)
  %4947 = fsub fast float -0.000000e+00, %4946
  %4948 = select i1 %4945, float %4946, float %4947
  %4949 = fadd fast float %4948, %4936
  %4950 = fmul float %4949, -5.000000e-01
  %4951 = fdiv fast float %4950, %4790
  %4952 = call float @dx.op.binary.f32(i32 35, float %4951, float 0.000000e+00)  ; FMax(a,b)
  %4953 = call float @dx.op.binary.f32(i32 36, float %4825, float %4952)  ; FMin(a,b)
  %4954 = fdiv fast float %4939, %4950
  %4955 = call float @dx.op.binary.f32(i32 35, float %4954, float 0.000000e+00)  ; FMax(a,b)
  %4956 = call float @dx.op.binary.f32(i32 36, float %4825, float %4955)  ; FMin(a,b)
  %4957 = call float @dx.op.binary.f32(i32 36, float %4953, float %4956)  ; FMin(a,b)
  %4958 = call float @dx.op.binary.f32(i32 35, float %4953, float %4956)  ; FMax(a,b)
  br label %4959

; <label>:4959                                    ; preds = %4944, %4920
  %4960 = phi float [ %4958, %4944 ], [ -1.000000e+00, %4920 ]
  %4961 = phi float [ %4957, %4944 ], [ -1.000000e+00, %4920 ]
  %4962 = phi i1 [ true, %4944 ], [ false, %4920 ]
  br i1 %4962, label %4963, label %4969

; <label>:4963                                    ; preds = %4959
  %4964 = call float @dx.op.binary.f32(i32 35, float %4908, float %4961)  ; FMax(a,b)
  %4965 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %4922
  store float %4964, float* %4965, align 4, !tbaa !99, !noalias !110
  %4966 = call float @dx.op.binary.f32(i32 35, float %4908, float %4960)  ; FMax(a,b)
  %4967 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 %4922
  store float %4966, float* %4967, align 4, !tbaa !99, !noalias !110
  %4968 = add nsw i32 %4921, 1
  br label %4969

; <label>:4969                                    ; preds = %4963, %4959
  %4970 = phi i32 [ %4968, %4963 ], [ %4921, %4959 ]
  %4971 = add nuw nsw i32 %4922, 1
  %4972 = icmp eq i32 %4971, %4777
  br i1 %4972, label %4973, label %4920

; <label>:4973                                    ; preds = %4969
  %4974 = load float, float* %4914, align 4, !tbaa !99, !alias.scope !126, !noalias !129
  %4975 = load float, float* %4913, align 4, !tbaa !99, !alias.scope !132, !noalias !133
  %4976 = load float, float* %4912, align 4, !tbaa !99, !alias.scope !134, !noalias !135
  %4977 = load float, float* %4917, align 4, !tbaa !99, !alias.scope !136, !noalias !139
  %4978 = load float, float* %4916, align 4, !tbaa !99, !alias.scope !142, !noalias !143
  %4979 = load float, float* %4915, align 4, !tbaa !99, !alias.scope !144, !noalias !145
  br label %4980

; <label>:4980                                    ; preds = %4973, %4907
  %4981 = phi float [ -1.000000e+00, %4907 ], [ %4979, %4973 ]
  %4982 = phi float [ -1.000000e+00, %4907 ], [ %4978, %4973 ]
  %4983 = phi float [ -1.000000e+00, %4907 ], [ %4977, %4973 ]
  %4984 = phi float [ -1.000000e+00, %4907 ], [ %4976, %4973 ]
  %4985 = phi float [ -1.000000e+00, %4907 ], [ %4975, %4973 ]
  %4986 = phi float [ -1.000000e+00, %4907 ], [ %4974, %4973 ]
  %4987 = phi i32 [ 0, %4907 ], [ %4970, %4973 ]
  %4988 = call float @dx.op.binary.f32(i32 36, float %4985, float %4986)  ; FMin(a,b)
  %4989 = call float @dx.op.binary.f32(i32 36, float %4984, float %4988)  ; FMin(a,b)
  %4990 = call float @dx.op.binary.f32(i32 35, float %4984, float %4985)  ; FMax(a,b)
  %4991 = call float @dx.op.binary.f32(i32 36, float %4990, float %4986)  ; FMin(a,b)
  %4992 = call float @dx.op.binary.f32(i32 36, float %4984, float %4985)  ; FMin(a,b)
  %4993 = call float @dx.op.binary.f32(i32 35, float %4992, float %4991)  ; FMax(a,b)
  %4994 = call float @dx.op.binary.f32(i32 35, float %4985, float %4986)  ; FMax(a,b)
  %4995 = call float @dx.op.binary.f32(i32 35, float %4984, float %4994)  ; FMax(a,b)
  store float %4989, float* %4912, align 4, !tbaa !99, !alias.scope !134, !noalias !135
  store float %4993, float* %4913, align 4, !tbaa !99, !alias.scope !132, !noalias !133
  store float %4995, float* %4914, align 4, !tbaa !99, !alias.scope !126, !noalias !129
  %4996 = call float @dx.op.binary.f32(i32 36, float %4982, float %4983)  ; FMin(a,b)
  %4997 = call float @dx.op.binary.f32(i32 36, float %4981, float %4996)  ; FMin(a,b)
  %4998 = call float @dx.op.binary.f32(i32 35, float %4981, float %4982)  ; FMax(a,b)
  %4999 = call float @dx.op.binary.f32(i32 36, float %4998, float %4983)  ; FMin(a,b)
  %5000 = call float @dx.op.binary.f32(i32 36, float %4981, float %4982)  ; FMin(a,b)
  %5001 = call float @dx.op.binary.f32(i32 35, float %5000, float %4999)  ; FMax(a,b)
  %5002 = call float @dx.op.binary.f32(i32 35, float %4982, float %4983)  ; FMax(a,b)
  %5003 = call float @dx.op.binary.f32(i32 35, float %4981, float %5002)  ; FMax(a,b)
  store float %4997, float* %4915, align 4, !tbaa !99, !alias.scope !144, !noalias !145
  store float %5001, float* %4916, align 4, !tbaa !99, !alias.scope !142, !noalias !143
  store float %5003, float* %4917, align 4, !tbaa !99, !alias.scope !136, !noalias !139
  %5004 = sub nsw i32 3, %4987
  %5005 = icmp sgt i32 %5004, 2
  br i1 %5005, label %5006, label %5044

; <label>:5006                                    ; preds = %4980
  %5007 = icmp eq i32 %4775, 0
  %5008 = fsub fast float %4825, %4909
  %5009 = select i1 %5007, float %5008, float %4909
  %5010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.f32 %5010, 0
  %5012 = extractvalue %dx.types.CBufRet.f32 %5010, 1
  %5013 = extractvalue %dx.types.CBufRet.f32 %5010, 2
  %5014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5015 = extractvalue %dx.types.CBufRet.f32 %5014, 0
  %5016 = extractvalue %dx.types.CBufRet.f32 %5014, 1
  %5017 = extractvalue %dx.types.CBufRet.f32 %5014, 2
  %5018 = extractvalue %dx.types.CBufRet.f32 %5014, 3
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 3
  %5021 = call float @dx.op.binary.f32(i32 36, float %4910, float %5020)  ; FMin(a,b)
  %5022 = fmul fast float %5018, %5009
  %5023 = call float @dx.op.unary.f32(i32 7, float %5022)  ; Saturate(value)
  %5024 = fsub fast float %5015, %5011
  %5025 = fsub fast float %5016, %5012
  %5026 = fsub fast float %5017, %5013
  %5027 = fmul fast float %5023, %5024
  %5028 = fmul fast float %5023, %5025
  %5029 = fmul fast float %5023, %5026
  %5030 = fadd fast float %5027, %5011
  %5031 = fadd fast float %5028, %5012
  %5032 = fadd fast float %5029, %5013
  %5033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5034 = extractvalue %dx.types.CBufRet.f32 %5033, 0
  %5035 = extractvalue %dx.types.CBufRet.f32 %5033, 1
  %5036 = fadd fast float %5035, %5034
  %5037 = call float @dx.op.unary.f32(i32 7, float %5036)  ; Saturate(value)
  %5038 = extractvalue %dx.types.CBufRet.f32 %5033, 2
  %5039 = extractvalue %dx.types.CBufRet.f32 %5033, 3
  %5040 = fadd fast float %5039, %5038
  %5041 = call float @dx.op.unary.f32(i32 7, float %5040)  ; Saturate(value)
  %5042 = fmul fast float %5037, %5021
  %5043 = fmul fast float %5042, %5041
  br label %5126

; <label>:5044                                    ; preds = %4980
  %5045 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %5004
  %5046 = load float, float* %5045, align 4, !tbaa !99, !noalias !110
  %5047 = fcmp fast olt float %5046, %4911
  %5048 = icmp sgt i32 %4987, 0
  %5049 = and i1 %5048, %5047
  br i1 %5049, label %5050, label %5087

; <label>:5050                                    ; preds = %5044
  br label %5051

; <label>:5051                                    ; preds = %5080, %5050
  %5052 = phi float [ %5081, %5080 ], [ %4909, %5050 ]
  %5053 = phi float [ %5082, %5080 ], [ %4910, %5050 ]
  %5054 = phi float [ %5062, %5080 ], [ %5046, %5050 ]
  %5055 = phi i32 [ %5059, %5080 ], [ %5004, %5050 ]
  %5056 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 %5055
  %5057 = load float, float* %5056, align 4, !tbaa !99, !noalias !110
  %5058 = icmp slt i32 %5055, 2
  %5059 = add nsw i32 %5055, 1
  %5060 = getelementptr inbounds [3 x float], [3 x float]* %76, i32 0, i32 %5059
  %5061 = load float, float* %5060, align 4, !tbaa !99, !noalias !110
  %5062 = select i1 %5058, float %5061, float %4825
  %5063 = call float @dx.op.binary.f32(i32 36, float %5062, float %5057)  ; FMin(a,b)
  %5064 = call float @dx.op.binary.f32(i32 36, float %4911, float %5063)  ; FMin(a,b)
  %5065 = icmp eq i32 %4775, 0
  %5066 = fadd fast float %5064, %5054
  %5067 = fmul fast float %5066, %4756
  %5068 = fadd fast float %5067, %4769
  br i1 %5065, label %5074, label %5069

; <label>:5069                                    ; preds = %5051
  %5070 = fsub fast float %5064, %5054
  %5071 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5070)  ; FMax(a,b)
  %5072 = fmul fast float %5071, %5068
  %5073 = fadd fast float %5072, %5053
  br label %5080

; <label>:5074                                    ; preds = %5051
  %5075 = fsub fast float %5054, %5064
  %5076 = call float @dx.op.unary.f32(i32 6, float %5075)  ; FAbs(value)
  %5077 = fadd fast float %5076, %5052
  %5078 = fmul fast float %5076, %5068
  %5079 = fsub fast float %5053, %5078
  br label %5080

; <label>:5080                                    ; preds = %5074, %5069
  %5081 = phi float [ %5071, %5069 ], [ %5077, %5074 ]
  %5082 = phi float [ %5073, %5069 ], [ %5079, %5074 ]
  %5083 = fcmp fast olt float %5062, %4911
  %5084 = icmp slt i32 %5059, 3
  %5085 = and i1 %5084, %5083
  br i1 %5085, label %5051, label %5086

; <label>:5086                                    ; preds = %5080
  br label %5087

; <label>:5087                                    ; preds = %5086, %5044
  %5088 = phi float [ %4909, %5044 ], [ %5081, %5086 ]
  %5089 = phi float [ %4910, %5044 ], [ %5082, %5086 ]
  %5090 = fsub fast float %4825, %5088
  %5091 = select i1 %4827, float %5088, float %5090
  %5092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5093 = extractvalue %dx.types.CBufRet.f32 %5092, 0
  %5094 = extractvalue %dx.types.CBufRet.f32 %5092, 1
  %5095 = extractvalue %dx.types.CBufRet.f32 %5092, 2
  %5096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5097 = extractvalue %dx.types.CBufRet.f32 %5096, 0
  %5098 = extractvalue %dx.types.CBufRet.f32 %5096, 1
  %5099 = extractvalue %dx.types.CBufRet.f32 %5096, 2
  %5100 = extractvalue %dx.types.CBufRet.f32 %5096, 3
  %5101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5102 = extractvalue %dx.types.CBufRet.f32 %5101, 3
  %5103 = call float @dx.op.binary.f32(i32 36, float %5089, float %5102)  ; FMin(a,b)
  %5104 = fmul fast float %5100, %5091
  %5105 = call float @dx.op.unary.f32(i32 7, float %5104)  ; Saturate(value)
  %5106 = fsub fast float %5097, %5093
  %5107 = fsub fast float %5098, %5094
  %5108 = fsub fast float %5099, %5095
  %5109 = fmul fast float %5105, %5106
  %5110 = fmul fast float %5105, %5107
  %5111 = fmul fast float %5105, %5108
  %5112 = fadd fast float %5109, %5093
  %5113 = fadd fast float %5110, %5094
  %5114 = fadd fast float %5111, %5095
  %5115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5116 = extractvalue %dx.types.CBufRet.f32 %5115, 0
  %5117 = extractvalue %dx.types.CBufRet.f32 %5115, 1
  %5118 = fadd fast float %5117, %5116
  %5119 = call float @dx.op.unary.f32(i32 7, float %5118)  ; Saturate(value)
  %5120 = extractvalue %dx.types.CBufRet.f32 %5115, 2
  %5121 = extractvalue %dx.types.CBufRet.f32 %5115, 3
  %5122 = fadd fast float %5121, %5120
  %5123 = call float @dx.op.unary.f32(i32 7, float %5122)  ; Saturate(value)
  %5124 = fmul fast float %5119, %5103
  %5125 = fmul fast float %5124, %5123
  br label %5126

; <label>:5126                                    ; preds = %5087, %5006, %4841, %4823, %4821
  %5127 = phi float [ %4850, %4841 ], [ %5009, %5006 ], [ %5091, %5087 ], [ 0.000000e+00, %4821 ], [ 0.000000e+00, %4823 ]
  %5128 = phi float [ %4884, %4841 ], [ %5043, %5006 ], [ %5125, %5087 ], [ 0.000000e+00, %4821 ], [ 0.000000e+00, %4823 ]
  %5129 = phi float [ %4871, %4841 ], [ %5030, %5006 ], [ %5112, %5087 ], [ 0.000000e+00, %4821 ], [ 0.000000e+00, %4823 ]
  %5130 = phi float [ %4872, %4841 ], [ %5031, %5006 ], [ %5113, %5087 ], [ 0.000000e+00, %4821 ], [ 0.000000e+00, %4823 ]
  %5131 = phi float [ %4873, %4841 ], [ %5032, %5006 ], [ %5114, %5087 ], [ 0.000000e+00, %4821 ], [ 0.000000e+00, %4823 ]
  %5132 = fmul fast float %4764, %5128
  %5133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.f32 %5133, 2
  %5135 = fsub fast float %4771, %5134
  %5136 = fcmp fast olt float %5132, -2.000000e+01
  %5137 = call float @dx.op.unary.f32(i32 21, float %5132)  ; Exp(value)
  %5138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.f32 %5138, 2
  %5140 = extractvalue %dx.types.CBufRet.f32 %5138, 3
  %5141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5142 = extractvalue %dx.types.CBufRet.f32 %5141, 2
  %5143 = fmul fast float %5140, %5135
  %5144 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5145 = fsub fast float 1.000000e+00, %5144
  %5146 = fmul fast float %4756, 5.000000e-01
  %5147 = fadd fast float %5146, 5.000000e-01
  %5148 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  %5149 = fsub fast float 1.000000e+00, %5148
  %5150 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5145)  ; FMax(a,b)
  %5151 = fdiv fast float %5149, %5150
  %5152 = fsub fast float %5135, %4713
  %5153 = call float @dx.op.unary.f32(i32 6, float %5152)  ; FAbs(value)
  %5154 = fmul fast float %5153, %5139
  %5155 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  %5156 = fsub fast float 1.000000e+00, %5154
  %5157 = fmul fast float %5156, %5155
  %5158 = fadd fast float %5157, %5154
  %5159 = fmul fast float %5142, %5135
  %5160 = call float @dx.op.unary.f32(i32 7, float %5159)  ; Saturate(value)
  %5161 = fsub fast float 1.000000e+00, %5158
  %5162 = fmul fast float %5161, %5160
  %5163 = fadd fast float %5162, %5158
  %5164 = call float @dx.op.unary.f32(i32 7, float %5163)  ; Saturate(value)
  %5165 = fadd fast float %5137, -1.000000e+00
  %5166 = select i1 %5136, float -1.000000e+00, float %5165
  %5167 = fmul fast float %5164, %5166
  %5168 = fadd fast float %5167, 1.000000e+00
  %5169 = fsub fast float -0.000000e+00, %5167
  %5170 = fmul fast float %5129, %5169
  %5171 = fmul fast float %5130, %5169
  %5172 = fmul fast float %5131, %5169
  br label %5173

; <label>:5173                                    ; preds = %5126, %4722
  %5174 = phi float [ %5127, %5126 ], [ 0.000000e+00, %4722 ]
  %5175 = phi float [ %5168, %5126 ], [ 1.000000e+00, %4722 ]
  %5176 = phi float [ %5170, %5126 ], [ 0.000000e+00, %4722 ]
  %5177 = phi float [ %5171, %5126 ], [ 0.000000e+00, %4722 ]
  %5178 = phi float [ %5172, %5126 ], [ 0.000000e+00, %4722 ]
  %5179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5180 = extractvalue %dx.types.CBufRet.f32 %5179, 1
  %5181 = fsub fast float 1.000000e+00, %5175
  %5182 = fmul fast float %5181, %4757
  %5183 = fmul fast float %5182, %5180
  %5184 = fsub fast float %4757, %5183
  br i1 %4750, label %5185, label %5214, !dx.controlflow.hints !146

; <label>:5185                                    ; preds = %5173
  %5186 = fmul fast float %4758, %4747
  %5187 = fadd fast float %5186, %4748
  %5188 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5189 = fmul fast float %4729, %5184
  %5190 = fsub fast float -0.000000e+00, %5189
  %5191 = fmul fast float %4730, %5184
  %5192 = fsub fast float -0.000000e+00, %5191
  %5193 = call float @dx.op.unary.f32(i32 21, float %5190)  ; Exp(value)
  %5194 = call float @dx.op.unary.f32(i32 21, float %5192)  ; Exp(value)
  %5195 = call float @dx.op.binary.f32(i32 35, float %4737, float %5193)  ; FMax(a,b)
  %5196 = call float @dx.op.binary.f32(i32 35, float %4737, float %5194)  ; FMax(a,b)
  %5197 = fsub fast float %5196, %5195
  %5198 = fmul fast float %5197, %5188
  %5199 = fadd fast float %5198, %5195
  %5200 = call float @dx.op.unary.f32(i32 7, float %5199)  ; Saturate(value)
  %5201 = fsub fast float %4734, %4739
  %5202 = fsub fast float %4735, %4740
  %5203 = fsub fast float %4736, %4741
  %5204 = fmul fast float %5188, %5201
  %5205 = fmul fast float %5188, %5202
  %5206 = fmul fast float %5188, %5203
  %5207 = fadd fast float %5204, %4739
  %5208 = fadd fast float %5205, %4740
  %5209 = fadd fast float %5206, %4741
  %5210 = fsub fast float 1.000000e+00, %5200
  %5211 = fmul fast float %5210, %5207
  %5212 = fmul fast float %5210, %5208
  %5213 = fmul fast float %5210, %5209
  br label %5273

; <label>:5214                                    ; preds = %5173
  %5215 = fmul fast float %5184, %4746
  %5216 = call float @dx.op.unary.f32(i32 7, float %5215)  ; Saturate(value)
  %5217 = fsub fast float 2.000000e+00, %5216
  %5218 = fmul fast float %5216, 9.921875e-01
  %5219 = fmul fast float %5218, %5217
  %5220 = fadd fast float %5219, 3.906250e-03
  %5221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %38, float %5220, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5222 = extractvalue %dx.types.ResRet.f32 %5221, 0
  %5223 = fsub fast float %5216, %5222
  %5224 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5223)  ; FMax(a,b)
  %5225 = fmul fast float %4732, %4713
  %5226 = call float @dx.op.unary.f32(i32 6, float %5225)  ; FAbs(value)
  %5227 = fcmp fast ogt float %5226, 0x3EB0C6F7A0000000
  br i1 %5227, label %5228, label %5234, !dx.controlflow.hints !147

; <label>:5228                                    ; preds = %5214
  %5229 = fmul fast float %5225, 0xBFF7154760000000
  %5230 = call float @dx.op.unary.f32(i32 21, float %5229)  ; Exp(value)
  %5231 = fsub fast float 1.000000e+00, %5230
  %5232 = fdiv fast float %5231, %5225
  %5233 = fmul fast float %5232, %4742
  br label %5234

; <label>:5234                                    ; preds = %5228, %5214
  %5235 = phi float [ %5233, %5228 ], [ %4742, %5214 ]
  %5236 = fadd fast float %5235, %4744
  %5237 = fmul fast float %5236, %5224
  %5238 = fmul fast float %4729, %5237
  %5239 = fsub fast float -0.000000e+00, %5238
  %5240 = fmul fast float %4730, %5237
  %5241 = fsub fast float -0.000000e+00, %5240
  %5242 = fmul fast float %4731, %5237
  %5243 = fsub fast float -0.000000e+00, %5242
  %5244 = call float @dx.op.unary.f32(i32 21, float %5239)  ; Exp(value)
  %5245 = call float @dx.op.unary.f32(i32 21, float %5241)  ; Exp(value)
  %5246 = call float @dx.op.unary.f32(i32 21, float %5243)  ; Exp(value)
  %5247 = fmul fast float %4758, %4758
  %5248 = fadd fast float %5247, 1.000000e+00
  %5249 = fmul fast float %5248, 0x3FAE8EC8A0000000
  %5250 = fmul fast float %5249, %4739
  %5251 = fmul fast float %5249, %4740
  %5252 = fmul fast float %5249, %4741
  %5253 = fmul fast float %4758, %4737
  %5254 = fsub fast float 1.000000e+00, %5253
  %5255 = fmul fast float %4737, %4737
  %5256 = fsub fast float 1.000000e+00, %5255
  %5257 = fmul fast float %5256, 0x3FB45F3060000000
  %5258 = fmul fast float %5254, %5254
  %5259 = fdiv fast float 1.000000e+00, %5258
  %5260 = fmul fast float %5257, %5259
  %5261 = fmul fast float %5260, %4734
  %5262 = fmul fast float %5260, %4735
  %5263 = fmul fast float %5260, %4736
  %5264 = fadd fast float %5261, %5250
  %5265 = fadd fast float %5262, %5251
  %5266 = fadd fast float %5263, %5252
  %5267 = fsub fast float 1.000000e+00, %5244
  %5268 = fsub fast float 1.000000e+00, %5245
  %5269 = fsub fast float 1.000000e+00, %5246
  %5270 = fmul fast float %5264, %5267
  %5271 = fmul fast float %5265, %5268
  %5272 = fmul fast float %5266, %5269
  br label %5273

; <label>:5273                                    ; preds = %5234, %5185
  %5274 = phi float [ %5211, %5185 ], [ %5270, %5234 ]
  %5275 = phi float [ %5212, %5185 ], [ %5271, %5234 ]
  %5276 = phi float [ %5213, %5185 ], [ %5272, %5234 ]
  %5277 = phi float [ %5200, %5185 ], [ %5244, %5234 ]
  %5278 = phi float [ %5200, %5185 ], [ %5245, %5234 ]
  %5279 = phi float [ %5200, %5185 ], [ %5246, %5234 ]
  br i1 %4766, label %5280, label %5478, !dx.controlflow.hints !148

; <label>:5280                                    ; preds = %5273
  %5281 = extractvalue %dx.types.CBufRet.f32 %5179, 0
  %5282 = fmul fast float %5281, %5181
  %5283 = fsub fast float %5176, %5274
  %5284 = fsub fast float %5177, %5275
  %5285 = fsub fast float %5178, %5276
  %5286 = fmul fast float %5282, %5283
  %5287 = fmul fast float %5282, %5284
  %5288 = fmul fast float %5282, %5285
  %5289 = fadd fast float %5286, %5274
  %5290 = fadd fast float %5287, %5275
  %5291 = fadd fast float %5288, %5276
  %5292 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5277)  ; FMax(a,b)
  %5293 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5278)  ; FMax(a,b)
  %5294 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5279)  ; FMax(a,b)
  %5295 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5175)  ; FMax(a,b)
  %5296 = call float @dx.op.binary.f32(i32 35, float %5174, float %5184)  ; FMax(a,b)
  %5297 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5296)  ; FMax(a,b)
  %5298 = fdiv fast float %5174, %5297
  %5299 = call float @dx.op.unary.f32(i32 7, float %5298)  ; Saturate(value)
  %5300 = fdiv fast float %5184, %5297
  %5301 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5302 = fcmp fast une float %5295, 1.000000e+00
  br i1 %5302, label %5303, label %5316, !dx.controlflow.hints !149

; <label>:5303                                    ; preds = %5280
  %5304 = call float @dx.op.unary.f32(i32 23, float %5295)  ; Log(value)
  %5305 = fmul fast float %5304, 0x3FE62E4300000000
  %5306 = fmul fast float %5176, %5305
  %5307 = fsub fast float -0.000000e+00, %5306
  %5308 = fmul fast float %5177, %5305
  %5309 = fsub fast float -0.000000e+00, %5308
  %5310 = fmul fast float %5178, %5305
  %5311 = fsub fast float -0.000000e+00, %5310
  %5312 = fsub fast float 1.000000e+00, %5295
  %5313 = fdiv fast float %5307, %5312
  %5314 = fdiv fast float %5309, %5312
  %5315 = fdiv fast float %5311, %5312
  br label %5316

; <label>:5316                                    ; preds = %5303, %5280
  %5317 = phi float [ %5313, %5303 ], [ %5176, %5280 ]
  %5318 = phi float [ %5314, %5303 ], [ %5177, %5280 ]
  %5319 = phi float [ %5315, %5303 ], [ %5178, %5280 ]
  %5320 = phi float [ %5305, %5303 ], [ 0.000000e+00, %5280 ]
  %5321 = fcmp fast une float %5292, 1.000000e+00
  br i1 %5321, label %5322, label %5329, !dx.controlflow.hints !150

; <label>:5322                                    ; preds = %5316
  %5323 = call float @dx.op.unary.f32(i32 23, float %5292)  ; Log(value)
  %5324 = fmul fast float %5323, 0x3FE62E4300000000
  %5325 = fmul fast float %5289, %5324
  %5326 = fsub fast float -0.000000e+00, %5325
  %5327 = fsub fast float 1.000000e+00, %5292
  %5328 = fdiv fast float %5326, %5327
  br label %5329

; <label>:5329                                    ; preds = %5322, %5316
  %5330 = phi float [ %5328, %5322 ], [ %5289, %5316 ]
  %5331 = phi float [ %5324, %5322 ], [ 0.000000e+00, %5316 ]
  %5332 = fcmp fast une float %5293, 1.000000e+00
  br i1 %5332, label %5333, label %5340, !dx.controlflow.hints !150

; <label>:5333                                    ; preds = %5329
  %5334 = call float @dx.op.unary.f32(i32 23, float %5293)  ; Log(value)
  %5335 = fmul fast float %5334, 0x3FE62E4300000000
  %5336 = fmul fast float %5290, %5335
  %5337 = fsub fast float -0.000000e+00, %5336
  %5338 = fsub fast float 1.000000e+00, %5293
  %5339 = fdiv fast float %5337, %5338
  br label %5340

; <label>:5340                                    ; preds = %5333, %5329
  %5341 = phi float [ %5339, %5333 ], [ %5290, %5329 ]
  %5342 = phi float [ %5335, %5333 ], [ 0.000000e+00, %5329 ]
  %5343 = fcmp fast une float %5294, 1.000000e+00
  br i1 %5343, label %5344, label %5351, !dx.controlflow.hints !150

; <label>:5344                                    ; preds = %5340
  %5345 = call float @dx.op.unary.f32(i32 23, float %5294)  ; Log(value)
  %5346 = fmul fast float %5345, 0x3FE62E4300000000
  %5347 = fmul fast float %5291, %5346
  %5348 = fsub fast float -0.000000e+00, %5347
  %5349 = fsub fast float 1.000000e+00, %5294
  %5350 = fdiv fast float %5348, %5349
  br label %5351

; <label>:5351                                    ; preds = %5344, %5340
  %5352 = phi float [ %5350, %5344 ], [ %5291, %5340 ]
  %5353 = phi float [ %5346, %5344 ], [ 0.000000e+00, %5340 ]
  %5354 = fmul fast float %5317, %5301
  %5355 = fmul fast float %5318, %5301
  %5356 = fmul fast float %5319, %5301
  %5357 = fmul fast float %5320, %5301
  %5358 = fmul fast float %5330, %5299
  %5359 = fmul fast float %5341, %5299
  %5360 = fmul fast float %5352, %5299
  %5361 = fmul fast float %5331, %5299
  %5362 = fmul fast float %5342, %5299
  %5363 = fmul fast float %5353, %5299
  %5364 = fadd fast float %5358, %5354
  %5365 = fadd fast float %5359, %5355
  %5366 = fadd fast float %5360, %5356
  %5367 = fadd fast float %5361, %5357
  %5368 = fadd fast float %5362, %5357
  %5369 = fadd fast float %5363, %5357
  %5370 = fcmp fast une float %5367, 0.000000e+00
  br i1 %5370, label %5371, label %5378, !dx.controlflow.hints !151

; <label>:5371                                    ; preds = %5351
  %5372 = fmul fast float %5367, 0x3FF7154760000000
  %5373 = call float @dx.op.unary.f32(i32 21, float %5372)  ; Exp(value)
  %5374 = fsub fast float 1.000000e+00, %5373
  %5375 = fmul fast float %5364, %5374
  %5376 = fsub fast float -0.000000e+00, %5375
  %5377 = fdiv fast float %5376, %5367
  br label %5378

; <label>:5378                                    ; preds = %5371, %5351
  %5379 = phi float [ %5373, %5371 ], [ 1.000000e+00, %5351 ]
  %5380 = phi float [ %5377, %5371 ], [ %5364, %5351 ]
  %5381 = fcmp fast une float %5368, 0.000000e+00
  br i1 %5381, label %5382, label %5389, !dx.controlflow.hints !151

; <label>:5382                                    ; preds = %5378
  %5383 = fmul fast float %5368, 0x3FF7154760000000
  %5384 = call float @dx.op.unary.f32(i32 21, float %5383)  ; Exp(value)
  %5385 = fsub fast float 1.000000e+00, %5384
  %5386 = fmul fast float %5365, %5385
  %5387 = fsub fast float -0.000000e+00, %5386
  %5388 = fdiv fast float %5387, %5368
  br label %5389

; <label>:5389                                    ; preds = %5382, %5378
  %5390 = phi float [ %5384, %5382 ], [ 1.000000e+00, %5378 ]
  %5391 = phi float [ %5388, %5382 ], [ %5365, %5378 ]
  %5392 = fcmp fast une float %5369, 0.000000e+00
  br i1 %5392, label %5393, label %5400, !dx.controlflow.hints !151

; <label>:5393                                    ; preds = %5389
  %5394 = fmul fast float %5369, 0x3FF7154760000000
  %5395 = call float @dx.op.unary.f32(i32 21, float %5394)  ; Exp(value)
  %5396 = fsub fast float 1.000000e+00, %5395
  %5397 = fmul fast float %5366, %5396
  %5398 = fsub fast float -0.000000e+00, %5397
  %5399 = fdiv fast float %5398, %5369
  br label %5400

; <label>:5400                                    ; preds = %5393, %5389
  %5401 = phi float [ %5395, %5393 ], [ 1.000000e+00, %5389 ]
  %5402 = phi float [ %5399, %5393 ], [ %5366, %5389 ]
  %5403 = fcmp fast ogt float %5299, %5301
  br i1 %5403, label %5404, label %5424

; <label>:5404                                    ; preds = %5400
  %5405 = fsub fast float 1.000000e+00, %5301
  %5406 = fmul fast float %5317, %5405
  %5407 = fmul fast float %5318, %5405
  %5408 = fmul fast float %5319, %5405
  %5409 = fmul fast float %5320, %5405
  %5410 = fcmp fast une float %5409, 0.000000e+00
  br i1 %5410, label %5411, label %5462, !dx.controlflow.hints !152

; <label>:5411                                    ; preds = %5404
  %5412 = fmul fast float %5409, 0x3FF7154760000000
  %5413 = call float @dx.op.unary.f32(i32 21, float %5412)  ; Exp(value)
  %5414 = fsub fast float 1.000000e+00, %5413
  %5415 = fmul fast float %5406, %5414
  %5416 = fsub fast float -0.000000e+00, %5415
  %5417 = fmul fast float %5407, %5414
  %5418 = fsub fast float -0.000000e+00, %5417
  %5419 = fmul fast float %5408, %5414
  %5420 = fsub fast float -0.000000e+00, %5419
  %5421 = fdiv fast float %5416, %5409
  %5422 = fdiv fast float %5418, %5409
  %5423 = fdiv fast float %5420, %5409
  br label %5462

; <label>:5424                                    ; preds = %5400
  %5425 = fsub fast float 1.000000e+00, %5299
  %5426 = fmul fast float %5330, %5425
  %5427 = fmul fast float %5341, %5425
  %5428 = fmul fast float %5352, %5425
  %5429 = fmul fast float %5331, %5425
  %5430 = fmul fast float %5342, %5425
  %5431 = fmul fast float %5353, %5425
  %5432 = fcmp fast une float %5429, 0.000000e+00
  br i1 %5432, label %5433, label %5440, !dx.controlflow.hints !151

; <label>:5433                                    ; preds = %5424
  %5434 = fmul fast float %5429, 0x3FF7154760000000
  %5435 = call float @dx.op.unary.f32(i32 21, float %5434)  ; Exp(value)
  %5436 = fsub fast float 1.000000e+00, %5435
  %5437 = fmul fast float %5426, %5436
  %5438 = fsub fast float -0.000000e+00, %5437
  %5439 = fdiv fast float %5438, %5429
  br label %5440

; <label>:5440                                    ; preds = %5433, %5424
  %5441 = phi float [ %5439, %5433 ], [ %5426, %5424 ]
  %5442 = phi float [ %5435, %5433 ], [ 1.000000e+00, %5424 ]
  %5443 = fcmp fast une float %5430, 0.000000e+00
  br i1 %5443, label %5444, label %5451, !dx.controlflow.hints !151

; <label>:5444                                    ; preds = %5440
  %5445 = fmul fast float %5430, 0x3FF7154760000000
  %5446 = call float @dx.op.unary.f32(i32 21, float %5445)  ; Exp(value)
  %5447 = fsub fast float 1.000000e+00, %5446
  %5448 = fmul fast float %5427, %5447
  %5449 = fsub fast float -0.000000e+00, %5448
  %5450 = fdiv fast float %5449, %5430
  br label %5451

; <label>:5451                                    ; preds = %5444, %5440
  %5452 = phi float [ %5450, %5444 ], [ %5427, %5440 ]
  %5453 = phi float [ %5446, %5444 ], [ 1.000000e+00, %5440 ]
  %5454 = fcmp fast une float %5431, 0.000000e+00
  br i1 %5454, label %5455, label %5462, !dx.controlflow.hints !151

; <label>:5455                                    ; preds = %5451
  %5456 = fmul fast float %5431, 0x3FF7154760000000
  %5457 = call float @dx.op.unary.f32(i32 21, float %5456)  ; Exp(value)
  %5458 = fsub fast float 1.000000e+00, %5457
  %5459 = fmul fast float %5428, %5458
  %5460 = fsub fast float -0.000000e+00, %5459
  %5461 = fdiv fast float %5460, %5431
  br label %5462

; <label>:5462                                    ; preds = %5455, %5451, %5411, %5404
  %5463 = phi float [ %5461, %5455 ], [ %5423, %5411 ], [ %5408, %5404 ], [ %5428, %5451 ]
  %5464 = phi float [ %5452, %5455 ], [ %5422, %5411 ], [ %5407, %5404 ], [ %5452, %5451 ]
  %5465 = phi float [ %5441, %5455 ], [ %5421, %5411 ], [ %5406, %5404 ], [ %5441, %5451 ]
  %5466 = phi float [ %5457, %5455 ], [ %5413, %5411 ], [ 1.000000e+00, %5404 ], [ 1.000000e+00, %5451 ]
  %5467 = phi float [ %5453, %5455 ], [ %5413, %5411 ], [ 1.000000e+00, %5404 ], [ %5453, %5451 ]
  %5468 = phi float [ %5442, %5455 ], [ %5413, %5411 ], [ 1.000000e+00, %5404 ], [ %5442, %5451 ]
  %5469 = fmul fast float %5468, %5380
  %5470 = fmul fast float %5467, %5391
  %5471 = fmul fast float %5466, %5402
  %5472 = fadd fast float %5469, %5465
  %5473 = fadd fast float %5470, %5464
  %5474 = fadd fast float %5471, %5463
  %5475 = fmul fast float %5468, %5379
  %5476 = fmul fast float %5467, %5390
  %5477 = fmul fast float %5466, %5401
  br label %5478

; <label>:5478                                    ; preds = %5462, %5273
  %5479 = phi float [ %5477, %5462 ], [ %5279, %5273 ]
  %5480 = phi float [ %5476, %5462 ], [ %5278, %5273 ]
  %5481 = phi float [ %5475, %5462 ], [ %5277, %5273 ]
  %5482 = phi float [ %5474, %5462 ], [ %5276, %5273 ]
  %5483 = phi float [ %5473, %5462 ], [ %5275, %5273 ]
  %5484 = phi float [ %5472, %5462 ], [ %5274, %5273 ]
  %5485 = fmul fast float %5484, %4438
  %5486 = fmul fast float %5483, %4438
  %5487 = fmul fast float %5482, %4438
  %5488 = fmul fast float %5481, %4721
  %5489 = call float @dx.op.dot3.f32(i32 55, float %5481, float %5480, float %5479, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5490 = call float @dx.op.dot3.f32(i32 55, float %5485, float %5486, float %5487, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5491 = select i1 %222, float %5489, float %5481
  %5492 = select i1 %222, float %5489, float %5480
  %5493 = select i1 %222, float 1.000000e+00, float %5479
  %5494 = select i1 %222, float %5490, float %5485
  %5495 = select i1 %222, float 0.000000e+00, float %5486
  %5496 = select i1 %222, float 0.000000e+00, float %5487
  %5497 = fmul fast float %5491, %4715
  %5498 = fmul fast float %5492, %4716
  %5499 = fmul fast float %5493, %4717
  %5500 = fadd fast float %5497, %5494
  %5501 = fadd fast float %5498, %5495
  %5502 = fadd fast float %5496, %5499
  %5503 = fmul fast float %5491, %4718
  %5504 = fmul fast float %5492, %4719
  %5505 = fmul fast float %5493, %4720
  %5506 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5507 = extractvalue %dx.types.CBufRet.i32 %5506, 0
  %5508 = icmp eq i32 %5507, 0
  br i1 %5508, label %5876, label %5509, !dx.controlflow.hints !153

; <label>:5509                                    ; preds = %5478
  %5510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5511 = extractvalue %dx.types.CBufRet.f32 %5510, 2
  %5512 = extractvalue %dx.types.CBufRet.f32 %5510, 3
  %5513 = fmul fast float %5511, %82
  %5514 = fmul fast float %5512, %83
  %5515 = fmul fast float %5513, 2.000000e+00
  %5516 = fmul fast float %5514, 2.000000e+00
  %5517 = fsub fast float 1.000000e+00, %5515
  %5518 = fsub fast float 1.000000e+00, %5516
  %5519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5520 = extractvalue %dx.types.CBufRet.f32 %5519, 0
  %5521 = extractvalue %dx.types.CBufRet.f32 %5519, 1
  %5522 = extractvalue %dx.types.CBufRet.f32 %5519, 2
  %5523 = fmul fast float %5517, %5520
  %5524 = fmul fast float %5517, %5521
  %5525 = fmul fast float %5517, %5522
  %5526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5527 = extractvalue %dx.types.CBufRet.f32 %5526, 0
  %5528 = extractvalue %dx.types.CBufRet.f32 %5526, 1
  %5529 = extractvalue %dx.types.CBufRet.f32 %5526, 2
  %5530 = fmul fast float %5518, %5527
  %5531 = fmul fast float %5518, %5528
  %5532 = fmul fast float %5518, %5529
  %5533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5533, 0
  %5535 = extractvalue %dx.types.CBufRet.f32 %5533, 1
  %5536 = extractvalue %dx.types.CBufRet.f32 %5533, 2
  %5537 = fadd fast float %5530, %5534
  %5538 = fadd fast float %5537, %5523
  %5539 = fadd fast float %5531, %5535
  %5540 = fadd fast float %5539, %5524
  %5541 = fadd fast float %5532, %5536
  %5542 = fadd fast float %5541, %5525
  %5543 = fmul fast float %5538, %4714
  %5544 = fmul fast float %5540, %4714
  %5545 = fmul fast float %5542, %4714
  %5546 = fmul fast float %5543, %5543
  %5547 = fmul fast float %5544, %5544
  %5548 = fadd fast float %5546, %5547
  %5549 = fmul fast float %5545, %5545
  %5550 = fadd fast float %5548, %5549
  %5551 = call float @dx.op.unary.f32(i32 24, float %5550)  ; Sqrt(value)
  %5552 = extractvalue %dx.types.CBufRet.f32 %4439, 0
  %5553 = fsub fast float %5551, %5552
  %5554 = extractvalue %dx.types.CBufRet.f32 %4439, 2
  %5555 = fmul fast float %5553, %5554
  %5556 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  %5557 = fadd fast float %5556, -5.000000e-01
  %5558 = fmul fast float %5557, 2.000000e+00
  %5559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %5560 = extractvalue %dx.types.CBufRet.f32 %5559, 2
  %5561 = call float @dx.op.binary.f32(i32 36, float %5560, float %5558)  ; FMin(a,b)
  %5562 = fsub fast float -0.000000e+00, %5560
  %5563 = fcmp fast ogt float %5561, %5562
  br i1 %5563, label %5564, label %5876, !dx.controlflow.hints !154

; <label>:5564                                    ; preds = %5509
  %5565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %5566 = extractvalue %dx.types.CBufRet.f32 %5565, 3
  %5567 = fcmp fast ogt float %5566, 0.000000e+00
  br i1 %5567, label %5568, label %5643, !dx.controlflow.hints !155

; <label>:5568                                    ; preds = %5564
  %5569 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %5570 = extractvalue %dx.types.Dimensions %5569, 0
  %5571 = sitofp i32 %5570 to float
  %5572 = extractvalue %dx.types.Dimensions %5569, 1
  %5573 = sitofp i32 %5572 to float
  %5574 = fmul fast float %5513, %5571
  %5575 = fmul fast float %5514, %5573
  %5576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5577 = extractvalue %dx.types.CBufRet.f32 %5576, 1
  %5578 = fsub fast float -0.000000e+00, %5577
  %5579 = fptoui float %5578 to i32
  %5580 = fptoui float %5574 to i32
  %5581 = fptoui float %5575 to i32
  %5582 = and i32 %5579, 31
  %5583 = lshr i32 %5580, %5582
  %5584 = lshr i32 %5581, %5582
  %5585 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 %5579, i32 %5583, i32 %5584, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5586 = extractvalue %dx.types.ResRet.f32 %5585, 0
  %5587 = fcmp fast olt float %5586, -1.000000e+00
  %5588 = fcmp fast ogt float %5586, -1.000000e+00
  %5589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5590 = extractvalue %dx.types.CBufRet.f32 %5589, 1
  %5591 = select i1 %5588, float %5590, float 1.000000e+00
  %5592 = fadd fast float %5586, 1.000000e+00
  %5593 = fmul fast float %5591, %5592
  %5594 = call float @dx.op.unary.f32(i32 6, float %5593)  ; FAbs(value)
  %5595 = extractvalue %dx.types.CBufRet.f32 %5589, 3
  %5596 = fcmp fast oge float %5594, %5595
  %5597 = select i1 %5596, float 0x4197782600000000, float %5594
  %5598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %5599 = extractvalue %dx.types.CBufRet.f32 %5598, 0
  %5600 = extractvalue %dx.types.CBufRet.f32 %5598, 1
  %5601 = extractvalue %dx.types.CBufRet.f32 %5598, 2
  %5602 = select i1 %5587, float %5599, float %5520
  %5603 = select i1 %5587, float %5600, float %5521
  %5604 = select i1 %5587, float %5601, float %5522
  %5605 = fmul fast float %5602, %5517
  %5606 = fmul fast float %5603, %5517
  %5607 = fmul fast float %5604, %5517
  %5608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %5609 = extractvalue %dx.types.CBufRet.f32 %5608, 0
  %5610 = extractvalue %dx.types.CBufRet.f32 %5608, 1
  %5611 = extractvalue %dx.types.CBufRet.f32 %5608, 2
  %5612 = select i1 %5587, float %5609, float %5527
  %5613 = select i1 %5587, float %5610, float %5528
  %5614 = select i1 %5587, float %5611, float %5529
  %5615 = fmul fast float %5612, %5518
  %5616 = fmul fast float %5613, %5518
  %5617 = fmul fast float %5614, %5518
  %5618 = fadd fast float %5615, %5605
  %5619 = fadd fast float %5616, %5606
  %5620 = fadd fast float %5617, %5607
  %5621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %5622 = extractvalue %dx.types.CBufRet.f32 %5621, 0
  %5623 = extractvalue %dx.types.CBufRet.f32 %5621, 1
  %5624 = extractvalue %dx.types.CBufRet.f32 %5621, 2
  %5625 = select i1 %5587, float %5622, float %5534
  %5626 = select i1 %5587, float %5623, float %5535
  %5627 = select i1 %5587, float %5624, float %5536
  %5628 = fadd fast float %5618, %5625
  %5629 = fadd fast float %5619, %5626
  %5630 = fadd fast float %5620, %5627
  %5631 = fmul fast float %5628, %5597
  %5632 = fmul fast float %5629, %5597
  %5633 = fmul fast float %5630, %5597
  %5634 = fmul fast float %5631, %5631
  %5635 = fmul fast float %5632, %5632
  %5636 = fadd fast float %5634, %5635
  %5637 = fmul fast float %5633, %5633
  %5638 = fadd fast float %5636, %5637
  %5639 = call float @dx.op.unary.f32(i32 24, float %5638)  ; Sqrt(value)
  %5640 = fsub fast float %5639, %5552
  %5641 = fmul fast float %5640, %5554
  %5642 = call float @dx.op.unary.f32(i32 7, float %5641)  ; Saturate(value)
  br label %5643

; <label>:5643                                    ; preds = %5568, %5564
  %5644 = phi float [ %5642, %5568 ], [ 1.000000e+00, %5564 ]
  %5645 = fmul fast float %5561, 5.000000e-01
  %5646 = fadd fast float %5645, 5.000000e-01
  %5647 = call float @dx.op.unary.f32(i32 22, float %5646)  ; Frc(value)
  %5648 = call float @dx.op.unary.f32(i32 27, float %5647)  ; Round_ni(value)
  %5649 = call float @dx.op.unary.f32(i32 22, float %5647)  ; Frc(value)
  %5650 = fmul fast float %5649, 2.000000e+00
  %5651 = fadd fast float %5650, -1.000000e+00
  %5652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %38, float %5513, float %5514, float %5648, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5653 = extractvalue %dx.types.ResRet.f32 %5652, 0
  %5654 = extractvalue %dx.types.ResRet.f32 %5652, 1
  %5655 = extractvalue %dx.types.ResRet.f32 %5652, 2
  %5656 = extractvalue %dx.types.ResRet.f32 %5652, 3
  %5657 = fadd fast float %5653, -5.000000e-01
  %5658 = fadd fast float %5655, -5.000000e-01
  %5659 = fmul fast float %5657, 0xBFD5555560000000
  %5660 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5658, float %5659)  ; FMad(a,b,c)
  %5661 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5654, float 0.000000e+00)  ; FMad(a,b,c)
  %5662 = fadd fast float %5661, %5656
  %5663 = fmul fast float %5657, -7.500000e-01
  %5664 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5658, float %5663)  ; FMad(a,b,c)
  %5665 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5654, float 0.000000e+00)  ; FMad(a,b,c)
  %5666 = fadd fast float %5665, %5656
  %5667 = call float @dx.op.binary.f32(i32 35, float %5660, float -1.000000e+00)  ; FMax(a,b)
  %5668 = call float @dx.op.binary.f32(i32 35, float %5662, float -1.000000e+00)  ; FMax(a,b)
  %5669 = call float @dx.op.binary.f32(i32 35, float %5664, float -1.000000e+00)  ; FMax(a,b)
  %5670 = call float @dx.op.binary.f32(i32 35, float %5666, float -1.000000e+00)  ; FMax(a,b)
  %5671 = call float @dx.op.binary.f32(i32 36, float %5667, float 1.000000e+00)  ; FMin(a,b)
  %5672 = call float @dx.op.binary.f32(i32 36, float %5668, float 1.000000e+00)  ; FMin(a,b)
  %5673 = call float @dx.op.binary.f32(i32 36, float %5669, float 1.000000e+00)  ; FMin(a,b)
  %5674 = call float @dx.op.binary.f32(i32 36, float %5670, float 1.000000e+00)  ; FMin(a,b)
  %5675 = fcmp fast olt float %5671, 0x3FEFFF8020000000
  br i1 %5675, label %5676, label %5791, !dx.controlflow.hints !156

; <label>:5676                                    ; preds = %5643
  %5677 = extractvalue %dx.types.CBufRet.f32 %5559, 3
  %5678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %5679 = extractvalue %dx.types.CBufRet.f32 %5678, 0
  %5680 = extractvalue %dx.types.CBufRet.f32 %5678, 1
  %5681 = extractvalue %dx.types.CBufRet.f32 %5678, 2
  %5682 = extractvalue %dx.types.CBufRet.f32 %5678, 3
  %5683 = fsub fast float %5679, %5671
  %5684 = fsub fast float %5680, %5672
  %5685 = fsub fast float %5681, %5673
  %5686 = fsub fast float %5682, %5674
  %5687 = fmul fast float %5683, %5677
  %5688 = fmul fast float %5684, %5677
  %5689 = fmul fast float %5685, %5677
  %5690 = fmul fast float %5686, %5677
  %5691 = fadd fast float %5687, %5671
  %5692 = fadd fast float %5688, %5672
  %5693 = fsub fast float -0.000000e+00, %5692
  %5694 = fadd fast float %5689, %5673
  %5695 = fadd fast float %5690, %5674
  %5696 = fmul fast float %5691, %5691
  %5697 = fsub fast float %5692, %5696
  %5698 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5697)  ; FMax(a,b)
  %5699 = fdiv fast float 1.000000e+00, %5698
  %5700 = fmul fast float %5692, %5691
  %5701 = fsub fast float %5694, %5700
  %5702 = fsub fast float %5651, %5691
  %5703 = fmul fast float %5651, %5651
  %5704 = fsub fast float %5703, %5692
  %5705 = fmul fast float %5702, %5699
  %5706 = fmul fast float %5705, %5701
  %5707 = fsub fast float %5704, %5706
  %5708 = fmul fast float %5692, %5692
  %5709 = fsub fast float %5695, %5708
  %5710 = fmul fast float %5701, %5701
  %5711 = fmul fast float %5710, %5699
  %5712 = fsub fast float %5709, %5711
  %5713 = fdiv fast float %5707, %5712
  %5714 = fmul fast float %5701, %5713
  %5715 = fsub fast float %5702, %5714
  %5716 = fmul fast float %5715, %5699
  %5717 = fmul fast float %5716, %5691
  %5718 = fsub fast float 1.000000e+00, %5717
  %5719 = fmul fast float %5692, %5713
  %5720 = fsub fast float %5718, %5719
  %5721 = fmul fast float %5716, %5716
  %5722 = fmul fast float %5713, 4.000000e+00
  %5723 = fmul fast float %5722, %5720
  %5724 = fsub fast float %5721, %5723
  %5725 = call float @dx.op.unary.f32(i32 24, float %5724)  ; Sqrt(value)
  %5726 = fcmp fast oge float %5716, 0.000000e+00
  %5727 = fsub fast float -0.000000e+00, %5725
  %5728 = select i1 %5726, float %5727, float %5725
  %5729 = fsub fast float %5728, %5716
  %5730 = fdiv fast float %5729, %5713
  %5731 = fdiv fast float %5720, %5729
  %5732 = fmul fast float %5730, 5.000000e-01
  %5733 = fmul fast float %5731, 2.000000e+00
  %5734 = select i1 %5726, float %5732, float %5733
  %5735 = select i1 %5726, float %5733, float %5732
  %5736 = call float @dx.op.binary.f32(i32 35, float %5734, float %5735)  ; FMax(a,b)
  %5737 = call float @dx.op.binary.f32(i32 36, float %5734, float %5735)  ; FMin(a,b)
  %5738 = fcmp fast ogt float %5651, %5737
  br i1 %5738, label %5739, label %5749

; <label>:5739                                    ; preds = %5676
  %5740 = fsub fast float %5651, %5737
  %5741 = fsub fast float %5736, %5737
  %5742 = fmul fast float %5740, %5741
  %5743 = fmul fast float %5736, %5651
  %5744 = fadd fast float %5736, %5651
  %5745 = fmul fast float %5744, %5691
  %5746 = fadd fast float %5743, %5692
  %5747 = fsub fast float %5746, %5745
  %5748 = fdiv fast float %5747, %5742
  br label %5749

; <label>:5749                                    ; preds = %5739, %5676
  %5750 = phi float [ %5748, %5739 ], [ 0.000000e+00, %5676 ]
  %5751 = fcmp fast ogt float %5651, %5736
  %5752 = fsub fast float %5651, %5736
  br i1 %5751, label %5753, label %5763

; <label>:5753                                    ; preds = %5749
  %5754 = fsub fast float %5736, %5737
  %5755 = fmul fast float %5754, %5752
  %5756 = fmul fast float %5737, %5651
  %5757 = fadd fast float %5737, %5651
  %5758 = fmul fast float %5757, %5691
  %5759 = fsub fast float %5693, %5756
  %5760 = fadd fast float %5759, %5758
  %5761 = fdiv fast float %5760, %5755
  %5762 = fadd fast float %5761, %5750
  br label %5763

; <label>:5763                                    ; preds = %5753, %5749
  %5764 = phi float [ %5762, %5753 ], [ %5750, %5749 ]
  %5765 = fsub fast float %5651, %5737
  %5766 = fmul fast float %5765, %5752
  %5767 = fmul fast float %5737, %5736
  %5768 = fadd fast float %5737, %5736
  %5769 = fmul fast float %5768, %5691
  %5770 = fadd fast float %5767, %5692
  %5771 = fsub fast float %5770, %5769
  %5772 = fdiv fast float %5771, %5766
  %5773 = call float @dx.op.unary.f32(i32 7, float %5764)  ; Saturate(value)
  %5774 = fcmp fast oeq float %4440, 0.000000e+00
  %5775 = extractvalue %dx.types.CBufRet.f32 %5559, 0
  %5776 = fcmp fast oeq float %5775, 0.000000e+00
  %5777 = or i1 %5774, %5776
  %5778 = fmul fast float %5775, 2.000000e+00
  %5779 = fadd fast float %5560, %5561
  %5780 = fdiv fast float %5779, %5778
  %5781 = call float @dx.op.unary.f32(i32 7, float %5780)  ; Saturate(value)
  %5782 = fmul fast float %5781, 2.000000e+00
  %5783 = fsub fast float 3.000000e+00, %5782
  %5784 = fmul fast float %5781, %5781
  %5785 = fmul fast float %5784, %5783
  %5786 = select i1 %5777, float 1.000000e+00, float %5785
  %5787 = fmul fast float %5772, %4440
  %5788 = fadd fast float %5773, %5787
  %5789 = call float @dx.op.unary.f32(i32 7, float %5788)  ; Saturate(value)
  %5790 = fmul fast float %5786, %5789
  br label %5791

; <label>:5791                                    ; preds = %5763, %5643
  %5792 = phi float [ %5790, %5763 ], [ 0.000000e+00, %5643 ]
  %5793 = fsub fast float 1.000000e+00, %5792
  %5794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %38, float %5513, float %5514, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5795 = extractvalue %dx.types.ResRet.f32 %5794, 0
  %5796 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %5797 = extractvalue %dx.types.CBufRet.i32 %5796, 2
  %5798 = icmp eq i32 %5797, 0
  br i1 %5798, label %5804, label %5799

; <label>:5799                                    ; preds = %5791
  %5800 = call float @dx.op.unary.f32(i32 7, float %5792)  ; Saturate(value)
  %5801 = fadd fast float %5795, -1.000000e+00
  %5802 = fmul fast float %5800, %5801
  %5803 = fadd fast float %5802, 1.000000e+00
  br label %5804

; <label>:5804                                    ; preds = %5799, %5791
  %5805 = phi float [ %5803, %5799 ], [ %5793, %5791 ]
  br i1 %5567, label %5806, label %5824

; <label>:5806                                    ; preds = %5804
  %5807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5808 = extractvalue %dx.types.CBufRet.f32 %5807, 1
  %5809 = fsub fast float %5644, %5808
  %5810 = call float @dx.op.unary.f32(i32 7, float %5809)  ; Saturate(value)
  %5811 = fsub fast float %5644, %5566
  %5812 = call float @dx.op.unary.f32(i32 7, float %5811)  ; Saturate(value)
  %5813 = fsub fast float %5810, %5812
  %5814 = fsub fast float %5646, %5812
  %5815 = fdiv fast float %5814, %5813
  %5816 = call float @dx.op.unary.f32(i32 7, float %5815)  ; Saturate(value)
  %5817 = fmul fast float %5816, 2.000000e+00
  %5818 = fsub fast float 3.000000e+00, %5817
  %5819 = fsub fast float %5795, %5805
  %5820 = fmul fast float %5816, %5816
  %5821 = fmul fast float %5820, %5819
  %5822 = fmul fast float %5821, %5818
  %5823 = fadd fast float %5822, %5805
  br label %5824

; <label>:5824                                    ; preds = %5806, %5804
  %5825 = phi float [ %5823, %5806 ], [ %5805, %5804 ]
  %5826 = call float @dx.op.binary.f32(i32 35, float %5795, float %5825)  ; FMax(a,b)
  %5827 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %5828 = extractvalue %dx.types.CBufRet.i32 %5827, 2
  %5829 = and i32 %5828, 1
  %5830 = icmp eq i32 %5829, 0
  %5831 = fcmp fast une float %5826, 1.000000e+00
  %5832 = and i1 %5831, %5830
  br i1 %5832, label %5833, label %5852

; <label>:5833                                    ; preds = %5824
  %5834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %38, float %5513, float %5514, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5835 = extractvalue %dx.types.ResRet.f32 %5834, 0
  %5836 = extractvalue %dx.types.ResRet.f32 %5834, 1
  %5837 = extractvalue %dx.types.ResRet.f32 %5834, 2
  %5838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5839 = extractvalue %dx.types.CBufRet.f32 %5838, 1
  %5840 = fmul fast float %5839, %5835
  %5841 = fmul fast float %5839, %5836
  %5842 = fmul fast float %5839, %5837
  %5843 = fcmp fast ogt float %5795, 0x3FEFFF2E40000000
  %5844 = fsub fast float 1.000000e+00, %5826
  %5845 = fsub fast float 1.000000e+00, %5795
  %5846 = fdiv fast float %5844, %5845
  %5847 = call float @dx.op.unary.f32(i32 7, float %5846)  ; Saturate(value)
  %5848 = select i1 %5843, float 0.000000e+00, float %5847
  %5849 = fmul fast float %5840, %5848
  %5850 = fmul fast float %5841, %5848
  %5851 = fmul fast float %5842, %5848
  br label %5852

; <label>:5852                                    ; preds = %5833, %5824
  %5853 = phi float [ 0.000000e+00, %5824 ], [ %5849, %5833 ]
  %5854 = phi float [ 0.000000e+00, %5824 ], [ %5850, %5833 ]
  %5855 = phi float [ 0.000000e+00, %5824 ], [ %5851, %5833 ]
  %5856 = fmul fast float %5853, %4438
  %5857 = fmul fast float %5854, %4438
  %5858 = fmul fast float %5855, %4438
  %5859 = fmul fast float %5826, %5488
  %5860 = call float @dx.op.dot3.f32(i32 55, float %5826, float %5826, float %5826, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5861 = call float @dx.op.dot3.f32(i32 55, float %5856, float %5857, float %5858, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5862 = select i1 %222, float %5860, float %5826
  %5863 = select i1 %222, float 1.000000e+00, float %5826
  %5864 = select i1 %222, float %5861, float %5856
  %5865 = select i1 %222, float 0.000000e+00, float %5857
  %5866 = select i1 %222, float 0.000000e+00, float %5858
  %5867 = fmul fast float %5862, %5500
  %5868 = fmul fast float %5862, %5501
  %5869 = fmul fast float %5863, %5502
  %5870 = fadd fast float %5867, %5864
  %5871 = fadd fast float %5868, %5865
  %5872 = fadd fast float %5866, %5869
  %5873 = fmul fast float %5862, %5503
  %5874 = fmul fast float %5862, %5504
  %5875 = fmul fast float %5863, %5505
  br label %5876

; <label>:5876                                    ; preds = %5852, %5509, %5478, %4710
  %5877 = phi float [ %4715, %4710 ], [ %5500, %5478 ], [ %5870, %5852 ], [ %5500, %5509 ]
  %5878 = phi float [ %4716, %4710 ], [ %5501, %5478 ], [ %5871, %5852 ], [ %5501, %5509 ]
  %5879 = phi float [ %4717, %4710 ], [ %5502, %5478 ], [ %5872, %5852 ], [ %5502, %5509 ]
  %5880 = phi float [ %4718, %4710 ], [ %5503, %5478 ], [ %5873, %5852 ], [ %5503, %5509 ]
  %5881 = phi float [ %4719, %4710 ], [ %5504, %5478 ], [ %5874, %5852 ], [ %5504, %5509 ]
  %5882 = phi float [ %4720, %4710 ], [ %5505, %5478 ], [ %5875, %5852 ], [ %5505, %5509 ]
  %5883 = phi float [ %4721, %4710 ], [ %5488, %5478 ], [ %5859, %5852 ], [ %5488, %5509 ]
  %5884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5884, 2
  %5886 = extractvalue %dx.types.CBufRet.f32 %5884, 3
  %5887 = fmul fast float %5885, %82
  %5888 = fmul fast float %5886, %83
  %5889 = call float @dx.op.unary.f32(i32 7, float %5887)  ; Saturate(value)
  %5890 = call float @dx.op.unary.f32(i32 7, float %5888)  ; Saturate(value)
  %5891 = select i1 %4450, i32 2, i32 0
  %5892 = or i32 %5891, 1
  %5893 = uitofp i32 %5892 to float
  %5894 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %5889, float %5890, float %5893, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5895 = extractvalue %dx.types.ResRet.f32 %5894, 0
  %5896 = extractvalue %dx.types.ResRet.f32 %5894, 1
  %5897 = extractvalue %dx.types.ResRet.f32 %5894, 2
  %5898 = extractvalue %dx.types.ResRet.f32 %5894, 3
  %5899 = add nuw nsw i32 %5891, 2
  %5900 = uitofp i32 %5899 to float
  %5901 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %38, float %5889, float %5890, float %5900, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5902 = extractvalue %dx.types.ResRet.f32 %5901, 0
  %5903 = extractvalue %dx.types.ResRet.f32 %5901, 1
  %5904 = extractvalue %dx.types.ResRet.f32 %5901, 2
  %5905 = extractvalue %dx.types.ResRet.f32 %5901, 3
  %5906 = call float @dx.op.binary.f32(i32 35, float %5896, float %5897)  ; FMax(a,b)
  %5907 = call float @dx.op.binary.f32(i32 35, float %5895, float %5906)  ; FMax(a,b)
  %5908 = call float @dx.op.binary.f32(i32 35, float %5907, float %5898)  ; FMax(a,b)
  %5909 = call float @dx.op.binary.f32(i32 36, float %5903, float %5904)  ; FMin(a,b)
  %5910 = call float @dx.op.binary.f32(i32 36, float %5902, float %5909)  ; FMin(a,b)
  %5911 = call float @dx.op.binary.f32(i32 36, float %5910, float %5905)  ; FMin(a,b)
  %5912 = fmul fast float %5908, 2.550000e+02
  %5913 = fadd fast float %5912, 0x3F70101020000000
  %5914 = fptoui float %5913 to i32
  %5915 = fmul fast float %5911, 2.550000e+02
  %5916 = fadd fast float %5915, 0x3F70101020000000
  %5917 = fptoui float %5916 to i32
  %5918 = icmp ult i32 %5914, %5917
  br i1 %5918, label %5919, label %6088

; <label>:5919                                    ; preds = %5876
  %5920 = fcmp fast ogt float %69, 9.843750e-01
  %5921 = fadd fast float %4714, -4.000000e+00
  %5922 = select i1 %5920, float -4.000000e+00, float %5921
  %5923 = call float @dx.op.binary.f32(i32 35, float %5922, float 0.000000e+00)  ; FMax(a,b)
  %5924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5925 = extractvalue %dx.types.CBufRet.f32 %5924, 0
  %5926 = fadd fast float %5925, %5923
  %5927 = extractvalue %dx.types.CBufRet.f32 %5924, 2
  %5928 = fmul fast float %5926, %5927
  %5929 = call float @dx.op.unary.f32(i32 23, float %5928)  ; Log(value)
  %5930 = extractvalue %dx.types.CBufRet.f32 %5924, 3
  %5931 = fmul fast float %5930, %5929
  %5932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5933 = extractvalue %dx.types.CBufRet.f32 %5932, 2
  %5934 = fmul fast float %5931, %5933
  %5935 = call float @dx.op.unary.f32(i32 7, float %5934)  ; Saturate(value)
  %5936 = uitofp i32 %5914 to float
  %5937 = uitofp i32 %5917 to float
  %5938 = fadd fast float %5936, 5.000000e-01
  %5939 = fadd fast float %5937, 5.000000e-01
  %5940 = fmul fast float %5933, %5938
  %5941 = fmul fast float %5933, %5939
  %5942 = fadd fast float %5940, 0x3F0FFB4800000000
  %5943 = fadd fast float %5941, 0xBF0FFB4800000000
  %5944 = call float @dx.op.binary.f32(i32 35, float %5935, float %5942)  ; FMax(a,b)
  %5945 = call float @dx.op.binary.f32(i32 36, float %5944, float %5943)  ; FMin(a,b)
  %5946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5947 = extractvalue %dx.types.CBufRet.f32 %5946, 1
  %5948 = extractvalue %dx.types.CBufRet.f32 %5946, 2
  %5949 = extractvalue %dx.types.CBufRet.f32 %5946, 0
  %5950 = select i1 %4450, float %5949, float 0.000000e+00
  %5951 = fmul fast float %5947, %5945
  %5952 = fadd fast float %5950, %5951
  %5953 = fadd fast float %5950, %5948
  %5954 = fsub fast float %5947, %5948
  %5955 = fadd fast float %5954, %5950
  %5956 = call float @dx.op.binary.f32(i32 35, float %5952, float %5953)  ; FMax(a,b)
  %5957 = call float @dx.op.binary.f32(i32 36, float %5956, float %5955)  ; FMin(a,b)
  %5958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %36, float %5889, float %5890, float %5957, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5959 = extractvalue %dx.types.ResRet.f32 %5958, 0
  %5960 = extractvalue %dx.types.ResRet.f32 %5958, 1
  %5961 = extractvalue %dx.types.ResRet.f32 %5958, 2
  %5962 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5963 = extractvalue %dx.types.CBufRet.i32 %5962, 0
  %5964 = extractvalue %dx.types.CBufRet.i32 %5962, 1
  %5965 = uitofp i32 %5963 to float
  %5966 = uitofp i32 %5964 to float
  %5967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5968 = extractvalue %dx.types.CBufRet.f32 %5967, 0
  %5969 = extractvalue %dx.types.CBufRet.f32 %5967, 1
  %5970 = fmul fast float %5965, %5889
  %5971 = fmul fast float %5966, %5890
  %5972 = fadd fast float %5970, -5.000000e-01
  %5973 = fadd fast float %5971, -5.000000e-01
  %5974 = call float @dx.op.unary.f32(i32 22, float %5972)  ; Frc(value)
  %5975 = call float @dx.op.unary.f32(i32 22, float %5973)  ; Frc(value)
  %5976 = fmul fast float %5974, %5974
  %5977 = fmul fast float %5976, %5974
  %5978 = fsub fast float 3.000000e+00, %5974
  %5979 = fmul fast float %5976, %5978
  %5980 = fmul fast float %5974, 3.000000e+00
  %5981 = fmul fast float %5977, 3.000000e+00
  %5982 = fmul fast float %5976, 6.000000e+00
  %5983 = fsub fast float %5981, %5982
  %5984 = fadd fast float %5983, 4.000000e+00
  %5985 = fmul fast float %5984, 0x3FC5555560000000
  %5986 = fmul fast float %5977, -3.000000e+00
  %5987 = fadd fast float %5976, %5974
  %5988 = fmul fast float %5987, 3.000000e+00
  %5989 = fadd fast float %5986, 1.000000e+00
  %5990 = fadd fast float %5989, %5988
  %5991 = fmul fast float %5977, 0x3FC5555560000000
  %5992 = fmul fast float %5975, %5975
  %5993 = fmul fast float %5992, %5975
  %5994 = fsub fast float 3.000000e+00, %5975
  %5995 = fmul fast float %5992, %5994
  %5996 = fmul fast float %5975, 3.000000e+00
  %5997 = fmul fast float %5993, 3.000000e+00
  %5998 = fmul fast float %5992, 6.000000e+00
  %5999 = fsub fast float %5997, %5998
  %6000 = fadd fast float %5999, 4.000000e+00
  %6001 = fmul fast float %6000, 0x3FC5555560000000
  %6002 = fmul fast float %5993, -3.000000e+00
  %6003 = fadd fast float %5992, %5975
  %6004 = fmul fast float %6003, 3.000000e+00
  %6005 = fadd fast float %6002, 1.000000e+00
  %6006 = fadd fast float %6005, %6004
  %6007 = fmul fast float %5993, 0x3FC5555560000000
  %6008 = fadd fast float %5974, 1.000000e+00
  %6009 = fsub fast float 1.000000e+00, %5980
  %6010 = fadd fast float %6009, %5979
  %6011 = fadd fast float %6010, %5984
  %6012 = fmul fast float %6011, 0x3FC5555560000000
  %6013 = fdiv fast float %5985, %6012
  %6014 = fsub fast float %6008, %6013
  %6015 = fsub fast float 1.000000e+00, %5974
  %6016 = fadd fast float %5990, %5977
  %6017 = fmul fast float %6016, 0x3FC5555560000000
  %6018 = fdiv fast float %5991, %6017
  %6019 = fadd fast float %6015, %6018
  %6020 = fadd fast float %5975, 1.000000e+00
  %6021 = fsub fast float 1.000000e+00, %5996
  %6022 = fadd fast float %6021, %5995
  %6023 = fadd fast float %6022, %6000
  %6024 = fmul fast float %6023, 0x3FC5555560000000
  %6025 = fdiv fast float %6001, %6024
  %6026 = fsub fast float %6020, %6025
  %6027 = fsub fast float 1.000000e+00, %5975
  %6028 = fadd fast float %6006, %5993
  %6029 = fmul fast float %6028, 0x3FC5555560000000
  %6030 = fdiv fast float %6007, %6029
  %6031 = fadd fast float %6030, %6027
  %6032 = fmul fast float %6014, %5968
  %6033 = fsub fast float %5889, %6032
  %6034 = fmul fast float %6019, %5968
  %6035 = fadd fast float %6034, %5889
  %6036 = fmul fast float %6031, %5969
  %6037 = fadd fast float %6036, %5890
  %6038 = fmul fast float %6026, %5969
  %6039 = fsub fast float %5890, %6038
  %6040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %6033, float %6039, float %5957, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6041 = extractvalue %dx.types.ResRet.f32 %6040, 0
  %6042 = extractvalue %dx.types.ResRet.f32 %6040, 1
  %6043 = extractvalue %dx.types.ResRet.f32 %6040, 2
  %6044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %6035, float %6039, float %5957, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6045 = extractvalue %dx.types.ResRet.f32 %6044, 0
  %6046 = extractvalue %dx.types.ResRet.f32 %6044, 1
  %6047 = extractvalue %dx.types.ResRet.f32 %6044, 2
  %6048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %6033, float %6037, float %5957, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6049 = extractvalue %dx.types.ResRet.f32 %6048, 0
  %6050 = extractvalue %dx.types.ResRet.f32 %6048, 1
  %6051 = extractvalue %dx.types.ResRet.f32 %6048, 2
  %6052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %36, float %6035, float %6037, float %5957, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6053 = extractvalue %dx.types.ResRet.f32 %6052, 0
  %6054 = extractvalue %dx.types.ResRet.f32 %6052, 1
  %6055 = extractvalue %dx.types.ResRet.f32 %6052, 2
  %6056 = fsub fast float %6049, %6041
  %6057 = fsub fast float %6050, %6042
  %6058 = fsub fast float %6051, %6043
  %6059 = fmul fast float %6056, %6029
  %6060 = fmul fast float %6057, %6029
  %6061 = fmul fast float %6058, %6029
  %6062 = fadd fast float %6059, %6041
  %6063 = fadd fast float %6060, %6042
  %6064 = fadd fast float %6061, %6043
  %6065 = fsub fast float %6053, %6045
  %6066 = fsub fast float %6054, %6046
  %6067 = fsub fast float %6055, %6047
  %6068 = fmul fast float %6065, %6029
  %6069 = fmul fast float %6066, %6029
  %6070 = fmul fast float %6067, %6029
  %6071 = fsub fast float %6045, %6062
  %6072 = fadd fast float %6071, %6068
  %6073 = fsub fast float %6046, %6063
  %6074 = fadd fast float %6073, %6069
  %6075 = fsub fast float %6047, %6064
  %6076 = fadd fast float %6075, %6070
  %6077 = fmul fast float %6072, %6017
  %6078 = fmul fast float %6074, %6017
  %6079 = fmul fast float %6076, %6017
  %6080 = fadd fast float %6077, %6062
  %6081 = fadd fast float %6078, %6063
  %6082 = fadd fast float %6079, %6064
  %6083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6084 = extractvalue %dx.types.CBufRet.f32 %6083, 1
  %6085 = fmul fast float %6080, %6084
  %6086 = fmul fast float %6081, %6084
  %6087 = fmul fast float %6082, %6084
  br label %6088

; <label>:6088                                    ; preds = %5919, %5876
  %6089 = phi float [ %5959, %5919 ], [ 1.000000e+00, %5876 ]
  %6090 = phi float [ %5960, %5919 ], [ 1.000000e+00, %5876 ]
  %6091 = phi float [ %5961, %5919 ], [ 1.000000e+00, %5876 ]
  %6092 = phi float [ %6085, %5919 ], [ 0.000000e+00, %5876 ]
  %6093 = phi float [ %6086, %5919 ], [ 0.000000e+00, %5876 ]
  %6094 = phi float [ %6087, %5919 ], [ 0.000000e+00, %5876 ]
  %6095 = fmul fast float %6092, %4438
  %6096 = fmul fast float %6093, %4438
  %6097 = fmul fast float %6094, %4438
  %6098 = fmul fast float %6089, %5883
  %6099 = call float @dx.op.dot3.f32(i32 55, float %6089, float %6090, float %6091, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6100 = call float @dx.op.dot3.f32(i32 55, float %6095, float %6096, float %6097, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6101 = select i1 %222, float %6099, float %6089
  %6102 = select i1 %222, float %6099, float %6090
  %6103 = select i1 %222, float 1.000000e+00, float %6091
  %6104 = select i1 %222, float %6100, float %6095
  %6105 = select i1 %222, float 0.000000e+00, float %6096
  %6106 = select i1 %222, float 0.000000e+00, float %6097
  %6107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6108 = extractvalue %dx.types.CBufRet.i32 %6107, 3
  %6109 = and i32 %6108, 3
  %6110 = icmp ne i32 %6109, 0
  %6111 = and i32 %6108, 4
  %6112 = icmp ne i32 %6111, 0
  %6113 = and i1 %6110, %6112
  %6114 = and i1 %222, %6113
  br i1 %6114, label %6115, label %6121

; <label>:6115                                    ; preds = %6088
  %6116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6117 = extractvalue %dx.types.CBufRet.f32 %6116, 1
  %6118 = fadd fast float %6098, -1.000000e+00
  %6119 = fmul fast float %6117, %6118
  %6120 = fadd fast float %6119, 1.000000e+00
  br label %6121

; <label>:6121                                    ; preds = %6115, %6088
  %6122 = phi float [ %6120, %6115 ], [ %6098, %6088 ]
  %6123 = fadd fast float %5880, %5877
  %6124 = fmul fast float %6101, %6123
  %6125 = fadd fast float %6124, %6104
  %6126 = fadd fast float %5881, %5878
  %6127 = fmul fast float %6102, %6126
  %6128 = fadd fast float %6127, %6105
  %6129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6130 = extractvalue %dx.types.CBufRet.f32 %6129, 0
  br i1 %222, label %6131, label %6155

; <label>:6131                                    ; preds = %6121
  %6132 = fadd fast float %6125, %6128
  %6133 = fmul fast float %6130, %6132
  %6134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6135 = extractvalue %dx.types.CBufRet.f32 %6134, 3
  %6136 = extractvalue %dx.types.CBufRet.f32 %4426, 1
  %6137 = fsub fast float %4431, %4425
  %6138 = fadd fast float %6137, %4432
  %6139 = fsub fast float %6138, %6136
  %6140 = extractvalue %dx.types.CBufRet.f32 %4426, 2
  %6141 = fmul fast float %6139, %6140
  %6142 = call float @dx.op.unary.f32(i32 7, float %6141)  ; Saturate(value)
  %6143 = fsub fast float %6142, %6135
  %6144 = fmul fast float %6143, %6122
  %6145 = fadd fast float %6144, %6135
  %6146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6147 = extractvalue %dx.types.CBufRet.f32 %6146, 0
  %6148 = fsub fast float %6145, %6147
  %6149 = fmul fast float %6148, 1.000000e+01
  %6150 = call float @dx.op.unary.f32(i32 7, float %6149)  ; Saturate(value)
  %6151 = fsub fast float 1.000000e+00, %4438
  %6152 = fmul fast float %6150, %6151
  %6153 = fadd fast float %6152, %4438
  %6154 = fmul fast float %6153, %6145
  br label %6178

; <label>:6155                                    ; preds = %6121
  %6156 = fadd fast float %5882, %5879
  %6157 = fmul fast float %6103, %6156
  %6158 = fadd fast float %6157, %6106
  %6159 = fmul fast float %6130, %6125
  %6160 = fmul fast float %6130, %6128
  %6161 = fmul fast float %6130, %6158
  %6162 = call float @dx.op.binary.f32(i32 35, float %6160, float %6161)  ; FMax(a,b)
  %6163 = call float @dx.op.binary.f32(i32 35, float %6159, float %6162)  ; FMax(a,b)
  %6164 = call float @dx.op.binary.f32(i32 35, float %6163, float %4438)  ; FMax(a,b)
  %6165 = fcmp fast ugt float %6164, 0x3F10000000000000
  br i1 %6165, label %6167, label %6166

; <label>:6166                                    ; preds = %6155
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6167

; <label>:6167                                    ; preds = %6166, %6155
  %6168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %6169 = extractvalue %dx.types.ResRet.i32 %6168, 0
  %6170 = and i32 %6169, 32
  %6171 = icmp eq i32 %6170, 0
  br i1 %6171, label %6178, label %6172

; <label>:6172                                    ; preds = %6167
  %6173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6174 = extractvalue %dx.types.CBufRet.f32 %6173, 0
  %6175 = fmul fast float %6174, 0x3FE99999A0000000
  %6176 = fadd fast float %6174, %6159
  %6177 = fadd fast float %6175, %6161
  br label %6178

; <label>:6178                                    ; preds = %6172, %6167, %6131
  %6179 = phi float [ %6133, %6131 ], [ %6176, %6172 ], [ %6159, %6167 ]
  %6180 = phi float [ %6154, %6131 ], [ %6160, %6172 ], [ %6160, %6167 ]
  %6181 = phi float [ %6153, %6131 ], [ %6177, %6172 ], [ %6161, %6167 ]
  %6182 = phi float [ %6153, %6131 ], [ %4438, %6172 ], [ %4438, %6167 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6183 = call float @dx.op.binary.f32(i32 36, float %6179, float 3.225500e+04)  ; FMin(a,b)
  %6184 = call float @dx.op.binary.f32(i32 36, float %6180, float 3.225500e+04)  ; FMin(a,b)
  %6185 = call float @dx.op.binary.f32(i32 36, float %6181, float 3.225500e+04)  ; FMin(a,b)
  %6186 = call float @dx.op.binary.f32(i32 36, float %6182, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6183)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6184)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6185)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %6186)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

