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
; shader hash: 6dacd7daf9082d2abd564b718e53265b
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = alloca [4 x i32], align 4
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = icmp ne i32 %45, 0
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = alloca [12 x float], align 4
  %68 = alloca [12 x float], align 4
  %69 = alloca [4 x float], align 4
  %70 = alloca [4 x float], align 4
  %71 = alloca [4 x float], align 4
  %72 = alloca [3 x float], align 4
  %73 = alloca [3 x float], align 4
  %74 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %75 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = fmul fast float %77, %63
  %79 = fmul fast float %77, %64
  %80 = select i1 %46, float 1.000000e+00, float -1.000000e+00
  %81 = fmul fast float %58, %80
  %82 = fmul fast float %59, %80
  %83 = fmul fast float %60, %80
  %84 = fmul fast float %59, %56
  %85 = fmul fast float %60, %55
  %86 = fsub fast float %84, %85
  %87 = fmul fast float %60, %54
  %88 = fmul fast float %58, %56
  %89 = fsub fast float %87, %88
  %90 = fmul fast float %58, %55
  %91 = fmul fast float %59, %54
  %92 = fsub fast float %90, %91
  %93 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float %47, float %48, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %94 = bitcast float %93 to i32
  %95 = ashr i32 %94, 1
  %96 = sub nsw i32 1597250115, %95
  %97 = bitcast i32 %96 to float
  %98 = fmul fast float %97, %47
  %99 = fmul fast float %97, %48
  %100 = fmul fast float %97, %49
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %104 = fmul fast float %78, 2.000000e+00
  %105 = fmul fast float %104, %102
  %106 = fmul fast float %79, 2.000000e+00
  %107 = fmul fast float %106, %103
  %108 = fsub fast float 1.000000e+00, %105
  %109 = fsub fast float 1.000000e+00, %107
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %114 = fmul fast float %108, %111
  %115 = fmul fast float %108, %112
  %116 = fmul fast float %108, %113
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = fmul fast float %109, %118
  %122 = fmul fast float %109, %119
  %123 = fmul fast float %109, %120
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = fadd fast float %121, %125
  %129 = fadd fast float %128, %114
  %130 = fadd fast float %122, %126
  %131 = fadd fast float %130, %115
  %132 = fadd fast float %123, %127
  %133 = fadd fast float %132, %116
  %134 = fmul fast float %129, %66
  %135 = fmul fast float %131, %66
  %136 = fmul fast float %133, %66
  %137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.i32 %137, 0
  %139 = extractvalue %dx.types.ResRet.i32 %137, 1
  %140 = extractvalue %dx.types.ResRet.i32 %137, 2
  %141 = extractvalue %dx.types.ResRet.i32 %137, 3
  %142 = bitcast i32 %138 to float
  %143 = bitcast i32 %139 to float
  %144 = bitcast i32 %140 to float
  %145 = bitcast i32 %141 to float
  %146 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %147 = call float @dx.op.unary.f32(i32 25, float %146)  ; Rsqrt(value)
  %148 = fmul fast float %147, %81
  %149 = fmul fast float %147, %82
  %150 = fmul fast float %147, %83
  %151 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %134, float %135, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %152 = call float @dx.op.unary.f32(i32 25, float %151)  ; Rsqrt(value)
  %153 = fmul fast float %152, %134
  %154 = fmul fast float %152, %135
  %155 = fmul fast float %152, %136
  %156 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %148, float %149, float %150)  ; Dot3(ax,ay,az,bx,by,bz)
  %157 = fmul fast float %156, %156
  %158 = fmul fast float %157, %144
  %159 = fadd fast float %158, %145
  %160 = call float @dx.op.unary.f32(i32 7, float %159)  ; Saturate(value)
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 3
  %163 = fmul fast float %162, %151
  %164 = fsub fast float %142, %163
  %165 = fmul fast float %164, %143
  %166 = call float @dx.op.unary.f32(i32 7, float %165)  ; Saturate(value)
  %167 = fmul fast float %166, %160
  %168 = fmul fast float %78, 5.000000e-01
  %169 = fmul fast float %79, 5.000000e-01
  %170 = fptosi float %168 to i32
  %171 = fptosi float %169 to i32
  %172 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %170, i32 %171, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = lshr i32 %173, 18
  %175 = uitofp i32 %174 to float
  %176 = fmul fast float %175, 0x3F4C00EBA0000000
  %177 = call float @dx.op.unary.f32(i32 21, float %176)  ; Exp(value)
  %178 = fadd fast float %177, -1.000000e+00
  %179 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %20, i32 0)  ; GetDimensions(handle,mipLevel)
  %180 = extractvalue %dx.types.Dimensions %179, 0
  %181 = sitofp i32 %180 to float
  %182 = extractvalue %dx.types.Dimensions %179, 1
  %183 = sitofp i32 %182 to float
  %184 = fcmp fast oge float %168, %181
  %185 = fcmp fast oge float %169, %183
  %186 = or i1 %184, %185
  %187 = select i1 %186, float 0x4197782600000000, float %178
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 3
  %191 = fmul fast float %189, %78
  %192 = fmul fast float %190, %79
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = and i32 %194, 114688
  %196 = icmp ne i32 %195, 0
  %197 = select i1 %196, float %191, float 0.000000e+00
  %198 = select i1 %196, float %192, float 0.000000e+00
  %199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %40, float %197, float %198, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = fmul fast float %200, 2.550000e+02
  %202 = fptoui float %201 to i32
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.i32 %204, 3
  %206 = and i32 %205, 3
  %207 = icmp ne i32 %206, 0
  %208 = and i32 %205, 4
  %209 = icmp ne i32 %208, 0
  %210 = and i1 %207, %209
  br i1 %210, label %211, label %222

; <label>:211                                     ; preds = %0
  %212 = extractvalue %dx.types.CBufRet.f32 %203, 3
  %213 = fmul fast float %212, %79
  %214 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %215 = fmul fast float %214, %78
  %216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %215, float %213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = fsub fast float 1.000000e+00, %217
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %221 = fcmp fast olt float %218, %220
  br label %225

; <label>:222                                     ; preds = %0
  %223 = icmp eq i32 %208, 0
  %224 = and i1 %207, %223
  br label %225

; <label>:225                                     ; preds = %222, %211
  %226 = phi i1 [ %221, %211 ], [ %224, %222 ]
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 2
  %229 = fmul fast float %228, 0x3FE3C6EF40000000
  %230 = frem fast float %78, 2.560000e+02
  %231 = frem fast float %79, 2.560000e+02
  %232 = fptoui float %230 to i32
  %233 = fptoui float %231 to i32
  %234 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %232, i32 %233, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = fadd fast float %235, %229
  %237 = call float @dx.op.unary.f32(i32 22, float %236)  ; Frc(value)
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = shl i32 %239, 4
  %241 = and i32 %240, 32752
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = lshr i32 %239, 7
  %244 = and i32 %243, 32752
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %239, 22
  %247 = shl nuw nsw i32 %246, 5
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 255
  %252 = uitofp i32 %251 to float
  %253 = fmul fast float %252, 0x3F70101020000000
  %254 = lshr i32 %250, 8
  %255 = and i32 %254, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F70101020000000
  %258 = lshr i32 %250, 16
  %259 = and i32 %258, 255
  %260 = uitofp i32 %259 to float
  %261 = fmul fast float %260, 0x3F70101020000000
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 65535
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %263, 16
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 65535
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = lshr i32 %269, 16
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = fmul fast float %271, 0x3F50624DE0000000
  %275 = fmul fast float %273, 0x3F50624DE0000000
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 2
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %287, label %280

; <label>:280                                     ; preds = %225
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = add i32 %282, 0
  %284 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %283, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %285 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %284, %dx.types.Handle %75, float %61, float %62, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 3
  br label %287

; <label>:287                                     ; preds = %280, %225
  %288 = phi float [ 1.000000e+00, %225 ], [ %286, %280 ]
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = or i32 %292, %290
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %882, label %295

; <label>:295                                     ; preds = %287
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = lshr i32 %297, 16
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = fmul fast float %299, 0x3F50624DE0000000
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = lshr i32 %302, 16
  %304 = and i32 %303, 255
  %305 = lshr i32 %302, 24
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %307, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = lshr i32 %313, 22
  %315 = shl nuw nsw i32 %314, 5
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = shl i32 %313, 4
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %313, 7
  %321 = and i32 %320, 32752
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 3
  %325 = fmul fast float %324, 1.000000e+03
  %326 = fmul fast float %274, %325
  %327 = call float @dx.op.unary.f32(i32 22, float %326)  ; Frc(value)
  %328 = fadd fast float %327, %265
  %329 = fmul fast float %275, %325
  %330 = call float @dx.op.unary.f32(i32 22, float %329)  ; Frc(value)
  %331 = fadd fast float %330, %267
  %332 = fmul fast float %300, %325
  %333 = call float @dx.op.unary.f32(i32 22, float %332)  ; Frc(value)
  %334 = fmul fast float %333, 0x401921FB60000000
  %335 = fadd fast float %334, %316
  %336 = call float @dx.op.unary.f32(i32 13, float %335)  ; Sin(value)
  %337 = call float @dx.op.unary.f32(i32 12, float %335)  ; Cos(value)
  %338 = fsub fast float -0.000000e+00, %336
  %339 = fadd fast float %61, -5.000000e-01
  %340 = fadd fast float %62, -5.000000e-01
  %341 = fmul fast float %309, %339
  %342 = fmul fast float %311, %340
  %343 = fadd fast float %341, 5.000000e-01
  %344 = fadd fast float %342, 5.000000e-01
  %345 = fmul fast float %319, %343
  %346 = fmul fast float %322, %344
  %347 = fmul fast float %337, %345
  %348 = call float @dx.op.tertiary.f32(i32 46, float %338, float %346, float %347)  ; FMad(a,b,c)
  %349 = fmul fast float %336, %345
  %350 = call float @dx.op.tertiary.f32(i32 46, float %337, float %346, float %349)  ; FMad(a,b,c)
  %351 = fadd fast float %328, %348
  %352 = fadd fast float %331, %350
  %353 = icmp ugt i32 %304, 1
  %354 = icmp ugt i32 %302, 33554431
  %355 = or i1 %354, %353
  br i1 %355, label %356, label %380

; <label>:356                                     ; preds = %295
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = lshr i32 %358, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = fmul fast float %324, %360
  %362 = call float @dx.op.unary.f32(i32 22, float %361)  ; Frc(value)
  %363 = mul nuw nsw i32 %304, %305
  %364 = uitofp i32 %363 to float
  %365 = fmul fast float %362, %364
  %366 = call float @dx.op.unary.f32(i32 27, float %365)  ; Round_ni(value)
  %367 = fptoui float %366 to i32
  %368 = urem i32 %367, %304
  %369 = udiv i32 %367, %305
  %370 = call float @dx.op.unary.f32(i32 22, float %351)  ; Frc(value)
  %371 = call float @dx.op.unary.f32(i32 22, float %352)  ; Frc(value)
  %372 = uitofp i32 %368 to float
  %373 = uitofp i32 %369 to float
  %374 = fadd fast float %370, %372
  %375 = fadd fast float %371, %373
  %376 = uitofp i32 %304 to float
  %377 = uitofp i32 %305 to float
  %378 = fdiv fast float %374, %376
  %379 = fdiv fast float %375, %377
  br label %380

; <label>:380                                     ; preds = %356, %295
  %381 = phi float [ %378, %356 ], [ %351, %295 ]
  %382 = phi float [ %379, %356 ], [ %352, %295 ]
  %383 = and i32 %290, 256
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %429, label %385

; <label>:385                                     ; preds = %380
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = add i32 %387, 0
  %389 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %388, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %390 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %389, %dx.types.Handle %75, float %381, float %382, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %391 = extractvalue %dx.types.ResRet.f32 %390, 0
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = shl i32 %393, 4
  %395 = and i32 %394, 32752
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %393, 7
  %398 = and i32 %397, 32752
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = fsub fast float 1.000000e+00, %288
  %401 = call float @dx.op.binary.f32(i32 35, float %400, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %402 = bitcast float %288 to i32
  %403 = sitofp i32 %402 to float
  %404 = fadd fast float %403, 0xC1CFBF8940000000
  %405 = fmul fast float %399, %404
  %406 = fadd fast float %405, 0x41CFBF8940000000
  %407 = fptosi float %406 to i32
  %408 = bitcast i32 %407 to float
  %409 = bitcast float %401 to i32
  %410 = sitofp i32 %409 to float
  %411 = fadd fast float %410, 0xC1CFBF8940000000
  %412 = fmul fast float %411, %399
  %413 = fadd fast float %412, 0x41CFBF8940000000
  %414 = fptosi float %413 to i32
  %415 = bitcast i32 %414 to float
  %416 = fmul fast float %408, %396
  %417 = fmul fast float %415, %396
  %418 = fsub fast float %401, %416
  %419 = fadd fast float %417, %401
  %420 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %421 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %422 = fsub fast float %391, %420
  %423 = fsub fast float %421, %420
  %424 = bitcast float %423 to i32
  %425 = sub nsw i32 2129859010, %424
  %426 = bitcast i32 %425 to float
  %427 = fmul fast float %426, %422
  %428 = call float @dx.op.unary.f32(i32 7, float %427)  ; Saturate(value)
  br label %429

; <label>:429                                     ; preds = %385, %380
  %430 = phi float [ %428, %385 ], [ %288, %380 ]
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 128
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %450, label %435

; <label>:435                                     ; preds = %429
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 180, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = add i32 %437, 0
  %439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %438, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %440 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %439, %dx.types.Handle %75, float %381, float %382, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 524288
  %445 = icmp ne i32 %444, 0
  %446 = fcmp fast ogt float %441, 0x3FE0101020000000
  %447 = select i1 %446, float 1.000000e+00, float 0.000000e+00
  %448 = select i1 %445, float %447, float %441
  %449 = fmul fast float %448, %430
  br label %450

; <label>:450                                     ; preds = %435, %429
  %451 = phi float [ %449, %435 ], [ %430, %429 ]
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = and i32 %453, 16
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %649, label %456

; <label>:456                                     ; preds = %450
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = add i32 %460, 0
  %462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %463 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %462, %dx.types.Handle %74, float %381, float %382, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = extractvalue %dx.types.ResRet.f32 %463, 1
  %466 = extractvalue %dx.types.ResRet.f32 %463, 2
  %467 = extractvalue %dx.types.ResRet.f32 %463, 3
  %468 = and i32 %458, 255
  %469 = uitofp i32 %468 to float
  %470 = lshr i32 %458, 8
  %471 = and i32 %470, 255
  %472 = uitofp i32 %471 to float
  %473 = fmul fast float %467, %469
  %474 = fadd fast float %473, %472
  %475 = fmul fast float %474, 0x3F70101000000000
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = and i32 %477, 512
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %487, label %480

; <label>:480                                     ; preds = %456
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = add i32 %482, 0
  %484 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %483, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %485 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %484, %dx.types.Handle %75, float %381, float %382, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  br label %487

; <label>:487                                     ; preds = %480, %456
  %488 = phi float [ %486, %480 ], [ 1.000000e+00, %456 ]
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = and i32 %490, 33554432
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %596, label %493

; <label>:493                                     ; preds = %487
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = and i32 %495, 65535
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = lshr i32 %495, 16
  %499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %498)  ; LegacyF16ToF32(value)
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = and i32 %501, 65535
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = lshr i32 %505, 24
  %507 = uitofp i32 %506 to float
  %508 = fmul fast float %507, 0x3F70101020000000
  %509 = and i32 %505, 255
  %510 = uitofp i32 %509 to float
  %511 = fmul fast float %510, 0x3F70101020000000
  %512 = lshr i32 %505, 8
  %513 = and i32 %512, 255
  %514 = uitofp i32 %513 to float
  %515 = fmul fast float %514, 0x3F70101020000000
  %516 = lshr i32 %505, 16
  %517 = and i32 %516, 255
  %518 = uitofp i32 %517 to float
  %519 = fmul fast float %518, 0x3F70101020000000
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = lshr i32 %521, 24
  %523 = uitofp i32 %522 to float
  %524 = fmul fast float %523, 0x3F70101020000000
  %525 = and i32 %521, 255
  %526 = uitofp i32 %525 to float
  %527 = fmul fast float %526, 0x3F70101020000000
  %528 = lshr i32 %521, 8
  %529 = and i32 %528, 255
  %530 = uitofp i32 %529 to float
  %531 = fmul fast float %530, 0x3F70101020000000
  %532 = lshr i32 %521, 16
  %533 = and i32 %532, 255
  %534 = uitofp i32 %533 to float
  %535 = fmul fast float %534, 0x3F70101020000000
  %536 = bitcast float %464 to i32
  %537 = ashr i32 %536, 1
  %538 = sub nsw i32 1597463174, %537
  %539 = bitcast i32 %538 to float
  %540 = fmul fast float %464, 5.000000e-01
  %541 = fmul fast float %539, %539
  %542 = fmul fast float %541, %540
  %543 = fsub fast float 1.500000e+00, %542
  %544 = fmul fast float %539, %464
  %545 = fmul fast float %544, %543
  %546 = bitcast float %465 to i32
  %547 = ashr i32 %546, 1
  %548 = sub nsw i32 1597463174, %547
  %549 = bitcast i32 %548 to float
  %550 = fmul fast float %465, 5.000000e-01
  %551 = fmul fast float %549, %549
  %552 = fmul fast float %551, %550
  %553 = fsub fast float 1.500000e+00, %552
  %554 = fmul fast float %549, %465
  %555 = fmul fast float %554, %553
  %556 = bitcast float %466 to i32
  %557 = ashr i32 %556, 1
  %558 = sub nsw i32 1597463174, %557
  %559 = bitcast i32 %558 to float
  %560 = fmul fast float %466, 5.000000e-01
  %561 = fmul fast float %559, %559
  %562 = fmul fast float %561, %560
  %563 = fsub fast float 1.500000e+00, %562
  %564 = fmul fast float %559, %466
  %565 = fmul fast float %564, %563
  %566 = fsub fast float %545, %527
  %567 = fsub fast float %555, %531
  %568 = fsub fast float %565, %535
  %569 = fmul fast float %566, %497
  %570 = fmul fast float %567, %499
  %571 = fmul fast float %568, %503
  %572 = fadd fast float %569, %511
  %573 = fadd fast float %570, %515
  %574 = fadd fast float %571, %519
  %575 = call float @dx.op.unary.f32(i32 7, float %572)  ; Saturate(value)
  %576 = call float @dx.op.unary.f32(i32 7, float %573)  ; Saturate(value)
  %577 = call float @dx.op.unary.f32(i32 7, float %574)  ; Saturate(value)
  %578 = fmul fast float %575, %575
  %579 = fmul fast float %576, %576
  %580 = fmul fast float %577, %577
  %581 = fsub fast float %578, %464
  %582 = fsub fast float %579, %465
  %583 = fsub fast float %580, %466
  %584 = fmul fast float %581, %488
  %585 = fmul fast float %582, %488
  %586 = fmul fast float %583, %488
  %587 = fadd fast float %584, %464
  %588 = fadd fast float %585, %465
  %589 = fadd fast float %586, %466
  %590 = fadd fast float %508, %475
  %591 = fsub fast float %590, %524
  %592 = call float @dx.op.unary.f32(i32 7, float %591)  ; Saturate(value)
  %593 = fsub fast float %592, %475
  %594 = fmul fast float %593, %488
  %595 = fadd fast float %594, %475
  br label %649

; <label>:596                                     ; preds = %487
  %597 = and i32 %490, 134217728
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %633, label %599

; <label>:599                                     ; preds = %596
  %600 = call float @dx.op.unary.f32(i32 24, float %253)  ; Sqrt(value)
  %601 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %602 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %603 = fadd fast float %600, -5.000000e-01
  %604 = fadd fast float %601, -5.000000e-01
  %605 = fadd fast float %602, -5.000000e-01
  %606 = fmul fast float %603, %488
  %607 = fmul fast float %604, %488
  %608 = fmul fast float %605, %488
  %609 = fadd fast float %606, 5.000000e-01
  %610 = fadd fast float %607, 5.000000e-01
  %611 = fadd fast float %608, 5.000000e-01
  %612 = call float @dx.op.unary.f32(i32 24, float %464)  ; Sqrt(value)
  %613 = call float @dx.op.unary.f32(i32 24, float %465)  ; Sqrt(value)
  %614 = call float @dx.op.unary.f32(i32 24, float %466)  ; Sqrt(value)
  %615 = fmul fast float %609, 2.000000e+00
  %616 = fsub fast float 1.000000e+00, %615
  %617 = fmul fast float %616, %612
  %618 = fadd fast float %617, %615
  %619 = fmul fast float %618, %612
  %620 = fmul fast float %610, 2.000000e+00
  %621 = fsub fast float 1.000000e+00, %620
  %622 = fmul fast float %621, %613
  %623 = fadd fast float %622, %620
  %624 = fmul fast float %623, %613
  %625 = fmul fast float %611, 2.000000e+00
  %626 = fsub fast float 1.000000e+00, %625
  %627 = fmul fast float %626, %614
  %628 = fadd fast float %627, %625
  %629 = fmul fast float %628, %614
  %630 = fmul fast float %619, %619
  %631 = fmul fast float %624, %624
  %632 = fmul fast float %629, %629
  br label %649

; <label>:633                                     ; preds = %596
  %634 = fmul fast float %253, %253
  %635 = fmul fast float %257, %257
  %636 = fmul fast float %261, %261
  %637 = fadd fast float %634, -1.000000e+00
  %638 = fadd fast float %635, -1.000000e+00
  %639 = fadd fast float %636, -1.000000e+00
  %640 = fmul fast float %488, %637
  %641 = fmul fast float %488, %638
  %642 = fmul fast float %488, %639
  %643 = fadd fast float %640, 1.000000e+00
  %644 = fadd fast float %641, 1.000000e+00
  %645 = fadd fast float %642, 1.000000e+00
  %646 = fmul fast float %643, %464
  %647 = fmul fast float %644, %465
  %648 = fmul fast float %645, %466
  br label %649

; <label>:649                                     ; preds = %633, %599, %493, %450
  %650 = phi float [ %595, %493 ], [ %475, %599 ], [ %475, %633 ], [ 0x3FA23C0BE0000000, %450 ]
  %651 = phi float [ %587, %493 ], [ %630, %599 ], [ %646, %633 ], [ 1.000000e+00, %450 ]
  %652 = phi float [ %588, %493 ], [ %631, %599 ], [ %647, %633 ], [ 1.000000e+00, %450 ]
  %653 = phi float [ %589, %493 ], [ %632, %599 ], [ %648, %633 ], [ 1.000000e+00, %450 ]
  %654 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.i32 %654, 1
  %656 = and i32 %655, 1
  %657 = icmp ne i32 %656, 0
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = and i32 %659, 32
  %661 = icmp ne i32 %660, 0
  %662 = and i1 %657, %661
  %663 = select i1 %662, float 1.000000e+00, float %651
  %664 = select i1 %662, float 0x3FD3333340000000, float %652
  %665 = select i1 %662, float 0x3FD3333340000000, float %653
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = and i32 %667, 32
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %739, label %670

; <label>:670                                     ; preds = %649
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = add i32 %674, 0
  %676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %675, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %677 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %676, %dx.types.Handle %74, float %381, float %382, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 0
  %679 = extractvalue %dx.types.ResRet.f32 %677, 1
  %680 = extractvalue %dx.types.ResRet.f32 %677, 2
  %681 = extractvalue %dx.types.ResRet.f32 %677, 3
  %682 = and i32 %672, 255
  %683 = uitofp i32 %682 to float
  %684 = lshr i32 %672, 8
  %685 = and i32 %684, 255
  %686 = uitofp i32 %685 to float
  %687 = lshr i32 %672, 16
  %688 = and i32 %687, 255
  %689 = uitofp i32 %688 to float
  %690 = fmul fast float %689, 0x3F70101000000000
  %691 = fmul fast float %678, %683
  %692 = fadd fast float %691, %686
  %693 = fmul fast float %692, 0x3F70101000000000
  %694 = fadd fast float %679, -5.000000e-01
  %695 = fadd fast float %681, -5.000000e-01
  %696 = fmul fast float %694, %690
  %697 = fmul fast float %695, %690
  %698 = fadd fast float %696, 5.000000e-01
  %699 = fadd fast float %697, 5.000000e-01
  %700 = fmul fast float %698, 2.000000e+00
  %701 = fadd fast float %700, -1.000000e+00
  %702 = fmul fast float %699, 2.000000e+00
  %703 = fadd fast float %702, -1.000000e+00
  %704 = fadd fast float %701, %703
  %705 = fmul fast float %704, 5.000000e-01
  %706 = fsub fast float %701, %703
  %707 = fmul fast float %706, 5.000000e-01
  %708 = call float @dx.op.unary.f32(i32 6, float %705)  ; FAbs(value)
  %709 = fsub fast float 1.000000e+00, %708
  %710 = call float @dx.op.unary.f32(i32 6, float %707)  ; FAbs(value)
  %711 = fsub fast float %709, %710
  %712 = call float @dx.op.dot3.f32(i32 55, float %705, float %707, float %711, float %705, float %707, float %711)  ; Dot3(ax,ay,az,bx,by,bz)
  %713 = call float @dx.op.unary.f32(i32 25, float %712)  ; Rsqrt(value)
  %714 = fmul fast float %705, %713
  %715 = fmul fast float %707, %713
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = and i32 %717, 67108864
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %735, label %720

; <label>:720                                     ; preds = %670
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 65535
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = and i32 %726, 65535
  %728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %727)  ; LegacyF16ToF32(value)
  %729 = lshr i32 %722, 16
  %730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %729)  ; LegacyF16ToF32(value)
  %731 = fsub fast float %693, %730
  %732 = fmul fast float %731, %724
  %733 = fadd fast float %732, %728
  %734 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  br label %735

; <label>:735                                     ; preds = %720, %670
  %736 = phi float [ %734, %720 ], [ %693, %670 ]
  %737 = call float @dx.op.dot2.f32(i32 54, float %714, float %715, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %738 = call float @dx.op.dot2.f32(i32 54, float %714, float %715, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %739

; <label>:739                                     ; preds = %735, %649
  %740 = phi float [ %736, %735 ], [ 0x3FD6666660000000, %649 ]
  %741 = phi float [ %737, %735 ], [ 0.000000e+00, %649 ]
  %742 = phi float [ %738, %735 ], [ 0.000000e+00, %649 ]
  %743 = phi float [ %680, %735 ], [ 1.000000e+00, %649 ]
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = lshr i32 %745, 22
  %747 = shl nuw nsw i32 %746, 5
  %748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %747)  ; LegacyF16ToF32(value)
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = and i32 %750, 64
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %785, label %753

; <label>:753                                     ; preds = %739
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 176, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = add i32 %755, 0
  %757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %756, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = and i32 %759, 131072
  %761 = icmp eq i32 %760, 0
  %762 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %757, %dx.types.Handle %74, float %381, float %382, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %763 = extractvalue %dx.types.ResRet.f32 %762, 0
  %764 = extractvalue %dx.types.ResRet.f32 %762, 1
  %765 = extractvalue %dx.types.ResRet.f32 %762, 2
  %766 = fmul fast float %763, %242
  %767 = fmul fast float %764, %245
  %768 = fmul fast float %765, %248
  br i1 %761, label %775, label %769

; <label>:769                                     ; preds = %753
  %770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.f32 %770, 0
  %772 = fmul fast float %771, %766
  %773 = fmul fast float %771, %767
  %774 = fmul fast float %771, %768
  br label %775

; <label>:775                                     ; preds = %769, %753
  %776 = phi float [ %772, %769 ], [ %766, %753 ]
  %777 = phi float [ %773, %769 ], [ %767, %753 ]
  %778 = phi float [ %774, %769 ], [ %768, %753 ]
  %779 = fmul fast float %776, %748
  %780 = select i1 %226, float %779, float %776
  %781 = call float @dx.op.dot3.f32(i32 55, float %780, float %777, float %778, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %782 = select i1 %226, float 0.000000e+00, float %776
  %783 = select i1 %226, float %781, float %777
  %784 = select i1 %226, float 0.000000e+00, float %778
  br label %785

; <label>:785                                     ; preds = %775, %739
  %786 = phi float [ %782, %775 ], [ 0.000000e+00, %739 ]
  %787 = phi float [ %783, %775 ], [ 0.000000e+00, %739 ]
  %788 = phi float [ %784, %775 ], [ 0.000000e+00, %739 ]
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = and i32 %790, 1024
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %821, label %793

; <label>:793                                     ; preds = %785
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = and i32 %795, 255
  %797 = uitofp i32 %796 to float
  %798 = fmul fast float %797, 0x3F70101020000000
  %799 = lshr i32 %795, 8
  %800 = and i32 %799, 255
  %801 = uitofp i32 %800 to float
  %802 = fmul fast float %801, 0x3F70101020000000
  %803 = lshr i32 %795, 16
  %804 = and i32 %803, 255
  %805 = uitofp i32 %804 to float
  %806 = fmul fast float %805, 0x3F70101020000000
  %807 = fmul fast float %798, %798
  %808 = fmul fast float %802, %802
  %809 = fmul fast float %806, %806
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 192, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = add i32 %811, 0
  %813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %812, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %814 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %813, %dx.types.Handle %75, float %381, float %382, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %815 = extractvalue %dx.types.ResRet.f32 %814, 0
  %816 = extractvalue %dx.types.ResRet.f32 %814, 1
  %817 = extractvalue %dx.types.ResRet.f32 %814, 2
  %818 = fmul fast float %807, %815
  %819 = fmul fast float %808, %816
  %820 = fmul fast float %809, %817
  br label %821

; <label>:821                                     ; preds = %793, %785
  %822 = phi float [ %818, %793 ], [ 0.000000e+00, %785 ]
  %823 = phi float [ %819, %793 ], [ 0.000000e+00, %785 ]
  %824 = phi float [ %820, %793 ], [ 0.000000e+00, %785 ]
  %825 = fcmp fast ogt float %822, 0.000000e+00
  %826 = fcmp fast ogt float %823, 0.000000e+00
  %827 = fcmp fast ogt float %824, 0.000000e+00
  %828 = call float @dx.op.unary.f32(i32 23, float %822)  ; Log(value)
  %829 = call float @dx.op.unary.f32(i32 23, float %823)  ; Log(value)
  %830 = call float @dx.op.unary.f32(i32 23, float %824)  ; Log(value)
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = lshr i32 %832, 7
  %834 = and i32 %833, 32752
  %835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %834)  ; LegacyF16ToF32(value)
  %836 = fmul fast float %828, 0xBFE62E4300000000
  %837 = fmul fast float %836, %835
  %838 = fmul fast float %829, 0xBFE62E4300000000
  %839 = fmul fast float %838, %835
  %840 = fmul fast float %830, 0xBFE62E4300000000
  %841 = fmul fast float %840, %835
  %842 = select i1 %825, float %837, float 1.270000e+02
  %843 = select i1 %826, float %839, float 1.270000e+02
  %844 = select i1 %827, float %841, float 1.270000e+02
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = and i32 %846, 10240
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %868, label %849

; <label>:849                                     ; preds = %821
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = and i32 %851, 2048
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %868, label %854

; <label>:854                                     ; preds = %849
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = add i32 %856, 0
  %858 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %857, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %859 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %858, %dx.types.Handle %75, float %381, float %382, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %860 = extractvalue %dx.types.ResRet.f32 %859, 3
  %861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %862 = extractvalue %dx.types.ResRet.i32 %861, 0
  %863 = shl i32 %862, 4
  %864 = and i32 %863, 32752
  %865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %864)  ; LegacyF16ToF32(value)
  %866 = fmul fast float %865, %860
  %867 = call float @dx.op.binary.f32(i32 35, float %866, float 0x3F70101020000000)  ; FMax(a,b)
  br label %868

; <label>:868                                     ; preds = %854, %849, %821
  %869 = phi float [ %867, %854 ], [ 0x3F70101020000000, %849 ], [ 0x3F70101020000000, %821 ]
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = and i32 %871, 255
  %873 = uitofp i32 %872 to float
  %874 = lshr i32 %871, 8
  %875 = and i32 %874, 255
  %876 = uitofp i32 %875 to float
  %877 = call float @dx.op.dot3.f32(i32 55, float %663, float %664, float %665, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %878 = fmul fast float %876, %877
  %879 = fadd fast float %878, %873
  %880 = fmul fast float %879, 0x3F70101020000000
  %881 = call float @dx.op.unary.f32(i32 7, float %880)  ; Saturate(value)
  br label %882

; <label>:882                                     ; preds = %868, %287
  %883 = phi float [ 0.000000e+00, %287 ], [ %741, %868 ]
  %884 = phi float [ 0.000000e+00, %287 ], [ %742, %868 ]
  %885 = phi float [ 0.000000e+00, %287 ], [ %663, %868 ]
  %886 = phi float [ 0.000000e+00, %287 ], [ %664, %868 ]
  %887 = phi float [ 0.000000e+00, %287 ], [ %665, %868 ]
  %888 = phi float [ 0.000000e+00, %287 ], [ %842, %868 ]
  %889 = phi float [ 0.000000e+00, %287 ], [ %843, %868 ]
  %890 = phi float [ 0.000000e+00, %287 ], [ %844, %868 ]
  %891 = phi float [ 0.000000e+00, %287 ], [ %786, %868 ]
  %892 = phi float [ 0.000000e+00, %287 ], [ %787, %868 ]
  %893 = phi float [ 0.000000e+00, %287 ], [ %788, %868 ]
  %894 = phi float [ 0.000000e+00, %287 ], [ %650, %868 ]
  %895 = phi float [ 0.000000e+00, %287 ], [ %451, %868 ]
  %896 = phi float [ 0.000000e+00, %287 ], [ %740, %868 ]
  %897 = phi float [ 0.000000e+00, %287 ], [ %743, %868 ]
  %898 = phi float [ 0.000000e+00, %287 ], [ %869, %868 ]
  %899 = phi float [ 0.000000e+00, %287 ], [ %881, %868 ]
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 0
  %902 = call float @dx.op.dot2.f32(i32 54, float %883, float %884, float %883, float %884)  ; Dot2(ax,ay,bx,by)
  %903 = fmul fast float %902, 0x3FE3333340000000
  %904 = fsub fast float 1.000000e+00, %903
  %905 = call float @dx.op.dot3.f32(i32 55, float %883, float %884, float %904, float %883, float %884, float %904)  ; Dot3(ax,ay,az,bx,by,bz)
  %906 = call float @dx.op.unary.f32(i32 25, float %905)  ; Rsqrt(value)
  %907 = fmul fast float %906, %883
  %908 = fmul fast float %906, %884
  %909 = fmul fast float %904, %906
  %910 = fmul fast float %909, %81
  %911 = fmul fast float %909, %82
  %912 = fmul fast float %909, %83
  %913 = fmul fast float %907, %54
  %914 = fmul fast float %907, %55
  %915 = fmul fast float %907, %56
  %916 = fmul fast float %86, %57
  %917 = fmul fast float %916, %908
  %918 = fmul fast float %89, %57
  %919 = fmul fast float %918, %908
  %920 = fmul fast float %92, %57
  %921 = fmul fast float %920, %908
  %922 = fadd fast float %917, %913
  %923 = fmul fast float %922, %80
  %924 = fadd fast float %923, %910
  %925 = fadd fast float %919, %914
  %926 = fmul fast float %925, %80
  %927 = fadd fast float %926, %911
  %928 = fadd fast float %921, %915
  %929 = fmul fast float %928, %80
  %930 = fadd fast float %929, %912
  %931 = call float @dx.op.dot3.f32(i32 55, float %924, float %927, float %930, float %924, float %927, float %930)  ; Dot3(ax,ay,az,bx,by,bz)
  %932 = call float @dx.op.unary.f32(i32 25, float %931)  ; Rsqrt(value)
  %933 = fmul fast float %924, %932
  %934 = fmul fast float %927, %932
  %935 = fmul fast float %930, %932
  %936 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %937 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %938 = call float @dx.op.unary.f32(i32 83, float %136)  ; DerivCoarseX(value)
  %939 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %940 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %941 = call float @dx.op.unary.f32(i32 84, float %136)  ; DerivCoarseY(value)
  %942 = fadd fast float %936, %134
  %943 = fadd fast float %937, %135
  %944 = fadd fast float %938, %136
  %945 = fadd fast float %939, %134
  %946 = fadd fast float %940, %135
  %947 = fadd fast float %941, %136
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 0
  %950 = extractvalue %dx.types.CBufRet.f32 %948, 1
  %951 = extractvalue %dx.types.CBufRet.f32 %948, 2
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 2
  %954 = extractvalue %dx.types.CBufRet.f32 %952, 3
  %955 = fmul fast float %949, %78
  %956 = fmul fast float %955, %953
  %957 = fmul fast float %950, %79
  %958 = fmul fast float %957, %954
  %959 = fptoui float %956 to i32
  %960 = fptoui float %958 to i32
  %961 = fadd fast float %949, -1.000000e+00
  %962 = fadd fast float %950, -1.000000e+00
  %963 = fptoui float %961 to i32
  %964 = fptoui float %962 to i32
  %965 = call i32 @dx.op.binary.i32(i32 40, i32 %959, i32 %963)  ; UMin(a,b)
  %966 = call i32 @dx.op.binary.i32(i32 40, i32 %960, i32 %964)  ; UMin(a,b)
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 2
  %969 = extractvalue %dx.types.CBufRet.f32 %967, 3
  %970 = fmul fast float %968, %66
  %971 = fsub fast float %970, %969
  %972 = fadd fast float %951, -1.000000e+00
  %973 = call float @dx.op.binary.f32(i32 36, float %971, float %972)  ; FMin(a,b)
  %974 = fptoui float %973 to i32
  %975 = fptoui float %949 to i32
  %976 = fptoui float %950 to i32
  %977 = mul i32 %974, %976
  %978 = add i32 %977, %966
  %979 = mul i32 %978, %975
  %980 = add i32 %979, %965
  %981 = shl i32 %980, 2
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = and i32 %983, 1023
  %985 = lshr i32 %983, 10
  %986 = icmp eq i32 %984, 0
  br i1 %986, label %1440, label %987

; <label>:987                                     ; preds = %882
  %988 = and i32 %983, 1023
  br label %989

; <label>:989                                     ; preds = %1118, %987
  %990 = phi float [ %1119, %1118 ], [ 0.000000e+00, %987 ]
  %991 = phi float [ %1120, %1118 ], [ %901, %987 ]
  %992 = phi float [ %1121, %1118 ], [ %899, %987 ]
  %993 = phi float [ %1122, %1118 ], [ %888, %987 ]
  %994 = phi float [ %1123, %1118 ], [ %889, %987 ]
  %995 = phi float [ %1124, %1118 ], [ %890, %987 ]
  %996 = phi float [ %1125, %1118 ], [ 0.000000e+00, %987 ]
  %997 = phi float [ %1126, %1118 ], [ 0.000000e+00, %987 ]
  %998 = phi float [ %1127, %1118 ], [ %891, %987 ]
  %999 = phi float [ %1128, %1118 ], [ %892, %987 ]
  %1000 = phi float [ %1129, %1118 ], [ %893, %987 ]
  %1001 = phi float [ %1130, %1118 ], [ %933, %987 ]
  %1002 = phi float [ %1131, %1118 ], [ %934, %987 ]
  %1003 = phi float [ %1132, %1118 ], [ %935, %987 ]
  %1004 = phi float [ %1133, %1118 ], [ %897, %987 ]
  %1005 = phi float [ %1134, %1118 ], [ %896, %987 ]
  %1006 = phi float [ %1135, %1118 ], [ 0.000000e+00, %987 ]
  %1007 = phi float [ %1136, %1118 ], [ %894, %987 ]
  %1008 = phi float [ %1137, %1118 ], [ %885, %987 ]
  %1009 = phi float [ %1138, %1118 ], [ %886, %987 ]
  %1010 = phi float [ %1139, %1118 ], [ %887, %987 ]
  %1011 = phi i32 [ %1068, %1118 ], [ 0, %987 ]
  %1012 = add nuw nsw i32 %1011, %985
  %1013 = shl i32 %1012, 2
  %1014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1013, i32 undef)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.i32 %1014, 0
  %1016 = shl i32 %1015, 8
  %1017 = or i32 %1016, 48
  %1018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.ResRet.f32 %1018, 1
  %1021 = extractvalue %dx.types.ResRet.f32 %1018, 2
  %1022 = extractvalue %dx.types.ResRet.f32 %1018, 3
  %1023 = or i32 %1016, 64
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = extractvalue %dx.types.ResRet.i32 %1024, 1
  %1027 = or i32 %1016, 80
  %1028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.f32 %1028, 2
  %1030 = extractvalue %dx.types.ResRet.f32 %1028, 3
  %1031 = or i32 %1016, 96
  %1032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.ResRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.ResRet.f32 %1032, 2
  %1036 = extractvalue %dx.types.ResRet.f32 %1032, 3
  %1037 = or i32 %1016, 112
  %1038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.f32 %1038, 2
  %1040 = or i32 %1016, 128
  %1041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1040, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.ResRet.f32 %1041, 1
  %1044 = extractvalue %dx.types.ResRet.f32 %1041, 2
  %1045 = extractvalue %dx.types.ResRet.f32 %1041, 3
  %1046 = or i32 %1016, 144
  %1047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.ResRet.f32 %1047, 1
  %1050 = extractvalue %dx.types.ResRet.f32 %1047, 2
  %1051 = extractvalue %dx.types.ResRet.f32 %1047, 3
  %1052 = or i32 %1016, 160
  %1053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.ResRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.ResRet.f32 %1053, 2
  %1057 = extractvalue %dx.types.ResRet.f32 %1053, 3
  %1058 = or i32 %1016, 192
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = or i32 %1016, 208
  %1062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1064 = or i32 %1016, 248
  %1065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.f32 %1065, 0
  %1067 = extractvalue %dx.types.ResRet.f32 %1065, 1
  %1068 = add nuw nsw i32 %1011, 1
  %1069 = bitcast float %1022 to i32
  %1070 = and i32 %1069, 512
  %1071 = icmp eq i32 %1070, 0
  %1072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.ResRet.f32 %1072, 1
  %1075 = extractvalue %dx.types.ResRet.f32 %1072, 2
  %1076 = extractvalue %dx.types.ResRet.f32 %1072, 3
  %1077 = call float @dx.op.dot4.f32(i32 56, float %1073, float %1074, float %1075, float %1076, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1078 = or i32 %1016, 16
  %1079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.ResRet.f32 %1079, 2
  %1083 = extractvalue %dx.types.ResRet.f32 %1079, 3
  %1084 = call float @dx.op.dot4.f32(i32 56, float %1080, float %1081, float %1082, float %1083, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1085 = or i32 %1016, 32
  %1086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = extractvalue %dx.types.ResRet.f32 %1086, 1
  %1089 = extractvalue %dx.types.ResRet.f32 %1086, 2
  %1090 = extractvalue %dx.types.ResRet.f32 %1086, 3
  %1091 = call float @dx.op.dot4.f32(i32 56, float %1087, float %1088, float %1089, float %1090, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1092 = call float @dx.op.unary.f32(i32 27, float %1077)  ; Round_ni(value)
  %1093 = call float @dx.op.unary.f32(i32 6, float %1092)  ; FAbs(value)
  %1094 = call float @dx.op.unary.f32(i32 27, float %1084)  ; Round_ni(value)
  %1095 = call float @dx.op.unary.f32(i32 6, float %1094)  ; FAbs(value)
  %1096 = call float @dx.op.unary.f32(i32 6, float %1091)  ; FAbs(value)
  %1097 = call float @dx.op.unary.f32(i32 27, float %1096)  ; Round_ni(value)
  %1098 = fadd fast float %1095, %1093
  %1099 = fadd fast float %1098, %1097
  %1100 = fcmp fast oeq float %1099, 0.000000e+00
  %1101 = call float @dx.op.dot4.f32(i32 56, float %1073, float %1074, float %1075, float %1076, float %942, float %943, float %944, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1102 = call float @dx.op.dot4.f32(i32 56, float %1080, float %1081, float %1082, float %1083, float %942, float %943, float %944, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1103 = call float @dx.op.dot4.f32(i32 56, float %1073, float %1074, float %1075, float %1076, float %945, float %946, float %947, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1104 = call float @dx.op.dot4.f32(i32 56, float %1080, float %1081, float %1082, float %1083, float %945, float %946, float %947, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1105 = fsub fast float %1101, %1077
  %1106 = fsub fast float %1103, %1077
  %1107 = fsub fast float %1102, %1084
  %1108 = fsub fast float %1104, %1084
  %1109 = call float @dx.op.dot3.f32(i32 55, float %1019, float %1020, float %1021, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %1110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1111 = extractvalue %dx.types.CBufRet.f32 %1110, 2
  %1112 = fadd fast float %1111, %1109
  %1113 = call float @dx.op.unary.f32(i32 7, float %1112)  ; Saturate(value)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1110, 0
  %1115 = fcmp fast ogt float %1113, %1114
  %1116 = and i1 %1100, %1115
  %1117 = and i1 %1071, %1116
  br i1 %1117, label %1141, label %1118

; <label>:1118                                    ; preds = %1426, %1222, %1141, %989
  %1119 = phi float [ %990, %1141 ], [ %1225, %1222 ], [ %1225, %1426 ], [ %990, %989 ]
  %1120 = phi float [ %991, %1141 ], [ %991, %1222 ], [ %1402, %1426 ], [ %991, %989 ]
  %1121 = phi float [ %992, %1141 ], [ %992, %1222 ], [ %1400, %1426 ], [ %992, %989 ]
  %1122 = phi float [ %993, %1141 ], [ %993, %1222 ], [ %1378, %1426 ], [ %993, %989 ]
  %1123 = phi float [ %994, %1141 ], [ %994, %1222 ], [ %1379, %1426 ], [ %994, %989 ]
  %1124 = phi float [ %995, %1141 ], [ %995, %1222 ], [ %1380, %1426 ], [ %995, %989 ]
  %1125 = phi float [ %996, %1141 ], [ %996, %1222 ], [ %1349, %1426 ], [ %996, %989 ]
  %1126 = phi float [ %997, %1141 ], [ %997, %1222 ], [ %1347, %1426 ], [ %997, %989 ]
  %1127 = phi float [ %998, %1141 ], [ %998, %1222 ], [ %1436, %1426 ], [ %998, %989 ]
  %1128 = phi float [ %999, %1141 ], [ %999, %1222 ], [ %1437, %1426 ], [ %999, %989 ]
  %1129 = phi float [ %1000, %1141 ], [ %1000, %1222 ], [ %1438, %1426 ], [ %1000, %989 ]
  %1130 = phi float [ %1001, %1141 ], [ %1001, %1222 ], [ %1328, %1426 ], [ %1001, %989 ]
  %1131 = phi float [ %1002, %1141 ], [ %1002, %1222 ], [ %1329, %1426 ], [ %1002, %989 ]
  %1132 = phi float [ %1003, %1141 ], [ %1003, %1222 ], [ %1330, %1426 ], [ %1003, %989 ]
  %1133 = phi float [ %1004, %1141 ], [ %1004, %1222 ], [ %1358, %1426 ], [ %1004, %989 ]
  %1134 = phi float [ %1005, %1141 ], [ %1005, %1222 ], [ %1355, %1426 ], [ %1005, %989 ]
  %1135 = phi float [ %1006, %1141 ], [ %1006, %1222 ], [ %1352, %1426 ], [ %1006, %989 ]
  %1136 = phi float [ %1007, %1141 ], [ %1007, %1222 ], [ %1345, %1426 ], [ %1007, %989 ]
  %1137 = phi float [ %1008, %1141 ], [ %1008, %1222 ], [ %1340, %1426 ], [ %1008, %989 ]
  %1138 = phi float [ %1009, %1141 ], [ %1009, %1222 ], [ %1341, %1426 ], [ %1009, %989 ]
  %1139 = phi float [ %1010, %1141 ], [ %1010, %1222 ], [ %1342, %1426 ], [ %1010, %989 ]
  %1140 = icmp eq i32 %1068, %988
  br i1 %1140, label %1439, label %989

; <label>:1141                                    ; preds = %989
  %1142 = extractvalue %dx.types.ResRet.f32 %1038, 3
  %1143 = extractvalue %dx.types.ResRet.f32 %1038, 1
  %1144 = extractvalue %dx.types.ResRet.f32 %1038, 0
  %1145 = extractvalue %dx.types.ResRet.f32 %1028, 1
  %1146 = extractvalue %dx.types.ResRet.f32 %1028, 0
  %1147 = extractvalue %dx.types.ResRet.i32 %1024, 3
  %1148 = extractvalue %dx.types.ResRet.i32 %1024, 2
  %1149 = add i32 %1147, 0
  %1150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1149, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1152 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1150, %dx.types.Handle %1151, float %1077, float %1084, float undef, float undef, i32 0, i32 0, i32 undef, float %1105, float %1107, float undef, float %1106, float %1108, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1153 = extractvalue %dx.types.ResRet.f32 %1152, 0
  %1154 = fmul fast float %1153, %1146
  %1155 = fadd fast float %1154, %1145
  %1156 = call float @dx.op.unary.f32(i32 7, float %1155)  ; Saturate(value)
  %1157 = fmul fast float %1077, %1033
  %1158 = call float @dx.op.tertiary.f32(i32 46, float %1034, float %1084, float %1157)  ; FMad(a,b,c)
  %1159 = fadd fast float %1158, %1144
  %1160 = fmul fast float %1077, %1035
  %1161 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %1084, float %1160)  ; FMad(a,b,c)
  %1162 = fadd fast float %1161, %1143
  %1163 = fmul fast float %1105, %1033
  %1164 = call float @dx.op.tertiary.f32(i32 46, float %1034, float %1107, float %1163)  ; FMad(a,b,c)
  %1165 = fmul fast float %1105, %1035
  %1166 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %1107, float %1165)  ; FMad(a,b,c)
  %1167 = fmul fast float %1106, %1033
  %1168 = call float @dx.op.tertiary.f32(i32 46, float %1034, float %1108, float %1167)  ; FMad(a,b,c)
  %1169 = fmul fast float %1106, %1035
  %1170 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %1108, float %1169)  ; FMad(a,b,c)
  %1171 = add i32 %1148, 0
  %1172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1171, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1173 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1172, %dx.types.Handle %1151, float %1159, float %1162, float undef, float undef, i32 0, i32 0, i32 undef, float %1164, float %1166, float undef, float %1168, float %1170, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1174 = extractvalue %dx.types.ResRet.f32 %1173, 0
  %1175 = and i32 %1069, 1024
  %1176 = icmp ne i32 %1175, 0
  %1177 = fcmp fast ogt float %1174, 0x3FE0101020000000
  %1178 = uitofp i1 %1177 to float
  %1179 = select i1 %1176, float %1178, float %1174
  %1180 = and i32 %1069, 8192
  %1181 = icmp ne i32 %1180, 0
  %1182 = select i1 %1181, float %1142, float 1.000000e+00
  %1183 = fmul fast float %1077, 2.000000e+00
  %1184 = fadd fast float %1183, -1.000000e+00
  %1185 = call float @dx.op.unary.f32(i32 6, float %1184)  ; FAbs(value)
  %1186 = fmul fast float %1185, %1066
  %1187 = fsub fast float %1186, %1066
  %1188 = call float @dx.op.unary.f32(i32 7, float %1187)  ; Saturate(value)
  %1189 = fmul fast float %1084, 2.000000e+00
  %1190 = fadd fast float %1189, -1.000000e+00
  %1191 = call float @dx.op.unary.f32(i32 6, float %1190)  ; FAbs(value)
  %1192 = fmul fast float %1191, %1067
  %1193 = fsub fast float %1192, %1067
  %1194 = call float @dx.op.unary.f32(i32 7, float %1193)  ; Saturate(value)
  %1195 = fmul fast float %1096, %1029
  %1196 = fsub fast float %1195, %1029
  %1197 = call float @dx.op.unary.f32(i32 7, float %1196)  ; Saturate(value)
  %1198 = fmul fast float %1156, %1182
  %1199 = fmul fast float %1198, %1153
  %1200 = fmul fast float %1199, %1188
  %1201 = fmul fast float %1200, %1179
  %1202 = fmul fast float %1201, %1194
  %1203 = fmul fast float %1202, %1197
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 1
  %1206 = extractvalue %dx.types.CBufRet.f32 %1204, 0
  %1207 = fsub fast float %1113, %1206
  %1208 = fmul fast float %1207, %1205
  %1209 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  %1210 = fmul fast float %1203, %1030
  %1211 = fadd fast float %1203, %1030
  %1212 = fmul fast float %1211, %1039
  %1213 = fsub fast float %1212, %1039
  %1214 = call float @dx.op.unary.f32(i32 7, float %1213)  ; Saturate(value)
  %1215 = and i32 %1069, 128
  %1216 = icmp ne i32 %1215, 0
  %1217 = select i1 %1216, float %1214, float %1210
  %1218 = fmul fast float %1217, %1209
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 0
  %1221 = fcmp fast ugt float %1218, %1220
  br i1 %1221, label %1222, label %1118

; <label>:1222                                    ; preds = %1141
  %1223 = select i1 %1181, float %1218, float 0.000000e+00
  %1224 = fadd fast float %1223, %990
  %1225 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  br i1 %1181, label %1118, label %1226

; <label>:1226                                    ; preds = %1222
  %1227 = and i32 %1069, 4
  %1228 = and i32 %1069, 8
  %1229 = add i32 %1025, 0
  %1230 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1229, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1232 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1230, %dx.types.Handle %1231, float %1159, float %1162, float undef, float undef, i32 0, i32 0, i32 undef, float %1164, float %1166, float undef, float %1168, float %1170, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.ResRet.f32 %1232, 1
  %1235 = extractvalue %dx.types.ResRet.f32 %1232, 2
  %1236 = extractvalue %dx.types.ResRet.f32 %1232, 3
  %1237 = bitcast float %1051 to i32
  %1238 = and i32 %1237, 255
  %1239 = uitofp i32 %1238 to float
  %1240 = lshr i32 %1237, 8
  %1241 = and i32 %1240, 255
  %1242 = uitofp i32 %1241 to float
  %1243 = fmul fast float %1236, %1239
  %1244 = fadd fast float %1243, %1242
  %1245 = fmul fast float %1244, 0x3F70101000000000
  %1246 = add i32 %1026, 0
  %1247 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1246, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1248 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1247, %dx.types.Handle %1231, float %1159, float %1162, float undef, float undef, i32 0, i32 0, i32 undef, float %1164, float %1166, float undef, float %1168, float %1170, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.ResRet.f32 %1248, 1
  %1251 = extractvalue %dx.types.ResRet.f32 %1248, 2
  %1252 = extractvalue %dx.types.ResRet.f32 %1248, 3
  %1253 = bitcast float %1045 to i32
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
  %1272 = fmul fast float %1233, %1054
  %1273 = fmul fast float %1234, %1055
  %1274 = fmul fast float %1235, %1056
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
  %1292 = fmul fast float %1291, %1019
  %1293 = fmul fast float %1291, %1020
  %1294 = fmul fast float %1291, %1021
  %1295 = fmul fast float %1289, %1042
  %1296 = fmul fast float %1289, %1043
  %1297 = fmul fast float %1289, %1044
  %1298 = fadd fast float %1295, %1292
  %1299 = fadd fast float %1296, %1293
  %1300 = fadd fast float %1297, %1294
  %1301 = fmul fast float %1290, %1048
  %1302 = fmul fast float %1290, %1049
  %1303 = fmul fast float %1290, %1050
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
  %1315 = and i32 %1069, 1
  %1316 = icmp eq i32 %1315, 0
  br i1 %1316, label %1317, label %1321

; <label>:1317                                    ; preds = %1226
  %1318 = fsub fast float %1309, %1001
  %1319 = fsub fast float %1310, %1002
  %1320 = fsub fast float %1311, %1003
  br label %1321

; <label>:1321                                    ; preds = %1317, %1226
  %1322 = phi float [ %1318, %1317 ], [ %1309, %1226 ]
  %1323 = phi float [ %1319, %1317 ], [ %1310, %1226 ]
  %1324 = phi float [ %1320, %1317 ], [ %1311, %1226 ]
  %1325 = fmul float %1324, %1314
  %1326 = fmul float %1323, %1314
  %1327 = fmul float %1322, %1314
  %1328 = fadd fast float %1327, %1001
  %1329 = fadd fast float %1326, %1002
  %1330 = fadd fast float %1325, %1003
  %1331 = icmp ne i32 %1227, 0
  %1332 = select i1 %1331, float 1.000000e+00, float 0.000000e+00
  %1333 = fmul fast float %1218, %1332
  %1334 = fsub fast float %1272, %1008
  %1335 = fsub fast float %1273, %1009
  %1336 = fsub fast float %1274, %1010
  %1337 = fmul fast float %1334, %1333
  %1338 = fmul fast float %1335, %1333
  %1339 = fmul fast float %1336, %1333
  %1340 = fadd fast float %1337, %1008
  %1341 = fadd fast float %1338, %1009
  %1342 = fadd fast float %1339, %1010
  %1343 = fsub fast float %1245, %1007
  %1344 = fmul fast float %1343, %1333
  %1345 = fadd fast float %1344, %1007
  %1346 = fmul fast float %1333, %997
  %1347 = fsub fast float %997, %1346
  %1348 = fmul fast float %1333, %996
  %1349 = fsub fast float %996, %1348
  %1350 = bitcast float %1063 to i32
  %1351 = fadd fast float %1218, %1006
  %1352 = call float @dx.op.unary.f32(i32 7, float %1351)  ; Saturate(value)
  %1353 = fsub fast float %1265, %1005
  %1354 = fmul fast float %1353, %1314
  %1355 = fadd fast float %1354, %1005
  %1356 = fsub fast float %1251, %1004
  %1357 = fmul fast float %1356, %1314
  %1358 = fadd fast float %1357, %1004
  br i1 %1316, label %1367, label %1359

; <label>:1359                                    ; preds = %1321
  %1360 = and i32 %1069, 32768
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1377, label %1362

; <label>:1362                                    ; preds = %1359
  %1363 = fmul fast float %1314, 1.270000e+02
  %1364 = fadd fast float %1363, %993
  %1365 = fadd fast float %1363, %994
  %1366 = fadd fast float %1363, %995
  br label %1377

; <label>:1367                                    ; preds = %1321
  %1368 = fsub fast float 1.270000e+02, %993
  %1369 = fsub fast float 1.270000e+02, %994
  %1370 = fsub fast float 1.270000e+02, %995
  %1371 = fmul fast float %1314, %1368
  %1372 = fmul fast float %1314, %1369
  %1373 = fmul fast float %1314, %1370
  %1374 = fadd fast float %1371, %993
  %1375 = fadd fast float %1372, %994
  %1376 = fadd fast float %1373, %995
  br label %1377

; <label>:1377                                    ; preds = %1367, %1362, %1359
  %1378 = phi float [ %1364, %1362 ], [ %993, %1359 ], [ %1374, %1367 ]
  %1379 = phi float [ %1365, %1362 ], [ %994, %1359 ], [ %1375, %1367 ]
  %1380 = phi float [ %1366, %1362 ], [ %995, %1359 ], [ %1376, %1367 ]
  %1381 = call float @dx.op.dot3.f32(i32 55, float %1272, float %1273, float %1274, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1383 = extractvalue %dx.types.CBufRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.CBufRet.f32 %1382, 1
  %1385 = fmul fast float %1384, %1381
  %1386 = fadd fast float %1385, %1383
  %1387 = call float @dx.op.unary.f32(i32 7, float %1386)  ; Saturate(value)
  %1388 = bitcast float %1057 to i32
  %1389 = and i32 %1388, 65535
  %1390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1389)  ; LegacyF16ToF32(value)
  %1391 = lshr i32 %1388, 16
  %1392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1391)  ; LegacyF16ToF32(value)
  %1393 = fcmp fast oge float %1390, 0.000000e+00
  %1394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1395 = extractvalue %dx.types.CBufRet.f32 %1394, 0
  %1396 = select i1 %1393, float %1390, float %1395
  %1397 = fadd fast float %1396, %1392
  %1398 = fsub fast float %1387, %992
  %1399 = fmul fast float %1398, %1218
  %1400 = fadd fast float %1399, %992
  %1401 = fmul fast float %1397, %1218
  %1402 = call float @dx.op.binary.f32(i32 35, float %991, float %1401)  ; FMax(a,b)
  %1403 = and i32 %1069, 16
  %1404 = icmp eq i32 %1403, 0
  br i1 %1404, label %1426, label %1405

; <label>:1405                                    ; preds = %1377
  %1406 = add i32 %1060, 0
  %1407 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1406, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1408 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1407, %dx.types.Handle %1231, float %1159, float %1162, float undef, float undef, i32 0, i32 0, i32 undef, float %1164, float %1166, float undef, float %1168, float %1170, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1409 = extractvalue %dx.types.ResRet.f32 %1408, 0
  %1410 = extractvalue %dx.types.ResRet.f32 %1408, 1
  %1411 = extractvalue %dx.types.ResRet.f32 %1408, 2
  %1412 = and i32 %1350, 65535
  %1413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1412)  ; LegacyF16ToF32(value)
  %1414 = fmul fast float %1409, %1054
  %1415 = fmul fast float %1410, %1055
  %1416 = fmul fast float %1411, %1056
  %1417 = and i32 %1069, 16384
  %1418 = icmp ne i32 %1417, 0
  %1419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.f32 %1419, 0
  %1421 = select i1 %1418, float %1420, float 1.000000e+00
  %1422 = fmul fast float %1421, %1413
  %1423 = fmul fast float %1414, %1422
  %1424 = fmul fast float %1415, %1422
  %1425 = fmul fast float %1416, %1422
  br label %1426

; <label>:1426                                    ; preds = %1405, %1377
  %1427 = phi float [ %1423, %1405 ], [ 0.000000e+00, %1377 ]
  %1428 = phi float [ %1424, %1405 ], [ 0.000000e+00, %1377 ]
  %1429 = phi float [ %1425, %1405 ], [ 0.000000e+00, %1377 ]
  %1430 = fsub fast float %1427, %998
  %1431 = fsub fast float %1428, %999
  %1432 = fsub fast float %1429, %1000
  %1433 = fmul fast float %1430, %1218
  %1434 = fmul fast float %1431, %1218
  %1435 = fmul fast float %1432, %1218
  %1436 = fadd fast float %1433, %998
  %1437 = fadd fast float %1434, %999
  %1438 = fadd fast float %1435, %1000
  br label %1118

; <label>:1439                                    ; preds = %1118
  br label %1440

; <label>:1440                                    ; preds = %1439, %882
  %1441 = phi float [ 0.000000e+00, %882 ], [ %1119, %1439 ]
  %1442 = phi float [ %901, %882 ], [ %1120, %1439 ]
  %1443 = phi float [ %899, %882 ], [ %1121, %1439 ]
  %1444 = phi float [ %888, %882 ], [ %1122, %1439 ]
  %1445 = phi float [ %889, %882 ], [ %1123, %1439 ]
  %1446 = phi float [ %890, %882 ], [ %1124, %1439 ]
  %1447 = phi float [ 0.000000e+00, %882 ], [ %1125, %1439 ]
  %1448 = phi float [ 0.000000e+00, %882 ], [ %1126, %1439 ]
  %1449 = phi float [ %891, %882 ], [ %1127, %1439 ]
  %1450 = phi float [ %892, %882 ], [ %1128, %1439 ]
  %1451 = phi float [ %893, %882 ], [ %1129, %1439 ]
  %1452 = phi float [ %933, %882 ], [ %1130, %1439 ]
  %1453 = phi float [ %934, %882 ], [ %1131, %1439 ]
  %1454 = phi float [ %935, %882 ], [ %1132, %1439 ]
  %1455 = phi float [ %897, %882 ], [ %1133, %1439 ]
  %1456 = phi float [ %896, %882 ], [ %1134, %1439 ]
  %1457 = phi float [ 0.000000e+00, %882 ], [ %1135, %1439 ]
  %1458 = phi float [ %894, %882 ], [ %1136, %1439 ]
  %1459 = phi float [ %885, %882 ], [ %1137, %1439 ]
  %1460 = phi float [ %886, %882 ], [ %1138, %1439 ]
  %1461 = phi float [ %887, %882 ], [ %1139, %1439 ]
  %1462 = call float @dx.op.dot3.f32(i32 55, float %1452, float %1453, float %1454, float %1452, float %1453, float %1454)  ; Dot3(ax,ay,az,bx,by,bz)
  %1463 = call float @dx.op.unary.f32(i32 25, float %1462)  ; Rsqrt(value)
  %1464 = fmul fast float %1463, %1452
  %1465 = fmul fast float %1463, %1453
  %1466 = fmul fast float %1463, %1454
  %1467 = fadd fast float %1457, %895
  %1468 = call float @dx.op.unary.f32(i32 7, float %1467)  ; Saturate(value)
  %1469 = call float @dx.op.dot3.f32(i32 55, float %1464, float %1465, float %1466, float %1464, float %1465, float %1466)  ; Dot3(ax,ay,az,bx,by,bz)
  %1470 = call float @dx.op.unary.f32(i32 25, float %1469)  ; Rsqrt(value)
  %1471 = fmul fast float %1470, %1464
  %1472 = fmul fast float %1470, %1465
  %1473 = fmul fast float %1470, %1466
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = extractvalue %dx.types.ResRet.i32 %1474, 1
  %1477 = extractvalue %dx.types.ResRet.i32 %1474, 2
  %1478 = extractvalue %dx.types.ResRet.i32 %1474, 3
  %1479 = bitcast i32 %1475 to float
  %1480 = bitcast i32 %1476 to float
  %1481 = bitcast i32 %1477 to float
  %1482 = bitcast i32 %1478 to float
  %1483 = fsub fast float %1459, %1479
  %1484 = fsub fast float %1460, %1480
  %1485 = fsub fast float %1461, %1481
  %1486 = fmul fast float %1483, %167
  %1487 = fmul fast float %1484, %167
  %1488 = fmul fast float %1485, %167
  %1489 = fadd fast float %1486, %1479
  %1490 = fadd fast float %1487, %1480
  %1491 = fadd fast float %1488, %1481
  %1492 = fsub fast float %1468, %1482
  %1493 = fmul fast float %1492, %167
  %1494 = fadd fast float %1493, %1482
  %1495 = fadd fast float %1458, 0xBFB99999A0000000
  %1496 = call float @dx.op.unary.f32(i32 7, float %1495)  ; Saturate(value)
  %1497 = fmul fast float %1496, 0x3FF1C71C80000000
  %1498 = call float @dx.op.binary.f32(i32 36, float %1458, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1499 = fsub fast float 1.000000e+00, %1497
  %1500 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  %1501 = fmul fast float %1489, %1500
  %1502 = fmul fast float %1490, %1500
  %1503 = fmul fast float %1491, %1500
  %1504 = call float @dx.op.unary.f32(i32 7, float %1501)  ; Saturate(value)
  %1505 = call float @dx.op.unary.f32(i32 7, float %1502)  ; Saturate(value)
  %1506 = call float @dx.op.unary.f32(i32 7, float %1503)  ; Saturate(value)
  %1507 = fmul fast float %1489, %1497
  %1508 = fmul fast float %1490, %1497
  %1509 = fmul fast float %1491, %1497
  %1510 = fadd fast float %1507, %1498
  %1511 = fadd fast float %1508, %1498
  %1512 = fadd fast float %1509, %1498
  %1513 = call float @dx.op.unary.f32(i32 7, float %1510)  ; Saturate(value)
  %1514 = call float @dx.op.unary.f32(i32 7, float %1511)  ; Saturate(value)
  %1515 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1516 = call float @dx.op.unary.f32(i32 7, float %1456)  ; Saturate(value)
  %1517 = call float @dx.op.binary.f32(i32 36, float %1444, float 1.270000e+02)  ; FMin(a,b)
  %1518 = call float @dx.op.binary.f32(i32 36, float %1445, float 1.270000e+02)  ; FMin(a,b)
  %1519 = call float @dx.op.binary.f32(i32 36, float %1446, float 1.270000e+02)  ; FMin(a,b)
  %1520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.i32 %1520, 3
  %1522 = and i32 %1521, 8
  %1523 = icmp ne i32 %1522, 0
  %1524 = call float @dx.op.binary.f32(i32 35, float %1504, float %1489)  ; FMax(a,b)
  %1525 = call float @dx.op.binary.f32(i32 35, float %1505, float %1489)  ; FMax(a,b)
  %1526 = call float @dx.op.binary.f32(i32 35, float %1506, float %1489)  ; FMax(a,b)
  %1527 = call float @dx.op.dot3.f32(i32 55, float %1504, float %1505, float %1506, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1528 = select i1 %226, float %1489, float %1504
  %1529 = select i1 %226, float %1527, float %1505
  %1530 = select i1 %226, float 1.000000e+00, float %1506
  %1531 = select i1 %1523, float %1524, float %1528
  %1532 = select i1 %1523, float %1525, float %1529
  %1533 = select i1 %1523, float %1526, float %1530
  %1534 = and i32 %202, 3
  %1535 = select i1 %196, i32 %1534, i32 0
  %1536 = icmp eq i32 %1535, 1
  br i1 %1536, label %1537, label %1613

; <label>:1537                                    ; preds = %1440
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 0
  %1540 = extractvalue %dx.types.CBufRet.f32 %1538, 1
  %1541 = fadd fast float %1539, %134
  %1542 = fadd fast float %1540, %135
  %1543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1544 = extractvalue %dx.types.CBufRet.f32 %1543, 0
  %1545 = extractvalue %dx.types.CBufRet.f32 %1543, 1
  %1546 = fsub fast float %1541, %1544
  %1547 = fsub fast float %1542, %1545
  %1548 = fmul fast float %1546, %1546
  %1549 = fmul fast float %1547, %1547
  %1550 = fadd fast float %1548, %1549
  %1551 = call float @dx.op.unary.f32(i32 24, float %1550)  ; Sqrt(value)
  %1552 = extractvalue %dx.types.CBufRet.f32 %1543, 2
  %1553 = fcmp fast olt float %1551, %1552
  br i1 %1553, label %1554, label %1607

; <label>:1554                                    ; preds = %1537
  %1555 = extractvalue %dx.types.CBufRet.f32 %1538, 2
  %1556 = fadd fast float %1555, %136
  %1557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1558 = extractvalue %dx.types.CBufRet.f32 %1557, 0
  %1559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1560 = extractvalue %dx.types.CBufRet.f32 %1559, 0
  %1561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1562 = extractvalue %dx.types.CBufRet.f32 %1561, 0
  %1563 = extractvalue %dx.types.CBufRet.f32 %1557, 1
  %1564 = extractvalue %dx.types.CBufRet.f32 %1559, 1
  %1565 = extractvalue %dx.types.CBufRet.f32 %1561, 1
  %1566 = extractvalue %dx.types.CBufRet.f32 %1557, 3
  %1567 = extractvalue %dx.types.CBufRet.f32 %1559, 3
  %1568 = extractvalue %dx.types.CBufRet.f32 %1561, 3
  %1569 = fadd fast float %1566, %1541
  %1570 = fadd fast float %1567, %1542
  %1571 = fadd fast float %1556, %1568
  %1572 = fmul fast float %1569, %1558
  %1573 = call float @dx.op.tertiary.f32(i32 46, float %1570, float %1560, float %1572)  ; FMad(a,b,c)
  %1574 = call float @dx.op.tertiary.f32(i32 46, float %1571, float %1562, float %1573)  ; FMad(a,b,c)
  %1575 = fmul fast float %1569, %1563
  %1576 = call float @dx.op.tertiary.f32(i32 46, float %1570, float %1564, float %1575)  ; FMad(a,b,c)
  %1577 = call float @dx.op.tertiary.f32(i32 46, float %1571, float %1565, float %1576)  ; FMad(a,b,c)
  %1578 = fsub fast float %1574, %1566
  %1579 = fsub fast float %1577, %1567
  %1580 = fsub fast float %1578, %1544
  %1581 = fadd fast float %1580, %1552
  %1582 = fsub fast float %1579, %1545
  %1583 = fadd fast float %1582, %1552
  %1584 = extractvalue %dx.types.CBufRet.f32 %1543, 3
  %1585 = fmul fast float %1581, %1584
  %1586 = fmul fast float %1583, %1584
  %1587 = call float @dx.op.unary.f32(i32 7, float %1585)  ; Saturate(value)
  %1588 = call float @dx.op.unary.f32(i32 7, float %1586)  ; Saturate(value)
  %1589 = fsub fast float 1.000000e+00, %1587
  %1590 = fsub fast float 1.000000e+00, %1588
  %1591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %39, float %1589, float %1590, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1592 = extractvalue %dx.types.ResRet.f32 %1591, 0
  %1593 = fcmp fast ugt float %1592, 0.000000e+00
  br i1 %1593, label %1594, label %1607

; <label>:1594                                    ; preds = %1554
  %1595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1596 = extractvalue %dx.types.CBufRet.f32 %1595, 2
  %1597 = fmul fast float %1596, %1592
  %1598 = extractvalue %dx.types.CBufRet.f32 %1595, 3
  %1599 = fadd fast float %1598, %1597
  %1600 = extractvalue %dx.types.CBufRet.f32 %1561, 2
  %1601 = fadd fast float %1599, %1568
  %1602 = fmul fast float %1574, %1562
  %1603 = call float @dx.op.tertiary.f32(i32 46, float %1577, float %1565, float %1602)  ; FMad(a,b,c)
  %1604 = call float @dx.op.tertiary.f32(i32 46, float %1601, float %1600, float %1603)  ; FMad(a,b,c)
  %1605 = fsub fast float %1604, %1568
  %1606 = fsub fast float %1605, %1555
  br label %1607

; <label>:1607                                    ; preds = %1594, %1554, %1537
  %1608 = phi i1 [ true, %1594 ], [ false, %1554 ], [ false, %1537 ]
  %1609 = phi float [ %1606, %1594 ], [ -1.310720e+05, %1554 ], [ -1.310720e+05, %1537 ]
  %1610 = fsub fast float %1609, %136
  %1611 = call float @dx.op.unary.f32(i32 7, float %1610)  ; Saturate(value)
  %1612 = select i1 %1608, float %1611, float 1.000000e+00
  br label %1613

; <label>:1613                                    ; preds = %1607, %1440
  %1614 = phi float [ %1612, %1607 ], [ 0.000000e+00, %1440 ]
  %1615 = icmp eq i32 %1535, 3
  %1616 = select i1 %1615, float 1.000000e+00, float %1614
  %1617 = call float @dx.op.binary.f32(i32 35, float %1441, float %1616)  ; FMax(a,b)
  %1618 = call float @dx.op.unary.f32(i32 7, float %1617)  ; Saturate(value)
  %1619 = fcmp fast une float %1618, 0.000000e+00
  %1620 = fsub fast float -0.000000e+00, %153
  %1621 = fsub fast float -0.000000e+00, %154
  %1622 = fsub fast float -0.000000e+00, %155
  br i1 %1619, label %1623, label %1785

; <label>:1623                                    ; preds = %1613
  %1624 = call float @dx.op.dot3.f32(i32 55, float %1620, float %1621, float %1622, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %1625 = fmul fast float %1618, 2.500000e+00
  %1626 = call float @dx.op.unary.f32(i32 7, float %1625)  ; Saturate(value)
  %1627 = fmul fast float %1618, 0x4013FFFFE0000000
  %1628 = fadd fast float %1627, 0xBFFFFFFFE0000000
  %1629 = call float @dx.op.unary.f32(i32 7, float %1628)  ; Saturate(value)
  %1630 = fmul fast float %1618, 0x4004000020000000
  %1631 = fadd fast float %1630, 0xBFF8000040000000
  %1632 = call float @dx.op.unary.f32(i32 7, float %1631)  ; Saturate(value)
  %1633 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  %1634 = fmul fast float %1495, 1.000000e+01
  %1635 = call float @dx.op.unary.f32(i32 7, float %1634)  ; Saturate(value)
  %1636 = fmul fast float %1635, 2.000000e+00
  %1637 = fsub fast float 3.000000e+00, %1636
  %1638 = fmul fast float %1635, %1635
  %1639 = fmul fast float %1638, %1637
  %1640 = fsub fast float 1.000000e+00, %1639
  %1641 = fsub fast float 0x3FE3333340000000, %1516
  %1642 = fmul fast float %1641, 0x400AAAAAA0000000
  %1643 = call float @dx.op.unary.f32(i32 7, float %1642)  ; Saturate(value)
  %1644 = fmul fast float %1640, %1643
  %1645 = fmul fast float %1531, 0x3FEA2B8620000000
  %1646 = fmul fast float %1532, 0x3FEA2B8620000000
  %1647 = fmul fast float %1533, 0x3FEA2B8620000000
  %1648 = fadd fast float %1645, 0x3FC81DFBA0000000
  %1649 = fmul fast float %1648, %1531
  %1650 = fadd fast float %1649, 0x3F910E6020000000
  %1651 = fadd fast float %1646, 0x3FC81DFBA0000000
  %1652 = fmul fast float %1651, %1532
  %1653 = fadd fast float %1652, 0x3F910E6020000000
  %1654 = fadd fast float %1647, 0x3FC81DFBA0000000
  %1655 = fmul fast float %1654, %1533
  %1656 = fadd fast float %1655, 0x3F910E6020000000
  %1657 = call float @dx.op.unary.f32(i32 7, float %1650)  ; Saturate(value)
  %1658 = call float @dx.op.unary.f32(i32 7, float %1653)  ; Saturate(value)
  %1659 = call float @dx.op.unary.f32(i32 7, float %1656)  ; Saturate(value)
  %1660 = fsub fast float %1657, %1531
  %1661 = fsub fast float %1658, %1532
  %1662 = fsub fast float %1659, %1533
  %1663 = fmul fast float %1660, %1633
  %1664 = fmul fast float %1663, %1644
  %1665 = fmul fast float %1661, %1633
  %1666 = fmul fast float %1665, %1644
  %1667 = fmul fast float %1662, %1633
  %1668 = fmul fast float %1667, %1644
  %1669 = fadd fast float %1664, %1531
  %1670 = fadd fast float %1666, %1532
  %1671 = fadd fast float %1668, %1533
  %1672 = fmul fast float %1455, %1455
  %1673 = fmul fast float %1672, %1672
  %1674 = fadd fast float %1629, 1.000000e+00
  %1675 = fsub fast float %1674, %1644
  %1676 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1677 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1678 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  %1679 = fsub fast float 1.000000e+00, %1673
  %1680 = call float @dx.op.binary.f32(i32 36, float %1676, float %1679)  ; FMin(a,b)
  %1681 = call float @dx.op.unary.f32(i32 7, float %1632)  ; Saturate(value)
  %1682 = call float @dx.op.binary.f32(i32 35, float %1680, float %1681)  ; FMax(a,b)
  %1683 = fadd fast float %1678, 0xBFE4CCCCC0000000
  %1684 = fmul fast float %1683, 0x4006DB6DA0000000
  %1685 = call float @dx.op.unary.f32(i32 7, float %1684)  ; Saturate(value)
  %1686 = fmul fast float %1685, 2.000000e+00
  %1687 = fsub fast float 3.000000e+00, %1686
  %1688 = bitcast float %1513 to i32
  %1689 = ashr i32 %1688, 1
  %1690 = add nsw i32 %1689, 532487669
  %1691 = bitcast i32 %1690 to float
  %1692 = fsub fast float 1.000000e+00, %1691
  %1693 = bitcast float %1692 to i32
  %1694 = sub nsw i32 2129859010, %1693
  %1695 = bitcast i32 %1694 to float
  %1696 = fmul fast float %1695, 2.000000e+00
  %1697 = bitcast float %1514 to i32
  %1698 = ashr i32 %1697, 1
  %1699 = add nsw i32 %1698, 532487669
  %1700 = bitcast i32 %1699 to float
  %1701 = fsub fast float 1.000000e+00, %1700
  %1702 = bitcast float %1701 to i32
  %1703 = sub nsw i32 2129859010, %1702
  %1704 = bitcast i32 %1703 to float
  %1705 = fmul fast float %1704, 2.000000e+00
  %1706 = bitcast float %1515 to i32
  %1707 = ashr i32 %1706, 1
  %1708 = add nsw i32 %1707, 532487669
  %1709 = bitcast i32 %1708 to float
  %1710 = fsub fast float 1.000000e+00, %1709
  %1711 = bitcast float %1710 to i32
  %1712 = sub nsw i32 2129859010, %1711
  %1713 = bitcast i32 %1712 to float
  %1714 = fmul fast float %1713, 2.000000e+00
  %1715 = fsub fast float 0x4002A9FBE0000000, %1696
  %1716 = fadd fast float %1696, 0x3FD54FDF00000000
  %1717 = bitcast float %1716 to i32
  %1718 = sub nsw i32 2129859010, %1717
  %1719 = bitcast i32 %1718 to float
  %1720 = fmul fast float %1719, %1715
  %1721 = fmul fast float %1720, %1720
  %1722 = fsub fast float 0x4002A9FBE0000000, %1705
  %1723 = fadd fast float %1705, 0x3FD54FDF00000000
  %1724 = bitcast float %1723 to i32
  %1725 = sub nsw i32 2129859010, %1724
  %1726 = bitcast i32 %1725 to float
  %1727 = fmul fast float %1726, %1722
  %1728 = fmul fast float %1727, %1727
  %1729 = fsub fast float 0x4002A9FBE0000000, %1714
  %1730 = fadd fast float %1714, 0x3FD54FDF00000000
  %1731 = bitcast float %1730 to i32
  %1732 = sub nsw i32 2129859010, %1731
  %1733 = bitcast i32 %1732 to float
  %1734 = fmul fast float %1733, %1729
  %1735 = fmul fast float %1734, %1734
  %1736 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1721)  ; FMax(a,b)
  %1737 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1728)  ; FMax(a,b)
  %1738 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1735)  ; FMax(a,b)
  %1739 = fsub fast float 1.000000e+00, %1624
  %1740 = fadd fast float %1739, %1640
  %1741 = call float @dx.op.unary.f32(i32 7, float %1740)  ; Saturate(value)
  %1742 = fsub fast float 1.000000e+00, %1616
  %1743 = fmul fast float %1682, %1742
  %1744 = fmul fast float %1685, %1685
  %1745 = fmul fast float %1744, %1743
  %1746 = fmul fast float %1745, %1687
  %1747 = fmul fast float %1742, 0xBFE99999A0000000
  %1748 = fmul fast float %1747, %1633
  %1749 = fmul fast float %1748, %1644
  %1750 = fadd fast float %1749, 1.000000e+00
  %1751 = fadd fast float %1516, -1.000000e+00
  %1752 = fmul fast float %1750, %1751
  %1753 = fadd fast float %1752, 1.000000e+00
  %1754 = fsub fast float %1736, %1513
  %1755 = fsub fast float %1737, %1514
  %1756 = fsub fast float %1738, %1515
  %1757 = fmul fast float %1746, %1754
  %1758 = fmul fast float %1746, %1755
  %1759 = fmul fast float %1746, %1756
  %1760 = fadd fast float %1757, %1513
  %1761 = fadd fast float %1758, %1514
  %1762 = fadd fast float %1759, %1515
  %1763 = fsub fast float %81, %1471
  %1764 = fsub fast float %82, %1472
  %1765 = fsub fast float %83, %1473
  %1766 = fmul fast float %1746, %1763
  %1767 = fmul fast float %1746, %1764
  %1768 = fmul fast float %1746, %1765
  %1769 = fadd fast float %1766, %1471
  %1770 = fadd fast float %1767, %1472
  %1771 = fadd fast float %1768, %1473
  %1772 = fmul fast float %1746, %1741
  %1773 = call float @dx.op.unary.f32(i32 7, float %1753)  ; Saturate(value)
  %1774 = fsub fast float 1.000000e+00, %1773
  %1775 = fmul fast float %1772, %1774
  %1776 = fadd fast float %1775, %1773
  %1777 = fsub fast float 1.000000e+00, %1455
  %1778 = fmul fast float %1746, %1777
  %1779 = fadd fast float %1778, %1455
  %1780 = call float @dx.op.dot3.f32(i32 55, float %1769, float %1770, float %1771, float %1769, float %1770, float %1771)  ; Dot3(ax,ay,az,bx,by,bz)
  %1781 = call float @dx.op.unary.f32(i32 25, float %1780)  ; Rsqrt(value)
  %1782 = fmul fast float %1769, %1781
  %1783 = fmul fast float %1770, %1781
  %1784 = fmul fast float %1771, %1781
  br label %1785

; <label>:1785                                    ; preds = %1623, %1613
  %1786 = phi float [ %1782, %1623 ], [ %1471, %1613 ]
  %1787 = phi float [ %1783, %1623 ], [ %1472, %1613 ]
  %1788 = phi float [ %1784, %1623 ], [ %1473, %1613 ]
  %1789 = phi float [ %1669, %1623 ], [ %1531, %1613 ]
  %1790 = phi float [ %1670, %1623 ], [ %1532, %1613 ]
  %1791 = phi float [ %1671, %1623 ], [ %1533, %1613 ]
  %1792 = phi float [ %1760, %1623 ], [ %1513, %1613 ]
  %1793 = phi float [ %1761, %1623 ], [ %1514, %1613 ]
  %1794 = phi float [ %1762, %1623 ], [ %1515, %1613 ]
  %1795 = phi float [ %1776, %1623 ], [ %1516, %1613 ]
  %1796 = phi float [ %1779, %1623 ], [ %1455, %1613 ]
  %1797 = select i1 %226, float 0.000000e+00, float %1794
  %1798 = call float @dx.op.dot3.f32(i32 55, float %1786, float %1787, float %1788, float %1620, float %1621, float %1622)  ; Dot3(ax,ay,az,bx,by,bz)
  %1799 = call float @dx.op.unary.f32(i32 7, float %1798)  ; Saturate(value)
  %1800 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %1786, float %1787, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1801 = fmul fast float %1800, 2.000000e+00
  %1802 = fmul fast float %1801, %1786
  %1803 = fmul fast float %1801, %1787
  %1804 = fmul fast float %1801, %1788
  %1805 = fsub fast float %153, %1802
  %1806 = fsub fast float %154, %1803
  %1807 = fsub fast float %155, %1804
  %1808 = call float @dx.op.binary.f32(i32 36, float %1796, float 1.000000e+00)  ; FMin(a,b)
  %1809 = fsub fast float 1.000000e+00, %1808
  %1810 = bitcast float %1809 to i32
  %1811 = ashr i32 %1810, 1
  %1812 = add nsw i32 %1811, 532487669
  %1813 = bitcast i32 %1812 to float
  %1814 = fsub fast float 1.000000e+00, %1795
  %1815 = call float @dx.op.binary.f32(i32 35, float %1814, float 0x3F847AE140000000)  ; FMax(a,b)
  %1816 = fmul fast float %1815, %1815
  %1817 = fmul fast float %1816, %1816
  %1818 = call float @dx.op.unary.f32(i32 7, float %1799)  ; Saturate(value)
  %1819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %1813, float %1817, float %1818, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1820 = extractvalue %dx.types.ResRet.f32 %1819, 0
  %1821 = fsub fast float 1.000000e+00, %1796
  %1822 = bitcast float %1821 to i32
  %1823 = sub nsw i32 2129859010, %1822
  %1824 = bitcast i32 %1823 to float
  %1825 = fsub fast float 1.000000e+00, %50
  %1826 = call float @dx.op.dot3.f32(i32 55, float %98, float %99, float %100, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %1827 = call float @dx.op.binary.f32(i32 35, float %1826, float 0x3FA99999A0000000)  ; FMax(a,b)
  %1828 = fdiv fast float %1825, %1827
  %1829 = call float @dx.op.dot3.f32(i32 55, float %1786, float %1787, float %1788, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %1830 = call float @dx.op.unary.f32(i32 7, float %1829)  ; Saturate(value)
  %1831 = fmul fast float %1830, 5.000000e-01
  %1832 = fadd fast float %1831, 5.000000e-01
  %1833 = fmul fast float %1832, %50
  %1834 = call float @dx.op.dot3.f32(i32 55, float %1786, float %1787, float %1788, float %98, float %99, float %100)  ; Dot3(ax,ay,az,bx,by,bz)
  %1835 = call float @dx.op.unary.f32(i32 7, float %1834)  ; Saturate(value)
  %1836 = fmul fast float %1835, %1828
  %1837 = fadd fast float %1833, %1836
  %1838 = fsub fast float 5.000000e-01, %1831
  %1839 = fmul fast float %1838, %1789
  %1840 = fmul fast float %1838, %1790
  %1841 = fmul fast float %1838, %1791
  %1842 = fadd fast float %1837, %1839
  %1843 = fadd fast float %1837, %1840
  %1844 = fadd fast float %1837, %1841
  %1845 = call float @dx.op.dot3.f32(i32 55, float %1805, float %1806, float %1807, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %1846 = call float @dx.op.unary.f32(i32 7, float %1845)  ; Saturate(value)
  %1847 = fmul fast float %1846, 5.000000e-01
  %1848 = fadd fast float %1847, 5.000000e-01
  %1849 = fmul fast float %1848, %50
  %1850 = call float @dx.op.dot3.f32(i32 55, float %1805, float %1806, float %1807, float %98, float %99, float %100)  ; Dot3(ax,ay,az,bx,by,bz)
  %1851 = call float @dx.op.unary.f32(i32 7, float %1850)  ; Saturate(value)
  %1852 = fmul fast float %1851, %1828
  %1853 = fadd fast float %1849, %1852
  %1854 = fsub fast float 5.000000e-01, %1847
  %1855 = fmul fast float %1854, %1789
  %1856 = fmul fast float %1854, %1790
  %1857 = fmul fast float %1854, %1791
  %1858 = fadd fast float %1853, %1855
  %1859 = fadd fast float %1853, %1856
  %1860 = fadd fast float %1853, %1857
  %1861 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %1863 = extractvalue %dx.types.CBufRet.f32 %1862, 0
  %1864 = call float @dx.op.binary.f32(i32 36, float %1789, float %1863)  ; FMin(a,b)
  %1865 = fmul fast float %1864, %1809
  %1866 = fsub fast float 1.000000e+00, %1865
  %1867 = bitcast float %1866 to i32
  %1868 = sub nsw i32 2129859010, %1867
  %1869 = bitcast i32 %1868 to float
  %1870 = call float @dx.op.binary.f32(i32 36, float %1790, float %1863)  ; FMin(a,b)
  %1871 = fmul fast float %1870, %1809
  %1872 = fsub fast float 1.000000e+00, %1871
  %1873 = bitcast float %1872 to i32
  %1874 = sub nsw i32 2129859010, %1873
  %1875 = bitcast i32 %1874 to float
  %1876 = call float @dx.op.binary.f32(i32 36, float %1791, float %1863)  ; FMin(a,b)
  %1877 = fmul fast float %1876, %1809
  %1878 = fsub fast float 1.000000e+00, %1877
  %1879 = bitcast float %1878 to i32
  %1880 = sub nsw i32 2129859010, %1879
  %1881 = bitcast i32 %1880 to float
  %1882 = fmul fast float %1808, %51
  %1883 = fmul fast float %1882, %1842
  %1884 = fmul fast float %1883, %1869
  %1885 = fmul fast float %1808, %52
  %1886 = fmul fast float %1885, %1843
  %1887 = fmul fast float %1886, %1875
  %1888 = fmul fast float %1808, %53
  %1889 = fmul fast float %1888, %1844
  %1890 = fmul fast float %1889, %1881
  %1891 = call float @dx.op.binary.f32(i32 36, float %1792, float %1863)  ; FMin(a,b)
  %1892 = fmul fast float %1891, %1809
  %1893 = fsub fast float 1.000000e+00, %1892
  %1894 = bitcast float %1893 to i32
  %1895 = sub nsw i32 2129859010, %1894
  %1896 = bitcast i32 %1895 to float
  %1897 = call float @dx.op.binary.f32(i32 36, float %1793, float %1863)  ; FMin(a,b)
  %1898 = fmul fast float %1897, %1809
  %1899 = fsub fast float 1.000000e+00, %1898
  %1900 = bitcast float %1899 to i32
  %1901 = sub nsw i32 2129859010, %1900
  %1902 = bitcast i32 %1901 to float
  %1903 = call float @dx.op.binary.f32(i32 36, float %1797, float %1863)  ; FMin(a,b)
  %1904 = fmul fast float %1903, %1809
  %1905 = fsub fast float 1.000000e+00, %1904
  %1906 = bitcast float %1905 to i32
  %1907 = sub nsw i32 2129859010, %1906
  %1908 = bitcast i32 %1907 to float
  %1909 = fmul fast float %1882, %1858
  %1910 = fmul fast float %1909, %1896
  %1911 = fmul fast float %1885, %1859
  %1912 = fmul fast float %1911, %1902
  %1913 = fmul fast float %1888, %1860
  %1914 = fmul fast float %1913, %1908
  %1915 = call float @dx.op.dot3.f32(i32 55, float %1884, float %1887, float %1890, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1916 = select i1 %226, float 0.000000e+00, float %1884
  %1917 = select i1 %226, float %1915, float %1887
  %1918 = select i1 %226, float 0.000000e+00, float %1890
  %1919 = call float @dx.op.dot3.f32(i32 55, float %1910, float %1912, float %1914, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1920 = select i1 %226, float 0.000000e+00, float %1910
  %1921 = select i1 %226, float %1919, float %1912
  %1922 = select i1 %226, float 0.000000e+00, float %1914
  %1923 = fmul fast float %898, %898
  %1924 = call float @dx.op.unary.f32(i32 7, float %1923)  ; Saturate(value)
  %1925 = fmul fast float %1799, 9.843750e-01
  %1926 = fmul fast float %1795, 9.843750e-01
  %1927 = fadd fast float %1925, 7.812500e-03
  %1928 = fadd fast float %1926, 7.812500e-03
  %1929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %1927, float %1928, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1930 = extractvalue %dx.types.ResRet.f32 %1929, 0
  %1931 = extractvalue %dx.types.ResRet.f32 %1929, 1
  %1932 = extractvalue %dx.types.ResRet.f32 %1929, 2
  %1933 = extractvalue %dx.types.ResRet.f32 %1929, 3
  %1934 = fsub fast float 1.000000e+00, %1924
  %1935 = fsub fast float %1932, %1930
  %1936 = fsub fast float %1933, %1931
  %1937 = fmul fast float %1935, %1934
  %1938 = fmul fast float %1936, %1934
  %1939 = fadd fast float %1937, %1930
  %1940 = fadd fast float %1938, %1931
  %1941 = fmul fast float %1939, %1792
  %1942 = fmul fast float %1939, %1793
  %1943 = fmul fast float %1939, %1797
  %1944 = fadd fast float %1941, %1940
  %1945 = fadd fast float %1942, %1940
  %1946 = fadd fast float %1943, %1940
  %1947 = fcmp fast ogt float %1448, 0.000000e+00
  br i1 %1947, label %1948, label %1974

; <label>:1948                                    ; preds = %1785
  %1949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %1448, float %1799, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1950 = extractvalue %dx.types.ResRet.f32 %1949, 0
  %1951 = extractvalue %dx.types.ResRet.f32 %1949, 1
  %1952 = extractvalue %dx.types.ResRet.f32 %1949, 2
  %1953 = fadd fast float %1950, -5.000000e-01
  %1954 = fadd fast float %1951, -5.000000e-01
  %1955 = fadd fast float %1952, -5.000000e-01
  %1956 = fsub fast float 1.000000e+00, %1792
  %1957 = fsub fast float 1.000000e+00, %1793
  %1958 = fsub fast float 1.000000e+00, %1797
  %1959 = fmul fast float %1792, 4.000000e+00
  %1960 = fmul fast float %1959, %1956
  %1961 = fmul fast float %1960, %1953
  %1962 = fmul fast float %1793, 4.000000e+00
  %1963 = fmul fast float %1962, %1957
  %1964 = fmul fast float %1963, %1954
  %1965 = fmul fast float %1797, 4.000000e+00
  %1966 = fmul fast float %1965, %1958
  %1967 = fmul fast float %1966, %1955
  %1968 = fadd fast float %1961, %1944
  %1969 = fadd fast float %1964, %1945
  %1970 = fadd fast float %1967, %1946
  %1971 = call float @dx.op.unary.f32(i32 7, float %1968)  ; Saturate(value)
  %1972 = call float @dx.op.unary.f32(i32 7, float %1969)  ; Saturate(value)
  %1973 = call float @dx.op.unary.f32(i32 7, float %1970)  ; Saturate(value)
  br label %1974

; <label>:1974                                    ; preds = %1948, %1785
  %1975 = phi float [ %1971, %1948 ], [ %1944, %1785 ]
  %1976 = phi float [ %1972, %1948 ], [ %1945, %1785 ]
  %1977 = phi float [ %1973, %1948 ], [ %1946, %1785 ]
  %1978 = call float @dx.op.binary.f32(i32 35, float %1976, float %1977)  ; FMax(a,b)
  %1979 = call float @dx.op.binary.f32(i32 35, float %1975, float %1978)  ; FMax(a,b)
  %1980 = fsub fast float 1.000000e+00, %1979
  %1981 = fmul fast float %1979, %1795
  %1982 = fadd fast float %1981, %1795
  %1983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %1984 = extractvalue %dx.types.CBufRet.f32 %1983, 2
  %1985 = extractvalue %dx.types.CBufRet.f32 %1983, 3
  %1986 = fmul fast float %1982, %1984
  %1987 = fadd fast float %1986, %1985
  %1988 = call float @dx.op.unary.f32(i32 7, float %1987)  ; Saturate(value)
  %1989 = fsub fast float 1.000000e+00, %1820
  %1990 = fadd fast float %1989, %1988
  %1991 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1992 = fcmp fast olt float %1991, 1.000000e+00
  br i1 %1992, label %1993, label %2547

; <label>:1993                                    ; preds = %1974
  %1994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1995 = extractvalue %dx.types.CBufRet.f32 %1994, 2
  %1996 = extractvalue %dx.types.CBufRet.f32 %1994, 3
  %1997 = fmul fast float %1995, %78
  %1998 = fmul fast float %1996, %79
  %1999 = fptoui float %1997 to i32
  %2000 = fptoui float %1998 to i32
  %2001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2002 = extractvalue %dx.types.CBufRet.f32 %2001, 0
  %2003 = extractvalue %dx.types.CBufRet.f32 %2001, 2
  %2004 = extractvalue %dx.types.CBufRet.f32 %2001, 3
  %2005 = fadd fast float %66, -4.000000e+00
  %2006 = call float @dx.op.binary.f32(i32 35, float %2005, float 0.000000e+00)  ; FMax(a,b)
  %2007 = fadd fast float %2006, %2002
  %2008 = fmul fast float %2007, %2003
  %2009 = call float @dx.op.unary.f32(i32 23, float %2008)  ; Log(value)
  %2010 = fmul fast float %2009, %2004
  %2011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2012 = extractvalue %dx.types.CBufRet.f32 %2011, 2
  %2013 = fmul fast float %2010, %2012
  %2014 = call float @dx.op.unary.f32(i32 7, float %2013)  ; Saturate(value)
  %2015 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2016 = extractvalue %dx.types.CBufRet.i32 %2015, 1
  %2017 = add i32 %2016, -1
  %2018 = uitofp i32 %2016 to float
  %2019 = fmul fast float %2018, %2014
  %2020 = fptoui float %2019 to i32
  %2021 = call i32 @dx.op.binary.i32(i32 40, i32 %2020, i32 %2017)  ; UMin(a,b)
  %2022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2023 = extractvalue %dx.types.CBufRet.i32 %2022, 2
  %2024 = extractvalue %dx.types.CBufRet.i32 %2022, 3
  %2025 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2000, i32 %2023, i32 %1999)  ; UMad(a,b,c)
  %2026 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2021, i32 %2024, i32 %2025)  ; UMad(a,b,c)
  %2027 = call float @dx.op.binary.f32(i32 35, float %66, float 0.000000e+00)  ; FMax(a,b)
  %2028 = fptoui float %2027 to i32
  %2029 = lshr i32 %2028, 5
  %2030 = call i32 @dx.op.binary.i32(i32 40, i32 %2029, i32 8191)  ; UMin(a,b)
  br i1 false, label %2031, label %2038

; <label>:2031                                    ; preds = %1993
  %2032 = fadd fast float 0.000000e+00, %1807
  %2033 = call float @dx.op.dot3.f32(i32 55, float %1805, float %1806, float %2032, float %1805, float %1806, float %2032)  ; Dot3(ax,ay,az,bx,by,bz)
  %2034 = call float @dx.op.unary.f32(i32 25, float %2033)  ; Rsqrt(value)
  %2035 = fmul fast float %2034, %1805
  %2036 = fmul fast float %2034, %1806
  %2037 = fmul fast float %2032, %2034
  br label %2038

; <label>:2038                                    ; preds = %2031, %1993
  %2039 = phi float [ %2035, %2031 ], [ %1805, %1993 ]
  %2040 = phi float [ %2036, %2031 ], [ %1806, %1993 ]
  %2041 = phi float [ %2037, %2031 ], [ %1807, %1993 ]
  %2042 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2043 = extractvalue %dx.types.CBufRet.i32 %2042, 2
  %2044 = add nsw i32 %2043, -1
  %2045 = call i32 @dx.op.binary.i32(i32 37, i32 %2044, i32 0)  ; IMax(a,b)
  %2046 = shl i32 %2030, 2
  %2047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %2046, i32 undef)  ; BufferLoad(srv,index,wot)
  %2048 = extractvalue %dx.types.ResRet.i32 %2047, 0
  %2049 = lshr i32 %2048, 16
  %2050 = and i32 %2048, 65535
  %2051 = lshr i32 %2048, 21
  %2052 = lshr i32 %2050, 5
  %2053 = call i32 @dx.op.binary.i32(i32 40, i32 %2052, i32 %2045)  ; UMin(a,b)
  %2054 = icmp ugt i32 %2051, %2053
  br i1 %2054, label %2435, label %2055

; <label>:2055                                    ; preds = %2038
  br label %2056

; <label>:2056                                    ; preds = %2424, %2055
  %2057 = phi float [ %2425, %2424 ], [ 0.000000e+00, %2055 ]
  %2058 = phi float [ %2426, %2424 ], [ 0.000000e+00, %2055 ]
  %2059 = phi float [ %2427, %2424 ], [ 0.000000e+00, %2055 ]
  %2060 = phi float [ %2428, %2424 ], [ 1.000000e+00, %2055 ]
  %2061 = phi i32 [ %2432, %2424 ], [ %2051, %2055 ]
  %2062 = phi float [ %2429, %2424 ], [ 0.000000e+00, %2055 ]
  %2063 = phi float [ %2430, %2424 ], [ 0.000000e+00, %2055 ]
  %2064 = phi float [ %2431, %2424 ], [ 0.000000e+00, %2055 ]
  %2065 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2066 = extractvalue %dx.types.CBufRet.i32 %2065, 2
  %2067 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2026, i32 %2066, i32 %2061)  ; UMad(a,b,c)
  %2068 = shl i32 %2067, 2
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = shl i32 %2061, 5
  %2072 = sub nsw i32 %2049, %2071
  %2073 = call i32 @dx.op.binary.i32(i32 37, i32 %2072, i32 0)  ; IMax(a,b)
  %2074 = call i32 @dx.op.binary.i32(i32 38, i32 %2073, i32 31)  ; IMin(a,b)
  %2075 = sub nsw i32 1, %2049
  %2076 = add nsw i32 %2075, %2050
  %2077 = call i32 @dx.op.binary.i32(i32 37, i32 %2076, i32 0)  ; IMax(a,b)
  %2078 = call i32 @dx.op.binary.i32(i32 38, i32 %2077, i32 32)  ; IMin(a,b)
  %2079 = and i32 %2078, 31
  %2080 = shl i32 -1, %2079
  %2081 = xor i32 %2080, -1
  %2082 = and i32 %2074, 31
  %2083 = shl i32 %2081, %2082
  %2084 = icmp eq i32 %2078, 32
  %2085 = select i1 %2084, i32 -1, i32 %2083
  %2086 = and i32 %2085, %2070
  %2087 = icmp eq i32 %2086, 0
  br i1 %2087, label %2424, label %2088

; <label>:2088                                    ; preds = %2056
  br label %2089

; <label>:2089                                    ; preds = %2198, %2088
  %2090 = phi float [ %2199, %2198 ], [ %2057, %2088 ]
  %2091 = phi float [ %2200, %2198 ], [ %2058, %2088 ]
  %2092 = phi float [ %2201, %2198 ], [ %2059, %2088 ]
  %2093 = phi float [ %2202, %2198 ], [ %2060, %2088 ]
  %2094 = phi i32 [ %2102, %2198 ], [ %2086, %2088 ]
  %2095 = phi float [ %2203, %2198 ], [ %2062, %2088 ]
  %2096 = phi float [ %2204, %2198 ], [ %2063, %2088 ]
  %2097 = phi float [ %2205, %2198 ], [ %2064, %2088 ]
  %2098 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2094)  ; FirstbitLo(value)
  %2099 = add i32 %2098, %2071
  %2100 = and i32 %2098, 31
  %2101 = shl i32 1, %2100
  %2102 = xor i32 %2101, %2094
  %2103 = mul i32 %2099, 72
  %2104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2103, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.f32 %2104, 0
  %2106 = extractvalue %dx.types.ResRet.f32 %2104, 1
  %2107 = extractvalue %dx.types.ResRet.f32 %2104, 2
  %2108 = add i32 %2103, 12
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = add i32 %2103, 16
  %2112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.f32 %2112, 0
  %2114 = extractvalue %dx.types.ResRet.f32 %2112, 1
  %2115 = extractvalue %dx.types.ResRet.f32 %2112, 2
  %2116 = add i32 %2103, 28
  %2117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2116, i32 undef)  ; BufferLoad(srv,index,wot)
  %2118 = extractvalue %dx.types.ResRet.f32 %2117, 0
  %2119 = add i32 %2103, 32
  %2120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.f32 %2120, 0
  %2122 = extractvalue %dx.types.ResRet.f32 %2120, 1
  %2123 = extractvalue %dx.types.ResRet.f32 %2120, 2
  %2124 = extractvalue %dx.types.ResRet.f32 %2120, 3
  %2125 = add i32 %2103, 48
  %2126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.f32 %2126, 0
  %2128 = extractvalue %dx.types.ResRet.f32 %2126, 1
  %2129 = add i32 %2103, 56
  %2130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2129, i32 undef)  ; BufferLoad(srv,index,wot)
  %2131 = extractvalue %dx.types.ResRet.f32 %2130, 0
  %2132 = extractvalue %dx.types.ResRet.f32 %2130, 1
  %2133 = add i32 %2103, 64
  %2134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.f32 %2134, 0
  %2136 = extractvalue %dx.types.ResRet.f32 %2134, 1
  %2137 = mul i32 %2099, 60
  %2138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2137, i32 undef)  ; BufferLoad(srv,index,wot)
  %2139 = extractvalue %dx.types.ResRet.f32 %2138, 0
  %2140 = extractvalue %dx.types.ResRet.f32 %2138, 1
  %2141 = extractvalue %dx.types.ResRet.f32 %2138, 2
  %2142 = add i32 %2137, 12
  %2143 = add i32 %2137, 48
  %2144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = extractvalue %dx.types.ResRet.f32 %2144, 1
  %2147 = extractvalue %dx.types.ResRet.f32 %2144, 2
  %2148 = and i32 %2110, 32767
  %2149 = bitcast float %2105 to i32
  %2150 = icmp eq i32 %2149, -1
  %2151 = bitcast float %2106 to i32
  %2152 = and i32 %2110, 32768
  %2153 = icmp ne i32 %2152, 0
  %2154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2155 = extractvalue %dx.types.CBufRet.f32 %2154, 0
  %2156 = extractvalue %dx.types.CBufRet.f32 %2154, 1
  %2157 = extractvalue %dx.types.CBufRet.f32 %2154, 2
  %2158 = fsub fast float %2139, %2155
  %2159 = fsub fast float %2140, %2156
  %2160 = fsub fast float %2141, %2157
  %2161 = fsub fast float %134, %2158
  %2162 = fsub fast float %135, %2159
  %2163 = fsub fast float %136, %2160
  %2164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2142, i32 undef)  ; BufferLoad(srv,index,wot)
  %2165 = extractvalue %dx.types.ResRet.f32 %2164, 0
  %2166 = extractvalue %dx.types.ResRet.f32 %2164, 1
  %2167 = extractvalue %dx.types.ResRet.f32 %2164, 2
  %2168 = call float @dx.op.dot3.f32(i32 55, float %2161, float %2162, float %2163, float %2165, float %2166, float %2167)  ; Dot3(ax,ay,az,bx,by,bz)
  %2169 = add i32 %2137, 24
  %2170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2169, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.f32 %2170, 0
  %2172 = extractvalue %dx.types.ResRet.f32 %2170, 1
  %2173 = extractvalue %dx.types.ResRet.f32 %2170, 2
  %2174 = call float @dx.op.dot3.f32(i32 55, float %2161, float %2162, float %2163, float %2171, float %2172, float %2173)  ; Dot3(ax,ay,az,bx,by,bz)
  %2175 = add i32 %2137, 36
  %2176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %2175, i32 undef)  ; BufferLoad(srv,index,wot)
  %2177 = extractvalue %dx.types.ResRet.f32 %2176, 0
  %2178 = extractvalue %dx.types.ResRet.f32 %2176, 1
  %2179 = extractvalue %dx.types.ResRet.f32 %2176, 2
  %2180 = call float @dx.op.dot3.f32(i32 55, float %2161, float %2162, float %2163, float %2177, float %2178, float %2179)  ; Dot3(ax,ay,az,bx,by,bz)
  %2181 = call float @dx.op.unary.f32(i32 6, float %2168)  ; FAbs(value)
  %2182 = call float @dx.op.unary.f32(i32 6, float %2174)  ; FAbs(value)
  %2183 = call float @dx.op.unary.f32(i32 6, float %2180)  ; FAbs(value)
  %2184 = fsub fast float %2145, %2181
  %2185 = fsub fast float %2146, %2182
  %2186 = fsub fast float %2147, %2183
  %2187 = fmul fast float %2184, %2113
  %2188 = fmul fast float %2185, %2114
  %2189 = fmul fast float %2186, %2115
  %2190 = call float @dx.op.binary.f32(i32 36, float %2188, float %2189)  ; FMin(a,b)
  %2191 = call float @dx.op.binary.f32(i32 36, float %2187, float %2190)  ; FMin(a,b)
  %2192 = call float @dx.op.unary.f32(i32 7, float %2191)  ; Saturate(value)
  %2193 = call float @dx.op.binary.f32(i32 36, float %2093, float %2192)  ; FMin(a,b)
  %2194 = uitofp i1 %2153 to float
  %2195 = fsub fast float 1.000000e+00, %2194
  %2196 = fmul fast float %2193, %2195
  %2197 = fcmp fast ogt float %2196, 0.000000e+00
  br i1 %2197, label %2207, label %2198

; <label>:2198                                    ; preds = %2349, %2089
  %2199 = phi float [ %2413, %2349 ], [ %2090, %2089 ]
  %2200 = phi float [ %2414, %2349 ], [ %2091, %2089 ]
  %2201 = phi float [ %2415, %2349 ], [ %2092, %2089 ]
  %2202 = phi float [ %2422, %2349 ], [ %2093, %2089 ]
  %2203 = phi float [ %2419, %2349 ], [ %2095, %2089 ]
  %2204 = phi float [ %2420, %2349 ], [ %2096, %2089 ]
  %2205 = phi float [ %2421, %2349 ], [ %2097, %2089 ]
  %2206 = icmp eq i32 %2094, %2101
  br i1 %2206, label %2423, label %2089

; <label>:2207                                    ; preds = %2089
  br i1 %2150, label %2265, label %2208

; <label>:2208                                    ; preds = %2207
  %2209 = fsub fast float -0.000000e+00, %2165
  %2210 = fsub fast float -0.000000e+00, %2166
  %2211 = fsub fast float -0.000000e+00, %2167
  %2212 = call float @dx.op.dot3.f32(i32 55, float %2039, float %2040, float %2041, float %2209, float %2210, float %2211)  ; Dot3(ax,ay,az,bx,by,bz)
  %2213 = fsub fast float -0.000000e+00, %2212
  %2214 = call float @dx.op.dot3.f32(i32 55, float %2161, float %2162, float %2163, float %2209, float %2210, float %2211)  ; Dot3(ax,ay,az,bx,by,bz)
  %2215 = fadd fast float %2214, %2128
  %2216 = fadd fast float %2127, %2214
  %2217 = fsub fast float -0.000000e+00, %2216
  %2218 = fcmp ogt float %2212, -0.000000e+00
  %2219 = select i1 %2218, float %2217, float %2215
  %2220 = call float @dx.op.unary.f32(i32 6, float %2213)  ; FAbs(value)
  %2221 = fdiv fast float 1.000000e+00, %2220
  %2222 = fmul fast float %2219, %2221
  %2223 = call float @dx.op.binary.f32(i32 35, float %2222, float 0.000000e+00)  ; FMax(a,b)
  %2224 = fsub fast float -0.000000e+00, %2171
  %2225 = fsub fast float -0.000000e+00, %2172
  %2226 = fsub fast float -0.000000e+00, %2173
  %2227 = call float @dx.op.dot3.f32(i32 55, float %2039, float %2040, float %2041, float %2224, float %2225, float %2226)  ; Dot3(ax,ay,az,bx,by,bz)
  %2228 = fsub fast float -0.000000e+00, %2227
  %2229 = call float @dx.op.dot3.f32(i32 55, float %2161, float %2162, float %2163, float %2224, float %2225, float %2226)  ; Dot3(ax,ay,az,bx,by,bz)
  %2230 = fadd fast float %2229, %2132
  %2231 = fadd fast float %2131, %2229
  %2232 = fsub fast float -0.000000e+00, %2231
  %2233 = fcmp ogt float %2227, -0.000000e+00
  %2234 = select i1 %2233, float %2232, float %2230
  %2235 = call float @dx.op.unary.f32(i32 6, float %2228)  ; FAbs(value)
  %2236 = fdiv fast float 1.000000e+00, %2235
  %2237 = fmul fast float %2234, %2236
  %2238 = call float @dx.op.binary.f32(i32 35, float %2237, float 0.000000e+00)  ; FMax(a,b)
  %2239 = fsub fast float -0.000000e+00, %2177
  %2240 = fsub fast float -0.000000e+00, %2178
  %2241 = fsub fast float -0.000000e+00, %2179
  %2242 = call float @dx.op.dot3.f32(i32 55, float %2039, float %2040, float %2041, float %2239, float %2240, float %2241)  ; Dot3(ax,ay,az,bx,by,bz)
  %2243 = fsub fast float -0.000000e+00, %2242
  %2244 = call float @dx.op.dot3.f32(i32 55, float %2161, float %2162, float %2163, float %2239, float %2240, float %2241)  ; Dot3(ax,ay,az,bx,by,bz)
  %2245 = fadd fast float %2244, %2136
  %2246 = fadd fast float %2135, %2244
  %2247 = fsub fast float -0.000000e+00, %2246
  %2248 = fcmp ogt float %2242, -0.000000e+00
  %2249 = select i1 %2248, float %2247, float %2245
  %2250 = call float @dx.op.unary.f32(i32 6, float %2243)  ; FAbs(value)
  %2251 = fdiv fast float 1.000000e+00, %2250
  %2252 = fmul fast float %2249, %2251
  %2253 = call float @dx.op.binary.f32(i32 35, float %2252, float 0.000000e+00)  ; FMax(a,b)
  %2254 = call float @dx.op.binary.f32(i32 36, float %2238, float %2253)  ; FMin(a,b)
  %2255 = call float @dx.op.binary.f32(i32 36, float %2223, float %2254)  ; FMin(a,b)
  %2256 = fmul fast float %2255, %2039
  %2257 = fmul fast float %2255, %2040
  %2258 = fmul fast float %2255, %2041
  %2259 = fadd fast float %2256, %134
  %2260 = fadd fast float %2257, %135
  %2261 = fadd fast float %2258, %136
  %2262 = fsub fast float %2259, %2105
  %2263 = fsub fast float %2260, %2106
  %2264 = fsub fast float %2261, %2107
  br label %2272

; <label>:2265                                    ; preds = %2207
  %2266 = fmul fast float %2039, 8.096000e+03
  %2267 = fmul fast float %2040, 8.096000e+03
  %2268 = fmul fast float %2041, 8.096000e+03
  %2269 = fadd fast float %2266, %134
  %2270 = fadd fast float %2267, %135
  %2271 = fadd fast float %2268, %136
  br label %2272

; <label>:2272                                    ; preds = %2265, %2208
  %2273 = phi float [ %2039, %2265 ], [ %2262, %2208 ]
  %2274 = phi float [ %2040, %2265 ], [ %2263, %2208 ]
  %2275 = phi float [ %2041, %2265 ], [ %2264, %2208 ]
  %2276 = phi float [ %2269, %2265 ], [ %2259, %2208 ]
  %2277 = phi float [ %2270, %2265 ], [ %2260, %2208 ]
  %2278 = phi float [ %2271, %2265 ], [ %2261, %2208 ]
  %2279 = fcmp fast olt float %2124, 1.000000e+00
  br i1 %2279, label %2280, label %2311, !dx.controlflow.hints !79

; <label>:2280                                    ; preds = %2272
  %2281 = fmul fast float %2275, %2122
  %2282 = fmul fast float %2274, %2123
  %2283 = fsub fast float %2281, %2282
  %2284 = fmul fast float %2273, %2123
  %2285 = fmul fast float %2275, %2121
  %2286 = fsub fast float %2284, %2285
  %2287 = fmul fast float %2274, %2121
  %2288 = fmul fast float %2273, %2122
  %2289 = fsub fast float %2287, %2288
  %2290 = fmul fast float %2283, 2.000000e+00
  %2291 = fmul fast float %2286, 2.000000e+00
  %2292 = fmul fast float %2289, 2.000000e+00
  %2293 = fmul fast float %2290, %2124
  %2294 = fmul fast float %2291, %2124
  %2295 = fmul fast float %2292, %2124
  %2296 = fmul fast float %2292, %2122
  %2297 = fmul fast float %2291, %2123
  %2298 = fmul fast float %2290, %2123
  %2299 = fmul fast float %2292, %2121
  %2300 = fmul fast float %2291, %2121
  %2301 = fmul fast float %2290, %2122
  %2302 = fadd fast float %2296, %2273
  %2303 = fadd fast float %2302, %2293
  %2304 = fsub fast float %2303, %2297
  %2305 = fsub fast float %2274, %2299
  %2306 = fadd fast float %2305, %2294
  %2307 = fadd fast float %2306, %2298
  %2308 = fadd fast float %2295, %2275
  %2309 = fsub fast float %2308, %2301
  %2310 = fadd fast float %2309, %2300
  br label %2311

; <label>:2311                                    ; preds = %2280, %2272
  %2312 = phi float [ %2304, %2280 ], [ %2273, %2272 ]
  %2313 = phi float [ %2307, %2280 ], [ %2274, %2272 ]
  %2314 = phi float [ %2310, %2280 ], [ %2275, %2272 ]
  br i1 %2150, label %2346, label %2315

; <label>:2315                                    ; preds = %2311
  %2316 = fmul fast float %1795, 0x400187C840000000
  %2317 = fadd fast float %2316, 0xC00EFC2120000000
  %2318 = fmul fast float %2317, %1795
  %2319 = fadd fast float %2318, 0x3FE5D16340000000
  %2320 = fmul fast float %2319, %1795
  %2321 = fadd fast float %2320, 1.000000e+00
  %2322 = call float @dx.op.unary.f32(i32 7, float %2321)  ; Saturate(value)
  %2323 = fsub fast float %2276, %134
  %2324 = fsub fast float %2277, %135
  %2325 = fsub fast float %2278, %136
  %2326 = fsub fast float %2276, %2105
  %2327 = fsub fast float %2277, %2106
  %2328 = fsub fast float %2278, %2107
  %2329 = call float @dx.op.dot3.f32(i32 55, float %2323, float %2324, float %2325, float %2323, float %2324, float %2325)  ; Dot3(ax,ay,az,bx,by,bz)
  %2330 = call float @dx.op.dot3.f32(i32 55, float %2326, float %2327, float %2328, float %2326, float %2327, float %2328)  ; Dot3(ax,ay,az,bx,by,bz)
  %2331 = fadd fast float %2330, 0x3EE4F8B580000000
  %2332 = fdiv fast float %2329, %2331
  %2333 = bitcast float %2332 to i32
  %2334 = ashr i32 %2333, 1
  %2335 = add nsw i32 %2334, 532487669
  %2336 = bitcast i32 %2335 to float
  %2337 = fmul fast float %2336, %2322
  %2338 = call float @dx.op.unary.f32(i32 7, float %2337)  ; Saturate(value)
  %2339 = fmul fast float %2338, 0x4009981AE0000000
  %2340 = fsub fast float 0x40111BBD80000000, %2339
  %2341 = fmul fast float %2340, %2338
  %2342 = fadd fast float %2341, 0xC0009F6020000000
  %2343 = fmul fast float %2342, %2338
  %2344 = fadd fast float %2343, 1.000000e+00
  %2345 = call float @dx.op.unary.f32(i32 7, float %2344)  ; Saturate(value)
  br label %2349

; <label>:2346                                    ; preds = %2311
  %2347 = icmp ne i32 %2151, -1
  %2348 = zext i1 %2347 to i32
  br label %2349

; <label>:2349                                    ; preds = %2346, %2315
  %2350 = phi float [ %1795, %2346 ], [ %2345, %2315 ]
  %2351 = phi i32 [ %2348, %2346 ], [ 0, %2315 ]
  %2352 = fmul float %2350, 5.000000e+00
  %2353 = fsub float 5.000000e+00, %2352
  %2354 = icmp ne i32 %2351, 0
  %2355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2356 = extractvalue %dx.types.CBufRet.f32 %2355, 3
  %2357 = fadd fast float %2356, %2353
  %2358 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2357)  ; FMax(a,b)
  %2359 = call float @dx.op.unary.f32(i32 6, float %2312)  ; FAbs(value)
  %2360 = call float @dx.op.unary.f32(i32 6, float %2313)  ; FAbs(value)
  %2361 = fadd fast float %2360, %2359
  %2362 = call float @dx.op.unary.f32(i32 6, float %2314)  ; FAbs(value)
  %2363 = fadd fast float %2361, %2362
  %2364 = fcmp fast oeq float %2363, 0.000000e+00
  %2365 = fdiv fast float 1.000000e+00, %2363
  %2366 = select i1 %2364, float 1.000000e+00, float %2365
  %2367 = fmul fast float %2366, %2312
  %2368 = fmul fast float %2366, %2313
  %2369 = call float @dx.op.unary.f32(i32 6, float %2368)  ; FAbs(value)
  %2370 = call float @dx.op.unary.f32(i32 6, float %2367)  ; FAbs(value)
  %2371 = fsub fast float 1.000000e+00, %2369
  %2372 = fsub fast float 1.000000e+00, %2370
  %2373 = fcmp fast oge float %2367, 0.000000e+00
  %2374 = fcmp fast oge float %2368, 0.000000e+00
  %2375 = select i1 %2373, float 1.000000e+00, float -1.000000e+00
  %2376 = select i1 %2374, float 1.000000e+00, float -1.000000e+00
  %2377 = fcmp fast ole float %2314, 0.000000e+00
  %2378 = fmul fast float %2375, %2371
  %2379 = fmul fast float %2376, %2372
  %2380 = select i1 %2377, float %2378, float %2367
  %2381 = select i1 %2377, float %2379, float %2368
  %2382 = fmul fast float %2380, 5.000000e-01
  %2383 = fmul fast float %2381, 5.000000e-01
  %2384 = fadd fast float %2382, 5.000000e-01
  %2385 = fadd fast float %2383, 5.000000e-01
  %2386 = uitofp i32 %2148 to float
  %2387 = call float @dx.op.binary.f32(i32 36, float %2358, float 3.000000e+00)  ; FMin(a,b)
  %2388 = fadd fast float %2387, 2.000000e+00
  %2389 = call float @dx.op.unary.f32(i32 21, float %2388)  ; Exp(value)
  %2390 = extractvalue %dx.types.CBufRet.f32 %2355, 1
  %2391 = fmul fast float %2390, %2389
  %2392 = fmul fast float %2391, 2.000000e+00
  %2393 = fsub fast float 1.000000e+00, %2392
  %2394 = fmul fast float %2384, %2393
  %2395 = fmul fast float %2385, %2393
  %2396 = fadd fast float %2394, %2391
  %2397 = fadd fast float %2395, %2391
  %2398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %37, float %2396, float %2397, float %2386, float undef, i32 0, i32 0, i32 undef, float %2358)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2399 = extractvalue %dx.types.ResRet.f32 %2398, 0
  %2400 = extractvalue %dx.types.ResRet.f32 %2398, 1
  %2401 = extractvalue %dx.types.ResRet.f32 %2398, 2
  %2402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2403 = extractvalue %dx.types.CBufRet.f32 %2402, 3
  %2404 = fmul fast float %2403, %2118
  %2405 = call float @dx.op.binary.f32(i32 36, float %1861, float %2404)  ; FMin(a,b)
  %2406 = select i1 %2354, float %2405, float %2404
  %2407 = fmul fast float %2399, %2196
  %2408 = fmul fast float %2407, %2406
  %2409 = fmul fast float %2400, %2196
  %2410 = fmul fast float %2409, %2406
  %2411 = fmul fast float %2401, %2196
  %2412 = fmul fast float %2411, %2406
  %2413 = fadd fast float %2408, %2090
  %2414 = fadd fast float %2410, %2091
  %2415 = fadd fast float %2412, %2092
  %2416 = fmul fast float %2276, %2196
  %2417 = fmul fast float %2277, %2196
  %2418 = fmul fast float %2278, %2196
  %2419 = fadd fast float %2416, %2095
  %2420 = fadd fast float %2417, %2096
  %2421 = fadd fast float %2418, %2097
  %2422 = fsub fast float %2093, %2196
  br label %2198

; <label>:2423                                    ; preds = %2198
  br label %2424

; <label>:2424                                    ; preds = %2423, %2056
  %2425 = phi float [ %2057, %2056 ], [ %2199, %2423 ]
  %2426 = phi float [ %2058, %2056 ], [ %2200, %2423 ]
  %2427 = phi float [ %2059, %2056 ], [ %2201, %2423 ]
  %2428 = phi float [ %2060, %2056 ], [ %2202, %2423 ]
  %2429 = phi float [ %2062, %2056 ], [ %2203, %2423 ]
  %2430 = phi float [ %2063, %2056 ], [ %2204, %2423 ]
  %2431 = phi float [ %2064, %2056 ], [ %2205, %2423 ]
  %2432 = add i32 %2061, 1
  %2433 = icmp ugt i32 %2432, %2053
  br i1 %2433, label %2434, label %2056, !llvm.loop !80

; <label>:2434                                    ; preds = %2424
  br label %2435

; <label>:2435                                    ; preds = %2434, %2038
  %2436 = phi float [ 0.000000e+00, %2038 ], [ %2425, %2434 ]
  %2437 = phi float [ 0.000000e+00, %2038 ], [ %2426, %2434 ]
  %2438 = phi float [ 0.000000e+00, %2038 ], [ %2427, %2434 ]
  %2439 = phi float [ 0.000000e+00, %2038 ], [ %2429, %2434 ]
  %2440 = phi float [ 0.000000e+00, %2038 ], [ %2430, %2434 ]
  %2441 = phi float [ 0.000000e+00, %2038 ], [ %2431, %2434 ]
  %2442 = call float @dx.op.dot3.f32(i32 55, float %2436, float %2437, float %2438, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2443 = select i1 %226, float 0.000000e+00, float %2436
  %2444 = select i1 %226, float %2442, float %2437
  %2445 = select i1 %226, float 0.000000e+00, float %2438
  %2446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %2447 = extractvalue %dx.types.CBufRet.f32 %2446, 0
  %2448 = extractvalue %dx.types.CBufRet.f32 %2446, 1
  %2449 = extractvalue %dx.types.CBufRet.f32 %2446, 2
  %2450 = extractvalue %dx.types.CBufRet.f32 %2446, 3
  %2451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %2452 = extractvalue %dx.types.CBufRet.f32 %2451, 0
  %2453 = extractvalue %dx.types.CBufRet.f32 %2451, 1
  %2454 = extractvalue %dx.types.CBufRet.f32 %2451, 2
  %2455 = extractvalue %dx.types.CBufRet.f32 %2451, 3
  %2456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %2457 = extractvalue %dx.types.CBufRet.f32 %2456, 0
  %2458 = extractvalue %dx.types.CBufRet.f32 %2456, 1
  %2459 = extractvalue %dx.types.CBufRet.f32 %2456, 2
  %2460 = extractvalue %dx.types.CBufRet.f32 %2456, 3
  %2461 = call float @dx.op.dot3.f32(i32 55, float %2457, float %2458, float %2459, float %1805, float %1806, float %1807)  ; Dot3(ax,ay,az,bx,by,bz)
  %2462 = call float @dx.op.dot3.f32(i32 55, float %2439, float %2440, float %2441, float %2457, float %2458, float %2459)  ; Dot3(ax,ay,az,bx,by,bz)
  %2463 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %2457, float %2458, float %2459)  ; Dot3(ax,ay,az,bx,by,bz)
  %2464 = fadd fast float %1795, -1.000000e+00
  %2465 = fsub fast float %2462, %2463
  %2466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2466, 2
  %2468 = fmul fast float %2467, %2462
  %2469 = fdiv fast float 1.600000e+02, %2468
  %2470 = fmul fast float %2464, %2464
  %2471 = fmul fast float %2470, 0xBFB5B17960000000
  %2472 = fmul fast float %2471, %2465
  %2473 = fmul fast float %2472, %2469
  %2474 = call float @dx.op.unary.f32(i32 21, float %2473)  ; Exp(value)
  %2475 = fmul fast float %2474, 0x3FF04B2960000000
  %2476 = fsub fast float 0x3FF04B2960000000, %2475
  %2477 = call float @dx.op.unary.f32(i32 7, float %2476)  ; Saturate(value)
  %2478 = fmul fast float %2477, 4.000000e+00
  %2479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %2480 = extractvalue %dx.types.CBufRet.f32 %2479, 0
  %2481 = extractvalue %dx.types.CBufRet.f32 %2479, 1
  %2482 = extractvalue %dx.types.CBufRet.f32 %2479, 2
  %2483 = fadd fast float %2480, %2439
  %2484 = fadd fast float %2481, %2440
  %2485 = fadd fast float %2482, %2441
  %2486 = fmul fast float %2483, %2447
  %2487 = call float @dx.op.tertiary.f32(i32 46, float %2484, float %2448, float %2486)  ; FMad(a,b,c)
  %2488 = call float @dx.op.tertiary.f32(i32 46, float %2485, float %2449, float %2487)  ; FMad(a,b,c)
  %2489 = fadd fast float %2488, %2450
  %2490 = fmul fast float %2483, %2452
  %2491 = call float @dx.op.tertiary.f32(i32 46, float %2484, float %2453, float %2490)  ; FMad(a,b,c)
  %2492 = call float @dx.op.tertiary.f32(i32 46, float %2485, float %2454, float %2491)  ; FMad(a,b,c)
  %2493 = fadd fast float %2492, %2455
  %2494 = fmul fast float %2483, %2457
  %2495 = call float @dx.op.tertiary.f32(i32 46, float %2484, float %2458, float %2494)  ; FMad(a,b,c)
  %2496 = call float @dx.op.tertiary.f32(i32 46, float %2485, float %2459, float %2495)  ; FMad(a,b,c)
  %2497 = fadd fast float %2496, %2460
  %2498 = fdiv fast float %2489, %2497
  %2499 = fdiv fast float %2493, %2497
  %2500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.f32 %2500, 0
  %2502 = extractvalue %dx.types.CBufRet.f32 %2500, 1
  %2503 = fmul fast float %2501, %2498
  %2504 = fmul fast float %2502, %2499
  %2505 = extractvalue %dx.types.CBufRet.f32 %2500, 2
  %2506 = extractvalue %dx.types.CBufRet.f32 %2500, 3
  %2507 = fadd fast float %2503, %2505
  %2508 = fadd fast float %2504, %2506
  %2509 = fmul fast float %2461, 8.000000e+00
  %2510 = call float @dx.op.unary.f32(i32 7, float %2509)  ; Saturate(value)
  %2511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %2512 = extractvalue %dx.types.CBufRet.f32 %2511, 0
  %2513 = fmul fast float %2507, 2.000000e+00
  %2514 = fmul fast float %2508, 2.000000e+00
  %2515 = fadd fast float %2513, -1.000000e+00
  %2516 = fadd fast float %2514, -1.000000e+00
  %2517 = fmul fast float %2515, %2515
  %2518 = fsub fast float 1.000000e+00, %2517
  %2519 = call float @dx.op.unary.f32(i32 7, float %2518)  ; Saturate(value)
  %2520 = fmul fast float %2516, %2516
  %2521 = fsub fast float 1.000000e+00, %2520
  %2522 = call float @dx.op.unary.f32(i32 7, float %2521)  ; Saturate(value)
  %2523 = fmul fast float %2512, %2519
  %2524 = fmul fast float %2523, %2522
  %2525 = call float @dx.op.unary.f32(i32 7, float %2524)  ; Saturate(value)
  %2526 = fmul fast float %2525, %2510
  %2527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %37, float %2507, float %2508, float undef, float undef, i32 0, i32 0, i32 undef, float %2478)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2528 = extractvalue %dx.types.ResRet.f32 %2527, 0
  %2529 = extractvalue %dx.types.ResRet.f32 %2527, 1
  %2530 = extractvalue %dx.types.ResRet.f32 %2527, 2
  %2531 = select i1 %226, float 0.000000e+00, float %2529
  %2532 = select i1 %226, float 0.000000e+00, float %2530
  %2533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2534 = extractvalue %dx.types.CBufRet.f32 %2533, 2
  %2535 = fmul fast float %2534, %2528
  %2536 = fmul fast float %2531, %2534
  %2537 = fmul fast float %2532, %2534
  %2538 = fsub fast float %2535, %2443
  %2539 = fsub fast float %2536, %2444
  %2540 = fsub fast float %2537, %2445
  %2541 = fmul fast float %2538, %2526
  %2542 = fmul fast float %2539, %2526
  %2543 = fmul fast float %2540, %2526
  %2544 = fadd fast float %2541, %2443
  %2545 = fadd fast float %2542, %2444
  %2546 = fadd fast float %2543, %2445
  br label %2547

; <label>:2547                                    ; preds = %2435, %1974
  %2548 = phi float [ %1920, %1974 ], [ %2544, %2435 ]
  %2549 = phi float [ %1921, %1974 ], [ %2545, %2435 ]
  %2550 = phi float [ %1922, %1974 ], [ %2546, %2435 ]
  %2551 = fmul fast float %1980, %1916
  %2552 = fmul fast float %1980, %1917
  %2553 = fmul fast float %1980, %1918
  %2554 = call float @dx.op.dot3.f32(i32 55, float %1789, float %1790, float %1791, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2555 = fcmp fast ogt float %2554, 0x3E7FF19E20000000
  %2556 = fdiv fast float 1.000000e+00, %2554
  %2557 = select i1 %2555, float %2556, float 0.000000e+00
  %2558 = fmul fast float %2557, %1789
  %2559 = fmul fast float %2557, %1790
  %2560 = fmul fast float %2557, %1791
  %2561 = fadd fast float %2558, -1.000000e+00
  %2562 = fadd fast float %2559, -1.000000e+00
  %2563 = fadd fast float %2560, -1.000000e+00
  %2564 = fmul fast float %2561, 5.000000e-01
  %2565 = fmul fast float %2562, 5.000000e-01
  %2566 = fmul fast float %2563, 5.000000e-01
  %2567 = fadd fast float %2564, 1.000000e+00
  %2568 = fadd fast float %2565, 1.000000e+00
  %2569 = fadd fast float %2566, 1.000000e+00
  %2570 = call float @dx.op.binary.f32(i32 35, float %1799, float 0x3F50624DE0000000)  ; FMax(a,b)
  %2571 = fdiv fast float %898, %2570
  %2572 = fcmp fast olt float %1517, 1.270000e+02
  %2573 = fcmp fast olt float %1518, 1.270000e+02
  %2574 = fcmp fast olt float %1519, 1.270000e+02
  %2575 = fmul fast float %1517, 0xBFF7154760000000
  %2576 = fmul fast float %2575, %2571
  %2577 = fmul fast float %1518, 0xBFF7154760000000
  %2578 = fmul fast float %2577, %2571
  %2579 = fmul fast float %1519, 0xBFF7154760000000
  %2580 = fmul fast float %2579, %2571
  %2581 = call float @dx.op.unary.f32(i32 21, float %2576)  ; Exp(value)
  %2582 = call float @dx.op.unary.f32(i32 21, float %2578)  ; Exp(value)
  %2583 = call float @dx.op.unary.f32(i32 21, float %2580)  ; Exp(value)
  %2584 = call float @dx.op.unary.f32(i32 7, float %2581)  ; Saturate(value)
  %2585 = call float @dx.op.unary.f32(i32 7, float %2582)  ; Saturate(value)
  %2586 = call float @dx.op.unary.f32(i32 7, float %2583)  ; Saturate(value)
  %2587 = select i1 %2572, float %2584, float 0.000000e+00
  %2588 = select i1 %2573, float %2585, float 0.000000e+00
  %2589 = select i1 %2574, float %2586, float 0.000000e+00
  %2590 = fmul fast float %2587, %1980
  %2591 = fmul fast float %2588, %1980
  %2592 = fmul fast float %2589, %1980
  %2593 = fadd fast float %2590, -1.000000e+00
  %2594 = fadd fast float %2591, -1.000000e+00
  %2595 = fadd fast float %2592, -1.000000e+00
  %2596 = fmul fast float %2548, %1975
  %2597 = fmul fast float %2549, %1976
  %2598 = fmul fast float %2550, %1977
  %2599 = fsub fast float 1.000000e+00, %1799
  %2600 = bitcast float %2599 to i32
  %2601 = sitofp i32 %2600 to float
  %2602 = fmul fast float %2601, 5.000000e+00
  %2603 = fadd fast float %2602, 0xC1EFBF8940000000
  %2604 = fptosi float %2603 to i32
  %2605 = bitcast i32 %2604 to float
  %2606 = fmul fast float %2605, %1447
  %2607 = fmul fast float %1916, %2606
  %2608 = fmul fast float %2607, %1980
  %2609 = fmul fast float %2608, %2567
  %2610 = fmul fast float %1917, %2606
  %2611 = fmul fast float %2610, %1980
  %2612 = fmul fast float %2611, %2568
  %2613 = fmul fast float %1918, %2606
  %2614 = fmul fast float %2613, %1980
  %2615 = fmul fast float %2614, %2569
  %2616 = fmul fast float %2551, %1494
  %2617 = fmul fast float %2552, %1494
  %2618 = fmul fast float %2553, %1494
  %2619 = fadd fast float %2596, %1449
  %2620 = fadd fast float %2619, %2609
  %2621 = fmul fast float %2620, %1494
  %2622 = fadd fast float %2597, %1450
  %2623 = fadd fast float %2622, %2612
  %2624 = fmul fast float %2623, %1494
  %2625 = fadd fast float %2598, %1451
  %2626 = fadd fast float %2625, %2615
  %2627 = fmul fast float %2626, %1494
  %2628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2629 = extractvalue %dx.types.CBufRet.f32 %2628, 3
  %2630 = fcmp fast oeq float %2629, 0.000000e+00
  br i1 %2630, label %4109, label %2631

; <label>:2631                                    ; preds = %2547
  %2632 = extractvalue %dx.types.CBufRet.f32 %2628, 0
  %2633 = extractvalue %dx.types.CBufRet.f32 %2628, 1
  %2634 = extractvalue %dx.types.CBufRet.f32 %2628, 2
  %2635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2636 = extractvalue %dx.types.CBufRet.f32 %2635, 0
  %2637 = extractvalue %dx.types.CBufRet.f32 %2635, 1
  %2638 = extractvalue %dx.types.CBufRet.f32 %2635, 2
  %2639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2640 = extractvalue %dx.types.CBufRet.f32 %2639, 0
  %2641 = extractvalue %dx.types.CBufRet.f32 %2639, 1
  %2642 = call float @dx.op.dot3.f32(i32 55, float %2636, float %2637, float %2638, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2643 = select i1 %226, float %2640, float %2636
  %2644 = select i1 %226, float %2642, float %2637
  %2645 = select i1 %226, float %2641, float %2638
  %2646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2647 = extractvalue %dx.types.CBufRet.f32 %2646, 2
  %2648 = fmul fast float %2647, %81
  %2649 = fmul fast float %2647, %82
  %2650 = fmul fast float %2647, %83
  %2651 = fadd fast float %2648, %134
  %2652 = fadd fast float %2649, %135
  %2653 = fadd fast float %2650, %136
  %2654 = fcmp fast olt float %2629, 0.000000e+00
  br i1 %2654, label %3750, label %2655

; <label>:2655                                    ; preds = %2631
  %2656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2657 = extractvalue %dx.types.CBufRet.f32 %2656, 0
  %2658 = extractvalue %dx.types.CBufRet.f32 %2656, 1
  %2659 = extractvalue %dx.types.CBufRet.f32 %2656, 2
  %2660 = extractvalue %dx.types.CBufRet.f32 %2656, 3
  %2661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2662 = extractvalue %dx.types.CBufRet.f32 %2661, 0
  %2663 = extractvalue %dx.types.CBufRet.f32 %2661, 1
  %2664 = extractvalue %dx.types.CBufRet.f32 %2661, 2
  %2665 = extractvalue %dx.types.CBufRet.f32 %2661, 3
  %2666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2667 = extractvalue %dx.types.CBufRet.f32 %2666, 0
  %2668 = extractvalue %dx.types.CBufRet.f32 %2666, 1
  %2669 = extractvalue %dx.types.CBufRet.f32 %2666, 2
  %2670 = extractvalue %dx.types.CBufRet.f32 %2666, 3
  %2671 = fmul fast float %2657, %2651
  %2672 = call float @dx.op.tertiary.f32(i32 46, float %2652, float %2658, float %2671)  ; FMad(a,b,c)
  %2673 = call float @dx.op.tertiary.f32(i32 46, float %2653, float %2659, float %2672)  ; FMad(a,b,c)
  %2674 = fadd fast float %2673, %2660
  %2675 = fmul fast float %2662, %2651
  %2676 = call float @dx.op.tertiary.f32(i32 46, float %2652, float %2663, float %2675)  ; FMad(a,b,c)
  %2677 = call float @dx.op.tertiary.f32(i32 46, float %2653, float %2664, float %2676)  ; FMad(a,b,c)
  %2678 = fadd fast float %2677, %2665
  %2679 = fmul fast float %2667, %2651
  %2680 = call float @dx.op.tertiary.f32(i32 46, float %2652, float %2668, float %2679)  ; FMad(a,b,c)
  %2681 = call float @dx.op.tertiary.f32(i32 46, float %2653, float %2669, float %2680)  ; FMad(a,b,c)
  %2682 = fadd fast float %2681, %2670
  %2683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2684 = extractvalue %dx.types.CBufRet.f32 %2683, 0
  %2685 = extractvalue %dx.types.CBufRet.f32 %2683, 1
  %2686 = extractvalue %dx.types.CBufRet.f32 %2683, 3
  %2687 = fmul fast float %2686, %2674
  %2688 = fmul fast float %2686, %2678
  %2689 = fadd fast float %2687, %2684
  %2690 = fadd fast float %2688, %2685
  %2691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2692 = extractvalue %dx.types.CBufRet.f32 %2691, 0
  %2693 = extractvalue %dx.types.CBufRet.f32 %2691, 1
  %2694 = extractvalue %dx.types.CBufRet.f32 %2691, 3
  %2695 = fmul fast float %2694, %2674
  %2696 = fmul fast float %2694, %2678
  %2697 = fadd fast float %2695, %2692
  %2698 = fadd fast float %2696, %2693
  %2699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2700 = extractvalue %dx.types.CBufRet.f32 %2699, 1
  %2701 = fsub fast float %2700, %2682
  %2702 = extractvalue %dx.types.CBufRet.f32 %2699, 2
  %2703 = fmul fast float %2701, %2702
  %2704 = fsub fast float 1.000000e+00, %2703
  %2705 = call float @dx.op.unary.f32(i32 7, float %2704)  ; Saturate(value)
  %2706 = extractvalue %dx.types.CBufRet.f32 %2691, 2
  %2707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2708 = extractvalue %dx.types.CBufRet.f32 %2707, 2
  %2709 = fadd fast float %2708, %2706
  %2710 = fcmp fast ogt float %2709, 0.000000e+00
  br i1 %2710, label %2711, label %2735

; <label>:2711                                    ; preds = %2655
  %2712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2713 = extractvalue %dx.types.CBufRet.f32 %2712, 0
  %2714 = extractvalue %dx.types.CBufRet.f32 %2712, 1
  %2715 = fsub fast float %2697, %2713
  %2716 = fsub fast float %2698, %2714
  %2717 = fcmp fast olt float %2715, 0.000000e+00
  %2718 = fcmp fast olt float %2716, 0.000000e+00
  %2719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2720 = extractvalue %dx.types.CBufRet.f32 %2719, 0
  %2721 = extractvalue %dx.types.CBufRet.f32 %2719, 1
  %2722 = extractvalue %dx.types.CBufRet.f32 %2719, 2
  %2723 = extractvalue %dx.types.CBufRet.f32 %2719, 3
  %2724 = select i1 %2717, float %2720, float %2722
  %2725 = select i1 %2718, float %2721, float %2723
  %2726 = fmul fast float %2724, %2715
  %2727 = fmul fast float %2725, %2716
  %2728 = call float @dx.op.unary.f32(i32 6, float %2726)  ; FAbs(value)
  %2729 = call float @dx.op.unary.f32(i32 6, float %2727)  ; FAbs(value)
  %2730 = extractvalue %dx.types.CBufRet.f32 %2646, 0
  %2731 = call float @dx.op.binary.f32(i32 35, float %2728, float %2729)  ; FMax(a,b)
  %2732 = fsub fast float %2730, %2731
  %2733 = call float @dx.op.unary.f32(i32 7, float %2732)  ; Saturate(value)
  %2734 = fmul fast float %2733, %2705
  br label %2735

; <label>:2735                                    ; preds = %2711, %2655
  %2736 = phi float [ %2734, %2711 ], [ 0.000000e+00, %2655 ]
  %2737 = extractvalue %dx.types.CBufRet.f32 %2683, 2
  %2738 = extractvalue %dx.types.CBufRet.f32 %2707, 1
  %2739 = fadd fast float %2738, %2737
  %2740 = fcmp fast ogt float %2739, 0.000000e+00
  %2741 = extractvalue %dx.types.CBufRet.f32 %2646, 0
  br i1 %2740, label %2742, label %2765

; <label>:2742                                    ; preds = %2735
  %2743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2744 = extractvalue %dx.types.CBufRet.f32 %2743, 0
  %2745 = extractvalue %dx.types.CBufRet.f32 %2743, 1
  %2746 = fsub fast float %2689, %2744
  %2747 = fsub fast float %2690, %2745
  %2748 = fcmp fast olt float %2746, 0.000000e+00
  %2749 = fcmp fast olt float %2747, 0.000000e+00
  %2750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2751 = extractvalue %dx.types.CBufRet.f32 %2750, 0
  %2752 = extractvalue %dx.types.CBufRet.f32 %2750, 1
  %2753 = extractvalue %dx.types.CBufRet.f32 %2750, 2
  %2754 = extractvalue %dx.types.CBufRet.f32 %2750, 3
  %2755 = select i1 %2748, float %2751, float %2753
  %2756 = select i1 %2749, float %2752, float %2754
  %2757 = fmul fast float %2755, %2746
  %2758 = fmul fast float %2756, %2747
  %2759 = call float @dx.op.unary.f32(i32 6, float %2757)  ; FAbs(value)
  %2760 = call float @dx.op.unary.f32(i32 6, float %2758)  ; FAbs(value)
  %2761 = call float @dx.op.binary.f32(i32 35, float %2759, float %2760)  ; FMax(a,b)
  %2762 = fsub fast float %2741, %2761
  %2763 = call float @dx.op.unary.f32(i32 7, float %2762)  ; Saturate(value)
  %2764 = fmul fast float %2763, %2705
  br label %2765

; <label>:2765                                    ; preds = %2742, %2735
  %2766 = phi float [ %2764, %2742 ], [ 0.000000e+00, %2735 ]
  %2767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2768 = extractvalue %dx.types.CBufRet.f32 %2767, 1
  %2769 = call float @dx.op.unary.f32(i32 7, float %2768)  ; Saturate(value)
  %2770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2771 = extractvalue %dx.types.CBufRet.f32 %2770, 0
  %2772 = extractvalue %dx.types.CBufRet.f32 %2770, 1
  %2773 = fsub fast float %2674, %2771
  %2774 = fsub fast float %2678, %2772
  %2775 = fcmp fast olt float %2773, 0.000000e+00
  %2776 = fcmp fast olt float %2774, 0.000000e+00
  %2777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2778 = extractvalue %dx.types.CBufRet.f32 %2777, 0
  %2779 = extractvalue %dx.types.CBufRet.f32 %2777, 1
  %2780 = extractvalue %dx.types.CBufRet.f32 %2777, 2
  %2781 = extractvalue %dx.types.CBufRet.f32 %2777, 3
  %2782 = select i1 %2775, float %2778, float %2780
  %2783 = select i1 %2776, float %2779, float %2781
  %2784 = fmul fast float %2782, %2773
  %2785 = fmul fast float %2783, %2774
  %2786 = call float @dx.op.unary.f32(i32 6, float %2784)  ; FAbs(value)
  %2787 = call float @dx.op.unary.f32(i32 6, float %2785)  ; FAbs(value)
  %2788 = call float @dx.op.binary.f32(i32 35, float %2786, float %2787)  ; FMax(a,b)
  %2789 = fsub fast float %2741, %2788
  %2790 = call float @dx.op.unary.f32(i32 7, float %2789)  ; Saturate(value)
  %2791 = call float @dx.op.binary.f32(i32 36, float %2790, float %2769)  ; FMin(a,b)
  %2792 = fmul fast float %2791, %2705
  %2793 = fsub fast float %2766, %2792
  %2794 = fsub fast float %2736, %2766
  %2795 = fsub fast float %2794, %2792
  %2796 = call float @dx.op.binary.f32(i32 35, float %2766, float %2736)  ; FMax(a,b)
  %2797 = call float @dx.op.binary.f32(i32 35, float %2792, float %2796)  ; FMax(a,b)
  %2798 = fcmp fast olt float %2797, 1.000000e+00
  br i1 %2798, label %2799, label %3197, !dx.controlflow.hints !82

; <label>:2799                                    ; preds = %2765
  %2800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2801 = extractvalue %dx.types.CBufRet.f32 %2800, 0
  %2802 = fcmp fast une float %2801, 0.000000e+00
  br i1 %2802, label %2803, label %3197, !dx.controlflow.hints !83

; <label>:2803                                    ; preds = %2799
  %2804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2805 = extractvalue %dx.types.CBufRet.f32 %2804, 0
  %2806 = extractvalue %dx.types.CBufRet.f32 %2804, 1
  %2807 = extractvalue %dx.types.CBufRet.f32 %2804, 2
  %2808 = extractvalue %dx.types.CBufRet.f32 %2804, 3
  %2809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.f32 %2809, 0
  %2811 = extractvalue %dx.types.CBufRet.f32 %2809, 1
  %2812 = extractvalue %dx.types.CBufRet.f32 %2809, 2
  %2813 = extractvalue %dx.types.CBufRet.f32 %2809, 3
  %2814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2815 = extractvalue %dx.types.CBufRet.f32 %2814, 0
  %2816 = extractvalue %dx.types.CBufRet.f32 %2814, 1
  %2817 = extractvalue %dx.types.CBufRet.f32 %2814, 2
  %2818 = extractvalue %dx.types.CBufRet.f32 %2814, 3
  %2819 = fmul fast float %2805, %2651
  %2820 = call float @dx.op.tertiary.f32(i32 46, float %2652, float %2806, float %2819)  ; FMad(a,b,c)
  %2821 = call float @dx.op.tertiary.f32(i32 46, float %2653, float %2807, float %2820)  ; FMad(a,b,c)
  %2822 = fadd fast float %2821, %2808
  %2823 = fmul fast float %2810, %2651
  %2824 = call float @dx.op.tertiary.f32(i32 46, float %2652, float %2811, float %2823)  ; FMad(a,b,c)
  %2825 = call float @dx.op.tertiary.f32(i32 46, float %2653, float %2812, float %2824)  ; FMad(a,b,c)
  %2826 = fadd fast float %2825, %2813
  %2827 = fmul fast float %2815, %2651
  %2828 = call float @dx.op.tertiary.f32(i32 46, float %2652, float %2816, float %2827)  ; FMad(a,b,c)
  %2829 = call float @dx.op.tertiary.f32(i32 46, float %2653, float %2817, float %2828)  ; FMad(a,b,c)
  %2830 = fadd fast float %2829, %2818
  %2831 = fcmp fast oge float %2822, 1.000000e+00
  %2832 = fcmp fast oge float %2826, 1.000000e+00
  %2833 = or i1 %2831, %2832
  %2834 = fcmp fast olt float %2822, 0.000000e+00
  %2835 = fcmp fast olt float %2826, 0.000000e+00
  %2836 = or i1 %2834, %2835
  %2837 = or i1 %2833, %2836
  br i1 %2837, label %3197, label %2838, !dx.controlflow.hints !84

; <label>:2838                                    ; preds = %2803
  %2839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2840 = extractvalue %dx.types.CBufRet.f32 %2839, 0
  %2841 = extractvalue %dx.types.CBufRet.f32 %2839, 1
  %2842 = extractvalue %dx.types.CBufRet.f32 %2839, 2
  %2843 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2844 = extractvalue %dx.types.CBufRet.i32 %2843, 2
  %2845 = uitofp i32 %2844 to float
  %2846 = extractvalue %dx.types.CBufRet.i32 %2843, 3
  %2847 = uitofp i32 %2846 to float
  %2848 = extractvalue %dx.types.CBufRet.f32 %2839, 3
  %2849 = fmul fast float %2848, 2.000000e+00
  %2850 = fsub fast float %2822, %2840
  %2851 = fsub fast float %2826, %2841
  %2852 = fmul fast float %2849, %2850
  %2853 = fmul fast float %2849, %2851
  %2854 = fdiv fast float 1.000000e+00, %2634
  %2855 = fmul fast float %2853, %2854
  %2856 = call float @dx.op.unary.f32(i32 6, float %2855)  ; FAbs(value)
  %2857 = fmul fast float %2842, %2653
  %2858 = fmul fast float %2857, %2849
  %2859 = call float @dx.op.unary.f32(i32 6, float %2858)  ; FAbs(value)
  %2860 = call float @dx.op.unary.f32(i32 6, float %2852)  ; FAbs(value)
  %2861 = call float @dx.op.binary.f32(i32 35, float %2859, float %2856)  ; FMax(a,b)
  %2862 = call float @dx.op.binary.f32(i32 35, float %2860, float %2861)  ; FMax(a,b)
  %2863 = fmul fast float %2862, 2.000000e+00
  %2864 = call float @dx.op.unary.f32(i32 23, float %2863)  ; Log(value)
  %2865 = call float @dx.op.binary.f32(i32 35, float %2864, float %2845)  ; FMax(a,b)
  %2866 = call float @dx.op.unary.f32(i32 22, float %2865)  ; Frc(value)
  %2867 = fadd fast float %2866, 0xBFEA666660000000
  %2868 = fmul fast float %2867, 8.000000e+00
  %2869 = call float @dx.op.unary.f32(i32 7, float %2868)  ; Saturate(value)
  %2870 = call float @dx.op.unary.f32(i32 27, float %2865)  ; Round_ni(value)
  %2871 = fadd fast float %2870, %2869
  %2872 = call float @dx.op.binary.f32(i32 36, float %2871, float %2847)  ; FMin(a,b)
  %2873 = call float @dx.op.unary.f32(i32 27, float %2872)  ; Round_ni(value)
  %2874 = fsub fast float -0.000000e+00, %2873
  %2875 = call float @dx.op.unary.f32(i32 21, float %2874)  ; Exp(value)
  %2876 = fmul fast float %2875, %2849
  %2877 = fmul fast float %2876, %2822
  %2878 = fmul fast float %2876, %2826
  %2879 = fmul fast float %2877, 2.500000e-01
  %2880 = fmul fast float %2878, 2.500000e-01
  %2881 = fadd fast float %2879, 5.000000e-01
  %2882 = fadd fast float %2880, 5.000000e-01
  %2883 = fsub fast float %2847, %2845
  %2884 = fptoui float %2883 to i32
  %2885 = add i32 %2884, 320
  %2886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 %2885)  ; CBufferLoadLegacy(handle,regIndex)
  %2887 = extractvalue %dx.types.CBufRet.f32 %2886, 0
  %2888 = extractvalue %dx.types.CBufRet.f32 %2886, 1
  %2889 = fcmp fast une float %2872, %2847
  %2890 = fsub fast float %2822, %2887
  %2891 = fsub fast float %2826, %2888
  %2892 = call float @dx.op.unary.f32(i32 6, float %2890)  ; FAbs(value)
  %2893 = call float @dx.op.unary.f32(i32 6, float %2891)  ; FAbs(value)
  %2894 = fmul fast float %2892, %2876
  %2895 = fmul fast float %2893, %2876
  %2896 = fcmp fast olt float %2894, 1.000000e+00
  %2897 = fcmp fast olt float %2895, 1.000000e+00
  %2898 = and i1 %2896, %2897
  %2899 = or i1 %2889, %2898
  br i1 %2899, label %2900, label %3197, !dx.controlflow.hints !85

; <label>:2900                                    ; preds = %2838
  %2901 = fmul fast float %2878, 5.000000e-01
  %2902 = fmul fast float %2877, 5.000000e-01
  %2903 = fadd fast float %2901, 5.000000e-01
  %2904 = fadd fast float %2902, 5.000000e-01
  %2905 = sitofp i32 %2844 to float
  %2906 = fsub fast float %2872, %2905
  %2907 = call float @dx.op.unary.f32(i32 27, float %2906)  ; Round_ni(value)
  %2908 = call float @dx.op.unary.f32(i32 22, float %2872)  ; Frc(value)
  %2909 = call float @dx.op.unary.f32(i32 22, float %2904)  ; Frc(value)
  %2910 = call float @dx.op.unary.f32(i32 22, float %2903)  ; Frc(value)
  %2911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %38, float %2909, float %2910, float %2907, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2912 = extractvalue %dx.types.ResRet.f32 %2911, 0
  %2913 = extractvalue %dx.types.ResRet.f32 %2911, 1
  %2914 = extractvalue %dx.types.ResRet.f32 %2911, 2
  %2915 = extractvalue %dx.types.ResRet.f32 %2911, 3
  %2916 = fcmp fast ogt float %2908, 0.000000e+00
  br i1 %2916, label %2917, label %2938, !dx.controlflow.hints !86

; <label>:2917                                    ; preds = %2900
  %2918 = fadd fast float %2907, 1.000000e+00
  %2919 = call float @dx.op.unary.f32(i32 22, float %2881)  ; Frc(value)
  %2920 = call float @dx.op.unary.f32(i32 22, float %2882)  ; Frc(value)
  %2921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %38, float %2919, float %2920, float %2918, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2922 = extractvalue %dx.types.ResRet.f32 %2921, 0
  %2923 = extractvalue %dx.types.ResRet.f32 %2921, 1
  %2924 = extractvalue %dx.types.ResRet.f32 %2921, 2
  %2925 = extractvalue %dx.types.ResRet.f32 %2921, 3
  %2926 = fsub fast float %2922, %2912
  %2927 = fsub fast float %2923, %2913
  %2928 = fsub fast float %2924, %2914
  %2929 = fsub fast float %2925, %2915
  %2930 = fmul fast float %2926, %2908
  %2931 = fmul fast float %2927, %2908
  %2932 = fmul fast float %2928, %2908
  %2933 = fmul fast float %2929, %2908
  %2934 = fadd fast float %2930, %2912
  %2935 = fadd fast float %2931, %2913
  %2936 = fadd fast float %2932, %2914
  %2937 = fadd fast float %2933, %2915
  br label %2938

; <label>:2938                                    ; preds = %2917, %2900
  %2939 = phi float [ %2934, %2917 ], [ %2912, %2900 ]
  %2940 = phi float [ %2935, %2917 ], [ %2913, %2900 ]
  %2941 = phi float [ %2936, %2917 ], [ %2914, %2900 ]
  %2942 = phi float [ %2937, %2917 ], [ %2915, %2900 ]
  %2943 = fadd fast float %2939, -5.000000e-01
  %2944 = fadd fast float %2941, -5.000000e-01
  %2945 = fmul fast float %2943, 0xBFD5555560000000
  %2946 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2944, float %2945)  ; FMad(a,b,c)
  %2947 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2940, float 0.000000e+00)  ; FMad(a,b,c)
  %2948 = fadd fast float %2947, %2942
  %2949 = fmul fast float %2943, -7.500000e-01
  %2950 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2944, float %2949)  ; FMad(a,b,c)
  %2951 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2940, float 0.000000e+00)  ; FMad(a,b,c)
  %2952 = fadd fast float %2951, %2942
  %2953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2954 = extractvalue %dx.types.CBufRet.f32 %2953, 0
  %2955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2956 = extractvalue %dx.types.CBufRet.f32 %2955, 0
  %2957 = extractvalue %dx.types.CBufRet.f32 %2955, 1
  %2958 = extractvalue %dx.types.CBufRet.f32 %2955, 2
  %2959 = extractvalue %dx.types.CBufRet.f32 %2955, 3
  %2960 = fsub fast float %2956, %2946
  %2961 = fsub fast float %2957, %2948
  %2962 = fsub fast float %2958, %2950
  %2963 = fsub fast float %2959, %2952
  %2964 = fmul fast float %2960, %2954
  %2965 = fmul fast float %2961, %2954
  %2966 = fmul fast float %2962, %2954
  %2967 = fmul fast float %2963, %2954
  %2968 = fadd fast float %2964, %2946
  %2969 = fadd fast float %2965, %2948
  %2970 = fadd fast float %2966, %2950
  %2971 = fadd fast float %2967, %2952
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = and i32 %2973, 536870911
  %2975 = uitofp i32 %2974 to float
  %2976 = fmul fast float %2975, %2822
  %2977 = fmul fast float %2975, %2826
  %2978 = fptoui float %2976 to i32
  %2979 = fptoui float %2977 to i32
  %2980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.i32 %2980, 0
  %2982 = and i32 %2981, 31
  %2983 = lshr i32 %2978, %2982
  %2984 = lshr i32 %2979, %2982
  %2985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = and i32 %2986, 31
  %2988 = shl i32 1, %2987
  %2989 = call i32 @dx.op.binary.i32(i32 40, i32 %2988, i32 4)  ; UMin(a,b)
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = extractvalue %dx.types.ResRet.i32 %2990, 1
  %2993 = icmp eq i32 %2989, 0
  br i1 %2993, label %3035, label %2994

; <label>:2994                                    ; preds = %2938
  br label %2995

; <label>:2995                                    ; preds = %3023, %2994
  %2996 = phi i32 [ %3026, %3023 ], [ 0, %2994 ]
  %2997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.i32 %2997, 0
  %2999 = lshr i32 %2998, 16
  %3000 = and i32 %2999, 31
  %3001 = shl i32 %2984, %3000
  %3002 = add i32 %3001, %2983
  %3003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.i32 %3003, 0
  %3005 = and i32 %3004, 31
  %3006 = shl i32 %3002, %3005
  %3007 = add i32 %3006, %2996
  %3008 = shl i32 %3007, 2
  %3009 = add i32 %3008, 32
  %3010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3009, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.i32 %3010, 0
  %3012 = icmp slt i32 %3011, 0
  %3013 = getelementptr [12 x float], [12 x float]* %67, i32 0, i32 %2996
  %3014 = getelementptr [12 x float], [12 x float]* %68, i32 0, i32 %2996
  %3015 = bitcast float* %3013 to i32*
  %3016 = bitcast float* %3014 to i32*
  br i1 %3012, label %3017, label %3023

; <label>:3017                                    ; preds = %2995
  %3018 = and i32 %3011, 1073741823
  %3019 = add nuw nsw i32 %3018, 20
  %3020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3019, i32 undef)  ; BufferLoad(srv,index,wot)
  %3021 = extractvalue %dx.types.ResRet.i32 %3020, 0
  %3022 = extractvalue %dx.types.ResRet.i32 %3020, 1
  br label %3023

; <label>:3023                                    ; preds = %3017, %2995
  %3024 = phi i32 [ %3021, %3017 ], [ %2991, %2995 ]
  %3025 = phi i32 [ %3022, %3017 ], [ %2992, %2995 ]
  store i32 %3024, i32* %3015, align 4
  store i32 %3025, i32* %3016, align 4
  %3026 = add nuw i32 %2996, 1
  %3027 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3028 = extractvalue %dx.types.CBufRet.i32 %3027, 2
  %3029 = icmp eq i32 %3028, 0
  %3030 = icmp ugt i32 %3011, -1073741825
  %3031 = and i1 %3030, %3029
  %3032 = icmp ult i32 %3026, %2989
  %3033 = and i1 %3031, %3032
  br i1 %3033, label %2995, label %3034

; <label>:3034                                    ; preds = %3023
  br label %3035

; <label>:3035                                    ; preds = %3034, %2938
  %3036 = phi i32 [ 0, %2938 ], [ %3026, %3034 ]
  %3037 = extractvalue %dx.types.CBufRet.f32 %2800, 2
  %3038 = fptoui float %3037 to i32
  %3039 = icmp eq i32 %3038, 0
  br i1 %3039, label %3091, label %3040

; <label>:3040                                    ; preds = %3035
  br label %3041

; <label>:3041                                    ; preds = %3086, %3040
  %3042 = phi i32 [ %3087, %3086 ], [ %3036, %3040 ]
  %3043 = phi i32 [ %3088, %3086 ], [ 0, %3040 ]
  %3044 = lshr i32 %3043, 2
  %3045 = and i32 %3043, 3
  %3046 = add nuw nsw i32 %3044, 83
  %3047 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 %3046)  ; CBufferLoadLegacy(handle,regIndex)
  %3048 = extractvalue %dx.types.CBufRet.i32 %3047, 0
  %3049 = extractvalue %dx.types.CBufRet.i32 %3047, 1
  %3050 = extractvalue %dx.types.CBufRet.i32 %3047, 2
  %3051 = extractvalue %dx.types.CBufRet.i32 %3047, 3
  %3052 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 0
  store i32 %3048, i32* %3052, align 4
  %3053 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 1
  store i32 %3049, i32* %3053, align 4
  %3054 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 2
  store i32 %3050, i32* %3054, align 4
  %3055 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 3
  store i32 %3051, i32* %3055, align 4
  %3056 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i32 0, i32 %3045
  %3057 = load i32, i32* %3056, align 4, !tbaa !87, !noalias !91
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = lshr i32 %3059, 16
  %3061 = and i32 %3060, 31
  %3062 = shl i32 %2984, %3061
  %3063 = add i32 %3062, %2983
  %3064 = shl i32 %3063, 2
  %3065 = add i32 %3064, %3057
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = icmp eq i32 %3067, 0
  br i1 %3068, label %3086, label %3069

; <label>:3069                                    ; preds = %3041
  %3070 = icmp slt i32 %3067, 0
  %3071 = getelementptr [12 x float], [12 x float]* %67, i32 0, i32 %3042
  %3072 = getelementptr [12 x float], [12 x float]* %68, i32 0, i32 %3042
  %3073 = bitcast float* %3071 to i32*
  %3074 = bitcast float* %3072 to i32*
  br i1 %3070, label %3075, label %3082

; <label>:3075                                    ; preds = %3069
  %3076 = and i32 %3067, 1073741823
  %3077 = add i32 %3057, 20
  %3078 = add i32 %3077, %3076
  %3079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3078, i32 undef)  ; BufferLoad(srv,index,wot)
  %3080 = extractvalue %dx.types.ResRet.i32 %3079, 0
  %3081 = extractvalue %dx.types.ResRet.i32 %3079, 1
  br label %3082

; <label>:3082                                    ; preds = %3075, %3069
  %3083 = phi i32 [ %3080, %3075 ], [ %2991, %3069 ]
  %3084 = phi i32 [ %3081, %3075 ], [ %2992, %3069 ]
  store i32 %3083, i32* %3073, align 4
  store i32 %3084, i32* %3074, align 4
  %3085 = add i32 %3042, 1
  br label %3086

; <label>:3086                                    ; preds = %3082, %3041
  %3087 = phi i32 [ %3042, %3041 ], [ %3085, %3082 ]
  %3088 = add nuw i32 %3043, 1
  %3089 = icmp eq i32 %3088, %3038
  br i1 %3089, label %3090, label %3041

; <label>:3090                                    ; preds = %3086
  br label %3091

; <label>:3091                                    ; preds = %3090, %3035
  %3092 = phi i32 [ %3036, %3035 ], [ %3087, %3090 ]
  %3093 = icmp eq i32 %3092, 1
  %3094 = getelementptr [12 x float], [12 x float]* %67, i32 0, i32 0
  %3095 = getelementptr [12 x float], [12 x float]* %68, i32 0, i32 0
  br i1 %3093, label %3096, label %3099

; <label>:3096                                    ; preds = %3091
  %3097 = load float, float* %3094, align 4
  %3098 = load float, float* %3095, align 4
  br label %3126

; <label>:3099                                    ; preds = %3091
  %3100 = load float, float* %3094, align 4
  %3101 = load float, float* %3095, align 4
  %3102 = fdiv fast float 1.000000e+00, %3101
  %3103 = fsub fast float %3100, %3102
  %3104 = icmp ugt i32 %3092, 1
  br i1 %3104, label %3105, label %3121

; <label>:3105                                    ; preds = %3099
  br label %3106

; <label>:3106                                    ; preds = %3106, %3105
  %3107 = phi float [ %3116, %3106 ], [ %3103, %3105 ]
  %3108 = phi float [ %3117, %3106 ], [ %3100, %3105 ]
  %3109 = phi i32 [ %3118, %3106 ], [ 1, %3105 ]
  %3110 = getelementptr [12 x float], [12 x float]* %67, i32 0, i32 %3109
  %3111 = load float, float* %3110, align 4
  %3112 = getelementptr [12 x float], [12 x float]* %68, i32 0, i32 %3109
  %3113 = load float, float* %3112, align 4
  %3114 = fdiv fast float 1.000000e+00, %3113
  %3115 = fsub fast float %3111, %3114
  %3116 = call float @dx.op.binary.f32(i32 36, float %3107, float %3115)  ; FMin(a,b)
  %3117 = call float @dx.op.binary.f32(i32 35, float %3108, float %3111)  ; FMax(a,b)
  %3118 = add nuw i32 %3109, 1
  %3119 = icmp eq i32 %3118, %3092
  br i1 %3119, label %3120, label %3106

; <label>:3120                                    ; preds = %3106
  br label %3121

; <label>:3121                                    ; preds = %3120, %3099
  %3122 = phi float [ %3103, %3099 ], [ %3116, %3120 ]
  %3123 = phi float [ %3100, %3099 ], [ %3117, %3120 ]
  %3124 = fsub fast float %3123, %3122
  %3125 = fdiv fast float 1.000000e+00, %3124
  br label %3126

; <label>:3126                                    ; preds = %3121, %3096
  %3127 = phi float [ %3097, %3096 ], [ %3123, %3121 ]
  %3128 = phi float [ %3098, %3096 ], [ %3125, %3121 ]
  %3129 = fadd fast float %2830, %3127
  %3130 = fmul fast float %3129, %3128
  %3131 = call float @dx.op.unary.f32(i32 7, float %3130)  ; Saturate(value)
  %3132 = fmul fast float %3131, 2.000000e+00
  %3133 = fsub fast float 1.000000e+00, %3132
  %3134 = fmul fast float %2968, %2968
  %3135 = fsub fast float %2969, %3134
  %3136 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3135)  ; FMax(a,b)
  %3137 = fdiv fast float 1.000000e+00, %3136
  %3138 = fmul fast float %2969, %2968
  %3139 = fsub fast float %2970, %3138
  %3140 = fsub fast float %3133, %2968
  %3141 = fmul fast float %3133, %3133
  %3142 = fsub fast float %3141, %2969
  %3143 = fmul fast float %3137, %3139
  %3144 = fmul fast float %3143, %3140
  %3145 = fsub fast float %3142, %3144
  %3146 = fmul fast float %2969, %2969
  %3147 = fsub fast float %2971, %3146
  %3148 = fmul fast float %3139, %3139
  %3149 = fmul fast float %3148, %3137
  %3150 = fsub fast float %3147, %3149
  %3151 = fdiv fast float %3145, %3150
  %3152 = fmul fast float %3151, %3139
  %3153 = fsub fast float %3140, %3152
  %3154 = fmul fast float %3153, %3137
  %3155 = fmul fast float %3154, %2968
  %3156 = fsub fast float 1.000000e+00, %3155
  %3157 = fmul fast float %3151, %2969
  %3158 = fsub fast float %3156, %3157
  %3159 = fmul fast float %3154, %3154
  %3160 = fmul fast float %3151, 4.000000e+00
  %3161 = fmul fast float %3160, %3158
  %3162 = fsub fast float %3159, %3161
  %3163 = call float @dx.op.unary.f32(i32 24, float %3162)  ; Sqrt(value)
  %3164 = fcmp fast oge float %3154, 0.000000e+00
  %3165 = fsub fast float -0.000000e+00, %3163
  %3166 = select i1 %3164, float %3165, float %3163
  %3167 = fsub fast float %3166, %3154
  %3168 = fdiv fast float %3167, %3151
  %3169 = fdiv fast float %3158, %3167
  %3170 = fmul fast float %3168, 5.000000e-01
  %3171 = fmul fast float %3169, 2.000000e+00
  %3172 = select i1 %3164, float %3170, float %3171
  %3173 = select i1 %3164, float %3171, float %3170
  %3174 = call float @dx.op.binary.f32(i32 35, float %3172, float %3173)  ; FMax(a,b)
  %3175 = call float @dx.op.binary.f32(i32 36, float %3172, float %3173)  ; FMin(a,b)
  %3176 = fcmp fast ogt float %3133, %3174
  %3177 = fsub fast float %3133, %3175
  %3178 = fsub fast float %3133, %3174
  %3179 = fsub fast float %3174, %3175
  %3180 = select i1 %3176, float %3178, float %3179
  %3181 = fmul float %3177, %3180
  %3182 = select i1 %3176, float %3175, float %3133
  %3183 = fcmp fast ogt float %3133, %3175
  %3184 = fmul fast float %3182, %3174
  %3185 = fadd fast float %3182, %3174
  %3186 = fmul fast float %3185, %2968
  %3187 = fadd fast float %3184, %2969
  %3188 = fsub fast float %3187, %3186
  %3189 = fdiv fast float %3188, %3181
  %3190 = select i1 %3183, float %3189, float 0.000000e+00
  %3191 = fsub fast float 1.000000e+00, %3190
  %3192 = select i1 %3176, float %3191, float %3190
  %3193 = call float @dx.op.unary.f32(i32 7, float %3192)  ; Saturate(value)
  %3194 = extractvalue %dx.types.CBufRet.f32 %2953, 3
  %3195 = fmul fast float %3194, %3193
  %3196 = fsub fast float 1.000000e+00, %3195
  br label %3197

; <label>:3197                                    ; preds = %3126, %2838, %2803, %2799, %2765
  %3198 = phi float [ 1.000000e+00, %2765 ], [ %3196, %3126 ], [ 1.000000e+00, %2803 ], [ 1.000000e+00, %2838 ], [ 1.000000e+00, %2799 ]
  %3199 = fcmp fast ogt float %2795, 0.000000e+00
  br i1 %3199, label %3200, label %3362, !dx.controlflow.hints !100

; <label>:3200                                    ; preds = %3197
  %3201 = fadd fast float %2708, %2682
  %3202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3203 = extractvalue %dx.types.CBufRet.f32 %3202, 2
  %3204 = extractvalue %dx.types.CBufRet.f32 %3202, 3
  %3205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3206 = extractvalue %dx.types.CBufRet.f32 %3205, 2
  %3207 = call float @dx.op.binary.f32(i32 35, float %3201, float 0.000000e+00)  ; FMax(a,b)
  %3208 = fadd fast float %3207, 0x3F10000000000000
  %3209 = fcmp fast oeq float %3206, 0.000000e+00
  br i1 %3209, label %3210, label %3277

; <label>:3210                                    ; preds = %3200
  %3211 = extractvalue %dx.types.CBufRet.f32 %3202, 1
  %3212 = extractvalue %dx.types.CBufRet.f32 %3202, 0
  %3213 = fmul fast float %3212, %2697
  %3214 = fmul fast float %3211, %2698
  %3215 = fadd fast float %3213, 5.000000e-01
  %3216 = call float @dx.op.unary.f32(i32 27, float %3215)  ; Round_ni(value)
  %3217 = fadd fast float %3214, 5.000000e-01
  %3218 = call float @dx.op.unary.f32(i32 27, float %3217)  ; Round_ni(value)
  %3219 = fsub fast float %3215, %3216
  %3220 = fsub fast float %3217, %3218
  %3221 = fadd fast float %3216, -5.000000e-01
  %3222 = fadd fast float %3218, -5.000000e-01
  %3223 = fmul fast float %3219, 2.000000e+00
  %3224 = fsub fast float 3.000000e+00, %3223
  %3225 = fadd fast float %3223, 1.000000e+00
  %3226 = fsub fast float 2.000000e+00, %3219
  %3227 = bitcast float %3224 to i32
  %3228 = sub nsw i32 2129859010, %3227
  %3229 = bitcast i32 %3228 to float
  %3230 = fmul fast float %3229, %3226
  %3231 = fadd fast float %3230, -1.000000e+00
  %3232 = bitcast float %3225 to i32
  %3233 = sub nsw i32 2129859010, %3232
  %3234 = bitcast i32 %3233 to float
  %3235 = fmul fast float %3234, %3219
  %3236 = fadd fast float %3235, 1.000000e+00
  %3237 = fmul fast float %3220, 2.000000e+00
  %3238 = fsub fast float 3.000000e+00, %3237
  %3239 = fadd fast float %3237, 1.000000e+00
  %3240 = fsub fast float 2.000000e+00, %3220
  %3241 = bitcast float %3238 to i32
  %3242 = sub nsw i32 2129859010, %3241
  %3243 = bitcast i32 %3242 to float
  %3244 = fmul fast float %3243, %3240
  %3245 = fadd fast float %3244, -1.000000e+00
  %3246 = bitcast float %3239 to i32
  %3247 = sub nsw i32 2129859010, %3246
  %3248 = bitcast i32 %3247 to float
  %3249 = fmul fast float %3248, %3220
  %3250 = fadd fast float %3249, 1.000000e+00
  %3251 = fadd fast float %3231, %3221
  %3252 = fmul fast float %3251, %3203
  %3253 = fadd fast float %3245, %3222
  %3254 = fmul fast float %3253, %3204
  %3255 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %41, float %3252, float %3254, float undef, float undef, i32 0, i32 0, i32 undef, float %3208)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3256 = extractvalue %dx.types.ResRet.f32 %3255, 0
  %3257 = fmul fast float %3256, %3224
  %3258 = fadd fast float %3236, %3221
  %3259 = fmul fast float %3258, %3203
  %3260 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %41, float %3259, float %3254, float undef, float undef, i32 0, i32 0, i32 undef, float %3208)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3261 = extractvalue %dx.types.ResRet.f32 %3260, 0
  %3262 = fmul fast float %3261, %3225
  %3263 = fadd fast float %3250, %3222
  %3264 = fmul fast float %3263, %3204
  %3265 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %41, float %3252, float %3264, float undef, float undef, i32 0, i32 0, i32 undef, float %3208)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3266 = extractvalue %dx.types.ResRet.f32 %3265, 0
  %3267 = fmul fast float %3266, %3224
  %3268 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %41, float %3259, float %3264, float undef, float undef, i32 0, i32 0, i32 undef, float %3208)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3269 = extractvalue %dx.types.ResRet.f32 %3268, 0
  %3270 = fmul fast float %3269, %3225
  %3271 = fadd fast float %3270, %3267
  %3272 = fmul fast float %3271, %3239
  %3273 = fadd fast float %3262, %3257
  %3274 = fmul fast float %3273, %3238
  %3275 = fadd fast float %3274, %3272
  %3276 = fmul fast float %3275, 6.250000e-02
  br label %3362

; <label>:3277                                    ; preds = %3200
  %3278 = fmul fast float %237, 0x401921FB60000000
  %3279 = call float @dx.op.unary.f32(i32 13, float %3278)  ; Sin(value)
  %3280 = call float @dx.op.unary.f32(i32 12, float %3278)  ; Cos(value)
  %3281 = fsub fast float -0.000000e+00, %3279
  br label %3282

; <label>:3282                                    ; preds = %3331, %3277
  %3283 = phi float [ 0.000000e+00, %3277 ], [ %3326, %3331 ]
  %3284 = phi float [ 0.000000e+00, %3277 ], [ %3328, %3331 ]
  %3285 = phi i32 [ 0, %3277 ], [ %3332, %3331 ]
  %3286 = mul i32 %3285, 2
  %3287 = add i32 0, %3286
  %3288 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3287
  %3289 = load float, float* %3288, align 4
  %3290 = mul i32 %3285, 2
  %3291 = add i32 1, %3290
  %3292 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3291
  %3293 = load float, float* %3292, align 4
  %3294 = fmul fast float %3289, %3280
  %3295 = call float @dx.op.tertiary.f32(i32 46, float %3293, float %3281, float %3294)  ; FMad(a,b,c)
  %3296 = fmul fast float %3289, %3279
  %3297 = call float @dx.op.tertiary.f32(i32 46, float %3293, float %3280, float %3296)  ; FMad(a,b,c)
  %3298 = fmul fast float %3295, %3206
  %3299 = fmul fast float %3297, %3206
  %3300 = fadd fast float %3298, %2697
  %3301 = fadd fast float %3299, %2698
  %3302 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %40, float %3300, float %3301, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3303 = extractvalue %dx.types.ResRet.f32 %3302, 0
  %3304 = extractvalue %dx.types.ResRet.f32 %3302, 1
  %3305 = extractvalue %dx.types.ResRet.f32 %3302, 2
  %3306 = extractvalue %dx.types.ResRet.f32 %3302, 3
  %3307 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 0
  store float %3303, float* %3307, align 4
  %3308 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 1
  store float %3304, float* %3308, align 4
  %3309 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 2
  store float %3305, float* %3309, align 4
  %3310 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 3
  store float %3306, float* %3310, align 4
  %3311 = fsub fast float %3303, %3208
  %3312 = fcmp fast olt float %3311, 0.000000e+00
  %3313 = select i1 %3312, float 0.000000e+00, float 1.000000e+00
  %3314 = fadd fast float %3313, %3283
  %3315 = fmul fast float %3313, %3311
  %3316 = fadd fast float %3315, %3284
  br label %3317

; <label>:3317                                    ; preds = %3317, %3282
  %3318 = phi i32 [ 1, %3282 ], [ %3329, %3317 ]
  %3319 = phi float [ %3316, %3282 ], [ %3328, %3317 ]
  %3320 = phi float [ %3314, %3282 ], [ %3326, %3317 ]
  %3321 = getelementptr [4 x float], [4 x float]* %71, i32 0, i32 %3318
  %3322 = load float, float* %3321, align 4, !tbaa !101, !noalias !91
  %3323 = fsub fast float %3322, %3208
  %3324 = fcmp fast olt float %3323, 0.000000e+00
  %3325 = select i1 %3324, float 0.000000e+00, float 1.000000e+00
  %3326 = fadd fast float %3325, %3320
  %3327 = fmul fast float %3325, %3323
  %3328 = fadd fast float %3327, %3319
  %3329 = add nuw nsw i32 %3318, 1
  %3330 = icmp eq i32 %3329, 4
  br i1 %3330, label %3331, label %3317, !llvm.loop !103

; <label>:3331                                    ; preds = %3317
  %3332 = add nuw nsw i32 %3285, 1
  %3333 = icmp eq i32 %3332, 8
  br i1 %3333, label %3334, label %3282, !llvm.loop !104

; <label>:3334                                    ; preds = %3331
  %3335 = fdiv fast float 1.000000e+00, %3326
  %3336 = fmul fast float %3335, %3328
  %3337 = fdiv fast float 1.000000e+00, %3208
  %3338 = fmul fast float %3336, %3337
  %3339 = call float @dx.op.unary.f32(i32 7, float %3338)  ; Saturate(value)
  %3340 = call float @dx.op.binary.f32(i32 35, float %3339, float 0.000000e+00)  ; FMax(a,b)
  %3341 = fmul fast float %3326, 3.125000e-02
  %3342 = call float @dx.op.unary.f32(i32 7, float %3341)  ; Saturate(value)
  %3343 = fmul fast float %3342, 2.000000e+00
  %3344 = fadd fast float %3343, -1.000000e+00
  %3345 = fcmp fast ogt float %3344, 0.000000e+00
  %3346 = fcmp fast olt float %3344, 0.000000e+00
  %3347 = zext i1 %3345 to i32
  %3348 = zext i1 %3346 to i32
  %3349 = sub nsw i32 %3347, %3348
  %3350 = sitofp i32 %3349 to float
  %3351 = fmul fast float %3350, %3344
  %3352 = fsub fast float 1.000000e+00, %3351
  %3353 = fmul fast float %3352, %3352
  %3354 = fmul fast float %3353, %3352
  %3355 = fsub fast float %3352, %3354
  %3356 = fmul fast float %3355, %3340
  %3357 = fsub fast float 1.000000e+00, %3354
  %3358 = fsub fast float %3357, %3356
  %3359 = fmul fast float %3350, 5.000000e-01
  %3360 = fmul fast float %3359, %3358
  %3361 = fsub fast float 5.000000e-01, %3360
  br label %3362

; <label>:3362                                    ; preds = %3334, %3210, %3197
  %3363 = phi float [ 1.000000e+00, %3197 ], [ %3276, %3210 ], [ %3361, %3334 ]
  %3364 = fcmp fast ogt float %2793, 0.000000e+00
  br i1 %3364, label %3365, label %3529, !dx.controlflow.hints !105

; <label>:3365                                    ; preds = %3362
  %3366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3367 = extractvalue %dx.types.CBufRet.f32 %3366, 1
  %3368 = fadd fast float %3367, %2682
  %3369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3370 = extractvalue %dx.types.CBufRet.f32 %3369, 2
  %3371 = extractvalue %dx.types.CBufRet.f32 %3369, 3
  %3372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3373 = extractvalue %dx.types.CBufRet.f32 %3372, 1
  %3374 = call float @dx.op.binary.f32(i32 35, float %3368, float 0.000000e+00)  ; FMax(a,b)
  %3375 = fadd fast float %3374, 0x3F10000000000000
  %3376 = fcmp fast oeq float %3373, 0.000000e+00
  br i1 %3376, label %3377, label %3444

; <label>:3377                                    ; preds = %3365
  %3378 = extractvalue %dx.types.CBufRet.f32 %3369, 1
  %3379 = extractvalue %dx.types.CBufRet.f32 %3369, 0
  %3380 = fmul fast float %3379, %2689
  %3381 = fmul fast float %3378, %2690
  %3382 = fadd fast float %3380, 5.000000e-01
  %3383 = call float @dx.op.unary.f32(i32 27, float %3382)  ; Round_ni(value)
  %3384 = fadd fast float %3381, 5.000000e-01
  %3385 = call float @dx.op.unary.f32(i32 27, float %3384)  ; Round_ni(value)
  %3386 = fsub fast float %3382, %3383
  %3387 = fsub fast float %3384, %3385
  %3388 = fadd fast float %3383, -5.000000e-01
  %3389 = fadd fast float %3385, -5.000000e-01
  %3390 = fmul fast float %3386, 2.000000e+00
  %3391 = fsub fast float 3.000000e+00, %3390
  %3392 = fadd fast float %3390, 1.000000e+00
  %3393 = fsub fast float 2.000000e+00, %3386
  %3394 = bitcast float %3391 to i32
  %3395 = sub nsw i32 2129859010, %3394
  %3396 = bitcast i32 %3395 to float
  %3397 = fmul fast float %3396, %3393
  %3398 = fadd fast float %3397, -1.000000e+00
  %3399 = bitcast float %3392 to i32
  %3400 = sub nsw i32 2129859010, %3399
  %3401 = bitcast i32 %3400 to float
  %3402 = fmul fast float %3401, %3386
  %3403 = fadd fast float %3402, 1.000000e+00
  %3404 = fmul fast float %3387, 2.000000e+00
  %3405 = fsub fast float 3.000000e+00, %3404
  %3406 = fadd fast float %3404, 1.000000e+00
  %3407 = fsub fast float 2.000000e+00, %3387
  %3408 = bitcast float %3405 to i32
  %3409 = sub nsw i32 2129859010, %3408
  %3410 = bitcast i32 %3409 to float
  %3411 = fmul fast float %3410, %3407
  %3412 = fadd fast float %3411, -1.000000e+00
  %3413 = bitcast float %3406 to i32
  %3414 = sub nsw i32 2129859010, %3413
  %3415 = bitcast i32 %3414 to float
  %3416 = fmul fast float %3415, %3387
  %3417 = fadd fast float %3416, 1.000000e+00
  %3418 = fadd fast float %3398, %3388
  %3419 = fmul fast float %3418, %3370
  %3420 = fadd fast float %3412, %3389
  %3421 = fmul fast float %3420, %3371
  %3422 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %41, float %3419, float %3421, float undef, float undef, i32 0, i32 0, i32 undef, float %3375)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3423 = extractvalue %dx.types.ResRet.f32 %3422, 0
  %3424 = fmul fast float %3423, %3391
  %3425 = fadd fast float %3403, %3388
  %3426 = fmul fast float %3425, %3370
  %3427 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %41, float %3426, float %3421, float undef, float undef, i32 0, i32 0, i32 undef, float %3375)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3428 = extractvalue %dx.types.ResRet.f32 %3427, 0
  %3429 = fmul fast float %3428, %3392
  %3430 = fadd fast float %3417, %3389
  %3431 = fmul fast float %3430, %3371
  %3432 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %41, float %3419, float %3431, float undef, float undef, i32 0, i32 0, i32 undef, float %3375)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3433 = extractvalue %dx.types.ResRet.f32 %3432, 0
  %3434 = fmul fast float %3433, %3391
  %3435 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %41, float %3426, float %3431, float undef, float undef, i32 0, i32 0, i32 undef, float %3375)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3436 = extractvalue %dx.types.ResRet.f32 %3435, 0
  %3437 = fmul fast float %3436, %3392
  %3438 = fadd fast float %3437, %3434
  %3439 = fmul fast float %3438, %3406
  %3440 = fadd fast float %3429, %3424
  %3441 = fmul fast float %3440, %3405
  %3442 = fadd fast float %3441, %3439
  %3443 = fmul fast float %3442, 6.250000e-02
  br label %3529

; <label>:3444                                    ; preds = %3365
  %3445 = fmul fast float %237, 0x401921FB60000000
  %3446 = call float @dx.op.unary.f32(i32 13, float %3445)  ; Sin(value)
  %3447 = call float @dx.op.unary.f32(i32 12, float %3445)  ; Cos(value)
  %3448 = fsub fast float -0.000000e+00, %3446
  br label %3449

; <label>:3449                                    ; preds = %3498, %3444
  %3450 = phi float [ 0.000000e+00, %3444 ], [ %3493, %3498 ]
  %3451 = phi float [ 0.000000e+00, %3444 ], [ %3495, %3498 ]
  %3452 = phi i32 [ 0, %3444 ], [ %3499, %3498 ]
  %3453 = mul i32 %3452, 2
  %3454 = add i32 0, %3453
  %3455 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3454
  %3456 = load float, float* %3455, align 4
  %3457 = mul i32 %3452, 2
  %3458 = add i32 1, %3457
  %3459 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3458
  %3460 = load float, float* %3459, align 4
  %3461 = fmul fast float %3456, %3447
  %3462 = call float @dx.op.tertiary.f32(i32 46, float %3460, float %3448, float %3461)  ; FMad(a,b,c)
  %3463 = fmul fast float %3456, %3446
  %3464 = call float @dx.op.tertiary.f32(i32 46, float %3460, float %3447, float %3463)  ; FMad(a,b,c)
  %3465 = fmul fast float %3462, %3373
  %3466 = fmul fast float %3464, %3373
  %3467 = fadd fast float %3465, %2689
  %3468 = fadd fast float %3466, %2690
  %3469 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %40, float %3467, float %3468, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3470 = extractvalue %dx.types.ResRet.f32 %3469, 0
  %3471 = extractvalue %dx.types.ResRet.f32 %3469, 1
  %3472 = extractvalue %dx.types.ResRet.f32 %3469, 2
  %3473 = extractvalue %dx.types.ResRet.f32 %3469, 3
  %3474 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 0
  store float %3470, float* %3474, align 4
  %3475 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 1
  store float %3471, float* %3475, align 4
  %3476 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 2
  store float %3472, float* %3476, align 4
  %3477 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 3
  store float %3473, float* %3477, align 4
  %3478 = fsub fast float %3470, %3375
  %3479 = fcmp fast olt float %3478, 0.000000e+00
  %3480 = select i1 %3479, float 0.000000e+00, float 1.000000e+00
  %3481 = fadd fast float %3480, %3450
  %3482 = fmul fast float %3480, %3478
  %3483 = fadd fast float %3482, %3451
  br label %3484

; <label>:3484                                    ; preds = %3484, %3449
  %3485 = phi i32 [ 1, %3449 ], [ %3496, %3484 ]
  %3486 = phi float [ %3483, %3449 ], [ %3495, %3484 ]
  %3487 = phi float [ %3481, %3449 ], [ %3493, %3484 ]
  %3488 = getelementptr [4 x float], [4 x float]* %70, i32 0, i32 %3485
  %3489 = load float, float* %3488, align 4, !tbaa !101, !noalias !91
  %3490 = fsub fast float %3489, %3375
  %3491 = fcmp fast olt float %3490, 0.000000e+00
  %3492 = select i1 %3491, float 0.000000e+00, float 1.000000e+00
  %3493 = fadd fast float %3492, %3487
  %3494 = fmul fast float %3492, %3490
  %3495 = fadd fast float %3494, %3486
  %3496 = add nuw nsw i32 %3485, 1
  %3497 = icmp eq i32 %3496, 4
  br i1 %3497, label %3498, label %3484, !llvm.loop !103

; <label>:3498                                    ; preds = %3484
  %3499 = add nuw nsw i32 %3452, 1
  %3500 = icmp eq i32 %3499, 8
  br i1 %3500, label %3501, label %3449, !llvm.loop !104

; <label>:3501                                    ; preds = %3498
  %3502 = fdiv fast float 1.000000e+00, %3493
  %3503 = fmul fast float %3502, %3495
  %3504 = fdiv fast float 1.000000e+00, %3375
  %3505 = fmul fast float %3503, %3504
  %3506 = call float @dx.op.unary.f32(i32 7, float %3505)  ; Saturate(value)
  %3507 = call float @dx.op.binary.f32(i32 35, float %3506, float 0.000000e+00)  ; FMax(a,b)
  %3508 = fmul fast float %3493, 3.125000e-02
  %3509 = call float @dx.op.unary.f32(i32 7, float %3508)  ; Saturate(value)
  %3510 = fmul fast float %3509, 2.000000e+00
  %3511 = fadd fast float %3510, -1.000000e+00
  %3512 = fcmp fast ogt float %3511, 0.000000e+00
  %3513 = fcmp fast olt float %3511, 0.000000e+00
  %3514 = zext i1 %3512 to i32
  %3515 = zext i1 %3513 to i32
  %3516 = sub nsw i32 %3514, %3515
  %3517 = sitofp i32 %3516 to float
  %3518 = fmul fast float %3517, %3511
  %3519 = fsub fast float 1.000000e+00, %3518
  %3520 = fmul fast float %3519, %3519
  %3521 = fmul fast float %3520, %3519
  %3522 = fsub fast float %3519, %3521
  %3523 = fmul fast float %3522, %3507
  %3524 = fsub fast float 1.000000e+00, %3521
  %3525 = fsub fast float %3524, %3523
  %3526 = fmul fast float %3517, 5.000000e-01
  %3527 = fmul fast float %3526, %3525
  %3528 = fsub fast float 5.000000e-01, %3527
  br label %3529

; <label>:3529                                    ; preds = %3501, %3377, %3362
  %3530 = phi float [ 1.000000e+00, %3362 ], [ %3443, %3377 ], [ %3528, %3501 ]
  %3531 = fcmp fast ogt float %2792, 0.000000e+00
  br i1 %3531, label %3532, label %3696, !dx.controlflow.hints !106

; <label>:3532                                    ; preds = %3529
  %3533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3534 = extractvalue %dx.types.CBufRet.f32 %3533, 0
  %3535 = fadd fast float %3534, %2682
  %3536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3537 = extractvalue %dx.types.CBufRet.f32 %3536, 2
  %3538 = extractvalue %dx.types.CBufRet.f32 %3536, 3
  %3539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3540 = extractvalue %dx.types.CBufRet.f32 %3539, 0
  %3541 = call float @dx.op.binary.f32(i32 35, float %3535, float 0.000000e+00)  ; FMax(a,b)
  %3542 = fadd fast float %3541, 0x3F10000000000000
  %3543 = fcmp fast oeq float %3540, 0.000000e+00
  br i1 %3543, label %3544, label %3611

; <label>:3544                                    ; preds = %3532
  %3545 = extractvalue %dx.types.CBufRet.f32 %3536, 1
  %3546 = extractvalue %dx.types.CBufRet.f32 %3536, 0
  %3547 = fmul fast float %3546, %2674
  %3548 = fmul fast float %3545, %2678
  %3549 = fadd fast float %3547, 5.000000e-01
  %3550 = call float @dx.op.unary.f32(i32 27, float %3549)  ; Round_ni(value)
  %3551 = fadd fast float %3548, 5.000000e-01
  %3552 = call float @dx.op.unary.f32(i32 27, float %3551)  ; Round_ni(value)
  %3553 = fsub fast float %3549, %3550
  %3554 = fsub fast float %3551, %3552
  %3555 = fadd fast float %3550, -5.000000e-01
  %3556 = fadd fast float %3552, -5.000000e-01
  %3557 = fmul fast float %3553, 2.000000e+00
  %3558 = fsub fast float 3.000000e+00, %3557
  %3559 = fadd fast float %3557, 1.000000e+00
  %3560 = fsub fast float 2.000000e+00, %3553
  %3561 = bitcast float %3558 to i32
  %3562 = sub nsw i32 2129859010, %3561
  %3563 = bitcast i32 %3562 to float
  %3564 = fmul fast float %3563, %3560
  %3565 = fadd fast float %3564, -1.000000e+00
  %3566 = bitcast float %3559 to i32
  %3567 = sub nsw i32 2129859010, %3566
  %3568 = bitcast i32 %3567 to float
  %3569 = fmul fast float %3568, %3553
  %3570 = fadd fast float %3569, 1.000000e+00
  %3571 = fmul fast float %3554, 2.000000e+00
  %3572 = fsub fast float 3.000000e+00, %3571
  %3573 = fadd fast float %3571, 1.000000e+00
  %3574 = fsub fast float 2.000000e+00, %3554
  %3575 = bitcast float %3572 to i32
  %3576 = sub nsw i32 2129859010, %3575
  %3577 = bitcast i32 %3576 to float
  %3578 = fmul fast float %3577, %3574
  %3579 = fadd fast float %3578, -1.000000e+00
  %3580 = bitcast float %3573 to i32
  %3581 = sub nsw i32 2129859010, %3580
  %3582 = bitcast i32 %3581 to float
  %3583 = fmul fast float %3582, %3554
  %3584 = fadd fast float %3583, 1.000000e+00
  %3585 = fadd fast float %3565, %3555
  %3586 = fmul fast float %3585, %3537
  %3587 = fadd fast float %3579, %3556
  %3588 = fmul fast float %3587, %3538
  %3589 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %41, float %3586, float %3588, float undef, float undef, i32 0, i32 0, i32 undef, float %3542)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3590 = extractvalue %dx.types.ResRet.f32 %3589, 0
  %3591 = fmul fast float %3590, %3558
  %3592 = fadd fast float %3570, %3555
  %3593 = fmul fast float %3592, %3537
  %3594 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %41, float %3593, float %3588, float undef, float undef, i32 0, i32 0, i32 undef, float %3542)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3595 = extractvalue %dx.types.ResRet.f32 %3594, 0
  %3596 = fmul fast float %3595, %3559
  %3597 = fadd fast float %3584, %3556
  %3598 = fmul fast float %3597, %3538
  %3599 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %41, float %3586, float %3598, float undef, float undef, i32 0, i32 0, i32 undef, float %3542)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3601 = fmul fast float %3600, %3558
  %3602 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %41, float %3593, float %3598, float undef, float undef, i32 0, i32 0, i32 undef, float %3542)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3604 = fmul fast float %3603, %3559
  %3605 = fadd fast float %3604, %3601
  %3606 = fmul fast float %3605, %3573
  %3607 = fadd fast float %3596, %3591
  %3608 = fmul fast float %3607, %3572
  %3609 = fadd fast float %3608, %3606
  %3610 = fmul fast float %3609, 6.250000e-02
  br label %3696

; <label>:3611                                    ; preds = %3532
  %3612 = fmul fast float %237, 0x401921FB60000000
  %3613 = call float @dx.op.unary.f32(i32 13, float %3612)  ; Sin(value)
  %3614 = call float @dx.op.unary.f32(i32 12, float %3612)  ; Cos(value)
  %3615 = fsub fast float -0.000000e+00, %3613
  br label %3616

; <label>:3616                                    ; preds = %3665, %3611
  %3617 = phi float [ 0.000000e+00, %3611 ], [ %3660, %3665 ]
  %3618 = phi float [ 0.000000e+00, %3611 ], [ %3662, %3665 ]
  %3619 = phi i32 [ 0, %3611 ], [ %3666, %3665 ]
  %3620 = mul i32 %3619, 2
  %3621 = add i32 0, %3620
  %3622 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3621
  %3623 = load float, float* %3622, align 4
  %3624 = mul i32 %3619, 2
  %3625 = add i32 1, %3624
  %3626 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3625
  %3627 = load float, float* %3626, align 4
  %3628 = fmul fast float %3623, %3614
  %3629 = call float @dx.op.tertiary.f32(i32 46, float %3627, float %3615, float %3628)  ; FMad(a,b,c)
  %3630 = fmul fast float %3623, %3613
  %3631 = call float @dx.op.tertiary.f32(i32 46, float %3627, float %3614, float %3630)  ; FMad(a,b,c)
  %3632 = fmul fast float %3629, %3540
  %3633 = fmul fast float %3631, %3540
  %3634 = fadd fast float %3632, %2674
  %3635 = fadd fast float %3633, %2678
  %3636 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %40, float %3634, float %3635, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3637 = extractvalue %dx.types.ResRet.f32 %3636, 0
  %3638 = extractvalue %dx.types.ResRet.f32 %3636, 1
  %3639 = extractvalue %dx.types.ResRet.f32 %3636, 2
  %3640 = extractvalue %dx.types.ResRet.f32 %3636, 3
  %3641 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 0
  store float %3637, float* %3641, align 4
  %3642 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 1
  store float %3638, float* %3642, align 4
  %3643 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 2
  store float %3639, float* %3643, align 4
  %3644 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 3
  store float %3640, float* %3644, align 4
  %3645 = fsub fast float %3637, %3542
  %3646 = fcmp fast olt float %3645, 0.000000e+00
  %3647 = select i1 %3646, float 0.000000e+00, float 1.000000e+00
  %3648 = fadd fast float %3647, %3617
  %3649 = fmul fast float %3647, %3645
  %3650 = fadd fast float %3649, %3618
  br label %3651

; <label>:3651                                    ; preds = %3651, %3616
  %3652 = phi i32 [ 1, %3616 ], [ %3663, %3651 ]
  %3653 = phi float [ %3650, %3616 ], [ %3662, %3651 ]
  %3654 = phi float [ %3648, %3616 ], [ %3660, %3651 ]
  %3655 = getelementptr [4 x float], [4 x float]* %69, i32 0, i32 %3652
  %3656 = load float, float* %3655, align 4, !tbaa !101, !noalias !91
  %3657 = fsub fast float %3656, %3542
  %3658 = fcmp fast olt float %3657, 0.000000e+00
  %3659 = select i1 %3658, float 0.000000e+00, float 1.000000e+00
  %3660 = fadd fast float %3659, %3654
  %3661 = fmul fast float %3659, %3657
  %3662 = fadd fast float %3661, %3653
  %3663 = add nuw nsw i32 %3652, 1
  %3664 = icmp eq i32 %3663, 4
  br i1 %3664, label %3665, label %3651, !llvm.loop !103

; <label>:3665                                    ; preds = %3651
  %3666 = add nuw nsw i32 %3619, 1
  %3667 = icmp eq i32 %3666, 8
  br i1 %3667, label %3668, label %3616, !llvm.loop !104

; <label>:3668                                    ; preds = %3665
  %3669 = fdiv fast float 1.000000e+00, %3660
  %3670 = fmul fast float %3669, %3662
  %3671 = fdiv fast float 1.000000e+00, %3542
  %3672 = fmul fast float %3670, %3671
  %3673 = call float @dx.op.unary.f32(i32 7, float %3672)  ; Saturate(value)
  %3674 = call float @dx.op.binary.f32(i32 35, float %3673, float 0.000000e+00)  ; FMax(a,b)
  %3675 = fmul fast float %3660, 3.125000e-02
  %3676 = call float @dx.op.unary.f32(i32 7, float %3675)  ; Saturate(value)
  %3677 = fmul fast float %3676, 2.000000e+00
  %3678 = fadd fast float %3677, -1.000000e+00
  %3679 = fcmp fast ogt float %3678, 0.000000e+00
  %3680 = fcmp fast olt float %3678, 0.000000e+00
  %3681 = zext i1 %3679 to i32
  %3682 = zext i1 %3680 to i32
  %3683 = sub nsw i32 %3681, %3682
  %3684 = sitofp i32 %3683 to float
  %3685 = fmul fast float %3684, %3678
  %3686 = fsub fast float 1.000000e+00, %3685
  %3687 = fmul fast float %3686, %3686
  %3688 = fmul fast float %3687, %3686
  %3689 = fsub fast float %3686, %3688
  %3690 = fmul fast float %3689, %3674
  %3691 = fsub fast float 1.000000e+00, %3688
  %3692 = fsub fast float %3691, %3690
  %3693 = fmul fast float %3684, 5.000000e-01
  %3694 = fmul fast float %3693, %3692
  %3695 = fsub fast float 5.000000e-01, %3694
  br label %3696

; <label>:3696                                    ; preds = %3668, %3544, %3529
  %3697 = phi float [ 1.000000e+00, %3529 ], [ %3610, %3544 ], [ %3695, %3668 ]
  %3698 = fsub fast float %3363, %3198
  %3699 = fmul fast float %3698, %2736
  %3700 = fadd fast float %3699, %3198
  %3701 = fsub fast float %3530, %3700
  %3702 = fmul fast float %3701, %2766
  %3703 = fadd fast float %3702, %3700
  %3704 = fsub fast float %3697, %3703
  %3705 = fmul fast float %3704, %2792
  %3706 = fadd fast float %3705, %3703
  %3707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3708 = extractvalue %dx.types.CBufRet.f32 %3707, 2
  %3709 = fcmp fast ogt float %3708, 0.000000e+00
  br i1 %3709, label %3710, label %3750, !dx.controlflow.hints !107

; <label>:3710                                    ; preds = %3696
  %3711 = fcmp fast ugt float %3708, 0.000000e+00
  br i1 %3711, label %3712, label %3747

; <label>:3712                                    ; preds = %3710
  %3713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3714 = extractvalue %dx.types.CBufRet.f32 %3713, 0
  %3715 = extractvalue %dx.types.CBufRet.f32 %3713, 1
  %3716 = extractvalue %dx.types.CBufRet.f32 %3713, 2
  %3717 = extractvalue %dx.types.CBufRet.f32 %3713, 3
  %3718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3719 = extractvalue %dx.types.CBufRet.f32 %3718, 0
  %3720 = extractvalue %dx.types.CBufRet.f32 %3718, 1
  %3721 = extractvalue %dx.types.CBufRet.f32 %3718, 2
  %3722 = extractvalue %dx.types.CBufRet.f32 %3718, 3
  %3723 = extractvalue %dx.types.CBufRet.f32 %3707, 0
  %3724 = extractvalue %dx.types.CBufRet.f32 %3707, 1
  %3725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3726 = extractvalue %dx.types.CBufRet.f32 %3725, 0
  %3727 = extractvalue %dx.types.CBufRet.f32 %3725, 1
  %3728 = extractvalue %dx.types.CBufRet.f32 %3725, 2
  %3729 = fadd fast float %3726, %2651
  %3730 = fadd fast float %3727, %2652
  %3731 = fadd fast float %3728, %2653
  %3732 = fmul fast float %3729, %3714
  %3733 = call float @dx.op.tertiary.f32(i32 46, float %3715, float %3730, float %3732)  ; FMad(a,b,c)
  %3734 = call float @dx.op.tertiary.f32(i32 46, float %3716, float %3731, float %3733)  ; FMad(a,b,c)
  %3735 = fadd fast float %3734, %3717
  %3736 = fmul fast float %3729, %3719
  %3737 = call float @dx.op.tertiary.f32(i32 46, float %3720, float %3730, float %3736)  ; FMad(a,b,c)
  %3738 = call float @dx.op.tertiary.f32(i32 46, float %3721, float %3731, float %3737)  ; FMad(a,b,c)
  %3739 = fadd fast float %3738, %3722
  %3740 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %36, float %3735, float %3739, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3741 = extractvalue %dx.types.ResRet.f32 %3740, 0
  %3742 = fmul fast float %3741, %3724
  %3743 = fadd fast float %3742, %3723
  %3744 = call float @dx.op.unary.f32(i32 7, float %3743)  ; Saturate(value)
  %3745 = fmul fast float %3744, %3708
  %3746 = fsub fast float 1.000000e+00, %3745
  br label %3747

; <label>:3747                                    ; preds = %3712, %3710
  %3748 = phi float [ %3746, %3712 ], [ 1.000000e+00, %3710 ]
  %3749 = fmul fast float %3748, %3706
  br label %3750

; <label>:3750                                    ; preds = %3747, %3696, %2631
  %3751 = phi float [ 1.000000e+00, %2631 ], [ %3749, %3747 ], [ %3706, %3696 ]
  %3752 = call float @dx.op.binary.f32(i32 36, float %3751, float %3751)  ; FMin(a,b)
  %3753 = call float @dx.op.binary.f32(i32 36, float %3751, float %3752)  ; FMin(a,b)
  %3754 = fcmp fast ogt float %3753, 0.000000e+00
  br i1 %3754, label %3755, label %3921, !dx.controlflow.hints !108

; <label>:3755                                    ; preds = %3750
  %3756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3757 = extractvalue %dx.types.CBufRet.f32 %3756, 0
  %3758 = extractvalue %dx.types.CBufRet.f32 %3756, 1
  %3759 = extractvalue %dx.types.CBufRet.f32 %3756, 2
  %3760 = extractvalue %dx.types.CBufRet.f32 %3756, 3
  %3761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3762 = extractvalue %dx.types.CBufRet.f32 %3761, 0
  %3763 = extractvalue %dx.types.CBufRet.f32 %3761, 1
  %3764 = extractvalue %dx.types.CBufRet.f32 %3761, 2
  %3765 = extractvalue %dx.types.CBufRet.f32 %3761, 3
  %3766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3767 = extractvalue %dx.types.CBufRet.f32 %3766, 0
  %3768 = extractvalue %dx.types.CBufRet.f32 %3766, 1
  %3769 = extractvalue %dx.types.CBufRet.f32 %3766, 2
  %3770 = extractvalue %dx.types.CBufRet.f32 %3766, 3
  %3771 = fmul fast float %3757, %2651
  %3772 = call float @dx.op.tertiary.f32(i32 46, float %2652, float %3758, float %3771)  ; FMad(a,b,c)
  %3773 = call float @dx.op.tertiary.f32(i32 46, float %2653, float %3759, float %3772)  ; FMad(a,b,c)
  %3774 = fadd fast float %3773, %3760
  %3775 = fmul fast float %3762, %2651
  %3776 = call float @dx.op.tertiary.f32(i32 46, float %2652, float %3763, float %3775)  ; FMad(a,b,c)
  %3777 = call float @dx.op.tertiary.f32(i32 46, float %2653, float %3764, float %3776)  ; FMad(a,b,c)
  %3778 = fadd fast float %3777, %3765
  %3779 = fmul fast float %3767, %2651
  %3780 = call float @dx.op.tertiary.f32(i32 46, float %2652, float %3768, float %3779)  ; FMad(a,b,c)
  %3781 = call float @dx.op.tertiary.f32(i32 46, float %2653, float %3769, float %3780)  ; FMad(a,b,c)
  %3782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3783 = extractvalue %dx.types.CBufRet.f32 %3782, 0
  %3784 = extractvalue %dx.types.CBufRet.f32 %3782, 1
  %3785 = extractvalue %dx.types.CBufRet.f32 %3782, 3
  %3786 = fmul fast float %3785, %3774
  %3787 = fmul fast float %3785, %3778
  %3788 = fadd fast float %3786, %3783
  %3789 = fadd fast float %3787, %3784
  %3790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3791 = extractvalue %dx.types.CBufRet.f32 %3790, 0
  %3792 = extractvalue %dx.types.CBufRet.f32 %3790, 1
  %3793 = fsub fast float %3788, %3791
  %3794 = fsub fast float %3789, %3792
  %3795 = fcmp fast olt float %3793, 0.000000e+00
  %3796 = fcmp fast olt float %3794, 0.000000e+00
  %3797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3798 = extractvalue %dx.types.CBufRet.f32 %3797, 0
  %3799 = extractvalue %dx.types.CBufRet.f32 %3797, 1
  %3800 = extractvalue %dx.types.CBufRet.f32 %3797, 2
  %3801 = extractvalue %dx.types.CBufRet.f32 %3797, 3
  %3802 = select i1 %3795, float %3798, float %3800
  %3803 = select i1 %3796, float %3799, float %3801
  %3804 = fmul fast float %3802, %3793
  %3805 = fmul fast float %3803, %3794
  %3806 = call float @dx.op.unary.f32(i32 6, float %3804)  ; FAbs(value)
  %3807 = call float @dx.op.unary.f32(i32 6, float %3805)  ; FAbs(value)
  %3808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3809 = extractvalue %dx.types.CBufRet.f32 %3808, 0
  %3810 = call float @dx.op.binary.f32(i32 35, float %3806, float %3807)  ; FMax(a,b)
  %3811 = fsub fast float %3809, %3810
  %3812 = call float @dx.op.unary.f32(i32 7, float %3811)  ; Saturate(value)
  %3813 = fcmp fast ogt float %3812, 0.000000e+00
  br i1 %3813, label %3814, label %3855, !dx.controlflow.hints !109

; <label>:3814                                    ; preds = %3755
  %3815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %39, float %3788, float %3789, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3816 = extractvalue %dx.types.ResRet.f32 %3815, 1
  %3817 = fcmp fast ogt float %3816, 0.000000e+00
  br i1 %3817, label %3818, label %3850

; <label>:3818                                    ; preds = %3814
  %3819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %39, float %3788, float %3789, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3820 = extractvalue %dx.types.ResRet.f32 %3819, 0
  %3821 = extractvalue %dx.types.ResRet.f32 %3819, 1
  %3822 = extractvalue %dx.types.ResRet.f32 %3819, 2
  %3823 = extractvalue %dx.types.ResRet.f32 %3819, 3
  %3824 = fsub fast float 1.000000e+00, %3770
  %3825 = fsub fast float %3824, %3781
  %3826 = fmul fast float %3825, 0x400921FB60000000
  %3827 = fadd fast float %3826, 0x3FF921FB60000000
  %3828 = call float @dx.op.unary.f32(i32 13, float %3827)  ; Sin(value)
  %3829 = fadd fast float %3828, -1.000000e+00
  %3830 = fmul fast float %3829, 0x3FD45F3060000000
  %3831 = fmul fast float %3825, 0x401921FB60000000
  %3832 = fadd fast float %3831, 0x400921FB60000000
  %3833 = call float @dx.op.unary.f32(i32 13, float %3832)  ; Sin(value)
  %3834 = fadd fast float %3833, 0x3E7777A5C0000000
  %3835 = fmul fast float %3834, 0x3FC45F3060000000
  %3836 = fmul fast float %3825, 0x4022D97C80000000
  %3837 = fadd fast float %3836, 0x4012D97C80000000
  %3838 = call float @dx.op.unary.f32(i32 13, float %3837)  ; Sin(value)
  %3839 = fadd fast float %3838, 1.000000e+00
  %3840 = fmul fast float %3839, 0x3FBB2995E0000000
  %3841 = fmul fast float %3825, 0x402921FB60000000
  %3842 = fadd fast float %3841, 0x401921FB60000000
  %3843 = call float @dx.op.unary.f32(i32 13, float %3842)  ; Sin(value)
  %3844 = fadd fast float %3843, 0xBE8777A5C0000000
  %3845 = fmul fast float %3844, 0x3FB45F3060000000
  %3846 = call float @dx.op.dot4.f32(i32 56, float %3820, float %3821, float %3822, float %3823, float %3830, float %3835, float %3840, float %3845)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3847 = fmul fast float %3846, 0xBFF7154760000000
  %3848 = call float @dx.op.unary.f32(i32 21, float %3847)  ; Exp(value)
  %3849 = call float @dx.op.unary.f32(i32 7, float %3848)  ; Saturate(value)
  br label %3850

; <label>:3850                                    ; preds = %3818, %3814
  %3851 = phi float [ %3849, %3818 ], [ 1.000000e+00, %3814 ]
  %3852 = fadd fast float %3851, -1.000000e+00
  %3853 = fmul fast float %3852, %3812
  %3854 = fadd fast float %3853, 1.000000e+00
  br label %3855

; <label>:3855                                    ; preds = %3850, %3755
  %3856 = phi float [ %3854, %3850 ], [ 1.000000e+00, %3755 ]
  %3857 = fmul fast float %3856, %3751
  %3858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3859 = extractvalue %dx.types.CBufRet.f32 %3858, 0
  %3860 = extractvalue %dx.types.CBufRet.f32 %3858, 1
  %3861 = extractvalue %dx.types.CBufRet.f32 %3858, 2
  %3862 = fadd fast float %3859, %134
  %3863 = fadd fast float %3860, %135
  %3864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3865 = extractvalue %dx.types.CBufRet.f32 %3864, 1
  %3866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3867 = extractvalue %dx.types.CBufRet.f32 %3866, 0
  %3868 = extractvalue %dx.types.CBufRet.f32 %3866, 1
  %3869 = extractvalue %dx.types.CBufRet.f32 %3866, 2
  %3870 = fsub fast float -0.000000e+00, %3862
  %3871 = fsub fast float -0.000000e+00, %3863
  %3872 = fsub fast float -0.000000e+00, %136
  %3873 = fsub fast float %3872, %3861
  %3874 = fadd fast float %3873, %3865
  %3875 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3870, float %3871, float %3874)  ; Dot3(ax,ay,az,bx,by,bz)
  %3876 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3867, float %3868, float %3869)  ; Dot3(ax,ay,az,bx,by,bz)
  %3877 = fdiv fast float 1.000000e+00, %3876
  %3878 = fmul fast float %3877, %3875
  %3879 = fmul fast float %3867, %3878
  %3880 = fmul fast float %3868, %3878
  %3881 = fadd fast float %3879, %3862
  %3882 = fadd fast float %3880, %3863
  %3883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3884 = extractvalue %dx.types.CBufRet.f32 %3883, 0
  %3885 = extractvalue %dx.types.CBufRet.f32 %3883, 1
  %3886 = fsub fast float %3881, %3884
  %3887 = fsub fast float %3882, %3885
  %3888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3889 = extractvalue %dx.types.CBufRet.f32 %3888, 2
  %3890 = extractvalue %dx.types.CBufRet.f32 %3888, 3
  %3891 = fmul fast float %3886, %3889
  %3892 = fmul fast float %3887, %3890
  %3893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3894 = extractvalue %dx.types.CBufRet.i32 %3893, 3
  %3895 = icmp eq i32 %3894, 0
  br i1 %3895, label %3901, label %3896

; <label>:3896                                    ; preds = %3855
  %3897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %38, float %3891, float %3892, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3898 = extractvalue %dx.types.ResRet.f32 %3897, 0
  %3899 = extractvalue %dx.types.ResRet.f32 %3897, 1
  %3900 = extractvalue %dx.types.ResRet.f32 %3897, 2
  br label %3906

; <label>:3901                                    ; preds = %3855
  %3902 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %3891, float %3892, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3903 = extractvalue %dx.types.ResRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.ResRet.f32 %3902, 1
  %3905 = extractvalue %dx.types.ResRet.f32 %3902, 2
  br label %3906

; <label>:3906                                    ; preds = %3901, %3896
  %3907 = phi float [ %3898, %3896 ], [ %3903, %3901 ]
  %3908 = phi float [ %3899, %3896 ], [ %3904, %3901 ]
  %3909 = phi float [ %3900, %3896 ], [ %3905, %3901 ]
  %3910 = extractvalue %dx.types.CBufRet.f32 %3864, 2
  %3911 = fmul fast float %3910, %3907
  %3912 = extractvalue %dx.types.CBufRet.f32 %3864, 0
  %3913 = fsub fast float %3878, %3912
  %3914 = fsub fast float %3913, %3911
  %3915 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3914)  ; FMax(a,b)
  %3916 = fmul fast float %3915, %3908
  %3917 = call float @dx.op.binary.f32(i32 36, float %3909, float %3916)  ; FMin(a,b)
  %3918 = fmul fast float %3917, 0xBFF7154760000000
  %3919 = call float @dx.op.unary.f32(i32 21, float %3918)  ; Exp(value)
  %3920 = fmul fast float %3857, %3919
  br label %3921

; <label>:3921                                    ; preds = %3906, %3750
  %3922 = phi float [ %3920, %3906 ], [ %3751, %3750 ]
  %3923 = call float @dx.op.binary.f32(i32 36, float %3922, float %3922)  ; FMin(a,b)
  %3924 = call float @dx.op.binary.f32(i32 36, float %3922, float %3923)  ; FMin(a,b)
  %3925 = fcmp fast ogt float %3924, 0.000000e+00
  br i1 %3925, label %3926, label %4109, !dx.controlflow.hints !110

; <label>:3926                                    ; preds = %3921
  %3927 = fmul fast float %3922, %2643
  %3928 = fmul fast float %3922, %2644
  %3929 = fmul fast float %3922, %2645
  %3930 = fsub fast float %2632, %153
  %3931 = fsub fast float %2633, %154
  %3932 = fsub fast float %2634, %155
  %3933 = call float @dx.op.dot3.f32(i32 55, float %3930, float %3931, float %3932, float %3930, float %3931, float %3932)  ; Dot3(ax,ay,az,bx,by,bz)
  %3934 = call float @dx.op.unary.f32(i32 25, float %3933)  ; Rsqrt(value)
  %3935 = fmul fast float %3934, %3930
  %3936 = fmul fast float %3934, %3931
  %3937 = fmul fast float %3934, %3932
  %3938 = call float @dx.op.dot3.f32(i32 55, float %2632, float %2633, float %2634, float %1786, float %1787, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %3939 = call float @dx.op.dot3.f32(i32 55, float %1620, float %1621, float %1622, float %3935, float %3936, float %3937)  ; Dot3(ax,ay,az,bx,by,bz)
  %3940 = call float @dx.op.unary.f32(i32 7, float %3938)  ; Saturate(value)
  %3941 = fmul fast float %3940, %3940
  %3942 = fmul fast float %3941, %1824
  %3943 = call float @dx.op.unary.f32(i32 7, float %3942)  ; Saturate(value)
  %3944 = fmul fast float %3943, %3940
  %3945 = call float @dx.op.dot3.f32(i32 55, float %1786, float %1787, float %1788, float %3935, float %3936, float %3937)  ; Dot3(ax,ay,az,bx,by,bz)
  %3946 = fmul fast float %3945, %3945
  %3947 = call float @dx.op.unary.f32(i32 6, float %3938)  ; FAbs(value)
  %3948 = fsub fast float 1.000000e+00, %1817
  %3949 = fmul fast float %1799, %1799
  %3950 = fmul fast float %3949, %3948
  %3951 = fadd fast float %3950, %1817
  %3952 = bitcast float %3951 to i32
  %3953 = ashr i32 %3952, 1
  %3954 = add nsw i32 %3953, 532487669
  %3955 = bitcast i32 %3954 to float
  %3956 = fadd fast float %3955, %1799
  %3957 = fmul fast float %1817, %3946
  %3958 = fsub fast float 1.000000e+00, %3946
  %3959 = fadd fast float %3958, %3957
  %3960 = fmul fast float %3947, %3947
  %3961 = fmul fast float %3960, %3948
  %3962 = fadd fast float %3961, %1817
  %3963 = bitcast float %3962 to i32
  %3964 = ashr i32 %3963, 1
  %3965 = add nsw i32 %3964, 532487669
  %3966 = bitcast i32 %3965 to float
  %3967 = fadd fast float %3966, %3947
  %3968 = fmul fast float %3959, %3959
  %3969 = fmul fast float %3968, %3956
  %3970 = fmul fast float %3969, %3967
  %3971 = fdiv fast float 0x3FF0A00000000000, %3970
  %3972 = fmul fast float %3971, %1817
  %3973 = fmul fast float %1924, 0x3FF9999980000000
  %3974 = fsub fast float 5.000000e+00, %3973
  %3975 = call float @dx.op.unary.f32(i32 6, float %3939)  ; FAbs(value)
  %3976 = fsub fast float 1.000000e+00, %3975
  %3977 = fmul fast float %1924, 0x41D9660740000000
  %3978 = fadd fast float %3977, 0xC1EFBF8940000000
  %3979 = bitcast float %3976 to i32
  %3980 = sitofp i32 %3979 to float
  %3981 = fmul fast float %3980, %3974
  %3982 = fadd fast float %3978, %3981
  %3983 = fptosi float %3982 to i32
  %3984 = bitcast i32 %3983 to float
  %3985 = fsub fast float 1.000000e+00, %1792
  %3986 = fsub fast float 1.000000e+00, %1793
  %3987 = fsub fast float 1.000000e+00, %1797
  %3988 = fmul fast float %3984, %3985
  %3989 = fmul fast float %3984, %3986
  %3990 = fmul fast float %3984, %3987
  %3991 = fadd fast float %3988, %1792
  %3992 = fadd fast float %3989, %1793
  %3993 = fadd fast float %3990, %1797
  br i1 %1947, label %3994, label %4017

; <label>:3994                                    ; preds = %3926
  %3995 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %1448, float %3975, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3996 = extractvalue %dx.types.ResRet.f32 %3995, 0
  %3997 = extractvalue %dx.types.ResRet.f32 %3995, 1
  %3998 = extractvalue %dx.types.ResRet.f32 %3995, 2
  %3999 = fadd fast float %3996, -5.000000e-01
  %4000 = fadd fast float %3997, -5.000000e-01
  %4001 = fadd fast float %3998, -5.000000e-01
  %4002 = fmul fast float %1792, 4.000000e+00
  %4003 = fmul fast float %4002, %3985
  %4004 = fmul fast float %4003, %3999
  %4005 = fmul fast float %1793, 4.000000e+00
  %4006 = fmul fast float %4005, %3986
  %4007 = fmul fast float %4006, %4000
  %4008 = fmul fast float %1797, 4.000000e+00
  %4009 = fmul fast float %4008, %3987
  %4010 = fmul fast float %4009, %4001
  %4011 = fadd fast float %4004, %3991
  %4012 = fadd fast float %4007, %3992
  %4013 = fadd fast float %4010, %3993
  %4014 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  %4015 = call float @dx.op.unary.f32(i32 7, float %4012)  ; Saturate(value)
  %4016 = call float @dx.op.unary.f32(i32 7, float %4013)  ; Saturate(value)
  br label %4017

; <label>:4017                                    ; preds = %3994, %3926
  %4018 = phi float [ %4014, %3994 ], [ %3991, %3926 ]
  %4019 = phi float [ %4015, %3994 ], [ %3992, %3926 ]
  %4020 = phi float [ %4016, %3994 ], [ %3993, %3926 ]
  %4021 = fmul fast float %3938, 9.843750e-01
  %4022 = fadd fast float %4021, 7.812500e-03
  %4023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %4022, float %1928, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4024 = extractvalue %dx.types.ResRet.f32 %4023, 0
  %4025 = extractvalue %dx.types.ResRet.f32 %4023, 1
  %4026 = extractvalue %dx.types.ResRet.f32 %4023, 2
  %4027 = extractvalue %dx.types.ResRet.f32 %4023, 3
  %4028 = fsub fast float %4026, %4024
  %4029 = fsub fast float %4027, %4025
  %4030 = fmul fast float %4028, %1934
  %4031 = fmul fast float %4029, %1934
  %4032 = fadd fast float %4030, %4024
  %4033 = fadd fast float %4031, %4025
  %4034 = fmul fast float %4032, %1792
  %4035 = fmul fast float %4032, %1793
  %4036 = fmul fast float %4032, %1797
  %4037 = fadd fast float %4034, %4033
  %4038 = fadd fast float %4035, %4033
  %4039 = fadd fast float %4036, %4033
  br i1 %1947, label %4040, label %4063

; <label>:4040                                    ; preds = %4017
  %4041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %1448, float %3938, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = extractvalue %dx.types.ResRet.f32 %4041, 1
  %4044 = extractvalue %dx.types.ResRet.f32 %4041, 2
  %4045 = fadd fast float %4042, -5.000000e-01
  %4046 = fadd fast float %4043, -5.000000e-01
  %4047 = fadd fast float %4044, -5.000000e-01
  %4048 = fmul fast float %1792, 4.000000e+00
  %4049 = fmul fast float %4048, %3985
  %4050 = fmul fast float %4049, %4045
  %4051 = fmul fast float %1793, 4.000000e+00
  %4052 = fmul fast float %4051, %3986
  %4053 = fmul fast float %4052, %4046
  %4054 = fmul fast float %1797, 4.000000e+00
  %4055 = fmul fast float %4054, %3987
  %4056 = fmul fast float %4055, %4047
  %4057 = fadd fast float %4050, %4037
  %4058 = fadd fast float %4053, %4038
  %4059 = fadd fast float %4056, %4039
  %4060 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  %4061 = call float @dx.op.unary.f32(i32 7, float %4058)  ; Saturate(value)
  %4062 = call float @dx.op.unary.f32(i32 7, float %4059)  ; Saturate(value)
  br label %4063

; <label>:4063                                    ; preds = %4040, %4017
  %4064 = phi float [ %4060, %4040 ], [ %4037, %4017 ]
  %4065 = phi float [ %4061, %4040 ], [ %4038, %4017 ]
  %4066 = phi float [ %4062, %4040 ], [ %4039, %4017 ]
  %4067 = call float @dx.op.binary.f32(i32 35, float %4065, float %4066)  ; FMax(a,b)
  %4068 = call float @dx.op.binary.f32(i32 35, float %4064, float %4067)  ; FMax(a,b)
  %4069 = fsub fast float 1.000000e+00, %4068
  %4070 = fmul fast float %4018, %3972
  %4071 = fmul fast float %4019, %3972
  %4072 = fmul fast float %4020, %3972
  %4073 = fsub fast float 1.000000e+00, %3939
  %4074 = bitcast float %4073 to i32
  %4075 = sitofp i32 %4074 to float
  %4076 = fmul fast float %4075, 5.000000e+00
  %4077 = fadd fast float %4076, 0xC1EFBF8940000000
  %4078 = fptosi float %4077 to i32
  %4079 = bitcast i32 %4078 to float
  %4080 = fmul fast float %4079, %1447
  %4081 = fmul fast float %4069, %4080
  %4082 = fmul fast float %4081, %2567
  %4083 = fmul fast float %4081, %2568
  %4084 = fmul fast float %4081, %2569
  %4085 = fadd fast float %4082, %4070
  %4086 = fadd fast float %4083, %4071
  %4087 = fadd fast float %4084, %4072
  %4088 = fmul fast float %3944, %3927
  %4089 = fmul fast float %4088, %4069
  %4090 = fmul fast float %3944, %3928
  %4091 = fmul fast float %4090, %4069
  %4092 = fmul fast float %3944, %3929
  %4093 = fmul fast float %4092, %4069
  %4094 = fmul fast float %4088, %4085
  %4095 = fmul fast float %4090, %4086
  %4096 = fmul fast float %4092, %4087
  %4097 = fadd fast float %4089, %2551
  %4098 = fmul fast float %4097, %1494
  %4099 = fadd fast float %4091, %2552
  %4100 = fmul fast float %4099, %1494
  %4101 = fadd fast float %4093, %2553
  %4102 = fmul fast float %4101, %1494
  %4103 = fadd fast float %4094, %2620
  %4104 = fmul fast float %4103, %1494
  %4105 = fadd fast float %4095, %2623
  %4106 = fmul fast float %4105, %1494
  %4107 = fadd fast float %4096, %2626
  %4108 = fmul fast float %4107, %1494
  br label %4109

; <label>:4109                                    ; preds = %4063, %3921, %2547
  %4110 = phi float [ %2621, %2547 ], [ %2621, %3921 ], [ %4104, %4063 ]
  %4111 = phi float [ %2624, %2547 ], [ %2624, %3921 ], [ %4106, %4063 ]
  %4112 = phi float [ %2627, %2547 ], [ %2627, %3921 ], [ %4108, %4063 ]
  %4113 = phi float [ %2616, %2547 ], [ %2616, %3921 ], [ %4098, %4063 ]
  %4114 = phi float [ %2617, %2547 ], [ %2617, %3921 ], [ %4100, %4063 ]
  %4115 = phi float [ %2618, %2547 ], [ %2618, %3921 ], [ %4102, %4063 ]
  %4116 = fmul fast float %1494, %1494
  %4117 = fmul fast float %4116, %2593
  %4118 = fsub fast float -0.000000e+00, %4117
  %4119 = fmul fast float %4116, %2594
  %4120 = fsub fast float -0.000000e+00, %4119
  %4121 = fmul fast float %4116, %2595
  %4122 = fsub fast float -0.000000e+00, %4121
  %4123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4124 = extractvalue %dx.types.CBufRet.f32 %4123, 0
  %4125 = fmul fast float %4124, %2599
  %4126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4127 = extractvalue %dx.types.CBufRet.f32 %4126, 3
  %4128 = fsub fast float 1.000000e+00, %1443
  %4129 = call float @dx.op.unary.f32(i32 7, float %4128)  ; Saturate(value)
  %4130 = fadd fast float %4115, %1442
  %4131 = fmul fast float %4130, %1443
  %4132 = fmul fast float %4129, %4127
  %4133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %4134 = extractvalue %dx.types.ResRet.i32 %4133, 3
  %4135 = bitcast i32 %4134 to float
  %4136 = fsub fast float %4118, %4135
  %4137 = fsub fast float %4120, %4135
  %4138 = fsub fast float %4122, %4135
  %4139 = fmul fast float %4136, %167
  %4140 = fmul fast float %4137, %167
  %4141 = fmul fast float %4138, %167
  %4142 = fadd fast float %4139, %4135
  %4143 = fadd fast float %4140, %4135
  %4144 = fadd fast float %4141, %4135
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 3
  %4147 = fmul fast float %4113, %1789
  %4148 = fmul fast float %4114, %1790
  %4149 = fmul fast float %4115, %1791
  %4150 = fcmp fast ogt float %66, %187
  %4151 = and i1 %4150, %1536
  %4152 = or i1 %1615, %4151
  %4153 = icmp eq i32 %1535, 2
  %4154 = fcmp fast ole float %66, %187
  %4155 = and i1 %4154, %4153
  %4156 = or i1 %4155, %4152
  br i1 %4151, label %4157, label %4414

; <label>:4157                                    ; preds = %4109
  %4158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4159 = extractvalue %dx.types.CBufRet.f32 %4158, 2
  %4160 = extractvalue %dx.types.CBufRet.f32 %4158, 3
  %4161 = fmul fast float %4159, %78
  %4162 = fmul fast float %4160, %79
  %4163 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4164 = call float @dx.op.unary.f32(i32 7, float %4162)  ; Saturate(value)
  %4165 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %39, float %4163, float %4164, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4166 = extractvalue %dx.types.ResRet.f32 %4165, 0
  %4167 = extractvalue %dx.types.ResRet.f32 %4165, 1
  %4168 = extractvalue %dx.types.ResRet.f32 %4165, 2
  %4169 = extractvalue %dx.types.ResRet.f32 %4165, 3
  %4170 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %39, float %4163, float %4164, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4171 = extractvalue %dx.types.ResRet.f32 %4170, 0
  %4172 = extractvalue %dx.types.ResRet.f32 %4170, 1
  %4173 = extractvalue %dx.types.ResRet.f32 %4170, 2
  %4174 = extractvalue %dx.types.ResRet.f32 %4170, 3
  %4175 = call float @dx.op.binary.f32(i32 35, float %4167, float %4168)  ; FMax(a,b)
  %4176 = call float @dx.op.binary.f32(i32 35, float %4166, float %4175)  ; FMax(a,b)
  %4177 = call float @dx.op.binary.f32(i32 35, float %4176, float %4169)  ; FMax(a,b)
  %4178 = call float @dx.op.binary.f32(i32 36, float %4172, float %4173)  ; FMin(a,b)
  %4179 = call float @dx.op.binary.f32(i32 36, float %4171, float %4178)  ; FMin(a,b)
  %4180 = call float @dx.op.binary.f32(i32 36, float %4179, float %4174)  ; FMin(a,b)
  %4181 = fmul fast float %4177, 2.550000e+02
  %4182 = fadd fast float %4181, 0x3F70101020000000
  %4183 = fptoui float %4182 to i32
  %4184 = fmul fast float %4180, 2.550000e+02
  %4185 = fadd fast float %4184, 0x3F70101020000000
  %4186 = fptoui float %4185 to i32
  %4187 = icmp ult i32 %4183, %4186
  br i1 %4187, label %4188, label %4356

; <label>:4188                                    ; preds = %4157
  %4189 = fcmp fast ogt float %65, 9.843750e-01
  %4190 = fadd fast float %66, -4.000000e+00
  %4191 = select i1 %4189, float -4.000000e+00, float %4190
  %4192 = call float @dx.op.binary.f32(i32 35, float %4191, float 0.000000e+00)  ; FMax(a,b)
  %4193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.f32 %4193, 0
  %4195 = fadd fast float %4194, %4192
  %4196 = extractvalue %dx.types.CBufRet.f32 %4193, 2
  %4197 = fmul fast float %4195, %4196
  %4198 = call float @dx.op.unary.f32(i32 23, float %4197)  ; Log(value)
  %4199 = extractvalue %dx.types.CBufRet.f32 %4193, 3
  %4200 = fmul fast float %4199, %4198
  %4201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4202 = extractvalue %dx.types.CBufRet.f32 %4201, 2
  %4203 = fmul fast float %4200, %4202
  %4204 = call float @dx.op.unary.f32(i32 7, float %4203)  ; Saturate(value)
  %4205 = uitofp i32 %4183 to float
  %4206 = uitofp i32 %4186 to float
  %4207 = fadd fast float %4205, 5.000000e-01
  %4208 = fadd fast float %4206, 5.000000e-01
  %4209 = fmul fast float %4202, %4207
  %4210 = fmul fast float %4202, %4208
  %4211 = fadd fast float %4209, 0x3F0FFB4800000000
  %4212 = fadd fast float %4210, 0xBF0FFB4800000000
  %4213 = call float @dx.op.binary.f32(i32 35, float %4204, float %4211)  ; FMax(a,b)
  %4214 = call float @dx.op.binary.f32(i32 36, float %4213, float %4212)  ; FMin(a,b)
  %4215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %4216 = extractvalue %dx.types.CBufRet.f32 %4215, 1
  %4217 = extractvalue %dx.types.CBufRet.f32 %4215, 2
  %4218 = extractvalue %dx.types.CBufRet.f32 %4215, 0
  %4219 = fmul fast float %4216, %4214
  %4220 = fadd fast float %4218, %4219
  %4221 = fadd fast float %4218, %4217
  %4222 = fsub fast float %4216, %4217
  %4223 = fadd fast float %4222, %4218
  %4224 = call float @dx.op.binary.f32(i32 35, float %4220, float %4221)  ; FMax(a,b)
  %4225 = call float @dx.op.binary.f32(i32 36, float %4224, float %4223)  ; FMin(a,b)
  %4226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %37, float %4163, float %4164, float %4225, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4227 = extractvalue %dx.types.ResRet.f32 %4226, 0
  %4228 = extractvalue %dx.types.ResRet.f32 %4226, 1
  %4229 = extractvalue %dx.types.ResRet.f32 %4226, 2
  %4230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %4231 = extractvalue %dx.types.CBufRet.i32 %4230, 0
  %4232 = extractvalue %dx.types.CBufRet.i32 %4230, 1
  %4233 = uitofp i32 %4231 to float
  %4234 = uitofp i32 %4232 to float
  %4235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.f32 %4235, 0
  %4237 = extractvalue %dx.types.CBufRet.f32 %4235, 1
  %4238 = fmul fast float %4233, %4163
  %4239 = fmul fast float %4234, %4164
  %4240 = fadd fast float %4238, -5.000000e-01
  %4241 = fadd fast float %4239, -5.000000e-01
  %4242 = call float @dx.op.unary.f32(i32 22, float %4240)  ; Frc(value)
  %4243 = call float @dx.op.unary.f32(i32 22, float %4241)  ; Frc(value)
  %4244 = fmul fast float %4242, %4242
  %4245 = fmul fast float %4244, %4242
  %4246 = fsub fast float 3.000000e+00, %4242
  %4247 = fmul fast float %4244, %4246
  %4248 = fmul fast float %4242, 3.000000e+00
  %4249 = fmul fast float %4245, 3.000000e+00
  %4250 = fmul fast float %4244, 6.000000e+00
  %4251 = fsub fast float %4249, %4250
  %4252 = fadd fast float %4251, 4.000000e+00
  %4253 = fmul fast float %4252, 0x3FC5555560000000
  %4254 = fmul fast float %4245, -3.000000e+00
  %4255 = fadd fast float %4244, %4242
  %4256 = fmul fast float %4255, 3.000000e+00
  %4257 = fadd fast float %4254, 1.000000e+00
  %4258 = fadd fast float %4257, %4256
  %4259 = fmul fast float %4245, 0x3FC5555560000000
  %4260 = fmul fast float %4243, %4243
  %4261 = fmul fast float %4260, %4243
  %4262 = fsub fast float 3.000000e+00, %4243
  %4263 = fmul fast float %4260, %4262
  %4264 = fmul fast float %4243, 3.000000e+00
  %4265 = fmul fast float %4261, 3.000000e+00
  %4266 = fmul fast float %4260, 6.000000e+00
  %4267 = fsub fast float %4265, %4266
  %4268 = fadd fast float %4267, 4.000000e+00
  %4269 = fmul fast float %4268, 0x3FC5555560000000
  %4270 = fmul fast float %4261, -3.000000e+00
  %4271 = fadd fast float %4260, %4243
  %4272 = fmul fast float %4271, 3.000000e+00
  %4273 = fadd fast float %4270, 1.000000e+00
  %4274 = fadd fast float %4273, %4272
  %4275 = fmul fast float %4261, 0x3FC5555560000000
  %4276 = fadd fast float %4242, 1.000000e+00
  %4277 = fsub fast float 1.000000e+00, %4248
  %4278 = fadd fast float %4277, %4247
  %4279 = fadd fast float %4278, %4252
  %4280 = fmul fast float %4279, 0x3FC5555560000000
  %4281 = fdiv fast float %4253, %4280
  %4282 = fsub fast float %4276, %4281
  %4283 = fsub fast float 1.000000e+00, %4242
  %4284 = fadd fast float %4258, %4245
  %4285 = fmul fast float %4284, 0x3FC5555560000000
  %4286 = fdiv fast float %4259, %4285
  %4287 = fadd fast float %4283, %4286
  %4288 = fadd fast float %4243, 1.000000e+00
  %4289 = fsub fast float 1.000000e+00, %4264
  %4290 = fadd fast float %4289, %4263
  %4291 = fadd fast float %4290, %4268
  %4292 = fmul fast float %4291, 0x3FC5555560000000
  %4293 = fdiv fast float %4269, %4292
  %4294 = fsub fast float %4288, %4293
  %4295 = fsub fast float 1.000000e+00, %4243
  %4296 = fadd fast float %4274, %4261
  %4297 = fmul fast float %4296, 0x3FC5555560000000
  %4298 = fdiv fast float %4275, %4297
  %4299 = fadd fast float %4298, %4295
  %4300 = fmul fast float %4282, %4236
  %4301 = fsub fast float %4163, %4300
  %4302 = fmul fast float %4287, %4236
  %4303 = fadd fast float %4302, %4163
  %4304 = fmul fast float %4299, %4237
  %4305 = fadd fast float %4304, %4164
  %4306 = fmul fast float %4294, %4237
  %4307 = fsub fast float %4164, %4306
  %4308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %4301, float %4307, float %4225, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4309 = extractvalue %dx.types.ResRet.f32 %4308, 0
  %4310 = extractvalue %dx.types.ResRet.f32 %4308, 1
  %4311 = extractvalue %dx.types.ResRet.f32 %4308, 2
  %4312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %4303, float %4307, float %4225, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4313 = extractvalue %dx.types.ResRet.f32 %4312, 0
  %4314 = extractvalue %dx.types.ResRet.f32 %4312, 1
  %4315 = extractvalue %dx.types.ResRet.f32 %4312, 2
  %4316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %4301, float %4305, float %4225, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4317 = extractvalue %dx.types.ResRet.f32 %4316, 0
  %4318 = extractvalue %dx.types.ResRet.f32 %4316, 1
  %4319 = extractvalue %dx.types.ResRet.f32 %4316, 2
  %4320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %4303, float %4305, float %4225, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4321 = extractvalue %dx.types.ResRet.f32 %4320, 0
  %4322 = extractvalue %dx.types.ResRet.f32 %4320, 1
  %4323 = extractvalue %dx.types.ResRet.f32 %4320, 2
  %4324 = fsub fast float %4317, %4309
  %4325 = fsub fast float %4318, %4310
  %4326 = fsub fast float %4319, %4311
  %4327 = fmul fast float %4324, %4297
  %4328 = fmul fast float %4325, %4297
  %4329 = fmul fast float %4326, %4297
  %4330 = fadd fast float %4327, %4309
  %4331 = fadd fast float %4328, %4310
  %4332 = fadd fast float %4329, %4311
  %4333 = fsub fast float %4321, %4313
  %4334 = fsub fast float %4322, %4314
  %4335 = fsub fast float %4323, %4315
  %4336 = fmul fast float %4333, %4297
  %4337 = fmul fast float %4334, %4297
  %4338 = fmul fast float %4335, %4297
  %4339 = fsub fast float %4313, %4330
  %4340 = fadd fast float %4339, %4336
  %4341 = fsub fast float %4314, %4331
  %4342 = fadd fast float %4341, %4337
  %4343 = fsub fast float %4315, %4332
  %4344 = fadd fast float %4343, %4338
  %4345 = fmul fast float %4340, %4285
  %4346 = fmul fast float %4342, %4285
  %4347 = fmul fast float %4344, %4285
  %4348 = fadd fast float %4345, %4330
  %4349 = fadd fast float %4346, %4331
  %4350 = fadd fast float %4347, %4332
  %4351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4352 = extractvalue %dx.types.CBufRet.f32 %4351, 1
  %4353 = fmul fast float %4348, %4352
  %4354 = fmul fast float %4349, %4352
  %4355 = fmul fast float %4350, %4352
  br label %4356

; <label>:4356                                    ; preds = %4188, %4157
  %4357 = phi float [ %4227, %4188 ], [ 1.000000e+00, %4157 ]
  %4358 = phi float [ %4228, %4188 ], [ 1.000000e+00, %4157 ]
  %4359 = phi float [ %4229, %4188 ], [ 1.000000e+00, %4157 ]
  %4360 = phi float [ %4353, %4188 ], [ 0.000000e+00, %4157 ]
  %4361 = phi float [ %4354, %4188 ], [ 0.000000e+00, %4157 ]
  %4362 = phi float [ %4355, %4188 ], [ 0.000000e+00, %4157 ]
  %4363 = fmul fast float %4360, %4142
  %4364 = fmul fast float %4361, %4143
  %4365 = fmul fast float %4362, %4144
  %4366 = call float @dx.op.dot3.f32(i32 55, float %4357, float %4358, float %4359, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4367 = call float @dx.op.dot3.f32(i32 55, float %4363, float %4364, float %4365, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4368 = select i1 %226, float %4366, float %4357
  %4369 = select i1 %226, float %4366, float %4358
  %4370 = select i1 %226, float 1.000000e+00, float %4359
  %4371 = select i1 %226, float %4367, float %4363
  %4372 = select i1 %226, float 0.000000e+00, float %4364
  %4373 = select i1 %226, float 0.000000e+00, float %4365
  %4374 = fmul fast float %4368, %4147
  %4375 = fmul fast float %4369, %4148
  %4376 = fmul fast float %4370, %4149
  %4377 = fadd fast float %4374, %4371
  %4378 = fadd fast float %4375, %4372
  %4379 = fadd fast float %4373, %4376
  %4380 = fmul fast float %4368, %4110
  %4381 = fmul fast float %4369, %4111
  %4382 = fmul fast float %4370, %4112
  %4383 = fmul fast float %104, %4159
  %4384 = fmul fast float %106, %4160
  %4385 = fsub fast float 1.000000e+00, %4383
  %4386 = fsub fast float 1.000000e+00, %4384
  %4387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %4388 = extractvalue %dx.types.CBufRet.f32 %4387, 0
  %4389 = extractvalue %dx.types.CBufRet.f32 %4387, 1
  %4390 = extractvalue %dx.types.CBufRet.f32 %4387, 2
  %4391 = fmul fast float %4385, %4388
  %4392 = fmul fast float %4385, %4389
  %4393 = fmul fast float %4385, %4390
  %4394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %4395 = extractvalue %dx.types.CBufRet.f32 %4394, 0
  %4396 = extractvalue %dx.types.CBufRet.f32 %4394, 1
  %4397 = extractvalue %dx.types.CBufRet.f32 %4394, 2
  %4398 = fmul fast float %4386, %4395
  %4399 = fmul fast float %4386, %4396
  %4400 = fmul fast float %4386, %4397
  %4401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %4402 = extractvalue %dx.types.CBufRet.f32 %4401, 0
  %4403 = extractvalue %dx.types.CBufRet.f32 %4401, 1
  %4404 = extractvalue %dx.types.CBufRet.f32 %4401, 2
  %4405 = fadd fast float %4398, %4402
  %4406 = fadd fast float %4405, %4391
  %4407 = fadd fast float %4399, %4403
  %4408 = fadd fast float %4407, %4392
  %4409 = fadd fast float %4400, %4404
  %4410 = fadd fast float %4409, %4393
  %4411 = fmul fast float %4406, %187
  %4412 = fmul fast float %4408, %187
  %4413 = fmul fast float %4410, %187
  br label %4414

; <label>:4414                                    ; preds = %4356, %4109
  %4415 = phi float [ %4411, %4356 ], [ %134, %4109 ]
  %4416 = phi float [ %4412, %4356 ], [ %135, %4109 ]
  %4417 = phi float [ %4413, %4356 ], [ %136, %4109 ]
  %4418 = phi float [ %187, %4356 ], [ %66, %4109 ]
  %4419 = phi float [ %4377, %4356 ], [ %4147, %4109 ]
  %4420 = phi float [ %4378, %4356 ], [ %4148, %4109 ]
  %4421 = phi float [ %4379, %4356 ], [ %4149, %4109 ]
  %4422 = phi float [ %4380, %4356 ], [ %4110, %4109 ]
  %4423 = phi float [ %4381, %4356 ], [ %4111, %4109 ]
  %4424 = phi float [ %4382, %4356 ], [ %4112, %4109 ]
  %4425 = phi float [ %4357, %4356 ], [ 1.000000e+00, %4109 ]
  br i1 %4156, label %5580, label %4426

; <label>:4426                                    ; preds = %4414
  %4427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %4428 = extractvalue %dx.types.CBufRet.f32 %4427, 0
  %4429 = extractvalue %dx.types.CBufRet.f32 %4427, 1
  %4430 = extractvalue %dx.types.CBufRet.f32 %4427, 2
  %4431 = extractvalue %dx.types.CBufRet.f32 %4427, 3
  %4432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.f32 %4432, 0
  %4434 = extractvalue %dx.types.CBufRet.f32 %4432, 1
  %4435 = extractvalue %dx.types.CBufRet.f32 %4432, 2
  %4436 = extractvalue %dx.types.CBufRet.f32 %4432, 3
  %4437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %4438 = extractvalue %dx.types.CBufRet.f32 %4437, 0
  %4439 = extractvalue %dx.types.CBufRet.f32 %4437, 1
  %4440 = extractvalue %dx.types.CBufRet.f32 %4437, 2
  %4441 = extractvalue %dx.types.CBufRet.f32 %4437, 3
  %4442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %4443 = extractvalue %dx.types.CBufRet.f32 %4442, 0
  %4444 = extractvalue %dx.types.CBufRet.f32 %4442, 1
  %4445 = extractvalue %dx.types.CBufRet.f32 %4442, 2
  %4446 = extractvalue %dx.types.CBufRet.f32 %4442, 3
  %4447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %4448 = extractvalue %dx.types.CBufRet.f32 %4447, 3
  %4449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %4450 = extractvalue %dx.types.CBufRet.f32 %4449, 3
  %4451 = extractvalue %dx.types.CBufRet.f32 %4449, 0
  %4452 = extractvalue %dx.types.CBufRet.f32 %4449, 1
  %4453 = extractvalue %dx.types.CBufRet.f32 %4449, 2
  %4454 = fcmp fast olt float %4453, -5.000000e-01
  %4455 = call float @dx.op.dot3.f32(i32 55, float %4415, float %4416, float %4417, float %4415, float %4416, float %4417)  ; Dot3(ax,ay,az,bx,by,bz)
  %4456 = call float @dx.op.unary.f32(i32 25, float %4455)  ; Rsqrt(value)
  %4457 = fmul fast float %4456, %4455
  %4458 = fmul fast float %4456, %4415
  %4459 = fmul fast float %4456, %4416
  %4460 = fmul fast float %4456, %4417
  %4461 = fadd fast float %4457, %4431
  %4462 = call float @dx.op.dot3.f32(i32 55, float %4458, float %4459, float %4460, float %4428, float %4429, float %4430)  ; Dot3(ax,ay,az,bx,by,bz)
  %4463 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4464 = extractvalue %dx.types.CBufRet.i32 %4463, 1
  %4465 = and i32 %4464, 1
  %4466 = icmp ne i32 %4465, 0
  %4467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.f32 %4467, 2
  %4469 = fcmp fast ogt float %4468, 0.000000e+00
  %4470 = and i1 %4466, %4469
  br i1 %4470, label %4471, label %4877, !dx.controlflow.hints !111

; <label>:4471                                    ; preds = %4426
  %4472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %4473 = extractvalue %dx.types.CBufRet.f32 %4472, 3
  %4474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.f32 %4474, 2
  %4476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4477 = extractvalue %dx.types.CBufRet.f32 %4476, 2
  %4478 = fsub fast float %4475, %4477
  %4479 = and i32 %4464, 2
  %4480 = extractvalue %dx.types.CBufRet.i32 %4463, 0
  %4481 = call i32 @dx.op.binary.i32(i32 40, i32 %4480, i32 3)  ; UMin(a,b)
  %4482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %4483 = extractvalue %dx.types.CBufRet.f32 %4482, 0
  %4484 = extractvalue %dx.types.CBufRet.f32 %4482, 1
  %4485 = extractvalue %dx.types.CBufRet.f32 %4476, 0
  %4486 = extractvalue %dx.types.CBufRet.f32 %4476, 1
  %4487 = fsub fast float %4483, %4485
  %4488 = fsub fast float %4484, %4486
  %4489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %4490 = extractvalue %dx.types.CBufRet.f32 %4489, 0
  %4491 = fcmp fast ogt float %4490, 0.000000e+00
  %4492 = fsub fast float -0.000000e+00, %4487
  %4493 = fsub fast float -0.000000e+00, %4488
  %4494 = call float @dx.op.dot2.f32(i32 54, float %4458, float %4459, float %4458, float %4459)  ; Dot2(ax,ay,bx,by)
  %4495 = call float @dx.op.dot2.f32(i32 54, float %4458, float %4459, float %4492, float %4493)  ; Dot2(ax,ay,bx,by)
  %4496 = fmul fast float %4495, 2.000000e+00
  %4497 = call float @dx.op.dot2.f32(i32 54, float %4492, float %4493, float %4492, float %4493)  ; Dot2(ax,ay,bx,by)
  %4498 = fmul fast float %4490, %4490
  %4499 = fsub fast float %4497, %4498
  %4500 = fmul fast float %4496, %4496
  %4501 = fmul fast float %4494, 4.000000e+00
  %4502 = fmul fast float %4501, %4499
  %4503 = fsub fast float %4500, %4502
  %4504 = fcmp fast ogt float %4503, 0.000000e+00
  br i1 %4504, label %4505, label %4520

; <label>:4505                                    ; preds = %4471
  %4506 = fcmp fast ogt float %4496, 0.000000e+00
  %4507 = call float @dx.op.unary.f32(i32 24, float %4503)  ; Sqrt(value)
  %4508 = fsub fast float -0.000000e+00, %4507
  %4509 = select i1 %4506, float %4507, float %4508
  %4510 = fadd fast float %4509, %4496
  %4511 = fmul float %4510, -5.000000e-01
  %4512 = fdiv fast float %4511, %4494
  %4513 = call float @dx.op.binary.f32(i32 35, float %4512, float 0.000000e+00)  ; FMax(a,b)
  %4514 = call float @dx.op.binary.f32(i32 36, float %4457, float %4513)  ; FMin(a,b)
  %4515 = fdiv fast float %4499, %4511
  %4516 = call float @dx.op.binary.f32(i32 35, float %4515, float 0.000000e+00)  ; FMax(a,b)
  %4517 = call float @dx.op.binary.f32(i32 36, float %4457, float %4516)  ; FMin(a,b)
  %4518 = call float @dx.op.binary.f32(i32 36, float %4514, float %4517)  ; FMin(a,b)
  %4519 = call float @dx.op.binary.f32(i32 35, float %4514, float %4517)  ; FMax(a,b)
  br label %4520

; <label>:4520                                    ; preds = %4505, %4471
  %4521 = phi float [ %4519, %4505 ], [ -1.000000e+00, %4471 ]
  %4522 = phi float [ %4518, %4505 ], [ -1.000000e+00, %4471 ]
  %4523 = phi i1 [ true, %4505 ], [ false, %4471 ]
  %4524 = and i1 %4491, %4523
  br i1 %4524, label %4525, label %4527

; <label>:4525                                    ; preds = %4520
  %4526 = fcmp fast oeq float %4522, %4521
  br i1 %4526, label %4830, label %4528

; <label>:4527                                    ; preds = %4520
  br i1 %4491, label %4830, label %4528

; <label>:4528                                    ; preds = %4527, %4525
  %4529 = phi float [ %4457, %4527 ], [ %4521, %4525 ]
  %4530 = phi float [ 0.000000e+00, %4527 ], [ %4522, %4525 ]
  %4531 = icmp ne i32 %4479, 0
  %4532 = fmul fast float %4529, %4460
  %4533 = fadd fast float %4532, %4473
  %4534 = fmul fast float %4533, %4529
  %4535 = select i1 %4531, float 0.000000e+00, float %4534
  %4536 = fcmp fast oeq float %4460, 0.000000e+00
  %4537 = fdiv fast float %4478, %4460
  %4538 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4537)  ; FMax(a,b)
  %4539 = select i1 %4536, float %4529, float %4538
  %4540 = call float @dx.op.binary.f32(i32 36, float %4529, float %4539)  ; FMin(a,b)
  %4541 = fcmp fast ogt float %4460, 0.000000e+00
  %4542 = fcmp fast olt float %4478, 0.000000e+00
  br i1 %4541, label %4543, label %4600

; <label>:4543                                    ; preds = %4528
  %4544 = icmp eq i32 %4479, 0
  br i1 %4542, label %4545, label %4589

; <label>:4545                                    ; preds = %4543
  %4546 = select i1 %4544, float %4529, float 0.000000e+00
  %4547 = fsub fast float -0.000000e+00, %4546
  %4548 = call float @dx.op.unary.f32(i32 6, float %4547)  ; FAbs(value)
  %4549 = fmul fast float %4546, %4460
  %4550 = fadd fast float %4549, %4473
  %4551 = fmul fast float %4548, %4550
  %4552 = fsub fast float %4535, %4551
  %4553 = fsub fast float %4529, %4548
  %4554 = select i1 %4544, float %4553, float 0.000000e+00
  %4555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4556 = extractvalue %dx.types.CBufRet.f32 %4555, 0
  %4557 = extractvalue %dx.types.CBufRet.f32 %4555, 1
  %4558 = extractvalue %dx.types.CBufRet.f32 %4555, 2
  %4559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4560 = extractvalue %dx.types.CBufRet.f32 %4559, 0
  %4561 = extractvalue %dx.types.CBufRet.f32 %4559, 1
  %4562 = extractvalue %dx.types.CBufRet.f32 %4559, 2
  %4563 = extractvalue %dx.types.CBufRet.f32 %4559, 3
  %4564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4565 = extractvalue %dx.types.CBufRet.f32 %4564, 3
  %4566 = call float @dx.op.binary.f32(i32 36, float %4552, float %4565)  ; FMin(a,b)
  %4567 = fmul fast float %4563, %4554
  %4568 = call float @dx.op.unary.f32(i32 7, float %4567)  ; Saturate(value)
  %4569 = fsub fast float %4560, %4556
  %4570 = fsub fast float %4561, %4557
  %4571 = fsub fast float %4562, %4558
  %4572 = fmul fast float %4568, %4569
  %4573 = fmul fast float %4568, %4570
  %4574 = fmul fast float %4568, %4571
  %4575 = fadd fast float %4572, %4556
  %4576 = fadd fast float %4573, %4557
  %4577 = fadd fast float %4574, %4558
  %4578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4579 = extractvalue %dx.types.CBufRet.f32 %4578, 0
  %4580 = extractvalue %dx.types.CBufRet.f32 %4578, 1
  %4581 = fadd fast float %4580, %4579
  %4582 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4583 = extractvalue %dx.types.CBufRet.f32 %4578, 2
  %4584 = extractvalue %dx.types.CBufRet.f32 %4578, 3
  %4585 = fadd fast float %4584, %4583
  %4586 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4587 = fmul fast float %4582, %4566
  %4588 = fmul fast float %4587, %4586
  br label %4830

; <label>:4589                                    ; preds = %4543
  br i1 %4544, label %4590, label %4611

; <label>:4590                                    ; preds = %4589
  %4591 = call float @dx.op.binary.f32(i32 36, float %4540, float %4530)  ; FMin(a,b)
  %4592 = fsub fast float %4540, %4591
  %4593 = fsub fast float %4592, %4529
  %4594 = call float @dx.op.unary.f32(i32 6, float %4593)  ; FAbs(value)
  %4595 = fadd fast float %4592, %4529
  %4596 = fmul fast float %4595, %4460
  %4597 = fadd fast float %4596, %4473
  %4598 = fmul fast float %4597, %4594
  %4599 = fsub fast float %4535, %4598
  br label %4611

; <label>:4600                                    ; preds = %4528
  br i1 %4542, label %4601, label %4611

; <label>:4601                                    ; preds = %4600
  %4602 = call float @dx.op.binary.f32(i32 35, float %4530, float %4540)  ; FMax(a,b)
  %4603 = icmp eq i32 %4479, 0
  %4604 = select i1 %4603, float %4540, float 0.000000e+00
  %4605 = fsub fast float -0.000000e+00, %4604
  %4606 = call float @dx.op.unary.f32(i32 6, float %4605)  ; FAbs(value)
  %4607 = fmul fast float %4604, %4460
  %4608 = fadd fast float %4607, %4473
  %4609 = fmul fast float %4606, %4608
  %4610 = fsub fast float %4535, %4609
  br label %4611

; <label>:4611                                    ; preds = %4601, %4600, %4590, %4589
  %4612 = phi float [ %4530, %4589 ], [ %4530, %4590 ], [ %4602, %4601 ], [ %4530, %4600 ]
  %4613 = phi float [ 0.000000e+00, %4589 ], [ %4594, %4590 ], [ %4606, %4601 ], [ 0.000000e+00, %4600 ]
  %4614 = phi float [ %4535, %4589 ], [ %4599, %4590 ], [ %4610, %4601 ], [ %4535, %4600 ]
  %4615 = phi float [ %4540, %4589 ], [ %4540, %4590 ], [ %4529, %4601 ], [ %4529, %4600 ]
  %4616 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 0
  store float -1.000000e+00, float* %4616, align 4, !tbaa !101, !noalias !112
  %4617 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 1
  store float -1.000000e+00, float* %4617, align 4, !tbaa !101, !noalias !112
  %4618 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 2
  store float -1.000000e+00, float* %4618, align 4, !tbaa !101, !noalias !112
  %4619 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 0
  store float -1.000000e+00, float* %4619, align 4, !tbaa !101, !noalias !112
  %4620 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 1
  store float -1.000000e+00, float* %4620, align 4, !tbaa !101, !noalias !112
  %4621 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 2
  store float -1.000000e+00, float* %4621, align 4, !tbaa !101, !noalias !112
  %4622 = icmp sgt i32 %4481, 0
  br i1 %4622, label %4623, label %4684

; <label>:4623                                    ; preds = %4611
  br label %4624

; <label>:4624                                    ; preds = %4673, %4623
  %4625 = phi i32 [ %4674, %4673 ], [ 0, %4623 ]
  %4626 = phi i32 [ %4675, %4673 ], [ 0, %4623 ]
  %4627 = add nuw i32 %4626, 171
  %4628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 %4627)  ; CBufferLoadLegacy(handle,regIndex)
  %4629 = extractvalue %dx.types.CBufRet.f32 %4628, 0
  %4630 = extractvalue %dx.types.CBufRet.f32 %4628, 1
  %4631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4632 = extractvalue %dx.types.CBufRet.f32 %4631, 0
  %4633 = extractvalue %dx.types.CBufRet.f32 %4631, 1
  %4634 = fsub fast float %4629, %4632
  %4635 = fsub fast float %4630, %4633
  %4636 = extractvalue %dx.types.CBufRet.f32 %4628, 2
  %4637 = fsub fast float -0.000000e+00, %4634
  %4638 = fsub fast float -0.000000e+00, %4635
  %4639 = call float @dx.op.dot2.f32(i32 54, float %4458, float %4459, float %4637, float %4638)  ; Dot2(ax,ay,bx,by)
  %4640 = fmul fast float %4639, 2.000000e+00
  %4641 = call float @dx.op.dot2.f32(i32 54, float %4637, float %4638, float %4637, float %4638)  ; Dot2(ax,ay,bx,by)
  %4642 = fmul fast float %4636, %4636
  %4643 = fsub fast float %4641, %4642
  %4644 = fmul fast float %4640, %4640
  %4645 = fmul fast float %4501, %4643
  %4646 = fsub fast float %4644, %4645
  %4647 = fcmp fast ogt float %4646, 0.000000e+00
  br i1 %4647, label %4648, label %4663

; <label>:4648                                    ; preds = %4624
  %4649 = fcmp fast ogt float %4640, 0.000000e+00
  %4650 = call float @dx.op.unary.f32(i32 24, float %4646)  ; Sqrt(value)
  %4651 = fsub fast float -0.000000e+00, %4650
  %4652 = select i1 %4649, float %4650, float %4651
  %4653 = fadd fast float %4652, %4640
  %4654 = fmul float %4653, -5.000000e-01
  %4655 = fdiv fast float %4654, %4494
  %4656 = call float @dx.op.binary.f32(i32 35, float %4655, float 0.000000e+00)  ; FMax(a,b)
  %4657 = call float @dx.op.binary.f32(i32 36, float %4529, float %4656)  ; FMin(a,b)
  %4658 = fdiv fast float %4643, %4654
  %4659 = call float @dx.op.binary.f32(i32 35, float %4658, float 0.000000e+00)  ; FMax(a,b)
  %4660 = call float @dx.op.binary.f32(i32 36, float %4529, float %4659)  ; FMin(a,b)
  %4661 = call float @dx.op.binary.f32(i32 36, float %4657, float %4660)  ; FMin(a,b)
  %4662 = call float @dx.op.binary.f32(i32 35, float %4657, float %4660)  ; FMax(a,b)
  br label %4663

; <label>:4663                                    ; preds = %4648, %4624
  %4664 = phi float [ %4662, %4648 ], [ -1.000000e+00, %4624 ]
  %4665 = phi float [ %4661, %4648 ], [ -1.000000e+00, %4624 ]
  %4666 = phi i1 [ true, %4648 ], [ false, %4624 ]
  br i1 %4666, label %4667, label %4673

; <label>:4667                                    ; preds = %4663
  %4668 = call float @dx.op.binary.f32(i32 35, float %4612, float %4665)  ; FMax(a,b)
  %4669 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 %4626
  store float %4668, float* %4669, align 4, !tbaa !101, !noalias !112
  %4670 = call float @dx.op.binary.f32(i32 35, float %4612, float %4664)  ; FMax(a,b)
  %4671 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 %4626
  store float %4670, float* %4671, align 4, !tbaa !101, !noalias !112
  %4672 = add nsw i32 %4625, 1
  br label %4673

; <label>:4673                                    ; preds = %4667, %4663
  %4674 = phi i32 [ %4672, %4667 ], [ %4625, %4663 ]
  %4675 = add nuw nsw i32 %4626, 1
  %4676 = icmp eq i32 %4675, %4481
  br i1 %4676, label %4677, label %4624

; <label>:4677                                    ; preds = %4673
  %4678 = load float, float* %4618, align 4, !tbaa !101, !alias.scope !128, !noalias !131
  %4679 = load float, float* %4617, align 4, !tbaa !101, !alias.scope !134, !noalias !135
  %4680 = load float, float* %4616, align 4, !tbaa !101, !alias.scope !136, !noalias !137
  %4681 = load float, float* %4621, align 4, !tbaa !101, !alias.scope !138, !noalias !141
  %4682 = load float, float* %4620, align 4, !tbaa !101, !alias.scope !144, !noalias !145
  %4683 = load float, float* %4619, align 4, !tbaa !101, !alias.scope !146, !noalias !147
  br label %4684

; <label>:4684                                    ; preds = %4677, %4611
  %4685 = phi float [ -1.000000e+00, %4611 ], [ %4683, %4677 ]
  %4686 = phi float [ -1.000000e+00, %4611 ], [ %4682, %4677 ]
  %4687 = phi float [ -1.000000e+00, %4611 ], [ %4681, %4677 ]
  %4688 = phi float [ -1.000000e+00, %4611 ], [ %4680, %4677 ]
  %4689 = phi float [ -1.000000e+00, %4611 ], [ %4679, %4677 ]
  %4690 = phi float [ -1.000000e+00, %4611 ], [ %4678, %4677 ]
  %4691 = phi i32 [ 0, %4611 ], [ %4674, %4677 ]
  %4692 = call float @dx.op.binary.f32(i32 36, float %4689, float %4690)  ; FMin(a,b)
  %4693 = call float @dx.op.binary.f32(i32 36, float %4688, float %4692)  ; FMin(a,b)
  %4694 = call float @dx.op.binary.f32(i32 35, float %4688, float %4689)  ; FMax(a,b)
  %4695 = call float @dx.op.binary.f32(i32 36, float %4694, float %4690)  ; FMin(a,b)
  %4696 = call float @dx.op.binary.f32(i32 36, float %4688, float %4689)  ; FMin(a,b)
  %4697 = call float @dx.op.binary.f32(i32 35, float %4696, float %4695)  ; FMax(a,b)
  %4698 = call float @dx.op.binary.f32(i32 35, float %4689, float %4690)  ; FMax(a,b)
  %4699 = call float @dx.op.binary.f32(i32 35, float %4688, float %4698)  ; FMax(a,b)
  store float %4693, float* %4616, align 4, !tbaa !101, !alias.scope !136, !noalias !137
  store float %4697, float* %4617, align 4, !tbaa !101, !alias.scope !134, !noalias !135
  store float %4699, float* %4618, align 4, !tbaa !101, !alias.scope !128, !noalias !131
  %4700 = call float @dx.op.binary.f32(i32 36, float %4686, float %4687)  ; FMin(a,b)
  %4701 = call float @dx.op.binary.f32(i32 36, float %4685, float %4700)  ; FMin(a,b)
  %4702 = call float @dx.op.binary.f32(i32 35, float %4685, float %4686)  ; FMax(a,b)
  %4703 = call float @dx.op.binary.f32(i32 36, float %4702, float %4687)  ; FMin(a,b)
  %4704 = call float @dx.op.binary.f32(i32 36, float %4685, float %4686)  ; FMin(a,b)
  %4705 = call float @dx.op.binary.f32(i32 35, float %4704, float %4703)  ; FMax(a,b)
  %4706 = call float @dx.op.binary.f32(i32 35, float %4686, float %4687)  ; FMax(a,b)
  %4707 = call float @dx.op.binary.f32(i32 35, float %4685, float %4706)  ; FMax(a,b)
  store float %4701, float* %4619, align 4, !tbaa !101, !alias.scope !146, !noalias !147
  store float %4705, float* %4620, align 4, !tbaa !101, !alias.scope !144, !noalias !145
  store float %4707, float* %4621, align 4, !tbaa !101, !alias.scope !138, !noalias !141
  %4708 = sub nsw i32 3, %4691
  %4709 = icmp sgt i32 %4708, 2
  br i1 %4709, label %4710, label %4748

; <label>:4710                                    ; preds = %4684
  %4711 = icmp eq i32 %4479, 0
  %4712 = fsub fast float %4529, %4613
  %4713 = select i1 %4711, float %4712, float %4613
  %4714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4715 = extractvalue %dx.types.CBufRet.f32 %4714, 0
  %4716 = extractvalue %dx.types.CBufRet.f32 %4714, 1
  %4717 = extractvalue %dx.types.CBufRet.f32 %4714, 2
  %4718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4719 = extractvalue %dx.types.CBufRet.f32 %4718, 0
  %4720 = extractvalue %dx.types.CBufRet.f32 %4718, 1
  %4721 = extractvalue %dx.types.CBufRet.f32 %4718, 2
  %4722 = extractvalue %dx.types.CBufRet.f32 %4718, 3
  %4723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4724 = extractvalue %dx.types.CBufRet.f32 %4723, 3
  %4725 = call float @dx.op.binary.f32(i32 36, float %4614, float %4724)  ; FMin(a,b)
  %4726 = fmul fast float %4722, %4713
  %4727 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4728 = fsub fast float %4719, %4715
  %4729 = fsub fast float %4720, %4716
  %4730 = fsub fast float %4721, %4717
  %4731 = fmul fast float %4727, %4728
  %4732 = fmul fast float %4727, %4729
  %4733 = fmul fast float %4727, %4730
  %4734 = fadd fast float %4731, %4715
  %4735 = fadd fast float %4732, %4716
  %4736 = fadd fast float %4733, %4717
  %4737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4738 = extractvalue %dx.types.CBufRet.f32 %4737, 0
  %4739 = extractvalue %dx.types.CBufRet.f32 %4737, 1
  %4740 = fadd fast float %4739, %4738
  %4741 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4742 = extractvalue %dx.types.CBufRet.f32 %4737, 2
  %4743 = extractvalue %dx.types.CBufRet.f32 %4737, 3
  %4744 = fadd fast float %4743, %4742
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4746 = fmul fast float %4741, %4725
  %4747 = fmul fast float %4746, %4745
  br label %4830

; <label>:4748                                    ; preds = %4684
  %4749 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 %4708
  %4750 = load float, float* %4749, align 4, !tbaa !101, !noalias !112
  %4751 = fcmp fast olt float %4750, %4615
  %4752 = icmp sgt i32 %4691, 0
  %4753 = and i1 %4752, %4751
  br i1 %4753, label %4754, label %4791

; <label>:4754                                    ; preds = %4748
  br label %4755

; <label>:4755                                    ; preds = %4784, %4754
  %4756 = phi float [ %4785, %4784 ], [ %4613, %4754 ]
  %4757 = phi float [ %4786, %4784 ], [ %4614, %4754 ]
  %4758 = phi float [ %4766, %4784 ], [ %4750, %4754 ]
  %4759 = phi i32 [ %4763, %4784 ], [ %4708, %4754 ]
  %4760 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 %4759
  %4761 = load float, float* %4760, align 4, !tbaa !101, !noalias !112
  %4762 = icmp slt i32 %4759, 2
  %4763 = add nsw i32 %4759, 1
  %4764 = getelementptr inbounds [3 x float], [3 x float]* %72, i32 0, i32 %4763
  %4765 = load float, float* %4764, align 4, !tbaa !101, !noalias !112
  %4766 = select i1 %4762, float %4765, float %4529
  %4767 = call float @dx.op.binary.f32(i32 36, float %4766, float %4761)  ; FMin(a,b)
  %4768 = call float @dx.op.binary.f32(i32 36, float %4615, float %4767)  ; FMin(a,b)
  %4769 = icmp eq i32 %4479, 0
  %4770 = fadd fast float %4768, %4758
  %4771 = fmul fast float %4770, %4460
  %4772 = fadd fast float %4771, %4473
  br i1 %4769, label %4778, label %4773

; <label>:4773                                    ; preds = %4755
  %4774 = fsub fast float %4768, %4758
  %4775 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4774)  ; FMax(a,b)
  %4776 = fmul fast float %4775, %4772
  %4777 = fadd fast float %4776, %4757
  br label %4784

; <label>:4778                                    ; preds = %4755
  %4779 = fsub fast float %4758, %4768
  %4780 = call float @dx.op.unary.f32(i32 6, float %4779)  ; FAbs(value)
  %4781 = fadd fast float %4780, %4756
  %4782 = fmul fast float %4780, %4772
  %4783 = fsub fast float %4757, %4782
  br label %4784

; <label>:4784                                    ; preds = %4778, %4773
  %4785 = phi float [ %4775, %4773 ], [ %4781, %4778 ]
  %4786 = phi float [ %4777, %4773 ], [ %4783, %4778 ]
  %4787 = fcmp fast olt float %4766, %4615
  %4788 = icmp slt i32 %4763, 3
  %4789 = and i1 %4788, %4787
  br i1 %4789, label %4755, label %4790

; <label>:4790                                    ; preds = %4784
  br label %4791

; <label>:4791                                    ; preds = %4790, %4748
  %4792 = phi float [ %4613, %4748 ], [ %4785, %4790 ]
  %4793 = phi float [ %4614, %4748 ], [ %4786, %4790 ]
  %4794 = fsub fast float %4529, %4792
  %4795 = select i1 %4531, float %4792, float %4794
  %4796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %4797 = extractvalue %dx.types.CBufRet.f32 %4796, 0
  %4798 = extractvalue %dx.types.CBufRet.f32 %4796, 1
  %4799 = extractvalue %dx.types.CBufRet.f32 %4796, 2
  %4800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %4801 = extractvalue %dx.types.CBufRet.f32 %4800, 0
  %4802 = extractvalue %dx.types.CBufRet.f32 %4800, 1
  %4803 = extractvalue %dx.types.CBufRet.f32 %4800, 2
  %4804 = extractvalue %dx.types.CBufRet.f32 %4800, 3
  %4805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %4806 = extractvalue %dx.types.CBufRet.f32 %4805, 3
  %4807 = call float @dx.op.binary.f32(i32 36, float %4793, float %4806)  ; FMin(a,b)
  %4808 = fmul fast float %4804, %4795
  %4809 = call float @dx.op.unary.f32(i32 7, float %4808)  ; Saturate(value)
  %4810 = fsub fast float %4801, %4797
  %4811 = fsub fast float %4802, %4798
  %4812 = fsub fast float %4803, %4799
  %4813 = fmul fast float %4809, %4810
  %4814 = fmul fast float %4809, %4811
  %4815 = fmul fast float %4809, %4812
  %4816 = fadd fast float %4813, %4797
  %4817 = fadd fast float %4814, %4798
  %4818 = fadd fast float %4815, %4799
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 0
  %4821 = extractvalue %dx.types.CBufRet.f32 %4819, 1
  %4822 = fadd fast float %4821, %4820
  %4823 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  %4824 = extractvalue %dx.types.CBufRet.f32 %4819, 2
  %4825 = extractvalue %dx.types.CBufRet.f32 %4819, 3
  %4826 = fadd fast float %4825, %4824
  %4827 = call float @dx.op.unary.f32(i32 7, float %4826)  ; Saturate(value)
  %4828 = fmul fast float %4823, %4807
  %4829 = fmul fast float %4828, %4827
  br label %4830

; <label>:4830                                    ; preds = %4791, %4710, %4545, %4527, %4525
  %4831 = phi float [ %4554, %4545 ], [ %4713, %4710 ], [ %4795, %4791 ], [ 0.000000e+00, %4525 ], [ 0.000000e+00, %4527 ]
  %4832 = phi float [ %4588, %4545 ], [ %4747, %4710 ], [ %4829, %4791 ], [ 0.000000e+00, %4525 ], [ 0.000000e+00, %4527 ]
  %4833 = phi float [ %4575, %4545 ], [ %4734, %4710 ], [ %4816, %4791 ], [ 0.000000e+00, %4525 ], [ 0.000000e+00, %4527 ]
  %4834 = phi float [ %4576, %4545 ], [ %4735, %4710 ], [ %4817, %4791 ], [ 0.000000e+00, %4525 ], [ 0.000000e+00, %4527 ]
  %4835 = phi float [ %4577, %4545 ], [ %4736, %4710 ], [ %4818, %4791 ], [ 0.000000e+00, %4525 ], [ 0.000000e+00, %4527 ]
  %4836 = fmul fast float %4468, %4832
  %4837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4838 = extractvalue %dx.types.CBufRet.f32 %4837, 2
  %4839 = fsub fast float %4475, %4838
  %4840 = fcmp fast olt float %4836, -2.000000e+01
  %4841 = call float @dx.op.unary.f32(i32 21, float %4836)  ; Exp(value)
  %4842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %4843 = extractvalue %dx.types.CBufRet.f32 %4842, 2
  %4844 = extractvalue %dx.types.CBufRet.f32 %4842, 3
  %4845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %4846 = extractvalue %dx.types.CBufRet.f32 %4845, 2
  %4847 = fmul fast float %4844, %4839
  %4848 = call float @dx.op.unary.f32(i32 7, float %4847)  ; Saturate(value)
  %4849 = fsub fast float 1.000000e+00, %4848
  %4850 = fmul fast float %4460, 5.000000e-01
  %4851 = fadd fast float %4850, 5.000000e-01
  %4852 = call float @dx.op.unary.f32(i32 7, float %4851)  ; Saturate(value)
  %4853 = fsub fast float 1.000000e+00, %4852
  %4854 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %4849)  ; FMax(a,b)
  %4855 = fdiv fast float %4853, %4854
  %4856 = fsub fast float %4839, %4417
  %4857 = call float @dx.op.unary.f32(i32 6, float %4856)  ; FAbs(value)
  %4858 = fmul fast float %4857, %4843
  %4859 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4860 = fsub fast float 1.000000e+00, %4858
  %4861 = fmul fast float %4860, %4859
  %4862 = fadd fast float %4861, %4858
  %4863 = fmul fast float %4846, %4839
  %4864 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  %4865 = fsub fast float 1.000000e+00, %4862
  %4866 = fmul fast float %4865, %4864
  %4867 = fadd fast float %4866, %4862
  %4868 = call float @dx.op.unary.f32(i32 7, float %4867)  ; Saturate(value)
  %4869 = fadd fast float %4841, -1.000000e+00
  %4870 = select i1 %4840, float -1.000000e+00, float %4869
  %4871 = fmul fast float %4868, %4870
  %4872 = fadd fast float %4871, 1.000000e+00
  %4873 = fsub fast float -0.000000e+00, %4871
  %4874 = fmul fast float %4833, %4873
  %4875 = fmul fast float %4834, %4873
  %4876 = fmul fast float %4835, %4873
  br label %4877

; <label>:4877                                    ; preds = %4830, %4426
  %4878 = phi float [ %4831, %4830 ], [ 0.000000e+00, %4426 ]
  %4879 = phi float [ %4872, %4830 ], [ 1.000000e+00, %4426 ]
  %4880 = phi float [ %4874, %4830 ], [ 0.000000e+00, %4426 ]
  %4881 = phi float [ %4875, %4830 ], [ 0.000000e+00, %4426 ]
  %4882 = phi float [ %4876, %4830 ], [ 0.000000e+00, %4426 ]
  %4883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %4884 = extractvalue %dx.types.CBufRet.f32 %4883, 1
  %4885 = fsub fast float 1.000000e+00, %4879
  %4886 = fmul fast float %4885, %4461
  %4887 = fmul fast float %4886, %4884
  %4888 = fsub fast float %4461, %4887
  br i1 %4454, label %4889, label %4918, !dx.controlflow.hints !148

; <label>:4889                                    ; preds = %4877
  %4890 = fmul fast float %4462, %4451
  %4891 = fadd fast float %4890, %4452
  %4892 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4893 = fmul fast float %4433, %4888
  %4894 = fsub fast float -0.000000e+00, %4893
  %4895 = fmul fast float %4434, %4888
  %4896 = fsub fast float -0.000000e+00, %4895
  %4897 = call float @dx.op.unary.f32(i32 21, float %4894)  ; Exp(value)
  %4898 = call float @dx.op.unary.f32(i32 21, float %4896)  ; Exp(value)
  %4899 = call float @dx.op.binary.f32(i32 35, float %4441, float %4897)  ; FMax(a,b)
  %4900 = call float @dx.op.binary.f32(i32 35, float %4441, float %4898)  ; FMax(a,b)
  %4901 = fsub fast float %4900, %4899
  %4902 = fmul fast float %4901, %4892
  %4903 = fadd fast float %4902, %4899
  %4904 = call float @dx.op.unary.f32(i32 7, float %4903)  ; Saturate(value)
  %4905 = fsub fast float %4438, %4443
  %4906 = fsub fast float %4439, %4444
  %4907 = fsub fast float %4440, %4445
  %4908 = fmul fast float %4892, %4905
  %4909 = fmul fast float %4892, %4906
  %4910 = fmul fast float %4892, %4907
  %4911 = fadd fast float %4908, %4443
  %4912 = fadd fast float %4909, %4444
  %4913 = fadd fast float %4910, %4445
  %4914 = fsub fast float 1.000000e+00, %4904
  %4915 = fmul fast float %4914, %4911
  %4916 = fmul fast float %4914, %4912
  %4917 = fmul fast float %4914, %4913
  br label %4977

; <label>:4918                                    ; preds = %4877
  %4919 = fmul fast float %4888, %4450
  %4920 = call float @dx.op.unary.f32(i32 7, float %4919)  ; Saturate(value)
  %4921 = fsub fast float 2.000000e+00, %4920
  %4922 = fmul fast float %4920, 9.921875e-01
  %4923 = fmul fast float %4922, %4921
  %4924 = fadd fast float %4923, 3.906250e-03
  %4925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4924, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4926 = extractvalue %dx.types.ResRet.f32 %4925, 0
  %4927 = fsub fast float %4920, %4926
  %4928 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4927)  ; FMax(a,b)
  %4929 = fmul fast float %4436, %4417
  %4930 = call float @dx.op.unary.f32(i32 6, float %4929)  ; FAbs(value)
  %4931 = fcmp fast ogt float %4930, 0x3EB0C6F7A0000000
  br i1 %4931, label %4932, label %4938, !dx.controlflow.hints !149

; <label>:4932                                    ; preds = %4918
  %4933 = fmul fast float %4929, 0xBFF7154760000000
  %4934 = call float @dx.op.unary.f32(i32 21, float %4933)  ; Exp(value)
  %4935 = fsub fast float 1.000000e+00, %4934
  %4936 = fdiv fast float %4935, %4929
  %4937 = fmul fast float %4936, %4446
  br label %4938

; <label>:4938                                    ; preds = %4932, %4918
  %4939 = phi float [ %4937, %4932 ], [ %4446, %4918 ]
  %4940 = fadd fast float %4939, %4448
  %4941 = fmul fast float %4940, %4928
  %4942 = fmul fast float %4433, %4941
  %4943 = fsub fast float -0.000000e+00, %4942
  %4944 = fmul fast float %4434, %4941
  %4945 = fsub fast float -0.000000e+00, %4944
  %4946 = fmul fast float %4435, %4941
  %4947 = fsub fast float -0.000000e+00, %4946
  %4948 = call float @dx.op.unary.f32(i32 21, float %4943)  ; Exp(value)
  %4949 = call float @dx.op.unary.f32(i32 21, float %4945)  ; Exp(value)
  %4950 = call float @dx.op.unary.f32(i32 21, float %4947)  ; Exp(value)
  %4951 = fmul fast float %4462, %4462
  %4952 = fadd fast float %4951, 1.000000e+00
  %4953 = fmul fast float %4952, 0x3FAE8EC8A0000000
  %4954 = fmul fast float %4953, %4443
  %4955 = fmul fast float %4953, %4444
  %4956 = fmul fast float %4953, %4445
  %4957 = fmul fast float %4462, %4441
  %4958 = fsub fast float 1.000000e+00, %4957
  %4959 = fmul fast float %4441, %4441
  %4960 = fsub fast float 1.000000e+00, %4959
  %4961 = fmul fast float %4960, 0x3FB45F3060000000
  %4962 = fmul fast float %4958, %4958
  %4963 = fdiv fast float 1.000000e+00, %4962
  %4964 = fmul fast float %4961, %4963
  %4965 = fmul fast float %4964, %4438
  %4966 = fmul fast float %4964, %4439
  %4967 = fmul fast float %4964, %4440
  %4968 = fadd fast float %4965, %4954
  %4969 = fadd fast float %4966, %4955
  %4970 = fadd fast float %4967, %4956
  %4971 = fsub fast float 1.000000e+00, %4948
  %4972 = fsub fast float 1.000000e+00, %4949
  %4973 = fsub fast float 1.000000e+00, %4950
  %4974 = fmul fast float %4968, %4971
  %4975 = fmul fast float %4969, %4972
  %4976 = fmul fast float %4970, %4973
  br label %4977

; <label>:4977                                    ; preds = %4938, %4889
  %4978 = phi float [ %4915, %4889 ], [ %4974, %4938 ]
  %4979 = phi float [ %4916, %4889 ], [ %4975, %4938 ]
  %4980 = phi float [ %4917, %4889 ], [ %4976, %4938 ]
  %4981 = phi float [ %4904, %4889 ], [ %4948, %4938 ]
  %4982 = phi float [ %4904, %4889 ], [ %4949, %4938 ]
  %4983 = phi float [ %4904, %4889 ], [ %4950, %4938 ]
  br i1 %4470, label %4984, label %5182, !dx.controlflow.hints !150

; <label>:4984                                    ; preds = %4977
  %4985 = extractvalue %dx.types.CBufRet.f32 %4883, 0
  %4986 = fmul fast float %4985, %4885
  %4987 = fsub fast float %4880, %4978
  %4988 = fsub fast float %4881, %4979
  %4989 = fsub fast float %4882, %4980
  %4990 = fmul fast float %4986, %4987
  %4991 = fmul fast float %4986, %4988
  %4992 = fmul fast float %4986, %4989
  %4993 = fadd fast float %4990, %4978
  %4994 = fadd fast float %4991, %4979
  %4995 = fadd fast float %4992, %4980
  %4996 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4981)  ; FMax(a,b)
  %4997 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4982)  ; FMax(a,b)
  %4998 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4983)  ; FMax(a,b)
  %4999 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %4879)  ; FMax(a,b)
  %5000 = call float @dx.op.binary.f32(i32 35, float %4878, float %4888)  ; FMax(a,b)
  %5001 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5000)  ; FMax(a,b)
  %5002 = fdiv fast float %4878, %5001
  %5003 = call float @dx.op.unary.f32(i32 7, float %5002)  ; Saturate(value)
  %5004 = fdiv fast float %4888, %5001
  %5005 = call float @dx.op.unary.f32(i32 7, float %5004)  ; Saturate(value)
  %5006 = fcmp fast une float %4999, 1.000000e+00
  br i1 %5006, label %5007, label %5020, !dx.controlflow.hints !151

; <label>:5007                                    ; preds = %4984
  %5008 = call float @dx.op.unary.f32(i32 23, float %4999)  ; Log(value)
  %5009 = fmul fast float %5008, 0x3FE62E4300000000
  %5010 = fmul fast float %4880, %5009
  %5011 = fsub fast float -0.000000e+00, %5010
  %5012 = fmul fast float %4881, %5009
  %5013 = fsub fast float -0.000000e+00, %5012
  %5014 = fmul fast float %4882, %5009
  %5015 = fsub fast float -0.000000e+00, %5014
  %5016 = fsub fast float 1.000000e+00, %4999
  %5017 = fdiv fast float %5011, %5016
  %5018 = fdiv fast float %5013, %5016
  %5019 = fdiv fast float %5015, %5016
  br label %5020

; <label>:5020                                    ; preds = %5007, %4984
  %5021 = phi float [ %5017, %5007 ], [ %4880, %4984 ]
  %5022 = phi float [ %5018, %5007 ], [ %4881, %4984 ]
  %5023 = phi float [ %5019, %5007 ], [ %4882, %4984 ]
  %5024 = phi float [ %5009, %5007 ], [ 0.000000e+00, %4984 ]
  %5025 = fcmp fast une float %4996, 1.000000e+00
  br i1 %5025, label %5026, label %5033, !dx.controlflow.hints !152

; <label>:5026                                    ; preds = %5020
  %5027 = call float @dx.op.unary.f32(i32 23, float %4996)  ; Log(value)
  %5028 = fmul fast float %5027, 0x3FE62E4300000000
  %5029 = fmul fast float %4993, %5028
  %5030 = fsub fast float -0.000000e+00, %5029
  %5031 = fsub fast float 1.000000e+00, %4996
  %5032 = fdiv fast float %5030, %5031
  br label %5033

; <label>:5033                                    ; preds = %5026, %5020
  %5034 = phi float [ %5032, %5026 ], [ %4993, %5020 ]
  %5035 = phi float [ %5028, %5026 ], [ 0.000000e+00, %5020 ]
  %5036 = fcmp fast une float %4997, 1.000000e+00
  br i1 %5036, label %5037, label %5044, !dx.controlflow.hints !152

; <label>:5037                                    ; preds = %5033
  %5038 = call float @dx.op.unary.f32(i32 23, float %4997)  ; Log(value)
  %5039 = fmul fast float %5038, 0x3FE62E4300000000
  %5040 = fmul fast float %4994, %5039
  %5041 = fsub fast float -0.000000e+00, %5040
  %5042 = fsub fast float 1.000000e+00, %4997
  %5043 = fdiv fast float %5041, %5042
  br label %5044

; <label>:5044                                    ; preds = %5037, %5033
  %5045 = phi float [ %5043, %5037 ], [ %4994, %5033 ]
  %5046 = phi float [ %5039, %5037 ], [ 0.000000e+00, %5033 ]
  %5047 = fcmp fast une float %4998, 1.000000e+00
  br i1 %5047, label %5048, label %5055, !dx.controlflow.hints !152

; <label>:5048                                    ; preds = %5044
  %5049 = call float @dx.op.unary.f32(i32 23, float %4998)  ; Log(value)
  %5050 = fmul fast float %5049, 0x3FE62E4300000000
  %5051 = fmul fast float %4995, %5050
  %5052 = fsub fast float -0.000000e+00, %5051
  %5053 = fsub fast float 1.000000e+00, %4998
  %5054 = fdiv fast float %5052, %5053
  br label %5055

; <label>:5055                                    ; preds = %5048, %5044
  %5056 = phi float [ %5054, %5048 ], [ %4995, %5044 ]
  %5057 = phi float [ %5050, %5048 ], [ 0.000000e+00, %5044 ]
  %5058 = fmul fast float %5021, %5005
  %5059 = fmul fast float %5022, %5005
  %5060 = fmul fast float %5023, %5005
  %5061 = fmul fast float %5024, %5005
  %5062 = fmul fast float %5034, %5003
  %5063 = fmul fast float %5045, %5003
  %5064 = fmul fast float %5056, %5003
  %5065 = fmul fast float %5035, %5003
  %5066 = fmul fast float %5046, %5003
  %5067 = fmul fast float %5057, %5003
  %5068 = fadd fast float %5062, %5058
  %5069 = fadd fast float %5063, %5059
  %5070 = fadd fast float %5064, %5060
  %5071 = fadd fast float %5065, %5061
  %5072 = fadd fast float %5066, %5061
  %5073 = fadd fast float %5067, %5061
  %5074 = fcmp fast une float %5071, 0.000000e+00
  br i1 %5074, label %5075, label %5082, !dx.controlflow.hints !153

; <label>:5075                                    ; preds = %5055
  %5076 = fmul fast float %5071, 0x3FF7154760000000
  %5077 = call float @dx.op.unary.f32(i32 21, float %5076)  ; Exp(value)
  %5078 = fsub fast float 1.000000e+00, %5077
  %5079 = fmul fast float %5068, %5078
  %5080 = fsub fast float -0.000000e+00, %5079
  %5081 = fdiv fast float %5080, %5071
  br label %5082

; <label>:5082                                    ; preds = %5075, %5055
  %5083 = phi float [ %5077, %5075 ], [ 1.000000e+00, %5055 ]
  %5084 = phi float [ %5081, %5075 ], [ %5068, %5055 ]
  %5085 = fcmp fast une float %5072, 0.000000e+00
  br i1 %5085, label %5086, label %5093, !dx.controlflow.hints !153

; <label>:5086                                    ; preds = %5082
  %5087 = fmul fast float %5072, 0x3FF7154760000000
  %5088 = call float @dx.op.unary.f32(i32 21, float %5087)  ; Exp(value)
  %5089 = fsub fast float 1.000000e+00, %5088
  %5090 = fmul fast float %5069, %5089
  %5091 = fsub fast float -0.000000e+00, %5090
  %5092 = fdiv fast float %5091, %5072
  br label %5093

; <label>:5093                                    ; preds = %5086, %5082
  %5094 = phi float [ %5088, %5086 ], [ 1.000000e+00, %5082 ]
  %5095 = phi float [ %5092, %5086 ], [ %5069, %5082 ]
  %5096 = fcmp fast une float %5073, 0.000000e+00
  br i1 %5096, label %5097, label %5104, !dx.controlflow.hints !153

; <label>:5097                                    ; preds = %5093
  %5098 = fmul fast float %5073, 0x3FF7154760000000
  %5099 = call float @dx.op.unary.f32(i32 21, float %5098)  ; Exp(value)
  %5100 = fsub fast float 1.000000e+00, %5099
  %5101 = fmul fast float %5070, %5100
  %5102 = fsub fast float -0.000000e+00, %5101
  %5103 = fdiv fast float %5102, %5073
  br label %5104

; <label>:5104                                    ; preds = %5097, %5093
  %5105 = phi float [ %5099, %5097 ], [ 1.000000e+00, %5093 ]
  %5106 = phi float [ %5103, %5097 ], [ %5070, %5093 ]
  %5107 = fcmp fast ogt float %5003, %5005
  br i1 %5107, label %5108, label %5128

; <label>:5108                                    ; preds = %5104
  %5109 = fsub fast float 1.000000e+00, %5005
  %5110 = fmul fast float %5021, %5109
  %5111 = fmul fast float %5022, %5109
  %5112 = fmul fast float %5023, %5109
  %5113 = fmul fast float %5024, %5109
  %5114 = fcmp fast une float %5113, 0.000000e+00
  br i1 %5114, label %5115, label %5166, !dx.controlflow.hints !154

; <label>:5115                                    ; preds = %5108
  %5116 = fmul fast float %5113, 0x3FF7154760000000
  %5117 = call float @dx.op.unary.f32(i32 21, float %5116)  ; Exp(value)
  %5118 = fsub fast float 1.000000e+00, %5117
  %5119 = fmul fast float %5110, %5118
  %5120 = fsub fast float -0.000000e+00, %5119
  %5121 = fmul fast float %5111, %5118
  %5122 = fsub fast float -0.000000e+00, %5121
  %5123 = fmul fast float %5112, %5118
  %5124 = fsub fast float -0.000000e+00, %5123
  %5125 = fdiv fast float %5120, %5113
  %5126 = fdiv fast float %5122, %5113
  %5127 = fdiv fast float %5124, %5113
  br label %5166

; <label>:5128                                    ; preds = %5104
  %5129 = fsub fast float 1.000000e+00, %5003
  %5130 = fmul fast float %5034, %5129
  %5131 = fmul fast float %5045, %5129
  %5132 = fmul fast float %5056, %5129
  %5133 = fmul fast float %5035, %5129
  %5134 = fmul fast float %5046, %5129
  %5135 = fmul fast float %5057, %5129
  %5136 = fcmp fast une float %5133, 0.000000e+00
  br i1 %5136, label %5137, label %5144, !dx.controlflow.hints !153

; <label>:5137                                    ; preds = %5128
  %5138 = fmul fast float %5133, 0x3FF7154760000000
  %5139 = call float @dx.op.unary.f32(i32 21, float %5138)  ; Exp(value)
  %5140 = fsub fast float 1.000000e+00, %5139
  %5141 = fmul fast float %5130, %5140
  %5142 = fsub fast float -0.000000e+00, %5141
  %5143 = fdiv fast float %5142, %5133
  br label %5144

; <label>:5144                                    ; preds = %5137, %5128
  %5145 = phi float [ %5143, %5137 ], [ %5130, %5128 ]
  %5146 = phi float [ %5139, %5137 ], [ 1.000000e+00, %5128 ]
  %5147 = fcmp fast une float %5134, 0.000000e+00
  br i1 %5147, label %5148, label %5155, !dx.controlflow.hints !153

; <label>:5148                                    ; preds = %5144
  %5149 = fmul fast float %5134, 0x3FF7154760000000
  %5150 = call float @dx.op.unary.f32(i32 21, float %5149)  ; Exp(value)
  %5151 = fsub fast float 1.000000e+00, %5150
  %5152 = fmul fast float %5131, %5151
  %5153 = fsub fast float -0.000000e+00, %5152
  %5154 = fdiv fast float %5153, %5134
  br label %5155

; <label>:5155                                    ; preds = %5148, %5144
  %5156 = phi float [ %5154, %5148 ], [ %5131, %5144 ]
  %5157 = phi float [ %5150, %5148 ], [ 1.000000e+00, %5144 ]
  %5158 = fcmp fast une float %5135, 0.000000e+00
  br i1 %5158, label %5159, label %5166, !dx.controlflow.hints !153

; <label>:5159                                    ; preds = %5155
  %5160 = fmul fast float %5135, 0x3FF7154760000000
  %5161 = call float @dx.op.unary.f32(i32 21, float %5160)  ; Exp(value)
  %5162 = fsub fast float 1.000000e+00, %5161
  %5163 = fmul fast float %5132, %5162
  %5164 = fsub fast float -0.000000e+00, %5163
  %5165 = fdiv fast float %5164, %5135
  br label %5166

; <label>:5166                                    ; preds = %5159, %5155, %5115, %5108
  %5167 = phi float [ %5165, %5159 ], [ %5127, %5115 ], [ %5112, %5108 ], [ %5132, %5155 ]
  %5168 = phi float [ %5156, %5159 ], [ %5126, %5115 ], [ %5111, %5108 ], [ %5156, %5155 ]
  %5169 = phi float [ %5145, %5159 ], [ %5125, %5115 ], [ %5110, %5108 ], [ %5145, %5155 ]
  %5170 = phi float [ %5161, %5159 ], [ %5117, %5115 ], [ 1.000000e+00, %5108 ], [ 1.000000e+00, %5155 ]
  %5171 = phi float [ %5157, %5159 ], [ %5117, %5115 ], [ 1.000000e+00, %5108 ], [ %5157, %5155 ]
  %5172 = phi float [ %5146, %5159 ], [ %5117, %5115 ], [ 1.000000e+00, %5108 ], [ %5146, %5155 ]
  %5173 = fmul fast float %5172, %5084
  %5174 = fmul fast float %5171, %5095
  %5175 = fmul fast float %5170, %5106
  %5176 = fadd fast float %5173, %5169
  %5177 = fadd fast float %5174, %5168
  %5178 = fadd fast float %5175, %5167
  %5179 = fmul fast float %5172, %5083
  %5180 = fmul fast float %5171, %5094
  %5181 = fmul fast float %5170, %5105
  br label %5182

; <label>:5182                                    ; preds = %5166, %4977
  %5183 = phi float [ %5181, %5166 ], [ %4983, %4977 ]
  %5184 = phi float [ %5180, %5166 ], [ %4982, %4977 ]
  %5185 = phi float [ %5179, %5166 ], [ %4981, %4977 ]
  %5186 = phi float [ %5178, %5166 ], [ %4980, %4977 ]
  %5187 = phi float [ %5177, %5166 ], [ %4979, %4977 ]
  %5188 = phi float [ %5176, %5166 ], [ %4978, %4977 ]
  %5189 = fmul fast float %5188, %4142
  %5190 = fmul fast float %5187, %4143
  %5191 = fmul fast float %5186, %4144
  %5192 = fmul fast float %5185, %4425
  %5193 = call float @dx.op.dot3.f32(i32 55, float %5185, float %5184, float %5183, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5194 = call float @dx.op.dot3.f32(i32 55, float %5189, float %5190, float %5191, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5195 = select i1 %226, float %5193, float %5185
  %5196 = select i1 %226, float %5193, float %5184
  %5197 = select i1 %226, float 1.000000e+00, float %5183
  %5198 = select i1 %226, float %5194, float %5189
  %5199 = select i1 %226, float 0.000000e+00, float %5190
  %5200 = select i1 %226, float 0.000000e+00, float %5191
  %5201 = fmul fast float %5195, %4419
  %5202 = fmul fast float %5196, %4420
  %5203 = fmul fast float %5197, %4421
  %5204 = fadd fast float %5201, %5198
  %5205 = fadd fast float %5202, %5199
  %5206 = fadd fast float %5200, %5203
  %5207 = fmul fast float %5195, %4422
  %5208 = fmul fast float %5196, %4423
  %5209 = fmul fast float %5197, %4424
  %5210 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5211 = extractvalue %dx.types.CBufRet.i32 %5210, 0
  %5212 = icmp eq i32 %5211, 0
  br i1 %5212, label %5580, label %5213, !dx.controlflow.hints !155

; <label>:5213                                    ; preds = %5182
  %5214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5215 = extractvalue %dx.types.CBufRet.f32 %5214, 2
  %5216 = extractvalue %dx.types.CBufRet.f32 %5214, 3
  %5217 = fmul fast float %5215, %78
  %5218 = fmul fast float %5216, %79
  %5219 = fmul fast float %5217, 2.000000e+00
  %5220 = fmul fast float %5218, 2.000000e+00
  %5221 = fsub fast float 1.000000e+00, %5219
  %5222 = fsub fast float 1.000000e+00, %5220
  %5223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5224 = extractvalue %dx.types.CBufRet.f32 %5223, 0
  %5225 = extractvalue %dx.types.CBufRet.f32 %5223, 1
  %5226 = extractvalue %dx.types.CBufRet.f32 %5223, 2
  %5227 = fmul fast float %5221, %5224
  %5228 = fmul fast float %5221, %5225
  %5229 = fmul fast float %5221, %5226
  %5230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5231 = extractvalue %dx.types.CBufRet.f32 %5230, 0
  %5232 = extractvalue %dx.types.CBufRet.f32 %5230, 1
  %5233 = extractvalue %dx.types.CBufRet.f32 %5230, 2
  %5234 = fmul fast float %5222, %5231
  %5235 = fmul fast float %5222, %5232
  %5236 = fmul fast float %5222, %5233
  %5237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5238 = extractvalue %dx.types.CBufRet.f32 %5237, 0
  %5239 = extractvalue %dx.types.CBufRet.f32 %5237, 1
  %5240 = extractvalue %dx.types.CBufRet.f32 %5237, 2
  %5241 = fadd fast float %5234, %5238
  %5242 = fadd fast float %5241, %5227
  %5243 = fadd fast float %5235, %5239
  %5244 = fadd fast float %5243, %5228
  %5245 = fadd fast float %5236, %5240
  %5246 = fadd fast float %5245, %5229
  %5247 = fmul fast float %5242, %4418
  %5248 = fmul fast float %5244, %4418
  %5249 = fmul fast float %5246, %4418
  %5250 = fmul fast float %5247, %5247
  %5251 = fmul fast float %5248, %5248
  %5252 = fadd fast float %5250, %5251
  %5253 = fmul fast float %5249, %5249
  %5254 = fadd fast float %5252, %5253
  %5255 = call float @dx.op.unary.f32(i32 24, float %5254)  ; Sqrt(value)
  %5256 = extractvalue %dx.types.CBufRet.f32 %4145, 0
  %5257 = fsub fast float %5255, %5256
  %5258 = extractvalue %dx.types.CBufRet.f32 %4145, 2
  %5259 = fmul fast float %5257, %5258
  %5260 = call float @dx.op.unary.f32(i32 7, float %5259)  ; Saturate(value)
  %5261 = fadd fast float %5260, -5.000000e-01
  %5262 = fmul fast float %5261, 2.000000e+00
  %5263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.f32 %5263, 2
  %5265 = call float @dx.op.binary.f32(i32 36, float %5264, float %5262)  ; FMin(a,b)
  %5266 = fsub fast float -0.000000e+00, %5264
  %5267 = fcmp fast ogt float %5265, %5266
  br i1 %5267, label %5268, label %5580, !dx.controlflow.hints !156

; <label>:5268                                    ; preds = %5213
  %5269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %5270 = extractvalue %dx.types.CBufRet.f32 %5269, 3
  %5271 = fcmp fast ogt float %5270, 0.000000e+00
  br i1 %5271, label %5272, label %5347, !dx.controlflow.hints !157

; <label>:5272                                    ; preds = %5268
  %5273 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %5274 = extractvalue %dx.types.Dimensions %5273, 0
  %5275 = sitofp i32 %5274 to float
  %5276 = extractvalue %dx.types.Dimensions %5273, 1
  %5277 = sitofp i32 %5276 to float
  %5278 = fmul fast float %5217, %5275
  %5279 = fmul fast float %5218, %5277
  %5280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5281 = extractvalue %dx.types.CBufRet.f32 %5280, 1
  %5282 = fsub fast float -0.000000e+00, %5281
  %5283 = fptoui float %5282 to i32
  %5284 = fptoui float %5278 to i32
  %5285 = fptoui float %5279 to i32
  %5286 = and i32 %5283, 31
  %5287 = lshr i32 %5284, %5286
  %5288 = lshr i32 %5285, %5286
  %5289 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %5283, i32 %5287, i32 %5288, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5290 = extractvalue %dx.types.ResRet.f32 %5289, 0
  %5291 = fcmp fast olt float %5290, -1.000000e+00
  %5292 = fcmp fast ogt float %5290, -1.000000e+00
  %5293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5294 = extractvalue %dx.types.CBufRet.f32 %5293, 1
  %5295 = select i1 %5292, float %5294, float 1.000000e+00
  %5296 = fadd fast float %5290, 1.000000e+00
  %5297 = fmul fast float %5295, %5296
  %5298 = call float @dx.op.unary.f32(i32 6, float %5297)  ; FAbs(value)
  %5299 = extractvalue %dx.types.CBufRet.f32 %5293, 3
  %5300 = fcmp fast oge float %5298, %5299
  %5301 = select i1 %5300, float 0x4197782600000000, float %5298
  %5302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %5303 = extractvalue %dx.types.CBufRet.f32 %5302, 0
  %5304 = extractvalue %dx.types.CBufRet.f32 %5302, 1
  %5305 = extractvalue %dx.types.CBufRet.f32 %5302, 2
  %5306 = select i1 %5291, float %5303, float %5224
  %5307 = select i1 %5291, float %5304, float %5225
  %5308 = select i1 %5291, float %5305, float %5226
  %5309 = fmul fast float %5306, %5221
  %5310 = fmul fast float %5307, %5221
  %5311 = fmul fast float %5308, %5221
  %5312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %5313 = extractvalue %dx.types.CBufRet.f32 %5312, 0
  %5314 = extractvalue %dx.types.CBufRet.f32 %5312, 1
  %5315 = extractvalue %dx.types.CBufRet.f32 %5312, 2
  %5316 = select i1 %5291, float %5313, float %5231
  %5317 = select i1 %5291, float %5314, float %5232
  %5318 = select i1 %5291, float %5315, float %5233
  %5319 = fmul fast float %5316, %5222
  %5320 = fmul fast float %5317, %5222
  %5321 = fmul fast float %5318, %5222
  %5322 = fadd fast float %5319, %5309
  %5323 = fadd fast float %5320, %5310
  %5324 = fadd fast float %5321, %5311
  %5325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %5326 = extractvalue %dx.types.CBufRet.f32 %5325, 0
  %5327 = extractvalue %dx.types.CBufRet.f32 %5325, 1
  %5328 = extractvalue %dx.types.CBufRet.f32 %5325, 2
  %5329 = select i1 %5291, float %5326, float %5238
  %5330 = select i1 %5291, float %5327, float %5239
  %5331 = select i1 %5291, float %5328, float %5240
  %5332 = fadd fast float %5322, %5329
  %5333 = fadd fast float %5323, %5330
  %5334 = fadd fast float %5324, %5331
  %5335 = fmul fast float %5332, %5301
  %5336 = fmul fast float %5333, %5301
  %5337 = fmul fast float %5334, %5301
  %5338 = fmul fast float %5335, %5335
  %5339 = fmul fast float %5336, %5336
  %5340 = fadd fast float %5338, %5339
  %5341 = fmul fast float %5337, %5337
  %5342 = fadd fast float %5340, %5341
  %5343 = call float @dx.op.unary.f32(i32 24, float %5342)  ; Sqrt(value)
  %5344 = fsub fast float %5343, %5256
  %5345 = fmul fast float %5344, %5258
  %5346 = call float @dx.op.unary.f32(i32 7, float %5345)  ; Saturate(value)
  br label %5347

; <label>:5347                                    ; preds = %5272, %5268
  %5348 = phi float [ %5346, %5272 ], [ 1.000000e+00, %5268 ]
  %5349 = fmul fast float %5265, 5.000000e-01
  %5350 = fadd fast float %5349, 5.000000e-01
  %5351 = call float @dx.op.unary.f32(i32 22, float %5350)  ; Frc(value)
  %5352 = call float @dx.op.unary.f32(i32 27, float %5351)  ; Round_ni(value)
  %5353 = call float @dx.op.unary.f32(i32 22, float %5351)  ; Frc(value)
  %5354 = fmul fast float %5353, 2.000000e+00
  %5355 = fadd fast float %5354, -1.000000e+00
  %5356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %39, float %5217, float %5218, float %5352, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5357 = extractvalue %dx.types.ResRet.f32 %5356, 0
  %5358 = extractvalue %dx.types.ResRet.f32 %5356, 1
  %5359 = extractvalue %dx.types.ResRet.f32 %5356, 2
  %5360 = extractvalue %dx.types.ResRet.f32 %5356, 3
  %5361 = fadd fast float %5357, -5.000000e-01
  %5362 = fadd fast float %5359, -5.000000e-01
  %5363 = fmul fast float %5361, 0xBFD5555560000000
  %5364 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5362, float %5363)  ; FMad(a,b,c)
  %5365 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5358, float 0.000000e+00)  ; FMad(a,b,c)
  %5366 = fadd fast float %5365, %5360
  %5367 = fmul fast float %5361, -7.500000e-01
  %5368 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5362, float %5367)  ; FMad(a,b,c)
  %5369 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5358, float 0.000000e+00)  ; FMad(a,b,c)
  %5370 = fadd fast float %5369, %5360
  %5371 = call float @dx.op.binary.f32(i32 35, float %5364, float -1.000000e+00)  ; FMax(a,b)
  %5372 = call float @dx.op.binary.f32(i32 35, float %5366, float -1.000000e+00)  ; FMax(a,b)
  %5373 = call float @dx.op.binary.f32(i32 35, float %5368, float -1.000000e+00)  ; FMax(a,b)
  %5374 = call float @dx.op.binary.f32(i32 35, float %5370, float -1.000000e+00)  ; FMax(a,b)
  %5375 = call float @dx.op.binary.f32(i32 36, float %5371, float 1.000000e+00)  ; FMin(a,b)
  %5376 = call float @dx.op.binary.f32(i32 36, float %5372, float 1.000000e+00)  ; FMin(a,b)
  %5377 = call float @dx.op.binary.f32(i32 36, float %5373, float 1.000000e+00)  ; FMin(a,b)
  %5378 = call float @dx.op.binary.f32(i32 36, float %5374, float 1.000000e+00)  ; FMin(a,b)
  %5379 = fcmp fast olt float %5375, 0x3FEFFF8020000000
  br i1 %5379, label %5380, label %5495, !dx.controlflow.hints !158

; <label>:5380                                    ; preds = %5347
  %5381 = extractvalue %dx.types.CBufRet.f32 %5263, 3
  %5382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %5383 = extractvalue %dx.types.CBufRet.f32 %5382, 0
  %5384 = extractvalue %dx.types.CBufRet.f32 %5382, 1
  %5385 = extractvalue %dx.types.CBufRet.f32 %5382, 2
  %5386 = extractvalue %dx.types.CBufRet.f32 %5382, 3
  %5387 = fsub fast float %5383, %5375
  %5388 = fsub fast float %5384, %5376
  %5389 = fsub fast float %5385, %5377
  %5390 = fsub fast float %5386, %5378
  %5391 = fmul fast float %5387, %5381
  %5392 = fmul fast float %5388, %5381
  %5393 = fmul fast float %5389, %5381
  %5394 = fmul fast float %5390, %5381
  %5395 = fadd fast float %5391, %5375
  %5396 = fadd fast float %5392, %5376
  %5397 = fsub fast float -0.000000e+00, %5396
  %5398 = fadd fast float %5393, %5377
  %5399 = fadd fast float %5394, %5378
  %5400 = fmul fast float %5395, %5395
  %5401 = fsub fast float %5396, %5400
  %5402 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5401)  ; FMax(a,b)
  %5403 = fdiv fast float 1.000000e+00, %5402
  %5404 = fmul fast float %5396, %5395
  %5405 = fsub fast float %5398, %5404
  %5406 = fsub fast float %5355, %5395
  %5407 = fmul fast float %5355, %5355
  %5408 = fsub fast float %5407, %5396
  %5409 = fmul fast float %5406, %5403
  %5410 = fmul fast float %5409, %5405
  %5411 = fsub fast float %5408, %5410
  %5412 = fmul fast float %5396, %5396
  %5413 = fsub fast float %5399, %5412
  %5414 = fmul fast float %5405, %5405
  %5415 = fmul fast float %5414, %5403
  %5416 = fsub fast float %5413, %5415
  %5417 = fdiv fast float %5411, %5416
  %5418 = fmul fast float %5405, %5417
  %5419 = fsub fast float %5406, %5418
  %5420 = fmul fast float %5419, %5403
  %5421 = fmul fast float %5420, %5395
  %5422 = fsub fast float 1.000000e+00, %5421
  %5423 = fmul fast float %5396, %5417
  %5424 = fsub fast float %5422, %5423
  %5425 = fmul fast float %5420, %5420
  %5426 = fmul fast float %5417, 4.000000e+00
  %5427 = fmul fast float %5426, %5424
  %5428 = fsub fast float %5425, %5427
  %5429 = call float @dx.op.unary.f32(i32 24, float %5428)  ; Sqrt(value)
  %5430 = fcmp fast oge float %5420, 0.000000e+00
  %5431 = fsub fast float -0.000000e+00, %5429
  %5432 = select i1 %5430, float %5431, float %5429
  %5433 = fsub fast float %5432, %5420
  %5434 = fdiv fast float %5433, %5417
  %5435 = fdiv fast float %5424, %5433
  %5436 = fmul fast float %5434, 5.000000e-01
  %5437 = fmul fast float %5435, 2.000000e+00
  %5438 = select i1 %5430, float %5436, float %5437
  %5439 = select i1 %5430, float %5437, float %5436
  %5440 = call float @dx.op.binary.f32(i32 35, float %5438, float %5439)  ; FMax(a,b)
  %5441 = call float @dx.op.binary.f32(i32 36, float %5438, float %5439)  ; FMin(a,b)
  %5442 = fcmp fast ogt float %5355, %5441
  br i1 %5442, label %5443, label %5453

; <label>:5443                                    ; preds = %5380
  %5444 = fsub fast float %5355, %5441
  %5445 = fsub fast float %5440, %5441
  %5446 = fmul fast float %5444, %5445
  %5447 = fmul fast float %5440, %5355
  %5448 = fadd fast float %5440, %5355
  %5449 = fmul fast float %5448, %5395
  %5450 = fadd fast float %5447, %5396
  %5451 = fsub fast float %5450, %5449
  %5452 = fdiv fast float %5451, %5446
  br label %5453

; <label>:5453                                    ; preds = %5443, %5380
  %5454 = phi float [ %5452, %5443 ], [ 0.000000e+00, %5380 ]
  %5455 = fcmp fast ogt float %5355, %5440
  %5456 = fsub fast float %5355, %5440
  br i1 %5455, label %5457, label %5467

; <label>:5457                                    ; preds = %5453
  %5458 = fsub fast float %5440, %5441
  %5459 = fmul fast float %5458, %5456
  %5460 = fmul fast float %5441, %5355
  %5461 = fadd fast float %5441, %5355
  %5462 = fmul fast float %5461, %5395
  %5463 = fsub fast float %5397, %5460
  %5464 = fadd fast float %5463, %5462
  %5465 = fdiv fast float %5464, %5459
  %5466 = fadd fast float %5465, %5454
  br label %5467

; <label>:5467                                    ; preds = %5457, %5453
  %5468 = phi float [ %5466, %5457 ], [ %5454, %5453 ]
  %5469 = fsub fast float %5355, %5441
  %5470 = fmul fast float %5469, %5456
  %5471 = fmul fast float %5441, %5440
  %5472 = fadd fast float %5441, %5440
  %5473 = fmul fast float %5472, %5395
  %5474 = fadd fast float %5471, %5396
  %5475 = fsub fast float %5474, %5473
  %5476 = fdiv fast float %5475, %5470
  %5477 = call float @dx.op.unary.f32(i32 7, float %5468)  ; Saturate(value)
  %5478 = fcmp fast oeq float %4146, 0.000000e+00
  %5479 = extractvalue %dx.types.CBufRet.f32 %5263, 0
  %5480 = fcmp fast oeq float %5479, 0.000000e+00
  %5481 = or i1 %5478, %5480
  %5482 = fmul fast float %5479, 2.000000e+00
  %5483 = fadd fast float %5264, %5265
  %5484 = fdiv fast float %5483, %5482
  %5485 = call float @dx.op.unary.f32(i32 7, float %5484)  ; Saturate(value)
  %5486 = fmul fast float %5485, 2.000000e+00
  %5487 = fsub fast float 3.000000e+00, %5486
  %5488 = fmul fast float %5485, %5485
  %5489 = fmul fast float %5488, %5487
  %5490 = select i1 %5481, float 1.000000e+00, float %5489
  %5491 = fmul fast float %5476, %4146
  %5492 = fadd fast float %5477, %5491
  %5493 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5494 = fmul fast float %5490, %5493
  br label %5495

; <label>:5495                                    ; preds = %5467, %5347
  %5496 = phi float [ %5494, %5467 ], [ 0.000000e+00, %5347 ]
  %5497 = fsub fast float 1.000000e+00, %5496
  %5498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %39, float %5217, float %5218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5499 = extractvalue %dx.types.ResRet.f32 %5498, 0
  %5500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %5501 = extractvalue %dx.types.CBufRet.i32 %5500, 2
  %5502 = icmp eq i32 %5501, 0
  br i1 %5502, label %5508, label %5503

; <label>:5503                                    ; preds = %5495
  %5504 = call float @dx.op.unary.f32(i32 7, float %5496)  ; Saturate(value)
  %5505 = fadd fast float %5499, -1.000000e+00
  %5506 = fmul fast float %5504, %5505
  %5507 = fadd fast float %5506, 1.000000e+00
  br label %5508

; <label>:5508                                    ; preds = %5503, %5495
  %5509 = phi float [ %5507, %5503 ], [ %5497, %5495 ]
  br i1 %5271, label %5510, label %5528

; <label>:5510                                    ; preds = %5508
  %5511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %5512 = extractvalue %dx.types.CBufRet.f32 %5511, 1
  %5513 = fsub fast float %5348, %5512
  %5514 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5515 = fsub fast float %5348, %5270
  %5516 = call float @dx.op.unary.f32(i32 7, float %5515)  ; Saturate(value)
  %5517 = fsub fast float %5514, %5516
  %5518 = fsub fast float %5350, %5516
  %5519 = fdiv fast float %5518, %5517
  %5520 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  %5521 = fmul fast float %5520, 2.000000e+00
  %5522 = fsub fast float 3.000000e+00, %5521
  %5523 = fsub fast float %5499, %5509
  %5524 = fmul fast float %5520, %5520
  %5525 = fmul fast float %5524, %5523
  %5526 = fmul fast float %5525, %5522
  %5527 = fadd fast float %5526, %5509
  br label %5528

; <label>:5528                                    ; preds = %5510, %5508
  %5529 = phi float [ %5527, %5510 ], [ %5509, %5508 ]
  %5530 = call float @dx.op.binary.f32(i32 35, float %5499, float %5529)  ; FMax(a,b)
  %5531 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %5532 = extractvalue %dx.types.CBufRet.i32 %5531, 2
  %5533 = and i32 %5532, 1
  %5534 = icmp eq i32 %5533, 0
  %5535 = fcmp fast une float %5530, 1.000000e+00
  %5536 = and i1 %5535, %5534
  br i1 %5536, label %5537, label %5556

; <label>:5537                                    ; preds = %5528
  %5538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %5217, float %5218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5539 = extractvalue %dx.types.ResRet.f32 %5538, 0
  %5540 = extractvalue %dx.types.ResRet.f32 %5538, 1
  %5541 = extractvalue %dx.types.ResRet.f32 %5538, 2
  %5542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5543 = extractvalue %dx.types.CBufRet.f32 %5542, 1
  %5544 = fmul fast float %5543, %5539
  %5545 = fmul fast float %5543, %5540
  %5546 = fmul fast float %5543, %5541
  %5547 = fcmp fast ogt float %5499, 0x3FEFFF2E40000000
  %5548 = fsub fast float 1.000000e+00, %5530
  %5549 = fsub fast float 1.000000e+00, %5499
  %5550 = fdiv fast float %5548, %5549
  %5551 = call float @dx.op.unary.f32(i32 7, float %5550)  ; Saturate(value)
  %5552 = select i1 %5547, float 0.000000e+00, float %5551
  %5553 = fmul fast float %5544, %5552
  %5554 = fmul fast float %5545, %5552
  %5555 = fmul fast float %5546, %5552
  br label %5556

; <label>:5556                                    ; preds = %5537, %5528
  %5557 = phi float [ 0.000000e+00, %5528 ], [ %5553, %5537 ]
  %5558 = phi float [ 0.000000e+00, %5528 ], [ %5554, %5537 ]
  %5559 = phi float [ 0.000000e+00, %5528 ], [ %5555, %5537 ]
  %5560 = fmul fast float %5557, %4142
  %5561 = fmul fast float %5558, %4143
  %5562 = fmul fast float %5559, %4144
  %5563 = fmul fast float %5530, %5192
  %5564 = call float @dx.op.dot3.f32(i32 55, float %5530, float %5530, float %5530, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5565 = call float @dx.op.dot3.f32(i32 55, float %5560, float %5561, float %5562, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5566 = select i1 %226, float %5564, float %5530
  %5567 = select i1 %226, float 1.000000e+00, float %5530
  %5568 = select i1 %226, float %5565, float %5560
  %5569 = select i1 %226, float 0.000000e+00, float %5561
  %5570 = select i1 %226, float 0.000000e+00, float %5562
  %5571 = fmul fast float %5566, %5204
  %5572 = fmul fast float %5566, %5205
  %5573 = fmul fast float %5567, %5206
  %5574 = fadd fast float %5571, %5568
  %5575 = fadd fast float %5572, %5569
  %5576 = fadd fast float %5570, %5573
  %5577 = fmul fast float %5566, %5207
  %5578 = fmul fast float %5566, %5208
  %5579 = fmul fast float %5567, %5209
  br label %5580

; <label>:5580                                    ; preds = %5556, %5213, %5182, %4414
  %5581 = phi float [ %4419, %4414 ], [ %5204, %5182 ], [ %5574, %5556 ], [ %5204, %5213 ]
  %5582 = phi float [ %4420, %4414 ], [ %5205, %5182 ], [ %5575, %5556 ], [ %5205, %5213 ]
  %5583 = phi float [ %4421, %4414 ], [ %5206, %5182 ], [ %5576, %5556 ], [ %5206, %5213 ]
  %5584 = phi float [ %4422, %4414 ], [ %5207, %5182 ], [ %5577, %5556 ], [ %5207, %5213 ]
  %5585 = phi float [ %4423, %4414 ], [ %5208, %5182 ], [ %5578, %5556 ], [ %5208, %5213 ]
  %5586 = phi float [ %4424, %4414 ], [ %5209, %5182 ], [ %5579, %5556 ], [ %5209, %5213 ]
  %5587 = phi float [ %4425, %4414 ], [ %5192, %5182 ], [ %5563, %5556 ], [ %5192, %5213 ]
  %5588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5589 = extractvalue %dx.types.CBufRet.f32 %5588, 2
  %5590 = extractvalue %dx.types.CBufRet.f32 %5588, 3
  %5591 = fmul fast float %5589, %78
  %5592 = fmul fast float %5590, %79
  %5593 = call float @dx.op.unary.f32(i32 7, float %5591)  ; Saturate(value)
  %5594 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5595 = select i1 %4156, i32 2, i32 0
  %5596 = or i32 %5595, 1
  %5597 = uitofp i32 %5596 to float
  %5598 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %39, float %5593, float %5594, float %5597, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5599 = extractvalue %dx.types.ResRet.f32 %5598, 0
  %5600 = extractvalue %dx.types.ResRet.f32 %5598, 1
  %5601 = extractvalue %dx.types.ResRet.f32 %5598, 2
  %5602 = extractvalue %dx.types.ResRet.f32 %5598, 3
  %5603 = add nuw nsw i32 %5595, 2
  %5604 = uitofp i32 %5603 to float
  %5605 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %39, float %5593, float %5594, float %5604, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5606 = extractvalue %dx.types.ResRet.f32 %5605, 0
  %5607 = extractvalue %dx.types.ResRet.f32 %5605, 1
  %5608 = extractvalue %dx.types.ResRet.f32 %5605, 2
  %5609 = extractvalue %dx.types.ResRet.f32 %5605, 3
  %5610 = call float @dx.op.binary.f32(i32 35, float %5600, float %5601)  ; FMax(a,b)
  %5611 = call float @dx.op.binary.f32(i32 35, float %5599, float %5610)  ; FMax(a,b)
  %5612 = call float @dx.op.binary.f32(i32 35, float %5611, float %5602)  ; FMax(a,b)
  %5613 = call float @dx.op.binary.f32(i32 36, float %5607, float %5608)  ; FMin(a,b)
  %5614 = call float @dx.op.binary.f32(i32 36, float %5606, float %5613)  ; FMin(a,b)
  %5615 = call float @dx.op.binary.f32(i32 36, float %5614, float %5609)  ; FMin(a,b)
  %5616 = fmul fast float %5612, 2.550000e+02
  %5617 = fadd fast float %5616, 0x3F70101020000000
  %5618 = fptoui float %5617 to i32
  %5619 = fmul fast float %5615, 2.550000e+02
  %5620 = fadd fast float %5619, 0x3F70101020000000
  %5621 = fptoui float %5620 to i32
  %5622 = icmp ult i32 %5618, %5621
  br i1 %5622, label %5623, label %5792

; <label>:5623                                    ; preds = %5580
  %5624 = fcmp fast ogt float %65, 9.843750e-01
  %5625 = fadd fast float %4418, -4.000000e+00
  %5626 = select i1 %5624, float -4.000000e+00, float %5625
  %5627 = call float @dx.op.binary.f32(i32 35, float %5626, float 0.000000e+00)  ; FMax(a,b)
  %5628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5629 = extractvalue %dx.types.CBufRet.f32 %5628, 0
  %5630 = fadd fast float %5629, %5627
  %5631 = extractvalue %dx.types.CBufRet.f32 %5628, 2
  %5632 = fmul fast float %5630, %5631
  %5633 = call float @dx.op.unary.f32(i32 23, float %5632)  ; Log(value)
  %5634 = extractvalue %dx.types.CBufRet.f32 %5628, 3
  %5635 = fmul fast float %5634, %5633
  %5636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5637 = extractvalue %dx.types.CBufRet.f32 %5636, 2
  %5638 = fmul fast float %5635, %5637
  %5639 = call float @dx.op.unary.f32(i32 7, float %5638)  ; Saturate(value)
  %5640 = uitofp i32 %5618 to float
  %5641 = uitofp i32 %5621 to float
  %5642 = fadd fast float %5640, 5.000000e-01
  %5643 = fadd fast float %5641, 5.000000e-01
  %5644 = fmul fast float %5637, %5642
  %5645 = fmul fast float %5637, %5643
  %5646 = fadd fast float %5644, 0x3F0FFB4800000000
  %5647 = fadd fast float %5645, 0xBF0FFB4800000000
  %5648 = call float @dx.op.binary.f32(i32 35, float %5639, float %5646)  ; FMax(a,b)
  %5649 = call float @dx.op.binary.f32(i32 36, float %5648, float %5647)  ; FMin(a,b)
  %5650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5651 = extractvalue %dx.types.CBufRet.f32 %5650, 1
  %5652 = extractvalue %dx.types.CBufRet.f32 %5650, 2
  %5653 = extractvalue %dx.types.CBufRet.f32 %5650, 0
  %5654 = select i1 %4156, float %5653, float 0.000000e+00
  %5655 = fmul fast float %5651, %5649
  %5656 = fadd fast float %5654, %5655
  %5657 = fadd fast float %5654, %5652
  %5658 = fsub fast float %5651, %5652
  %5659 = fadd fast float %5658, %5654
  %5660 = call float @dx.op.binary.f32(i32 35, float %5656, float %5657)  ; FMax(a,b)
  %5661 = call float @dx.op.binary.f32(i32 36, float %5660, float %5659)  ; FMin(a,b)
  %5662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %37, float %5593, float %5594, float %5661, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5663 = extractvalue %dx.types.ResRet.f32 %5662, 0
  %5664 = extractvalue %dx.types.ResRet.f32 %5662, 1
  %5665 = extractvalue %dx.types.ResRet.f32 %5662, 2
  %5666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5667 = extractvalue %dx.types.CBufRet.i32 %5666, 0
  %5668 = extractvalue %dx.types.CBufRet.i32 %5666, 1
  %5669 = uitofp i32 %5667 to float
  %5670 = uitofp i32 %5668 to float
  %5671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5672 = extractvalue %dx.types.CBufRet.f32 %5671, 0
  %5673 = extractvalue %dx.types.CBufRet.f32 %5671, 1
  %5674 = fmul fast float %5669, %5593
  %5675 = fmul fast float %5670, %5594
  %5676 = fadd fast float %5674, -5.000000e-01
  %5677 = fadd fast float %5675, -5.000000e-01
  %5678 = call float @dx.op.unary.f32(i32 22, float %5676)  ; Frc(value)
  %5679 = call float @dx.op.unary.f32(i32 22, float %5677)  ; Frc(value)
  %5680 = fmul fast float %5678, %5678
  %5681 = fmul fast float %5680, %5678
  %5682 = fsub fast float 3.000000e+00, %5678
  %5683 = fmul fast float %5680, %5682
  %5684 = fmul fast float %5678, 3.000000e+00
  %5685 = fmul fast float %5681, 3.000000e+00
  %5686 = fmul fast float %5680, 6.000000e+00
  %5687 = fsub fast float %5685, %5686
  %5688 = fadd fast float %5687, 4.000000e+00
  %5689 = fmul fast float %5688, 0x3FC5555560000000
  %5690 = fmul fast float %5681, -3.000000e+00
  %5691 = fadd fast float %5680, %5678
  %5692 = fmul fast float %5691, 3.000000e+00
  %5693 = fadd fast float %5690, 1.000000e+00
  %5694 = fadd fast float %5693, %5692
  %5695 = fmul fast float %5681, 0x3FC5555560000000
  %5696 = fmul fast float %5679, %5679
  %5697 = fmul fast float %5696, %5679
  %5698 = fsub fast float 3.000000e+00, %5679
  %5699 = fmul fast float %5696, %5698
  %5700 = fmul fast float %5679, 3.000000e+00
  %5701 = fmul fast float %5697, 3.000000e+00
  %5702 = fmul fast float %5696, 6.000000e+00
  %5703 = fsub fast float %5701, %5702
  %5704 = fadd fast float %5703, 4.000000e+00
  %5705 = fmul fast float %5704, 0x3FC5555560000000
  %5706 = fmul fast float %5697, -3.000000e+00
  %5707 = fadd fast float %5696, %5679
  %5708 = fmul fast float %5707, 3.000000e+00
  %5709 = fadd fast float %5706, 1.000000e+00
  %5710 = fadd fast float %5709, %5708
  %5711 = fmul fast float %5697, 0x3FC5555560000000
  %5712 = fadd fast float %5678, 1.000000e+00
  %5713 = fsub fast float 1.000000e+00, %5684
  %5714 = fadd fast float %5713, %5683
  %5715 = fadd fast float %5714, %5688
  %5716 = fmul fast float %5715, 0x3FC5555560000000
  %5717 = fdiv fast float %5689, %5716
  %5718 = fsub fast float %5712, %5717
  %5719 = fsub fast float 1.000000e+00, %5678
  %5720 = fadd fast float %5694, %5681
  %5721 = fmul fast float %5720, 0x3FC5555560000000
  %5722 = fdiv fast float %5695, %5721
  %5723 = fadd fast float %5719, %5722
  %5724 = fadd fast float %5679, 1.000000e+00
  %5725 = fsub fast float 1.000000e+00, %5700
  %5726 = fadd fast float %5725, %5699
  %5727 = fadd fast float %5726, %5704
  %5728 = fmul fast float %5727, 0x3FC5555560000000
  %5729 = fdiv fast float %5705, %5728
  %5730 = fsub fast float %5724, %5729
  %5731 = fsub fast float 1.000000e+00, %5679
  %5732 = fadd fast float %5710, %5697
  %5733 = fmul fast float %5732, 0x3FC5555560000000
  %5734 = fdiv fast float %5711, %5733
  %5735 = fadd fast float %5734, %5731
  %5736 = fmul fast float %5718, %5672
  %5737 = fsub fast float %5593, %5736
  %5738 = fmul fast float %5723, %5672
  %5739 = fadd fast float %5738, %5593
  %5740 = fmul fast float %5735, %5673
  %5741 = fadd fast float %5740, %5594
  %5742 = fmul fast float %5730, %5673
  %5743 = fsub fast float %5594, %5742
  %5744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %5737, float %5743, float %5661, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5745 = extractvalue %dx.types.ResRet.f32 %5744, 0
  %5746 = extractvalue %dx.types.ResRet.f32 %5744, 1
  %5747 = extractvalue %dx.types.ResRet.f32 %5744, 2
  %5748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %5739, float %5743, float %5661, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5749 = extractvalue %dx.types.ResRet.f32 %5748, 0
  %5750 = extractvalue %dx.types.ResRet.f32 %5748, 1
  %5751 = extractvalue %dx.types.ResRet.f32 %5748, 2
  %5752 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %5737, float %5741, float %5661, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5753 = extractvalue %dx.types.ResRet.f32 %5752, 0
  %5754 = extractvalue %dx.types.ResRet.f32 %5752, 1
  %5755 = extractvalue %dx.types.ResRet.f32 %5752, 2
  %5756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %37, float %5739, float %5741, float %5661, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5757 = extractvalue %dx.types.ResRet.f32 %5756, 0
  %5758 = extractvalue %dx.types.ResRet.f32 %5756, 1
  %5759 = extractvalue %dx.types.ResRet.f32 %5756, 2
  %5760 = fsub fast float %5753, %5745
  %5761 = fsub fast float %5754, %5746
  %5762 = fsub fast float %5755, %5747
  %5763 = fmul fast float %5760, %5733
  %5764 = fmul fast float %5761, %5733
  %5765 = fmul fast float %5762, %5733
  %5766 = fadd fast float %5763, %5745
  %5767 = fadd fast float %5764, %5746
  %5768 = fadd fast float %5765, %5747
  %5769 = fsub fast float %5757, %5749
  %5770 = fsub fast float %5758, %5750
  %5771 = fsub fast float %5759, %5751
  %5772 = fmul fast float %5769, %5733
  %5773 = fmul fast float %5770, %5733
  %5774 = fmul fast float %5771, %5733
  %5775 = fsub fast float %5749, %5766
  %5776 = fadd fast float %5775, %5772
  %5777 = fsub fast float %5750, %5767
  %5778 = fadd fast float %5777, %5773
  %5779 = fsub fast float %5751, %5768
  %5780 = fadd fast float %5779, %5774
  %5781 = fmul fast float %5776, %5721
  %5782 = fmul fast float %5778, %5721
  %5783 = fmul fast float %5780, %5721
  %5784 = fadd fast float %5781, %5766
  %5785 = fadd fast float %5782, %5767
  %5786 = fadd fast float %5783, %5768
  %5787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.f32 %5787, 1
  %5789 = fmul fast float %5784, %5788
  %5790 = fmul fast float %5785, %5788
  %5791 = fmul fast float %5786, %5788
  br label %5792

; <label>:5792                                    ; preds = %5623, %5580
  %5793 = phi float [ %5663, %5623 ], [ 1.000000e+00, %5580 ]
  %5794 = phi float [ %5664, %5623 ], [ 1.000000e+00, %5580 ]
  %5795 = phi float [ %5665, %5623 ], [ 1.000000e+00, %5580 ]
  %5796 = phi float [ %5789, %5623 ], [ 0.000000e+00, %5580 ]
  %5797 = phi float [ %5790, %5623 ], [ 0.000000e+00, %5580 ]
  %5798 = phi float [ %5791, %5623 ], [ 0.000000e+00, %5580 ]
  %5799 = fmul fast float %5796, %4142
  %5800 = fmul fast float %5797, %4143
  %5801 = fmul fast float %5798, %4144
  %5802 = fmul fast float %5793, %5587
  %5803 = call float @dx.op.dot3.f32(i32 55, float %5793, float %5794, float %5795, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5804 = call float @dx.op.dot3.f32(i32 55, float %5799, float %5800, float %5801, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5805 = select i1 %226, float %5803, float %5793
  %5806 = select i1 %226, float %5803, float %5794
  %5807 = select i1 %226, float 1.000000e+00, float %5795
  %5808 = select i1 %226, float %5804, float %5799
  %5809 = select i1 %226, float 0.000000e+00, float %5800
  %5810 = select i1 %226, float 0.000000e+00, float %5801
  %5811 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %43, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5812 = extractvalue %dx.types.CBufRet.i32 %5811, 3
  %5813 = and i32 %5812, 3
  %5814 = icmp ne i32 %5813, 0
  %5815 = and i32 %5812, 4
  %5816 = icmp ne i32 %5815, 0
  %5817 = and i1 %5814, %5816
  %5818 = and i1 %226, %5817
  br i1 %5818, label %5819, label %5825

; <label>:5819                                    ; preds = %5792
  %5820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5821 = extractvalue %dx.types.CBufRet.f32 %5820, 1
  %5822 = fadd fast float %5802, -1.000000e+00
  %5823 = fmul fast float %5821, %5822
  %5824 = fadd fast float %5823, 1.000000e+00
  br label %5825

; <label>:5825                                    ; preds = %5819, %5792
  %5826 = phi float [ %5824, %5819 ], [ %5802, %5792 ]
  %5827 = fadd fast float %5584, %5581
  %5828 = fmul fast float %5805, %5827
  %5829 = fadd fast float %5828, %5808
  %5830 = fadd fast float %5585, %5582
  %5831 = fmul fast float %5806, %5830
  %5832 = fadd fast float %5831, %5809
  %5833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5834 = extractvalue %dx.types.CBufRet.f32 %5833, 0
  br i1 %226, label %5835, label %5850

; <label>:5835                                    ; preds = %5825
  %5836 = fadd fast float %5829, %5832
  %5837 = fmul fast float %5834, %5836
  %5838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %5839 = extractvalue %dx.types.CBufRet.f32 %5838, 3
  %5840 = extractvalue %dx.types.CBufRet.f32 %4126, 1
  %5841 = fsub fast float %4131, %4125
  %5842 = fadd fast float %5841, %4132
  %5843 = fsub fast float %5842, %5840
  %5844 = extractvalue %dx.types.CBufRet.f32 %4126, 2
  %5845 = fmul fast float %5843, %5844
  %5846 = call float @dx.op.unary.f32(i32 7, float %5845)  ; Saturate(value)
  %5847 = fsub fast float %5846, %5839
  %5848 = fmul fast float %5847, %5826
  %5849 = fadd fast float %5848, %5839
  br label %5875

; <label>:5850                                    ; preds = %5825
  %5851 = fadd fast float %5586, %5583
  %5852 = fmul fast float %5807, %5851
  %5853 = fadd fast float %5852, %5810
  %5854 = fmul fast float %5834, %5829
  %5855 = fmul fast float %5834, %5832
  %5856 = fmul fast float %5834, %5853
  %5857 = call float @dx.op.binary.f32(i32 35, float %5855, float %5856)  ; FMax(a,b)
  %5858 = call float @dx.op.binary.f32(i32 35, float %5854, float %5857)  ; FMax(a,b)
  %5859 = call float @dx.op.binary.f32(i32 35, float %4143, float %4144)  ; FMax(a,b)
  %5860 = call float @dx.op.binary.f32(i32 35, float %4142, float %5859)  ; FMax(a,b)
  %5861 = call float @dx.op.binary.f32(i32 35, float %5858, float %5860)  ; FMax(a,b)
  %5862 = fcmp fast ugt float %5861, 0x3F10000000000000
  br i1 %5862, label %5864, label %5863

; <label>:5863                                    ; preds = %5850
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5864

; <label>:5864                                    ; preds = %5863, %5850
  %5865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %5866 = extractvalue %dx.types.ResRet.i32 %5865, 0
  %5867 = and i32 %5866, 32
  %5868 = icmp eq i32 %5867, 0
  br i1 %5868, label %5875, label %5869

; <label>:5869                                    ; preds = %5864
  %5870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5871 = extractvalue %dx.types.CBufRet.f32 %5870, 0
  %5872 = fmul fast float %5871, 0x3FE99999A0000000
  %5873 = fadd fast float %5871, %5854
  %5874 = fadd fast float %5872, %5856
  br label %5875

; <label>:5875                                    ; preds = %5869, %5864, %5835
  %5876 = phi float [ 1.000000e+00, %5835 ], [ %4143, %5869 ], [ %4143, %5864 ]
  %5877 = phi float [ 1.000000e+00, %5835 ], [ %4144, %5869 ], [ %4144, %5864 ]
  %5878 = phi float [ %5837, %5835 ], [ %5873, %5869 ], [ %5854, %5864 ]
  %5879 = phi float [ %5849, %5835 ], [ %5855, %5869 ], [ %5855, %5864 ]
  %5880 = phi float [ 1.000000e+00, %5835 ], [ %5874, %5869 ], [ %5856, %5864 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %5881 = call float @dx.op.binary.f32(i32 36, float %5878, float 3.225500e+04)  ; FMin(a,b)
  %5882 = call float @dx.op.binary.f32(i32 36, float %5879, float 3.225500e+04)  ; FMin(a,b)
  %5883 = call float @dx.op.binary.f32(i32 36, float %5880, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5881)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5882)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5883)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %5884 = call float @dx.op.binary.f32(i32 36, float %4142, float 3.225500e+04)  ; FMin(a,b)
  %5885 = call float @dx.op.binary.f32(i32 36, float %5876, float 3.225500e+04)  ; FMin(a,b)
  %5886 = call float @dx.op.binary.f32(i32 36, float %5877, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %5884)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %5885)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %5886)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!57}
!dx.entryPoints = !{!58}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !46, !49}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
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
!46 = !{!47, !48}
!47 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!48 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!49 = !{!50, !51, !52, !53, !54, !55, !56}
!50 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!51 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!52 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!53 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!54 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!55 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!56 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!57 = !{[27 x i32] [i32 25, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !78}
!59 = !{!60, !74, null}
!60 = !{!61, !64, !66, !68, !69, !70, !71, !73}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 15}
!64 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 2, i32 1, i8 0, !65}
!65 = !{i32 3, i32 3}
!66 = !{i32 2, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 2, i8 0, !67}
!67 = !{i32 3, i32 7}
!68 = !{i32 3, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 3, i8 0, !63}
!69 = !{i32 4, !"AMBIENT_COLOR", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 4, i8 0, !67}
!70 = !{i32 5, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 5, i8 0, !63}
!71 = !{i32 6, !"SV_IsFrontFace", i8 5, i8 13, !62, i8 1, i32 1, i8 1, i32 6, i8 0, !72}
!72 = !{i32 3, i32 1}
!73 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!74 = !{!75, !76}
!75 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !63}
!76 = !{i32 1, !"SV_Target", i8 9, i8 16, !77, i8 0, i32 1, i8 4, i32 1, i8 0, !63}
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

