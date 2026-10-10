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
; shader hash: ffc4a44995a5d2b05352830efcfbf1f8
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
;                                   texture     f32          2d     T37     t12,space2     1
;                                   texture     f32          2d     T38     t55,space2     1
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
  %47 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = icmp ne i32 %47, 0
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = alloca [12 x float], align 4
  %70 = alloca [12 x float], align 4
  %71 = alloca [4 x float], align 4
  %72 = alloca [4 x float], align 4
  %73 = alloca [4 x float], align 4
  %74 = alloca [3 x float], align 4
  %75 = alloca [3 x float], align 4
  %76 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %77 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 0
  %80 = fmul fast float %79, %65
  %81 = fmul fast float %79, %66
  %82 = select i1 %48, float 1.000000e+00, float -1.000000e+00
  %83 = fmul fast float %60, %82
  %84 = fmul fast float %61, %82
  %85 = fmul fast float %62, %82
  %86 = fmul fast float %61, %58
  %87 = fmul fast float %62, %57
  %88 = fsub fast float %86, %87
  %89 = fmul fast float %62, %56
  %90 = fmul fast float %60, %58
  %91 = fsub fast float %89, %90
  %92 = fmul fast float %60, %57
  %93 = fmul fast float %61, %56
  %94 = fsub fast float %92, %93
  %95 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %96 = bitcast float %95 to i32
  %97 = ashr i32 %96, 1
  %98 = sub nsw i32 1597250115, %97
  %99 = bitcast i32 %98 to float
  %100 = fmul fast float %99, %49
  %101 = fmul fast float %99, %50
  %102 = fmul fast float %99, %51
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 3
  %106 = fmul fast float %80, 2.000000e+00
  %107 = fmul fast float %106, %104
  %108 = fmul fast float %81, 2.000000e+00
  %109 = fmul fast float %108, %105
  %110 = fsub fast float 1.000000e+00, %107
  %111 = fsub fast float 1.000000e+00, %109
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 1
  %115 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %116 = fmul fast float %110, %113
  %117 = fmul fast float %110, %114
  %118 = fmul fast float %110, %115
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = fmul fast float %111, %120
  %124 = fmul fast float %111, %121
  %125 = fmul fast float %111, %122
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = fadd fast float %123, %127
  %131 = fadd fast float %130, %116
  %132 = fadd fast float %124, %128
  %133 = fadd fast float %132, %117
  %134 = fadd fast float %125, %129
  %135 = fadd fast float %134, %118
  %136 = fmul fast float %131, %68
  %137 = fmul fast float %133, %68
  %138 = fmul fast float %135, %68
  %139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.i32 %139, 0
  %141 = extractvalue %dx.types.ResRet.i32 %139, 1
  %142 = extractvalue %dx.types.ResRet.i32 %139, 2
  %143 = extractvalue %dx.types.ResRet.i32 %139, 3
  %144 = bitcast i32 %140 to float
  %145 = bitcast i32 %141 to float
  %146 = bitcast i32 %142 to float
  %147 = bitcast i32 %143 to float
  %148 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %149 = call float @dx.op.unary.f32(i32 25, float %148)  ; Rsqrt(value)
  %150 = fmul fast float %149, %83
  %151 = fmul fast float %149, %84
  %152 = fmul fast float %149, %85
  %153 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %136, float %137, float %138)  ; Dot3(ax,ay,az,bx,by,bz)
  %154 = call float @dx.op.unary.f32(i32 25, float %153)  ; Rsqrt(value)
  %155 = fmul fast float %154, %136
  %156 = fmul fast float %154, %137
  %157 = fmul fast float %154, %138
  %158 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %150, float %151, float %152)  ; Dot3(ax,ay,az,bx,by,bz)
  %159 = fmul fast float %158, %158
  %160 = fmul fast float %159, %146
  %161 = fadd fast float %160, %147
  %162 = call float @dx.op.unary.f32(i32 7, float %161)  ; Saturate(value)
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 3
  %165 = fmul fast float %164, %153
  %166 = fsub fast float %144, %165
  %167 = fmul fast float %166, %145
  %168 = call float @dx.op.unary.f32(i32 7, float %167)  ; Saturate(value)
  %169 = fmul fast float %168, %162
  %170 = fmul fast float %80, 5.000000e-01
  %171 = fmul fast float %81, 5.000000e-01
  %172 = fptosi float %170 to i32
  %173 = fptosi float %171 to i32
  %174 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %172, i32 %173, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = lshr i32 %175, 18
  %177 = uitofp i32 %176 to float
  %178 = fmul fast float %177, 0x3F4C00EBA0000000
  %179 = call float @dx.op.unary.f32(i32 21, float %178)  ; Exp(value)
  %180 = fadd fast float %179, -1.000000e+00
  %181 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %22, i32 0)  ; GetDimensions(handle,mipLevel)
  %182 = extractvalue %dx.types.Dimensions %181, 0
  %183 = sitofp i32 %182 to float
  %184 = extractvalue %dx.types.Dimensions %181, 1
  %185 = sitofp i32 %184 to float
  %186 = fcmp fast oge float %170, %183
  %187 = fcmp fast oge float %171, %185
  %188 = or i1 %186, %187
  %189 = select i1 %188, float 0x4197782600000000, float %180
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 3
  %193 = fmul fast float %191, %80
  %194 = fmul fast float %192, %81
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = and i32 %196, 114688
  %198 = icmp ne i32 %197, 0
  %199 = select i1 %198, float %193, float 0.000000e+00
  %200 = select i1 %198, float %194, float 0.000000e+00
  %201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %42, float %199, float %200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = fmul fast float %202, 2.550000e+02
  %204 = fptoui float %203 to i32
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.i32 %206, 3
  %208 = and i32 %207, 3
  %209 = icmp ne i32 %208, 0
  %210 = and i32 %207, 4
  %211 = icmp ne i32 %210, 0
  %212 = and i1 %209, %211
  br i1 %212, label %213, label %224

; <label>:213                                     ; preds = %0
  %214 = extractvalue %dx.types.CBufRet.f32 %205, 3
  %215 = fmul fast float %214, %81
  %216 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %217 = fmul fast float %216, %80
  %218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %41, float %217, float %215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = fsub fast float 1.000000e+00, %219
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = fcmp fast olt float %220, %222
  br label %227

; <label>:224                                     ; preds = %0
  %225 = icmp eq i32 %210, 0
  %226 = and i1 %209, %225
  br label %227

; <label>:227                                     ; preds = %224, %213
  %228 = phi i1 [ %223, %213 ], [ %226, %224 ]
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %231 = fmul fast float %230, 0x3FE3C6EF40000000
  %232 = frem fast float %80, 2.560000e+02
  %233 = frem fast float %81, 2.560000e+02
  %234 = fptoui float %232 to i32
  %235 = fptoui float %233 to i32
  %236 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %234, i32 %235, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = fadd fast float %237, %231
  %239 = call float @dx.op.unary.f32(i32 22, float %238)  ; Frc(value)
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = shl i32 %241, 4
  %243 = and i32 %242, 32752
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %241, 7
  %246 = and i32 %245, 32752
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %241, 22
  %249 = shl nuw nsw i32 %248, 5
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = and i32 %252, 255
  %254 = uitofp i32 %253 to float
  %255 = fmul fast float %254, 0x3F70101020000000
  %256 = lshr i32 %252, 8
  %257 = and i32 %256, 255
  %258 = uitofp i32 %257 to float
  %259 = fmul fast float %258, 0x3F70101020000000
  %260 = lshr i32 %252, 16
  %261 = and i32 %260, 255
  %262 = uitofp i32 %261 to float
  %263 = fmul fast float %262, 0x3F70101020000000
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 65535
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %265, 16
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 65535
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %271, 16
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = fmul fast float %273, 0x3F50624DE0000000
  %277 = fmul fast float %275, 0x3F50624DE0000000
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = and i32 %279, 2
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %289, label %282

; <label>:282                                     ; preds = %227
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = add i32 %284, 0
  %286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %285, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %287 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %286, %dx.types.Handle %77, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 3
  br label %289

; <label>:289                                     ; preds = %282, %227
  %290 = phi float [ 1.000000e+00, %227 ], [ %288, %282 ]
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = or i32 %294, %292
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %884, label %297

; <label>:297                                     ; preds = %289
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = lshr i32 %299, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = fmul fast float %301, 0x3F50624DE0000000
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = lshr i32 %304, 16
  %306 = and i32 %305, 255
  %307 = lshr i32 %304, 24
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = lshr i32 %315, 22
  %317 = shl nuw nsw i32 %316, 5
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = shl i32 %315, 4
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %315, 7
  %323 = and i32 %322, 32752
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 3
  %327 = fmul fast float %326, 1.000000e+03
  %328 = fmul fast float %276, %327
  %329 = call float @dx.op.unary.f32(i32 22, float %328)  ; Frc(value)
  %330 = fadd fast float %329, %267
  %331 = fmul fast float %277, %327
  %332 = call float @dx.op.unary.f32(i32 22, float %331)  ; Frc(value)
  %333 = fadd fast float %332, %269
  %334 = fmul fast float %302, %327
  %335 = call float @dx.op.unary.f32(i32 22, float %334)  ; Frc(value)
  %336 = fmul fast float %335, 0x401921FB60000000
  %337 = fadd fast float %336, %318
  %338 = call float @dx.op.unary.f32(i32 13, float %337)  ; Sin(value)
  %339 = call float @dx.op.unary.f32(i32 12, float %337)  ; Cos(value)
  %340 = fsub fast float -0.000000e+00, %338
  %341 = fadd fast float %63, -5.000000e-01
  %342 = fadd fast float %64, -5.000000e-01
  %343 = fmul fast float %311, %341
  %344 = fmul fast float %313, %342
  %345 = fadd fast float %343, 5.000000e-01
  %346 = fadd fast float %344, 5.000000e-01
  %347 = fmul fast float %321, %345
  %348 = fmul fast float %324, %346
  %349 = fmul fast float %339, %347
  %350 = call float @dx.op.tertiary.f32(i32 46, float %340, float %348, float %349)  ; FMad(a,b,c)
  %351 = fmul fast float %338, %347
  %352 = call float @dx.op.tertiary.f32(i32 46, float %339, float %348, float %351)  ; FMad(a,b,c)
  %353 = fadd fast float %330, %350
  %354 = fadd fast float %333, %352
  %355 = icmp ugt i32 %306, 1
  %356 = icmp ugt i32 %304, 33554431
  %357 = or i1 %356, %355
  br i1 %357, label %358, label %382

; <label>:358                                     ; preds = %297
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = lshr i32 %360, 16
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = fmul fast float %326, %362
  %364 = call float @dx.op.unary.f32(i32 22, float %363)  ; Frc(value)
  %365 = mul nuw nsw i32 %306, %307
  %366 = uitofp i32 %365 to float
  %367 = fmul fast float %364, %366
  %368 = call float @dx.op.unary.f32(i32 27, float %367)  ; Round_ni(value)
  %369 = fptoui float %368 to i32
  %370 = urem i32 %369, %306
  %371 = udiv i32 %369, %307
  %372 = call float @dx.op.unary.f32(i32 22, float %353)  ; Frc(value)
  %373 = call float @dx.op.unary.f32(i32 22, float %354)  ; Frc(value)
  %374 = uitofp i32 %370 to float
  %375 = uitofp i32 %371 to float
  %376 = fadd fast float %372, %374
  %377 = fadd fast float %373, %375
  %378 = uitofp i32 %306 to float
  %379 = uitofp i32 %307 to float
  %380 = fdiv fast float %376, %378
  %381 = fdiv fast float %377, %379
  br label %382

; <label>:382                                     ; preds = %358, %297
  %383 = phi float [ %380, %358 ], [ %353, %297 ]
  %384 = phi float [ %381, %358 ], [ %354, %297 ]
  %385 = and i32 %292, 256
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %431, label %387

; <label>:387                                     ; preds = %382
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = add i32 %389, 0
  %391 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %390, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %392 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %391, %dx.types.Handle %77, float %383, float %384, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = shl i32 %395, 4
  %397 = and i32 %396, 32752
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = lshr i32 %395, 7
  %400 = and i32 %399, 32752
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = fsub fast float 1.000000e+00, %290
  %403 = call float @dx.op.binary.f32(i32 35, float %402, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %404 = bitcast float %290 to i32
  %405 = sitofp i32 %404 to float
  %406 = fadd fast float %405, 0xC1CFBF8940000000
  %407 = fmul fast float %401, %406
  %408 = fadd fast float %407, 0x41CFBF8940000000
  %409 = fptosi float %408 to i32
  %410 = bitcast i32 %409 to float
  %411 = bitcast float %403 to i32
  %412 = sitofp i32 %411 to float
  %413 = fadd fast float %412, 0xC1CFBF8940000000
  %414 = fmul fast float %413, %401
  %415 = fadd fast float %414, 0x41CFBF8940000000
  %416 = fptosi float %415 to i32
  %417 = bitcast i32 %416 to float
  %418 = fmul fast float %410, %398
  %419 = fmul fast float %417, %398
  %420 = fsub fast float %403, %418
  %421 = fadd fast float %419, %403
  %422 = call float @dx.op.unary.f32(i32 7, float %420)  ; Saturate(value)
  %423 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  %424 = fsub fast float %393, %422
  %425 = fsub fast float %423, %422
  %426 = bitcast float %425 to i32
  %427 = sub nsw i32 2129859010, %426
  %428 = bitcast i32 %427 to float
  %429 = fmul fast float %428, %424
  %430 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  br label %431

; <label>:431                                     ; preds = %387, %382
  %432 = phi float [ %430, %387 ], [ %290, %382 ]
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 128
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %452, label %437

; <label>:437                                     ; preds = %431
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 180, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = add i32 %439, 0
  %441 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %440, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %442 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %441, %dx.types.Handle %77, float %383, float %384, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %445, 524288
  %447 = icmp ne i32 %446, 0
  %448 = fcmp fast ogt float %443, 0x3FE0101020000000
  %449 = select i1 %448, float 1.000000e+00, float 0.000000e+00
  %450 = select i1 %447, float %449, float %443
  %451 = fmul fast float %450, %432
  br label %452

; <label>:452                                     ; preds = %437, %431
  %453 = phi float [ %451, %437 ], [ %432, %431 ]
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 16
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %651, label %458

; <label>:458                                     ; preds = %452
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = add i32 %462, 0
  %464 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %463, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %465 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %464, %dx.types.Handle %76, float %383, float %384, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %466 = extractvalue %dx.types.ResRet.f32 %465, 0
  %467 = extractvalue %dx.types.ResRet.f32 %465, 1
  %468 = extractvalue %dx.types.ResRet.f32 %465, 2
  %469 = extractvalue %dx.types.ResRet.f32 %465, 3
  %470 = and i32 %460, 255
  %471 = uitofp i32 %470 to float
  %472 = lshr i32 %460, 8
  %473 = and i32 %472, 255
  %474 = uitofp i32 %473 to float
  %475 = fmul fast float %469, %471
  %476 = fadd fast float %475, %474
  %477 = fmul fast float %476, 0x3F70101000000000
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 512
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %489, label %482

; <label>:482                                     ; preds = %458
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = add i32 %484, 0
  %486 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %485, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %487 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %486, %dx.types.Handle %77, float %383, float %384, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  br label %489

; <label>:489                                     ; preds = %482, %458
  %490 = phi float [ %488, %482 ], [ 1.000000e+00, %458 ]
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = and i32 %492, 33554432
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %598, label %495

; <label>:495                                     ; preds = %489
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = and i32 %497, 65535
  %499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %498)  ; LegacyF16ToF32(value)
  %500 = lshr i32 %497, 16
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = and i32 %503, 65535
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = lshr i32 %507, 24
  %509 = uitofp i32 %508 to float
  %510 = fmul fast float %509, 0x3F70101020000000
  %511 = and i32 %507, 255
  %512 = uitofp i32 %511 to float
  %513 = fmul fast float %512, 0x3F70101020000000
  %514 = lshr i32 %507, 8
  %515 = and i32 %514, 255
  %516 = uitofp i32 %515 to float
  %517 = fmul fast float %516, 0x3F70101020000000
  %518 = lshr i32 %507, 16
  %519 = and i32 %518, 255
  %520 = uitofp i32 %519 to float
  %521 = fmul fast float %520, 0x3F70101020000000
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = lshr i32 %523, 24
  %525 = uitofp i32 %524 to float
  %526 = fmul fast float %525, 0x3F70101020000000
  %527 = and i32 %523, 255
  %528 = uitofp i32 %527 to float
  %529 = fmul fast float %528, 0x3F70101020000000
  %530 = lshr i32 %523, 8
  %531 = and i32 %530, 255
  %532 = uitofp i32 %531 to float
  %533 = fmul fast float %532, 0x3F70101020000000
  %534 = lshr i32 %523, 16
  %535 = and i32 %534, 255
  %536 = uitofp i32 %535 to float
  %537 = fmul fast float %536, 0x3F70101020000000
  %538 = bitcast float %466 to i32
  %539 = ashr i32 %538, 1
  %540 = sub nsw i32 1597463174, %539
  %541 = bitcast i32 %540 to float
  %542 = fmul fast float %466, 5.000000e-01
  %543 = fmul fast float %541, %541
  %544 = fmul fast float %543, %542
  %545 = fsub fast float 1.500000e+00, %544
  %546 = fmul fast float %541, %466
  %547 = fmul fast float %546, %545
  %548 = bitcast float %467 to i32
  %549 = ashr i32 %548, 1
  %550 = sub nsw i32 1597463174, %549
  %551 = bitcast i32 %550 to float
  %552 = fmul fast float %467, 5.000000e-01
  %553 = fmul fast float %551, %551
  %554 = fmul fast float %553, %552
  %555 = fsub fast float 1.500000e+00, %554
  %556 = fmul fast float %551, %467
  %557 = fmul fast float %556, %555
  %558 = bitcast float %468 to i32
  %559 = ashr i32 %558, 1
  %560 = sub nsw i32 1597463174, %559
  %561 = bitcast i32 %560 to float
  %562 = fmul fast float %468, 5.000000e-01
  %563 = fmul fast float %561, %561
  %564 = fmul fast float %563, %562
  %565 = fsub fast float 1.500000e+00, %564
  %566 = fmul fast float %561, %468
  %567 = fmul fast float %566, %565
  %568 = fsub fast float %547, %529
  %569 = fsub fast float %557, %533
  %570 = fsub fast float %567, %537
  %571 = fmul fast float %568, %499
  %572 = fmul fast float %569, %501
  %573 = fmul fast float %570, %505
  %574 = fadd fast float %571, %513
  %575 = fadd fast float %572, %517
  %576 = fadd fast float %573, %521
  %577 = call float @dx.op.unary.f32(i32 7, float %574)  ; Saturate(value)
  %578 = call float @dx.op.unary.f32(i32 7, float %575)  ; Saturate(value)
  %579 = call float @dx.op.unary.f32(i32 7, float %576)  ; Saturate(value)
  %580 = fmul fast float %577, %577
  %581 = fmul fast float %578, %578
  %582 = fmul fast float %579, %579
  %583 = fsub fast float %580, %466
  %584 = fsub fast float %581, %467
  %585 = fsub fast float %582, %468
  %586 = fmul fast float %583, %490
  %587 = fmul fast float %584, %490
  %588 = fmul fast float %585, %490
  %589 = fadd fast float %586, %466
  %590 = fadd fast float %587, %467
  %591 = fadd fast float %588, %468
  %592 = fadd fast float %510, %477
  %593 = fsub fast float %592, %526
  %594 = call float @dx.op.unary.f32(i32 7, float %593)  ; Saturate(value)
  %595 = fsub fast float %594, %477
  %596 = fmul fast float %595, %490
  %597 = fadd fast float %596, %477
  br label %651

; <label>:598                                     ; preds = %489
  %599 = and i32 %492, 134217728
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %635, label %601

; <label>:601                                     ; preds = %598
  %602 = call float @dx.op.unary.f32(i32 24, float %255)  ; Sqrt(value)
  %603 = call float @dx.op.unary.f32(i32 24, float %259)  ; Sqrt(value)
  %604 = call float @dx.op.unary.f32(i32 24, float %263)  ; Sqrt(value)
  %605 = fadd fast float %602, -5.000000e-01
  %606 = fadd fast float %603, -5.000000e-01
  %607 = fadd fast float %604, -5.000000e-01
  %608 = fmul fast float %605, %490
  %609 = fmul fast float %606, %490
  %610 = fmul fast float %607, %490
  %611 = fadd fast float %608, 5.000000e-01
  %612 = fadd fast float %609, 5.000000e-01
  %613 = fadd fast float %610, 5.000000e-01
  %614 = call float @dx.op.unary.f32(i32 24, float %466)  ; Sqrt(value)
  %615 = call float @dx.op.unary.f32(i32 24, float %467)  ; Sqrt(value)
  %616 = call float @dx.op.unary.f32(i32 24, float %468)  ; Sqrt(value)
  %617 = fmul fast float %611, 2.000000e+00
  %618 = fsub fast float 1.000000e+00, %617
  %619 = fmul fast float %618, %614
  %620 = fadd fast float %619, %617
  %621 = fmul fast float %620, %614
  %622 = fmul fast float %612, 2.000000e+00
  %623 = fsub fast float 1.000000e+00, %622
  %624 = fmul fast float %623, %615
  %625 = fadd fast float %624, %622
  %626 = fmul fast float %625, %615
  %627 = fmul fast float %613, 2.000000e+00
  %628 = fsub fast float 1.000000e+00, %627
  %629 = fmul fast float %628, %616
  %630 = fadd fast float %629, %627
  %631 = fmul fast float %630, %616
  %632 = fmul fast float %621, %621
  %633 = fmul fast float %626, %626
  %634 = fmul fast float %631, %631
  br label %651

; <label>:635                                     ; preds = %598
  %636 = fmul fast float %255, %255
  %637 = fmul fast float %259, %259
  %638 = fmul fast float %263, %263
  %639 = fadd fast float %636, -1.000000e+00
  %640 = fadd fast float %637, -1.000000e+00
  %641 = fadd fast float %638, -1.000000e+00
  %642 = fmul fast float %490, %639
  %643 = fmul fast float %490, %640
  %644 = fmul fast float %490, %641
  %645 = fadd fast float %642, 1.000000e+00
  %646 = fadd fast float %643, 1.000000e+00
  %647 = fadd fast float %644, 1.000000e+00
  %648 = fmul fast float %645, %466
  %649 = fmul fast float %646, %467
  %650 = fmul fast float %647, %468
  br label %651

; <label>:651                                     ; preds = %635, %601, %495, %452
  %652 = phi float [ %597, %495 ], [ %477, %601 ], [ %477, %635 ], [ 0x3FA23C0BE0000000, %452 ]
  %653 = phi float [ %589, %495 ], [ %632, %601 ], [ %648, %635 ], [ 1.000000e+00, %452 ]
  %654 = phi float [ %590, %495 ], [ %633, %601 ], [ %649, %635 ], [ 1.000000e+00, %452 ]
  %655 = phi float [ %591, %495 ], [ %634, %601 ], [ %650, %635 ], [ 1.000000e+00, %452 ]
  %656 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %657 = extractvalue %dx.types.CBufRet.i32 %656, 1
  %658 = and i32 %657, 1
  %659 = icmp ne i32 %658, 0
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = and i32 %661, 32
  %663 = icmp ne i32 %662, 0
  %664 = and i1 %659, %663
  %665 = select i1 %664, float 1.000000e+00, float %653
  %666 = select i1 %664, float 0x3FD3333340000000, float %654
  %667 = select i1 %664, float 0x3FD3333340000000, float %655
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = and i32 %669, 32
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %741, label %672

; <label>:672                                     ; preds = %651
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = add i32 %676, 0
  %678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %677, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %679 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %678, %dx.types.Handle %76, float %383, float %384, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %680 = extractvalue %dx.types.ResRet.f32 %679, 0
  %681 = extractvalue %dx.types.ResRet.f32 %679, 1
  %682 = extractvalue %dx.types.ResRet.f32 %679, 2
  %683 = extractvalue %dx.types.ResRet.f32 %679, 3
  %684 = and i32 %674, 255
  %685 = uitofp i32 %684 to float
  %686 = lshr i32 %674, 8
  %687 = and i32 %686, 255
  %688 = uitofp i32 %687 to float
  %689 = lshr i32 %674, 16
  %690 = and i32 %689, 255
  %691 = uitofp i32 %690 to float
  %692 = fmul fast float %691, 0x3F70101000000000
  %693 = fmul fast float %680, %685
  %694 = fadd fast float %693, %688
  %695 = fmul fast float %694, 0x3F70101000000000
  %696 = fadd fast float %681, -5.000000e-01
  %697 = fadd fast float %683, -5.000000e-01
  %698 = fmul fast float %696, %692
  %699 = fmul fast float %697, %692
  %700 = fadd fast float %698, 5.000000e-01
  %701 = fadd fast float %699, 5.000000e-01
  %702 = fmul fast float %700, 2.000000e+00
  %703 = fadd fast float %702, -1.000000e+00
  %704 = fmul fast float %701, 2.000000e+00
  %705 = fadd fast float %704, -1.000000e+00
  %706 = fadd fast float %703, %705
  %707 = fmul fast float %706, 5.000000e-01
  %708 = fsub fast float %703, %705
  %709 = fmul fast float %708, 5.000000e-01
  %710 = call float @dx.op.unary.f32(i32 6, float %707)  ; FAbs(value)
  %711 = fsub fast float 1.000000e+00, %710
  %712 = call float @dx.op.unary.f32(i32 6, float %709)  ; FAbs(value)
  %713 = fsub fast float %711, %712
  %714 = call float @dx.op.dot3.f32(i32 55, float %707, float %709, float %713, float %707, float %709, float %713)  ; Dot3(ax,ay,az,bx,by,bz)
  %715 = call float @dx.op.unary.f32(i32 25, float %714)  ; Rsqrt(value)
  %716 = fmul fast float %707, %715
  %717 = fmul fast float %709, %715
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = and i32 %719, 67108864
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %737, label %722

; <label>:722                                     ; preds = %672
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = and i32 %724, 65535
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = and i32 %728, 65535
  %730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %729)  ; LegacyF16ToF32(value)
  %731 = lshr i32 %724, 16
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = fsub fast float %695, %732
  %734 = fmul fast float %733, %726
  %735 = fadd fast float %734, %730
  %736 = call float @dx.op.unary.f32(i32 7, float %735)  ; Saturate(value)
  br label %737

; <label>:737                                     ; preds = %722, %672
  %738 = phi float [ %736, %722 ], [ %695, %672 ]
  %739 = call float @dx.op.dot2.f32(i32 54, float %716, float %717, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %740 = call float @dx.op.dot2.f32(i32 54, float %716, float %717, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %741

; <label>:741                                     ; preds = %737, %651
  %742 = phi float [ %738, %737 ], [ 0x3FD6666660000000, %651 ]
  %743 = phi float [ %739, %737 ], [ 0.000000e+00, %651 ]
  %744 = phi float [ %740, %737 ], [ 0.000000e+00, %651 ]
  %745 = phi float [ %682, %737 ], [ 1.000000e+00, %651 ]
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = lshr i32 %747, 22
  %749 = shl nuw nsw i32 %748, 5
  %750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %749)  ; LegacyF16ToF32(value)
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = and i32 %752, 64
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %787, label %755

; <label>:755                                     ; preds = %741
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 176, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = add i32 %757, 0
  %759 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %758, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = and i32 %761, 131072
  %763 = icmp eq i32 %762, 0
  %764 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %759, %dx.types.Handle %76, float %383, float %384, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %765 = extractvalue %dx.types.ResRet.f32 %764, 0
  %766 = extractvalue %dx.types.ResRet.f32 %764, 1
  %767 = extractvalue %dx.types.ResRet.f32 %764, 2
  %768 = fmul fast float %765, %244
  %769 = fmul fast float %766, %247
  %770 = fmul fast float %767, %250
  br i1 %763, label %777, label %771

; <label>:771                                     ; preds = %755
  %772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %773 = extractvalue %dx.types.CBufRet.f32 %772, 0
  %774 = fmul fast float %773, %768
  %775 = fmul fast float %773, %769
  %776 = fmul fast float %773, %770
  br label %777

; <label>:777                                     ; preds = %771, %755
  %778 = phi float [ %774, %771 ], [ %768, %755 ]
  %779 = phi float [ %775, %771 ], [ %769, %755 ]
  %780 = phi float [ %776, %771 ], [ %770, %755 ]
  %781 = fmul fast float %778, %750
  %782 = select i1 %228, float %781, float %778
  %783 = call float @dx.op.dot3.f32(i32 55, float %782, float %779, float %780, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %784 = select i1 %228, float 0.000000e+00, float %778
  %785 = select i1 %228, float %783, float %779
  %786 = select i1 %228, float 0.000000e+00, float %780
  br label %787

; <label>:787                                     ; preds = %777, %741
  %788 = phi float [ %784, %777 ], [ 0.000000e+00, %741 ]
  %789 = phi float [ %785, %777 ], [ 0.000000e+00, %741 ]
  %790 = phi float [ %786, %777 ], [ 0.000000e+00, %741 ]
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = and i32 %792, 1024
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %823, label %795

; <label>:795                                     ; preds = %787
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = and i32 %797, 255
  %799 = uitofp i32 %798 to float
  %800 = fmul fast float %799, 0x3F70101020000000
  %801 = lshr i32 %797, 8
  %802 = and i32 %801, 255
  %803 = uitofp i32 %802 to float
  %804 = fmul fast float %803, 0x3F70101020000000
  %805 = lshr i32 %797, 16
  %806 = and i32 %805, 255
  %807 = uitofp i32 %806 to float
  %808 = fmul fast float %807, 0x3F70101020000000
  %809 = fmul fast float %800, %800
  %810 = fmul fast float %804, %804
  %811 = fmul fast float %808, %808
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 192, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = add i32 %813, 0
  %815 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %814, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %816 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %815, %dx.types.Handle %77, float %383, float %384, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %817 = extractvalue %dx.types.ResRet.f32 %816, 0
  %818 = extractvalue %dx.types.ResRet.f32 %816, 1
  %819 = extractvalue %dx.types.ResRet.f32 %816, 2
  %820 = fmul fast float %809, %817
  %821 = fmul fast float %810, %818
  %822 = fmul fast float %811, %819
  br label %823

; <label>:823                                     ; preds = %795, %787
  %824 = phi float [ %820, %795 ], [ 0.000000e+00, %787 ]
  %825 = phi float [ %821, %795 ], [ 0.000000e+00, %787 ]
  %826 = phi float [ %822, %795 ], [ 0.000000e+00, %787 ]
  %827 = fcmp fast ogt float %824, 0.000000e+00
  %828 = fcmp fast ogt float %825, 0.000000e+00
  %829 = fcmp fast ogt float %826, 0.000000e+00
  %830 = call float @dx.op.unary.f32(i32 23, float %824)  ; Log(value)
  %831 = call float @dx.op.unary.f32(i32 23, float %825)  ; Log(value)
  %832 = call float @dx.op.unary.f32(i32 23, float %826)  ; Log(value)
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = lshr i32 %834, 7
  %836 = and i32 %835, 32752
  %837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %836)  ; LegacyF16ToF32(value)
  %838 = fmul fast float %830, 0xBFE62E4300000000
  %839 = fmul fast float %838, %837
  %840 = fmul fast float %831, 0xBFE62E4300000000
  %841 = fmul fast float %840, %837
  %842 = fmul fast float %832, 0xBFE62E4300000000
  %843 = fmul fast float %842, %837
  %844 = select i1 %827, float %839, float 1.270000e+02
  %845 = select i1 %828, float %841, float 1.270000e+02
  %846 = select i1 %829, float %843, float 1.270000e+02
  %847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.i32 %847, 0
  %849 = and i32 %848, 10240
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %870, label %851

; <label>:851                                     ; preds = %823
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = and i32 %853, 2048
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %870, label %856

; <label>:856                                     ; preds = %851
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = add i32 %858, 0
  %860 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %859, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %861 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %860, %dx.types.Handle %77, float %383, float %384, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %862 = extractvalue %dx.types.ResRet.f32 %861, 3
  %863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.i32 %863, 0
  %865 = shl i32 %864, 4
  %866 = and i32 %865, 32752
  %867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %866)  ; LegacyF16ToF32(value)
  %868 = fmul fast float %867, %862
  %869 = call float @dx.op.binary.f32(i32 35, float %868, float 0x3F70101020000000)  ; FMax(a,b)
  br label %870

; <label>:870                                     ; preds = %856, %851, %823
  %871 = phi float [ %869, %856 ], [ 0x3F70101020000000, %851 ], [ 0x3F70101020000000, %823 ]
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = and i32 %873, 255
  %875 = uitofp i32 %874 to float
  %876 = lshr i32 %873, 8
  %877 = and i32 %876, 255
  %878 = uitofp i32 %877 to float
  %879 = call float @dx.op.dot3.f32(i32 55, float %665, float %666, float %667, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %880 = fmul fast float %878, %879
  %881 = fadd fast float %880, %875
  %882 = fmul fast float %881, 0x3F70101020000000
  %883 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  br label %884

; <label>:884                                     ; preds = %870, %289
  %885 = phi float [ 0.000000e+00, %289 ], [ %743, %870 ]
  %886 = phi float [ 0.000000e+00, %289 ], [ %744, %870 ]
  %887 = phi float [ 0.000000e+00, %289 ], [ %665, %870 ]
  %888 = phi float [ 0.000000e+00, %289 ], [ %666, %870 ]
  %889 = phi float [ 0.000000e+00, %289 ], [ %667, %870 ]
  %890 = phi float [ 0.000000e+00, %289 ], [ %788, %870 ]
  %891 = phi float [ 0.000000e+00, %289 ], [ %789, %870 ]
  %892 = phi float [ 0.000000e+00, %289 ], [ %790, %870 ]
  %893 = phi float [ 0.000000e+00, %289 ], [ %844, %870 ]
  %894 = phi float [ 0.000000e+00, %289 ], [ %845, %870 ]
  %895 = phi float [ 0.000000e+00, %289 ], [ %846, %870 ]
  %896 = phi float [ 0.000000e+00, %289 ], [ %652, %870 ]
  %897 = phi float [ 0.000000e+00, %289 ], [ %453, %870 ]
  %898 = phi float [ 0.000000e+00, %289 ], [ %742, %870 ]
  %899 = phi float [ 0.000000e+00, %289 ], [ %745, %870 ]
  %900 = phi float [ 0.000000e+00, %289 ], [ %871, %870 ]
  %901 = phi float [ 0.000000e+00, %289 ], [ %883, %870 ]
  %902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.f32 %902, 0
  %904 = call float @dx.op.dot2.f32(i32 54, float %885, float %886, float %885, float %886)  ; Dot2(ax,ay,bx,by)
  %905 = fmul fast float %904, 0x3FE3333340000000
  %906 = fsub fast float 1.000000e+00, %905
  %907 = call float @dx.op.dot3.f32(i32 55, float %885, float %886, float %906, float %885, float %886, float %906)  ; Dot3(ax,ay,az,bx,by,bz)
  %908 = call float @dx.op.unary.f32(i32 25, float %907)  ; Rsqrt(value)
  %909 = fmul fast float %908, %885
  %910 = fmul fast float %908, %886
  %911 = fmul fast float %906, %908
  %912 = fmul fast float %911, %83
  %913 = fmul fast float %911, %84
  %914 = fmul fast float %911, %85
  %915 = fmul fast float %909, %56
  %916 = fmul fast float %909, %57
  %917 = fmul fast float %909, %58
  %918 = fmul fast float %88, %59
  %919 = fmul fast float %918, %910
  %920 = fmul fast float %91, %59
  %921 = fmul fast float %920, %910
  %922 = fmul fast float %94, %59
  %923 = fmul fast float %922, %910
  %924 = fadd fast float %919, %915
  %925 = fmul fast float %924, %82
  %926 = fadd fast float %925, %912
  %927 = fadd fast float %921, %916
  %928 = fmul fast float %927, %82
  %929 = fadd fast float %928, %913
  %930 = fadd fast float %923, %917
  %931 = fmul fast float %930, %82
  %932 = fadd fast float %931, %914
  %933 = call float @dx.op.dot3.f32(i32 55, float %926, float %929, float %932, float %926, float %929, float %932)  ; Dot3(ax,ay,az,bx,by,bz)
  %934 = call float @dx.op.unary.f32(i32 25, float %933)  ; Rsqrt(value)
  %935 = fmul fast float %926, %934
  %936 = fmul fast float %929, %934
  %937 = fmul fast float %932, %934
  %938 = call float @dx.op.unary.f32(i32 83, float %136)  ; DerivCoarseX(value)
  %939 = call float @dx.op.unary.f32(i32 83, float %137)  ; DerivCoarseX(value)
  %940 = call float @dx.op.unary.f32(i32 83, float %138)  ; DerivCoarseX(value)
  %941 = call float @dx.op.unary.f32(i32 84, float %136)  ; DerivCoarseY(value)
  %942 = call float @dx.op.unary.f32(i32 84, float %137)  ; DerivCoarseY(value)
  %943 = call float @dx.op.unary.f32(i32 84, float %138)  ; DerivCoarseY(value)
  %944 = fadd fast float %938, %136
  %945 = fadd fast float %939, %137
  %946 = fadd fast float %940, %138
  %947 = fadd fast float %941, %136
  %948 = fadd fast float %942, %137
  %949 = fadd fast float %943, %138
  %950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %951 = extractvalue %dx.types.CBufRet.f32 %950, 0
  %952 = extractvalue %dx.types.CBufRet.f32 %950, 1
  %953 = extractvalue %dx.types.CBufRet.f32 %950, 2
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 2
  %956 = extractvalue %dx.types.CBufRet.f32 %954, 3
  %957 = fmul fast float %951, %80
  %958 = fmul fast float %957, %955
  %959 = fmul fast float %952, %81
  %960 = fmul fast float %959, %956
  %961 = fptoui float %958 to i32
  %962 = fptoui float %960 to i32
  %963 = fadd fast float %951, -1.000000e+00
  %964 = fadd fast float %952, -1.000000e+00
  %965 = fptoui float %963 to i32
  %966 = fptoui float %964 to i32
  %967 = call i32 @dx.op.binary.i32(i32 40, i32 %961, i32 %965)  ; UMin(a,b)
  %968 = call i32 @dx.op.binary.i32(i32 40, i32 %962, i32 %966)  ; UMin(a,b)
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 2
  %971 = extractvalue %dx.types.CBufRet.f32 %969, 3
  %972 = fmul fast float %970, %68
  %973 = fsub fast float %972, %971
  %974 = fadd fast float %953, -1.000000e+00
  %975 = call float @dx.op.binary.f32(i32 36, float %973, float %974)  ; FMin(a,b)
  %976 = fptoui float %975 to i32
  %977 = fptoui float %951 to i32
  %978 = fptoui float %952 to i32
  %979 = mul i32 %976, %978
  %980 = add i32 %979, %968
  %981 = mul i32 %980, %977
  %982 = add i32 %981, %967
  %983 = shl i32 %982, 2
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = and i32 %985, 1023
  %987 = lshr i32 %985, 10
  %988 = icmp eq i32 %986, 0
  br i1 %988, label %1442, label %989

; <label>:989                                     ; preds = %884
  %990 = and i32 %985, 1023
  br label %991

; <label>:991                                     ; preds = %1120, %989
  %992 = phi i32 [ %1070, %1120 ], [ 0, %989 ]
  %993 = phi float [ %1121, %1120 ], [ 0.000000e+00, %989 ]
  %994 = phi float [ %1122, %1120 ], [ %903, %989 ]
  %995 = phi float [ %1123, %1120 ], [ %901, %989 ]
  %996 = phi float [ %1124, %1120 ], [ %893, %989 ]
  %997 = phi float [ %1125, %1120 ], [ %894, %989 ]
  %998 = phi float [ %1126, %1120 ], [ %895, %989 ]
  %999 = phi float [ %1127, %1120 ], [ 0.000000e+00, %989 ]
  %1000 = phi float [ %1128, %1120 ], [ 0.000000e+00, %989 ]
  %1001 = phi float [ %1129, %1120 ], [ %890, %989 ]
  %1002 = phi float [ %1130, %1120 ], [ %891, %989 ]
  %1003 = phi float [ %1131, %1120 ], [ %892, %989 ]
  %1004 = phi float [ %1132, %1120 ], [ %935, %989 ]
  %1005 = phi float [ %1133, %1120 ], [ %936, %989 ]
  %1006 = phi float [ %1134, %1120 ], [ %937, %989 ]
  %1007 = phi float [ %1135, %1120 ], [ %899, %989 ]
  %1008 = phi float [ %1136, %1120 ], [ %898, %989 ]
  %1009 = phi float [ %1137, %1120 ], [ 0.000000e+00, %989 ]
  %1010 = phi float [ %1138, %1120 ], [ %896, %989 ]
  %1011 = phi float [ %1139, %1120 ], [ %887, %989 ]
  %1012 = phi float [ %1140, %1120 ], [ %888, %989 ]
  %1013 = phi float [ %1141, %1120 ], [ %889, %989 ]
  %1014 = add nuw nsw i32 %992, %987
  %1015 = shl i32 %1014, 2
  %1016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.i32 %1016, 0
  %1018 = shl i32 %1017, 8
  %1019 = or i32 %1018, 48
  %1020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.ResRet.f32 %1020, 1
  %1023 = extractvalue %dx.types.ResRet.f32 %1020, 2
  %1024 = extractvalue %dx.types.ResRet.f32 %1020, 3
  %1025 = or i32 %1018, 64
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = extractvalue %dx.types.ResRet.i32 %1026, 1
  %1029 = or i32 %1018, 80
  %1030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 2
  %1032 = extractvalue %dx.types.ResRet.f32 %1030, 3
  %1033 = or i32 %1018, 96
  %1034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.ResRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.ResRet.f32 %1034, 2
  %1038 = extractvalue %dx.types.ResRet.f32 %1034, 3
  %1039 = or i32 %1018, 112
  %1040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 2
  %1042 = or i32 %1018, 128
  %1043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.f32 %1043, 0
  %1045 = extractvalue %dx.types.ResRet.f32 %1043, 1
  %1046 = extractvalue %dx.types.ResRet.f32 %1043, 2
  %1047 = extractvalue %dx.types.ResRet.f32 %1043, 3
  %1048 = or i32 %1018, 144
  %1049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1048, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1053 = extractvalue %dx.types.ResRet.f32 %1049, 3
  %1054 = or i32 %1018, 160
  %1055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.ResRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.ResRet.f32 %1055, 2
  %1059 = extractvalue %dx.types.ResRet.f32 %1055, 3
  %1060 = or i32 %1018, 192
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = or i32 %1018, 208
  %1064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.f32 %1064, 0
  %1066 = or i32 %1018, 248
  %1067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.f32 %1067, 0
  %1069 = extractvalue %dx.types.ResRet.f32 %1067, 1
  %1070 = add nuw nsw i32 %992, 1
  %1071 = bitcast float %1024 to i32
  %1072 = and i32 %1071, 512
  %1073 = icmp eq i32 %1072, 0
  %1074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 0
  %1076 = extractvalue %dx.types.ResRet.f32 %1074, 1
  %1077 = extractvalue %dx.types.ResRet.f32 %1074, 2
  %1078 = extractvalue %dx.types.ResRet.f32 %1074, 3
  %1079 = call float @dx.op.dot4.f32(i32 56, float %1075, float %1076, float %1077, float %1078, float %136, float %137, float %138, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1080 = or i32 %1018, 16
  %1081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1085 = extractvalue %dx.types.ResRet.f32 %1081, 3
  %1086 = call float @dx.op.dot4.f32(i32 56, float %1082, float %1083, float %1084, float %1085, float %136, float %137, float %138, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1087 = or i32 %1018, 32
  %1088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %1088, 2
  %1092 = extractvalue %dx.types.ResRet.f32 %1088, 3
  %1093 = call float @dx.op.dot4.f32(i32 56, float %1089, float %1090, float %1091, float %1092, float %136, float %137, float %138, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1094 = call float @dx.op.unary.f32(i32 27, float %1079)  ; Round_ni(value)
  %1095 = call float @dx.op.unary.f32(i32 6, float %1094)  ; FAbs(value)
  %1096 = call float @dx.op.unary.f32(i32 27, float %1086)  ; Round_ni(value)
  %1097 = call float @dx.op.unary.f32(i32 6, float %1096)  ; FAbs(value)
  %1098 = call float @dx.op.unary.f32(i32 6, float %1093)  ; FAbs(value)
  %1099 = call float @dx.op.unary.f32(i32 27, float %1098)  ; Round_ni(value)
  %1100 = fadd fast float %1097, %1095
  %1101 = fadd fast float %1100, %1099
  %1102 = fcmp fast oeq float %1101, 0.000000e+00
  %1103 = call float @dx.op.dot4.f32(i32 56, float %1075, float %1076, float %1077, float %1078, float %944, float %945, float %946, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1104 = call float @dx.op.dot4.f32(i32 56, float %1082, float %1083, float %1084, float %1085, float %944, float %945, float %946, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1105 = call float @dx.op.dot4.f32(i32 56, float %1075, float %1076, float %1077, float %1078, float %947, float %948, float %949, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1106 = call float @dx.op.dot4.f32(i32 56, float %1082, float %1083, float %1084, float %1085, float %947, float %948, float %949, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1107 = fsub fast float %1103, %1079
  %1108 = fsub fast float %1105, %1079
  %1109 = fsub fast float %1104, %1086
  %1110 = fsub fast float %1106, %1086
  %1111 = call float @dx.op.dot3.f32(i32 55, float %1021, float %1022, float %1023, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %1112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1113 = extractvalue %dx.types.CBufRet.f32 %1112, 2
  %1114 = fadd fast float %1113, %1111
  %1115 = call float @dx.op.unary.f32(i32 7, float %1114)  ; Saturate(value)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1112, 0
  %1117 = fcmp fast ogt float %1115, %1116
  %1118 = and i1 %1102, %1117
  %1119 = and i1 %1073, %1118
  br i1 %1119, label %1143, label %1120

; <label>:1120                                    ; preds = %1428, %1224, %1143, %991
  %1121 = phi float [ %993, %1143 ], [ %1227, %1224 ], [ %1227, %1428 ], [ %993, %991 ]
  %1122 = phi float [ %994, %1143 ], [ %994, %1224 ], [ %1404, %1428 ], [ %994, %991 ]
  %1123 = phi float [ %995, %1143 ], [ %995, %1224 ], [ %1402, %1428 ], [ %995, %991 ]
  %1124 = phi float [ %996, %1143 ], [ %996, %1224 ], [ %1380, %1428 ], [ %996, %991 ]
  %1125 = phi float [ %997, %1143 ], [ %997, %1224 ], [ %1381, %1428 ], [ %997, %991 ]
  %1126 = phi float [ %998, %1143 ], [ %998, %1224 ], [ %1382, %1428 ], [ %998, %991 ]
  %1127 = phi float [ %999, %1143 ], [ %999, %1224 ], [ %1351, %1428 ], [ %999, %991 ]
  %1128 = phi float [ %1000, %1143 ], [ %1000, %1224 ], [ %1349, %1428 ], [ %1000, %991 ]
  %1129 = phi float [ %1001, %1143 ], [ %1001, %1224 ], [ %1438, %1428 ], [ %1001, %991 ]
  %1130 = phi float [ %1002, %1143 ], [ %1002, %1224 ], [ %1439, %1428 ], [ %1002, %991 ]
  %1131 = phi float [ %1003, %1143 ], [ %1003, %1224 ], [ %1440, %1428 ], [ %1003, %991 ]
  %1132 = phi float [ %1004, %1143 ], [ %1004, %1224 ], [ %1330, %1428 ], [ %1004, %991 ]
  %1133 = phi float [ %1005, %1143 ], [ %1005, %1224 ], [ %1331, %1428 ], [ %1005, %991 ]
  %1134 = phi float [ %1006, %1143 ], [ %1006, %1224 ], [ %1332, %1428 ], [ %1006, %991 ]
  %1135 = phi float [ %1007, %1143 ], [ %1007, %1224 ], [ %1360, %1428 ], [ %1007, %991 ]
  %1136 = phi float [ %1008, %1143 ], [ %1008, %1224 ], [ %1357, %1428 ], [ %1008, %991 ]
  %1137 = phi float [ %1009, %1143 ], [ %1009, %1224 ], [ %1354, %1428 ], [ %1009, %991 ]
  %1138 = phi float [ %1010, %1143 ], [ %1010, %1224 ], [ %1347, %1428 ], [ %1010, %991 ]
  %1139 = phi float [ %1011, %1143 ], [ %1011, %1224 ], [ %1342, %1428 ], [ %1011, %991 ]
  %1140 = phi float [ %1012, %1143 ], [ %1012, %1224 ], [ %1343, %1428 ], [ %1012, %991 ]
  %1141 = phi float [ %1013, %1143 ], [ %1013, %1224 ], [ %1344, %1428 ], [ %1013, %991 ]
  %1142 = icmp eq i32 %1070, %990
  br i1 %1142, label %1441, label %991

; <label>:1143                                    ; preds = %991
  %1144 = extractvalue %dx.types.ResRet.f32 %1040, 3
  %1145 = extractvalue %dx.types.ResRet.f32 %1040, 1
  %1146 = extractvalue %dx.types.ResRet.f32 %1040, 0
  %1147 = extractvalue %dx.types.ResRet.f32 %1030, 1
  %1148 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1149 = extractvalue %dx.types.ResRet.i32 %1026, 3
  %1150 = extractvalue %dx.types.ResRet.i32 %1026, 2
  %1151 = add i32 %1149, 0
  %1152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1151, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1154 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1152, %dx.types.Handle %1153, float %1079, float %1086, float undef, float undef, i32 0, i32 0, i32 undef, float %1107, float %1109, float undef, float %1108, float %1110, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1155 = extractvalue %dx.types.ResRet.f32 %1154, 0
  %1156 = fmul fast float %1155, %1148
  %1157 = fadd fast float %1156, %1147
  %1158 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  %1159 = fmul fast float %1079, %1035
  %1160 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %1086, float %1159)  ; FMad(a,b,c)
  %1161 = fadd fast float %1160, %1146
  %1162 = fmul fast float %1079, %1037
  %1163 = call float @dx.op.tertiary.f32(i32 46, float %1038, float %1086, float %1162)  ; FMad(a,b,c)
  %1164 = fadd fast float %1163, %1145
  %1165 = fmul fast float %1107, %1035
  %1166 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %1109, float %1165)  ; FMad(a,b,c)
  %1167 = fmul fast float %1107, %1037
  %1168 = call float @dx.op.tertiary.f32(i32 46, float %1038, float %1109, float %1167)  ; FMad(a,b,c)
  %1169 = fmul fast float %1108, %1035
  %1170 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %1110, float %1169)  ; FMad(a,b,c)
  %1171 = fmul fast float %1108, %1037
  %1172 = call float @dx.op.tertiary.f32(i32 46, float %1038, float %1110, float %1171)  ; FMad(a,b,c)
  %1173 = add i32 %1150, 0
  %1174 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1173, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1175 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1174, %dx.types.Handle %1153, float %1161, float %1164, float undef, float undef, i32 0, i32 0, i32 undef, float %1166, float %1168, float undef, float %1170, float %1172, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = and i32 %1071, 1024
  %1178 = icmp ne i32 %1177, 0
  %1179 = fcmp fast ogt float %1176, 0x3FE0101020000000
  %1180 = uitofp i1 %1179 to float
  %1181 = select i1 %1178, float %1180, float %1176
  %1182 = and i32 %1071, 8192
  %1183 = icmp ne i32 %1182, 0
  %1184 = select i1 %1183, float %1144, float 1.000000e+00
  %1185 = fmul fast float %1079, 2.000000e+00
  %1186 = fadd fast float %1185, -1.000000e+00
  %1187 = call float @dx.op.unary.f32(i32 6, float %1186)  ; FAbs(value)
  %1188 = fmul fast float %1187, %1068
  %1189 = fsub fast float %1188, %1068
  %1190 = call float @dx.op.unary.f32(i32 7, float %1189)  ; Saturate(value)
  %1191 = fmul fast float %1086, 2.000000e+00
  %1192 = fadd fast float %1191, -1.000000e+00
  %1193 = call float @dx.op.unary.f32(i32 6, float %1192)  ; FAbs(value)
  %1194 = fmul fast float %1193, %1069
  %1195 = fsub fast float %1194, %1069
  %1196 = call float @dx.op.unary.f32(i32 7, float %1195)  ; Saturate(value)
  %1197 = fmul fast float %1098, %1031
  %1198 = fsub fast float %1197, %1031
  %1199 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1200 = fmul fast float %1158, %1184
  %1201 = fmul fast float %1200, %1155
  %1202 = fmul fast float %1201, %1190
  %1203 = fmul fast float %1202, %1181
  %1204 = fmul fast float %1203, %1196
  %1205 = fmul fast float %1204, %1199
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 1
  %1208 = extractvalue %dx.types.CBufRet.f32 %1206, 0
  %1209 = fsub fast float %1115, %1208
  %1210 = fmul fast float %1209, %1207
  %1211 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  %1212 = fmul fast float %1205, %1032
  %1213 = fadd fast float %1205, %1032
  %1214 = fmul fast float %1213, %1041
  %1215 = fsub fast float %1214, %1041
  %1216 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1217 = and i32 %1071, 128
  %1218 = icmp ne i32 %1217, 0
  %1219 = select i1 %1218, float %1216, float %1212
  %1220 = fmul fast float %1219, %1211
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 0
  %1223 = fcmp fast ugt float %1220, %1222
  br i1 %1223, label %1224, label %1120

; <label>:1224                                    ; preds = %1143
  %1225 = select i1 %1183, float %1220, float 0.000000e+00
  %1226 = fadd fast float %1225, %993
  %1227 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  br i1 %1183, label %1120, label %1228

; <label>:1228                                    ; preds = %1224
  %1229 = and i32 %1071, 4
  %1230 = and i32 %1071, 8
  %1231 = add i32 %1027, 0
  %1232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1231, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1234 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1232, %dx.types.Handle %1233, float %1161, float %1164, float undef, float undef, i32 0, i32 0, i32 undef, float %1166, float %1168, float undef, float %1170, float %1172, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1235 = extractvalue %dx.types.ResRet.f32 %1234, 0
  %1236 = extractvalue %dx.types.ResRet.f32 %1234, 1
  %1237 = extractvalue %dx.types.ResRet.f32 %1234, 2
  %1238 = extractvalue %dx.types.ResRet.f32 %1234, 3
  %1239 = bitcast float %1053 to i32
  %1240 = and i32 %1239, 255
  %1241 = uitofp i32 %1240 to float
  %1242 = lshr i32 %1239, 8
  %1243 = and i32 %1242, 255
  %1244 = uitofp i32 %1243 to float
  %1245 = fmul fast float %1238, %1241
  %1246 = fadd fast float %1245, %1244
  %1247 = fmul fast float %1246, 0x3F70101000000000
  %1248 = add i32 %1028, 0
  %1249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1248, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1250 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1249, %dx.types.Handle %1233, float %1161, float %1164, float undef, float undef, i32 0, i32 0, i32 undef, float %1166, float %1168, float undef, float %1170, float %1172, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.ResRet.f32 %1250, 1
  %1253 = extractvalue %dx.types.ResRet.f32 %1250, 2
  %1254 = extractvalue %dx.types.ResRet.f32 %1250, 3
  %1255 = bitcast float %1047 to i32
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
  %1274 = fmul fast float %1235, %1056
  %1275 = fmul fast float %1236, %1057
  %1276 = fmul fast float %1237, %1058
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
  %1294 = fmul fast float %1293, %1021
  %1295 = fmul fast float %1293, %1022
  %1296 = fmul fast float %1293, %1023
  %1297 = fmul fast float %1291, %1044
  %1298 = fmul fast float %1291, %1045
  %1299 = fmul fast float %1291, %1046
  %1300 = fadd fast float %1297, %1294
  %1301 = fadd fast float %1298, %1295
  %1302 = fadd fast float %1299, %1296
  %1303 = fmul fast float %1292, %1050
  %1304 = fmul fast float %1292, %1051
  %1305 = fmul fast float %1292, %1052
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
  %1317 = and i32 %1071, 1
  %1318 = icmp eq i32 %1317, 0
  br i1 %1318, label %1319, label %1323

; <label>:1319                                    ; preds = %1228
  %1320 = fsub fast float %1311, %1004
  %1321 = fsub fast float %1312, %1005
  %1322 = fsub fast float %1313, %1006
  br label %1323

; <label>:1323                                    ; preds = %1319, %1228
  %1324 = phi float [ %1320, %1319 ], [ %1311, %1228 ]
  %1325 = phi float [ %1321, %1319 ], [ %1312, %1228 ]
  %1326 = phi float [ %1322, %1319 ], [ %1313, %1228 ]
  %1327 = fmul float %1326, %1316
  %1328 = fmul float %1325, %1316
  %1329 = fmul float %1324, %1316
  %1330 = fadd fast float %1329, %1004
  %1331 = fadd fast float %1328, %1005
  %1332 = fadd fast float %1327, %1006
  %1333 = icmp ne i32 %1229, 0
  %1334 = select i1 %1333, float 1.000000e+00, float 0.000000e+00
  %1335 = fmul fast float %1220, %1334
  %1336 = fsub fast float %1274, %1011
  %1337 = fsub fast float %1275, %1012
  %1338 = fsub fast float %1276, %1013
  %1339 = fmul fast float %1336, %1335
  %1340 = fmul fast float %1337, %1335
  %1341 = fmul fast float %1338, %1335
  %1342 = fadd fast float %1339, %1011
  %1343 = fadd fast float %1340, %1012
  %1344 = fadd fast float %1341, %1013
  %1345 = fsub fast float %1247, %1010
  %1346 = fmul fast float %1345, %1335
  %1347 = fadd fast float %1346, %1010
  %1348 = fmul fast float %1335, %1000
  %1349 = fsub fast float %1000, %1348
  %1350 = fmul fast float %1335, %999
  %1351 = fsub fast float %999, %1350
  %1352 = bitcast float %1065 to i32
  %1353 = fadd fast float %1220, %1009
  %1354 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  %1355 = fsub fast float %1267, %1008
  %1356 = fmul fast float %1355, %1316
  %1357 = fadd fast float %1356, %1008
  %1358 = fsub fast float %1253, %1007
  %1359 = fmul fast float %1358, %1316
  %1360 = fadd fast float %1359, %1007
  br i1 %1318, label %1369, label %1361

; <label>:1361                                    ; preds = %1323
  %1362 = and i32 %1071, 32768
  %1363 = icmp eq i32 %1362, 0
  br i1 %1363, label %1379, label %1364

; <label>:1364                                    ; preds = %1361
  %1365 = fmul fast float %1316, 1.270000e+02
  %1366 = fadd fast float %1365, %996
  %1367 = fadd fast float %1365, %997
  %1368 = fadd fast float %1365, %998
  br label %1379

; <label>:1369                                    ; preds = %1323
  %1370 = fsub fast float 1.270000e+02, %996
  %1371 = fsub fast float 1.270000e+02, %997
  %1372 = fsub fast float 1.270000e+02, %998
  %1373 = fmul fast float %1316, %1370
  %1374 = fmul fast float %1316, %1371
  %1375 = fmul fast float %1316, %1372
  %1376 = fadd fast float %1373, %996
  %1377 = fadd fast float %1374, %997
  %1378 = fadd fast float %1375, %998
  br label %1379

; <label>:1379                                    ; preds = %1369, %1364, %1361
  %1380 = phi float [ %1366, %1364 ], [ %996, %1361 ], [ %1376, %1369 ]
  %1381 = phi float [ %1367, %1364 ], [ %997, %1361 ], [ %1377, %1369 ]
  %1382 = phi float [ %1368, %1364 ], [ %998, %1361 ], [ %1378, %1369 ]
  %1383 = call float @dx.op.dot3.f32(i32 55, float %1274, float %1275, float %1276, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1385 = extractvalue %dx.types.CBufRet.f32 %1384, 0
  %1386 = extractvalue %dx.types.CBufRet.f32 %1384, 1
  %1387 = fmul fast float %1386, %1383
  %1388 = fadd fast float %1387, %1385
  %1389 = call float @dx.op.unary.f32(i32 7, float %1388)  ; Saturate(value)
  %1390 = bitcast float %1059 to i32
  %1391 = and i32 %1390, 65535
  %1392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1391)  ; LegacyF16ToF32(value)
  %1393 = lshr i32 %1390, 16
  %1394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1393)  ; LegacyF16ToF32(value)
  %1395 = fcmp fast oge float %1392, 0.000000e+00
  %1396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1397 = extractvalue %dx.types.CBufRet.f32 %1396, 0
  %1398 = select i1 %1395, float %1392, float %1397
  %1399 = fadd fast float %1398, %1394
  %1400 = fsub fast float %1389, %995
  %1401 = fmul fast float %1400, %1220
  %1402 = fadd fast float %1401, %995
  %1403 = fmul fast float %1399, %1220
  %1404 = call float @dx.op.binary.f32(i32 35, float %994, float %1403)  ; FMax(a,b)
  %1405 = and i32 %1071, 16
  %1406 = icmp eq i32 %1405, 0
  br i1 %1406, label %1428, label %1407

; <label>:1407                                    ; preds = %1379
  %1408 = add i32 %1062, 0
  %1409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1408, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1410 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1409, %dx.types.Handle %1233, float %1161, float %1164, float undef, float undef, i32 0, i32 0, i32 undef, float %1166, float %1168, float undef, float %1170, float %1172, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1411 = extractvalue %dx.types.ResRet.f32 %1410, 0
  %1412 = extractvalue %dx.types.ResRet.f32 %1410, 1
  %1413 = extractvalue %dx.types.ResRet.f32 %1410, 2
  %1414 = and i32 %1352, 65535
  %1415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1414)  ; LegacyF16ToF32(value)
  %1416 = fmul fast float %1411, %1056
  %1417 = fmul fast float %1412, %1057
  %1418 = fmul fast float %1413, %1058
  %1419 = and i32 %1071, 16384
  %1420 = icmp ne i32 %1419, 0
  %1421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.f32 %1421, 0
  %1423 = select i1 %1420, float %1422, float 1.000000e+00
  %1424 = fmul fast float %1423, %1415
  %1425 = fmul fast float %1416, %1424
  %1426 = fmul fast float %1417, %1424
  %1427 = fmul fast float %1418, %1424
  br label %1428

; <label>:1428                                    ; preds = %1407, %1379
  %1429 = phi float [ %1425, %1407 ], [ 0.000000e+00, %1379 ]
  %1430 = phi float [ %1426, %1407 ], [ 0.000000e+00, %1379 ]
  %1431 = phi float [ %1427, %1407 ], [ 0.000000e+00, %1379 ]
  %1432 = fsub fast float %1429, %1001
  %1433 = fsub fast float %1430, %1002
  %1434 = fsub fast float %1431, %1003
  %1435 = fmul fast float %1432, %1220
  %1436 = fmul fast float %1433, %1220
  %1437 = fmul fast float %1434, %1220
  %1438 = fadd fast float %1435, %1001
  %1439 = fadd fast float %1436, %1002
  %1440 = fadd fast float %1437, %1003
  br label %1120

; <label>:1441                                    ; preds = %1120
  br label %1442

; <label>:1442                                    ; preds = %1441, %884
  %1443 = phi float [ 0.000000e+00, %884 ], [ %1121, %1441 ]
  %1444 = phi float [ %903, %884 ], [ %1122, %1441 ]
  %1445 = phi float [ %901, %884 ], [ %1123, %1441 ]
  %1446 = phi float [ %893, %884 ], [ %1124, %1441 ]
  %1447 = phi float [ %894, %884 ], [ %1125, %1441 ]
  %1448 = phi float [ %895, %884 ], [ %1126, %1441 ]
  %1449 = phi float [ 0.000000e+00, %884 ], [ %1127, %1441 ]
  %1450 = phi float [ 0.000000e+00, %884 ], [ %1128, %1441 ]
  %1451 = phi float [ %890, %884 ], [ %1129, %1441 ]
  %1452 = phi float [ %891, %884 ], [ %1130, %1441 ]
  %1453 = phi float [ %892, %884 ], [ %1131, %1441 ]
  %1454 = phi float [ %935, %884 ], [ %1132, %1441 ]
  %1455 = phi float [ %936, %884 ], [ %1133, %1441 ]
  %1456 = phi float [ %937, %884 ], [ %1134, %1441 ]
  %1457 = phi float [ %899, %884 ], [ %1135, %1441 ]
  %1458 = phi float [ %898, %884 ], [ %1136, %1441 ]
  %1459 = phi float [ 0.000000e+00, %884 ], [ %1137, %1441 ]
  %1460 = phi float [ %896, %884 ], [ %1138, %1441 ]
  %1461 = phi float [ %887, %884 ], [ %1139, %1441 ]
  %1462 = phi float [ %888, %884 ], [ %1140, %1441 ]
  %1463 = phi float [ %889, %884 ], [ %1141, %1441 ]
  %1464 = call float @dx.op.dot3.f32(i32 55, float %1454, float %1455, float %1456, float %1454, float %1455, float %1456)  ; Dot3(ax,ay,az,bx,by,bz)
  %1465 = call float @dx.op.unary.f32(i32 25, float %1464)  ; Rsqrt(value)
  %1466 = fmul fast float %1465, %1454
  %1467 = fmul fast float %1465, %1455
  %1468 = fmul fast float %1465, %1456
  %1469 = fadd fast float %1459, %897
  %1470 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  %1471 = call float @dx.op.dot3.f32(i32 55, float %1466, float %1467, float %1468, float %1466, float %1467, float %1468)  ; Dot3(ax,ay,az,bx,by,bz)
  %1472 = call float @dx.op.unary.f32(i32 25, float %1471)  ; Rsqrt(value)
  %1473 = fmul fast float %1472, %1466
  %1474 = fmul fast float %1472, %1467
  %1475 = fmul fast float %1472, %1468
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = extractvalue %dx.types.ResRet.i32 %1476, 1
  %1479 = extractvalue %dx.types.ResRet.i32 %1476, 2
  %1480 = extractvalue %dx.types.ResRet.i32 %1476, 3
  %1481 = bitcast i32 %1477 to float
  %1482 = bitcast i32 %1478 to float
  %1483 = bitcast i32 %1479 to float
  %1484 = bitcast i32 %1480 to float
  %1485 = fsub fast float %1461, %1481
  %1486 = fsub fast float %1462, %1482
  %1487 = fsub fast float %1463, %1483
  %1488 = fmul fast float %1485, %169
  %1489 = fmul fast float %1486, %169
  %1490 = fmul fast float %1487, %169
  %1491 = fadd fast float %1488, %1481
  %1492 = fadd fast float %1489, %1482
  %1493 = fadd fast float %1490, %1483
  %1494 = fsub fast float %1470, %1484
  %1495 = fmul fast float %1494, %169
  %1496 = fadd fast float %1495, %1484
  %1497 = fadd fast float %1460, 0xBFB99999A0000000
  %1498 = call float @dx.op.unary.f32(i32 7, float %1497)  ; Saturate(value)
  %1499 = fmul fast float %1498, 0x3FF1C71C80000000
  %1500 = call float @dx.op.binary.f32(i32 36, float %1460, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1501 = fsub fast float 1.000000e+00, %1499
  %1502 = call float @dx.op.unary.f32(i32 7, float %1501)  ; Saturate(value)
  %1503 = fmul fast float %1491, %1502
  %1504 = fmul fast float %1492, %1502
  %1505 = fmul fast float %1493, %1502
  %1506 = call float @dx.op.unary.f32(i32 7, float %1503)  ; Saturate(value)
  %1507 = call float @dx.op.unary.f32(i32 7, float %1504)  ; Saturate(value)
  %1508 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1509 = fmul fast float %1491, %1499
  %1510 = fmul fast float %1492, %1499
  %1511 = fmul fast float %1493, %1499
  %1512 = fadd fast float %1509, %1500
  %1513 = fadd fast float %1510, %1500
  %1514 = fadd fast float %1511, %1500
  %1515 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1516 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  %1517 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  %1518 = call float @dx.op.unary.f32(i32 7, float %1458)  ; Saturate(value)
  %1519 = call float @dx.op.binary.f32(i32 36, float %1446, float 1.270000e+02)  ; FMin(a,b)
  %1520 = call float @dx.op.binary.f32(i32 36, float %1447, float 1.270000e+02)  ; FMin(a,b)
  %1521 = call float @dx.op.binary.f32(i32 36, float %1448, float 1.270000e+02)  ; FMin(a,b)
  %1522 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.i32 %1522, 3
  %1524 = and i32 %1523, 8
  %1525 = icmp ne i32 %1524, 0
  %1526 = call float @dx.op.binary.f32(i32 35, float %1506, float %1491)  ; FMax(a,b)
  %1527 = call float @dx.op.binary.f32(i32 35, float %1507, float %1491)  ; FMax(a,b)
  %1528 = call float @dx.op.binary.f32(i32 35, float %1508, float %1491)  ; FMax(a,b)
  %1529 = call float @dx.op.dot3.f32(i32 55, float %1506, float %1507, float %1508, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1530 = select i1 %228, float %1491, float %1506
  %1531 = select i1 %228, float %1529, float %1507
  %1532 = select i1 %228, float 1.000000e+00, float %1508
  %1533 = select i1 %1525, float %1526, float %1530
  %1534 = select i1 %1525, float %1527, float %1531
  %1535 = select i1 %1525, float %1528, float %1532
  %1536 = and i32 %204, 3
  %1537 = select i1 %198, i32 %1536, i32 0
  %1538 = icmp eq i32 %1537, 1
  br i1 %1538, label %1539, label %1615

; <label>:1539                                    ; preds = %1442
  %1540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1541 = extractvalue %dx.types.CBufRet.f32 %1540, 0
  %1542 = extractvalue %dx.types.CBufRet.f32 %1540, 1
  %1543 = fadd fast float %1541, %136
  %1544 = fadd fast float %1542, %137
  %1545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.f32 %1545, 0
  %1547 = extractvalue %dx.types.CBufRet.f32 %1545, 1
  %1548 = fsub fast float %1543, %1546
  %1549 = fsub fast float %1544, %1547
  %1550 = fmul fast float %1548, %1548
  %1551 = fmul fast float %1549, %1549
  %1552 = fadd fast float %1550, %1551
  %1553 = call float @dx.op.unary.f32(i32 24, float %1552)  ; Sqrt(value)
  %1554 = extractvalue %dx.types.CBufRet.f32 %1545, 2
  %1555 = fcmp fast olt float %1553, %1554
  br i1 %1555, label %1556, label %1609

; <label>:1556                                    ; preds = %1539
  %1557 = extractvalue %dx.types.CBufRet.f32 %1540, 2
  %1558 = fadd fast float %1557, %138
  %1559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1560 = extractvalue %dx.types.CBufRet.f32 %1559, 0
  %1561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1562 = extractvalue %dx.types.CBufRet.f32 %1561, 0
  %1563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1564 = extractvalue %dx.types.CBufRet.f32 %1563, 0
  %1565 = extractvalue %dx.types.CBufRet.f32 %1559, 1
  %1566 = extractvalue %dx.types.CBufRet.f32 %1561, 1
  %1567 = extractvalue %dx.types.CBufRet.f32 %1563, 1
  %1568 = extractvalue %dx.types.CBufRet.f32 %1559, 3
  %1569 = extractvalue %dx.types.CBufRet.f32 %1561, 3
  %1570 = extractvalue %dx.types.CBufRet.f32 %1563, 3
  %1571 = fadd fast float %1568, %1543
  %1572 = fadd fast float %1569, %1544
  %1573 = fadd fast float %1558, %1570
  %1574 = fmul fast float %1571, %1560
  %1575 = call float @dx.op.tertiary.f32(i32 46, float %1572, float %1562, float %1574)  ; FMad(a,b,c)
  %1576 = call float @dx.op.tertiary.f32(i32 46, float %1573, float %1564, float %1575)  ; FMad(a,b,c)
  %1577 = fmul fast float %1571, %1565
  %1578 = call float @dx.op.tertiary.f32(i32 46, float %1572, float %1566, float %1577)  ; FMad(a,b,c)
  %1579 = call float @dx.op.tertiary.f32(i32 46, float %1573, float %1567, float %1578)  ; FMad(a,b,c)
  %1580 = fsub fast float %1576, %1568
  %1581 = fsub fast float %1579, %1569
  %1582 = fsub fast float %1580, %1546
  %1583 = fadd fast float %1582, %1554
  %1584 = fsub fast float %1581, %1547
  %1585 = fadd fast float %1584, %1554
  %1586 = extractvalue %dx.types.CBufRet.f32 %1545, 3
  %1587 = fmul fast float %1583, %1586
  %1588 = fmul fast float %1585, %1586
  %1589 = call float @dx.op.unary.f32(i32 7, float %1587)  ; Saturate(value)
  %1590 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  %1591 = fsub fast float 1.000000e+00, %1589
  %1592 = fsub fast float 1.000000e+00, %1590
  %1593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %41, float %1591, float %1592, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1594 = extractvalue %dx.types.ResRet.f32 %1593, 0
  %1595 = fcmp fast ugt float %1594, 0.000000e+00
  br i1 %1595, label %1596, label %1609

; <label>:1596                                    ; preds = %1556
  %1597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1598 = extractvalue %dx.types.CBufRet.f32 %1597, 2
  %1599 = fmul fast float %1598, %1594
  %1600 = extractvalue %dx.types.CBufRet.f32 %1597, 3
  %1601 = fadd fast float %1600, %1599
  %1602 = extractvalue %dx.types.CBufRet.f32 %1563, 2
  %1603 = fadd fast float %1601, %1570
  %1604 = fmul fast float %1576, %1564
  %1605 = call float @dx.op.tertiary.f32(i32 46, float %1579, float %1567, float %1604)  ; FMad(a,b,c)
  %1606 = call float @dx.op.tertiary.f32(i32 46, float %1603, float %1602, float %1605)  ; FMad(a,b,c)
  %1607 = fsub fast float %1606, %1570
  %1608 = fsub fast float %1607, %1557
  br label %1609

; <label>:1609                                    ; preds = %1596, %1556, %1539
  %1610 = phi i1 [ true, %1596 ], [ false, %1556 ], [ false, %1539 ]
  %1611 = phi float [ %1608, %1596 ], [ -1.310720e+05, %1556 ], [ -1.310720e+05, %1539 ]
  %1612 = fsub fast float %1611, %138
  %1613 = call float @dx.op.unary.f32(i32 7, float %1612)  ; Saturate(value)
  %1614 = select i1 %1610, float %1613, float 1.000000e+00
  br label %1615

; <label>:1615                                    ; preds = %1609, %1442
  %1616 = phi float [ %1614, %1609 ], [ 0.000000e+00, %1442 ]
  %1617 = icmp eq i32 %1537, 3
  %1618 = select i1 %1617, float 1.000000e+00, float %1616
  %1619 = call float @dx.op.binary.f32(i32 35, float %1443, float %1618)  ; FMax(a,b)
  %1620 = fcmp fast olt float %1618, 1.000000e+00
  br i1 %1620, label %1621, label %1781

; <label>:1621                                    ; preds = %1615
  %1622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.i32 %1622, 0
  %1624 = and i32 %1623, 7
  %1625 = icmp eq i32 %1624, 0
  br i1 %1625, label %1697, label %1626

; <label>:1626                                    ; preds = %1621
  %1627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1628 = extractvalue %dx.types.CBufRet.f32 %1627, 0
  %1629 = extractvalue %dx.types.CBufRet.f32 %1627, 1
  %1630 = extractvalue %dx.types.CBufRet.f32 %1627, 2
  %1631 = fadd fast float %1628, %136
  %1632 = fadd fast float %1629, %137
  %1633 = fadd fast float %1630, %138
  %1634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %1635 = extractvalue %dx.types.CBufRet.f32 %1634, 0
  %1636 = extractvalue %dx.types.CBufRet.f32 %1634, 1
  %1637 = extractvalue %dx.types.CBufRet.f32 %1634, 2
  %1638 = extractvalue %dx.types.CBufRet.f32 %1634, 3
  %1639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.f32 %1639, 0
  %1641 = extractvalue %dx.types.CBufRet.f32 %1639, 1
  %1642 = extractvalue %dx.types.CBufRet.f32 %1639, 2
  %1643 = extractvalue %dx.types.CBufRet.f32 %1639, 3
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 0
  %1646 = extractvalue %dx.types.CBufRet.f32 %1644, 1
  %1647 = extractvalue %dx.types.CBufRet.f32 %1644, 2
  %1648 = extractvalue %dx.types.CBufRet.f32 %1644, 3
  %1649 = fmul fast float %1631, %1635
  %1650 = call float @dx.op.tertiary.f32(i32 46, float %1632, float %1636, float %1649)  ; FMad(a,b,c)
  %1651 = call float @dx.op.tertiary.f32(i32 46, float %1633, float %1637, float %1650)  ; FMad(a,b,c)
  %1652 = fadd fast float %1651, %1638
  %1653 = fmul fast float %1640, %1631
  %1654 = call float @dx.op.tertiary.f32(i32 46, float %1632, float %1641, float %1653)  ; FMad(a,b,c)
  %1655 = call float @dx.op.tertiary.f32(i32 46, float %1633, float %1642, float %1654)  ; FMad(a,b,c)
  %1656 = fadd fast float %1655, %1643
  %1657 = fmul fast float %1645, %1631
  %1658 = call float @dx.op.tertiary.f32(i32 46, float %1632, float %1646, float %1657)  ; FMad(a,b,c)
  %1659 = call float @dx.op.tertiary.f32(i32 46, float %1633, float %1647, float %1658)  ; FMad(a,b,c)
  %1660 = fadd fast float %1659, %1648
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 1
  %1663 = extractvalue %dx.types.CBufRet.f32 %1661, 0
  %1664 = fmul fast float %1663, %239
  %1665 = fadd fast float %1660, %1664
  %1666 = fmul fast float %239, 0x401921FB60000000
  %1667 = call float @dx.op.unary.f32(i32 13, float %1666)  ; Sin(value)
  %1668 = call float @dx.op.unary.f32(i32 12, float %1666)  ; Cos(value)
  %1669 = fmul fast float %1668, %1662
  %1670 = call float @dx.op.tertiary.f32(i32 46, float %1667, float %1662, float 0.000000e+00)  ; FMad(a,b,c)
  %1671 = fmul fast float %1662, %1667
  %1672 = fsub fast float -0.000000e+00, %1671
  %1673 = call float @dx.op.tertiary.f32(i32 46, float %1668, float %1662, float 0.000000e+00)  ; FMad(a,b,c)
  br label %1674

; <label>:1674                                    ; preds = %1674, %1626
  %1675 = phi float [ 0.000000e+00, %1626 ], [ %1689, %1674 ]
  %1676 = phi i32 [ 0, %1626 ], [ %1690, %1674 ]
  %1677 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %1676
  %1678 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %1676
  %1679 = load float, float* %1677, align 4
  %1680 = load float, float* %1678, align 4
  %1681 = fmul fast float %1669, %1679
  %1682 = call float @dx.op.tertiary.f32(i32 46, float %1680, float %1672, float %1681)  ; FMad(a,b,c)
  %1683 = fmul fast float %1679, %1670
  %1684 = call float @dx.op.tertiary.f32(i32 46, float %1680, float %1673, float %1683)  ; FMad(a,b,c)
  %1685 = fadd fast float %1652, %1682
  %1686 = fadd fast float %1656, %1684
  %1687 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %43, float %1685, float %1686, float undef, float undef, i32 0, i32 0, i32 undef, float %1665)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1688 = extractvalue %dx.types.ResRet.f32 %1687, 0
  %1689 = fadd fast float %1688, %1675
  %1690 = add nuw nsw i32 %1676, 1
  %1691 = icmp eq i32 %1690, 4
  br i1 %1691, label %1692, label %1674

; <label>:1692                                    ; preds = %1674
  %1693 = fmul fast float %1689, 2.500000e-01
  %1694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %1695 = extractvalue %dx.types.CBufRet.f32 %1694, 1
  %1696 = fmul fast float %1695, %1693
  br label %1697

; <label>:1697                                    ; preds = %1692, %1621
  %1698 = phi float [ %1693, %1692 ], [ 0.000000e+00, %1621 ]
  %1699 = phi float [ %1696, %1692 ], [ 0.000000e+00, %1621 ]
  %1700 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %1701 = extractvalue %dx.types.CBufRet.i32 %1700, 0
  %1702 = and i32 %1701, 7
  %1703 = icmp eq i32 %1702, 0
  br i1 %1703, label %1781, label %1704

; <label>:1704                                    ; preds = %1697
  %1705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %1706 = extractvalue %dx.types.CBufRet.f32 %1705, 0
  %1707 = fmul fast float %1706, %1698
  %1708 = fadd fast float %1707, %1619
  %1709 = extractvalue %dx.types.CBufRet.f32 %1705, 2
  %1710 = fmul fast float %1709, %1698
  %1711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %1712 = extractvalue %dx.types.CBufRet.f32 %1711, 0
  %1713 = fmul fast float %1712, %1698
  %1714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1715 = and i32 %1701, 8
  %1716 = icmp eq i32 %1715, 0
  br i1 %1716, label %1781, label %1717

; <label>:1717                                    ; preds = %1704
  %1718 = extractvalue %dx.types.CBufRet.f32 %1714, 2
  %1719 = fadd fast float %1718, %138
  %1720 = extractvalue %dx.types.CBufRet.f32 %1714, 1
  %1721 = fadd fast float %1720, %137
  %1722 = extractvalue %dx.types.CBufRet.f32 %1714, 0
  %1723 = fadd fast float %1722, %136
  %1724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.f32 %1724, 0
  %1726 = extractvalue %dx.types.CBufRet.f32 %1724, 1
  %1727 = extractvalue %dx.types.CBufRet.f32 %1724, 2
  %1728 = fsub fast float %1723, %1725
  %1729 = fsub fast float %1721, %1726
  %1730 = fsub fast float %1719, %1727
  %1731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %1732 = extractvalue %dx.types.CBufRet.f32 %1731, 0
  %1733 = extractvalue %dx.types.CBufRet.f32 %1731, 1
  %1734 = extractvalue %dx.types.CBufRet.f32 %1731, 2
  %1735 = fmul fast float %1728, %1732
  %1736 = fmul fast float %1729, %1733
  %1737 = fmul fast float %1730, %1734
  %1738 = fcmp fast oge float %1735, 0.000000e+00
  %1739 = fcmp fast oge float %1736, 0.000000e+00
  %1740 = fcmp fast oge float %1737, 0.000000e+00
  %1741 = and i1 %1738, %1739
  %1742 = and i1 %1740, %1741
  %1743 = fcmp fast ole float %1735, 1.000000e+00
  %1744 = fcmp fast ole float %1736, 1.000000e+00
  %1745 = fcmp fast ole float %1737, 1.000000e+00
  %1746 = and i1 %1743, %1744
  %1747 = and i1 %1745, %1746
  %1748 = and i1 %1742, %1747
  br i1 %1748, label %1749, label %1781

; <label>:1749                                    ; preds = %1717
  %1750 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %1751 = extractvalue %dx.types.CBufRet.i32 %1750, 0
  %1752 = icmp eq i32 %1751, 0
  br i1 %1752, label %1759, label %1753

; <label>:1753                                    ; preds = %1749
  %1754 = add i32 %1751, 0
  %1755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1754, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1756 = fsub fast float -0.000000e+00, %1736
  %1757 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1755, %dx.types.Handle %77, float %1735, float %1756, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1758 = extractvalue %dx.types.ResRet.f32 %1757, 0
  br label %1759

; <label>:1759                                    ; preds = %1753, %1749
  %1760 = phi float [ %1758, %1753 ], [ 1.000000e+00, %1749 ]
  %1761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %1762 = extractvalue %dx.types.CBufRet.i32 %1761, 0
  %1763 = and i32 %1762, 32
  %1764 = icmp ne i32 %1763, 0
  %1765 = fmul fast float %1760, %1698
  %1766 = select i1 %1764, float %1760, float %1765
  %1767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %1768 = extractvalue %dx.types.CBufRet.f32 %1767, 1
  %1769 = fmul fast float %1766, %1768
  %1770 = fadd fast float %1769, %1708
  %1771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.f32 %1771, 0
  %1773 = fmul fast float %1766, %1772
  %1774 = fadd fast float %1773, %1699
  %1775 = extractvalue %dx.types.CBufRet.f32 %1771, 1
  %1776 = fmul fast float %1766, %1775
  %1777 = fadd fast float %1776, %1710
  %1778 = extractvalue %dx.types.CBufRet.f32 %1771, 2
  %1779 = fmul fast float %1778, %1766
  %1780 = fadd fast float %1779, %1713
  br label %1781

; <label>:1781                                    ; preds = %1759, %1717, %1704, %1697, %1615
  %1782 = phi float [ %1619, %1697 ], [ %1619, %1615 ], [ %1770, %1759 ], [ %1708, %1717 ], [ %1708, %1704 ]
  %1783 = phi float [ %1699, %1697 ], [ 0.000000e+00, %1615 ], [ %1774, %1759 ], [ %1699, %1717 ], [ %1699, %1704 ]
  %1784 = phi float [ 0.000000e+00, %1697 ], [ 0.000000e+00, %1615 ], [ %1777, %1759 ], [ %1710, %1717 ], [ %1710, %1704 ]
  %1785 = phi float [ 0.000000e+00, %1697 ], [ 0.000000e+00, %1615 ], [ %1780, %1759 ], [ %1713, %1717 ], [ %1713, %1704 ]
  %1786 = call float @dx.op.unary.f32(i32 7, float %1782)  ; Saturate(value)
  %1787 = call float @dx.op.unary.f32(i32 7, float %1783)  ; Saturate(value)
  %1788 = call float @dx.op.unary.f32(i32 7, float %1784)  ; Saturate(value)
  %1789 = call float @dx.op.unary.f32(i32 7, float %1785)  ; Saturate(value)
  %1790 = fcmp fast une float %1788, 0.000000e+00
  %1791 = fcmp fast une float %1789, 0.000000e+00
  %1792 = or i1 %1790, %1791
  br i1 %1792, label %1793, label %2359

; <label>:1793                                    ; preds = %1781
  %1794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1794, 0
  %1796 = extractvalue %dx.types.CBufRet.f32 %1794, 1
  %1797 = extractvalue %dx.types.CBufRet.f32 %1794, 2
  %1798 = fadd fast float %1795, %136
  %1799 = fadd fast float %1796, %137
  %1800 = fadd fast float %1797, %138
  br i1 %1790, label %1801, label %2074

; <label>:1801                                    ; preds = %1793
  %1802 = call float @dx.op.unary.f32(i32 23, float %1457)  ; Log(value)
  %1803 = fmul fast float %1802, 4.000000e+00
  %1804 = call float @dx.op.unary.f32(i32 21, float %1803)  ; Exp(value)
  %1805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %1806 = extractvalue %dx.types.CBufRet.f32 %1805, 0
  %1807 = fmul fast float %1806, %1798
  %1808 = fmul fast float %1806, %1799
  %1809 = fmul fast float %1806, %1800
  %1810 = call float @dx.op.unary.f32(i32 6, float %83)  ; FAbs(value)
  %1811 = call float @dx.op.unary.f32(i32 6, float %84)  ; FAbs(value)
  %1812 = call float @dx.op.unary.f32(i32 6, float %85)  ; FAbs(value)
  %1813 = call float @dx.op.unary.f32(i32 23, float %1810)  ; Log(value)
  %1814 = call float @dx.op.unary.f32(i32 23, float %1811)  ; Log(value)
  %1815 = call float @dx.op.unary.f32(i32 23, float %1812)  ; Log(value)
  %1816 = fmul fast float %1813, 4.000000e+00
  %1817 = fmul fast float %1814, 4.000000e+00
  %1818 = fmul fast float %1815, 4.000000e+00
  %1819 = call float @dx.op.unary.f32(i32 21, float %1816)  ; Exp(value)
  %1820 = call float @dx.op.unary.f32(i32 21, float %1817)  ; Exp(value)
  %1821 = call float @dx.op.unary.f32(i32 21, float %1818)  ; Exp(value)
  %1822 = fadd fast float %1820, %1819
  %1823 = fadd fast float %1822, %1821
  %1824 = fdiv fast float 1.000000e+00, %1823
  %1825 = fmul fast float %1824, %1819
  %1826 = fcmp fast ogt float %83, 0.000000e+00
  %1827 = fcmp fast ogt float %84, 0.000000e+00
  %1828 = fcmp fast ogt float %85, 0.000000e+00
  %1829 = fcmp fast olt float %83, 0.000000e+00
  %1830 = fcmp fast olt float %84, 0.000000e+00
  %1831 = fcmp fast olt float %85, 0.000000e+00
  %1832 = zext i1 %1826 to i32
  %1833 = zext i1 %1827 to i32
  %1834 = zext i1 %1828 to i32
  %1835 = zext i1 %1829 to i32
  %1836 = zext i1 %1830 to i32
  %1837 = zext i1 %1831 to i32
  %1838 = sub nsw i32 %1832, %1835
  %1839 = sub nsw i32 %1833, %1836
  %1840 = sub nsw i32 %1834, %1837
  %1841 = call float @dx.op.unary.f32(i32 83, float %1807)  ; DerivCoarseX(value)
  %1842 = call float @dx.op.unary.f32(i32 83, float %1808)  ; DerivCoarseX(value)
  %1843 = call float @dx.op.unary.f32(i32 83, float %1809)  ; DerivCoarseX(value)
  %1844 = call float @dx.op.unary.f32(i32 84, float %1807)  ; DerivCoarseY(value)
  %1845 = call float @dx.op.unary.f32(i32 84, float %1808)  ; DerivCoarseY(value)
  %1846 = call float @dx.op.unary.f32(i32 84, float %1809)  ; DerivCoarseY(value)
  %1847 = fcmp fast ole float %239, %1825
  %1848 = fmul fast float %1824, %1822
  %1849 = fcmp fast ole float %239, %1848
  %1850 = select i1 %1849, float %1809, float %1807
  %1851 = select i1 %1849, float %1807, float %1808
  %1852 = select i1 %1847, float %1808, float %1850
  %1853 = select i1 %1847, float %1809, float %1851
  %1854 = select i1 %1849, float %1843, float %1841
  %1855 = select i1 %1849, float %1841, float %1842
  %1856 = select i1 %1847, float %1842, float %1854
  %1857 = select i1 %1847, float %1843, float %1855
  %1858 = select i1 %1849, float %1846, float %1844
  %1859 = select i1 %1849, float %1844, float %1845
  %1860 = select i1 %1847, float %1845, float %1858
  %1861 = select i1 %1847, float %1846, float %1859
  %1862 = call float @dx.op.unary.f32(i32 27, float %1852)  ; Round_ni(value)
  %1863 = call float @dx.op.unary.f32(i32 27, float %1853)  ; Round_ni(value)
  %1864 = fptosi float %1862 to i32
  %1865 = fptosi float %1863 to i32
  %1866 = xor i32 %1865, %1864
  %1867 = sitofp i32 %1866 to float
  %1868 = fptosi float %1867 to i32
  %1869 = sitofp i32 %1868 to float
  %1870 = fmul fast float %1869, 0x3FE3C6EF40000000
  %1871 = frem fast float %1862, 2.560000e+02
  %1872 = frem fast float %1863, 2.560000e+02
  %1873 = fptoui float %1871 to i32
  %1874 = fptoui float %1872 to i32
  %1875 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %1873, i32 %1874, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1876 = extractvalue %dx.types.ResRet.f32 %1875, 0
  %1877 = extractvalue %dx.types.ResRet.f32 %1875, 1
  %1878 = extractvalue %dx.types.ResRet.f32 %1875, 2
  %1879 = fadd fast float %1876, %1870
  %1880 = fadd fast float %1877, %1870
  %1881 = fadd fast float %1878, %1870
  %1882 = call float @dx.op.unary.f32(i32 22, float %1879)  ; Frc(value)
  %1883 = call float @dx.op.unary.f32(i32 22, float %1880)  ; Frc(value)
  %1884 = call float @dx.op.unary.f32(i32 22, float %1881)  ; Frc(value)
  %1885 = fmul fast float %1884, 0x401921FB60000000
  %1886 = call float @dx.op.unary.f32(i32 13, float %1885)  ; Sin(value)
  %1887 = call float @dx.op.unary.f32(i32 12, float %1885)  ; Cos(value)
  %1888 = fsub fast float -0.000000e+00, %1887
  %1889 = fmul fast float %1887, %1852
  %1890 = call float @dx.op.tertiary.f32(i32 46, float %1886, float %1853, float %1889)  ; FMad(a,b,c)
  %1891 = fmul fast float %1886, %1852
  %1892 = call float @dx.op.tertiary.f32(i32 46, float %1888, float %1853, float %1891)  ; FMad(a,b,c)
  %1893 = fadd fast float %1890, %1882
  %1894 = fadd fast float %1892, %1883
  %1895 = extractvalue %dx.types.CBufRet.f32 %1805, 3
  %1896 = bitcast float %1895 to i32
  %1897 = icmp eq i32 %1896, 0
  br i1 %1897, label %1936, label %1898

; <label>:1898                                    ; preds = %1801
  %1899 = add i32 %1896, 0
  %1900 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1899, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1901 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1900, %dx.types.Handle %77, float %1893, float %1894, float undef, float undef, i32 0, i32 0, i32 undef, float %1856, float %1857, float undef, float %1860, float %1861, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1902 = extractvalue %dx.types.ResRet.f32 %1901, 0
  %1903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %1904 = extractvalue %dx.types.CBufRet.f32 %1903, 1
  %1905 = extractvalue %dx.types.CBufRet.f32 %1903, 2
  %1906 = fsub fast float 1.000000e+00, %1788
  %1907 = call float @dx.op.binary.f32(i32 35, float %1906, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1908 = bitcast float %1788 to i32
  %1909 = sitofp i32 %1908 to float
  %1910 = fadd fast float %1909, 0xC1CFBF8940000000
  %1911 = fmul fast float %1905, %1910
  %1912 = fadd fast float %1911, 0x41CFBF8940000000
  %1913 = fptosi float %1912 to i32
  %1914 = bitcast i32 %1913 to float
  %1915 = bitcast float %1907 to i32
  %1916 = sitofp i32 %1915 to float
  %1917 = fadd fast float %1916, 0xC1CFBF8940000000
  %1918 = fmul fast float %1917, %1905
  %1919 = fadd fast float %1918, 0x41CFBF8940000000
  %1920 = fptosi float %1919 to i32
  %1921 = bitcast i32 %1920 to float
  %1922 = fmul fast float %1914, %1904
  %1923 = fmul fast float %1921, %1904
  %1924 = fsub fast float %1907, %1922
  %1925 = fadd fast float %1923, %1907
  %1926 = call float @dx.op.unary.f32(i32 7, float %1924)  ; Saturate(value)
  %1927 = call float @dx.op.unary.f32(i32 7, float %1925)  ; Saturate(value)
  %1928 = fsub fast float %1902, %1926
  %1929 = fsub fast float %1927, %1926
  %1930 = bitcast float %1929 to i32
  %1931 = sub nsw i32 2129859010, %1930
  %1932 = bitcast i32 %1931 to float
  %1933 = fmul fast float %1932, %1928
  %1934 = call float @dx.op.unary.f32(i32 7, float %1933)  ; Saturate(value)
  %1935 = fcmp fast olt float %1934, 0x3F70101020000000
  br i1 %1935, label %2074, label %1936

; <label>:1936                                    ; preds = %1898, %1801
  %1937 = phi float [ %1934, %1898 ], [ %1788, %1801 ]
  %1938 = fmul fast float %1937, %1804
  %1939 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %1940 = extractvalue %dx.types.CBufRet.i32 %1939, 1
  %1941 = extractvalue %dx.types.CBufRet.i32 %1939, 0
  %1942 = add i32 %1941, 0
  %1943 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1942, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1944 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1943, %dx.types.Handle %76, float %1893, float %1894, float undef, float undef, i32 0, i32 0, i32 undef, float %1856, float %1857, float undef, float %1860, float %1861, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1945 = extractvalue %dx.types.ResRet.f32 %1944, 0
  %1946 = extractvalue %dx.types.ResRet.f32 %1944, 1
  %1947 = extractvalue %dx.types.ResRet.f32 %1944, 2
  %1948 = extractvalue %dx.types.ResRet.f32 %1944, 3
  %1949 = and i32 %1940, 255
  %1950 = uitofp i32 %1949 to float
  %1951 = lshr i32 %1940, 8
  %1952 = and i32 %1951, 255
  %1953 = uitofp i32 %1952 to float
  %1954 = fmul fast float %1948, %1950
  %1955 = fadd fast float %1954, %1953
  %1956 = fmul fast float %1955, 0x3F70101000000000
  %1957 = fadd fast float %1956, 0xBFB99999A0000000
  %1958 = call float @dx.op.unary.f32(i32 7, float %1957)  ; Saturate(value)
  %1959 = fmul fast float %1958, 0x3FF1C71C80000000
  %1960 = call float @dx.op.binary.f32(i32 36, float %1956, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1961 = fsub fast float 1.000000e+00, %1959
  %1962 = call float @dx.op.unary.f32(i32 7, float %1961)  ; Saturate(value)
  %1963 = fmul fast float %1962, %1945
  %1964 = fmul fast float %1962, %1946
  %1965 = fmul fast float %1962, %1947
  %1966 = call float @dx.op.unary.f32(i32 7, float %1963)  ; Saturate(value)
  %1967 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1968 = call float @dx.op.unary.f32(i32 7, float %1965)  ; Saturate(value)
  %1969 = fmul fast float %1959, %1945
  %1970 = fmul fast float %1959, %1946
  %1971 = fmul fast float %1959, %1947
  %1972 = fadd fast float %1969, %1960
  %1973 = fadd fast float %1970, %1960
  %1974 = fadd fast float %1971, %1960
  %1975 = call float @dx.op.unary.f32(i32 7, float %1972)  ; Saturate(value)
  %1976 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  %1977 = call float @dx.op.unary.f32(i32 7, float %1974)  ; Saturate(value)
  %1978 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %1979 = extractvalue %dx.types.CBufRet.i32 %1978, 3
  %1980 = extractvalue %dx.types.CBufRet.i32 %1978, 2
  %1981 = add i32 %1980, 0
  %1982 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1981, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1983 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1982, %dx.types.Handle %76, float %1893, float %1894, float undef, float undef, i32 0, i32 0, i32 undef, float %1856, float %1857, float undef, float %1860, float %1861, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1984 = extractvalue %dx.types.ResRet.f32 %1983, 0
  %1985 = extractvalue %dx.types.ResRet.f32 %1983, 1
  %1986 = extractvalue %dx.types.ResRet.f32 %1983, 2
  %1987 = extractvalue %dx.types.ResRet.f32 %1983, 3
  %1988 = and i32 %1979, 255
  %1989 = uitofp i32 %1988 to float
  %1990 = lshr i32 %1979, 8
  %1991 = and i32 %1990, 255
  %1992 = uitofp i32 %1991 to float
  %1993 = lshr i32 %1979, 16
  %1994 = and i32 %1993, 255
  %1995 = uitofp i32 %1994 to float
  %1996 = fmul fast float %1995, 0x3F70101000000000
  %1997 = fmul fast float %1984, %1989
  %1998 = fadd fast float %1997, %1992
  %1999 = fmul fast float %1998, 0x3F70101000000000
  %2000 = fadd fast float %1985, -5.000000e-01
  %2001 = fadd fast float %1987, -5.000000e-01
  %2002 = fmul fast float %2000, %1996
  %2003 = fmul fast float %2001, %1996
  %2004 = fadd fast float %2002, 5.000000e-01
  %2005 = fadd fast float %2003, 5.000000e-01
  %2006 = fmul fast float %2004, 2.000000e+00
  %2007 = fadd fast float %2006, -1.000000e+00
  %2008 = fmul fast float %2005, 2.000000e+00
  %2009 = fadd fast float %2008, -1.000000e+00
  %2010 = fadd fast float %2007, %2009
  %2011 = fmul fast float %2010, 5.000000e-01
  %2012 = fsub fast float %2007, %2009
  %2013 = fmul fast float %2012, 5.000000e-01
  %2014 = call float @dx.op.unary.f32(i32 6, float %2011)  ; FAbs(value)
  %2015 = fsub fast float 1.000000e+00, %2014
  %2016 = call float @dx.op.unary.f32(i32 6, float %2013)  ; FAbs(value)
  %2017 = fsub fast float %2015, %2016
  %2018 = call float @dx.op.dot3.f32(i32 55, float %2011, float %2013, float %2017, float %2011, float %2013, float %2017)  ; Dot3(ax,ay,az,bx,by,bz)
  %2019 = call float @dx.op.unary.f32(i32 25, float %2018)  ; Rsqrt(value)
  %2020 = fmul fast float %2011, %2019
  %2021 = fmul fast float %2013, %2019
  %2022 = select i1 %1849, i32 %1839, i32 %1840
  %2023 = select i1 %1847, i32 %1838, i32 %2022
  %2024 = sitofp i32 %2023 to float
  %2025 = fmul fast float %2017, %2024
  %2026 = fmul fast float %2025, %2019
  %2027 = select i1 %1849, float %2026, float %2021
  %2028 = select i1 %1849, float %2021, float %2026
  %2029 = select i1 %1847, float %2026, float %2020
  %2030 = select i1 %1847, float %2021, float %2027
  %2031 = select i1 %1847, float %2020, float %2028
  %2032 = fsub fast float %1966, %1533
  %2033 = fsub fast float %1967, %1534
  %2034 = fsub fast float %1968, %1535
  %2035 = fmul fast float %2032, %1938
  %2036 = fmul fast float %2033, %1938
  %2037 = fmul fast float %2034, %1938
  %2038 = fadd fast float %2035, %1533
  %2039 = fadd fast float %2036, %1534
  %2040 = fadd fast float %2037, %1535
  %2041 = fsub fast float %1975, %1515
  %2042 = fsub fast float %1976, %1516
  %2043 = fsub fast float %1977, %1517
  %2044 = fmul fast float %2041, %1938
  %2045 = fmul fast float %2042, %1938
  %2046 = fmul fast float %2043, %1938
  %2047 = fadd fast float %2044, %1515
  %2048 = fadd fast float %2045, %1516
  %2049 = fadd fast float %2046, %1517
  %2050 = fadd fast float %2029, %1473
  %2051 = fadd fast float %2030, %1474
  %2052 = fadd fast float %2031, %1475
  %2053 = call float @dx.op.dot3.f32(i32 55, float %2050, float %2051, float %2052, float %2050, float %2051, float %2052)  ; Dot3(ax,ay,az,bx,by,bz)
  %2054 = call float @dx.op.unary.f32(i32 25, float %2053)  ; Rsqrt(value)
  %2055 = fmul fast float %2050, %2054
  %2056 = fmul fast float %2051, %2054
  %2057 = fmul fast float %2052, %2054
  %2058 = fsub fast float %2055, %1473
  %2059 = fsub fast float %2056, %1474
  %2060 = fsub fast float %2057, %1475
  %2061 = fmul fast float %2058, %1938
  %2062 = fmul fast float %2059, %1938
  %2063 = fmul fast float %2060, %1938
  %2064 = fadd fast float %2061, %1473
  %2065 = fadd fast float %2062, %1474
  %2066 = fadd fast float %2063, %1475
  %2067 = call float @dx.op.binary.f32(i32 36, float %1457, float %1986)  ; FMin(a,b)
  %2068 = fsub fast float %2067, %1457
  %2069 = fmul fast float %2068, %1938
  %2070 = fadd fast float %2069, %1457
  %2071 = fsub fast float %1999, %1518
  %2072 = fmul fast float %2071, %1938
  %2073 = fadd fast float %2072, %1518
  br label %2074

; <label>:2074                                    ; preds = %1936, %1898, %1793
  %2075 = phi float [ %2047, %1936 ], [ %1515, %1898 ], [ %1515, %1793 ]
  %2076 = phi float [ %2048, %1936 ], [ %1516, %1898 ], [ %1516, %1793 ]
  %2077 = phi float [ %2049, %1936 ], [ %1517, %1898 ], [ %1517, %1793 ]
  %2078 = phi float [ %2038, %1936 ], [ %1533, %1898 ], [ %1533, %1793 ]
  %2079 = phi float [ %2039, %1936 ], [ %1534, %1898 ], [ %1534, %1793 ]
  %2080 = phi float [ %2040, %1936 ], [ %1535, %1898 ], [ %1535, %1793 ]
  %2081 = phi float [ %2064, %1936 ], [ %1473, %1898 ], [ %1473, %1793 ]
  %2082 = phi float [ %2065, %1936 ], [ %1474, %1898 ], [ %1474, %1793 ]
  %2083 = phi float [ %2066, %1936 ], [ %1475, %1898 ], [ %1475, %1793 ]
  %2084 = phi float [ %2073, %1936 ], [ %1518, %1898 ], [ %1518, %1793 ]
  %2085 = phi float [ %2070, %1936 ], [ %1457, %1898 ], [ %1457, %1793 ]
  br i1 %1791, label %2086, label %2359

; <label>:2086                                    ; preds = %2074
  %2087 = call float @dx.op.unary.f32(i32 23, float %2085)  ; Log(value)
  %2088 = fmul fast float %2087, 4.000000e+00
  %2089 = call float @dx.op.unary.f32(i32 21, float %2088)  ; Exp(value)
  %2090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %2091 = extractvalue %dx.types.CBufRet.f32 %2090, 0
  %2092 = fmul fast float %2091, %1798
  %2093 = fmul fast float %2091, %1799
  %2094 = fmul fast float %2091, %1800
  %2095 = call float @dx.op.unary.f32(i32 6, float %83)  ; FAbs(value)
  %2096 = call float @dx.op.unary.f32(i32 6, float %84)  ; FAbs(value)
  %2097 = call float @dx.op.unary.f32(i32 6, float %85)  ; FAbs(value)
  %2098 = call float @dx.op.unary.f32(i32 23, float %2095)  ; Log(value)
  %2099 = call float @dx.op.unary.f32(i32 23, float %2096)  ; Log(value)
  %2100 = call float @dx.op.unary.f32(i32 23, float %2097)  ; Log(value)
  %2101 = fmul fast float %2098, 4.000000e+00
  %2102 = fmul fast float %2099, 4.000000e+00
  %2103 = fmul fast float %2100, 4.000000e+00
  %2104 = call float @dx.op.unary.f32(i32 21, float %2101)  ; Exp(value)
  %2105 = call float @dx.op.unary.f32(i32 21, float %2102)  ; Exp(value)
  %2106 = call float @dx.op.unary.f32(i32 21, float %2103)  ; Exp(value)
  %2107 = fadd fast float %2105, %2104
  %2108 = fadd fast float %2107, %2106
  %2109 = fdiv fast float 1.000000e+00, %2108
  %2110 = fmul fast float %2109, %2104
  %2111 = fcmp fast ogt float %83, 0.000000e+00
  %2112 = fcmp fast ogt float %84, 0.000000e+00
  %2113 = fcmp fast ogt float %85, 0.000000e+00
  %2114 = fcmp fast olt float %83, 0.000000e+00
  %2115 = fcmp fast olt float %84, 0.000000e+00
  %2116 = fcmp fast olt float %85, 0.000000e+00
  %2117 = zext i1 %2111 to i32
  %2118 = zext i1 %2112 to i32
  %2119 = zext i1 %2113 to i32
  %2120 = zext i1 %2114 to i32
  %2121 = zext i1 %2115 to i32
  %2122 = zext i1 %2116 to i32
  %2123 = sub nsw i32 %2117, %2120
  %2124 = sub nsw i32 %2118, %2121
  %2125 = sub nsw i32 %2119, %2122
  %2126 = call float @dx.op.unary.f32(i32 83, float %2092)  ; DerivCoarseX(value)
  %2127 = call float @dx.op.unary.f32(i32 83, float %2093)  ; DerivCoarseX(value)
  %2128 = call float @dx.op.unary.f32(i32 83, float %2094)  ; DerivCoarseX(value)
  %2129 = call float @dx.op.unary.f32(i32 84, float %2092)  ; DerivCoarseY(value)
  %2130 = call float @dx.op.unary.f32(i32 84, float %2093)  ; DerivCoarseY(value)
  %2131 = call float @dx.op.unary.f32(i32 84, float %2094)  ; DerivCoarseY(value)
  %2132 = fcmp fast ole float %239, %2110
  %2133 = fmul fast float %2109, %2107
  %2134 = fcmp fast ole float %239, %2133
  %2135 = select i1 %2134, float %2094, float %2092
  %2136 = select i1 %2134, float %2092, float %2093
  %2137 = select i1 %2132, float %2093, float %2135
  %2138 = select i1 %2132, float %2094, float %2136
  %2139 = select i1 %2134, float %2128, float %2126
  %2140 = select i1 %2134, float %2126, float %2127
  %2141 = select i1 %2132, float %2127, float %2139
  %2142 = select i1 %2132, float %2128, float %2140
  %2143 = select i1 %2134, float %2131, float %2129
  %2144 = select i1 %2134, float %2129, float %2130
  %2145 = select i1 %2132, float %2130, float %2143
  %2146 = select i1 %2132, float %2131, float %2144
  %2147 = call float @dx.op.unary.f32(i32 27, float %2137)  ; Round_ni(value)
  %2148 = call float @dx.op.unary.f32(i32 27, float %2138)  ; Round_ni(value)
  %2149 = fptosi float %2147 to i32
  %2150 = fptosi float %2148 to i32
  %2151 = xor i32 %2150, %2149
  %2152 = sitofp i32 %2151 to float
  %2153 = fptosi float %2152 to i32
  %2154 = sitofp i32 %2153 to float
  %2155 = fmul fast float %2154, 0x3FE3C6EF40000000
  %2156 = frem fast float %2147, 2.560000e+02
  %2157 = frem fast float %2148, 2.560000e+02
  %2158 = fptoui float %2156 to i32
  %2159 = fptoui float %2157 to i32
  %2160 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %2158, i32 %2159, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2161 = extractvalue %dx.types.ResRet.f32 %2160, 0
  %2162 = extractvalue %dx.types.ResRet.f32 %2160, 1
  %2163 = extractvalue %dx.types.ResRet.f32 %2160, 2
  %2164 = fadd fast float %2161, %2155
  %2165 = fadd fast float %2162, %2155
  %2166 = fadd fast float %2163, %2155
  %2167 = call float @dx.op.unary.f32(i32 22, float %2164)  ; Frc(value)
  %2168 = call float @dx.op.unary.f32(i32 22, float %2165)  ; Frc(value)
  %2169 = call float @dx.op.unary.f32(i32 22, float %2166)  ; Frc(value)
  %2170 = fmul fast float %2169, 0x401921FB60000000
  %2171 = call float @dx.op.unary.f32(i32 13, float %2170)  ; Sin(value)
  %2172 = call float @dx.op.unary.f32(i32 12, float %2170)  ; Cos(value)
  %2173 = fsub fast float -0.000000e+00, %2172
  %2174 = fmul fast float %2172, %2137
  %2175 = call float @dx.op.tertiary.f32(i32 46, float %2171, float %2138, float %2174)  ; FMad(a,b,c)
  %2176 = fmul fast float %2171, %2137
  %2177 = call float @dx.op.tertiary.f32(i32 46, float %2173, float %2138, float %2176)  ; FMad(a,b,c)
  %2178 = fadd fast float %2175, %2167
  %2179 = fadd fast float %2177, %2168
  %2180 = extractvalue %dx.types.CBufRet.f32 %2090, 3
  %2181 = bitcast float %2180 to i32
  %2182 = icmp eq i32 %2181, 0
  br i1 %2182, label %2221, label %2183

; <label>:2183                                    ; preds = %2086
  %2184 = add i32 %2181, 0
  %2185 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2184, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2186 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2185, %dx.types.Handle %77, float %2178, float %2179, float undef, float undef, i32 0, i32 0, i32 undef, float %2141, float %2142, float undef, float %2145, float %2146, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2187 = extractvalue %dx.types.ResRet.f32 %2186, 0
  %2188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %2189 = extractvalue %dx.types.CBufRet.f32 %2188, 1
  %2190 = extractvalue %dx.types.CBufRet.f32 %2188, 2
  %2191 = fsub fast float 1.000000e+00, %1789
  %2192 = call float @dx.op.binary.f32(i32 35, float %2191, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2193 = bitcast float %1789 to i32
  %2194 = sitofp i32 %2193 to float
  %2195 = fadd fast float %2194, 0xC1CFBF8940000000
  %2196 = fmul fast float %2190, %2195
  %2197 = fadd fast float %2196, 0x41CFBF8940000000
  %2198 = fptosi float %2197 to i32
  %2199 = bitcast i32 %2198 to float
  %2200 = bitcast float %2192 to i32
  %2201 = sitofp i32 %2200 to float
  %2202 = fadd fast float %2201, 0xC1CFBF8940000000
  %2203 = fmul fast float %2202, %2190
  %2204 = fadd fast float %2203, 0x41CFBF8940000000
  %2205 = fptosi float %2204 to i32
  %2206 = bitcast i32 %2205 to float
  %2207 = fmul fast float %2199, %2189
  %2208 = fmul fast float %2206, %2189
  %2209 = fsub fast float %2192, %2207
  %2210 = fadd fast float %2208, %2192
  %2211 = call float @dx.op.unary.f32(i32 7, float %2209)  ; Saturate(value)
  %2212 = call float @dx.op.unary.f32(i32 7, float %2210)  ; Saturate(value)
  %2213 = fsub fast float %2187, %2211
  %2214 = fsub fast float %2212, %2211
  %2215 = bitcast float %2214 to i32
  %2216 = sub nsw i32 2129859010, %2215
  %2217 = bitcast i32 %2216 to float
  %2218 = fmul fast float %2217, %2213
  %2219 = call float @dx.op.unary.f32(i32 7, float %2218)  ; Saturate(value)
  %2220 = fcmp fast olt float %2219, 0x3F70101020000000
  br i1 %2220, label %2359, label %2221

; <label>:2221                                    ; preds = %2183, %2086
  %2222 = phi float [ %2219, %2183 ], [ %1789, %2086 ]
  %2223 = fmul fast float %2222, %2089
  %2224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %2225 = extractvalue %dx.types.CBufRet.i32 %2224, 1
  %2226 = extractvalue %dx.types.CBufRet.i32 %2224, 0
  %2227 = add i32 %2226, 0
  %2228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2229 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2228, %dx.types.Handle %76, float %2178, float %2179, float undef, float undef, i32 0, i32 0, i32 undef, float %2141, float %2142, float undef, float %2145, float %2146, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2230 = extractvalue %dx.types.ResRet.f32 %2229, 0
  %2231 = extractvalue %dx.types.ResRet.f32 %2229, 1
  %2232 = extractvalue %dx.types.ResRet.f32 %2229, 2
  %2233 = extractvalue %dx.types.ResRet.f32 %2229, 3
  %2234 = and i32 %2225, 255
  %2235 = uitofp i32 %2234 to float
  %2236 = lshr i32 %2225, 8
  %2237 = and i32 %2236, 255
  %2238 = uitofp i32 %2237 to float
  %2239 = fmul fast float %2233, %2235
  %2240 = fadd fast float %2239, %2238
  %2241 = fmul fast float %2240, 0x3F70101000000000
  %2242 = fadd fast float %2241, 0xBFB99999A0000000
  %2243 = call float @dx.op.unary.f32(i32 7, float %2242)  ; Saturate(value)
  %2244 = fmul fast float %2243, 0x3FF1C71C80000000
  %2245 = call float @dx.op.binary.f32(i32 36, float %2241, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2246 = fsub fast float 1.000000e+00, %2244
  %2247 = call float @dx.op.unary.f32(i32 7, float %2246)  ; Saturate(value)
  %2248 = fmul fast float %2247, %2230
  %2249 = fmul fast float %2247, %2231
  %2250 = fmul fast float %2247, %2232
  %2251 = call float @dx.op.unary.f32(i32 7, float %2248)  ; Saturate(value)
  %2252 = call float @dx.op.unary.f32(i32 7, float %2249)  ; Saturate(value)
  %2253 = call float @dx.op.unary.f32(i32 7, float %2250)  ; Saturate(value)
  %2254 = fmul fast float %2244, %2230
  %2255 = fmul fast float %2244, %2231
  %2256 = fmul fast float %2244, %2232
  %2257 = fadd fast float %2254, %2245
  %2258 = fadd fast float %2255, %2245
  %2259 = fadd fast float %2256, %2245
  %2260 = call float @dx.op.unary.f32(i32 7, float %2257)  ; Saturate(value)
  %2261 = call float @dx.op.unary.f32(i32 7, float %2258)  ; Saturate(value)
  %2262 = call float @dx.op.unary.f32(i32 7, float %2259)  ; Saturate(value)
  %2263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %2264 = extractvalue %dx.types.CBufRet.i32 %2263, 3
  %2265 = extractvalue %dx.types.CBufRet.i32 %2263, 2
  %2266 = add i32 %2265, 0
  %2267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2266, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2268 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2267, %dx.types.Handle %76, float %2178, float %2179, float undef, float undef, i32 0, i32 0, i32 undef, float %2141, float %2142, float undef, float %2145, float %2146, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2269 = extractvalue %dx.types.ResRet.f32 %2268, 0
  %2270 = extractvalue %dx.types.ResRet.f32 %2268, 1
  %2271 = extractvalue %dx.types.ResRet.f32 %2268, 2
  %2272 = extractvalue %dx.types.ResRet.f32 %2268, 3
  %2273 = and i32 %2264, 255
  %2274 = uitofp i32 %2273 to float
  %2275 = lshr i32 %2264, 8
  %2276 = and i32 %2275, 255
  %2277 = uitofp i32 %2276 to float
  %2278 = lshr i32 %2264, 16
  %2279 = and i32 %2278, 255
  %2280 = uitofp i32 %2279 to float
  %2281 = fmul fast float %2280, 0x3F70101000000000
  %2282 = fmul fast float %2269, %2274
  %2283 = fadd fast float %2282, %2277
  %2284 = fmul fast float %2283, 0x3F70101000000000
  %2285 = fadd fast float %2270, -5.000000e-01
  %2286 = fadd fast float %2272, -5.000000e-01
  %2287 = fmul fast float %2285, %2281
  %2288 = fmul fast float %2286, %2281
  %2289 = fadd fast float %2287, 5.000000e-01
  %2290 = fadd fast float %2288, 5.000000e-01
  %2291 = fmul fast float %2289, 2.000000e+00
  %2292 = fadd fast float %2291, -1.000000e+00
  %2293 = fmul fast float %2290, 2.000000e+00
  %2294 = fadd fast float %2293, -1.000000e+00
  %2295 = fadd fast float %2292, %2294
  %2296 = fmul fast float %2295, 5.000000e-01
  %2297 = fsub fast float %2292, %2294
  %2298 = fmul fast float %2297, 5.000000e-01
  %2299 = call float @dx.op.unary.f32(i32 6, float %2296)  ; FAbs(value)
  %2300 = fsub fast float 1.000000e+00, %2299
  %2301 = call float @dx.op.unary.f32(i32 6, float %2298)  ; FAbs(value)
  %2302 = fsub fast float %2300, %2301
  %2303 = call float @dx.op.dot3.f32(i32 55, float %2296, float %2298, float %2302, float %2296, float %2298, float %2302)  ; Dot3(ax,ay,az,bx,by,bz)
  %2304 = call float @dx.op.unary.f32(i32 25, float %2303)  ; Rsqrt(value)
  %2305 = fmul fast float %2296, %2304
  %2306 = fmul fast float %2298, %2304
  %2307 = select i1 %2134, i32 %2124, i32 %2125
  %2308 = select i1 %2132, i32 %2123, i32 %2307
  %2309 = sitofp i32 %2308 to float
  %2310 = fmul fast float %2302, %2309
  %2311 = fmul fast float %2310, %2304
  %2312 = select i1 %2134, float %2311, float %2306
  %2313 = select i1 %2134, float %2306, float %2311
  %2314 = select i1 %2132, float %2311, float %2305
  %2315 = select i1 %2132, float %2306, float %2312
  %2316 = select i1 %2132, float %2305, float %2313
  %2317 = fsub fast float %2251, %2078
  %2318 = fsub fast float %2252, %2079
  %2319 = fsub fast float %2253, %2080
  %2320 = fmul fast float %2317, %2223
  %2321 = fmul fast float %2318, %2223
  %2322 = fmul fast float %2319, %2223
  %2323 = fadd fast float %2320, %2078
  %2324 = fadd fast float %2321, %2079
  %2325 = fadd fast float %2322, %2080
  %2326 = fsub fast float %2260, %2075
  %2327 = fsub fast float %2261, %2076
  %2328 = fsub fast float %2262, %2077
  %2329 = fmul fast float %2326, %2223
  %2330 = fmul fast float %2327, %2223
  %2331 = fmul fast float %2328, %2223
  %2332 = fadd fast float %2329, %2075
  %2333 = fadd fast float %2330, %2076
  %2334 = fadd fast float %2331, %2077
  %2335 = fadd fast float %2314, %2081
  %2336 = fadd fast float %2315, %2082
  %2337 = fadd fast float %2316, %2083
  %2338 = call float @dx.op.dot3.f32(i32 55, float %2335, float %2336, float %2337, float %2335, float %2336, float %2337)  ; Dot3(ax,ay,az,bx,by,bz)
  %2339 = call float @dx.op.unary.f32(i32 25, float %2338)  ; Rsqrt(value)
  %2340 = fmul fast float %2335, %2339
  %2341 = fmul fast float %2336, %2339
  %2342 = fmul fast float %2337, %2339
  %2343 = fsub fast float %2340, %2081
  %2344 = fsub fast float %2341, %2082
  %2345 = fsub fast float %2342, %2083
  %2346 = fmul fast float %2343, %2223
  %2347 = fmul fast float %2344, %2223
  %2348 = fmul fast float %2345, %2223
  %2349 = fadd fast float %2346, %2081
  %2350 = fadd fast float %2347, %2082
  %2351 = fadd fast float %2348, %2083
  %2352 = call float @dx.op.binary.f32(i32 36, float %2085, float %2271)  ; FMin(a,b)
  %2353 = fsub fast float %2352, %2085
  %2354 = fmul fast float %2353, %2223
  %2355 = fadd fast float %2354, %2085
  %2356 = fsub fast float %2284, %2084
  %2357 = fmul fast float %2356, %2223
  %2358 = fadd fast float %2357, %2084
  br label %2359

; <label>:2359                                    ; preds = %2221, %2183, %2074, %1781
  %2360 = phi float [ %2332, %2221 ], [ %2075, %2183 ], [ %2075, %2074 ], [ %1515, %1781 ]
  %2361 = phi float [ %2333, %2221 ], [ %2076, %2183 ], [ %2076, %2074 ], [ %1516, %1781 ]
  %2362 = phi float [ %2334, %2221 ], [ %2077, %2183 ], [ %2077, %2074 ], [ %1517, %1781 ]
  %2363 = phi float [ %2323, %2221 ], [ %2078, %2183 ], [ %2078, %2074 ], [ %1533, %1781 ]
  %2364 = phi float [ %2324, %2221 ], [ %2079, %2183 ], [ %2079, %2074 ], [ %1534, %1781 ]
  %2365 = phi float [ %2325, %2221 ], [ %2080, %2183 ], [ %2080, %2074 ], [ %1535, %1781 ]
  %2366 = phi float [ %2349, %2221 ], [ %2081, %2183 ], [ %2081, %2074 ], [ %1473, %1781 ]
  %2367 = phi float [ %2350, %2221 ], [ %2082, %2183 ], [ %2082, %2074 ], [ %1474, %1781 ]
  %2368 = phi float [ %2351, %2221 ], [ %2083, %2183 ], [ %2083, %2074 ], [ %1475, %1781 ]
  %2369 = phi float [ %2358, %2221 ], [ %2084, %2183 ], [ %2084, %2074 ], [ %1518, %1781 ]
  %2370 = phi float [ %2355, %2221 ], [ %2085, %2183 ], [ %2085, %2074 ], [ %1457, %1781 ]
  %2371 = fcmp fast une float %1786, 0.000000e+00
  %2372 = fsub fast float -0.000000e+00, %155
  %2373 = fsub fast float -0.000000e+00, %156
  %2374 = fsub fast float -0.000000e+00, %157
  br i1 %2371, label %2375, label %2730

; <label>:2375                                    ; preds = %2359
  %2376 = call float @dx.op.dot3.f32(i32 55, float %2372, float %2373, float %2374, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %2377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2378 = fmul fast float %1786, 2.500000e+00
  %2379 = call float @dx.op.unary.f32(i32 7, float %2378)  ; Saturate(value)
  %2380 = fmul fast float %1786, 0x4013FFFFE0000000
  %2381 = fadd fast float %2380, 0xBFFFFFFFE0000000
  %2382 = call float @dx.op.unary.f32(i32 7, float %2381)  ; Saturate(value)
  %2383 = fmul fast float %1786, 0x4004000020000000
  %2384 = fadd fast float %2383, 0xBFF8000040000000
  %2385 = call float @dx.op.unary.f32(i32 7, float %2384)  ; Saturate(value)
  %2386 = call float @dx.op.unary.f32(i32 7, float %2379)  ; Saturate(value)
  %2387 = fmul fast float %1497, 1.000000e+01
  %2388 = call float @dx.op.unary.f32(i32 7, float %2387)  ; Saturate(value)
  %2389 = fmul fast float %2388, 2.000000e+00
  %2390 = fsub fast float 3.000000e+00, %2389
  %2391 = fmul fast float %2388, %2388
  %2392 = fmul fast float %2391, %2390
  %2393 = fsub fast float 1.000000e+00, %2392
  %2394 = fsub fast float 0x3FE3333340000000, %2369
  %2395 = fmul fast float %2394, 0x400AAAAAA0000000
  %2396 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  %2397 = fmul fast float %2393, %2396
  %2398 = fmul fast float %2363, 0x3FEA2B8620000000
  %2399 = fmul fast float %2364, 0x3FEA2B8620000000
  %2400 = fmul fast float %2365, 0x3FEA2B8620000000
  %2401 = fadd fast float %2398, 0x3FC81DFBA0000000
  %2402 = fmul fast float %2401, %2363
  %2403 = fadd fast float %2402, 0x3F910E6020000000
  %2404 = fadd fast float %2399, 0x3FC81DFBA0000000
  %2405 = fmul fast float %2404, %2364
  %2406 = fadd fast float %2405, 0x3F910E6020000000
  %2407 = fadd fast float %2400, 0x3FC81DFBA0000000
  %2408 = fmul fast float %2407, %2365
  %2409 = fadd fast float %2408, 0x3F910E6020000000
  %2410 = call float @dx.op.unary.f32(i32 7, float %2403)  ; Saturate(value)
  %2411 = call float @dx.op.unary.f32(i32 7, float %2406)  ; Saturate(value)
  %2412 = call float @dx.op.unary.f32(i32 7, float %2409)  ; Saturate(value)
  %2413 = fsub fast float %2410, %2363
  %2414 = fsub fast float %2411, %2364
  %2415 = fsub fast float %2412, %2365
  %2416 = fmul fast float %2413, %2386
  %2417 = fmul fast float %2416, %2397
  %2418 = fmul fast float %2414, %2386
  %2419 = fmul fast float %2418, %2397
  %2420 = fmul fast float %2415, %2386
  %2421 = fmul fast float %2420, %2397
  %2422 = fadd fast float %2417, %2363
  %2423 = fadd fast float %2419, %2364
  %2424 = fadd fast float %2421, %2365
  %2425 = fmul fast float %2370, %2370
  %2426 = fmul fast float %2425, %2425
  %2427 = fadd fast float %2382, 1.000000e+00
  %2428 = fsub fast float %2427, %2397
  %2429 = call float @dx.op.unary.f32(i32 7, float %2428)  ; Saturate(value)
  %2430 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2431 = call float @dx.op.unary.f32(i32 7, float %2430)  ; Saturate(value)
  %2432 = fsub fast float 1.000000e+00, %2426
  %2433 = call float @dx.op.binary.f32(i32 36, float %2429, float %2432)  ; FMin(a,b)
  %2434 = call float @dx.op.unary.f32(i32 7, float %2385)  ; Saturate(value)
  %2435 = call float @dx.op.binary.f32(i32 35, float %2433, float %2434)  ; FMax(a,b)
  %2436 = fadd fast float %2431, 0xBFE4CCCCC0000000
  %2437 = fmul fast float %2436, 0x4006DB6DA0000000
  %2438 = call float @dx.op.unary.f32(i32 7, float %2437)  ; Saturate(value)
  %2439 = fmul fast float %2438, 2.000000e+00
  %2440 = fsub fast float 3.000000e+00, %2439
  %2441 = bitcast float %2360 to i32
  %2442 = ashr i32 %2441, 1
  %2443 = add nsw i32 %2442, 532487669
  %2444 = bitcast i32 %2443 to float
  %2445 = fsub fast float 1.000000e+00, %2444
  %2446 = bitcast float %2445 to i32
  %2447 = sub nsw i32 2129859010, %2446
  %2448 = bitcast i32 %2447 to float
  %2449 = fmul fast float %2448, 2.000000e+00
  %2450 = bitcast float %2361 to i32
  %2451 = ashr i32 %2450, 1
  %2452 = add nsw i32 %2451, 532487669
  %2453 = bitcast i32 %2452 to float
  %2454 = fsub fast float 1.000000e+00, %2453
  %2455 = bitcast float %2454 to i32
  %2456 = sub nsw i32 2129859010, %2455
  %2457 = bitcast i32 %2456 to float
  %2458 = fmul fast float %2457, 2.000000e+00
  %2459 = bitcast float %2362 to i32
  %2460 = ashr i32 %2459, 1
  %2461 = add nsw i32 %2460, 532487669
  %2462 = bitcast i32 %2461 to float
  %2463 = fsub fast float 1.000000e+00, %2462
  %2464 = bitcast float %2463 to i32
  %2465 = sub nsw i32 2129859010, %2464
  %2466 = bitcast i32 %2465 to float
  %2467 = fmul fast float %2466, 2.000000e+00
  %2468 = fsub fast float 0x4002A9FBE0000000, %2449
  %2469 = fadd fast float %2449, 0x3FD54FDF00000000
  %2470 = bitcast float %2469 to i32
  %2471 = sub nsw i32 2129859010, %2470
  %2472 = bitcast i32 %2471 to float
  %2473 = fmul fast float %2472, %2468
  %2474 = fmul fast float %2473, %2473
  %2475 = fsub fast float 0x4002A9FBE0000000, %2458
  %2476 = fadd fast float %2458, 0x3FD54FDF00000000
  %2477 = bitcast float %2476 to i32
  %2478 = sub nsw i32 2129859010, %2477
  %2479 = bitcast i32 %2478 to float
  %2480 = fmul fast float %2479, %2475
  %2481 = fmul fast float %2480, %2480
  %2482 = fsub fast float 0x4002A9FBE0000000, %2467
  %2483 = fadd fast float %2467, 0x3FD54FDF00000000
  %2484 = bitcast float %2483 to i32
  %2485 = sub nsw i32 2129859010, %2484
  %2486 = bitcast i32 %2485 to float
  %2487 = fmul fast float %2486, %2482
  %2488 = fmul fast float %2487, %2487
  %2489 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2474)  ; FMax(a,b)
  %2490 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2481)  ; FMax(a,b)
  %2491 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2488)  ; FMax(a,b)
  %2492 = fsub fast float 1.000000e+00, %2376
  %2493 = fadd fast float %2492, %2393
  %2494 = call float @dx.op.unary.f32(i32 7, float %2493)  ; Saturate(value)
  %2495 = fsub fast float 1.000000e+00, %1618
  %2496 = fmul fast float %2435, %2495
  %2497 = fmul fast float %2438, %2438
  %2498 = fmul fast float %2497, %2496
  %2499 = fmul fast float %2498, %2440
  %2500 = fmul fast float %2495, 0xBFE99999A0000000
  %2501 = fmul fast float %2500, %2386
  %2502 = fmul fast float %2501, %2397
  %2503 = fadd fast float %2502, 1.000000e+00
  %2504 = fadd fast float %2369, -1.000000e+00
  %2505 = fmul fast float %2503, %2504
  %2506 = fadd fast float %2505, 1.000000e+00
  %2507 = fsub fast float %2489, %2360
  %2508 = fsub fast float %2490, %2361
  %2509 = fsub fast float %2491, %2362
  %2510 = fmul fast float %2499, %2507
  %2511 = fmul fast float %2499, %2508
  %2512 = fmul fast float %2499, %2509
  %2513 = fadd fast float %2510, %2360
  %2514 = fadd fast float %2511, %2361
  %2515 = fadd fast float %2512, %2362
  %2516 = fsub fast float %83, %2366
  %2517 = fsub fast float %84, %2367
  %2518 = fsub fast float %85, %2368
  %2519 = fmul fast float %2499, %2516
  %2520 = fmul fast float %2499, %2517
  %2521 = fmul fast float %2499, %2518
  %2522 = fadd fast float %2519, %2366
  %2523 = fadd fast float %2520, %2367
  %2524 = fadd fast float %2521, %2368
  %2525 = fmul fast float %2499, %2494
  %2526 = call float @dx.op.unary.f32(i32 7, float %2506)  ; Saturate(value)
  %2527 = fsub fast float 1.000000e+00, %2526
  %2528 = fmul fast float %2525, %2527
  %2529 = fadd fast float %2528, %2526
  %2530 = fsub fast float 1.000000e+00, %2370
  %2531 = fmul fast float %2499, %2530
  %2532 = fadd fast float %2531, %2370
  %2533 = fcmp fast une float %1787, 0.000000e+00
  %2534 = fcmp fast ogt float %2431, 0x3FE4CCCCC0000000
  %2535 = and i1 %2533, %2534
  br i1 %2535, label %2536, label %2722

; <label>:2536                                    ; preds = %2375
  %2537 = extractvalue %dx.types.CBufRet.f32 %2377, 1
  %2538 = fadd fast float %2537, %137
  %2539 = extractvalue %dx.types.CBufRet.f32 %2377, 0
  %2540 = fadd fast float %2539, %136
  %2541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2542 = extractvalue %dx.types.CBufRet.f32 %2541, 3
  %2543 = fadd fast float %2542, 0x3FC0A3D700000000
  %2544 = fmul fast float %2543, 0x3FF6666660000000
  %2545 = fmul fast float %2542, 0x3FF2978D40000000
  %2546 = fmul fast float %2542, 0x3FF5BA5E40000000
  %2547 = fmul fast float %2542, 0x3FF94FDF40000000
  %2548 = call float @dx.op.unary.f32(i32 6, float %2540)  ; FAbs(value)
  %2549 = call float @dx.op.unary.f32(i32 6, float %2538)  ; FAbs(value)
  %2550 = fmul fast float %2548, 0x3F8EB851E0000000
  %2551 = fmul fast float %2549, 0x3F8EB851E0000000
  %2552 = fmul fast float %1787, 4.000000e+00
  %2553 = call float @dx.op.unary.f32(i32 7, float %2552)  ; Saturate(value)
  %2554 = fadd fast float %2550, 2.500000e-01
  %2555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %40, float %2554, float %2551, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2556 = extractvalue %dx.types.ResRet.f32 %2555, 0
  %2557 = extractvalue %dx.types.ResRet.f32 %2555, 1
  %2558 = extractvalue %dx.types.ResRet.f32 %2555, 2
  %2559 = extractvalue %dx.types.ResRet.f32 %2555, 3
  %2560 = fmul fast float %2557, 2.000000e+00
  %2561 = fmul fast float %2558, 2.000000e+00
  %2562 = fadd fast float %2560, -1.000000e+00
  %2563 = fadd fast float %2561, -1.000000e+00
  %2564 = fsub fast float 1.000000e+00, %2553
  %2565 = fmul fast float %2564, 8.000000e+00
  %2566 = call float @dx.op.unary.f32(i32 21, float %2565)  ; Exp(value)
  %2567 = fmul fast float %2559, %2566
  %2568 = fadd fast float %2544, -1.000000e+00
  %2569 = fadd fast float %2568, %2559
  %2570 = fadd fast float %2569, %2567
  %2571 = frem fast float %2570, %2566
  %2572 = fcmp fast ole float %2571, 1.000000e+00
  %2573 = call float @dx.op.unary.f32(i32 22, float %2571)  ; Frc(value)
  %2574 = select i1 %2572, float %2573, float 0.000000e+00
  %2575 = fadd fast float %2556, -1.000000e+00
  %2576 = fadd fast float %2575, %2574
  %2577 = fsub fast float 1.000000e+00, %2574
  %2578 = call float @dx.op.unary.f32(i32 7, float %2577)  ; Saturate(value)
  %2579 = fmul fast float %2578, %2556
  %2580 = fmul fast float %2576, 8.000000e+00
  %2581 = call float @dx.op.binary.f32(i32 35, float %2580, float 0.000000e+00)  ; FMax(a,b)
  %2582 = call float @dx.op.binary.f32(i32 36, float %2581, float 4.000000e+00)  ; FMin(a,b)
  %2583 = fmul fast float %2582, 0x400921FB60000000
  %2584 = call float @dx.op.unary.f32(i32 13, float %2583)  ; Sin(value)
  %2585 = fadd fast float %2574, -1.000000e+00
  %2586 = fmul fast float %2579, %2585
  %2587 = fmul fast float %2586, %2584
  %2588 = fmul fast float %2587, %2562
  %2589 = fmul fast float %2587, %2563
  %2590 = fadd fast float %2552, -1.000000e+00
  %2591 = call float @dx.op.unary.f32(i32 7, float %2590)  ; Saturate(value)
  %2592 = fadd fast float %2550, 0xBFE19999A0000000
  %2593 = fadd fast float %2551, 0x3FD3D70A40000000
  %2594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %40, float %2592, float %2593, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2595 = extractvalue %dx.types.ResRet.f32 %2594, 0
  %2596 = extractvalue %dx.types.ResRet.f32 %2594, 1
  %2597 = extractvalue %dx.types.ResRet.f32 %2594, 2
  %2598 = extractvalue %dx.types.ResRet.f32 %2594, 3
  %2599 = fmul fast float %2596, 2.000000e+00
  %2600 = fmul fast float %2597, 2.000000e+00
  %2601 = fadd fast float %2599, -1.000000e+00
  %2602 = fadd fast float %2600, -1.000000e+00
  %2603 = fsub fast float 1.000000e+00, %2591
  %2604 = fmul fast float %2603, 8.000000e+00
  %2605 = call float @dx.op.unary.f32(i32 21, float %2604)  ; Exp(value)
  %2606 = fmul fast float %2598, %2605
  %2607 = fadd fast float %2545, 0xBFE5B22D00000000
  %2608 = fadd fast float %2607, %2598
  %2609 = fadd fast float %2608, %2606
  %2610 = frem fast float %2609, %2605
  %2611 = fcmp fast ole float %2610, 1.000000e+00
  %2612 = call float @dx.op.unary.f32(i32 22, float %2610)  ; Frc(value)
  %2613 = select i1 %2611, float %2612, float 0.000000e+00
  %2614 = fadd fast float %2595, -1.000000e+00
  %2615 = fadd fast float %2614, %2613
  %2616 = fsub fast float 1.000000e+00, %2613
  %2617 = call float @dx.op.unary.f32(i32 7, float %2616)  ; Saturate(value)
  %2618 = fmul fast float %2617, %2595
  %2619 = fmul fast float %2615, 8.000000e+00
  %2620 = call float @dx.op.binary.f32(i32 35, float %2619, float 0.000000e+00)  ; FMax(a,b)
  %2621 = call float @dx.op.binary.f32(i32 36, float %2620, float 4.000000e+00)  ; FMin(a,b)
  %2622 = fmul fast float %2621, 0x400921FB60000000
  %2623 = call float @dx.op.unary.f32(i32 13, float %2622)  ; Sin(value)
  %2624 = fadd fast float %2613, -1.000000e+00
  %2625 = fmul fast float %2618, %2624
  %2626 = fmul fast float %2625, %2623
  %2627 = fmul fast float %2626, %2601
  %2628 = fmul fast float %2626, %2602
  %2629 = fadd fast float %2552, -2.000000e+00
  %2630 = call float @dx.op.unary.f32(i32 7, float %2629)  ; Saturate(value)
  %2631 = fadd fast float %2550, 0x3FE3333340000000
  %2632 = fadd fast float %2551, 0x3FEB333340000000
  %2633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %40, float %2631, float %2632, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2634 = extractvalue %dx.types.ResRet.f32 %2633, 0
  %2635 = extractvalue %dx.types.ResRet.f32 %2633, 1
  %2636 = extractvalue %dx.types.ResRet.f32 %2633, 2
  %2637 = extractvalue %dx.types.ResRet.f32 %2633, 3
  %2638 = fmul fast float %2635, 2.000000e+00
  %2639 = fmul fast float %2636, 2.000000e+00
  %2640 = fadd fast float %2638, -1.000000e+00
  %2641 = fadd fast float %2639, -1.000000e+00
  %2642 = fsub fast float 1.000000e+00, %2630
  %2643 = fmul fast float %2642, 8.000000e+00
  %2644 = call float @dx.op.unary.f32(i32 21, float %2643)  ; Exp(value)
  %2645 = fmul fast float %2637, %2644
  %2646 = fadd fast float %2546, 0xBFD5E35400000000
  %2647 = fadd fast float %2646, %2637
  %2648 = fadd fast float %2647, %2645
  %2649 = frem fast float %2648, %2644
  %2650 = fcmp fast ole float %2649, 1.000000e+00
  %2651 = call float @dx.op.unary.f32(i32 22, float %2649)  ; Frc(value)
  %2652 = select i1 %2650, float %2651, float 0.000000e+00
  %2653 = fadd fast float %2634, -1.000000e+00
  %2654 = fadd fast float %2653, %2652
  %2655 = fsub fast float 1.000000e+00, %2652
  %2656 = call float @dx.op.unary.f32(i32 7, float %2655)  ; Saturate(value)
  %2657 = fmul fast float %2656, %2634
  %2658 = fmul fast float %2654, 8.000000e+00
  %2659 = call float @dx.op.binary.f32(i32 35, float %2658, float 0.000000e+00)  ; FMax(a,b)
  %2660 = call float @dx.op.binary.f32(i32 36, float %2659, float 4.000000e+00)  ; FMin(a,b)
  %2661 = fmul fast float %2660, 0x400921FB60000000
  %2662 = call float @dx.op.unary.f32(i32 13, float %2661)  ; Sin(value)
  %2663 = fadd fast float %2652, -1.000000e+00
  %2664 = fmul fast float %2657, %2663
  %2665 = fmul fast float %2664, %2662
  %2666 = fmul fast float %2665, %2640
  %2667 = fmul fast float %2665, %2641
  %2668 = fadd fast float %2552, -3.000000e+00
  %2669 = call float @dx.op.unary.f32(i32 7, float %2668)  ; Saturate(value)
  %2670 = fadd fast float %2550, 5.000000e-01
  %2671 = fadd fast float %2551, -7.500000e-01
  %2672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %40, float %2670, float %2671, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2673 = extractvalue %dx.types.ResRet.f32 %2672, 0
  %2674 = extractvalue %dx.types.ResRet.f32 %2672, 1
  %2675 = extractvalue %dx.types.ResRet.f32 %2672, 2
  %2676 = extractvalue %dx.types.ResRet.f32 %2672, 3
  %2677 = fmul fast float %2674, 2.000000e+00
  %2678 = fmul fast float %2675, 2.000000e+00
  %2679 = fadd fast float %2677, -1.000000e+00
  %2680 = fadd fast float %2678, -1.000000e+00
  %2681 = fsub fast float 1.000000e+00, %2669
  %2682 = fmul fast float %2681, 8.000000e+00
  %2683 = call float @dx.op.unary.f32(i32 21, float %2682)  ; Exp(value)
  %2684 = fmul fast float %2676, %2683
  %2685 = fadd fast float %2547, 0xBF78938000000000
  %2686 = fadd fast float %2685, %2676
  %2687 = fadd fast float %2686, %2684
  %2688 = frem fast float %2687, %2683
  %2689 = fcmp fast ole float %2688, 1.000000e+00
  %2690 = call float @dx.op.unary.f32(i32 22, float %2688)  ; Frc(value)
  %2691 = select i1 %2689, float %2690, float 0.000000e+00
  %2692 = fadd fast float %2673, -1.000000e+00
  %2693 = fadd fast float %2692, %2691
  %2694 = fsub fast float 1.000000e+00, %2691
  %2695 = call float @dx.op.unary.f32(i32 7, float %2694)  ; Saturate(value)
  %2696 = fmul fast float %2695, %2673
  %2697 = fmul fast float %2693, 8.000000e+00
  %2698 = call float @dx.op.binary.f32(i32 35, float %2697, float 0.000000e+00)  ; FMax(a,b)
  %2699 = call float @dx.op.binary.f32(i32 36, float %2698, float 4.000000e+00)  ; FMin(a,b)
  %2700 = fmul fast float %2699, 0x400921FB60000000
  %2701 = call float @dx.op.unary.f32(i32 13, float %2700)  ; Sin(value)
  %2702 = fadd fast float %2691, -1.000000e+00
  %2703 = fmul fast float %2696, %2702
  %2704 = fmul fast float %2703, %2701
  %2705 = fmul fast float %2704, %2679
  %2706 = fmul fast float %2704, %2680
  %2707 = fadd fast float %2627, %2588
  %2708 = fadd fast float %2628, %2589
  %2709 = fadd fast float %2707, %2666
  %2710 = fadd fast float %2708, %2667
  %2711 = fadd fast float %2709, %2705
  %2712 = fadd fast float %2710, %2706
  %2713 = fmul fast float %2431, 0x4006DB6DA0000000
  %2714 = fadd fast float %2713, 0xBFFDB6DB40000000
  %2715 = call float @dx.op.unary.f32(i32 7, float %2714)  ; Saturate(value)
  %2716 = fmul fast float %2715, %2386
  %2717 = fmul fast float %2716, %2495
  %2718 = fmul fast float %2717, %2711
  %2719 = fmul fast float %2717, %2712
  %2720 = fadd fast float %2718, %2522
  %2721 = fadd fast float %2719, %2523
  br label %2722

; <label>:2722                                    ; preds = %2536, %2375
  %2723 = phi float [ %2522, %2375 ], [ %2720, %2536 ]
  %2724 = phi float [ %2523, %2375 ], [ %2721, %2536 ]
  %2725 = call float @dx.op.dot3.f32(i32 55, float %2723, float %2724, float %2524, float %2723, float %2724, float %2524)  ; Dot3(ax,ay,az,bx,by,bz)
  %2726 = call float @dx.op.unary.f32(i32 25, float %2725)  ; Rsqrt(value)
  %2727 = fmul fast float %2726, %2723
  %2728 = fmul fast float %2726, %2724
  %2729 = fmul fast float %2726, %2524
  br label %2730

; <label>:2730                                    ; preds = %2722, %2359
  %2731 = phi float [ %2513, %2722 ], [ %2360, %2359 ]
  %2732 = phi float [ %2514, %2722 ], [ %2361, %2359 ]
  %2733 = phi float [ %2515, %2722 ], [ %2362, %2359 ]
  %2734 = phi float [ %2422, %2722 ], [ %2363, %2359 ]
  %2735 = phi float [ %2423, %2722 ], [ %2364, %2359 ]
  %2736 = phi float [ %2424, %2722 ], [ %2365, %2359 ]
  %2737 = phi float [ %2727, %2722 ], [ %2366, %2359 ]
  %2738 = phi float [ %2728, %2722 ], [ %2367, %2359 ]
  %2739 = phi float [ %2729, %2722 ], [ %2368, %2359 ]
  %2740 = phi float [ %2529, %2722 ], [ %2369, %2359 ]
  %2741 = phi float [ %2532, %2722 ], [ %2370, %2359 ]
  %2742 = select i1 %228, float 0.000000e+00, float %2733
  %2743 = call float @dx.op.dot3.f32(i32 55, float %2737, float %2738, float %2739, float %2372, float %2373, float %2374)  ; Dot3(ax,ay,az,bx,by,bz)
  %2744 = call float @dx.op.unary.f32(i32 7, float %2743)  ; Saturate(value)
  %2745 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %2737, float %2738, float %2739)  ; Dot3(ax,ay,az,bx,by,bz)
  %2746 = fmul fast float %2745, 2.000000e+00
  %2747 = fmul fast float %2746, %2737
  %2748 = fmul fast float %2746, %2738
  %2749 = fmul fast float %2746, %2739
  %2750 = fsub fast float %155, %2747
  %2751 = fsub fast float %156, %2748
  %2752 = fsub fast float %157, %2749
  %2753 = call float @dx.op.binary.f32(i32 36, float %2741, float 1.000000e+00)  ; FMin(a,b)
  %2754 = fsub fast float 1.000000e+00, %2753
  %2755 = bitcast float %2754 to i32
  %2756 = ashr i32 %2755, 1
  %2757 = add nsw i32 %2756, 532487669
  %2758 = bitcast i32 %2757 to float
  %2759 = fsub fast float 1.000000e+00, %2740
  %2760 = call float @dx.op.binary.f32(i32 35, float %2759, float 0x3F847AE140000000)  ; FMax(a,b)
  %2761 = fmul fast float %2760, %2760
  %2762 = fmul fast float %2761, %2761
  %2763 = call float @dx.op.unary.f32(i32 7, float %2744)  ; Saturate(value)
  %2764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %41, float %2758, float %2762, float %2763, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2765 = extractvalue %dx.types.ResRet.f32 %2764, 0
  %2766 = fsub fast float 1.000000e+00, %2741
  %2767 = bitcast float %2766 to i32
  %2768 = sub nsw i32 2129859010, %2767
  %2769 = bitcast i32 %2768 to float
  %2770 = fsub fast float 1.000000e+00, %52
  %2771 = call float @dx.op.dot3.f32(i32 55, float %100, float %101, float %102, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %2772 = call float @dx.op.binary.f32(i32 35, float %2771, float 0x3FA99999A0000000)  ; FMax(a,b)
  %2773 = fdiv fast float %2770, %2772
  %2774 = call float @dx.op.dot3.f32(i32 55, float %2737, float %2738, float %2739, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %2775 = call float @dx.op.unary.f32(i32 7, float %2774)  ; Saturate(value)
  %2776 = fmul fast float %2775, 5.000000e-01
  %2777 = fadd fast float %2776, 5.000000e-01
  %2778 = fmul fast float %2777, %52
  %2779 = call float @dx.op.dot3.f32(i32 55, float %2737, float %2738, float %2739, float %100, float %101, float %102)  ; Dot3(ax,ay,az,bx,by,bz)
  %2780 = call float @dx.op.unary.f32(i32 7, float %2779)  ; Saturate(value)
  %2781 = fmul fast float %2780, %2773
  %2782 = fadd fast float %2778, %2781
  %2783 = fsub fast float 5.000000e-01, %2776
  %2784 = fmul fast float %2783, %2734
  %2785 = fmul fast float %2783, %2735
  %2786 = fmul fast float %2783, %2736
  %2787 = fadd fast float %2782, %2784
  %2788 = fadd fast float %2782, %2785
  %2789 = fadd fast float %2782, %2786
  %2790 = call float @dx.op.dot3.f32(i32 55, float %2750, float %2751, float %2752, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %2791 = call float @dx.op.unary.f32(i32 7, float %2790)  ; Saturate(value)
  %2792 = fmul fast float %2791, 5.000000e-01
  %2793 = fadd fast float %2792, 5.000000e-01
  %2794 = fmul fast float %2793, %52
  %2795 = call float @dx.op.dot3.f32(i32 55, float %2750, float %2751, float %2752, float %100, float %101, float %102)  ; Dot3(ax,ay,az,bx,by,bz)
  %2796 = call float @dx.op.unary.f32(i32 7, float %2795)  ; Saturate(value)
  %2797 = fmul fast float %2796, %2773
  %2798 = fadd fast float %2794, %2797
  %2799 = fsub fast float 5.000000e-01, %2792
  %2800 = fmul fast float %2799, %2734
  %2801 = fmul fast float %2799, %2735
  %2802 = fmul fast float %2799, %2736
  %2803 = fadd fast float %2798, %2800
  %2804 = fadd fast float %2798, %2801
  %2805 = fadd fast float %2798, %2802
  %2806 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2808 = extractvalue %dx.types.CBufRet.f32 %2807, 0
  %2809 = call float @dx.op.binary.f32(i32 36, float %2734, float %2808)  ; FMin(a,b)
  %2810 = fmul fast float %2809, %2754
  %2811 = fsub fast float 1.000000e+00, %2810
  %2812 = bitcast float %2811 to i32
  %2813 = sub nsw i32 2129859010, %2812
  %2814 = bitcast i32 %2813 to float
  %2815 = call float @dx.op.binary.f32(i32 36, float %2735, float %2808)  ; FMin(a,b)
  %2816 = fmul fast float %2815, %2754
  %2817 = fsub fast float 1.000000e+00, %2816
  %2818 = bitcast float %2817 to i32
  %2819 = sub nsw i32 2129859010, %2818
  %2820 = bitcast i32 %2819 to float
  %2821 = call float @dx.op.binary.f32(i32 36, float %2736, float %2808)  ; FMin(a,b)
  %2822 = fmul fast float %2821, %2754
  %2823 = fsub fast float 1.000000e+00, %2822
  %2824 = bitcast float %2823 to i32
  %2825 = sub nsw i32 2129859010, %2824
  %2826 = bitcast i32 %2825 to float
  %2827 = fmul fast float %2753, %53
  %2828 = fmul fast float %2827, %2787
  %2829 = fmul fast float %2828, %2814
  %2830 = fmul fast float %2753, %54
  %2831 = fmul fast float %2830, %2788
  %2832 = fmul fast float %2831, %2820
  %2833 = fmul fast float %2753, %55
  %2834 = fmul fast float %2833, %2789
  %2835 = fmul fast float %2834, %2826
  %2836 = call float @dx.op.binary.f32(i32 36, float %2731, float %2808)  ; FMin(a,b)
  %2837 = fmul fast float %2836, %2754
  %2838 = fsub fast float 1.000000e+00, %2837
  %2839 = bitcast float %2838 to i32
  %2840 = sub nsw i32 2129859010, %2839
  %2841 = bitcast i32 %2840 to float
  %2842 = call float @dx.op.binary.f32(i32 36, float %2732, float %2808)  ; FMin(a,b)
  %2843 = fmul fast float %2842, %2754
  %2844 = fsub fast float 1.000000e+00, %2843
  %2845 = bitcast float %2844 to i32
  %2846 = sub nsw i32 2129859010, %2845
  %2847 = bitcast i32 %2846 to float
  %2848 = call float @dx.op.binary.f32(i32 36, float %2742, float %2808)  ; FMin(a,b)
  %2849 = fmul fast float %2848, %2754
  %2850 = fsub fast float 1.000000e+00, %2849
  %2851 = bitcast float %2850 to i32
  %2852 = sub nsw i32 2129859010, %2851
  %2853 = bitcast i32 %2852 to float
  %2854 = fmul fast float %2827, %2803
  %2855 = fmul fast float %2854, %2841
  %2856 = fmul fast float %2830, %2804
  %2857 = fmul fast float %2856, %2847
  %2858 = fmul fast float %2833, %2805
  %2859 = fmul fast float %2858, %2853
  %2860 = call float @dx.op.dot3.f32(i32 55, float %2829, float %2832, float %2835, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2861 = select i1 %228, float 0.000000e+00, float %2829
  %2862 = select i1 %228, float %2860, float %2832
  %2863 = select i1 %228, float 0.000000e+00, float %2835
  %2864 = call float @dx.op.dot3.f32(i32 55, float %2855, float %2857, float %2859, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2865 = select i1 %228, float 0.000000e+00, float %2855
  %2866 = select i1 %228, float %2864, float %2857
  %2867 = select i1 %228, float 0.000000e+00, float %2859
  %2868 = fmul fast float %900, %900
  %2869 = call float @dx.op.unary.f32(i32 7, float %2868)  ; Saturate(value)
  %2870 = fmul fast float %2744, 9.843750e-01
  %2871 = fmul fast float %2740, 9.843750e-01
  %2872 = fadd fast float %2870, 7.812500e-03
  %2873 = fadd fast float %2871, 7.812500e-03
  %2874 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %41, float %2872, float %2873, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2875 = extractvalue %dx.types.ResRet.f32 %2874, 0
  %2876 = extractvalue %dx.types.ResRet.f32 %2874, 1
  %2877 = extractvalue %dx.types.ResRet.f32 %2874, 2
  %2878 = extractvalue %dx.types.ResRet.f32 %2874, 3
  %2879 = fsub fast float 1.000000e+00, %2869
  %2880 = fsub fast float %2877, %2875
  %2881 = fsub fast float %2878, %2876
  %2882 = fmul fast float %2880, %2879
  %2883 = fmul fast float %2881, %2879
  %2884 = fadd fast float %2882, %2875
  %2885 = fadd fast float %2883, %2876
  %2886 = fmul fast float %2884, %2731
  %2887 = fmul fast float %2884, %2732
  %2888 = fmul fast float %2884, %2742
  %2889 = fadd fast float %2886, %2885
  %2890 = fadd fast float %2887, %2885
  %2891 = fadd fast float %2888, %2885
  %2892 = fcmp fast ogt float %1450, 0.000000e+00
  br i1 %2892, label %2893, label %2919

; <label>:2893                                    ; preds = %2730
  %2894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %41, float %1450, float %2744, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2895 = extractvalue %dx.types.ResRet.f32 %2894, 0
  %2896 = extractvalue %dx.types.ResRet.f32 %2894, 1
  %2897 = extractvalue %dx.types.ResRet.f32 %2894, 2
  %2898 = fadd fast float %2895, -5.000000e-01
  %2899 = fadd fast float %2896, -5.000000e-01
  %2900 = fadd fast float %2897, -5.000000e-01
  %2901 = fsub fast float 1.000000e+00, %2731
  %2902 = fsub fast float 1.000000e+00, %2732
  %2903 = fsub fast float 1.000000e+00, %2742
  %2904 = fmul fast float %2731, 4.000000e+00
  %2905 = fmul fast float %2904, %2901
  %2906 = fmul fast float %2905, %2898
  %2907 = fmul fast float %2732, 4.000000e+00
  %2908 = fmul fast float %2907, %2902
  %2909 = fmul fast float %2908, %2899
  %2910 = fmul fast float %2742, 4.000000e+00
  %2911 = fmul fast float %2910, %2903
  %2912 = fmul fast float %2911, %2900
  %2913 = fadd fast float %2906, %2889
  %2914 = fadd fast float %2909, %2890
  %2915 = fadd fast float %2912, %2891
  %2916 = call float @dx.op.unary.f32(i32 7, float %2913)  ; Saturate(value)
  %2917 = call float @dx.op.unary.f32(i32 7, float %2914)  ; Saturate(value)
  %2918 = call float @dx.op.unary.f32(i32 7, float %2915)  ; Saturate(value)
  br label %2919

; <label>:2919                                    ; preds = %2893, %2730
  %2920 = phi float [ %2916, %2893 ], [ %2889, %2730 ]
  %2921 = phi float [ %2917, %2893 ], [ %2890, %2730 ]
  %2922 = phi float [ %2918, %2893 ], [ %2891, %2730 ]
  %2923 = call float @dx.op.binary.f32(i32 35, float %2921, float %2922)  ; FMax(a,b)
  %2924 = call float @dx.op.binary.f32(i32 35, float %2920, float %2923)  ; FMax(a,b)
  %2925 = fsub fast float 1.000000e+00, %2924
  %2926 = fmul fast float %2924, %2740
  %2927 = fadd fast float %2926, %2740
  %2928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2929 = extractvalue %dx.types.CBufRet.f32 %2928, 2
  %2930 = extractvalue %dx.types.CBufRet.f32 %2928, 3
  %2931 = fmul fast float %2927, %2929
  %2932 = fadd fast float %2931, %2930
  %2933 = call float @dx.op.unary.f32(i32 7, float %2932)  ; Saturate(value)
  %2934 = fsub fast float 1.000000e+00, %2765
  %2935 = fadd fast float %2934, %2933
  %2936 = call float @dx.op.unary.f32(i32 7, float %2935)  ; Saturate(value)
  %2937 = fcmp fast olt float %2936, 1.000000e+00
  br i1 %2937, label %2938, label %3492

; <label>:2938                                    ; preds = %2919
  %2939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2940 = extractvalue %dx.types.CBufRet.f32 %2939, 2
  %2941 = extractvalue %dx.types.CBufRet.f32 %2939, 3
  %2942 = fmul fast float %2940, %80
  %2943 = fmul fast float %2941, %81
  %2944 = fptoui float %2942 to i32
  %2945 = fptoui float %2943 to i32
  %2946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2947 = extractvalue %dx.types.CBufRet.f32 %2946, 0
  %2948 = extractvalue %dx.types.CBufRet.f32 %2946, 2
  %2949 = extractvalue %dx.types.CBufRet.f32 %2946, 3
  %2950 = fadd fast float %68, -4.000000e+00
  %2951 = call float @dx.op.binary.f32(i32 35, float %2950, float 0.000000e+00)  ; FMax(a,b)
  %2952 = fadd fast float %2951, %2947
  %2953 = fmul fast float %2952, %2948
  %2954 = call float @dx.op.unary.f32(i32 23, float %2953)  ; Log(value)
  %2955 = fmul fast float %2954, %2949
  %2956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2957 = extractvalue %dx.types.CBufRet.f32 %2956, 2
  %2958 = fmul fast float %2955, %2957
  %2959 = call float @dx.op.unary.f32(i32 7, float %2958)  ; Saturate(value)
  %2960 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2961 = extractvalue %dx.types.CBufRet.i32 %2960, 1
  %2962 = add i32 %2961, -1
  %2963 = uitofp i32 %2961 to float
  %2964 = fmul fast float %2963, %2959
  %2965 = fptoui float %2964 to i32
  %2966 = call i32 @dx.op.binary.i32(i32 40, i32 %2965, i32 %2962)  ; UMin(a,b)
  %2967 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2968 = extractvalue %dx.types.CBufRet.i32 %2967, 2
  %2969 = extractvalue %dx.types.CBufRet.i32 %2967, 3
  %2970 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2945, i32 %2968, i32 %2944)  ; UMad(a,b,c)
  %2971 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2966, i32 %2969, i32 %2970)  ; UMad(a,b,c)
  %2972 = call float @dx.op.binary.f32(i32 35, float %68, float 0.000000e+00)  ; FMax(a,b)
  %2973 = fptoui float %2972 to i32
  %2974 = lshr i32 %2973, 5
  %2975 = call i32 @dx.op.binary.i32(i32 40, i32 %2974, i32 8191)  ; UMin(a,b)
  br i1 false, label %2976, label %2983

; <label>:2976                                    ; preds = %2938
  %2977 = fadd fast float 0.000000e+00, %2752
  %2978 = call float @dx.op.dot3.f32(i32 55, float %2750, float %2751, float %2977, float %2750, float %2751, float %2977)  ; Dot3(ax,ay,az,bx,by,bz)
  %2979 = call float @dx.op.unary.f32(i32 25, float %2978)  ; Rsqrt(value)
  %2980 = fmul fast float %2979, %2750
  %2981 = fmul fast float %2979, %2751
  %2982 = fmul fast float %2977, %2979
  br label %2983

; <label>:2983                                    ; preds = %2976, %2938
  %2984 = phi float [ %2980, %2976 ], [ %2750, %2938 ]
  %2985 = phi float [ %2981, %2976 ], [ %2751, %2938 ]
  %2986 = phi float [ %2982, %2976 ], [ %2752, %2938 ]
  %2987 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2988 = extractvalue %dx.types.CBufRet.i32 %2987, 2
  %2989 = add nsw i32 %2988, -1
  %2990 = call i32 @dx.op.binary.i32(i32 37, i32 %2989, i32 0)  ; IMax(a,b)
  %2991 = shl i32 %2975, 2
  %2992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2991, i32 undef)  ; BufferLoad(srv,index,wot)
  %2993 = extractvalue %dx.types.ResRet.i32 %2992, 0
  %2994 = lshr i32 %2993, 16
  %2995 = and i32 %2993, 65535
  %2996 = lshr i32 %2993, 21
  %2997 = lshr i32 %2995, 5
  %2998 = call i32 @dx.op.binary.i32(i32 40, i32 %2997, i32 %2990)  ; UMin(a,b)
  %2999 = icmp ugt i32 %2996, %2998
  br i1 %2999, label %3380, label %3000

; <label>:3000                                    ; preds = %2983
  br label %3001

; <label>:3001                                    ; preds = %3369, %3000
  %3002 = phi float [ %3370, %3369 ], [ 0.000000e+00, %3000 ]
  %3003 = phi float [ %3371, %3369 ], [ 0.000000e+00, %3000 ]
  %3004 = phi float [ %3372, %3369 ], [ 0.000000e+00, %3000 ]
  %3005 = phi float [ %3373, %3369 ], [ 1.000000e+00, %3000 ]
  %3006 = phi i32 [ %3377, %3369 ], [ %2996, %3000 ]
  %3007 = phi float [ %3374, %3369 ], [ 0.000000e+00, %3000 ]
  %3008 = phi float [ %3375, %3369 ], [ 0.000000e+00, %3000 ]
  %3009 = phi float [ %3376, %3369 ], [ 0.000000e+00, %3000 ]
  %3010 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3011 = extractvalue %dx.types.CBufRet.i32 %3010, 2
  %3012 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2971, i32 %3011, i32 %3006)  ; UMad(a,b,c)
  %3013 = shl i32 %3012, 2
  %3014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3013, i32 undef)  ; BufferLoad(srv,index,wot)
  %3015 = extractvalue %dx.types.ResRet.i32 %3014, 0
  %3016 = shl i32 %3006, 5
  %3017 = sub nsw i32 %2994, %3016
  %3018 = call i32 @dx.op.binary.i32(i32 37, i32 %3017, i32 0)  ; IMax(a,b)
  %3019 = call i32 @dx.op.binary.i32(i32 38, i32 %3018, i32 31)  ; IMin(a,b)
  %3020 = sub nsw i32 1, %2994
  %3021 = add nsw i32 %3020, %2995
  %3022 = call i32 @dx.op.binary.i32(i32 37, i32 %3021, i32 0)  ; IMax(a,b)
  %3023 = call i32 @dx.op.binary.i32(i32 38, i32 %3022, i32 32)  ; IMin(a,b)
  %3024 = and i32 %3023, 31
  %3025 = shl i32 -1, %3024
  %3026 = xor i32 %3025, -1
  %3027 = and i32 %3019, 31
  %3028 = shl i32 %3026, %3027
  %3029 = icmp eq i32 %3023, 32
  %3030 = select i1 %3029, i32 -1, i32 %3028
  %3031 = and i32 %3030, %3015
  %3032 = icmp eq i32 %3031, 0
  br i1 %3032, label %3369, label %3033

; <label>:3033                                    ; preds = %3001
  br label %3034

; <label>:3034                                    ; preds = %3143, %3033
  %3035 = phi float [ %3144, %3143 ], [ %3002, %3033 ]
  %3036 = phi float [ %3145, %3143 ], [ %3003, %3033 ]
  %3037 = phi float [ %3146, %3143 ], [ %3004, %3033 ]
  %3038 = phi float [ %3147, %3143 ], [ %3005, %3033 ]
  %3039 = phi i32 [ %3047, %3143 ], [ %3031, %3033 ]
  %3040 = phi float [ %3148, %3143 ], [ %3007, %3033 ]
  %3041 = phi float [ %3149, %3143 ], [ %3008, %3033 ]
  %3042 = phi float [ %3150, %3143 ], [ %3009, %3033 ]
  %3043 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3039)  ; FirstbitLo(value)
  %3044 = add i32 %3043, %3016
  %3045 = and i32 %3043, 31
  %3046 = shl i32 1, %3045
  %3047 = xor i32 %3046, %3039
  %3048 = mul i32 %3044, 72
  %3049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3048, i32 undef)  ; BufferLoad(srv,index,wot)
  %3050 = extractvalue %dx.types.ResRet.f32 %3049, 0
  %3051 = extractvalue %dx.types.ResRet.f32 %3049, 1
  %3052 = extractvalue %dx.types.ResRet.f32 %3049, 2
  %3053 = add i32 %3048, 12
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3053, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = add i32 %3048, 16
  %3057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3056, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.f32 %3057, 0
  %3059 = extractvalue %dx.types.ResRet.f32 %3057, 1
  %3060 = extractvalue %dx.types.ResRet.f32 %3057, 2
  %3061 = add i32 %3048, 28
  %3062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3061, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.f32 %3062, 0
  %3064 = add i32 %3048, 32
  %3065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3064, i32 undef)  ; BufferLoad(srv,index,wot)
  %3066 = extractvalue %dx.types.ResRet.f32 %3065, 0
  %3067 = extractvalue %dx.types.ResRet.f32 %3065, 1
  %3068 = extractvalue %dx.types.ResRet.f32 %3065, 2
  %3069 = extractvalue %dx.types.ResRet.f32 %3065, 3
  %3070 = add i32 %3048, 48
  %3071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.f32 %3071, 0
  %3073 = extractvalue %dx.types.ResRet.f32 %3071, 1
  %3074 = add i32 %3048, 56
  %3075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3074, i32 undef)  ; BufferLoad(srv,index,wot)
  %3076 = extractvalue %dx.types.ResRet.f32 %3075, 0
  %3077 = extractvalue %dx.types.ResRet.f32 %3075, 1
  %3078 = add i32 %3048, 64
  %3079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3078, i32 undef)  ; BufferLoad(srv,index,wot)
  %3080 = extractvalue %dx.types.ResRet.f32 %3079, 0
  %3081 = extractvalue %dx.types.ResRet.f32 %3079, 1
  %3082 = mul i32 %3044, 60
  %3083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.f32 %3083, 0
  %3085 = extractvalue %dx.types.ResRet.f32 %3083, 1
  %3086 = extractvalue %dx.types.ResRet.f32 %3083, 2
  %3087 = add i32 %3082, 12
  %3088 = add i32 %3082, 48
  %3089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.f32 %3089, 0
  %3091 = extractvalue %dx.types.ResRet.f32 %3089, 1
  %3092 = extractvalue %dx.types.ResRet.f32 %3089, 2
  %3093 = and i32 %3055, 32767
  %3094 = bitcast float %3050 to i32
  %3095 = icmp eq i32 %3094, -1
  %3096 = bitcast float %3051 to i32
  %3097 = and i32 %3055, 32768
  %3098 = icmp ne i32 %3097, 0
  %3099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3100 = extractvalue %dx.types.CBufRet.f32 %3099, 0
  %3101 = extractvalue %dx.types.CBufRet.f32 %3099, 1
  %3102 = extractvalue %dx.types.CBufRet.f32 %3099, 2
  %3103 = fsub fast float %3084, %3100
  %3104 = fsub fast float %3085, %3101
  %3105 = fsub fast float %3086, %3102
  %3106 = fsub fast float %136, %3103
  %3107 = fsub fast float %137, %3104
  %3108 = fsub fast float %138, %3105
  %3109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3087, i32 undef)  ; BufferLoad(srv,index,wot)
  %3110 = extractvalue %dx.types.ResRet.f32 %3109, 0
  %3111 = extractvalue %dx.types.ResRet.f32 %3109, 1
  %3112 = extractvalue %dx.types.ResRet.f32 %3109, 2
  %3113 = call float @dx.op.dot3.f32(i32 55, float %3106, float %3107, float %3108, float %3110, float %3111, float %3112)  ; Dot3(ax,ay,az,bx,by,bz)
  %3114 = add i32 %3082, 24
  %3115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3114, i32 undef)  ; BufferLoad(srv,index,wot)
  %3116 = extractvalue %dx.types.ResRet.f32 %3115, 0
  %3117 = extractvalue %dx.types.ResRet.f32 %3115, 1
  %3118 = extractvalue %dx.types.ResRet.f32 %3115, 2
  %3119 = call float @dx.op.dot3.f32(i32 55, float %3106, float %3107, float %3108, float %3116, float %3117, float %3118)  ; Dot3(ax,ay,az,bx,by,bz)
  %3120 = add i32 %3082, 36
  %3121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3120, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.f32 %3121, 0
  %3123 = extractvalue %dx.types.ResRet.f32 %3121, 1
  %3124 = extractvalue %dx.types.ResRet.f32 %3121, 2
  %3125 = call float @dx.op.dot3.f32(i32 55, float %3106, float %3107, float %3108, float %3122, float %3123, float %3124)  ; Dot3(ax,ay,az,bx,by,bz)
  %3126 = call float @dx.op.unary.f32(i32 6, float %3113)  ; FAbs(value)
  %3127 = call float @dx.op.unary.f32(i32 6, float %3119)  ; FAbs(value)
  %3128 = call float @dx.op.unary.f32(i32 6, float %3125)  ; FAbs(value)
  %3129 = fsub fast float %3090, %3126
  %3130 = fsub fast float %3091, %3127
  %3131 = fsub fast float %3092, %3128
  %3132 = fmul fast float %3129, %3058
  %3133 = fmul fast float %3130, %3059
  %3134 = fmul fast float %3131, %3060
  %3135 = call float @dx.op.binary.f32(i32 36, float %3133, float %3134)  ; FMin(a,b)
  %3136 = call float @dx.op.binary.f32(i32 36, float %3132, float %3135)  ; FMin(a,b)
  %3137 = call float @dx.op.unary.f32(i32 7, float %3136)  ; Saturate(value)
  %3138 = call float @dx.op.binary.f32(i32 36, float %3038, float %3137)  ; FMin(a,b)
  %3139 = uitofp i1 %3098 to float
  %3140 = fsub fast float 1.000000e+00, %3139
  %3141 = fmul fast float %3138, %3140
  %3142 = fcmp fast ogt float %3141, 0.000000e+00
  br i1 %3142, label %3152, label %3143

; <label>:3143                                    ; preds = %3294, %3034
  %3144 = phi float [ %3358, %3294 ], [ %3035, %3034 ]
  %3145 = phi float [ %3359, %3294 ], [ %3036, %3034 ]
  %3146 = phi float [ %3360, %3294 ], [ %3037, %3034 ]
  %3147 = phi float [ %3367, %3294 ], [ %3038, %3034 ]
  %3148 = phi float [ %3364, %3294 ], [ %3040, %3034 ]
  %3149 = phi float [ %3365, %3294 ], [ %3041, %3034 ]
  %3150 = phi float [ %3366, %3294 ], [ %3042, %3034 ]
  %3151 = icmp eq i32 %3039, %3046
  br i1 %3151, label %3368, label %3034

; <label>:3152                                    ; preds = %3034
  br i1 %3095, label %3210, label %3153

; <label>:3153                                    ; preds = %3152
  %3154 = fsub fast float -0.000000e+00, %3110
  %3155 = fsub fast float -0.000000e+00, %3111
  %3156 = fsub fast float -0.000000e+00, %3112
  %3157 = call float @dx.op.dot3.f32(i32 55, float %2984, float %2985, float %2986, float %3154, float %3155, float %3156)  ; Dot3(ax,ay,az,bx,by,bz)
  %3158 = fsub fast float -0.000000e+00, %3157
  %3159 = call float @dx.op.dot3.f32(i32 55, float %3106, float %3107, float %3108, float %3154, float %3155, float %3156)  ; Dot3(ax,ay,az,bx,by,bz)
  %3160 = fadd fast float %3159, %3073
  %3161 = fadd fast float %3072, %3159
  %3162 = fsub fast float -0.000000e+00, %3161
  %3163 = fcmp ogt float %3157, -0.000000e+00
  %3164 = select i1 %3163, float %3162, float %3160
  %3165 = call float @dx.op.unary.f32(i32 6, float %3158)  ; FAbs(value)
  %3166 = fdiv fast float 1.000000e+00, %3165
  %3167 = fmul fast float %3164, %3166
  %3168 = call float @dx.op.binary.f32(i32 35, float %3167, float 0.000000e+00)  ; FMax(a,b)
  %3169 = fsub fast float -0.000000e+00, %3116
  %3170 = fsub fast float -0.000000e+00, %3117
  %3171 = fsub fast float -0.000000e+00, %3118
  %3172 = call float @dx.op.dot3.f32(i32 55, float %2984, float %2985, float %2986, float %3169, float %3170, float %3171)  ; Dot3(ax,ay,az,bx,by,bz)
  %3173 = fsub fast float -0.000000e+00, %3172
  %3174 = call float @dx.op.dot3.f32(i32 55, float %3106, float %3107, float %3108, float %3169, float %3170, float %3171)  ; Dot3(ax,ay,az,bx,by,bz)
  %3175 = fadd fast float %3174, %3077
  %3176 = fadd fast float %3076, %3174
  %3177 = fsub fast float -0.000000e+00, %3176
  %3178 = fcmp ogt float %3172, -0.000000e+00
  %3179 = select i1 %3178, float %3177, float %3175
  %3180 = call float @dx.op.unary.f32(i32 6, float %3173)  ; FAbs(value)
  %3181 = fdiv fast float 1.000000e+00, %3180
  %3182 = fmul fast float %3179, %3181
  %3183 = call float @dx.op.binary.f32(i32 35, float %3182, float 0.000000e+00)  ; FMax(a,b)
  %3184 = fsub fast float -0.000000e+00, %3122
  %3185 = fsub fast float -0.000000e+00, %3123
  %3186 = fsub fast float -0.000000e+00, %3124
  %3187 = call float @dx.op.dot3.f32(i32 55, float %2984, float %2985, float %2986, float %3184, float %3185, float %3186)  ; Dot3(ax,ay,az,bx,by,bz)
  %3188 = fsub fast float -0.000000e+00, %3187
  %3189 = call float @dx.op.dot3.f32(i32 55, float %3106, float %3107, float %3108, float %3184, float %3185, float %3186)  ; Dot3(ax,ay,az,bx,by,bz)
  %3190 = fadd fast float %3189, %3081
  %3191 = fadd fast float %3080, %3189
  %3192 = fsub fast float -0.000000e+00, %3191
  %3193 = fcmp ogt float %3187, -0.000000e+00
  %3194 = select i1 %3193, float %3192, float %3190
  %3195 = call float @dx.op.unary.f32(i32 6, float %3188)  ; FAbs(value)
  %3196 = fdiv fast float 1.000000e+00, %3195
  %3197 = fmul fast float %3194, %3196
  %3198 = call float @dx.op.binary.f32(i32 35, float %3197, float 0.000000e+00)  ; FMax(a,b)
  %3199 = call float @dx.op.binary.f32(i32 36, float %3183, float %3198)  ; FMin(a,b)
  %3200 = call float @dx.op.binary.f32(i32 36, float %3168, float %3199)  ; FMin(a,b)
  %3201 = fmul fast float %3200, %2984
  %3202 = fmul fast float %3200, %2985
  %3203 = fmul fast float %3200, %2986
  %3204 = fadd fast float %3201, %136
  %3205 = fadd fast float %3202, %137
  %3206 = fadd fast float %3203, %138
  %3207 = fsub fast float %3204, %3050
  %3208 = fsub fast float %3205, %3051
  %3209 = fsub fast float %3206, %3052
  br label %3217

; <label>:3210                                    ; preds = %3152
  %3211 = fmul fast float %2984, 8.096000e+03
  %3212 = fmul fast float %2985, 8.096000e+03
  %3213 = fmul fast float %2986, 8.096000e+03
  %3214 = fadd fast float %3211, %136
  %3215 = fadd fast float %3212, %137
  %3216 = fadd fast float %3213, %138
  br label %3217

; <label>:3217                                    ; preds = %3210, %3153
  %3218 = phi float [ %2984, %3210 ], [ %3207, %3153 ]
  %3219 = phi float [ %2985, %3210 ], [ %3208, %3153 ]
  %3220 = phi float [ %2986, %3210 ], [ %3209, %3153 ]
  %3221 = phi float [ %3214, %3210 ], [ %3204, %3153 ]
  %3222 = phi float [ %3215, %3210 ], [ %3205, %3153 ]
  %3223 = phi float [ %3216, %3210 ], [ %3206, %3153 ]
  %3224 = fcmp fast olt float %3069, 1.000000e+00
  br i1 %3224, label %3225, label %3256, !dx.controlflow.hints !81

; <label>:3225                                    ; preds = %3217
  %3226 = fmul fast float %3220, %3067
  %3227 = fmul fast float %3219, %3068
  %3228 = fsub fast float %3226, %3227
  %3229 = fmul fast float %3218, %3068
  %3230 = fmul fast float %3220, %3066
  %3231 = fsub fast float %3229, %3230
  %3232 = fmul fast float %3219, %3066
  %3233 = fmul fast float %3218, %3067
  %3234 = fsub fast float %3232, %3233
  %3235 = fmul fast float %3228, 2.000000e+00
  %3236 = fmul fast float %3231, 2.000000e+00
  %3237 = fmul fast float %3234, 2.000000e+00
  %3238 = fmul fast float %3235, %3069
  %3239 = fmul fast float %3236, %3069
  %3240 = fmul fast float %3237, %3069
  %3241 = fmul fast float %3237, %3067
  %3242 = fmul fast float %3236, %3068
  %3243 = fmul fast float %3235, %3068
  %3244 = fmul fast float %3237, %3066
  %3245 = fmul fast float %3236, %3066
  %3246 = fmul fast float %3235, %3067
  %3247 = fadd fast float %3241, %3218
  %3248 = fadd fast float %3247, %3238
  %3249 = fsub fast float %3248, %3242
  %3250 = fsub fast float %3219, %3244
  %3251 = fadd fast float %3250, %3239
  %3252 = fadd fast float %3251, %3243
  %3253 = fadd fast float %3240, %3220
  %3254 = fsub fast float %3253, %3246
  %3255 = fadd fast float %3254, %3245
  br label %3256

; <label>:3256                                    ; preds = %3225, %3217
  %3257 = phi float [ %3249, %3225 ], [ %3218, %3217 ]
  %3258 = phi float [ %3252, %3225 ], [ %3219, %3217 ]
  %3259 = phi float [ %3255, %3225 ], [ %3220, %3217 ]
  br i1 %3095, label %3291, label %3260

; <label>:3260                                    ; preds = %3256
  %3261 = fmul fast float %2740, 0x400187C840000000
  %3262 = fadd fast float %3261, 0xC00EFC2120000000
  %3263 = fmul fast float %3262, %2740
  %3264 = fadd fast float %3263, 0x3FE5D16340000000
  %3265 = fmul fast float %3264, %2740
  %3266 = fadd fast float %3265, 1.000000e+00
  %3267 = call float @dx.op.unary.f32(i32 7, float %3266)  ; Saturate(value)
  %3268 = fsub fast float %3221, %136
  %3269 = fsub fast float %3222, %137
  %3270 = fsub fast float %3223, %138
  %3271 = fsub fast float %3221, %3050
  %3272 = fsub fast float %3222, %3051
  %3273 = fsub fast float %3223, %3052
  %3274 = call float @dx.op.dot3.f32(i32 55, float %3268, float %3269, float %3270, float %3268, float %3269, float %3270)  ; Dot3(ax,ay,az,bx,by,bz)
  %3275 = call float @dx.op.dot3.f32(i32 55, float %3271, float %3272, float %3273, float %3271, float %3272, float %3273)  ; Dot3(ax,ay,az,bx,by,bz)
  %3276 = fadd fast float %3275, 0x3EE4F8B580000000
  %3277 = fdiv fast float %3274, %3276
  %3278 = bitcast float %3277 to i32
  %3279 = ashr i32 %3278, 1
  %3280 = add nsw i32 %3279, 532487669
  %3281 = bitcast i32 %3280 to float
  %3282 = fmul fast float %3281, %3267
  %3283 = call float @dx.op.unary.f32(i32 7, float %3282)  ; Saturate(value)
  %3284 = fmul fast float %3283, 0x4009981AE0000000
  %3285 = fsub fast float 0x40111BBD80000000, %3284
  %3286 = fmul fast float %3285, %3283
  %3287 = fadd fast float %3286, 0xC0009F6020000000
  %3288 = fmul fast float %3287, %3283
  %3289 = fadd fast float %3288, 1.000000e+00
  %3290 = call float @dx.op.unary.f32(i32 7, float %3289)  ; Saturate(value)
  br label %3294

; <label>:3291                                    ; preds = %3256
  %3292 = icmp ne i32 %3096, -1
  %3293 = zext i1 %3292 to i32
  br label %3294

; <label>:3294                                    ; preds = %3291, %3260
  %3295 = phi float [ %2740, %3291 ], [ %3290, %3260 ]
  %3296 = phi i32 [ %3293, %3291 ], [ 0, %3260 ]
  %3297 = fmul float %3295, 5.000000e+00
  %3298 = fsub float 5.000000e+00, %3297
  %3299 = icmp ne i32 %3296, 0
  %3300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3301 = extractvalue %dx.types.CBufRet.f32 %3300, 3
  %3302 = fadd fast float %3301, %3298
  %3303 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3302)  ; FMax(a,b)
  %3304 = call float @dx.op.unary.f32(i32 6, float %3257)  ; FAbs(value)
  %3305 = call float @dx.op.unary.f32(i32 6, float %3258)  ; FAbs(value)
  %3306 = fadd fast float %3305, %3304
  %3307 = call float @dx.op.unary.f32(i32 6, float %3259)  ; FAbs(value)
  %3308 = fadd fast float %3306, %3307
  %3309 = fcmp fast oeq float %3308, 0.000000e+00
  %3310 = fdiv fast float 1.000000e+00, %3308
  %3311 = select i1 %3309, float 1.000000e+00, float %3310
  %3312 = fmul fast float %3311, %3257
  %3313 = fmul fast float %3311, %3258
  %3314 = call float @dx.op.unary.f32(i32 6, float %3313)  ; FAbs(value)
  %3315 = call float @dx.op.unary.f32(i32 6, float %3312)  ; FAbs(value)
  %3316 = fsub fast float 1.000000e+00, %3314
  %3317 = fsub fast float 1.000000e+00, %3315
  %3318 = fcmp fast oge float %3312, 0.000000e+00
  %3319 = fcmp fast oge float %3313, 0.000000e+00
  %3320 = select i1 %3318, float 1.000000e+00, float -1.000000e+00
  %3321 = select i1 %3319, float 1.000000e+00, float -1.000000e+00
  %3322 = fcmp fast ole float %3259, 0.000000e+00
  %3323 = fmul fast float %3320, %3316
  %3324 = fmul fast float %3321, %3317
  %3325 = select i1 %3322, float %3323, float %3312
  %3326 = select i1 %3322, float %3324, float %3313
  %3327 = fmul fast float %3325, 5.000000e-01
  %3328 = fmul fast float %3326, 5.000000e-01
  %3329 = fadd fast float %3327, 5.000000e-01
  %3330 = fadd fast float %3328, 5.000000e-01
  %3331 = uitofp i32 %3093 to float
  %3332 = call float @dx.op.binary.f32(i32 36, float %3303, float 3.000000e+00)  ; FMin(a,b)
  %3333 = fadd fast float %3332, 2.000000e+00
  %3334 = call float @dx.op.unary.f32(i32 21, float %3333)  ; Exp(value)
  %3335 = extractvalue %dx.types.CBufRet.f32 %3300, 1
  %3336 = fmul fast float %3335, %3334
  %3337 = fmul fast float %3336, 2.000000e+00
  %3338 = fsub fast float 1.000000e+00, %3337
  %3339 = fmul fast float %3329, %3338
  %3340 = fmul fast float %3330, %3338
  %3341 = fadd fast float %3339, %3336
  %3342 = fadd fast float %3340, %3336
  %3343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %39, float %3341, float %3342, float %3331, float undef, i32 0, i32 0, i32 undef, float %3303)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3344 = extractvalue %dx.types.ResRet.f32 %3343, 0
  %3345 = extractvalue %dx.types.ResRet.f32 %3343, 1
  %3346 = extractvalue %dx.types.ResRet.f32 %3343, 2
  %3347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3348 = extractvalue %dx.types.CBufRet.f32 %3347, 3
  %3349 = fmul fast float %3348, %3063
  %3350 = call float @dx.op.binary.f32(i32 36, float %2806, float %3349)  ; FMin(a,b)
  %3351 = select i1 %3299, float %3350, float %3349
  %3352 = fmul fast float %3344, %3141
  %3353 = fmul fast float %3352, %3351
  %3354 = fmul fast float %3345, %3141
  %3355 = fmul fast float %3354, %3351
  %3356 = fmul fast float %3346, %3141
  %3357 = fmul fast float %3356, %3351
  %3358 = fadd fast float %3353, %3035
  %3359 = fadd fast float %3355, %3036
  %3360 = fadd fast float %3357, %3037
  %3361 = fmul fast float %3221, %3141
  %3362 = fmul fast float %3222, %3141
  %3363 = fmul fast float %3223, %3141
  %3364 = fadd fast float %3361, %3040
  %3365 = fadd fast float %3362, %3041
  %3366 = fadd fast float %3363, %3042
  %3367 = fsub fast float %3038, %3141
  br label %3143

; <label>:3368                                    ; preds = %3143
  br label %3369

; <label>:3369                                    ; preds = %3368, %3001
  %3370 = phi float [ %3002, %3001 ], [ %3144, %3368 ]
  %3371 = phi float [ %3003, %3001 ], [ %3145, %3368 ]
  %3372 = phi float [ %3004, %3001 ], [ %3146, %3368 ]
  %3373 = phi float [ %3005, %3001 ], [ %3147, %3368 ]
  %3374 = phi float [ %3007, %3001 ], [ %3148, %3368 ]
  %3375 = phi float [ %3008, %3001 ], [ %3149, %3368 ]
  %3376 = phi float [ %3009, %3001 ], [ %3150, %3368 ]
  %3377 = add i32 %3006, 1
  %3378 = icmp ugt i32 %3377, %2998
  br i1 %3378, label %3379, label %3001, !llvm.loop !82

; <label>:3379                                    ; preds = %3369
  br label %3380

; <label>:3380                                    ; preds = %3379, %2983
  %3381 = phi float [ 0.000000e+00, %2983 ], [ %3370, %3379 ]
  %3382 = phi float [ 0.000000e+00, %2983 ], [ %3371, %3379 ]
  %3383 = phi float [ 0.000000e+00, %2983 ], [ %3372, %3379 ]
  %3384 = phi float [ 0.000000e+00, %2983 ], [ %3374, %3379 ]
  %3385 = phi float [ 0.000000e+00, %2983 ], [ %3375, %3379 ]
  %3386 = phi float [ 0.000000e+00, %2983 ], [ %3376, %3379 ]
  %3387 = call float @dx.op.dot3.f32(i32 55, float %3381, float %3382, float %3383, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3388 = select i1 %228, float 0.000000e+00, float %3381
  %3389 = select i1 %228, float %3387, float %3382
  %3390 = select i1 %228, float 0.000000e+00, float %3383
  %3391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %3392 = extractvalue %dx.types.CBufRet.f32 %3391, 0
  %3393 = extractvalue %dx.types.CBufRet.f32 %3391, 1
  %3394 = extractvalue %dx.types.CBufRet.f32 %3391, 2
  %3395 = extractvalue %dx.types.CBufRet.f32 %3391, 3
  %3396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %3397 = extractvalue %dx.types.CBufRet.f32 %3396, 0
  %3398 = extractvalue %dx.types.CBufRet.f32 %3396, 1
  %3399 = extractvalue %dx.types.CBufRet.f32 %3396, 2
  %3400 = extractvalue %dx.types.CBufRet.f32 %3396, 3
  %3401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %3402 = extractvalue %dx.types.CBufRet.f32 %3401, 0
  %3403 = extractvalue %dx.types.CBufRet.f32 %3401, 1
  %3404 = extractvalue %dx.types.CBufRet.f32 %3401, 2
  %3405 = extractvalue %dx.types.CBufRet.f32 %3401, 3
  %3406 = call float @dx.op.dot3.f32(i32 55, float %3402, float %3403, float %3404, float %2750, float %2751, float %2752)  ; Dot3(ax,ay,az,bx,by,bz)
  %3407 = call float @dx.op.dot3.f32(i32 55, float %3384, float %3385, float %3386, float %3402, float %3403, float %3404)  ; Dot3(ax,ay,az,bx,by,bz)
  %3408 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %3402, float %3403, float %3404)  ; Dot3(ax,ay,az,bx,by,bz)
  %3409 = fadd fast float %2740, -1.000000e+00
  %3410 = fsub fast float %3407, %3408
  %3411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %3412 = extractvalue %dx.types.CBufRet.f32 %3411, 2
  %3413 = fmul fast float %3412, %3407
  %3414 = fdiv fast float 1.600000e+02, %3413
  %3415 = fmul fast float %3409, %3409
  %3416 = fmul fast float %3415, 0xBFB5B17960000000
  %3417 = fmul fast float %3416, %3410
  %3418 = fmul fast float %3417, %3414
  %3419 = call float @dx.op.unary.f32(i32 21, float %3418)  ; Exp(value)
  %3420 = fmul fast float %3419, 0x3FF04B2960000000
  %3421 = fsub fast float 0x3FF04B2960000000, %3420
  %3422 = call float @dx.op.unary.f32(i32 7, float %3421)  ; Saturate(value)
  %3423 = fmul fast float %3422, 4.000000e+00
  %3424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %3425 = extractvalue %dx.types.CBufRet.f32 %3424, 0
  %3426 = extractvalue %dx.types.CBufRet.f32 %3424, 1
  %3427 = extractvalue %dx.types.CBufRet.f32 %3424, 2
  %3428 = fadd fast float %3425, %3384
  %3429 = fadd fast float %3426, %3385
  %3430 = fadd fast float %3427, %3386
  %3431 = fmul fast float %3428, %3392
  %3432 = call float @dx.op.tertiary.f32(i32 46, float %3429, float %3393, float %3431)  ; FMad(a,b,c)
  %3433 = call float @dx.op.tertiary.f32(i32 46, float %3430, float %3394, float %3432)  ; FMad(a,b,c)
  %3434 = fadd fast float %3433, %3395
  %3435 = fmul fast float %3428, %3397
  %3436 = call float @dx.op.tertiary.f32(i32 46, float %3429, float %3398, float %3435)  ; FMad(a,b,c)
  %3437 = call float @dx.op.tertiary.f32(i32 46, float %3430, float %3399, float %3436)  ; FMad(a,b,c)
  %3438 = fadd fast float %3437, %3400
  %3439 = fmul fast float %3428, %3402
  %3440 = call float @dx.op.tertiary.f32(i32 46, float %3429, float %3403, float %3439)  ; FMad(a,b,c)
  %3441 = call float @dx.op.tertiary.f32(i32 46, float %3430, float %3404, float %3440)  ; FMad(a,b,c)
  %3442 = fadd fast float %3441, %3405
  %3443 = fdiv fast float %3434, %3442
  %3444 = fdiv fast float %3438, %3442
  %3445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3446 = extractvalue %dx.types.CBufRet.f32 %3445, 0
  %3447 = extractvalue %dx.types.CBufRet.f32 %3445, 1
  %3448 = fmul fast float %3446, %3443
  %3449 = fmul fast float %3447, %3444
  %3450 = extractvalue %dx.types.CBufRet.f32 %3445, 2
  %3451 = extractvalue %dx.types.CBufRet.f32 %3445, 3
  %3452 = fadd fast float %3448, %3450
  %3453 = fadd fast float %3449, %3451
  %3454 = fmul fast float %3406, 8.000000e+00
  %3455 = call float @dx.op.unary.f32(i32 7, float %3454)  ; Saturate(value)
  %3456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %3457 = extractvalue %dx.types.CBufRet.f32 %3456, 0
  %3458 = fmul fast float %3452, 2.000000e+00
  %3459 = fmul fast float %3453, 2.000000e+00
  %3460 = fadd fast float %3458, -1.000000e+00
  %3461 = fadd fast float %3459, -1.000000e+00
  %3462 = fmul fast float %3460, %3460
  %3463 = fsub fast float 1.000000e+00, %3462
  %3464 = call float @dx.op.unary.f32(i32 7, float %3463)  ; Saturate(value)
  %3465 = fmul fast float %3461, %3461
  %3466 = fsub fast float 1.000000e+00, %3465
  %3467 = call float @dx.op.unary.f32(i32 7, float %3466)  ; Saturate(value)
  %3468 = fmul fast float %3457, %3464
  %3469 = fmul fast float %3468, %3467
  %3470 = call float @dx.op.unary.f32(i32 7, float %3469)  ; Saturate(value)
  %3471 = fmul fast float %3470, %3455
  %3472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %3452, float %3453, float undef, float undef, i32 0, i32 0, i32 undef, float %3423)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3473 = extractvalue %dx.types.ResRet.f32 %3472, 0
  %3474 = extractvalue %dx.types.ResRet.f32 %3472, 1
  %3475 = extractvalue %dx.types.ResRet.f32 %3472, 2
  %3476 = select i1 %228, float 0.000000e+00, float %3474
  %3477 = select i1 %228, float 0.000000e+00, float %3475
  %3478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3479 = extractvalue %dx.types.CBufRet.f32 %3478, 2
  %3480 = fmul fast float %3479, %3473
  %3481 = fmul fast float %3476, %3479
  %3482 = fmul fast float %3477, %3479
  %3483 = fsub fast float %3480, %3388
  %3484 = fsub fast float %3481, %3389
  %3485 = fsub fast float %3482, %3390
  %3486 = fmul fast float %3483, %3471
  %3487 = fmul fast float %3484, %3471
  %3488 = fmul fast float %3485, %3471
  %3489 = fadd fast float %3486, %3388
  %3490 = fadd fast float %3487, %3389
  %3491 = fadd fast float %3488, %3390
  br label %3492

; <label>:3492                                    ; preds = %3380, %2919
  %3493 = phi float [ %2865, %2919 ], [ %3489, %3380 ]
  %3494 = phi float [ %2866, %2919 ], [ %3490, %3380 ]
  %3495 = phi float [ %2867, %2919 ], [ %3491, %3380 ]
  %3496 = fmul fast float %2925, %2861
  %3497 = fmul fast float %2925, %2862
  %3498 = fmul fast float %2925, %2863
  %3499 = call float @dx.op.dot3.f32(i32 55, float %2734, float %2735, float %2736, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3500 = fcmp fast ogt float %3499, 0x3E7FF19E20000000
  %3501 = fdiv fast float 1.000000e+00, %3499
  %3502 = select i1 %3500, float %3501, float 0.000000e+00
  %3503 = fmul fast float %3502, %2734
  %3504 = fmul fast float %3502, %2735
  %3505 = fmul fast float %3502, %2736
  %3506 = fadd fast float %3503, -1.000000e+00
  %3507 = fadd fast float %3504, -1.000000e+00
  %3508 = fadd fast float %3505, -1.000000e+00
  %3509 = fmul fast float %3506, 5.000000e-01
  %3510 = fmul fast float %3507, 5.000000e-01
  %3511 = fmul fast float %3508, 5.000000e-01
  %3512 = fadd fast float %3509, 1.000000e+00
  %3513 = fadd fast float %3510, 1.000000e+00
  %3514 = fadd fast float %3511, 1.000000e+00
  %3515 = call float @dx.op.binary.f32(i32 35, float %2744, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3516 = fdiv fast float %900, %3515
  %3517 = fcmp fast olt float %1519, 1.270000e+02
  %3518 = fcmp fast olt float %1520, 1.270000e+02
  %3519 = fcmp fast olt float %1521, 1.270000e+02
  %3520 = fmul fast float %1519, 0xBFF7154760000000
  %3521 = fmul fast float %3520, %3516
  %3522 = fmul fast float %1520, 0xBFF7154760000000
  %3523 = fmul fast float %3522, %3516
  %3524 = fmul fast float %1521, 0xBFF7154760000000
  %3525 = fmul fast float %3524, %3516
  %3526 = call float @dx.op.unary.f32(i32 21, float %3521)  ; Exp(value)
  %3527 = call float @dx.op.unary.f32(i32 21, float %3523)  ; Exp(value)
  %3528 = call float @dx.op.unary.f32(i32 21, float %3525)  ; Exp(value)
  %3529 = call float @dx.op.unary.f32(i32 7, float %3526)  ; Saturate(value)
  %3530 = call float @dx.op.unary.f32(i32 7, float %3527)  ; Saturate(value)
  %3531 = call float @dx.op.unary.f32(i32 7, float %3528)  ; Saturate(value)
  %3532 = select i1 %3517, float %3529, float 0.000000e+00
  %3533 = select i1 %3518, float %3530, float 0.000000e+00
  %3534 = select i1 %3519, float %3531, float 0.000000e+00
  %3535 = fmul fast float %3532, %2925
  %3536 = fmul fast float %3533, %2925
  %3537 = fmul fast float %3534, %2925
  %3538 = fadd fast float %3535, -1.000000e+00
  %3539 = fadd fast float %3536, -1.000000e+00
  %3540 = fadd fast float %3537, -1.000000e+00
  %3541 = fmul fast float %3493, %2920
  %3542 = fmul fast float %3494, %2921
  %3543 = fmul fast float %3495, %2922
  %3544 = fsub fast float 1.000000e+00, %2744
  %3545 = bitcast float %3544 to i32
  %3546 = sitofp i32 %3545 to float
  %3547 = fmul fast float %3546, 5.000000e+00
  %3548 = fadd fast float %3547, 0xC1EFBF8940000000
  %3549 = fptosi float %3548 to i32
  %3550 = bitcast i32 %3549 to float
  %3551 = fmul fast float %3550, %1449
  %3552 = fmul fast float %2861, %3551
  %3553 = fmul fast float %3552, %2925
  %3554 = fmul fast float %3553, %3512
  %3555 = fmul fast float %2862, %3551
  %3556 = fmul fast float %3555, %2925
  %3557 = fmul fast float %3556, %3513
  %3558 = fmul fast float %2863, %3551
  %3559 = fmul fast float %3558, %2925
  %3560 = fmul fast float %3559, %3514
  %3561 = fmul fast float %3496, %1496
  %3562 = fmul fast float %3497, %1496
  %3563 = fmul fast float %3498, %1496
  %3564 = fadd fast float %3541, %1451
  %3565 = fadd fast float %3564, %3554
  %3566 = fmul fast float %3565, %1496
  %3567 = fadd fast float %3542, %1452
  %3568 = fadd fast float %3567, %3557
  %3569 = fmul fast float %3568, %1496
  %3570 = fadd fast float %3543, %1453
  %3571 = fadd fast float %3570, %3560
  %3572 = fmul fast float %3571, %1496
  %3573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3574 = extractvalue %dx.types.CBufRet.f32 %3573, 3
  %3575 = fcmp fast oeq float %3574, 0.000000e+00
  br i1 %3575, label %5054, label %3576

; <label>:3576                                    ; preds = %3492
  %3577 = extractvalue %dx.types.CBufRet.f32 %3573, 0
  %3578 = extractvalue %dx.types.CBufRet.f32 %3573, 1
  %3579 = extractvalue %dx.types.CBufRet.f32 %3573, 2
  %3580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3581 = extractvalue %dx.types.CBufRet.f32 %3580, 0
  %3582 = extractvalue %dx.types.CBufRet.f32 %3580, 1
  %3583 = extractvalue %dx.types.CBufRet.f32 %3580, 2
  %3584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3585 = extractvalue %dx.types.CBufRet.f32 %3584, 0
  %3586 = extractvalue %dx.types.CBufRet.f32 %3584, 1
  %3587 = call float @dx.op.dot3.f32(i32 55, float %3581, float %3582, float %3583, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3588 = select i1 %228, float %3585, float %3581
  %3589 = select i1 %228, float %3587, float %3582
  %3590 = select i1 %228, float %3586, float %3583
  %3591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3592 = extractvalue %dx.types.CBufRet.f32 %3591, 2
  %3593 = fmul fast float %3592, %83
  %3594 = fmul fast float %3592, %84
  %3595 = fmul fast float %3592, %85
  %3596 = fadd fast float %3593, %136
  %3597 = fadd fast float %3594, %137
  %3598 = fadd fast float %3595, %138
  %3599 = fcmp fast olt float %3574, 0.000000e+00
  br i1 %3599, label %4695, label %3600

; <label>:3600                                    ; preds = %3576
  %3601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3602 = extractvalue %dx.types.CBufRet.f32 %3601, 0
  %3603 = extractvalue %dx.types.CBufRet.f32 %3601, 1
  %3604 = extractvalue %dx.types.CBufRet.f32 %3601, 2
  %3605 = extractvalue %dx.types.CBufRet.f32 %3601, 3
  %3606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3607 = extractvalue %dx.types.CBufRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.CBufRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.CBufRet.f32 %3606, 2
  %3610 = extractvalue %dx.types.CBufRet.f32 %3606, 3
  %3611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3612 = extractvalue %dx.types.CBufRet.f32 %3611, 0
  %3613 = extractvalue %dx.types.CBufRet.f32 %3611, 1
  %3614 = extractvalue %dx.types.CBufRet.f32 %3611, 2
  %3615 = extractvalue %dx.types.CBufRet.f32 %3611, 3
  %3616 = fmul fast float %3602, %3596
  %3617 = call float @dx.op.tertiary.f32(i32 46, float %3597, float %3603, float %3616)  ; FMad(a,b,c)
  %3618 = call float @dx.op.tertiary.f32(i32 46, float %3598, float %3604, float %3617)  ; FMad(a,b,c)
  %3619 = fadd fast float %3618, %3605
  %3620 = fmul fast float %3607, %3596
  %3621 = call float @dx.op.tertiary.f32(i32 46, float %3597, float %3608, float %3620)  ; FMad(a,b,c)
  %3622 = call float @dx.op.tertiary.f32(i32 46, float %3598, float %3609, float %3621)  ; FMad(a,b,c)
  %3623 = fadd fast float %3622, %3610
  %3624 = fmul fast float %3612, %3596
  %3625 = call float @dx.op.tertiary.f32(i32 46, float %3597, float %3613, float %3624)  ; FMad(a,b,c)
  %3626 = call float @dx.op.tertiary.f32(i32 46, float %3598, float %3614, float %3625)  ; FMad(a,b,c)
  %3627 = fadd fast float %3626, %3615
  %3628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3629 = extractvalue %dx.types.CBufRet.f32 %3628, 0
  %3630 = extractvalue %dx.types.CBufRet.f32 %3628, 1
  %3631 = extractvalue %dx.types.CBufRet.f32 %3628, 3
  %3632 = fmul fast float %3631, %3619
  %3633 = fmul fast float %3631, %3623
  %3634 = fadd fast float %3632, %3629
  %3635 = fadd fast float %3633, %3630
  %3636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3637 = extractvalue %dx.types.CBufRet.f32 %3636, 0
  %3638 = extractvalue %dx.types.CBufRet.f32 %3636, 1
  %3639 = extractvalue %dx.types.CBufRet.f32 %3636, 3
  %3640 = fmul fast float %3639, %3619
  %3641 = fmul fast float %3639, %3623
  %3642 = fadd fast float %3640, %3637
  %3643 = fadd fast float %3641, %3638
  %3644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3645 = extractvalue %dx.types.CBufRet.f32 %3644, 1
  %3646 = fsub fast float %3645, %3627
  %3647 = extractvalue %dx.types.CBufRet.f32 %3644, 2
  %3648 = fmul fast float %3646, %3647
  %3649 = fsub fast float 1.000000e+00, %3648
  %3650 = call float @dx.op.unary.f32(i32 7, float %3649)  ; Saturate(value)
  %3651 = extractvalue %dx.types.CBufRet.f32 %3636, 2
  %3652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3653 = extractvalue %dx.types.CBufRet.f32 %3652, 2
  %3654 = fadd fast float %3653, %3651
  %3655 = fcmp fast ogt float %3654, 0.000000e+00
  br i1 %3655, label %3656, label %3680

; <label>:3656                                    ; preds = %3600
  %3657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3658 = extractvalue %dx.types.CBufRet.f32 %3657, 0
  %3659 = extractvalue %dx.types.CBufRet.f32 %3657, 1
  %3660 = fsub fast float %3642, %3658
  %3661 = fsub fast float %3643, %3659
  %3662 = fcmp fast olt float %3660, 0.000000e+00
  %3663 = fcmp fast olt float %3661, 0.000000e+00
  %3664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3665 = extractvalue %dx.types.CBufRet.f32 %3664, 0
  %3666 = extractvalue %dx.types.CBufRet.f32 %3664, 1
  %3667 = extractvalue %dx.types.CBufRet.f32 %3664, 2
  %3668 = extractvalue %dx.types.CBufRet.f32 %3664, 3
  %3669 = select i1 %3662, float %3665, float %3667
  %3670 = select i1 %3663, float %3666, float %3668
  %3671 = fmul fast float %3669, %3660
  %3672 = fmul fast float %3670, %3661
  %3673 = call float @dx.op.unary.f32(i32 6, float %3671)  ; FAbs(value)
  %3674 = call float @dx.op.unary.f32(i32 6, float %3672)  ; FAbs(value)
  %3675 = extractvalue %dx.types.CBufRet.f32 %3591, 0
  %3676 = call float @dx.op.binary.f32(i32 35, float %3673, float %3674)  ; FMax(a,b)
  %3677 = fsub fast float %3675, %3676
  %3678 = call float @dx.op.unary.f32(i32 7, float %3677)  ; Saturate(value)
  %3679 = fmul fast float %3678, %3650
  br label %3680

; <label>:3680                                    ; preds = %3656, %3600
  %3681 = phi float [ %3679, %3656 ], [ 0.000000e+00, %3600 ]
  %3682 = extractvalue %dx.types.CBufRet.f32 %3628, 2
  %3683 = extractvalue %dx.types.CBufRet.f32 %3652, 1
  %3684 = fadd fast float %3683, %3682
  %3685 = fcmp fast ogt float %3684, 0.000000e+00
  %3686 = extractvalue %dx.types.CBufRet.f32 %3591, 0
  br i1 %3685, label %3687, label %3710

; <label>:3687                                    ; preds = %3680
  %3688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3689 = extractvalue %dx.types.CBufRet.f32 %3688, 0
  %3690 = extractvalue %dx.types.CBufRet.f32 %3688, 1
  %3691 = fsub fast float %3634, %3689
  %3692 = fsub fast float %3635, %3690
  %3693 = fcmp fast olt float %3691, 0.000000e+00
  %3694 = fcmp fast olt float %3692, 0.000000e+00
  %3695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3696 = extractvalue %dx.types.CBufRet.f32 %3695, 0
  %3697 = extractvalue %dx.types.CBufRet.f32 %3695, 1
  %3698 = extractvalue %dx.types.CBufRet.f32 %3695, 2
  %3699 = extractvalue %dx.types.CBufRet.f32 %3695, 3
  %3700 = select i1 %3693, float %3696, float %3698
  %3701 = select i1 %3694, float %3697, float %3699
  %3702 = fmul fast float %3700, %3691
  %3703 = fmul fast float %3701, %3692
  %3704 = call float @dx.op.unary.f32(i32 6, float %3702)  ; FAbs(value)
  %3705 = call float @dx.op.unary.f32(i32 6, float %3703)  ; FAbs(value)
  %3706 = call float @dx.op.binary.f32(i32 35, float %3704, float %3705)  ; FMax(a,b)
  %3707 = fsub fast float %3686, %3706
  %3708 = call float @dx.op.unary.f32(i32 7, float %3707)  ; Saturate(value)
  %3709 = fmul fast float %3708, %3650
  br label %3710

; <label>:3710                                    ; preds = %3687, %3680
  %3711 = phi float [ %3709, %3687 ], [ 0.000000e+00, %3680 ]
  %3712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3713 = extractvalue %dx.types.CBufRet.f32 %3712, 1
  %3714 = call float @dx.op.unary.f32(i32 7, float %3713)  ; Saturate(value)
  %3715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3716 = extractvalue %dx.types.CBufRet.f32 %3715, 0
  %3717 = extractvalue %dx.types.CBufRet.f32 %3715, 1
  %3718 = fsub fast float %3619, %3716
  %3719 = fsub fast float %3623, %3717
  %3720 = fcmp fast olt float %3718, 0.000000e+00
  %3721 = fcmp fast olt float %3719, 0.000000e+00
  %3722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3723 = extractvalue %dx.types.CBufRet.f32 %3722, 0
  %3724 = extractvalue %dx.types.CBufRet.f32 %3722, 1
  %3725 = extractvalue %dx.types.CBufRet.f32 %3722, 2
  %3726 = extractvalue %dx.types.CBufRet.f32 %3722, 3
  %3727 = select i1 %3720, float %3723, float %3725
  %3728 = select i1 %3721, float %3724, float %3726
  %3729 = fmul fast float %3727, %3718
  %3730 = fmul fast float %3728, %3719
  %3731 = call float @dx.op.unary.f32(i32 6, float %3729)  ; FAbs(value)
  %3732 = call float @dx.op.unary.f32(i32 6, float %3730)  ; FAbs(value)
  %3733 = call float @dx.op.binary.f32(i32 35, float %3731, float %3732)  ; FMax(a,b)
  %3734 = fsub fast float %3686, %3733
  %3735 = call float @dx.op.unary.f32(i32 7, float %3734)  ; Saturate(value)
  %3736 = call float @dx.op.binary.f32(i32 36, float %3735, float %3714)  ; FMin(a,b)
  %3737 = fmul fast float %3736, %3650
  %3738 = fsub fast float %3711, %3737
  %3739 = fsub fast float %3681, %3711
  %3740 = fsub fast float %3739, %3737
  %3741 = call float @dx.op.binary.f32(i32 35, float %3711, float %3681)  ; FMax(a,b)
  %3742 = call float @dx.op.binary.f32(i32 35, float %3737, float %3741)  ; FMax(a,b)
  %3743 = fcmp fast olt float %3742, 1.000000e+00
  br i1 %3743, label %3744, label %4142, !dx.controlflow.hints !84

; <label>:3744                                    ; preds = %3710
  %3745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3746 = extractvalue %dx.types.CBufRet.f32 %3745, 0
  %3747 = fcmp fast une float %3746, 0.000000e+00
  br i1 %3747, label %3748, label %4142, !dx.controlflow.hints !85

; <label>:3748                                    ; preds = %3744
  %3749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3750 = extractvalue %dx.types.CBufRet.f32 %3749, 0
  %3751 = extractvalue %dx.types.CBufRet.f32 %3749, 1
  %3752 = extractvalue %dx.types.CBufRet.f32 %3749, 2
  %3753 = extractvalue %dx.types.CBufRet.f32 %3749, 3
  %3754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3755 = extractvalue %dx.types.CBufRet.f32 %3754, 0
  %3756 = extractvalue %dx.types.CBufRet.f32 %3754, 1
  %3757 = extractvalue %dx.types.CBufRet.f32 %3754, 2
  %3758 = extractvalue %dx.types.CBufRet.f32 %3754, 3
  %3759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3760 = extractvalue %dx.types.CBufRet.f32 %3759, 0
  %3761 = extractvalue %dx.types.CBufRet.f32 %3759, 1
  %3762 = extractvalue %dx.types.CBufRet.f32 %3759, 2
  %3763 = extractvalue %dx.types.CBufRet.f32 %3759, 3
  %3764 = fmul fast float %3750, %3596
  %3765 = call float @dx.op.tertiary.f32(i32 46, float %3597, float %3751, float %3764)  ; FMad(a,b,c)
  %3766 = call float @dx.op.tertiary.f32(i32 46, float %3598, float %3752, float %3765)  ; FMad(a,b,c)
  %3767 = fadd fast float %3766, %3753
  %3768 = fmul fast float %3755, %3596
  %3769 = call float @dx.op.tertiary.f32(i32 46, float %3597, float %3756, float %3768)  ; FMad(a,b,c)
  %3770 = call float @dx.op.tertiary.f32(i32 46, float %3598, float %3757, float %3769)  ; FMad(a,b,c)
  %3771 = fadd fast float %3770, %3758
  %3772 = fmul fast float %3760, %3596
  %3773 = call float @dx.op.tertiary.f32(i32 46, float %3597, float %3761, float %3772)  ; FMad(a,b,c)
  %3774 = call float @dx.op.tertiary.f32(i32 46, float %3598, float %3762, float %3773)  ; FMad(a,b,c)
  %3775 = fadd fast float %3774, %3763
  %3776 = fcmp fast oge float %3767, 1.000000e+00
  %3777 = fcmp fast oge float %3771, 1.000000e+00
  %3778 = or i1 %3776, %3777
  %3779 = fcmp fast olt float %3767, 0.000000e+00
  %3780 = fcmp fast olt float %3771, 0.000000e+00
  %3781 = or i1 %3779, %3780
  %3782 = or i1 %3778, %3781
  br i1 %3782, label %4142, label %3783, !dx.controlflow.hints !86

; <label>:3783                                    ; preds = %3748
  %3784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3785 = extractvalue %dx.types.CBufRet.f32 %3784, 0
  %3786 = extractvalue %dx.types.CBufRet.f32 %3784, 1
  %3787 = extractvalue %dx.types.CBufRet.f32 %3784, 2
  %3788 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3789 = extractvalue %dx.types.CBufRet.i32 %3788, 2
  %3790 = uitofp i32 %3789 to float
  %3791 = extractvalue %dx.types.CBufRet.i32 %3788, 3
  %3792 = uitofp i32 %3791 to float
  %3793 = extractvalue %dx.types.CBufRet.f32 %3784, 3
  %3794 = fmul fast float %3793, 2.000000e+00
  %3795 = fsub fast float %3767, %3785
  %3796 = fsub fast float %3771, %3786
  %3797 = fmul fast float %3794, %3795
  %3798 = fmul fast float %3794, %3796
  %3799 = fdiv fast float 1.000000e+00, %3579
  %3800 = fmul fast float %3798, %3799
  %3801 = call float @dx.op.unary.f32(i32 6, float %3800)  ; FAbs(value)
  %3802 = fmul fast float %3787, %3598
  %3803 = fmul fast float %3802, %3794
  %3804 = call float @dx.op.unary.f32(i32 6, float %3803)  ; FAbs(value)
  %3805 = call float @dx.op.unary.f32(i32 6, float %3797)  ; FAbs(value)
  %3806 = call float @dx.op.binary.f32(i32 35, float %3804, float %3801)  ; FMax(a,b)
  %3807 = call float @dx.op.binary.f32(i32 35, float %3805, float %3806)  ; FMax(a,b)
  %3808 = fmul fast float %3807, 2.000000e+00
  %3809 = call float @dx.op.unary.f32(i32 23, float %3808)  ; Log(value)
  %3810 = call float @dx.op.binary.f32(i32 35, float %3809, float %3790)  ; FMax(a,b)
  %3811 = call float @dx.op.unary.f32(i32 22, float %3810)  ; Frc(value)
  %3812 = fadd fast float %3811, 0xBFEA666660000000
  %3813 = fmul fast float %3812, 8.000000e+00
  %3814 = call float @dx.op.unary.f32(i32 7, float %3813)  ; Saturate(value)
  %3815 = call float @dx.op.unary.f32(i32 27, float %3810)  ; Round_ni(value)
  %3816 = fadd fast float %3815, %3814
  %3817 = call float @dx.op.binary.f32(i32 36, float %3816, float %3792)  ; FMin(a,b)
  %3818 = call float @dx.op.unary.f32(i32 27, float %3817)  ; Round_ni(value)
  %3819 = fsub fast float -0.000000e+00, %3818
  %3820 = call float @dx.op.unary.f32(i32 21, float %3819)  ; Exp(value)
  %3821 = fmul fast float %3820, %3794
  %3822 = fmul fast float %3821, %3767
  %3823 = fmul fast float %3821, %3771
  %3824 = fmul fast float %3822, 2.500000e-01
  %3825 = fmul fast float %3823, 2.500000e-01
  %3826 = fadd fast float %3824, 5.000000e-01
  %3827 = fadd fast float %3825, 5.000000e-01
  %3828 = fsub fast float %3792, %3790
  %3829 = fptoui float %3828 to i32
  %3830 = add i32 %3829, 320
  %3831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %3830)  ; CBufferLoadLegacy(handle,regIndex)
  %3832 = extractvalue %dx.types.CBufRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.CBufRet.f32 %3831, 1
  %3834 = fcmp fast une float %3817, %3792
  %3835 = fsub fast float %3767, %3832
  %3836 = fsub fast float %3771, %3833
  %3837 = call float @dx.op.unary.f32(i32 6, float %3835)  ; FAbs(value)
  %3838 = call float @dx.op.unary.f32(i32 6, float %3836)  ; FAbs(value)
  %3839 = fmul fast float %3837, %3821
  %3840 = fmul fast float %3838, %3821
  %3841 = fcmp fast olt float %3839, 1.000000e+00
  %3842 = fcmp fast olt float %3840, 1.000000e+00
  %3843 = and i1 %3841, %3842
  %3844 = or i1 %3834, %3843
  br i1 %3844, label %3845, label %4142, !dx.controlflow.hints !87

; <label>:3845                                    ; preds = %3783
  %3846 = fmul fast float %3823, 5.000000e-01
  %3847 = fmul fast float %3822, 5.000000e-01
  %3848 = fadd fast float %3846, 5.000000e-01
  %3849 = fadd fast float %3847, 5.000000e-01
  %3850 = sitofp i32 %3789 to float
  %3851 = fsub fast float %3817, %3850
  %3852 = call float @dx.op.unary.f32(i32 27, float %3851)  ; Round_ni(value)
  %3853 = call float @dx.op.unary.f32(i32 22, float %3817)  ; Frc(value)
  %3854 = call float @dx.op.unary.f32(i32 22, float %3849)  ; Frc(value)
  %3855 = call float @dx.op.unary.f32(i32 22, float %3848)  ; Frc(value)
  %3856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %40, float %3854, float %3855, float %3852, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3857 = extractvalue %dx.types.ResRet.f32 %3856, 0
  %3858 = extractvalue %dx.types.ResRet.f32 %3856, 1
  %3859 = extractvalue %dx.types.ResRet.f32 %3856, 2
  %3860 = extractvalue %dx.types.ResRet.f32 %3856, 3
  %3861 = fcmp fast ogt float %3853, 0.000000e+00
  br i1 %3861, label %3862, label %3883, !dx.controlflow.hints !88

; <label>:3862                                    ; preds = %3845
  %3863 = fadd fast float %3852, 1.000000e+00
  %3864 = call float @dx.op.unary.f32(i32 22, float %3826)  ; Frc(value)
  %3865 = call float @dx.op.unary.f32(i32 22, float %3827)  ; Frc(value)
  %3866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %40, float %3864, float %3865, float %3863, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3867 = extractvalue %dx.types.ResRet.f32 %3866, 0
  %3868 = extractvalue %dx.types.ResRet.f32 %3866, 1
  %3869 = extractvalue %dx.types.ResRet.f32 %3866, 2
  %3870 = extractvalue %dx.types.ResRet.f32 %3866, 3
  %3871 = fsub fast float %3867, %3857
  %3872 = fsub fast float %3868, %3858
  %3873 = fsub fast float %3869, %3859
  %3874 = fsub fast float %3870, %3860
  %3875 = fmul fast float %3871, %3853
  %3876 = fmul fast float %3872, %3853
  %3877 = fmul fast float %3873, %3853
  %3878 = fmul fast float %3874, %3853
  %3879 = fadd fast float %3875, %3857
  %3880 = fadd fast float %3876, %3858
  %3881 = fadd fast float %3877, %3859
  %3882 = fadd fast float %3878, %3860
  br label %3883

; <label>:3883                                    ; preds = %3862, %3845
  %3884 = phi float [ %3879, %3862 ], [ %3857, %3845 ]
  %3885 = phi float [ %3880, %3862 ], [ %3858, %3845 ]
  %3886 = phi float [ %3881, %3862 ], [ %3859, %3845 ]
  %3887 = phi float [ %3882, %3862 ], [ %3860, %3845 ]
  %3888 = fadd fast float %3884, -5.000000e-01
  %3889 = fadd fast float %3886, -5.000000e-01
  %3890 = fmul fast float %3888, 0xBFD5555560000000
  %3891 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3889, float %3890)  ; FMad(a,b,c)
  %3892 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3885, float 0.000000e+00)  ; FMad(a,b,c)
  %3893 = fadd fast float %3892, %3887
  %3894 = fmul fast float %3888, -7.500000e-01
  %3895 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3889, float %3894)  ; FMad(a,b,c)
  %3896 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3885, float 0.000000e+00)  ; FMad(a,b,c)
  %3897 = fadd fast float %3896, %3887
  %3898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3899 = extractvalue %dx.types.CBufRet.f32 %3898, 0
  %3900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3901 = extractvalue %dx.types.CBufRet.f32 %3900, 0
  %3902 = extractvalue %dx.types.CBufRet.f32 %3900, 1
  %3903 = extractvalue %dx.types.CBufRet.f32 %3900, 2
  %3904 = extractvalue %dx.types.CBufRet.f32 %3900, 3
  %3905 = fsub fast float %3901, %3891
  %3906 = fsub fast float %3902, %3893
  %3907 = fsub fast float %3903, %3895
  %3908 = fsub fast float %3904, %3897
  %3909 = fmul fast float %3905, %3899
  %3910 = fmul fast float %3906, %3899
  %3911 = fmul fast float %3907, %3899
  %3912 = fmul fast float %3908, %3899
  %3913 = fadd fast float %3909, %3891
  %3914 = fadd fast float %3910, %3893
  %3915 = fadd fast float %3911, %3895
  %3916 = fadd fast float %3912, %3897
  %3917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3918 = extractvalue %dx.types.ResRet.i32 %3917, 0
  %3919 = and i32 %3918, 536870911
  %3920 = uitofp i32 %3919 to float
  %3921 = fmul fast float %3920, %3767
  %3922 = fmul fast float %3920, %3771
  %3923 = fptoui float %3921 to i32
  %3924 = fptoui float %3922 to i32
  %3925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3926 = extractvalue %dx.types.ResRet.i32 %3925, 0
  %3927 = and i32 %3926, 31
  %3928 = lshr i32 %3923, %3927
  %3929 = lshr i32 %3924, %3927
  %3930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3931 = extractvalue %dx.types.ResRet.i32 %3930, 0
  %3932 = and i32 %3931, 31
  %3933 = shl i32 1, %3932
  %3934 = call i32 @dx.op.binary.i32(i32 40, i32 %3933, i32 4)  ; UMin(a,b)
  %3935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3936 = extractvalue %dx.types.ResRet.i32 %3935, 0
  %3937 = extractvalue %dx.types.ResRet.i32 %3935, 1
  %3938 = icmp eq i32 %3934, 0
  br i1 %3938, label %3980, label %3939

; <label>:3939                                    ; preds = %3883
  br label %3940

; <label>:3940                                    ; preds = %3968, %3939
  %3941 = phi i32 [ %3971, %3968 ], [ 0, %3939 ]
  %3942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3943 = extractvalue %dx.types.ResRet.i32 %3942, 0
  %3944 = lshr i32 %3943, 16
  %3945 = and i32 %3944, 31
  %3946 = shl i32 %3929, %3945
  %3947 = add i32 %3946, %3928
  %3948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3949 = extractvalue %dx.types.ResRet.i32 %3948, 0
  %3950 = and i32 %3949, 31
  %3951 = shl i32 %3947, %3950
  %3952 = add i32 %3951, %3941
  %3953 = shl i32 %3952, 2
  %3954 = add i32 %3953, 32
  %3955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3954, i32 undef)  ; BufferLoad(srv,index,wot)
  %3956 = extractvalue %dx.types.ResRet.i32 %3955, 0
  %3957 = icmp slt i32 %3956, 0
  %3958 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %3941
  %3959 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %3941
  %3960 = bitcast float* %3958 to i32*
  %3961 = bitcast float* %3959 to i32*
  br i1 %3957, label %3962, label %3968

; <label>:3962                                    ; preds = %3940
  %3963 = and i32 %3956, 1073741823
  %3964 = add nuw nsw i32 %3963, 20
  %3965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %3966 = extractvalue %dx.types.ResRet.i32 %3965, 0
  %3967 = extractvalue %dx.types.ResRet.i32 %3965, 1
  br label %3968

; <label>:3968                                    ; preds = %3962, %3940
  %3969 = phi i32 [ %3966, %3962 ], [ %3936, %3940 ]
  %3970 = phi i32 [ %3967, %3962 ], [ %3937, %3940 ]
  store i32 %3969, i32* %3960, align 4
  store i32 %3970, i32* %3961, align 4
  %3971 = add nuw i32 %3941, 1
  %3972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3973 = extractvalue %dx.types.CBufRet.i32 %3972, 2
  %3974 = icmp eq i32 %3973, 0
  %3975 = icmp ugt i32 %3956, -1073741825
  %3976 = and i1 %3975, %3974
  %3977 = icmp ult i32 %3971, %3934
  %3978 = and i1 %3976, %3977
  br i1 %3978, label %3940, label %3979

; <label>:3979                                    ; preds = %3968
  br label %3980

; <label>:3980                                    ; preds = %3979, %3883
  %3981 = phi i32 [ 0, %3883 ], [ %3971, %3979 ]
  %3982 = extractvalue %dx.types.CBufRet.f32 %3745, 2
  %3983 = fptoui float %3982 to i32
  %3984 = icmp eq i32 %3983, 0
  br i1 %3984, label %4036, label %3985

; <label>:3985                                    ; preds = %3980
  br label %3986

; <label>:3986                                    ; preds = %4031, %3985
  %3987 = phi i32 [ %4032, %4031 ], [ %3981, %3985 ]
  %3988 = phi i32 [ %4033, %4031 ], [ 0, %3985 ]
  %3989 = lshr i32 %3988, 2
  %3990 = and i32 %3988, 3
  %3991 = add nuw nsw i32 %3989, 83
  %3992 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 %3991)  ; CBufferLoadLegacy(handle,regIndex)
  %3993 = extractvalue %dx.types.CBufRet.i32 %3992, 0
  %3994 = extractvalue %dx.types.CBufRet.i32 %3992, 1
  %3995 = extractvalue %dx.types.CBufRet.i32 %3992, 2
  %3996 = extractvalue %dx.types.CBufRet.i32 %3992, 3
  %3997 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 0
  store i32 %3993, i32* %3997, align 4
  %3998 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 1
  store i32 %3994, i32* %3998, align 4
  %3999 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 2
  store i32 %3995, i32* %3999, align 4
  %4000 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 3
  store i32 %3996, i32* %4000, align 4
  %4001 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 %3990
  %4002 = load i32, i32* %4001, align 4, !tbaa !89, !noalias !93
  %4003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4004 = extractvalue %dx.types.ResRet.i32 %4003, 0
  %4005 = lshr i32 %4004, 16
  %4006 = and i32 %4005, 31
  %4007 = shl i32 %3929, %4006
  %4008 = add i32 %4007, %3928
  %4009 = shl i32 %4008, 2
  %4010 = add i32 %4009, %4002
  %4011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4010, i32 undef)  ; BufferLoad(srv,index,wot)
  %4012 = extractvalue %dx.types.ResRet.i32 %4011, 0
  %4013 = icmp eq i32 %4012, 0
  br i1 %4013, label %4031, label %4014

; <label>:4014                                    ; preds = %3986
  %4015 = icmp slt i32 %4012, 0
  %4016 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %3987
  %4017 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %3987
  %4018 = bitcast float* %4016 to i32*
  %4019 = bitcast float* %4017 to i32*
  br i1 %4015, label %4020, label %4027

; <label>:4020                                    ; preds = %4014
  %4021 = and i32 %4012, 1073741823
  %4022 = add i32 %4002, 20
  %4023 = add i32 %4022, %4021
  %4024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4023, i32 undef)  ; BufferLoad(srv,index,wot)
  %4025 = extractvalue %dx.types.ResRet.i32 %4024, 0
  %4026 = extractvalue %dx.types.ResRet.i32 %4024, 1
  br label %4027

; <label>:4027                                    ; preds = %4020, %4014
  %4028 = phi i32 [ %4025, %4020 ], [ %3936, %4014 ]
  %4029 = phi i32 [ %4026, %4020 ], [ %3937, %4014 ]
  store i32 %4028, i32* %4018, align 4
  store i32 %4029, i32* %4019, align 4
  %4030 = add i32 %3987, 1
  br label %4031

; <label>:4031                                    ; preds = %4027, %3986
  %4032 = phi i32 [ %3987, %3986 ], [ %4030, %4027 ]
  %4033 = add nuw i32 %3988, 1
  %4034 = icmp eq i32 %4033, %3983
  br i1 %4034, label %4035, label %3986

; <label>:4035                                    ; preds = %4031
  br label %4036

; <label>:4036                                    ; preds = %4035, %3980
  %4037 = phi i32 [ %3981, %3980 ], [ %4032, %4035 ]
  %4038 = icmp eq i32 %4037, 1
  %4039 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 0
  %4040 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 0
  br i1 %4038, label %4041, label %4044

; <label>:4041                                    ; preds = %4036
  %4042 = load float, float* %4039, align 4
  %4043 = load float, float* %4040, align 4
  br label %4071

; <label>:4044                                    ; preds = %4036
  %4045 = load float, float* %4039, align 4
  %4046 = load float, float* %4040, align 4
  %4047 = fdiv fast float 1.000000e+00, %4046
  %4048 = fsub fast float %4045, %4047
  %4049 = icmp ugt i32 %4037, 1
  br i1 %4049, label %4050, label %4066

; <label>:4050                                    ; preds = %4044
  br label %4051

; <label>:4051                                    ; preds = %4051, %4050
  %4052 = phi float [ %4061, %4051 ], [ %4048, %4050 ]
  %4053 = phi float [ %4062, %4051 ], [ %4045, %4050 ]
  %4054 = phi i32 [ %4063, %4051 ], [ 1, %4050 ]
  %4055 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %4054
  %4056 = load float, float* %4055, align 4
  %4057 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %4054
  %4058 = load float, float* %4057, align 4
  %4059 = fdiv fast float 1.000000e+00, %4058
  %4060 = fsub fast float %4056, %4059
  %4061 = call float @dx.op.binary.f32(i32 36, float %4052, float %4060)  ; FMin(a,b)
  %4062 = call float @dx.op.binary.f32(i32 35, float %4053, float %4056)  ; FMax(a,b)
  %4063 = add nuw i32 %4054, 1
  %4064 = icmp eq i32 %4063, %4037
  br i1 %4064, label %4065, label %4051

; <label>:4065                                    ; preds = %4051
  br label %4066

; <label>:4066                                    ; preds = %4065, %4044
  %4067 = phi float [ %4048, %4044 ], [ %4061, %4065 ]
  %4068 = phi float [ %4045, %4044 ], [ %4062, %4065 ]
  %4069 = fsub fast float %4068, %4067
  %4070 = fdiv fast float 1.000000e+00, %4069
  br label %4071

; <label>:4071                                    ; preds = %4066, %4041
  %4072 = phi float [ %4042, %4041 ], [ %4068, %4066 ]
  %4073 = phi float [ %4043, %4041 ], [ %4070, %4066 ]
  %4074 = fadd fast float %3775, %4072
  %4075 = fmul fast float %4074, %4073
  %4076 = call float @dx.op.unary.f32(i32 7, float %4075)  ; Saturate(value)
  %4077 = fmul fast float %4076, 2.000000e+00
  %4078 = fsub fast float 1.000000e+00, %4077
  %4079 = fmul fast float %3913, %3913
  %4080 = fsub fast float %3914, %4079
  %4081 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4080)  ; FMax(a,b)
  %4082 = fdiv fast float 1.000000e+00, %4081
  %4083 = fmul fast float %3914, %3913
  %4084 = fsub fast float %3915, %4083
  %4085 = fsub fast float %4078, %3913
  %4086 = fmul fast float %4078, %4078
  %4087 = fsub fast float %4086, %3914
  %4088 = fmul fast float %4082, %4084
  %4089 = fmul fast float %4088, %4085
  %4090 = fsub fast float %4087, %4089
  %4091 = fmul fast float %3914, %3914
  %4092 = fsub fast float %3916, %4091
  %4093 = fmul fast float %4084, %4084
  %4094 = fmul fast float %4093, %4082
  %4095 = fsub fast float %4092, %4094
  %4096 = fdiv fast float %4090, %4095
  %4097 = fmul fast float %4096, %4084
  %4098 = fsub fast float %4085, %4097
  %4099 = fmul fast float %4098, %4082
  %4100 = fmul fast float %4099, %3913
  %4101 = fsub fast float 1.000000e+00, %4100
  %4102 = fmul fast float %4096, %3914
  %4103 = fsub fast float %4101, %4102
  %4104 = fmul fast float %4099, %4099
  %4105 = fmul fast float %4096, 4.000000e+00
  %4106 = fmul fast float %4105, %4103
  %4107 = fsub fast float %4104, %4106
  %4108 = call float @dx.op.unary.f32(i32 24, float %4107)  ; Sqrt(value)
  %4109 = fcmp fast oge float %4099, 0.000000e+00
  %4110 = fsub fast float -0.000000e+00, %4108
  %4111 = select i1 %4109, float %4110, float %4108
  %4112 = fsub fast float %4111, %4099
  %4113 = fdiv fast float %4112, %4096
  %4114 = fdiv fast float %4103, %4112
  %4115 = fmul fast float %4113, 5.000000e-01
  %4116 = fmul fast float %4114, 2.000000e+00
  %4117 = select i1 %4109, float %4115, float %4116
  %4118 = select i1 %4109, float %4116, float %4115
  %4119 = call float @dx.op.binary.f32(i32 35, float %4117, float %4118)  ; FMax(a,b)
  %4120 = call float @dx.op.binary.f32(i32 36, float %4117, float %4118)  ; FMin(a,b)
  %4121 = fcmp fast ogt float %4078, %4119
  %4122 = fsub fast float %4078, %4120
  %4123 = fsub fast float %4078, %4119
  %4124 = fsub fast float %4119, %4120
  %4125 = select i1 %4121, float %4123, float %4124
  %4126 = fmul float %4122, %4125
  %4127 = select i1 %4121, float %4120, float %4078
  %4128 = fcmp fast ogt float %4078, %4120
  %4129 = fmul fast float %4127, %4119
  %4130 = fadd fast float %4127, %4119
  %4131 = fmul fast float %4130, %3913
  %4132 = fadd fast float %4129, %3914
  %4133 = fsub fast float %4132, %4131
  %4134 = fdiv fast float %4133, %4126
  %4135 = select i1 %4128, float %4134, float 0.000000e+00
  %4136 = fsub fast float 1.000000e+00, %4135
  %4137 = select i1 %4121, float %4136, float %4135
  %4138 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  %4139 = extractvalue %dx.types.CBufRet.f32 %3898, 3
  %4140 = fmul fast float %4139, %4138
  %4141 = fsub fast float 1.000000e+00, %4140
  br label %4142

; <label>:4142                                    ; preds = %4071, %3783, %3748, %3744, %3710
  %4143 = phi float [ 1.000000e+00, %3710 ], [ %4141, %4071 ], [ 1.000000e+00, %3748 ], [ 1.000000e+00, %3783 ], [ 1.000000e+00, %3744 ]
  %4144 = fcmp fast ogt float %3740, 0.000000e+00
  br i1 %4144, label %4145, label %4307, !dx.controlflow.hints !102

; <label>:4145                                    ; preds = %4142
  %4146 = fadd fast float %3653, %3627
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 2
  %4149 = extractvalue %dx.types.CBufRet.f32 %4147, 3
  %4150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.f32 %4150, 2
  %4152 = call float @dx.op.binary.f32(i32 35, float %4146, float 0.000000e+00)  ; FMax(a,b)
  %4153 = fadd fast float %4152, 0x3F10000000000000
  %4154 = fcmp fast oeq float %4151, 0.000000e+00
  br i1 %4154, label %4155, label %4222

; <label>:4155                                    ; preds = %4145
  %4156 = extractvalue %dx.types.CBufRet.f32 %4147, 1
  %4157 = extractvalue %dx.types.CBufRet.f32 %4147, 0
  %4158 = fmul fast float %4157, %3642
  %4159 = fmul fast float %4156, %3643
  %4160 = fadd fast float %4158, 5.000000e-01
  %4161 = call float @dx.op.unary.f32(i32 27, float %4160)  ; Round_ni(value)
  %4162 = fadd fast float %4159, 5.000000e-01
  %4163 = call float @dx.op.unary.f32(i32 27, float %4162)  ; Round_ni(value)
  %4164 = fsub fast float %4160, %4161
  %4165 = fsub fast float %4162, %4163
  %4166 = fadd fast float %4161, -5.000000e-01
  %4167 = fadd fast float %4163, -5.000000e-01
  %4168 = fmul fast float %4164, 2.000000e+00
  %4169 = fsub fast float 3.000000e+00, %4168
  %4170 = fadd fast float %4168, 1.000000e+00
  %4171 = fsub fast float 2.000000e+00, %4164
  %4172 = bitcast float %4169 to i32
  %4173 = sub nsw i32 2129859010, %4172
  %4174 = bitcast i32 %4173 to float
  %4175 = fmul fast float %4174, %4171
  %4176 = fadd fast float %4175, -1.000000e+00
  %4177 = bitcast float %4170 to i32
  %4178 = sub nsw i32 2129859010, %4177
  %4179 = bitcast i32 %4178 to float
  %4180 = fmul fast float %4179, %4164
  %4181 = fadd fast float %4180, 1.000000e+00
  %4182 = fmul fast float %4165, 2.000000e+00
  %4183 = fsub fast float 3.000000e+00, %4182
  %4184 = fadd fast float %4182, 1.000000e+00
  %4185 = fsub fast float 2.000000e+00, %4165
  %4186 = bitcast float %4183 to i32
  %4187 = sub nsw i32 2129859010, %4186
  %4188 = bitcast i32 %4187 to float
  %4189 = fmul fast float %4188, %4185
  %4190 = fadd fast float %4189, -1.000000e+00
  %4191 = bitcast float %4184 to i32
  %4192 = sub nsw i32 2129859010, %4191
  %4193 = bitcast i32 %4192 to float
  %4194 = fmul fast float %4193, %4165
  %4195 = fadd fast float %4194, 1.000000e+00
  %4196 = fadd fast float %4176, %4166
  %4197 = fmul fast float %4196, %4148
  %4198 = fadd fast float %4190, %4167
  %4199 = fmul fast float %4198, %4149
  %4200 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %43, float %4197, float %4199, float undef, float undef, i32 0, i32 0, i32 undef, float %4153)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = fmul fast float %4201, %4169
  %4203 = fadd fast float %4181, %4166
  %4204 = fmul fast float %4203, %4148
  %4205 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %43, float %4204, float %4199, float undef, float undef, i32 0, i32 0, i32 undef, float %4153)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4206 = extractvalue %dx.types.ResRet.f32 %4205, 0
  %4207 = fmul fast float %4206, %4170
  %4208 = fadd fast float %4195, %4167
  %4209 = fmul fast float %4208, %4149
  %4210 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %43, float %4197, float %4209, float undef, float undef, i32 0, i32 0, i32 undef, float %4153)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4211 = extractvalue %dx.types.ResRet.f32 %4210, 0
  %4212 = fmul fast float %4211, %4169
  %4213 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %43, float %4204, float %4209, float undef, float undef, i32 0, i32 0, i32 undef, float %4153)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 0
  %4215 = fmul fast float %4214, %4170
  %4216 = fadd fast float %4215, %4212
  %4217 = fmul fast float %4216, %4184
  %4218 = fadd fast float %4207, %4202
  %4219 = fmul fast float %4218, %4183
  %4220 = fadd fast float %4219, %4217
  %4221 = fmul fast float %4220, 6.250000e-02
  br label %4307

; <label>:4222                                    ; preds = %4145
  %4223 = fmul fast float %239, 0x401921FB60000000
  %4224 = call float @dx.op.unary.f32(i32 13, float %4223)  ; Sin(value)
  %4225 = call float @dx.op.unary.f32(i32 12, float %4223)  ; Cos(value)
  %4226 = fsub fast float -0.000000e+00, %4224
  br label %4227

; <label>:4227                                    ; preds = %4276, %4222
  %4228 = phi float [ 0.000000e+00, %4222 ], [ %4271, %4276 ]
  %4229 = phi float [ 0.000000e+00, %4222 ], [ %4273, %4276 ]
  %4230 = phi i32 [ 0, %4222 ], [ %4277, %4276 ]
  %4231 = mul i32 %4230, 2
  %4232 = add i32 0, %4231
  %4233 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4232
  %4234 = load float, float* %4233, align 4
  %4235 = mul i32 %4230, 2
  %4236 = add i32 1, %4235
  %4237 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4236
  %4238 = load float, float* %4237, align 4
  %4239 = fmul fast float %4234, %4225
  %4240 = call float @dx.op.tertiary.f32(i32 46, float %4238, float %4226, float %4239)  ; FMad(a,b,c)
  %4241 = fmul fast float %4234, %4224
  %4242 = call float @dx.op.tertiary.f32(i32 46, float %4238, float %4225, float %4241)  ; FMad(a,b,c)
  %4243 = fmul fast float %4240, %4151
  %4244 = fmul fast float %4242, %4151
  %4245 = fadd fast float %4243, %3642
  %4246 = fadd fast float %4244, %3643
  %4247 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %42, float %4245, float %4246, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4248 = extractvalue %dx.types.ResRet.f32 %4247, 0
  %4249 = extractvalue %dx.types.ResRet.f32 %4247, 1
  %4250 = extractvalue %dx.types.ResRet.f32 %4247, 2
  %4251 = extractvalue %dx.types.ResRet.f32 %4247, 3
  %4252 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 0
  store float %4248, float* %4252, align 4
  %4253 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 1
  store float %4249, float* %4253, align 4
  %4254 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 2
  store float %4250, float* %4254, align 4
  %4255 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 3
  store float %4251, float* %4255, align 4
  %4256 = fsub fast float %4248, %4153
  %4257 = fcmp fast olt float %4256, 0.000000e+00
  %4258 = select i1 %4257, float 0.000000e+00, float 1.000000e+00
  %4259 = fadd fast float %4258, %4228
  %4260 = fmul fast float %4258, %4256
  %4261 = fadd fast float %4260, %4229
  br label %4262

; <label>:4262                                    ; preds = %4262, %4227
  %4263 = phi i32 [ 1, %4227 ], [ %4274, %4262 ]
  %4264 = phi float [ %4261, %4227 ], [ %4273, %4262 ]
  %4265 = phi float [ %4259, %4227 ], [ %4271, %4262 ]
  %4266 = getelementptr [4 x float], [4 x float]* %73, i32 0, i32 %4263
  %4267 = load float, float* %4266, align 4, !tbaa !103, !noalias !93
  %4268 = fsub fast float %4267, %4153
  %4269 = fcmp fast olt float %4268, 0.000000e+00
  %4270 = select i1 %4269, float 0.000000e+00, float 1.000000e+00
  %4271 = fadd fast float %4270, %4265
  %4272 = fmul fast float %4270, %4268
  %4273 = fadd fast float %4272, %4264
  %4274 = add nuw nsw i32 %4263, 1
  %4275 = icmp eq i32 %4274, 4
  br i1 %4275, label %4276, label %4262, !llvm.loop !105

; <label>:4276                                    ; preds = %4262
  %4277 = add nuw nsw i32 %4230, 1
  %4278 = icmp eq i32 %4277, 8
  br i1 %4278, label %4279, label %4227, !llvm.loop !106

; <label>:4279                                    ; preds = %4276
  %4280 = fdiv fast float 1.000000e+00, %4271
  %4281 = fmul fast float %4280, %4273
  %4282 = fdiv fast float 1.000000e+00, %4153
  %4283 = fmul fast float %4281, %4282
  %4284 = call float @dx.op.unary.f32(i32 7, float %4283)  ; Saturate(value)
  %4285 = call float @dx.op.binary.f32(i32 35, float %4284, float 0.000000e+00)  ; FMax(a,b)
  %4286 = fmul fast float %4271, 3.125000e-02
  %4287 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4288 = fmul fast float %4287, 2.000000e+00
  %4289 = fadd fast float %4288, -1.000000e+00
  %4290 = fcmp fast ogt float %4289, 0.000000e+00
  %4291 = fcmp fast olt float %4289, 0.000000e+00
  %4292 = zext i1 %4290 to i32
  %4293 = zext i1 %4291 to i32
  %4294 = sub nsw i32 %4292, %4293
  %4295 = sitofp i32 %4294 to float
  %4296 = fmul fast float %4295, %4289
  %4297 = fsub fast float 1.000000e+00, %4296
  %4298 = fmul fast float %4297, %4297
  %4299 = fmul fast float %4298, %4297
  %4300 = fsub fast float %4297, %4299
  %4301 = fmul fast float %4300, %4285
  %4302 = fsub fast float 1.000000e+00, %4299
  %4303 = fsub fast float %4302, %4301
  %4304 = fmul fast float %4295, 5.000000e-01
  %4305 = fmul fast float %4304, %4303
  %4306 = fsub fast float 5.000000e-01, %4305
  br label %4307

; <label>:4307                                    ; preds = %4279, %4155, %4142
  %4308 = phi float [ 1.000000e+00, %4142 ], [ %4221, %4155 ], [ %4306, %4279 ]
  %4309 = fcmp fast ogt float %3738, 0.000000e+00
  br i1 %4309, label %4310, label %4474, !dx.controlflow.hints !107

; <label>:4310                                    ; preds = %4307
  %4311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4312 = extractvalue %dx.types.CBufRet.f32 %4311, 1
  %4313 = fadd fast float %4312, %3627
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 2
  %4316 = extractvalue %dx.types.CBufRet.f32 %4314, 3
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 1
  %4319 = call float @dx.op.binary.f32(i32 35, float %4313, float 0.000000e+00)  ; FMax(a,b)
  %4320 = fadd fast float %4319, 0x3F10000000000000
  %4321 = fcmp fast oeq float %4318, 0.000000e+00
  br i1 %4321, label %4322, label %4389

; <label>:4322                                    ; preds = %4310
  %4323 = extractvalue %dx.types.CBufRet.f32 %4314, 1
  %4324 = extractvalue %dx.types.CBufRet.f32 %4314, 0
  %4325 = fmul fast float %4324, %3634
  %4326 = fmul fast float %4323, %3635
  %4327 = fadd fast float %4325, 5.000000e-01
  %4328 = call float @dx.op.unary.f32(i32 27, float %4327)  ; Round_ni(value)
  %4329 = fadd fast float %4326, 5.000000e-01
  %4330 = call float @dx.op.unary.f32(i32 27, float %4329)  ; Round_ni(value)
  %4331 = fsub fast float %4327, %4328
  %4332 = fsub fast float %4329, %4330
  %4333 = fadd fast float %4328, -5.000000e-01
  %4334 = fadd fast float %4330, -5.000000e-01
  %4335 = fmul fast float %4331, 2.000000e+00
  %4336 = fsub fast float 3.000000e+00, %4335
  %4337 = fadd fast float %4335, 1.000000e+00
  %4338 = fsub fast float 2.000000e+00, %4331
  %4339 = bitcast float %4336 to i32
  %4340 = sub nsw i32 2129859010, %4339
  %4341 = bitcast i32 %4340 to float
  %4342 = fmul fast float %4341, %4338
  %4343 = fadd fast float %4342, -1.000000e+00
  %4344 = bitcast float %4337 to i32
  %4345 = sub nsw i32 2129859010, %4344
  %4346 = bitcast i32 %4345 to float
  %4347 = fmul fast float %4346, %4331
  %4348 = fadd fast float %4347, 1.000000e+00
  %4349 = fmul fast float %4332, 2.000000e+00
  %4350 = fsub fast float 3.000000e+00, %4349
  %4351 = fadd fast float %4349, 1.000000e+00
  %4352 = fsub fast float 2.000000e+00, %4332
  %4353 = bitcast float %4350 to i32
  %4354 = sub nsw i32 2129859010, %4353
  %4355 = bitcast i32 %4354 to float
  %4356 = fmul fast float %4355, %4352
  %4357 = fadd fast float %4356, -1.000000e+00
  %4358 = bitcast float %4351 to i32
  %4359 = sub nsw i32 2129859010, %4358
  %4360 = bitcast i32 %4359 to float
  %4361 = fmul fast float %4360, %4332
  %4362 = fadd fast float %4361, 1.000000e+00
  %4363 = fadd fast float %4343, %4333
  %4364 = fmul fast float %4363, %4315
  %4365 = fadd fast float %4357, %4334
  %4366 = fmul fast float %4365, %4316
  %4367 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %43, float %4364, float %4366, float undef, float undef, i32 0, i32 0, i32 undef, float %4320)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4368 = extractvalue %dx.types.ResRet.f32 %4367, 0
  %4369 = fmul fast float %4368, %4336
  %4370 = fadd fast float %4348, %4333
  %4371 = fmul fast float %4370, %4315
  %4372 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %43, float %4371, float %4366, float undef, float undef, i32 0, i32 0, i32 undef, float %4320)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4373 = extractvalue %dx.types.ResRet.f32 %4372, 0
  %4374 = fmul fast float %4373, %4337
  %4375 = fadd fast float %4362, %4334
  %4376 = fmul fast float %4375, %4316
  %4377 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %43, float %4364, float %4376, float undef, float undef, i32 0, i32 0, i32 undef, float %4320)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4378 = extractvalue %dx.types.ResRet.f32 %4377, 0
  %4379 = fmul fast float %4378, %4336
  %4380 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %43, float %4371, float %4376, float undef, float undef, i32 0, i32 0, i32 undef, float %4320)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4381 = extractvalue %dx.types.ResRet.f32 %4380, 0
  %4382 = fmul fast float %4381, %4337
  %4383 = fadd fast float %4382, %4379
  %4384 = fmul fast float %4383, %4351
  %4385 = fadd fast float %4374, %4369
  %4386 = fmul fast float %4385, %4350
  %4387 = fadd fast float %4386, %4384
  %4388 = fmul fast float %4387, 6.250000e-02
  br label %4474

; <label>:4389                                    ; preds = %4310
  %4390 = fmul fast float %239, 0x401921FB60000000
  %4391 = call float @dx.op.unary.f32(i32 13, float %4390)  ; Sin(value)
  %4392 = call float @dx.op.unary.f32(i32 12, float %4390)  ; Cos(value)
  %4393 = fsub fast float -0.000000e+00, %4391
  br label %4394

; <label>:4394                                    ; preds = %4443, %4389
  %4395 = phi float [ 0.000000e+00, %4389 ], [ %4438, %4443 ]
  %4396 = phi float [ 0.000000e+00, %4389 ], [ %4440, %4443 ]
  %4397 = phi i32 [ 0, %4389 ], [ %4444, %4443 ]
  %4398 = mul i32 %4397, 2
  %4399 = add i32 0, %4398
  %4400 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4399
  %4401 = load float, float* %4400, align 4
  %4402 = mul i32 %4397, 2
  %4403 = add i32 1, %4402
  %4404 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4403
  %4405 = load float, float* %4404, align 4
  %4406 = fmul fast float %4401, %4392
  %4407 = call float @dx.op.tertiary.f32(i32 46, float %4405, float %4393, float %4406)  ; FMad(a,b,c)
  %4408 = fmul fast float %4401, %4391
  %4409 = call float @dx.op.tertiary.f32(i32 46, float %4405, float %4392, float %4408)  ; FMad(a,b,c)
  %4410 = fmul fast float %4407, %4318
  %4411 = fmul fast float %4409, %4318
  %4412 = fadd fast float %4410, %3634
  %4413 = fadd fast float %4411, %3635
  %4414 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %42, float %4412, float %4413, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4415 = extractvalue %dx.types.ResRet.f32 %4414, 0
  %4416 = extractvalue %dx.types.ResRet.f32 %4414, 1
  %4417 = extractvalue %dx.types.ResRet.f32 %4414, 2
  %4418 = extractvalue %dx.types.ResRet.f32 %4414, 3
  %4419 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 0
  store float %4415, float* %4419, align 4
  %4420 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 1
  store float %4416, float* %4420, align 4
  %4421 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 2
  store float %4417, float* %4421, align 4
  %4422 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 3
  store float %4418, float* %4422, align 4
  %4423 = fsub fast float %4415, %4320
  %4424 = fcmp fast olt float %4423, 0.000000e+00
  %4425 = select i1 %4424, float 0.000000e+00, float 1.000000e+00
  %4426 = fadd fast float %4425, %4395
  %4427 = fmul fast float %4425, %4423
  %4428 = fadd fast float %4427, %4396
  br label %4429

; <label>:4429                                    ; preds = %4429, %4394
  %4430 = phi i32 [ 1, %4394 ], [ %4441, %4429 ]
  %4431 = phi float [ %4428, %4394 ], [ %4440, %4429 ]
  %4432 = phi float [ %4426, %4394 ], [ %4438, %4429 ]
  %4433 = getelementptr [4 x float], [4 x float]* %72, i32 0, i32 %4430
  %4434 = load float, float* %4433, align 4, !tbaa !103, !noalias !93
  %4435 = fsub fast float %4434, %4320
  %4436 = fcmp fast olt float %4435, 0.000000e+00
  %4437 = select i1 %4436, float 0.000000e+00, float 1.000000e+00
  %4438 = fadd fast float %4437, %4432
  %4439 = fmul fast float %4437, %4435
  %4440 = fadd fast float %4439, %4431
  %4441 = add nuw nsw i32 %4430, 1
  %4442 = icmp eq i32 %4441, 4
  br i1 %4442, label %4443, label %4429, !llvm.loop !105

; <label>:4443                                    ; preds = %4429
  %4444 = add nuw nsw i32 %4397, 1
  %4445 = icmp eq i32 %4444, 8
  br i1 %4445, label %4446, label %4394, !llvm.loop !106

; <label>:4446                                    ; preds = %4443
  %4447 = fdiv fast float 1.000000e+00, %4438
  %4448 = fmul fast float %4447, %4440
  %4449 = fdiv fast float 1.000000e+00, %4320
  %4450 = fmul fast float %4448, %4449
  %4451 = call float @dx.op.unary.f32(i32 7, float %4450)  ; Saturate(value)
  %4452 = call float @dx.op.binary.f32(i32 35, float %4451, float 0.000000e+00)  ; FMax(a,b)
  %4453 = fmul fast float %4438, 3.125000e-02
  %4454 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4455 = fmul fast float %4454, 2.000000e+00
  %4456 = fadd fast float %4455, -1.000000e+00
  %4457 = fcmp fast ogt float %4456, 0.000000e+00
  %4458 = fcmp fast olt float %4456, 0.000000e+00
  %4459 = zext i1 %4457 to i32
  %4460 = zext i1 %4458 to i32
  %4461 = sub nsw i32 %4459, %4460
  %4462 = sitofp i32 %4461 to float
  %4463 = fmul fast float %4462, %4456
  %4464 = fsub fast float 1.000000e+00, %4463
  %4465 = fmul fast float %4464, %4464
  %4466 = fmul fast float %4465, %4464
  %4467 = fsub fast float %4464, %4466
  %4468 = fmul fast float %4467, %4452
  %4469 = fsub fast float 1.000000e+00, %4466
  %4470 = fsub fast float %4469, %4468
  %4471 = fmul fast float %4462, 5.000000e-01
  %4472 = fmul fast float %4471, %4470
  %4473 = fsub fast float 5.000000e-01, %4472
  br label %4474

; <label>:4474                                    ; preds = %4446, %4322, %4307
  %4475 = phi float [ 1.000000e+00, %4307 ], [ %4388, %4322 ], [ %4473, %4446 ]
  %4476 = fcmp fast ogt float %3737, 0.000000e+00
  br i1 %4476, label %4477, label %4641, !dx.controlflow.hints !108

; <label>:4477                                    ; preds = %4474
  %4478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.f32 %4478, 0
  %4480 = fadd fast float %4479, %3627
  %4481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.f32 %4481, 2
  %4483 = extractvalue %dx.types.CBufRet.f32 %4481, 3
  %4484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4485 = extractvalue %dx.types.CBufRet.f32 %4484, 0
  %4486 = call float @dx.op.binary.f32(i32 35, float %4480, float 0.000000e+00)  ; FMax(a,b)
  %4487 = fadd fast float %4486, 0x3F10000000000000
  %4488 = fcmp fast oeq float %4485, 0.000000e+00
  br i1 %4488, label %4489, label %4556

; <label>:4489                                    ; preds = %4477
  %4490 = extractvalue %dx.types.CBufRet.f32 %4481, 1
  %4491 = extractvalue %dx.types.CBufRet.f32 %4481, 0
  %4492 = fmul fast float %4491, %3619
  %4493 = fmul fast float %4490, %3623
  %4494 = fadd fast float %4492, 5.000000e-01
  %4495 = call float @dx.op.unary.f32(i32 27, float %4494)  ; Round_ni(value)
  %4496 = fadd fast float %4493, 5.000000e-01
  %4497 = call float @dx.op.unary.f32(i32 27, float %4496)  ; Round_ni(value)
  %4498 = fsub fast float %4494, %4495
  %4499 = fsub fast float %4496, %4497
  %4500 = fadd fast float %4495, -5.000000e-01
  %4501 = fadd fast float %4497, -5.000000e-01
  %4502 = fmul fast float %4498, 2.000000e+00
  %4503 = fsub fast float 3.000000e+00, %4502
  %4504 = fadd fast float %4502, 1.000000e+00
  %4505 = fsub fast float 2.000000e+00, %4498
  %4506 = bitcast float %4503 to i32
  %4507 = sub nsw i32 2129859010, %4506
  %4508 = bitcast i32 %4507 to float
  %4509 = fmul fast float %4508, %4505
  %4510 = fadd fast float %4509, -1.000000e+00
  %4511 = bitcast float %4504 to i32
  %4512 = sub nsw i32 2129859010, %4511
  %4513 = bitcast i32 %4512 to float
  %4514 = fmul fast float %4513, %4498
  %4515 = fadd fast float %4514, 1.000000e+00
  %4516 = fmul fast float %4499, 2.000000e+00
  %4517 = fsub fast float 3.000000e+00, %4516
  %4518 = fadd fast float %4516, 1.000000e+00
  %4519 = fsub fast float 2.000000e+00, %4499
  %4520 = bitcast float %4517 to i32
  %4521 = sub nsw i32 2129859010, %4520
  %4522 = bitcast i32 %4521 to float
  %4523 = fmul fast float %4522, %4519
  %4524 = fadd fast float %4523, -1.000000e+00
  %4525 = bitcast float %4518 to i32
  %4526 = sub nsw i32 2129859010, %4525
  %4527 = bitcast i32 %4526 to float
  %4528 = fmul fast float %4527, %4499
  %4529 = fadd fast float %4528, 1.000000e+00
  %4530 = fadd fast float %4510, %4500
  %4531 = fmul fast float %4530, %4482
  %4532 = fadd fast float %4524, %4501
  %4533 = fmul fast float %4532, %4483
  %4534 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %43, float %4531, float %4533, float undef, float undef, i32 0, i32 0, i32 undef, float %4487)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4535 = extractvalue %dx.types.ResRet.f32 %4534, 0
  %4536 = fmul fast float %4535, %4503
  %4537 = fadd fast float %4515, %4500
  %4538 = fmul fast float %4537, %4482
  %4539 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %43, float %4538, float %4533, float undef, float undef, i32 0, i32 0, i32 undef, float %4487)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4540 = extractvalue %dx.types.ResRet.f32 %4539, 0
  %4541 = fmul fast float %4540, %4504
  %4542 = fadd fast float %4529, %4501
  %4543 = fmul fast float %4542, %4483
  %4544 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %43, float %4531, float %4543, float undef, float undef, i32 0, i32 0, i32 undef, float %4487)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4545 = extractvalue %dx.types.ResRet.f32 %4544, 0
  %4546 = fmul fast float %4545, %4503
  %4547 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %43, float %4538, float %4543, float undef, float undef, i32 0, i32 0, i32 undef, float %4487)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4548 = extractvalue %dx.types.ResRet.f32 %4547, 0
  %4549 = fmul fast float %4548, %4504
  %4550 = fadd fast float %4549, %4546
  %4551 = fmul fast float %4550, %4518
  %4552 = fadd fast float %4541, %4536
  %4553 = fmul fast float %4552, %4517
  %4554 = fadd fast float %4553, %4551
  %4555 = fmul fast float %4554, 6.250000e-02
  br label %4641

; <label>:4556                                    ; preds = %4477
  %4557 = fmul fast float %239, 0x401921FB60000000
  %4558 = call float @dx.op.unary.f32(i32 13, float %4557)  ; Sin(value)
  %4559 = call float @dx.op.unary.f32(i32 12, float %4557)  ; Cos(value)
  %4560 = fsub fast float -0.000000e+00, %4558
  br label %4561

; <label>:4561                                    ; preds = %4610, %4556
  %4562 = phi float [ 0.000000e+00, %4556 ], [ %4605, %4610 ]
  %4563 = phi float [ 0.000000e+00, %4556 ], [ %4607, %4610 ]
  %4564 = phi i32 [ 0, %4556 ], [ %4611, %4610 ]
  %4565 = mul i32 %4564, 2
  %4566 = add i32 0, %4565
  %4567 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4566
  %4568 = load float, float* %4567, align 4
  %4569 = mul i32 %4564, 2
  %4570 = add i32 1, %4569
  %4571 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4570
  %4572 = load float, float* %4571, align 4
  %4573 = fmul fast float %4568, %4559
  %4574 = call float @dx.op.tertiary.f32(i32 46, float %4572, float %4560, float %4573)  ; FMad(a,b,c)
  %4575 = fmul fast float %4568, %4558
  %4576 = call float @dx.op.tertiary.f32(i32 46, float %4572, float %4559, float %4575)  ; FMad(a,b,c)
  %4577 = fmul fast float %4574, %4485
  %4578 = fmul fast float %4576, %4485
  %4579 = fadd fast float %4577, %3619
  %4580 = fadd fast float %4578, %3623
  %4581 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %42, float %4579, float %4580, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4582 = extractvalue %dx.types.ResRet.f32 %4581, 0
  %4583 = extractvalue %dx.types.ResRet.f32 %4581, 1
  %4584 = extractvalue %dx.types.ResRet.f32 %4581, 2
  %4585 = extractvalue %dx.types.ResRet.f32 %4581, 3
  %4586 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 0
  store float %4582, float* %4586, align 4
  %4587 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 1
  store float %4583, float* %4587, align 4
  %4588 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 2
  store float %4584, float* %4588, align 4
  %4589 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 3
  store float %4585, float* %4589, align 4
  %4590 = fsub fast float %4582, %4487
  %4591 = fcmp fast olt float %4590, 0.000000e+00
  %4592 = select i1 %4591, float 0.000000e+00, float 1.000000e+00
  %4593 = fadd fast float %4592, %4562
  %4594 = fmul fast float %4592, %4590
  %4595 = fadd fast float %4594, %4563
  br label %4596

; <label>:4596                                    ; preds = %4596, %4561
  %4597 = phi i32 [ 1, %4561 ], [ %4608, %4596 ]
  %4598 = phi float [ %4595, %4561 ], [ %4607, %4596 ]
  %4599 = phi float [ %4593, %4561 ], [ %4605, %4596 ]
  %4600 = getelementptr [4 x float], [4 x float]* %71, i32 0, i32 %4597
  %4601 = load float, float* %4600, align 4, !tbaa !103, !noalias !93
  %4602 = fsub fast float %4601, %4487
  %4603 = fcmp fast olt float %4602, 0.000000e+00
  %4604 = select i1 %4603, float 0.000000e+00, float 1.000000e+00
  %4605 = fadd fast float %4604, %4599
  %4606 = fmul fast float %4604, %4602
  %4607 = fadd fast float %4606, %4598
  %4608 = add nuw nsw i32 %4597, 1
  %4609 = icmp eq i32 %4608, 4
  br i1 %4609, label %4610, label %4596, !llvm.loop !105

; <label>:4610                                    ; preds = %4596
  %4611 = add nuw nsw i32 %4564, 1
  %4612 = icmp eq i32 %4611, 8
  br i1 %4612, label %4613, label %4561, !llvm.loop !106

; <label>:4613                                    ; preds = %4610
  %4614 = fdiv fast float 1.000000e+00, %4605
  %4615 = fmul fast float %4614, %4607
  %4616 = fdiv fast float 1.000000e+00, %4487
  %4617 = fmul fast float %4615, %4616
  %4618 = call float @dx.op.unary.f32(i32 7, float %4617)  ; Saturate(value)
  %4619 = call float @dx.op.binary.f32(i32 35, float %4618, float 0.000000e+00)  ; FMax(a,b)
  %4620 = fmul fast float %4605, 3.125000e-02
  %4621 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4622 = fmul fast float %4621, 2.000000e+00
  %4623 = fadd fast float %4622, -1.000000e+00
  %4624 = fcmp fast ogt float %4623, 0.000000e+00
  %4625 = fcmp fast olt float %4623, 0.000000e+00
  %4626 = zext i1 %4624 to i32
  %4627 = zext i1 %4625 to i32
  %4628 = sub nsw i32 %4626, %4627
  %4629 = sitofp i32 %4628 to float
  %4630 = fmul fast float %4629, %4623
  %4631 = fsub fast float 1.000000e+00, %4630
  %4632 = fmul fast float %4631, %4631
  %4633 = fmul fast float %4632, %4631
  %4634 = fsub fast float %4631, %4633
  %4635 = fmul fast float %4634, %4619
  %4636 = fsub fast float 1.000000e+00, %4633
  %4637 = fsub fast float %4636, %4635
  %4638 = fmul fast float %4629, 5.000000e-01
  %4639 = fmul fast float %4638, %4637
  %4640 = fsub fast float 5.000000e-01, %4639
  br label %4641

; <label>:4641                                    ; preds = %4613, %4489, %4474
  %4642 = phi float [ 1.000000e+00, %4474 ], [ %4555, %4489 ], [ %4640, %4613 ]
  %4643 = fsub fast float %4308, %4143
  %4644 = fmul fast float %4643, %3681
  %4645 = fadd fast float %4644, %4143
  %4646 = fsub fast float %4475, %4645
  %4647 = fmul fast float %4646, %3711
  %4648 = fadd fast float %4647, %4645
  %4649 = fsub fast float %4642, %4648
  %4650 = fmul fast float %4649, %3737
  %4651 = fadd fast float %4650, %4648
  %4652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4653 = extractvalue %dx.types.CBufRet.f32 %4652, 2
  %4654 = fcmp fast ogt float %4653, 0.000000e+00
  br i1 %4654, label %4655, label %4695, !dx.controlflow.hints !109

; <label>:4655                                    ; preds = %4641
  %4656 = fcmp fast ugt float %4653, 0.000000e+00
  br i1 %4656, label %4657, label %4692

; <label>:4657                                    ; preds = %4655
  %4658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4659 = extractvalue %dx.types.CBufRet.f32 %4658, 0
  %4660 = extractvalue %dx.types.CBufRet.f32 %4658, 1
  %4661 = extractvalue %dx.types.CBufRet.f32 %4658, 2
  %4662 = extractvalue %dx.types.CBufRet.f32 %4658, 3
  %4663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4664 = extractvalue %dx.types.CBufRet.f32 %4663, 0
  %4665 = extractvalue %dx.types.CBufRet.f32 %4663, 1
  %4666 = extractvalue %dx.types.CBufRet.f32 %4663, 2
  %4667 = extractvalue %dx.types.CBufRet.f32 %4663, 3
  %4668 = extractvalue %dx.types.CBufRet.f32 %4652, 0
  %4669 = extractvalue %dx.types.CBufRet.f32 %4652, 1
  %4670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4671 = extractvalue %dx.types.CBufRet.f32 %4670, 0
  %4672 = extractvalue %dx.types.CBufRet.f32 %4670, 1
  %4673 = extractvalue %dx.types.CBufRet.f32 %4670, 2
  %4674 = fadd fast float %4671, %3596
  %4675 = fadd fast float %4672, %3597
  %4676 = fadd fast float %4673, %3598
  %4677 = fmul fast float %4674, %4659
  %4678 = call float @dx.op.tertiary.f32(i32 46, float %4660, float %4675, float %4677)  ; FMad(a,b,c)
  %4679 = call float @dx.op.tertiary.f32(i32 46, float %4661, float %4676, float %4678)  ; FMad(a,b,c)
  %4680 = fadd fast float %4679, %4662
  %4681 = fmul fast float %4674, %4664
  %4682 = call float @dx.op.tertiary.f32(i32 46, float %4665, float %4675, float %4681)  ; FMad(a,b,c)
  %4683 = call float @dx.op.tertiary.f32(i32 46, float %4666, float %4676, float %4682)  ; FMad(a,b,c)
  %4684 = fadd fast float %4683, %4667
  %4685 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %38, float %4680, float %4684, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4686 = extractvalue %dx.types.ResRet.f32 %4685, 0
  %4687 = fmul fast float %4686, %4669
  %4688 = fadd fast float %4687, %4668
  %4689 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4690 = fmul fast float %4689, %4653
  %4691 = fsub fast float 1.000000e+00, %4690
  br label %4692

; <label>:4692                                    ; preds = %4657, %4655
  %4693 = phi float [ %4691, %4657 ], [ 1.000000e+00, %4655 ]
  %4694 = fmul fast float %4693, %4651
  br label %4695

; <label>:4695                                    ; preds = %4692, %4641, %3576
  %4696 = phi float [ 1.000000e+00, %3576 ], [ %4694, %4692 ], [ %4651, %4641 ]
  %4697 = call float @dx.op.binary.f32(i32 36, float %4696, float %4696)  ; FMin(a,b)
  %4698 = call float @dx.op.binary.f32(i32 36, float %4696, float %4697)  ; FMin(a,b)
  %4699 = fcmp fast ogt float %4698, 0.000000e+00
  br i1 %4699, label %4700, label %4866, !dx.controlflow.hints !110

; <label>:4700                                    ; preds = %4695
  %4701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4702 = extractvalue %dx.types.CBufRet.f32 %4701, 0
  %4703 = extractvalue %dx.types.CBufRet.f32 %4701, 1
  %4704 = extractvalue %dx.types.CBufRet.f32 %4701, 2
  %4705 = extractvalue %dx.types.CBufRet.f32 %4701, 3
  %4706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4707 = extractvalue %dx.types.CBufRet.f32 %4706, 0
  %4708 = extractvalue %dx.types.CBufRet.f32 %4706, 1
  %4709 = extractvalue %dx.types.CBufRet.f32 %4706, 2
  %4710 = extractvalue %dx.types.CBufRet.f32 %4706, 3
  %4711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4712 = extractvalue %dx.types.CBufRet.f32 %4711, 0
  %4713 = extractvalue %dx.types.CBufRet.f32 %4711, 1
  %4714 = extractvalue %dx.types.CBufRet.f32 %4711, 2
  %4715 = extractvalue %dx.types.CBufRet.f32 %4711, 3
  %4716 = fmul fast float %4702, %3596
  %4717 = call float @dx.op.tertiary.f32(i32 46, float %3597, float %4703, float %4716)  ; FMad(a,b,c)
  %4718 = call float @dx.op.tertiary.f32(i32 46, float %3598, float %4704, float %4717)  ; FMad(a,b,c)
  %4719 = fadd fast float %4718, %4705
  %4720 = fmul fast float %4707, %3596
  %4721 = call float @dx.op.tertiary.f32(i32 46, float %3597, float %4708, float %4720)  ; FMad(a,b,c)
  %4722 = call float @dx.op.tertiary.f32(i32 46, float %3598, float %4709, float %4721)  ; FMad(a,b,c)
  %4723 = fadd fast float %4722, %4710
  %4724 = fmul fast float %4712, %3596
  %4725 = call float @dx.op.tertiary.f32(i32 46, float %3597, float %4713, float %4724)  ; FMad(a,b,c)
  %4726 = call float @dx.op.tertiary.f32(i32 46, float %3598, float %4714, float %4725)  ; FMad(a,b,c)
  %4727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4728 = extractvalue %dx.types.CBufRet.f32 %4727, 0
  %4729 = extractvalue %dx.types.CBufRet.f32 %4727, 1
  %4730 = extractvalue %dx.types.CBufRet.f32 %4727, 3
  %4731 = fmul fast float %4730, %4719
  %4732 = fmul fast float %4730, %4723
  %4733 = fadd fast float %4731, %4728
  %4734 = fadd fast float %4732, %4729
  %4735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4736 = extractvalue %dx.types.CBufRet.f32 %4735, 0
  %4737 = extractvalue %dx.types.CBufRet.f32 %4735, 1
  %4738 = fsub fast float %4733, %4736
  %4739 = fsub fast float %4734, %4737
  %4740 = fcmp fast olt float %4738, 0.000000e+00
  %4741 = fcmp fast olt float %4739, 0.000000e+00
  %4742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4743 = extractvalue %dx.types.CBufRet.f32 %4742, 0
  %4744 = extractvalue %dx.types.CBufRet.f32 %4742, 1
  %4745 = extractvalue %dx.types.CBufRet.f32 %4742, 2
  %4746 = extractvalue %dx.types.CBufRet.f32 %4742, 3
  %4747 = select i1 %4740, float %4743, float %4745
  %4748 = select i1 %4741, float %4744, float %4746
  %4749 = fmul fast float %4747, %4738
  %4750 = fmul fast float %4748, %4739
  %4751 = call float @dx.op.unary.f32(i32 6, float %4749)  ; FAbs(value)
  %4752 = call float @dx.op.unary.f32(i32 6, float %4750)  ; FAbs(value)
  %4753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.f32 %4753, 0
  %4755 = call float @dx.op.binary.f32(i32 35, float %4751, float %4752)  ; FMax(a,b)
  %4756 = fsub fast float %4754, %4755
  %4757 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4758 = fcmp fast ogt float %4757, 0.000000e+00
  br i1 %4758, label %4759, label %4800, !dx.controlflow.hints !111

; <label>:4759                                    ; preds = %4700
  %4760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %41, float %4733, float %4734, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4761 = extractvalue %dx.types.ResRet.f32 %4760, 1
  %4762 = fcmp fast ogt float %4761, 0.000000e+00
  br i1 %4762, label %4763, label %4795

; <label>:4763                                    ; preds = %4759
  %4764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %41, float %4733, float %4734, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4765 = extractvalue %dx.types.ResRet.f32 %4764, 0
  %4766 = extractvalue %dx.types.ResRet.f32 %4764, 1
  %4767 = extractvalue %dx.types.ResRet.f32 %4764, 2
  %4768 = extractvalue %dx.types.ResRet.f32 %4764, 3
  %4769 = fsub fast float 1.000000e+00, %4715
  %4770 = fsub fast float %4769, %4726
  %4771 = fmul fast float %4770, 0x400921FB60000000
  %4772 = fadd fast float %4771, 0x3FF921FB60000000
  %4773 = call float @dx.op.unary.f32(i32 13, float %4772)  ; Sin(value)
  %4774 = fadd fast float %4773, -1.000000e+00
  %4775 = fmul fast float %4774, 0x3FD45F3060000000
  %4776 = fmul fast float %4770, 0x401921FB60000000
  %4777 = fadd fast float %4776, 0x400921FB60000000
  %4778 = call float @dx.op.unary.f32(i32 13, float %4777)  ; Sin(value)
  %4779 = fadd fast float %4778, 0x3E7777A5C0000000
  %4780 = fmul fast float %4779, 0x3FC45F3060000000
  %4781 = fmul fast float %4770, 0x4022D97C80000000
  %4782 = fadd fast float %4781, 0x4012D97C80000000
  %4783 = call float @dx.op.unary.f32(i32 13, float %4782)  ; Sin(value)
  %4784 = fadd fast float %4783, 1.000000e+00
  %4785 = fmul fast float %4784, 0x3FBB2995E0000000
  %4786 = fmul fast float %4770, 0x402921FB60000000
  %4787 = fadd fast float %4786, 0x401921FB60000000
  %4788 = call float @dx.op.unary.f32(i32 13, float %4787)  ; Sin(value)
  %4789 = fadd fast float %4788, 0xBE8777A5C0000000
  %4790 = fmul fast float %4789, 0x3FB45F3060000000
  %4791 = call float @dx.op.dot4.f32(i32 56, float %4765, float %4766, float %4767, float %4768, float %4775, float %4780, float %4785, float %4790)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4792 = fmul fast float %4791, 0xBFF7154760000000
  %4793 = call float @dx.op.unary.f32(i32 21, float %4792)  ; Exp(value)
  %4794 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  br label %4795

; <label>:4795                                    ; preds = %4763, %4759
  %4796 = phi float [ %4794, %4763 ], [ 1.000000e+00, %4759 ]
  %4797 = fadd fast float %4796, -1.000000e+00
  %4798 = fmul fast float %4797, %4757
  %4799 = fadd fast float %4798, 1.000000e+00
  br label %4800

; <label>:4800                                    ; preds = %4795, %4700
  %4801 = phi float [ %4799, %4795 ], [ 1.000000e+00, %4700 ]
  %4802 = fmul fast float %4801, %4696
  %4803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4804 = extractvalue %dx.types.CBufRet.f32 %4803, 0
  %4805 = extractvalue %dx.types.CBufRet.f32 %4803, 1
  %4806 = extractvalue %dx.types.CBufRet.f32 %4803, 2
  %4807 = fadd fast float %4804, %136
  %4808 = fadd fast float %4805, %137
  %4809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4810 = extractvalue %dx.types.CBufRet.f32 %4809, 1
  %4811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4812 = extractvalue %dx.types.CBufRet.f32 %4811, 0
  %4813 = extractvalue %dx.types.CBufRet.f32 %4811, 1
  %4814 = extractvalue %dx.types.CBufRet.f32 %4811, 2
  %4815 = fsub fast float -0.000000e+00, %4807
  %4816 = fsub fast float -0.000000e+00, %4808
  %4817 = fsub fast float -0.000000e+00, %138
  %4818 = fsub fast float %4817, %4806
  %4819 = fadd fast float %4818, %4810
  %4820 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4815, float %4816, float %4819)  ; Dot3(ax,ay,az,bx,by,bz)
  %4821 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4812, float %4813, float %4814)  ; Dot3(ax,ay,az,bx,by,bz)
  %4822 = fdiv fast float 1.000000e+00, %4821
  %4823 = fmul fast float %4822, %4820
  %4824 = fmul fast float %4812, %4823
  %4825 = fmul fast float %4813, %4823
  %4826 = fadd fast float %4824, %4807
  %4827 = fadd fast float %4825, %4808
  %4828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4829 = extractvalue %dx.types.CBufRet.f32 %4828, 0
  %4830 = extractvalue %dx.types.CBufRet.f32 %4828, 1
  %4831 = fsub fast float %4826, %4829
  %4832 = fsub fast float %4827, %4830
  %4833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4834 = extractvalue %dx.types.CBufRet.f32 %4833, 2
  %4835 = extractvalue %dx.types.CBufRet.f32 %4833, 3
  %4836 = fmul fast float %4831, %4834
  %4837 = fmul fast float %4832, %4835
  %4838 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4839 = extractvalue %dx.types.CBufRet.i32 %4838, 3
  %4840 = icmp eq i32 %4839, 0
  br i1 %4840, label %4846, label %4841

; <label>:4841                                    ; preds = %4800
  %4842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %40, float %4836, float %4837, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4843 = extractvalue %dx.types.ResRet.f32 %4842, 0
  %4844 = extractvalue %dx.types.ResRet.f32 %4842, 1
  %4845 = extractvalue %dx.types.ResRet.f32 %4842, 2
  br label %4851

; <label>:4846                                    ; preds = %4800
  %4847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %41, float %4836, float %4837, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4848 = extractvalue %dx.types.ResRet.f32 %4847, 0
  %4849 = extractvalue %dx.types.ResRet.f32 %4847, 1
  %4850 = extractvalue %dx.types.ResRet.f32 %4847, 2
  br label %4851

; <label>:4851                                    ; preds = %4846, %4841
  %4852 = phi float [ %4843, %4841 ], [ %4848, %4846 ]
  %4853 = phi float [ %4844, %4841 ], [ %4849, %4846 ]
  %4854 = phi float [ %4845, %4841 ], [ %4850, %4846 ]
  %4855 = extractvalue %dx.types.CBufRet.f32 %4809, 2
  %4856 = fmul fast float %4855, %4852
  %4857 = extractvalue %dx.types.CBufRet.f32 %4809, 0
  %4858 = fsub fast float %4823, %4857
  %4859 = fsub fast float %4858, %4856
  %4860 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4859)  ; FMax(a,b)
  %4861 = fmul fast float %4860, %4853
  %4862 = call float @dx.op.binary.f32(i32 36, float %4854, float %4861)  ; FMin(a,b)
  %4863 = fmul fast float %4862, 0xBFF7154760000000
  %4864 = call float @dx.op.unary.f32(i32 21, float %4863)  ; Exp(value)
  %4865 = fmul fast float %4802, %4864
  br label %4866

; <label>:4866                                    ; preds = %4851, %4695
  %4867 = phi float [ %4865, %4851 ], [ %4696, %4695 ]
  %4868 = call float @dx.op.binary.f32(i32 36, float %4867, float %4867)  ; FMin(a,b)
  %4869 = call float @dx.op.binary.f32(i32 36, float %4867, float %4868)  ; FMin(a,b)
  %4870 = fcmp fast ogt float %4869, 0.000000e+00
  br i1 %4870, label %4871, label %5054, !dx.controlflow.hints !112

; <label>:4871                                    ; preds = %4866
  %4872 = fmul fast float %4867, %3588
  %4873 = fmul fast float %4867, %3589
  %4874 = fmul fast float %4867, %3590
  %4875 = fsub fast float %3577, %155
  %4876 = fsub fast float %3578, %156
  %4877 = fsub fast float %3579, %157
  %4878 = call float @dx.op.dot3.f32(i32 55, float %4875, float %4876, float %4877, float %4875, float %4876, float %4877)  ; Dot3(ax,ay,az,bx,by,bz)
  %4879 = call float @dx.op.unary.f32(i32 25, float %4878)  ; Rsqrt(value)
  %4880 = fmul fast float %4879, %4875
  %4881 = fmul fast float %4879, %4876
  %4882 = fmul fast float %4879, %4877
  %4883 = call float @dx.op.dot3.f32(i32 55, float %3577, float %3578, float %3579, float %2737, float %2738, float %2739)  ; Dot3(ax,ay,az,bx,by,bz)
  %4884 = call float @dx.op.dot3.f32(i32 55, float %2372, float %2373, float %2374, float %4880, float %4881, float %4882)  ; Dot3(ax,ay,az,bx,by,bz)
  %4885 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4886 = fmul fast float %4885, %4885
  %4887 = fmul fast float %4886, %2769
  %4888 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4889 = fmul fast float %4888, %4885
  %4890 = call float @dx.op.dot3.f32(i32 55, float %2737, float %2738, float %2739, float %4880, float %4881, float %4882)  ; Dot3(ax,ay,az,bx,by,bz)
  %4891 = fmul fast float %4890, %4890
  %4892 = call float @dx.op.unary.f32(i32 6, float %4883)  ; FAbs(value)
  %4893 = fsub fast float 1.000000e+00, %2762
  %4894 = fmul fast float %2744, %2744
  %4895 = fmul fast float %4894, %4893
  %4896 = fadd fast float %4895, %2762
  %4897 = bitcast float %4896 to i32
  %4898 = ashr i32 %4897, 1
  %4899 = add nsw i32 %4898, 532487669
  %4900 = bitcast i32 %4899 to float
  %4901 = fadd fast float %4900, %2744
  %4902 = fmul fast float %2762, %4891
  %4903 = fsub fast float 1.000000e+00, %4891
  %4904 = fadd fast float %4903, %4902
  %4905 = fmul fast float %4892, %4892
  %4906 = fmul fast float %4905, %4893
  %4907 = fadd fast float %4906, %2762
  %4908 = bitcast float %4907 to i32
  %4909 = ashr i32 %4908, 1
  %4910 = add nsw i32 %4909, 532487669
  %4911 = bitcast i32 %4910 to float
  %4912 = fadd fast float %4911, %4892
  %4913 = fmul fast float %4904, %4904
  %4914 = fmul fast float %4913, %4901
  %4915 = fmul fast float %4914, %4912
  %4916 = fdiv fast float 0x3FF0A00000000000, %4915
  %4917 = fmul fast float %4916, %2762
  %4918 = fmul fast float %2869, 0x3FF9999980000000
  %4919 = fsub fast float 5.000000e+00, %4918
  %4920 = call float @dx.op.unary.f32(i32 6, float %4884)  ; FAbs(value)
  %4921 = fsub fast float 1.000000e+00, %4920
  %4922 = fmul fast float %2869, 0x41D9660740000000
  %4923 = fadd fast float %4922, 0xC1EFBF8940000000
  %4924 = bitcast float %4921 to i32
  %4925 = sitofp i32 %4924 to float
  %4926 = fmul fast float %4925, %4919
  %4927 = fadd fast float %4923, %4926
  %4928 = fptosi float %4927 to i32
  %4929 = bitcast i32 %4928 to float
  %4930 = fsub fast float 1.000000e+00, %2731
  %4931 = fsub fast float 1.000000e+00, %2732
  %4932 = fsub fast float 1.000000e+00, %2742
  %4933 = fmul fast float %4929, %4930
  %4934 = fmul fast float %4929, %4931
  %4935 = fmul fast float %4929, %4932
  %4936 = fadd fast float %4933, %2731
  %4937 = fadd fast float %4934, %2732
  %4938 = fadd fast float %4935, %2742
  br i1 %2892, label %4939, label %4962

; <label>:4939                                    ; preds = %4871
  %4940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %41, float %1450, float %4920, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4941 = extractvalue %dx.types.ResRet.f32 %4940, 0
  %4942 = extractvalue %dx.types.ResRet.f32 %4940, 1
  %4943 = extractvalue %dx.types.ResRet.f32 %4940, 2
  %4944 = fadd fast float %4941, -5.000000e-01
  %4945 = fadd fast float %4942, -5.000000e-01
  %4946 = fadd fast float %4943, -5.000000e-01
  %4947 = fmul fast float %2731, 4.000000e+00
  %4948 = fmul fast float %4947, %4930
  %4949 = fmul fast float %4948, %4944
  %4950 = fmul fast float %2732, 4.000000e+00
  %4951 = fmul fast float %4950, %4931
  %4952 = fmul fast float %4951, %4945
  %4953 = fmul fast float %2742, 4.000000e+00
  %4954 = fmul fast float %4953, %4932
  %4955 = fmul fast float %4954, %4946
  %4956 = fadd fast float %4949, %4936
  %4957 = fadd fast float %4952, %4937
  %4958 = fadd fast float %4955, %4938
  %4959 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  %4960 = call float @dx.op.unary.f32(i32 7, float %4957)  ; Saturate(value)
  %4961 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  br label %4962

; <label>:4962                                    ; preds = %4939, %4871
  %4963 = phi float [ %4959, %4939 ], [ %4936, %4871 ]
  %4964 = phi float [ %4960, %4939 ], [ %4937, %4871 ]
  %4965 = phi float [ %4961, %4939 ], [ %4938, %4871 ]
  %4966 = fmul fast float %4883, 9.843750e-01
  %4967 = fadd fast float %4966, 7.812500e-03
  %4968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %41, float %4967, float %2873, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4969 = extractvalue %dx.types.ResRet.f32 %4968, 0
  %4970 = extractvalue %dx.types.ResRet.f32 %4968, 1
  %4971 = extractvalue %dx.types.ResRet.f32 %4968, 2
  %4972 = extractvalue %dx.types.ResRet.f32 %4968, 3
  %4973 = fsub fast float %4971, %4969
  %4974 = fsub fast float %4972, %4970
  %4975 = fmul fast float %4973, %2879
  %4976 = fmul fast float %4974, %2879
  %4977 = fadd fast float %4975, %4969
  %4978 = fadd fast float %4976, %4970
  %4979 = fmul fast float %4977, %2731
  %4980 = fmul fast float %4977, %2732
  %4981 = fmul fast float %4977, %2742
  %4982 = fadd fast float %4979, %4978
  %4983 = fadd fast float %4980, %4978
  %4984 = fadd fast float %4981, %4978
  br i1 %2892, label %4985, label %5008

; <label>:4985                                    ; preds = %4962
  %4986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %41, float %1450, float %4883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4987 = extractvalue %dx.types.ResRet.f32 %4986, 0
  %4988 = extractvalue %dx.types.ResRet.f32 %4986, 1
  %4989 = extractvalue %dx.types.ResRet.f32 %4986, 2
  %4990 = fadd fast float %4987, -5.000000e-01
  %4991 = fadd fast float %4988, -5.000000e-01
  %4992 = fadd fast float %4989, -5.000000e-01
  %4993 = fmul fast float %2731, 4.000000e+00
  %4994 = fmul fast float %4993, %4930
  %4995 = fmul fast float %4994, %4990
  %4996 = fmul fast float %2732, 4.000000e+00
  %4997 = fmul fast float %4996, %4931
  %4998 = fmul fast float %4997, %4991
  %4999 = fmul fast float %2742, 4.000000e+00
  %5000 = fmul fast float %4999, %4932
  %5001 = fmul fast float %5000, %4992
  %5002 = fadd fast float %4995, %4982
  %5003 = fadd fast float %4998, %4983
  %5004 = fadd fast float %5001, %4984
  %5005 = call float @dx.op.unary.f32(i32 7, float %5002)  ; Saturate(value)
  %5006 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5007 = call float @dx.op.unary.f32(i32 7, float %5004)  ; Saturate(value)
  br label %5008

; <label>:5008                                    ; preds = %4985, %4962
  %5009 = phi float [ %5005, %4985 ], [ %4982, %4962 ]
  %5010 = phi float [ %5006, %4985 ], [ %4983, %4962 ]
  %5011 = phi float [ %5007, %4985 ], [ %4984, %4962 ]
  %5012 = call float @dx.op.binary.f32(i32 35, float %5010, float %5011)  ; FMax(a,b)
  %5013 = call float @dx.op.binary.f32(i32 35, float %5009, float %5012)  ; FMax(a,b)
  %5014 = fsub fast float 1.000000e+00, %5013
  %5015 = fmul fast float %4963, %4917
  %5016 = fmul fast float %4964, %4917
  %5017 = fmul fast float %4965, %4917
  %5018 = fsub fast float 1.000000e+00, %4884
  %5019 = bitcast float %5018 to i32
  %5020 = sitofp i32 %5019 to float
  %5021 = fmul fast float %5020, 5.000000e+00
  %5022 = fadd fast float %5021, 0xC1EFBF8940000000
  %5023 = fptosi float %5022 to i32
  %5024 = bitcast i32 %5023 to float
  %5025 = fmul fast float %5024, %1449
  %5026 = fmul fast float %5014, %5025
  %5027 = fmul fast float %5026, %3512
  %5028 = fmul fast float %5026, %3513
  %5029 = fmul fast float %5026, %3514
  %5030 = fadd fast float %5027, %5015
  %5031 = fadd fast float %5028, %5016
  %5032 = fadd fast float %5029, %5017
  %5033 = fmul fast float %4889, %4872
  %5034 = fmul fast float %5033, %5014
  %5035 = fmul fast float %4889, %4873
  %5036 = fmul fast float %5035, %5014
  %5037 = fmul fast float %4889, %4874
  %5038 = fmul fast float %5037, %5014
  %5039 = fmul fast float %5033, %5030
  %5040 = fmul fast float %5035, %5031
  %5041 = fmul fast float %5037, %5032
  %5042 = fadd fast float %5034, %3496
  %5043 = fmul fast float %5042, %1496
  %5044 = fadd fast float %5036, %3497
  %5045 = fmul fast float %5044, %1496
  %5046 = fadd fast float %5038, %3498
  %5047 = fmul fast float %5046, %1496
  %5048 = fadd fast float %5039, %3565
  %5049 = fmul fast float %5048, %1496
  %5050 = fadd fast float %5040, %3568
  %5051 = fmul fast float %5050, %1496
  %5052 = fadd fast float %5041, %3571
  %5053 = fmul fast float %5052, %1496
  br label %5054

; <label>:5054                                    ; preds = %5008, %4866, %3492
  %5055 = phi float [ %3566, %3492 ], [ %3566, %4866 ], [ %5049, %5008 ]
  %5056 = phi float [ %3569, %3492 ], [ %3569, %4866 ], [ %5051, %5008 ]
  %5057 = phi float [ %3572, %3492 ], [ %3572, %4866 ], [ %5053, %5008 ]
  %5058 = phi float [ %3561, %3492 ], [ %3561, %4866 ], [ %5043, %5008 ]
  %5059 = phi float [ %3562, %3492 ], [ %3562, %4866 ], [ %5045, %5008 ]
  %5060 = phi float [ %3563, %3492 ], [ %3563, %4866 ], [ %5047, %5008 ]
  %5061 = fmul fast float %1496, %1496
  %5062 = fmul fast float %5061, %3538
  %5063 = fsub fast float -0.000000e+00, %5062
  %5064 = fmul fast float %5061, %3539
  %5065 = fsub fast float -0.000000e+00, %5064
  %5066 = fmul fast float %5061, %3540
  %5067 = fsub fast float -0.000000e+00, %5066
  %5068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5069 = extractvalue %dx.types.CBufRet.f32 %5068, 0
  %5070 = fmul fast float %5069, %3544
  %5071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5072 = extractvalue %dx.types.CBufRet.f32 %5071, 3
  %5073 = fsub fast float 1.000000e+00, %1445
  %5074 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5075 = fadd fast float %5060, %1444
  %5076 = fmul fast float %5075, %1445
  %5077 = fmul fast float %5074, %5072
  %5078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %5079 = extractvalue %dx.types.ResRet.i32 %5078, 3
  %5080 = bitcast i32 %5079 to float
  %5081 = fsub fast float %5063, %5080
  %5082 = fsub fast float %5065, %5080
  %5083 = fsub fast float %5067, %5080
  %5084 = fmul fast float %5081, %169
  %5085 = fmul fast float %5082, %169
  %5086 = fmul fast float %5083, %169
  %5087 = fadd fast float %5084, %5080
  %5088 = fadd fast float %5085, %5080
  %5089 = fadd fast float %5086, %5080
  %5090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5091 = extractvalue %dx.types.CBufRet.f32 %5090, 3
  %5092 = fmul fast float %5058, %2734
  %5093 = fmul fast float %5059, %2735
  %5094 = fmul fast float %5060, %2736
  %5095 = fcmp fast ogt float %68, %189
  %5096 = and i1 %5095, %1538
  %5097 = or i1 %1617, %5096
  %5098 = icmp eq i32 %1537, 2
  %5099 = fcmp fast ole float %68, %189
  %5100 = and i1 %5099, %5098
  %5101 = or i1 %5100, %5097
  br i1 %5096, label %5102, label %5359

; <label>:5102                                    ; preds = %5054
  %5103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5104 = extractvalue %dx.types.CBufRet.f32 %5103, 2
  %5105 = extractvalue %dx.types.CBufRet.f32 %5103, 3
  %5106 = fmul fast float %5104, %80
  %5107 = fmul fast float %5105, %81
  %5108 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  %5109 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5110 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %41, float %5108, float %5109, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5111 = extractvalue %dx.types.ResRet.f32 %5110, 0
  %5112 = extractvalue %dx.types.ResRet.f32 %5110, 1
  %5113 = extractvalue %dx.types.ResRet.f32 %5110, 2
  %5114 = extractvalue %dx.types.ResRet.f32 %5110, 3
  %5115 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %41, float %5108, float %5109, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5116 = extractvalue %dx.types.ResRet.f32 %5115, 0
  %5117 = extractvalue %dx.types.ResRet.f32 %5115, 1
  %5118 = extractvalue %dx.types.ResRet.f32 %5115, 2
  %5119 = extractvalue %dx.types.ResRet.f32 %5115, 3
  %5120 = call float @dx.op.binary.f32(i32 35, float %5112, float %5113)  ; FMax(a,b)
  %5121 = call float @dx.op.binary.f32(i32 35, float %5111, float %5120)  ; FMax(a,b)
  %5122 = call float @dx.op.binary.f32(i32 35, float %5121, float %5114)  ; FMax(a,b)
  %5123 = call float @dx.op.binary.f32(i32 36, float %5117, float %5118)  ; FMin(a,b)
  %5124 = call float @dx.op.binary.f32(i32 36, float %5116, float %5123)  ; FMin(a,b)
  %5125 = call float @dx.op.binary.f32(i32 36, float %5124, float %5119)  ; FMin(a,b)
  %5126 = fmul fast float %5122, 2.550000e+02
  %5127 = fadd fast float %5126, 0x3F70101020000000
  %5128 = fptoui float %5127 to i32
  %5129 = fmul fast float %5125, 2.550000e+02
  %5130 = fadd fast float %5129, 0x3F70101020000000
  %5131 = fptoui float %5130 to i32
  %5132 = icmp ult i32 %5128, %5131
  br i1 %5132, label %5133, label %5301

; <label>:5133                                    ; preds = %5102
  %5134 = fcmp fast ogt float %67, 9.843750e-01
  %5135 = fadd fast float %68, -4.000000e+00
  %5136 = select i1 %5134, float -4.000000e+00, float %5135
  %5137 = call float @dx.op.binary.f32(i32 35, float %5136, float 0.000000e+00)  ; FMax(a,b)
  %5138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.f32 %5138, 0
  %5140 = fadd fast float %5139, %5137
  %5141 = extractvalue %dx.types.CBufRet.f32 %5138, 2
  %5142 = fmul fast float %5140, %5141
  %5143 = call float @dx.op.unary.f32(i32 23, float %5142)  ; Log(value)
  %5144 = extractvalue %dx.types.CBufRet.f32 %5138, 3
  %5145 = fmul fast float %5144, %5143
  %5146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5147 = extractvalue %dx.types.CBufRet.f32 %5146, 2
  %5148 = fmul fast float %5145, %5147
  %5149 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5150 = uitofp i32 %5128 to float
  %5151 = uitofp i32 %5131 to float
  %5152 = fadd fast float %5150, 5.000000e-01
  %5153 = fadd fast float %5151, 5.000000e-01
  %5154 = fmul fast float %5147, %5152
  %5155 = fmul fast float %5147, %5153
  %5156 = fadd fast float %5154, 0x3F0FFB4800000000
  %5157 = fadd fast float %5155, 0xBF0FFB4800000000
  %5158 = call float @dx.op.binary.f32(i32 35, float %5149, float %5156)  ; FMax(a,b)
  %5159 = call float @dx.op.binary.f32(i32 36, float %5158, float %5157)  ; FMin(a,b)
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5162 = extractvalue %dx.types.CBufRet.f32 %5160, 2
  %5163 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5164 = fmul fast float %5161, %5159
  %5165 = fadd fast float %5163, %5164
  %5166 = fadd fast float %5163, %5162
  %5167 = fsub fast float %5161, %5162
  %5168 = fadd fast float %5167, %5163
  %5169 = call float @dx.op.binary.f32(i32 35, float %5165, float %5166)  ; FMax(a,b)
  %5170 = call float @dx.op.binary.f32(i32 36, float %5169, float %5168)  ; FMin(a,b)
  %5171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %5108, float %5109, float %5170, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5172 = extractvalue %dx.types.ResRet.f32 %5171, 0
  %5173 = extractvalue %dx.types.ResRet.f32 %5171, 1
  %5174 = extractvalue %dx.types.ResRet.f32 %5171, 2
  %5175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5176 = extractvalue %dx.types.CBufRet.i32 %5175, 0
  %5177 = extractvalue %dx.types.CBufRet.i32 %5175, 1
  %5178 = uitofp i32 %5176 to float
  %5179 = uitofp i32 %5177 to float
  %5180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5181 = extractvalue %dx.types.CBufRet.f32 %5180, 0
  %5182 = extractvalue %dx.types.CBufRet.f32 %5180, 1
  %5183 = fmul fast float %5178, %5108
  %5184 = fmul fast float %5179, %5109
  %5185 = fadd fast float %5183, -5.000000e-01
  %5186 = fadd fast float %5184, -5.000000e-01
  %5187 = call float @dx.op.unary.f32(i32 22, float %5185)  ; Frc(value)
  %5188 = call float @dx.op.unary.f32(i32 22, float %5186)  ; Frc(value)
  %5189 = fmul fast float %5187, %5187
  %5190 = fmul fast float %5189, %5187
  %5191 = fsub fast float 3.000000e+00, %5187
  %5192 = fmul fast float %5189, %5191
  %5193 = fmul fast float %5187, 3.000000e+00
  %5194 = fmul fast float %5190, 3.000000e+00
  %5195 = fmul fast float %5189, 6.000000e+00
  %5196 = fsub fast float %5194, %5195
  %5197 = fadd fast float %5196, 4.000000e+00
  %5198 = fmul fast float %5197, 0x3FC5555560000000
  %5199 = fmul fast float %5190, -3.000000e+00
  %5200 = fadd fast float %5189, %5187
  %5201 = fmul fast float %5200, 3.000000e+00
  %5202 = fadd fast float %5199, 1.000000e+00
  %5203 = fadd fast float %5202, %5201
  %5204 = fmul fast float %5190, 0x3FC5555560000000
  %5205 = fmul fast float %5188, %5188
  %5206 = fmul fast float %5205, %5188
  %5207 = fsub fast float 3.000000e+00, %5188
  %5208 = fmul fast float %5205, %5207
  %5209 = fmul fast float %5188, 3.000000e+00
  %5210 = fmul fast float %5206, 3.000000e+00
  %5211 = fmul fast float %5205, 6.000000e+00
  %5212 = fsub fast float %5210, %5211
  %5213 = fadd fast float %5212, 4.000000e+00
  %5214 = fmul fast float %5213, 0x3FC5555560000000
  %5215 = fmul fast float %5206, -3.000000e+00
  %5216 = fadd fast float %5205, %5188
  %5217 = fmul fast float %5216, 3.000000e+00
  %5218 = fadd fast float %5215, 1.000000e+00
  %5219 = fadd fast float %5218, %5217
  %5220 = fmul fast float %5206, 0x3FC5555560000000
  %5221 = fadd fast float %5187, 1.000000e+00
  %5222 = fsub fast float 1.000000e+00, %5193
  %5223 = fadd fast float %5222, %5192
  %5224 = fadd fast float %5223, %5197
  %5225 = fmul fast float %5224, 0x3FC5555560000000
  %5226 = fdiv fast float %5198, %5225
  %5227 = fsub fast float %5221, %5226
  %5228 = fsub fast float 1.000000e+00, %5187
  %5229 = fadd fast float %5203, %5190
  %5230 = fmul fast float %5229, 0x3FC5555560000000
  %5231 = fdiv fast float %5204, %5230
  %5232 = fadd fast float %5228, %5231
  %5233 = fadd fast float %5188, 1.000000e+00
  %5234 = fsub fast float 1.000000e+00, %5209
  %5235 = fadd fast float %5234, %5208
  %5236 = fadd fast float %5235, %5213
  %5237 = fmul fast float %5236, 0x3FC5555560000000
  %5238 = fdiv fast float %5214, %5237
  %5239 = fsub fast float %5233, %5238
  %5240 = fsub fast float 1.000000e+00, %5188
  %5241 = fadd fast float %5219, %5206
  %5242 = fmul fast float %5241, 0x3FC5555560000000
  %5243 = fdiv fast float %5220, %5242
  %5244 = fadd fast float %5243, %5240
  %5245 = fmul fast float %5227, %5181
  %5246 = fsub fast float %5108, %5245
  %5247 = fmul fast float %5232, %5181
  %5248 = fadd fast float %5247, %5108
  %5249 = fmul fast float %5244, %5182
  %5250 = fadd fast float %5249, %5109
  %5251 = fmul fast float %5239, %5182
  %5252 = fsub fast float %5109, %5251
  %5253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %5246, float %5252, float %5170, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5254 = extractvalue %dx.types.ResRet.f32 %5253, 0
  %5255 = extractvalue %dx.types.ResRet.f32 %5253, 1
  %5256 = extractvalue %dx.types.ResRet.f32 %5253, 2
  %5257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %5248, float %5252, float %5170, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5258 = extractvalue %dx.types.ResRet.f32 %5257, 0
  %5259 = extractvalue %dx.types.ResRet.f32 %5257, 1
  %5260 = extractvalue %dx.types.ResRet.f32 %5257, 2
  %5261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %5246, float %5250, float %5170, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5262 = extractvalue %dx.types.ResRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.ResRet.f32 %5261, 1
  %5264 = extractvalue %dx.types.ResRet.f32 %5261, 2
  %5265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %5248, float %5250, float %5170, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5266 = extractvalue %dx.types.ResRet.f32 %5265, 0
  %5267 = extractvalue %dx.types.ResRet.f32 %5265, 1
  %5268 = extractvalue %dx.types.ResRet.f32 %5265, 2
  %5269 = fsub fast float %5262, %5254
  %5270 = fsub fast float %5263, %5255
  %5271 = fsub fast float %5264, %5256
  %5272 = fmul fast float %5269, %5242
  %5273 = fmul fast float %5270, %5242
  %5274 = fmul fast float %5271, %5242
  %5275 = fadd fast float %5272, %5254
  %5276 = fadd fast float %5273, %5255
  %5277 = fadd fast float %5274, %5256
  %5278 = fsub fast float %5266, %5258
  %5279 = fsub fast float %5267, %5259
  %5280 = fsub fast float %5268, %5260
  %5281 = fmul fast float %5278, %5242
  %5282 = fmul fast float %5279, %5242
  %5283 = fmul fast float %5280, %5242
  %5284 = fsub fast float %5258, %5275
  %5285 = fadd fast float %5284, %5281
  %5286 = fsub fast float %5259, %5276
  %5287 = fadd fast float %5286, %5282
  %5288 = fsub fast float %5260, %5277
  %5289 = fadd fast float %5288, %5283
  %5290 = fmul fast float %5285, %5230
  %5291 = fmul fast float %5287, %5230
  %5292 = fmul fast float %5289, %5230
  %5293 = fadd fast float %5290, %5275
  %5294 = fadd fast float %5291, %5276
  %5295 = fadd fast float %5292, %5277
  %5296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5297 = extractvalue %dx.types.CBufRet.f32 %5296, 1
  %5298 = fmul fast float %5293, %5297
  %5299 = fmul fast float %5294, %5297
  %5300 = fmul fast float %5295, %5297
  br label %5301

; <label>:5301                                    ; preds = %5133, %5102
  %5302 = phi float [ %5172, %5133 ], [ 1.000000e+00, %5102 ]
  %5303 = phi float [ %5173, %5133 ], [ 1.000000e+00, %5102 ]
  %5304 = phi float [ %5174, %5133 ], [ 1.000000e+00, %5102 ]
  %5305 = phi float [ %5298, %5133 ], [ 0.000000e+00, %5102 ]
  %5306 = phi float [ %5299, %5133 ], [ 0.000000e+00, %5102 ]
  %5307 = phi float [ %5300, %5133 ], [ 0.000000e+00, %5102 ]
  %5308 = fmul fast float %5305, %5087
  %5309 = fmul fast float %5306, %5088
  %5310 = fmul fast float %5307, %5089
  %5311 = call float @dx.op.dot3.f32(i32 55, float %5302, float %5303, float %5304, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5312 = call float @dx.op.dot3.f32(i32 55, float %5308, float %5309, float %5310, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5313 = select i1 %228, float %5311, float %5302
  %5314 = select i1 %228, float %5311, float %5303
  %5315 = select i1 %228, float 1.000000e+00, float %5304
  %5316 = select i1 %228, float %5312, float %5308
  %5317 = select i1 %228, float 0.000000e+00, float %5309
  %5318 = select i1 %228, float 0.000000e+00, float %5310
  %5319 = fmul fast float %5313, %5092
  %5320 = fmul fast float %5314, %5093
  %5321 = fmul fast float %5315, %5094
  %5322 = fadd fast float %5319, %5316
  %5323 = fadd fast float %5320, %5317
  %5324 = fadd fast float %5318, %5321
  %5325 = fmul fast float %5313, %5055
  %5326 = fmul fast float %5314, %5056
  %5327 = fmul fast float %5315, %5057
  %5328 = fmul fast float %106, %5104
  %5329 = fmul fast float %108, %5105
  %5330 = fsub fast float 1.000000e+00, %5328
  %5331 = fsub fast float 1.000000e+00, %5329
  %5332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5333 = extractvalue %dx.types.CBufRet.f32 %5332, 0
  %5334 = extractvalue %dx.types.CBufRet.f32 %5332, 1
  %5335 = extractvalue %dx.types.CBufRet.f32 %5332, 2
  %5336 = fmul fast float %5330, %5333
  %5337 = fmul fast float %5330, %5334
  %5338 = fmul fast float %5330, %5335
  %5339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5340 = extractvalue %dx.types.CBufRet.f32 %5339, 0
  %5341 = extractvalue %dx.types.CBufRet.f32 %5339, 1
  %5342 = extractvalue %dx.types.CBufRet.f32 %5339, 2
  %5343 = fmul fast float %5331, %5340
  %5344 = fmul fast float %5331, %5341
  %5345 = fmul fast float %5331, %5342
  %5346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5347 = extractvalue %dx.types.CBufRet.f32 %5346, 0
  %5348 = extractvalue %dx.types.CBufRet.f32 %5346, 1
  %5349 = extractvalue %dx.types.CBufRet.f32 %5346, 2
  %5350 = fadd fast float %5343, %5347
  %5351 = fadd fast float %5350, %5336
  %5352 = fadd fast float %5344, %5348
  %5353 = fadd fast float %5352, %5337
  %5354 = fadd fast float %5345, %5349
  %5355 = fadd fast float %5354, %5338
  %5356 = fmul fast float %5351, %189
  %5357 = fmul fast float %5353, %189
  %5358 = fmul fast float %5355, %189
  br label %5359

; <label>:5359                                    ; preds = %5301, %5054
  %5360 = phi float [ %5356, %5301 ], [ %136, %5054 ]
  %5361 = phi float [ %5357, %5301 ], [ %137, %5054 ]
  %5362 = phi float [ %5358, %5301 ], [ %138, %5054 ]
  %5363 = phi float [ %189, %5301 ], [ %68, %5054 ]
  %5364 = phi float [ %5322, %5301 ], [ %5092, %5054 ]
  %5365 = phi float [ %5323, %5301 ], [ %5093, %5054 ]
  %5366 = phi float [ %5324, %5301 ], [ %5094, %5054 ]
  %5367 = phi float [ %5325, %5301 ], [ %5055, %5054 ]
  %5368 = phi float [ %5326, %5301 ], [ %5056, %5054 ]
  %5369 = phi float [ %5327, %5301 ], [ %5057, %5054 ]
  %5370 = phi float [ %5302, %5301 ], [ 1.000000e+00, %5054 ]
  br i1 %5101, label %6525, label %5371

; <label>:5371                                    ; preds = %5359
  %5372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5373 = extractvalue %dx.types.CBufRet.f32 %5372, 0
  %5374 = extractvalue %dx.types.CBufRet.f32 %5372, 1
  %5375 = extractvalue %dx.types.CBufRet.f32 %5372, 2
  %5376 = extractvalue %dx.types.CBufRet.f32 %5372, 3
  %5377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5378 = extractvalue %dx.types.CBufRet.f32 %5377, 0
  %5379 = extractvalue %dx.types.CBufRet.f32 %5377, 1
  %5380 = extractvalue %dx.types.CBufRet.f32 %5377, 2
  %5381 = extractvalue %dx.types.CBufRet.f32 %5377, 3
  %5382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5383 = extractvalue %dx.types.CBufRet.f32 %5382, 0
  %5384 = extractvalue %dx.types.CBufRet.f32 %5382, 1
  %5385 = extractvalue %dx.types.CBufRet.f32 %5382, 2
  %5386 = extractvalue %dx.types.CBufRet.f32 %5382, 3
  %5387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5388 = extractvalue %dx.types.CBufRet.f32 %5387, 0
  %5389 = extractvalue %dx.types.CBufRet.f32 %5387, 1
  %5390 = extractvalue %dx.types.CBufRet.f32 %5387, 2
  %5391 = extractvalue %dx.types.CBufRet.f32 %5387, 3
  %5392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5393 = extractvalue %dx.types.CBufRet.f32 %5392, 3
  %5394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5395 = extractvalue %dx.types.CBufRet.f32 %5394, 3
  %5396 = extractvalue %dx.types.CBufRet.f32 %5394, 0
  %5397 = extractvalue %dx.types.CBufRet.f32 %5394, 1
  %5398 = extractvalue %dx.types.CBufRet.f32 %5394, 2
  %5399 = fcmp fast olt float %5398, -5.000000e-01
  %5400 = call float @dx.op.dot3.f32(i32 55, float %5360, float %5361, float %5362, float %5360, float %5361, float %5362)  ; Dot3(ax,ay,az,bx,by,bz)
  %5401 = call float @dx.op.unary.f32(i32 25, float %5400)  ; Rsqrt(value)
  %5402 = fmul fast float %5401, %5400
  %5403 = fmul fast float %5401, %5360
  %5404 = fmul fast float %5401, %5361
  %5405 = fmul fast float %5401, %5362
  %5406 = fadd fast float %5402, %5376
  %5407 = call float @dx.op.dot3.f32(i32 55, float %5403, float %5404, float %5405, float %5373, float %5374, float %5375)  ; Dot3(ax,ay,az,bx,by,bz)
  %5408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5409 = extractvalue %dx.types.CBufRet.i32 %5408, 1
  %5410 = and i32 %5409, 1
  %5411 = icmp ne i32 %5410, 0
  %5412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5413 = extractvalue %dx.types.CBufRet.f32 %5412, 2
  %5414 = fcmp fast ogt float %5413, 0.000000e+00
  %5415 = and i1 %5411, %5414
  br i1 %5415, label %5416, label %5822, !dx.controlflow.hints !113

; <label>:5416                                    ; preds = %5371
  %5417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5418 = extractvalue %dx.types.CBufRet.f32 %5417, 3
  %5419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5420 = extractvalue %dx.types.CBufRet.f32 %5419, 2
  %5421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5422 = extractvalue %dx.types.CBufRet.f32 %5421, 2
  %5423 = fsub fast float %5420, %5422
  %5424 = and i32 %5409, 2
  %5425 = extractvalue %dx.types.CBufRet.i32 %5408, 0
  %5426 = call i32 @dx.op.binary.i32(i32 40, i32 %5425, i32 3)  ; UMin(a,b)
  %5427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5428 = extractvalue %dx.types.CBufRet.f32 %5427, 0
  %5429 = extractvalue %dx.types.CBufRet.f32 %5427, 1
  %5430 = extractvalue %dx.types.CBufRet.f32 %5421, 0
  %5431 = extractvalue %dx.types.CBufRet.f32 %5421, 1
  %5432 = fsub fast float %5428, %5430
  %5433 = fsub fast float %5429, %5431
  %5434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5435 = extractvalue %dx.types.CBufRet.f32 %5434, 0
  %5436 = fcmp fast ogt float %5435, 0.000000e+00
  %5437 = fsub fast float -0.000000e+00, %5432
  %5438 = fsub fast float -0.000000e+00, %5433
  %5439 = call float @dx.op.dot2.f32(i32 54, float %5403, float %5404, float %5403, float %5404)  ; Dot2(ax,ay,bx,by)
  %5440 = call float @dx.op.dot2.f32(i32 54, float %5403, float %5404, float %5437, float %5438)  ; Dot2(ax,ay,bx,by)
  %5441 = fmul fast float %5440, 2.000000e+00
  %5442 = call float @dx.op.dot2.f32(i32 54, float %5437, float %5438, float %5437, float %5438)  ; Dot2(ax,ay,bx,by)
  %5443 = fmul fast float %5435, %5435
  %5444 = fsub fast float %5442, %5443
  %5445 = fmul fast float %5441, %5441
  %5446 = fmul fast float %5439, 4.000000e+00
  %5447 = fmul fast float %5446, %5444
  %5448 = fsub fast float %5445, %5447
  %5449 = fcmp fast ogt float %5448, 0.000000e+00
  br i1 %5449, label %5450, label %5465

; <label>:5450                                    ; preds = %5416
  %5451 = fcmp fast ogt float %5441, 0.000000e+00
  %5452 = call float @dx.op.unary.f32(i32 24, float %5448)  ; Sqrt(value)
  %5453 = fsub fast float -0.000000e+00, %5452
  %5454 = select i1 %5451, float %5452, float %5453
  %5455 = fadd fast float %5454, %5441
  %5456 = fmul float %5455, -5.000000e-01
  %5457 = fdiv fast float %5456, %5439
  %5458 = call float @dx.op.binary.f32(i32 35, float %5457, float 0.000000e+00)  ; FMax(a,b)
  %5459 = call float @dx.op.binary.f32(i32 36, float %5402, float %5458)  ; FMin(a,b)
  %5460 = fdiv fast float %5444, %5456
  %5461 = call float @dx.op.binary.f32(i32 35, float %5460, float 0.000000e+00)  ; FMax(a,b)
  %5462 = call float @dx.op.binary.f32(i32 36, float %5402, float %5461)  ; FMin(a,b)
  %5463 = call float @dx.op.binary.f32(i32 36, float %5459, float %5462)  ; FMin(a,b)
  %5464 = call float @dx.op.binary.f32(i32 35, float %5459, float %5462)  ; FMax(a,b)
  br label %5465

; <label>:5465                                    ; preds = %5450, %5416
  %5466 = phi float [ %5464, %5450 ], [ -1.000000e+00, %5416 ]
  %5467 = phi float [ %5463, %5450 ], [ -1.000000e+00, %5416 ]
  %5468 = phi i1 [ true, %5450 ], [ false, %5416 ]
  %5469 = and i1 %5436, %5468
  br i1 %5469, label %5470, label %5472

; <label>:5470                                    ; preds = %5465
  %5471 = fcmp fast oeq float %5467, %5466
  br i1 %5471, label %5775, label %5473

; <label>:5472                                    ; preds = %5465
  br i1 %5436, label %5775, label %5473

; <label>:5473                                    ; preds = %5472, %5470
  %5474 = phi float [ %5402, %5472 ], [ %5466, %5470 ]
  %5475 = phi float [ 0.000000e+00, %5472 ], [ %5467, %5470 ]
  %5476 = icmp ne i32 %5424, 0
  %5477 = fmul fast float %5474, %5405
  %5478 = fadd fast float %5477, %5418
  %5479 = fmul fast float %5478, %5474
  %5480 = select i1 %5476, float 0.000000e+00, float %5479
  %5481 = fcmp fast oeq float %5405, 0.000000e+00
  %5482 = fdiv fast float %5423, %5405
  %5483 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5482)  ; FMax(a,b)
  %5484 = select i1 %5481, float %5474, float %5483
  %5485 = call float @dx.op.binary.f32(i32 36, float %5474, float %5484)  ; FMin(a,b)
  %5486 = fcmp fast ogt float %5405, 0.000000e+00
  %5487 = fcmp fast olt float %5423, 0.000000e+00
  br i1 %5486, label %5488, label %5545

; <label>:5488                                    ; preds = %5473
  %5489 = icmp eq i32 %5424, 0
  br i1 %5487, label %5490, label %5534

; <label>:5490                                    ; preds = %5488
  %5491 = select i1 %5489, float %5474, float 0.000000e+00
  %5492 = fsub fast float -0.000000e+00, %5491
  %5493 = call float @dx.op.unary.f32(i32 6, float %5492)  ; FAbs(value)
  %5494 = fmul fast float %5491, %5405
  %5495 = fadd fast float %5494, %5418
  %5496 = fmul fast float %5493, %5495
  %5497 = fsub fast float %5480, %5496
  %5498 = fsub fast float %5474, %5493
  %5499 = select i1 %5489, float %5498, float 0.000000e+00
  %5500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5501 = extractvalue %dx.types.CBufRet.f32 %5500, 0
  %5502 = extractvalue %dx.types.CBufRet.f32 %5500, 1
  %5503 = extractvalue %dx.types.CBufRet.f32 %5500, 2
  %5504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5505 = extractvalue %dx.types.CBufRet.f32 %5504, 0
  %5506 = extractvalue %dx.types.CBufRet.f32 %5504, 1
  %5507 = extractvalue %dx.types.CBufRet.f32 %5504, 2
  %5508 = extractvalue %dx.types.CBufRet.f32 %5504, 3
  %5509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5510 = extractvalue %dx.types.CBufRet.f32 %5509, 3
  %5511 = call float @dx.op.binary.f32(i32 36, float %5497, float %5510)  ; FMin(a,b)
  %5512 = fmul fast float %5508, %5499
  %5513 = call float @dx.op.unary.f32(i32 7, float %5512)  ; Saturate(value)
  %5514 = fsub fast float %5505, %5501
  %5515 = fsub fast float %5506, %5502
  %5516 = fsub fast float %5507, %5503
  %5517 = fmul fast float %5513, %5514
  %5518 = fmul fast float %5513, %5515
  %5519 = fmul fast float %5513, %5516
  %5520 = fadd fast float %5517, %5501
  %5521 = fadd fast float %5518, %5502
  %5522 = fadd fast float %5519, %5503
  %5523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5524 = extractvalue %dx.types.CBufRet.f32 %5523, 0
  %5525 = extractvalue %dx.types.CBufRet.f32 %5523, 1
  %5526 = fadd fast float %5525, %5524
  %5527 = call float @dx.op.unary.f32(i32 7, float %5526)  ; Saturate(value)
  %5528 = extractvalue %dx.types.CBufRet.f32 %5523, 2
  %5529 = extractvalue %dx.types.CBufRet.f32 %5523, 3
  %5530 = fadd fast float %5529, %5528
  %5531 = call float @dx.op.unary.f32(i32 7, float %5530)  ; Saturate(value)
  %5532 = fmul fast float %5527, %5511
  %5533 = fmul fast float %5532, %5531
  br label %5775

; <label>:5534                                    ; preds = %5488
  br i1 %5489, label %5535, label %5556

; <label>:5535                                    ; preds = %5534
  %5536 = call float @dx.op.binary.f32(i32 36, float %5485, float %5475)  ; FMin(a,b)
  %5537 = fsub fast float %5485, %5536
  %5538 = fsub fast float %5537, %5474
  %5539 = call float @dx.op.unary.f32(i32 6, float %5538)  ; FAbs(value)
  %5540 = fadd fast float %5537, %5474
  %5541 = fmul fast float %5540, %5405
  %5542 = fadd fast float %5541, %5418
  %5543 = fmul fast float %5542, %5539
  %5544 = fsub fast float %5480, %5543
  br label %5556

; <label>:5545                                    ; preds = %5473
  br i1 %5487, label %5546, label %5556

; <label>:5546                                    ; preds = %5545
  %5547 = call float @dx.op.binary.f32(i32 35, float %5475, float %5485)  ; FMax(a,b)
  %5548 = icmp eq i32 %5424, 0
  %5549 = select i1 %5548, float %5485, float 0.000000e+00
  %5550 = fsub fast float -0.000000e+00, %5549
  %5551 = call float @dx.op.unary.f32(i32 6, float %5550)  ; FAbs(value)
  %5552 = fmul fast float %5549, %5405
  %5553 = fadd fast float %5552, %5418
  %5554 = fmul fast float %5551, %5553
  %5555 = fsub fast float %5480, %5554
  br label %5556

; <label>:5556                                    ; preds = %5546, %5545, %5535, %5534
  %5557 = phi float [ %5475, %5534 ], [ %5475, %5535 ], [ %5547, %5546 ], [ %5475, %5545 ]
  %5558 = phi float [ 0.000000e+00, %5534 ], [ %5539, %5535 ], [ %5551, %5546 ], [ 0.000000e+00, %5545 ]
  %5559 = phi float [ %5480, %5534 ], [ %5544, %5535 ], [ %5555, %5546 ], [ %5480, %5545 ]
  %5560 = phi float [ %5485, %5534 ], [ %5485, %5535 ], [ %5474, %5546 ], [ %5474, %5545 ]
  %5561 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 0
  store float -1.000000e+00, float* %5561, align 4, !tbaa !103, !noalias !114
  %5562 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 1
  store float -1.000000e+00, float* %5562, align 4, !tbaa !103, !noalias !114
  %5563 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 2
  store float -1.000000e+00, float* %5563, align 4, !tbaa !103, !noalias !114
  %5564 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 0
  store float -1.000000e+00, float* %5564, align 4, !tbaa !103, !noalias !114
  %5565 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 1
  store float -1.000000e+00, float* %5565, align 4, !tbaa !103, !noalias !114
  %5566 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 2
  store float -1.000000e+00, float* %5566, align 4, !tbaa !103, !noalias !114
  %5567 = icmp sgt i32 %5426, 0
  br i1 %5567, label %5568, label %5629

; <label>:5568                                    ; preds = %5556
  br label %5569

; <label>:5569                                    ; preds = %5618, %5568
  %5570 = phi i32 [ %5619, %5618 ], [ 0, %5568 ]
  %5571 = phi i32 [ %5620, %5618 ], [ 0, %5568 ]
  %5572 = add nuw i32 %5571, 171
  %5573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %5572)  ; CBufferLoadLegacy(handle,regIndex)
  %5574 = extractvalue %dx.types.CBufRet.f32 %5573, 0
  %5575 = extractvalue %dx.types.CBufRet.f32 %5573, 1
  %5576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5577 = extractvalue %dx.types.CBufRet.f32 %5576, 0
  %5578 = extractvalue %dx.types.CBufRet.f32 %5576, 1
  %5579 = fsub fast float %5574, %5577
  %5580 = fsub fast float %5575, %5578
  %5581 = extractvalue %dx.types.CBufRet.f32 %5573, 2
  %5582 = fsub fast float -0.000000e+00, %5579
  %5583 = fsub fast float -0.000000e+00, %5580
  %5584 = call float @dx.op.dot2.f32(i32 54, float %5403, float %5404, float %5582, float %5583)  ; Dot2(ax,ay,bx,by)
  %5585 = fmul fast float %5584, 2.000000e+00
  %5586 = call float @dx.op.dot2.f32(i32 54, float %5582, float %5583, float %5582, float %5583)  ; Dot2(ax,ay,bx,by)
  %5587 = fmul fast float %5581, %5581
  %5588 = fsub fast float %5586, %5587
  %5589 = fmul fast float %5585, %5585
  %5590 = fmul fast float %5446, %5588
  %5591 = fsub fast float %5589, %5590
  %5592 = fcmp fast ogt float %5591, 0.000000e+00
  br i1 %5592, label %5593, label %5608

; <label>:5593                                    ; preds = %5569
  %5594 = fcmp fast ogt float %5585, 0.000000e+00
  %5595 = call float @dx.op.unary.f32(i32 24, float %5591)  ; Sqrt(value)
  %5596 = fsub fast float -0.000000e+00, %5595
  %5597 = select i1 %5594, float %5595, float %5596
  %5598 = fadd fast float %5597, %5585
  %5599 = fmul float %5598, -5.000000e-01
  %5600 = fdiv fast float %5599, %5439
  %5601 = call float @dx.op.binary.f32(i32 35, float %5600, float 0.000000e+00)  ; FMax(a,b)
  %5602 = call float @dx.op.binary.f32(i32 36, float %5474, float %5601)  ; FMin(a,b)
  %5603 = fdiv fast float %5588, %5599
  %5604 = call float @dx.op.binary.f32(i32 35, float %5603, float 0.000000e+00)  ; FMax(a,b)
  %5605 = call float @dx.op.binary.f32(i32 36, float %5474, float %5604)  ; FMin(a,b)
  %5606 = call float @dx.op.binary.f32(i32 36, float %5602, float %5605)  ; FMin(a,b)
  %5607 = call float @dx.op.binary.f32(i32 35, float %5602, float %5605)  ; FMax(a,b)
  br label %5608

; <label>:5608                                    ; preds = %5593, %5569
  %5609 = phi float [ %5607, %5593 ], [ -1.000000e+00, %5569 ]
  %5610 = phi float [ %5606, %5593 ], [ -1.000000e+00, %5569 ]
  %5611 = phi i1 [ true, %5593 ], [ false, %5569 ]
  br i1 %5611, label %5612, label %5618

; <label>:5612                                    ; preds = %5608
  %5613 = call float @dx.op.binary.f32(i32 35, float %5557, float %5610)  ; FMax(a,b)
  %5614 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 %5571
  store float %5613, float* %5614, align 4, !tbaa !103, !noalias !114
  %5615 = call float @dx.op.binary.f32(i32 35, float %5557, float %5609)  ; FMax(a,b)
  %5616 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 %5571
  store float %5615, float* %5616, align 4, !tbaa !103, !noalias !114
  %5617 = add nsw i32 %5570, 1
  br label %5618

; <label>:5618                                    ; preds = %5612, %5608
  %5619 = phi i32 [ %5617, %5612 ], [ %5570, %5608 ]
  %5620 = add nuw nsw i32 %5571, 1
  %5621 = icmp eq i32 %5620, %5426
  br i1 %5621, label %5622, label %5569

; <label>:5622                                    ; preds = %5618
  %5623 = load float, float* %5563, align 4, !tbaa !103, !alias.scope !130, !noalias !133
  %5624 = load float, float* %5562, align 4, !tbaa !103, !alias.scope !136, !noalias !137
  %5625 = load float, float* %5561, align 4, !tbaa !103, !alias.scope !138, !noalias !139
  %5626 = load float, float* %5566, align 4, !tbaa !103, !alias.scope !140, !noalias !143
  %5627 = load float, float* %5565, align 4, !tbaa !103, !alias.scope !146, !noalias !147
  %5628 = load float, float* %5564, align 4, !tbaa !103, !alias.scope !148, !noalias !149
  br label %5629

; <label>:5629                                    ; preds = %5622, %5556
  %5630 = phi float [ -1.000000e+00, %5556 ], [ %5628, %5622 ]
  %5631 = phi float [ -1.000000e+00, %5556 ], [ %5627, %5622 ]
  %5632 = phi float [ -1.000000e+00, %5556 ], [ %5626, %5622 ]
  %5633 = phi float [ -1.000000e+00, %5556 ], [ %5625, %5622 ]
  %5634 = phi float [ -1.000000e+00, %5556 ], [ %5624, %5622 ]
  %5635 = phi float [ -1.000000e+00, %5556 ], [ %5623, %5622 ]
  %5636 = phi i32 [ 0, %5556 ], [ %5619, %5622 ]
  %5637 = call float @dx.op.binary.f32(i32 36, float %5634, float %5635)  ; FMin(a,b)
  %5638 = call float @dx.op.binary.f32(i32 36, float %5633, float %5637)  ; FMin(a,b)
  %5639 = call float @dx.op.binary.f32(i32 35, float %5633, float %5634)  ; FMax(a,b)
  %5640 = call float @dx.op.binary.f32(i32 36, float %5639, float %5635)  ; FMin(a,b)
  %5641 = call float @dx.op.binary.f32(i32 36, float %5633, float %5634)  ; FMin(a,b)
  %5642 = call float @dx.op.binary.f32(i32 35, float %5641, float %5640)  ; FMax(a,b)
  %5643 = call float @dx.op.binary.f32(i32 35, float %5634, float %5635)  ; FMax(a,b)
  %5644 = call float @dx.op.binary.f32(i32 35, float %5633, float %5643)  ; FMax(a,b)
  store float %5638, float* %5561, align 4, !tbaa !103, !alias.scope !138, !noalias !139
  store float %5642, float* %5562, align 4, !tbaa !103, !alias.scope !136, !noalias !137
  store float %5644, float* %5563, align 4, !tbaa !103, !alias.scope !130, !noalias !133
  %5645 = call float @dx.op.binary.f32(i32 36, float %5631, float %5632)  ; FMin(a,b)
  %5646 = call float @dx.op.binary.f32(i32 36, float %5630, float %5645)  ; FMin(a,b)
  %5647 = call float @dx.op.binary.f32(i32 35, float %5630, float %5631)  ; FMax(a,b)
  %5648 = call float @dx.op.binary.f32(i32 36, float %5647, float %5632)  ; FMin(a,b)
  %5649 = call float @dx.op.binary.f32(i32 36, float %5630, float %5631)  ; FMin(a,b)
  %5650 = call float @dx.op.binary.f32(i32 35, float %5649, float %5648)  ; FMax(a,b)
  %5651 = call float @dx.op.binary.f32(i32 35, float %5631, float %5632)  ; FMax(a,b)
  %5652 = call float @dx.op.binary.f32(i32 35, float %5630, float %5651)  ; FMax(a,b)
  store float %5646, float* %5564, align 4, !tbaa !103, !alias.scope !148, !noalias !149
  store float %5650, float* %5565, align 4, !tbaa !103, !alias.scope !146, !noalias !147
  store float %5652, float* %5566, align 4, !tbaa !103, !alias.scope !140, !noalias !143
  %5653 = sub nsw i32 3, %5636
  %5654 = icmp sgt i32 %5653, 2
  br i1 %5654, label %5655, label %5693

; <label>:5655                                    ; preds = %5629
  %5656 = icmp eq i32 %5424, 0
  %5657 = fsub fast float %5474, %5558
  %5658 = select i1 %5656, float %5657, float %5558
  %5659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5660 = extractvalue %dx.types.CBufRet.f32 %5659, 0
  %5661 = extractvalue %dx.types.CBufRet.f32 %5659, 1
  %5662 = extractvalue %dx.types.CBufRet.f32 %5659, 2
  %5663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5664 = extractvalue %dx.types.CBufRet.f32 %5663, 0
  %5665 = extractvalue %dx.types.CBufRet.f32 %5663, 1
  %5666 = extractvalue %dx.types.CBufRet.f32 %5663, 2
  %5667 = extractvalue %dx.types.CBufRet.f32 %5663, 3
  %5668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5669 = extractvalue %dx.types.CBufRet.f32 %5668, 3
  %5670 = call float @dx.op.binary.f32(i32 36, float %5559, float %5669)  ; FMin(a,b)
  %5671 = fmul fast float %5667, %5658
  %5672 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5673 = fsub fast float %5664, %5660
  %5674 = fsub fast float %5665, %5661
  %5675 = fsub fast float %5666, %5662
  %5676 = fmul fast float %5672, %5673
  %5677 = fmul fast float %5672, %5674
  %5678 = fmul fast float %5672, %5675
  %5679 = fadd fast float %5676, %5660
  %5680 = fadd fast float %5677, %5661
  %5681 = fadd fast float %5678, %5662
  %5682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5683 = extractvalue %dx.types.CBufRet.f32 %5682, 0
  %5684 = extractvalue %dx.types.CBufRet.f32 %5682, 1
  %5685 = fadd fast float %5684, %5683
  %5686 = call float @dx.op.unary.f32(i32 7, float %5685)  ; Saturate(value)
  %5687 = extractvalue %dx.types.CBufRet.f32 %5682, 2
  %5688 = extractvalue %dx.types.CBufRet.f32 %5682, 3
  %5689 = fadd fast float %5688, %5687
  %5690 = call float @dx.op.unary.f32(i32 7, float %5689)  ; Saturate(value)
  %5691 = fmul fast float %5686, %5670
  %5692 = fmul fast float %5691, %5690
  br label %5775

; <label>:5693                                    ; preds = %5629
  %5694 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 %5653
  %5695 = load float, float* %5694, align 4, !tbaa !103, !noalias !114
  %5696 = fcmp fast olt float %5695, %5560
  %5697 = icmp sgt i32 %5636, 0
  %5698 = and i1 %5697, %5696
  br i1 %5698, label %5699, label %5736

; <label>:5699                                    ; preds = %5693
  br label %5700

; <label>:5700                                    ; preds = %5729, %5699
  %5701 = phi float [ %5730, %5729 ], [ %5558, %5699 ]
  %5702 = phi float [ %5731, %5729 ], [ %5559, %5699 ]
  %5703 = phi float [ %5711, %5729 ], [ %5695, %5699 ]
  %5704 = phi i32 [ %5708, %5729 ], [ %5653, %5699 ]
  %5705 = getelementptr inbounds [3 x float], [3 x float]* %75, i32 0, i32 %5704
  %5706 = load float, float* %5705, align 4, !tbaa !103, !noalias !114
  %5707 = icmp slt i32 %5704, 2
  %5708 = add nsw i32 %5704, 1
  %5709 = getelementptr inbounds [3 x float], [3 x float]* %74, i32 0, i32 %5708
  %5710 = load float, float* %5709, align 4, !tbaa !103, !noalias !114
  %5711 = select i1 %5707, float %5710, float %5474
  %5712 = call float @dx.op.binary.f32(i32 36, float %5711, float %5706)  ; FMin(a,b)
  %5713 = call float @dx.op.binary.f32(i32 36, float %5560, float %5712)  ; FMin(a,b)
  %5714 = icmp eq i32 %5424, 0
  %5715 = fadd fast float %5713, %5703
  %5716 = fmul fast float %5715, %5405
  %5717 = fadd fast float %5716, %5418
  br i1 %5714, label %5723, label %5718

; <label>:5718                                    ; preds = %5700
  %5719 = fsub fast float %5713, %5703
  %5720 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5719)  ; FMax(a,b)
  %5721 = fmul fast float %5720, %5717
  %5722 = fadd fast float %5721, %5702
  br label %5729

; <label>:5723                                    ; preds = %5700
  %5724 = fsub fast float %5703, %5713
  %5725 = call float @dx.op.unary.f32(i32 6, float %5724)  ; FAbs(value)
  %5726 = fadd fast float %5725, %5701
  %5727 = fmul fast float %5725, %5717
  %5728 = fsub fast float %5702, %5727
  br label %5729

; <label>:5729                                    ; preds = %5723, %5718
  %5730 = phi float [ %5720, %5718 ], [ %5726, %5723 ]
  %5731 = phi float [ %5722, %5718 ], [ %5728, %5723 ]
  %5732 = fcmp fast olt float %5711, %5560
  %5733 = icmp slt i32 %5708, 3
  %5734 = and i1 %5733, %5732
  br i1 %5734, label %5700, label %5735

; <label>:5735                                    ; preds = %5729
  br label %5736

; <label>:5736                                    ; preds = %5735, %5693
  %5737 = phi float [ %5558, %5693 ], [ %5730, %5735 ]
  %5738 = phi float [ %5559, %5693 ], [ %5731, %5735 ]
  %5739 = fsub fast float %5474, %5737
  %5740 = select i1 %5476, float %5737, float %5739
  %5741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %5742 = extractvalue %dx.types.CBufRet.f32 %5741, 0
  %5743 = extractvalue %dx.types.CBufRet.f32 %5741, 1
  %5744 = extractvalue %dx.types.CBufRet.f32 %5741, 2
  %5745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %5746 = extractvalue %dx.types.CBufRet.f32 %5745, 0
  %5747 = extractvalue %dx.types.CBufRet.f32 %5745, 1
  %5748 = extractvalue %dx.types.CBufRet.f32 %5745, 2
  %5749 = extractvalue %dx.types.CBufRet.f32 %5745, 3
  %5750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.f32 %5750, 3
  %5752 = call float @dx.op.binary.f32(i32 36, float %5738, float %5751)  ; FMin(a,b)
  %5753 = fmul fast float %5749, %5740
  %5754 = call float @dx.op.unary.f32(i32 7, float %5753)  ; Saturate(value)
  %5755 = fsub fast float %5746, %5742
  %5756 = fsub fast float %5747, %5743
  %5757 = fsub fast float %5748, %5744
  %5758 = fmul fast float %5754, %5755
  %5759 = fmul fast float %5754, %5756
  %5760 = fmul fast float %5754, %5757
  %5761 = fadd fast float %5758, %5742
  %5762 = fadd fast float %5759, %5743
  %5763 = fadd fast float %5760, %5744
  %5764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %5765 = extractvalue %dx.types.CBufRet.f32 %5764, 0
  %5766 = extractvalue %dx.types.CBufRet.f32 %5764, 1
  %5767 = fadd fast float %5766, %5765
  %5768 = call float @dx.op.unary.f32(i32 7, float %5767)  ; Saturate(value)
  %5769 = extractvalue %dx.types.CBufRet.f32 %5764, 2
  %5770 = extractvalue %dx.types.CBufRet.f32 %5764, 3
  %5771 = fadd fast float %5770, %5769
  %5772 = call float @dx.op.unary.f32(i32 7, float %5771)  ; Saturate(value)
  %5773 = fmul fast float %5768, %5752
  %5774 = fmul fast float %5773, %5772
  br label %5775

; <label>:5775                                    ; preds = %5736, %5655, %5490, %5472, %5470
  %5776 = phi float [ %5499, %5490 ], [ %5658, %5655 ], [ %5740, %5736 ], [ 0.000000e+00, %5470 ], [ 0.000000e+00, %5472 ]
  %5777 = phi float [ %5533, %5490 ], [ %5692, %5655 ], [ %5774, %5736 ], [ 0.000000e+00, %5470 ], [ 0.000000e+00, %5472 ]
  %5778 = phi float [ %5520, %5490 ], [ %5679, %5655 ], [ %5761, %5736 ], [ 0.000000e+00, %5470 ], [ 0.000000e+00, %5472 ]
  %5779 = phi float [ %5521, %5490 ], [ %5680, %5655 ], [ %5762, %5736 ], [ 0.000000e+00, %5470 ], [ 0.000000e+00, %5472 ]
  %5780 = phi float [ %5522, %5490 ], [ %5681, %5655 ], [ %5763, %5736 ], [ 0.000000e+00, %5470 ], [ 0.000000e+00, %5472 ]
  %5781 = fmul fast float %5413, %5777
  %5782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.f32 %5782, 2
  %5784 = fsub fast float %5420, %5783
  %5785 = fcmp fast olt float %5781, -2.000000e+01
  %5786 = call float @dx.op.unary.f32(i32 21, float %5781)  ; Exp(value)
  %5787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.f32 %5787, 2
  %5789 = extractvalue %dx.types.CBufRet.f32 %5787, 3
  %5790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5791 = extractvalue %dx.types.CBufRet.f32 %5790, 2
  %5792 = fmul fast float %5789, %5784
  %5793 = call float @dx.op.unary.f32(i32 7, float %5792)  ; Saturate(value)
  %5794 = fsub fast float 1.000000e+00, %5793
  %5795 = fmul fast float %5405, 5.000000e-01
  %5796 = fadd fast float %5795, 5.000000e-01
  %5797 = call float @dx.op.unary.f32(i32 7, float %5796)  ; Saturate(value)
  %5798 = fsub fast float 1.000000e+00, %5797
  %5799 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5794)  ; FMax(a,b)
  %5800 = fdiv fast float %5798, %5799
  %5801 = fsub fast float %5784, %5362
  %5802 = call float @dx.op.unary.f32(i32 6, float %5801)  ; FAbs(value)
  %5803 = fmul fast float %5802, %5788
  %5804 = call float @dx.op.unary.f32(i32 7, float %5800)  ; Saturate(value)
  %5805 = fsub fast float 1.000000e+00, %5803
  %5806 = fmul fast float %5805, %5804
  %5807 = fadd fast float %5806, %5803
  %5808 = fmul fast float %5791, %5784
  %5809 = call float @dx.op.unary.f32(i32 7, float %5808)  ; Saturate(value)
  %5810 = fsub fast float 1.000000e+00, %5807
  %5811 = fmul fast float %5810, %5809
  %5812 = fadd fast float %5811, %5807
  %5813 = call float @dx.op.unary.f32(i32 7, float %5812)  ; Saturate(value)
  %5814 = fadd fast float %5786, -1.000000e+00
  %5815 = select i1 %5785, float -1.000000e+00, float %5814
  %5816 = fmul fast float %5813, %5815
  %5817 = fadd fast float %5816, 1.000000e+00
  %5818 = fsub fast float -0.000000e+00, %5816
  %5819 = fmul fast float %5778, %5818
  %5820 = fmul fast float %5779, %5818
  %5821 = fmul fast float %5780, %5818
  br label %5822

; <label>:5822                                    ; preds = %5775, %5371
  %5823 = phi float [ %5776, %5775 ], [ 0.000000e+00, %5371 ]
  %5824 = phi float [ %5817, %5775 ], [ 1.000000e+00, %5371 ]
  %5825 = phi float [ %5819, %5775 ], [ 0.000000e+00, %5371 ]
  %5826 = phi float [ %5820, %5775 ], [ 0.000000e+00, %5371 ]
  %5827 = phi float [ %5821, %5775 ], [ 0.000000e+00, %5371 ]
  %5828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %5829 = extractvalue %dx.types.CBufRet.f32 %5828, 1
  %5830 = fsub fast float 1.000000e+00, %5824
  %5831 = fmul fast float %5830, %5406
  %5832 = fmul fast float %5831, %5829
  %5833 = fsub fast float %5406, %5832
  br i1 %5399, label %5834, label %5863, !dx.controlflow.hints !150

; <label>:5834                                    ; preds = %5822
  %5835 = fmul fast float %5407, %5396
  %5836 = fadd fast float %5835, %5397
  %5837 = call float @dx.op.unary.f32(i32 7, float %5836)  ; Saturate(value)
  %5838 = fmul fast float %5378, %5833
  %5839 = fsub fast float -0.000000e+00, %5838
  %5840 = fmul fast float %5379, %5833
  %5841 = fsub fast float -0.000000e+00, %5840
  %5842 = call float @dx.op.unary.f32(i32 21, float %5839)  ; Exp(value)
  %5843 = call float @dx.op.unary.f32(i32 21, float %5841)  ; Exp(value)
  %5844 = call float @dx.op.binary.f32(i32 35, float %5386, float %5842)  ; FMax(a,b)
  %5845 = call float @dx.op.binary.f32(i32 35, float %5386, float %5843)  ; FMax(a,b)
  %5846 = fsub fast float %5845, %5844
  %5847 = fmul fast float %5846, %5837
  %5848 = fadd fast float %5847, %5844
  %5849 = call float @dx.op.unary.f32(i32 7, float %5848)  ; Saturate(value)
  %5850 = fsub fast float %5383, %5388
  %5851 = fsub fast float %5384, %5389
  %5852 = fsub fast float %5385, %5390
  %5853 = fmul fast float %5837, %5850
  %5854 = fmul fast float %5837, %5851
  %5855 = fmul fast float %5837, %5852
  %5856 = fadd fast float %5853, %5388
  %5857 = fadd fast float %5854, %5389
  %5858 = fadd fast float %5855, %5390
  %5859 = fsub fast float 1.000000e+00, %5849
  %5860 = fmul fast float %5859, %5856
  %5861 = fmul fast float %5859, %5857
  %5862 = fmul fast float %5859, %5858
  br label %5922

; <label>:5863                                    ; preds = %5822
  %5864 = fmul fast float %5833, %5395
  %5865 = call float @dx.op.unary.f32(i32 7, float %5864)  ; Saturate(value)
  %5866 = fsub fast float 2.000000e+00, %5865
  %5867 = fmul fast float %5865, 9.921875e-01
  %5868 = fmul fast float %5867, %5866
  %5869 = fadd fast float %5868, 3.906250e-03
  %5870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %41, float %5869, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5871 = extractvalue %dx.types.ResRet.f32 %5870, 0
  %5872 = fsub fast float %5865, %5871
  %5873 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5872)  ; FMax(a,b)
  %5874 = fmul fast float %5381, %5362
  %5875 = call float @dx.op.unary.f32(i32 6, float %5874)  ; FAbs(value)
  %5876 = fcmp fast ogt float %5875, 0x3EB0C6F7A0000000
  br i1 %5876, label %5877, label %5883, !dx.controlflow.hints !151

; <label>:5877                                    ; preds = %5863
  %5878 = fmul fast float %5874, 0xBFF7154760000000
  %5879 = call float @dx.op.unary.f32(i32 21, float %5878)  ; Exp(value)
  %5880 = fsub fast float 1.000000e+00, %5879
  %5881 = fdiv fast float %5880, %5874
  %5882 = fmul fast float %5881, %5391
  br label %5883

; <label>:5883                                    ; preds = %5877, %5863
  %5884 = phi float [ %5882, %5877 ], [ %5391, %5863 ]
  %5885 = fadd fast float %5884, %5393
  %5886 = fmul fast float %5885, %5873
  %5887 = fmul fast float %5378, %5886
  %5888 = fsub fast float -0.000000e+00, %5887
  %5889 = fmul fast float %5379, %5886
  %5890 = fsub fast float -0.000000e+00, %5889
  %5891 = fmul fast float %5380, %5886
  %5892 = fsub fast float -0.000000e+00, %5891
  %5893 = call float @dx.op.unary.f32(i32 21, float %5888)  ; Exp(value)
  %5894 = call float @dx.op.unary.f32(i32 21, float %5890)  ; Exp(value)
  %5895 = call float @dx.op.unary.f32(i32 21, float %5892)  ; Exp(value)
  %5896 = fmul fast float %5407, %5407
  %5897 = fadd fast float %5896, 1.000000e+00
  %5898 = fmul fast float %5897, 0x3FAE8EC8A0000000
  %5899 = fmul fast float %5898, %5388
  %5900 = fmul fast float %5898, %5389
  %5901 = fmul fast float %5898, %5390
  %5902 = fmul fast float %5407, %5386
  %5903 = fsub fast float 1.000000e+00, %5902
  %5904 = fmul fast float %5386, %5386
  %5905 = fsub fast float 1.000000e+00, %5904
  %5906 = fmul fast float %5905, 0x3FB45F3060000000
  %5907 = fmul fast float %5903, %5903
  %5908 = fdiv fast float 1.000000e+00, %5907
  %5909 = fmul fast float %5906, %5908
  %5910 = fmul fast float %5909, %5383
  %5911 = fmul fast float %5909, %5384
  %5912 = fmul fast float %5909, %5385
  %5913 = fadd fast float %5910, %5899
  %5914 = fadd fast float %5911, %5900
  %5915 = fadd fast float %5912, %5901
  %5916 = fsub fast float 1.000000e+00, %5893
  %5917 = fsub fast float 1.000000e+00, %5894
  %5918 = fsub fast float 1.000000e+00, %5895
  %5919 = fmul fast float %5913, %5916
  %5920 = fmul fast float %5914, %5917
  %5921 = fmul fast float %5915, %5918
  br label %5922

; <label>:5922                                    ; preds = %5883, %5834
  %5923 = phi float [ %5860, %5834 ], [ %5919, %5883 ]
  %5924 = phi float [ %5861, %5834 ], [ %5920, %5883 ]
  %5925 = phi float [ %5862, %5834 ], [ %5921, %5883 ]
  %5926 = phi float [ %5849, %5834 ], [ %5893, %5883 ]
  %5927 = phi float [ %5849, %5834 ], [ %5894, %5883 ]
  %5928 = phi float [ %5849, %5834 ], [ %5895, %5883 ]
  br i1 %5415, label %5929, label %6127, !dx.controlflow.hints !152

; <label>:5929                                    ; preds = %5922
  %5930 = extractvalue %dx.types.CBufRet.f32 %5828, 0
  %5931 = fmul fast float %5930, %5830
  %5932 = fsub fast float %5825, %5923
  %5933 = fsub fast float %5826, %5924
  %5934 = fsub fast float %5827, %5925
  %5935 = fmul fast float %5931, %5932
  %5936 = fmul fast float %5931, %5933
  %5937 = fmul fast float %5931, %5934
  %5938 = fadd fast float %5935, %5923
  %5939 = fadd fast float %5936, %5924
  %5940 = fadd fast float %5937, %5925
  %5941 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5926)  ; FMax(a,b)
  %5942 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5927)  ; FMax(a,b)
  %5943 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5928)  ; FMax(a,b)
  %5944 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %5824)  ; FMax(a,b)
  %5945 = call float @dx.op.binary.f32(i32 35, float %5823, float %5833)  ; FMax(a,b)
  %5946 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %5945)  ; FMax(a,b)
  %5947 = fdiv fast float %5823, %5946
  %5948 = call float @dx.op.unary.f32(i32 7, float %5947)  ; Saturate(value)
  %5949 = fdiv fast float %5833, %5946
  %5950 = call float @dx.op.unary.f32(i32 7, float %5949)  ; Saturate(value)
  %5951 = fcmp fast une float %5944, 1.000000e+00
  br i1 %5951, label %5952, label %5965, !dx.controlflow.hints !153

; <label>:5952                                    ; preds = %5929
  %5953 = call float @dx.op.unary.f32(i32 23, float %5944)  ; Log(value)
  %5954 = fmul fast float %5953, 0x3FE62E4300000000
  %5955 = fmul fast float %5825, %5954
  %5956 = fsub fast float -0.000000e+00, %5955
  %5957 = fmul fast float %5826, %5954
  %5958 = fsub fast float -0.000000e+00, %5957
  %5959 = fmul fast float %5827, %5954
  %5960 = fsub fast float -0.000000e+00, %5959
  %5961 = fsub fast float 1.000000e+00, %5944
  %5962 = fdiv fast float %5956, %5961
  %5963 = fdiv fast float %5958, %5961
  %5964 = fdiv fast float %5960, %5961
  br label %5965

; <label>:5965                                    ; preds = %5952, %5929
  %5966 = phi float [ %5962, %5952 ], [ %5825, %5929 ]
  %5967 = phi float [ %5963, %5952 ], [ %5826, %5929 ]
  %5968 = phi float [ %5964, %5952 ], [ %5827, %5929 ]
  %5969 = phi float [ %5954, %5952 ], [ 0.000000e+00, %5929 ]
  %5970 = fcmp fast une float %5941, 1.000000e+00
  br i1 %5970, label %5971, label %5978, !dx.controlflow.hints !154

; <label>:5971                                    ; preds = %5965
  %5972 = call float @dx.op.unary.f32(i32 23, float %5941)  ; Log(value)
  %5973 = fmul fast float %5972, 0x3FE62E4300000000
  %5974 = fmul fast float %5938, %5973
  %5975 = fsub fast float -0.000000e+00, %5974
  %5976 = fsub fast float 1.000000e+00, %5941
  %5977 = fdiv fast float %5975, %5976
  br label %5978

; <label>:5978                                    ; preds = %5971, %5965
  %5979 = phi float [ %5977, %5971 ], [ %5938, %5965 ]
  %5980 = phi float [ %5973, %5971 ], [ 0.000000e+00, %5965 ]
  %5981 = fcmp fast une float %5942, 1.000000e+00
  br i1 %5981, label %5982, label %5989, !dx.controlflow.hints !154

; <label>:5982                                    ; preds = %5978
  %5983 = call float @dx.op.unary.f32(i32 23, float %5942)  ; Log(value)
  %5984 = fmul fast float %5983, 0x3FE62E4300000000
  %5985 = fmul fast float %5939, %5984
  %5986 = fsub fast float -0.000000e+00, %5985
  %5987 = fsub fast float 1.000000e+00, %5942
  %5988 = fdiv fast float %5986, %5987
  br label %5989

; <label>:5989                                    ; preds = %5982, %5978
  %5990 = phi float [ %5988, %5982 ], [ %5939, %5978 ]
  %5991 = phi float [ %5984, %5982 ], [ 0.000000e+00, %5978 ]
  %5992 = fcmp fast une float %5943, 1.000000e+00
  br i1 %5992, label %5993, label %6000, !dx.controlflow.hints !154

; <label>:5993                                    ; preds = %5989
  %5994 = call float @dx.op.unary.f32(i32 23, float %5943)  ; Log(value)
  %5995 = fmul fast float %5994, 0x3FE62E4300000000
  %5996 = fmul fast float %5940, %5995
  %5997 = fsub fast float -0.000000e+00, %5996
  %5998 = fsub fast float 1.000000e+00, %5943
  %5999 = fdiv fast float %5997, %5998
  br label %6000

; <label>:6000                                    ; preds = %5993, %5989
  %6001 = phi float [ %5999, %5993 ], [ %5940, %5989 ]
  %6002 = phi float [ %5995, %5993 ], [ 0.000000e+00, %5989 ]
  %6003 = fmul fast float %5966, %5950
  %6004 = fmul fast float %5967, %5950
  %6005 = fmul fast float %5968, %5950
  %6006 = fmul fast float %5969, %5950
  %6007 = fmul fast float %5979, %5948
  %6008 = fmul fast float %5990, %5948
  %6009 = fmul fast float %6001, %5948
  %6010 = fmul fast float %5980, %5948
  %6011 = fmul fast float %5991, %5948
  %6012 = fmul fast float %6002, %5948
  %6013 = fadd fast float %6007, %6003
  %6014 = fadd fast float %6008, %6004
  %6015 = fadd fast float %6009, %6005
  %6016 = fadd fast float %6010, %6006
  %6017 = fadd fast float %6011, %6006
  %6018 = fadd fast float %6012, %6006
  %6019 = fcmp fast une float %6016, 0.000000e+00
  br i1 %6019, label %6020, label %6027, !dx.controlflow.hints !155

; <label>:6020                                    ; preds = %6000
  %6021 = fmul fast float %6016, 0x3FF7154760000000
  %6022 = call float @dx.op.unary.f32(i32 21, float %6021)  ; Exp(value)
  %6023 = fsub fast float 1.000000e+00, %6022
  %6024 = fmul fast float %6013, %6023
  %6025 = fsub fast float -0.000000e+00, %6024
  %6026 = fdiv fast float %6025, %6016
  br label %6027

; <label>:6027                                    ; preds = %6020, %6000
  %6028 = phi float [ %6022, %6020 ], [ 1.000000e+00, %6000 ]
  %6029 = phi float [ %6026, %6020 ], [ %6013, %6000 ]
  %6030 = fcmp fast une float %6017, 0.000000e+00
  br i1 %6030, label %6031, label %6038, !dx.controlflow.hints !155

; <label>:6031                                    ; preds = %6027
  %6032 = fmul fast float %6017, 0x3FF7154760000000
  %6033 = call float @dx.op.unary.f32(i32 21, float %6032)  ; Exp(value)
  %6034 = fsub fast float 1.000000e+00, %6033
  %6035 = fmul fast float %6014, %6034
  %6036 = fsub fast float -0.000000e+00, %6035
  %6037 = fdiv fast float %6036, %6017
  br label %6038

; <label>:6038                                    ; preds = %6031, %6027
  %6039 = phi float [ %6033, %6031 ], [ 1.000000e+00, %6027 ]
  %6040 = phi float [ %6037, %6031 ], [ %6014, %6027 ]
  %6041 = fcmp fast une float %6018, 0.000000e+00
  br i1 %6041, label %6042, label %6049, !dx.controlflow.hints !155

; <label>:6042                                    ; preds = %6038
  %6043 = fmul fast float %6018, 0x3FF7154760000000
  %6044 = call float @dx.op.unary.f32(i32 21, float %6043)  ; Exp(value)
  %6045 = fsub fast float 1.000000e+00, %6044
  %6046 = fmul fast float %6015, %6045
  %6047 = fsub fast float -0.000000e+00, %6046
  %6048 = fdiv fast float %6047, %6018
  br label %6049

; <label>:6049                                    ; preds = %6042, %6038
  %6050 = phi float [ %6044, %6042 ], [ 1.000000e+00, %6038 ]
  %6051 = phi float [ %6048, %6042 ], [ %6015, %6038 ]
  %6052 = fcmp fast ogt float %5948, %5950
  br i1 %6052, label %6053, label %6073

; <label>:6053                                    ; preds = %6049
  %6054 = fsub fast float 1.000000e+00, %5950
  %6055 = fmul fast float %5966, %6054
  %6056 = fmul fast float %5967, %6054
  %6057 = fmul fast float %5968, %6054
  %6058 = fmul fast float %5969, %6054
  %6059 = fcmp fast une float %6058, 0.000000e+00
  br i1 %6059, label %6060, label %6111, !dx.controlflow.hints !156

; <label>:6060                                    ; preds = %6053
  %6061 = fmul fast float %6058, 0x3FF7154760000000
  %6062 = call float @dx.op.unary.f32(i32 21, float %6061)  ; Exp(value)
  %6063 = fsub fast float 1.000000e+00, %6062
  %6064 = fmul fast float %6055, %6063
  %6065 = fsub fast float -0.000000e+00, %6064
  %6066 = fmul fast float %6056, %6063
  %6067 = fsub fast float -0.000000e+00, %6066
  %6068 = fmul fast float %6057, %6063
  %6069 = fsub fast float -0.000000e+00, %6068
  %6070 = fdiv fast float %6065, %6058
  %6071 = fdiv fast float %6067, %6058
  %6072 = fdiv fast float %6069, %6058
  br label %6111

; <label>:6073                                    ; preds = %6049
  %6074 = fsub fast float 1.000000e+00, %5948
  %6075 = fmul fast float %5979, %6074
  %6076 = fmul fast float %5990, %6074
  %6077 = fmul fast float %6001, %6074
  %6078 = fmul fast float %5980, %6074
  %6079 = fmul fast float %5991, %6074
  %6080 = fmul fast float %6002, %6074
  %6081 = fcmp fast une float %6078, 0.000000e+00
  br i1 %6081, label %6082, label %6089, !dx.controlflow.hints !155

; <label>:6082                                    ; preds = %6073
  %6083 = fmul fast float %6078, 0x3FF7154760000000
  %6084 = call float @dx.op.unary.f32(i32 21, float %6083)  ; Exp(value)
  %6085 = fsub fast float 1.000000e+00, %6084
  %6086 = fmul fast float %6075, %6085
  %6087 = fsub fast float -0.000000e+00, %6086
  %6088 = fdiv fast float %6087, %6078
  br label %6089

; <label>:6089                                    ; preds = %6082, %6073
  %6090 = phi float [ %6088, %6082 ], [ %6075, %6073 ]
  %6091 = phi float [ %6084, %6082 ], [ 1.000000e+00, %6073 ]
  %6092 = fcmp fast une float %6079, 0.000000e+00
  br i1 %6092, label %6093, label %6100, !dx.controlflow.hints !155

; <label>:6093                                    ; preds = %6089
  %6094 = fmul fast float %6079, 0x3FF7154760000000
  %6095 = call float @dx.op.unary.f32(i32 21, float %6094)  ; Exp(value)
  %6096 = fsub fast float 1.000000e+00, %6095
  %6097 = fmul fast float %6076, %6096
  %6098 = fsub fast float -0.000000e+00, %6097
  %6099 = fdiv fast float %6098, %6079
  br label %6100

; <label>:6100                                    ; preds = %6093, %6089
  %6101 = phi float [ %6099, %6093 ], [ %6076, %6089 ]
  %6102 = phi float [ %6095, %6093 ], [ 1.000000e+00, %6089 ]
  %6103 = fcmp fast une float %6080, 0.000000e+00
  br i1 %6103, label %6104, label %6111, !dx.controlflow.hints !155

; <label>:6104                                    ; preds = %6100
  %6105 = fmul fast float %6080, 0x3FF7154760000000
  %6106 = call float @dx.op.unary.f32(i32 21, float %6105)  ; Exp(value)
  %6107 = fsub fast float 1.000000e+00, %6106
  %6108 = fmul fast float %6077, %6107
  %6109 = fsub fast float -0.000000e+00, %6108
  %6110 = fdiv fast float %6109, %6080
  br label %6111

; <label>:6111                                    ; preds = %6104, %6100, %6060, %6053
  %6112 = phi float [ %6110, %6104 ], [ %6072, %6060 ], [ %6057, %6053 ], [ %6077, %6100 ]
  %6113 = phi float [ %6101, %6104 ], [ %6071, %6060 ], [ %6056, %6053 ], [ %6101, %6100 ]
  %6114 = phi float [ %6090, %6104 ], [ %6070, %6060 ], [ %6055, %6053 ], [ %6090, %6100 ]
  %6115 = phi float [ %6106, %6104 ], [ %6062, %6060 ], [ 1.000000e+00, %6053 ], [ 1.000000e+00, %6100 ]
  %6116 = phi float [ %6102, %6104 ], [ %6062, %6060 ], [ 1.000000e+00, %6053 ], [ %6102, %6100 ]
  %6117 = phi float [ %6091, %6104 ], [ %6062, %6060 ], [ 1.000000e+00, %6053 ], [ %6091, %6100 ]
  %6118 = fmul fast float %6117, %6029
  %6119 = fmul fast float %6116, %6040
  %6120 = fmul fast float %6115, %6051
  %6121 = fadd fast float %6118, %6114
  %6122 = fadd fast float %6119, %6113
  %6123 = fadd fast float %6120, %6112
  %6124 = fmul fast float %6117, %6028
  %6125 = fmul fast float %6116, %6039
  %6126 = fmul fast float %6115, %6050
  br label %6127

; <label>:6127                                    ; preds = %6111, %5922
  %6128 = phi float [ %6126, %6111 ], [ %5928, %5922 ]
  %6129 = phi float [ %6125, %6111 ], [ %5927, %5922 ]
  %6130 = phi float [ %6124, %6111 ], [ %5926, %5922 ]
  %6131 = phi float [ %6123, %6111 ], [ %5925, %5922 ]
  %6132 = phi float [ %6122, %6111 ], [ %5924, %5922 ]
  %6133 = phi float [ %6121, %6111 ], [ %5923, %5922 ]
  %6134 = fmul fast float %6133, %5087
  %6135 = fmul fast float %6132, %5088
  %6136 = fmul fast float %6131, %5089
  %6137 = fmul fast float %6130, %5370
  %6138 = call float @dx.op.dot3.f32(i32 55, float %6130, float %6129, float %6128, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6139 = call float @dx.op.dot3.f32(i32 55, float %6134, float %6135, float %6136, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6140 = select i1 %228, float %6138, float %6130
  %6141 = select i1 %228, float %6138, float %6129
  %6142 = select i1 %228, float 1.000000e+00, float %6128
  %6143 = select i1 %228, float %6139, float %6134
  %6144 = select i1 %228, float 0.000000e+00, float %6135
  %6145 = select i1 %228, float 0.000000e+00, float %6136
  %6146 = fmul fast float %6140, %5364
  %6147 = fmul fast float %6141, %5365
  %6148 = fmul fast float %6142, %5366
  %6149 = fadd fast float %6146, %6143
  %6150 = fadd fast float %6147, %6144
  %6151 = fadd fast float %6145, %6148
  %6152 = fmul fast float %6140, %5367
  %6153 = fmul fast float %6141, %5368
  %6154 = fmul fast float %6142, %5369
  %6155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6156 = extractvalue %dx.types.CBufRet.i32 %6155, 0
  %6157 = icmp eq i32 %6156, 0
  br i1 %6157, label %6525, label %6158, !dx.controlflow.hints !157

; <label>:6158                                    ; preds = %6127
  %6159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6160 = extractvalue %dx.types.CBufRet.f32 %6159, 2
  %6161 = extractvalue %dx.types.CBufRet.f32 %6159, 3
  %6162 = fmul fast float %6160, %80
  %6163 = fmul fast float %6161, %81
  %6164 = fmul fast float %6162, 2.000000e+00
  %6165 = fmul fast float %6163, 2.000000e+00
  %6166 = fsub fast float 1.000000e+00, %6164
  %6167 = fsub fast float 1.000000e+00, %6165
  %6168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6169 = extractvalue %dx.types.CBufRet.f32 %6168, 0
  %6170 = extractvalue %dx.types.CBufRet.f32 %6168, 1
  %6171 = extractvalue %dx.types.CBufRet.f32 %6168, 2
  %6172 = fmul fast float %6166, %6169
  %6173 = fmul fast float %6166, %6170
  %6174 = fmul fast float %6166, %6171
  %6175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6176 = extractvalue %dx.types.CBufRet.f32 %6175, 0
  %6177 = extractvalue %dx.types.CBufRet.f32 %6175, 1
  %6178 = extractvalue %dx.types.CBufRet.f32 %6175, 2
  %6179 = fmul fast float %6167, %6176
  %6180 = fmul fast float %6167, %6177
  %6181 = fmul fast float %6167, %6178
  %6182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6183 = extractvalue %dx.types.CBufRet.f32 %6182, 0
  %6184 = extractvalue %dx.types.CBufRet.f32 %6182, 1
  %6185 = extractvalue %dx.types.CBufRet.f32 %6182, 2
  %6186 = fadd fast float %6179, %6183
  %6187 = fadd fast float %6186, %6172
  %6188 = fadd fast float %6180, %6184
  %6189 = fadd fast float %6188, %6173
  %6190 = fadd fast float %6181, %6185
  %6191 = fadd fast float %6190, %6174
  %6192 = fmul fast float %6187, %5363
  %6193 = fmul fast float %6189, %5363
  %6194 = fmul fast float %6191, %5363
  %6195 = fmul fast float %6192, %6192
  %6196 = fmul fast float %6193, %6193
  %6197 = fadd fast float %6195, %6196
  %6198 = fmul fast float %6194, %6194
  %6199 = fadd fast float %6197, %6198
  %6200 = call float @dx.op.unary.f32(i32 24, float %6199)  ; Sqrt(value)
  %6201 = extractvalue %dx.types.CBufRet.f32 %5090, 0
  %6202 = fsub fast float %6200, %6201
  %6203 = extractvalue %dx.types.CBufRet.f32 %5090, 2
  %6204 = fmul fast float %6202, %6203
  %6205 = call float @dx.op.unary.f32(i32 7, float %6204)  ; Saturate(value)
  %6206 = fadd fast float %6205, -5.000000e-01
  %6207 = fmul fast float %6206, 2.000000e+00
  %6208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6209 = extractvalue %dx.types.CBufRet.f32 %6208, 2
  %6210 = call float @dx.op.binary.f32(i32 36, float %6209, float %6207)  ; FMin(a,b)
  %6211 = fsub fast float -0.000000e+00, %6209
  %6212 = fcmp fast ogt float %6210, %6211
  br i1 %6212, label %6213, label %6525, !dx.controlflow.hints !158

; <label>:6213                                    ; preds = %6158
  %6214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6215 = extractvalue %dx.types.CBufRet.f32 %6214, 3
  %6216 = fcmp fast ogt float %6215, 0.000000e+00
  br i1 %6216, label %6217, label %6292, !dx.controlflow.hints !159

; <label>:6217                                    ; preds = %6213
  %6218 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %6219 = extractvalue %dx.types.Dimensions %6218, 0
  %6220 = sitofp i32 %6219 to float
  %6221 = extractvalue %dx.types.Dimensions %6218, 1
  %6222 = sitofp i32 %6221 to float
  %6223 = fmul fast float %6162, %6220
  %6224 = fmul fast float %6163, %6222
  %6225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6226 = extractvalue %dx.types.CBufRet.f32 %6225, 1
  %6227 = fsub fast float -0.000000e+00, %6226
  %6228 = fptoui float %6227 to i32
  %6229 = fptoui float %6223 to i32
  %6230 = fptoui float %6224 to i32
  %6231 = and i32 %6228, 31
  %6232 = lshr i32 %6229, %6231
  %6233 = lshr i32 %6230, %6231
  %6234 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 %6228, i32 %6232, i32 %6233, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6235 = extractvalue %dx.types.ResRet.f32 %6234, 0
  %6236 = fcmp fast olt float %6235, -1.000000e+00
  %6237 = fcmp fast ogt float %6235, -1.000000e+00
  %6238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6239 = extractvalue %dx.types.CBufRet.f32 %6238, 1
  %6240 = select i1 %6237, float %6239, float 1.000000e+00
  %6241 = fadd fast float %6235, 1.000000e+00
  %6242 = fmul fast float %6240, %6241
  %6243 = call float @dx.op.unary.f32(i32 6, float %6242)  ; FAbs(value)
  %6244 = extractvalue %dx.types.CBufRet.f32 %6238, 3
  %6245 = fcmp fast oge float %6243, %6244
  %6246 = select i1 %6245, float 0x4197782600000000, float %6243
  %6247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6248 = extractvalue %dx.types.CBufRet.f32 %6247, 0
  %6249 = extractvalue %dx.types.CBufRet.f32 %6247, 1
  %6250 = extractvalue %dx.types.CBufRet.f32 %6247, 2
  %6251 = select i1 %6236, float %6248, float %6169
  %6252 = select i1 %6236, float %6249, float %6170
  %6253 = select i1 %6236, float %6250, float %6171
  %6254 = fmul fast float %6251, %6166
  %6255 = fmul fast float %6252, %6166
  %6256 = fmul fast float %6253, %6166
  %6257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6258 = extractvalue %dx.types.CBufRet.f32 %6257, 0
  %6259 = extractvalue %dx.types.CBufRet.f32 %6257, 1
  %6260 = extractvalue %dx.types.CBufRet.f32 %6257, 2
  %6261 = select i1 %6236, float %6258, float %6176
  %6262 = select i1 %6236, float %6259, float %6177
  %6263 = select i1 %6236, float %6260, float %6178
  %6264 = fmul fast float %6261, %6167
  %6265 = fmul fast float %6262, %6167
  %6266 = fmul fast float %6263, %6167
  %6267 = fadd fast float %6264, %6254
  %6268 = fadd fast float %6265, %6255
  %6269 = fadd fast float %6266, %6256
  %6270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6271 = extractvalue %dx.types.CBufRet.f32 %6270, 0
  %6272 = extractvalue %dx.types.CBufRet.f32 %6270, 1
  %6273 = extractvalue %dx.types.CBufRet.f32 %6270, 2
  %6274 = select i1 %6236, float %6271, float %6183
  %6275 = select i1 %6236, float %6272, float %6184
  %6276 = select i1 %6236, float %6273, float %6185
  %6277 = fadd fast float %6267, %6274
  %6278 = fadd fast float %6268, %6275
  %6279 = fadd fast float %6269, %6276
  %6280 = fmul fast float %6277, %6246
  %6281 = fmul fast float %6278, %6246
  %6282 = fmul fast float %6279, %6246
  %6283 = fmul fast float %6280, %6280
  %6284 = fmul fast float %6281, %6281
  %6285 = fadd fast float %6283, %6284
  %6286 = fmul fast float %6282, %6282
  %6287 = fadd fast float %6285, %6286
  %6288 = call float @dx.op.unary.f32(i32 24, float %6287)  ; Sqrt(value)
  %6289 = fsub fast float %6288, %6201
  %6290 = fmul fast float %6289, %6203
  %6291 = call float @dx.op.unary.f32(i32 7, float %6290)  ; Saturate(value)
  br label %6292

; <label>:6292                                    ; preds = %6217, %6213
  %6293 = phi float [ %6291, %6217 ], [ 1.000000e+00, %6213 ]
  %6294 = fmul fast float %6210, 5.000000e-01
  %6295 = fadd fast float %6294, 5.000000e-01
  %6296 = call float @dx.op.unary.f32(i32 22, float %6295)  ; Frc(value)
  %6297 = call float @dx.op.unary.f32(i32 27, float %6296)  ; Round_ni(value)
  %6298 = call float @dx.op.unary.f32(i32 22, float %6296)  ; Frc(value)
  %6299 = fmul fast float %6298, 2.000000e+00
  %6300 = fadd fast float %6299, -1.000000e+00
  %6301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %6162, float %6163, float %6297, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6302 = extractvalue %dx.types.ResRet.f32 %6301, 0
  %6303 = extractvalue %dx.types.ResRet.f32 %6301, 1
  %6304 = extractvalue %dx.types.ResRet.f32 %6301, 2
  %6305 = extractvalue %dx.types.ResRet.f32 %6301, 3
  %6306 = fadd fast float %6302, -5.000000e-01
  %6307 = fadd fast float %6304, -5.000000e-01
  %6308 = fmul fast float %6306, 0xBFD5555560000000
  %6309 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6307, float %6308)  ; FMad(a,b,c)
  %6310 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6303, float 0.000000e+00)  ; FMad(a,b,c)
  %6311 = fadd fast float %6310, %6305
  %6312 = fmul fast float %6306, -7.500000e-01
  %6313 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6307, float %6312)  ; FMad(a,b,c)
  %6314 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6303, float 0.000000e+00)  ; FMad(a,b,c)
  %6315 = fadd fast float %6314, %6305
  %6316 = call float @dx.op.binary.f32(i32 35, float %6309, float -1.000000e+00)  ; FMax(a,b)
  %6317 = call float @dx.op.binary.f32(i32 35, float %6311, float -1.000000e+00)  ; FMax(a,b)
  %6318 = call float @dx.op.binary.f32(i32 35, float %6313, float -1.000000e+00)  ; FMax(a,b)
  %6319 = call float @dx.op.binary.f32(i32 35, float %6315, float -1.000000e+00)  ; FMax(a,b)
  %6320 = call float @dx.op.binary.f32(i32 36, float %6316, float 1.000000e+00)  ; FMin(a,b)
  %6321 = call float @dx.op.binary.f32(i32 36, float %6317, float 1.000000e+00)  ; FMin(a,b)
  %6322 = call float @dx.op.binary.f32(i32 36, float %6318, float 1.000000e+00)  ; FMin(a,b)
  %6323 = call float @dx.op.binary.f32(i32 36, float %6319, float 1.000000e+00)  ; FMin(a,b)
  %6324 = fcmp fast olt float %6320, 0x3FEFFF8020000000
  br i1 %6324, label %6325, label %6440, !dx.controlflow.hints !160

; <label>:6325                                    ; preds = %6292
  %6326 = extractvalue %dx.types.CBufRet.f32 %6208, 3
  %6327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6328 = extractvalue %dx.types.CBufRet.f32 %6327, 0
  %6329 = extractvalue %dx.types.CBufRet.f32 %6327, 1
  %6330 = extractvalue %dx.types.CBufRet.f32 %6327, 2
  %6331 = extractvalue %dx.types.CBufRet.f32 %6327, 3
  %6332 = fsub fast float %6328, %6320
  %6333 = fsub fast float %6329, %6321
  %6334 = fsub fast float %6330, %6322
  %6335 = fsub fast float %6331, %6323
  %6336 = fmul fast float %6332, %6326
  %6337 = fmul fast float %6333, %6326
  %6338 = fmul fast float %6334, %6326
  %6339 = fmul fast float %6335, %6326
  %6340 = fadd fast float %6336, %6320
  %6341 = fadd fast float %6337, %6321
  %6342 = fsub fast float -0.000000e+00, %6341
  %6343 = fadd fast float %6338, %6322
  %6344 = fadd fast float %6339, %6323
  %6345 = fmul fast float %6340, %6340
  %6346 = fsub fast float %6341, %6345
  %6347 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6346)  ; FMax(a,b)
  %6348 = fdiv fast float 1.000000e+00, %6347
  %6349 = fmul fast float %6341, %6340
  %6350 = fsub fast float %6343, %6349
  %6351 = fsub fast float %6300, %6340
  %6352 = fmul fast float %6300, %6300
  %6353 = fsub fast float %6352, %6341
  %6354 = fmul fast float %6351, %6348
  %6355 = fmul fast float %6354, %6350
  %6356 = fsub fast float %6353, %6355
  %6357 = fmul fast float %6341, %6341
  %6358 = fsub fast float %6344, %6357
  %6359 = fmul fast float %6350, %6350
  %6360 = fmul fast float %6359, %6348
  %6361 = fsub fast float %6358, %6360
  %6362 = fdiv fast float %6356, %6361
  %6363 = fmul fast float %6350, %6362
  %6364 = fsub fast float %6351, %6363
  %6365 = fmul fast float %6364, %6348
  %6366 = fmul fast float %6365, %6340
  %6367 = fsub fast float 1.000000e+00, %6366
  %6368 = fmul fast float %6341, %6362
  %6369 = fsub fast float %6367, %6368
  %6370 = fmul fast float %6365, %6365
  %6371 = fmul fast float %6362, 4.000000e+00
  %6372 = fmul fast float %6371, %6369
  %6373 = fsub fast float %6370, %6372
  %6374 = call float @dx.op.unary.f32(i32 24, float %6373)  ; Sqrt(value)
  %6375 = fcmp fast oge float %6365, 0.000000e+00
  %6376 = fsub fast float -0.000000e+00, %6374
  %6377 = select i1 %6375, float %6376, float %6374
  %6378 = fsub fast float %6377, %6365
  %6379 = fdiv fast float %6378, %6362
  %6380 = fdiv fast float %6369, %6378
  %6381 = fmul fast float %6379, 5.000000e-01
  %6382 = fmul fast float %6380, 2.000000e+00
  %6383 = select i1 %6375, float %6381, float %6382
  %6384 = select i1 %6375, float %6382, float %6381
  %6385 = call float @dx.op.binary.f32(i32 35, float %6383, float %6384)  ; FMax(a,b)
  %6386 = call float @dx.op.binary.f32(i32 36, float %6383, float %6384)  ; FMin(a,b)
  %6387 = fcmp fast ogt float %6300, %6386
  br i1 %6387, label %6388, label %6398

; <label>:6388                                    ; preds = %6325
  %6389 = fsub fast float %6300, %6386
  %6390 = fsub fast float %6385, %6386
  %6391 = fmul fast float %6389, %6390
  %6392 = fmul fast float %6385, %6300
  %6393 = fadd fast float %6385, %6300
  %6394 = fmul fast float %6393, %6340
  %6395 = fadd fast float %6392, %6341
  %6396 = fsub fast float %6395, %6394
  %6397 = fdiv fast float %6396, %6391
  br label %6398

; <label>:6398                                    ; preds = %6388, %6325
  %6399 = phi float [ %6397, %6388 ], [ 0.000000e+00, %6325 ]
  %6400 = fcmp fast ogt float %6300, %6385
  %6401 = fsub fast float %6300, %6385
  br i1 %6400, label %6402, label %6412

; <label>:6402                                    ; preds = %6398
  %6403 = fsub fast float %6385, %6386
  %6404 = fmul fast float %6403, %6401
  %6405 = fmul fast float %6386, %6300
  %6406 = fadd fast float %6386, %6300
  %6407 = fmul fast float %6406, %6340
  %6408 = fsub fast float %6342, %6405
  %6409 = fadd fast float %6408, %6407
  %6410 = fdiv fast float %6409, %6404
  %6411 = fadd fast float %6410, %6399
  br label %6412

; <label>:6412                                    ; preds = %6402, %6398
  %6413 = phi float [ %6411, %6402 ], [ %6399, %6398 ]
  %6414 = fsub fast float %6300, %6386
  %6415 = fmul fast float %6414, %6401
  %6416 = fmul fast float %6386, %6385
  %6417 = fadd fast float %6386, %6385
  %6418 = fmul fast float %6417, %6340
  %6419 = fadd fast float %6416, %6341
  %6420 = fsub fast float %6419, %6418
  %6421 = fdiv fast float %6420, %6415
  %6422 = call float @dx.op.unary.f32(i32 7, float %6413)  ; Saturate(value)
  %6423 = fcmp fast oeq float %5091, 0.000000e+00
  %6424 = extractvalue %dx.types.CBufRet.f32 %6208, 0
  %6425 = fcmp fast oeq float %6424, 0.000000e+00
  %6426 = or i1 %6423, %6425
  %6427 = fmul fast float %6424, 2.000000e+00
  %6428 = fadd fast float %6209, %6210
  %6429 = fdiv fast float %6428, %6427
  %6430 = call float @dx.op.unary.f32(i32 7, float %6429)  ; Saturate(value)
  %6431 = fmul fast float %6430, 2.000000e+00
  %6432 = fsub fast float 3.000000e+00, %6431
  %6433 = fmul fast float %6430, %6430
  %6434 = fmul fast float %6433, %6432
  %6435 = select i1 %6426, float 1.000000e+00, float %6434
  %6436 = fmul fast float %6421, %5091
  %6437 = fadd fast float %6422, %6436
  %6438 = call float @dx.op.unary.f32(i32 7, float %6437)  ; Saturate(value)
  %6439 = fmul fast float %6435, %6438
  br label %6440

; <label>:6440                                    ; preds = %6412, %6292
  %6441 = phi float [ %6439, %6412 ], [ 0.000000e+00, %6292 ]
  %6442 = fsub fast float 1.000000e+00, %6441
  %6443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %41, float %6162, float %6163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6444 = extractvalue %dx.types.ResRet.f32 %6443, 0
  %6445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6446 = extractvalue %dx.types.CBufRet.i32 %6445, 2
  %6447 = icmp eq i32 %6446, 0
  br i1 %6447, label %6453, label %6448

; <label>:6448                                    ; preds = %6440
  %6449 = call float @dx.op.unary.f32(i32 7, float %6441)  ; Saturate(value)
  %6450 = fadd fast float %6444, -1.000000e+00
  %6451 = fmul fast float %6449, %6450
  %6452 = fadd fast float %6451, 1.000000e+00
  br label %6453

; <label>:6453                                    ; preds = %6448, %6440
  %6454 = phi float [ %6452, %6448 ], [ %6442, %6440 ]
  br i1 %6216, label %6455, label %6473

; <label>:6455                                    ; preds = %6453
  %6456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6457 = extractvalue %dx.types.CBufRet.f32 %6456, 1
  %6458 = fsub fast float %6293, %6457
  %6459 = call float @dx.op.unary.f32(i32 7, float %6458)  ; Saturate(value)
  %6460 = fsub fast float %6293, %6215
  %6461 = call float @dx.op.unary.f32(i32 7, float %6460)  ; Saturate(value)
  %6462 = fsub fast float %6459, %6461
  %6463 = fsub fast float %6295, %6461
  %6464 = fdiv fast float %6463, %6462
  %6465 = call float @dx.op.unary.f32(i32 7, float %6464)  ; Saturate(value)
  %6466 = fmul fast float %6465, 2.000000e+00
  %6467 = fsub fast float 3.000000e+00, %6466
  %6468 = fsub fast float %6444, %6454
  %6469 = fmul fast float %6465, %6465
  %6470 = fmul fast float %6469, %6468
  %6471 = fmul fast float %6470, %6467
  %6472 = fadd fast float %6471, %6454
  br label %6473

; <label>:6473                                    ; preds = %6455, %6453
  %6474 = phi float [ %6472, %6455 ], [ %6454, %6453 ]
  %6475 = call float @dx.op.binary.f32(i32 35, float %6444, float %6474)  ; FMax(a,b)
  %6476 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %6477 = extractvalue %dx.types.CBufRet.i32 %6476, 2
  %6478 = and i32 %6477, 1
  %6479 = icmp eq i32 %6478, 0
  %6480 = fcmp fast une float %6475, 1.000000e+00
  %6481 = and i1 %6480, %6479
  br i1 %6481, label %6482, label %6501

; <label>:6482                                    ; preds = %6473
  %6483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %41, float %6162, float %6163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6484 = extractvalue %dx.types.ResRet.f32 %6483, 0
  %6485 = extractvalue %dx.types.ResRet.f32 %6483, 1
  %6486 = extractvalue %dx.types.ResRet.f32 %6483, 2
  %6487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6488 = extractvalue %dx.types.CBufRet.f32 %6487, 1
  %6489 = fmul fast float %6488, %6484
  %6490 = fmul fast float %6488, %6485
  %6491 = fmul fast float %6488, %6486
  %6492 = fcmp fast ogt float %6444, 0x3FEFFF2E40000000
  %6493 = fsub fast float 1.000000e+00, %6475
  %6494 = fsub fast float 1.000000e+00, %6444
  %6495 = fdiv fast float %6493, %6494
  %6496 = call float @dx.op.unary.f32(i32 7, float %6495)  ; Saturate(value)
  %6497 = select i1 %6492, float 0.000000e+00, float %6496
  %6498 = fmul fast float %6489, %6497
  %6499 = fmul fast float %6490, %6497
  %6500 = fmul fast float %6491, %6497
  br label %6501

; <label>:6501                                    ; preds = %6482, %6473
  %6502 = phi float [ 0.000000e+00, %6473 ], [ %6498, %6482 ]
  %6503 = phi float [ 0.000000e+00, %6473 ], [ %6499, %6482 ]
  %6504 = phi float [ 0.000000e+00, %6473 ], [ %6500, %6482 ]
  %6505 = fmul fast float %6502, %5087
  %6506 = fmul fast float %6503, %5088
  %6507 = fmul fast float %6504, %5089
  %6508 = fmul fast float %6475, %6137
  %6509 = call float @dx.op.dot3.f32(i32 55, float %6475, float %6475, float %6475, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6510 = call float @dx.op.dot3.f32(i32 55, float %6505, float %6506, float %6507, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6511 = select i1 %228, float %6509, float %6475
  %6512 = select i1 %228, float 1.000000e+00, float %6475
  %6513 = select i1 %228, float %6510, float %6505
  %6514 = select i1 %228, float 0.000000e+00, float %6506
  %6515 = select i1 %228, float 0.000000e+00, float %6507
  %6516 = fmul fast float %6511, %6149
  %6517 = fmul fast float %6511, %6150
  %6518 = fmul fast float %6512, %6151
  %6519 = fadd fast float %6516, %6513
  %6520 = fadd fast float %6517, %6514
  %6521 = fadd fast float %6515, %6518
  %6522 = fmul fast float %6511, %6152
  %6523 = fmul fast float %6511, %6153
  %6524 = fmul fast float %6512, %6154
  br label %6525

; <label>:6525                                    ; preds = %6501, %6158, %6127, %5359
  %6526 = phi float [ %5364, %5359 ], [ %6149, %6127 ], [ %6519, %6501 ], [ %6149, %6158 ]
  %6527 = phi float [ %5365, %5359 ], [ %6150, %6127 ], [ %6520, %6501 ], [ %6150, %6158 ]
  %6528 = phi float [ %5366, %5359 ], [ %6151, %6127 ], [ %6521, %6501 ], [ %6151, %6158 ]
  %6529 = phi float [ %5367, %5359 ], [ %6152, %6127 ], [ %6522, %6501 ], [ %6152, %6158 ]
  %6530 = phi float [ %5368, %5359 ], [ %6153, %6127 ], [ %6523, %6501 ], [ %6153, %6158 ]
  %6531 = phi float [ %5369, %5359 ], [ %6154, %6127 ], [ %6524, %6501 ], [ %6154, %6158 ]
  %6532 = phi float [ %5370, %5359 ], [ %6137, %6127 ], [ %6508, %6501 ], [ %6137, %6158 ]
  %6533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6534 = extractvalue %dx.types.CBufRet.f32 %6533, 2
  %6535 = extractvalue %dx.types.CBufRet.f32 %6533, 3
  %6536 = fmul fast float %6534, %80
  %6537 = fmul fast float %6535, %81
  %6538 = call float @dx.op.unary.f32(i32 7, float %6536)  ; Saturate(value)
  %6539 = call float @dx.op.unary.f32(i32 7, float %6537)  ; Saturate(value)
  %6540 = select i1 %5101, i32 2, i32 0
  %6541 = or i32 %6540, 1
  %6542 = uitofp i32 %6541 to float
  %6543 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %41, float %6538, float %6539, float %6542, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6544 = extractvalue %dx.types.ResRet.f32 %6543, 0
  %6545 = extractvalue %dx.types.ResRet.f32 %6543, 1
  %6546 = extractvalue %dx.types.ResRet.f32 %6543, 2
  %6547 = extractvalue %dx.types.ResRet.f32 %6543, 3
  %6548 = add nuw nsw i32 %6540, 2
  %6549 = uitofp i32 %6548 to float
  %6550 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %41, float %6538, float %6539, float %6549, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6551 = extractvalue %dx.types.ResRet.f32 %6550, 0
  %6552 = extractvalue %dx.types.ResRet.f32 %6550, 1
  %6553 = extractvalue %dx.types.ResRet.f32 %6550, 2
  %6554 = extractvalue %dx.types.ResRet.f32 %6550, 3
  %6555 = call float @dx.op.binary.f32(i32 35, float %6545, float %6546)  ; FMax(a,b)
  %6556 = call float @dx.op.binary.f32(i32 35, float %6544, float %6555)  ; FMax(a,b)
  %6557 = call float @dx.op.binary.f32(i32 35, float %6556, float %6547)  ; FMax(a,b)
  %6558 = call float @dx.op.binary.f32(i32 36, float %6552, float %6553)  ; FMin(a,b)
  %6559 = call float @dx.op.binary.f32(i32 36, float %6551, float %6558)  ; FMin(a,b)
  %6560 = call float @dx.op.binary.f32(i32 36, float %6559, float %6554)  ; FMin(a,b)
  %6561 = fmul fast float %6557, 2.550000e+02
  %6562 = fadd fast float %6561, 0x3F70101020000000
  %6563 = fptoui float %6562 to i32
  %6564 = fmul fast float %6560, 2.550000e+02
  %6565 = fadd fast float %6564, 0x3F70101020000000
  %6566 = fptoui float %6565 to i32
  %6567 = icmp ult i32 %6563, %6566
  br i1 %6567, label %6568, label %6737

; <label>:6568                                    ; preds = %6525
  %6569 = fcmp fast ogt float %67, 9.843750e-01
  %6570 = fadd fast float %5363, -4.000000e+00
  %6571 = select i1 %6569, float -4.000000e+00, float %6570
  %6572 = call float @dx.op.binary.f32(i32 35, float %6571, float 0.000000e+00)  ; FMax(a,b)
  %6573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6574 = extractvalue %dx.types.CBufRet.f32 %6573, 0
  %6575 = fadd fast float %6574, %6572
  %6576 = extractvalue %dx.types.CBufRet.f32 %6573, 2
  %6577 = fmul fast float %6575, %6576
  %6578 = call float @dx.op.unary.f32(i32 23, float %6577)  ; Log(value)
  %6579 = extractvalue %dx.types.CBufRet.f32 %6573, 3
  %6580 = fmul fast float %6579, %6578
  %6581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6582 = extractvalue %dx.types.CBufRet.f32 %6581, 2
  %6583 = fmul fast float %6580, %6582
  %6584 = call float @dx.op.unary.f32(i32 7, float %6583)  ; Saturate(value)
  %6585 = uitofp i32 %6563 to float
  %6586 = uitofp i32 %6566 to float
  %6587 = fadd fast float %6585, 5.000000e-01
  %6588 = fadd fast float %6586, 5.000000e-01
  %6589 = fmul fast float %6582, %6587
  %6590 = fmul fast float %6582, %6588
  %6591 = fadd fast float %6589, 0x3F0FFB4800000000
  %6592 = fadd fast float %6590, 0xBF0FFB4800000000
  %6593 = call float @dx.op.binary.f32(i32 35, float %6584, float %6591)  ; FMax(a,b)
  %6594 = call float @dx.op.binary.f32(i32 36, float %6593, float %6592)  ; FMin(a,b)
  %6595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6596 = extractvalue %dx.types.CBufRet.f32 %6595, 1
  %6597 = extractvalue %dx.types.CBufRet.f32 %6595, 2
  %6598 = extractvalue %dx.types.CBufRet.f32 %6595, 0
  %6599 = select i1 %5101, float %6598, float 0.000000e+00
  %6600 = fmul fast float %6596, %6594
  %6601 = fadd fast float %6599, %6600
  %6602 = fadd fast float %6599, %6597
  %6603 = fsub fast float %6596, %6597
  %6604 = fadd fast float %6603, %6599
  %6605 = call float @dx.op.binary.f32(i32 35, float %6601, float %6602)  ; FMax(a,b)
  %6606 = call float @dx.op.binary.f32(i32 36, float %6605, float %6604)  ; FMin(a,b)
  %6607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %6538, float %6539, float %6606, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6608 = extractvalue %dx.types.ResRet.f32 %6607, 0
  %6609 = extractvalue %dx.types.ResRet.f32 %6607, 1
  %6610 = extractvalue %dx.types.ResRet.f32 %6607, 2
  %6611 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6612 = extractvalue %dx.types.CBufRet.i32 %6611, 0
  %6613 = extractvalue %dx.types.CBufRet.i32 %6611, 1
  %6614 = uitofp i32 %6612 to float
  %6615 = uitofp i32 %6613 to float
  %6616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6617 = extractvalue %dx.types.CBufRet.f32 %6616, 0
  %6618 = extractvalue %dx.types.CBufRet.f32 %6616, 1
  %6619 = fmul fast float %6614, %6538
  %6620 = fmul fast float %6615, %6539
  %6621 = fadd fast float %6619, -5.000000e-01
  %6622 = fadd fast float %6620, -5.000000e-01
  %6623 = call float @dx.op.unary.f32(i32 22, float %6621)  ; Frc(value)
  %6624 = call float @dx.op.unary.f32(i32 22, float %6622)  ; Frc(value)
  %6625 = fmul fast float %6623, %6623
  %6626 = fmul fast float %6625, %6623
  %6627 = fsub fast float 3.000000e+00, %6623
  %6628 = fmul fast float %6625, %6627
  %6629 = fmul fast float %6623, 3.000000e+00
  %6630 = fmul fast float %6626, 3.000000e+00
  %6631 = fmul fast float %6625, 6.000000e+00
  %6632 = fsub fast float %6630, %6631
  %6633 = fadd fast float %6632, 4.000000e+00
  %6634 = fmul fast float %6633, 0x3FC5555560000000
  %6635 = fmul fast float %6626, -3.000000e+00
  %6636 = fadd fast float %6625, %6623
  %6637 = fmul fast float %6636, 3.000000e+00
  %6638 = fadd fast float %6635, 1.000000e+00
  %6639 = fadd fast float %6638, %6637
  %6640 = fmul fast float %6626, 0x3FC5555560000000
  %6641 = fmul fast float %6624, %6624
  %6642 = fmul fast float %6641, %6624
  %6643 = fsub fast float 3.000000e+00, %6624
  %6644 = fmul fast float %6641, %6643
  %6645 = fmul fast float %6624, 3.000000e+00
  %6646 = fmul fast float %6642, 3.000000e+00
  %6647 = fmul fast float %6641, 6.000000e+00
  %6648 = fsub fast float %6646, %6647
  %6649 = fadd fast float %6648, 4.000000e+00
  %6650 = fmul fast float %6649, 0x3FC5555560000000
  %6651 = fmul fast float %6642, -3.000000e+00
  %6652 = fadd fast float %6641, %6624
  %6653 = fmul fast float %6652, 3.000000e+00
  %6654 = fadd fast float %6651, 1.000000e+00
  %6655 = fadd fast float %6654, %6653
  %6656 = fmul fast float %6642, 0x3FC5555560000000
  %6657 = fadd fast float %6623, 1.000000e+00
  %6658 = fsub fast float 1.000000e+00, %6629
  %6659 = fadd fast float %6658, %6628
  %6660 = fadd fast float %6659, %6633
  %6661 = fmul fast float %6660, 0x3FC5555560000000
  %6662 = fdiv fast float %6634, %6661
  %6663 = fsub fast float %6657, %6662
  %6664 = fsub fast float 1.000000e+00, %6623
  %6665 = fadd fast float %6639, %6626
  %6666 = fmul fast float %6665, 0x3FC5555560000000
  %6667 = fdiv fast float %6640, %6666
  %6668 = fadd fast float %6664, %6667
  %6669 = fadd fast float %6624, 1.000000e+00
  %6670 = fsub fast float 1.000000e+00, %6645
  %6671 = fadd fast float %6670, %6644
  %6672 = fadd fast float %6671, %6649
  %6673 = fmul fast float %6672, 0x3FC5555560000000
  %6674 = fdiv fast float %6650, %6673
  %6675 = fsub fast float %6669, %6674
  %6676 = fsub fast float 1.000000e+00, %6624
  %6677 = fadd fast float %6655, %6642
  %6678 = fmul fast float %6677, 0x3FC5555560000000
  %6679 = fdiv fast float %6656, %6678
  %6680 = fadd fast float %6679, %6676
  %6681 = fmul fast float %6663, %6617
  %6682 = fsub fast float %6538, %6681
  %6683 = fmul fast float %6668, %6617
  %6684 = fadd fast float %6683, %6538
  %6685 = fmul fast float %6680, %6618
  %6686 = fadd fast float %6685, %6539
  %6687 = fmul fast float %6675, %6618
  %6688 = fsub fast float %6539, %6687
  %6689 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %6682, float %6688, float %6606, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6690 = extractvalue %dx.types.ResRet.f32 %6689, 0
  %6691 = extractvalue %dx.types.ResRet.f32 %6689, 1
  %6692 = extractvalue %dx.types.ResRet.f32 %6689, 2
  %6693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %6684, float %6688, float %6606, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6694 = extractvalue %dx.types.ResRet.f32 %6693, 0
  %6695 = extractvalue %dx.types.ResRet.f32 %6693, 1
  %6696 = extractvalue %dx.types.ResRet.f32 %6693, 2
  %6697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %6682, float %6686, float %6606, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6698 = extractvalue %dx.types.ResRet.f32 %6697, 0
  %6699 = extractvalue %dx.types.ResRet.f32 %6697, 1
  %6700 = extractvalue %dx.types.ResRet.f32 %6697, 2
  %6701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %6684, float %6686, float %6606, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6702 = extractvalue %dx.types.ResRet.f32 %6701, 0
  %6703 = extractvalue %dx.types.ResRet.f32 %6701, 1
  %6704 = extractvalue %dx.types.ResRet.f32 %6701, 2
  %6705 = fsub fast float %6698, %6690
  %6706 = fsub fast float %6699, %6691
  %6707 = fsub fast float %6700, %6692
  %6708 = fmul fast float %6705, %6678
  %6709 = fmul fast float %6706, %6678
  %6710 = fmul fast float %6707, %6678
  %6711 = fadd fast float %6708, %6690
  %6712 = fadd fast float %6709, %6691
  %6713 = fadd fast float %6710, %6692
  %6714 = fsub fast float %6702, %6694
  %6715 = fsub fast float %6703, %6695
  %6716 = fsub fast float %6704, %6696
  %6717 = fmul fast float %6714, %6678
  %6718 = fmul fast float %6715, %6678
  %6719 = fmul fast float %6716, %6678
  %6720 = fsub fast float %6694, %6711
  %6721 = fadd fast float %6720, %6717
  %6722 = fsub fast float %6695, %6712
  %6723 = fadd fast float %6722, %6718
  %6724 = fsub fast float %6696, %6713
  %6725 = fadd fast float %6724, %6719
  %6726 = fmul fast float %6721, %6666
  %6727 = fmul fast float %6723, %6666
  %6728 = fmul fast float %6725, %6666
  %6729 = fadd fast float %6726, %6711
  %6730 = fadd fast float %6727, %6712
  %6731 = fadd fast float %6728, %6713
  %6732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6733 = extractvalue %dx.types.CBufRet.f32 %6732, 1
  %6734 = fmul fast float %6729, %6733
  %6735 = fmul fast float %6730, %6733
  %6736 = fmul fast float %6731, %6733
  br label %6737

; <label>:6737                                    ; preds = %6568, %6525
  %6738 = phi float [ %6608, %6568 ], [ 1.000000e+00, %6525 ]
  %6739 = phi float [ %6609, %6568 ], [ 1.000000e+00, %6525 ]
  %6740 = phi float [ %6610, %6568 ], [ 1.000000e+00, %6525 ]
  %6741 = phi float [ %6734, %6568 ], [ 0.000000e+00, %6525 ]
  %6742 = phi float [ %6735, %6568 ], [ 0.000000e+00, %6525 ]
  %6743 = phi float [ %6736, %6568 ], [ 0.000000e+00, %6525 ]
  %6744 = fmul fast float %6741, %5087
  %6745 = fmul fast float %6742, %5088
  %6746 = fmul fast float %6743, %5089
  %6747 = fmul fast float %6738, %6532
  %6748 = call float @dx.op.dot3.f32(i32 55, float %6738, float %6739, float %6740, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6749 = call float @dx.op.dot3.f32(i32 55, float %6744, float %6745, float %6746, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6750 = select i1 %228, float %6748, float %6738
  %6751 = select i1 %228, float %6748, float %6739
  %6752 = select i1 %228, float 1.000000e+00, float %6740
  %6753 = select i1 %228, float %6749, float %6744
  %6754 = select i1 %228, float 0.000000e+00, float %6745
  %6755 = select i1 %228, float 0.000000e+00, float %6746
  %6756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6757 = extractvalue %dx.types.CBufRet.i32 %6756, 3
  %6758 = and i32 %6757, 3
  %6759 = icmp ne i32 %6758, 0
  %6760 = and i32 %6757, 4
  %6761 = icmp ne i32 %6760, 0
  %6762 = and i1 %6759, %6761
  %6763 = and i1 %228, %6762
  br i1 %6763, label %6764, label %6770

; <label>:6764                                    ; preds = %6737
  %6765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6766 = extractvalue %dx.types.CBufRet.f32 %6765, 1
  %6767 = fadd fast float %6747, -1.000000e+00
  %6768 = fmul fast float %6766, %6767
  %6769 = fadd fast float %6768, 1.000000e+00
  br label %6770

; <label>:6770                                    ; preds = %6764, %6737
  %6771 = phi float [ %6769, %6764 ], [ %6747, %6737 ]
  %6772 = fadd fast float %6529, %6526
  %6773 = fmul fast float %6750, %6772
  %6774 = fadd fast float %6773, %6753
  %6775 = fadd fast float %6530, %6527
  %6776 = fmul fast float %6751, %6775
  %6777 = fadd fast float %6776, %6754
  %6778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6779 = extractvalue %dx.types.CBufRet.f32 %6778, 0
  br i1 %228, label %6780, label %6795

; <label>:6780                                    ; preds = %6770
  %6781 = fadd fast float %6774, %6777
  %6782 = fmul fast float %6779, %6781
  %6783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %6784 = extractvalue %dx.types.CBufRet.f32 %6783, 3
  %6785 = extractvalue %dx.types.CBufRet.f32 %5071, 1
  %6786 = fsub fast float %5076, %5070
  %6787 = fadd fast float %6786, %5077
  %6788 = fsub fast float %6787, %6785
  %6789 = extractvalue %dx.types.CBufRet.f32 %5071, 2
  %6790 = fmul fast float %6788, %6789
  %6791 = call float @dx.op.unary.f32(i32 7, float %6790)  ; Saturate(value)
  %6792 = fsub fast float %6791, %6784
  %6793 = fmul fast float %6792, %6771
  %6794 = fadd fast float %6793, %6784
  br label %6820

; <label>:6795                                    ; preds = %6770
  %6796 = fadd fast float %6531, %6528
  %6797 = fmul fast float %6752, %6796
  %6798 = fadd fast float %6797, %6755
  %6799 = fmul fast float %6779, %6774
  %6800 = fmul fast float %6779, %6777
  %6801 = fmul fast float %6779, %6798
  %6802 = call float @dx.op.binary.f32(i32 35, float %6800, float %6801)  ; FMax(a,b)
  %6803 = call float @dx.op.binary.f32(i32 35, float %6799, float %6802)  ; FMax(a,b)
  %6804 = call float @dx.op.binary.f32(i32 35, float %5088, float %5089)  ; FMax(a,b)
  %6805 = call float @dx.op.binary.f32(i32 35, float %5087, float %6804)  ; FMax(a,b)
  %6806 = call float @dx.op.binary.f32(i32 35, float %6803, float %6805)  ; FMax(a,b)
  %6807 = fcmp fast ugt float %6806, 0x3F10000000000000
  br i1 %6807, label %6809, label %6808

; <label>:6808                                    ; preds = %6795
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %6809

; <label>:6809                                    ; preds = %6808, %6795
  %6810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %6811 = extractvalue %dx.types.ResRet.i32 %6810, 0
  %6812 = and i32 %6811, 32
  %6813 = icmp eq i32 %6812, 0
  br i1 %6813, label %6820, label %6814

; <label>:6814                                    ; preds = %6809
  %6815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6816 = extractvalue %dx.types.CBufRet.f32 %6815, 0
  %6817 = fmul fast float %6816, 0x3FE99999A0000000
  %6818 = fadd fast float %6816, %6799
  %6819 = fadd fast float %6817, %6801
  br label %6820

; <label>:6820                                    ; preds = %6814, %6809, %6780
  %6821 = phi float [ 1.000000e+00, %6780 ], [ %5088, %6814 ], [ %5088, %6809 ]
  %6822 = phi float [ 1.000000e+00, %6780 ], [ %5089, %6814 ], [ %5089, %6809 ]
  %6823 = phi float [ %6782, %6780 ], [ %6818, %6814 ], [ %6799, %6809 ]
  %6824 = phi float [ %6794, %6780 ], [ %6800, %6814 ], [ %6800, %6809 ]
  %6825 = phi float [ 1.000000e+00, %6780 ], [ %6819, %6814 ], [ %6801, %6809 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6826 = call float @dx.op.binary.f32(i32 36, float %6823, float 3.225500e+04)  ; FMin(a,b)
  %6827 = call float @dx.op.binary.f32(i32 36, float %6824, float 3.225500e+04)  ; FMin(a,b)
  %6828 = call float @dx.op.binary.f32(i32 36, float %6825, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6826)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6827)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6828)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %6829 = call float @dx.op.binary.f32(i32 36, float %5087, float 3.225500e+04)  ; FMin(a,b)
  %6830 = call float @dx.op.binary.f32(i32 36, float %6821, float 3.225500e+04)  ; FMin(a,b)
  %6831 = call float @dx.op.binary.f32(i32 36, float %6822, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %6829)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %6830)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %6831)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!59 = !{[27 x i32] [i32 25, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119]}
!60 = !{void ()* @ps_main, !"ps_main", !61, !4, !80}
!61 = !{!62, !76, null}
!62 = !{!63, !66, !68, !70, !71, !72, !73, !75}
!63 = !{i32 0, !"SV_Position", i8 9, i8 3, !64, i8 4, i32 1, i8 4, i32 0, i8 0, !65}
!64 = !{i32 0}
!65 = !{i32 3, i32 15}
!66 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !64, i8 2, i32 1, i8 2, i32 1, i8 0, !67}
!67 = !{i32 3, i32 3}
!68 = !{i32 2, !"NORMAL", i8 9, i8 0, !64, i8 2, i32 1, i8 3, i32 2, i8 0, !69}
!69 = !{i32 3, i32 7}
!70 = !{i32 3, !"TANGENT", i8 9, i8 0, !64, i8 2, i32 1, i8 4, i32 3, i8 0, !65}
!71 = !{i32 4, !"AMBIENT_COLOR", i8 9, i8 0, !64, i8 2, i32 1, i8 3, i32 4, i8 0, !69}
!72 = !{i32 5, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !64, i8 2, i32 1, i8 4, i32 5, i8 0, !65}
!73 = !{i32 6, !"SV_IsFrontFace", i8 5, i8 13, !64, i8 1, i32 1, i8 1, i32 6, i8 0, !74}
!74 = !{i32 3, i32 1}
!75 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !64, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!76 = !{!77, !78}
!77 = !{i32 0, !"SV_Target", i8 9, i8 16, !64, i8 0, i32 1, i8 4, i32 0, i8 0, !65}
!78 = !{i32 1, !"SV_Target", i8 9, i8 16, !79, i8 0, i32 1, i8 4, i32 1, i8 0, !65}
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

