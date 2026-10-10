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
; shader hash: 7f6aedd3c20d608a8766cf104ec0df22
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
;                                   texture     f32          2d     T13             t2     1
;                                   texture     f32          2d     T14     t58,space2     1
;                                   texture     f32          2d     T15     t57,space2     1
;                                   texture    byte         r/o     T16     t69,space1     1
;                                   texture     u32          2d     T17     t56,space2     1
;                                   texture     f32     2darray     T18     t35,space2     1
;                                   texture     f32          2d     T19     t34,space2     1
;                                   texture     f32          3d     T20     t31,space2     1
;                                   texture     f32          2d     T21      t2,space2     1
;                                   texture     f32          2d     T22      t3,space2     1
;                                   texture     f32          2d     T23      t4,space2     1
;                                   textureunorm_f32     2darray     T24     t80,space2     1
;                                   texture    byte         r/o     T25     t67,space1     1
;                                   texture     f32          2d     T26      t7,space2     1
;                                   texture     f32          2d     T27      t6,space2     1
;                                   texture     f32          2d     T28      t5,space2     1
;                                   texture     f32          2d     T29     t38,space2     1
;                                   texture     f32          1d     T30     t30,space2     1
;                                   texture     f32          3d     T31     t44,space2     1
;                                   texture     f32          3d     T32     t45,space2     1
;                                   texture     f32     2darray     T33     t47,space2     1
;                                   textureunorm_f32     2darray     T34     t85,space2     1
;                                   texture     f32          2d     T35     t83,space2     1
;                                   texture     f32          2d     T36     t86,space2     1
;                                   texture     f32          2d     T37     t12,space2     1
;                                   texture     f32          2d     T38     t55,space2     1
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_4.0 = internal unnamed_addr constant [4 x float] [float 0x3FE6A161E0000000, float 0.000000e+00, float 0xBFD6A161E0000000, float 2.500000e-01], align 4
@PCF_OFFSETS_4.1 = internal unnamed_addr constant [4 x float] [float 0xBFE6A161E0000000, float 7.500000e-01, float 0xBFD6A161E0000000, float 0.000000e+00], align 4
@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 55, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = alloca [4 x i32], align 4
  %47 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = icmp ne i32 %47, 0
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = alloca [12 x float], align 4
  %75 = alloca [12 x float], align 4
  %76 = alloca [4 x float], align 4
  %77 = alloca [4 x float], align 4
  %78 = alloca [4 x float], align 4
  %79 = alloca [3 x float], align 4
  %80 = alloca [3 x float], align 4
  %81 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %82 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = fmul fast float %84, %70
  %86 = fmul fast float %84, %71
  %87 = select i1 %48, float 1.000000e+00, float -1.000000e+00
  %88 = fmul fast float %65, %87
  %89 = fmul fast float %66, %87
  %90 = fmul fast float %67, %87
  %91 = fmul fast float %61, %87
  %92 = fmul fast float %62, %87
  %93 = fmul fast float %63, %87
  %94 = fmul fast float %66, %63
  %95 = fmul fast float %67, %62
  %96 = fsub fast float %94, %95
  %97 = fmul fast float %67, %61
  %98 = fmul fast float %65, %63
  %99 = fsub fast float %97, %98
  %100 = fmul fast float %65, %62
  %101 = fmul fast float %66, %61
  %102 = fsub fast float %100, %101
  %103 = fmul fast float %64, %87
  %104 = fmul fast float %103, %96
  %105 = fmul fast float %103, %99
  %106 = fmul fast float %103, %102
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 3
  %110 = fmul fast float %108, 2.000000e+00
  %111 = fmul fast float %110, %85
  %112 = fmul fast float %109, 2.000000e+00
  %113 = fmul fast float %112, %86
  %114 = fsub fast float 1.000000e+00, %111
  %115 = fsub fast float 1.000000e+00, %113
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = fmul fast float %114, %117
  %121 = fmul fast float %114, %118
  %122 = fmul fast float %114, %119
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = fmul fast float %115, %124
  %128 = fmul fast float %115, %125
  %129 = fmul fast float %115, %126
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fadd fast float %127, %131
  %135 = fadd fast float %134, %120
  %136 = fadd fast float %128, %132
  %137 = fadd fast float %136, %121
  %138 = fadd fast float %129, %133
  %139 = fadd fast float %138, %122
  %140 = fmul fast float %135, %73
  %141 = fmul fast float %137, %73
  %142 = fmul fast float %139, %73
  %143 = fmul fast float %85, 5.000000e-01
  %144 = fmul fast float %86, 5.000000e-01
  %145 = fptosi float %143 to i32
  %146 = fptosi float %144 to i32
  %147 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %145, i32 %146, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %148 = extractvalue %dx.types.ResRet.i32 %147, 0
  %149 = lshr i32 %148, 18
  %150 = uitofp i32 %149 to float
  %151 = fmul fast float %150, 0x3F4C00EBA0000000
  %152 = call float @dx.op.unary.f32(i32 21, float %151)  ; Exp(value)
  %153 = fadd fast float %152, -1.000000e+00
  %154 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %155 = extractvalue %dx.types.Dimensions %154, 0
  %156 = sitofp i32 %155 to float
  %157 = extractvalue %dx.types.Dimensions %154, 1
  %158 = sitofp i32 %157 to float
  %159 = fcmp fast oge float %143, %156
  %160 = fcmp fast oge float %144, %158
  %161 = or i1 %159, %160
  %162 = select i1 %161, float 0x4197782600000000, float %153
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 3
  %166 = fmul fast float %164, %85
  %167 = fmul fast float %165, %86
  %168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = and i32 %169, 114688
  %171 = icmp ne i32 %170, 0
  %172 = select i1 %171, float %166, float 0.000000e+00
  %173 = select i1 %171, float %167, float 0.000000e+00
  %174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %42, float %172, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = fmul fast float %175, 2.550000e+02
  %177 = fptoui float %176 to i32
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.i32 %179, 3
  %181 = and i32 %180, 3
  %182 = icmp ne i32 %181, 0
  %183 = and i32 %180, 4
  %184 = icmp ne i32 %183, 0
  %185 = and i1 %182, %184
  br i1 %185, label %186, label %197

; <label>:186                                     ; preds = %0
  %187 = extractvalue %dx.types.CBufRet.f32 %178, 3
  %188 = fmul fast float %187, %86
  %189 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %190 = fmul fast float %189, %85
  %191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %41, float %190, float %188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = fsub fast float 1.000000e+00, %192
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 0
  %196 = fcmp fast olt float %193, %195
  br label %200

; <label>:197                                     ; preds = %0
  %198 = icmp eq i32 %183, 0
  %199 = and i1 %182, %198
  br label %200

; <label>:200                                     ; preds = %197, %186
  %201 = phi i1 [ %196, %186 ], [ %199, %197 ]
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.f32 %202, 2
  %204 = fmul fast float %203, 0x3FE3C6EF40000000
  %205 = frem fast float %85, 2.560000e+02
  %206 = frem fast float %86, 2.560000e+02
  %207 = fptoui float %205 to i32
  %208 = fptoui float %206 to i32
  %209 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %207, i32 %208, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = fadd fast float %210, %204
  %212 = call float @dx.op.unary.f32(i32 22, float %211)  ; Frc(value)
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = shl i32 %214, 4
  %216 = and i32 %215, 32752
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = lshr i32 %214, 7
  %219 = and i32 %218, 32752
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = lshr i32 %214, 22
  %222 = shl nuw nsw i32 %221, 5
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = and i32 %225, 255
  %227 = uitofp i32 %226 to float
  %228 = fmul fast float %227, 0x3F70101020000000
  %229 = lshr i32 %225, 8
  %230 = and i32 %229, 255
  %231 = uitofp i32 %230 to float
  %232 = fmul fast float %231, 0x3F70101020000000
  %233 = lshr i32 %225, 16
  %234 = and i32 %233, 255
  %235 = uitofp i32 %234 to float
  %236 = fmul fast float %235, 0x3F70101020000000
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = and i32 %238, 65535
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %238, 16
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = and i32 %244, 65535
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %244, 16
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = fmul fast float %246, 0x3F50624DE0000000
  %250 = fmul fast float %248, 0x3F50624DE0000000
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = and i32 %252, 2
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %262, label %255

; <label>:255                                     ; preds = %200
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = add i32 %257, 0
  %259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %258, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %260 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %259, %dx.types.Handle %82, float %68, float %69, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 3
  br label %262

; <label>:262                                     ; preds = %255, %200
  %263 = phi float [ 1.000000e+00, %200 ], [ %261, %255 ]
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = or i32 %267, %265
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %883, label %270

; <label>:270                                     ; preds = %262
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = lshr i32 %272, 16
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = fmul fast float %274, 0x3F50624DE0000000
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = lshr i32 %277, 16
  %279 = and i32 %278, 255
  %280 = lshr i32 %277, 24
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = and i32 %282, 65535
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %282, 16
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = lshr i32 %288, 22
  %290 = shl nuw nsw i32 %289, 5
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = shl i32 %288, 4
  %293 = and i32 %292, 32752
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %288, 7
  %296 = and i32 %295, 32752
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 3
  %300 = fmul fast float %299, 1.000000e+03
  %301 = fmul fast float %249, %300
  %302 = call float @dx.op.unary.f32(i32 22, float %301)  ; Frc(value)
  %303 = fadd fast float %302, %240
  %304 = fmul fast float %250, %300
  %305 = call float @dx.op.unary.f32(i32 22, float %304)  ; Frc(value)
  %306 = fadd fast float %305, %242
  %307 = fmul fast float %275, %300
  %308 = call float @dx.op.unary.f32(i32 22, float %307)  ; Frc(value)
  %309 = fmul fast float %308, 0x401921FB60000000
  %310 = fadd fast float %309, %291
  %311 = call float @dx.op.unary.f32(i32 13, float %310)  ; Sin(value)
  %312 = call float @dx.op.unary.f32(i32 12, float %310)  ; Cos(value)
  %313 = fsub fast float -0.000000e+00, %311
  %314 = fadd fast float %68, -5.000000e-01
  %315 = fadd fast float %69, -5.000000e-01
  %316 = fmul fast float %284, %314
  %317 = fmul fast float %286, %315
  %318 = fadd fast float %316, 5.000000e-01
  %319 = fadd fast float %317, 5.000000e-01
  %320 = fmul fast float %294, %318
  %321 = fmul fast float %297, %319
  %322 = fmul fast float %312, %320
  %323 = call float @dx.op.tertiary.f32(i32 46, float %313, float %321, float %322)  ; FMad(a,b,c)
  %324 = fmul fast float %311, %320
  %325 = call float @dx.op.tertiary.f32(i32 46, float %312, float %321, float %324)  ; FMad(a,b,c)
  %326 = fadd fast float %303, %323
  %327 = fadd fast float %306, %325
  %328 = icmp ugt i32 %279, 1
  %329 = icmp ugt i32 %277, 33554431
  %330 = or i1 %329, %328
  br i1 %330, label %331, label %355

; <label>:331                                     ; preds = %270
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = lshr i32 %333, 16
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = fmul fast float %299, %335
  %337 = call float @dx.op.unary.f32(i32 22, float %336)  ; Frc(value)
  %338 = mul nuw nsw i32 %279, %280
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %337, %339
  %341 = call float @dx.op.unary.f32(i32 27, float %340)  ; Round_ni(value)
  %342 = fptoui float %341 to i32
  %343 = urem i32 %342, %279
  %344 = udiv i32 %342, %280
  %345 = call float @dx.op.unary.f32(i32 22, float %326)  ; Frc(value)
  %346 = call float @dx.op.unary.f32(i32 22, float %327)  ; Frc(value)
  %347 = uitofp i32 %343 to float
  %348 = uitofp i32 %344 to float
  %349 = fadd fast float %345, %347
  %350 = fadd fast float %346, %348
  %351 = uitofp i32 %279 to float
  %352 = uitofp i32 %280 to float
  %353 = fdiv fast float %349, %351
  %354 = fdiv fast float %350, %352
  br label %355

; <label>:355                                     ; preds = %331, %270
  %356 = phi float [ %353, %331 ], [ %326, %270 ]
  %357 = phi float [ %354, %331 ], [ %327, %270 ]
  %358 = and i32 %265, 256
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %404, label %360

; <label>:360                                     ; preds = %355
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = add i32 %362, 0
  %364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %365 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %364, %dx.types.Handle %82, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %366 = extractvalue %dx.types.ResRet.f32 %365, 0
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = shl i32 %368, 4
  %370 = and i32 %369, 32752
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %368, 7
  %373 = and i32 %372, 32752
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = fsub fast float 1.000000e+00, %263
  %376 = call float @dx.op.binary.f32(i32 35, float %375, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %377 = bitcast float %263 to i32
  %378 = sitofp i32 %377 to float
  %379 = fadd fast float %378, 0xC1CFBF8940000000
  %380 = fmul fast float %374, %379
  %381 = fadd fast float %380, 0x41CFBF8940000000
  %382 = fptosi float %381 to i32
  %383 = bitcast i32 %382 to float
  %384 = bitcast float %376 to i32
  %385 = sitofp i32 %384 to float
  %386 = fadd fast float %385, 0xC1CFBF8940000000
  %387 = fmul fast float %386, %374
  %388 = fadd fast float %387, 0x41CFBF8940000000
  %389 = fptosi float %388 to i32
  %390 = bitcast i32 %389 to float
  %391 = fmul fast float %383, %371
  %392 = fmul fast float %390, %371
  %393 = fsub fast float %376, %391
  %394 = fadd fast float %392, %376
  %395 = call float @dx.op.unary.f32(i32 7, float %393)  ; Saturate(value)
  %396 = call float @dx.op.unary.f32(i32 7, float %394)  ; Saturate(value)
  %397 = fsub fast float %366, %395
  %398 = fsub fast float %396, %395
  %399 = bitcast float %398 to i32
  %400 = sub nsw i32 2129859010, %399
  %401 = bitcast i32 %400 to float
  %402 = fmul fast float %401, %397
  %403 = call float @dx.op.unary.f32(i32 7, float %402)  ; Saturate(value)
  br label %404

; <label>:404                                     ; preds = %360, %355
  %405 = phi float [ %403, %360 ], [ %263, %355 ]
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 128
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %425, label %410

; <label>:410                                     ; preds = %404
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = add i32 %412, 0
  %414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %415 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %414, %dx.types.Handle %82, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 524288
  %420 = icmp ne i32 %419, 0
  %421 = fcmp fast ogt float %416, 0x3FE0101020000000
  %422 = select i1 %421, float 1.000000e+00, float 0.000000e+00
  %423 = select i1 %420, float %422, float %416
  %424 = fmul fast float %423, %405
  br label %425

; <label>:425                                     ; preds = %410, %404
  %426 = phi float [ %424, %410 ], [ %405, %404 ]
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 16
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %624, label %431

; <label>:431                                     ; preds = %425
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = add i32 %435, 0
  %437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %436, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %438 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %437, %dx.types.Handle %81, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = extractvalue %dx.types.ResRet.f32 %438, 1
  %441 = extractvalue %dx.types.ResRet.f32 %438, 2
  %442 = extractvalue %dx.types.ResRet.f32 %438, 3
  %443 = and i32 %433, 255
  %444 = uitofp i32 %443 to float
  %445 = lshr i32 %433, 8
  %446 = and i32 %445, 255
  %447 = uitofp i32 %446 to float
  %448 = fmul fast float %442, %444
  %449 = fadd fast float %448, %447
  %450 = fmul fast float %449, 0x3F70101000000000
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 512
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %462, label %455

; <label>:455                                     ; preds = %431
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = add i32 %457, 0
  %459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %458, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %460 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %459, %dx.types.Handle %82, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  br label %462

; <label>:462                                     ; preds = %455, %431
  %463 = phi float [ %461, %455 ], [ 1.000000e+00, %431 ]
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = and i32 %465, 33554432
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %571, label %468

; <label>:468                                     ; preds = %462
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = and i32 %470, 65535
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = lshr i32 %470, 16
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = and i32 %476, 65535
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = lshr i32 %480, 24
  %482 = uitofp i32 %481 to float
  %483 = fmul fast float %482, 0x3F70101020000000
  %484 = and i32 %480, 255
  %485 = uitofp i32 %484 to float
  %486 = fmul fast float %485, 0x3F70101020000000
  %487 = lshr i32 %480, 8
  %488 = and i32 %487, 255
  %489 = uitofp i32 %488 to float
  %490 = fmul fast float %489, 0x3F70101020000000
  %491 = lshr i32 %480, 16
  %492 = and i32 %491, 255
  %493 = uitofp i32 %492 to float
  %494 = fmul fast float %493, 0x3F70101020000000
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = lshr i32 %496, 24
  %498 = uitofp i32 %497 to float
  %499 = fmul fast float %498, 0x3F70101020000000
  %500 = and i32 %496, 255
  %501 = uitofp i32 %500 to float
  %502 = fmul fast float %501, 0x3F70101020000000
  %503 = lshr i32 %496, 8
  %504 = and i32 %503, 255
  %505 = uitofp i32 %504 to float
  %506 = fmul fast float %505, 0x3F70101020000000
  %507 = lshr i32 %496, 16
  %508 = and i32 %507, 255
  %509 = uitofp i32 %508 to float
  %510 = fmul fast float %509, 0x3F70101020000000
  %511 = bitcast float %439 to i32
  %512 = ashr i32 %511, 1
  %513 = sub nsw i32 1597463174, %512
  %514 = bitcast i32 %513 to float
  %515 = fmul fast float %439, 5.000000e-01
  %516 = fmul fast float %514, %514
  %517 = fmul fast float %516, %515
  %518 = fsub fast float 1.500000e+00, %517
  %519 = fmul fast float %514, %439
  %520 = fmul fast float %519, %518
  %521 = bitcast float %440 to i32
  %522 = ashr i32 %521, 1
  %523 = sub nsw i32 1597463174, %522
  %524 = bitcast i32 %523 to float
  %525 = fmul fast float %440, 5.000000e-01
  %526 = fmul fast float %524, %524
  %527 = fmul fast float %526, %525
  %528 = fsub fast float 1.500000e+00, %527
  %529 = fmul fast float %524, %440
  %530 = fmul fast float %529, %528
  %531 = bitcast float %441 to i32
  %532 = ashr i32 %531, 1
  %533 = sub nsw i32 1597463174, %532
  %534 = bitcast i32 %533 to float
  %535 = fmul fast float %441, 5.000000e-01
  %536 = fmul fast float %534, %534
  %537 = fmul fast float %536, %535
  %538 = fsub fast float 1.500000e+00, %537
  %539 = fmul fast float %534, %441
  %540 = fmul fast float %539, %538
  %541 = fsub fast float %520, %502
  %542 = fsub fast float %530, %506
  %543 = fsub fast float %540, %510
  %544 = fmul fast float %541, %472
  %545 = fmul fast float %542, %474
  %546 = fmul fast float %543, %478
  %547 = fadd fast float %544, %486
  %548 = fadd fast float %545, %490
  %549 = fadd fast float %546, %494
  %550 = call float @dx.op.unary.f32(i32 7, float %547)  ; Saturate(value)
  %551 = call float @dx.op.unary.f32(i32 7, float %548)  ; Saturate(value)
  %552 = call float @dx.op.unary.f32(i32 7, float %549)  ; Saturate(value)
  %553 = fmul fast float %550, %550
  %554 = fmul fast float %551, %551
  %555 = fmul fast float %552, %552
  %556 = fsub fast float %553, %439
  %557 = fsub fast float %554, %440
  %558 = fsub fast float %555, %441
  %559 = fmul fast float %556, %463
  %560 = fmul fast float %557, %463
  %561 = fmul fast float %558, %463
  %562 = fadd fast float %559, %439
  %563 = fadd fast float %560, %440
  %564 = fadd fast float %561, %441
  %565 = fadd fast float %483, %450
  %566 = fsub fast float %565, %499
  %567 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %568 = fsub fast float %567, %450
  %569 = fmul fast float %568, %463
  %570 = fadd fast float %569, %450
  br label %624

; <label>:571                                     ; preds = %462
  %572 = and i32 %465, 134217728
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %608, label %574

; <label>:574                                     ; preds = %571
  %575 = call float @dx.op.unary.f32(i32 24, float %228)  ; Sqrt(value)
  %576 = call float @dx.op.unary.f32(i32 24, float %232)  ; Sqrt(value)
  %577 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %578 = fadd fast float %575, -5.000000e-01
  %579 = fadd fast float %576, -5.000000e-01
  %580 = fadd fast float %577, -5.000000e-01
  %581 = fmul fast float %578, %463
  %582 = fmul fast float %579, %463
  %583 = fmul fast float %580, %463
  %584 = fadd fast float %581, 5.000000e-01
  %585 = fadd fast float %582, 5.000000e-01
  %586 = fadd fast float %583, 5.000000e-01
  %587 = call float @dx.op.unary.f32(i32 24, float %439)  ; Sqrt(value)
  %588 = call float @dx.op.unary.f32(i32 24, float %440)  ; Sqrt(value)
  %589 = call float @dx.op.unary.f32(i32 24, float %441)  ; Sqrt(value)
  %590 = fmul fast float %584, 2.000000e+00
  %591 = fsub fast float 1.000000e+00, %590
  %592 = fmul fast float %591, %587
  %593 = fadd fast float %592, %590
  %594 = fmul fast float %593, %587
  %595 = fmul fast float %585, 2.000000e+00
  %596 = fsub fast float 1.000000e+00, %595
  %597 = fmul fast float %596, %588
  %598 = fadd fast float %597, %595
  %599 = fmul fast float %598, %588
  %600 = fmul fast float %586, 2.000000e+00
  %601 = fsub fast float 1.000000e+00, %600
  %602 = fmul fast float %601, %589
  %603 = fadd fast float %602, %600
  %604 = fmul fast float %603, %589
  %605 = fmul fast float %594, %594
  %606 = fmul fast float %599, %599
  %607 = fmul fast float %604, %604
  br label %624

; <label>:608                                     ; preds = %571
  %609 = fmul fast float %228, %228
  %610 = fmul fast float %232, %232
  %611 = fmul fast float %236, %236
  %612 = fadd fast float %609, -1.000000e+00
  %613 = fadd fast float %610, -1.000000e+00
  %614 = fadd fast float %611, -1.000000e+00
  %615 = fmul fast float %463, %612
  %616 = fmul fast float %463, %613
  %617 = fmul fast float %463, %614
  %618 = fadd fast float %615, 1.000000e+00
  %619 = fadd fast float %616, 1.000000e+00
  %620 = fadd fast float %617, 1.000000e+00
  %621 = fmul fast float %618, %439
  %622 = fmul fast float %619, %440
  %623 = fmul fast float %620, %441
  br label %624

; <label>:624                                     ; preds = %608, %574, %468, %425
  %625 = phi float [ %570, %468 ], [ %450, %574 ], [ %450, %608 ], [ 0x3FA23C0BE0000000, %425 ]
  %626 = phi float [ %562, %468 ], [ %605, %574 ], [ %621, %608 ], [ 1.000000e+00, %425 ]
  %627 = phi float [ %563, %468 ], [ %606, %574 ], [ %622, %608 ], [ 1.000000e+00, %425 ]
  %628 = phi float [ %564, %468 ], [ %607, %574 ], [ %623, %608 ], [ 1.000000e+00, %425 ]
  %629 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %630 = extractvalue %dx.types.CBufRet.i32 %629, 1
  %631 = and i32 %630, 1
  %632 = icmp ne i32 %631, 0
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 32
  %636 = icmp ne i32 %635, 0
  %637 = and i1 %632, %636
  %638 = select i1 %637, float 1.000000e+00, float %626
  %639 = select i1 %637, float 0x3FD3333340000000, float %627
  %640 = select i1 %637, float 0x3FD3333340000000, float %628
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = and i32 %642, 32
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %714, label %645

; <label>:645                                     ; preds = %624
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = add i32 %649, 0
  %651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %650, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %652 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %651, %dx.types.Handle %81, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %653 = extractvalue %dx.types.ResRet.f32 %652, 0
  %654 = extractvalue %dx.types.ResRet.f32 %652, 1
  %655 = extractvalue %dx.types.ResRet.f32 %652, 2
  %656 = extractvalue %dx.types.ResRet.f32 %652, 3
  %657 = and i32 %647, 255
  %658 = uitofp i32 %657 to float
  %659 = lshr i32 %647, 8
  %660 = and i32 %659, 255
  %661 = uitofp i32 %660 to float
  %662 = lshr i32 %647, 16
  %663 = and i32 %662, 255
  %664 = uitofp i32 %663 to float
  %665 = fmul fast float %664, 0x3F70101000000000
  %666 = fmul fast float %653, %658
  %667 = fadd fast float %666, %661
  %668 = fmul fast float %667, 0x3F70101000000000
  %669 = fadd fast float %654, -5.000000e-01
  %670 = fadd fast float %656, -5.000000e-01
  %671 = fmul fast float %669, %665
  %672 = fmul fast float %670, %665
  %673 = fadd fast float %671, 5.000000e-01
  %674 = fadd fast float %672, 5.000000e-01
  %675 = fmul fast float %673, 2.000000e+00
  %676 = fadd fast float %675, -1.000000e+00
  %677 = fmul fast float %674, 2.000000e+00
  %678 = fadd fast float %677, -1.000000e+00
  %679 = fadd fast float %676, %678
  %680 = fmul fast float %679, 5.000000e-01
  %681 = fsub fast float %676, %678
  %682 = fmul fast float %681, 5.000000e-01
  %683 = call float @dx.op.unary.f32(i32 6, float %680)  ; FAbs(value)
  %684 = fsub fast float 1.000000e+00, %683
  %685 = call float @dx.op.unary.f32(i32 6, float %682)  ; FAbs(value)
  %686 = fsub fast float %684, %685
  %687 = call float @dx.op.dot3.f32(i32 55, float %680, float %682, float %686, float %680, float %682, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %688 = call float @dx.op.unary.f32(i32 25, float %687)  ; Rsqrt(value)
  %689 = fmul fast float %680, %688
  %690 = fmul fast float %682, %688
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = and i32 %692, 67108864
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %710, label %695

; <label>:695                                     ; preds = %645
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 65535
  %699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %698)  ; LegacyF16ToF32(value)
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = and i32 %701, 65535
  %703 = call float @dx.op.legacyF16ToF32(i32 131, i32 %702)  ; LegacyF16ToF32(value)
  %704 = lshr i32 %697, 16
  %705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %704)  ; LegacyF16ToF32(value)
  %706 = fsub fast float %668, %705
  %707 = fmul fast float %706, %699
  %708 = fadd fast float %707, %703
  %709 = call float @dx.op.unary.f32(i32 7, float %708)  ; Saturate(value)
  br label %710

; <label>:710                                     ; preds = %695, %645
  %711 = phi float [ %709, %695 ], [ %668, %645 ]
  %712 = call float @dx.op.dot2.f32(i32 54, float %689, float %690, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %713 = call float @dx.op.dot2.f32(i32 54, float %689, float %690, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %714

; <label>:714                                     ; preds = %710, %624
  %715 = phi float [ %711, %710 ], [ 0x3FD6666660000000, %624 ]
  %716 = phi float [ %712, %710 ], [ 0.000000e+00, %624 ]
  %717 = phi float [ %713, %710 ], [ 0.000000e+00, %624 ]
  %718 = phi float [ %655, %710 ], [ 1.000000e+00, %624 ]
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = lshr i32 %720, 22
  %722 = shl nuw nsw i32 %721, 5
  %723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %722)  ; LegacyF16ToF32(value)
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = and i32 %725, 64
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %760, label %728

; <label>:728                                     ; preds = %714
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = add i32 %730, 0
  %732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %731, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = and i32 %734, 131072
  %736 = icmp eq i32 %735, 0
  %737 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %732, %dx.types.Handle %81, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %738 = extractvalue %dx.types.ResRet.f32 %737, 0
  %739 = extractvalue %dx.types.ResRet.f32 %737, 1
  %740 = extractvalue %dx.types.ResRet.f32 %737, 2
  %741 = fmul fast float %738, %217
  %742 = fmul fast float %739, %220
  %743 = fmul fast float %740, %223
  br i1 %736, label %750, label %744

; <label>:744                                     ; preds = %728
  %745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.f32 %745, 0
  %747 = fmul fast float %746, %741
  %748 = fmul fast float %746, %742
  %749 = fmul fast float %746, %743
  br label %750

; <label>:750                                     ; preds = %744, %728
  %751 = phi float [ %747, %744 ], [ %741, %728 ]
  %752 = phi float [ %748, %744 ], [ %742, %728 ]
  %753 = phi float [ %749, %744 ], [ %743, %728 ]
  %754 = fmul fast float %751, %723
  %755 = select i1 %201, float %754, float %751
  %756 = call float @dx.op.dot3.f32(i32 55, float %755, float %752, float %753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %757 = select i1 %201, float 0.000000e+00, float %751
  %758 = select i1 %201, float %756, float %752
  %759 = select i1 %201, float 0.000000e+00, float %753
  br label %760

; <label>:760                                     ; preds = %750, %714
  %761 = phi float [ %757, %750 ], [ 0.000000e+00, %714 ]
  %762 = phi float [ %758, %750 ], [ 0.000000e+00, %714 ]
  %763 = phi float [ %759, %750 ], [ 0.000000e+00, %714 ]
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = and i32 %765, 1024
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %796, label %768

; <label>:768                                     ; preds = %760
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = and i32 %770, 255
  %772 = uitofp i32 %771 to float
  %773 = fmul fast float %772, 0x3F70101020000000
  %774 = lshr i32 %770, 8
  %775 = and i32 %774, 255
  %776 = uitofp i32 %775 to float
  %777 = fmul fast float %776, 0x3F70101020000000
  %778 = lshr i32 %770, 16
  %779 = and i32 %778, 255
  %780 = uitofp i32 %779 to float
  %781 = fmul fast float %780, 0x3F70101020000000
  %782 = fmul fast float %773, %773
  %783 = fmul fast float %777, %777
  %784 = fmul fast float %781, %781
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = add i32 %786, 0
  %788 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %787, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %789 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %788, %dx.types.Handle %82, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %790 = extractvalue %dx.types.ResRet.f32 %789, 0
  %791 = extractvalue %dx.types.ResRet.f32 %789, 1
  %792 = extractvalue %dx.types.ResRet.f32 %789, 2
  %793 = fmul fast float %782, %790
  %794 = fmul fast float %783, %791
  %795 = fmul fast float %784, %792
  br label %796

; <label>:796                                     ; preds = %768, %760
  %797 = phi float [ %793, %768 ], [ 0.000000e+00, %760 ]
  %798 = phi float [ %794, %768 ], [ 0.000000e+00, %760 ]
  %799 = phi float [ %795, %768 ], [ 0.000000e+00, %760 ]
  %800 = fcmp fast ogt float %797, 0.000000e+00
  %801 = fcmp fast ogt float %798, 0.000000e+00
  %802 = fcmp fast ogt float %799, 0.000000e+00
  %803 = call float @dx.op.unary.f32(i32 23, float %797)  ; Log(value)
  %804 = call float @dx.op.unary.f32(i32 23, float %798)  ; Log(value)
  %805 = call float @dx.op.unary.f32(i32 23, float %799)  ; Log(value)
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = lshr i32 %807, 7
  %809 = and i32 %808, 32752
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = fmul fast float %803, 0xBFE62E4300000000
  %812 = fmul fast float %811, %810
  %813 = fmul fast float %804, 0xBFE62E4300000000
  %814 = fmul fast float %813, %810
  %815 = fmul fast float %805, 0xBFE62E4300000000
  %816 = fmul fast float %815, %810
  %817 = select i1 %800, float %812, float 1.270000e+02
  %818 = select i1 %801, float %814, float 1.270000e+02
  %819 = select i1 %802, float %816, float 1.270000e+02
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = and i32 %821, 10240
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %866, label %824

; <label>:824                                     ; preds = %796
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = add i32 %826, 0
  %828 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %827, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %829 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %828, %dx.types.Handle %82, float %356, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 1
  %831 = extractvalue %dx.types.ResRet.f32 %829, 3
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = and i32 %833, 1048576
  %835 = icmp ne i32 %834, 0
  %836 = and i32 %833, 8192
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %852, label %838

; <label>:838                                     ; preds = %824
  %839 = extractvalue %dx.types.ResRet.f32 %829, 2
  %840 = select i1 %835, float %839, float %830
  %841 = extractvalue %dx.types.ResRet.f32 %829, 0
  %842 = select i1 %835, float %841, float %830
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = lshr i32 %844, 16
  %846 = and i32 %845, 255
  %847 = uitofp i32 %846 to float
  %848 = fmul fast float %847, 0x3F80101020000000
  %849 = fmul fast float %848, %842
  %850 = fmul fast float %848, %830
  %851 = fmul fast float %848, %840
  br label %852

; <label>:852                                     ; preds = %838, %824
  %853 = phi float [ %849, %838 ], [ 0.000000e+00, %824 ]
  %854 = phi float [ %850, %838 ], [ 0.000000e+00, %824 ]
  %855 = phi float [ %851, %838 ], [ 0.000000e+00, %824 ]
  %856 = and i32 %833, 2048
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %866, label %858

; <label>:858                                     ; preds = %852
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = shl i32 %860, 4
  %862 = and i32 %861, 32752
  %863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %862)  ; LegacyF16ToF32(value)
  %864 = fmul fast float %863, %831
  %865 = call float @dx.op.binary.f32(i32 35, float %864, float 0x3F70101020000000)  ; FMax(a,b)
  br label %866

; <label>:866                                     ; preds = %858, %852, %796
  %867 = phi float [ %853, %858 ], [ %853, %852 ], [ 0.000000e+00, %796 ]
  %868 = phi float [ %854, %858 ], [ %854, %852 ], [ 0.000000e+00, %796 ]
  %869 = phi float [ %855, %858 ], [ %855, %852 ], [ 0.000000e+00, %796 ]
  %870 = phi float [ %865, %858 ], [ 0x3F70101020000000, %852 ], [ 0x3F70101020000000, %796 ]
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = and i32 %872, 255
  %874 = uitofp i32 %873 to float
  %875 = lshr i32 %872, 8
  %876 = and i32 %875, 255
  %877 = uitofp i32 %876 to float
  %878 = call float @dx.op.dot3.f32(i32 55, float %638, float %639, float %640, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %879 = fmul fast float %877, %878
  %880 = fadd fast float %879, %874
  %881 = fmul fast float %880, 0x3F70101020000000
  %882 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  br label %883

; <label>:883                                     ; preds = %866, %262
  %884 = phi float [ 0.000000e+00, %262 ], [ %716, %866 ]
  %885 = phi float [ 0.000000e+00, %262 ], [ %717, %866 ]
  %886 = phi float [ 0.000000e+00, %262 ], [ %638, %866 ]
  %887 = phi float [ 0.000000e+00, %262 ], [ %639, %866 ]
  %888 = phi float [ 0.000000e+00, %262 ], [ %640, %866 ]
  %889 = phi float [ 0.000000e+00, %262 ], [ %761, %866 ]
  %890 = phi float [ 0.000000e+00, %262 ], [ %762, %866 ]
  %891 = phi float [ 0.000000e+00, %262 ], [ %763, %866 ]
  %892 = phi float [ 0.000000e+00, %262 ], [ %817, %866 ]
  %893 = phi float [ 0.000000e+00, %262 ], [ %818, %866 ]
  %894 = phi float [ 0.000000e+00, %262 ], [ %819, %866 ]
  %895 = phi float [ 0.000000e+00, %262 ], [ %867, %866 ]
  %896 = phi float [ 0.000000e+00, %262 ], [ %868, %866 ]
  %897 = phi float [ 0.000000e+00, %262 ], [ %869, %866 ]
  %898 = phi float [ 0.000000e+00, %262 ], [ %625, %866 ]
  %899 = phi float [ 0.000000e+00, %262 ], [ %426, %866 ]
  %900 = phi float [ 0.000000e+00, %262 ], [ %715, %866 ]
  %901 = phi float [ 0.000000e+00, %262 ], [ %718, %866 ]
  %902 = phi float [ 0.000000e+00, %262 ], [ %870, %866 ]
  %903 = phi float [ 0.000000e+00, %262 ], [ %882, %866 ]
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 0
  %906 = call float @dx.op.dot2.f32(i32 54, float %884, float %885, float %884, float %885)  ; Dot2(ax,ay,bx,by)
  %907 = fmul fast float %906, 0x3FE3333340000000
  %908 = fsub fast float 1.000000e+00, %907
  %909 = call float @dx.op.dot3.f32(i32 55, float %884, float %885, float %908, float %884, float %885, float %908)  ; Dot3(ax,ay,az,bx,by,bz)
  %910 = call float @dx.op.unary.f32(i32 25, float %909)  ; Rsqrt(value)
  %911 = fmul fast float %910, %884
  %912 = fmul fast float %910, %885
  %913 = fmul fast float %908, %910
  %914 = fmul fast float %913, %88
  %915 = fmul fast float %913, %89
  %916 = fmul fast float %913, %90
  %917 = fmul fast float %911, %91
  %918 = fmul fast float %911, %92
  %919 = fmul fast float %911, %93
  %920 = fadd fast float %914, %917
  %921 = fadd fast float %915, %918
  %922 = fadd fast float %916, %919
  %923 = fmul fast float %912, %104
  %924 = fmul fast float %912, %105
  %925 = fmul fast float %912, %106
  %926 = fadd fast float %920, %923
  %927 = fadd fast float %921, %924
  %928 = fadd fast float %922, %925
  %929 = call float @dx.op.dot3.f32(i32 55, float %926, float %927, float %928, float %926, float %927, float %928)  ; Dot3(ax,ay,az,bx,by,bz)
  %930 = call float @dx.op.unary.f32(i32 25, float %929)  ; Rsqrt(value)
  %931 = fmul fast float %926, %930
  %932 = fmul fast float %927, %930
  %933 = fmul fast float %928, %930
  %934 = call float @dx.op.unary.f32(i32 83, float %140)  ; DerivCoarseX(value)
  %935 = call float @dx.op.unary.f32(i32 83, float %141)  ; DerivCoarseX(value)
  %936 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %937 = call float @dx.op.unary.f32(i32 84, float %140)  ; DerivCoarseY(value)
  %938 = call float @dx.op.unary.f32(i32 84, float %141)  ; DerivCoarseY(value)
  %939 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %940 = fadd fast float %934, %140
  %941 = fadd fast float %935, %141
  %942 = fadd fast float %936, %142
  %943 = fadd fast float %937, %140
  %944 = fadd fast float %938, %141
  %945 = fadd fast float %939, %142
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 0
  %948 = extractvalue %dx.types.CBufRet.f32 %946, 1
  %949 = extractvalue %dx.types.CBufRet.f32 %946, 2
  %950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.f32 %950, 2
  %952 = extractvalue %dx.types.CBufRet.f32 %950, 3
  %953 = fmul fast float %947, %85
  %954 = fmul fast float %953, %951
  %955 = fmul fast float %948, %86
  %956 = fmul fast float %955, %952
  %957 = fptoui float %954 to i32
  %958 = fptoui float %956 to i32
  %959 = fadd fast float %947, -1.000000e+00
  %960 = fadd fast float %948, -1.000000e+00
  %961 = fptoui float %959 to i32
  %962 = fptoui float %960 to i32
  %963 = call i32 @dx.op.binary.i32(i32 40, i32 %957, i32 %961)  ; UMin(a,b)
  %964 = call i32 @dx.op.binary.i32(i32 40, i32 %958, i32 %962)  ; UMin(a,b)
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 2
  %967 = extractvalue %dx.types.CBufRet.f32 %965, 3
  %968 = fmul fast float %966, %73
  %969 = fsub fast float %968, %967
  %970 = fadd fast float %949, -1.000000e+00
  %971 = call float @dx.op.binary.f32(i32 36, float %969, float %970)  ; FMin(a,b)
  %972 = fptoui float %971 to i32
  %973 = fptoui float %947 to i32
  %974 = fptoui float %948 to i32
  %975 = mul i32 %972, %974
  %976 = add i32 %975, %964
  %977 = mul i32 %976, %973
  %978 = add i32 %977, %963
  %979 = shl i32 %978, 2
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %979, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = and i32 %981, 1023
  %983 = lshr i32 %981, 10
  %984 = icmp eq i32 %982, 0
  br i1 %984, label %1488, label %985

; <label>:985                                     ; preds = %883
  %986 = and i32 %981, 1023
  br label %987

; <label>:987                                     ; preds = %1119, %985
  %988 = phi i32 [ %1069, %1119 ], [ 0, %985 ]
  %989 = phi float [ %1120, %1119 ], [ 0.000000e+00, %985 ]
  %990 = phi float [ %1121, %1119 ], [ %905, %985 ]
  %991 = phi float [ %1122, %1119 ], [ %903, %985 ]
  %992 = phi float [ %1123, %1119 ], [ %892, %985 ]
  %993 = phi float [ %1124, %1119 ], [ %893, %985 ]
  %994 = phi float [ %1125, %1119 ], [ %894, %985 ]
  %995 = phi float [ %1126, %1119 ], [ 0.000000e+00, %985 ]
  %996 = phi float [ %1127, %1119 ], [ 0.000000e+00, %985 ]
  %997 = phi float [ %1128, %1119 ], [ %895, %985 ]
  %998 = phi float [ %1129, %1119 ], [ %896, %985 ]
  %999 = phi float [ %1130, %1119 ], [ %897, %985 ]
  %1000 = phi float [ %1131, %1119 ], [ %889, %985 ]
  %1001 = phi float [ %1132, %1119 ], [ %890, %985 ]
  %1002 = phi float [ %1133, %1119 ], [ %891, %985 ]
  %1003 = phi float [ %1134, %1119 ], [ %931, %985 ]
  %1004 = phi float [ %1135, %1119 ], [ %932, %985 ]
  %1005 = phi float [ %1136, %1119 ], [ %933, %985 ]
  %1006 = phi float [ %1137, %1119 ], [ %901, %985 ]
  %1007 = phi float [ %1138, %1119 ], [ %900, %985 ]
  %1008 = phi float [ %1139, %1119 ], [ 0.000000e+00, %985 ]
  %1009 = phi float [ %1140, %1119 ], [ %898, %985 ]
  %1010 = phi float [ %1141, %1119 ], [ %886, %985 ]
  %1011 = phi float [ %1142, %1119 ], [ %887, %985 ]
  %1012 = phi float [ %1143, %1119 ], [ %888, %985 ]
  %1013 = add nuw nsw i32 %988, %983
  %1014 = shl i32 %1013, 2
  %1015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.i32 %1015, 0
  %1017 = shl i32 %1016, 8
  %1018 = or i32 %1017, 48
  %1019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.f32 %1019, 0
  %1021 = extractvalue %dx.types.ResRet.f32 %1019, 1
  %1022 = extractvalue %dx.types.ResRet.f32 %1019, 2
  %1023 = extractvalue %dx.types.ResRet.f32 %1019, 3
  %1024 = or i32 %1017, 64
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = extractvalue %dx.types.ResRet.i32 %1025, 1
  %1028 = or i32 %1017, 80
  %1029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 2
  %1031 = extractvalue %dx.types.ResRet.f32 %1029, 3
  %1032 = or i32 %1017, 96
  %1033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.ResRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.ResRet.f32 %1033, 2
  %1037 = extractvalue %dx.types.ResRet.f32 %1033, 3
  %1038 = or i32 %1017, 112
  %1039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 2
  %1041 = or i32 %1017, 128
  %1042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.ResRet.f32 %1042, 1
  %1045 = extractvalue %dx.types.ResRet.f32 %1042, 2
  %1046 = extractvalue %dx.types.ResRet.f32 %1042, 3
  %1047 = or i32 %1017, 144
  %1048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = extractvalue %dx.types.ResRet.f32 %1048, 3
  %1053 = or i32 %1017, 160
  %1054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.ResRet.f32 %1054, 1
  %1057 = extractvalue %dx.types.ResRet.f32 %1054, 2
  %1058 = extractvalue %dx.types.ResRet.f32 %1054, 3
  %1059 = or i32 %1017, 192
  %1060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.i32 %1060, 0
  %1062 = or i32 %1017, 208
  %1063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.f32 %1063, 0
  %1065 = or i32 %1017, 248
  %1066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.f32 %1066, 0
  %1068 = extractvalue %dx.types.ResRet.f32 %1066, 1
  %1069 = add nuw nsw i32 %988, 1
  %1070 = bitcast float %1023 to i32
  %1071 = and i32 %1070, 512
  %1072 = icmp eq i32 %1071, 0
  %1073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.f32 %1073, 0
  %1075 = extractvalue %dx.types.ResRet.f32 %1073, 1
  %1076 = extractvalue %dx.types.ResRet.f32 %1073, 2
  %1077 = extractvalue %dx.types.ResRet.f32 %1073, 3
  %1078 = call float @dx.op.dot4.f32(i32 56, float %1074, float %1075, float %1076, float %1077, float %140, float %141, float %142, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1079 = or i32 %1017, 16
  %1080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = extractvalue %dx.types.ResRet.f32 %1080, 1
  %1083 = extractvalue %dx.types.ResRet.f32 %1080, 2
  %1084 = extractvalue %dx.types.ResRet.f32 %1080, 3
  %1085 = call float @dx.op.dot4.f32(i32 56, float %1081, float %1082, float %1083, float %1084, float %140, float %141, float %142, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1086 = or i32 %1017, 32
  %1087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.f32 %1087, 0
  %1089 = extractvalue %dx.types.ResRet.f32 %1087, 1
  %1090 = extractvalue %dx.types.ResRet.f32 %1087, 2
  %1091 = extractvalue %dx.types.ResRet.f32 %1087, 3
  %1092 = call float @dx.op.dot4.f32(i32 56, float %1088, float %1089, float %1090, float %1091, float %140, float %141, float %142, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1093 = call float @dx.op.unary.f32(i32 27, float %1078)  ; Round_ni(value)
  %1094 = call float @dx.op.unary.f32(i32 6, float %1093)  ; FAbs(value)
  %1095 = call float @dx.op.unary.f32(i32 27, float %1085)  ; Round_ni(value)
  %1096 = call float @dx.op.unary.f32(i32 6, float %1095)  ; FAbs(value)
  %1097 = call float @dx.op.unary.f32(i32 6, float %1092)  ; FAbs(value)
  %1098 = call float @dx.op.unary.f32(i32 27, float %1097)  ; Round_ni(value)
  %1099 = fadd fast float %1096, %1094
  %1100 = fadd fast float %1099, %1098
  %1101 = fcmp fast oeq float %1100, 0.000000e+00
  %1102 = call float @dx.op.dot4.f32(i32 56, float %1074, float %1075, float %1076, float %1077, float %940, float %941, float %942, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1103 = call float @dx.op.dot4.f32(i32 56, float %1081, float %1082, float %1083, float %1084, float %940, float %941, float %942, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1104 = call float @dx.op.dot4.f32(i32 56, float %1074, float %1075, float %1076, float %1077, float %943, float %944, float %945, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1105 = call float @dx.op.dot4.f32(i32 56, float %1081, float %1082, float %1083, float %1084, float %943, float %944, float %945, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1106 = fsub fast float %1102, %1078
  %1107 = fsub fast float %1104, %1078
  %1108 = fsub fast float %1103, %1085
  %1109 = fsub fast float %1105, %1085
  %1110 = call float @dx.op.dot3.f32(i32 55, float %1020, float %1021, float %1022, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %1111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.f32 %1111, 2
  %1113 = fadd fast float %1112, %1110
  %1114 = call float @dx.op.unary.f32(i32 7, float %1113)  ; Saturate(value)
  %1115 = extractvalue %dx.types.CBufRet.f32 %1111, 0
  %1116 = fcmp fast ogt float %1114, %1115
  %1117 = and i1 %1101, %1116
  %1118 = and i1 %1072, %1117
  br i1 %1118, label %1145, label %1119

; <label>:1119                                    ; preds = %1474, %1226, %1145, %987
  %1120 = phi float [ %989, %1145 ], [ %1229, %1226 ], [ %1229, %1474 ], [ %989, %987 ]
  %1121 = phi float [ %990, %1145 ], [ %990, %1226 ], [ %1450, %1474 ], [ %990, %987 ]
  %1122 = phi float [ %991, %1145 ], [ %991, %1226 ], [ %1448, %1474 ], [ %991, %987 ]
  %1123 = phi float [ %992, %1145 ], [ %992, %1226 ], [ %1426, %1474 ], [ %992, %987 ]
  %1124 = phi float [ %993, %1145 ], [ %993, %1226 ], [ %1427, %1474 ], [ %993, %987 ]
  %1125 = phi float [ %994, %1145 ], [ %994, %1226 ], [ %1428, %1474 ], [ %994, %987 ]
  %1126 = phi float [ %995, %1145 ], [ %995, %1226 ], [ %1353, %1474 ], [ %995, %987 ]
  %1127 = phi float [ %996, %1145 ], [ %996, %1226 ], [ %1351, %1474 ], [ %996, %987 ]
  %1128 = phi float [ %997, %1145 ], [ %997, %1226 ], [ %1396, %1474 ], [ %997, %987 ]
  %1129 = phi float [ %998, %1145 ], [ %998, %1226 ], [ %1397, %1474 ], [ %998, %987 ]
  %1130 = phi float [ %999, %1145 ], [ %999, %1226 ], [ %1398, %1474 ], [ %999, %987 ]
  %1131 = phi float [ %1000, %1145 ], [ %1000, %1226 ], [ %1484, %1474 ], [ %1000, %987 ]
  %1132 = phi float [ %1001, %1145 ], [ %1001, %1226 ], [ %1485, %1474 ], [ %1001, %987 ]
  %1133 = phi float [ %1002, %1145 ], [ %1002, %1226 ], [ %1486, %1474 ], [ %1002, %987 ]
  %1134 = phi float [ %1003, %1145 ], [ %1003, %1226 ], [ %1332, %1474 ], [ %1003, %987 ]
  %1135 = phi float [ %1004, %1145 ], [ %1004, %1226 ], [ %1333, %1474 ], [ %1004, %987 ]
  %1136 = phi float [ %1005, %1145 ], [ %1005, %1226 ], [ %1334, %1474 ], [ %1005, %987 ]
  %1137 = phi float [ %1006, %1145 ], [ %1006, %1226 ], [ %1406, %1474 ], [ %1006, %987 ]
  %1138 = phi float [ %1007, %1145 ], [ %1007, %1226 ], [ %1403, %1474 ], [ %1007, %987 ]
  %1139 = phi float [ %1008, %1145 ], [ %1008, %1226 ], [ %1400, %1474 ], [ %1008, %987 ]
  %1140 = phi float [ %1009, %1145 ], [ %1009, %1226 ], [ %1349, %1474 ], [ %1009, %987 ]
  %1141 = phi float [ %1010, %1145 ], [ %1010, %1226 ], [ %1344, %1474 ], [ %1010, %987 ]
  %1142 = phi float [ %1011, %1145 ], [ %1011, %1226 ], [ %1345, %1474 ], [ %1011, %987 ]
  %1143 = phi float [ %1012, %1145 ], [ %1012, %1226 ], [ %1346, %1474 ], [ %1012, %987 ]
  %1144 = icmp eq i32 %1069, %986
  br i1 %1144, label %1487, label %987

; <label>:1145                                    ; preds = %987
  %1146 = extractvalue %dx.types.ResRet.f32 %1039, 3
  %1147 = extractvalue %dx.types.ResRet.f32 %1039, 1
  %1148 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1149 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1150 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1151 = extractvalue %dx.types.ResRet.i32 %1025, 3
  %1152 = extractvalue %dx.types.ResRet.i32 %1025, 2
  %1153 = add i32 %1151, 0
  %1154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1153, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1155 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1156 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1154, %dx.types.Handle %1155, float %1078, float %1085, float undef, float undef, i32 0, i32 0, i32 undef, float %1106, float %1108, float undef, float %1107, float %1109, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1157 = extractvalue %dx.types.ResRet.f32 %1156, 0
  %1158 = fmul fast float %1157, %1150
  %1159 = fadd fast float %1158, %1149
  %1160 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  %1161 = fmul fast float %1078, %1034
  %1162 = call float @dx.op.tertiary.f32(i32 46, float %1035, float %1085, float %1161)  ; FMad(a,b,c)
  %1163 = fadd fast float %1162, %1148
  %1164 = fmul fast float %1078, %1036
  %1165 = call float @dx.op.tertiary.f32(i32 46, float %1037, float %1085, float %1164)  ; FMad(a,b,c)
  %1166 = fadd fast float %1165, %1147
  %1167 = fmul fast float %1106, %1034
  %1168 = call float @dx.op.tertiary.f32(i32 46, float %1035, float %1108, float %1167)  ; FMad(a,b,c)
  %1169 = fmul fast float %1106, %1036
  %1170 = call float @dx.op.tertiary.f32(i32 46, float %1037, float %1108, float %1169)  ; FMad(a,b,c)
  %1171 = fmul fast float %1107, %1034
  %1172 = call float @dx.op.tertiary.f32(i32 46, float %1035, float %1109, float %1171)  ; FMad(a,b,c)
  %1173 = fmul fast float %1107, %1036
  %1174 = call float @dx.op.tertiary.f32(i32 46, float %1037, float %1109, float %1173)  ; FMad(a,b,c)
  %1175 = add i32 %1152, 0
  %1176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1175, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1177 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1176, %dx.types.Handle %1155, float %1163, float %1166, float undef, float undef, i32 0, i32 0, i32 undef, float %1168, float %1170, float undef, float %1172, float %1174, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1178 = extractvalue %dx.types.ResRet.f32 %1177, 0
  %1179 = and i32 %1070, 1024
  %1180 = icmp ne i32 %1179, 0
  %1181 = fcmp fast ogt float %1178, 0x3FE0101020000000
  %1182 = uitofp i1 %1181 to float
  %1183 = select i1 %1180, float %1182, float %1178
  %1184 = and i32 %1070, 8192
  %1185 = icmp ne i32 %1184, 0
  %1186 = select i1 %1185, float %1146, float 1.000000e+00
  %1187 = fmul fast float %1078, 2.000000e+00
  %1188 = fadd fast float %1187, -1.000000e+00
  %1189 = call float @dx.op.unary.f32(i32 6, float %1188)  ; FAbs(value)
  %1190 = fmul fast float %1189, %1067
  %1191 = fsub fast float %1190, %1067
  %1192 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  %1193 = fmul fast float %1085, 2.000000e+00
  %1194 = fadd fast float %1193, -1.000000e+00
  %1195 = call float @dx.op.unary.f32(i32 6, float %1194)  ; FAbs(value)
  %1196 = fmul fast float %1195, %1068
  %1197 = fsub fast float %1196, %1068
  %1198 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1199 = fmul fast float %1097, %1030
  %1200 = fsub fast float %1199, %1030
  %1201 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1202 = fmul fast float %1160, %1186
  %1203 = fmul fast float %1202, %1157
  %1204 = fmul fast float %1203, %1192
  %1205 = fmul fast float %1204, %1183
  %1206 = fmul fast float %1205, %1198
  %1207 = fmul fast float %1206, %1201
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 1
  %1210 = extractvalue %dx.types.CBufRet.f32 %1208, 0
  %1211 = fsub fast float %1114, %1210
  %1212 = fmul fast float %1211, %1209
  %1213 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  %1214 = fmul fast float %1207, %1031
  %1215 = fadd fast float %1207, %1031
  %1216 = fmul fast float %1215, %1040
  %1217 = fsub fast float %1216, %1040
  %1218 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1219 = and i32 %1070, 128
  %1220 = icmp ne i32 %1219, 0
  %1221 = select i1 %1220, float %1218, float %1214
  %1222 = fmul fast float %1221, %1213
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 0
  %1225 = fcmp fast ugt float %1222, %1224
  br i1 %1225, label %1226, label %1119

; <label>:1226                                    ; preds = %1145
  %1227 = select i1 %1185, float %1222, float 0.000000e+00
  %1228 = fadd fast float %1227, %989
  %1229 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  br i1 %1185, label %1119, label %1230

; <label>:1230                                    ; preds = %1226
  %1231 = and i32 %1070, 4
  %1232 = and i32 %1070, 8
  %1233 = add i32 %1026, 0
  %1234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1233, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1236 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1234, %dx.types.Handle %1235, float %1163, float %1166, float undef, float undef, i32 0, i32 0, i32 undef, float %1168, float %1170, float undef, float %1172, float %1174, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1237 = extractvalue %dx.types.ResRet.f32 %1236, 0
  %1238 = extractvalue %dx.types.ResRet.f32 %1236, 1
  %1239 = extractvalue %dx.types.ResRet.f32 %1236, 2
  %1240 = extractvalue %dx.types.ResRet.f32 %1236, 3
  %1241 = bitcast float %1052 to i32
  %1242 = and i32 %1241, 255
  %1243 = uitofp i32 %1242 to float
  %1244 = lshr i32 %1241, 8
  %1245 = and i32 %1244, 255
  %1246 = uitofp i32 %1245 to float
  %1247 = fmul fast float %1240, %1243
  %1248 = fadd fast float %1247, %1246
  %1249 = fmul fast float %1248, 0x3F70101000000000
  %1250 = add i32 %1027, 0
  %1251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1250, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1252 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1251, %dx.types.Handle %1235, float %1163, float %1166, float undef, float undef, i32 0, i32 0, i32 undef, float %1168, float %1170, float undef, float %1172, float %1174, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1253 = extractvalue %dx.types.ResRet.f32 %1252, 0
  %1254 = extractvalue %dx.types.ResRet.f32 %1252, 1
  %1255 = extractvalue %dx.types.ResRet.f32 %1252, 2
  %1256 = extractvalue %dx.types.ResRet.f32 %1252, 3
  %1257 = bitcast float %1046 to i32
  %1258 = and i32 %1257, 255
  %1259 = uitofp i32 %1258 to float
  %1260 = lshr i32 %1257, 8
  %1261 = and i32 %1260, 255
  %1262 = uitofp i32 %1261 to float
  %1263 = lshr i32 %1257, 16
  %1264 = and i32 %1263, 255
  %1265 = uitofp i32 %1264 to float
  %1266 = fmul fast float %1265, 0x3F70101000000000
  %1267 = fmul fast float %1253, %1259
  %1268 = fadd fast float %1267, %1262
  %1269 = fmul fast float %1268, 0x3F70101000000000
  %1270 = fadd fast float %1254, -5.000000e-01
  %1271 = fadd fast float %1256, -5.000000e-01
  %1272 = fmul fast float %1270, %1266
  %1273 = fmul fast float %1271, %1266
  %1274 = fadd fast float %1272, 5.000000e-01
  %1275 = fadd fast float %1273, 5.000000e-01
  %1276 = fmul fast float %1237, %1055
  %1277 = fmul fast float %1238, %1056
  %1278 = fmul fast float %1239, %1057
  %1279 = fmul fast float %1274, 2.000000e+00
  %1280 = fadd fast float %1279, -1.000000e+00
  %1281 = fmul fast float %1275, 2.000000e+00
  %1282 = fadd fast float %1281, -1.000000e+00
  %1283 = fadd fast float %1280, %1282
  %1284 = fmul fast float %1283, 5.000000e-01
  %1285 = fsub fast float %1280, %1282
  %1286 = fmul fast float %1285, 5.000000e-01
  %1287 = call float @dx.op.unary.f32(i32 6, float %1284)  ; FAbs(value)
  %1288 = fsub fast float 1.000000e+00, %1287
  %1289 = call float @dx.op.unary.f32(i32 6, float %1286)  ; FAbs(value)
  %1290 = fsub fast float %1288, %1289
  %1291 = call float @dx.op.dot3.f32(i32 55, float %1284, float %1286, float %1290, float %1284, float %1286, float %1290)  ; Dot3(ax,ay,az,bx,by,bz)
  %1292 = call float @dx.op.unary.f32(i32 25, float %1291)  ; Rsqrt(value)
  %1293 = fmul fast float %1284, %1292
  %1294 = fmul fast float %1286, %1292
  %1295 = fmul fast float %1292, %1290
  %1296 = fmul fast float %1295, %1020
  %1297 = fmul fast float %1295, %1021
  %1298 = fmul fast float %1295, %1022
  %1299 = fmul fast float %1293, %1043
  %1300 = fmul fast float %1293, %1044
  %1301 = fmul fast float %1293, %1045
  %1302 = fadd fast float %1299, %1296
  %1303 = fadd fast float %1300, %1297
  %1304 = fadd fast float %1301, %1298
  %1305 = fmul fast float %1294, %1049
  %1306 = fmul fast float %1294, %1050
  %1307 = fmul fast float %1294, %1051
  %1308 = fadd fast float %1302, %1305
  %1309 = fadd fast float %1303, %1306
  %1310 = fadd fast float %1304, %1307
  %1311 = call float @dx.op.dot3.f32(i32 55, float %1308, float %1309, float %1310, float %1308, float %1309, float %1310)  ; Dot3(ax,ay,az,bx,by,bz)
  %1312 = call float @dx.op.unary.f32(i32 25, float %1311)  ; Rsqrt(value)
  %1313 = fmul fast float %1308, %1312
  %1314 = fmul fast float %1309, %1312
  %1315 = fmul fast float %1310, %1312
  %1316 = icmp ne i32 %1232, 0
  %1317 = select i1 %1316, float 1.000000e+00, float 0.000000e+00
  %1318 = fmul fast float %1222, %1317
  %1319 = and i32 %1070, 1
  %1320 = icmp eq i32 %1319, 0
  br i1 %1320, label %1321, label %1325

; <label>:1321                                    ; preds = %1230
  %1322 = fsub fast float %1313, %1003
  %1323 = fsub fast float %1314, %1004
  %1324 = fsub fast float %1315, %1005
  br label %1325

; <label>:1325                                    ; preds = %1321, %1230
  %1326 = phi float [ %1322, %1321 ], [ %1313, %1230 ]
  %1327 = phi float [ %1323, %1321 ], [ %1314, %1230 ]
  %1328 = phi float [ %1324, %1321 ], [ %1315, %1230 ]
  %1329 = fmul float %1328, %1318
  %1330 = fmul float %1327, %1318
  %1331 = fmul float %1326, %1318
  %1332 = fadd fast float %1331, %1003
  %1333 = fadd fast float %1330, %1004
  %1334 = fadd fast float %1329, %1005
  %1335 = icmp ne i32 %1231, 0
  %1336 = select i1 %1335, float 1.000000e+00, float 0.000000e+00
  %1337 = fmul fast float %1222, %1336
  %1338 = fsub fast float %1276, %1010
  %1339 = fsub fast float %1277, %1011
  %1340 = fsub fast float %1278, %1012
  %1341 = fmul fast float %1338, %1337
  %1342 = fmul fast float %1339, %1337
  %1343 = fmul fast float %1340, %1337
  %1344 = fadd fast float %1341, %1010
  %1345 = fadd fast float %1342, %1011
  %1346 = fadd fast float %1343, %1012
  %1347 = fsub fast float %1249, %1009
  %1348 = fmul fast float %1347, %1337
  %1349 = fadd fast float %1348, %1009
  %1350 = fmul fast float %1337, %996
  %1351 = fsub fast float %996, %1350
  %1352 = fmul fast float %1337, %995
  %1353 = fsub fast float %995, %1352
  %1354 = bitcast float %1064 to i32
  %1355 = lshr i32 %1354, 16
  %1356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1355)  ; LegacyF16ToF32(value)
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = and i32 %1358, 1
  %1360 = icmp eq i32 %1359, 0
  br i1 %1360, label %1361, label %1386

; <label>:1361                                    ; preds = %1325
  %1362 = fadd fast float %1249, 0xBFB99999A0000000
  %1363 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1364 = fmul fast float %1363, 0x3FF1C71C80000000
  %1365 = fsub fast float 1.000000e+00, %1364
  %1366 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1367 = fmul fast float %1366, %1276
  %1368 = fmul fast float %1366, %1277
  %1369 = fmul fast float %1366, %1278
  %1370 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  %1371 = call float @dx.op.unary.f32(i32 7, float %1368)  ; Saturate(value)
  %1372 = call float @dx.op.unary.f32(i32 7, float %1369)  ; Saturate(value)
  %1373 = call float @dx.op.binary.f32(i32 35, float %1371, float %1372)  ; FMax(a,b)
  %1374 = call float @dx.op.binary.f32(i32 35, float %1370, float %1373)  ; FMax(a,b)
  %1375 = fcmp fast ogt float %1374, 0.000000e+00
  %1376 = bitcast float %1374 to i32
  %1377 = sub nsw i32 2129859010, %1376
  %1378 = bitcast i32 %1377 to float
  %1379 = select i1 %1375, float %1378, float 0.000000e+00
  %1380 = fmul fast float %1370, %1356
  %1381 = fmul fast float %1371, %1356
  %1382 = fmul fast float %1372, %1356
  %1383 = fmul fast float %1380, %1379
  %1384 = fmul fast float %1381, %1379
  %1385 = fmul fast float %1382, %1379
  br label %1386

; <label>:1386                                    ; preds = %1361, %1325
  %1387 = phi float [ %1356, %1325 ], [ %1383, %1361 ]
  %1388 = phi float [ %1356, %1325 ], [ %1384, %1361 ]
  %1389 = phi float [ %1356, %1325 ], [ %1385, %1361 ]
  %1390 = fsub fast float %1387, %997
  %1391 = fsub fast float %1388, %998
  %1392 = fsub fast float %1389, %999
  %1393 = fmul fast float %1390, %1337
  %1394 = fmul fast float %1391, %1337
  %1395 = fmul fast float %1392, %1337
  %1396 = fadd fast float %1393, %997
  %1397 = fadd fast float %1394, %998
  %1398 = fadd fast float %1395, %999
  %1399 = fadd fast float %1222, %1008
  %1400 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  %1401 = fsub fast float %1269, %1007
  %1402 = fmul fast float %1401, %1318
  %1403 = fadd fast float %1402, %1007
  %1404 = fsub fast float %1255, %1006
  %1405 = fmul fast float %1404, %1318
  %1406 = fadd fast float %1405, %1006
  br i1 %1320, label %1415, label %1407

; <label>:1407                                    ; preds = %1386
  %1408 = and i32 %1070, 32768
  %1409 = icmp eq i32 %1408, 0
  br i1 %1409, label %1425, label %1410

; <label>:1410                                    ; preds = %1407
  %1411 = fmul fast float %1318, 1.270000e+02
  %1412 = fadd fast float %1411, %992
  %1413 = fadd fast float %1411, %993
  %1414 = fadd fast float %1411, %994
  br label %1425

; <label>:1415                                    ; preds = %1386
  %1416 = fsub fast float 1.270000e+02, %992
  %1417 = fsub fast float 1.270000e+02, %993
  %1418 = fsub fast float 1.270000e+02, %994
  %1419 = fmul fast float %1318, %1416
  %1420 = fmul fast float %1318, %1417
  %1421 = fmul fast float %1318, %1418
  %1422 = fadd fast float %1419, %992
  %1423 = fadd fast float %1420, %993
  %1424 = fadd fast float %1421, %994
  br label %1425

; <label>:1425                                    ; preds = %1415, %1410, %1407
  %1426 = phi float [ %1412, %1410 ], [ %992, %1407 ], [ %1422, %1415 ]
  %1427 = phi float [ %1413, %1410 ], [ %993, %1407 ], [ %1423, %1415 ]
  %1428 = phi float [ %1414, %1410 ], [ %994, %1407 ], [ %1424, %1415 ]
  %1429 = call float @dx.op.dot3.f32(i32 55, float %1276, float %1277, float %1278, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 0
  %1432 = extractvalue %dx.types.CBufRet.f32 %1430, 1
  %1433 = fmul fast float %1432, %1429
  %1434 = fadd fast float %1433, %1431
  %1435 = call float @dx.op.unary.f32(i32 7, float %1434)  ; Saturate(value)
  %1436 = bitcast float %1058 to i32
  %1437 = and i32 %1436, 65535
  %1438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1437)  ; LegacyF16ToF32(value)
  %1439 = lshr i32 %1436, 16
  %1440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1439)  ; LegacyF16ToF32(value)
  %1441 = fcmp fast oge float %1438, 0.000000e+00
  %1442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1443 = extractvalue %dx.types.CBufRet.f32 %1442, 0
  %1444 = select i1 %1441, float %1438, float %1443
  %1445 = fadd fast float %1444, %1440
  %1446 = fsub fast float %1435, %991
  %1447 = fmul fast float %1446, %1222
  %1448 = fadd fast float %1447, %991
  %1449 = fmul fast float %1445, %1222
  %1450 = call float @dx.op.binary.f32(i32 35, float %990, float %1449)  ; FMax(a,b)
  %1451 = and i32 %1070, 16
  %1452 = icmp eq i32 %1451, 0
  br i1 %1452, label %1474, label %1453

; <label>:1453                                    ; preds = %1425
  %1454 = add i32 %1061, 0
  %1455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1454, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1456 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1455, %dx.types.Handle %1235, float %1163, float %1166, float undef, float undef, i32 0, i32 0, i32 undef, float %1168, float %1170, float undef, float %1172, float %1174, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1457 = extractvalue %dx.types.ResRet.f32 %1456, 0
  %1458 = extractvalue %dx.types.ResRet.f32 %1456, 1
  %1459 = extractvalue %dx.types.ResRet.f32 %1456, 2
  %1460 = and i32 %1354, 65535
  %1461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1460)  ; LegacyF16ToF32(value)
  %1462 = fmul fast float %1457, %1055
  %1463 = fmul fast float %1458, %1056
  %1464 = fmul fast float %1459, %1057
  %1465 = and i32 %1070, 16384
  %1466 = icmp ne i32 %1465, 0
  %1467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.f32 %1467, 0
  %1469 = select i1 %1466, float %1468, float 1.000000e+00
  %1470 = fmul fast float %1469, %1461
  %1471 = fmul fast float %1462, %1470
  %1472 = fmul fast float %1463, %1470
  %1473 = fmul fast float %1464, %1470
  br label %1474

; <label>:1474                                    ; preds = %1453, %1425
  %1475 = phi float [ %1471, %1453 ], [ 0.000000e+00, %1425 ]
  %1476 = phi float [ %1472, %1453 ], [ 0.000000e+00, %1425 ]
  %1477 = phi float [ %1473, %1453 ], [ 0.000000e+00, %1425 ]
  %1478 = fsub fast float %1475, %1000
  %1479 = fsub fast float %1476, %1001
  %1480 = fsub fast float %1477, %1002
  %1481 = fmul fast float %1478, %1222
  %1482 = fmul fast float %1479, %1222
  %1483 = fmul fast float %1480, %1222
  %1484 = fadd fast float %1481, %1000
  %1485 = fadd fast float %1482, %1001
  %1486 = fadd fast float %1483, %1002
  br label %1119

; <label>:1487                                    ; preds = %1119
  br label %1488

; <label>:1488                                    ; preds = %1487, %883
  %1489 = phi float [ 0.000000e+00, %883 ], [ %1120, %1487 ]
  %1490 = phi float [ %905, %883 ], [ %1121, %1487 ]
  %1491 = phi float [ %903, %883 ], [ %1122, %1487 ]
  %1492 = phi float [ %892, %883 ], [ %1123, %1487 ]
  %1493 = phi float [ %893, %883 ], [ %1124, %1487 ]
  %1494 = phi float [ %894, %883 ], [ %1125, %1487 ]
  %1495 = phi float [ 0.000000e+00, %883 ], [ %1126, %1487 ]
  %1496 = phi float [ 0.000000e+00, %883 ], [ %1127, %1487 ]
  %1497 = phi float [ %895, %883 ], [ %1128, %1487 ]
  %1498 = phi float [ %896, %883 ], [ %1129, %1487 ]
  %1499 = phi float [ %897, %883 ], [ %1130, %1487 ]
  %1500 = phi float [ %889, %883 ], [ %1131, %1487 ]
  %1501 = phi float [ %890, %883 ], [ %1132, %1487 ]
  %1502 = phi float [ %891, %883 ], [ %1133, %1487 ]
  %1503 = phi float [ %931, %883 ], [ %1134, %1487 ]
  %1504 = phi float [ %932, %883 ], [ %1135, %1487 ]
  %1505 = phi float [ %933, %883 ], [ %1136, %1487 ]
  %1506 = phi float [ %901, %883 ], [ %1137, %1487 ]
  %1507 = phi float [ %900, %883 ], [ %1138, %1487 ]
  %1508 = phi float [ 0.000000e+00, %883 ], [ %1139, %1487 ]
  %1509 = phi float [ %898, %883 ], [ %1140, %1487 ]
  %1510 = phi float [ %886, %883 ], [ %1141, %1487 ]
  %1511 = phi float [ %887, %883 ], [ %1142, %1487 ]
  %1512 = phi float [ %888, %883 ], [ %1143, %1487 ]
  %1513 = call float @dx.op.dot3.f32(i32 55, float %1503, float %1504, float %1505, float %1503, float %1504, float %1505)  ; Dot3(ax,ay,az,bx,by,bz)
  %1514 = call float @dx.op.unary.f32(i32 25, float %1513)  ; Rsqrt(value)
  %1515 = fmul fast float %1514, %1503
  %1516 = fmul fast float %1514, %1504
  %1517 = fmul fast float %1514, %1505
  %1518 = fadd fast float %1508, %899
  %1519 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1520 = call float @dx.op.dot3.f32(i32 55, float %1515, float %1516, float %1517, float %1515, float %1516, float %1517)  ; Dot3(ax,ay,az,bx,by,bz)
  %1521 = call float @dx.op.unary.f32(i32 25, float %1520)  ; Rsqrt(value)
  %1522 = fmul fast float %1521, %1515
  %1523 = fmul fast float %1521, %1516
  %1524 = fmul fast float %1521, %1517
  %1525 = fadd fast float %1509, 0xBFB99999A0000000
  %1526 = call float @dx.op.unary.f32(i32 7, float %1525)  ; Saturate(value)
  %1527 = fmul fast float %1526, 0x3FF1C71C80000000
  %1528 = call float @dx.op.binary.f32(i32 36, float %1509, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1529 = fsub fast float 1.000000e+00, %1527
  %1530 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1531 = fmul fast float %1530, %1510
  %1532 = fmul fast float %1530, %1511
  %1533 = fmul fast float %1530, %1512
  %1534 = call float @dx.op.unary.f32(i32 7, float %1531)  ; Saturate(value)
  %1535 = call float @dx.op.unary.f32(i32 7, float %1532)  ; Saturate(value)
  %1536 = call float @dx.op.unary.f32(i32 7, float %1533)  ; Saturate(value)
  %1537 = fmul fast float %1527, %1510
  %1538 = fmul fast float %1527, %1511
  %1539 = fmul fast float %1527, %1512
  %1540 = fadd fast float %1537, %1528
  %1541 = fadd fast float %1538, %1528
  %1542 = fadd fast float %1539, %1528
  %1543 = call float @dx.op.unary.f32(i32 7, float %1540)  ; Saturate(value)
  %1544 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  %1545 = call float @dx.op.unary.f32(i32 7, float %1542)  ; Saturate(value)
  %1546 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = and i32 %1548, 1
  %1550 = icmp eq i32 %1549, 0
  br i1 %1550, label %1565, label %1551

; <label>:1551                                    ; preds = %1488
  %1552 = call float @dx.op.binary.f32(i32 35, float %1535, float %1536)  ; FMax(a,b)
  %1553 = call float @dx.op.binary.f32(i32 35, float %1534, float %1552)  ; FMax(a,b)
  %1554 = fcmp fast ogt float %1553, 0.000000e+00
  %1555 = bitcast float %1553 to i32
  %1556 = sub nsw i32 2129859010, %1555
  %1557 = bitcast i32 %1556 to float
  %1558 = select i1 %1554, float %1557, float 0.000000e+00
  %1559 = fmul fast float %1534, %1497
  %1560 = fmul fast float %1535, %1498
  %1561 = fmul fast float %1536, %1499
  %1562 = fmul fast float %1559, %1558
  %1563 = fmul fast float %1560, %1558
  %1564 = fmul fast float %1561, %1558
  br label %1565

; <label>:1565                                    ; preds = %1551, %1488
  %1566 = phi float [ %1562, %1551 ], [ %1497, %1488 ]
  %1567 = phi float [ %1563, %1551 ], [ %1498, %1488 ]
  %1568 = phi float [ %1564, %1551 ], [ %1499, %1488 ]
  %1569 = call float @dx.op.binary.f32(i32 36, float %1492, float 1.270000e+02)  ; FMin(a,b)
  %1570 = call float @dx.op.binary.f32(i32 36, float %1493, float 1.270000e+02)  ; FMin(a,b)
  %1571 = call float @dx.op.binary.f32(i32 36, float %1494, float 1.270000e+02)  ; FMin(a,b)
  %1572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1573 = extractvalue %dx.types.CBufRet.i32 %1572, 3
  %1574 = and i32 %1573, 8
  %1575 = icmp ne i32 %1574, 0
  %1576 = call float @dx.op.binary.f32(i32 35, float %1534, float %1510)  ; FMax(a,b)
  %1577 = call float @dx.op.binary.f32(i32 35, float %1535, float %1510)  ; FMax(a,b)
  %1578 = call float @dx.op.binary.f32(i32 35, float %1536, float %1510)  ; FMax(a,b)
  %1579 = call float @dx.op.dot3.f32(i32 55, float %1534, float %1535, float %1536, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1580 = select i1 %201, float %1510, float %1534
  %1581 = select i1 %201, float %1579, float %1535
  %1582 = select i1 %201, float 1.000000e+00, float %1536
  %1583 = select i1 %1575, float %1576, float %1580
  %1584 = select i1 %1575, float %1577, float %1581
  %1585 = select i1 %1575, float %1578, float %1582
  %1586 = call float @dx.op.dot3.f32(i32 55, float %1566, float %1567, float %1568, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1587 = select i1 %201, float %1586, float %1566
  %1588 = select i1 %201, float %1586, float %1567
  %1589 = select i1 %201, float %1586, float %1568
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = add i32 %1591, 0
  %1593 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1592, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1594 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1593, %dx.types.Handle %82, float %68, float %69, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1595 = extractvalue %dx.types.ResRet.f32 %1594, 0
  %1596 = extractvalue %dx.types.ResRet.f32 %1594, 1
  %1597 = extractvalue %dx.types.ResRet.f32 %1594, 2
  %1598 = extractvalue %dx.types.ResRet.f32 %1594, 3
  %1599 = fmul fast float %1595, 2.000000e+00
  %1600 = fadd fast float %1599, -1.000000e+00
  %1601 = fmul fast float %1596, 2.000000e+00
  %1602 = fadd fast float %1601, -1.000000e+00
  %1603 = fmul fast float %1600, %91
  %1604 = fmul fast float %1600, %92
  %1605 = fmul fast float %1600, %93
  %1606 = fmul fast float %1602, %104
  %1607 = fmul fast float %1602, %105
  %1608 = fmul fast float %1602, %106
  %1609 = fadd fast float %1603, %1606
  %1610 = fadd fast float %1604, %1607
  %1611 = fadd fast float %1605, %1608
  %1612 = call float @dx.op.dot3.f32(i32 55, float %1609, float %1610, float %1611, float %1609, float %1610, float %1611)  ; Dot3(ax,ay,az,bx,by,bz)
  %1613 = call float @dx.op.unary.f32(i32 25, float %1612)  ; Rsqrt(value)
  %1614 = fmul fast float %1609, %1613
  %1615 = fmul fast float %1610, %1613
  %1616 = fmul fast float %1611, %1613
  %1617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1618 = extractvalue %dx.types.ResRet.i32 %1617, 0
  %1619 = bitcast i32 %1618 to float
  %1620 = fmul fast float %1619, %1597
  %1621 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  %1622 = extractvalue %dx.types.ResRet.i32 %1617, 1
  %1623 = bitcast i32 %1622 to float
  %1624 = fmul fast float %1623, %1598
  %1625 = fmul fast float %1624, %1522
  %1626 = fmul fast float %1624, %1523
  %1627 = fmul fast float %1624, %1524
  %1628 = fadd fast float %1625, %1614
  %1629 = fadd fast float %1626, %1615
  %1630 = fadd fast float %1627, %1616
  %1631 = call float @dx.op.dot3.f32(i32 55, float %1628, float %1629, float %1630, float %1628, float %1629, float %1630)  ; Dot3(ax,ay,az,bx,by,bz)
  %1632 = call float @dx.op.unary.f32(i32 25, float %1631)  ; Rsqrt(value)
  %1633 = fmul fast float %1628, %1632
  %1634 = fmul fast float %1629, %1632
  %1635 = fmul fast float %1630, %1632
  %1636 = and i32 %177, 3
  %1637 = select i1 %171, i32 %1636, i32 0
  %1638 = icmp eq i32 %1637, 1
  br i1 %1638, label %1639, label %1715

; <label>:1639                                    ; preds = %1565
  %1640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1641 = extractvalue %dx.types.CBufRet.f32 %1640, 0
  %1642 = extractvalue %dx.types.CBufRet.f32 %1640, 1
  %1643 = fadd fast float %1641, %140
  %1644 = fadd fast float %1642, %141
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 0
  %1647 = extractvalue %dx.types.CBufRet.f32 %1645, 1
  %1648 = fsub fast float %1643, %1646
  %1649 = fsub fast float %1644, %1647
  %1650 = fmul fast float %1648, %1648
  %1651 = fmul fast float %1649, %1649
  %1652 = fadd fast float %1650, %1651
  %1653 = call float @dx.op.unary.f32(i32 24, float %1652)  ; Sqrt(value)
  %1654 = extractvalue %dx.types.CBufRet.f32 %1645, 2
  %1655 = fcmp fast olt float %1653, %1654
  br i1 %1655, label %1656, label %1709

; <label>:1656                                    ; preds = %1639
  %1657 = extractvalue %dx.types.CBufRet.f32 %1640, 2
  %1658 = fadd fast float %1657, %142
  %1659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1660 = extractvalue %dx.types.CBufRet.f32 %1659, 0
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 0
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 0
  %1665 = extractvalue %dx.types.CBufRet.f32 %1659, 1
  %1666 = extractvalue %dx.types.CBufRet.f32 %1661, 1
  %1667 = extractvalue %dx.types.CBufRet.f32 %1663, 1
  %1668 = extractvalue %dx.types.CBufRet.f32 %1659, 3
  %1669 = extractvalue %dx.types.CBufRet.f32 %1661, 3
  %1670 = extractvalue %dx.types.CBufRet.f32 %1663, 3
  %1671 = fadd fast float %1668, %1643
  %1672 = fadd fast float %1669, %1644
  %1673 = fadd fast float %1658, %1670
  %1674 = fmul fast float %1671, %1660
  %1675 = call float @dx.op.tertiary.f32(i32 46, float %1672, float %1662, float %1674)  ; FMad(a,b,c)
  %1676 = call float @dx.op.tertiary.f32(i32 46, float %1673, float %1664, float %1675)  ; FMad(a,b,c)
  %1677 = fmul fast float %1671, %1665
  %1678 = call float @dx.op.tertiary.f32(i32 46, float %1672, float %1666, float %1677)  ; FMad(a,b,c)
  %1679 = call float @dx.op.tertiary.f32(i32 46, float %1673, float %1667, float %1678)  ; FMad(a,b,c)
  %1680 = fsub fast float %1676, %1668
  %1681 = fsub fast float %1679, %1669
  %1682 = fsub fast float %1680, %1646
  %1683 = fadd fast float %1682, %1654
  %1684 = fsub fast float %1681, %1647
  %1685 = fadd fast float %1684, %1654
  %1686 = extractvalue %dx.types.CBufRet.f32 %1645, 3
  %1687 = fmul fast float %1683, %1686
  %1688 = fmul fast float %1685, %1686
  %1689 = call float @dx.op.unary.f32(i32 7, float %1687)  ; Saturate(value)
  %1690 = call float @dx.op.unary.f32(i32 7, float %1688)  ; Saturate(value)
  %1691 = fsub fast float 1.000000e+00, %1689
  %1692 = fsub fast float 1.000000e+00, %1690
  %1693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %41, float %1691, float %1692, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1694 = extractvalue %dx.types.ResRet.f32 %1693, 0
  %1695 = fcmp fast ugt float %1694, 0.000000e+00
  br i1 %1695, label %1696, label %1709

; <label>:1696                                    ; preds = %1656
  %1697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1698 = extractvalue %dx.types.CBufRet.f32 %1697, 2
  %1699 = fmul fast float %1698, %1694
  %1700 = extractvalue %dx.types.CBufRet.f32 %1697, 3
  %1701 = fadd fast float %1700, %1699
  %1702 = extractvalue %dx.types.CBufRet.f32 %1663, 2
  %1703 = fadd fast float %1701, %1670
  %1704 = fmul fast float %1676, %1664
  %1705 = call float @dx.op.tertiary.f32(i32 46, float %1679, float %1667, float %1704)  ; FMad(a,b,c)
  %1706 = call float @dx.op.tertiary.f32(i32 46, float %1703, float %1702, float %1705)  ; FMad(a,b,c)
  %1707 = fsub fast float %1706, %1670
  %1708 = fsub fast float %1707, %1657
  br label %1709

; <label>:1709                                    ; preds = %1696, %1656, %1639
  %1710 = phi i1 [ true, %1696 ], [ false, %1656 ], [ false, %1639 ]
  %1711 = phi float [ %1708, %1696 ], [ -1.310720e+05, %1656 ], [ -1.310720e+05, %1639 ]
  %1712 = fsub fast float %1711, %142
  %1713 = call float @dx.op.unary.f32(i32 7, float %1712)  ; Saturate(value)
  %1714 = select i1 %1710, float %1713, float 1.000000e+00
  br label %1715

; <label>:1715                                    ; preds = %1709, %1565
  %1716 = phi float [ %1714, %1709 ], [ 0.000000e+00, %1565 ]
  %1717 = icmp eq i32 %1637, 3
  %1718 = select i1 %1717, float 1.000000e+00, float %1716
  %1719 = call float @dx.op.binary.f32(i32 35, float %1489, float %1718)  ; FMax(a,b)
  %1720 = fcmp fast olt float %1718, 1.000000e+00
  br i1 %1720, label %1721, label %1881

; <label>:1721                                    ; preds = %1715
  %1722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %1723 = extractvalue %dx.types.CBufRet.i32 %1722, 0
  %1724 = and i32 %1723, 7
  %1725 = icmp eq i32 %1724, 0
  br i1 %1725, label %1797, label %1726

; <label>:1726                                    ; preds = %1721
  %1727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1728 = extractvalue %dx.types.CBufRet.f32 %1727, 0
  %1729 = extractvalue %dx.types.CBufRet.f32 %1727, 1
  %1730 = extractvalue %dx.types.CBufRet.f32 %1727, 2
  %1731 = fadd fast float %1728, %140
  %1732 = fadd fast float %1729, %141
  %1733 = fadd fast float %1730, %142
  %1734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %1735 = extractvalue %dx.types.CBufRet.f32 %1734, 0
  %1736 = extractvalue %dx.types.CBufRet.f32 %1734, 1
  %1737 = extractvalue %dx.types.CBufRet.f32 %1734, 2
  %1738 = extractvalue %dx.types.CBufRet.f32 %1734, 3
  %1739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %1740 = extractvalue %dx.types.CBufRet.f32 %1739, 0
  %1741 = extractvalue %dx.types.CBufRet.f32 %1739, 1
  %1742 = extractvalue %dx.types.CBufRet.f32 %1739, 2
  %1743 = extractvalue %dx.types.CBufRet.f32 %1739, 3
  %1744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.f32 %1744, 0
  %1746 = extractvalue %dx.types.CBufRet.f32 %1744, 1
  %1747 = extractvalue %dx.types.CBufRet.f32 %1744, 2
  %1748 = extractvalue %dx.types.CBufRet.f32 %1744, 3
  %1749 = fmul fast float %1731, %1735
  %1750 = call float @dx.op.tertiary.f32(i32 46, float %1732, float %1736, float %1749)  ; FMad(a,b,c)
  %1751 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %1737, float %1750)  ; FMad(a,b,c)
  %1752 = fadd fast float %1751, %1738
  %1753 = fmul fast float %1740, %1731
  %1754 = call float @dx.op.tertiary.f32(i32 46, float %1732, float %1741, float %1753)  ; FMad(a,b,c)
  %1755 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %1742, float %1754)  ; FMad(a,b,c)
  %1756 = fadd fast float %1755, %1743
  %1757 = fmul fast float %1745, %1731
  %1758 = call float @dx.op.tertiary.f32(i32 46, float %1732, float %1746, float %1757)  ; FMad(a,b,c)
  %1759 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %1747, float %1758)  ; FMad(a,b,c)
  %1760 = fadd fast float %1759, %1748
  %1761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.f32 %1761, 1
  %1763 = extractvalue %dx.types.CBufRet.f32 %1761, 0
  %1764 = fmul fast float %1763, %212
  %1765 = fadd fast float %1760, %1764
  %1766 = fmul fast float %212, 0x401921FB60000000
  %1767 = call float @dx.op.unary.f32(i32 13, float %1766)  ; Sin(value)
  %1768 = call float @dx.op.unary.f32(i32 12, float %1766)  ; Cos(value)
  %1769 = fmul fast float %1768, %1762
  %1770 = call float @dx.op.tertiary.f32(i32 46, float %1767, float %1762, float 0.000000e+00)  ; FMad(a,b,c)
  %1771 = fmul fast float %1762, %1767
  %1772 = fsub fast float -0.000000e+00, %1771
  %1773 = call float @dx.op.tertiary.f32(i32 46, float %1768, float %1762, float 0.000000e+00)  ; FMad(a,b,c)
  br label %1774

; <label>:1774                                    ; preds = %1774, %1726
  %1775 = phi float [ 0.000000e+00, %1726 ], [ %1789, %1774 ]
  %1776 = phi i32 [ 0, %1726 ], [ %1790, %1774 ]
  %1777 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %1776
  %1778 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %1776
  %1779 = load float, float* %1777, align 4
  %1780 = load float, float* %1778, align 4
  %1781 = fmul fast float %1769, %1779
  %1782 = call float @dx.op.tertiary.f32(i32 46, float %1780, float %1772, float %1781)  ; FMad(a,b,c)
  %1783 = fmul fast float %1779, %1770
  %1784 = call float @dx.op.tertiary.f32(i32 46, float %1780, float %1773, float %1783)  ; FMad(a,b,c)
  %1785 = fadd fast float %1752, %1782
  %1786 = fadd fast float %1756, %1784
  %1787 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %43, float %1785, float %1786, float undef, float undef, i32 0, i32 0, i32 undef, float %1765)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1788 = extractvalue %dx.types.ResRet.f32 %1787, 0
  %1789 = fadd fast float %1788, %1775
  %1790 = add nuw nsw i32 %1776, 1
  %1791 = icmp eq i32 %1790, 4
  br i1 %1791, label %1792, label %1774

; <label>:1792                                    ; preds = %1774
  %1793 = fmul fast float %1789, 2.500000e-01
  %1794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1794, 1
  %1796 = fmul fast float %1795, %1793
  br label %1797

; <label>:1797                                    ; preds = %1792, %1721
  %1798 = phi float [ %1793, %1792 ], [ 0.000000e+00, %1721 ]
  %1799 = phi float [ %1796, %1792 ], [ 0.000000e+00, %1721 ]
  %1800 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %1801 = extractvalue %dx.types.CBufRet.i32 %1800, 0
  %1802 = and i32 %1801, 7
  %1803 = icmp eq i32 %1802, 0
  br i1 %1803, label %1881, label %1804

; <label>:1804                                    ; preds = %1797
  %1805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %1806 = extractvalue %dx.types.CBufRet.f32 %1805, 0
  %1807 = fmul fast float %1806, %1798
  %1808 = fadd fast float %1807, %1719
  %1809 = extractvalue %dx.types.CBufRet.f32 %1805, 2
  %1810 = fmul fast float %1809, %1798
  %1811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %1812 = extractvalue %dx.types.CBufRet.f32 %1811, 0
  %1813 = fmul fast float %1812, %1798
  %1814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1815 = and i32 %1801, 8
  %1816 = icmp eq i32 %1815, 0
  br i1 %1816, label %1881, label %1817

; <label>:1817                                    ; preds = %1804
  %1818 = extractvalue %dx.types.CBufRet.f32 %1814, 2
  %1819 = fadd fast float %1818, %142
  %1820 = extractvalue %dx.types.CBufRet.f32 %1814, 1
  %1821 = fadd fast float %1820, %141
  %1822 = extractvalue %dx.types.CBufRet.f32 %1814, 0
  %1823 = fadd fast float %1822, %140
  %1824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %1825 = extractvalue %dx.types.CBufRet.f32 %1824, 0
  %1826 = extractvalue %dx.types.CBufRet.f32 %1824, 1
  %1827 = extractvalue %dx.types.CBufRet.f32 %1824, 2
  %1828 = fsub fast float %1823, %1825
  %1829 = fsub fast float %1821, %1826
  %1830 = fsub fast float %1819, %1827
  %1831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %1832 = extractvalue %dx.types.CBufRet.f32 %1831, 0
  %1833 = extractvalue %dx.types.CBufRet.f32 %1831, 1
  %1834 = extractvalue %dx.types.CBufRet.f32 %1831, 2
  %1835 = fmul fast float %1828, %1832
  %1836 = fmul fast float %1829, %1833
  %1837 = fmul fast float %1830, %1834
  %1838 = fcmp fast oge float %1835, 0.000000e+00
  %1839 = fcmp fast oge float %1836, 0.000000e+00
  %1840 = fcmp fast oge float %1837, 0.000000e+00
  %1841 = and i1 %1838, %1839
  %1842 = and i1 %1840, %1841
  %1843 = fcmp fast ole float %1835, 1.000000e+00
  %1844 = fcmp fast ole float %1836, 1.000000e+00
  %1845 = fcmp fast ole float %1837, 1.000000e+00
  %1846 = and i1 %1843, %1844
  %1847 = and i1 %1845, %1846
  %1848 = and i1 %1842, %1847
  br i1 %1848, label %1849, label %1881

; <label>:1849                                    ; preds = %1817
  %1850 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %1851 = extractvalue %dx.types.CBufRet.i32 %1850, 0
  %1852 = icmp eq i32 %1851, 0
  br i1 %1852, label %1859, label %1853

; <label>:1853                                    ; preds = %1849
  %1854 = add i32 %1851, 0
  %1855 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1854, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1856 = fsub fast float -0.000000e+00, %1836
  %1857 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1855, %dx.types.Handle %82, float %1835, float %1856, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1858 = extractvalue %dx.types.ResRet.f32 %1857, 0
  br label %1859

; <label>:1859                                    ; preds = %1853, %1849
  %1860 = phi float [ %1858, %1853 ], [ 1.000000e+00, %1849 ]
  %1861 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %1862 = extractvalue %dx.types.CBufRet.i32 %1861, 0
  %1863 = and i32 %1862, 32
  %1864 = icmp ne i32 %1863, 0
  %1865 = fmul fast float %1860, %1798
  %1866 = select i1 %1864, float %1860, float %1865
  %1867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %1868 = extractvalue %dx.types.CBufRet.f32 %1867, 1
  %1869 = fmul fast float %1866, %1868
  %1870 = fadd fast float %1869, %1808
  %1871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %1872 = extractvalue %dx.types.CBufRet.f32 %1871, 0
  %1873 = fmul fast float %1866, %1872
  %1874 = fadd fast float %1873, %1799
  %1875 = extractvalue %dx.types.CBufRet.f32 %1871, 1
  %1876 = fmul fast float %1866, %1875
  %1877 = fadd fast float %1876, %1810
  %1878 = extractvalue %dx.types.CBufRet.f32 %1871, 2
  %1879 = fmul fast float %1878, %1866
  %1880 = fadd fast float %1879, %1813
  br label %1881

; <label>:1881                                    ; preds = %1859, %1817, %1804, %1797, %1715
  %1882 = phi float [ %1719, %1797 ], [ %1719, %1715 ], [ %1870, %1859 ], [ %1808, %1817 ], [ %1808, %1804 ]
  %1883 = phi float [ %1799, %1797 ], [ 0.000000e+00, %1715 ], [ %1874, %1859 ], [ %1799, %1817 ], [ %1799, %1804 ]
  %1884 = phi float [ 0.000000e+00, %1797 ], [ 0.000000e+00, %1715 ], [ %1877, %1859 ], [ %1810, %1817 ], [ %1810, %1804 ]
  %1885 = phi float [ 0.000000e+00, %1797 ], [ 0.000000e+00, %1715 ], [ %1880, %1859 ], [ %1813, %1817 ], [ %1813, %1804 ]
  %1886 = call float @dx.op.unary.f32(i32 7, float %1882)  ; Saturate(value)
  %1887 = call float @dx.op.unary.f32(i32 7, float %1883)  ; Saturate(value)
  %1888 = call float @dx.op.unary.f32(i32 7, float %1884)  ; Saturate(value)
  %1889 = call float @dx.op.unary.f32(i32 7, float %1885)  ; Saturate(value)
  %1890 = fcmp fast une float %1888, 0.000000e+00
  %1891 = fcmp fast une float %1889, 0.000000e+00
  %1892 = or i1 %1890, %1891
  br i1 %1892, label %1893, label %2475

; <label>:1893                                    ; preds = %1881
  %1894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1895 = extractvalue %dx.types.CBufRet.f32 %1894, 0
  %1896 = extractvalue %dx.types.CBufRet.f32 %1894, 1
  %1897 = extractvalue %dx.types.CBufRet.f32 %1894, 2
  %1898 = fadd fast float %1895, %140
  %1899 = fadd fast float %1896, %141
  %1900 = fadd fast float %1897, %142
  br i1 %1890, label %1901, label %2174

; <label>:1901                                    ; preds = %1893
  %1902 = call float @dx.op.unary.f32(i32 23, float %1506)  ; Log(value)
  %1903 = fmul fast float %1902, 4.000000e+00
  %1904 = call float @dx.op.unary.f32(i32 21, float %1903)  ; Exp(value)
  %1905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %1906 = extractvalue %dx.types.CBufRet.f32 %1905, 0
  %1907 = fmul fast float %1906, %1898
  %1908 = fmul fast float %1906, %1899
  %1909 = fmul fast float %1906, %1900
  %1910 = call float @dx.op.unary.f32(i32 6, float %88)  ; FAbs(value)
  %1911 = call float @dx.op.unary.f32(i32 6, float %89)  ; FAbs(value)
  %1912 = call float @dx.op.unary.f32(i32 6, float %90)  ; FAbs(value)
  %1913 = call float @dx.op.unary.f32(i32 23, float %1910)  ; Log(value)
  %1914 = call float @dx.op.unary.f32(i32 23, float %1911)  ; Log(value)
  %1915 = call float @dx.op.unary.f32(i32 23, float %1912)  ; Log(value)
  %1916 = fmul fast float %1913, 4.000000e+00
  %1917 = fmul fast float %1914, 4.000000e+00
  %1918 = fmul fast float %1915, 4.000000e+00
  %1919 = call float @dx.op.unary.f32(i32 21, float %1916)  ; Exp(value)
  %1920 = call float @dx.op.unary.f32(i32 21, float %1917)  ; Exp(value)
  %1921 = call float @dx.op.unary.f32(i32 21, float %1918)  ; Exp(value)
  %1922 = fadd fast float %1920, %1919
  %1923 = fadd fast float %1922, %1921
  %1924 = fdiv fast float 1.000000e+00, %1923
  %1925 = fmul fast float %1924, %1919
  %1926 = fcmp fast ogt float %88, 0.000000e+00
  %1927 = fcmp fast ogt float %89, 0.000000e+00
  %1928 = fcmp fast ogt float %90, 0.000000e+00
  %1929 = fcmp fast olt float %88, 0.000000e+00
  %1930 = fcmp fast olt float %89, 0.000000e+00
  %1931 = fcmp fast olt float %90, 0.000000e+00
  %1932 = zext i1 %1926 to i32
  %1933 = zext i1 %1927 to i32
  %1934 = zext i1 %1928 to i32
  %1935 = zext i1 %1929 to i32
  %1936 = zext i1 %1930 to i32
  %1937 = zext i1 %1931 to i32
  %1938 = sub nsw i32 %1932, %1935
  %1939 = sub nsw i32 %1933, %1936
  %1940 = sub nsw i32 %1934, %1937
  %1941 = call float @dx.op.unary.f32(i32 83, float %1907)  ; DerivCoarseX(value)
  %1942 = call float @dx.op.unary.f32(i32 83, float %1908)  ; DerivCoarseX(value)
  %1943 = call float @dx.op.unary.f32(i32 83, float %1909)  ; DerivCoarseX(value)
  %1944 = call float @dx.op.unary.f32(i32 84, float %1907)  ; DerivCoarseY(value)
  %1945 = call float @dx.op.unary.f32(i32 84, float %1908)  ; DerivCoarseY(value)
  %1946 = call float @dx.op.unary.f32(i32 84, float %1909)  ; DerivCoarseY(value)
  %1947 = fcmp fast ole float %212, %1925
  %1948 = fmul fast float %1924, %1922
  %1949 = fcmp fast ole float %212, %1948
  %1950 = select i1 %1949, float %1909, float %1907
  %1951 = select i1 %1949, float %1907, float %1908
  %1952 = select i1 %1947, float %1908, float %1950
  %1953 = select i1 %1947, float %1909, float %1951
  %1954 = select i1 %1949, float %1943, float %1941
  %1955 = select i1 %1949, float %1941, float %1942
  %1956 = select i1 %1947, float %1942, float %1954
  %1957 = select i1 %1947, float %1943, float %1955
  %1958 = select i1 %1949, float %1946, float %1944
  %1959 = select i1 %1949, float %1944, float %1945
  %1960 = select i1 %1947, float %1945, float %1958
  %1961 = select i1 %1947, float %1946, float %1959
  %1962 = call float @dx.op.unary.f32(i32 27, float %1952)  ; Round_ni(value)
  %1963 = call float @dx.op.unary.f32(i32 27, float %1953)  ; Round_ni(value)
  %1964 = fptosi float %1962 to i32
  %1965 = fptosi float %1963 to i32
  %1966 = xor i32 %1965, %1964
  %1967 = sitofp i32 %1966 to float
  %1968 = fptosi float %1967 to i32
  %1969 = sitofp i32 %1968 to float
  %1970 = fmul fast float %1969, 0x3FE3C6EF40000000
  %1971 = frem fast float %1962, 2.560000e+02
  %1972 = frem fast float %1963, 2.560000e+02
  %1973 = fptoui float %1971 to i32
  %1974 = fptoui float %1972 to i32
  %1975 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %1973, i32 %1974, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = extractvalue %dx.types.ResRet.f32 %1975, 1
  %1978 = extractvalue %dx.types.ResRet.f32 %1975, 2
  %1979 = fadd fast float %1976, %1970
  %1980 = fadd fast float %1977, %1970
  %1981 = fadd fast float %1978, %1970
  %1982 = call float @dx.op.unary.f32(i32 22, float %1979)  ; Frc(value)
  %1983 = call float @dx.op.unary.f32(i32 22, float %1980)  ; Frc(value)
  %1984 = call float @dx.op.unary.f32(i32 22, float %1981)  ; Frc(value)
  %1985 = fmul fast float %1984, 0x401921FB60000000
  %1986 = call float @dx.op.unary.f32(i32 13, float %1985)  ; Sin(value)
  %1987 = call float @dx.op.unary.f32(i32 12, float %1985)  ; Cos(value)
  %1988 = fsub fast float -0.000000e+00, %1987
  %1989 = fmul fast float %1987, %1952
  %1990 = call float @dx.op.tertiary.f32(i32 46, float %1986, float %1953, float %1989)  ; FMad(a,b,c)
  %1991 = fmul fast float %1986, %1952
  %1992 = call float @dx.op.tertiary.f32(i32 46, float %1988, float %1953, float %1991)  ; FMad(a,b,c)
  %1993 = fadd fast float %1990, %1982
  %1994 = fadd fast float %1992, %1983
  %1995 = extractvalue %dx.types.CBufRet.f32 %1905, 3
  %1996 = bitcast float %1995 to i32
  %1997 = icmp eq i32 %1996, 0
  br i1 %1997, label %2036, label %1998

; <label>:1998                                    ; preds = %1901
  %1999 = add i32 %1996, 0
  %2000 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1999, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2001 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2000, %dx.types.Handle %82, float %1993, float %1994, float undef, float undef, i32 0, i32 0, i32 undef, float %1956, float %1957, float undef, float %1960, float %1961, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2002 = extractvalue %dx.types.ResRet.f32 %2001, 0
  %2003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %2004 = extractvalue %dx.types.CBufRet.f32 %2003, 1
  %2005 = extractvalue %dx.types.CBufRet.f32 %2003, 2
  %2006 = fsub fast float 1.000000e+00, %1888
  %2007 = call float @dx.op.binary.f32(i32 35, float %2006, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2008 = bitcast float %1888 to i32
  %2009 = sitofp i32 %2008 to float
  %2010 = fadd fast float %2009, 0xC1CFBF8940000000
  %2011 = fmul fast float %2005, %2010
  %2012 = fadd fast float %2011, 0x41CFBF8940000000
  %2013 = fptosi float %2012 to i32
  %2014 = bitcast i32 %2013 to float
  %2015 = bitcast float %2007 to i32
  %2016 = sitofp i32 %2015 to float
  %2017 = fadd fast float %2016, 0xC1CFBF8940000000
  %2018 = fmul fast float %2017, %2005
  %2019 = fadd fast float %2018, 0x41CFBF8940000000
  %2020 = fptosi float %2019 to i32
  %2021 = bitcast i32 %2020 to float
  %2022 = fmul fast float %2014, %2004
  %2023 = fmul fast float %2021, %2004
  %2024 = fsub fast float %2007, %2022
  %2025 = fadd fast float %2023, %2007
  %2026 = call float @dx.op.unary.f32(i32 7, float %2024)  ; Saturate(value)
  %2027 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2028 = fsub fast float %2002, %2026
  %2029 = fsub fast float %2027, %2026
  %2030 = bitcast float %2029 to i32
  %2031 = sub nsw i32 2129859010, %2030
  %2032 = bitcast i32 %2031 to float
  %2033 = fmul fast float %2032, %2028
  %2034 = call float @dx.op.unary.f32(i32 7, float %2033)  ; Saturate(value)
  %2035 = fcmp fast olt float %2034, 0x3F70101020000000
  br i1 %2035, label %2174, label %2036

; <label>:2036                                    ; preds = %1998, %1901
  %2037 = phi float [ %2034, %1998 ], [ %1888, %1901 ]
  %2038 = fmul fast float %2037, %1904
  %2039 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %2040 = extractvalue %dx.types.CBufRet.i32 %2039, 1
  %2041 = extractvalue %dx.types.CBufRet.i32 %2039, 0
  %2042 = add i32 %2041, 0
  %2043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2042, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2044 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2043, %dx.types.Handle %81, float %1993, float %1994, float undef, float undef, i32 0, i32 0, i32 undef, float %1956, float %1957, float undef, float %1960, float %1961, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2045 = extractvalue %dx.types.ResRet.f32 %2044, 0
  %2046 = extractvalue %dx.types.ResRet.f32 %2044, 1
  %2047 = extractvalue %dx.types.ResRet.f32 %2044, 2
  %2048 = extractvalue %dx.types.ResRet.f32 %2044, 3
  %2049 = and i32 %2040, 255
  %2050 = uitofp i32 %2049 to float
  %2051 = lshr i32 %2040, 8
  %2052 = and i32 %2051, 255
  %2053 = uitofp i32 %2052 to float
  %2054 = fmul fast float %2048, %2050
  %2055 = fadd fast float %2054, %2053
  %2056 = fmul fast float %2055, 0x3F70101000000000
  %2057 = fadd fast float %2056, 0xBFB99999A0000000
  %2058 = call float @dx.op.unary.f32(i32 7, float %2057)  ; Saturate(value)
  %2059 = fmul fast float %2058, 0x3FF1C71C80000000
  %2060 = call float @dx.op.binary.f32(i32 36, float %2056, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2061 = fsub fast float 1.000000e+00, %2059
  %2062 = call float @dx.op.unary.f32(i32 7, float %2061)  ; Saturate(value)
  %2063 = fmul fast float %2062, %2045
  %2064 = fmul fast float %2062, %2046
  %2065 = fmul fast float %2062, %2047
  %2066 = call float @dx.op.unary.f32(i32 7, float %2063)  ; Saturate(value)
  %2067 = call float @dx.op.unary.f32(i32 7, float %2064)  ; Saturate(value)
  %2068 = call float @dx.op.unary.f32(i32 7, float %2065)  ; Saturate(value)
  %2069 = fmul fast float %2059, %2045
  %2070 = fmul fast float %2059, %2046
  %2071 = fmul fast float %2059, %2047
  %2072 = fadd fast float %2069, %2060
  %2073 = fadd fast float %2070, %2060
  %2074 = fadd fast float %2071, %2060
  %2075 = call float @dx.op.unary.f32(i32 7, float %2072)  ; Saturate(value)
  %2076 = call float @dx.op.unary.f32(i32 7, float %2073)  ; Saturate(value)
  %2077 = call float @dx.op.unary.f32(i32 7, float %2074)  ; Saturate(value)
  %2078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %2079 = extractvalue %dx.types.CBufRet.i32 %2078, 3
  %2080 = extractvalue %dx.types.CBufRet.i32 %2078, 2
  %2081 = add i32 %2080, 0
  %2082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2081, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2083 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2082, %dx.types.Handle %81, float %1993, float %1994, float undef, float undef, i32 0, i32 0, i32 undef, float %1956, float %1957, float undef, float %1960, float %1961, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2084 = extractvalue %dx.types.ResRet.f32 %2083, 0
  %2085 = extractvalue %dx.types.ResRet.f32 %2083, 1
  %2086 = extractvalue %dx.types.ResRet.f32 %2083, 2
  %2087 = extractvalue %dx.types.ResRet.f32 %2083, 3
  %2088 = and i32 %2079, 255
  %2089 = uitofp i32 %2088 to float
  %2090 = lshr i32 %2079, 8
  %2091 = and i32 %2090, 255
  %2092 = uitofp i32 %2091 to float
  %2093 = lshr i32 %2079, 16
  %2094 = and i32 %2093, 255
  %2095 = uitofp i32 %2094 to float
  %2096 = fmul fast float %2095, 0x3F70101000000000
  %2097 = fmul fast float %2084, %2089
  %2098 = fadd fast float %2097, %2092
  %2099 = fmul fast float %2098, 0x3F70101000000000
  %2100 = fadd fast float %2085, -5.000000e-01
  %2101 = fadd fast float %2087, -5.000000e-01
  %2102 = fmul fast float %2100, %2096
  %2103 = fmul fast float %2101, %2096
  %2104 = fadd fast float %2102, 5.000000e-01
  %2105 = fadd fast float %2103, 5.000000e-01
  %2106 = fmul fast float %2104, 2.000000e+00
  %2107 = fadd fast float %2106, -1.000000e+00
  %2108 = fmul fast float %2105, 2.000000e+00
  %2109 = fadd fast float %2108, -1.000000e+00
  %2110 = fadd fast float %2107, %2109
  %2111 = fmul fast float %2110, 5.000000e-01
  %2112 = fsub fast float %2107, %2109
  %2113 = fmul fast float %2112, 5.000000e-01
  %2114 = call float @dx.op.unary.f32(i32 6, float %2111)  ; FAbs(value)
  %2115 = fsub fast float 1.000000e+00, %2114
  %2116 = call float @dx.op.unary.f32(i32 6, float %2113)  ; FAbs(value)
  %2117 = fsub fast float %2115, %2116
  %2118 = call float @dx.op.dot3.f32(i32 55, float %2111, float %2113, float %2117, float %2111, float %2113, float %2117)  ; Dot3(ax,ay,az,bx,by,bz)
  %2119 = call float @dx.op.unary.f32(i32 25, float %2118)  ; Rsqrt(value)
  %2120 = fmul fast float %2111, %2119
  %2121 = fmul fast float %2113, %2119
  %2122 = select i1 %1949, i32 %1939, i32 %1940
  %2123 = select i1 %1947, i32 %1938, i32 %2122
  %2124 = sitofp i32 %2123 to float
  %2125 = fmul fast float %2117, %2124
  %2126 = fmul fast float %2125, %2119
  %2127 = select i1 %1949, float %2126, float %2121
  %2128 = select i1 %1949, float %2121, float %2126
  %2129 = select i1 %1947, float %2126, float %2120
  %2130 = select i1 %1947, float %2121, float %2127
  %2131 = select i1 %1947, float %2120, float %2128
  %2132 = fsub fast float %2066, %1583
  %2133 = fsub fast float %2067, %1584
  %2134 = fsub fast float %2068, %1585
  %2135 = fmul fast float %2132, %2038
  %2136 = fmul fast float %2133, %2038
  %2137 = fmul fast float %2134, %2038
  %2138 = fadd fast float %2135, %1583
  %2139 = fadd fast float %2136, %1584
  %2140 = fadd fast float %2137, %1585
  %2141 = fsub fast float %2075, %1543
  %2142 = fsub fast float %2076, %1544
  %2143 = fsub fast float %2077, %1545
  %2144 = fmul fast float %2141, %2038
  %2145 = fmul fast float %2142, %2038
  %2146 = fmul fast float %2143, %2038
  %2147 = fadd fast float %2144, %1543
  %2148 = fadd fast float %2145, %1544
  %2149 = fadd fast float %2146, %1545
  %2150 = fadd fast float %2129, %1522
  %2151 = fadd fast float %2130, %1523
  %2152 = fadd fast float %2131, %1524
  %2153 = call float @dx.op.dot3.f32(i32 55, float %2150, float %2151, float %2152, float %2150, float %2151, float %2152)  ; Dot3(ax,ay,az,bx,by,bz)
  %2154 = call float @dx.op.unary.f32(i32 25, float %2153)  ; Rsqrt(value)
  %2155 = fmul fast float %2150, %2154
  %2156 = fmul fast float %2151, %2154
  %2157 = fmul fast float %2152, %2154
  %2158 = fsub fast float %2155, %1522
  %2159 = fsub fast float %2156, %1523
  %2160 = fsub fast float %2157, %1524
  %2161 = fmul fast float %2158, %2038
  %2162 = fmul fast float %2159, %2038
  %2163 = fmul fast float %2160, %2038
  %2164 = fadd fast float %2161, %1522
  %2165 = fadd fast float %2162, %1523
  %2166 = fadd fast float %2163, %1524
  %2167 = call float @dx.op.binary.f32(i32 36, float %1506, float %2086)  ; FMin(a,b)
  %2168 = fsub fast float %2167, %1506
  %2169 = fmul fast float %2168, %2038
  %2170 = fadd fast float %2169, %1506
  %2171 = fsub fast float %2099, %1546
  %2172 = fmul fast float %2171, %2038
  %2173 = fadd fast float %2172, %1546
  br label %2174

; <label>:2174                                    ; preds = %2036, %1998, %1893
  %2175 = phi float [ %2138, %2036 ], [ %1583, %1998 ], [ %1583, %1893 ]
  %2176 = phi float [ %2139, %2036 ], [ %1584, %1998 ], [ %1584, %1893 ]
  %2177 = phi float [ %2140, %2036 ], [ %1585, %1998 ], [ %1585, %1893 ]
  %2178 = phi float [ %2147, %2036 ], [ %1543, %1998 ], [ %1543, %1893 ]
  %2179 = phi float [ %2148, %2036 ], [ %1544, %1998 ], [ %1544, %1893 ]
  %2180 = phi float [ %2149, %2036 ], [ %1545, %1998 ], [ %1545, %1893 ]
  %2181 = phi float [ %2164, %2036 ], [ %1522, %1998 ], [ %1522, %1893 ]
  %2182 = phi float [ %2165, %2036 ], [ %1523, %1998 ], [ %1523, %1893 ]
  %2183 = phi float [ %2166, %2036 ], [ %1524, %1998 ], [ %1524, %1893 ]
  %2184 = phi float [ %2173, %2036 ], [ %1546, %1998 ], [ %1546, %1893 ]
  %2185 = phi float [ %2170, %2036 ], [ %1506, %1998 ], [ %1506, %1893 ]
  br i1 %1891, label %2186, label %2475

; <label>:2186                                    ; preds = %2174
  %2187 = call float @dx.op.unary.f32(i32 23, float %2185)  ; Log(value)
  %2188 = fmul fast float %2187, 4.000000e+00
  %2189 = call float @dx.op.unary.f32(i32 21, float %2188)  ; Exp(value)
  %2190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %2191 = extractvalue %dx.types.CBufRet.f32 %2190, 0
  %2192 = fmul fast float %2191, %1898
  %2193 = fmul fast float %2191, %1899
  %2194 = fmul fast float %2191, %1900
  %2195 = call float @dx.op.unary.f32(i32 6, float %88)  ; FAbs(value)
  %2196 = call float @dx.op.unary.f32(i32 6, float %89)  ; FAbs(value)
  %2197 = call float @dx.op.unary.f32(i32 6, float %90)  ; FAbs(value)
  %2198 = call float @dx.op.unary.f32(i32 23, float %2195)  ; Log(value)
  %2199 = call float @dx.op.unary.f32(i32 23, float %2196)  ; Log(value)
  %2200 = call float @dx.op.unary.f32(i32 23, float %2197)  ; Log(value)
  %2201 = fmul fast float %2198, 4.000000e+00
  %2202 = fmul fast float %2199, 4.000000e+00
  %2203 = fmul fast float %2200, 4.000000e+00
  %2204 = call float @dx.op.unary.f32(i32 21, float %2201)  ; Exp(value)
  %2205 = call float @dx.op.unary.f32(i32 21, float %2202)  ; Exp(value)
  %2206 = call float @dx.op.unary.f32(i32 21, float %2203)  ; Exp(value)
  %2207 = fadd fast float %2205, %2204
  %2208 = fadd fast float %2207, %2206
  %2209 = fdiv fast float 1.000000e+00, %2208
  %2210 = fmul fast float %2209, %2204
  %2211 = fcmp fast ogt float %88, 0.000000e+00
  %2212 = fcmp fast ogt float %89, 0.000000e+00
  %2213 = fcmp fast ogt float %90, 0.000000e+00
  %2214 = fcmp fast olt float %88, 0.000000e+00
  %2215 = fcmp fast olt float %89, 0.000000e+00
  %2216 = fcmp fast olt float %90, 0.000000e+00
  %2217 = zext i1 %2211 to i32
  %2218 = zext i1 %2212 to i32
  %2219 = zext i1 %2213 to i32
  %2220 = zext i1 %2214 to i32
  %2221 = zext i1 %2215 to i32
  %2222 = zext i1 %2216 to i32
  %2223 = sub nsw i32 %2217, %2220
  %2224 = sub nsw i32 %2218, %2221
  %2225 = sub nsw i32 %2219, %2222
  %2226 = call float @dx.op.unary.f32(i32 83, float %2192)  ; DerivCoarseX(value)
  %2227 = call float @dx.op.unary.f32(i32 83, float %2193)  ; DerivCoarseX(value)
  %2228 = call float @dx.op.unary.f32(i32 83, float %2194)  ; DerivCoarseX(value)
  %2229 = call float @dx.op.unary.f32(i32 84, float %2192)  ; DerivCoarseY(value)
  %2230 = call float @dx.op.unary.f32(i32 84, float %2193)  ; DerivCoarseY(value)
  %2231 = call float @dx.op.unary.f32(i32 84, float %2194)  ; DerivCoarseY(value)
  %2232 = fcmp fast ole float %212, %2210
  %2233 = fmul fast float %2209, %2207
  %2234 = fcmp fast ole float %212, %2233
  %2235 = select i1 %2234, float %2194, float %2192
  %2236 = select i1 %2234, float %2192, float %2193
  %2237 = select i1 %2232, float %2193, float %2235
  %2238 = select i1 %2232, float %2194, float %2236
  %2239 = select i1 %2234, float %2228, float %2226
  %2240 = select i1 %2234, float %2226, float %2227
  %2241 = select i1 %2232, float %2227, float %2239
  %2242 = select i1 %2232, float %2228, float %2240
  %2243 = select i1 %2234, float %2231, float %2229
  %2244 = select i1 %2234, float %2229, float %2230
  %2245 = select i1 %2232, float %2230, float %2243
  %2246 = select i1 %2232, float %2231, float %2244
  %2247 = call float @dx.op.unary.f32(i32 27, float %2237)  ; Round_ni(value)
  %2248 = call float @dx.op.unary.f32(i32 27, float %2238)  ; Round_ni(value)
  %2249 = fptosi float %2247 to i32
  %2250 = fptosi float %2248 to i32
  %2251 = xor i32 %2250, %2249
  %2252 = sitofp i32 %2251 to float
  %2253 = fptosi float %2252 to i32
  %2254 = sitofp i32 %2253 to float
  %2255 = fmul fast float %2254, 0x3FE3C6EF40000000
  %2256 = frem fast float %2247, 2.560000e+02
  %2257 = frem fast float %2248, 2.560000e+02
  %2258 = fptoui float %2256 to i32
  %2259 = fptoui float %2257 to i32
  %2260 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %2258, i32 %2259, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2261 = extractvalue %dx.types.ResRet.f32 %2260, 0
  %2262 = extractvalue %dx.types.ResRet.f32 %2260, 1
  %2263 = extractvalue %dx.types.ResRet.f32 %2260, 2
  %2264 = fadd fast float %2261, %2255
  %2265 = fadd fast float %2262, %2255
  %2266 = fadd fast float %2263, %2255
  %2267 = call float @dx.op.unary.f32(i32 22, float %2264)  ; Frc(value)
  %2268 = call float @dx.op.unary.f32(i32 22, float %2265)  ; Frc(value)
  %2269 = call float @dx.op.unary.f32(i32 22, float %2266)  ; Frc(value)
  %2270 = fmul fast float %2269, 0x401921FB60000000
  %2271 = call float @dx.op.unary.f32(i32 13, float %2270)  ; Sin(value)
  %2272 = call float @dx.op.unary.f32(i32 12, float %2270)  ; Cos(value)
  %2273 = fsub fast float -0.000000e+00, %2272
  %2274 = fmul fast float %2272, %2237
  %2275 = call float @dx.op.tertiary.f32(i32 46, float %2271, float %2238, float %2274)  ; FMad(a,b,c)
  %2276 = fmul fast float %2271, %2237
  %2277 = call float @dx.op.tertiary.f32(i32 46, float %2273, float %2238, float %2276)  ; FMad(a,b,c)
  %2278 = fadd fast float %2275, %2267
  %2279 = fadd fast float %2277, %2268
  %2280 = extractvalue %dx.types.CBufRet.f32 %2190, 3
  %2281 = bitcast float %2280 to i32
  %2282 = icmp eq i32 %2281, 0
  br i1 %2282, label %2321, label %2283

; <label>:2283                                    ; preds = %2186
  %2284 = add i32 %2281, 0
  %2285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2284, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2286 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2285, %dx.types.Handle %82, float %2278, float %2279, float undef, float undef, i32 0, i32 0, i32 undef, float %2241, float %2242, float undef, float %2245, float %2246, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2287 = extractvalue %dx.types.ResRet.f32 %2286, 0
  %2288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %2289 = extractvalue %dx.types.CBufRet.f32 %2288, 1
  %2290 = extractvalue %dx.types.CBufRet.f32 %2288, 2
  %2291 = fsub fast float 1.000000e+00, %1889
  %2292 = call float @dx.op.binary.f32(i32 35, float %2291, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2293 = bitcast float %1889 to i32
  %2294 = sitofp i32 %2293 to float
  %2295 = fadd fast float %2294, 0xC1CFBF8940000000
  %2296 = fmul fast float %2290, %2295
  %2297 = fadd fast float %2296, 0x41CFBF8940000000
  %2298 = fptosi float %2297 to i32
  %2299 = bitcast i32 %2298 to float
  %2300 = bitcast float %2292 to i32
  %2301 = sitofp i32 %2300 to float
  %2302 = fadd fast float %2301, 0xC1CFBF8940000000
  %2303 = fmul fast float %2302, %2290
  %2304 = fadd fast float %2303, 0x41CFBF8940000000
  %2305 = fptosi float %2304 to i32
  %2306 = bitcast i32 %2305 to float
  %2307 = fmul fast float %2299, %2289
  %2308 = fmul fast float %2306, %2289
  %2309 = fsub fast float %2292, %2307
  %2310 = fadd fast float %2308, %2292
  %2311 = call float @dx.op.unary.f32(i32 7, float %2309)  ; Saturate(value)
  %2312 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2313 = fsub fast float %2287, %2311
  %2314 = fsub fast float %2312, %2311
  %2315 = bitcast float %2314 to i32
  %2316 = sub nsw i32 2129859010, %2315
  %2317 = bitcast i32 %2316 to float
  %2318 = fmul fast float %2317, %2313
  %2319 = call float @dx.op.unary.f32(i32 7, float %2318)  ; Saturate(value)
  %2320 = fcmp fast olt float %2319, 0x3F70101020000000
  br i1 %2320, label %2475, label %2321

; <label>:2321                                    ; preds = %2283, %2186
  %2322 = phi float [ %2319, %2283 ], [ %1889, %2186 ]
  %2323 = fmul fast float %2322, %2189
  %2324 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %2325 = extractvalue %dx.types.CBufRet.i32 %2324, 1
  %2326 = extractvalue %dx.types.CBufRet.i32 %2324, 0
  %2327 = add i32 %2326, 0
  %2328 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2327, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2329 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2328, %dx.types.Handle %81, float %2278, float %2279, float undef, float undef, i32 0, i32 0, i32 undef, float %2241, float %2242, float undef, float %2245, float %2246, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2330 = extractvalue %dx.types.ResRet.f32 %2329, 0
  %2331 = extractvalue %dx.types.ResRet.f32 %2329, 1
  %2332 = extractvalue %dx.types.ResRet.f32 %2329, 2
  %2333 = extractvalue %dx.types.ResRet.f32 %2329, 3
  %2334 = and i32 %2325, 255
  %2335 = uitofp i32 %2334 to float
  %2336 = lshr i32 %2325, 8
  %2337 = and i32 %2336, 255
  %2338 = uitofp i32 %2337 to float
  %2339 = fmul fast float %2333, %2335
  %2340 = fadd fast float %2339, %2338
  %2341 = fmul fast float %2340, 0x3F70101000000000
  %2342 = fadd fast float %2341, 0xBFB99999A0000000
  %2343 = call float @dx.op.unary.f32(i32 7, float %2342)  ; Saturate(value)
  %2344 = fmul fast float %2343, 0x3FF1C71C80000000
  %2345 = call float @dx.op.binary.f32(i32 36, float %2341, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2346 = fsub fast float 1.000000e+00, %2344
  %2347 = call float @dx.op.unary.f32(i32 7, float %2346)  ; Saturate(value)
  %2348 = fmul fast float %2347, %2330
  %2349 = fmul fast float %2347, %2331
  %2350 = fmul fast float %2347, %2332
  %2351 = call float @dx.op.unary.f32(i32 7, float %2348)  ; Saturate(value)
  %2352 = call float @dx.op.unary.f32(i32 7, float %2349)  ; Saturate(value)
  %2353 = call float @dx.op.unary.f32(i32 7, float %2350)  ; Saturate(value)
  %2354 = fmul fast float %2344, %2330
  %2355 = fmul fast float %2344, %2331
  %2356 = fmul fast float %2344, %2332
  %2357 = fadd fast float %2354, %2345
  %2358 = fadd fast float %2355, %2345
  %2359 = fadd fast float %2356, %2345
  %2360 = call float @dx.op.unary.f32(i32 7, float %2357)  ; Saturate(value)
  %2361 = call float @dx.op.unary.f32(i32 7, float %2358)  ; Saturate(value)
  %2362 = call float @dx.op.unary.f32(i32 7, float %2359)  ; Saturate(value)
  %2363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %2364 = extractvalue %dx.types.CBufRet.i32 %2363, 3
  %2365 = extractvalue %dx.types.CBufRet.i32 %2363, 2
  %2366 = add i32 %2365, 0
  %2367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2368 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2367, %dx.types.Handle %81, float %2278, float %2279, float undef, float undef, i32 0, i32 0, i32 undef, float %2241, float %2242, float undef, float %2245, float %2246, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2369 = extractvalue %dx.types.ResRet.f32 %2368, 0
  %2370 = extractvalue %dx.types.ResRet.f32 %2368, 1
  %2371 = extractvalue %dx.types.ResRet.f32 %2368, 2
  %2372 = extractvalue %dx.types.ResRet.f32 %2368, 3
  %2373 = and i32 %2364, 255
  %2374 = uitofp i32 %2373 to float
  %2375 = lshr i32 %2364, 8
  %2376 = and i32 %2375, 255
  %2377 = uitofp i32 %2376 to float
  %2378 = lshr i32 %2364, 16
  %2379 = and i32 %2378, 255
  %2380 = uitofp i32 %2379 to float
  %2381 = fmul fast float %2380, 0x3F70101000000000
  %2382 = fmul fast float %2369, %2374
  %2383 = fadd fast float %2382, %2377
  %2384 = fmul fast float %2383, 0x3F70101000000000
  %2385 = fadd fast float %2370, -5.000000e-01
  %2386 = fadd fast float %2372, -5.000000e-01
  %2387 = fmul fast float %2385, %2381
  %2388 = fmul fast float %2386, %2381
  %2389 = fadd fast float %2387, 5.000000e-01
  %2390 = fadd fast float %2388, 5.000000e-01
  %2391 = fmul fast float %2389, 2.000000e+00
  %2392 = fadd fast float %2391, -1.000000e+00
  %2393 = fmul fast float %2390, 2.000000e+00
  %2394 = fadd fast float %2393, -1.000000e+00
  %2395 = fadd fast float %2392, %2394
  %2396 = fmul fast float %2395, 5.000000e-01
  %2397 = fsub fast float %2392, %2394
  %2398 = fmul fast float %2397, 5.000000e-01
  %2399 = call float @dx.op.unary.f32(i32 6, float %2396)  ; FAbs(value)
  %2400 = fsub fast float 1.000000e+00, %2399
  %2401 = call float @dx.op.unary.f32(i32 6, float %2398)  ; FAbs(value)
  %2402 = fsub fast float %2400, %2401
  %2403 = call float @dx.op.dot3.f32(i32 55, float %2396, float %2398, float %2402, float %2396, float %2398, float %2402)  ; Dot3(ax,ay,az,bx,by,bz)
  %2404 = call float @dx.op.unary.f32(i32 25, float %2403)  ; Rsqrt(value)
  %2405 = fmul fast float %2396, %2404
  %2406 = fmul fast float %2398, %2404
  %2407 = select i1 %2234, i32 %2224, i32 %2225
  %2408 = select i1 %2232, i32 %2223, i32 %2407
  %2409 = sitofp i32 %2408 to float
  %2410 = fmul fast float %2402, %2409
  %2411 = fmul fast float %2410, %2404
  %2412 = select i1 %2234, float %2411, float %2406
  %2413 = select i1 %2234, float %2406, float %2411
  %2414 = select i1 %2232, float %2411, float %2405
  %2415 = select i1 %2232, float %2406, float %2412
  %2416 = select i1 %2232, float %2405, float %2413
  %2417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %2418 = extractvalue %dx.types.CBufRet.f32 %2417, 0
  %2419 = fptoui float %2418 to i32
  %2420 = add i32 %2419, 0
  %2421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2422 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2421, %dx.types.Handle %81, float %2278, float %2279, float undef, float undef, i32 0, i32 0, i32 undef, float %2241, float %2242, float undef, float %2245, float %2246, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2423 = extractvalue %dx.types.ResRet.f32 %2422, 0
  %2424 = fsub fast float %2351, %2175
  %2425 = fsub fast float %2352, %2176
  %2426 = fsub fast float %2353, %2177
  %2427 = fmul fast float %2424, %2323
  %2428 = fmul fast float %2425, %2323
  %2429 = fmul fast float %2426, %2323
  %2430 = fadd fast float %2427, %2175
  %2431 = fadd fast float %2428, %2176
  %2432 = fadd fast float %2429, %2177
  %2433 = fsub fast float %2360, %2178
  %2434 = fsub fast float %2361, %2179
  %2435 = fsub fast float %2362, %2180
  %2436 = fmul fast float %2433, %2323
  %2437 = fmul fast float %2434, %2323
  %2438 = fmul fast float %2435, %2323
  %2439 = fadd fast float %2436, %2178
  %2440 = fadd fast float %2437, %2179
  %2441 = fadd fast float %2438, %2180
  %2442 = fadd fast float %2414, %2181
  %2443 = fadd fast float %2415, %2182
  %2444 = fadd fast float %2416, %2183
  %2445 = call float @dx.op.dot3.f32(i32 55, float %2442, float %2443, float %2444, float %2442, float %2443, float %2444)  ; Dot3(ax,ay,az,bx,by,bz)
  %2446 = call float @dx.op.unary.f32(i32 25, float %2445)  ; Rsqrt(value)
  %2447 = fmul fast float %2446, %2442
  %2448 = fmul fast float %2446, %2443
  %2449 = fmul fast float %2446, %2444
  %2450 = fsub fast float %2447, %2181
  %2451 = fsub fast float %2448, %2182
  %2452 = fsub fast float %2449, %2183
  %2453 = fmul fast float %2450, %2323
  %2454 = fmul fast float %2451, %2323
  %2455 = fmul fast float %2452, %2323
  %2456 = fadd fast float %2453, %2181
  %2457 = fadd fast float %2454, %2182
  %2458 = fadd fast float %2455, %2183
  %2459 = call float @dx.op.binary.f32(i32 36, float %2185, float %2371)  ; FMin(a,b)
  %2460 = fsub fast float %2459, %2185
  %2461 = fmul fast float %2460, %2323
  %2462 = fadd fast float %2461, %2185
  %2463 = fsub fast float %2384, %2184
  %2464 = fmul fast float %2463, %2323
  %2465 = fadd fast float %2464, %2184
  %2466 = fsub fast float %2423, %1587
  %2467 = fsub fast float %2423, %1588
  %2468 = fsub fast float %2423, %1589
  %2469 = fmul fast float %2466, %2323
  %2470 = fmul fast float %2467, %2323
  %2471 = fmul fast float %2468, %2323
  %2472 = fadd fast float %2469, %1587
  %2473 = fadd fast float %2470, %1588
  %2474 = fadd fast float %2471, %1589
  br label %2475

; <label>:2475                                    ; preds = %2321, %2283, %2174, %1881
  %2476 = phi float [ %2430, %2321 ], [ %2175, %2283 ], [ %2175, %2174 ], [ %1583, %1881 ]
  %2477 = phi float [ %2431, %2321 ], [ %2176, %2283 ], [ %2176, %2174 ], [ %1584, %1881 ]
  %2478 = phi float [ %2432, %2321 ], [ %2177, %2283 ], [ %2177, %2174 ], [ %1585, %1881 ]
  %2479 = phi float [ %2439, %2321 ], [ %2178, %2283 ], [ %2178, %2174 ], [ %1543, %1881 ]
  %2480 = phi float [ %2440, %2321 ], [ %2179, %2283 ], [ %2179, %2174 ], [ %1544, %1881 ]
  %2481 = phi float [ %2441, %2321 ], [ %2180, %2283 ], [ %2180, %2174 ], [ %1545, %1881 ]
  %2482 = phi float [ %2456, %2321 ], [ %2181, %2283 ], [ %2181, %2174 ], [ %1522, %1881 ]
  %2483 = phi float [ %2457, %2321 ], [ %2182, %2283 ], [ %2182, %2174 ], [ %1523, %1881 ]
  %2484 = phi float [ %2458, %2321 ], [ %2183, %2283 ], [ %2183, %2174 ], [ %1524, %1881 ]
  %2485 = phi float [ %2472, %2321 ], [ %1587, %2283 ], [ %1587, %2174 ], [ %1587, %1881 ]
  %2486 = phi float [ %2473, %2321 ], [ %1588, %2283 ], [ %1588, %2174 ], [ %1588, %1881 ]
  %2487 = phi float [ %2474, %2321 ], [ %1589, %2283 ], [ %1589, %2174 ], [ %1589, %1881 ]
  %2488 = phi float [ %2465, %2321 ], [ %2184, %2283 ], [ %2184, %2174 ], [ %1546, %1881 ]
  %2489 = phi float [ %2462, %2321 ], [ %2185, %2283 ], [ %2185, %2174 ], [ %1506, %1881 ]
  %2490 = fcmp fast une float %1886, 0.000000e+00
  %2491 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %140, float %141, float %142)  ; Dot3(ax,ay,az,bx,by,bz)
  %2492 = call float @dx.op.unary.f32(i32 25, float %2491)  ; Rsqrt(value)
  br i1 %2490, label %2500, label %2493

; <label>:2493                                    ; preds = %2475
  %2494 = fmul fast float %2492, %140
  %2495 = fmul fast float %2492, %141
  %2496 = fmul fast float %2492, %142
  %2497 = fsub fast float -0.000000e+00, %2494
  %2498 = fsub fast float -0.000000e+00, %2495
  %2499 = fsub fast float -0.000000e+00, %2496
  br label %2861

; <label>:2500                                    ; preds = %2475
  %2501 = fmul fast float %140, %2492
  %2502 = fsub fast float -0.000000e+00, %2501
  %2503 = fmul fast float %141, %2492
  %2504 = fsub fast float -0.000000e+00, %2503
  %2505 = fmul fast float %142, %2492
  %2506 = fsub fast float -0.000000e+00, %2505
  %2507 = call float @dx.op.dot3.f32(i32 55, float %2502, float %2504, float %2506, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %2508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2509 = fmul fast float %1886, 2.500000e+00
  %2510 = call float @dx.op.unary.f32(i32 7, float %2509)  ; Saturate(value)
  %2511 = fmul fast float %1886, 0x4013FFFFE0000000
  %2512 = fadd fast float %2511, 0xBFFFFFFFE0000000
  %2513 = call float @dx.op.unary.f32(i32 7, float %2512)  ; Saturate(value)
  %2514 = fmul fast float %1886, 0x4004000020000000
  %2515 = fadd fast float %2514, 0xBFF8000040000000
  %2516 = call float @dx.op.unary.f32(i32 7, float %2515)  ; Saturate(value)
  %2517 = call float @dx.op.unary.f32(i32 7, float %2510)  ; Saturate(value)
  %2518 = fmul fast float %1525, 1.000000e+01
  %2519 = call float @dx.op.unary.f32(i32 7, float %2518)  ; Saturate(value)
  %2520 = fmul fast float %2519, 2.000000e+00
  %2521 = fsub fast float 3.000000e+00, %2520
  %2522 = fmul fast float %2519, %2519
  %2523 = fmul fast float %2522, %2521
  %2524 = fsub fast float 1.000000e+00, %2523
  %2525 = fsub fast float 0x3FE3333340000000, %2488
  %2526 = fmul fast float %2525, 0x400AAAAAA0000000
  %2527 = call float @dx.op.unary.f32(i32 7, float %2526)  ; Saturate(value)
  %2528 = fmul fast float %2524, %2527
  %2529 = fmul fast float %2476, 0x3FEA2B8620000000
  %2530 = fmul fast float %2477, 0x3FEA2B8620000000
  %2531 = fmul fast float %2478, 0x3FEA2B8620000000
  %2532 = fadd fast float %2529, 0x3FC81DFBA0000000
  %2533 = fmul fast float %2532, %2476
  %2534 = fadd fast float %2533, 0x3F910E6020000000
  %2535 = fadd fast float %2530, 0x3FC81DFBA0000000
  %2536 = fmul fast float %2535, %2477
  %2537 = fadd fast float %2536, 0x3F910E6020000000
  %2538 = fadd fast float %2531, 0x3FC81DFBA0000000
  %2539 = fmul fast float %2538, %2478
  %2540 = fadd fast float %2539, 0x3F910E6020000000
  %2541 = call float @dx.op.unary.f32(i32 7, float %2534)  ; Saturate(value)
  %2542 = call float @dx.op.unary.f32(i32 7, float %2537)  ; Saturate(value)
  %2543 = call float @dx.op.unary.f32(i32 7, float %2540)  ; Saturate(value)
  %2544 = fsub fast float %2541, %2476
  %2545 = fsub fast float %2542, %2477
  %2546 = fsub fast float %2543, %2478
  %2547 = fmul fast float %2544, %2517
  %2548 = fmul fast float %2547, %2528
  %2549 = fmul fast float %2545, %2517
  %2550 = fmul fast float %2549, %2528
  %2551 = fmul fast float %2546, %2517
  %2552 = fmul fast float %2551, %2528
  %2553 = fadd fast float %2548, %2476
  %2554 = fadd fast float %2550, %2477
  %2555 = fadd fast float %2552, %2478
  %2556 = fmul fast float %2489, %2489
  %2557 = fmul fast float %2556, %2556
  %2558 = fadd fast float %2513, 1.000000e+00
  %2559 = fsub fast float %2558, %2528
  %2560 = call float @dx.op.unary.f32(i32 7, float %2559)  ; Saturate(value)
  %2561 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2562 = call float @dx.op.unary.f32(i32 7, float %2561)  ; Saturate(value)
  %2563 = fsub fast float 1.000000e+00, %2557
  %2564 = call float @dx.op.binary.f32(i32 36, float %2560, float %2563)  ; FMin(a,b)
  %2565 = call float @dx.op.unary.f32(i32 7, float %2516)  ; Saturate(value)
  %2566 = call float @dx.op.binary.f32(i32 35, float %2564, float %2565)  ; FMax(a,b)
  %2567 = fadd fast float %2562, 0xBFE4CCCCC0000000
  %2568 = fmul fast float %2567, 0x4006DB6DA0000000
  %2569 = call float @dx.op.unary.f32(i32 7, float %2568)  ; Saturate(value)
  %2570 = fmul fast float %2569, 2.000000e+00
  %2571 = fsub fast float 3.000000e+00, %2570
  %2572 = bitcast float %2479 to i32
  %2573 = ashr i32 %2572, 1
  %2574 = add nsw i32 %2573, 532487669
  %2575 = bitcast i32 %2574 to float
  %2576 = fsub fast float 1.000000e+00, %2575
  %2577 = bitcast float %2576 to i32
  %2578 = sub nsw i32 2129859010, %2577
  %2579 = bitcast i32 %2578 to float
  %2580 = fmul fast float %2579, 2.000000e+00
  %2581 = bitcast float %2480 to i32
  %2582 = ashr i32 %2581, 1
  %2583 = add nsw i32 %2582, 532487669
  %2584 = bitcast i32 %2583 to float
  %2585 = fsub fast float 1.000000e+00, %2584
  %2586 = bitcast float %2585 to i32
  %2587 = sub nsw i32 2129859010, %2586
  %2588 = bitcast i32 %2587 to float
  %2589 = fmul fast float %2588, 2.000000e+00
  %2590 = bitcast float %2481 to i32
  %2591 = ashr i32 %2590, 1
  %2592 = add nsw i32 %2591, 532487669
  %2593 = bitcast i32 %2592 to float
  %2594 = fsub fast float 1.000000e+00, %2593
  %2595 = bitcast float %2594 to i32
  %2596 = sub nsw i32 2129859010, %2595
  %2597 = bitcast i32 %2596 to float
  %2598 = fmul fast float %2597, 2.000000e+00
  %2599 = fsub fast float 0x4002A9FBE0000000, %2580
  %2600 = fadd fast float %2580, 0x3FD54FDF00000000
  %2601 = bitcast float %2600 to i32
  %2602 = sub nsw i32 2129859010, %2601
  %2603 = bitcast i32 %2602 to float
  %2604 = fmul fast float %2603, %2599
  %2605 = fmul fast float %2604, %2604
  %2606 = fsub fast float 0x4002A9FBE0000000, %2589
  %2607 = fadd fast float %2589, 0x3FD54FDF00000000
  %2608 = bitcast float %2607 to i32
  %2609 = sub nsw i32 2129859010, %2608
  %2610 = bitcast i32 %2609 to float
  %2611 = fmul fast float %2610, %2606
  %2612 = fmul fast float %2611, %2611
  %2613 = fsub fast float 0x4002A9FBE0000000, %2598
  %2614 = fadd fast float %2598, 0x3FD54FDF00000000
  %2615 = bitcast float %2614 to i32
  %2616 = sub nsw i32 2129859010, %2615
  %2617 = bitcast i32 %2616 to float
  %2618 = fmul fast float %2617, %2613
  %2619 = fmul fast float %2618, %2618
  %2620 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2605)  ; FMax(a,b)
  %2621 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2612)  ; FMax(a,b)
  %2622 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2619)  ; FMax(a,b)
  %2623 = fsub fast float 1.000000e+00, %2507
  %2624 = fadd fast float %2623, %2524
  %2625 = call float @dx.op.unary.f32(i32 7, float %2624)  ; Saturate(value)
  %2626 = fsub fast float 1.000000e+00, %1718
  %2627 = fmul fast float %2566, %2626
  %2628 = fmul fast float %2569, %2569
  %2629 = fmul fast float %2628, %2627
  %2630 = fmul fast float %2629, %2571
  %2631 = fmul fast float %2626, 0xBFE99999A0000000
  %2632 = fmul fast float %2631, %2517
  %2633 = fmul fast float %2632, %2528
  %2634 = fadd fast float %2633, 1.000000e+00
  %2635 = fadd fast float %2488, -1.000000e+00
  %2636 = fmul fast float %2634, %2635
  %2637 = fadd fast float %2636, 1.000000e+00
  %2638 = fsub fast float %2620, %2479
  %2639 = fsub fast float %2621, %2480
  %2640 = fsub fast float %2622, %2481
  %2641 = fmul fast float %2630, %2638
  %2642 = fmul fast float %2630, %2639
  %2643 = fmul fast float %2630, %2640
  %2644 = fadd fast float %2641, %2479
  %2645 = fadd fast float %2642, %2480
  %2646 = fadd fast float %2643, %2481
  %2647 = fsub fast float %88, %2482
  %2648 = fsub fast float %89, %2483
  %2649 = fsub fast float %90, %2484
  %2650 = fmul fast float %2630, %2647
  %2651 = fmul fast float %2630, %2648
  %2652 = fmul fast float %2630, %2649
  %2653 = fadd fast float %2650, %2482
  %2654 = fadd fast float %2651, %2483
  %2655 = fadd fast float %2652, %2484
  %2656 = fmul fast float %2630, %2625
  %2657 = call float @dx.op.unary.f32(i32 7, float %2637)  ; Saturate(value)
  %2658 = fsub fast float 1.000000e+00, %2657
  %2659 = fmul fast float %2656, %2658
  %2660 = fadd fast float %2659, %2657
  %2661 = fsub fast float 1.000000e+00, %2489
  %2662 = fmul fast float %2630, %2661
  %2663 = fadd fast float %2662, %2489
  %2664 = fcmp fast une float %1887, 0.000000e+00
  %2665 = fcmp fast ogt float %2562, 0x3FE4CCCCC0000000
  %2666 = and i1 %2664, %2665
  br i1 %2666, label %2667, label %2853

; <label>:2667                                    ; preds = %2500
  %2668 = extractvalue %dx.types.CBufRet.f32 %2508, 1
  %2669 = fadd fast float %2668, %141
  %2670 = extractvalue %dx.types.CBufRet.f32 %2508, 0
  %2671 = fadd fast float %2670, %140
  %2672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2673 = extractvalue %dx.types.CBufRet.f32 %2672, 3
  %2674 = fadd fast float %2673, 0x3FC0A3D700000000
  %2675 = fmul fast float %2674, 0x3FF6666660000000
  %2676 = fmul fast float %2673, 0x3FF2978D40000000
  %2677 = fmul fast float %2673, 0x3FF5BA5E40000000
  %2678 = fmul fast float %2673, 0x3FF94FDF40000000
  %2679 = call float @dx.op.unary.f32(i32 6, float %2671)  ; FAbs(value)
  %2680 = call float @dx.op.unary.f32(i32 6, float %2669)  ; FAbs(value)
  %2681 = fmul fast float %2679, 0x3F8EB851E0000000
  %2682 = fmul fast float %2680, 0x3F8EB851E0000000
  %2683 = fmul fast float %1887, 4.000000e+00
  %2684 = call float @dx.op.unary.f32(i32 7, float %2683)  ; Saturate(value)
  %2685 = fadd fast float %2681, 2.500000e-01
  %2686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %40, float %2685, float %2682, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2687 = extractvalue %dx.types.ResRet.f32 %2686, 0
  %2688 = extractvalue %dx.types.ResRet.f32 %2686, 1
  %2689 = extractvalue %dx.types.ResRet.f32 %2686, 2
  %2690 = extractvalue %dx.types.ResRet.f32 %2686, 3
  %2691 = fmul fast float %2688, 2.000000e+00
  %2692 = fmul fast float %2689, 2.000000e+00
  %2693 = fadd fast float %2691, -1.000000e+00
  %2694 = fadd fast float %2692, -1.000000e+00
  %2695 = fsub fast float 1.000000e+00, %2684
  %2696 = fmul fast float %2695, 8.000000e+00
  %2697 = call float @dx.op.unary.f32(i32 21, float %2696)  ; Exp(value)
  %2698 = fmul fast float %2690, %2697
  %2699 = fadd fast float %2675, -1.000000e+00
  %2700 = fadd fast float %2699, %2690
  %2701 = fadd fast float %2700, %2698
  %2702 = frem fast float %2701, %2697
  %2703 = fcmp fast ole float %2702, 1.000000e+00
  %2704 = call float @dx.op.unary.f32(i32 22, float %2702)  ; Frc(value)
  %2705 = select i1 %2703, float %2704, float 0.000000e+00
  %2706 = fadd fast float %2687, -1.000000e+00
  %2707 = fadd fast float %2706, %2705
  %2708 = fsub fast float 1.000000e+00, %2705
  %2709 = call float @dx.op.unary.f32(i32 7, float %2708)  ; Saturate(value)
  %2710 = fmul fast float %2709, %2687
  %2711 = fmul fast float %2707, 8.000000e+00
  %2712 = call float @dx.op.binary.f32(i32 35, float %2711, float 0.000000e+00)  ; FMax(a,b)
  %2713 = call float @dx.op.binary.f32(i32 36, float %2712, float 4.000000e+00)  ; FMin(a,b)
  %2714 = fmul fast float %2713, 0x400921FB60000000
  %2715 = call float @dx.op.unary.f32(i32 13, float %2714)  ; Sin(value)
  %2716 = fadd fast float %2705, -1.000000e+00
  %2717 = fmul fast float %2710, %2716
  %2718 = fmul fast float %2717, %2715
  %2719 = fmul fast float %2718, %2693
  %2720 = fmul fast float %2718, %2694
  %2721 = fadd fast float %2683, -1.000000e+00
  %2722 = call float @dx.op.unary.f32(i32 7, float %2721)  ; Saturate(value)
  %2723 = fadd fast float %2681, 0xBFE19999A0000000
  %2724 = fadd fast float %2682, 0x3FD3D70A40000000
  %2725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %40, float %2723, float %2724, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2726 = extractvalue %dx.types.ResRet.f32 %2725, 0
  %2727 = extractvalue %dx.types.ResRet.f32 %2725, 1
  %2728 = extractvalue %dx.types.ResRet.f32 %2725, 2
  %2729 = extractvalue %dx.types.ResRet.f32 %2725, 3
  %2730 = fmul fast float %2727, 2.000000e+00
  %2731 = fmul fast float %2728, 2.000000e+00
  %2732 = fadd fast float %2730, -1.000000e+00
  %2733 = fadd fast float %2731, -1.000000e+00
  %2734 = fsub fast float 1.000000e+00, %2722
  %2735 = fmul fast float %2734, 8.000000e+00
  %2736 = call float @dx.op.unary.f32(i32 21, float %2735)  ; Exp(value)
  %2737 = fmul fast float %2729, %2736
  %2738 = fadd fast float %2676, 0xBFE5B22D00000000
  %2739 = fadd fast float %2738, %2729
  %2740 = fadd fast float %2739, %2737
  %2741 = frem fast float %2740, %2736
  %2742 = fcmp fast ole float %2741, 1.000000e+00
  %2743 = call float @dx.op.unary.f32(i32 22, float %2741)  ; Frc(value)
  %2744 = select i1 %2742, float %2743, float 0.000000e+00
  %2745 = fadd fast float %2726, -1.000000e+00
  %2746 = fadd fast float %2745, %2744
  %2747 = fsub fast float 1.000000e+00, %2744
  %2748 = call float @dx.op.unary.f32(i32 7, float %2747)  ; Saturate(value)
  %2749 = fmul fast float %2748, %2726
  %2750 = fmul fast float %2746, 8.000000e+00
  %2751 = call float @dx.op.binary.f32(i32 35, float %2750, float 0.000000e+00)  ; FMax(a,b)
  %2752 = call float @dx.op.binary.f32(i32 36, float %2751, float 4.000000e+00)  ; FMin(a,b)
  %2753 = fmul fast float %2752, 0x400921FB60000000
  %2754 = call float @dx.op.unary.f32(i32 13, float %2753)  ; Sin(value)
  %2755 = fadd fast float %2744, -1.000000e+00
  %2756 = fmul fast float %2749, %2755
  %2757 = fmul fast float %2756, %2754
  %2758 = fmul fast float %2757, %2732
  %2759 = fmul fast float %2757, %2733
  %2760 = fadd fast float %2683, -2.000000e+00
  %2761 = call float @dx.op.unary.f32(i32 7, float %2760)  ; Saturate(value)
  %2762 = fadd fast float %2681, 0x3FE3333340000000
  %2763 = fadd fast float %2682, 0x3FEB333340000000
  %2764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %40, float %2762, float %2763, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2765 = extractvalue %dx.types.ResRet.f32 %2764, 0
  %2766 = extractvalue %dx.types.ResRet.f32 %2764, 1
  %2767 = extractvalue %dx.types.ResRet.f32 %2764, 2
  %2768 = extractvalue %dx.types.ResRet.f32 %2764, 3
  %2769 = fmul fast float %2766, 2.000000e+00
  %2770 = fmul fast float %2767, 2.000000e+00
  %2771 = fadd fast float %2769, -1.000000e+00
  %2772 = fadd fast float %2770, -1.000000e+00
  %2773 = fsub fast float 1.000000e+00, %2761
  %2774 = fmul fast float %2773, 8.000000e+00
  %2775 = call float @dx.op.unary.f32(i32 21, float %2774)  ; Exp(value)
  %2776 = fmul fast float %2768, %2775
  %2777 = fadd fast float %2677, 0xBFD5E35400000000
  %2778 = fadd fast float %2777, %2768
  %2779 = fadd fast float %2778, %2776
  %2780 = frem fast float %2779, %2775
  %2781 = fcmp fast ole float %2780, 1.000000e+00
  %2782 = call float @dx.op.unary.f32(i32 22, float %2780)  ; Frc(value)
  %2783 = select i1 %2781, float %2782, float 0.000000e+00
  %2784 = fadd fast float %2765, -1.000000e+00
  %2785 = fadd fast float %2784, %2783
  %2786 = fsub fast float 1.000000e+00, %2783
  %2787 = call float @dx.op.unary.f32(i32 7, float %2786)  ; Saturate(value)
  %2788 = fmul fast float %2787, %2765
  %2789 = fmul fast float %2785, 8.000000e+00
  %2790 = call float @dx.op.binary.f32(i32 35, float %2789, float 0.000000e+00)  ; FMax(a,b)
  %2791 = call float @dx.op.binary.f32(i32 36, float %2790, float 4.000000e+00)  ; FMin(a,b)
  %2792 = fmul fast float %2791, 0x400921FB60000000
  %2793 = call float @dx.op.unary.f32(i32 13, float %2792)  ; Sin(value)
  %2794 = fadd fast float %2783, -1.000000e+00
  %2795 = fmul fast float %2788, %2794
  %2796 = fmul fast float %2795, %2793
  %2797 = fmul fast float %2796, %2771
  %2798 = fmul fast float %2796, %2772
  %2799 = fadd fast float %2683, -3.000000e+00
  %2800 = call float @dx.op.unary.f32(i32 7, float %2799)  ; Saturate(value)
  %2801 = fadd fast float %2681, 5.000000e-01
  %2802 = fadd fast float %2682, -7.500000e-01
  %2803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %40, float %2801, float %2802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2804 = extractvalue %dx.types.ResRet.f32 %2803, 0
  %2805 = extractvalue %dx.types.ResRet.f32 %2803, 1
  %2806 = extractvalue %dx.types.ResRet.f32 %2803, 2
  %2807 = extractvalue %dx.types.ResRet.f32 %2803, 3
  %2808 = fmul fast float %2805, 2.000000e+00
  %2809 = fmul fast float %2806, 2.000000e+00
  %2810 = fadd fast float %2808, -1.000000e+00
  %2811 = fadd fast float %2809, -1.000000e+00
  %2812 = fsub fast float 1.000000e+00, %2800
  %2813 = fmul fast float %2812, 8.000000e+00
  %2814 = call float @dx.op.unary.f32(i32 21, float %2813)  ; Exp(value)
  %2815 = fmul fast float %2807, %2814
  %2816 = fadd fast float %2678, 0xBF78938000000000
  %2817 = fadd fast float %2816, %2807
  %2818 = fadd fast float %2817, %2815
  %2819 = frem fast float %2818, %2814
  %2820 = fcmp fast ole float %2819, 1.000000e+00
  %2821 = call float @dx.op.unary.f32(i32 22, float %2819)  ; Frc(value)
  %2822 = select i1 %2820, float %2821, float 0.000000e+00
  %2823 = fadd fast float %2804, -1.000000e+00
  %2824 = fadd fast float %2823, %2822
  %2825 = fsub fast float 1.000000e+00, %2822
  %2826 = call float @dx.op.unary.f32(i32 7, float %2825)  ; Saturate(value)
  %2827 = fmul fast float %2826, %2804
  %2828 = fmul fast float %2824, 8.000000e+00
  %2829 = call float @dx.op.binary.f32(i32 35, float %2828, float 0.000000e+00)  ; FMax(a,b)
  %2830 = call float @dx.op.binary.f32(i32 36, float %2829, float 4.000000e+00)  ; FMin(a,b)
  %2831 = fmul fast float %2830, 0x400921FB60000000
  %2832 = call float @dx.op.unary.f32(i32 13, float %2831)  ; Sin(value)
  %2833 = fadd fast float %2822, -1.000000e+00
  %2834 = fmul fast float %2827, %2833
  %2835 = fmul fast float %2834, %2832
  %2836 = fmul fast float %2835, %2810
  %2837 = fmul fast float %2835, %2811
  %2838 = fadd fast float %2758, %2719
  %2839 = fadd fast float %2759, %2720
  %2840 = fadd fast float %2838, %2797
  %2841 = fadd fast float %2839, %2798
  %2842 = fadd fast float %2840, %2836
  %2843 = fadd fast float %2841, %2837
  %2844 = fmul fast float %2562, 0x4006DB6DA0000000
  %2845 = fadd fast float %2844, 0xBFFDB6DB40000000
  %2846 = call float @dx.op.unary.f32(i32 7, float %2845)  ; Saturate(value)
  %2847 = fmul fast float %2846, %2517
  %2848 = fmul fast float %2847, %2626
  %2849 = fmul fast float %2848, %2842
  %2850 = fmul fast float %2848, %2843
  %2851 = fadd fast float %2849, %2653
  %2852 = fadd fast float %2850, %2654
  br label %2853

; <label>:2853                                    ; preds = %2667, %2500
  %2854 = phi float [ %2653, %2500 ], [ %2851, %2667 ]
  %2855 = phi float [ %2654, %2500 ], [ %2852, %2667 ]
  %2856 = call float @dx.op.dot3.f32(i32 55, float %2854, float %2855, float %2655, float %2854, float %2855, float %2655)  ; Dot3(ax,ay,az,bx,by,bz)
  %2857 = call float @dx.op.unary.f32(i32 25, float %2856)  ; Rsqrt(value)
  %2858 = fmul fast float %2857, %2854
  %2859 = fmul fast float %2857, %2855
  %2860 = fmul fast float %2857, %2655
  br label %2861

; <label>:2861                                    ; preds = %2853, %2493
  %2862 = phi float [ %2499, %2493 ], [ %2506, %2853 ]
  %2863 = phi float [ %2498, %2493 ], [ %2504, %2853 ]
  %2864 = phi float [ %2497, %2493 ], [ %2502, %2853 ]
  %2865 = phi float [ %2496, %2493 ], [ %2505, %2853 ]
  %2866 = phi float [ %2495, %2493 ], [ %2503, %2853 ]
  %2867 = phi float [ %2494, %2493 ], [ %2501, %2853 ]
  %2868 = phi float [ %2476, %2493 ], [ %2553, %2853 ]
  %2869 = phi float [ %2477, %2493 ], [ %2554, %2853 ]
  %2870 = phi float [ %2478, %2493 ], [ %2555, %2853 ]
  %2871 = phi float [ %2479, %2493 ], [ %2644, %2853 ]
  %2872 = phi float [ %2480, %2493 ], [ %2645, %2853 ]
  %2873 = phi float [ %2481, %2493 ], [ %2646, %2853 ]
  %2874 = phi float [ %2482, %2493 ], [ %2858, %2853 ]
  %2875 = phi float [ %2483, %2493 ], [ %2859, %2853 ]
  %2876 = phi float [ %2484, %2493 ], [ %2860, %2853 ]
  %2877 = phi float [ %2488, %2493 ], [ %2660, %2853 ]
  %2878 = phi float [ %2489, %2493 ], [ %2663, %2853 ]
  %2879 = fsub fast float -0.000000e+00, %2876
  %2880 = fsub fast float -0.000000e+00, %2875
  %2881 = fsub fast float -0.000000e+00, %2874
  %2882 = select i1 %201, float 0.000000e+00, float %2873
  %2883 = call float @dx.op.dot3.f32(i32 55, float %2874, float %2875, float %2876, float %2864, float %2863, float %2862)  ; Dot3(ax,ay,az,bx,by,bz)
  %2884 = call float @dx.op.unary.f32(i32 7, float %2883)  ; Saturate(value)
  %2885 = call float @dx.op.dot3.f32(i32 55, float %2867, float %2866, float %2865, float %2874, float %2875, float %2876)  ; Dot3(ax,ay,az,bx,by,bz)
  %2886 = fmul fast float %2885, 2.000000e+00
  %2887 = fmul fast float %2886, %2874
  %2888 = fmul fast float %2886, %2875
  %2889 = fmul fast float %2886, %2876
  %2890 = fsub fast float %2867, %2887
  %2891 = fsub fast float %2866, %2888
  %2892 = fsub fast float %2865, %2889
  %2893 = fmul fast float %2866, %1635
  %2894 = fmul fast float %2865, %1634
  %2895 = fsub fast float %2893, %2894
  %2896 = fmul fast float %2865, %1633
  %2897 = fmul fast float %2867, %1635
  %2898 = fsub fast float %2896, %2897
  %2899 = fmul fast float %2867, %1634
  %2900 = fmul fast float %2866, %1633
  %2901 = fsub fast float %2899, %2900
  %2902 = fmul fast float %2898, %1635
  %2903 = fmul fast float %2901, %1634
  %2904 = fmul fast float %2901, %1633
  %2905 = fmul fast float %2895, %1635
  %2906 = fmul fast float %2895, %1634
  %2907 = fmul fast float %2898, %1633
  %2908 = fsub fast float %2881, %2903
  %2909 = fadd fast float %2908, %2902
  %2910 = fsub fast float %2880, %2905
  %2911 = fadd fast float %2910, %2904
  %2912 = fsub fast float %2879, %2907
  %2913 = fadd fast float %2912, %2906
  %2914 = fmul fast float %2909, %1621
  %2915 = fmul fast float %2911, %1621
  %2916 = fmul fast float %2913, %1621
  %2917 = fadd fast float %2914, %2874
  %2918 = fadd fast float %2915, %2875
  %2919 = fadd fast float %2916, %2876
  %2920 = call float @dx.op.dot3.f32(i32 55, float %2917, float %2918, float %2919, float %2917, float %2918, float %2919)  ; Dot3(ax,ay,az,bx,by,bz)
  %2921 = call float @dx.op.unary.f32(i32 25, float %2920)  ; Rsqrt(value)
  %2922 = fmul fast float %2917, %2921
  %2923 = fmul fast float %2918, %2921
  %2924 = fmul fast float %2919, %2921
  %2925 = call float @dx.op.dot3.f32(i32 55, float %2867, float %2866, float %2865, float %2922, float %2923, float %2924)  ; Dot3(ax,ay,az,bx,by,bz)
  %2926 = fmul fast float %2925, 2.000000e+00
  %2927 = fmul fast float %2922, %2926
  %2928 = fmul fast float %2923, %2926
  %2929 = fmul fast float %2924, %2926
  %2930 = fsub fast float %2867, %2927
  %2931 = fsub fast float %2866, %2928
  %2932 = fsub fast float %2865, %2929
  %2933 = call float @dx.op.binary.f32(i32 36, float %2878, float 1.000000e+00)  ; FMin(a,b)
  %2934 = fsub fast float 1.000000e+00, %2933
  %2935 = bitcast float %2934 to i32
  %2936 = ashr i32 %2935, 1
  %2937 = add nsw i32 %2936, 532487669
  %2938 = bitcast i32 %2937 to float
  %2939 = fsub fast float 1.000000e+00, %2877
  %2940 = call float @dx.op.binary.f32(i32 35, float %2939, float 0x3F847AE140000000)  ; FMax(a,b)
  %2941 = fmul fast float %2940, %2940
  %2942 = fmul fast float %2941, %2941
  %2943 = call float @dx.op.unary.f32(i32 7, float %2884)  ; Saturate(value)
  %2944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %41, float %2938, float %2942, float %2943, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2945 = extractvalue %dx.types.ResRet.f32 %2944, 0
  %2946 = fsub fast float 1.000000e+00, %2878
  %2947 = bitcast float %2946 to i32
  %2948 = sub nsw i32 2129859010, %2947
  %2949 = bitcast i32 %2948 to float
  %2950 = call float @dx.op.dot3.f32(i32 55, float %57, float %53, float %49, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2951 = fmul fast float %2950, 0x3FD20DD760000000
  %2952 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %57)  ; FMax(a,b)
  %2953 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %2954 = fcmp fast oeq float %2953, 0.000000e+00
  %2955 = fcmp fast oeq float %2952, 0.000000e+00
  %2956 = or i1 %2955, %2954
  br i1 %2956, label %2986, label %2957

; <label>:2957                                    ; preds = %2861
  %2958 = fsub fast float -0.000000e+00, %60
  %2959 = fsub fast float -0.000000e+00, %58
  %2960 = call float @dx.op.unary.f32(i32 24, float %2953)  ; Sqrt(value)
  %2961 = fdiv fast float %2960, %2952
  %2962 = fcmp fast ogt float %2961, 0x3FFB6F8900000000
  %2963 = select i1 %2962, float 0x3FFB6F8900000000, float %2961
  %2964 = fmul fast float %2963, 0x3FE8A23460000000
  %2965 = call float @dx.op.unary.f32(i32 7, float %2964)  ; Saturate(value)
  %2966 = call float @dx.op.binary.f32(i32 35, float %2963, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2967 = fmul fast float %2965, %2952
  %2968 = fmul fast float %2966, 0x3FF279A740000000
  %2969 = fadd fast float %2968, -1.000000e+00
  %2970 = call float @dx.op.dot3.f32(i32 55, float %2958, float %2959, float %59, float %2958, float %2959, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %2971 = call float @dx.op.unary.f32(i32 25, float %2970)  ; Rsqrt(value)
  %2972 = fmul fast float %2971, %2958
  %2973 = fmul fast float %2971, %2959
  %2974 = fmul fast float %2971, %59
  %2975 = fmul fast float %2969, %2969
  %2976 = fsub fast float 1.000000e+00, %2975
  %2977 = fmul fast float %2966, 0x40005F8BE0000000
  %2978 = fsub fast float 0x400C5BF8A0000000, %2977
  %2979 = fdiv fast float %2967, %2978
  %2980 = fmul fast float %2979, 0x3FEE31C3C0000000
  %2981 = fmul fast float %2980, %2976
  %2982 = fmul fast float %2966, 0x3FDACB7480000000
  %2983 = fadd fast float %2982, 0xBFD7347680000000
  %2984 = fmul fast float %2983, %2979
  %2985 = fmul fast float %2984, %2976
  br label %2986

; <label>:2986                                    ; preds = %2957, %2861
  %2987 = phi float [ %2972, %2957 ], [ 0.000000e+00, %2861 ]
  %2988 = phi float [ %2973, %2957 ], [ 0.000000e+00, %2861 ]
  %2989 = phi float [ %2974, %2957 ], [ 0.000000e+00, %2861 ]
  %2990 = phi float [ %2981, %2957 ], [ 0.000000e+00, %2861 ]
  %2991 = phi float [ %2985, %2957 ], [ 0.000000e+00, %2861 ]
  %2992 = call float @dx.op.dot3.f32(i32 55, float %2987, float %2988, float %2989, float %2874, float %2875, float %2876)  ; Dot3(ax,ay,az,bx,by,bz)
  %2993 = fmul fast float %2992, 0x3FDF454380000000
  %2994 = fmul fast float %2992, %2992
  %2995 = fmul fast float %2994, 0x3FEE471020000000
  %2996 = fadd fast float %2995, 0xBFD42F6020000000
  %2997 = fmul fast float %2952, 0x3FD20DD760000000
  %2998 = fmul fast float %2996, %2991
  %2999 = fadd fast float %2998, %2997
  %3000 = fmul fast float %2993, %2990
  %3001 = fadd fast float %2999, %3000
  %3002 = fsub fast float %2999, %3000
  %3003 = call float @dx.op.dot3.f32(i32 55, float %2987, float %2988, float %2989, float %2930, float %2931, float %2932)  ; Dot3(ax,ay,az,bx,by,bz)
  %3004 = fmul fast float %3003, 0x3FDF454380000000
  %3005 = fmul fast float %3003, %3003
  %3006 = fmul fast float %3005, 0x3FEE471020000000
  %3007 = fadd fast float %3006, 0xBFD42F6020000000
  %3008 = call float @dx.op.dot3.f32(i32 55, float %2952, float %2990, float %2991, float 0x3FD20DD760000000, float %3004, float %3007)  ; Dot3(ax,ay,az,bx,by,bz)
  %3009 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %53)  ; FMax(a,b)
  %3010 = call float @dx.op.dot3.f32(i32 55, float %54, float %55, float %56, float %54, float %55, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %3011 = fcmp fast oeq float %3010, 0.000000e+00
  %3012 = fcmp fast oeq float %3009, 0.000000e+00
  %3013 = or i1 %3012, %3011
  br i1 %3013, label %3043, label %3014

; <label>:3014                                    ; preds = %2986
  %3015 = fsub fast float -0.000000e+00, %56
  %3016 = fsub fast float -0.000000e+00, %54
  %3017 = call float @dx.op.unary.f32(i32 24, float %3010)  ; Sqrt(value)
  %3018 = fdiv fast float %3017, %3009
  %3019 = fcmp fast ogt float %3018, 0x3FFB6F8900000000
  %3020 = select i1 %3019, float 0x3FFB6F8900000000, float %3018
  %3021 = fmul fast float %3020, 0x3FE8A23460000000
  %3022 = call float @dx.op.unary.f32(i32 7, float %3021)  ; Saturate(value)
  %3023 = call float @dx.op.binary.f32(i32 35, float %3020, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3024 = fmul fast float %3022, %3009
  %3025 = fmul fast float %3023, 0x3FF279A740000000
  %3026 = fadd fast float %3025, -1.000000e+00
  %3027 = call float @dx.op.dot3.f32(i32 55, float %3015, float %3016, float %55, float %3015, float %3016, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %3028 = call float @dx.op.unary.f32(i32 25, float %3027)  ; Rsqrt(value)
  %3029 = fmul fast float %3028, %3015
  %3030 = fmul fast float %3028, %3016
  %3031 = fmul fast float %3028, %55
  %3032 = fmul fast float %3026, %3026
  %3033 = fsub fast float 1.000000e+00, %3032
  %3034 = fmul fast float %3023, 0x40005F8BE0000000
  %3035 = fsub fast float 0x400C5BF8A0000000, %3034
  %3036 = fdiv fast float %3024, %3035
  %3037 = fmul fast float %3036, 0x3FEE31C3C0000000
  %3038 = fmul fast float %3037, %3033
  %3039 = fmul fast float %3023, 0x3FDACB7480000000
  %3040 = fadd fast float %3039, 0xBFD7347680000000
  %3041 = fmul fast float %3040, %3036
  %3042 = fmul fast float %3041, %3033
  br label %3043

; <label>:3043                                    ; preds = %3014, %2986
  %3044 = phi float [ %3029, %3014 ], [ 0.000000e+00, %2986 ]
  %3045 = phi float [ %3030, %3014 ], [ 0.000000e+00, %2986 ]
  %3046 = phi float [ %3031, %3014 ], [ 0.000000e+00, %2986 ]
  %3047 = phi float [ %3038, %3014 ], [ 0.000000e+00, %2986 ]
  %3048 = phi float [ %3042, %3014 ], [ 0.000000e+00, %2986 ]
  %3049 = call float @dx.op.dot3.f32(i32 55, float %3044, float %3045, float %3046, float %2874, float %2875, float %2876)  ; Dot3(ax,ay,az,bx,by,bz)
  %3050 = fmul fast float %3049, 0x3FDF454380000000
  %3051 = fmul fast float %3049, %3049
  %3052 = fmul fast float %3051, 0x3FEE471020000000
  %3053 = fadd fast float %3052, 0xBFD42F6020000000
  %3054 = fmul fast float %3009, 0x3FD20DD760000000
  %3055 = fmul fast float %3053, %3048
  %3056 = fadd fast float %3055, %3054
  %3057 = fmul fast float %3050, %3047
  %3058 = fadd fast float %3056, %3057
  %3059 = fsub fast float %3056, %3057
  %3060 = call float @dx.op.dot3.f32(i32 55, float %3044, float %3045, float %3046, float %2930, float %2931, float %2932)  ; Dot3(ax,ay,az,bx,by,bz)
  %3061 = fmul fast float %3060, 0x3FDF454380000000
  %3062 = fmul fast float %3060, %3060
  %3063 = fmul fast float %3062, 0x3FEE471020000000
  %3064 = fadd fast float %3063, 0xBFD42F6020000000
  %3065 = call float @dx.op.dot3.f32(i32 55, float %3009, float %3047, float %3048, float 0x3FD20DD760000000, float %3061, float %3064)  ; Dot3(ax,ay,az,bx,by,bz)
  %3066 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %49)  ; FMax(a,b)
  %3067 = call float @dx.op.dot3.f32(i32 55, float %50, float %51, float %52, float %50, float %51, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %3068 = fcmp fast oeq float %3067, 0.000000e+00
  %3069 = fcmp fast oeq float %3066, 0.000000e+00
  %3070 = or i1 %3069, %3068
  br i1 %3070, label %3100, label %3071

; <label>:3071                                    ; preds = %3043
  %3072 = fsub fast float -0.000000e+00, %52
  %3073 = fsub fast float -0.000000e+00, %50
  %3074 = call float @dx.op.unary.f32(i32 24, float %3067)  ; Sqrt(value)
  %3075 = fdiv fast float %3074, %3066
  %3076 = fcmp fast ogt float %3075, 0x3FFB6F8900000000
  %3077 = select i1 %3076, float 0x3FFB6F8900000000, float %3075
  %3078 = fmul fast float %3077, 0x3FE8A23460000000
  %3079 = call float @dx.op.unary.f32(i32 7, float %3078)  ; Saturate(value)
  %3080 = call float @dx.op.binary.f32(i32 35, float %3077, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3081 = fmul fast float %3079, %3066
  %3082 = fmul fast float %3080, 0x3FF279A740000000
  %3083 = fadd fast float %3082, -1.000000e+00
  %3084 = call float @dx.op.dot3.f32(i32 55, float %3072, float %3073, float %51, float %3072, float %3073, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %3085 = call float @dx.op.unary.f32(i32 25, float %3084)  ; Rsqrt(value)
  %3086 = fmul fast float %3085, %3072
  %3087 = fmul fast float %3085, %3073
  %3088 = fmul fast float %3085, %51
  %3089 = fmul fast float %3083, %3083
  %3090 = fsub fast float 1.000000e+00, %3089
  %3091 = fmul fast float %3080, 0x40005F8BE0000000
  %3092 = fsub fast float 0x400C5BF8A0000000, %3091
  %3093 = fdiv fast float %3081, %3092
  %3094 = fmul fast float %3093, 0x3FEE31C3C0000000
  %3095 = fmul fast float %3094, %3090
  %3096 = fmul fast float %3080, 0x3FDACB7480000000
  %3097 = fadd fast float %3096, 0xBFD7347680000000
  %3098 = fmul fast float %3097, %3093
  %3099 = fmul fast float %3098, %3090
  br label %3100

; <label>:3100                                    ; preds = %3071, %3043
  %3101 = phi float [ %3086, %3071 ], [ 0.000000e+00, %3043 ]
  %3102 = phi float [ %3087, %3071 ], [ 0.000000e+00, %3043 ]
  %3103 = phi float [ %3088, %3071 ], [ 0.000000e+00, %3043 ]
  %3104 = phi float [ %3095, %3071 ], [ 0.000000e+00, %3043 ]
  %3105 = phi float [ %3099, %3071 ], [ 0.000000e+00, %3043 ]
  %3106 = call float @dx.op.dot3.f32(i32 55, float %3101, float %3102, float %3103, float %2874, float %2875, float %2876)  ; Dot3(ax,ay,az,bx,by,bz)
  %3107 = fmul fast float %3106, 0x3FDF454380000000
  %3108 = fmul fast float %3106, %3106
  %3109 = fmul fast float %3108, 0x3FEE471020000000
  %3110 = fadd fast float %3109, 0xBFD42F6020000000
  %3111 = fmul fast float %3066, 0x3FD20DD760000000
  %3112 = fmul fast float %3110, %3105
  %3113 = fadd fast float %3112, %3111
  %3114 = fmul fast float %3107, %3104
  %3115 = fadd fast float %3113, %3114
  %3116 = fsub fast float %3113, %3114
  %3117 = call float @dx.op.dot3.f32(i32 55, float %3101, float %3102, float %3103, float %2930, float %2931, float %2932)  ; Dot3(ax,ay,az,bx,by,bz)
  %3118 = fmul fast float %3117, 0x3FDF454380000000
  %3119 = fmul fast float %3117, %3117
  %3120 = fmul fast float %3119, 0x3FEE471020000000
  %3121 = fadd fast float %3120, 0xBFD42F6020000000
  %3122 = call float @dx.op.dot3.f32(i32 55, float %3066, float %3104, float %3105, float 0x3FD20DD760000000, float %3118, float %3121)  ; Dot3(ax,ay,az,bx,by,bz)
  %3123 = call float @dx.op.binary.f32(i32 35, float %3001, float 0.000000e+00)  ; FMax(a,b)
  %3124 = call float @dx.op.binary.f32(i32 35, float %3058, float 0.000000e+00)  ; FMax(a,b)
  %3125 = call float @dx.op.binary.f32(i32 35, float %3115, float 0.000000e+00)  ; FMax(a,b)
  %3126 = call float @dx.op.binary.f32(i32 35, float %3002, float 0.000000e+00)  ; FMax(a,b)
  %3127 = call float @dx.op.binary.f32(i32 35, float %3059, float 0.000000e+00)  ; FMax(a,b)
  %3128 = call float @dx.op.binary.f32(i32 35, float %3116, float 0.000000e+00)  ; FMax(a,b)
  %3129 = call float @dx.op.binary.f32(i32 35, float %3008, float 0.000000e+00)  ; FMax(a,b)
  %3130 = call float @dx.op.binary.f32(i32 35, float %3065, float 0.000000e+00)  ; FMax(a,b)
  %3131 = call float @dx.op.binary.f32(i32 35, float %3122, float 0.000000e+00)  ; FMax(a,b)
  %3132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3133 = extractvalue %dx.types.CBufRet.f32 %3132, 0
  %3134 = call float @dx.op.binary.f32(i32 36, float %2868, float %3133)  ; FMin(a,b)
  %3135 = fmul fast float %3134, %2934
  %3136 = fsub fast float 1.000000e+00, %3135
  %3137 = bitcast float %3136 to i32
  %3138 = sub nsw i32 2129859010, %3137
  %3139 = bitcast i32 %3138 to float
  %3140 = call float @dx.op.binary.f32(i32 36, float %2869, float %3133)  ; FMin(a,b)
  %3141 = fmul fast float %3140, %2934
  %3142 = fsub fast float 1.000000e+00, %3141
  %3143 = bitcast float %3142 to i32
  %3144 = sub nsw i32 2129859010, %3143
  %3145 = bitcast i32 %3144 to float
  %3146 = call float @dx.op.binary.f32(i32 36, float %2870, float %3133)  ; FMin(a,b)
  %3147 = fmul fast float %3146, %2934
  %3148 = fsub fast float 1.000000e+00, %3147
  %3149 = bitcast float %3148 to i32
  %3150 = sub nsw i32 2129859010, %3149
  %3151 = bitcast i32 %3150 to float
  %3152 = fmul fast float %3123, %2933
  %3153 = fmul fast float %3152, %3139
  %3154 = fmul fast float %3124, %2933
  %3155 = fmul fast float %3154, %3145
  %3156 = fmul fast float %3125, %2933
  %3157 = fmul fast float %3156, %3151
  %3158 = call float @dx.op.binary.f32(i32 36, float %2871, float %3133)  ; FMin(a,b)
  %3159 = fmul fast float %3158, %2934
  %3160 = fsub fast float 1.000000e+00, %3159
  %3161 = bitcast float %3160 to i32
  %3162 = sub nsw i32 2129859010, %3161
  %3163 = bitcast i32 %3162 to float
  %3164 = call float @dx.op.binary.f32(i32 36, float %2872, float %3133)  ; FMin(a,b)
  %3165 = fmul fast float %3164, %2934
  %3166 = fsub fast float 1.000000e+00, %3165
  %3167 = bitcast float %3166 to i32
  %3168 = sub nsw i32 2129859010, %3167
  %3169 = bitcast i32 %3168 to float
  %3170 = call float @dx.op.binary.f32(i32 36, float %2882, float %3133)  ; FMin(a,b)
  %3171 = fmul fast float %3170, %2934
  %3172 = fsub fast float 1.000000e+00, %3171
  %3173 = bitcast float %3172 to i32
  %3174 = sub nsw i32 2129859010, %3173
  %3175 = bitcast i32 %3174 to float
  %3176 = fmul fast float %3129, %2933
  %3177 = fmul fast float %3176, %3163
  %3178 = fmul fast float %3130, %2933
  %3179 = fmul fast float %3178, %3169
  %3180 = fmul fast float %3131, %2933
  %3181 = fmul fast float %3180, %3175
  %3182 = call float @dx.op.dot3.f32(i32 55, float %3153, float %3155, float %3157, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3183 = select i1 %201, float 0.000000e+00, float %3153
  %3184 = select i1 %201, float %3182, float %3155
  %3185 = select i1 %201, float 0.000000e+00, float %3157
  %3186 = call float @dx.op.dot3.f32(i32 55, float %3126, float %3127, float %3128, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3187 = select i1 %201, float 0.000000e+00, float %3126
  %3188 = select i1 %201, float %3186, float %3127
  %3189 = select i1 %201, float 0.000000e+00, float %3128
  %3190 = call float @dx.op.dot3.f32(i32 55, float %3177, float %3179, float %3181, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3191 = select i1 %201, float 0.000000e+00, float %3177
  %3192 = select i1 %201, float %3190, float %3179
  %3193 = select i1 %201, float 0.000000e+00, float %3181
  %3194 = fmul fast float %902, %902
  %3195 = call float @dx.op.unary.f32(i32 7, float %3194)  ; Saturate(value)
  %3196 = fmul fast float %2884, 9.843750e-01
  %3197 = fmul fast float %2877, 9.843750e-01
  %3198 = fadd fast float %3196, 7.812500e-03
  %3199 = fadd fast float %3197, 7.812500e-03
  %3200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %41, float %3198, float %3199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3201 = extractvalue %dx.types.ResRet.f32 %3200, 0
  %3202 = extractvalue %dx.types.ResRet.f32 %3200, 1
  %3203 = extractvalue %dx.types.ResRet.f32 %3200, 2
  %3204 = extractvalue %dx.types.ResRet.f32 %3200, 3
  %3205 = fsub fast float 1.000000e+00, %3195
  %3206 = fsub fast float %3203, %3201
  %3207 = fsub fast float %3204, %3202
  %3208 = fmul fast float %3206, %3205
  %3209 = fmul fast float %3207, %3205
  %3210 = fadd fast float %3208, %3201
  %3211 = fadd fast float %3209, %3202
  %3212 = fmul fast float %3210, %2871
  %3213 = fmul fast float %3210, %2872
  %3214 = fmul fast float %3210, %2882
  %3215 = fadd fast float %3212, %3211
  %3216 = fadd fast float %3213, %3211
  %3217 = fadd fast float %3214, %3211
  %3218 = fcmp fast ogt float %1496, 0.000000e+00
  br i1 %3218, label %3219, label %3245

; <label>:3219                                    ; preds = %3100
  %3220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %41, float %1496, float %2884, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3221 = extractvalue %dx.types.ResRet.f32 %3220, 0
  %3222 = extractvalue %dx.types.ResRet.f32 %3220, 1
  %3223 = extractvalue %dx.types.ResRet.f32 %3220, 2
  %3224 = fadd fast float %3221, -5.000000e-01
  %3225 = fadd fast float %3222, -5.000000e-01
  %3226 = fadd fast float %3223, -5.000000e-01
  %3227 = fsub fast float 1.000000e+00, %2871
  %3228 = fsub fast float 1.000000e+00, %2872
  %3229 = fsub fast float 1.000000e+00, %2882
  %3230 = fmul fast float %2871, 4.000000e+00
  %3231 = fmul fast float %3230, %3227
  %3232 = fmul fast float %3231, %3224
  %3233 = fmul fast float %2872, 4.000000e+00
  %3234 = fmul fast float %3233, %3228
  %3235 = fmul fast float %3234, %3225
  %3236 = fmul fast float %2882, 4.000000e+00
  %3237 = fmul fast float %3236, %3229
  %3238 = fmul fast float %3237, %3226
  %3239 = fadd fast float %3232, %3215
  %3240 = fadd fast float %3235, %3216
  %3241 = fadd fast float %3238, %3217
  %3242 = call float @dx.op.unary.f32(i32 7, float %3239)  ; Saturate(value)
  %3243 = call float @dx.op.unary.f32(i32 7, float %3240)  ; Saturate(value)
  %3244 = call float @dx.op.unary.f32(i32 7, float %3241)  ; Saturate(value)
  br label %3245

; <label>:3245                                    ; preds = %3219, %3100
  %3246 = phi float [ %3242, %3219 ], [ %3215, %3100 ]
  %3247 = phi float [ %3243, %3219 ], [ %3216, %3100 ]
  %3248 = phi float [ %3244, %3219 ], [ %3217, %3100 ]
  %3249 = call float @dx.op.binary.f32(i32 35, float %3247, float %3248)  ; FMax(a,b)
  %3250 = call float @dx.op.binary.f32(i32 35, float %3246, float %3249)  ; FMax(a,b)
  %3251 = fsub fast float 1.000000e+00, %3250
  %3252 = fmul fast float %3250, %2877
  %3253 = fadd fast float %3252, %2877
  %3254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %3255 = extractvalue %dx.types.CBufRet.f32 %3254, 2
  %3256 = extractvalue %dx.types.CBufRet.f32 %3254, 3
  %3257 = fmul fast float %3253, %3255
  %3258 = fadd fast float %3257, %3256
  %3259 = call float @dx.op.unary.f32(i32 7, float %3258)  ; Saturate(value)
  %3260 = fsub fast float 1.000000e+00, %2945
  %3261 = fadd fast float %3260, %3259
  %3262 = call float @dx.op.unary.f32(i32 7, float %3261)  ; Saturate(value)
  %3263 = fcmp fast olt float %3262, 1.000000e+00
  br i1 %3263, label %3264, label %3818

; <label>:3264                                    ; preds = %3245
  %3265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3266 = extractvalue %dx.types.CBufRet.f32 %3265, 2
  %3267 = extractvalue %dx.types.CBufRet.f32 %3265, 3
  %3268 = fmul fast float %3266, %85
  %3269 = fmul fast float %3267, %86
  %3270 = fptoui float %3268 to i32
  %3271 = fptoui float %3269 to i32
  %3272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3273 = extractvalue %dx.types.CBufRet.f32 %3272, 0
  %3274 = extractvalue %dx.types.CBufRet.f32 %3272, 2
  %3275 = extractvalue %dx.types.CBufRet.f32 %3272, 3
  %3276 = fadd fast float %73, -4.000000e+00
  %3277 = call float @dx.op.binary.f32(i32 35, float %3276, float 0.000000e+00)  ; FMax(a,b)
  %3278 = fadd fast float %3277, %3273
  %3279 = fmul fast float %3278, %3274
  %3280 = call float @dx.op.unary.f32(i32 23, float %3279)  ; Log(value)
  %3281 = fmul fast float %3280, %3275
  %3282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3283 = extractvalue %dx.types.CBufRet.f32 %3282, 2
  %3284 = fmul fast float %3281, %3283
  %3285 = call float @dx.op.unary.f32(i32 7, float %3284)  ; Saturate(value)
  %3286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3287 = extractvalue %dx.types.CBufRet.i32 %3286, 1
  %3288 = add i32 %3287, -1
  %3289 = uitofp i32 %3287 to float
  %3290 = fmul fast float %3289, %3285
  %3291 = fptoui float %3290 to i32
  %3292 = call i32 @dx.op.binary.i32(i32 40, i32 %3291, i32 %3288)  ; UMin(a,b)
  %3293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3294 = extractvalue %dx.types.CBufRet.i32 %3293, 2
  %3295 = extractvalue %dx.types.CBufRet.i32 %3293, 3
  %3296 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3271, i32 %3294, i32 %3270)  ; UMad(a,b,c)
  %3297 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3292, i32 %3295, i32 %3296)  ; UMad(a,b,c)
  %3298 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %3299 = fptoui float %3298 to i32
  %3300 = lshr i32 %3299, 5
  %3301 = call i32 @dx.op.binary.i32(i32 40, i32 %3300, i32 8191)  ; UMin(a,b)
  br i1 false, label %3302, label %3309

; <label>:3302                                    ; preds = %3264
  %3303 = fadd fast float 0.000000e+00, %2932
  %3304 = call float @dx.op.dot3.f32(i32 55, float %2930, float %2931, float %3303, float %2930, float %2931, float %3303)  ; Dot3(ax,ay,az,bx,by,bz)
  %3305 = call float @dx.op.unary.f32(i32 25, float %3304)  ; Rsqrt(value)
  %3306 = fmul fast float %3305, %2930
  %3307 = fmul fast float %3305, %2931
  %3308 = fmul fast float %3303, %3305
  br label %3309

; <label>:3309                                    ; preds = %3302, %3264
  %3310 = phi float [ %3306, %3302 ], [ %2930, %3264 ]
  %3311 = phi float [ %3307, %3302 ], [ %2931, %3264 ]
  %3312 = phi float [ %3308, %3302 ], [ %2932, %3264 ]
  %3313 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3314 = extractvalue %dx.types.CBufRet.i32 %3313, 2
  %3315 = add nsw i32 %3314, -1
  %3316 = call i32 @dx.op.binary.i32(i32 37, i32 %3315, i32 0)  ; IMax(a,b)
  %3317 = shl i32 %3301, 2
  %3318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3317, i32 undef)  ; BufferLoad(srv,index,wot)
  %3319 = extractvalue %dx.types.ResRet.i32 %3318, 0
  %3320 = lshr i32 %3319, 16
  %3321 = and i32 %3319, 65535
  %3322 = lshr i32 %3319, 21
  %3323 = lshr i32 %3321, 5
  %3324 = call i32 @dx.op.binary.i32(i32 40, i32 %3323, i32 %3316)  ; UMin(a,b)
  %3325 = icmp ugt i32 %3322, %3324
  br i1 %3325, label %3706, label %3326

; <label>:3326                                    ; preds = %3309
  br label %3327

; <label>:3327                                    ; preds = %3695, %3326
  %3328 = phi float [ %3696, %3695 ], [ 0.000000e+00, %3326 ]
  %3329 = phi float [ %3697, %3695 ], [ 0.000000e+00, %3326 ]
  %3330 = phi float [ %3698, %3695 ], [ 0.000000e+00, %3326 ]
  %3331 = phi float [ %3699, %3695 ], [ 1.000000e+00, %3326 ]
  %3332 = phi i32 [ %3703, %3695 ], [ %3322, %3326 ]
  %3333 = phi float [ %3700, %3695 ], [ 0.000000e+00, %3326 ]
  %3334 = phi float [ %3701, %3695 ], [ 0.000000e+00, %3326 ]
  %3335 = phi float [ %3702, %3695 ], [ 0.000000e+00, %3326 ]
  %3336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3337 = extractvalue %dx.types.CBufRet.i32 %3336, 2
  %3338 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3297, i32 %3337, i32 %3332)  ; UMad(a,b,c)
  %3339 = shl i32 %3338, 2
  %3340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3339, i32 undef)  ; BufferLoad(srv,index,wot)
  %3341 = extractvalue %dx.types.ResRet.i32 %3340, 0
  %3342 = shl i32 %3332, 5
  %3343 = sub nsw i32 %3320, %3342
  %3344 = call i32 @dx.op.binary.i32(i32 37, i32 %3343, i32 0)  ; IMax(a,b)
  %3345 = call i32 @dx.op.binary.i32(i32 38, i32 %3344, i32 31)  ; IMin(a,b)
  %3346 = sub nsw i32 1, %3320
  %3347 = add nsw i32 %3346, %3321
  %3348 = call i32 @dx.op.binary.i32(i32 37, i32 %3347, i32 0)  ; IMax(a,b)
  %3349 = call i32 @dx.op.binary.i32(i32 38, i32 %3348, i32 32)  ; IMin(a,b)
  %3350 = and i32 %3349, 31
  %3351 = shl i32 -1, %3350
  %3352 = xor i32 %3351, -1
  %3353 = and i32 %3345, 31
  %3354 = shl i32 %3352, %3353
  %3355 = icmp eq i32 %3349, 32
  %3356 = select i1 %3355, i32 -1, i32 %3354
  %3357 = and i32 %3356, %3341
  %3358 = icmp eq i32 %3357, 0
  br i1 %3358, label %3695, label %3359

; <label>:3359                                    ; preds = %3327
  br label %3360

; <label>:3360                                    ; preds = %3469, %3359
  %3361 = phi float [ %3470, %3469 ], [ %3328, %3359 ]
  %3362 = phi float [ %3471, %3469 ], [ %3329, %3359 ]
  %3363 = phi float [ %3472, %3469 ], [ %3330, %3359 ]
  %3364 = phi float [ %3473, %3469 ], [ %3331, %3359 ]
  %3365 = phi i32 [ %3373, %3469 ], [ %3357, %3359 ]
  %3366 = phi float [ %3474, %3469 ], [ %3333, %3359 ]
  %3367 = phi float [ %3475, %3469 ], [ %3334, %3359 ]
  %3368 = phi float [ %3476, %3469 ], [ %3335, %3359 ]
  %3369 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3365)  ; FirstbitLo(value)
  %3370 = add i32 %3369, %3342
  %3371 = and i32 %3369, 31
  %3372 = shl i32 1, %3371
  %3373 = xor i32 %3372, %3365
  %3374 = mul i32 %3370, 72
  %3375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.f32 %3375, 0
  %3377 = extractvalue %dx.types.ResRet.f32 %3375, 1
  %3378 = extractvalue %dx.types.ResRet.f32 %3375, 2
  %3379 = add i32 %3374, 12
  %3380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.i32 %3380, 0
  %3382 = add i32 %3374, 16
  %3383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.f32 %3383, 0
  %3385 = extractvalue %dx.types.ResRet.f32 %3383, 1
  %3386 = extractvalue %dx.types.ResRet.f32 %3383, 2
  %3387 = add i32 %3374, 28
  %3388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3389 = extractvalue %dx.types.ResRet.f32 %3388, 0
  %3390 = add i32 %3374, 32
  %3391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3390, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.f32 %3391, 0
  %3393 = extractvalue %dx.types.ResRet.f32 %3391, 1
  %3394 = extractvalue %dx.types.ResRet.f32 %3391, 2
  %3395 = extractvalue %dx.types.ResRet.f32 %3391, 3
  %3396 = add i32 %3374, 48
  %3397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.f32 %3397, 0
  %3399 = extractvalue %dx.types.ResRet.f32 %3397, 1
  %3400 = add i32 %3374, 56
  %3401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.f32 %3401, 0
  %3403 = extractvalue %dx.types.ResRet.f32 %3401, 1
  %3404 = add i32 %3374, 64
  %3405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3404, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.f32 %3405, 0
  %3407 = extractvalue %dx.types.ResRet.f32 %3405, 1
  %3408 = mul i32 %3370, 60
  %3409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.f32 %3409, 0
  %3411 = extractvalue %dx.types.ResRet.f32 %3409, 1
  %3412 = extractvalue %dx.types.ResRet.f32 %3409, 2
  %3413 = add i32 %3408, 12
  %3414 = add i32 %3408, 48
  %3415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.f32 %3415, 0
  %3417 = extractvalue %dx.types.ResRet.f32 %3415, 1
  %3418 = extractvalue %dx.types.ResRet.f32 %3415, 2
  %3419 = and i32 %3381, 32767
  %3420 = bitcast float %3376 to i32
  %3421 = icmp eq i32 %3420, -1
  %3422 = bitcast float %3377 to i32
  %3423 = and i32 %3381, 32768
  %3424 = icmp ne i32 %3423, 0
  %3425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3426 = extractvalue %dx.types.CBufRet.f32 %3425, 0
  %3427 = extractvalue %dx.types.CBufRet.f32 %3425, 1
  %3428 = extractvalue %dx.types.CBufRet.f32 %3425, 2
  %3429 = fsub fast float %3410, %3426
  %3430 = fsub fast float %3411, %3427
  %3431 = fsub fast float %3412, %3428
  %3432 = fsub fast float %140, %3429
  %3433 = fsub fast float %141, %3430
  %3434 = fsub fast float %142, %3431
  %3435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3413, i32 undef)  ; BufferLoad(srv,index,wot)
  %3436 = extractvalue %dx.types.ResRet.f32 %3435, 0
  %3437 = extractvalue %dx.types.ResRet.f32 %3435, 1
  %3438 = extractvalue %dx.types.ResRet.f32 %3435, 2
  %3439 = call float @dx.op.dot3.f32(i32 55, float %3432, float %3433, float %3434, float %3436, float %3437, float %3438)  ; Dot3(ax,ay,az,bx,by,bz)
  %3440 = add i32 %3408, 24
  %3441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3440, i32 undef)  ; BufferLoad(srv,index,wot)
  %3442 = extractvalue %dx.types.ResRet.f32 %3441, 0
  %3443 = extractvalue %dx.types.ResRet.f32 %3441, 1
  %3444 = extractvalue %dx.types.ResRet.f32 %3441, 2
  %3445 = call float @dx.op.dot3.f32(i32 55, float %3432, float %3433, float %3434, float %3442, float %3443, float %3444)  ; Dot3(ax,ay,az,bx,by,bz)
  %3446 = add i32 %3408, 36
  %3447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.f32 %3447, 0
  %3449 = extractvalue %dx.types.ResRet.f32 %3447, 1
  %3450 = extractvalue %dx.types.ResRet.f32 %3447, 2
  %3451 = call float @dx.op.dot3.f32(i32 55, float %3432, float %3433, float %3434, float %3448, float %3449, float %3450)  ; Dot3(ax,ay,az,bx,by,bz)
  %3452 = call float @dx.op.unary.f32(i32 6, float %3439)  ; FAbs(value)
  %3453 = call float @dx.op.unary.f32(i32 6, float %3445)  ; FAbs(value)
  %3454 = call float @dx.op.unary.f32(i32 6, float %3451)  ; FAbs(value)
  %3455 = fsub fast float %3416, %3452
  %3456 = fsub fast float %3417, %3453
  %3457 = fsub fast float %3418, %3454
  %3458 = fmul fast float %3455, %3384
  %3459 = fmul fast float %3456, %3385
  %3460 = fmul fast float %3457, %3386
  %3461 = call float @dx.op.binary.f32(i32 36, float %3459, float %3460)  ; FMin(a,b)
  %3462 = call float @dx.op.binary.f32(i32 36, float %3458, float %3461)  ; FMin(a,b)
  %3463 = call float @dx.op.unary.f32(i32 7, float %3462)  ; Saturate(value)
  %3464 = call float @dx.op.binary.f32(i32 36, float %3364, float %3463)  ; FMin(a,b)
  %3465 = uitofp i1 %3424 to float
  %3466 = fsub fast float 1.000000e+00, %3465
  %3467 = fmul fast float %3464, %3466
  %3468 = fcmp fast ogt float %3467, 0.000000e+00
  br i1 %3468, label %3478, label %3469

; <label>:3469                                    ; preds = %3620, %3360
  %3470 = phi float [ %3684, %3620 ], [ %3361, %3360 ]
  %3471 = phi float [ %3685, %3620 ], [ %3362, %3360 ]
  %3472 = phi float [ %3686, %3620 ], [ %3363, %3360 ]
  %3473 = phi float [ %3693, %3620 ], [ %3364, %3360 ]
  %3474 = phi float [ %3690, %3620 ], [ %3366, %3360 ]
  %3475 = phi float [ %3691, %3620 ], [ %3367, %3360 ]
  %3476 = phi float [ %3692, %3620 ], [ %3368, %3360 ]
  %3477 = icmp eq i32 %3365, %3372
  br i1 %3477, label %3694, label %3360

; <label>:3478                                    ; preds = %3360
  br i1 %3421, label %3536, label %3479

; <label>:3479                                    ; preds = %3478
  %3480 = fsub fast float -0.000000e+00, %3436
  %3481 = fsub fast float -0.000000e+00, %3437
  %3482 = fsub fast float -0.000000e+00, %3438
  %3483 = call float @dx.op.dot3.f32(i32 55, float %3310, float %3311, float %3312, float %3480, float %3481, float %3482)  ; Dot3(ax,ay,az,bx,by,bz)
  %3484 = fsub fast float -0.000000e+00, %3483
  %3485 = call float @dx.op.dot3.f32(i32 55, float %3432, float %3433, float %3434, float %3480, float %3481, float %3482)  ; Dot3(ax,ay,az,bx,by,bz)
  %3486 = fadd fast float %3485, %3399
  %3487 = fadd fast float %3398, %3485
  %3488 = fsub fast float -0.000000e+00, %3487
  %3489 = fcmp ogt float %3483, -0.000000e+00
  %3490 = select i1 %3489, float %3488, float %3486
  %3491 = call float @dx.op.unary.f32(i32 6, float %3484)  ; FAbs(value)
  %3492 = fdiv fast float 1.000000e+00, %3491
  %3493 = fmul fast float %3490, %3492
  %3494 = call float @dx.op.binary.f32(i32 35, float %3493, float 0.000000e+00)  ; FMax(a,b)
  %3495 = fsub fast float -0.000000e+00, %3442
  %3496 = fsub fast float -0.000000e+00, %3443
  %3497 = fsub fast float -0.000000e+00, %3444
  %3498 = call float @dx.op.dot3.f32(i32 55, float %3310, float %3311, float %3312, float %3495, float %3496, float %3497)  ; Dot3(ax,ay,az,bx,by,bz)
  %3499 = fsub fast float -0.000000e+00, %3498
  %3500 = call float @dx.op.dot3.f32(i32 55, float %3432, float %3433, float %3434, float %3495, float %3496, float %3497)  ; Dot3(ax,ay,az,bx,by,bz)
  %3501 = fadd fast float %3500, %3403
  %3502 = fadd fast float %3402, %3500
  %3503 = fsub fast float -0.000000e+00, %3502
  %3504 = fcmp ogt float %3498, -0.000000e+00
  %3505 = select i1 %3504, float %3503, float %3501
  %3506 = call float @dx.op.unary.f32(i32 6, float %3499)  ; FAbs(value)
  %3507 = fdiv fast float 1.000000e+00, %3506
  %3508 = fmul fast float %3505, %3507
  %3509 = call float @dx.op.binary.f32(i32 35, float %3508, float 0.000000e+00)  ; FMax(a,b)
  %3510 = fsub fast float -0.000000e+00, %3448
  %3511 = fsub fast float -0.000000e+00, %3449
  %3512 = fsub fast float -0.000000e+00, %3450
  %3513 = call float @dx.op.dot3.f32(i32 55, float %3310, float %3311, float %3312, float %3510, float %3511, float %3512)  ; Dot3(ax,ay,az,bx,by,bz)
  %3514 = fsub fast float -0.000000e+00, %3513
  %3515 = call float @dx.op.dot3.f32(i32 55, float %3432, float %3433, float %3434, float %3510, float %3511, float %3512)  ; Dot3(ax,ay,az,bx,by,bz)
  %3516 = fadd fast float %3515, %3407
  %3517 = fadd fast float %3406, %3515
  %3518 = fsub fast float -0.000000e+00, %3517
  %3519 = fcmp ogt float %3513, -0.000000e+00
  %3520 = select i1 %3519, float %3518, float %3516
  %3521 = call float @dx.op.unary.f32(i32 6, float %3514)  ; FAbs(value)
  %3522 = fdiv fast float 1.000000e+00, %3521
  %3523 = fmul fast float %3520, %3522
  %3524 = call float @dx.op.binary.f32(i32 35, float %3523, float 0.000000e+00)  ; FMax(a,b)
  %3525 = call float @dx.op.binary.f32(i32 36, float %3509, float %3524)  ; FMin(a,b)
  %3526 = call float @dx.op.binary.f32(i32 36, float %3494, float %3525)  ; FMin(a,b)
  %3527 = fmul fast float %3526, %3310
  %3528 = fmul fast float %3526, %3311
  %3529 = fmul fast float %3526, %3312
  %3530 = fadd fast float %3527, %140
  %3531 = fadd fast float %3528, %141
  %3532 = fadd fast float %3529, %142
  %3533 = fsub fast float %3530, %3376
  %3534 = fsub fast float %3531, %3377
  %3535 = fsub fast float %3532, %3378
  br label %3543

; <label>:3536                                    ; preds = %3478
  %3537 = fmul fast float %3310, 8.096000e+03
  %3538 = fmul fast float %3311, 8.096000e+03
  %3539 = fmul fast float %3312, 8.096000e+03
  %3540 = fadd fast float %3537, %140
  %3541 = fadd fast float %3538, %141
  %3542 = fadd fast float %3539, %142
  br label %3543

; <label>:3543                                    ; preds = %3536, %3479
  %3544 = phi float [ %3310, %3536 ], [ %3533, %3479 ]
  %3545 = phi float [ %3311, %3536 ], [ %3534, %3479 ]
  %3546 = phi float [ %3312, %3536 ], [ %3535, %3479 ]
  %3547 = phi float [ %3540, %3536 ], [ %3530, %3479 ]
  %3548 = phi float [ %3541, %3536 ], [ %3531, %3479 ]
  %3549 = phi float [ %3542, %3536 ], [ %3532, %3479 ]
  %3550 = fcmp fast olt float %3395, 1.000000e+00
  br i1 %3550, label %3551, label %3582, !dx.controlflow.hints !82

; <label>:3551                                    ; preds = %3543
  %3552 = fmul fast float %3546, %3393
  %3553 = fmul fast float %3545, %3394
  %3554 = fsub fast float %3552, %3553
  %3555 = fmul fast float %3544, %3394
  %3556 = fmul fast float %3546, %3392
  %3557 = fsub fast float %3555, %3556
  %3558 = fmul fast float %3545, %3392
  %3559 = fmul fast float %3544, %3393
  %3560 = fsub fast float %3558, %3559
  %3561 = fmul fast float %3554, 2.000000e+00
  %3562 = fmul fast float %3557, 2.000000e+00
  %3563 = fmul fast float %3560, 2.000000e+00
  %3564 = fmul fast float %3561, %3395
  %3565 = fmul fast float %3562, %3395
  %3566 = fmul fast float %3563, %3395
  %3567 = fmul fast float %3563, %3393
  %3568 = fmul fast float %3562, %3394
  %3569 = fmul fast float %3561, %3394
  %3570 = fmul fast float %3563, %3392
  %3571 = fmul fast float %3562, %3392
  %3572 = fmul fast float %3561, %3393
  %3573 = fadd fast float %3567, %3544
  %3574 = fadd fast float %3573, %3564
  %3575 = fsub fast float %3574, %3568
  %3576 = fsub fast float %3545, %3570
  %3577 = fadd fast float %3576, %3565
  %3578 = fadd fast float %3577, %3569
  %3579 = fadd fast float %3566, %3546
  %3580 = fsub fast float %3579, %3572
  %3581 = fadd fast float %3580, %3571
  br label %3582

; <label>:3582                                    ; preds = %3551, %3543
  %3583 = phi float [ %3575, %3551 ], [ %3544, %3543 ]
  %3584 = phi float [ %3578, %3551 ], [ %3545, %3543 ]
  %3585 = phi float [ %3581, %3551 ], [ %3546, %3543 ]
  br i1 %3421, label %3617, label %3586

; <label>:3586                                    ; preds = %3582
  %3587 = fmul fast float %2877, 0x400187C840000000
  %3588 = fadd fast float %3587, 0xC00EFC2120000000
  %3589 = fmul fast float %3588, %2877
  %3590 = fadd fast float %3589, 0x3FE5D16340000000
  %3591 = fmul fast float %3590, %2877
  %3592 = fadd fast float %3591, 1.000000e+00
  %3593 = call float @dx.op.unary.f32(i32 7, float %3592)  ; Saturate(value)
  %3594 = fsub fast float %3547, %140
  %3595 = fsub fast float %3548, %141
  %3596 = fsub fast float %3549, %142
  %3597 = fsub fast float %3547, %3376
  %3598 = fsub fast float %3548, %3377
  %3599 = fsub fast float %3549, %3378
  %3600 = call float @dx.op.dot3.f32(i32 55, float %3594, float %3595, float %3596, float %3594, float %3595, float %3596)  ; Dot3(ax,ay,az,bx,by,bz)
  %3601 = call float @dx.op.dot3.f32(i32 55, float %3597, float %3598, float %3599, float %3597, float %3598, float %3599)  ; Dot3(ax,ay,az,bx,by,bz)
  %3602 = fadd fast float %3601, 0x3EE4F8B580000000
  %3603 = fdiv fast float %3600, %3602
  %3604 = bitcast float %3603 to i32
  %3605 = ashr i32 %3604, 1
  %3606 = add nsw i32 %3605, 532487669
  %3607 = bitcast i32 %3606 to float
  %3608 = fmul fast float %3607, %3593
  %3609 = call float @dx.op.unary.f32(i32 7, float %3608)  ; Saturate(value)
  %3610 = fmul fast float %3609, 0x4009981AE0000000
  %3611 = fsub fast float 0x40111BBD80000000, %3610
  %3612 = fmul fast float %3611, %3609
  %3613 = fadd fast float %3612, 0xC0009F6020000000
  %3614 = fmul fast float %3613, %3609
  %3615 = fadd fast float %3614, 1.000000e+00
  %3616 = call float @dx.op.unary.f32(i32 7, float %3615)  ; Saturate(value)
  br label %3620

; <label>:3617                                    ; preds = %3582
  %3618 = icmp ne i32 %3422, -1
  %3619 = zext i1 %3618 to i32
  br label %3620

; <label>:3620                                    ; preds = %3617, %3586
  %3621 = phi float [ %2877, %3617 ], [ %3616, %3586 ]
  %3622 = phi i32 [ %3619, %3617 ], [ 0, %3586 ]
  %3623 = fmul float %3621, 5.000000e+00
  %3624 = fsub float 5.000000e+00, %3623
  %3625 = icmp ne i32 %3622, 0
  %3626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3627 = extractvalue %dx.types.CBufRet.f32 %3626, 3
  %3628 = fadd fast float %3627, %3624
  %3629 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3628)  ; FMax(a,b)
  %3630 = call float @dx.op.unary.f32(i32 6, float %3583)  ; FAbs(value)
  %3631 = call float @dx.op.unary.f32(i32 6, float %3584)  ; FAbs(value)
  %3632 = fadd fast float %3631, %3630
  %3633 = call float @dx.op.unary.f32(i32 6, float %3585)  ; FAbs(value)
  %3634 = fadd fast float %3632, %3633
  %3635 = fcmp fast oeq float %3634, 0.000000e+00
  %3636 = fdiv fast float 1.000000e+00, %3634
  %3637 = select i1 %3635, float 1.000000e+00, float %3636
  %3638 = fmul fast float %3637, %3583
  %3639 = fmul fast float %3637, %3584
  %3640 = call float @dx.op.unary.f32(i32 6, float %3639)  ; FAbs(value)
  %3641 = call float @dx.op.unary.f32(i32 6, float %3638)  ; FAbs(value)
  %3642 = fsub fast float 1.000000e+00, %3640
  %3643 = fsub fast float 1.000000e+00, %3641
  %3644 = fcmp fast oge float %3638, 0.000000e+00
  %3645 = fcmp fast oge float %3639, 0.000000e+00
  %3646 = select i1 %3644, float 1.000000e+00, float -1.000000e+00
  %3647 = select i1 %3645, float 1.000000e+00, float -1.000000e+00
  %3648 = fcmp fast ole float %3585, 0.000000e+00
  %3649 = fmul fast float %3646, %3642
  %3650 = fmul fast float %3647, %3643
  %3651 = select i1 %3648, float %3649, float %3638
  %3652 = select i1 %3648, float %3650, float %3639
  %3653 = fmul fast float %3651, 5.000000e-01
  %3654 = fmul fast float %3652, 5.000000e-01
  %3655 = fadd fast float %3653, 5.000000e-01
  %3656 = fadd fast float %3654, 5.000000e-01
  %3657 = uitofp i32 %3419 to float
  %3658 = call float @dx.op.binary.f32(i32 36, float %3629, float 3.000000e+00)  ; FMin(a,b)
  %3659 = fadd fast float %3658, 2.000000e+00
  %3660 = call float @dx.op.unary.f32(i32 21, float %3659)  ; Exp(value)
  %3661 = extractvalue %dx.types.CBufRet.f32 %3626, 1
  %3662 = fmul fast float %3661, %3660
  %3663 = fmul fast float %3662, 2.000000e+00
  %3664 = fsub fast float 1.000000e+00, %3663
  %3665 = fmul fast float %3655, %3664
  %3666 = fmul fast float %3656, %3664
  %3667 = fadd fast float %3665, %3662
  %3668 = fadd fast float %3666, %3662
  %3669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %39, float %3667, float %3668, float %3657, float undef, i32 0, i32 0, i32 undef, float %3629)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3670 = extractvalue %dx.types.ResRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.ResRet.f32 %3669, 1
  %3672 = extractvalue %dx.types.ResRet.f32 %3669, 2
  %3673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3674 = extractvalue %dx.types.CBufRet.f32 %3673, 3
  %3675 = fmul fast float %3674, %3389
  %3676 = call float @dx.op.binary.f32(i32 36, float %2951, float %3675)  ; FMin(a,b)
  %3677 = select i1 %3625, float %3676, float %3675
  %3678 = fmul fast float %3670, %3467
  %3679 = fmul fast float %3678, %3677
  %3680 = fmul fast float %3671, %3467
  %3681 = fmul fast float %3680, %3677
  %3682 = fmul fast float %3672, %3467
  %3683 = fmul fast float %3682, %3677
  %3684 = fadd fast float %3679, %3361
  %3685 = fadd fast float %3681, %3362
  %3686 = fadd fast float %3683, %3363
  %3687 = fmul fast float %3547, %3467
  %3688 = fmul fast float %3548, %3467
  %3689 = fmul fast float %3549, %3467
  %3690 = fadd fast float %3687, %3366
  %3691 = fadd fast float %3688, %3367
  %3692 = fadd fast float %3689, %3368
  %3693 = fsub fast float %3364, %3467
  br label %3469

; <label>:3694                                    ; preds = %3469
  br label %3695

; <label>:3695                                    ; preds = %3694, %3327
  %3696 = phi float [ %3328, %3327 ], [ %3470, %3694 ]
  %3697 = phi float [ %3329, %3327 ], [ %3471, %3694 ]
  %3698 = phi float [ %3330, %3327 ], [ %3472, %3694 ]
  %3699 = phi float [ %3331, %3327 ], [ %3473, %3694 ]
  %3700 = phi float [ %3333, %3327 ], [ %3474, %3694 ]
  %3701 = phi float [ %3334, %3327 ], [ %3475, %3694 ]
  %3702 = phi float [ %3335, %3327 ], [ %3476, %3694 ]
  %3703 = add i32 %3332, 1
  %3704 = icmp ugt i32 %3703, %3324
  br i1 %3704, label %3705, label %3327, !llvm.loop !83

; <label>:3705                                    ; preds = %3695
  br label %3706

; <label>:3706                                    ; preds = %3705, %3309
  %3707 = phi float [ 0.000000e+00, %3309 ], [ %3696, %3705 ]
  %3708 = phi float [ 0.000000e+00, %3309 ], [ %3697, %3705 ]
  %3709 = phi float [ 0.000000e+00, %3309 ], [ %3698, %3705 ]
  %3710 = phi float [ 0.000000e+00, %3309 ], [ %3700, %3705 ]
  %3711 = phi float [ 0.000000e+00, %3309 ], [ %3701, %3705 ]
  %3712 = phi float [ 0.000000e+00, %3309 ], [ %3702, %3705 ]
  %3713 = call float @dx.op.dot3.f32(i32 55, float %3707, float %3708, float %3709, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3714 = select i1 %201, float 0.000000e+00, float %3707
  %3715 = select i1 %201, float %3713, float %3708
  %3716 = select i1 %201, float 0.000000e+00, float %3709
  %3717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %3718 = extractvalue %dx.types.CBufRet.f32 %3717, 0
  %3719 = extractvalue %dx.types.CBufRet.f32 %3717, 1
  %3720 = extractvalue %dx.types.CBufRet.f32 %3717, 2
  %3721 = extractvalue %dx.types.CBufRet.f32 %3717, 3
  %3722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %3723 = extractvalue %dx.types.CBufRet.f32 %3722, 0
  %3724 = extractvalue %dx.types.CBufRet.f32 %3722, 1
  %3725 = extractvalue %dx.types.CBufRet.f32 %3722, 2
  %3726 = extractvalue %dx.types.CBufRet.f32 %3722, 3
  %3727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %3728 = extractvalue %dx.types.CBufRet.f32 %3727, 0
  %3729 = extractvalue %dx.types.CBufRet.f32 %3727, 1
  %3730 = extractvalue %dx.types.CBufRet.f32 %3727, 2
  %3731 = extractvalue %dx.types.CBufRet.f32 %3727, 3
  %3732 = call float @dx.op.dot3.f32(i32 55, float %3728, float %3729, float %3730, float %2890, float %2891, float %2892)  ; Dot3(ax,ay,az,bx,by,bz)
  %3733 = call float @dx.op.dot3.f32(i32 55, float %3710, float %3711, float %3712, float %3728, float %3729, float %3730)  ; Dot3(ax,ay,az,bx,by,bz)
  %3734 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %3728, float %3729, float %3730)  ; Dot3(ax,ay,az,bx,by,bz)
  %3735 = fadd fast float %2877, -1.000000e+00
  %3736 = fsub fast float %3733, %3734
  %3737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %3738 = extractvalue %dx.types.CBufRet.f32 %3737, 2
  %3739 = fmul fast float %3738, %3733
  %3740 = fdiv fast float 1.600000e+02, %3739
  %3741 = fmul fast float %3735, %3735
  %3742 = fmul fast float %3741, 0xBFB5B17960000000
  %3743 = fmul fast float %3742, %3736
  %3744 = fmul fast float %3743, %3740
  %3745 = call float @dx.op.unary.f32(i32 21, float %3744)  ; Exp(value)
  %3746 = fmul fast float %3745, 0x3FF04B2960000000
  %3747 = fsub fast float 0x3FF04B2960000000, %3746
  %3748 = call float @dx.op.unary.f32(i32 7, float %3747)  ; Saturate(value)
  %3749 = fmul fast float %3748, 4.000000e+00
  %3750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %3751 = extractvalue %dx.types.CBufRet.f32 %3750, 0
  %3752 = extractvalue %dx.types.CBufRet.f32 %3750, 1
  %3753 = extractvalue %dx.types.CBufRet.f32 %3750, 2
  %3754 = fadd fast float %3751, %3710
  %3755 = fadd fast float %3752, %3711
  %3756 = fadd fast float %3753, %3712
  %3757 = fmul fast float %3754, %3718
  %3758 = call float @dx.op.tertiary.f32(i32 46, float %3755, float %3719, float %3757)  ; FMad(a,b,c)
  %3759 = call float @dx.op.tertiary.f32(i32 46, float %3756, float %3720, float %3758)  ; FMad(a,b,c)
  %3760 = fadd fast float %3759, %3721
  %3761 = fmul fast float %3754, %3723
  %3762 = call float @dx.op.tertiary.f32(i32 46, float %3755, float %3724, float %3761)  ; FMad(a,b,c)
  %3763 = call float @dx.op.tertiary.f32(i32 46, float %3756, float %3725, float %3762)  ; FMad(a,b,c)
  %3764 = fadd fast float %3763, %3726
  %3765 = fmul fast float %3754, %3728
  %3766 = call float @dx.op.tertiary.f32(i32 46, float %3755, float %3729, float %3765)  ; FMad(a,b,c)
  %3767 = call float @dx.op.tertiary.f32(i32 46, float %3756, float %3730, float %3766)  ; FMad(a,b,c)
  %3768 = fadd fast float %3767, %3731
  %3769 = fdiv fast float %3760, %3768
  %3770 = fdiv fast float %3764, %3768
  %3771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.f32 %3771, 0
  %3773 = extractvalue %dx.types.CBufRet.f32 %3771, 1
  %3774 = fmul fast float %3772, %3769
  %3775 = fmul fast float %3773, %3770
  %3776 = extractvalue %dx.types.CBufRet.f32 %3771, 2
  %3777 = extractvalue %dx.types.CBufRet.f32 %3771, 3
  %3778 = fadd fast float %3774, %3776
  %3779 = fadd fast float %3775, %3777
  %3780 = fmul fast float %3732, 8.000000e+00
  %3781 = call float @dx.op.unary.f32(i32 7, float %3780)  ; Saturate(value)
  %3782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %3783 = extractvalue %dx.types.CBufRet.f32 %3782, 0
  %3784 = fmul fast float %3778, 2.000000e+00
  %3785 = fmul fast float %3779, 2.000000e+00
  %3786 = fadd fast float %3784, -1.000000e+00
  %3787 = fadd fast float %3785, -1.000000e+00
  %3788 = fmul fast float %3786, %3786
  %3789 = fsub fast float 1.000000e+00, %3788
  %3790 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  %3791 = fmul fast float %3787, %3787
  %3792 = fsub fast float 1.000000e+00, %3791
  %3793 = call float @dx.op.unary.f32(i32 7, float %3792)  ; Saturate(value)
  %3794 = fmul fast float %3783, %3790
  %3795 = fmul fast float %3794, %3793
  %3796 = call float @dx.op.unary.f32(i32 7, float %3795)  ; Saturate(value)
  %3797 = fmul fast float %3796, %3781
  %3798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %3778, float %3779, float undef, float undef, i32 0, i32 0, i32 undef, float %3749)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3799 = extractvalue %dx.types.ResRet.f32 %3798, 0
  %3800 = extractvalue %dx.types.ResRet.f32 %3798, 1
  %3801 = extractvalue %dx.types.ResRet.f32 %3798, 2
  %3802 = select i1 %201, float 0.000000e+00, float %3800
  %3803 = select i1 %201, float 0.000000e+00, float %3801
  %3804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3805 = extractvalue %dx.types.CBufRet.f32 %3804, 2
  %3806 = fmul fast float %3805, %3799
  %3807 = fmul fast float %3802, %3805
  %3808 = fmul fast float %3803, %3805
  %3809 = fsub fast float %3806, %3714
  %3810 = fsub fast float %3807, %3715
  %3811 = fsub fast float %3808, %3716
  %3812 = fmul fast float %3809, %3797
  %3813 = fmul fast float %3810, %3797
  %3814 = fmul fast float %3811, %3797
  %3815 = fadd fast float %3812, %3714
  %3816 = fadd fast float %3813, %3715
  %3817 = fadd fast float %3814, %3716
  br label %3818

; <label>:3818                                    ; preds = %3706, %3245
  %3819 = phi float [ %3191, %3245 ], [ %3815, %3706 ]
  %3820 = phi float [ %3192, %3245 ], [ %3816, %3706 ]
  %3821 = phi float [ %3193, %3245 ], [ %3817, %3706 ]
  %3822 = call float @dx.op.dot3.f32(i32 55, float %2868, float %2869, float %2870, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3823 = fcmp fast ogt float %3822, 0x3E7FF19E20000000
  %3824 = fdiv fast float 1.000000e+00, %3822
  %3825 = select i1 %3823, float %3824, float 0.000000e+00
  %3826 = fmul fast float %3825, %2868
  %3827 = fmul fast float %3825, %2869
  %3828 = fmul fast float %3825, %2870
  %3829 = fadd fast float %3826, -1.000000e+00
  %3830 = fadd fast float %3827, -1.000000e+00
  %3831 = fadd fast float %3828, -1.000000e+00
  %3832 = fmul fast float %3829, 5.000000e-01
  %3833 = fmul fast float %3830, 5.000000e-01
  %3834 = fmul fast float %3831, 5.000000e-01
  %3835 = fadd fast float %3832, 1.000000e+00
  %3836 = fadd fast float %3833, 1.000000e+00
  %3837 = fadd fast float %3834, 1.000000e+00
  %3838 = call float @dx.op.binary.f32(i32 35, float %2884, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3839 = fdiv fast float %902, %3838
  %3840 = fcmp fast olt float %1569, 1.270000e+02
  %3841 = fcmp fast olt float %1570, 1.270000e+02
  %3842 = fcmp fast olt float %1571, 1.270000e+02
  %3843 = fmul fast float %1569, 0xBFF7154760000000
  %3844 = fmul fast float %3843, %3839
  %3845 = fmul fast float %1570, 0xBFF7154760000000
  %3846 = fmul fast float %3845, %3839
  %3847 = fmul fast float %1571, 0xBFF7154760000000
  %3848 = fmul fast float %3847, %3839
  %3849 = call float @dx.op.unary.f32(i32 21, float %3844)  ; Exp(value)
  %3850 = call float @dx.op.unary.f32(i32 21, float %3846)  ; Exp(value)
  %3851 = call float @dx.op.unary.f32(i32 21, float %3848)  ; Exp(value)
  %3852 = call float @dx.op.unary.f32(i32 7, float %3849)  ; Saturate(value)
  %3853 = call float @dx.op.unary.f32(i32 7, float %3850)  ; Saturate(value)
  %3854 = call float @dx.op.unary.f32(i32 7, float %3851)  ; Saturate(value)
  %3855 = select i1 %3840, float %3852, float 0.000000e+00
  %3856 = select i1 %3841, float %3853, float 0.000000e+00
  %3857 = select i1 %3842, float %3854, float 0.000000e+00
  %3858 = fmul fast float %3855, %3251
  %3859 = fmul fast float %3856, %3251
  %3860 = fmul fast float %3857, %3251
  %3861 = fadd fast float %3858, -1.000000e+00
  %3862 = fadd fast float %3859, -1.000000e+00
  %3863 = fadd fast float %3860, -1.000000e+00
  %3864 = fmul fast float %3861, %1519
  %3865 = fmul fast float %3862, %1519
  %3866 = fmul fast float %3863, %1519
  %3867 = fmul fast float %3819, %3246
  %3868 = fmul fast float %3820, %3247
  %3869 = fmul fast float %3821, %3248
  %3870 = fsub fast float 1.000000e+00, %2884
  %3871 = bitcast float %3870 to i32
  %3872 = sitofp i32 %3871 to float
  %3873 = fmul fast float %3872, 5.000000e+00
  %3874 = fadd fast float %3873, 0xC1EFBF8940000000
  %3875 = fptosi float %3874 to i32
  %3876 = bitcast i32 %3875 to float
  %3877 = fmul fast float %3876, %1495
  %3878 = fmul fast float %3183, %3877
  %3879 = fmul fast float %3878, %3251
  %3880 = fmul fast float %3879, %3835
  %3881 = fmul fast float %3184, %3877
  %3882 = fmul fast float %3881, %3251
  %3883 = fmul fast float %3882, %3836
  %3884 = fmul fast float %3185, %3877
  %3885 = fmul fast float %3884, %3251
  %3886 = fmul fast float %3885, %3837
  %3887 = fadd fast float %3867, %1500
  %3888 = fadd fast float %3887, %3880
  %3889 = fmul fast float %3888, %1519
  %3890 = fadd fast float %3868, %1501
  %3891 = fadd fast float %3890, %3883
  %3892 = fmul fast float %3891, %1519
  %3893 = fadd fast float %3869, %1502
  %3894 = fadd fast float %3893, %3886
  %3895 = fmul fast float %3894, %1519
  %3896 = fmul fast float %2872, 0x4012D0A400000000
  %3897 = fadd fast float %3866, 1.000000e+00
  %3898 = fadd fast float %3865, 1.000000e+00
  %3899 = fadd fast float %3864, 1.000000e+00
  %3900 = fmul fast float %3251, %3185
  %3901 = fmul fast float %3251, %3184
  %3902 = fmul fast float %3251, %3183
  %3903 = fmul fast float %2939, %1519
  %3904 = fsub fast float 1.000000e+00, %3903
  %3905 = call float @dx.op.unary.f32(i32 7, float %3904)  ; Saturate(value)
  %3906 = fsub fast float 1.000000e+00, %3905
  %3907 = fadd fast float %3896, 0x3FDB6377A0000000
  %3908 = fmul fast float %3906, %3907
  %3909 = call float @dx.op.dot3.f32(i32 55, float %2485, float %2486, float %2487, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3910 = fadd fast float %3908, %3909
  %3911 = call float @dx.op.unary.f32(i32 7, float %3910)  ; Saturate(value)
  %3912 = call float @dx.op.binary.f32(i32 35, float %3911, float 0x3F847AE140000000)  ; FMax(a,b)
  %3913 = fmul fast float %3912, %3912
  %3914 = fmul fast float %3913, %3913
  %3915 = fmul fast float %3914, 0xC00A935000000000
  %3916 = call float @dx.op.unary.f32(i32 21, float %3915)  ; Exp(value)
  %3917 = fsub fast float 1.000000e+00, %3916
  %3918 = fmul fast float %3899, %3187
  %3919 = fmul fast float %3918, %3917
  %3920 = fmul fast float %3898, %3188
  %3921 = fmul fast float %3920, %3917
  %3922 = fmul fast float %3897, %3189
  %3923 = fmul fast float %3922, %3917
  %3924 = fadd fast float %3919, %3902
  %3925 = fmul fast float %3924, %1519
  %3926 = fadd fast float %3921, %3901
  %3927 = fmul fast float %3926, %1519
  %3928 = fadd fast float %3923, %3900
  %3929 = fmul fast float %3928, %1519
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 3
  %3932 = fcmp fast oeq float %3931, 0.000000e+00
  br i1 %3932, label %5549, label %3933

; <label>:3933                                    ; preds = %3818
  %3934 = extractvalue %dx.types.CBufRet.f32 %3930, 0
  %3935 = extractvalue %dx.types.CBufRet.f32 %3930, 1
  %3936 = extractvalue %dx.types.CBufRet.f32 %3930, 2
  %3937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3938 = extractvalue %dx.types.CBufRet.f32 %3937, 0
  %3939 = extractvalue %dx.types.CBufRet.f32 %3937, 1
  %3940 = extractvalue %dx.types.CBufRet.f32 %3937, 2
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 0
  %3943 = extractvalue %dx.types.CBufRet.f32 %3941, 1
  %3944 = call float @dx.op.dot3.f32(i32 55, float %3938, float %3939, float %3940, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3945 = select i1 %201, float %3942, float %3938
  %3946 = select i1 %201, float %3944, float %3939
  %3947 = select i1 %201, float %3943, float %3940
  %3948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3949 = extractvalue %dx.types.CBufRet.f32 %3948, 2
  %3950 = fmul fast float %3949, %88
  %3951 = fmul fast float %3949, %89
  %3952 = fmul fast float %3949, %90
  %3953 = fadd fast float %3950, %140
  %3954 = fadd fast float %3951, %141
  %3955 = fadd fast float %3952, %142
  %3956 = fcmp fast olt float %3931, 0.000000e+00
  br i1 %3956, label %5052, label %3957

; <label>:3957                                    ; preds = %3933
  %3958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3959 = extractvalue %dx.types.CBufRet.f32 %3958, 0
  %3960 = extractvalue %dx.types.CBufRet.f32 %3958, 1
  %3961 = extractvalue %dx.types.CBufRet.f32 %3958, 2
  %3962 = extractvalue %dx.types.CBufRet.f32 %3958, 3
  %3963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3964 = extractvalue %dx.types.CBufRet.f32 %3963, 0
  %3965 = extractvalue %dx.types.CBufRet.f32 %3963, 1
  %3966 = extractvalue %dx.types.CBufRet.f32 %3963, 2
  %3967 = extractvalue %dx.types.CBufRet.f32 %3963, 3
  %3968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3969 = extractvalue %dx.types.CBufRet.f32 %3968, 0
  %3970 = extractvalue %dx.types.CBufRet.f32 %3968, 1
  %3971 = extractvalue %dx.types.CBufRet.f32 %3968, 2
  %3972 = extractvalue %dx.types.CBufRet.f32 %3968, 3
  %3973 = fmul fast float %3959, %3953
  %3974 = call float @dx.op.tertiary.f32(i32 46, float %3954, float %3960, float %3973)  ; FMad(a,b,c)
  %3975 = call float @dx.op.tertiary.f32(i32 46, float %3955, float %3961, float %3974)  ; FMad(a,b,c)
  %3976 = fadd fast float %3975, %3962
  %3977 = fmul fast float %3964, %3953
  %3978 = call float @dx.op.tertiary.f32(i32 46, float %3954, float %3965, float %3977)  ; FMad(a,b,c)
  %3979 = call float @dx.op.tertiary.f32(i32 46, float %3955, float %3966, float %3978)  ; FMad(a,b,c)
  %3980 = fadd fast float %3979, %3967
  %3981 = fmul fast float %3969, %3953
  %3982 = call float @dx.op.tertiary.f32(i32 46, float %3954, float %3970, float %3981)  ; FMad(a,b,c)
  %3983 = call float @dx.op.tertiary.f32(i32 46, float %3955, float %3971, float %3982)  ; FMad(a,b,c)
  %3984 = fadd fast float %3983, %3972
  %3985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3986 = extractvalue %dx.types.CBufRet.f32 %3985, 0
  %3987 = extractvalue %dx.types.CBufRet.f32 %3985, 1
  %3988 = extractvalue %dx.types.CBufRet.f32 %3985, 3
  %3989 = fmul fast float %3988, %3976
  %3990 = fmul fast float %3988, %3980
  %3991 = fadd fast float %3989, %3986
  %3992 = fadd fast float %3990, %3987
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 0
  %3995 = extractvalue %dx.types.CBufRet.f32 %3993, 1
  %3996 = extractvalue %dx.types.CBufRet.f32 %3993, 3
  %3997 = fmul fast float %3996, %3976
  %3998 = fmul fast float %3996, %3980
  %3999 = fadd fast float %3997, %3994
  %4000 = fadd fast float %3998, %3995
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 1
  %4003 = fsub fast float %4002, %3984
  %4004 = extractvalue %dx.types.CBufRet.f32 %4001, 2
  %4005 = fmul fast float %4003, %4004
  %4006 = fsub fast float 1.000000e+00, %4005
  %4007 = call float @dx.op.unary.f32(i32 7, float %4006)  ; Saturate(value)
  %4008 = extractvalue %dx.types.CBufRet.f32 %3993, 2
  %4009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4010 = extractvalue %dx.types.CBufRet.f32 %4009, 2
  %4011 = fadd fast float %4010, %4008
  %4012 = fcmp fast ogt float %4011, 0.000000e+00
  br i1 %4012, label %4013, label %4037

; <label>:4013                                    ; preds = %3957
  %4014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4015 = extractvalue %dx.types.CBufRet.f32 %4014, 0
  %4016 = extractvalue %dx.types.CBufRet.f32 %4014, 1
  %4017 = fsub fast float %3999, %4015
  %4018 = fsub fast float %4000, %4016
  %4019 = fcmp fast olt float %4017, 0.000000e+00
  %4020 = fcmp fast olt float %4018, 0.000000e+00
  %4021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4022 = extractvalue %dx.types.CBufRet.f32 %4021, 0
  %4023 = extractvalue %dx.types.CBufRet.f32 %4021, 1
  %4024 = extractvalue %dx.types.CBufRet.f32 %4021, 2
  %4025 = extractvalue %dx.types.CBufRet.f32 %4021, 3
  %4026 = select i1 %4019, float %4022, float %4024
  %4027 = select i1 %4020, float %4023, float %4025
  %4028 = fmul fast float %4026, %4017
  %4029 = fmul fast float %4027, %4018
  %4030 = call float @dx.op.unary.f32(i32 6, float %4028)  ; FAbs(value)
  %4031 = call float @dx.op.unary.f32(i32 6, float %4029)  ; FAbs(value)
  %4032 = extractvalue %dx.types.CBufRet.f32 %3948, 0
  %4033 = call float @dx.op.binary.f32(i32 35, float %4030, float %4031)  ; FMax(a,b)
  %4034 = fsub fast float %4032, %4033
  %4035 = call float @dx.op.unary.f32(i32 7, float %4034)  ; Saturate(value)
  %4036 = fmul fast float %4035, %4007
  br label %4037

; <label>:4037                                    ; preds = %4013, %3957
  %4038 = phi float [ %4036, %4013 ], [ 0.000000e+00, %3957 ]
  %4039 = extractvalue %dx.types.CBufRet.f32 %3985, 2
  %4040 = extractvalue %dx.types.CBufRet.f32 %4009, 1
  %4041 = fadd fast float %4040, %4039
  %4042 = fcmp fast ogt float %4041, 0.000000e+00
  %4043 = extractvalue %dx.types.CBufRet.f32 %3948, 0
  br i1 %4042, label %4044, label %4067

; <label>:4044                                    ; preds = %4037
  %4045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4046 = extractvalue %dx.types.CBufRet.f32 %4045, 0
  %4047 = extractvalue %dx.types.CBufRet.f32 %4045, 1
  %4048 = fsub fast float %3991, %4046
  %4049 = fsub fast float %3992, %4047
  %4050 = fcmp fast olt float %4048, 0.000000e+00
  %4051 = fcmp fast olt float %4049, 0.000000e+00
  %4052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4053 = extractvalue %dx.types.CBufRet.f32 %4052, 0
  %4054 = extractvalue %dx.types.CBufRet.f32 %4052, 1
  %4055 = extractvalue %dx.types.CBufRet.f32 %4052, 2
  %4056 = extractvalue %dx.types.CBufRet.f32 %4052, 3
  %4057 = select i1 %4050, float %4053, float %4055
  %4058 = select i1 %4051, float %4054, float %4056
  %4059 = fmul fast float %4057, %4048
  %4060 = fmul fast float %4058, %4049
  %4061 = call float @dx.op.unary.f32(i32 6, float %4059)  ; FAbs(value)
  %4062 = call float @dx.op.unary.f32(i32 6, float %4060)  ; FAbs(value)
  %4063 = call float @dx.op.binary.f32(i32 35, float %4061, float %4062)  ; FMax(a,b)
  %4064 = fsub fast float %4043, %4063
  %4065 = call float @dx.op.unary.f32(i32 7, float %4064)  ; Saturate(value)
  %4066 = fmul fast float %4065, %4007
  br label %4067

; <label>:4067                                    ; preds = %4044, %4037
  %4068 = phi float [ %4066, %4044 ], [ 0.000000e+00, %4037 ]
  %4069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %4070 = extractvalue %dx.types.CBufRet.f32 %4069, 1
  %4071 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 0
  %4074 = extractvalue %dx.types.CBufRet.f32 %4072, 1
  %4075 = fsub fast float %3976, %4073
  %4076 = fsub fast float %3980, %4074
  %4077 = fcmp fast olt float %4075, 0.000000e+00
  %4078 = fcmp fast olt float %4076, 0.000000e+00
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 0
  %4081 = extractvalue %dx.types.CBufRet.f32 %4079, 1
  %4082 = extractvalue %dx.types.CBufRet.f32 %4079, 2
  %4083 = extractvalue %dx.types.CBufRet.f32 %4079, 3
  %4084 = select i1 %4077, float %4080, float %4082
  %4085 = select i1 %4078, float %4081, float %4083
  %4086 = fmul fast float %4084, %4075
  %4087 = fmul fast float %4085, %4076
  %4088 = call float @dx.op.unary.f32(i32 6, float %4086)  ; FAbs(value)
  %4089 = call float @dx.op.unary.f32(i32 6, float %4087)  ; FAbs(value)
  %4090 = call float @dx.op.binary.f32(i32 35, float %4088, float %4089)  ; FMax(a,b)
  %4091 = fsub fast float %4043, %4090
  %4092 = call float @dx.op.unary.f32(i32 7, float %4091)  ; Saturate(value)
  %4093 = call float @dx.op.binary.f32(i32 36, float %4092, float %4071)  ; FMin(a,b)
  %4094 = fmul fast float %4093, %4007
  %4095 = fsub fast float %4068, %4094
  %4096 = fsub fast float %4038, %4068
  %4097 = fsub fast float %4096, %4094
  %4098 = call float @dx.op.binary.f32(i32 35, float %4068, float %4038)  ; FMax(a,b)
  %4099 = call float @dx.op.binary.f32(i32 35, float %4094, float %4098)  ; FMax(a,b)
  %4100 = fcmp fast olt float %4099, 1.000000e+00
  br i1 %4100, label %4101, label %4499, !dx.controlflow.hints !85

; <label>:4101                                    ; preds = %4067
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 0
  %4104 = fcmp fast une float %4103, 0.000000e+00
  br i1 %4104, label %4105, label %4499, !dx.controlflow.hints !86

; <label>:4105                                    ; preds = %4101
  %4106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.f32 %4106, 0
  %4108 = extractvalue %dx.types.CBufRet.f32 %4106, 1
  %4109 = extractvalue %dx.types.CBufRet.f32 %4106, 2
  %4110 = extractvalue %dx.types.CBufRet.f32 %4106, 3
  %4111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %4112 = extractvalue %dx.types.CBufRet.f32 %4111, 0
  %4113 = extractvalue %dx.types.CBufRet.f32 %4111, 1
  %4114 = extractvalue %dx.types.CBufRet.f32 %4111, 2
  %4115 = extractvalue %dx.types.CBufRet.f32 %4111, 3
  %4116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %4117 = extractvalue %dx.types.CBufRet.f32 %4116, 0
  %4118 = extractvalue %dx.types.CBufRet.f32 %4116, 1
  %4119 = extractvalue %dx.types.CBufRet.f32 %4116, 2
  %4120 = extractvalue %dx.types.CBufRet.f32 %4116, 3
  %4121 = fmul fast float %4107, %3953
  %4122 = call float @dx.op.tertiary.f32(i32 46, float %3954, float %4108, float %4121)  ; FMad(a,b,c)
  %4123 = call float @dx.op.tertiary.f32(i32 46, float %3955, float %4109, float %4122)  ; FMad(a,b,c)
  %4124 = fadd fast float %4123, %4110
  %4125 = fmul fast float %4112, %3953
  %4126 = call float @dx.op.tertiary.f32(i32 46, float %3954, float %4113, float %4125)  ; FMad(a,b,c)
  %4127 = call float @dx.op.tertiary.f32(i32 46, float %3955, float %4114, float %4126)  ; FMad(a,b,c)
  %4128 = fadd fast float %4127, %4115
  %4129 = fmul fast float %4117, %3953
  %4130 = call float @dx.op.tertiary.f32(i32 46, float %3954, float %4118, float %4129)  ; FMad(a,b,c)
  %4131 = call float @dx.op.tertiary.f32(i32 46, float %3955, float %4119, float %4130)  ; FMad(a,b,c)
  %4132 = fadd fast float %4131, %4120
  %4133 = fcmp fast oge float %4124, 1.000000e+00
  %4134 = fcmp fast oge float %4128, 1.000000e+00
  %4135 = or i1 %4133, %4134
  %4136 = fcmp fast olt float %4124, 0.000000e+00
  %4137 = fcmp fast olt float %4128, 0.000000e+00
  %4138 = or i1 %4136, %4137
  %4139 = or i1 %4135, %4138
  br i1 %4139, label %4499, label %4140, !dx.controlflow.hints !87

; <label>:4140                                    ; preds = %4105
  %4141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %4142 = extractvalue %dx.types.CBufRet.f32 %4141, 0
  %4143 = extractvalue %dx.types.CBufRet.f32 %4141, 1
  %4144 = extractvalue %dx.types.CBufRet.f32 %4141, 2
  %4145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.i32 %4145, 2
  %4147 = uitofp i32 %4146 to float
  %4148 = extractvalue %dx.types.CBufRet.i32 %4145, 3
  %4149 = uitofp i32 %4148 to float
  %4150 = extractvalue %dx.types.CBufRet.f32 %4141, 3
  %4151 = fmul fast float %4150, 2.000000e+00
  %4152 = fsub fast float %4124, %4142
  %4153 = fsub fast float %4128, %4143
  %4154 = fmul fast float %4151, %4152
  %4155 = fmul fast float %4151, %4153
  %4156 = fdiv fast float 1.000000e+00, %3936
  %4157 = fmul fast float %4155, %4156
  %4158 = call float @dx.op.unary.f32(i32 6, float %4157)  ; FAbs(value)
  %4159 = fmul fast float %4144, %3955
  %4160 = fmul fast float %4159, %4151
  %4161 = call float @dx.op.unary.f32(i32 6, float %4160)  ; FAbs(value)
  %4162 = call float @dx.op.unary.f32(i32 6, float %4154)  ; FAbs(value)
  %4163 = call float @dx.op.binary.f32(i32 35, float %4161, float %4158)  ; FMax(a,b)
  %4164 = call float @dx.op.binary.f32(i32 35, float %4162, float %4163)  ; FMax(a,b)
  %4165 = fmul fast float %4164, 2.000000e+00
  %4166 = call float @dx.op.unary.f32(i32 23, float %4165)  ; Log(value)
  %4167 = call float @dx.op.binary.f32(i32 35, float %4166, float %4147)  ; FMax(a,b)
  %4168 = call float @dx.op.unary.f32(i32 22, float %4167)  ; Frc(value)
  %4169 = fadd fast float %4168, 0xBFEA666660000000
  %4170 = fmul fast float %4169, 8.000000e+00
  %4171 = call float @dx.op.unary.f32(i32 7, float %4170)  ; Saturate(value)
  %4172 = call float @dx.op.unary.f32(i32 27, float %4167)  ; Round_ni(value)
  %4173 = fadd fast float %4172, %4171
  %4174 = call float @dx.op.binary.f32(i32 36, float %4173, float %4149)  ; FMin(a,b)
  %4175 = call float @dx.op.unary.f32(i32 27, float %4174)  ; Round_ni(value)
  %4176 = fsub fast float -0.000000e+00, %4175
  %4177 = call float @dx.op.unary.f32(i32 21, float %4176)  ; Exp(value)
  %4178 = fmul fast float %4177, %4151
  %4179 = fmul fast float %4178, %4124
  %4180 = fmul fast float %4178, %4128
  %4181 = fmul fast float %4179, 2.500000e-01
  %4182 = fmul fast float %4180, 2.500000e-01
  %4183 = fadd fast float %4181, 5.000000e-01
  %4184 = fadd fast float %4182, 5.000000e-01
  %4185 = fsub fast float %4149, %4147
  %4186 = fptoui float %4185 to i32
  %4187 = add i32 %4186, 320
  %4188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %4187)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.f32 %4188, 0
  %4190 = extractvalue %dx.types.CBufRet.f32 %4188, 1
  %4191 = fcmp fast une float %4174, %4149
  %4192 = fsub fast float %4124, %4189
  %4193 = fsub fast float %4128, %4190
  %4194 = call float @dx.op.unary.f32(i32 6, float %4192)  ; FAbs(value)
  %4195 = call float @dx.op.unary.f32(i32 6, float %4193)  ; FAbs(value)
  %4196 = fmul fast float %4194, %4178
  %4197 = fmul fast float %4195, %4178
  %4198 = fcmp fast olt float %4196, 1.000000e+00
  %4199 = fcmp fast olt float %4197, 1.000000e+00
  %4200 = and i1 %4198, %4199
  %4201 = or i1 %4191, %4200
  br i1 %4201, label %4202, label %4499, !dx.controlflow.hints !88

; <label>:4202                                    ; preds = %4140
  %4203 = fmul fast float %4180, 5.000000e-01
  %4204 = fmul fast float %4179, 5.000000e-01
  %4205 = fadd fast float %4203, 5.000000e-01
  %4206 = fadd fast float %4204, 5.000000e-01
  %4207 = sitofp i32 %4146 to float
  %4208 = fsub fast float %4174, %4207
  %4209 = call float @dx.op.unary.f32(i32 27, float %4208)  ; Round_ni(value)
  %4210 = call float @dx.op.unary.f32(i32 22, float %4174)  ; Frc(value)
  %4211 = call float @dx.op.unary.f32(i32 22, float %4206)  ; Frc(value)
  %4212 = call float @dx.op.unary.f32(i32 22, float %4205)  ; Frc(value)
  %4213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %40, float %4211, float %4212, float %4209, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 0
  %4215 = extractvalue %dx.types.ResRet.f32 %4213, 1
  %4216 = extractvalue %dx.types.ResRet.f32 %4213, 2
  %4217 = extractvalue %dx.types.ResRet.f32 %4213, 3
  %4218 = fcmp fast ogt float %4210, 0.000000e+00
  br i1 %4218, label %4219, label %4240, !dx.controlflow.hints !89

; <label>:4219                                    ; preds = %4202
  %4220 = fadd fast float %4209, 1.000000e+00
  %4221 = call float @dx.op.unary.f32(i32 22, float %4183)  ; Frc(value)
  %4222 = call float @dx.op.unary.f32(i32 22, float %4184)  ; Frc(value)
  %4223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %40, float %4221, float %4222, float %4220, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4225 = extractvalue %dx.types.ResRet.f32 %4223, 1
  %4226 = extractvalue %dx.types.ResRet.f32 %4223, 2
  %4227 = extractvalue %dx.types.ResRet.f32 %4223, 3
  %4228 = fsub fast float %4224, %4214
  %4229 = fsub fast float %4225, %4215
  %4230 = fsub fast float %4226, %4216
  %4231 = fsub fast float %4227, %4217
  %4232 = fmul fast float %4228, %4210
  %4233 = fmul fast float %4229, %4210
  %4234 = fmul fast float %4230, %4210
  %4235 = fmul fast float %4231, %4210
  %4236 = fadd fast float %4232, %4214
  %4237 = fadd fast float %4233, %4215
  %4238 = fadd fast float %4234, %4216
  %4239 = fadd fast float %4235, %4217
  br label %4240

; <label>:4240                                    ; preds = %4219, %4202
  %4241 = phi float [ %4236, %4219 ], [ %4214, %4202 ]
  %4242 = phi float [ %4237, %4219 ], [ %4215, %4202 ]
  %4243 = phi float [ %4238, %4219 ], [ %4216, %4202 ]
  %4244 = phi float [ %4239, %4219 ], [ %4217, %4202 ]
  %4245 = fadd fast float %4241, -5.000000e-01
  %4246 = fadd fast float %4243, -5.000000e-01
  %4247 = fmul fast float %4245, 0xBFD5555560000000
  %4248 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %4246, float %4247)  ; FMad(a,b,c)
  %4249 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %4242, float 0.000000e+00)  ; FMad(a,b,c)
  %4250 = fadd fast float %4249, %4244
  %4251 = fmul fast float %4245, -7.500000e-01
  %4252 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %4246, float %4251)  ; FMad(a,b,c)
  %4253 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %4242, float 0.000000e+00)  ; FMad(a,b,c)
  %4254 = fadd fast float %4253, %4244
  %4255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.f32 %4255, 0
  %4257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %4258 = extractvalue %dx.types.CBufRet.f32 %4257, 0
  %4259 = extractvalue %dx.types.CBufRet.f32 %4257, 1
  %4260 = extractvalue %dx.types.CBufRet.f32 %4257, 2
  %4261 = extractvalue %dx.types.CBufRet.f32 %4257, 3
  %4262 = fsub fast float %4258, %4248
  %4263 = fsub fast float %4259, %4250
  %4264 = fsub fast float %4260, %4252
  %4265 = fsub fast float %4261, %4254
  %4266 = fmul fast float %4262, %4256
  %4267 = fmul fast float %4263, %4256
  %4268 = fmul fast float %4264, %4256
  %4269 = fmul fast float %4265, %4256
  %4270 = fadd fast float %4266, %4248
  %4271 = fadd fast float %4267, %4250
  %4272 = fadd fast float %4268, %4252
  %4273 = fadd fast float %4269, %4254
  %4274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.i32 %4274, 0
  %4276 = and i32 %4275, 536870911
  %4277 = uitofp i32 %4276 to float
  %4278 = fmul fast float %4277, %4124
  %4279 = fmul fast float %4277, %4128
  %4280 = fptoui float %4278 to i32
  %4281 = fptoui float %4279 to i32
  %4282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4283 = extractvalue %dx.types.ResRet.i32 %4282, 0
  %4284 = and i32 %4283, 31
  %4285 = lshr i32 %4280, %4284
  %4286 = lshr i32 %4281, %4284
  %4287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4288 = extractvalue %dx.types.ResRet.i32 %4287, 0
  %4289 = and i32 %4288, 31
  %4290 = shl i32 1, %4289
  %4291 = call i32 @dx.op.binary.i32(i32 40, i32 %4290, i32 4)  ; UMin(a,b)
  %4292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %4293 = extractvalue %dx.types.ResRet.i32 %4292, 0
  %4294 = extractvalue %dx.types.ResRet.i32 %4292, 1
  %4295 = icmp eq i32 %4291, 0
  br i1 %4295, label %4337, label %4296

; <label>:4296                                    ; preds = %4240
  br label %4297

; <label>:4297                                    ; preds = %4325, %4296
  %4298 = phi i32 [ %4328, %4325 ], [ 0, %4296 ]
  %4299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4300 = extractvalue %dx.types.ResRet.i32 %4299, 0
  %4301 = lshr i32 %4300, 16
  %4302 = and i32 %4301, 31
  %4303 = shl i32 %4286, %4302
  %4304 = add i32 %4303, %4285
  %4305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %4306 = extractvalue %dx.types.ResRet.i32 %4305, 0
  %4307 = and i32 %4306, 31
  %4308 = shl i32 %4304, %4307
  %4309 = add i32 %4308, %4298
  %4310 = shl i32 %4309, 2
  %4311 = add i32 %4310, 32
  %4312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4311, i32 undef)  ; BufferLoad(srv,index,wot)
  %4313 = extractvalue %dx.types.ResRet.i32 %4312, 0
  %4314 = icmp slt i32 %4313, 0
  %4315 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %4298
  %4316 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 %4298
  %4317 = bitcast float* %4315 to i32*
  %4318 = bitcast float* %4316 to i32*
  br i1 %4314, label %4319, label %4325

; <label>:4319                                    ; preds = %4297
  %4320 = and i32 %4313, 1073741823
  %4321 = add nuw nsw i32 %4320, 20
  %4322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4321, i32 undef)  ; BufferLoad(srv,index,wot)
  %4323 = extractvalue %dx.types.ResRet.i32 %4322, 0
  %4324 = extractvalue %dx.types.ResRet.i32 %4322, 1
  br label %4325

; <label>:4325                                    ; preds = %4319, %4297
  %4326 = phi i32 [ %4323, %4319 ], [ %4293, %4297 ]
  %4327 = phi i32 [ %4324, %4319 ], [ %4294, %4297 ]
  store i32 %4326, i32* %4317, align 4
  store i32 %4327, i32* %4318, align 4
  %4328 = add nuw i32 %4298, 1
  %4329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.i32 %4329, 2
  %4331 = icmp eq i32 %4330, 0
  %4332 = icmp ugt i32 %4313, -1073741825
  %4333 = and i1 %4332, %4331
  %4334 = icmp ult i32 %4328, %4291
  %4335 = and i1 %4333, %4334
  br i1 %4335, label %4297, label %4336

; <label>:4336                                    ; preds = %4325
  br label %4337

; <label>:4337                                    ; preds = %4336, %4240
  %4338 = phi i32 [ 0, %4240 ], [ %4328, %4336 ]
  %4339 = extractvalue %dx.types.CBufRet.f32 %4102, 2
  %4340 = fptoui float %4339 to i32
  %4341 = icmp eq i32 %4340, 0
  br i1 %4341, label %4393, label %4342

; <label>:4342                                    ; preds = %4337
  br label %4343

; <label>:4343                                    ; preds = %4388, %4342
  %4344 = phi i32 [ %4389, %4388 ], [ %4338, %4342 ]
  %4345 = phi i32 [ %4390, %4388 ], [ 0, %4342 ]
  %4346 = lshr i32 %4345, 2
  %4347 = and i32 %4345, 3
  %4348 = add nuw nsw i32 %4346, 83
  %4349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 %4348)  ; CBufferLoadLegacy(handle,regIndex)
  %4350 = extractvalue %dx.types.CBufRet.i32 %4349, 0
  %4351 = extractvalue %dx.types.CBufRet.i32 %4349, 1
  %4352 = extractvalue %dx.types.CBufRet.i32 %4349, 2
  %4353 = extractvalue %dx.types.CBufRet.i32 %4349, 3
  %4354 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 0
  store i32 %4350, i32* %4354, align 4
  %4355 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 1
  store i32 %4351, i32* %4355, align 4
  %4356 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 2
  store i32 %4352, i32* %4356, align 4
  %4357 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 3
  store i32 %4353, i32* %4357, align 4
  %4358 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 %4347
  %4359 = load i32, i32* %4358, align 4, !tbaa !90, !noalias !94
  %4360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4361 = extractvalue %dx.types.ResRet.i32 %4360, 0
  %4362 = lshr i32 %4361, 16
  %4363 = and i32 %4362, 31
  %4364 = shl i32 %4286, %4363
  %4365 = add i32 %4364, %4285
  %4366 = shl i32 %4365, 2
  %4367 = add i32 %4366, %4359
  %4368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4367, i32 undef)  ; BufferLoad(srv,index,wot)
  %4369 = extractvalue %dx.types.ResRet.i32 %4368, 0
  %4370 = icmp eq i32 %4369, 0
  br i1 %4370, label %4388, label %4371

; <label>:4371                                    ; preds = %4343
  %4372 = icmp slt i32 %4369, 0
  %4373 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %4344
  %4374 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 %4344
  %4375 = bitcast float* %4373 to i32*
  %4376 = bitcast float* %4374 to i32*
  br i1 %4372, label %4377, label %4384

; <label>:4377                                    ; preds = %4371
  %4378 = and i32 %4369, 1073741823
  %4379 = add i32 %4359, 20
  %4380 = add i32 %4379, %4378
  %4381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4380, i32 undef)  ; BufferLoad(srv,index,wot)
  %4382 = extractvalue %dx.types.ResRet.i32 %4381, 0
  %4383 = extractvalue %dx.types.ResRet.i32 %4381, 1
  br label %4384

; <label>:4384                                    ; preds = %4377, %4371
  %4385 = phi i32 [ %4382, %4377 ], [ %4293, %4371 ]
  %4386 = phi i32 [ %4383, %4377 ], [ %4294, %4371 ]
  store i32 %4385, i32* %4375, align 4
  store i32 %4386, i32* %4376, align 4
  %4387 = add i32 %4344, 1
  br label %4388

; <label>:4388                                    ; preds = %4384, %4343
  %4389 = phi i32 [ %4344, %4343 ], [ %4387, %4384 ]
  %4390 = add nuw i32 %4345, 1
  %4391 = icmp eq i32 %4390, %4340
  br i1 %4391, label %4392, label %4343

; <label>:4392                                    ; preds = %4388
  br label %4393

; <label>:4393                                    ; preds = %4392, %4337
  %4394 = phi i32 [ %4338, %4337 ], [ %4389, %4392 ]
  %4395 = icmp eq i32 %4394, 1
  %4396 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 0
  %4397 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 0
  br i1 %4395, label %4398, label %4401

; <label>:4398                                    ; preds = %4393
  %4399 = load float, float* %4396, align 4
  %4400 = load float, float* %4397, align 4
  br label %4428

; <label>:4401                                    ; preds = %4393
  %4402 = load float, float* %4396, align 4
  %4403 = load float, float* %4397, align 4
  %4404 = fdiv fast float 1.000000e+00, %4403
  %4405 = fsub fast float %4402, %4404
  %4406 = icmp ugt i32 %4394, 1
  br i1 %4406, label %4407, label %4423

; <label>:4407                                    ; preds = %4401
  br label %4408

; <label>:4408                                    ; preds = %4408, %4407
  %4409 = phi float [ %4418, %4408 ], [ %4405, %4407 ]
  %4410 = phi float [ %4419, %4408 ], [ %4402, %4407 ]
  %4411 = phi i32 [ %4420, %4408 ], [ 1, %4407 ]
  %4412 = getelementptr [12 x float], [12 x float]* %74, i32 0, i32 %4411
  %4413 = load float, float* %4412, align 4
  %4414 = getelementptr [12 x float], [12 x float]* %75, i32 0, i32 %4411
  %4415 = load float, float* %4414, align 4
  %4416 = fdiv fast float 1.000000e+00, %4415
  %4417 = fsub fast float %4413, %4416
  %4418 = call float @dx.op.binary.f32(i32 36, float %4409, float %4417)  ; FMin(a,b)
  %4419 = call float @dx.op.binary.f32(i32 35, float %4410, float %4413)  ; FMax(a,b)
  %4420 = add nuw i32 %4411, 1
  %4421 = icmp eq i32 %4420, %4394
  br i1 %4421, label %4422, label %4408

; <label>:4422                                    ; preds = %4408
  br label %4423

; <label>:4423                                    ; preds = %4422, %4401
  %4424 = phi float [ %4405, %4401 ], [ %4418, %4422 ]
  %4425 = phi float [ %4402, %4401 ], [ %4419, %4422 ]
  %4426 = fsub fast float %4425, %4424
  %4427 = fdiv fast float 1.000000e+00, %4426
  br label %4428

; <label>:4428                                    ; preds = %4423, %4398
  %4429 = phi float [ %4399, %4398 ], [ %4425, %4423 ]
  %4430 = phi float [ %4400, %4398 ], [ %4427, %4423 ]
  %4431 = fadd fast float %4132, %4429
  %4432 = fmul fast float %4431, %4430
  %4433 = call float @dx.op.unary.f32(i32 7, float %4432)  ; Saturate(value)
  %4434 = fmul fast float %4433, 2.000000e+00
  %4435 = fsub fast float 1.000000e+00, %4434
  %4436 = fmul fast float %4270, %4270
  %4437 = fsub fast float %4271, %4436
  %4438 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4437)  ; FMax(a,b)
  %4439 = fdiv fast float 1.000000e+00, %4438
  %4440 = fmul fast float %4271, %4270
  %4441 = fsub fast float %4272, %4440
  %4442 = fsub fast float %4435, %4270
  %4443 = fmul fast float %4435, %4435
  %4444 = fsub fast float %4443, %4271
  %4445 = fmul fast float %4439, %4441
  %4446 = fmul fast float %4445, %4442
  %4447 = fsub fast float %4444, %4446
  %4448 = fmul fast float %4271, %4271
  %4449 = fsub fast float %4273, %4448
  %4450 = fmul fast float %4441, %4441
  %4451 = fmul fast float %4450, %4439
  %4452 = fsub fast float %4449, %4451
  %4453 = fdiv fast float %4447, %4452
  %4454 = fmul fast float %4453, %4441
  %4455 = fsub fast float %4442, %4454
  %4456 = fmul fast float %4455, %4439
  %4457 = fmul fast float %4456, %4270
  %4458 = fsub fast float 1.000000e+00, %4457
  %4459 = fmul fast float %4453, %4271
  %4460 = fsub fast float %4458, %4459
  %4461 = fmul fast float %4456, %4456
  %4462 = fmul fast float %4453, 4.000000e+00
  %4463 = fmul fast float %4462, %4460
  %4464 = fsub fast float %4461, %4463
  %4465 = call float @dx.op.unary.f32(i32 24, float %4464)  ; Sqrt(value)
  %4466 = fcmp fast oge float %4456, 0.000000e+00
  %4467 = fsub fast float -0.000000e+00, %4465
  %4468 = select i1 %4466, float %4467, float %4465
  %4469 = fsub fast float %4468, %4456
  %4470 = fdiv fast float %4469, %4453
  %4471 = fdiv fast float %4460, %4469
  %4472 = fmul fast float %4470, 5.000000e-01
  %4473 = fmul fast float %4471, 2.000000e+00
  %4474 = select i1 %4466, float %4472, float %4473
  %4475 = select i1 %4466, float %4473, float %4472
  %4476 = call float @dx.op.binary.f32(i32 35, float %4474, float %4475)  ; FMax(a,b)
  %4477 = call float @dx.op.binary.f32(i32 36, float %4474, float %4475)  ; FMin(a,b)
  %4478 = fcmp fast ogt float %4435, %4476
  %4479 = fsub fast float %4435, %4477
  %4480 = fsub fast float %4435, %4476
  %4481 = fsub fast float %4476, %4477
  %4482 = select i1 %4478, float %4480, float %4481
  %4483 = fmul float %4479, %4482
  %4484 = select i1 %4478, float %4477, float %4435
  %4485 = fcmp fast ogt float %4435, %4477
  %4486 = fmul fast float %4484, %4476
  %4487 = fadd fast float %4484, %4476
  %4488 = fmul fast float %4487, %4270
  %4489 = fadd fast float %4486, %4271
  %4490 = fsub fast float %4489, %4488
  %4491 = fdiv fast float %4490, %4483
  %4492 = select i1 %4485, float %4491, float 0.000000e+00
  %4493 = fsub fast float 1.000000e+00, %4492
  %4494 = select i1 %4478, float %4493, float %4492
  %4495 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4496 = extractvalue %dx.types.CBufRet.f32 %4255, 3
  %4497 = fmul fast float %4496, %4495
  %4498 = fsub fast float 1.000000e+00, %4497
  br label %4499

; <label>:4499                                    ; preds = %4428, %4140, %4105, %4101, %4067
  %4500 = phi float [ 1.000000e+00, %4067 ], [ %4498, %4428 ], [ 1.000000e+00, %4105 ], [ 1.000000e+00, %4140 ], [ 1.000000e+00, %4101 ]
  %4501 = fcmp fast ogt float %4097, 0.000000e+00
  br i1 %4501, label %4502, label %4664, !dx.controlflow.hints !103

; <label>:4502                                    ; preds = %4499
  %4503 = fadd fast float %4010, %3984
  %4504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4505 = extractvalue %dx.types.CBufRet.f32 %4504, 2
  %4506 = extractvalue %dx.types.CBufRet.f32 %4504, 3
  %4507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4508 = extractvalue %dx.types.CBufRet.f32 %4507, 2
  %4509 = call float @dx.op.binary.f32(i32 35, float %4503, float 0.000000e+00)  ; FMax(a,b)
  %4510 = fadd fast float %4509, 0x3F10000000000000
  %4511 = fcmp fast oeq float %4508, 0.000000e+00
  br i1 %4511, label %4512, label %4579

; <label>:4512                                    ; preds = %4502
  %4513 = extractvalue %dx.types.CBufRet.f32 %4504, 1
  %4514 = extractvalue %dx.types.CBufRet.f32 %4504, 0
  %4515 = fmul fast float %4514, %3999
  %4516 = fmul fast float %4513, %4000
  %4517 = fadd fast float %4515, 5.000000e-01
  %4518 = call float @dx.op.unary.f32(i32 27, float %4517)  ; Round_ni(value)
  %4519 = fadd fast float %4516, 5.000000e-01
  %4520 = call float @dx.op.unary.f32(i32 27, float %4519)  ; Round_ni(value)
  %4521 = fsub fast float %4517, %4518
  %4522 = fsub fast float %4519, %4520
  %4523 = fadd fast float %4518, -5.000000e-01
  %4524 = fadd fast float %4520, -5.000000e-01
  %4525 = fmul fast float %4521, 2.000000e+00
  %4526 = fsub fast float 3.000000e+00, %4525
  %4527 = fadd fast float %4525, 1.000000e+00
  %4528 = fsub fast float 2.000000e+00, %4521
  %4529 = bitcast float %4526 to i32
  %4530 = sub nsw i32 2129859010, %4529
  %4531 = bitcast i32 %4530 to float
  %4532 = fmul fast float %4531, %4528
  %4533 = fadd fast float %4532, -1.000000e+00
  %4534 = bitcast float %4527 to i32
  %4535 = sub nsw i32 2129859010, %4534
  %4536 = bitcast i32 %4535 to float
  %4537 = fmul fast float %4536, %4521
  %4538 = fadd fast float %4537, 1.000000e+00
  %4539 = fmul fast float %4522, 2.000000e+00
  %4540 = fsub fast float 3.000000e+00, %4539
  %4541 = fadd fast float %4539, 1.000000e+00
  %4542 = fsub fast float 2.000000e+00, %4522
  %4543 = bitcast float %4540 to i32
  %4544 = sub nsw i32 2129859010, %4543
  %4545 = bitcast i32 %4544 to float
  %4546 = fmul fast float %4545, %4542
  %4547 = fadd fast float %4546, -1.000000e+00
  %4548 = bitcast float %4541 to i32
  %4549 = sub nsw i32 2129859010, %4548
  %4550 = bitcast i32 %4549 to float
  %4551 = fmul fast float %4550, %4522
  %4552 = fadd fast float %4551, 1.000000e+00
  %4553 = fadd fast float %4533, %4523
  %4554 = fmul fast float %4553, %4505
  %4555 = fadd fast float %4547, %4524
  %4556 = fmul fast float %4555, %4506
  %4557 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %43, float %4554, float %4556, float undef, float undef, i32 0, i32 0, i32 undef, float %4510)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4559 = fmul fast float %4558, %4526
  %4560 = fadd fast float %4538, %4523
  %4561 = fmul fast float %4560, %4505
  %4562 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %43, float %4561, float %4556, float undef, float undef, i32 0, i32 0, i32 undef, float %4510)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4563 = extractvalue %dx.types.ResRet.f32 %4562, 0
  %4564 = fmul fast float %4563, %4527
  %4565 = fadd fast float %4552, %4524
  %4566 = fmul fast float %4565, %4506
  %4567 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %43, float %4554, float %4566, float undef, float undef, i32 0, i32 0, i32 undef, float %4510)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4569 = fmul fast float %4568, %4526
  %4570 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %43, float %4561, float %4566, float undef, float undef, i32 0, i32 0, i32 undef, float %4510)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4571 = extractvalue %dx.types.ResRet.f32 %4570, 0
  %4572 = fmul fast float %4571, %4527
  %4573 = fadd fast float %4572, %4569
  %4574 = fmul fast float %4573, %4541
  %4575 = fadd fast float %4564, %4559
  %4576 = fmul fast float %4575, %4540
  %4577 = fadd fast float %4576, %4574
  %4578 = fmul fast float %4577, 6.250000e-02
  br label %4664

; <label>:4579                                    ; preds = %4502
  %4580 = fmul fast float %212, 0x401921FB60000000
  %4581 = call float @dx.op.unary.f32(i32 13, float %4580)  ; Sin(value)
  %4582 = call float @dx.op.unary.f32(i32 12, float %4580)  ; Cos(value)
  %4583 = fsub fast float -0.000000e+00, %4581
  br label %4584

; <label>:4584                                    ; preds = %4633, %4579
  %4585 = phi float [ 0.000000e+00, %4579 ], [ %4628, %4633 ]
  %4586 = phi float [ 0.000000e+00, %4579 ], [ %4630, %4633 ]
  %4587 = phi i32 [ 0, %4579 ], [ %4634, %4633 ]
  %4588 = mul i32 %4587, 2
  %4589 = add i32 0, %4588
  %4590 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4589
  %4591 = load float, float* %4590, align 4
  %4592 = mul i32 %4587, 2
  %4593 = add i32 1, %4592
  %4594 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4593
  %4595 = load float, float* %4594, align 4
  %4596 = fmul fast float %4591, %4582
  %4597 = call float @dx.op.tertiary.f32(i32 46, float %4595, float %4583, float %4596)  ; FMad(a,b,c)
  %4598 = fmul fast float %4591, %4581
  %4599 = call float @dx.op.tertiary.f32(i32 46, float %4595, float %4582, float %4598)  ; FMad(a,b,c)
  %4600 = fmul fast float %4597, %4508
  %4601 = fmul fast float %4599, %4508
  %4602 = fadd fast float %4600, %3999
  %4603 = fadd fast float %4601, %4000
  %4604 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %42, float %4602, float %4603, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4605 = extractvalue %dx.types.ResRet.f32 %4604, 0
  %4606 = extractvalue %dx.types.ResRet.f32 %4604, 1
  %4607 = extractvalue %dx.types.ResRet.f32 %4604, 2
  %4608 = extractvalue %dx.types.ResRet.f32 %4604, 3
  %4609 = getelementptr inbounds [4 x float], [4 x float]* %78, i32 0, i32 0
  store float %4605, float* %4609, align 4
  %4610 = getelementptr inbounds [4 x float], [4 x float]* %78, i32 0, i32 1
  store float %4606, float* %4610, align 4
  %4611 = getelementptr inbounds [4 x float], [4 x float]* %78, i32 0, i32 2
  store float %4607, float* %4611, align 4
  %4612 = getelementptr inbounds [4 x float], [4 x float]* %78, i32 0, i32 3
  store float %4608, float* %4612, align 4
  %4613 = fsub fast float %4605, %4510
  %4614 = fcmp fast olt float %4613, 0.000000e+00
  %4615 = select i1 %4614, float 0.000000e+00, float 1.000000e+00
  %4616 = fadd fast float %4615, %4585
  %4617 = fmul fast float %4615, %4613
  %4618 = fadd fast float %4617, %4586
  br label %4619

; <label>:4619                                    ; preds = %4619, %4584
  %4620 = phi i32 [ 1, %4584 ], [ %4631, %4619 ]
  %4621 = phi float [ %4618, %4584 ], [ %4630, %4619 ]
  %4622 = phi float [ %4616, %4584 ], [ %4628, %4619 ]
  %4623 = getelementptr [4 x float], [4 x float]* %78, i32 0, i32 %4620
  %4624 = load float, float* %4623, align 4, !tbaa !104, !noalias !94
  %4625 = fsub fast float %4624, %4510
  %4626 = fcmp fast olt float %4625, 0.000000e+00
  %4627 = select i1 %4626, float 0.000000e+00, float 1.000000e+00
  %4628 = fadd fast float %4627, %4622
  %4629 = fmul fast float %4627, %4625
  %4630 = fadd fast float %4629, %4621
  %4631 = add nuw nsw i32 %4620, 1
  %4632 = icmp eq i32 %4631, 4
  br i1 %4632, label %4633, label %4619, !llvm.loop !106

; <label>:4633                                    ; preds = %4619
  %4634 = add nuw nsw i32 %4587, 1
  %4635 = icmp eq i32 %4634, 8
  br i1 %4635, label %4636, label %4584, !llvm.loop !107

; <label>:4636                                    ; preds = %4633
  %4637 = fdiv fast float 1.000000e+00, %4628
  %4638 = fmul fast float %4637, %4630
  %4639 = fdiv fast float 1.000000e+00, %4510
  %4640 = fmul fast float %4638, %4639
  %4641 = call float @dx.op.unary.f32(i32 7, float %4640)  ; Saturate(value)
  %4642 = call float @dx.op.binary.f32(i32 35, float %4641, float 0.000000e+00)  ; FMax(a,b)
  %4643 = fmul fast float %4628, 3.125000e-02
  %4644 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4645 = fmul fast float %4644, 2.000000e+00
  %4646 = fadd fast float %4645, -1.000000e+00
  %4647 = fcmp fast ogt float %4646, 0.000000e+00
  %4648 = fcmp fast olt float %4646, 0.000000e+00
  %4649 = zext i1 %4647 to i32
  %4650 = zext i1 %4648 to i32
  %4651 = sub nsw i32 %4649, %4650
  %4652 = sitofp i32 %4651 to float
  %4653 = fmul fast float %4652, %4646
  %4654 = fsub fast float 1.000000e+00, %4653
  %4655 = fmul fast float %4654, %4654
  %4656 = fmul fast float %4655, %4654
  %4657 = fsub fast float %4654, %4656
  %4658 = fmul fast float %4657, %4642
  %4659 = fsub fast float 1.000000e+00, %4656
  %4660 = fsub fast float %4659, %4658
  %4661 = fmul fast float %4652, 5.000000e-01
  %4662 = fmul fast float %4661, %4660
  %4663 = fsub fast float 5.000000e-01, %4662
  br label %4664

; <label>:4664                                    ; preds = %4636, %4512, %4499
  %4665 = phi float [ 1.000000e+00, %4499 ], [ %4578, %4512 ], [ %4663, %4636 ]
  %4666 = fcmp fast ogt float %4095, 0.000000e+00
  br i1 %4666, label %4667, label %4831, !dx.controlflow.hints !108

; <label>:4667                                    ; preds = %4664
  %4668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4669 = extractvalue %dx.types.CBufRet.f32 %4668, 1
  %4670 = fadd fast float %4669, %3984
  %4671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4672 = extractvalue %dx.types.CBufRet.f32 %4671, 2
  %4673 = extractvalue %dx.types.CBufRet.f32 %4671, 3
  %4674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4675 = extractvalue %dx.types.CBufRet.f32 %4674, 1
  %4676 = call float @dx.op.binary.f32(i32 35, float %4670, float 0.000000e+00)  ; FMax(a,b)
  %4677 = fadd fast float %4676, 0x3F10000000000000
  %4678 = fcmp fast oeq float %4675, 0.000000e+00
  br i1 %4678, label %4679, label %4746

; <label>:4679                                    ; preds = %4667
  %4680 = extractvalue %dx.types.CBufRet.f32 %4671, 1
  %4681 = extractvalue %dx.types.CBufRet.f32 %4671, 0
  %4682 = fmul fast float %4681, %3991
  %4683 = fmul fast float %4680, %3992
  %4684 = fadd fast float %4682, 5.000000e-01
  %4685 = call float @dx.op.unary.f32(i32 27, float %4684)  ; Round_ni(value)
  %4686 = fadd fast float %4683, 5.000000e-01
  %4687 = call float @dx.op.unary.f32(i32 27, float %4686)  ; Round_ni(value)
  %4688 = fsub fast float %4684, %4685
  %4689 = fsub fast float %4686, %4687
  %4690 = fadd fast float %4685, -5.000000e-01
  %4691 = fadd fast float %4687, -5.000000e-01
  %4692 = fmul fast float %4688, 2.000000e+00
  %4693 = fsub fast float 3.000000e+00, %4692
  %4694 = fadd fast float %4692, 1.000000e+00
  %4695 = fsub fast float 2.000000e+00, %4688
  %4696 = bitcast float %4693 to i32
  %4697 = sub nsw i32 2129859010, %4696
  %4698 = bitcast i32 %4697 to float
  %4699 = fmul fast float %4698, %4695
  %4700 = fadd fast float %4699, -1.000000e+00
  %4701 = bitcast float %4694 to i32
  %4702 = sub nsw i32 2129859010, %4701
  %4703 = bitcast i32 %4702 to float
  %4704 = fmul fast float %4703, %4688
  %4705 = fadd fast float %4704, 1.000000e+00
  %4706 = fmul fast float %4689, 2.000000e+00
  %4707 = fsub fast float 3.000000e+00, %4706
  %4708 = fadd fast float %4706, 1.000000e+00
  %4709 = fsub fast float 2.000000e+00, %4689
  %4710 = bitcast float %4707 to i32
  %4711 = sub nsw i32 2129859010, %4710
  %4712 = bitcast i32 %4711 to float
  %4713 = fmul fast float %4712, %4709
  %4714 = fadd fast float %4713, -1.000000e+00
  %4715 = bitcast float %4708 to i32
  %4716 = sub nsw i32 2129859010, %4715
  %4717 = bitcast i32 %4716 to float
  %4718 = fmul fast float %4717, %4689
  %4719 = fadd fast float %4718, 1.000000e+00
  %4720 = fadd fast float %4700, %4690
  %4721 = fmul fast float %4720, %4672
  %4722 = fadd fast float %4714, %4691
  %4723 = fmul fast float %4722, %4673
  %4724 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %43, float %4721, float %4723, float undef, float undef, i32 0, i32 0, i32 undef, float %4677)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4725 = extractvalue %dx.types.ResRet.f32 %4724, 0
  %4726 = fmul fast float %4725, %4693
  %4727 = fadd fast float %4705, %4690
  %4728 = fmul fast float %4727, %4672
  %4729 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %43, float %4728, float %4723, float undef, float undef, i32 0, i32 0, i32 undef, float %4677)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4730 = extractvalue %dx.types.ResRet.f32 %4729, 0
  %4731 = fmul fast float %4730, %4694
  %4732 = fadd fast float %4719, %4691
  %4733 = fmul fast float %4732, %4673
  %4734 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %43, float %4721, float %4733, float undef, float undef, i32 0, i32 0, i32 undef, float %4677)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4735 = extractvalue %dx.types.ResRet.f32 %4734, 0
  %4736 = fmul fast float %4735, %4693
  %4737 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %43, float %4728, float %4733, float undef, float undef, i32 0, i32 0, i32 undef, float %4677)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4738 = extractvalue %dx.types.ResRet.f32 %4737, 0
  %4739 = fmul fast float %4738, %4694
  %4740 = fadd fast float %4739, %4736
  %4741 = fmul fast float %4740, %4708
  %4742 = fadd fast float %4731, %4726
  %4743 = fmul fast float %4742, %4707
  %4744 = fadd fast float %4743, %4741
  %4745 = fmul fast float %4744, 6.250000e-02
  br label %4831

; <label>:4746                                    ; preds = %4667
  %4747 = fmul fast float %212, 0x401921FB60000000
  %4748 = call float @dx.op.unary.f32(i32 13, float %4747)  ; Sin(value)
  %4749 = call float @dx.op.unary.f32(i32 12, float %4747)  ; Cos(value)
  %4750 = fsub fast float -0.000000e+00, %4748
  br label %4751

; <label>:4751                                    ; preds = %4800, %4746
  %4752 = phi float [ 0.000000e+00, %4746 ], [ %4795, %4800 ]
  %4753 = phi float [ 0.000000e+00, %4746 ], [ %4797, %4800 ]
  %4754 = phi i32 [ 0, %4746 ], [ %4801, %4800 ]
  %4755 = mul i32 %4754, 2
  %4756 = add i32 0, %4755
  %4757 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4756
  %4758 = load float, float* %4757, align 4
  %4759 = mul i32 %4754, 2
  %4760 = add i32 1, %4759
  %4761 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4760
  %4762 = load float, float* %4761, align 4
  %4763 = fmul fast float %4758, %4749
  %4764 = call float @dx.op.tertiary.f32(i32 46, float %4762, float %4750, float %4763)  ; FMad(a,b,c)
  %4765 = fmul fast float %4758, %4748
  %4766 = call float @dx.op.tertiary.f32(i32 46, float %4762, float %4749, float %4765)  ; FMad(a,b,c)
  %4767 = fmul fast float %4764, %4675
  %4768 = fmul fast float %4766, %4675
  %4769 = fadd fast float %4767, %3991
  %4770 = fadd fast float %4768, %3992
  %4771 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %42, float %4769, float %4770, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4772 = extractvalue %dx.types.ResRet.f32 %4771, 0
  %4773 = extractvalue %dx.types.ResRet.f32 %4771, 1
  %4774 = extractvalue %dx.types.ResRet.f32 %4771, 2
  %4775 = extractvalue %dx.types.ResRet.f32 %4771, 3
  %4776 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 0
  store float %4772, float* %4776, align 4
  %4777 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 1
  store float %4773, float* %4777, align 4
  %4778 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 2
  store float %4774, float* %4778, align 4
  %4779 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 3
  store float %4775, float* %4779, align 4
  %4780 = fsub fast float %4772, %4677
  %4781 = fcmp fast olt float %4780, 0.000000e+00
  %4782 = select i1 %4781, float 0.000000e+00, float 1.000000e+00
  %4783 = fadd fast float %4782, %4752
  %4784 = fmul fast float %4782, %4780
  %4785 = fadd fast float %4784, %4753
  br label %4786

; <label>:4786                                    ; preds = %4786, %4751
  %4787 = phi i32 [ 1, %4751 ], [ %4798, %4786 ]
  %4788 = phi float [ %4785, %4751 ], [ %4797, %4786 ]
  %4789 = phi float [ %4783, %4751 ], [ %4795, %4786 ]
  %4790 = getelementptr [4 x float], [4 x float]* %77, i32 0, i32 %4787
  %4791 = load float, float* %4790, align 4, !tbaa !104, !noalias !94
  %4792 = fsub fast float %4791, %4677
  %4793 = fcmp fast olt float %4792, 0.000000e+00
  %4794 = select i1 %4793, float 0.000000e+00, float 1.000000e+00
  %4795 = fadd fast float %4794, %4789
  %4796 = fmul fast float %4794, %4792
  %4797 = fadd fast float %4796, %4788
  %4798 = add nuw nsw i32 %4787, 1
  %4799 = icmp eq i32 %4798, 4
  br i1 %4799, label %4800, label %4786, !llvm.loop !106

; <label>:4800                                    ; preds = %4786
  %4801 = add nuw nsw i32 %4754, 1
  %4802 = icmp eq i32 %4801, 8
  br i1 %4802, label %4803, label %4751, !llvm.loop !107

; <label>:4803                                    ; preds = %4800
  %4804 = fdiv fast float 1.000000e+00, %4795
  %4805 = fmul fast float %4804, %4797
  %4806 = fdiv fast float 1.000000e+00, %4677
  %4807 = fmul fast float %4805, %4806
  %4808 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4809 = call float @dx.op.binary.f32(i32 35, float %4808, float 0.000000e+00)  ; FMax(a,b)
  %4810 = fmul fast float %4795, 3.125000e-02
  %4811 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  %4812 = fmul fast float %4811, 2.000000e+00
  %4813 = fadd fast float %4812, -1.000000e+00
  %4814 = fcmp fast ogt float %4813, 0.000000e+00
  %4815 = fcmp fast olt float %4813, 0.000000e+00
  %4816 = zext i1 %4814 to i32
  %4817 = zext i1 %4815 to i32
  %4818 = sub nsw i32 %4816, %4817
  %4819 = sitofp i32 %4818 to float
  %4820 = fmul fast float %4819, %4813
  %4821 = fsub fast float 1.000000e+00, %4820
  %4822 = fmul fast float %4821, %4821
  %4823 = fmul fast float %4822, %4821
  %4824 = fsub fast float %4821, %4823
  %4825 = fmul fast float %4824, %4809
  %4826 = fsub fast float 1.000000e+00, %4823
  %4827 = fsub fast float %4826, %4825
  %4828 = fmul fast float %4819, 5.000000e-01
  %4829 = fmul fast float %4828, %4827
  %4830 = fsub fast float 5.000000e-01, %4829
  br label %4831

; <label>:4831                                    ; preds = %4803, %4679, %4664
  %4832 = phi float [ 1.000000e+00, %4664 ], [ %4745, %4679 ], [ %4830, %4803 ]
  %4833 = fcmp fast ogt float %4094, 0.000000e+00
  br i1 %4833, label %4834, label %4998, !dx.controlflow.hints !109

; <label>:4834                                    ; preds = %4831
  %4835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.f32 %4835, 0
  %4837 = fadd fast float %4836, %3984
  %4838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4839 = extractvalue %dx.types.CBufRet.f32 %4838, 2
  %4840 = extractvalue %dx.types.CBufRet.f32 %4838, 3
  %4841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4842 = extractvalue %dx.types.CBufRet.f32 %4841, 0
  %4843 = call float @dx.op.binary.f32(i32 35, float %4837, float 0.000000e+00)  ; FMax(a,b)
  %4844 = fadd fast float %4843, 0x3F10000000000000
  %4845 = fcmp fast oeq float %4842, 0.000000e+00
  br i1 %4845, label %4846, label %4913

; <label>:4846                                    ; preds = %4834
  %4847 = extractvalue %dx.types.CBufRet.f32 %4838, 1
  %4848 = extractvalue %dx.types.CBufRet.f32 %4838, 0
  %4849 = fmul fast float %4848, %3976
  %4850 = fmul fast float %4847, %3980
  %4851 = fadd fast float %4849, 5.000000e-01
  %4852 = call float @dx.op.unary.f32(i32 27, float %4851)  ; Round_ni(value)
  %4853 = fadd fast float %4850, 5.000000e-01
  %4854 = call float @dx.op.unary.f32(i32 27, float %4853)  ; Round_ni(value)
  %4855 = fsub fast float %4851, %4852
  %4856 = fsub fast float %4853, %4854
  %4857 = fadd fast float %4852, -5.000000e-01
  %4858 = fadd fast float %4854, -5.000000e-01
  %4859 = fmul fast float %4855, 2.000000e+00
  %4860 = fsub fast float 3.000000e+00, %4859
  %4861 = fadd fast float %4859, 1.000000e+00
  %4862 = fsub fast float 2.000000e+00, %4855
  %4863 = bitcast float %4860 to i32
  %4864 = sub nsw i32 2129859010, %4863
  %4865 = bitcast i32 %4864 to float
  %4866 = fmul fast float %4865, %4862
  %4867 = fadd fast float %4866, -1.000000e+00
  %4868 = bitcast float %4861 to i32
  %4869 = sub nsw i32 2129859010, %4868
  %4870 = bitcast i32 %4869 to float
  %4871 = fmul fast float %4870, %4855
  %4872 = fadd fast float %4871, 1.000000e+00
  %4873 = fmul fast float %4856, 2.000000e+00
  %4874 = fsub fast float 3.000000e+00, %4873
  %4875 = fadd fast float %4873, 1.000000e+00
  %4876 = fsub fast float 2.000000e+00, %4856
  %4877 = bitcast float %4874 to i32
  %4878 = sub nsw i32 2129859010, %4877
  %4879 = bitcast i32 %4878 to float
  %4880 = fmul fast float %4879, %4876
  %4881 = fadd fast float %4880, -1.000000e+00
  %4882 = bitcast float %4875 to i32
  %4883 = sub nsw i32 2129859010, %4882
  %4884 = bitcast i32 %4883 to float
  %4885 = fmul fast float %4884, %4856
  %4886 = fadd fast float %4885, 1.000000e+00
  %4887 = fadd fast float %4867, %4857
  %4888 = fmul fast float %4887, %4839
  %4889 = fadd fast float %4881, %4858
  %4890 = fmul fast float %4889, %4840
  %4891 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %43, float %4888, float %4890, float undef, float undef, i32 0, i32 0, i32 undef, float %4844)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4892 = extractvalue %dx.types.ResRet.f32 %4891, 0
  %4893 = fmul fast float %4892, %4860
  %4894 = fadd fast float %4872, %4857
  %4895 = fmul fast float %4894, %4839
  %4896 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %43, float %4895, float %4890, float undef, float undef, i32 0, i32 0, i32 undef, float %4844)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4897 = extractvalue %dx.types.ResRet.f32 %4896, 0
  %4898 = fmul fast float %4897, %4861
  %4899 = fadd fast float %4886, %4858
  %4900 = fmul fast float %4899, %4840
  %4901 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %43, float %4888, float %4900, float undef, float undef, i32 0, i32 0, i32 undef, float %4844)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4902 = extractvalue %dx.types.ResRet.f32 %4901, 0
  %4903 = fmul fast float %4902, %4860
  %4904 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %43, float %4895, float %4900, float undef, float undef, i32 0, i32 0, i32 undef, float %4844)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4905 = extractvalue %dx.types.ResRet.f32 %4904, 0
  %4906 = fmul fast float %4905, %4861
  %4907 = fadd fast float %4906, %4903
  %4908 = fmul fast float %4907, %4875
  %4909 = fadd fast float %4898, %4893
  %4910 = fmul fast float %4909, %4874
  %4911 = fadd fast float %4910, %4908
  %4912 = fmul fast float %4911, 6.250000e-02
  br label %4998

; <label>:4913                                    ; preds = %4834
  %4914 = fmul fast float %212, 0x401921FB60000000
  %4915 = call float @dx.op.unary.f32(i32 13, float %4914)  ; Sin(value)
  %4916 = call float @dx.op.unary.f32(i32 12, float %4914)  ; Cos(value)
  %4917 = fsub fast float -0.000000e+00, %4915
  br label %4918

; <label>:4918                                    ; preds = %4967, %4913
  %4919 = phi float [ 0.000000e+00, %4913 ], [ %4962, %4967 ]
  %4920 = phi float [ 0.000000e+00, %4913 ], [ %4964, %4967 ]
  %4921 = phi i32 [ 0, %4913 ], [ %4968, %4967 ]
  %4922 = mul i32 %4921, 2
  %4923 = add i32 0, %4922
  %4924 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4923
  %4925 = load float, float* %4924, align 4
  %4926 = mul i32 %4921, 2
  %4927 = add i32 1, %4926
  %4928 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4927
  %4929 = load float, float* %4928, align 4
  %4930 = fmul fast float %4925, %4916
  %4931 = call float @dx.op.tertiary.f32(i32 46, float %4929, float %4917, float %4930)  ; FMad(a,b,c)
  %4932 = fmul fast float %4925, %4915
  %4933 = call float @dx.op.tertiary.f32(i32 46, float %4929, float %4916, float %4932)  ; FMad(a,b,c)
  %4934 = fmul fast float %4931, %4842
  %4935 = fmul fast float %4933, %4842
  %4936 = fadd fast float %4934, %3976
  %4937 = fadd fast float %4935, %3980
  %4938 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %42, float %4936, float %4937, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4939 = extractvalue %dx.types.ResRet.f32 %4938, 0
  %4940 = extractvalue %dx.types.ResRet.f32 %4938, 1
  %4941 = extractvalue %dx.types.ResRet.f32 %4938, 2
  %4942 = extractvalue %dx.types.ResRet.f32 %4938, 3
  %4943 = getelementptr inbounds [4 x float], [4 x float]* %76, i32 0, i32 0
  store float %4939, float* %4943, align 4
  %4944 = getelementptr inbounds [4 x float], [4 x float]* %76, i32 0, i32 1
  store float %4940, float* %4944, align 4
  %4945 = getelementptr inbounds [4 x float], [4 x float]* %76, i32 0, i32 2
  store float %4941, float* %4945, align 4
  %4946 = getelementptr inbounds [4 x float], [4 x float]* %76, i32 0, i32 3
  store float %4942, float* %4946, align 4
  %4947 = fsub fast float %4939, %4844
  %4948 = fcmp fast olt float %4947, 0.000000e+00
  %4949 = select i1 %4948, float 0.000000e+00, float 1.000000e+00
  %4950 = fadd fast float %4949, %4919
  %4951 = fmul fast float %4949, %4947
  %4952 = fadd fast float %4951, %4920
  br label %4953

; <label>:4953                                    ; preds = %4953, %4918
  %4954 = phi i32 [ 1, %4918 ], [ %4965, %4953 ]
  %4955 = phi float [ %4952, %4918 ], [ %4964, %4953 ]
  %4956 = phi float [ %4950, %4918 ], [ %4962, %4953 ]
  %4957 = getelementptr [4 x float], [4 x float]* %76, i32 0, i32 %4954
  %4958 = load float, float* %4957, align 4, !tbaa !104, !noalias !94
  %4959 = fsub fast float %4958, %4844
  %4960 = fcmp fast olt float %4959, 0.000000e+00
  %4961 = select i1 %4960, float 0.000000e+00, float 1.000000e+00
  %4962 = fadd fast float %4961, %4956
  %4963 = fmul fast float %4961, %4959
  %4964 = fadd fast float %4963, %4955
  %4965 = add nuw nsw i32 %4954, 1
  %4966 = icmp eq i32 %4965, 4
  br i1 %4966, label %4967, label %4953, !llvm.loop !106

; <label>:4967                                    ; preds = %4953
  %4968 = add nuw nsw i32 %4921, 1
  %4969 = icmp eq i32 %4968, 8
  br i1 %4969, label %4970, label %4918, !llvm.loop !107

; <label>:4970                                    ; preds = %4967
  %4971 = fdiv fast float 1.000000e+00, %4962
  %4972 = fmul fast float %4971, %4964
  %4973 = fdiv fast float 1.000000e+00, %4844
  %4974 = fmul fast float %4972, %4973
  %4975 = call float @dx.op.unary.f32(i32 7, float %4974)  ; Saturate(value)
  %4976 = call float @dx.op.binary.f32(i32 35, float %4975, float 0.000000e+00)  ; FMax(a,b)
  %4977 = fmul fast float %4962, 3.125000e-02
  %4978 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4979 = fmul fast float %4978, 2.000000e+00
  %4980 = fadd fast float %4979, -1.000000e+00
  %4981 = fcmp fast ogt float %4980, 0.000000e+00
  %4982 = fcmp fast olt float %4980, 0.000000e+00
  %4983 = zext i1 %4981 to i32
  %4984 = zext i1 %4982 to i32
  %4985 = sub nsw i32 %4983, %4984
  %4986 = sitofp i32 %4985 to float
  %4987 = fmul fast float %4986, %4980
  %4988 = fsub fast float 1.000000e+00, %4987
  %4989 = fmul fast float %4988, %4988
  %4990 = fmul fast float %4989, %4988
  %4991 = fsub fast float %4988, %4990
  %4992 = fmul fast float %4991, %4976
  %4993 = fsub fast float 1.000000e+00, %4990
  %4994 = fsub fast float %4993, %4992
  %4995 = fmul fast float %4986, 5.000000e-01
  %4996 = fmul fast float %4995, %4994
  %4997 = fsub fast float 5.000000e-01, %4996
  br label %4998

; <label>:4998                                    ; preds = %4970, %4846, %4831
  %4999 = phi float [ 1.000000e+00, %4831 ], [ %4912, %4846 ], [ %4997, %4970 ]
  %5000 = fsub fast float %4665, %4500
  %5001 = fmul fast float %5000, %4038
  %5002 = fadd fast float %5001, %4500
  %5003 = fsub fast float %4832, %5002
  %5004 = fmul fast float %5003, %4068
  %5005 = fadd fast float %5004, %5002
  %5006 = fsub fast float %4999, %5005
  %5007 = fmul fast float %5006, %4094
  %5008 = fadd fast float %5007, %5005
  %5009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %5010 = extractvalue %dx.types.CBufRet.f32 %5009, 2
  %5011 = fcmp fast ogt float %5010, 0.000000e+00
  br i1 %5011, label %5012, label %5052, !dx.controlflow.hints !110

; <label>:5012                                    ; preds = %4998
  %5013 = fcmp fast ugt float %5010, 0.000000e+00
  br i1 %5013, label %5014, label %5049

; <label>:5014                                    ; preds = %5012
  %5015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %5016 = extractvalue %dx.types.CBufRet.f32 %5015, 0
  %5017 = extractvalue %dx.types.CBufRet.f32 %5015, 1
  %5018 = extractvalue %dx.types.CBufRet.f32 %5015, 2
  %5019 = extractvalue %dx.types.CBufRet.f32 %5015, 3
  %5020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %5021 = extractvalue %dx.types.CBufRet.f32 %5020, 0
  %5022 = extractvalue %dx.types.CBufRet.f32 %5020, 1
  %5023 = extractvalue %dx.types.CBufRet.f32 %5020, 2
  %5024 = extractvalue %dx.types.CBufRet.f32 %5020, 3
  %5025 = extractvalue %dx.types.CBufRet.f32 %5009, 0
  %5026 = extractvalue %dx.types.CBufRet.f32 %5009, 1
  %5027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5028 = extractvalue %dx.types.CBufRet.f32 %5027, 0
  %5029 = extractvalue %dx.types.CBufRet.f32 %5027, 1
  %5030 = extractvalue %dx.types.CBufRet.f32 %5027, 2
  %5031 = fadd fast float %5028, %3953
  %5032 = fadd fast float %5029, %3954
  %5033 = fadd fast float %5030, %3955
  %5034 = fmul fast float %5031, %5016
  %5035 = call float @dx.op.tertiary.f32(i32 46, float %5017, float %5032, float %5034)  ; FMad(a,b,c)
  %5036 = call float @dx.op.tertiary.f32(i32 46, float %5018, float %5033, float %5035)  ; FMad(a,b,c)
  %5037 = fadd fast float %5036, %5019
  %5038 = fmul fast float %5031, %5021
  %5039 = call float @dx.op.tertiary.f32(i32 46, float %5022, float %5032, float %5038)  ; FMad(a,b,c)
  %5040 = call float @dx.op.tertiary.f32(i32 46, float %5023, float %5033, float %5039)  ; FMad(a,b,c)
  %5041 = fadd fast float %5040, %5024
  %5042 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %38, float %5037, float %5041, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5043 = extractvalue %dx.types.ResRet.f32 %5042, 0
  %5044 = fmul fast float %5043, %5026
  %5045 = fadd fast float %5044, %5025
  %5046 = call float @dx.op.unary.f32(i32 7, float %5045)  ; Saturate(value)
  %5047 = fmul fast float %5046, %5010
  %5048 = fsub fast float 1.000000e+00, %5047
  br label %5049

; <label>:5049                                    ; preds = %5014, %5012
  %5050 = phi float [ %5048, %5014 ], [ 1.000000e+00, %5012 ]
  %5051 = fmul fast float %5050, %5008
  br label %5052

; <label>:5052                                    ; preds = %5049, %4998, %3933
  %5053 = phi float [ 1.000000e+00, %3933 ], [ %5051, %5049 ], [ %5008, %4998 ]
  %5054 = call float @dx.op.binary.f32(i32 36, float %5053, float %5053)  ; FMin(a,b)
  %5055 = call float @dx.op.binary.f32(i32 36, float %5053, float %5054)  ; FMin(a,b)
  %5056 = fcmp fast ogt float %5055, 0.000000e+00
  br i1 %5056, label %5057, label %5223, !dx.controlflow.hints !111

; <label>:5057                                    ; preds = %5052
  %5058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5059 = extractvalue %dx.types.CBufRet.f32 %5058, 0
  %5060 = extractvalue %dx.types.CBufRet.f32 %5058, 1
  %5061 = extractvalue %dx.types.CBufRet.f32 %5058, 2
  %5062 = extractvalue %dx.types.CBufRet.f32 %5058, 3
  %5063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5064 = extractvalue %dx.types.CBufRet.f32 %5063, 0
  %5065 = extractvalue %dx.types.CBufRet.f32 %5063, 1
  %5066 = extractvalue %dx.types.CBufRet.f32 %5063, 2
  %5067 = extractvalue %dx.types.CBufRet.f32 %5063, 3
  %5068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5069 = extractvalue %dx.types.CBufRet.f32 %5068, 0
  %5070 = extractvalue %dx.types.CBufRet.f32 %5068, 1
  %5071 = extractvalue %dx.types.CBufRet.f32 %5068, 2
  %5072 = extractvalue %dx.types.CBufRet.f32 %5068, 3
  %5073 = fmul fast float %5059, %3953
  %5074 = call float @dx.op.tertiary.f32(i32 46, float %3954, float %5060, float %5073)  ; FMad(a,b,c)
  %5075 = call float @dx.op.tertiary.f32(i32 46, float %3955, float %5061, float %5074)  ; FMad(a,b,c)
  %5076 = fadd fast float %5075, %5062
  %5077 = fmul fast float %5064, %3953
  %5078 = call float @dx.op.tertiary.f32(i32 46, float %3954, float %5065, float %5077)  ; FMad(a,b,c)
  %5079 = call float @dx.op.tertiary.f32(i32 46, float %3955, float %5066, float %5078)  ; FMad(a,b,c)
  %5080 = fadd fast float %5079, %5067
  %5081 = fmul fast float %5069, %3953
  %5082 = call float @dx.op.tertiary.f32(i32 46, float %3954, float %5070, float %5081)  ; FMad(a,b,c)
  %5083 = call float @dx.op.tertiary.f32(i32 46, float %3955, float %5071, float %5082)  ; FMad(a,b,c)
  %5084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.f32 %5084, 0
  %5086 = extractvalue %dx.types.CBufRet.f32 %5084, 1
  %5087 = extractvalue %dx.types.CBufRet.f32 %5084, 3
  %5088 = fmul fast float %5087, %5076
  %5089 = fmul fast float %5087, %5080
  %5090 = fadd fast float %5088, %5085
  %5091 = fadd fast float %5089, %5086
  %5092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %5093 = extractvalue %dx.types.CBufRet.f32 %5092, 0
  %5094 = extractvalue %dx.types.CBufRet.f32 %5092, 1
  %5095 = fsub fast float %5090, %5093
  %5096 = fsub fast float %5091, %5094
  %5097 = fcmp fast olt float %5095, 0.000000e+00
  %5098 = fcmp fast olt float %5096, 0.000000e+00
  %5099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %5100 = extractvalue %dx.types.CBufRet.f32 %5099, 0
  %5101 = extractvalue %dx.types.CBufRet.f32 %5099, 1
  %5102 = extractvalue %dx.types.CBufRet.f32 %5099, 2
  %5103 = extractvalue %dx.types.CBufRet.f32 %5099, 3
  %5104 = select i1 %5097, float %5100, float %5102
  %5105 = select i1 %5098, float %5101, float %5103
  %5106 = fmul fast float %5104, %5095
  %5107 = fmul fast float %5105, %5096
  %5108 = call float @dx.op.unary.f32(i32 6, float %5106)  ; FAbs(value)
  %5109 = call float @dx.op.unary.f32(i32 6, float %5107)  ; FAbs(value)
  %5110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5111 = extractvalue %dx.types.CBufRet.f32 %5110, 0
  %5112 = call float @dx.op.binary.f32(i32 35, float %5108, float %5109)  ; FMax(a,b)
  %5113 = fsub fast float %5111, %5112
  %5114 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5115 = fcmp fast ogt float %5114, 0.000000e+00
  br i1 %5115, label %5116, label %5157, !dx.controlflow.hints !112

; <label>:5116                                    ; preds = %5057
  %5117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %41, float %5090, float %5091, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5118 = extractvalue %dx.types.ResRet.f32 %5117, 1
  %5119 = fcmp fast ogt float %5118, 0.000000e+00
  br i1 %5119, label %5120, label %5152

; <label>:5120                                    ; preds = %5116
  %5121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %41, float %5090, float %5091, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5122 = extractvalue %dx.types.ResRet.f32 %5121, 0
  %5123 = extractvalue %dx.types.ResRet.f32 %5121, 1
  %5124 = extractvalue %dx.types.ResRet.f32 %5121, 2
  %5125 = extractvalue %dx.types.ResRet.f32 %5121, 3
  %5126 = fsub fast float 1.000000e+00, %5072
  %5127 = fsub fast float %5126, %5083
  %5128 = fmul fast float %5127, 0x400921FB60000000
  %5129 = fadd fast float %5128, 0x3FF921FB60000000
  %5130 = call float @dx.op.unary.f32(i32 13, float %5129)  ; Sin(value)
  %5131 = fadd fast float %5130, -1.000000e+00
  %5132 = fmul fast float %5131, 0x3FD45F3060000000
  %5133 = fmul fast float %5127, 0x401921FB60000000
  %5134 = fadd fast float %5133, 0x400921FB60000000
  %5135 = call float @dx.op.unary.f32(i32 13, float %5134)  ; Sin(value)
  %5136 = fadd fast float %5135, 0x3E7777A5C0000000
  %5137 = fmul fast float %5136, 0x3FC45F3060000000
  %5138 = fmul fast float %5127, 0x4022D97C80000000
  %5139 = fadd fast float %5138, 0x4012D97C80000000
  %5140 = call float @dx.op.unary.f32(i32 13, float %5139)  ; Sin(value)
  %5141 = fadd fast float %5140, 1.000000e+00
  %5142 = fmul fast float %5141, 0x3FBB2995E0000000
  %5143 = fmul fast float %5127, 0x402921FB60000000
  %5144 = fadd fast float %5143, 0x401921FB60000000
  %5145 = call float @dx.op.unary.f32(i32 13, float %5144)  ; Sin(value)
  %5146 = fadd fast float %5145, 0xBE8777A5C0000000
  %5147 = fmul fast float %5146, 0x3FB45F3060000000
  %5148 = call float @dx.op.dot4.f32(i32 56, float %5122, float %5123, float %5124, float %5125, float %5132, float %5137, float %5142, float %5147)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5149 = fmul fast float %5148, 0xBFF7154760000000
  %5150 = call float @dx.op.unary.f32(i32 21, float %5149)  ; Exp(value)
  %5151 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  br label %5152

; <label>:5152                                    ; preds = %5120, %5116
  %5153 = phi float [ %5151, %5120 ], [ 1.000000e+00, %5116 ]
  %5154 = fadd fast float %5153, -1.000000e+00
  %5155 = fmul fast float %5154, %5114
  %5156 = fadd fast float %5155, 1.000000e+00
  br label %5157

; <label>:5157                                    ; preds = %5152, %5057
  %5158 = phi float [ %5156, %5152 ], [ 1.000000e+00, %5057 ]
  %5159 = fmul fast float %5158, %5053
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5162 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5163 = extractvalue %dx.types.CBufRet.f32 %5160, 2
  %5164 = fadd fast float %5161, %140
  %5165 = fadd fast float %5162, %141
  %5166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %5167 = extractvalue %dx.types.CBufRet.f32 %5166, 1
  %5168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5169 = extractvalue %dx.types.CBufRet.f32 %5168, 0
  %5170 = extractvalue %dx.types.CBufRet.f32 %5168, 1
  %5171 = extractvalue %dx.types.CBufRet.f32 %5168, 2
  %5172 = fsub fast float -0.000000e+00, %5164
  %5173 = fsub fast float -0.000000e+00, %5165
  %5174 = fsub fast float -0.000000e+00, %142
  %5175 = fsub fast float %5174, %5163
  %5176 = fadd fast float %5175, %5167
  %5177 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5172, float %5173, float %5176)  ; Dot3(ax,ay,az,bx,by,bz)
  %5178 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5169, float %5170, float %5171)  ; Dot3(ax,ay,az,bx,by,bz)
  %5179 = fdiv fast float 1.000000e+00, %5178
  %5180 = fmul fast float %5179, %5177
  %5181 = fmul fast float %5169, %5180
  %5182 = fmul fast float %5170, %5180
  %5183 = fadd fast float %5181, %5164
  %5184 = fadd fast float %5182, %5165
  %5185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %5186 = extractvalue %dx.types.CBufRet.f32 %5185, 0
  %5187 = extractvalue %dx.types.CBufRet.f32 %5185, 1
  %5188 = fsub fast float %5183, %5186
  %5189 = fsub fast float %5184, %5187
  %5190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %5191 = extractvalue %dx.types.CBufRet.f32 %5190, 2
  %5192 = extractvalue %dx.types.CBufRet.f32 %5190, 3
  %5193 = fmul fast float %5188, %5191
  %5194 = fmul fast float %5189, %5192
  %5195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %5196 = extractvalue %dx.types.CBufRet.i32 %5195, 3
  %5197 = icmp eq i32 %5196, 0
  br i1 %5197, label %5203, label %5198

; <label>:5198                                    ; preds = %5157
  %5199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %40, float %5193, float %5194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5200 = extractvalue %dx.types.ResRet.f32 %5199, 0
  %5201 = extractvalue %dx.types.ResRet.f32 %5199, 1
  %5202 = extractvalue %dx.types.ResRet.f32 %5199, 2
  br label %5208

; <label>:5203                                    ; preds = %5157
  %5204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %41, float %5193, float %5194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5205 = extractvalue %dx.types.ResRet.f32 %5204, 0
  %5206 = extractvalue %dx.types.ResRet.f32 %5204, 1
  %5207 = extractvalue %dx.types.ResRet.f32 %5204, 2
  br label %5208

; <label>:5208                                    ; preds = %5203, %5198
  %5209 = phi float [ %5200, %5198 ], [ %5205, %5203 ]
  %5210 = phi float [ %5201, %5198 ], [ %5206, %5203 ]
  %5211 = phi float [ %5202, %5198 ], [ %5207, %5203 ]
  %5212 = extractvalue %dx.types.CBufRet.f32 %5166, 2
  %5213 = fmul fast float %5212, %5209
  %5214 = extractvalue %dx.types.CBufRet.f32 %5166, 0
  %5215 = fsub fast float %5180, %5214
  %5216 = fsub fast float %5215, %5213
  %5217 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5216)  ; FMax(a,b)
  %5218 = fmul fast float %5217, %5210
  %5219 = call float @dx.op.binary.f32(i32 36, float %5211, float %5218)  ; FMin(a,b)
  %5220 = fmul fast float %5219, 0xBFF7154760000000
  %5221 = call float @dx.op.unary.f32(i32 21, float %5220)  ; Exp(value)
  %5222 = fmul fast float %5159, %5221
  br label %5223

; <label>:5223                                    ; preds = %5208, %5052
  %5224 = phi float [ %5222, %5208 ], [ %5053, %5052 ]
  %5225 = call float @dx.op.binary.f32(i32 36, float %5224, float %5224)  ; FMin(a,b)
  %5226 = call float @dx.op.binary.f32(i32 36, float %5224, float %5225)  ; FMin(a,b)
  %5227 = fcmp fast ogt float %5226, 0.000000e+00
  br i1 %5227, label %5228, label %5549, !dx.controlflow.hints !113

; <label>:5228                                    ; preds = %5223
  %5229 = fmul fast float %5224, %3945
  %5230 = fmul fast float %5224, %3946
  %5231 = fmul fast float %5224, %3947
  %5232 = fsub fast float %3934, %2867
  %5233 = fsub fast float %3935, %2866
  %5234 = fsub fast float %3936, %2865
  %5235 = call float @dx.op.dot3.f32(i32 55, float %5232, float %5233, float %5234, float %5232, float %5233, float %5234)  ; Dot3(ax,ay,az,bx,by,bz)
  %5236 = call float @dx.op.unary.f32(i32 25, float %5235)  ; Rsqrt(value)
  %5237 = fmul fast float %5236, %5232
  %5238 = fmul fast float %5236, %5233
  %5239 = fmul fast float %5236, %5234
  %5240 = call float @dx.op.dot3.f32(i32 55, float %3934, float %3935, float %3936, float %2874, float %2875, float %2876)  ; Dot3(ax,ay,az,bx,by,bz)
  %5241 = call float @dx.op.dot3.f32(i32 55, float %2864, float %2863, float %2862, float %5237, float %5238, float %5239)  ; Dot3(ax,ay,az,bx,by,bz)
  %5242 = call float @dx.op.unary.f32(i32 7, float %5240)  ; Saturate(value)
  %5243 = fmul fast float %5242, %5242
  %5244 = fmul fast float %5243, %2949
  %5245 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  %5246 = fmul fast float %5245, %5242
  %5247 = call float @dx.op.dot3.f32(i32 55, float %2874, float %2875, float %2876, float %5237, float %5238, float %5239)  ; Dot3(ax,ay,az,bx,by,bz)
  %5248 = fmul fast float %5247, %5247
  %5249 = call float @dx.op.unary.f32(i32 6, float %5240)  ; FAbs(value)
  %5250 = fsub fast float 1.000000e+00, %2942
  %5251 = fmul fast float %2884, %2884
  %5252 = fmul fast float %5251, %5250
  %5253 = fadd fast float %5252, %2942
  %5254 = bitcast float %5253 to i32
  %5255 = ashr i32 %5254, 1
  %5256 = add nsw i32 %5255, 532487669
  %5257 = bitcast i32 %5256 to float
  %5258 = fadd fast float %5257, %2884
  %5259 = call float @dx.op.dot3.f32(i32 55, float %1633, float %1634, float %1635, float %5237, float %5238, float %5239)  ; Dot3(ax,ay,az,bx,by,bz)
  %5260 = fsub fast float 1.000000e+00, %1621
  %5261 = call float @dx.op.binary.f32(i32 35, float %5260, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5262 = fmul fast float %5261, %5261
  %5263 = fmul fast float %5262, %2942
  %5264 = fmul fast float %5259, %5259
  %5265 = fsub fast float 1.000000e+00, %5248
  %5266 = fsub fast float %5265, %5264
  %5267 = fdiv fast float %5264, %5263
  %5268 = fadd fast float %5267, %5248
  %5269 = fdiv fast float %5266, %2942
  %5270 = fadd fast float %5268, %5269
  %5271 = fmul fast float %5249, %5249
  %5272 = fmul fast float %5271, %5250
  %5273 = fadd fast float %5272, %2942
  %5274 = bitcast float %5273 to i32
  %5275 = ashr i32 %5274, 1
  %5276 = add nsw i32 %5275, 532487669
  %5277 = bitcast i32 %5276 to float
  %5278 = fadd fast float %5277, %5249
  %5279 = fmul fast float %2942, %5261
  %5280 = fmul fast float %5270, %5270
  %5281 = fmul fast float %5280, %5279
  %5282 = fmul fast float %5281, %5258
  %5283 = fmul fast float %5282, %5278
  %5284 = fdiv fast float 0x3FF0A00000000000, %5283
  %5285 = fmul fast float %3195, 0x3FF9999980000000
  %5286 = fsub fast float 5.000000e+00, %5285
  %5287 = call float @dx.op.unary.f32(i32 6, float %5241)  ; FAbs(value)
  %5288 = fsub fast float 1.000000e+00, %5287
  %5289 = fmul fast float %3195, 0x41D9660740000000
  %5290 = fadd fast float %5289, 0xC1EFBF8940000000
  %5291 = bitcast float %5288 to i32
  %5292 = sitofp i32 %5291 to float
  %5293 = fmul fast float %5292, %5286
  %5294 = fadd fast float %5290, %5293
  %5295 = fptosi float %5294 to i32
  %5296 = bitcast i32 %5295 to float
  %5297 = fsub fast float 1.000000e+00, %2871
  %5298 = fsub fast float 1.000000e+00, %2872
  %5299 = fsub fast float 1.000000e+00, %2882
  %5300 = fmul fast float %5296, %5297
  %5301 = fmul fast float %5296, %5298
  %5302 = fmul fast float %5296, %5299
  %5303 = fadd fast float %5300, %2871
  %5304 = fadd fast float %5301, %2872
  %5305 = fadd fast float %5302, %2882
  br i1 %3218, label %5306, label %5329

; <label>:5306                                    ; preds = %5228
  %5307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %41, float %1496, float %5287, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5308 = extractvalue %dx.types.ResRet.f32 %5307, 0
  %5309 = extractvalue %dx.types.ResRet.f32 %5307, 1
  %5310 = extractvalue %dx.types.ResRet.f32 %5307, 2
  %5311 = fadd fast float %5308, -5.000000e-01
  %5312 = fadd fast float %5309, -5.000000e-01
  %5313 = fadd fast float %5310, -5.000000e-01
  %5314 = fmul fast float %2871, 4.000000e+00
  %5315 = fmul fast float %5314, %5297
  %5316 = fmul fast float %5315, %5311
  %5317 = fmul fast float %2872, 4.000000e+00
  %5318 = fmul fast float %5317, %5298
  %5319 = fmul fast float %5318, %5312
  %5320 = fmul fast float %2882, 4.000000e+00
  %5321 = fmul fast float %5320, %5299
  %5322 = fmul fast float %5321, %5313
  %5323 = fadd fast float %5316, %5303
  %5324 = fadd fast float %5319, %5304
  %5325 = fadd fast float %5322, %5305
  %5326 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5327 = call float @dx.op.unary.f32(i32 7, float %5324)  ; Saturate(value)
  %5328 = call float @dx.op.unary.f32(i32 7, float %5325)  ; Saturate(value)
  br label %5329

; <label>:5329                                    ; preds = %5306, %5228
  %5330 = phi float [ %5326, %5306 ], [ %5303, %5228 ]
  %5331 = phi float [ %5327, %5306 ], [ %5304, %5228 ]
  %5332 = phi float [ %5328, %5306 ], [ %5305, %5228 ]
  %5333 = fmul fast float %5240, 9.843750e-01
  %5334 = fadd fast float %5333, 7.812500e-03
  %5335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %41, float %5334, float %3199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5336 = extractvalue %dx.types.ResRet.f32 %5335, 0
  %5337 = extractvalue %dx.types.ResRet.f32 %5335, 1
  %5338 = extractvalue %dx.types.ResRet.f32 %5335, 2
  %5339 = extractvalue %dx.types.ResRet.f32 %5335, 3
  %5340 = fsub fast float %5338, %5336
  %5341 = fsub fast float %5339, %5337
  %5342 = fmul fast float %5340, %3205
  %5343 = fmul fast float %5341, %3205
  %5344 = fadd fast float %5342, %5336
  %5345 = fadd fast float %5343, %5337
  %5346 = fmul fast float %5344, %2871
  %5347 = fmul fast float %5344, %2872
  %5348 = fmul fast float %5344, %2882
  %5349 = fadd fast float %5346, %5345
  %5350 = fadd fast float %5347, %5345
  %5351 = fadd fast float %5348, %5345
  br i1 %3218, label %5352, label %5375

; <label>:5352                                    ; preds = %5329
  %5353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %41, float %1496, float %5240, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5354 = extractvalue %dx.types.ResRet.f32 %5353, 0
  %5355 = extractvalue %dx.types.ResRet.f32 %5353, 1
  %5356 = extractvalue %dx.types.ResRet.f32 %5353, 2
  %5357 = fadd fast float %5354, -5.000000e-01
  %5358 = fadd fast float %5355, -5.000000e-01
  %5359 = fadd fast float %5356, -5.000000e-01
  %5360 = fmul fast float %2871, 4.000000e+00
  %5361 = fmul fast float %5360, %5297
  %5362 = fmul fast float %5361, %5357
  %5363 = fmul fast float %2872, 4.000000e+00
  %5364 = fmul fast float %5363, %5298
  %5365 = fmul fast float %5364, %5358
  %5366 = fmul fast float %2882, 4.000000e+00
  %5367 = fmul fast float %5366, %5299
  %5368 = fmul fast float %5367, %5359
  %5369 = fadd fast float %5362, %5349
  %5370 = fadd fast float %5365, %5350
  %5371 = fadd fast float %5368, %5351
  %5372 = call float @dx.op.unary.f32(i32 7, float %5369)  ; Saturate(value)
  %5373 = call float @dx.op.unary.f32(i32 7, float %5370)  ; Saturate(value)
  %5374 = call float @dx.op.unary.f32(i32 7, float %5371)  ; Saturate(value)
  br label %5375

; <label>:5375                                    ; preds = %5352, %5329
  %5376 = phi float [ %5372, %5352 ], [ %5349, %5329 ]
  %5377 = phi float [ %5373, %5352 ], [ %5350, %5329 ]
  %5378 = phi float [ %5374, %5352 ], [ %5351, %5329 ]
  %5379 = call float @dx.op.binary.f32(i32 35, float %5377, float %5378)  ; FMax(a,b)
  %5380 = call float @dx.op.binary.f32(i32 35, float %5376, float %5379)  ; FMax(a,b)
  %5381 = fsub fast float 1.000000e+00, %5380
  %5382 = call float @dx.op.binary.f32(i32 35, float %5249, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5383 = fdiv fast float %902, %5382
  %5384 = fmul fast float %3843, %5383
  %5385 = fmul fast float %3845, %5383
  %5386 = fmul fast float %3847, %5383
  %5387 = call float @dx.op.unary.f32(i32 21, float %5384)  ; Exp(value)
  %5388 = call float @dx.op.unary.f32(i32 21, float %5385)  ; Exp(value)
  %5389 = call float @dx.op.unary.f32(i32 21, float %5386)  ; Exp(value)
  %5390 = call float @dx.op.unary.f32(i32 7, float %5387)  ; Saturate(value)
  %5391 = call float @dx.op.unary.f32(i32 7, float %5388)  ; Saturate(value)
  %5392 = call float @dx.op.unary.f32(i32 7, float %5389)  ; Saturate(value)
  %5393 = select i1 %3840, float %5390, float 0.000000e+00
  %5394 = select i1 %3841, float %5391, float 0.000000e+00
  %5395 = select i1 %3842, float %5392, float 0.000000e+00
  %5396 = call float @dx.op.dot3.f32(i32 55, float %3934, float %3935, float %3936, float %2881, float %2880, float %2879)  ; Dot3(ax,ay,az,bx,by,bz)
  %5397 = call float @dx.op.unary.f32(i32 7, float %5396)  ; Saturate(value)
  %5398 = fmul fast float %5397, 9.843750e-01
  %5399 = fadd fast float %5398, 7.812500e-03
  %5400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %41, float %5399, float %3199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5401 = extractvalue %dx.types.ResRet.f32 %5400, 0
  %5402 = extractvalue %dx.types.ResRet.f32 %5400, 1
  %5403 = extractvalue %dx.types.ResRet.f32 %5400, 2
  %5404 = extractvalue %dx.types.ResRet.f32 %5400, 3
  %5405 = fsub fast float %5403, %5401
  %5406 = fsub fast float %5404, %5402
  %5407 = fmul fast float %5405, %3205
  %5408 = fmul fast float %5406, %3205
  %5409 = fadd fast float %5407, %5401
  %5410 = fadd fast float %5408, %5402
  %5411 = fmul fast float %5409, %2871
  %5412 = fmul fast float %5409, %2872
  %5413 = fmul fast float %5409, %2882
  %5414 = fadd fast float %5411, %5410
  %5415 = fadd fast float %5412, %5410
  %5416 = fadd fast float %5413, %5410
  br i1 %3218, label %5417, label %5440

; <label>:5417                                    ; preds = %5375
  %5418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %41, float %1496, float %5397, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5419 = extractvalue %dx.types.ResRet.f32 %5418, 0
  %5420 = extractvalue %dx.types.ResRet.f32 %5418, 1
  %5421 = extractvalue %dx.types.ResRet.f32 %5418, 2
  %5422 = fadd fast float %5419, -5.000000e-01
  %5423 = fadd fast float %5420, -5.000000e-01
  %5424 = fadd fast float %5421, -5.000000e-01
  %5425 = fmul fast float %2871, 4.000000e+00
  %5426 = fmul fast float %5425, %5297
  %5427 = fmul fast float %5426, %5422
  %5428 = fmul fast float %2872, 4.000000e+00
  %5429 = fmul fast float %5428, %5298
  %5430 = fmul fast float %5429, %5423
  %5431 = fmul fast float %2882, 4.000000e+00
  %5432 = fmul fast float %5431, %5299
  %5433 = fmul fast float %5432, %5424
  %5434 = fadd fast float %5427, %5414
  %5435 = fadd fast float %5430, %5415
  %5436 = fadd fast float %5433, %5416
  %5437 = call float @dx.op.unary.f32(i32 7, float %5434)  ; Saturate(value)
  %5438 = call float @dx.op.unary.f32(i32 7, float %5435)  ; Saturate(value)
  %5439 = call float @dx.op.unary.f32(i32 7, float %5436)  ; Saturate(value)
  br label %5440

; <label>:5440                                    ; preds = %5417, %5375
  %5441 = phi float [ %5437, %5417 ], [ %5414, %5375 ]
  %5442 = phi float [ %5438, %5417 ], [ %5415, %5375 ]
  %5443 = phi float [ %5439, %5417 ], [ %5416, %5375 ]
  %5444 = call float @dx.op.binary.f32(i32 35, float %5442, float %5443)  ; FMax(a,b)
  %5445 = call float @dx.op.binary.f32(i32 35, float %5441, float %5444)  ; FMax(a,b)
  %5446 = fsub fast float 1.000000e+00, %5445
  %5447 = fmul fast float %2939, %3907
  %5448 = fadd fast float %3909, %5447
  %5449 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5450 = fsub fast float %3934, %2890
  %5451 = fsub fast float %3935, %2891
  %5452 = fsub fast float %3936, %2892
  %5453 = call float @dx.op.dot3.f32(i32 55, float %5450, float %5451, float %5452, float %5450, float %5451, float %5452)  ; Dot3(ax,ay,az,bx,by,bz)
  %5454 = call float @dx.op.unary.f32(i32 25, float %5453)  ; Rsqrt(value)
  %5455 = fmul fast float %5454, %5450
  %5456 = fmul fast float %5454, %5451
  %5457 = fmul fast float %5454, %5452
  %5458 = call float @dx.op.dot3.f32(i32 55, float %2881, float %2880, float %2879, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5459 = fmul fast float %5458, %5458
  %5460 = call float @dx.op.unary.f32(i32 6, float %5397)  ; FAbs(value)
  %5461 = call float @dx.op.binary.f32(i32 35, float %5449, float 0x3F847AE140000000)  ; FMax(a,b)
  %5462 = fmul fast float %5461, %5461
  %5463 = fmul fast float %5462, %5462
  %5464 = fsub fast float 1.000000e+00, %5463
  %5465 = fmul fast float %5251, %5464
  %5466 = fadd fast float %5465, %5463
  %5467 = bitcast float %5466 to i32
  %5468 = ashr i32 %5467, 1
  %5469 = add nsw i32 %5468, 532487669
  %5470 = bitcast i32 %5469 to float
  %5471 = fadd fast float %5470, %2884
  %5472 = call float @dx.op.dot3.f32(i32 55, float %1633, float %1634, float %1635, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5473 = fmul fast float %5262, %5463
  %5474 = fmul fast float %5472, %5472
  %5475 = fsub fast float 1.000000e+00, %5459
  %5476 = fsub fast float %5475, %5474
  %5477 = fdiv fast float %5474, %5473
  %5478 = fadd fast float %5477, %5459
  %5479 = fdiv fast float %5476, %5463
  %5480 = fadd fast float %5478, %5479
  %5481 = fmul fast float %5460, %5460
  %5482 = fmul fast float %5481, %5464
  %5483 = fadd fast float %5482, %5463
  %5484 = bitcast float %5483 to i32
  %5485 = ashr i32 %5484, 1
  %5486 = add nsw i32 %5485, 532487669
  %5487 = bitcast i32 %5486 to float
  %5488 = fadd fast float %5487, %5460
  %5489 = fmul fast float %5463, %5261
  %5490 = fmul fast float %5480, %5480
  %5491 = fmul fast float %5490, %5489
  %5492 = fmul fast float %5491, %5471
  %5493 = fmul fast float %5492, %5488
  %5494 = fdiv fast float 0x3FF0A00000000000, %5493
  %5495 = fmul fast float %5397, %5393
  %5496 = fmul fast float %5397, %5394
  %5497 = fmul fast float %5397, %5395
  %5498 = fmul fast float %5495, %5446
  %5499 = fmul fast float %5498, %5494
  %5500 = fmul fast float %5496, %5446
  %5501 = fmul fast float %5500, %5494
  %5502 = fmul fast float %5497, %5446
  %5503 = fmul fast float %5502, %5494
  %5504 = fmul fast float %5330, %5284
  %5505 = fmul fast float %5331, %5284
  %5506 = fmul fast float %5332, %5284
  %5507 = fsub fast float 1.000000e+00, %5241
  %5508 = bitcast float %5507 to i32
  %5509 = sitofp i32 %5508 to float
  %5510 = fmul fast float %5509, 5.000000e+00
  %5511 = fadd fast float %5510, 0xC1EFBF8940000000
  %5512 = fptosi float %5511 to i32
  %5513 = bitcast i32 %5512 to float
  %5514 = fmul fast float %5513, %1495
  %5515 = fmul fast float %5381, %5514
  %5516 = fmul fast float %5515, %3835
  %5517 = fmul fast float %5515, %3836
  %5518 = fmul fast float %5515, %3837
  %5519 = fadd fast float %5516, %5504
  %5520 = fadd fast float %5517, %5505
  %5521 = fadd fast float %5518, %5506
  %5522 = fmul fast float %5519, %5246
  %5523 = fmul fast float %5520, %5246
  %5524 = fmul fast float %5521, %5246
  %5525 = fmul fast float %5246, %5229
  %5526 = fmul fast float %5525, %5381
  %5527 = fmul fast float %5246, %5230
  %5528 = fmul fast float %5527, %5381
  %5529 = fmul fast float %5246, %5231
  %5530 = fmul fast float %5529, %5381
  %5531 = fadd fast float %5522, %5499
  %5532 = fadd fast float %5523, %5501
  %5533 = fadd fast float %5524, %5503
  %5534 = fmul fast float %5531, %5229
  %5535 = fmul fast float %5532, %5230
  %5536 = fmul fast float %5533, %5231
  %5537 = fadd fast float %5526, %3924
  %5538 = fmul fast float %5537, %1519
  %5539 = fadd fast float %5528, %3926
  %5540 = fmul fast float %5539, %1519
  %5541 = fadd fast float %5530, %3928
  %5542 = fmul fast float %5541, %1519
  %5543 = fadd fast float %5534, %3888
  %5544 = fmul fast float %5543, %1519
  %5545 = fadd fast float %5535, %3891
  %5546 = fmul fast float %5545, %1519
  %5547 = fadd fast float %5536, %3894
  %5548 = fmul fast float %5547, %1519
  br label %5549

; <label>:5549                                    ; preds = %5440, %5223, %3818
  %5550 = phi float [ %3889, %3818 ], [ %3889, %5223 ], [ %5544, %5440 ]
  %5551 = phi float [ %3892, %3818 ], [ %3892, %5223 ], [ %5546, %5440 ]
  %5552 = phi float [ %3895, %3818 ], [ %3895, %5223 ], [ %5548, %5440 ]
  %5553 = phi float [ %3925, %3818 ], [ %3925, %5223 ], [ %5538, %5440 ]
  %5554 = phi float [ %3927, %3818 ], [ %3927, %5223 ], [ %5540, %5440 ]
  %5555 = phi float [ %3929, %3818 ], [ %3929, %5223 ], [ %5542, %5440 ]
  %5556 = fmul fast float %1519, %3864
  %5557 = fsub fast float -0.000000e+00, %5556
  %5558 = fmul fast float %1519, %3865
  %5559 = fsub fast float -0.000000e+00, %5558
  %5560 = fmul fast float %1519, %3866
  %5561 = fsub fast float -0.000000e+00, %5560
  %5562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5563 = extractvalue %dx.types.CBufRet.f32 %5562, 0
  %5564 = fmul fast float %5563, %3870
  %5565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5566 = extractvalue %dx.types.CBufRet.f32 %5565, 3
  %5567 = fsub fast float 1.000000e+00, %1491
  %5568 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5569 = fadd fast float %5555, %1490
  %5570 = fmul fast float %5569, %1491
  %5571 = fmul fast float %5568, %5566
  %5572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5573 = extractvalue %dx.types.CBufRet.f32 %5572, 3
  %5574 = fmul fast float %5553, %2868
  %5575 = fmul fast float %5554, %2869
  %5576 = fmul fast float %5555, %2870
  %5577 = fcmp fast ogt float %73, %162
  %5578 = and i1 %5577, %1638
  %5579 = or i1 %1717, %5578
  %5580 = icmp eq i32 %1637, 2
  %5581 = fcmp fast ole float %73, %162
  %5582 = and i1 %5581, %5580
  %5583 = or i1 %5582, %5579
  br i1 %5578, label %5584, label %5843

; <label>:5584                                    ; preds = %5549
  %5585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5586 = extractvalue %dx.types.CBufRet.f32 %5585, 2
  %5587 = extractvalue %dx.types.CBufRet.f32 %5585, 3
  %5588 = fmul fast float %5586, %85
  %5589 = fmul fast float %5587, %86
  %5590 = call float @dx.op.unary.f32(i32 7, float %5588)  ; Saturate(value)
  %5591 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  %5592 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %41, float %5590, float %5591, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5593 = extractvalue %dx.types.ResRet.f32 %5592, 0
  %5594 = extractvalue %dx.types.ResRet.f32 %5592, 1
  %5595 = extractvalue %dx.types.ResRet.f32 %5592, 2
  %5596 = extractvalue %dx.types.ResRet.f32 %5592, 3
  %5597 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %41, float %5590, float %5591, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5598 = extractvalue %dx.types.ResRet.f32 %5597, 0
  %5599 = extractvalue %dx.types.ResRet.f32 %5597, 1
  %5600 = extractvalue %dx.types.ResRet.f32 %5597, 2
  %5601 = extractvalue %dx.types.ResRet.f32 %5597, 3
  %5602 = call float @dx.op.binary.f32(i32 35, float %5594, float %5595)  ; FMax(a,b)
  %5603 = call float @dx.op.binary.f32(i32 35, float %5593, float %5602)  ; FMax(a,b)
  %5604 = call float @dx.op.binary.f32(i32 35, float %5603, float %5596)  ; FMax(a,b)
  %5605 = call float @dx.op.binary.f32(i32 36, float %5599, float %5600)  ; FMin(a,b)
  %5606 = call float @dx.op.binary.f32(i32 36, float %5598, float %5605)  ; FMin(a,b)
  %5607 = call float @dx.op.binary.f32(i32 36, float %5606, float %5601)  ; FMin(a,b)
  %5608 = fmul fast float %5604, 2.550000e+02
  %5609 = fadd fast float %5608, 0x3F70101020000000
  %5610 = fptoui float %5609 to i32
  %5611 = fmul fast float %5607, 2.550000e+02
  %5612 = fadd fast float %5611, 0x3F70101020000000
  %5613 = fptoui float %5612 to i32
  %5614 = icmp ult i32 %5610, %5613
  br i1 %5614, label %5615, label %5783

; <label>:5615                                    ; preds = %5584
  %5616 = fcmp fast ogt float %72, 9.843750e-01
  %5617 = fadd fast float %73, -4.000000e+00
  %5618 = select i1 %5616, float -4.000000e+00, float %5617
  %5619 = call float @dx.op.binary.f32(i32 35, float %5618, float 0.000000e+00)  ; FMax(a,b)
  %5620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5621 = extractvalue %dx.types.CBufRet.f32 %5620, 0
  %5622 = fadd fast float %5621, %5619
  %5623 = extractvalue %dx.types.CBufRet.f32 %5620, 2
  %5624 = fmul fast float %5622, %5623
  %5625 = call float @dx.op.unary.f32(i32 23, float %5624)  ; Log(value)
  %5626 = extractvalue %dx.types.CBufRet.f32 %5620, 3
  %5627 = fmul fast float %5626, %5625
  %5628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5629 = extractvalue %dx.types.CBufRet.f32 %5628, 2
  %5630 = fmul fast float %5627, %5629
  %5631 = call float @dx.op.unary.f32(i32 7, float %5630)  ; Saturate(value)
  %5632 = uitofp i32 %5610 to float
  %5633 = uitofp i32 %5613 to float
  %5634 = fadd fast float %5632, 5.000000e-01
  %5635 = fadd fast float %5633, 5.000000e-01
  %5636 = fmul fast float %5629, %5634
  %5637 = fmul fast float %5629, %5635
  %5638 = fadd fast float %5636, 0x3F0FFB4800000000
  %5639 = fadd fast float %5637, 0xBF0FFB4800000000
  %5640 = call float @dx.op.binary.f32(i32 35, float %5631, float %5638)  ; FMax(a,b)
  %5641 = call float @dx.op.binary.f32(i32 36, float %5640, float %5639)  ; FMin(a,b)
  %5642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5643 = extractvalue %dx.types.CBufRet.f32 %5642, 1
  %5644 = extractvalue %dx.types.CBufRet.f32 %5642, 2
  %5645 = extractvalue %dx.types.CBufRet.f32 %5642, 0
  %5646 = fmul fast float %5643, %5641
  %5647 = fadd fast float %5645, %5646
  %5648 = fadd fast float %5645, %5644
  %5649 = fsub fast float %5643, %5644
  %5650 = fadd fast float %5649, %5645
  %5651 = call float @dx.op.binary.f32(i32 35, float %5647, float %5648)  ; FMax(a,b)
  %5652 = call float @dx.op.binary.f32(i32 36, float %5651, float %5650)  ; FMin(a,b)
  %5653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %5590, float %5591, float %5652, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5654 = extractvalue %dx.types.ResRet.f32 %5653, 0
  %5655 = extractvalue %dx.types.ResRet.f32 %5653, 1
  %5656 = extractvalue %dx.types.ResRet.f32 %5653, 2
  %5657 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5658 = extractvalue %dx.types.CBufRet.i32 %5657, 0
  %5659 = extractvalue %dx.types.CBufRet.i32 %5657, 1
  %5660 = uitofp i32 %5658 to float
  %5661 = uitofp i32 %5659 to float
  %5662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5663 = extractvalue %dx.types.CBufRet.f32 %5662, 0
  %5664 = extractvalue %dx.types.CBufRet.f32 %5662, 1
  %5665 = fmul fast float %5660, %5590
  %5666 = fmul fast float %5661, %5591
  %5667 = fadd fast float %5665, -5.000000e-01
  %5668 = fadd fast float %5666, -5.000000e-01
  %5669 = call float @dx.op.unary.f32(i32 22, float %5667)  ; Frc(value)
  %5670 = call float @dx.op.unary.f32(i32 22, float %5668)  ; Frc(value)
  %5671 = fmul fast float %5669, %5669
  %5672 = fmul fast float %5671, %5669
  %5673 = fsub fast float 3.000000e+00, %5669
  %5674 = fmul fast float %5671, %5673
  %5675 = fmul fast float %5669, 3.000000e+00
  %5676 = fmul fast float %5672, 3.000000e+00
  %5677 = fmul fast float %5671, 6.000000e+00
  %5678 = fsub fast float %5676, %5677
  %5679 = fadd fast float %5678, 4.000000e+00
  %5680 = fmul fast float %5679, 0x3FC5555560000000
  %5681 = fmul fast float %5672, -3.000000e+00
  %5682 = fadd fast float %5671, %5669
  %5683 = fmul fast float %5682, 3.000000e+00
  %5684 = fadd fast float %5681, 1.000000e+00
  %5685 = fadd fast float %5684, %5683
  %5686 = fmul fast float %5672, 0x3FC5555560000000
  %5687 = fmul fast float %5670, %5670
  %5688 = fmul fast float %5687, %5670
  %5689 = fsub fast float 3.000000e+00, %5670
  %5690 = fmul fast float %5687, %5689
  %5691 = fmul fast float %5670, 3.000000e+00
  %5692 = fmul fast float %5688, 3.000000e+00
  %5693 = fmul fast float %5687, 6.000000e+00
  %5694 = fsub fast float %5692, %5693
  %5695 = fadd fast float %5694, 4.000000e+00
  %5696 = fmul fast float %5695, 0x3FC5555560000000
  %5697 = fmul fast float %5688, -3.000000e+00
  %5698 = fadd fast float %5687, %5670
  %5699 = fmul fast float %5698, 3.000000e+00
  %5700 = fadd fast float %5697, 1.000000e+00
  %5701 = fadd fast float %5700, %5699
  %5702 = fmul fast float %5688, 0x3FC5555560000000
  %5703 = fadd fast float %5669, 1.000000e+00
  %5704 = fsub fast float 1.000000e+00, %5675
  %5705 = fadd fast float %5704, %5674
  %5706 = fadd fast float %5705, %5679
  %5707 = fmul fast float %5706, 0x3FC5555560000000
  %5708 = fdiv fast float %5680, %5707
  %5709 = fsub fast float %5703, %5708
  %5710 = fsub fast float 1.000000e+00, %5669
  %5711 = fadd fast float %5685, %5672
  %5712 = fmul fast float %5711, 0x3FC5555560000000
  %5713 = fdiv fast float %5686, %5712
  %5714 = fadd fast float %5710, %5713
  %5715 = fadd fast float %5670, 1.000000e+00
  %5716 = fsub fast float 1.000000e+00, %5691
  %5717 = fadd fast float %5716, %5690
  %5718 = fadd fast float %5717, %5695
  %5719 = fmul fast float %5718, 0x3FC5555560000000
  %5720 = fdiv fast float %5696, %5719
  %5721 = fsub fast float %5715, %5720
  %5722 = fsub fast float 1.000000e+00, %5670
  %5723 = fadd fast float %5701, %5688
  %5724 = fmul fast float %5723, 0x3FC5555560000000
  %5725 = fdiv fast float %5702, %5724
  %5726 = fadd fast float %5725, %5722
  %5727 = fmul fast float %5709, %5663
  %5728 = fsub fast float %5590, %5727
  %5729 = fmul fast float %5714, %5663
  %5730 = fadd fast float %5729, %5590
  %5731 = fmul fast float %5726, %5664
  %5732 = fadd fast float %5731, %5591
  %5733 = fmul fast float %5721, %5664
  %5734 = fsub fast float %5591, %5733
  %5735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %5728, float %5734, float %5652, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5736 = extractvalue %dx.types.ResRet.f32 %5735, 0
  %5737 = extractvalue %dx.types.ResRet.f32 %5735, 1
  %5738 = extractvalue %dx.types.ResRet.f32 %5735, 2
  %5739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %5730, float %5734, float %5652, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5740 = extractvalue %dx.types.ResRet.f32 %5739, 0
  %5741 = extractvalue %dx.types.ResRet.f32 %5739, 1
  %5742 = extractvalue %dx.types.ResRet.f32 %5739, 2
  %5743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %5728, float %5732, float %5652, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5744 = extractvalue %dx.types.ResRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.ResRet.f32 %5743, 1
  %5746 = extractvalue %dx.types.ResRet.f32 %5743, 2
  %5747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %5730, float %5732, float %5652, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5748 = extractvalue %dx.types.ResRet.f32 %5747, 0
  %5749 = extractvalue %dx.types.ResRet.f32 %5747, 1
  %5750 = extractvalue %dx.types.ResRet.f32 %5747, 2
  %5751 = fsub fast float %5744, %5736
  %5752 = fsub fast float %5745, %5737
  %5753 = fsub fast float %5746, %5738
  %5754 = fmul fast float %5751, %5724
  %5755 = fmul fast float %5752, %5724
  %5756 = fmul fast float %5753, %5724
  %5757 = fadd fast float %5754, %5736
  %5758 = fadd fast float %5755, %5737
  %5759 = fadd fast float %5756, %5738
  %5760 = fsub fast float %5748, %5740
  %5761 = fsub fast float %5749, %5741
  %5762 = fsub fast float %5750, %5742
  %5763 = fmul fast float %5760, %5724
  %5764 = fmul fast float %5761, %5724
  %5765 = fmul fast float %5762, %5724
  %5766 = fsub fast float %5740, %5757
  %5767 = fadd fast float %5766, %5763
  %5768 = fsub fast float %5741, %5758
  %5769 = fadd fast float %5768, %5764
  %5770 = fsub fast float %5742, %5759
  %5771 = fadd fast float %5770, %5765
  %5772 = fmul fast float %5767, %5712
  %5773 = fmul fast float %5769, %5712
  %5774 = fmul fast float %5771, %5712
  %5775 = fadd fast float %5772, %5757
  %5776 = fadd fast float %5773, %5758
  %5777 = fadd fast float %5774, %5759
  %5778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5779 = extractvalue %dx.types.CBufRet.f32 %5778, 1
  %5780 = fmul fast float %5775, %5779
  %5781 = fmul fast float %5776, %5779
  %5782 = fmul fast float %5777, %5779
  br label %5783

; <label>:5783                                    ; preds = %5615, %5584
  %5784 = phi float [ %5654, %5615 ], [ 1.000000e+00, %5584 ]
  %5785 = phi float [ %5655, %5615 ], [ 1.000000e+00, %5584 ]
  %5786 = phi float [ %5656, %5615 ], [ 1.000000e+00, %5584 ]
  %5787 = phi float [ %5780, %5615 ], [ 0.000000e+00, %5584 ]
  %5788 = phi float [ %5781, %5615 ], [ 0.000000e+00, %5584 ]
  %5789 = phi float [ %5782, %5615 ], [ 0.000000e+00, %5584 ]
  %5790 = fmul fast float %5787, %5557
  %5791 = fmul fast float %5788, %5559
  %5792 = fmul fast float %5789, %5561
  %5793 = call float @dx.op.dot3.f32(i32 55, float %5784, float %5785, float %5786, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5794 = call float @dx.op.dot3.f32(i32 55, float %5790, float %5791, float %5792, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5795 = select i1 %201, float %5793, float %5784
  %5796 = select i1 %201, float %5793, float %5785
  %5797 = select i1 %201, float 1.000000e+00, float %5786
  %5798 = select i1 %201, float %5794, float %5790
  %5799 = select i1 %201, float 0.000000e+00, float %5791
  %5800 = select i1 %201, float 0.000000e+00, float %5792
  %5801 = fmul fast float %5795, %5574
  %5802 = fmul fast float %5796, %5575
  %5803 = fmul fast float %5797, %5576
  %5804 = fadd fast float %5801, %5798
  %5805 = fadd fast float %5802, %5799
  %5806 = fadd fast float %5800, %5803
  %5807 = fmul fast float %5795, %5550
  %5808 = fmul fast float %5796, %5551
  %5809 = fmul fast float %5797, %5552
  %5810 = fmul fast float %85, 2.000000e+00
  %5811 = fmul fast float %5810, %5586
  %5812 = fmul fast float %86, 2.000000e+00
  %5813 = fmul fast float %5812, %5587
  %5814 = fsub fast float 1.000000e+00, %5811
  %5815 = fsub fast float 1.000000e+00, %5813
  %5816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5817 = extractvalue %dx.types.CBufRet.f32 %5816, 0
  %5818 = extractvalue %dx.types.CBufRet.f32 %5816, 1
  %5819 = extractvalue %dx.types.CBufRet.f32 %5816, 2
  %5820 = fmul fast float %5814, %5817
  %5821 = fmul fast float %5814, %5818
  %5822 = fmul fast float %5814, %5819
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 0
  %5825 = extractvalue %dx.types.CBufRet.f32 %5823, 1
  %5826 = extractvalue %dx.types.CBufRet.f32 %5823, 2
  %5827 = fmul fast float %5815, %5824
  %5828 = fmul fast float %5815, %5825
  %5829 = fmul fast float %5815, %5826
  %5830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5831 = extractvalue %dx.types.CBufRet.f32 %5830, 0
  %5832 = extractvalue %dx.types.CBufRet.f32 %5830, 1
  %5833 = extractvalue %dx.types.CBufRet.f32 %5830, 2
  %5834 = fadd fast float %5827, %5831
  %5835 = fadd fast float %5834, %5820
  %5836 = fadd fast float %5828, %5832
  %5837 = fadd fast float %5836, %5821
  %5838 = fadd fast float %5829, %5833
  %5839 = fadd fast float %5838, %5822
  %5840 = fmul fast float %5835, %162
  %5841 = fmul fast float %5837, %162
  %5842 = fmul fast float %5839, %162
  br label %5843

; <label>:5843                                    ; preds = %5783, %5549
  %5844 = phi float [ %5840, %5783 ], [ %140, %5549 ]
  %5845 = phi float [ %5841, %5783 ], [ %141, %5549 ]
  %5846 = phi float [ %5842, %5783 ], [ %142, %5549 ]
  %5847 = phi float [ %162, %5783 ], [ %73, %5549 ]
  %5848 = phi float [ %5804, %5783 ], [ %5574, %5549 ]
  %5849 = phi float [ %5805, %5783 ], [ %5575, %5549 ]
  %5850 = phi float [ %5806, %5783 ], [ %5576, %5549 ]
  %5851 = phi float [ %5807, %5783 ], [ %5550, %5549 ]
  %5852 = phi float [ %5808, %5783 ], [ %5551, %5549 ]
  %5853 = phi float [ %5809, %5783 ], [ %5552, %5549 ]
  %5854 = phi float [ %5784, %5783 ], [ 1.000000e+00, %5549 ]
  br i1 %5583, label %7009, label %5855

; <label>:5855                                    ; preds = %5843
  %5856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5857 = extractvalue %dx.types.CBufRet.f32 %5856, 0
  %5858 = extractvalue %dx.types.CBufRet.f32 %5856, 1
  %5859 = extractvalue %dx.types.CBufRet.f32 %5856, 2
  %5860 = extractvalue %dx.types.CBufRet.f32 %5856, 3
  %5861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5862 = extractvalue %dx.types.CBufRet.f32 %5861, 0
  %5863 = extractvalue %dx.types.CBufRet.f32 %5861, 1
  %5864 = extractvalue %dx.types.CBufRet.f32 %5861, 2
  %5865 = extractvalue %dx.types.CBufRet.f32 %5861, 3
  %5866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5866, 0
  %5868 = extractvalue %dx.types.CBufRet.f32 %5866, 1
  %5869 = extractvalue %dx.types.CBufRet.f32 %5866, 2
  %5870 = extractvalue %dx.types.CBufRet.f32 %5866, 3
  %5871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.f32 %5871, 0
  %5873 = extractvalue %dx.types.CBufRet.f32 %5871, 1
  %5874 = extractvalue %dx.types.CBufRet.f32 %5871, 2
  %5875 = extractvalue %dx.types.CBufRet.f32 %5871, 3
  %5876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5876, 3
  %5878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5879 = extractvalue %dx.types.CBufRet.f32 %5878, 3
  %5880 = extractvalue %dx.types.CBufRet.f32 %5878, 0
  %5881 = extractvalue %dx.types.CBufRet.f32 %5878, 1
  %5882 = extractvalue %dx.types.CBufRet.f32 %5878, 2
  %5883 = fcmp fast olt float %5882, -5.000000e-01
  %5884 = call float @dx.op.dot3.f32(i32 55, float %5844, float %5845, float %5846, float %5844, float %5845, float %5846)  ; Dot3(ax,ay,az,bx,by,bz)
  %5885 = call float @dx.op.unary.f32(i32 25, float %5884)  ; Rsqrt(value)
  %5886 = fmul fast float %5885, %5884
  %5887 = fmul fast float %5885, %5844
  %5888 = fmul fast float %5885, %5845
  %5889 = fmul fast float %5885, %5846
  %5890 = fadd fast float %5886, %5860
  %5891 = call float @dx.op.dot3.f32(i32 55, float %5887, float %5888, float %5889, float %5857, float %5858, float %5859)  ; Dot3(ax,ay,az,bx,by,bz)
  %5892 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5893 = extractvalue %dx.types.CBufRet.i32 %5892, 1
  %5894 = and i32 %5893, 1
  %5895 = icmp ne i32 %5894, 0
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 2
  %5898 = fcmp fast ogt float %5897, 0.000000e+00
  %5899 = and i1 %5895, %5898
  br i1 %5899, label %5900, label %6306, !dx.controlflow.hints !114

; <label>:5900                                    ; preds = %5855
  %5901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5901, 3
  %5903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5904 = extractvalue %dx.types.CBufRet.f32 %5903, 2
  %5905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5906 = extractvalue %dx.types.CBufRet.f32 %5905, 2
  %5907 = fsub fast float %5904, %5906
  %5908 = and i32 %5893, 2
  %5909 = extractvalue %dx.types.CBufRet.i32 %5892, 0
  %5910 = call i32 @dx.op.binary.i32(i32 40, i32 %5909, i32 3)  ; UMin(a,b)
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 0
  %5913 = extractvalue %dx.types.CBufRet.f32 %5911, 1
  %5914 = extractvalue %dx.types.CBufRet.f32 %5905, 0
  %5915 = extractvalue %dx.types.CBufRet.f32 %5905, 1
  %5916 = fsub fast float %5912, %5914
  %5917 = fsub fast float %5913, %5915
  %5918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5919 = extractvalue %dx.types.CBufRet.f32 %5918, 0
  %5920 = fcmp fast ogt float %5919, 0.000000e+00
  %5921 = fsub fast float -0.000000e+00, %5916
  %5922 = fsub fast float -0.000000e+00, %5917
  %5923 = call float @dx.op.dot2.f32(i32 54, float %5887, float %5888, float %5887, float %5888)  ; Dot2(ax,ay,bx,by)
  %5924 = call float @dx.op.dot2.f32(i32 54, float %5887, float %5888, float %5921, float %5922)  ; Dot2(ax,ay,bx,by)
  %5925 = fmul fast float %5924, 2.000000e+00
  %5926 = call float @dx.op.dot2.f32(i32 54, float %5921, float %5922, float %5921, float %5922)  ; Dot2(ax,ay,bx,by)
  %5927 = fmul fast float %5919, %5919
  %5928 = fsub fast float %5926, %5927
  %5929 = fmul fast float %5925, %5925
  %5930 = fmul fast float %5923, 4.000000e+00
  %5931 = fmul fast float %5930, %5928
  %5932 = fsub fast float %5929, %5931
  %5933 = fcmp fast ogt float %5932, 0.000000e+00
  br i1 %5933, label %5934, label %5949

; <label>:5934                                    ; preds = %5900
  %5935 = fcmp fast ogt float %5925, 0.000000e+00
  %5936 = call float @dx.op.unary.f32(i32 24, float %5932)  ; Sqrt(value)
  %5937 = fsub fast float -0.000000e+00, %5936
  %5938 = select i1 %5935, float %5936, float %5937
  %5939 = fadd fast float %5938, %5925
  %5940 = fmul float %5939, -5.000000e-01
  %5941 = fdiv fast float %5940, %5923
  %5942 = call float @dx.op.binary.f32(i32 35, float %5941, float 0.000000e+00)  ; FMax(a,b)
  %5943 = call float @dx.op.binary.f32(i32 36, float %5886, float %5942)  ; FMin(a,b)
  %5944 = fdiv fast float %5928, %5940
  %5945 = call float @dx.op.binary.f32(i32 35, float %5944, float 0.000000e+00)  ; FMax(a,b)
  %5946 = call float @dx.op.binary.f32(i32 36, float %5886, float %5945)  ; FMin(a,b)
  %5947 = call float @dx.op.binary.f32(i32 36, float %5943, float %5946)  ; FMin(a,b)
  %5948 = call float @dx.op.binary.f32(i32 35, float %5943, float %5946)  ; FMax(a,b)
  br label %5949

; <label>:5949                                    ; preds = %5934, %5900
  %5950 = phi float [ %5948, %5934 ], [ -1.000000e+00, %5900 ]
  %5951 = phi float [ %5947, %5934 ], [ -1.000000e+00, %5900 ]
  %5952 = phi i1 [ true, %5934 ], [ false, %5900 ]
  %5953 = and i1 %5920, %5952
  br i1 %5953, label %5954, label %5956

; <label>:5954                                    ; preds = %5949
  %5955 = fcmp fast oeq float %5951, %5950
  br i1 %5955, label %6259, label %5957

; <label>:5956                                    ; preds = %5949
  br i1 %5920, label %6259, label %5957

; <label>:5957                                    ; preds = %5956, %5954
  %5958 = phi float [ %5886, %5956 ], [ %5950, %5954 ]
  %5959 = phi float [ 0.000000e+00, %5956 ], [ %5951, %5954 ]
  %5960 = icmp ne i32 %5908, 0
  %5961 = fmul fast float %5958, %5889
  %5962 = fadd fast float %5961, %5902
  %5963 = fmul fast float %5962, %5958
  %5964 = select i1 %5960, float 0.000000e+00, float %5963
  %5965 = fcmp fast oeq float %5889, 0.000000e+00
  %5966 = fdiv fast float %5907, %5889
  %5967 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5966)  ; FMax(a,b)
  %5968 = select i1 %5965, float %5958, float %5967
  %5969 = call float @dx.op.binary.f32(i32 36, float %5958, float %5968)  ; FMin(a,b)
  %5970 = fcmp fast ogt float %5889, 0.000000e+00
  %5971 = fcmp fast olt float %5907, 0.000000e+00
  br i1 %5970, label %5972, label %6029

; <label>:5972                                    ; preds = %5957
  %5973 = icmp eq i32 %5908, 0
  br i1 %5971, label %5974, label %6018

; <label>:5974                                    ; preds = %5972
  %5975 = select i1 %5973, float %5958, float 0.000000e+00
  %5976 = fsub fast float -0.000000e+00, %5975
  %5977 = call float @dx.op.unary.f32(i32 6, float %5976)  ; FAbs(value)
  %5978 = fmul fast float %5975, %5889
  %5979 = fadd fast float %5978, %5902
  %5980 = fmul fast float %5977, %5979
  %5981 = fsub fast float %5964, %5980
  %5982 = fsub fast float %5958, %5977
  %5983 = select i1 %5973, float %5982, float 0.000000e+00
  %5984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5985 = extractvalue %dx.types.CBufRet.f32 %5984, 0
  %5986 = extractvalue %dx.types.CBufRet.f32 %5984, 1
  %5987 = extractvalue %dx.types.CBufRet.f32 %5984, 2
  %5988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5989 = extractvalue %dx.types.CBufRet.f32 %5988, 0
  %5990 = extractvalue %dx.types.CBufRet.f32 %5988, 1
  %5991 = extractvalue %dx.types.CBufRet.f32 %5988, 2
  %5992 = extractvalue %dx.types.CBufRet.f32 %5988, 3
  %5993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5994 = extractvalue %dx.types.CBufRet.f32 %5993, 3
  %5995 = call float @dx.op.binary.f32(i32 36, float %5981, float %5994)  ; FMin(a,b)
  %5996 = fmul fast float %5992, %5983
  %5997 = call float @dx.op.unary.f32(i32 7, float %5996)  ; Saturate(value)
  %5998 = fsub fast float %5989, %5985
  %5999 = fsub fast float %5990, %5986
  %6000 = fsub fast float %5991, %5987
  %6001 = fmul fast float %5997, %5998
  %6002 = fmul fast float %5997, %5999
  %6003 = fmul fast float %5997, %6000
  %6004 = fadd fast float %6001, %5985
  %6005 = fadd fast float %6002, %5986
  %6006 = fadd fast float %6003, %5987
  %6007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6008 = extractvalue %dx.types.CBufRet.f32 %6007, 0
  %6009 = extractvalue %dx.types.CBufRet.f32 %6007, 1
  %6010 = fadd fast float %6009, %6008
  %6011 = call float @dx.op.unary.f32(i32 7, float %6010)  ; Saturate(value)
  %6012 = extractvalue %dx.types.CBufRet.f32 %6007, 2
  %6013 = extractvalue %dx.types.CBufRet.f32 %6007, 3
  %6014 = fadd fast float %6013, %6012
  %6015 = call float @dx.op.unary.f32(i32 7, float %6014)  ; Saturate(value)
  %6016 = fmul fast float %6011, %5995
  %6017 = fmul fast float %6016, %6015
  br label %6259

; <label>:6018                                    ; preds = %5972
  br i1 %5973, label %6019, label %6040

; <label>:6019                                    ; preds = %6018
  %6020 = call float @dx.op.binary.f32(i32 36, float %5969, float %5959)  ; FMin(a,b)
  %6021 = fsub fast float %5969, %6020
  %6022 = fsub fast float %6021, %5958
  %6023 = call float @dx.op.unary.f32(i32 6, float %6022)  ; FAbs(value)
  %6024 = fadd fast float %6021, %5958
  %6025 = fmul fast float %6024, %5889
  %6026 = fadd fast float %6025, %5902
  %6027 = fmul fast float %6026, %6023
  %6028 = fsub fast float %5964, %6027
  br label %6040

; <label>:6029                                    ; preds = %5957
  br i1 %5971, label %6030, label %6040

; <label>:6030                                    ; preds = %6029
  %6031 = call float @dx.op.binary.f32(i32 35, float %5959, float %5969)  ; FMax(a,b)
  %6032 = icmp eq i32 %5908, 0
  %6033 = select i1 %6032, float %5969, float 0.000000e+00
  %6034 = fsub fast float -0.000000e+00, %6033
  %6035 = call float @dx.op.unary.f32(i32 6, float %6034)  ; FAbs(value)
  %6036 = fmul fast float %6033, %5889
  %6037 = fadd fast float %6036, %5902
  %6038 = fmul fast float %6035, %6037
  %6039 = fsub fast float %5964, %6038
  br label %6040

; <label>:6040                                    ; preds = %6030, %6029, %6019, %6018
  %6041 = phi float [ %5959, %6018 ], [ %5959, %6019 ], [ %6031, %6030 ], [ %5959, %6029 ]
  %6042 = phi float [ 0.000000e+00, %6018 ], [ %6023, %6019 ], [ %6035, %6030 ], [ 0.000000e+00, %6029 ]
  %6043 = phi float [ %5964, %6018 ], [ %6028, %6019 ], [ %6039, %6030 ], [ %5964, %6029 ]
  %6044 = phi float [ %5969, %6018 ], [ %5969, %6019 ], [ %5958, %6030 ], [ %5958, %6029 ]
  %6045 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 0
  store float -1.000000e+00, float* %6045, align 4, !tbaa !104, !noalias !115
  %6046 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 1
  store float -1.000000e+00, float* %6046, align 4, !tbaa !104, !noalias !115
  %6047 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 2
  store float -1.000000e+00, float* %6047, align 4, !tbaa !104, !noalias !115
  %6048 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 0
  store float -1.000000e+00, float* %6048, align 4, !tbaa !104, !noalias !115
  %6049 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 1
  store float -1.000000e+00, float* %6049, align 4, !tbaa !104, !noalias !115
  %6050 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 2
  store float -1.000000e+00, float* %6050, align 4, !tbaa !104, !noalias !115
  %6051 = icmp sgt i32 %5910, 0
  br i1 %6051, label %6052, label %6113

; <label>:6052                                    ; preds = %6040
  br label %6053

; <label>:6053                                    ; preds = %6102, %6052
  %6054 = phi i32 [ %6103, %6102 ], [ 0, %6052 ]
  %6055 = phi i32 [ %6104, %6102 ], [ 0, %6052 ]
  %6056 = add nuw i32 %6055, 171
  %6057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %6056)  ; CBufferLoadLegacy(handle,regIndex)
  %6058 = extractvalue %dx.types.CBufRet.f32 %6057, 0
  %6059 = extractvalue %dx.types.CBufRet.f32 %6057, 1
  %6060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6061 = extractvalue %dx.types.CBufRet.f32 %6060, 0
  %6062 = extractvalue %dx.types.CBufRet.f32 %6060, 1
  %6063 = fsub fast float %6058, %6061
  %6064 = fsub fast float %6059, %6062
  %6065 = extractvalue %dx.types.CBufRet.f32 %6057, 2
  %6066 = fsub fast float -0.000000e+00, %6063
  %6067 = fsub fast float -0.000000e+00, %6064
  %6068 = call float @dx.op.dot2.f32(i32 54, float %5887, float %5888, float %6066, float %6067)  ; Dot2(ax,ay,bx,by)
  %6069 = fmul fast float %6068, 2.000000e+00
  %6070 = call float @dx.op.dot2.f32(i32 54, float %6066, float %6067, float %6066, float %6067)  ; Dot2(ax,ay,bx,by)
  %6071 = fmul fast float %6065, %6065
  %6072 = fsub fast float %6070, %6071
  %6073 = fmul fast float %6069, %6069
  %6074 = fmul fast float %5930, %6072
  %6075 = fsub fast float %6073, %6074
  %6076 = fcmp fast ogt float %6075, 0.000000e+00
  br i1 %6076, label %6077, label %6092

; <label>:6077                                    ; preds = %6053
  %6078 = fcmp fast ogt float %6069, 0.000000e+00
  %6079 = call float @dx.op.unary.f32(i32 24, float %6075)  ; Sqrt(value)
  %6080 = fsub fast float -0.000000e+00, %6079
  %6081 = select i1 %6078, float %6079, float %6080
  %6082 = fadd fast float %6081, %6069
  %6083 = fmul float %6082, -5.000000e-01
  %6084 = fdiv fast float %6083, %5923
  %6085 = call float @dx.op.binary.f32(i32 35, float %6084, float 0.000000e+00)  ; FMax(a,b)
  %6086 = call float @dx.op.binary.f32(i32 36, float %5958, float %6085)  ; FMin(a,b)
  %6087 = fdiv fast float %6072, %6083
  %6088 = call float @dx.op.binary.f32(i32 35, float %6087, float 0.000000e+00)  ; FMax(a,b)
  %6089 = call float @dx.op.binary.f32(i32 36, float %5958, float %6088)  ; FMin(a,b)
  %6090 = call float @dx.op.binary.f32(i32 36, float %6086, float %6089)  ; FMin(a,b)
  %6091 = call float @dx.op.binary.f32(i32 35, float %6086, float %6089)  ; FMax(a,b)
  br label %6092

; <label>:6092                                    ; preds = %6077, %6053
  %6093 = phi float [ %6091, %6077 ], [ -1.000000e+00, %6053 ]
  %6094 = phi float [ %6090, %6077 ], [ -1.000000e+00, %6053 ]
  %6095 = phi i1 [ true, %6077 ], [ false, %6053 ]
  br i1 %6095, label %6096, label %6102

; <label>:6096                                    ; preds = %6092
  %6097 = call float @dx.op.binary.f32(i32 35, float %6041, float %6094)  ; FMax(a,b)
  %6098 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %6055
  store float %6097, float* %6098, align 4, !tbaa !104, !noalias !115
  %6099 = call float @dx.op.binary.f32(i32 35, float %6041, float %6093)  ; FMax(a,b)
  %6100 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %6055
  store float %6099, float* %6100, align 4, !tbaa !104, !noalias !115
  %6101 = add nsw i32 %6054, 1
  br label %6102

; <label>:6102                                    ; preds = %6096, %6092
  %6103 = phi i32 [ %6101, %6096 ], [ %6054, %6092 ]
  %6104 = add nuw nsw i32 %6055, 1
  %6105 = icmp eq i32 %6104, %5910
  br i1 %6105, label %6106, label %6053

; <label>:6106                                    ; preds = %6102
  %6107 = load float, float* %6047, align 4, !tbaa !104, !alias.scope !131, !noalias !134
  %6108 = load float, float* %6046, align 4, !tbaa !104, !alias.scope !137, !noalias !138
  %6109 = load float, float* %6045, align 4, !tbaa !104, !alias.scope !139, !noalias !140
  %6110 = load float, float* %6050, align 4, !tbaa !104, !alias.scope !141, !noalias !144
  %6111 = load float, float* %6049, align 4, !tbaa !104, !alias.scope !147, !noalias !148
  %6112 = load float, float* %6048, align 4, !tbaa !104, !alias.scope !149, !noalias !150
  br label %6113

; <label>:6113                                    ; preds = %6106, %6040
  %6114 = phi float [ -1.000000e+00, %6040 ], [ %6112, %6106 ]
  %6115 = phi float [ -1.000000e+00, %6040 ], [ %6111, %6106 ]
  %6116 = phi float [ -1.000000e+00, %6040 ], [ %6110, %6106 ]
  %6117 = phi float [ -1.000000e+00, %6040 ], [ %6109, %6106 ]
  %6118 = phi float [ -1.000000e+00, %6040 ], [ %6108, %6106 ]
  %6119 = phi float [ -1.000000e+00, %6040 ], [ %6107, %6106 ]
  %6120 = phi i32 [ 0, %6040 ], [ %6103, %6106 ]
  %6121 = call float @dx.op.binary.f32(i32 36, float %6118, float %6119)  ; FMin(a,b)
  %6122 = call float @dx.op.binary.f32(i32 36, float %6117, float %6121)  ; FMin(a,b)
  %6123 = call float @dx.op.binary.f32(i32 35, float %6117, float %6118)  ; FMax(a,b)
  %6124 = call float @dx.op.binary.f32(i32 36, float %6123, float %6119)  ; FMin(a,b)
  %6125 = call float @dx.op.binary.f32(i32 36, float %6117, float %6118)  ; FMin(a,b)
  %6126 = call float @dx.op.binary.f32(i32 35, float %6125, float %6124)  ; FMax(a,b)
  %6127 = call float @dx.op.binary.f32(i32 35, float %6118, float %6119)  ; FMax(a,b)
  %6128 = call float @dx.op.binary.f32(i32 35, float %6117, float %6127)  ; FMax(a,b)
  store float %6122, float* %6045, align 4, !tbaa !104, !alias.scope !139, !noalias !140
  store float %6126, float* %6046, align 4, !tbaa !104, !alias.scope !137, !noalias !138
  store float %6128, float* %6047, align 4, !tbaa !104, !alias.scope !131, !noalias !134
  %6129 = call float @dx.op.binary.f32(i32 36, float %6115, float %6116)  ; FMin(a,b)
  %6130 = call float @dx.op.binary.f32(i32 36, float %6114, float %6129)  ; FMin(a,b)
  %6131 = call float @dx.op.binary.f32(i32 35, float %6114, float %6115)  ; FMax(a,b)
  %6132 = call float @dx.op.binary.f32(i32 36, float %6131, float %6116)  ; FMin(a,b)
  %6133 = call float @dx.op.binary.f32(i32 36, float %6114, float %6115)  ; FMin(a,b)
  %6134 = call float @dx.op.binary.f32(i32 35, float %6133, float %6132)  ; FMax(a,b)
  %6135 = call float @dx.op.binary.f32(i32 35, float %6115, float %6116)  ; FMax(a,b)
  %6136 = call float @dx.op.binary.f32(i32 35, float %6114, float %6135)  ; FMax(a,b)
  store float %6130, float* %6048, align 4, !tbaa !104, !alias.scope !149, !noalias !150
  store float %6134, float* %6049, align 4, !tbaa !104, !alias.scope !147, !noalias !148
  store float %6136, float* %6050, align 4, !tbaa !104, !alias.scope !141, !noalias !144
  %6137 = sub nsw i32 3, %6120
  %6138 = icmp sgt i32 %6137, 2
  br i1 %6138, label %6139, label %6177

; <label>:6139                                    ; preds = %6113
  %6140 = icmp eq i32 %5908, 0
  %6141 = fsub fast float %5958, %6042
  %6142 = select i1 %6140, float %6141, float %6042
  %6143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6144 = extractvalue %dx.types.CBufRet.f32 %6143, 0
  %6145 = extractvalue %dx.types.CBufRet.f32 %6143, 1
  %6146 = extractvalue %dx.types.CBufRet.f32 %6143, 2
  %6147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6148 = extractvalue %dx.types.CBufRet.f32 %6147, 0
  %6149 = extractvalue %dx.types.CBufRet.f32 %6147, 1
  %6150 = extractvalue %dx.types.CBufRet.f32 %6147, 2
  %6151 = extractvalue %dx.types.CBufRet.f32 %6147, 3
  %6152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6153 = extractvalue %dx.types.CBufRet.f32 %6152, 3
  %6154 = call float @dx.op.binary.f32(i32 36, float %6043, float %6153)  ; FMin(a,b)
  %6155 = fmul fast float %6151, %6142
  %6156 = call float @dx.op.unary.f32(i32 7, float %6155)  ; Saturate(value)
  %6157 = fsub fast float %6148, %6144
  %6158 = fsub fast float %6149, %6145
  %6159 = fsub fast float %6150, %6146
  %6160 = fmul fast float %6156, %6157
  %6161 = fmul fast float %6156, %6158
  %6162 = fmul fast float %6156, %6159
  %6163 = fadd fast float %6160, %6144
  %6164 = fadd fast float %6161, %6145
  %6165 = fadd fast float %6162, %6146
  %6166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6167 = extractvalue %dx.types.CBufRet.f32 %6166, 0
  %6168 = extractvalue %dx.types.CBufRet.f32 %6166, 1
  %6169 = fadd fast float %6168, %6167
  %6170 = call float @dx.op.unary.f32(i32 7, float %6169)  ; Saturate(value)
  %6171 = extractvalue %dx.types.CBufRet.f32 %6166, 2
  %6172 = extractvalue %dx.types.CBufRet.f32 %6166, 3
  %6173 = fadd fast float %6172, %6171
  %6174 = call float @dx.op.unary.f32(i32 7, float %6173)  ; Saturate(value)
  %6175 = fmul fast float %6170, %6154
  %6176 = fmul fast float %6175, %6174
  br label %6259

; <label>:6177                                    ; preds = %6113
  %6178 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %6137
  %6179 = load float, float* %6178, align 4, !tbaa !104, !noalias !115
  %6180 = fcmp fast olt float %6179, %6044
  %6181 = icmp sgt i32 %6120, 0
  %6182 = and i1 %6181, %6180
  br i1 %6182, label %6183, label %6220

; <label>:6183                                    ; preds = %6177
  br label %6184

; <label>:6184                                    ; preds = %6213, %6183
  %6185 = phi float [ %6214, %6213 ], [ %6042, %6183 ]
  %6186 = phi float [ %6215, %6213 ], [ %6043, %6183 ]
  %6187 = phi float [ %6195, %6213 ], [ %6179, %6183 ]
  %6188 = phi i32 [ %6192, %6213 ], [ %6137, %6183 ]
  %6189 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 %6188
  %6190 = load float, float* %6189, align 4, !tbaa !104, !noalias !115
  %6191 = icmp slt i32 %6188, 2
  %6192 = add nsw i32 %6188, 1
  %6193 = getelementptr inbounds [3 x float], [3 x float]* %79, i32 0, i32 %6192
  %6194 = load float, float* %6193, align 4, !tbaa !104, !noalias !115
  %6195 = select i1 %6191, float %6194, float %5958
  %6196 = call float @dx.op.binary.f32(i32 36, float %6195, float %6190)  ; FMin(a,b)
  %6197 = call float @dx.op.binary.f32(i32 36, float %6044, float %6196)  ; FMin(a,b)
  %6198 = icmp eq i32 %5908, 0
  %6199 = fadd fast float %6197, %6187
  %6200 = fmul fast float %6199, %5889
  %6201 = fadd fast float %6200, %5902
  br i1 %6198, label %6207, label %6202

; <label>:6202                                    ; preds = %6184
  %6203 = fsub fast float %6197, %6187
  %6204 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6203)  ; FMax(a,b)
  %6205 = fmul fast float %6204, %6201
  %6206 = fadd fast float %6205, %6186
  br label %6213

; <label>:6207                                    ; preds = %6184
  %6208 = fsub fast float %6187, %6197
  %6209 = call float @dx.op.unary.f32(i32 6, float %6208)  ; FAbs(value)
  %6210 = fadd fast float %6209, %6185
  %6211 = fmul fast float %6209, %6201
  %6212 = fsub fast float %6186, %6211
  br label %6213

; <label>:6213                                    ; preds = %6207, %6202
  %6214 = phi float [ %6204, %6202 ], [ %6210, %6207 ]
  %6215 = phi float [ %6206, %6202 ], [ %6212, %6207 ]
  %6216 = fcmp fast olt float %6195, %6044
  %6217 = icmp slt i32 %6192, 3
  %6218 = and i1 %6217, %6216
  br i1 %6218, label %6184, label %6219

; <label>:6219                                    ; preds = %6213
  br label %6220

; <label>:6220                                    ; preds = %6219, %6177
  %6221 = phi float [ %6042, %6177 ], [ %6214, %6219 ]
  %6222 = phi float [ %6043, %6177 ], [ %6215, %6219 ]
  %6223 = fsub fast float %5958, %6221
  %6224 = select i1 %5960, float %6221, float %6223
  %6225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6226 = extractvalue %dx.types.CBufRet.f32 %6225, 0
  %6227 = extractvalue %dx.types.CBufRet.f32 %6225, 1
  %6228 = extractvalue %dx.types.CBufRet.f32 %6225, 2
  %6229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6230 = extractvalue %dx.types.CBufRet.f32 %6229, 0
  %6231 = extractvalue %dx.types.CBufRet.f32 %6229, 1
  %6232 = extractvalue %dx.types.CBufRet.f32 %6229, 2
  %6233 = extractvalue %dx.types.CBufRet.f32 %6229, 3
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 3
  %6236 = call float @dx.op.binary.f32(i32 36, float %6222, float %6235)  ; FMin(a,b)
  %6237 = fmul fast float %6233, %6224
  %6238 = call float @dx.op.unary.f32(i32 7, float %6237)  ; Saturate(value)
  %6239 = fsub fast float %6230, %6226
  %6240 = fsub fast float %6231, %6227
  %6241 = fsub fast float %6232, %6228
  %6242 = fmul fast float %6238, %6239
  %6243 = fmul fast float %6238, %6240
  %6244 = fmul fast float %6238, %6241
  %6245 = fadd fast float %6242, %6226
  %6246 = fadd fast float %6243, %6227
  %6247 = fadd fast float %6244, %6228
  %6248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6249 = extractvalue %dx.types.CBufRet.f32 %6248, 0
  %6250 = extractvalue %dx.types.CBufRet.f32 %6248, 1
  %6251 = fadd fast float %6250, %6249
  %6252 = call float @dx.op.unary.f32(i32 7, float %6251)  ; Saturate(value)
  %6253 = extractvalue %dx.types.CBufRet.f32 %6248, 2
  %6254 = extractvalue %dx.types.CBufRet.f32 %6248, 3
  %6255 = fadd fast float %6254, %6253
  %6256 = call float @dx.op.unary.f32(i32 7, float %6255)  ; Saturate(value)
  %6257 = fmul fast float %6252, %6236
  %6258 = fmul fast float %6257, %6256
  br label %6259

; <label>:6259                                    ; preds = %6220, %6139, %5974, %5956, %5954
  %6260 = phi float [ %5983, %5974 ], [ %6142, %6139 ], [ %6224, %6220 ], [ 0.000000e+00, %5954 ], [ 0.000000e+00, %5956 ]
  %6261 = phi float [ %6017, %5974 ], [ %6176, %6139 ], [ %6258, %6220 ], [ 0.000000e+00, %5954 ], [ 0.000000e+00, %5956 ]
  %6262 = phi float [ %6004, %5974 ], [ %6163, %6139 ], [ %6245, %6220 ], [ 0.000000e+00, %5954 ], [ 0.000000e+00, %5956 ]
  %6263 = phi float [ %6005, %5974 ], [ %6164, %6139 ], [ %6246, %6220 ], [ 0.000000e+00, %5954 ], [ 0.000000e+00, %5956 ]
  %6264 = phi float [ %6006, %5974 ], [ %6165, %6139 ], [ %6247, %6220 ], [ 0.000000e+00, %5954 ], [ 0.000000e+00, %5956 ]
  %6265 = fmul fast float %5897, %6261
  %6266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6267 = extractvalue %dx.types.CBufRet.f32 %6266, 2
  %6268 = fsub fast float %5904, %6267
  %6269 = fcmp fast olt float %6265, -2.000000e+01
  %6270 = call float @dx.op.unary.f32(i32 21, float %6265)  ; Exp(value)
  %6271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6272 = extractvalue %dx.types.CBufRet.f32 %6271, 2
  %6273 = extractvalue %dx.types.CBufRet.f32 %6271, 3
  %6274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6275 = extractvalue %dx.types.CBufRet.f32 %6274, 2
  %6276 = fmul fast float %6273, %6268
  %6277 = call float @dx.op.unary.f32(i32 7, float %6276)  ; Saturate(value)
  %6278 = fsub fast float 1.000000e+00, %6277
  %6279 = fmul fast float %5889, 5.000000e-01
  %6280 = fadd fast float %6279, 5.000000e-01
  %6281 = call float @dx.op.unary.f32(i32 7, float %6280)  ; Saturate(value)
  %6282 = fsub fast float 1.000000e+00, %6281
  %6283 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6278)  ; FMax(a,b)
  %6284 = fdiv fast float %6282, %6283
  %6285 = fsub fast float %6268, %5846
  %6286 = call float @dx.op.unary.f32(i32 6, float %6285)  ; FAbs(value)
  %6287 = fmul fast float %6286, %6272
  %6288 = call float @dx.op.unary.f32(i32 7, float %6284)  ; Saturate(value)
  %6289 = fsub fast float 1.000000e+00, %6287
  %6290 = fmul fast float %6289, %6288
  %6291 = fadd fast float %6290, %6287
  %6292 = fmul fast float %6275, %6268
  %6293 = call float @dx.op.unary.f32(i32 7, float %6292)  ; Saturate(value)
  %6294 = fsub fast float 1.000000e+00, %6291
  %6295 = fmul fast float %6294, %6293
  %6296 = fadd fast float %6295, %6291
  %6297 = call float @dx.op.unary.f32(i32 7, float %6296)  ; Saturate(value)
  %6298 = fadd fast float %6270, -1.000000e+00
  %6299 = select i1 %6269, float -1.000000e+00, float %6298
  %6300 = fmul fast float %6297, %6299
  %6301 = fadd fast float %6300, 1.000000e+00
  %6302 = fsub fast float -0.000000e+00, %6300
  %6303 = fmul fast float %6262, %6302
  %6304 = fmul fast float %6263, %6302
  %6305 = fmul fast float %6264, %6302
  br label %6306

; <label>:6306                                    ; preds = %6259, %5855
  %6307 = phi float [ %6260, %6259 ], [ 0.000000e+00, %5855 ]
  %6308 = phi float [ %6301, %6259 ], [ 1.000000e+00, %5855 ]
  %6309 = phi float [ %6303, %6259 ], [ 0.000000e+00, %5855 ]
  %6310 = phi float [ %6304, %6259 ], [ 0.000000e+00, %5855 ]
  %6311 = phi float [ %6305, %6259 ], [ 0.000000e+00, %5855 ]
  %6312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6313 = extractvalue %dx.types.CBufRet.f32 %6312, 1
  %6314 = fsub fast float 1.000000e+00, %6308
  %6315 = fmul fast float %6314, %5890
  %6316 = fmul fast float %6315, %6313
  %6317 = fsub fast float %5890, %6316
  br i1 %5883, label %6318, label %6347, !dx.controlflow.hints !151

; <label>:6318                                    ; preds = %6306
  %6319 = fmul fast float %5891, %5880
  %6320 = fadd fast float %6319, %5881
  %6321 = call float @dx.op.unary.f32(i32 7, float %6320)  ; Saturate(value)
  %6322 = fmul fast float %5862, %6317
  %6323 = fsub fast float -0.000000e+00, %6322
  %6324 = fmul fast float %5863, %6317
  %6325 = fsub fast float -0.000000e+00, %6324
  %6326 = call float @dx.op.unary.f32(i32 21, float %6323)  ; Exp(value)
  %6327 = call float @dx.op.unary.f32(i32 21, float %6325)  ; Exp(value)
  %6328 = call float @dx.op.binary.f32(i32 35, float %5870, float %6326)  ; FMax(a,b)
  %6329 = call float @dx.op.binary.f32(i32 35, float %5870, float %6327)  ; FMax(a,b)
  %6330 = fsub fast float %6329, %6328
  %6331 = fmul fast float %6330, %6321
  %6332 = fadd fast float %6331, %6328
  %6333 = call float @dx.op.unary.f32(i32 7, float %6332)  ; Saturate(value)
  %6334 = fsub fast float %5867, %5872
  %6335 = fsub fast float %5868, %5873
  %6336 = fsub fast float %5869, %5874
  %6337 = fmul fast float %6321, %6334
  %6338 = fmul fast float %6321, %6335
  %6339 = fmul fast float %6321, %6336
  %6340 = fadd fast float %6337, %5872
  %6341 = fadd fast float %6338, %5873
  %6342 = fadd fast float %6339, %5874
  %6343 = fsub fast float 1.000000e+00, %6333
  %6344 = fmul fast float %6343, %6340
  %6345 = fmul fast float %6343, %6341
  %6346 = fmul fast float %6343, %6342
  br label %6406

; <label>:6347                                    ; preds = %6306
  %6348 = fmul fast float %6317, %5879
  %6349 = call float @dx.op.unary.f32(i32 7, float %6348)  ; Saturate(value)
  %6350 = fsub fast float 2.000000e+00, %6349
  %6351 = fmul fast float %6349, 9.921875e-01
  %6352 = fmul fast float %6351, %6350
  %6353 = fadd fast float %6352, 3.906250e-03
  %6354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %41, float %6353, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6355 = extractvalue %dx.types.ResRet.f32 %6354, 0
  %6356 = fsub fast float %6349, %6355
  %6357 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6356)  ; FMax(a,b)
  %6358 = fmul fast float %5865, %5846
  %6359 = call float @dx.op.unary.f32(i32 6, float %6358)  ; FAbs(value)
  %6360 = fcmp fast ogt float %6359, 0x3EB0C6F7A0000000
  br i1 %6360, label %6361, label %6367, !dx.controlflow.hints !152

; <label>:6361                                    ; preds = %6347
  %6362 = fmul fast float %6358, 0xBFF7154760000000
  %6363 = call float @dx.op.unary.f32(i32 21, float %6362)  ; Exp(value)
  %6364 = fsub fast float 1.000000e+00, %6363
  %6365 = fdiv fast float %6364, %6358
  %6366 = fmul fast float %6365, %5875
  br label %6367

; <label>:6367                                    ; preds = %6361, %6347
  %6368 = phi float [ %6366, %6361 ], [ %5875, %6347 ]
  %6369 = fadd fast float %6368, %5877
  %6370 = fmul fast float %6369, %6357
  %6371 = fmul fast float %5862, %6370
  %6372 = fsub fast float -0.000000e+00, %6371
  %6373 = fmul fast float %5863, %6370
  %6374 = fsub fast float -0.000000e+00, %6373
  %6375 = fmul fast float %5864, %6370
  %6376 = fsub fast float -0.000000e+00, %6375
  %6377 = call float @dx.op.unary.f32(i32 21, float %6372)  ; Exp(value)
  %6378 = call float @dx.op.unary.f32(i32 21, float %6374)  ; Exp(value)
  %6379 = call float @dx.op.unary.f32(i32 21, float %6376)  ; Exp(value)
  %6380 = fmul fast float %5891, %5891
  %6381 = fadd fast float %6380, 1.000000e+00
  %6382 = fmul fast float %6381, 0x3FAE8EC8A0000000
  %6383 = fmul fast float %6382, %5872
  %6384 = fmul fast float %6382, %5873
  %6385 = fmul fast float %6382, %5874
  %6386 = fmul fast float %5891, %5870
  %6387 = fsub fast float 1.000000e+00, %6386
  %6388 = fmul fast float %5870, %5870
  %6389 = fsub fast float 1.000000e+00, %6388
  %6390 = fmul fast float %6389, 0x3FB45F3060000000
  %6391 = fmul fast float %6387, %6387
  %6392 = fdiv fast float 1.000000e+00, %6391
  %6393 = fmul fast float %6390, %6392
  %6394 = fmul fast float %6393, %5867
  %6395 = fmul fast float %6393, %5868
  %6396 = fmul fast float %6393, %5869
  %6397 = fadd fast float %6394, %6383
  %6398 = fadd fast float %6395, %6384
  %6399 = fadd fast float %6396, %6385
  %6400 = fsub fast float 1.000000e+00, %6377
  %6401 = fsub fast float 1.000000e+00, %6378
  %6402 = fsub fast float 1.000000e+00, %6379
  %6403 = fmul fast float %6397, %6400
  %6404 = fmul fast float %6398, %6401
  %6405 = fmul fast float %6399, %6402
  br label %6406

; <label>:6406                                    ; preds = %6367, %6318
  %6407 = phi float [ %6344, %6318 ], [ %6403, %6367 ]
  %6408 = phi float [ %6345, %6318 ], [ %6404, %6367 ]
  %6409 = phi float [ %6346, %6318 ], [ %6405, %6367 ]
  %6410 = phi float [ %6333, %6318 ], [ %6377, %6367 ]
  %6411 = phi float [ %6333, %6318 ], [ %6378, %6367 ]
  %6412 = phi float [ %6333, %6318 ], [ %6379, %6367 ]
  br i1 %5899, label %6413, label %6611, !dx.controlflow.hints !153

; <label>:6413                                    ; preds = %6406
  %6414 = extractvalue %dx.types.CBufRet.f32 %6312, 0
  %6415 = fmul fast float %6414, %6314
  %6416 = fsub fast float %6309, %6407
  %6417 = fsub fast float %6310, %6408
  %6418 = fsub fast float %6311, %6409
  %6419 = fmul fast float %6415, %6416
  %6420 = fmul fast float %6415, %6417
  %6421 = fmul fast float %6415, %6418
  %6422 = fadd fast float %6419, %6407
  %6423 = fadd fast float %6420, %6408
  %6424 = fadd fast float %6421, %6409
  %6425 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6410)  ; FMax(a,b)
  %6426 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6411)  ; FMax(a,b)
  %6427 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6412)  ; FMax(a,b)
  %6428 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6308)  ; FMax(a,b)
  %6429 = call float @dx.op.binary.f32(i32 35, float %6307, float %6317)  ; FMax(a,b)
  %6430 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6429)  ; FMax(a,b)
  %6431 = fdiv fast float %6307, %6430
  %6432 = call float @dx.op.unary.f32(i32 7, float %6431)  ; Saturate(value)
  %6433 = fdiv fast float %6317, %6430
  %6434 = call float @dx.op.unary.f32(i32 7, float %6433)  ; Saturate(value)
  %6435 = fcmp fast une float %6428, 1.000000e+00
  br i1 %6435, label %6436, label %6449, !dx.controlflow.hints !154

; <label>:6436                                    ; preds = %6413
  %6437 = call float @dx.op.unary.f32(i32 23, float %6428)  ; Log(value)
  %6438 = fmul fast float %6437, 0x3FE62E4300000000
  %6439 = fmul fast float %6309, %6438
  %6440 = fsub fast float -0.000000e+00, %6439
  %6441 = fmul fast float %6310, %6438
  %6442 = fsub fast float -0.000000e+00, %6441
  %6443 = fmul fast float %6311, %6438
  %6444 = fsub fast float -0.000000e+00, %6443
  %6445 = fsub fast float 1.000000e+00, %6428
  %6446 = fdiv fast float %6440, %6445
  %6447 = fdiv fast float %6442, %6445
  %6448 = fdiv fast float %6444, %6445
  br label %6449

; <label>:6449                                    ; preds = %6436, %6413
  %6450 = phi float [ %6446, %6436 ], [ %6309, %6413 ]
  %6451 = phi float [ %6447, %6436 ], [ %6310, %6413 ]
  %6452 = phi float [ %6448, %6436 ], [ %6311, %6413 ]
  %6453 = phi float [ %6438, %6436 ], [ 0.000000e+00, %6413 ]
  %6454 = fcmp fast une float %6425, 1.000000e+00
  br i1 %6454, label %6455, label %6462, !dx.controlflow.hints !155

; <label>:6455                                    ; preds = %6449
  %6456 = call float @dx.op.unary.f32(i32 23, float %6425)  ; Log(value)
  %6457 = fmul fast float %6456, 0x3FE62E4300000000
  %6458 = fmul fast float %6422, %6457
  %6459 = fsub fast float -0.000000e+00, %6458
  %6460 = fsub fast float 1.000000e+00, %6425
  %6461 = fdiv fast float %6459, %6460
  br label %6462

; <label>:6462                                    ; preds = %6455, %6449
  %6463 = phi float [ %6461, %6455 ], [ %6422, %6449 ]
  %6464 = phi float [ %6457, %6455 ], [ 0.000000e+00, %6449 ]
  %6465 = fcmp fast une float %6426, 1.000000e+00
  br i1 %6465, label %6466, label %6473, !dx.controlflow.hints !155

; <label>:6466                                    ; preds = %6462
  %6467 = call float @dx.op.unary.f32(i32 23, float %6426)  ; Log(value)
  %6468 = fmul fast float %6467, 0x3FE62E4300000000
  %6469 = fmul fast float %6423, %6468
  %6470 = fsub fast float -0.000000e+00, %6469
  %6471 = fsub fast float 1.000000e+00, %6426
  %6472 = fdiv fast float %6470, %6471
  br label %6473

; <label>:6473                                    ; preds = %6466, %6462
  %6474 = phi float [ %6472, %6466 ], [ %6423, %6462 ]
  %6475 = phi float [ %6468, %6466 ], [ 0.000000e+00, %6462 ]
  %6476 = fcmp fast une float %6427, 1.000000e+00
  br i1 %6476, label %6477, label %6484, !dx.controlflow.hints !155

; <label>:6477                                    ; preds = %6473
  %6478 = call float @dx.op.unary.f32(i32 23, float %6427)  ; Log(value)
  %6479 = fmul fast float %6478, 0x3FE62E4300000000
  %6480 = fmul fast float %6424, %6479
  %6481 = fsub fast float -0.000000e+00, %6480
  %6482 = fsub fast float 1.000000e+00, %6427
  %6483 = fdiv fast float %6481, %6482
  br label %6484

; <label>:6484                                    ; preds = %6477, %6473
  %6485 = phi float [ %6483, %6477 ], [ %6424, %6473 ]
  %6486 = phi float [ %6479, %6477 ], [ 0.000000e+00, %6473 ]
  %6487 = fmul fast float %6450, %6434
  %6488 = fmul fast float %6451, %6434
  %6489 = fmul fast float %6452, %6434
  %6490 = fmul fast float %6453, %6434
  %6491 = fmul fast float %6463, %6432
  %6492 = fmul fast float %6474, %6432
  %6493 = fmul fast float %6485, %6432
  %6494 = fmul fast float %6464, %6432
  %6495 = fmul fast float %6475, %6432
  %6496 = fmul fast float %6486, %6432
  %6497 = fadd fast float %6491, %6487
  %6498 = fadd fast float %6492, %6488
  %6499 = fadd fast float %6493, %6489
  %6500 = fadd fast float %6494, %6490
  %6501 = fadd fast float %6495, %6490
  %6502 = fadd fast float %6496, %6490
  %6503 = fcmp fast une float %6500, 0.000000e+00
  br i1 %6503, label %6504, label %6511, !dx.controlflow.hints !156

; <label>:6504                                    ; preds = %6484
  %6505 = fmul fast float %6500, 0x3FF7154760000000
  %6506 = call float @dx.op.unary.f32(i32 21, float %6505)  ; Exp(value)
  %6507 = fsub fast float 1.000000e+00, %6506
  %6508 = fmul fast float %6497, %6507
  %6509 = fsub fast float -0.000000e+00, %6508
  %6510 = fdiv fast float %6509, %6500
  br label %6511

; <label>:6511                                    ; preds = %6504, %6484
  %6512 = phi float [ %6506, %6504 ], [ 1.000000e+00, %6484 ]
  %6513 = phi float [ %6510, %6504 ], [ %6497, %6484 ]
  %6514 = fcmp fast une float %6501, 0.000000e+00
  br i1 %6514, label %6515, label %6522, !dx.controlflow.hints !156

; <label>:6515                                    ; preds = %6511
  %6516 = fmul fast float %6501, 0x3FF7154760000000
  %6517 = call float @dx.op.unary.f32(i32 21, float %6516)  ; Exp(value)
  %6518 = fsub fast float 1.000000e+00, %6517
  %6519 = fmul fast float %6498, %6518
  %6520 = fsub fast float -0.000000e+00, %6519
  %6521 = fdiv fast float %6520, %6501
  br label %6522

; <label>:6522                                    ; preds = %6515, %6511
  %6523 = phi float [ %6517, %6515 ], [ 1.000000e+00, %6511 ]
  %6524 = phi float [ %6521, %6515 ], [ %6498, %6511 ]
  %6525 = fcmp fast une float %6502, 0.000000e+00
  br i1 %6525, label %6526, label %6533, !dx.controlflow.hints !156

; <label>:6526                                    ; preds = %6522
  %6527 = fmul fast float %6502, 0x3FF7154760000000
  %6528 = call float @dx.op.unary.f32(i32 21, float %6527)  ; Exp(value)
  %6529 = fsub fast float 1.000000e+00, %6528
  %6530 = fmul fast float %6499, %6529
  %6531 = fsub fast float -0.000000e+00, %6530
  %6532 = fdiv fast float %6531, %6502
  br label %6533

; <label>:6533                                    ; preds = %6526, %6522
  %6534 = phi float [ %6528, %6526 ], [ 1.000000e+00, %6522 ]
  %6535 = phi float [ %6532, %6526 ], [ %6499, %6522 ]
  %6536 = fcmp fast ogt float %6432, %6434
  br i1 %6536, label %6537, label %6557

; <label>:6537                                    ; preds = %6533
  %6538 = fsub fast float 1.000000e+00, %6434
  %6539 = fmul fast float %6450, %6538
  %6540 = fmul fast float %6451, %6538
  %6541 = fmul fast float %6452, %6538
  %6542 = fmul fast float %6453, %6538
  %6543 = fcmp fast une float %6542, 0.000000e+00
  br i1 %6543, label %6544, label %6595, !dx.controlflow.hints !157

; <label>:6544                                    ; preds = %6537
  %6545 = fmul fast float %6542, 0x3FF7154760000000
  %6546 = call float @dx.op.unary.f32(i32 21, float %6545)  ; Exp(value)
  %6547 = fsub fast float 1.000000e+00, %6546
  %6548 = fmul fast float %6539, %6547
  %6549 = fsub fast float -0.000000e+00, %6548
  %6550 = fmul fast float %6540, %6547
  %6551 = fsub fast float -0.000000e+00, %6550
  %6552 = fmul fast float %6541, %6547
  %6553 = fsub fast float -0.000000e+00, %6552
  %6554 = fdiv fast float %6549, %6542
  %6555 = fdiv fast float %6551, %6542
  %6556 = fdiv fast float %6553, %6542
  br label %6595

; <label>:6557                                    ; preds = %6533
  %6558 = fsub fast float 1.000000e+00, %6432
  %6559 = fmul fast float %6463, %6558
  %6560 = fmul fast float %6474, %6558
  %6561 = fmul fast float %6485, %6558
  %6562 = fmul fast float %6464, %6558
  %6563 = fmul fast float %6475, %6558
  %6564 = fmul fast float %6486, %6558
  %6565 = fcmp fast une float %6562, 0.000000e+00
  br i1 %6565, label %6566, label %6573, !dx.controlflow.hints !156

; <label>:6566                                    ; preds = %6557
  %6567 = fmul fast float %6562, 0x3FF7154760000000
  %6568 = call float @dx.op.unary.f32(i32 21, float %6567)  ; Exp(value)
  %6569 = fsub fast float 1.000000e+00, %6568
  %6570 = fmul fast float %6559, %6569
  %6571 = fsub fast float -0.000000e+00, %6570
  %6572 = fdiv fast float %6571, %6562
  br label %6573

; <label>:6573                                    ; preds = %6566, %6557
  %6574 = phi float [ %6572, %6566 ], [ %6559, %6557 ]
  %6575 = phi float [ %6568, %6566 ], [ 1.000000e+00, %6557 ]
  %6576 = fcmp fast une float %6563, 0.000000e+00
  br i1 %6576, label %6577, label %6584, !dx.controlflow.hints !156

; <label>:6577                                    ; preds = %6573
  %6578 = fmul fast float %6563, 0x3FF7154760000000
  %6579 = call float @dx.op.unary.f32(i32 21, float %6578)  ; Exp(value)
  %6580 = fsub fast float 1.000000e+00, %6579
  %6581 = fmul fast float %6560, %6580
  %6582 = fsub fast float -0.000000e+00, %6581
  %6583 = fdiv fast float %6582, %6563
  br label %6584

; <label>:6584                                    ; preds = %6577, %6573
  %6585 = phi float [ %6583, %6577 ], [ %6560, %6573 ]
  %6586 = phi float [ %6579, %6577 ], [ 1.000000e+00, %6573 ]
  %6587 = fcmp fast une float %6564, 0.000000e+00
  br i1 %6587, label %6588, label %6595, !dx.controlflow.hints !156

; <label>:6588                                    ; preds = %6584
  %6589 = fmul fast float %6564, 0x3FF7154760000000
  %6590 = call float @dx.op.unary.f32(i32 21, float %6589)  ; Exp(value)
  %6591 = fsub fast float 1.000000e+00, %6590
  %6592 = fmul fast float %6561, %6591
  %6593 = fsub fast float -0.000000e+00, %6592
  %6594 = fdiv fast float %6593, %6564
  br label %6595

; <label>:6595                                    ; preds = %6588, %6584, %6544, %6537
  %6596 = phi float [ %6594, %6588 ], [ %6556, %6544 ], [ %6541, %6537 ], [ %6561, %6584 ]
  %6597 = phi float [ %6585, %6588 ], [ %6555, %6544 ], [ %6540, %6537 ], [ %6585, %6584 ]
  %6598 = phi float [ %6574, %6588 ], [ %6554, %6544 ], [ %6539, %6537 ], [ %6574, %6584 ]
  %6599 = phi float [ %6590, %6588 ], [ %6546, %6544 ], [ 1.000000e+00, %6537 ], [ 1.000000e+00, %6584 ]
  %6600 = phi float [ %6586, %6588 ], [ %6546, %6544 ], [ 1.000000e+00, %6537 ], [ %6586, %6584 ]
  %6601 = phi float [ %6575, %6588 ], [ %6546, %6544 ], [ 1.000000e+00, %6537 ], [ %6575, %6584 ]
  %6602 = fmul fast float %6601, %6513
  %6603 = fmul fast float %6600, %6524
  %6604 = fmul fast float %6599, %6535
  %6605 = fadd fast float %6602, %6598
  %6606 = fadd fast float %6603, %6597
  %6607 = fadd fast float %6604, %6596
  %6608 = fmul fast float %6601, %6512
  %6609 = fmul fast float %6600, %6523
  %6610 = fmul fast float %6599, %6534
  br label %6611

; <label>:6611                                    ; preds = %6595, %6406
  %6612 = phi float [ %6610, %6595 ], [ %6412, %6406 ]
  %6613 = phi float [ %6609, %6595 ], [ %6411, %6406 ]
  %6614 = phi float [ %6608, %6595 ], [ %6410, %6406 ]
  %6615 = phi float [ %6607, %6595 ], [ %6409, %6406 ]
  %6616 = phi float [ %6606, %6595 ], [ %6408, %6406 ]
  %6617 = phi float [ %6605, %6595 ], [ %6407, %6406 ]
  %6618 = fmul fast float %6617, %5557
  %6619 = fmul fast float %6616, %5559
  %6620 = fmul fast float %6615, %5561
  %6621 = fmul fast float %6614, %5854
  %6622 = call float @dx.op.dot3.f32(i32 55, float %6614, float %6613, float %6612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6623 = call float @dx.op.dot3.f32(i32 55, float %6618, float %6619, float %6620, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6624 = select i1 %201, float %6622, float %6614
  %6625 = select i1 %201, float %6622, float %6613
  %6626 = select i1 %201, float 1.000000e+00, float %6612
  %6627 = select i1 %201, float %6623, float %6618
  %6628 = select i1 %201, float 0.000000e+00, float %6619
  %6629 = select i1 %201, float 0.000000e+00, float %6620
  %6630 = fmul fast float %6624, %5848
  %6631 = fmul fast float %6625, %5849
  %6632 = fmul fast float %6626, %5850
  %6633 = fadd fast float %6630, %6627
  %6634 = fadd fast float %6631, %6628
  %6635 = fadd fast float %6629, %6632
  %6636 = fmul fast float %6624, %5851
  %6637 = fmul fast float %6625, %5852
  %6638 = fmul fast float %6626, %5853
  %6639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6640 = extractvalue %dx.types.CBufRet.i32 %6639, 0
  %6641 = icmp eq i32 %6640, 0
  br i1 %6641, label %7009, label %6642, !dx.controlflow.hints !158

; <label>:6642                                    ; preds = %6611
  %6643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6644 = extractvalue %dx.types.CBufRet.f32 %6643, 2
  %6645 = extractvalue %dx.types.CBufRet.f32 %6643, 3
  %6646 = fmul fast float %6644, %85
  %6647 = fmul fast float %6645, %86
  %6648 = fmul fast float %6646, 2.000000e+00
  %6649 = fmul fast float %6647, 2.000000e+00
  %6650 = fsub fast float 1.000000e+00, %6648
  %6651 = fsub fast float 1.000000e+00, %6649
  %6652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6653 = extractvalue %dx.types.CBufRet.f32 %6652, 0
  %6654 = extractvalue %dx.types.CBufRet.f32 %6652, 1
  %6655 = extractvalue %dx.types.CBufRet.f32 %6652, 2
  %6656 = fmul fast float %6650, %6653
  %6657 = fmul fast float %6650, %6654
  %6658 = fmul fast float %6650, %6655
  %6659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6660 = extractvalue %dx.types.CBufRet.f32 %6659, 0
  %6661 = extractvalue %dx.types.CBufRet.f32 %6659, 1
  %6662 = extractvalue %dx.types.CBufRet.f32 %6659, 2
  %6663 = fmul fast float %6651, %6660
  %6664 = fmul fast float %6651, %6661
  %6665 = fmul fast float %6651, %6662
  %6666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6667 = extractvalue %dx.types.CBufRet.f32 %6666, 0
  %6668 = extractvalue %dx.types.CBufRet.f32 %6666, 1
  %6669 = extractvalue %dx.types.CBufRet.f32 %6666, 2
  %6670 = fadd fast float %6663, %6667
  %6671 = fadd fast float %6670, %6656
  %6672 = fadd fast float %6664, %6668
  %6673 = fadd fast float %6672, %6657
  %6674 = fadd fast float %6665, %6669
  %6675 = fadd fast float %6674, %6658
  %6676 = fmul fast float %6671, %5847
  %6677 = fmul fast float %6673, %5847
  %6678 = fmul fast float %6675, %5847
  %6679 = fmul fast float %6676, %6676
  %6680 = fmul fast float %6677, %6677
  %6681 = fadd fast float %6679, %6680
  %6682 = fmul fast float %6678, %6678
  %6683 = fadd fast float %6681, %6682
  %6684 = call float @dx.op.unary.f32(i32 24, float %6683)  ; Sqrt(value)
  %6685 = extractvalue %dx.types.CBufRet.f32 %5572, 0
  %6686 = fsub fast float %6684, %6685
  %6687 = extractvalue %dx.types.CBufRet.f32 %5572, 2
  %6688 = fmul fast float %6686, %6687
  %6689 = call float @dx.op.unary.f32(i32 7, float %6688)  ; Saturate(value)
  %6690 = fadd fast float %6689, -5.000000e-01
  %6691 = fmul fast float %6690, 2.000000e+00
  %6692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6693 = extractvalue %dx.types.CBufRet.f32 %6692, 2
  %6694 = call float @dx.op.binary.f32(i32 36, float %6693, float %6691)  ; FMin(a,b)
  %6695 = fsub fast float -0.000000e+00, %6693
  %6696 = fcmp fast ogt float %6694, %6695
  br i1 %6696, label %6697, label %7009, !dx.controlflow.hints !159

; <label>:6697                                    ; preds = %6642
  %6698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6699 = extractvalue %dx.types.CBufRet.f32 %6698, 3
  %6700 = fcmp fast ogt float %6699, 0.000000e+00
  br i1 %6700, label %6701, label %6776, !dx.controlflow.hints !160

; <label>:6701                                    ; preds = %6697
  %6702 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %6703 = extractvalue %dx.types.Dimensions %6702, 0
  %6704 = sitofp i32 %6703 to float
  %6705 = extractvalue %dx.types.Dimensions %6702, 1
  %6706 = sitofp i32 %6705 to float
  %6707 = fmul fast float %6646, %6704
  %6708 = fmul fast float %6647, %6706
  %6709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6710 = extractvalue %dx.types.CBufRet.f32 %6709, 1
  %6711 = fsub fast float -0.000000e+00, %6710
  %6712 = fptoui float %6711 to i32
  %6713 = fptoui float %6707 to i32
  %6714 = fptoui float %6708 to i32
  %6715 = and i32 %6712, 31
  %6716 = lshr i32 %6713, %6715
  %6717 = lshr i32 %6714, %6715
  %6718 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 %6712, i32 %6716, i32 %6717, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6719 = extractvalue %dx.types.ResRet.f32 %6718, 0
  %6720 = fcmp fast olt float %6719, -1.000000e+00
  %6721 = fcmp fast ogt float %6719, -1.000000e+00
  %6722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6723 = extractvalue %dx.types.CBufRet.f32 %6722, 1
  %6724 = select i1 %6721, float %6723, float 1.000000e+00
  %6725 = fadd fast float %6719, 1.000000e+00
  %6726 = fmul fast float %6724, %6725
  %6727 = call float @dx.op.unary.f32(i32 6, float %6726)  ; FAbs(value)
  %6728 = extractvalue %dx.types.CBufRet.f32 %6722, 3
  %6729 = fcmp fast oge float %6727, %6728
  %6730 = select i1 %6729, float 0x4197782600000000, float %6727
  %6731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6732 = extractvalue %dx.types.CBufRet.f32 %6731, 0
  %6733 = extractvalue %dx.types.CBufRet.f32 %6731, 1
  %6734 = extractvalue %dx.types.CBufRet.f32 %6731, 2
  %6735 = select i1 %6720, float %6732, float %6653
  %6736 = select i1 %6720, float %6733, float %6654
  %6737 = select i1 %6720, float %6734, float %6655
  %6738 = fmul fast float %6735, %6650
  %6739 = fmul fast float %6736, %6650
  %6740 = fmul fast float %6737, %6650
  %6741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6742 = extractvalue %dx.types.CBufRet.f32 %6741, 0
  %6743 = extractvalue %dx.types.CBufRet.f32 %6741, 1
  %6744 = extractvalue %dx.types.CBufRet.f32 %6741, 2
  %6745 = select i1 %6720, float %6742, float %6660
  %6746 = select i1 %6720, float %6743, float %6661
  %6747 = select i1 %6720, float %6744, float %6662
  %6748 = fmul fast float %6745, %6651
  %6749 = fmul fast float %6746, %6651
  %6750 = fmul fast float %6747, %6651
  %6751 = fadd fast float %6748, %6738
  %6752 = fadd fast float %6749, %6739
  %6753 = fadd fast float %6750, %6740
  %6754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6755 = extractvalue %dx.types.CBufRet.f32 %6754, 0
  %6756 = extractvalue %dx.types.CBufRet.f32 %6754, 1
  %6757 = extractvalue %dx.types.CBufRet.f32 %6754, 2
  %6758 = select i1 %6720, float %6755, float %6667
  %6759 = select i1 %6720, float %6756, float %6668
  %6760 = select i1 %6720, float %6757, float %6669
  %6761 = fadd fast float %6751, %6758
  %6762 = fadd fast float %6752, %6759
  %6763 = fadd fast float %6753, %6760
  %6764 = fmul fast float %6761, %6730
  %6765 = fmul fast float %6762, %6730
  %6766 = fmul fast float %6763, %6730
  %6767 = fmul fast float %6764, %6764
  %6768 = fmul fast float %6765, %6765
  %6769 = fadd fast float %6767, %6768
  %6770 = fmul fast float %6766, %6766
  %6771 = fadd fast float %6769, %6770
  %6772 = call float @dx.op.unary.f32(i32 24, float %6771)  ; Sqrt(value)
  %6773 = fsub fast float %6772, %6685
  %6774 = fmul fast float %6773, %6687
  %6775 = call float @dx.op.unary.f32(i32 7, float %6774)  ; Saturate(value)
  br label %6776

; <label>:6776                                    ; preds = %6701, %6697
  %6777 = phi float [ %6775, %6701 ], [ 1.000000e+00, %6697 ]
  %6778 = fmul fast float %6694, 5.000000e-01
  %6779 = fadd fast float %6778, 5.000000e-01
  %6780 = call float @dx.op.unary.f32(i32 22, float %6779)  ; Frc(value)
  %6781 = call float @dx.op.unary.f32(i32 27, float %6780)  ; Round_ni(value)
  %6782 = call float @dx.op.unary.f32(i32 22, float %6780)  ; Frc(value)
  %6783 = fmul fast float %6782, 2.000000e+00
  %6784 = fadd fast float %6783, -1.000000e+00
  %6785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %6646, float %6647, float %6781, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6786 = extractvalue %dx.types.ResRet.f32 %6785, 0
  %6787 = extractvalue %dx.types.ResRet.f32 %6785, 1
  %6788 = extractvalue %dx.types.ResRet.f32 %6785, 2
  %6789 = extractvalue %dx.types.ResRet.f32 %6785, 3
  %6790 = fadd fast float %6786, -5.000000e-01
  %6791 = fadd fast float %6788, -5.000000e-01
  %6792 = fmul fast float %6790, 0xBFD5555560000000
  %6793 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6791, float %6792)  ; FMad(a,b,c)
  %6794 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6787, float 0.000000e+00)  ; FMad(a,b,c)
  %6795 = fadd fast float %6794, %6789
  %6796 = fmul fast float %6790, -7.500000e-01
  %6797 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6791, float %6796)  ; FMad(a,b,c)
  %6798 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6787, float 0.000000e+00)  ; FMad(a,b,c)
  %6799 = fadd fast float %6798, %6789
  %6800 = call float @dx.op.binary.f32(i32 35, float %6793, float -1.000000e+00)  ; FMax(a,b)
  %6801 = call float @dx.op.binary.f32(i32 35, float %6795, float -1.000000e+00)  ; FMax(a,b)
  %6802 = call float @dx.op.binary.f32(i32 35, float %6797, float -1.000000e+00)  ; FMax(a,b)
  %6803 = call float @dx.op.binary.f32(i32 35, float %6799, float -1.000000e+00)  ; FMax(a,b)
  %6804 = call float @dx.op.binary.f32(i32 36, float %6800, float 1.000000e+00)  ; FMin(a,b)
  %6805 = call float @dx.op.binary.f32(i32 36, float %6801, float 1.000000e+00)  ; FMin(a,b)
  %6806 = call float @dx.op.binary.f32(i32 36, float %6802, float 1.000000e+00)  ; FMin(a,b)
  %6807 = call float @dx.op.binary.f32(i32 36, float %6803, float 1.000000e+00)  ; FMin(a,b)
  %6808 = fcmp fast olt float %6804, 0x3FEFFF8020000000
  br i1 %6808, label %6809, label %6924, !dx.controlflow.hints !161

; <label>:6809                                    ; preds = %6776
  %6810 = extractvalue %dx.types.CBufRet.f32 %6692, 3
  %6811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6812 = extractvalue %dx.types.CBufRet.f32 %6811, 0
  %6813 = extractvalue %dx.types.CBufRet.f32 %6811, 1
  %6814 = extractvalue %dx.types.CBufRet.f32 %6811, 2
  %6815 = extractvalue %dx.types.CBufRet.f32 %6811, 3
  %6816 = fsub fast float %6812, %6804
  %6817 = fsub fast float %6813, %6805
  %6818 = fsub fast float %6814, %6806
  %6819 = fsub fast float %6815, %6807
  %6820 = fmul fast float %6816, %6810
  %6821 = fmul fast float %6817, %6810
  %6822 = fmul fast float %6818, %6810
  %6823 = fmul fast float %6819, %6810
  %6824 = fadd fast float %6820, %6804
  %6825 = fadd fast float %6821, %6805
  %6826 = fsub fast float -0.000000e+00, %6825
  %6827 = fadd fast float %6822, %6806
  %6828 = fadd fast float %6823, %6807
  %6829 = fmul fast float %6824, %6824
  %6830 = fsub fast float %6825, %6829
  %6831 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6830)  ; FMax(a,b)
  %6832 = fdiv fast float 1.000000e+00, %6831
  %6833 = fmul fast float %6825, %6824
  %6834 = fsub fast float %6827, %6833
  %6835 = fsub fast float %6784, %6824
  %6836 = fmul fast float %6784, %6784
  %6837 = fsub fast float %6836, %6825
  %6838 = fmul fast float %6835, %6832
  %6839 = fmul fast float %6838, %6834
  %6840 = fsub fast float %6837, %6839
  %6841 = fmul fast float %6825, %6825
  %6842 = fsub fast float %6828, %6841
  %6843 = fmul fast float %6834, %6834
  %6844 = fmul fast float %6843, %6832
  %6845 = fsub fast float %6842, %6844
  %6846 = fdiv fast float %6840, %6845
  %6847 = fmul fast float %6834, %6846
  %6848 = fsub fast float %6835, %6847
  %6849 = fmul fast float %6848, %6832
  %6850 = fmul fast float %6849, %6824
  %6851 = fsub fast float 1.000000e+00, %6850
  %6852 = fmul fast float %6825, %6846
  %6853 = fsub fast float %6851, %6852
  %6854 = fmul fast float %6849, %6849
  %6855 = fmul fast float %6846, 4.000000e+00
  %6856 = fmul fast float %6855, %6853
  %6857 = fsub fast float %6854, %6856
  %6858 = call float @dx.op.unary.f32(i32 24, float %6857)  ; Sqrt(value)
  %6859 = fcmp fast oge float %6849, 0.000000e+00
  %6860 = fsub fast float -0.000000e+00, %6858
  %6861 = select i1 %6859, float %6860, float %6858
  %6862 = fsub fast float %6861, %6849
  %6863 = fdiv fast float %6862, %6846
  %6864 = fdiv fast float %6853, %6862
  %6865 = fmul fast float %6863, 5.000000e-01
  %6866 = fmul fast float %6864, 2.000000e+00
  %6867 = select i1 %6859, float %6865, float %6866
  %6868 = select i1 %6859, float %6866, float %6865
  %6869 = call float @dx.op.binary.f32(i32 35, float %6867, float %6868)  ; FMax(a,b)
  %6870 = call float @dx.op.binary.f32(i32 36, float %6867, float %6868)  ; FMin(a,b)
  %6871 = fcmp fast ogt float %6784, %6870
  br i1 %6871, label %6872, label %6882

; <label>:6872                                    ; preds = %6809
  %6873 = fsub fast float %6784, %6870
  %6874 = fsub fast float %6869, %6870
  %6875 = fmul fast float %6873, %6874
  %6876 = fmul fast float %6869, %6784
  %6877 = fadd fast float %6869, %6784
  %6878 = fmul fast float %6877, %6824
  %6879 = fadd fast float %6876, %6825
  %6880 = fsub fast float %6879, %6878
  %6881 = fdiv fast float %6880, %6875
  br label %6882

; <label>:6882                                    ; preds = %6872, %6809
  %6883 = phi float [ %6881, %6872 ], [ 0.000000e+00, %6809 ]
  %6884 = fcmp fast ogt float %6784, %6869
  %6885 = fsub fast float %6784, %6869
  br i1 %6884, label %6886, label %6896

; <label>:6886                                    ; preds = %6882
  %6887 = fsub fast float %6869, %6870
  %6888 = fmul fast float %6887, %6885
  %6889 = fmul fast float %6870, %6784
  %6890 = fadd fast float %6870, %6784
  %6891 = fmul fast float %6890, %6824
  %6892 = fsub fast float %6826, %6889
  %6893 = fadd fast float %6892, %6891
  %6894 = fdiv fast float %6893, %6888
  %6895 = fadd fast float %6894, %6883
  br label %6896

; <label>:6896                                    ; preds = %6886, %6882
  %6897 = phi float [ %6895, %6886 ], [ %6883, %6882 ]
  %6898 = fsub fast float %6784, %6870
  %6899 = fmul fast float %6898, %6885
  %6900 = fmul fast float %6870, %6869
  %6901 = fadd fast float %6870, %6869
  %6902 = fmul fast float %6901, %6824
  %6903 = fadd fast float %6900, %6825
  %6904 = fsub fast float %6903, %6902
  %6905 = fdiv fast float %6904, %6899
  %6906 = call float @dx.op.unary.f32(i32 7, float %6897)  ; Saturate(value)
  %6907 = fcmp fast oeq float %5573, 0.000000e+00
  %6908 = extractvalue %dx.types.CBufRet.f32 %6692, 0
  %6909 = fcmp fast oeq float %6908, 0.000000e+00
  %6910 = or i1 %6907, %6909
  %6911 = fmul fast float %6908, 2.000000e+00
  %6912 = fadd fast float %6693, %6694
  %6913 = fdiv fast float %6912, %6911
  %6914 = call float @dx.op.unary.f32(i32 7, float %6913)  ; Saturate(value)
  %6915 = fmul fast float %6914, 2.000000e+00
  %6916 = fsub fast float 3.000000e+00, %6915
  %6917 = fmul fast float %6914, %6914
  %6918 = fmul fast float %6917, %6916
  %6919 = select i1 %6910, float 1.000000e+00, float %6918
  %6920 = fmul fast float %6905, %5573
  %6921 = fadd fast float %6906, %6920
  %6922 = call float @dx.op.unary.f32(i32 7, float %6921)  ; Saturate(value)
  %6923 = fmul fast float %6919, %6922
  br label %6924

; <label>:6924                                    ; preds = %6896, %6776
  %6925 = phi float [ %6923, %6896 ], [ 0.000000e+00, %6776 ]
  %6926 = fsub fast float 1.000000e+00, %6925
  %6927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %41, float %6646, float %6647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6928 = extractvalue %dx.types.ResRet.f32 %6927, 0
  %6929 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6930 = extractvalue %dx.types.CBufRet.i32 %6929, 2
  %6931 = icmp eq i32 %6930, 0
  br i1 %6931, label %6937, label %6932

; <label>:6932                                    ; preds = %6924
  %6933 = call float @dx.op.unary.f32(i32 7, float %6925)  ; Saturate(value)
  %6934 = fadd fast float %6928, -1.000000e+00
  %6935 = fmul fast float %6933, %6934
  %6936 = fadd fast float %6935, 1.000000e+00
  br label %6937

; <label>:6937                                    ; preds = %6932, %6924
  %6938 = phi float [ %6936, %6932 ], [ %6926, %6924 ]
  br i1 %6700, label %6939, label %6957

; <label>:6939                                    ; preds = %6937
  %6940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6941 = extractvalue %dx.types.CBufRet.f32 %6940, 1
  %6942 = fsub fast float %6777, %6941
  %6943 = call float @dx.op.unary.f32(i32 7, float %6942)  ; Saturate(value)
  %6944 = fsub fast float %6777, %6699
  %6945 = call float @dx.op.unary.f32(i32 7, float %6944)  ; Saturate(value)
  %6946 = fsub fast float %6943, %6945
  %6947 = fsub fast float %6779, %6945
  %6948 = fdiv fast float %6947, %6946
  %6949 = call float @dx.op.unary.f32(i32 7, float %6948)  ; Saturate(value)
  %6950 = fmul fast float %6949, 2.000000e+00
  %6951 = fsub fast float 3.000000e+00, %6950
  %6952 = fsub fast float %6928, %6938
  %6953 = fmul fast float %6949, %6949
  %6954 = fmul fast float %6953, %6952
  %6955 = fmul fast float %6954, %6951
  %6956 = fadd fast float %6955, %6938
  br label %6957

; <label>:6957                                    ; preds = %6939, %6937
  %6958 = phi float [ %6956, %6939 ], [ %6938, %6937 ]
  %6959 = call float @dx.op.binary.f32(i32 35, float %6928, float %6958)  ; FMax(a,b)
  %6960 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6961 = extractvalue %dx.types.CBufRet.i32 %6960, 2
  %6962 = and i32 %6961, 1
  %6963 = icmp eq i32 %6962, 0
  %6964 = fcmp fast une float %6959, 1.000000e+00
  %6965 = and i1 %6964, %6963
  br i1 %6965, label %6966, label %6985

; <label>:6966                                    ; preds = %6957
  %6967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %41, float %6646, float %6647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6968 = extractvalue %dx.types.ResRet.f32 %6967, 0
  %6969 = extractvalue %dx.types.ResRet.f32 %6967, 1
  %6970 = extractvalue %dx.types.ResRet.f32 %6967, 2
  %6971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6972 = extractvalue %dx.types.CBufRet.f32 %6971, 1
  %6973 = fmul fast float %6972, %6968
  %6974 = fmul fast float %6972, %6969
  %6975 = fmul fast float %6972, %6970
  %6976 = fcmp fast ogt float %6928, 0x3FEFFF2E40000000
  %6977 = fsub fast float 1.000000e+00, %6959
  %6978 = fsub fast float 1.000000e+00, %6928
  %6979 = fdiv fast float %6977, %6978
  %6980 = call float @dx.op.unary.f32(i32 7, float %6979)  ; Saturate(value)
  %6981 = select i1 %6976, float 0.000000e+00, float %6980
  %6982 = fmul fast float %6973, %6981
  %6983 = fmul fast float %6974, %6981
  %6984 = fmul fast float %6975, %6981
  br label %6985

; <label>:6985                                    ; preds = %6966, %6957
  %6986 = phi float [ 0.000000e+00, %6957 ], [ %6982, %6966 ]
  %6987 = phi float [ 0.000000e+00, %6957 ], [ %6983, %6966 ]
  %6988 = phi float [ 0.000000e+00, %6957 ], [ %6984, %6966 ]
  %6989 = fmul fast float %6986, %5557
  %6990 = fmul fast float %6987, %5559
  %6991 = fmul fast float %6988, %5561
  %6992 = fmul fast float %6959, %6621
  %6993 = call float @dx.op.dot3.f32(i32 55, float %6959, float %6959, float %6959, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6994 = call float @dx.op.dot3.f32(i32 55, float %6989, float %6990, float %6991, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6995 = select i1 %201, float %6993, float %6959
  %6996 = select i1 %201, float 1.000000e+00, float %6959
  %6997 = select i1 %201, float %6994, float %6989
  %6998 = select i1 %201, float 0.000000e+00, float %6990
  %6999 = select i1 %201, float 0.000000e+00, float %6991
  %7000 = fmul fast float %6995, %6633
  %7001 = fmul fast float %6995, %6634
  %7002 = fmul fast float %6996, %6635
  %7003 = fadd fast float %7000, %6997
  %7004 = fadd fast float %7001, %6998
  %7005 = fadd fast float %6999, %7002
  %7006 = fmul fast float %6995, %6636
  %7007 = fmul fast float %6995, %6637
  %7008 = fmul fast float %6996, %6638
  br label %7009

; <label>:7009                                    ; preds = %6985, %6642, %6611, %5843
  %7010 = phi float [ %5848, %5843 ], [ %6633, %6611 ], [ %7003, %6985 ], [ %6633, %6642 ]
  %7011 = phi float [ %5849, %5843 ], [ %6634, %6611 ], [ %7004, %6985 ], [ %6634, %6642 ]
  %7012 = phi float [ %5850, %5843 ], [ %6635, %6611 ], [ %7005, %6985 ], [ %6635, %6642 ]
  %7013 = phi float [ %5851, %5843 ], [ %6636, %6611 ], [ %7006, %6985 ], [ %6636, %6642 ]
  %7014 = phi float [ %5852, %5843 ], [ %6637, %6611 ], [ %7007, %6985 ], [ %6637, %6642 ]
  %7015 = phi float [ %5853, %5843 ], [ %6638, %6611 ], [ %7008, %6985 ], [ %6638, %6642 ]
  %7016 = phi float [ %5854, %5843 ], [ %6621, %6611 ], [ %6992, %6985 ], [ %6621, %6642 ]
  %7017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7018 = extractvalue %dx.types.CBufRet.f32 %7017, 2
  %7019 = extractvalue %dx.types.CBufRet.f32 %7017, 3
  %7020 = fmul fast float %7018, %85
  %7021 = fmul fast float %7019, %86
  %7022 = call float @dx.op.unary.f32(i32 7, float %7020)  ; Saturate(value)
  %7023 = call float @dx.op.unary.f32(i32 7, float %7021)  ; Saturate(value)
  %7024 = select i1 %5583, i32 2, i32 0
  %7025 = or i32 %7024, 1
  %7026 = uitofp i32 %7025 to float
  %7027 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %41, float %7022, float %7023, float %7026, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7028 = extractvalue %dx.types.ResRet.f32 %7027, 0
  %7029 = extractvalue %dx.types.ResRet.f32 %7027, 1
  %7030 = extractvalue %dx.types.ResRet.f32 %7027, 2
  %7031 = extractvalue %dx.types.ResRet.f32 %7027, 3
  %7032 = add nuw nsw i32 %7024, 2
  %7033 = uitofp i32 %7032 to float
  %7034 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %41, float %7022, float %7023, float %7033, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7035 = extractvalue %dx.types.ResRet.f32 %7034, 0
  %7036 = extractvalue %dx.types.ResRet.f32 %7034, 1
  %7037 = extractvalue %dx.types.ResRet.f32 %7034, 2
  %7038 = extractvalue %dx.types.ResRet.f32 %7034, 3
  %7039 = call float @dx.op.binary.f32(i32 35, float %7029, float %7030)  ; FMax(a,b)
  %7040 = call float @dx.op.binary.f32(i32 35, float %7028, float %7039)  ; FMax(a,b)
  %7041 = call float @dx.op.binary.f32(i32 35, float %7040, float %7031)  ; FMax(a,b)
  %7042 = call float @dx.op.binary.f32(i32 36, float %7036, float %7037)  ; FMin(a,b)
  %7043 = call float @dx.op.binary.f32(i32 36, float %7035, float %7042)  ; FMin(a,b)
  %7044 = call float @dx.op.binary.f32(i32 36, float %7043, float %7038)  ; FMin(a,b)
  %7045 = fmul fast float %7041, 2.550000e+02
  %7046 = fadd fast float %7045, 0x3F70101020000000
  %7047 = fptoui float %7046 to i32
  %7048 = fmul fast float %7044, 2.550000e+02
  %7049 = fadd fast float %7048, 0x3F70101020000000
  %7050 = fptoui float %7049 to i32
  %7051 = icmp ult i32 %7047, %7050
  br i1 %7051, label %7052, label %7221

; <label>:7052                                    ; preds = %7009
  %7053 = fcmp fast ogt float %72, 9.843750e-01
  %7054 = fadd fast float %5847, -4.000000e+00
  %7055 = select i1 %7053, float -4.000000e+00, float %7054
  %7056 = call float @dx.op.binary.f32(i32 35, float %7055, float 0.000000e+00)  ; FMax(a,b)
  %7057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7058 = extractvalue %dx.types.CBufRet.f32 %7057, 0
  %7059 = fadd fast float %7058, %7056
  %7060 = extractvalue %dx.types.CBufRet.f32 %7057, 2
  %7061 = fmul fast float %7059, %7060
  %7062 = call float @dx.op.unary.f32(i32 23, float %7061)  ; Log(value)
  %7063 = extractvalue %dx.types.CBufRet.f32 %7057, 3
  %7064 = fmul fast float %7063, %7062
  %7065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7066 = extractvalue %dx.types.CBufRet.f32 %7065, 2
  %7067 = fmul fast float %7064, %7066
  %7068 = call float @dx.op.unary.f32(i32 7, float %7067)  ; Saturate(value)
  %7069 = uitofp i32 %7047 to float
  %7070 = uitofp i32 %7050 to float
  %7071 = fadd fast float %7069, 5.000000e-01
  %7072 = fadd fast float %7070, 5.000000e-01
  %7073 = fmul fast float %7066, %7071
  %7074 = fmul fast float %7066, %7072
  %7075 = fadd fast float %7073, 0x3F0FFB4800000000
  %7076 = fadd fast float %7074, 0xBF0FFB4800000000
  %7077 = call float @dx.op.binary.f32(i32 35, float %7068, float %7075)  ; FMax(a,b)
  %7078 = call float @dx.op.binary.f32(i32 36, float %7077, float %7076)  ; FMin(a,b)
  %7079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7080 = extractvalue %dx.types.CBufRet.f32 %7079, 1
  %7081 = extractvalue %dx.types.CBufRet.f32 %7079, 2
  %7082 = extractvalue %dx.types.CBufRet.f32 %7079, 0
  %7083 = select i1 %5583, float %7082, float 0.000000e+00
  %7084 = fmul fast float %7080, %7078
  %7085 = fadd fast float %7083, %7084
  %7086 = fadd fast float %7083, %7081
  %7087 = fsub fast float %7080, %7081
  %7088 = fadd fast float %7087, %7083
  %7089 = call float @dx.op.binary.f32(i32 35, float %7085, float %7086)  ; FMax(a,b)
  %7090 = call float @dx.op.binary.f32(i32 36, float %7089, float %7088)  ; FMin(a,b)
  %7091 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %7022, float %7023, float %7090, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7092 = extractvalue %dx.types.ResRet.f32 %7091, 0
  %7093 = extractvalue %dx.types.ResRet.f32 %7091, 1
  %7094 = extractvalue %dx.types.ResRet.f32 %7091, 2
  %7095 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7096 = extractvalue %dx.types.CBufRet.i32 %7095, 0
  %7097 = extractvalue %dx.types.CBufRet.i32 %7095, 1
  %7098 = uitofp i32 %7096 to float
  %7099 = uitofp i32 %7097 to float
  %7100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7101 = extractvalue %dx.types.CBufRet.f32 %7100, 0
  %7102 = extractvalue %dx.types.CBufRet.f32 %7100, 1
  %7103 = fmul fast float %7098, %7022
  %7104 = fmul fast float %7099, %7023
  %7105 = fadd fast float %7103, -5.000000e-01
  %7106 = fadd fast float %7104, -5.000000e-01
  %7107 = call float @dx.op.unary.f32(i32 22, float %7105)  ; Frc(value)
  %7108 = call float @dx.op.unary.f32(i32 22, float %7106)  ; Frc(value)
  %7109 = fmul fast float %7107, %7107
  %7110 = fmul fast float %7109, %7107
  %7111 = fsub fast float 3.000000e+00, %7107
  %7112 = fmul fast float %7109, %7111
  %7113 = fmul fast float %7107, 3.000000e+00
  %7114 = fmul fast float %7110, 3.000000e+00
  %7115 = fmul fast float %7109, 6.000000e+00
  %7116 = fsub fast float %7114, %7115
  %7117 = fadd fast float %7116, 4.000000e+00
  %7118 = fmul fast float %7117, 0x3FC5555560000000
  %7119 = fmul fast float %7110, -3.000000e+00
  %7120 = fadd fast float %7109, %7107
  %7121 = fmul fast float %7120, 3.000000e+00
  %7122 = fadd fast float %7119, 1.000000e+00
  %7123 = fadd fast float %7122, %7121
  %7124 = fmul fast float %7110, 0x3FC5555560000000
  %7125 = fmul fast float %7108, %7108
  %7126 = fmul fast float %7125, %7108
  %7127 = fsub fast float 3.000000e+00, %7108
  %7128 = fmul fast float %7125, %7127
  %7129 = fmul fast float %7108, 3.000000e+00
  %7130 = fmul fast float %7126, 3.000000e+00
  %7131 = fmul fast float %7125, 6.000000e+00
  %7132 = fsub fast float %7130, %7131
  %7133 = fadd fast float %7132, 4.000000e+00
  %7134 = fmul fast float %7133, 0x3FC5555560000000
  %7135 = fmul fast float %7126, -3.000000e+00
  %7136 = fadd fast float %7125, %7108
  %7137 = fmul fast float %7136, 3.000000e+00
  %7138 = fadd fast float %7135, 1.000000e+00
  %7139 = fadd fast float %7138, %7137
  %7140 = fmul fast float %7126, 0x3FC5555560000000
  %7141 = fadd fast float %7107, 1.000000e+00
  %7142 = fsub fast float 1.000000e+00, %7113
  %7143 = fadd fast float %7142, %7112
  %7144 = fadd fast float %7143, %7117
  %7145 = fmul fast float %7144, 0x3FC5555560000000
  %7146 = fdiv fast float %7118, %7145
  %7147 = fsub fast float %7141, %7146
  %7148 = fsub fast float 1.000000e+00, %7107
  %7149 = fadd fast float %7123, %7110
  %7150 = fmul fast float %7149, 0x3FC5555560000000
  %7151 = fdiv fast float %7124, %7150
  %7152 = fadd fast float %7148, %7151
  %7153 = fadd fast float %7108, 1.000000e+00
  %7154 = fsub fast float 1.000000e+00, %7129
  %7155 = fadd fast float %7154, %7128
  %7156 = fadd fast float %7155, %7133
  %7157 = fmul fast float %7156, 0x3FC5555560000000
  %7158 = fdiv fast float %7134, %7157
  %7159 = fsub fast float %7153, %7158
  %7160 = fsub fast float 1.000000e+00, %7108
  %7161 = fadd fast float %7139, %7126
  %7162 = fmul fast float %7161, 0x3FC5555560000000
  %7163 = fdiv fast float %7140, %7162
  %7164 = fadd fast float %7163, %7160
  %7165 = fmul fast float %7147, %7101
  %7166 = fsub fast float %7022, %7165
  %7167 = fmul fast float %7152, %7101
  %7168 = fadd fast float %7167, %7022
  %7169 = fmul fast float %7164, %7102
  %7170 = fadd fast float %7169, %7023
  %7171 = fmul fast float %7159, %7102
  %7172 = fsub fast float %7023, %7171
  %7173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %7166, float %7172, float %7090, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7174 = extractvalue %dx.types.ResRet.f32 %7173, 0
  %7175 = extractvalue %dx.types.ResRet.f32 %7173, 1
  %7176 = extractvalue %dx.types.ResRet.f32 %7173, 2
  %7177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %7168, float %7172, float %7090, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7178 = extractvalue %dx.types.ResRet.f32 %7177, 0
  %7179 = extractvalue %dx.types.ResRet.f32 %7177, 1
  %7180 = extractvalue %dx.types.ResRet.f32 %7177, 2
  %7181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %7166, float %7170, float %7090, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7182 = extractvalue %dx.types.ResRet.f32 %7181, 0
  %7183 = extractvalue %dx.types.ResRet.f32 %7181, 1
  %7184 = extractvalue %dx.types.ResRet.f32 %7181, 2
  %7185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %7168, float %7170, float %7090, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7186 = extractvalue %dx.types.ResRet.f32 %7185, 0
  %7187 = extractvalue %dx.types.ResRet.f32 %7185, 1
  %7188 = extractvalue %dx.types.ResRet.f32 %7185, 2
  %7189 = fsub fast float %7182, %7174
  %7190 = fsub fast float %7183, %7175
  %7191 = fsub fast float %7184, %7176
  %7192 = fmul fast float %7189, %7162
  %7193 = fmul fast float %7190, %7162
  %7194 = fmul fast float %7191, %7162
  %7195 = fadd fast float %7192, %7174
  %7196 = fadd fast float %7193, %7175
  %7197 = fadd fast float %7194, %7176
  %7198 = fsub fast float %7186, %7178
  %7199 = fsub fast float %7187, %7179
  %7200 = fsub fast float %7188, %7180
  %7201 = fmul fast float %7198, %7162
  %7202 = fmul fast float %7199, %7162
  %7203 = fmul fast float %7200, %7162
  %7204 = fsub fast float %7178, %7195
  %7205 = fadd fast float %7204, %7201
  %7206 = fsub fast float %7179, %7196
  %7207 = fadd fast float %7206, %7202
  %7208 = fsub fast float %7180, %7197
  %7209 = fadd fast float %7208, %7203
  %7210 = fmul fast float %7205, %7150
  %7211 = fmul fast float %7207, %7150
  %7212 = fmul fast float %7209, %7150
  %7213 = fadd fast float %7210, %7195
  %7214 = fadd fast float %7211, %7196
  %7215 = fadd fast float %7212, %7197
  %7216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7217 = extractvalue %dx.types.CBufRet.f32 %7216, 1
  %7218 = fmul fast float %7213, %7217
  %7219 = fmul fast float %7214, %7217
  %7220 = fmul fast float %7215, %7217
  br label %7221

; <label>:7221                                    ; preds = %7052, %7009
  %7222 = phi float [ %7092, %7052 ], [ 1.000000e+00, %7009 ]
  %7223 = phi float [ %7093, %7052 ], [ 1.000000e+00, %7009 ]
  %7224 = phi float [ %7094, %7052 ], [ 1.000000e+00, %7009 ]
  %7225 = phi float [ %7218, %7052 ], [ 0.000000e+00, %7009 ]
  %7226 = phi float [ %7219, %7052 ], [ 0.000000e+00, %7009 ]
  %7227 = phi float [ %7220, %7052 ], [ 0.000000e+00, %7009 ]
  %7228 = fmul fast float %7225, %5557
  %7229 = fmul fast float %7226, %5559
  %7230 = fmul fast float %7227, %5561
  %7231 = fmul fast float %7222, %7016
  %7232 = call float @dx.op.dot3.f32(i32 55, float %7222, float %7223, float %7224, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7233 = call float @dx.op.dot3.f32(i32 55, float %7228, float %7229, float %7230, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7234 = select i1 %201, float %7232, float %7222
  %7235 = select i1 %201, float %7232, float %7223
  %7236 = select i1 %201, float 1.000000e+00, float %7224
  %7237 = select i1 %201, float %7233, float %7228
  %7238 = select i1 %201, float 0.000000e+00, float %7229
  %7239 = select i1 %201, float 0.000000e+00, float %7230
  %7240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7241 = extractvalue %dx.types.CBufRet.i32 %7240, 3
  %7242 = and i32 %7241, 3
  %7243 = icmp ne i32 %7242, 0
  %7244 = and i32 %7241, 4
  %7245 = icmp ne i32 %7244, 0
  %7246 = and i1 %7243, %7245
  %7247 = and i1 %201, %7246
  br i1 %7247, label %7248, label %7254

; <label>:7248                                    ; preds = %7221
  %7249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7250 = extractvalue %dx.types.CBufRet.f32 %7249, 1
  %7251 = fadd fast float %7231, -1.000000e+00
  %7252 = fmul fast float %7250, %7251
  %7253 = fadd fast float %7252, 1.000000e+00
  br label %7254

; <label>:7254                                    ; preds = %7248, %7221
  %7255 = phi float [ %7253, %7248 ], [ %7231, %7221 ]
  %7256 = fadd fast float %7013, %7010
  %7257 = fmul fast float %7234, %7256
  %7258 = fadd fast float %7257, %7237
  %7259 = fadd fast float %7014, %7011
  %7260 = fmul fast float %7235, %7259
  %7261 = fadd fast float %7260, %7238
  %7262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7263 = extractvalue %dx.types.CBufRet.f32 %7262, 0
  br i1 %201, label %7264, label %7279

; <label>:7264                                    ; preds = %7254
  %7265 = fadd fast float %7258, %7261
  %7266 = fmul fast float %7263, %7265
  %7267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7268 = extractvalue %dx.types.CBufRet.f32 %7267, 3
  %7269 = extractvalue %dx.types.CBufRet.f32 %5565, 1
  %7270 = fsub fast float %5570, %5564
  %7271 = fadd fast float %7270, %5571
  %7272 = fsub fast float %7271, %7269
  %7273 = extractvalue %dx.types.CBufRet.f32 %5565, 2
  %7274 = fmul fast float %7272, %7273
  %7275 = call float @dx.op.unary.f32(i32 7, float %7274)  ; Saturate(value)
  %7276 = fsub fast float %7275, %7268
  %7277 = fmul fast float %7276, %7255
  %7278 = fadd fast float %7277, %7268
  br label %7304

; <label>:7279                                    ; preds = %7254
  %7280 = fadd fast float %7015, %7012
  %7281 = fmul fast float %7236, %7280
  %7282 = fadd fast float %7281, %7239
  %7283 = fmul fast float %7263, %7258
  %7284 = fmul fast float %7263, %7261
  %7285 = fmul fast float %7263, %7282
  %7286 = call float @dx.op.binary.f32(i32 35, float %7284, float %7285)  ; FMax(a,b)
  %7287 = call float @dx.op.binary.f32(i32 35, float %7283, float %7286)  ; FMax(a,b)
  %7288 = call float @dx.op.binary.f32(i32 35, float %5559, float %5561)  ; FMax(a,b)
  %7289 = call float @dx.op.binary.f32(i32 35, float %5557, float %7288)  ; FMax(a,b)
  %7290 = call float @dx.op.binary.f32(i32 35, float %7287, float %7289)  ; FMax(a,b)
  %7291 = fcmp fast ugt float %7290, 0x3F10000000000000
  br i1 %7291, label %7293, label %7292

; <label>:7292                                    ; preds = %7279
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7293

; <label>:7293                                    ; preds = %7292, %7279
  %7294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %7295 = extractvalue %dx.types.ResRet.i32 %7294, 0
  %7296 = and i32 %7295, 32
  %7297 = icmp eq i32 %7296, 0
  br i1 %7297, label %7304, label %7298

; <label>:7298                                    ; preds = %7293
  %7299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7300 = extractvalue %dx.types.CBufRet.f32 %7299, 0
  %7301 = fmul fast float %7300, 0x3FE99999A0000000
  %7302 = fadd fast float %7300, %7283
  %7303 = fadd fast float %7301, %7285
  br label %7304

; <label>:7304                                    ; preds = %7298, %7293, %7264
  %7305 = phi float [ 1.000000e+00, %7264 ], [ %5559, %7298 ], [ %5559, %7293 ]
  %7306 = phi float [ 1.000000e+00, %7264 ], [ %5561, %7298 ], [ %5561, %7293 ]
  %7307 = phi float [ %7266, %7264 ], [ %7302, %7298 ], [ %7283, %7293 ]
  %7308 = phi float [ %7278, %7264 ], [ %7284, %7298 ], [ %7284, %7293 ]
  %7309 = phi float [ 1.000000e+00, %7264 ], [ %7303, %7298 ], [ %7285, %7293 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7310 = call float @dx.op.binary.f32(i32 36, float %7307, float 3.225500e+04)  ; FMin(a,b)
  %7311 = call float @dx.op.binary.f32(i32 36, float %7308, float 3.225500e+04)  ; FMin(a,b)
  %7312 = call float @dx.op.binary.f32(i32 36, float %7309, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7310)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7311)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7312)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7313 = call float @dx.op.binary.f32(i32 36, float %5557, float 3.225500e+04)  ; FMin(a,b)
  %7314 = call float @dx.op.binary.f32(i32 36, float %7305, float 3.225500e+04)  ; FMin(a,b)
  %7315 = call float @dx.op.binary.f32(i32 36, float %7306, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %7313)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %7314)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %7315)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!59}
!dx.entryPoints = !{!60}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !48, !51}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
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
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!24 = !{i32 17, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !25}
!25 = !{i32 0, i32 5}
!26 = !{i32 18, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !33}
!33 = !{i32 0, i32 14}
!34 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!35 = !{i32 26, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!36 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!37 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!38 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!39 = !{i32 30, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!40 = !{i32 31, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!41 = !{i32 32, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!42 = !{i32 33, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!43 = !{i32 34, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !33}
!44 = !{i32 35, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 12, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 55, i32 1, i32 2, i32 0, !7}
!48 = !{!49, !50}
!49 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!50 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!51 = !{!52, !53, !54, !55, !56, !57, !58}
!52 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!53 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!54 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!55 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!56 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!57 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!58 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!59 = !{[31 x i32] [i32 29, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119]}
!60 = !{void ()* @ps_main, !"ps_main", !61, !4, !81}
!61 = !{!62, !77, null}
!62 = !{!63, !66, !68, !70, !71, !72, !73, !74, !76}
!63 = !{i32 0, !"SV_Position", i8 9, i8 3, !64, i8 4, i32 1, i8 4, i32 0, i8 0, !65}
!64 = !{i32 0}
!65 = !{i32 3, i32 15}
!66 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !64, i8 2, i32 1, i8 2, i32 1, i8 0, !67}
!67 = !{i32 3, i32 3}
!68 = !{i32 2, !"NORMAL", i8 9, i8 0, !64, i8 2, i32 1, i8 3, i32 2, i8 0, !69}
!69 = !{i32 3, i32 7}
!70 = !{i32 3, !"TANGENT", i8 9, i8 0, !64, i8 2, i32 1, i8 4, i32 3, i8 0, !65}
!71 = !{i32 4, !"SH_RED", i8 9, i8 0, !64, i8 2, i32 1, i8 4, i32 4, i8 0, !65}
!72 = !{i32 5, !"SH_GREEN", i8 9, i8 0, !64, i8 2, i32 1, i8 4, i32 5, i8 0, !65}
!73 = !{i32 6, !"SH_BLUE", i8 9, i8 0, !64, i8 2, i32 1, i8 4, i32 6, i8 0, !65}
!74 = !{i32 7, !"SV_IsFrontFace", i8 5, i8 13, !64, i8 1, i32 1, i8 1, i32 7, i8 0, !75}
!75 = !{i32 3, i32 1}
!76 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !64, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!77 = !{!78, !79}
!78 = !{i32 0, !"SV_Target", i8 9, i8 16, !64, i8 0, i32 1, i8 4, i32 0, i8 0, !65}
!79 = !{i32 1, !"SV_Target", i8 9, i8 16, !80, i8 0, i32 1, i8 4, i32 1, i8 0, !65}
!80 = !{i32 1}
!81 = !{i32 0, i64 16}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = !{!91, !91, i64 0}
!91 = !{!"int", !92, i64 0}
!92 = !{!"omnipotent char", !93, i64 0}
!93 = !{!"Simple C/C++ TBAA"}
!94 = !{!95, !97, !99, !101}
!95 = distinct !{!95, !96, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!96 = distinct !{!96, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!97 = distinct !{!97, !98, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!98 = distinct !{!98, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!99 = distinct !{!99, !100, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!100 = distinct !{!100, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!101 = distinct !{!101, !102, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!102 = distinct !{!102, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = !{!105, !105, i64 0}
!105 = !{!"float", !92, i64 0}
!106 = distinct !{!106, !84}
!107 = distinct !{!107, !84}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = !{!116, !118, !120, !121, !123, !124, !125, !127, !128, !129}
!116 = distinct !{!116, !117, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!117 = distinct !{!117, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!118 = distinct !{!118, !119, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!119 = distinct !{!119, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!120 = distinct !{!120, !119, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!121 = distinct !{!121, !122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!122 = distinct !{!122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!123 = distinct !{!123, !122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!124 = distinct !{!124, !122, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!125 = distinct !{!125, !126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!126 = distinct !{!126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!127 = distinct !{!127, !126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!128 = distinct !{!128, !126, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
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

