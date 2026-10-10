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
; shader hash: b2b5c254e46a08190d7fda0465fd4657
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
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3             t0     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     f32          2d      T5     t69,space2     1
;                                   texture    byte         r/o      T6     t16,space1     1
;                                   texture    byte         r/o      T7     t17,space1     1
;                                   texture    byte         r/o      T8      t3,space1     1
;                                   texture    byte         r/o      T9      t4,space1     1
;                                   texture    byte         r/o     T10      t5,space1     1
;                                   texture    byte         r/o     T11      t6,space1     1
;                                   texture     f32          2d     T12     t37,space2     1
;                                   texture     f32          2d     T13             t1     1
;                                   texture     f32          2d     T14     t58,space2     1
;                                   texture     f32          2d     T15     t59,space2     1
;                                   texture     f32          2d     T16     t60,space2     1
;                                   texture    byte         r/o     T17     t45,space1     1
;                                   texture    byte         r/o     T18     t46,space1     1
;                                   texture    byte         r/o     T19     t47,space1     1
;                                   texture    byte         r/o     T20     t48,space1     1
;                                   texture     f32          2d     T21     t57,space2     1
;                                   texture    byte         r/o     T22     t69,space1     1
;                                   texture     u32          2d     T23     t56,space2     1
;                                   texture     f32     2darray     T24     t35,space2     1
;                                   texture     f32          2d     T25     t34,space2     1
;                                   texture     f32          3d     T26     t31,space2     1
;                                   texture    byte         r/o     T27     t10,space1     1
;                                   texture    byte         r/o     T28      t1,space1     1
;                                   texture     f32          1d     T29     t32,space2     1
;                                   texture     f32     2darray     T30      t8,space2     1
;                                   texture     f32          2d     T31      t2,space2     1
;                                   texture     f32          2d     T32      t3,space2     1
;                                   texture     f32          2d     T33      t4,space2     1
;                                   textureunorm_f32     2darray     T34     t80,space2     1
;                                   texture    byte         r/o     T35     t67,space1     1
;                                   texture     f32          2d     T36      t7,space2     1
;                                   texture     f32          2d     T37      t6,space2     1
;                                   texture     f32          2d     T38      t5,space2     1
;                                   texture     f32          2d     T39     t38,space2     1
;                                   texture    byte         r/o     T40     t12,space1     1
;                                   texture    byte         r/o     T41     t13,space1     1
;                                   texture     f32          1d     T42     t30,space2     1
;                                   texture     f32          3d     T43     t44,space2     1
;                                   texture     f32          3d     T44     t45,space2     1
;                                   texture     f32     2darray     T45     t47,space2     1
;                                   textureunorm_f32     2darray     T46     t85,space2     1
;                                   texture     f32          2d     T47     t83,space2     1
;                                   texture     f32          2d     T48     t86,space2     1
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
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
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

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = alloca [4 x i32], align 4
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = icmp ne i32 %56, 0
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = alloca [12 x float], align 4
  %84 = alloca [12 x float], align 4
  %85 = alloca [4 x float], align 4
  %86 = alloca [4 x float], align 4
  %87 = alloca [4 x float], align 4
  %88 = alloca [3 x float], align 4
  %89 = alloca [3 x float], align 4
  %90 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %91 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = fmul fast float %93, %79
  %95 = fmul fast float %93, %80
  %96 = select i1 %57, float 1.000000e+00, float -1.000000e+00
  %97 = fmul fast float %74, %96
  %98 = fmul fast float %75, %96
  %99 = fmul fast float %76, %96
  %100 = fmul fast float %75, %72
  %101 = fmul fast float %76, %71
  %102 = fsub fast float %100, %101
  %103 = fmul fast float %76, %70
  %104 = fmul fast float %74, %72
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %74, %71
  %107 = fmul fast float %75, %70
  %108 = fsub fast float %106, %107
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %112 = fmul fast float %110, 2.000000e+00
  %113 = fmul fast float %112, %94
  %114 = fmul fast float %111, 2.000000e+00
  %115 = fmul fast float %114, %95
  %116 = fsub fast float 1.000000e+00, %113
  %117 = fsub fast float 1.000000e+00, %115
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = fmul fast float %116, %119
  %123 = fmul fast float %116, %120
  %124 = fmul fast float %116, %121
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %129 = fmul fast float %117, %126
  %130 = fmul fast float %117, %127
  %131 = fmul fast float %117, %128
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %136 = fadd fast float %129, %133
  %137 = fadd fast float %136, %122
  %138 = fadd fast float %130, %134
  %139 = fadd fast float %138, %123
  %140 = fadd fast float %131, %135
  %141 = fadd fast float %140, %124
  %142 = fmul fast float %137, %82
  %143 = fmul fast float %139, %82
  %144 = fmul fast float %141, %82
  %145 = fmul fast float %94, 5.000000e-01
  %146 = fmul fast float %95, 5.000000e-01
  %147 = fptosi float %145 to i32
  %148 = fptosi float %146 to i32
  %149 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %147, i32 %148, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %150 = extractvalue %dx.types.ResRet.i32 %149, 0
  %151 = lshr i32 %150, 18
  %152 = uitofp i32 %151 to float
  %153 = fmul fast float %152, 0x3F4C00EBA0000000
  %154 = call float @dx.op.unary.f32(i32 21, float %153)  ; Exp(value)
  %155 = fadd fast float %154, -1.000000e+00
  %156 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %157 = extractvalue %dx.types.Dimensions %156, 0
  %158 = sitofp i32 %157 to float
  %159 = extractvalue %dx.types.Dimensions %156, 1
  %160 = sitofp i32 %159 to float
  %161 = fcmp fast oge float %145, %158
  %162 = fcmp fast oge float %146, %160
  %163 = or i1 %161, %162
  %164 = select i1 %163, float 0x4197782600000000, float %155
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 3
  %168 = fmul fast float %166, %94
  %169 = fmul fast float %167, %95
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = and i32 %171, 114688
  %173 = icmp ne i32 %172, 0
  %174 = select i1 %173, float %168, float 0.000000e+00
  %175 = select i1 %173, float %169, float 0.000000e+00
  %176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %51, float %174, float %175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = fmul fast float %177, 2.550000e+02
  %179 = fptoui float %178 to i32
  %180 = select i1 %173, i32 %179, i32 0
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.i32 %182, 3
  %184 = and i32 %183, 3
  %185 = icmp ne i32 %184, 0
  %186 = and i32 %183, 4
  %187 = icmp ne i32 %186, 0
  %188 = and i1 %185, %187
  br i1 %188, label %189, label %200

; <label>:189                                     ; preds = %0
  %190 = extractvalue %dx.types.CBufRet.f32 %181, 3
  %191 = fmul fast float %190, %95
  %192 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %193 = fmul fast float %192, %94
  %194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %193, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %195 = extractvalue %dx.types.ResRet.f32 %194, 0
  %196 = fsub fast float 1.000000e+00, %195
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 0
  %199 = fcmp fast olt float %196, %198
  br label %203

; <label>:200                                     ; preds = %0
  %201 = icmp eq i32 %186, 0
  %202 = and i1 %185, %201
  br label %203

; <label>:203                                     ; preds = %200, %189
  %204 = phi i1 [ %199, %189 ], [ %202, %200 ]
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %207 = fmul fast float %206, 0x3FE3C6EF40000000
  %208 = frem fast float %94, 2.560000e+02
  %209 = frem fast float %95, 2.560000e+02
  %210 = fptoui float %208 to i32
  %211 = fptoui float %209 to i32
  %212 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %210, i32 %211, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = fadd fast float %213, %207
  %215 = call float @dx.op.unary.f32(i32 22, float %214)  ; Frc(value)
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = shl i32 %217, 4
  %219 = and i32 %218, 32752
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = lshr i32 %217, 7
  %222 = and i32 %221, 32752
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %217, 22
  %225 = shl nuw nsw i32 %224, 5
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 255
  %230 = uitofp i32 %229 to float
  %231 = fmul fast float %230, 0x3F70101020000000
  %232 = lshr i32 %228, 8
  %233 = and i32 %232, 255
  %234 = uitofp i32 %233 to float
  %235 = fmul fast float %234, 0x3F70101020000000
  %236 = lshr i32 %228, 16
  %237 = and i32 %236, 255
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3F70101020000000
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = and i32 %241, 65535
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %241, 16
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = and i32 %247, 65535
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %247, 16
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = fmul fast float %249, 0x3F50624DE0000000
  %253 = fmul fast float %251, 0x3F50624DE0000000
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = and i32 %255, 2
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %265, label %258

; <label>:258                                     ; preds = %203
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = add i32 %260, 0
  %262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %262, %dx.types.Handle %91, float %77, float %78, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 3
  br label %265

; <label>:265                                     ; preds = %258, %203
  %266 = phi float [ 1.000000e+00, %203 ], [ %264, %258 ]
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = or i32 %270, %268
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %886, label %273

; <label>:273                                     ; preds = %265
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = lshr i32 %275, 16
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = fmul fast float %277, 0x3F50624DE0000000
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = lshr i32 %280, 16
  %282 = and i32 %281, 255
  %283 = lshr i32 %280, 24
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 65535
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %285, 16
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = lshr i32 %291, 22
  %293 = shl nuw nsw i32 %292, 5
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = shl i32 %291, 4
  %296 = and i32 %295, 32752
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %291, 7
  %299 = and i32 %298, 32752
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 3
  %303 = fmul fast float %302, 1.000000e+03
  %304 = fmul fast float %252, %303
  %305 = call float @dx.op.unary.f32(i32 22, float %304)  ; Frc(value)
  %306 = fadd fast float %305, %243
  %307 = fmul fast float %253, %303
  %308 = call float @dx.op.unary.f32(i32 22, float %307)  ; Frc(value)
  %309 = fadd fast float %308, %245
  %310 = fmul fast float %278, %303
  %311 = call float @dx.op.unary.f32(i32 22, float %310)  ; Frc(value)
  %312 = fmul fast float %311, 0x401921FB60000000
  %313 = fadd fast float %312, %294
  %314 = call float @dx.op.unary.f32(i32 13, float %313)  ; Sin(value)
  %315 = call float @dx.op.unary.f32(i32 12, float %313)  ; Cos(value)
  %316 = fsub fast float -0.000000e+00, %314
  %317 = fadd fast float %77, -5.000000e-01
  %318 = fadd fast float %78, -5.000000e-01
  %319 = fmul fast float %287, %317
  %320 = fmul fast float %289, %318
  %321 = fadd fast float %319, 5.000000e-01
  %322 = fadd fast float %320, 5.000000e-01
  %323 = fmul fast float %297, %321
  %324 = fmul fast float %300, %322
  %325 = fmul fast float %315, %323
  %326 = call float @dx.op.tertiary.f32(i32 46, float %316, float %324, float %325)  ; FMad(a,b,c)
  %327 = fmul fast float %314, %323
  %328 = call float @dx.op.tertiary.f32(i32 46, float %315, float %324, float %327)  ; FMad(a,b,c)
  %329 = fadd fast float %306, %326
  %330 = fadd fast float %309, %328
  %331 = icmp ugt i32 %282, 1
  %332 = icmp ugt i32 %280, 33554431
  %333 = or i1 %332, %331
  br i1 %333, label %334, label %358

; <label>:334                                     ; preds = %273
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = lshr i32 %336, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = fmul fast float %302, %338
  %340 = call float @dx.op.unary.f32(i32 22, float %339)  ; Frc(value)
  %341 = mul nuw nsw i32 %282, %283
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %340, %342
  %344 = call float @dx.op.unary.f32(i32 27, float %343)  ; Round_ni(value)
  %345 = fptoui float %344 to i32
  %346 = urem i32 %345, %282
  %347 = udiv i32 %345, %283
  %348 = call float @dx.op.unary.f32(i32 22, float %329)  ; Frc(value)
  %349 = call float @dx.op.unary.f32(i32 22, float %330)  ; Frc(value)
  %350 = uitofp i32 %346 to float
  %351 = uitofp i32 %347 to float
  %352 = fadd fast float %348, %350
  %353 = fadd fast float %349, %351
  %354 = uitofp i32 %282 to float
  %355 = uitofp i32 %283 to float
  %356 = fdiv fast float %352, %354
  %357 = fdiv fast float %353, %355
  br label %358

; <label>:358                                     ; preds = %334, %273
  %359 = phi float [ %356, %334 ], [ %329, %273 ]
  %360 = phi float [ %357, %334 ], [ %330, %273 ]
  %361 = and i32 %268, 256
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %407, label %363

; <label>:363                                     ; preds = %358
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = add i32 %365, 0
  %367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %368 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %367, %dx.types.Handle %91, float %359, float %360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = shl i32 %371, 4
  %373 = and i32 %372, 32752
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %371, 7
  %376 = and i32 %375, 32752
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = fsub fast float 1.000000e+00, %266
  %379 = call float @dx.op.binary.f32(i32 35, float %378, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %380 = bitcast float %266 to i32
  %381 = sitofp i32 %380 to float
  %382 = fadd fast float %381, 0xC1CFBF8940000000
  %383 = fmul fast float %377, %382
  %384 = fadd fast float %383, 0x41CFBF8940000000
  %385 = fptosi float %384 to i32
  %386 = bitcast i32 %385 to float
  %387 = bitcast float %379 to i32
  %388 = sitofp i32 %387 to float
  %389 = fadd fast float %388, 0xC1CFBF8940000000
  %390 = fmul fast float %389, %377
  %391 = fadd fast float %390, 0x41CFBF8940000000
  %392 = fptosi float %391 to i32
  %393 = bitcast i32 %392 to float
  %394 = fmul fast float %386, %374
  %395 = fmul fast float %393, %374
  %396 = fsub fast float %379, %394
  %397 = fadd fast float %395, %379
  %398 = call float @dx.op.unary.f32(i32 7, float %396)  ; Saturate(value)
  %399 = call float @dx.op.unary.f32(i32 7, float %397)  ; Saturate(value)
  %400 = fsub fast float %369, %398
  %401 = fsub fast float %399, %398
  %402 = bitcast float %401 to i32
  %403 = sub nsw i32 2129859010, %402
  %404 = bitcast i32 %403 to float
  %405 = fmul fast float %404, %400
  %406 = call float @dx.op.unary.f32(i32 7, float %405)  ; Saturate(value)
  br label %407

; <label>:407                                     ; preds = %363, %358
  %408 = phi float [ %406, %363 ], [ %266, %358 ]
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 128
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %428, label %413

; <label>:413                                     ; preds = %407
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = add i32 %415, 0
  %417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %416, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %418 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %417, %dx.types.Handle %91, float %359, float %360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, 524288
  %423 = icmp ne i32 %422, 0
  %424 = fcmp fast ogt float %419, 0x3FE0101020000000
  %425 = select i1 %424, float 1.000000e+00, float 0.000000e+00
  %426 = select i1 %423, float %425, float %419
  %427 = fmul fast float %426, %408
  br label %428

; <label>:428                                     ; preds = %413, %407
  %429 = phi float [ %427, %413 ], [ %408, %407 ]
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 16
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %627, label %434

; <label>:434                                     ; preds = %428
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = add i32 %438, 0
  %440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %439, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %441 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %440, %dx.types.Handle %90, float %359, float %360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = extractvalue %dx.types.ResRet.f32 %441, 1
  %444 = extractvalue %dx.types.ResRet.f32 %441, 2
  %445 = extractvalue %dx.types.ResRet.f32 %441, 3
  %446 = and i32 %436, 255
  %447 = uitofp i32 %446 to float
  %448 = lshr i32 %436, 8
  %449 = and i32 %448, 255
  %450 = uitofp i32 %449 to float
  %451 = fmul fast float %445, %447
  %452 = fadd fast float %451, %450
  %453 = fmul fast float %452, 0x3F70101000000000
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 512
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %465, label %458

; <label>:458                                     ; preds = %434
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = add i32 %460, 0
  %462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %463 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %462, %dx.types.Handle %91, float %359, float %360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  br label %465

; <label>:465                                     ; preds = %458, %434
  %466 = phi float [ %464, %458 ], [ 1.000000e+00, %434 ]
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = and i32 %468, 33554432
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %574, label %471

; <label>:471                                     ; preds = %465
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = and i32 %473, 65535
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = lshr i32 %473, 16
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 65535
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = lshr i32 %483, 24
  %485 = uitofp i32 %484 to float
  %486 = fmul fast float %485, 0x3F70101020000000
  %487 = and i32 %483, 255
  %488 = uitofp i32 %487 to float
  %489 = fmul fast float %488, 0x3F70101020000000
  %490 = lshr i32 %483, 8
  %491 = and i32 %490, 255
  %492 = uitofp i32 %491 to float
  %493 = fmul fast float %492, 0x3F70101020000000
  %494 = lshr i32 %483, 16
  %495 = and i32 %494, 255
  %496 = uitofp i32 %495 to float
  %497 = fmul fast float %496, 0x3F70101020000000
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = lshr i32 %499, 24
  %501 = uitofp i32 %500 to float
  %502 = fmul fast float %501, 0x3F70101020000000
  %503 = and i32 %499, 255
  %504 = uitofp i32 %503 to float
  %505 = fmul fast float %504, 0x3F70101020000000
  %506 = lshr i32 %499, 8
  %507 = and i32 %506, 255
  %508 = uitofp i32 %507 to float
  %509 = fmul fast float %508, 0x3F70101020000000
  %510 = lshr i32 %499, 16
  %511 = and i32 %510, 255
  %512 = uitofp i32 %511 to float
  %513 = fmul fast float %512, 0x3F70101020000000
  %514 = bitcast float %442 to i32
  %515 = ashr i32 %514, 1
  %516 = sub nsw i32 1597463174, %515
  %517 = bitcast i32 %516 to float
  %518 = fmul fast float %442, 5.000000e-01
  %519 = fmul fast float %517, %517
  %520 = fmul fast float %519, %518
  %521 = fsub fast float 1.500000e+00, %520
  %522 = fmul fast float %517, %442
  %523 = fmul fast float %522, %521
  %524 = bitcast float %443 to i32
  %525 = ashr i32 %524, 1
  %526 = sub nsw i32 1597463174, %525
  %527 = bitcast i32 %526 to float
  %528 = fmul fast float %443, 5.000000e-01
  %529 = fmul fast float %527, %527
  %530 = fmul fast float %529, %528
  %531 = fsub fast float 1.500000e+00, %530
  %532 = fmul fast float %527, %443
  %533 = fmul fast float %532, %531
  %534 = bitcast float %444 to i32
  %535 = ashr i32 %534, 1
  %536 = sub nsw i32 1597463174, %535
  %537 = bitcast i32 %536 to float
  %538 = fmul fast float %444, 5.000000e-01
  %539 = fmul fast float %537, %537
  %540 = fmul fast float %539, %538
  %541 = fsub fast float 1.500000e+00, %540
  %542 = fmul fast float %537, %444
  %543 = fmul fast float %542, %541
  %544 = fsub fast float %523, %505
  %545 = fsub fast float %533, %509
  %546 = fsub fast float %543, %513
  %547 = fmul fast float %544, %475
  %548 = fmul fast float %545, %477
  %549 = fmul fast float %546, %481
  %550 = fadd fast float %547, %489
  %551 = fadd fast float %548, %493
  %552 = fadd fast float %549, %497
  %553 = call float @dx.op.unary.f32(i32 7, float %550)  ; Saturate(value)
  %554 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  %555 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %556 = fmul fast float %553, %553
  %557 = fmul fast float %554, %554
  %558 = fmul fast float %555, %555
  %559 = fsub fast float %556, %442
  %560 = fsub fast float %557, %443
  %561 = fsub fast float %558, %444
  %562 = fmul fast float %559, %466
  %563 = fmul fast float %560, %466
  %564 = fmul fast float %561, %466
  %565 = fadd fast float %562, %442
  %566 = fadd fast float %563, %443
  %567 = fadd fast float %564, %444
  %568 = fadd fast float %486, %453
  %569 = fsub fast float %568, %502
  %570 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  %571 = fsub fast float %570, %453
  %572 = fmul fast float %571, %466
  %573 = fadd fast float %572, %453
  br label %627

; <label>:574                                     ; preds = %465
  %575 = and i32 %468, 134217728
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %611, label %577

; <label>:577                                     ; preds = %574
  %578 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %579 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %580 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %581 = fadd fast float %578, -5.000000e-01
  %582 = fadd fast float %579, -5.000000e-01
  %583 = fadd fast float %580, -5.000000e-01
  %584 = fmul fast float %581, %466
  %585 = fmul fast float %582, %466
  %586 = fmul fast float %583, %466
  %587 = fadd fast float %584, 5.000000e-01
  %588 = fadd fast float %585, 5.000000e-01
  %589 = fadd fast float %586, 5.000000e-01
  %590 = call float @dx.op.unary.f32(i32 24, float %442)  ; Sqrt(value)
  %591 = call float @dx.op.unary.f32(i32 24, float %443)  ; Sqrt(value)
  %592 = call float @dx.op.unary.f32(i32 24, float %444)  ; Sqrt(value)
  %593 = fmul fast float %587, 2.000000e+00
  %594 = fsub fast float 1.000000e+00, %593
  %595 = fmul fast float %594, %590
  %596 = fadd fast float %595, %593
  %597 = fmul fast float %596, %590
  %598 = fmul fast float %588, 2.000000e+00
  %599 = fsub fast float 1.000000e+00, %598
  %600 = fmul fast float %599, %591
  %601 = fadd fast float %600, %598
  %602 = fmul fast float %601, %591
  %603 = fmul fast float %589, 2.000000e+00
  %604 = fsub fast float 1.000000e+00, %603
  %605 = fmul fast float %604, %592
  %606 = fadd fast float %605, %603
  %607 = fmul fast float %606, %592
  %608 = fmul fast float %597, %597
  %609 = fmul fast float %602, %602
  %610 = fmul fast float %607, %607
  br label %627

; <label>:611                                     ; preds = %574
  %612 = fmul fast float %231, %231
  %613 = fmul fast float %235, %235
  %614 = fmul fast float %239, %239
  %615 = fadd fast float %612, -1.000000e+00
  %616 = fadd fast float %613, -1.000000e+00
  %617 = fadd fast float %614, -1.000000e+00
  %618 = fmul fast float %466, %615
  %619 = fmul fast float %466, %616
  %620 = fmul fast float %466, %617
  %621 = fadd fast float %618, 1.000000e+00
  %622 = fadd fast float %619, 1.000000e+00
  %623 = fadd fast float %620, 1.000000e+00
  %624 = fmul fast float %621, %442
  %625 = fmul fast float %622, %443
  %626 = fmul fast float %623, %444
  br label %627

; <label>:627                                     ; preds = %611, %577, %471, %428
  %628 = phi float [ %573, %471 ], [ %453, %577 ], [ %453, %611 ], [ 0x3FA23C0BE0000000, %428 ]
  %629 = phi float [ %565, %471 ], [ %608, %577 ], [ %624, %611 ], [ 1.000000e+00, %428 ]
  %630 = phi float [ %566, %471 ], [ %609, %577 ], [ %625, %611 ], [ 1.000000e+00, %428 ]
  %631 = phi float [ %567, %471 ], [ %610, %577 ], [ %626, %611 ], [ 1.000000e+00, %428 ]
  %632 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.i32 %632, 1
  %634 = and i32 %633, 1
  %635 = icmp ne i32 %634, 0
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = and i32 %637, 32
  %639 = icmp ne i32 %638, 0
  %640 = and i1 %635, %639
  %641 = select i1 %640, float 1.000000e+00, float %629
  %642 = select i1 %640, float 0x3FD3333340000000, float %630
  %643 = select i1 %640, float 0x3FD3333340000000, float %631
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = and i32 %645, 32
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %717, label %648

; <label>:648                                     ; preds = %627
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = add i32 %652, 0
  %654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %653, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %655 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %654, %dx.types.Handle %90, float %359, float %360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %656 = extractvalue %dx.types.ResRet.f32 %655, 0
  %657 = extractvalue %dx.types.ResRet.f32 %655, 1
  %658 = extractvalue %dx.types.ResRet.f32 %655, 2
  %659 = extractvalue %dx.types.ResRet.f32 %655, 3
  %660 = and i32 %650, 255
  %661 = uitofp i32 %660 to float
  %662 = lshr i32 %650, 8
  %663 = and i32 %662, 255
  %664 = uitofp i32 %663 to float
  %665 = lshr i32 %650, 16
  %666 = and i32 %665, 255
  %667 = uitofp i32 %666 to float
  %668 = fmul fast float %667, 0x3F70101000000000
  %669 = fmul fast float %656, %661
  %670 = fadd fast float %669, %664
  %671 = fmul fast float %670, 0x3F70101000000000
  %672 = fadd fast float %657, -5.000000e-01
  %673 = fadd fast float %659, -5.000000e-01
  %674 = fmul fast float %672, %668
  %675 = fmul fast float %673, %668
  %676 = fadd fast float %674, 5.000000e-01
  %677 = fadd fast float %675, 5.000000e-01
  %678 = fmul fast float %676, 2.000000e+00
  %679 = fadd fast float %678, -1.000000e+00
  %680 = fmul fast float %677, 2.000000e+00
  %681 = fadd fast float %680, -1.000000e+00
  %682 = fadd fast float %679, %681
  %683 = fmul fast float %682, 5.000000e-01
  %684 = fsub fast float %679, %681
  %685 = fmul fast float %684, 5.000000e-01
  %686 = call float @dx.op.unary.f32(i32 6, float %683)  ; FAbs(value)
  %687 = fsub fast float 1.000000e+00, %686
  %688 = call float @dx.op.unary.f32(i32 6, float %685)  ; FAbs(value)
  %689 = fsub fast float %687, %688
  %690 = call float @dx.op.dot3.f32(i32 55, float %683, float %685, float %689, float %683, float %685, float %689)  ; Dot3(ax,ay,az,bx,by,bz)
  %691 = call float @dx.op.unary.f32(i32 25, float %690)  ; Rsqrt(value)
  %692 = fmul fast float %683, %691
  %693 = fmul fast float %685, %691
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = and i32 %695, 67108864
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %713, label %698

; <label>:698                                     ; preds = %648
  %699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %700 = extractvalue %dx.types.ResRet.i32 %699, 0
  %701 = and i32 %700, 65535
  %702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %701)  ; LegacyF16ToF32(value)
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = and i32 %704, 65535
  %706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %705)  ; LegacyF16ToF32(value)
  %707 = lshr i32 %700, 16
  %708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %707)  ; LegacyF16ToF32(value)
  %709 = fsub fast float %671, %708
  %710 = fmul fast float %709, %702
  %711 = fadd fast float %710, %706
  %712 = call float @dx.op.unary.f32(i32 7, float %711)  ; Saturate(value)
  br label %713

; <label>:713                                     ; preds = %698, %648
  %714 = phi float [ %712, %698 ], [ %671, %648 ]
  %715 = call float @dx.op.dot2.f32(i32 54, float %692, float %693, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %716 = call float @dx.op.dot2.f32(i32 54, float %692, float %693, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %717

; <label>:717                                     ; preds = %713, %627
  %718 = phi float [ %714, %713 ], [ 0x3FD6666660000000, %627 ]
  %719 = phi float [ %715, %713 ], [ 0.000000e+00, %627 ]
  %720 = phi float [ %716, %713 ], [ 0.000000e+00, %627 ]
  %721 = phi float [ %658, %713 ], [ 1.000000e+00, %627 ]
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = lshr i32 %723, 22
  %725 = shl nuw nsw i32 %724, 5
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = and i32 %728, 64
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %763, label %731

; <label>:731                                     ; preds = %717
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = add i32 %733, 0
  %735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %734, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = and i32 %737, 131072
  %739 = icmp eq i32 %738, 0
  %740 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %735, %dx.types.Handle %90, float %359, float %360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = extractvalue %dx.types.ResRet.f32 %740, 1
  %743 = extractvalue %dx.types.ResRet.f32 %740, 2
  %744 = fmul fast float %741, %220
  %745 = fmul fast float %742, %223
  %746 = fmul fast float %743, %226
  br i1 %739, label %753, label %747

; <label>:747                                     ; preds = %731
  %748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %749 = extractvalue %dx.types.CBufRet.f32 %748, 0
  %750 = fmul fast float %749, %744
  %751 = fmul fast float %749, %745
  %752 = fmul fast float %749, %746
  br label %753

; <label>:753                                     ; preds = %747, %731
  %754 = phi float [ %750, %747 ], [ %744, %731 ]
  %755 = phi float [ %751, %747 ], [ %745, %731 ]
  %756 = phi float [ %752, %747 ], [ %746, %731 ]
  %757 = fmul fast float %754, %726
  %758 = select i1 %204, float %757, float %754
  %759 = call float @dx.op.dot3.f32(i32 55, float %758, float %755, float %756, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %760 = select i1 %204, float 0.000000e+00, float %754
  %761 = select i1 %204, float %759, float %755
  %762 = select i1 %204, float 0.000000e+00, float %756
  br label %763

; <label>:763                                     ; preds = %753, %717
  %764 = phi float [ %760, %753 ], [ 0.000000e+00, %717 ]
  %765 = phi float [ %761, %753 ], [ 0.000000e+00, %717 ]
  %766 = phi float [ %762, %753 ], [ 0.000000e+00, %717 ]
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = and i32 %768, 1024
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %799, label %771

; <label>:771                                     ; preds = %763
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = and i32 %773, 255
  %775 = uitofp i32 %774 to float
  %776 = fmul fast float %775, 0x3F70101020000000
  %777 = lshr i32 %773, 8
  %778 = and i32 %777, 255
  %779 = uitofp i32 %778 to float
  %780 = fmul fast float %779, 0x3F70101020000000
  %781 = lshr i32 %773, 16
  %782 = and i32 %781, 255
  %783 = uitofp i32 %782 to float
  %784 = fmul fast float %783, 0x3F70101020000000
  %785 = fmul fast float %776, %776
  %786 = fmul fast float %780, %780
  %787 = fmul fast float %784, %784
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = add i32 %789, 0
  %791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %792 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %791, %dx.types.Handle %91, float %359, float %360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  %794 = extractvalue %dx.types.ResRet.f32 %792, 1
  %795 = extractvalue %dx.types.ResRet.f32 %792, 2
  %796 = fmul fast float %785, %793
  %797 = fmul fast float %786, %794
  %798 = fmul fast float %787, %795
  br label %799

; <label>:799                                     ; preds = %771, %763
  %800 = phi float [ %796, %771 ], [ 0.000000e+00, %763 ]
  %801 = phi float [ %797, %771 ], [ 0.000000e+00, %763 ]
  %802 = phi float [ %798, %771 ], [ 0.000000e+00, %763 ]
  %803 = fcmp fast ogt float %800, 0.000000e+00
  %804 = fcmp fast ogt float %801, 0.000000e+00
  %805 = fcmp fast ogt float %802, 0.000000e+00
  %806 = call float @dx.op.unary.f32(i32 23, float %800)  ; Log(value)
  %807 = call float @dx.op.unary.f32(i32 23, float %801)  ; Log(value)
  %808 = call float @dx.op.unary.f32(i32 23, float %802)  ; Log(value)
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = lshr i32 %810, 7
  %812 = and i32 %811, 32752
  %813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %812)  ; LegacyF16ToF32(value)
  %814 = fmul fast float %806, 0xBFE62E4300000000
  %815 = fmul fast float %814, %813
  %816 = fmul fast float %807, 0xBFE62E4300000000
  %817 = fmul fast float %816, %813
  %818 = fmul fast float %808, 0xBFE62E4300000000
  %819 = fmul fast float %818, %813
  %820 = select i1 %803, float %815, float 1.270000e+02
  %821 = select i1 %804, float %817, float 1.270000e+02
  %822 = select i1 %805, float %819, float 1.270000e+02
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = and i32 %824, 10240
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %869, label %827

; <label>:827                                     ; preds = %799
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = add i32 %829, 0
  %831 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %830, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %832 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %831, %dx.types.Handle %91, float %359, float %360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %833 = extractvalue %dx.types.ResRet.f32 %832, 1
  %834 = extractvalue %dx.types.ResRet.f32 %832, 3
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = and i32 %836, 1048576
  %838 = icmp ne i32 %837, 0
  %839 = and i32 %836, 8192
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %855, label %841

; <label>:841                                     ; preds = %827
  %842 = extractvalue %dx.types.ResRet.f32 %832, 2
  %843 = select i1 %838, float %842, float %833
  %844 = extractvalue %dx.types.ResRet.f32 %832, 0
  %845 = select i1 %838, float %844, float %833
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = lshr i32 %847, 16
  %849 = and i32 %848, 255
  %850 = uitofp i32 %849 to float
  %851 = fmul fast float %850, 0x3F80101020000000
  %852 = fmul fast float %851, %845
  %853 = fmul fast float %851, %833
  %854 = fmul fast float %851, %843
  br label %855

; <label>:855                                     ; preds = %841, %827
  %856 = phi float [ %852, %841 ], [ 0.000000e+00, %827 ]
  %857 = phi float [ %853, %841 ], [ 0.000000e+00, %827 ]
  %858 = phi float [ %854, %841 ], [ 0.000000e+00, %827 ]
  %859 = and i32 %836, 2048
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %869, label %861

; <label>:861                                     ; preds = %855
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = shl i32 %863, 4
  %865 = and i32 %864, 32752
  %866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %865)  ; LegacyF16ToF32(value)
  %867 = fmul fast float %866, %834
  %868 = call float @dx.op.binary.f32(i32 35, float %867, float 0x3F70101020000000)  ; FMax(a,b)
  br label %869

; <label>:869                                     ; preds = %861, %855, %799
  %870 = phi float [ %856, %861 ], [ %856, %855 ], [ 0.000000e+00, %799 ]
  %871 = phi float [ %857, %861 ], [ %857, %855 ], [ 0.000000e+00, %799 ]
  %872 = phi float [ %858, %861 ], [ %858, %855 ], [ 0.000000e+00, %799 ]
  %873 = phi float [ %868, %861 ], [ 0x3F70101020000000, %855 ], [ 0x3F70101020000000, %799 ]
  %874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.i32 %874, 0
  %876 = and i32 %875, 255
  %877 = uitofp i32 %876 to float
  %878 = lshr i32 %875, 8
  %879 = and i32 %878, 255
  %880 = uitofp i32 %879 to float
  %881 = call float @dx.op.dot3.f32(i32 55, float %641, float %642, float %643, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %882 = fmul fast float %880, %881
  %883 = fadd fast float %882, %877
  %884 = fmul fast float %883, 0x3F70101020000000
  %885 = call float @dx.op.unary.f32(i32 7, float %884)  ; Saturate(value)
  br label %886

; <label>:886                                     ; preds = %869, %265
  %887 = phi float [ 0.000000e+00, %265 ], [ %719, %869 ]
  %888 = phi float [ 0.000000e+00, %265 ], [ %720, %869 ]
  %889 = phi float [ 0.000000e+00, %265 ], [ %641, %869 ]
  %890 = phi float [ 0.000000e+00, %265 ], [ %642, %869 ]
  %891 = phi float [ 0.000000e+00, %265 ], [ %643, %869 ]
  %892 = phi float [ 0.000000e+00, %265 ], [ %764, %869 ]
  %893 = phi float [ 0.000000e+00, %265 ], [ %765, %869 ]
  %894 = phi float [ 0.000000e+00, %265 ], [ %766, %869 ]
  %895 = phi float [ 0.000000e+00, %265 ], [ %870, %869 ]
  %896 = phi float [ 0.000000e+00, %265 ], [ %871, %869 ]
  %897 = phi float [ 0.000000e+00, %265 ], [ %872, %869 ]
  %898 = phi float [ 0.000000e+00, %265 ], [ %820, %869 ]
  %899 = phi float [ 0.000000e+00, %265 ], [ %821, %869 ]
  %900 = phi float [ 0.000000e+00, %265 ], [ %822, %869 ]
  %901 = phi float [ 0.000000e+00, %265 ], [ %628, %869 ]
  %902 = phi float [ 0.000000e+00, %265 ], [ %429, %869 ]
  %903 = phi float [ 0.000000e+00, %265 ], [ %718, %869 ]
  %904 = phi float [ 0.000000e+00, %265 ], [ %721, %869 ]
  %905 = phi float [ 0.000000e+00, %265 ], [ %873, %869 ]
  %906 = phi float [ 0.000000e+00, %265 ], [ %885, %869 ]
  %907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.i32 %907, 0
  %909 = bitcast i32 %908 to float
  %910 = fcmp fast oge float %909, 0.000000e+00
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %913 = select i1 %910, float %909, float %912
  %914 = call float @dx.op.dot2.f32(i32 54, float %887, float %888, float %887, float %888)  ; Dot2(ax,ay,bx,by)
  %915 = fmul fast float %914, 0x3FE3333340000000
  %916 = fsub fast float 1.000000e+00, %915
  %917 = call float @dx.op.dot3.f32(i32 55, float %887, float %888, float %916, float %887, float %888, float %916)  ; Dot3(ax,ay,az,bx,by,bz)
  %918 = call float @dx.op.unary.f32(i32 25, float %917)  ; Rsqrt(value)
  %919 = fmul fast float %918, %887
  %920 = fmul fast float %918, %888
  %921 = fmul fast float %916, %918
  %922 = fmul fast float %921, %97
  %923 = fmul fast float %921, %98
  %924 = fmul fast float %921, %99
  %925 = fmul fast float %919, %70
  %926 = fmul fast float %919, %71
  %927 = fmul fast float %919, %72
  %928 = fmul fast float %102, %73
  %929 = fmul fast float %928, %920
  %930 = fmul fast float %105, %73
  %931 = fmul fast float %930, %920
  %932 = fmul fast float %108, %73
  %933 = fmul fast float %932, %920
  %934 = fadd fast float %929, %925
  %935 = fmul fast float %934, %96
  %936 = fadd fast float %935, %922
  %937 = fadd fast float %931, %926
  %938 = fmul fast float %937, %96
  %939 = fadd fast float %938, %923
  %940 = fadd fast float %933, %927
  %941 = fmul fast float %940, %96
  %942 = fadd fast float %941, %924
  %943 = call float @dx.op.dot3.f32(i32 55, float %936, float %939, float %942, float %936, float %939, float %942)  ; Dot3(ax,ay,az,bx,by,bz)
  %944 = call float @dx.op.unary.f32(i32 25, float %943)  ; Rsqrt(value)
  %945 = fmul fast float %936, %944
  %946 = fmul fast float %939, %944
  %947 = fmul fast float %942, %944
  %948 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %949 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %950 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %951 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %952 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %953 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %954 = fadd fast float %948, %142
  %955 = fadd fast float %949, %143
  %956 = fadd fast float %950, %144
  %957 = fadd fast float %951, %142
  %958 = fadd fast float %952, %143
  %959 = fadd fast float %953, %144
  %960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.f32 %960, 0
  %962 = extractvalue %dx.types.CBufRet.f32 %960, 1
  %963 = extractvalue %dx.types.CBufRet.f32 %960, 2
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 2
  %966 = extractvalue %dx.types.CBufRet.f32 %964, 3
  %967 = fmul fast float %961, %94
  %968 = fmul fast float %967, %965
  %969 = fmul fast float %962, %95
  %970 = fmul fast float %969, %966
  %971 = fptoui float %968 to i32
  %972 = fptoui float %970 to i32
  %973 = fadd fast float %961, -1.000000e+00
  %974 = fadd fast float %962, -1.000000e+00
  %975 = fptoui float %973 to i32
  %976 = fptoui float %974 to i32
  %977 = call i32 @dx.op.binary.i32(i32 40, i32 %971, i32 %975)  ; UMin(a,b)
  %978 = call i32 @dx.op.binary.i32(i32 40, i32 %972, i32 %976)  ; UMin(a,b)
  %979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %980 = extractvalue %dx.types.CBufRet.f32 %979, 2
  %981 = extractvalue %dx.types.CBufRet.f32 %979, 3
  %982 = fmul fast float %980, %82
  %983 = fsub fast float %982, %981
  %984 = fadd fast float %963, -1.000000e+00
  %985 = call float @dx.op.binary.f32(i32 36, float %983, float %984)  ; FMin(a,b)
  %986 = fptoui float %985 to i32
  %987 = fptoui float %961 to i32
  %988 = fptoui float %962 to i32
  %989 = mul i32 %986, %988
  %990 = add i32 %989, %978
  %991 = mul i32 %990, %987
  %992 = add i32 %991, %977
  %993 = shl i32 %992, 2
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = and i32 %995, 1023
  %997 = lshr i32 %995, 10
  %998 = icmp eq i32 %996, 0
  br i1 %998, label %1502, label %999

; <label>:999                                     ; preds = %886
  %1000 = and i32 %995, 1023
  br label %1001

; <label>:1001                                    ; preds = %1133, %999
  %1002 = phi i32 [ %1083, %1133 ], [ 0, %999 ]
  %1003 = phi float [ %1134, %1133 ], [ 0.000000e+00, %999 ]
  %1004 = phi float [ %1135, %1133 ], [ %913, %999 ]
  %1005 = phi float [ %1136, %1133 ], [ %906, %999 ]
  %1006 = phi float [ %1137, %1133 ], [ %898, %999 ]
  %1007 = phi float [ %1138, %1133 ], [ %899, %999 ]
  %1008 = phi float [ %1139, %1133 ], [ %900, %999 ]
  %1009 = phi float [ %1140, %1133 ], [ 0.000000e+00, %999 ]
  %1010 = phi float [ %1141, %1133 ], [ 0.000000e+00, %999 ]
  %1011 = phi float [ %1142, %1133 ], [ %895, %999 ]
  %1012 = phi float [ %1143, %1133 ], [ %896, %999 ]
  %1013 = phi float [ %1144, %1133 ], [ %897, %999 ]
  %1014 = phi float [ %1145, %1133 ], [ %892, %999 ]
  %1015 = phi float [ %1146, %1133 ], [ %893, %999 ]
  %1016 = phi float [ %1147, %1133 ], [ %894, %999 ]
  %1017 = phi float [ %1148, %1133 ], [ %945, %999 ]
  %1018 = phi float [ %1149, %1133 ], [ %946, %999 ]
  %1019 = phi float [ %1150, %1133 ], [ %947, %999 ]
  %1020 = phi float [ %1151, %1133 ], [ %904, %999 ]
  %1021 = phi float [ %1152, %1133 ], [ %903, %999 ]
  %1022 = phi float [ %1153, %1133 ], [ 0.000000e+00, %999 ]
  %1023 = phi float [ %1154, %1133 ], [ %901, %999 ]
  %1024 = phi float [ %1155, %1133 ], [ %889, %999 ]
  %1025 = phi float [ %1156, %1133 ], [ %890, %999 ]
  %1026 = phi float [ %1157, %1133 ], [ %891, %999 ]
  %1027 = add nuw nsw i32 %1002, %997
  %1028 = shl i32 %1027, 2
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = shl i32 %1030, 8
  %1032 = or i32 %1031, 48
  %1033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.ResRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.ResRet.f32 %1033, 2
  %1037 = extractvalue %dx.types.ResRet.f32 %1033, 3
  %1038 = or i32 %1031, 64
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = extractvalue %dx.types.ResRet.i32 %1039, 1
  %1042 = or i32 %1031, 80
  %1043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.f32 %1043, 2
  %1045 = extractvalue %dx.types.ResRet.f32 %1043, 3
  %1046 = or i32 %1031, 96
  %1047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.ResRet.f32 %1047, 1
  %1050 = extractvalue %dx.types.ResRet.f32 %1047, 2
  %1051 = extractvalue %dx.types.ResRet.f32 %1047, 3
  %1052 = or i32 %1031, 112
  %1053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.f32 %1053, 2
  %1055 = or i32 %1031, 128
  %1056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1058 = extractvalue %dx.types.ResRet.f32 %1056, 1
  %1059 = extractvalue %dx.types.ResRet.f32 %1056, 2
  %1060 = extractvalue %dx.types.ResRet.f32 %1056, 3
  %1061 = or i32 %1031, 144
  %1062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.ResRet.f32 %1062, 1
  %1065 = extractvalue %dx.types.ResRet.f32 %1062, 2
  %1066 = extractvalue %dx.types.ResRet.f32 %1062, 3
  %1067 = or i32 %1031, 160
  %1068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.f32 %1068, 0
  %1070 = extractvalue %dx.types.ResRet.f32 %1068, 1
  %1071 = extractvalue %dx.types.ResRet.f32 %1068, 2
  %1072 = extractvalue %dx.types.ResRet.f32 %1068, 3
  %1073 = or i32 %1031, 192
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = or i32 %1031, 208
  %1077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.f32 %1077, 0
  %1079 = or i32 %1031, 248
  %1080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = extractvalue %dx.types.ResRet.f32 %1080, 1
  %1083 = add nuw nsw i32 %1002, 1
  %1084 = bitcast float %1037 to i32
  %1085 = and i32 %1084, 512
  %1086 = icmp eq i32 %1085, 0
  %1087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.f32 %1087, 0
  %1089 = extractvalue %dx.types.ResRet.f32 %1087, 1
  %1090 = extractvalue %dx.types.ResRet.f32 %1087, 2
  %1091 = extractvalue %dx.types.ResRet.f32 %1087, 3
  %1092 = call float @dx.op.dot4.f32(i32 56, float %1088, float %1089, float %1090, float %1091, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1093 = or i32 %1031, 16
  %1094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.f32 %1094, 0
  %1096 = extractvalue %dx.types.ResRet.f32 %1094, 1
  %1097 = extractvalue %dx.types.ResRet.f32 %1094, 2
  %1098 = extractvalue %dx.types.ResRet.f32 %1094, 3
  %1099 = call float @dx.op.dot4.f32(i32 56, float %1095, float %1096, float %1097, float %1098, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1100 = or i32 %1031, 32
  %1101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.f32 %1101, 0
  %1103 = extractvalue %dx.types.ResRet.f32 %1101, 1
  %1104 = extractvalue %dx.types.ResRet.f32 %1101, 2
  %1105 = extractvalue %dx.types.ResRet.f32 %1101, 3
  %1106 = call float @dx.op.dot4.f32(i32 56, float %1102, float %1103, float %1104, float %1105, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1107 = call float @dx.op.unary.f32(i32 27, float %1092)  ; Round_ni(value)
  %1108 = call float @dx.op.unary.f32(i32 6, float %1107)  ; FAbs(value)
  %1109 = call float @dx.op.unary.f32(i32 27, float %1099)  ; Round_ni(value)
  %1110 = call float @dx.op.unary.f32(i32 6, float %1109)  ; FAbs(value)
  %1111 = call float @dx.op.unary.f32(i32 6, float %1106)  ; FAbs(value)
  %1112 = call float @dx.op.unary.f32(i32 27, float %1111)  ; Round_ni(value)
  %1113 = fadd fast float %1110, %1108
  %1114 = fadd fast float %1113, %1112
  %1115 = fcmp fast oeq float %1114, 0.000000e+00
  %1116 = call float @dx.op.dot4.f32(i32 56, float %1088, float %1089, float %1090, float %1091, float %954, float %955, float %956, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1117 = call float @dx.op.dot4.f32(i32 56, float %1095, float %1096, float %1097, float %1098, float %954, float %955, float %956, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1118 = call float @dx.op.dot4.f32(i32 56, float %1088, float %1089, float %1090, float %1091, float %957, float %958, float %959, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1119 = call float @dx.op.dot4.f32(i32 56, float %1095, float %1096, float %1097, float %1098, float %957, float %958, float %959, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1120 = fsub fast float %1116, %1092
  %1121 = fsub fast float %1118, %1092
  %1122 = fsub fast float %1117, %1099
  %1123 = fsub fast float %1119, %1099
  %1124 = call float @dx.op.dot3.f32(i32 55, float %1034, float %1035, float %1036, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 2
  %1127 = fadd fast float %1126, %1124
  %1128 = call float @dx.op.unary.f32(i32 7, float %1127)  ; Saturate(value)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1125, 0
  %1130 = fcmp fast ogt float %1128, %1129
  %1131 = and i1 %1115, %1130
  %1132 = and i1 %1086, %1131
  br i1 %1132, label %1159, label %1133

; <label>:1133                                    ; preds = %1488, %1240, %1159, %1001
  %1134 = phi float [ %1003, %1159 ], [ %1243, %1240 ], [ %1243, %1488 ], [ %1003, %1001 ]
  %1135 = phi float [ %1004, %1159 ], [ %1004, %1240 ], [ %1464, %1488 ], [ %1004, %1001 ]
  %1136 = phi float [ %1005, %1159 ], [ %1005, %1240 ], [ %1462, %1488 ], [ %1005, %1001 ]
  %1137 = phi float [ %1006, %1159 ], [ %1006, %1240 ], [ %1440, %1488 ], [ %1006, %1001 ]
  %1138 = phi float [ %1007, %1159 ], [ %1007, %1240 ], [ %1441, %1488 ], [ %1007, %1001 ]
  %1139 = phi float [ %1008, %1159 ], [ %1008, %1240 ], [ %1442, %1488 ], [ %1008, %1001 ]
  %1140 = phi float [ %1009, %1159 ], [ %1009, %1240 ], [ %1367, %1488 ], [ %1009, %1001 ]
  %1141 = phi float [ %1010, %1159 ], [ %1010, %1240 ], [ %1365, %1488 ], [ %1010, %1001 ]
  %1142 = phi float [ %1011, %1159 ], [ %1011, %1240 ], [ %1410, %1488 ], [ %1011, %1001 ]
  %1143 = phi float [ %1012, %1159 ], [ %1012, %1240 ], [ %1411, %1488 ], [ %1012, %1001 ]
  %1144 = phi float [ %1013, %1159 ], [ %1013, %1240 ], [ %1412, %1488 ], [ %1013, %1001 ]
  %1145 = phi float [ %1014, %1159 ], [ %1014, %1240 ], [ %1498, %1488 ], [ %1014, %1001 ]
  %1146 = phi float [ %1015, %1159 ], [ %1015, %1240 ], [ %1499, %1488 ], [ %1015, %1001 ]
  %1147 = phi float [ %1016, %1159 ], [ %1016, %1240 ], [ %1500, %1488 ], [ %1016, %1001 ]
  %1148 = phi float [ %1017, %1159 ], [ %1017, %1240 ], [ %1346, %1488 ], [ %1017, %1001 ]
  %1149 = phi float [ %1018, %1159 ], [ %1018, %1240 ], [ %1347, %1488 ], [ %1018, %1001 ]
  %1150 = phi float [ %1019, %1159 ], [ %1019, %1240 ], [ %1348, %1488 ], [ %1019, %1001 ]
  %1151 = phi float [ %1020, %1159 ], [ %1020, %1240 ], [ %1420, %1488 ], [ %1020, %1001 ]
  %1152 = phi float [ %1021, %1159 ], [ %1021, %1240 ], [ %1417, %1488 ], [ %1021, %1001 ]
  %1153 = phi float [ %1022, %1159 ], [ %1022, %1240 ], [ %1414, %1488 ], [ %1022, %1001 ]
  %1154 = phi float [ %1023, %1159 ], [ %1023, %1240 ], [ %1363, %1488 ], [ %1023, %1001 ]
  %1155 = phi float [ %1024, %1159 ], [ %1024, %1240 ], [ %1358, %1488 ], [ %1024, %1001 ]
  %1156 = phi float [ %1025, %1159 ], [ %1025, %1240 ], [ %1359, %1488 ], [ %1025, %1001 ]
  %1157 = phi float [ %1026, %1159 ], [ %1026, %1240 ], [ %1360, %1488 ], [ %1026, %1001 ]
  %1158 = icmp eq i32 %1083, %1000
  br i1 %1158, label %1501, label %1001

; <label>:1159                                    ; preds = %1001
  %1160 = extractvalue %dx.types.ResRet.f32 %1053, 3
  %1161 = extractvalue %dx.types.ResRet.f32 %1053, 1
  %1162 = extractvalue %dx.types.ResRet.f32 %1053, 0
  %1163 = extractvalue %dx.types.ResRet.f32 %1043, 1
  %1164 = extractvalue %dx.types.ResRet.f32 %1043, 0
  %1165 = extractvalue %dx.types.ResRet.i32 %1039, 3
  %1166 = extractvalue %dx.types.ResRet.i32 %1039, 2
  %1167 = add i32 %1165, 0
  %1168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1167, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1170 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1168, %dx.types.Handle %1169, float %1092, float %1099, float undef, float undef, i32 0, i32 0, i32 undef, float %1120, float %1122, float undef, float %1121, float %1123, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = fmul fast float %1171, %1164
  %1173 = fadd fast float %1172, %1163
  %1174 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1175 = fmul fast float %1092, %1048
  %1176 = call float @dx.op.tertiary.f32(i32 46, float %1049, float %1099, float %1175)  ; FMad(a,b,c)
  %1177 = fadd fast float %1176, %1162
  %1178 = fmul fast float %1092, %1050
  %1179 = call float @dx.op.tertiary.f32(i32 46, float %1051, float %1099, float %1178)  ; FMad(a,b,c)
  %1180 = fadd fast float %1179, %1161
  %1181 = fmul fast float %1120, %1048
  %1182 = call float @dx.op.tertiary.f32(i32 46, float %1049, float %1122, float %1181)  ; FMad(a,b,c)
  %1183 = fmul fast float %1120, %1050
  %1184 = call float @dx.op.tertiary.f32(i32 46, float %1051, float %1122, float %1183)  ; FMad(a,b,c)
  %1185 = fmul fast float %1121, %1048
  %1186 = call float @dx.op.tertiary.f32(i32 46, float %1049, float %1123, float %1185)  ; FMad(a,b,c)
  %1187 = fmul fast float %1121, %1050
  %1188 = call float @dx.op.tertiary.f32(i32 46, float %1051, float %1123, float %1187)  ; FMad(a,b,c)
  %1189 = add i32 %1166, 0
  %1190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1189, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1191 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1190, %dx.types.Handle %1169, float %1177, float %1180, float undef, float undef, i32 0, i32 0, i32 undef, float %1182, float %1184, float undef, float %1186, float %1188, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1192 = extractvalue %dx.types.ResRet.f32 %1191, 0
  %1193 = and i32 %1084, 1024
  %1194 = icmp ne i32 %1193, 0
  %1195 = fcmp fast ogt float %1192, 0x3FE0101020000000
  %1196 = uitofp i1 %1195 to float
  %1197 = select i1 %1194, float %1196, float %1192
  %1198 = and i32 %1084, 8192
  %1199 = icmp ne i32 %1198, 0
  %1200 = select i1 %1199, float %1160, float 1.000000e+00
  %1201 = fmul fast float %1092, 2.000000e+00
  %1202 = fadd fast float %1201, -1.000000e+00
  %1203 = call float @dx.op.unary.f32(i32 6, float %1202)  ; FAbs(value)
  %1204 = fmul fast float %1203, %1081
  %1205 = fsub fast float %1204, %1081
  %1206 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  %1207 = fmul fast float %1099, 2.000000e+00
  %1208 = fadd fast float %1207, -1.000000e+00
  %1209 = call float @dx.op.unary.f32(i32 6, float %1208)  ; FAbs(value)
  %1210 = fmul fast float %1209, %1082
  %1211 = fsub fast float %1210, %1082
  %1212 = call float @dx.op.unary.f32(i32 7, float %1211)  ; Saturate(value)
  %1213 = fmul fast float %1111, %1044
  %1214 = fsub fast float %1213, %1044
  %1215 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  %1216 = fmul fast float %1174, %1200
  %1217 = fmul fast float %1216, %1171
  %1218 = fmul fast float %1217, %1206
  %1219 = fmul fast float %1218, %1197
  %1220 = fmul fast float %1219, %1212
  %1221 = fmul fast float %1220, %1215
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 1
  %1224 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1225 = fsub fast float %1128, %1224
  %1226 = fmul fast float %1225, %1223
  %1227 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  %1228 = fmul fast float %1221, %1045
  %1229 = fadd fast float %1221, %1045
  %1230 = fmul fast float %1229, %1054
  %1231 = fsub fast float %1230, %1054
  %1232 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  %1233 = and i32 %1084, 128
  %1234 = icmp ne i32 %1233, 0
  %1235 = select i1 %1234, float %1232, float %1228
  %1236 = fmul fast float %1235, %1227
  %1237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1238 = extractvalue %dx.types.CBufRet.f32 %1237, 0
  %1239 = fcmp fast ugt float %1236, %1238
  br i1 %1239, label %1240, label %1133

; <label>:1240                                    ; preds = %1159
  %1241 = select i1 %1199, float %1236, float 0.000000e+00
  %1242 = fadd fast float %1241, %1003
  %1243 = call float @dx.op.unary.f32(i32 7, float %1242)  ; Saturate(value)
  br i1 %1199, label %1133, label %1244

; <label>:1244                                    ; preds = %1240
  %1245 = and i32 %1084, 4
  %1246 = and i32 %1084, 8
  %1247 = add i32 %1040, 0
  %1248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1247, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1250 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1248, %dx.types.Handle %1249, float %1177, float %1180, float undef, float undef, i32 0, i32 0, i32 undef, float %1182, float %1184, float undef, float %1186, float %1188, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.ResRet.f32 %1250, 1
  %1253 = extractvalue %dx.types.ResRet.f32 %1250, 2
  %1254 = extractvalue %dx.types.ResRet.f32 %1250, 3
  %1255 = bitcast float %1066 to i32
  %1256 = and i32 %1255, 255
  %1257 = uitofp i32 %1256 to float
  %1258 = lshr i32 %1255, 8
  %1259 = and i32 %1258, 255
  %1260 = uitofp i32 %1259 to float
  %1261 = fmul fast float %1254, %1257
  %1262 = fadd fast float %1261, %1260
  %1263 = fmul fast float %1262, 0x3F70101000000000
  %1264 = add i32 %1041, 0
  %1265 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1264, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1266 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1265, %dx.types.Handle %1249, float %1177, float %1180, float undef, float undef, i32 0, i32 0, i32 undef, float %1182, float %1184, float undef, float %1186, float %1188, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.ResRet.f32 %1266, 1
  %1269 = extractvalue %dx.types.ResRet.f32 %1266, 2
  %1270 = extractvalue %dx.types.ResRet.f32 %1266, 3
  %1271 = bitcast float %1060 to i32
  %1272 = and i32 %1271, 255
  %1273 = uitofp i32 %1272 to float
  %1274 = lshr i32 %1271, 8
  %1275 = and i32 %1274, 255
  %1276 = uitofp i32 %1275 to float
  %1277 = lshr i32 %1271, 16
  %1278 = and i32 %1277, 255
  %1279 = uitofp i32 %1278 to float
  %1280 = fmul fast float %1279, 0x3F70101000000000
  %1281 = fmul fast float %1267, %1273
  %1282 = fadd fast float %1281, %1276
  %1283 = fmul fast float %1282, 0x3F70101000000000
  %1284 = fadd fast float %1268, -5.000000e-01
  %1285 = fadd fast float %1270, -5.000000e-01
  %1286 = fmul fast float %1284, %1280
  %1287 = fmul fast float %1285, %1280
  %1288 = fadd fast float %1286, 5.000000e-01
  %1289 = fadd fast float %1287, 5.000000e-01
  %1290 = fmul fast float %1251, %1069
  %1291 = fmul fast float %1252, %1070
  %1292 = fmul fast float %1253, %1071
  %1293 = fmul fast float %1288, 2.000000e+00
  %1294 = fadd fast float %1293, -1.000000e+00
  %1295 = fmul fast float %1289, 2.000000e+00
  %1296 = fadd fast float %1295, -1.000000e+00
  %1297 = fadd fast float %1294, %1296
  %1298 = fmul fast float %1297, 5.000000e-01
  %1299 = fsub fast float %1294, %1296
  %1300 = fmul fast float %1299, 5.000000e-01
  %1301 = call float @dx.op.unary.f32(i32 6, float %1298)  ; FAbs(value)
  %1302 = fsub fast float 1.000000e+00, %1301
  %1303 = call float @dx.op.unary.f32(i32 6, float %1300)  ; FAbs(value)
  %1304 = fsub fast float %1302, %1303
  %1305 = call float @dx.op.dot3.f32(i32 55, float %1298, float %1300, float %1304, float %1298, float %1300, float %1304)  ; Dot3(ax,ay,az,bx,by,bz)
  %1306 = call float @dx.op.unary.f32(i32 25, float %1305)  ; Rsqrt(value)
  %1307 = fmul fast float %1298, %1306
  %1308 = fmul fast float %1300, %1306
  %1309 = fmul fast float %1306, %1304
  %1310 = fmul fast float %1309, %1034
  %1311 = fmul fast float %1309, %1035
  %1312 = fmul fast float %1309, %1036
  %1313 = fmul fast float %1307, %1057
  %1314 = fmul fast float %1307, %1058
  %1315 = fmul fast float %1307, %1059
  %1316 = fadd fast float %1313, %1310
  %1317 = fadd fast float %1314, %1311
  %1318 = fadd fast float %1315, %1312
  %1319 = fmul fast float %1308, %1063
  %1320 = fmul fast float %1308, %1064
  %1321 = fmul fast float %1308, %1065
  %1322 = fadd fast float %1316, %1319
  %1323 = fadd fast float %1317, %1320
  %1324 = fadd fast float %1318, %1321
  %1325 = call float @dx.op.dot3.f32(i32 55, float %1322, float %1323, float %1324, float %1322, float %1323, float %1324)  ; Dot3(ax,ay,az,bx,by,bz)
  %1326 = call float @dx.op.unary.f32(i32 25, float %1325)  ; Rsqrt(value)
  %1327 = fmul fast float %1322, %1326
  %1328 = fmul fast float %1323, %1326
  %1329 = fmul fast float %1324, %1326
  %1330 = icmp ne i32 %1246, 0
  %1331 = select i1 %1330, float 1.000000e+00, float 0.000000e+00
  %1332 = fmul fast float %1236, %1331
  %1333 = and i32 %1084, 1
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1335, label %1339

; <label>:1335                                    ; preds = %1244
  %1336 = fsub fast float %1327, %1017
  %1337 = fsub fast float %1328, %1018
  %1338 = fsub fast float %1329, %1019
  br label %1339

; <label>:1339                                    ; preds = %1335, %1244
  %1340 = phi float [ %1336, %1335 ], [ %1327, %1244 ]
  %1341 = phi float [ %1337, %1335 ], [ %1328, %1244 ]
  %1342 = phi float [ %1338, %1335 ], [ %1329, %1244 ]
  %1343 = fmul float %1342, %1332
  %1344 = fmul float %1341, %1332
  %1345 = fmul float %1340, %1332
  %1346 = fadd fast float %1345, %1017
  %1347 = fadd fast float %1344, %1018
  %1348 = fadd fast float %1343, %1019
  %1349 = icmp ne i32 %1245, 0
  %1350 = select i1 %1349, float 1.000000e+00, float 0.000000e+00
  %1351 = fmul fast float %1236, %1350
  %1352 = fsub fast float %1290, %1024
  %1353 = fsub fast float %1291, %1025
  %1354 = fsub fast float %1292, %1026
  %1355 = fmul fast float %1352, %1351
  %1356 = fmul fast float %1353, %1351
  %1357 = fmul fast float %1354, %1351
  %1358 = fadd fast float %1355, %1024
  %1359 = fadd fast float %1356, %1025
  %1360 = fadd fast float %1357, %1026
  %1361 = fsub fast float %1263, %1023
  %1362 = fmul fast float %1361, %1351
  %1363 = fadd fast float %1362, %1023
  %1364 = fmul fast float %1351, %1010
  %1365 = fsub fast float %1010, %1364
  %1366 = fmul fast float %1351, %1009
  %1367 = fsub fast float %1009, %1366
  %1368 = bitcast float %1078 to i32
  %1369 = lshr i32 %1368, 16
  %1370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1369)  ; LegacyF16ToF32(value)
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = and i32 %1372, 1
  %1374 = icmp eq i32 %1373, 0
  br i1 %1374, label %1375, label %1400

; <label>:1375                                    ; preds = %1339
  %1376 = fadd fast float %1263, 0xBFB99999A0000000
  %1377 = call float @dx.op.unary.f32(i32 7, float %1376)  ; Saturate(value)
  %1378 = fmul fast float %1377, 0x3FF1C71C80000000
  %1379 = fsub fast float 1.000000e+00, %1378
  %1380 = call float @dx.op.unary.f32(i32 7, float %1379)  ; Saturate(value)
  %1381 = fmul fast float %1380, %1290
  %1382 = fmul fast float %1380, %1291
  %1383 = fmul fast float %1380, %1292
  %1384 = call float @dx.op.unary.f32(i32 7, float %1381)  ; Saturate(value)
  %1385 = call float @dx.op.unary.f32(i32 7, float %1382)  ; Saturate(value)
  %1386 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  %1387 = call float @dx.op.binary.f32(i32 35, float %1385, float %1386)  ; FMax(a,b)
  %1388 = call float @dx.op.binary.f32(i32 35, float %1384, float %1387)  ; FMax(a,b)
  %1389 = fcmp fast ogt float %1388, 0.000000e+00
  %1390 = bitcast float %1388 to i32
  %1391 = sub nsw i32 2129859010, %1390
  %1392 = bitcast i32 %1391 to float
  %1393 = select i1 %1389, float %1392, float 0.000000e+00
  %1394 = fmul fast float %1384, %1370
  %1395 = fmul fast float %1385, %1370
  %1396 = fmul fast float %1386, %1370
  %1397 = fmul fast float %1394, %1393
  %1398 = fmul fast float %1395, %1393
  %1399 = fmul fast float %1396, %1393
  br label %1400

; <label>:1400                                    ; preds = %1375, %1339
  %1401 = phi float [ %1370, %1339 ], [ %1397, %1375 ]
  %1402 = phi float [ %1370, %1339 ], [ %1398, %1375 ]
  %1403 = phi float [ %1370, %1339 ], [ %1399, %1375 ]
  %1404 = fsub fast float %1401, %1011
  %1405 = fsub fast float %1402, %1012
  %1406 = fsub fast float %1403, %1013
  %1407 = fmul fast float %1404, %1351
  %1408 = fmul fast float %1405, %1351
  %1409 = fmul fast float %1406, %1351
  %1410 = fadd fast float %1407, %1011
  %1411 = fadd fast float %1408, %1012
  %1412 = fadd fast float %1409, %1013
  %1413 = fadd fast float %1236, %1022
  %1414 = call float @dx.op.unary.f32(i32 7, float %1413)  ; Saturate(value)
  %1415 = fsub fast float %1283, %1021
  %1416 = fmul fast float %1415, %1332
  %1417 = fadd fast float %1416, %1021
  %1418 = fsub fast float %1269, %1020
  %1419 = fmul fast float %1418, %1332
  %1420 = fadd fast float %1419, %1020
  br i1 %1334, label %1429, label %1421

; <label>:1421                                    ; preds = %1400
  %1422 = and i32 %1084, 32768
  %1423 = icmp eq i32 %1422, 0
  br i1 %1423, label %1439, label %1424

; <label>:1424                                    ; preds = %1421
  %1425 = fmul fast float %1332, 1.270000e+02
  %1426 = fadd fast float %1425, %1006
  %1427 = fadd fast float %1425, %1007
  %1428 = fadd fast float %1425, %1008
  br label %1439

; <label>:1429                                    ; preds = %1400
  %1430 = fsub fast float 1.270000e+02, %1006
  %1431 = fsub fast float 1.270000e+02, %1007
  %1432 = fsub fast float 1.270000e+02, %1008
  %1433 = fmul fast float %1332, %1430
  %1434 = fmul fast float %1332, %1431
  %1435 = fmul fast float %1332, %1432
  %1436 = fadd fast float %1433, %1006
  %1437 = fadd fast float %1434, %1007
  %1438 = fadd fast float %1435, %1008
  br label %1439

; <label>:1439                                    ; preds = %1429, %1424, %1421
  %1440 = phi float [ %1426, %1424 ], [ %1006, %1421 ], [ %1436, %1429 ]
  %1441 = phi float [ %1427, %1424 ], [ %1007, %1421 ], [ %1437, %1429 ]
  %1442 = phi float [ %1428, %1424 ], [ %1008, %1421 ], [ %1438, %1429 ]
  %1443 = call float @dx.op.dot3.f32(i32 55, float %1290, float %1291, float %1292, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1445 = extractvalue %dx.types.CBufRet.f32 %1444, 0
  %1446 = extractvalue %dx.types.CBufRet.f32 %1444, 1
  %1447 = fmul fast float %1446, %1443
  %1448 = fadd fast float %1447, %1445
  %1449 = call float @dx.op.unary.f32(i32 7, float %1448)  ; Saturate(value)
  %1450 = bitcast float %1072 to i32
  %1451 = and i32 %1450, 65535
  %1452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1451)  ; LegacyF16ToF32(value)
  %1453 = lshr i32 %1450, 16
  %1454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1453)  ; LegacyF16ToF32(value)
  %1455 = fcmp fast oge float %1452, 0.000000e+00
  %1456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.f32 %1456, 0
  %1458 = select i1 %1455, float %1452, float %1457
  %1459 = fadd fast float %1458, %1454
  %1460 = fsub fast float %1449, %1005
  %1461 = fmul fast float %1460, %1236
  %1462 = fadd fast float %1461, %1005
  %1463 = fmul fast float %1459, %1236
  %1464 = call float @dx.op.binary.f32(i32 35, float %1004, float %1463)  ; FMax(a,b)
  %1465 = and i32 %1084, 16
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1488, label %1467

; <label>:1467                                    ; preds = %1439
  %1468 = add i32 %1075, 0
  %1469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1468, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1470 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1469, %dx.types.Handle %1249, float %1177, float %1180, float undef, float undef, i32 0, i32 0, i32 undef, float %1182, float %1184, float undef, float %1186, float %1188, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1471 = extractvalue %dx.types.ResRet.f32 %1470, 0
  %1472 = extractvalue %dx.types.ResRet.f32 %1470, 1
  %1473 = extractvalue %dx.types.ResRet.f32 %1470, 2
  %1474 = and i32 %1368, 65535
  %1475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1474)  ; LegacyF16ToF32(value)
  %1476 = fmul fast float %1471, %1069
  %1477 = fmul fast float %1472, %1070
  %1478 = fmul fast float %1473, %1071
  %1479 = and i32 %1084, 16384
  %1480 = icmp ne i32 %1479, 0
  %1481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1482 = extractvalue %dx.types.CBufRet.f32 %1481, 0
  %1483 = select i1 %1480, float %1482, float 1.000000e+00
  %1484 = fmul fast float %1483, %1475
  %1485 = fmul fast float %1476, %1484
  %1486 = fmul fast float %1477, %1484
  %1487 = fmul fast float %1478, %1484
  br label %1488

; <label>:1488                                    ; preds = %1467, %1439
  %1489 = phi float [ %1485, %1467 ], [ 0.000000e+00, %1439 ]
  %1490 = phi float [ %1486, %1467 ], [ 0.000000e+00, %1439 ]
  %1491 = phi float [ %1487, %1467 ], [ 0.000000e+00, %1439 ]
  %1492 = fsub fast float %1489, %1014
  %1493 = fsub fast float %1490, %1015
  %1494 = fsub fast float %1491, %1016
  %1495 = fmul fast float %1492, %1236
  %1496 = fmul fast float %1493, %1236
  %1497 = fmul fast float %1494, %1236
  %1498 = fadd fast float %1495, %1014
  %1499 = fadd fast float %1496, %1015
  %1500 = fadd fast float %1497, %1016
  br label %1133

; <label>:1501                                    ; preds = %1133
  br label %1502

; <label>:1502                                    ; preds = %1501, %886
  %1503 = phi float [ 0.000000e+00, %886 ], [ %1134, %1501 ]
  %1504 = phi float [ %913, %886 ], [ %1135, %1501 ]
  %1505 = phi float [ %906, %886 ], [ %1136, %1501 ]
  %1506 = phi float [ %898, %886 ], [ %1137, %1501 ]
  %1507 = phi float [ %899, %886 ], [ %1138, %1501 ]
  %1508 = phi float [ %900, %886 ], [ %1139, %1501 ]
  %1509 = phi float [ 0.000000e+00, %886 ], [ %1140, %1501 ]
  %1510 = phi float [ 0.000000e+00, %886 ], [ %1141, %1501 ]
  %1511 = phi float [ %895, %886 ], [ %1142, %1501 ]
  %1512 = phi float [ %896, %886 ], [ %1143, %1501 ]
  %1513 = phi float [ %897, %886 ], [ %1144, %1501 ]
  %1514 = phi float [ %892, %886 ], [ %1145, %1501 ]
  %1515 = phi float [ %893, %886 ], [ %1146, %1501 ]
  %1516 = phi float [ %894, %886 ], [ %1147, %1501 ]
  %1517 = phi float [ %945, %886 ], [ %1148, %1501 ]
  %1518 = phi float [ %946, %886 ], [ %1149, %1501 ]
  %1519 = phi float [ %947, %886 ], [ %1150, %1501 ]
  %1520 = phi float [ %904, %886 ], [ %1151, %1501 ]
  %1521 = phi float [ %903, %886 ], [ %1152, %1501 ]
  %1522 = phi float [ 0.000000e+00, %886 ], [ %1153, %1501 ]
  %1523 = phi float [ %901, %886 ], [ %1154, %1501 ]
  %1524 = phi float [ %889, %886 ], [ %1155, %1501 ]
  %1525 = phi float [ %890, %886 ], [ %1156, %1501 ]
  %1526 = phi float [ %891, %886 ], [ %1157, %1501 ]
  %1527 = call float @dx.op.dot3.f32(i32 55, float %1517, float %1518, float %1519, float %1517, float %1518, float %1519)  ; Dot3(ax,ay,az,bx,by,bz)
  %1528 = call float @dx.op.unary.f32(i32 25, float %1527)  ; Rsqrt(value)
  %1529 = fmul fast float %1528, %1517
  %1530 = fmul fast float %1528, %1518
  %1531 = fmul fast float %1528, %1519
  %1532 = fadd fast float %1522, %902
  %1533 = call float @dx.op.unary.f32(i32 7, float %1532)  ; Saturate(value)
  %1534 = call float @dx.op.dot3.f32(i32 55, float %1529, float %1530, float %1531, float %1529, float %1530, float %1531)  ; Dot3(ax,ay,az,bx,by,bz)
  %1535 = call float @dx.op.unary.f32(i32 25, float %1534)  ; Rsqrt(value)
  %1536 = fmul fast float %1535, %1529
  %1537 = fmul fast float %1535, %1530
  %1538 = fmul fast float %1535, %1531
  %1539 = fadd fast float %1523, 0xBFB99999A0000000
  %1540 = call float @dx.op.unary.f32(i32 7, float %1539)  ; Saturate(value)
  %1541 = fmul fast float %1540, 0x3FF1C71C80000000
  %1542 = call float @dx.op.binary.f32(i32 36, float %1523, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1543 = fsub fast float 1.000000e+00, %1541
  %1544 = call float @dx.op.unary.f32(i32 7, float %1543)  ; Saturate(value)
  %1545 = fmul fast float %1544, %1524
  %1546 = fmul fast float %1544, %1525
  %1547 = fmul fast float %1544, %1526
  %1548 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1549 = call float @dx.op.unary.f32(i32 7, float %1546)  ; Saturate(value)
  %1550 = call float @dx.op.unary.f32(i32 7, float %1547)  ; Saturate(value)
  %1551 = fmul fast float %1541, %1524
  %1552 = fmul fast float %1541, %1525
  %1553 = fmul fast float %1541, %1526
  %1554 = fadd fast float %1551, %1542
  %1555 = fadd fast float %1552, %1542
  %1556 = fadd fast float %1553, %1542
  %1557 = call float @dx.op.unary.f32(i32 7, float %1554)  ; Saturate(value)
  %1558 = call float @dx.op.unary.f32(i32 7, float %1555)  ; Saturate(value)
  %1559 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  %1560 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = and i32 %1562, 1
  %1564 = icmp eq i32 %1563, 0
  br i1 %1564, label %1579, label %1565

; <label>:1565                                    ; preds = %1502
  %1566 = call float @dx.op.binary.f32(i32 35, float %1549, float %1550)  ; FMax(a,b)
  %1567 = call float @dx.op.binary.f32(i32 35, float %1548, float %1566)  ; FMax(a,b)
  %1568 = fcmp fast ogt float %1567, 0.000000e+00
  %1569 = bitcast float %1567 to i32
  %1570 = sub nsw i32 2129859010, %1569
  %1571 = bitcast i32 %1570 to float
  %1572 = select i1 %1568, float %1571, float 0.000000e+00
  %1573 = fmul fast float %1548, %1511
  %1574 = fmul fast float %1549, %1512
  %1575 = fmul fast float %1550, %1513
  %1576 = fmul fast float %1573, %1572
  %1577 = fmul fast float %1574, %1572
  %1578 = fmul fast float %1575, %1572
  br label %1579

; <label>:1579                                    ; preds = %1565, %1502
  %1580 = phi float [ %1576, %1565 ], [ %1511, %1502 ]
  %1581 = phi float [ %1577, %1565 ], [ %1512, %1502 ]
  %1582 = phi float [ %1578, %1565 ], [ %1513, %1502 ]
  %1583 = call float @dx.op.binary.f32(i32 36, float %1506, float 1.270000e+02)  ; FMin(a,b)
  %1584 = call float @dx.op.binary.f32(i32 36, float %1507, float 1.270000e+02)  ; FMin(a,b)
  %1585 = call float @dx.op.binary.f32(i32 36, float %1508, float 1.270000e+02)  ; FMin(a,b)
  %1586 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1587 = extractvalue %dx.types.CBufRet.i32 %1586, 3
  %1588 = and i32 %1587, 8
  %1589 = icmp ne i32 %1588, 0
  %1590 = call float @dx.op.binary.f32(i32 35, float %1548, float %1524)  ; FMax(a,b)
  %1591 = call float @dx.op.binary.f32(i32 35, float %1549, float %1524)  ; FMax(a,b)
  %1592 = call float @dx.op.binary.f32(i32 35, float %1550, float %1524)  ; FMax(a,b)
  %1593 = call float @dx.op.dot3.f32(i32 55, float %1548, float %1549, float %1550, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1594 = select i1 %204, float %1524, float %1548
  %1595 = select i1 %204, float %1593, float %1549
  %1596 = select i1 %204, float 1.000000e+00, float %1550
  %1597 = select i1 %1589, float %1590, float %1594
  %1598 = select i1 %1589, float %1591, float %1595
  %1599 = select i1 %1589, float %1592, float %1596
  %1600 = call float @dx.op.dot3.f32(i32 55, float %1580, float %1581, float %1582, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1601 = select i1 %204, float %1600, float %1580
  %1602 = select i1 %204, float %1600, float %1581
  %1603 = select i1 %204, float %1600, float %1582
  %1604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.f32 %1604, 0
  %1606 = extractvalue %dx.types.CBufRet.f32 %1604, 1
  %1607 = extractvalue %dx.types.CBufRet.f32 %1604, 2
  %1608 = fadd fast float %1605, %142
  %1609 = fadd fast float %1606, %143
  %1610 = fadd fast float %1607, %144
  %1611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1612 = extractvalue %dx.types.CBufRet.f32 %1611, 0
  %1613 = extractvalue %dx.types.CBufRet.f32 %1611, 1
  %1614 = fsub fast float %1608, %1612
  %1615 = fsub fast float %1609, %1613
  %1616 = fmul fast float %1614, %1614
  %1617 = fmul fast float %1615, %1615
  %1618 = fadd fast float %1616, %1617
  %1619 = call float @dx.op.unary.f32(i32 24, float %1618)  ; Sqrt(value)
  %1620 = extractvalue %dx.types.CBufRet.f32 %1611, 2
  %1621 = fcmp fast olt float %1619, %1620
  br i1 %1621, label %1622, label %1689

; <label>:1622                                    ; preds = %1579
  %1623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1624 = extractvalue %dx.types.CBufRet.f32 %1623, 0
  %1625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1626 = extractvalue %dx.types.CBufRet.f32 %1625, 0
  %1627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1628 = extractvalue %dx.types.CBufRet.f32 %1627, 0
  %1629 = extractvalue %dx.types.CBufRet.f32 %1623, 1
  %1630 = extractvalue %dx.types.CBufRet.f32 %1625, 1
  %1631 = extractvalue %dx.types.CBufRet.f32 %1627, 1
  %1632 = extractvalue %dx.types.CBufRet.f32 %1623, 3
  %1633 = extractvalue %dx.types.CBufRet.f32 %1625, 3
  %1634 = extractvalue %dx.types.CBufRet.f32 %1627, 3
  %1635 = fadd fast float %1632, %1608
  %1636 = fadd fast float %1633, %1609
  %1637 = fadd fast float %1634, %1610
  %1638 = fmul fast float %1635, %1624
  %1639 = call float @dx.op.tertiary.f32(i32 46, float %1636, float %1626, float %1638)  ; FMad(a,b,c)
  %1640 = call float @dx.op.tertiary.f32(i32 46, float %1637, float %1628, float %1639)  ; FMad(a,b,c)
  %1641 = fmul fast float %1635, %1629
  %1642 = call float @dx.op.tertiary.f32(i32 46, float %1636, float %1630, float %1641)  ; FMad(a,b,c)
  %1643 = call float @dx.op.tertiary.f32(i32 46, float %1637, float %1631, float %1642)  ; FMad(a,b,c)
  %1644 = fsub fast float %1640, %1632
  %1645 = fsub fast float %1643, %1633
  %1646 = fsub fast float %1644, %1612
  %1647 = fadd fast float %1646, %1620
  %1648 = fsub fast float %1645, %1613
  %1649 = fadd fast float %1648, %1620
  %1650 = extractvalue %dx.types.CBufRet.f32 %1611, 3
  %1651 = fmul fast float %1647, %1650
  %1652 = fmul fast float %1649, %1650
  %1653 = call float @dx.op.unary.f32(i32 7, float %1651)  ; Saturate(value)
  %1654 = call float @dx.op.unary.f32(i32 7, float %1652)  ; Saturate(value)
  %1655 = fsub fast float 1.000000e+00, %1653
  %1656 = fsub fast float 1.000000e+00, %1654
  %1657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %50, float %1655, float %1656, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1658 = extractvalue %dx.types.ResRet.f32 %1657, 0
  %1659 = fcmp fast ugt float %1658, 0.000000e+00
  br i1 %1659, label %1660, label %1963

; <label>:1660                                    ; preds = %1622
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 2
  %1663 = fmul fast float %1662, %1658
  %1664 = extractvalue %dx.types.CBufRet.f32 %1661, 3
  %1665 = fadd fast float %1664, %1663
  %1666 = extractvalue %dx.types.CBufRet.f32 %1627, 2
  %1667 = fadd fast float %1665, %1634
  %1668 = fmul fast float %1640, %1628
  %1669 = call float @dx.op.tertiary.f32(i32 46, float %1643, float %1631, float %1668)  ; FMad(a,b,c)
  %1670 = call float @dx.op.tertiary.f32(i32 46, float %1667, float %1666, float %1669)  ; FMad(a,b,c)
  %1671 = fsub fast float %1670, %1634
  %1672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.f32 %1672, 2
  %1674 = fsub fast float %1671, %1673
  %1675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %1655, float %1656, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1676 = extractvalue %dx.types.ResRet.f32 %1675, 0
  %1677 = extractvalue %dx.types.ResRet.f32 %1675, 1
  %1678 = extractvalue %dx.types.ResRet.f32 %1675, 2
  %1679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %1655, float %1656, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1680 = extractvalue %dx.types.ResRet.f32 %1679, 0
  %1681 = extractvalue %dx.types.ResRet.f32 %1679, 1
  %1682 = extractvalue %dx.types.ResRet.f32 %1679, 2
  %1683 = fadd fast float %1680, %1676
  %1684 = fmul fast float %1683, 0x3F847AE140000000
  %1685 = fadd fast float %1681, %1677
  %1686 = fmul fast float %1685, 0x3F847AE140000000
  %1687 = fadd fast float %1682, %1678
  %1688 = fmul fast float %1687, 0x3F847AE140000000
  br label %1963

; <label>:1689                                    ; preds = %1579
  %1690 = and i32 %180, 1
  %1691 = icmp eq i32 %1690, 0
  br i1 %1691, label %1963, label %1692

; <label>:1692                                    ; preds = %1689
  %1693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1694 = extractvalue %dx.types.CBufRet.f32 %1693, 0
  %1695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1696 = extractvalue %dx.types.CBufRet.f32 %1695, 0
  %1697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1698 = extractvalue %dx.types.CBufRet.f32 %1697, 0
  %1699 = extractvalue %dx.types.CBufRet.f32 %1693, 1
  %1700 = extractvalue %dx.types.CBufRet.f32 %1695, 1
  %1701 = extractvalue %dx.types.CBufRet.f32 %1697, 1
  %1702 = extractvalue %dx.types.CBufRet.f32 %1693, 3
  %1703 = extractvalue %dx.types.CBufRet.f32 %1695, 3
  %1704 = extractvalue %dx.types.CBufRet.f32 %1697, 3
  %1705 = fadd fast float %1702, %1608
  %1706 = fadd fast float %1703, %1609
  %1707 = fadd fast float %1704, %1610
  %1708 = fmul fast float %1705, %1694
  %1709 = call float @dx.op.tertiary.f32(i32 46, float %1706, float %1696, float %1708)  ; FMad(a,b,c)
  %1710 = call float @dx.op.tertiary.f32(i32 46, float %1707, float %1698, float %1709)  ; FMad(a,b,c)
  %1711 = fmul fast float %1705, %1699
  %1712 = call float @dx.op.tertiary.f32(i32 46, float %1706, float %1700, float %1711)  ; FMad(a,b,c)
  %1713 = call float @dx.op.tertiary.f32(i32 46, float %1707, float %1701, float %1712)  ; FMad(a,b,c)
  %1714 = fsub fast float %1710, %1702
  %1715 = fsub fast float %1713, %1703
  %1716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1717 = extractvalue %dx.types.CBufRet.f32 %1716, 0
  %1718 = extractvalue %dx.types.CBufRet.f32 %1716, 1
  %1719 = extractvalue %dx.types.CBufRet.f32 %1716, 2
  %1720 = extractvalue %dx.types.CBufRet.f32 %1716, 3
  %1721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1722 = extractvalue %dx.types.CBufRet.f32 %1721, 3
  %1723 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1724 = extractvalue %dx.types.CBufRet.i32 %1723, 0
  %1725 = extractvalue %dx.types.CBufRet.i32 %1723, 1
  %1726 = udiv i32 %1725, %1724
  %1727 = fsub fast float %1714, %1717
  %1728 = fsub fast float %1715, %1718
  %1729 = call float @dx.op.binary.f32(i32 35, float %1727, float 0.000000e+00)  ; FMax(a,b)
  %1730 = call float @dx.op.binary.f32(i32 35, float %1728, float 0.000000e+00)  ; FMax(a,b)
  %1731 = call float @dx.op.binary.f32(i32 36, float %1729, float %1719)  ; FMin(a,b)
  %1732 = call float @dx.op.binary.f32(i32 36, float %1730, float %1720)  ; FMin(a,b)
  %1733 = add i32 %1724, -1
  %1734 = add i32 %1726, -1
  %1735 = fmul fast float %1731, %1722
  %1736 = fmul fast float %1732, %1722
  %1737 = fptoui float %1735 to i32
  %1738 = fptoui float %1736 to i32
  %1739 = call i32 @dx.op.binary.i32(i32 40, i32 %1737, i32 %1733)  ; UMin(a,b)
  %1740 = call i32 @dx.op.binary.i32(i32 40, i32 %1738, i32 %1734)  ; UMin(a,b)
  %1741 = mul i32 %1740, %1724
  %1742 = add i32 %1741, %1739
  %1743 = shl i32 %1742, 2
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = icmp eq i32 %1745, -1
  br i1 %1746, label %1963, label %1747

; <label>:1747                                    ; preds = %1692
  %1748 = mul i32 %1745, 148
  %1749 = add i32 %1748, 4
  %1750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.f32 %1750, 0
  %1752 = add i32 %1748, 8
  %1753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.f32 %1753, 0
  %1755 = add i32 %1748, 36
  %1756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.f32 %1756, 0
  %1758 = add i32 %1748, 60
  %1759 = add i32 %1748, 92
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = add i32 %1748, 116
  %1763 = fsub fast float %1714, %1751
  %1764 = fsub fast float %1715, %1754
  %1765 = fmul fast float %1722, %1763
  %1766 = fmul fast float %1722, %1764
  %1767 = call float @dx.op.unary.f32(i32 7, float %1765)  ; Saturate(value)
  %1768 = call float @dx.op.unary.f32(i32 7, float %1766)  ; Saturate(value)
  %1769 = fsub fast float 1.000000e+00, %1768
  %1770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = extractvalue %dx.types.CBufRet.f32 %1770, 2
  %1772 = call float @dx.op.unary.f32(i32 83, float %1767)  ; DerivCoarseX(value)
  %1773 = call float @dx.op.unary.f32(i32 83, float %1769)  ; DerivCoarseX(value)
  %1774 = call float @dx.op.unary.f32(i32 84, float %1767)  ; DerivCoarseY(value)
  %1775 = call float @dx.op.unary.f32(i32 84, float %1769)  ; DerivCoarseY(value)
  %1776 = fmul fast float %1772, %1771
  %1777 = fmul fast float %1773, %1771
  %1778 = fmul fast float %1774, %1771
  %1779 = fmul fast float %1775, %1771
  %1780 = call float @dx.op.dot2.f32(i32 54, float %1778, float %1779, float %1778, float %1779)  ; Dot2(ax,ay,bx,by)
  %1781 = call float @dx.op.dot2.f32(i32 54, float %1776, float %1777, float %1776, float %1777)  ; Dot2(ax,ay,bx,by)
  %1782 = call float @dx.op.binary.f32(i32 35, float %1781, float %1780)  ; FMax(a,b)
  %1783 = call float @dx.op.unary.f32(i32 23, float %1782)  ; Log(value)
  %1784 = fmul fast float %1783, 5.000000e-01
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 1
  %1787 = fadd fast float %1786, %1784
  %1788 = call float @dx.op.binary.f32(i32 35, float %1787, float 0.000000e+00)  ; FMax(a,b)
  %1789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1790 = extractvalue %dx.types.CBufRet.f32 %1789, 3
  %1791 = fadd fast float %1790, %1788
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 3
  %1794 = fadd fast float %1791, %1793
  %1795 = add i32 %1761, 0
  %1796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1795, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1797 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1796, i32 0)  ; GetDimensions(handle,mipLevel)
  %1798 = extractvalue %dx.types.Dimensions %1797, 0
  %1799 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1798)  ; FirstbitLo(value)
  %1800 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1801 = extractvalue %dx.types.CBufRet.i32 %1800, 1
  %1802 = sub nsw i32 %1801, %1799
  %1803 = sitofp i32 %1802 to float
  %1804 = fsub fast float %1794, %1803
  %1805 = call float @dx.op.binary.f32(i32 35, float %1804, float 0.000000e+00)  ; FMax(a,b)
  %1806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1796, %dx.types.Handle %48, float %1767, float %1769, float %1757, float undef, i32 0, i32 0, i32 undef, float %1805)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1807 = extractvalue %dx.types.ResRet.f32 %1806, 0
  %1808 = fcmp ule float %1807, 0x3FE0101020000000
  %1809 = extractvalue %dx.types.CBufRet.i32 %1800, 0
  %1810 = and i32 %1809, 128
  %1811 = icmp ne i32 %1810, 0
  %1812 = and i1 %1808, %1811
  br i1 %1812, label %1963, label %1813

; <label>:1813                                    ; preds = %1747
  %1814 = add i32 %1748, 20
  %1815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.f32 %1815, 0
  %1817 = add i32 %1748, 24
  %1818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.f32 %1818, 0
  %1820 = add i32 %1748, 40
  %1821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1820, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.f32 %1821, 0
  %1823 = add i32 %1748, 96
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1827 = extractvalue %dx.types.CBufRet.f32 %1826, 2
  %1828 = fmul fast float %1827, %1767
  %1829 = fmul fast float %1827, %1769
  %1830 = extractvalue %dx.types.CBufRet.f32 %1826, 3
  %1831 = fadd fast float %1828, %1830
  %1832 = fadd fast float %1829, %1830
  %1833 = add i32 %1825, 0
  %1834 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1833, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1835 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1834, i32 0)  ; GetDimensions(handle,mipLevel)
  %1836 = extractvalue %dx.types.Dimensions %1835, 0
  %1837 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1836)  ; FirstbitLo(value)
  %1838 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.i32 %1838, 1
  %1840 = sub nsw i32 %1839, %1837
  %1841 = sitofp i32 %1840 to float
  %1842 = fsub fast float %1791, %1841
  %1843 = call float @dx.op.binary.f32(i32 35, float %1842, float 0.000000e+00)  ; FMax(a,b)
  %1844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1834, %dx.types.Handle %48, float %1831, float %1832, float %1822, float undef, i32 0, i32 0, i32 undef, float %1843)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1845 = extractvalue %dx.types.ResRet.f32 %1844, 0
  %1846 = fmul fast float %1845, %1816
  %1847 = fadd fast float %1846, %1819
  %1848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1849 = extractvalue %dx.types.CBufRet.f32 %1848, 0
  %1850 = extractvalue %dx.types.CBufRet.f32 %1848, 1
  %1851 = extractvalue %dx.types.CBufRet.f32 %1848, 2
  %1852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1853 = extractvalue %dx.types.CBufRet.f32 %1852, 3
  %1854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.f32 %1854, 3
  %1856 = extractvalue %dx.types.CBufRet.f32 %1848, 3
  %1857 = fadd fast float %1853, %1714
  %1858 = fadd fast float %1855, %1715
  %1859 = fadd fast float %1847, %1856
  %1860 = fmul fast float %1857, %1849
  %1861 = call float @dx.op.tertiary.f32(i32 46, float %1858, float %1850, float %1860)  ; FMad(a,b,c)
  %1862 = call float @dx.op.tertiary.f32(i32 46, float %1859, float %1851, float %1861)  ; FMad(a,b,c)
  %1863 = fsub fast float %1862, %1856
  %1864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.f32 %1864, 2
  %1866 = fsub fast float %1863, %1865
  %1867 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1868 = extractvalue %dx.types.CBufRet.i32 %1867, 0
  %1869 = call i32 @dx.op.binary.i32(i32 40, i32 %1745, i32 %1868)  ; UMin(a,b)
  %1870 = mul i32 %1869, 36
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = add i32 %1870, 4
  %1874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1875 = extractvalue %dx.types.CBufRet.f32 %1874, 0
  %1876 = fmul fast float %1875, %1767
  %1877 = fmul fast float %1875, %1769
  %1878 = extractvalue %dx.types.CBufRet.f32 %1874, 1
  %1879 = fadd fast float %1876, %1878
  %1880 = fadd fast float %1877, %1878
  %1881 = icmp eq i32 %1872, 0
  br i1 %1881, label %1950, label %1882

; <label>:1882                                    ; preds = %1813
  br label %1883

; <label>:1883                                    ; preds = %1940, %1882
  %1884 = phi float [ %1941, %1940 ], [ 0.000000e+00, %1882 ]
  %1885 = phi float [ %1942, %1940 ], [ 0.000000e+00, %1882 ]
  %1886 = phi float [ %1943, %1940 ], [ 0.000000e+00, %1882 ]
  %1887 = phi float [ %1944, %1940 ], [ 0.000000e+00, %1882 ]
  %1888 = phi float [ %1945, %1940 ], [ 0.000000e+00, %1882 ]
  %1889 = phi float [ %1946, %1940 ], [ 0.000000e+00, %1882 ]
  %1890 = phi i32 [ %1947, %1940 ], [ 0, %1882 ]
  %1891 = shl i32 %1890, 2
  %1892 = add i32 %1758, %1891
  %1893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.f32 %1893, 0
  %1895 = add i32 %1762, %1891
  %1896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.i32 %1896, 0
  %1898 = add i32 %1897, 0
  %1899 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1898, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1900 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1899, i32 0)  ; GetDimensions(handle,mipLevel)
  %1901 = extractvalue %dx.types.Dimensions %1900, 0
  %1902 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1901)  ; FirstbitLo(value)
  %1903 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1904 = extractvalue %dx.types.CBufRet.i32 %1903, 1
  %1905 = sub nsw i32 %1904, %1902
  %1906 = sitofp i32 %1905 to float
  %1907 = fsub fast float %1791, %1906
  %1908 = call float @dx.op.binary.f32(i32 35, float %1907, float 0.000000e+00)  ; FMax(a,b)
  %1909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1899, %dx.types.Handle %48, float %1879, float %1880, float %1894, float undef, i32 0, i32 0, i32 undef, float %1908)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1910 = extractvalue %dx.types.ResRet.f32 %1909, 0
  %1911 = fcmp fast ogt float %1910, 0.000000e+00
  br i1 %1911, label %1912, label %1940

; <label>:1912                                    ; preds = %1883
  %1913 = add i32 %1873, %1891
  %1914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1915 = extractvalue %dx.types.ResRet.i32 %1914, 0
  %1916 = and i32 %1915, 32767
  %1917 = mul nuw nsw i32 %1916, 928
  %1918 = add nuw nsw i32 %1917, 48
  %1919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.f32 %1919, 0
  %1921 = extractvalue %dx.types.ResRet.f32 %1919, 1
  %1922 = extractvalue %dx.types.ResRet.f32 %1919, 2
  %1923 = add nuw nsw i32 %1917, 60
  %1924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.f32 %1924, 0
  %1926 = extractvalue %dx.types.ResRet.f32 %1924, 1
  %1927 = extractvalue %dx.types.ResRet.f32 %1924, 2
  %1928 = fmul fast float %1920, %1910
  %1929 = fmul fast float %1921, %1910
  %1930 = fmul fast float %1922, %1910
  %1931 = fadd fast float %1928, %1884
  %1932 = fadd fast float %1929, %1885
  %1933 = fadd fast float %1930, %1886
  %1934 = fmul fast float %1925, %1910
  %1935 = fmul fast float %1926, %1910
  %1936 = fmul fast float %1927, %1910
  %1937 = fadd fast float %1934, %1887
  %1938 = fadd fast float %1935, %1888
  %1939 = fadd fast float %1936, %1889
  br label %1940

; <label>:1940                                    ; preds = %1912, %1883
  %1941 = phi float [ %1931, %1912 ], [ %1884, %1883 ]
  %1942 = phi float [ %1932, %1912 ], [ %1885, %1883 ]
  %1943 = phi float [ %1933, %1912 ], [ %1886, %1883 ]
  %1944 = phi float [ %1937, %1912 ], [ %1887, %1883 ]
  %1945 = phi float [ %1938, %1912 ], [ %1888, %1883 ]
  %1946 = phi float [ %1939, %1912 ], [ %1889, %1883 ]
  %1947 = add nuw i32 %1890, 1
  %1948 = icmp eq i32 %1947, %1872
  br i1 %1948, label %1949, label %1883

; <label>:1949                                    ; preds = %1940
  br label %1950

; <label>:1950                                    ; preds = %1949, %1813
  %1951 = phi float [ 0.000000e+00, %1813 ], [ %1941, %1949 ]
  %1952 = phi float [ 0.000000e+00, %1813 ], [ %1942, %1949 ]
  %1953 = phi float [ 0.000000e+00, %1813 ], [ %1943, %1949 ]
  %1954 = phi float [ 0.000000e+00, %1813 ], [ %1944, %1949 ]
  %1955 = phi float [ 0.000000e+00, %1813 ], [ %1945, %1949 ]
  %1956 = phi float [ 0.000000e+00, %1813 ], [ %1946, %1949 ]
  %1957 = fadd fast float %1954, %1951
  %1958 = fmul fast float %1957, 0x3F847AE140000000
  %1959 = fadd fast float %1955, %1952
  %1960 = fmul fast float %1959, 0x3F847AE140000000
  %1961 = fadd fast float %1956, %1953
  %1962 = fmul fast float %1961, 0x3F847AE140000000
  br label %1963

; <label>:1963                                    ; preds = %1950, %1747, %1692, %1689, %1660, %1622
  %1964 = phi float [ %1674, %1660 ], [ -1.310720e+05, %1622 ], [ %1866, %1950 ], [ -1.310720e+05, %1692 ], [ -1.310720e+05, %1747 ], [ -1.310720e+05, %1689 ]
  %1965 = phi float [ %1684, %1660 ], [ 0.000000e+00, %1622 ], [ %1958, %1950 ], [ 0.000000e+00, %1692 ], [ 0.000000e+00, %1747 ], [ 0.000000e+00, %1689 ]
  %1966 = phi float [ %1686, %1660 ], [ 0.000000e+00, %1622 ], [ %1960, %1950 ], [ 0.000000e+00, %1692 ], [ 0.000000e+00, %1747 ], [ 0.000000e+00, %1689 ]
  %1967 = phi float [ %1688, %1660 ], [ 0.000000e+00, %1622 ], [ %1962, %1950 ], [ 0.000000e+00, %1692 ], [ 0.000000e+00, %1747 ], [ 0.000000e+00, %1689 ]
  %1968 = phi i1 [ true, %1660 ], [ false, %1622 ], [ true, %1950 ], [ false, %1692 ], [ false, %1747 ], [ false, %1689 ]
  %1969 = and i32 %180, 3
  %1970 = icmp eq i32 %1969, 1
  %1971 = select i1 %1970, float 1.000000e+00, float 0.000000e+00
  %1972 = fsub fast float %1964, %144
  %1973 = call float @dx.op.unary.f32(i32 7, float %1972)  ; Saturate(value)
  %1974 = select i1 %1968, float %1973, float 1.000000e+00
  %1975 = fmul fast float %1974, %1971
  %1976 = icmp eq i32 %1969, 3
  %1977 = select i1 %1976, float 1.000000e+00, float %1975
  %1978 = call float @dx.op.binary.f32(i32 35, float %1503, float %1977)  ; FMax(a,b)
  %1979 = call float @dx.op.unary.f32(i32 7, float %1978)  ; Saturate(value)
  %1980 = fcmp fast une float %1979, 0.000000e+00
  %1981 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %142, float %143, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %1982 = call float @dx.op.unary.f32(i32 25, float %1981)  ; Rsqrt(value)
  br i1 %1980, label %1990, label %1983

; <label>:1983                                    ; preds = %1963
  %1984 = fmul fast float %1982, %142
  %1985 = fmul fast float %1982, %143
  %1986 = fmul fast float %1982, %144
  %1987 = fsub fast float -0.000000e+00, %1984
  %1988 = fsub fast float -0.000000e+00, %1985
  %1989 = fsub fast float -0.000000e+00, %1986
  br label %2158

; <label>:1990                                    ; preds = %1963
  %1991 = fmul fast float %142, %1982
  %1992 = fsub fast float -0.000000e+00, %1991
  %1993 = fmul fast float %143, %1982
  %1994 = fsub fast float -0.000000e+00, %1993
  %1995 = fmul fast float %144, %1982
  %1996 = fsub fast float -0.000000e+00, %1995
  %1997 = call float @dx.op.dot3.f32(i32 55, float %1992, float %1994, float %1996, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %1998 = fmul fast float %1979, 2.500000e+00
  %1999 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  %2000 = fmul fast float %1979, 0x4013FFFFE0000000
  %2001 = fadd fast float %2000, 0xBFFFFFFFE0000000
  %2002 = call float @dx.op.unary.f32(i32 7, float %2001)  ; Saturate(value)
  %2003 = fmul fast float %1979, 0x4004000020000000
  %2004 = fadd fast float %2003, 0xBFF8000040000000
  %2005 = call float @dx.op.unary.f32(i32 7, float %2004)  ; Saturate(value)
  %2006 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2007 = fmul fast float %1539, 1.000000e+01
  %2008 = call float @dx.op.unary.f32(i32 7, float %2007)  ; Saturate(value)
  %2009 = fmul fast float %2008, 2.000000e+00
  %2010 = fsub fast float 3.000000e+00, %2009
  %2011 = fmul fast float %2008, %2008
  %2012 = fmul fast float %2011, %2010
  %2013 = fsub fast float 1.000000e+00, %2012
  %2014 = fsub fast float 0x3FE3333340000000, %1560
  %2015 = fmul fast float %2014, 0x400AAAAAA0000000
  %2016 = call float @dx.op.unary.f32(i32 7, float %2015)  ; Saturate(value)
  %2017 = fmul fast float %2013, %2016
  %2018 = fmul fast float %1597, 0x3FEA2B8620000000
  %2019 = fmul fast float %1598, 0x3FEA2B8620000000
  %2020 = fmul fast float %1599, 0x3FEA2B8620000000
  %2021 = fadd fast float %2018, 0x3FC81DFBA0000000
  %2022 = fmul fast float %2021, %1597
  %2023 = fadd fast float %2022, 0x3F910E6020000000
  %2024 = fadd fast float %2019, 0x3FC81DFBA0000000
  %2025 = fmul fast float %2024, %1598
  %2026 = fadd fast float %2025, 0x3F910E6020000000
  %2027 = fadd fast float %2020, 0x3FC81DFBA0000000
  %2028 = fmul fast float %2027, %1599
  %2029 = fadd fast float %2028, 0x3F910E6020000000
  %2030 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  %2031 = call float @dx.op.unary.f32(i32 7, float %2026)  ; Saturate(value)
  %2032 = call float @dx.op.unary.f32(i32 7, float %2029)  ; Saturate(value)
  %2033 = fsub fast float %2030, %1597
  %2034 = fsub fast float %2031, %1598
  %2035 = fsub fast float %2032, %1599
  %2036 = fmul fast float %2033, %2006
  %2037 = fmul fast float %2036, %2017
  %2038 = fmul fast float %2034, %2006
  %2039 = fmul fast float %2038, %2017
  %2040 = fmul fast float %2035, %2006
  %2041 = fmul fast float %2040, %2017
  %2042 = fadd fast float %2037, %1597
  %2043 = fadd fast float %2039, %1598
  %2044 = fadd fast float %2041, %1599
  %2045 = fmul fast float %1520, %1520
  %2046 = fmul fast float %2045, %2045
  %2047 = fadd fast float %2002, 1.000000e+00
  %2048 = fsub fast float %2047, %2017
  %2049 = call float @dx.op.unary.f32(i32 7, float %2048)  ; Saturate(value)
  %2050 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2051 = call float @dx.op.unary.f32(i32 7, float %2050)  ; Saturate(value)
  %2052 = fsub fast float 1.000000e+00, %2046
  %2053 = call float @dx.op.binary.f32(i32 36, float %2049, float %2052)  ; FMin(a,b)
  %2054 = call float @dx.op.unary.f32(i32 7, float %2005)  ; Saturate(value)
  %2055 = call float @dx.op.binary.f32(i32 35, float %2053, float %2054)  ; FMax(a,b)
  %2056 = fadd fast float %2051, 0xBFE4CCCCC0000000
  %2057 = fmul fast float %2056, 0x4006DB6DA0000000
  %2058 = call float @dx.op.unary.f32(i32 7, float %2057)  ; Saturate(value)
  %2059 = fmul fast float %2058, 2.000000e+00
  %2060 = fsub fast float 3.000000e+00, %2059
  %2061 = bitcast float %1557 to i32
  %2062 = ashr i32 %2061, 1
  %2063 = add nsw i32 %2062, 532487669
  %2064 = bitcast i32 %2063 to float
  %2065 = fsub fast float 1.000000e+00, %2064
  %2066 = bitcast float %2065 to i32
  %2067 = sub nsw i32 2129859010, %2066
  %2068 = bitcast i32 %2067 to float
  %2069 = fmul fast float %2068, 2.000000e+00
  %2070 = bitcast float %1558 to i32
  %2071 = ashr i32 %2070, 1
  %2072 = add nsw i32 %2071, 532487669
  %2073 = bitcast i32 %2072 to float
  %2074 = fsub fast float 1.000000e+00, %2073
  %2075 = bitcast float %2074 to i32
  %2076 = sub nsw i32 2129859010, %2075
  %2077 = bitcast i32 %2076 to float
  %2078 = fmul fast float %2077, 2.000000e+00
  %2079 = bitcast float %1559 to i32
  %2080 = ashr i32 %2079, 1
  %2081 = add nsw i32 %2080, 532487669
  %2082 = bitcast i32 %2081 to float
  %2083 = fsub fast float 1.000000e+00, %2082
  %2084 = bitcast float %2083 to i32
  %2085 = sub nsw i32 2129859010, %2084
  %2086 = bitcast i32 %2085 to float
  %2087 = fmul fast float %2086, 2.000000e+00
  %2088 = fsub fast float 0x4002A9FBE0000000, %2069
  %2089 = fadd fast float %2069, 0x3FD54FDF00000000
  %2090 = bitcast float %2089 to i32
  %2091 = sub nsw i32 2129859010, %2090
  %2092 = bitcast i32 %2091 to float
  %2093 = fmul fast float %2092, %2088
  %2094 = fmul fast float %2093, %2093
  %2095 = fsub fast float 0x4002A9FBE0000000, %2078
  %2096 = fadd fast float %2078, 0x3FD54FDF00000000
  %2097 = bitcast float %2096 to i32
  %2098 = sub nsw i32 2129859010, %2097
  %2099 = bitcast i32 %2098 to float
  %2100 = fmul fast float %2099, %2095
  %2101 = fmul fast float %2100, %2100
  %2102 = fsub fast float 0x4002A9FBE0000000, %2087
  %2103 = fadd fast float %2087, 0x3FD54FDF00000000
  %2104 = bitcast float %2103 to i32
  %2105 = sub nsw i32 2129859010, %2104
  %2106 = bitcast i32 %2105 to float
  %2107 = fmul fast float %2106, %2102
  %2108 = fmul fast float %2107, %2107
  %2109 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2094)  ; FMax(a,b)
  %2110 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2101)  ; FMax(a,b)
  %2111 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2108)  ; FMax(a,b)
  %2112 = fsub fast float 1.000000e+00, %1997
  %2113 = fadd fast float %2112, %2013
  %2114 = call float @dx.op.unary.f32(i32 7, float %2113)  ; Saturate(value)
  %2115 = fsub fast float 1.000000e+00, %1977
  %2116 = fmul fast float %2055, %2115
  %2117 = fmul fast float %2058, %2058
  %2118 = fmul fast float %2117, %2116
  %2119 = fmul fast float %2118, %2060
  %2120 = fmul fast float %2115, 0xBFE99999A0000000
  %2121 = fmul fast float %2120, %2006
  %2122 = fmul fast float %2121, %2017
  %2123 = fadd fast float %2122, 1.000000e+00
  %2124 = fadd fast float %1560, -1.000000e+00
  %2125 = fmul fast float %2123, %2124
  %2126 = fadd fast float %2125, 1.000000e+00
  %2127 = fsub fast float %2109, %1557
  %2128 = fsub fast float %2110, %1558
  %2129 = fsub fast float %2111, %1559
  %2130 = fmul fast float %2119, %2127
  %2131 = fmul fast float %2119, %2128
  %2132 = fmul fast float %2119, %2129
  %2133 = fadd fast float %2130, %1557
  %2134 = fadd fast float %2131, %1558
  %2135 = fadd fast float %2132, %1559
  %2136 = fsub fast float %97, %1536
  %2137 = fsub fast float %98, %1537
  %2138 = fsub fast float %99, %1538
  %2139 = fmul fast float %2119, %2136
  %2140 = fmul fast float %2119, %2137
  %2141 = fmul fast float %2119, %2138
  %2142 = fadd fast float %2139, %1536
  %2143 = fadd fast float %2140, %1537
  %2144 = fadd fast float %2141, %1538
  %2145 = fmul fast float %2119, %2114
  %2146 = call float @dx.op.unary.f32(i32 7, float %2126)  ; Saturate(value)
  %2147 = fsub fast float 1.000000e+00, %2146
  %2148 = fmul fast float %2145, %2147
  %2149 = fadd fast float %2148, %2146
  %2150 = fsub fast float 1.000000e+00, %1520
  %2151 = fmul fast float %2119, %2150
  %2152 = fadd fast float %2151, %1520
  %2153 = call float @dx.op.dot3.f32(i32 55, float %2142, float %2143, float %2144, float %2142, float %2143, float %2144)  ; Dot3(ax,ay,az,bx,by,bz)
  %2154 = call float @dx.op.unary.f32(i32 25, float %2153)  ; Rsqrt(value)
  %2155 = fmul fast float %2142, %2154
  %2156 = fmul fast float %2143, %2154
  %2157 = fmul fast float %2144, %2154
  br label %2158

; <label>:2158                                    ; preds = %1990, %1983
  %2159 = phi float [ %1989, %1983 ], [ %1996, %1990 ]
  %2160 = phi float [ %1988, %1983 ], [ %1994, %1990 ]
  %2161 = phi float [ %1987, %1983 ], [ %1992, %1990 ]
  %2162 = phi float [ %1986, %1983 ], [ %1995, %1990 ]
  %2163 = phi float [ %1985, %1983 ], [ %1993, %1990 ]
  %2164 = phi float [ %1984, %1983 ], [ %1991, %1990 ]
  %2165 = phi float [ %1597, %1983 ], [ %2042, %1990 ]
  %2166 = phi float [ %1598, %1983 ], [ %2043, %1990 ]
  %2167 = phi float [ %1599, %1983 ], [ %2044, %1990 ]
  %2168 = phi float [ %1536, %1983 ], [ %2155, %1990 ]
  %2169 = phi float [ %1537, %1983 ], [ %2156, %1990 ]
  %2170 = phi float [ %1538, %1983 ], [ %2157, %1990 ]
  %2171 = phi float [ %1557, %1983 ], [ %2133, %1990 ]
  %2172 = phi float [ %1558, %1983 ], [ %2134, %1990 ]
  %2173 = phi float [ %1559, %1983 ], [ %2135, %1990 ]
  %2174 = phi float [ %1560, %1983 ], [ %2149, %1990 ]
  %2175 = phi float [ %1520, %1983 ], [ %2152, %1990 ]
  %2176 = fsub fast float -0.000000e+00, %144
  %2177 = select i1 %204, float 0.000000e+00, float %2173
  %2178 = call float @dx.op.dot3.f32(i32 55, float %2168, float %2169, float %2170, float %2161, float %2160, float %2159)  ; Dot3(ax,ay,az,bx,by,bz)
  %2179 = call float @dx.op.unary.f32(i32 7, float %2178)  ; Saturate(value)
  %2180 = call float @dx.op.dot3.f32(i32 55, float %2164, float %2163, float %2162, float %2168, float %2169, float %2170)  ; Dot3(ax,ay,az,bx,by,bz)
  %2181 = fmul fast float %2180, 2.000000e+00
  %2182 = fmul fast float %2181, %2168
  %2183 = fmul fast float %2181, %2169
  %2184 = fmul fast float %2181, %2170
  %2185 = fsub fast float %2164, %2182
  %2186 = fsub fast float %2163, %2183
  %2187 = fsub fast float %2162, %2184
  %2188 = call float @dx.op.binary.f32(i32 36, float %2175, float 1.000000e+00)  ; FMin(a,b)
  %2189 = fsub fast float 1.000000e+00, %2188
  %2190 = bitcast float %2189 to i32
  %2191 = ashr i32 %2190, 1
  %2192 = add nsw i32 %2191, 532487669
  %2193 = bitcast i32 %2192 to float
  %2194 = fsub fast float 1.000000e+00, %2174
  %2195 = call float @dx.op.binary.f32(i32 35, float %2194, float 0x3F847AE140000000)  ; FMax(a,b)
  %2196 = fmul fast float %2195, %2195
  %2197 = fmul fast float %2196, %2196
  %2198 = call float @dx.op.unary.f32(i32 7, float %2179)  ; Saturate(value)
  %2199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %2193, float %2197, float %2198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2200 = extractvalue %dx.types.ResRet.f32 %2199, 0
  %2201 = fsub fast float 1.000000e+00, %2175
  %2202 = bitcast float %2201 to i32
  %2203 = sub nsw i32 2129859010, %2202
  %2204 = call float @dx.op.dot3.f32(i32 55, float %66, float %62, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2205 = fmul fast float %2204, 0x3FD20DD760000000
  %2206 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  %2207 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %2208 = fcmp fast oeq float %2207, 0.000000e+00
  %2209 = fcmp fast oeq float %2206, 0.000000e+00
  %2210 = or i1 %2209, %2208
  br i1 %2210, label %2240, label %2211

; <label>:2211                                    ; preds = %2158
  %2212 = fsub fast float -0.000000e+00, %69
  %2213 = fsub fast float -0.000000e+00, %67
  %2214 = call float @dx.op.unary.f32(i32 24, float %2207)  ; Sqrt(value)
  %2215 = fdiv fast float %2214, %2206
  %2216 = fcmp fast ogt float %2215, 0x3FFB6F8900000000
  %2217 = select i1 %2216, float 0x3FFB6F8900000000, float %2215
  %2218 = fmul fast float %2217, 0x3FE8A23460000000
  %2219 = call float @dx.op.unary.f32(i32 7, float %2218)  ; Saturate(value)
  %2220 = call float @dx.op.binary.f32(i32 35, float %2217, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2221 = fmul fast float %2219, %2206
  %2222 = fmul fast float %2220, 0x3FF279A740000000
  %2223 = fadd fast float %2222, -1.000000e+00
  %2224 = call float @dx.op.dot3.f32(i32 55, float %2212, float %2213, float %68, float %2212, float %2213, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %2225 = call float @dx.op.unary.f32(i32 25, float %2224)  ; Rsqrt(value)
  %2226 = fmul fast float %2225, %2212
  %2227 = fmul fast float %2225, %2213
  %2228 = fmul fast float %2225, %68
  %2229 = fmul fast float %2223, %2223
  %2230 = fsub fast float 1.000000e+00, %2229
  %2231 = fmul fast float %2220, 0x40005F8BE0000000
  %2232 = fsub fast float 0x400C5BF8A0000000, %2231
  %2233 = fdiv fast float %2221, %2232
  %2234 = fmul fast float %2233, 0x3FEE31C3C0000000
  %2235 = fmul fast float %2234, %2230
  %2236 = fmul fast float %2220, 0x3FDACB7480000000
  %2237 = fadd fast float %2236, 0xBFD7347680000000
  %2238 = fmul fast float %2237, %2233
  %2239 = fmul fast float %2238, %2230
  br label %2240

; <label>:2240                                    ; preds = %2211, %2158
  %2241 = phi float [ %2226, %2211 ], [ 0.000000e+00, %2158 ]
  %2242 = phi float [ %2227, %2211 ], [ 0.000000e+00, %2158 ]
  %2243 = phi float [ %2228, %2211 ], [ 0.000000e+00, %2158 ]
  %2244 = phi float [ %2235, %2211 ], [ 0.000000e+00, %2158 ]
  %2245 = phi float [ %2239, %2211 ], [ 0.000000e+00, %2158 ]
  %2246 = call float @dx.op.dot3.f32(i32 55, float %2241, float %2242, float %2243, float %2168, float %2169, float %2170)  ; Dot3(ax,ay,az,bx,by,bz)
  %2247 = fmul fast float %2246, 0x3FDF454380000000
  %2248 = fmul fast float %2246, %2246
  %2249 = fmul fast float %2248, 0x3FEE471020000000
  %2250 = fadd fast float %2249, 0xBFD42F6020000000
  %2251 = fmul fast float %2206, 0x3FD20DD760000000
  %2252 = fmul fast float %2250, %2245
  %2253 = fadd fast float %2252, %2251
  %2254 = fmul fast float %2247, %2244
  %2255 = fadd fast float %2253, %2254
  %2256 = fsub fast float %2253, %2254
  %2257 = call float @dx.op.dot3.f32(i32 55, float %2241, float %2242, float %2243, float %2185, float %2186, float %2187)  ; Dot3(ax,ay,az,bx,by,bz)
  %2258 = fmul fast float %2257, 0x3FDF454380000000
  %2259 = fmul fast float %2257, %2257
  %2260 = fmul fast float %2259, 0x3FEE471020000000
  %2261 = fadd fast float %2260, 0xBFD42F6020000000
  %2262 = call float @dx.op.dot3.f32(i32 55, float %2206, float %2244, float %2245, float 0x3FD20DD760000000, float %2258, float %2261)  ; Dot3(ax,ay,az,bx,by,bz)
  %2263 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %2264 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %2265 = fcmp fast oeq float %2264, 0.000000e+00
  %2266 = fcmp fast oeq float %2263, 0.000000e+00
  %2267 = or i1 %2266, %2265
  br i1 %2267, label %2297, label %2268

; <label>:2268                                    ; preds = %2240
  %2269 = fsub fast float -0.000000e+00, %65
  %2270 = fsub fast float -0.000000e+00, %63
  %2271 = call float @dx.op.unary.f32(i32 24, float %2264)  ; Sqrt(value)
  %2272 = fdiv fast float %2271, %2263
  %2273 = fcmp fast ogt float %2272, 0x3FFB6F8900000000
  %2274 = select i1 %2273, float 0x3FFB6F8900000000, float %2272
  %2275 = fmul fast float %2274, 0x3FE8A23460000000
  %2276 = call float @dx.op.unary.f32(i32 7, float %2275)  ; Saturate(value)
  %2277 = call float @dx.op.binary.f32(i32 35, float %2274, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2278 = fmul fast float %2276, %2263
  %2279 = fmul fast float %2277, 0x3FF279A740000000
  %2280 = fadd fast float %2279, -1.000000e+00
  %2281 = call float @dx.op.dot3.f32(i32 55, float %2269, float %2270, float %64, float %2269, float %2270, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %2282 = call float @dx.op.unary.f32(i32 25, float %2281)  ; Rsqrt(value)
  %2283 = fmul fast float %2282, %2269
  %2284 = fmul fast float %2282, %2270
  %2285 = fmul fast float %2282, %64
  %2286 = fmul fast float %2280, %2280
  %2287 = fsub fast float 1.000000e+00, %2286
  %2288 = fmul fast float %2277, 0x40005F8BE0000000
  %2289 = fsub fast float 0x400C5BF8A0000000, %2288
  %2290 = fdiv fast float %2278, %2289
  %2291 = fmul fast float %2290, 0x3FEE31C3C0000000
  %2292 = fmul fast float %2291, %2287
  %2293 = fmul fast float %2277, 0x3FDACB7480000000
  %2294 = fadd fast float %2293, 0xBFD7347680000000
  %2295 = fmul fast float %2294, %2290
  %2296 = fmul fast float %2295, %2287
  br label %2297

; <label>:2297                                    ; preds = %2268, %2240
  %2298 = phi float [ %2283, %2268 ], [ 0.000000e+00, %2240 ]
  %2299 = phi float [ %2284, %2268 ], [ 0.000000e+00, %2240 ]
  %2300 = phi float [ %2285, %2268 ], [ 0.000000e+00, %2240 ]
  %2301 = phi float [ %2292, %2268 ], [ 0.000000e+00, %2240 ]
  %2302 = phi float [ %2296, %2268 ], [ 0.000000e+00, %2240 ]
  %2303 = call float @dx.op.dot3.f32(i32 55, float %2298, float %2299, float %2300, float %2168, float %2169, float %2170)  ; Dot3(ax,ay,az,bx,by,bz)
  %2304 = fmul fast float %2303, 0x3FDF454380000000
  %2305 = fmul fast float %2303, %2303
  %2306 = fmul fast float %2305, 0x3FEE471020000000
  %2307 = fadd fast float %2306, 0xBFD42F6020000000
  %2308 = fmul fast float %2263, 0x3FD20DD760000000
  %2309 = fmul fast float %2307, %2302
  %2310 = fadd fast float %2309, %2308
  %2311 = fmul fast float %2304, %2301
  %2312 = fadd fast float %2310, %2311
  %2313 = fsub fast float %2310, %2311
  %2314 = call float @dx.op.dot3.f32(i32 55, float %2298, float %2299, float %2300, float %2185, float %2186, float %2187)  ; Dot3(ax,ay,az,bx,by,bz)
  %2315 = fmul fast float %2314, 0x3FDF454380000000
  %2316 = fmul fast float %2314, %2314
  %2317 = fmul fast float %2316, 0x3FEE471020000000
  %2318 = fadd fast float %2317, 0xBFD42F6020000000
  %2319 = call float @dx.op.dot3.f32(i32 55, float %2263, float %2301, float %2302, float 0x3FD20DD760000000, float %2315, float %2318)  ; Dot3(ax,ay,az,bx,by,bz)
  %2320 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %2321 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %2322 = fcmp fast oeq float %2321, 0.000000e+00
  %2323 = fcmp fast oeq float %2320, 0.000000e+00
  %2324 = or i1 %2323, %2322
  br i1 %2324, label %2354, label %2325

; <label>:2325                                    ; preds = %2297
  %2326 = fsub fast float -0.000000e+00, %61
  %2327 = fsub fast float -0.000000e+00, %59
  %2328 = call float @dx.op.unary.f32(i32 24, float %2321)  ; Sqrt(value)
  %2329 = fdiv fast float %2328, %2320
  %2330 = fcmp fast ogt float %2329, 0x3FFB6F8900000000
  %2331 = select i1 %2330, float 0x3FFB6F8900000000, float %2329
  %2332 = fmul fast float %2331, 0x3FE8A23460000000
  %2333 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  %2334 = call float @dx.op.binary.f32(i32 35, float %2331, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2335 = fmul fast float %2333, %2320
  %2336 = fmul fast float %2334, 0x3FF279A740000000
  %2337 = fadd fast float %2336, -1.000000e+00
  %2338 = call float @dx.op.dot3.f32(i32 55, float %2326, float %2327, float %60, float %2326, float %2327, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %2339 = call float @dx.op.unary.f32(i32 25, float %2338)  ; Rsqrt(value)
  %2340 = fmul fast float %2339, %2326
  %2341 = fmul fast float %2339, %2327
  %2342 = fmul fast float %2339, %60
  %2343 = fmul fast float %2337, %2337
  %2344 = fsub fast float 1.000000e+00, %2343
  %2345 = fmul fast float %2334, 0x40005F8BE0000000
  %2346 = fsub fast float 0x400C5BF8A0000000, %2345
  %2347 = fdiv fast float %2335, %2346
  %2348 = fmul fast float %2347, 0x3FEE31C3C0000000
  %2349 = fmul fast float %2348, %2344
  %2350 = fmul fast float %2334, 0x3FDACB7480000000
  %2351 = fadd fast float %2350, 0xBFD7347680000000
  %2352 = fmul fast float %2351, %2347
  %2353 = fmul fast float %2352, %2344
  br label %2354

; <label>:2354                                    ; preds = %2325, %2297
  %2355 = phi float [ %2340, %2325 ], [ 0.000000e+00, %2297 ]
  %2356 = phi float [ %2341, %2325 ], [ 0.000000e+00, %2297 ]
  %2357 = phi float [ %2342, %2325 ], [ 0.000000e+00, %2297 ]
  %2358 = phi float [ %2349, %2325 ], [ 0.000000e+00, %2297 ]
  %2359 = phi float [ %2353, %2325 ], [ 0.000000e+00, %2297 ]
  %2360 = call float @dx.op.dot3.f32(i32 55, float %2355, float %2356, float %2357, float %2168, float %2169, float %2170)  ; Dot3(ax,ay,az,bx,by,bz)
  %2361 = fmul fast float %2360, 0x3FDF454380000000
  %2362 = fmul fast float %2360, %2360
  %2363 = fmul fast float %2362, 0x3FEE471020000000
  %2364 = fadd fast float %2363, 0xBFD42F6020000000
  %2365 = fmul fast float %2320, 0x3FD20DD760000000
  %2366 = fmul fast float %2364, %2359
  %2367 = fadd fast float %2366, %2365
  %2368 = fmul fast float %2361, %2358
  %2369 = fadd fast float %2367, %2368
  %2370 = fsub fast float %2367, %2368
  %2371 = call float @dx.op.dot3.f32(i32 55, float %2355, float %2356, float %2357, float %2185, float %2186, float %2187)  ; Dot3(ax,ay,az,bx,by,bz)
  %2372 = fmul fast float %2371, 0x3FDF454380000000
  %2373 = fmul fast float %2371, %2371
  %2374 = fmul fast float %2373, 0x3FEE471020000000
  %2375 = fadd fast float %2374, 0xBFD42F6020000000
  %2376 = call float @dx.op.dot3.f32(i32 55, float %2320, float %2358, float %2359, float 0x3FD20DD760000000, float %2372, float %2375)  ; Dot3(ax,ay,az,bx,by,bz)
  %2377 = call float @dx.op.binary.f32(i32 35, float %2255, float 0.000000e+00)  ; FMax(a,b)
  %2378 = call float @dx.op.binary.f32(i32 35, float %2312, float 0.000000e+00)  ; FMax(a,b)
  %2379 = call float @dx.op.binary.f32(i32 35, float %2369, float 0.000000e+00)  ; FMax(a,b)
  %2380 = call float @dx.op.binary.f32(i32 35, float %2256, float 0.000000e+00)  ; FMax(a,b)
  %2381 = call float @dx.op.binary.f32(i32 35, float %2313, float 0.000000e+00)  ; FMax(a,b)
  %2382 = call float @dx.op.binary.f32(i32 35, float %2370, float 0.000000e+00)  ; FMax(a,b)
  %2383 = call float @dx.op.binary.f32(i32 35, float %2262, float 0.000000e+00)  ; FMax(a,b)
  %2384 = call float @dx.op.binary.f32(i32 35, float %2319, float 0.000000e+00)  ; FMax(a,b)
  %2385 = call float @dx.op.binary.f32(i32 35, float %2376, float 0.000000e+00)  ; FMax(a,b)
  %2386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2387 = extractvalue %dx.types.CBufRet.f32 %2386, 0
  %2388 = call float @dx.op.binary.f32(i32 36, float %2165, float %2387)  ; FMin(a,b)
  %2389 = fmul fast float %2388, %2189
  %2390 = fsub fast float 1.000000e+00, %2389
  %2391 = bitcast float %2390 to i32
  %2392 = sub nsw i32 2129859010, %2391
  %2393 = bitcast i32 %2392 to float
  %2394 = call float @dx.op.binary.f32(i32 36, float %2166, float %2387)  ; FMin(a,b)
  %2395 = fmul fast float %2394, %2189
  %2396 = fsub fast float 1.000000e+00, %2395
  %2397 = bitcast float %2396 to i32
  %2398 = sub nsw i32 2129859010, %2397
  %2399 = bitcast i32 %2398 to float
  %2400 = call float @dx.op.binary.f32(i32 36, float %2167, float %2387)  ; FMin(a,b)
  %2401 = fmul fast float %2400, %2189
  %2402 = fsub fast float 1.000000e+00, %2401
  %2403 = bitcast float %2402 to i32
  %2404 = sub nsw i32 2129859010, %2403
  %2405 = bitcast i32 %2404 to float
  %2406 = fmul fast float %2377, %2188
  %2407 = fmul fast float %2406, %2393
  %2408 = fmul fast float %2378, %2188
  %2409 = fmul fast float %2408, %2399
  %2410 = fmul fast float %2379, %2188
  %2411 = fmul fast float %2410, %2405
  %2412 = call float @dx.op.binary.f32(i32 36, float %2171, float %2387)  ; FMin(a,b)
  %2413 = fmul fast float %2412, %2189
  %2414 = fsub fast float 1.000000e+00, %2413
  %2415 = bitcast float %2414 to i32
  %2416 = sub nsw i32 2129859010, %2415
  %2417 = bitcast i32 %2416 to float
  %2418 = call float @dx.op.binary.f32(i32 36, float %2172, float %2387)  ; FMin(a,b)
  %2419 = fmul fast float %2418, %2189
  %2420 = fsub fast float 1.000000e+00, %2419
  %2421 = bitcast float %2420 to i32
  %2422 = sub nsw i32 2129859010, %2421
  %2423 = bitcast i32 %2422 to float
  %2424 = call float @dx.op.binary.f32(i32 36, float %2177, float %2387)  ; FMin(a,b)
  %2425 = fmul fast float %2424, %2189
  %2426 = fsub fast float 1.000000e+00, %2425
  %2427 = bitcast float %2426 to i32
  %2428 = sub nsw i32 2129859010, %2427
  %2429 = bitcast i32 %2428 to float
  %2430 = fmul fast float %2383, %2188
  %2431 = fmul fast float %2430, %2417
  %2432 = fmul fast float %2384, %2188
  %2433 = fmul fast float %2432, %2423
  %2434 = fmul fast float %2385, %2188
  %2435 = fmul fast float %2434, %2429
  %2436 = call float @dx.op.dot3.f32(i32 55, float %2407, float %2409, float %2411, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2437 = select i1 %204, float 0.000000e+00, float %2407
  %2438 = select i1 %204, float %2436, float %2409
  %2439 = select i1 %204, float 0.000000e+00, float %2411
  %2440 = call float @dx.op.dot3.f32(i32 55, float %2380, float %2381, float %2382, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2441 = select i1 %204, float 0.000000e+00, float %2380
  %2442 = select i1 %204, float %2440, float %2381
  %2443 = select i1 %204, float 0.000000e+00, float %2382
  %2444 = call float @dx.op.dot3.f32(i32 55, float %2431, float %2433, float %2435, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2445 = select i1 %204, float 0.000000e+00, float %2431
  %2446 = select i1 %204, float %2444, float %2433
  %2447 = select i1 %204, float 0.000000e+00, float %2435
  %2448 = fmul fast float %905, %905
  %2449 = call float @dx.op.unary.f32(i32 7, float %2448)  ; Saturate(value)
  %2450 = fmul fast float %2179, 9.843750e-01
  %2451 = fmul fast float %2174, 9.843750e-01
  %2452 = fadd fast float %2450, 7.812500e-03
  %2453 = fadd fast float %2451, 7.812500e-03
  %2454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %2452, float %2453, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2455 = extractvalue %dx.types.ResRet.f32 %2454, 0
  %2456 = extractvalue %dx.types.ResRet.f32 %2454, 1
  %2457 = extractvalue %dx.types.ResRet.f32 %2454, 2
  %2458 = extractvalue %dx.types.ResRet.f32 %2454, 3
  %2459 = fsub fast float 1.000000e+00, %2449
  %2460 = fsub fast float %2457, %2455
  %2461 = fsub fast float %2458, %2456
  %2462 = fmul fast float %2460, %2459
  %2463 = fmul fast float %2461, %2459
  %2464 = fadd fast float %2462, %2455
  %2465 = fadd fast float %2463, %2456
  %2466 = fmul fast float %2464, %2171
  %2467 = fmul fast float %2464, %2172
  %2468 = fmul fast float %2464, %2177
  %2469 = fadd fast float %2466, %2465
  %2470 = fadd fast float %2467, %2465
  %2471 = fadd fast float %2468, %2465
  %2472 = fcmp fast ogt float %1510, 0.000000e+00
  br i1 %2472, label %2473, label %2499

; <label>:2473                                    ; preds = %2354
  %2474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1510, float %2179, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2475 = extractvalue %dx.types.ResRet.f32 %2474, 0
  %2476 = extractvalue %dx.types.ResRet.f32 %2474, 1
  %2477 = extractvalue %dx.types.ResRet.f32 %2474, 2
  %2478 = fadd fast float %2475, -5.000000e-01
  %2479 = fadd fast float %2476, -5.000000e-01
  %2480 = fadd fast float %2477, -5.000000e-01
  %2481 = fsub fast float 1.000000e+00, %2171
  %2482 = fsub fast float 1.000000e+00, %2172
  %2483 = fsub fast float 1.000000e+00, %2177
  %2484 = fmul fast float %2171, 4.000000e+00
  %2485 = fmul fast float %2484, %2481
  %2486 = fmul fast float %2485, %2478
  %2487 = fmul fast float %2172, 4.000000e+00
  %2488 = fmul fast float %2487, %2482
  %2489 = fmul fast float %2488, %2479
  %2490 = fmul fast float %2177, 4.000000e+00
  %2491 = fmul fast float %2490, %2483
  %2492 = fmul fast float %2491, %2480
  %2493 = fadd fast float %2486, %2469
  %2494 = fadd fast float %2489, %2470
  %2495 = fadd fast float %2492, %2471
  %2496 = call float @dx.op.unary.f32(i32 7, float %2493)  ; Saturate(value)
  %2497 = call float @dx.op.unary.f32(i32 7, float %2494)  ; Saturate(value)
  %2498 = call float @dx.op.unary.f32(i32 7, float %2495)  ; Saturate(value)
  br label %2499

; <label>:2499                                    ; preds = %2473, %2354
  %2500 = phi float [ %2496, %2473 ], [ %2469, %2354 ]
  %2501 = phi float [ %2497, %2473 ], [ %2470, %2354 ]
  %2502 = phi float [ %2498, %2473 ], [ %2471, %2354 ]
  %2503 = call float @dx.op.binary.f32(i32 35, float %2501, float %2502)  ; FMax(a,b)
  %2504 = call float @dx.op.binary.f32(i32 35, float %2500, float %2503)  ; FMax(a,b)
  %2505 = fsub fast float 1.000000e+00, %2504
  %2506 = fmul fast float %2504, %2174
  %2507 = fadd fast float %2506, %2174
  %2508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2509 = extractvalue %dx.types.CBufRet.f32 %2508, 2
  %2510 = extractvalue %dx.types.CBufRet.f32 %2508, 3
  %2511 = fmul fast float %2507, %2509
  %2512 = fadd fast float %2511, %2510
  %2513 = call float @dx.op.unary.f32(i32 7, float %2512)  ; Saturate(value)
  %2514 = fsub fast float 1.000000e+00, %2200
  %2515 = fadd fast float %2514, %2513
  %2516 = call float @dx.op.unary.f32(i32 7, float %2515)  ; Saturate(value)
  %2517 = fcmp fast olt float %2516, 1.000000e+00
  br i1 %2517, label %2518, label %2994

; <label>:2518                                    ; preds = %2499
  %2519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2520 = extractvalue %dx.types.CBufRet.f32 %2519, 2
  %2521 = extractvalue %dx.types.CBufRet.f32 %2519, 3
  %2522 = fmul fast float %2520, %94
  %2523 = fmul fast float %2521, %95
  %2524 = fptoui float %2522 to i32
  %2525 = fptoui float %2523 to i32
  %2526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2527 = extractvalue %dx.types.CBufRet.f32 %2526, 0
  %2528 = extractvalue %dx.types.CBufRet.f32 %2526, 2
  %2529 = extractvalue %dx.types.CBufRet.f32 %2526, 3
  %2530 = fadd fast float %82, -4.000000e+00
  %2531 = call float @dx.op.binary.f32(i32 35, float %2530, float 0.000000e+00)  ; FMax(a,b)
  %2532 = fadd fast float %2531, %2527
  %2533 = fmul fast float %2532, %2528
  %2534 = call float @dx.op.unary.f32(i32 23, float %2533)  ; Log(value)
  %2535 = fmul fast float %2534, %2529
  %2536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2537 = extractvalue %dx.types.CBufRet.f32 %2536, 2
  %2538 = fmul fast float %2535, %2537
  %2539 = call float @dx.op.unary.f32(i32 7, float %2538)  ; Saturate(value)
  %2540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2541 = extractvalue %dx.types.CBufRet.i32 %2540, 1
  %2542 = add i32 %2541, -1
  %2543 = uitofp i32 %2541 to float
  %2544 = fmul fast float %2543, %2539
  %2545 = fptoui float %2544 to i32
  %2546 = call i32 @dx.op.binary.i32(i32 40, i32 %2545, i32 %2542)  ; UMin(a,b)
  %2547 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2548 = extractvalue %dx.types.CBufRet.i32 %2547, 2
  %2549 = extractvalue %dx.types.CBufRet.i32 %2547, 3
  %2550 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2525, i32 %2548, i32 %2524)  ; UMad(a,b,c)
  %2551 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2546, i32 %2549, i32 %2550)  ; UMad(a,b,c)
  %2552 = call float @dx.op.binary.f32(i32 35, float %82, float 0.000000e+00)  ; FMax(a,b)
  %2553 = fptoui float %2552 to i32
  %2554 = lshr i32 %2553, 5
  %2555 = call i32 @dx.op.binary.i32(i32 40, i32 %2554, i32 8191)  ; UMin(a,b)
  %2556 = fsub fast float %1964, %144
  %2557 = call float @dx.op.unary.f32(i32 7, float %2556)  ; Saturate(value)
  %2558 = fcmp fast ogt float %2557, 0.000000e+00
  %2559 = fcmp fast ogt float %2187, 0.000000e+00
  %2560 = and i1 %2559, %2558
  br i1 %2560, label %2561, label %2590

; <label>:2561                                    ; preds = %2518
  %2562 = call float @dx.op.dot3.f32(i32 55, float %2185, float %2186, float %2187, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2563 = call float @dx.op.binary.f32(i32 35, float %2562, float -1.000000e+00)  ; FMax(a,b)
  %2564 = call float @dx.op.binary.f32(i32 36, float %2563, float 1.000000e+00)  ; FMin(a,b)
  %2565 = fmul fast float %2564, %2564
  %2566 = fsub fast float 1.000000e+00, %2565
  %2567 = fmul fast float %2566, 0x3FFC6E2300000000
  %2568 = fsub fast float 1.000000e+00, %2567
  %2569 = fcmp fast ogt float %2568, 0.000000e+00
  %2570 = call float @dx.op.unary.f32(i32 24, float %2568)  ; Sqrt(value)
  %2571 = fsub fast float 1.000000e+00, %2570
  %2572 = call float @dx.op.unary.f32(i32 23, float %2571)  ; Log(value)
  %2573 = fmul fast float %2572, 5.000000e+00
  %2574 = call float @dx.op.unary.f32(i32 21, float %2573)  ; Exp(value)
  %2575 = fmul fast float %2574, 0x3FEF591A60000000
  %2576 = fadd fast float %2575, 0x3F94DCB540000000
  %2577 = select i1 %2569, float %2576, float 1.000000e+00
  %2578 = fcmp fast oge float %2577, 1.000000e+00
  %2579 = fmul fast float %2562, 2.000000e+00
  %2580 = fadd fast float %2579, %2187
  %2581 = select i1 %2578, float %2580, float %2187
  %2582 = fsub fast float %2581, %2187
  %2583 = fmul fast float %2582, %2557
  %2584 = fadd fast float %2583, %2187
  %2585 = call float @dx.op.dot3.f32(i32 55, float %2185, float %2186, float %2584, float %2185, float %2186, float %2584)  ; Dot3(ax,ay,az,bx,by,bz)
  %2586 = call float @dx.op.unary.f32(i32 25, float %2585)  ; Rsqrt(value)
  %2587 = fmul fast float %2586, %2185
  %2588 = fmul fast float %2586, %2186
  %2589 = fmul fast float %2584, %2586
  br label %2590

; <label>:2590                                    ; preds = %2561, %2518
  %2591 = phi float [ %2587, %2561 ], [ %2185, %2518 ]
  %2592 = phi float [ %2588, %2561 ], [ %2186, %2518 ]
  %2593 = phi float [ %2589, %2561 ], [ %2187, %2518 ]
  %2594 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2595 = extractvalue %dx.types.CBufRet.i32 %2594, 2
  %2596 = add nsw i32 %2595, -1
  %2597 = call i32 @dx.op.binary.i32(i32 37, i32 %2596, i32 0)  ; IMax(a,b)
  %2598 = shl i32 %2555, 2
  %2599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2598, i32 undef)  ; BufferLoad(srv,index,wot)
  %2600 = extractvalue %dx.types.ResRet.i32 %2599, 0
  %2601 = lshr i32 %2600, 16
  %2602 = and i32 %2600, 65535
  %2603 = lshr i32 %2600, 21
  %2604 = lshr i32 %2602, 5
  %2605 = call i32 @dx.op.binary.i32(i32 40, i32 %2604, i32 %2597)  ; UMin(a,b)
  %2606 = icmp ugt i32 %2603, %2605
  br i1 %2606, label %2970, label %2607

; <label>:2607                                    ; preds = %2590
  br label %2608

; <label>:2608                                    ; preds = %2962, %2607
  %2609 = phi float [ %2963, %2962 ], [ 0.000000e+00, %2607 ]
  %2610 = phi float [ %2964, %2962 ], [ 0.000000e+00, %2607 ]
  %2611 = phi float [ %2965, %2962 ], [ 0.000000e+00, %2607 ]
  %2612 = phi float [ %2966, %2962 ], [ 1.000000e+00, %2607 ]
  %2613 = phi i32 [ %2967, %2962 ], [ %2603, %2607 ]
  %2614 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2615 = extractvalue %dx.types.CBufRet.i32 %2614, 2
  %2616 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2551, i32 %2615, i32 %2613)  ; UMad(a,b,c)
  %2617 = shl i32 %2616, 2
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = shl i32 %2613, 5
  %2621 = sub nsw i32 %2601, %2620
  %2622 = call i32 @dx.op.binary.i32(i32 37, i32 %2621, i32 0)  ; IMax(a,b)
  %2623 = call i32 @dx.op.binary.i32(i32 38, i32 %2622, i32 31)  ; IMin(a,b)
  %2624 = sub nsw i32 1, %2601
  %2625 = add nsw i32 %2624, %2602
  %2626 = call i32 @dx.op.binary.i32(i32 37, i32 %2625, i32 0)  ; IMax(a,b)
  %2627 = call i32 @dx.op.binary.i32(i32 38, i32 %2626, i32 32)  ; IMin(a,b)
  %2628 = and i32 %2627, 31
  %2629 = shl i32 -1, %2628
  %2630 = xor i32 %2629, -1
  %2631 = and i32 %2623, 31
  %2632 = shl i32 %2630, %2631
  %2633 = icmp eq i32 %2627, 32
  %2634 = select i1 %2633, i32 -1, i32 %2632
  %2635 = and i32 %2634, %2619
  %2636 = icmp eq i32 %2635, 0
  br i1 %2636, label %2962, label %2637

; <label>:2637                                    ; preds = %2608
  br label %2638

; <label>:2638                                    ; preds = %2745, %2637
  %2639 = phi float [ %2746, %2745 ], [ %2609, %2637 ]
  %2640 = phi float [ %2747, %2745 ], [ %2610, %2637 ]
  %2641 = phi float [ %2748, %2745 ], [ %2611, %2637 ]
  %2642 = phi float [ %2749, %2745 ], [ %2612, %2637 ]
  %2643 = phi i32 [ %2648, %2745 ], [ %2635, %2637 ]
  %2644 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2643)  ; FirstbitLo(value)
  %2645 = add i32 %2644, %2620
  %2646 = and i32 %2644, 31
  %2647 = shl i32 1, %2646
  %2648 = xor i32 %2647, %2643
  %2649 = mul i32 %2645, 72
  %2650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2649, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.f32 %2650, 0
  %2652 = extractvalue %dx.types.ResRet.f32 %2650, 1
  %2653 = extractvalue %dx.types.ResRet.f32 %2650, 2
  %2654 = add i32 %2649, 12
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = add i32 %2649, 16
  %2658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.f32 %2658, 0
  %2660 = extractvalue %dx.types.ResRet.f32 %2658, 1
  %2661 = extractvalue %dx.types.ResRet.f32 %2658, 2
  %2662 = add i32 %2649, 28
  %2663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2662, i32 undef)  ; BufferLoad(srv,index,wot)
  %2664 = extractvalue %dx.types.ResRet.f32 %2663, 0
  %2665 = add i32 %2649, 32
  %2666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2665, i32 undef)  ; BufferLoad(srv,index,wot)
  %2667 = extractvalue %dx.types.ResRet.f32 %2666, 0
  %2668 = extractvalue %dx.types.ResRet.f32 %2666, 1
  %2669 = extractvalue %dx.types.ResRet.f32 %2666, 2
  %2670 = extractvalue %dx.types.ResRet.f32 %2666, 3
  %2671 = add i32 %2649, 48
  %2672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2671, i32 undef)  ; BufferLoad(srv,index,wot)
  %2673 = extractvalue %dx.types.ResRet.f32 %2672, 0
  %2674 = extractvalue %dx.types.ResRet.f32 %2672, 1
  %2675 = add i32 %2649, 56
  %2676 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2675, i32 undef)  ; BufferLoad(srv,index,wot)
  %2677 = extractvalue %dx.types.ResRet.f32 %2676, 0
  %2678 = extractvalue %dx.types.ResRet.f32 %2676, 1
  %2679 = add i32 %2649, 64
  %2680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2679, i32 undef)  ; BufferLoad(srv,index,wot)
  %2681 = extractvalue %dx.types.ResRet.f32 %2680, 0
  %2682 = extractvalue %dx.types.ResRet.f32 %2680, 1
  %2683 = mul i32 %2645, 60
  %2684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.f32 %2684, 0
  %2686 = extractvalue %dx.types.ResRet.f32 %2684, 1
  %2687 = extractvalue %dx.types.ResRet.f32 %2684, 2
  %2688 = add i32 %2683, 12
  %2689 = add i32 %2683, 48
  %2690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2689, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.f32 %2690, 0
  %2692 = extractvalue %dx.types.ResRet.f32 %2690, 1
  %2693 = extractvalue %dx.types.ResRet.f32 %2690, 2
  %2694 = and i32 %2656, 32767
  %2695 = bitcast float %2651 to i32
  %2696 = icmp eq i32 %2695, -1
  %2697 = bitcast float %2652 to i32
  %2698 = and i32 %2656, 32768
  %2699 = icmp ne i32 %2698, 0
  %2700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2701 = extractvalue %dx.types.CBufRet.f32 %2700, 0
  %2702 = extractvalue %dx.types.CBufRet.f32 %2700, 1
  %2703 = extractvalue %dx.types.CBufRet.f32 %2700, 2
  %2704 = fsub fast float %2685, %2701
  %2705 = fsub fast float %2686, %2702
  %2706 = fsub fast float %2687, %2703
  %2707 = fsub fast float %142, %2704
  %2708 = fsub fast float %143, %2705
  %2709 = fsub fast float %144, %2706
  %2710 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2688, i32 undef)  ; BufferLoad(srv,index,wot)
  %2711 = extractvalue %dx.types.ResRet.f32 %2710, 0
  %2712 = extractvalue %dx.types.ResRet.f32 %2710, 1
  %2713 = extractvalue %dx.types.ResRet.f32 %2710, 2
  %2714 = call float @dx.op.dot3.f32(i32 55, float %2707, float %2708, float %2709, float %2711, float %2712, float %2713)  ; Dot3(ax,ay,az,bx,by,bz)
  %2715 = add i32 %2683, 24
  %2716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2715, i32 undef)  ; BufferLoad(srv,index,wot)
  %2717 = extractvalue %dx.types.ResRet.f32 %2716, 0
  %2718 = extractvalue %dx.types.ResRet.f32 %2716, 1
  %2719 = extractvalue %dx.types.ResRet.f32 %2716, 2
  %2720 = call float @dx.op.dot3.f32(i32 55, float %2707, float %2708, float %2709, float %2717, float %2718, float %2719)  ; Dot3(ax,ay,az,bx,by,bz)
  %2721 = add i32 %2683, 36
  %2722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %2723 = extractvalue %dx.types.ResRet.f32 %2722, 0
  %2724 = extractvalue %dx.types.ResRet.f32 %2722, 1
  %2725 = extractvalue %dx.types.ResRet.f32 %2722, 2
  %2726 = call float @dx.op.dot3.f32(i32 55, float %2707, float %2708, float %2709, float %2723, float %2724, float %2725)  ; Dot3(ax,ay,az,bx,by,bz)
  %2727 = call float @dx.op.unary.f32(i32 6, float %2714)  ; FAbs(value)
  %2728 = call float @dx.op.unary.f32(i32 6, float %2720)  ; FAbs(value)
  %2729 = call float @dx.op.unary.f32(i32 6, float %2726)  ; FAbs(value)
  %2730 = fsub fast float %2691, %2727
  %2731 = fsub fast float %2692, %2728
  %2732 = fsub fast float %2693, %2729
  %2733 = fmul fast float %2730, %2659
  %2734 = fmul fast float %2731, %2660
  %2735 = fmul fast float %2732, %2661
  %2736 = call float @dx.op.binary.f32(i32 36, float %2734, float %2735)  ; FMin(a,b)
  %2737 = call float @dx.op.binary.f32(i32 36, float %2733, float %2736)  ; FMin(a,b)
  %2738 = call float @dx.op.unary.f32(i32 7, float %2737)  ; Saturate(value)
  %2739 = call float @dx.op.binary.f32(i32 36, float %2642, float %2738)  ; FMin(a,b)
  %2740 = uitofp i1 %2699 to float
  %2741 = fadd fast float %2557, 1.000000e+00
  %2742 = fsub fast float %2741, %2740
  %2743 = fmul fast float %2739, %2742
  %2744 = fcmp fast ogt float %2743, 0.000000e+00
  br i1 %2744, label %2751, label %2745

; <label>:2745                                    ; preds = %2893, %2638
  %2746 = phi float [ %2957, %2893 ], [ %2639, %2638 ]
  %2747 = phi float [ %2958, %2893 ], [ %2640, %2638 ]
  %2748 = phi float [ %2959, %2893 ], [ %2641, %2638 ]
  %2749 = phi float [ %2960, %2893 ], [ %2642, %2638 ]
  %2750 = icmp eq i32 %2643, %2647
  br i1 %2750, label %2961, label %2638

; <label>:2751                                    ; preds = %2638
  br i1 %2696, label %2809, label %2752

; <label>:2752                                    ; preds = %2751
  %2753 = fsub fast float -0.000000e+00, %2711
  %2754 = fsub fast float -0.000000e+00, %2712
  %2755 = fsub fast float -0.000000e+00, %2713
  %2756 = call float @dx.op.dot3.f32(i32 55, float %2591, float %2592, float %2593, float %2753, float %2754, float %2755)  ; Dot3(ax,ay,az,bx,by,bz)
  %2757 = fsub fast float -0.000000e+00, %2756
  %2758 = call float @dx.op.dot3.f32(i32 55, float %2707, float %2708, float %2709, float %2753, float %2754, float %2755)  ; Dot3(ax,ay,az,bx,by,bz)
  %2759 = fadd fast float %2758, %2674
  %2760 = fadd fast float %2673, %2758
  %2761 = fsub fast float -0.000000e+00, %2760
  %2762 = fcmp ogt float %2756, -0.000000e+00
  %2763 = select i1 %2762, float %2761, float %2759
  %2764 = call float @dx.op.unary.f32(i32 6, float %2757)  ; FAbs(value)
  %2765 = fdiv fast float 1.000000e+00, %2764
  %2766 = fmul fast float %2763, %2765
  %2767 = call float @dx.op.binary.f32(i32 35, float %2766, float 0.000000e+00)  ; FMax(a,b)
  %2768 = fsub fast float -0.000000e+00, %2717
  %2769 = fsub fast float -0.000000e+00, %2718
  %2770 = fsub fast float -0.000000e+00, %2719
  %2771 = call float @dx.op.dot3.f32(i32 55, float %2591, float %2592, float %2593, float %2768, float %2769, float %2770)  ; Dot3(ax,ay,az,bx,by,bz)
  %2772 = fsub fast float -0.000000e+00, %2771
  %2773 = call float @dx.op.dot3.f32(i32 55, float %2707, float %2708, float %2709, float %2768, float %2769, float %2770)  ; Dot3(ax,ay,az,bx,by,bz)
  %2774 = fadd fast float %2773, %2678
  %2775 = fadd fast float %2677, %2773
  %2776 = fsub fast float -0.000000e+00, %2775
  %2777 = fcmp ogt float %2771, -0.000000e+00
  %2778 = select i1 %2777, float %2776, float %2774
  %2779 = call float @dx.op.unary.f32(i32 6, float %2772)  ; FAbs(value)
  %2780 = fdiv fast float 1.000000e+00, %2779
  %2781 = fmul fast float %2778, %2780
  %2782 = call float @dx.op.binary.f32(i32 35, float %2781, float 0.000000e+00)  ; FMax(a,b)
  %2783 = fsub fast float -0.000000e+00, %2723
  %2784 = fsub fast float -0.000000e+00, %2724
  %2785 = fsub fast float -0.000000e+00, %2725
  %2786 = call float @dx.op.dot3.f32(i32 55, float %2591, float %2592, float %2593, float %2783, float %2784, float %2785)  ; Dot3(ax,ay,az,bx,by,bz)
  %2787 = fsub fast float -0.000000e+00, %2786
  %2788 = call float @dx.op.dot3.f32(i32 55, float %2707, float %2708, float %2709, float %2783, float %2784, float %2785)  ; Dot3(ax,ay,az,bx,by,bz)
  %2789 = fadd fast float %2788, %2682
  %2790 = fadd fast float %2681, %2788
  %2791 = fsub fast float -0.000000e+00, %2790
  %2792 = fcmp ogt float %2786, -0.000000e+00
  %2793 = select i1 %2792, float %2791, float %2789
  %2794 = call float @dx.op.unary.f32(i32 6, float %2787)  ; FAbs(value)
  %2795 = fdiv fast float 1.000000e+00, %2794
  %2796 = fmul fast float %2793, %2795
  %2797 = call float @dx.op.binary.f32(i32 35, float %2796, float 0.000000e+00)  ; FMax(a,b)
  %2798 = call float @dx.op.binary.f32(i32 36, float %2782, float %2797)  ; FMin(a,b)
  %2799 = call float @dx.op.binary.f32(i32 36, float %2767, float %2798)  ; FMin(a,b)
  %2800 = fmul fast float %2799, %2591
  %2801 = fmul fast float %2799, %2592
  %2802 = fmul fast float %2799, %2593
  %2803 = fadd fast float %2800, %142
  %2804 = fadd fast float %2801, %143
  %2805 = fadd fast float %2802, %144
  %2806 = fsub fast float %2803, %2651
  %2807 = fsub fast float %2804, %2652
  %2808 = fsub fast float %2805, %2653
  br label %2816

; <label>:2809                                    ; preds = %2751
  %2810 = fmul fast float %2591, 8.096000e+03
  %2811 = fmul fast float %2592, 8.096000e+03
  %2812 = fmul fast float %2593, 8.096000e+03
  %2813 = fadd fast float %2810, %142
  %2814 = fadd fast float %2811, %143
  %2815 = fadd fast float %2812, %144
  br label %2816

; <label>:2816                                    ; preds = %2809, %2752
  %2817 = phi float [ %2591, %2809 ], [ %2806, %2752 ]
  %2818 = phi float [ %2592, %2809 ], [ %2807, %2752 ]
  %2819 = phi float [ %2593, %2809 ], [ %2808, %2752 ]
  %2820 = phi float [ %2813, %2809 ], [ %2803, %2752 ]
  %2821 = phi float [ %2814, %2809 ], [ %2804, %2752 ]
  %2822 = phi float [ %2815, %2809 ], [ %2805, %2752 ]
  %2823 = fcmp fast olt float %2670, 1.000000e+00
  br i1 %2823, label %2824, label %2855, !dx.controlflow.hints !92

; <label>:2824                                    ; preds = %2816
  %2825 = fmul fast float %2819, %2668
  %2826 = fmul fast float %2818, %2669
  %2827 = fsub fast float %2825, %2826
  %2828 = fmul fast float %2817, %2669
  %2829 = fmul fast float %2819, %2667
  %2830 = fsub fast float %2828, %2829
  %2831 = fmul fast float %2818, %2667
  %2832 = fmul fast float %2817, %2668
  %2833 = fsub fast float %2831, %2832
  %2834 = fmul fast float %2827, 2.000000e+00
  %2835 = fmul fast float %2830, 2.000000e+00
  %2836 = fmul fast float %2833, 2.000000e+00
  %2837 = fmul fast float %2834, %2670
  %2838 = fmul fast float %2835, %2670
  %2839 = fmul fast float %2836, %2670
  %2840 = fmul fast float %2836, %2668
  %2841 = fmul fast float %2835, %2669
  %2842 = fmul fast float %2834, %2669
  %2843 = fmul fast float %2836, %2667
  %2844 = fmul fast float %2835, %2667
  %2845 = fmul fast float %2834, %2668
  %2846 = fadd fast float %2840, %2817
  %2847 = fadd fast float %2846, %2837
  %2848 = fsub fast float %2847, %2841
  %2849 = fsub fast float %2818, %2843
  %2850 = fadd fast float %2849, %2838
  %2851 = fadd fast float %2850, %2842
  %2852 = fadd fast float %2839, %2819
  %2853 = fsub fast float %2852, %2845
  %2854 = fadd fast float %2853, %2844
  br label %2855

; <label>:2855                                    ; preds = %2824, %2816
  %2856 = phi float [ %2848, %2824 ], [ %2817, %2816 ]
  %2857 = phi float [ %2851, %2824 ], [ %2818, %2816 ]
  %2858 = phi float [ %2854, %2824 ], [ %2819, %2816 ]
  br i1 %2696, label %2890, label %2859

; <label>:2859                                    ; preds = %2855
  %2860 = fmul fast float %2174, 0x400187C840000000
  %2861 = fadd fast float %2860, 0xC00EFC2120000000
  %2862 = fmul fast float %2861, %2174
  %2863 = fadd fast float %2862, 0x3FE5D16340000000
  %2864 = fmul fast float %2863, %2174
  %2865 = fadd fast float %2864, 1.000000e+00
  %2866 = call float @dx.op.unary.f32(i32 7, float %2865)  ; Saturate(value)
  %2867 = fsub fast float %2820, %142
  %2868 = fsub fast float %2821, %143
  %2869 = fsub fast float %2822, %144
  %2870 = fsub fast float %2820, %2651
  %2871 = fsub fast float %2821, %2652
  %2872 = fsub fast float %2822, %2653
  %2873 = call float @dx.op.dot3.f32(i32 55, float %2867, float %2868, float %2869, float %2867, float %2868, float %2869)  ; Dot3(ax,ay,az,bx,by,bz)
  %2874 = call float @dx.op.dot3.f32(i32 55, float %2870, float %2871, float %2872, float %2870, float %2871, float %2872)  ; Dot3(ax,ay,az,bx,by,bz)
  %2875 = fadd fast float %2874, 0x3EE4F8B580000000
  %2876 = fdiv fast float %2873, %2875
  %2877 = bitcast float %2876 to i32
  %2878 = ashr i32 %2877, 1
  %2879 = add nsw i32 %2878, 532487669
  %2880 = bitcast i32 %2879 to float
  %2881 = fmul fast float %2880, %2866
  %2882 = call float @dx.op.unary.f32(i32 7, float %2881)  ; Saturate(value)
  %2883 = fmul fast float %2882, 0x4009981AE0000000
  %2884 = fsub fast float 0x40111BBD80000000, %2883
  %2885 = fmul fast float %2884, %2882
  %2886 = fadd fast float %2885, 0xC0009F6020000000
  %2887 = fmul fast float %2886, %2882
  %2888 = fadd fast float %2887, 1.000000e+00
  %2889 = call float @dx.op.unary.f32(i32 7, float %2888)  ; Saturate(value)
  br label %2893

; <label>:2890                                    ; preds = %2855
  %2891 = icmp ne i32 %2697, -1
  %2892 = zext i1 %2891 to i32
  br label %2893

; <label>:2893                                    ; preds = %2890, %2859
  %2894 = phi float [ %2174, %2890 ], [ %2889, %2859 ]
  %2895 = phi i32 [ %2892, %2890 ], [ 0, %2859 ]
  %2896 = fmul float %2894, 5.000000e+00
  %2897 = fsub float 5.000000e+00, %2896
  %2898 = icmp ne i32 %2895, 0
  %2899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2900 = extractvalue %dx.types.CBufRet.f32 %2899, 3
  %2901 = fadd fast float %2900, %2897
  %2902 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2901)  ; FMax(a,b)
  %2903 = call float @dx.op.unary.f32(i32 6, float %2856)  ; FAbs(value)
  %2904 = call float @dx.op.unary.f32(i32 6, float %2857)  ; FAbs(value)
  %2905 = fadd fast float %2904, %2903
  %2906 = call float @dx.op.unary.f32(i32 6, float %2858)  ; FAbs(value)
  %2907 = fadd fast float %2905, %2906
  %2908 = fcmp fast oeq float %2907, 0.000000e+00
  %2909 = fdiv fast float 1.000000e+00, %2907
  %2910 = select i1 %2908, float 1.000000e+00, float %2909
  %2911 = fmul fast float %2910, %2856
  %2912 = fmul fast float %2910, %2857
  %2913 = call float @dx.op.unary.f32(i32 6, float %2912)  ; FAbs(value)
  %2914 = call float @dx.op.unary.f32(i32 6, float %2911)  ; FAbs(value)
  %2915 = fsub fast float 1.000000e+00, %2913
  %2916 = fsub fast float 1.000000e+00, %2914
  %2917 = fcmp fast oge float %2911, 0.000000e+00
  %2918 = fcmp fast oge float %2912, 0.000000e+00
  %2919 = select i1 %2917, float 1.000000e+00, float -1.000000e+00
  %2920 = select i1 %2918, float 1.000000e+00, float -1.000000e+00
  %2921 = fcmp fast ole float %2858, 0.000000e+00
  %2922 = fmul fast float %2919, %2915
  %2923 = fmul fast float %2920, %2916
  %2924 = select i1 %2921, float %2922, float %2911
  %2925 = select i1 %2921, float %2923, float %2912
  %2926 = fmul fast float %2924, 5.000000e-01
  %2927 = fmul fast float %2925, 5.000000e-01
  %2928 = fadd fast float %2926, 5.000000e-01
  %2929 = fadd fast float %2927, 5.000000e-01
  %2930 = uitofp i32 %2694 to float
  %2931 = call float @dx.op.binary.f32(i32 36, float %2902, float 3.000000e+00)  ; FMin(a,b)
  %2932 = fadd fast float %2931, 2.000000e+00
  %2933 = call float @dx.op.unary.f32(i32 21, float %2932)  ; Exp(value)
  %2934 = extractvalue %dx.types.CBufRet.f32 %2899, 1
  %2935 = fmul fast float %2934, %2933
  %2936 = fmul fast float %2935, 2.000000e+00
  %2937 = fsub fast float 1.000000e+00, %2936
  %2938 = fmul fast float %2928, %2937
  %2939 = fmul fast float %2929, %2937
  %2940 = fadd fast float %2938, %2935
  %2941 = fadd fast float %2939, %2935
  %2942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %48, float %2940, float %2941, float %2930, float undef, i32 0, i32 0, i32 undef, float %2902)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2943 = extractvalue %dx.types.ResRet.f32 %2942, 0
  %2944 = extractvalue %dx.types.ResRet.f32 %2942, 1
  %2945 = extractvalue %dx.types.ResRet.f32 %2942, 2
  %2946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2947 = extractvalue %dx.types.CBufRet.f32 %2946, 3
  %2948 = fmul fast float %2947, %2664
  %2949 = call float @dx.op.binary.f32(i32 36, float %2205, float %2948)  ; FMin(a,b)
  %2950 = select i1 %2898, float %2949, float %2948
  %2951 = fmul fast float %2943, %2743
  %2952 = fmul fast float %2951, %2950
  %2953 = fmul fast float %2944, %2743
  %2954 = fmul fast float %2953, %2950
  %2955 = fmul fast float %2945, %2743
  %2956 = fmul fast float %2955, %2950
  %2957 = fadd fast float %2952, %2639
  %2958 = fadd fast float %2954, %2640
  %2959 = fadd fast float %2956, %2641
  %2960 = fsub fast float %2642, %2743
  br label %2745

; <label>:2961                                    ; preds = %2745
  br label %2962

; <label>:2962                                    ; preds = %2961, %2608
  %2963 = phi float [ %2609, %2608 ], [ %2746, %2961 ]
  %2964 = phi float [ %2610, %2608 ], [ %2747, %2961 ]
  %2965 = phi float [ %2611, %2608 ], [ %2748, %2961 ]
  %2966 = phi float [ %2612, %2608 ], [ %2749, %2961 ]
  %2967 = add i32 %2613, 1
  %2968 = icmp ugt i32 %2967, %2605
  br i1 %2968, label %2969, label %2608, !llvm.loop !93

; <label>:2969                                    ; preds = %2962
  br label %2970

; <label>:2970                                    ; preds = %2969, %2590
  %2971 = phi float [ 0.000000e+00, %2590 ], [ %2963, %2969 ]
  %2972 = phi float [ 0.000000e+00, %2590 ], [ %2964, %2969 ]
  %2973 = phi float [ 0.000000e+00, %2590 ], [ %2965, %2969 ]
  %2974 = call float @dx.op.dot3.f32(i32 55, float %2971, float %2972, float %2973, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2975 = select i1 %204, float 0.000000e+00, float %2971
  %2976 = select i1 %204, float %2974, float %2972
  %2977 = select i1 %204, float 0.000000e+00, float %2973
  %2978 = fcmp fast olt float %2516, 0.000000e+00
  %2979 = call float @dx.op.unary.f32(i32 6, float %2516)  ; FAbs(value)
  %2980 = fmul fast float %2979, %2445
  %2981 = fmul fast float %2979, %2446
  %2982 = fmul fast float %2979, %2447
  %2983 = select i1 %2978, float %2445, float %2980
  %2984 = select i1 %2978, float %2446, float %2981
  %2985 = select i1 %2978, float %2447, float %2982
  %2986 = fsub fast float 1.000000e+00, %2979
  %2987 = call float @dx.op.unary.f32(i32 7, float %2986)  ; Saturate(value)
  %2988 = fmul fast float %2987, %2975
  %2989 = fmul fast float %2987, %2976
  %2990 = fmul fast float %2987, %2977
  %2991 = fadd fast float %2983, %2988
  %2992 = fadd fast float %2984, %2989
  %2993 = fadd fast float %2985, %2990
  br label %2994

; <label>:2994                                    ; preds = %2970, %2499
  %2995 = phi float [ %2445, %2499 ], [ %2991, %2970 ]
  %2996 = phi float [ %2446, %2499 ], [ %2992, %2970 ]
  %2997 = phi float [ %2447, %2499 ], [ %2993, %2970 ]
  %2998 = call float @dx.op.dot3.f32(i32 55, float %2165, float %2166, float %2167, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2999 = fcmp fast ogt float %2998, 0x3E7FF19E20000000
  %3000 = fdiv fast float 1.000000e+00, %2998
  %3001 = select i1 %2999, float %3000, float 0.000000e+00
  %3002 = fmul fast float %3001, %2165
  %3003 = fmul fast float %3001, %2166
  %3004 = fmul fast float %3001, %2167
  %3005 = fadd fast float %3002, -1.000000e+00
  %3006 = fadd fast float %3003, -1.000000e+00
  %3007 = fadd fast float %3004, -1.000000e+00
  %3008 = fmul fast float %3005, 5.000000e-01
  %3009 = fmul fast float %3006, 5.000000e-01
  %3010 = fmul fast float %3007, 5.000000e-01
  %3011 = fadd fast float %3008, 1.000000e+00
  %3012 = fadd fast float %3009, 1.000000e+00
  %3013 = fadd fast float %3010, 1.000000e+00
  %3014 = call float @dx.op.binary.f32(i32 35, float %2179, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3015 = fdiv fast float %905, %3014
  %3016 = fcmp fast olt float %1583, 1.270000e+02
  %3017 = fcmp fast olt float %1584, 1.270000e+02
  %3018 = fcmp fast olt float %1585, 1.270000e+02
  %3019 = fmul fast float %1583, 0xBFF7154760000000
  %3020 = fmul fast float %3019, %3015
  %3021 = fmul fast float %1584, 0xBFF7154760000000
  %3022 = fmul fast float %3021, %3015
  %3023 = fmul fast float %1585, 0xBFF7154760000000
  %3024 = fmul fast float %3023, %3015
  %3025 = call float @dx.op.unary.f32(i32 21, float %3020)  ; Exp(value)
  %3026 = call float @dx.op.unary.f32(i32 21, float %3022)  ; Exp(value)
  %3027 = call float @dx.op.unary.f32(i32 21, float %3024)  ; Exp(value)
  %3028 = call float @dx.op.unary.f32(i32 7, float %3025)  ; Saturate(value)
  %3029 = call float @dx.op.unary.f32(i32 7, float %3026)  ; Saturate(value)
  %3030 = call float @dx.op.unary.f32(i32 7, float %3027)  ; Saturate(value)
  %3031 = select i1 %3016, float %3028, float 0.000000e+00
  %3032 = select i1 %3017, float %3029, float 0.000000e+00
  %3033 = select i1 %3018, float %3030, float 0.000000e+00
  %3034 = fmul fast float %3031, %2505
  %3035 = fmul fast float %3032, %2505
  %3036 = fmul fast float %3033, %2505
  %3037 = fadd fast float %3034, -1.000000e+00
  %3038 = fadd fast float %3035, -1.000000e+00
  %3039 = fadd fast float %3036, -1.000000e+00
  %3040 = fmul fast float %3037, %1533
  %3041 = fmul fast float %3038, %1533
  %3042 = fmul fast float %3039, %1533
  %3043 = fmul fast float %2995, %2500
  %3044 = fmul fast float %2996, %2501
  %3045 = fmul fast float %2997, %2502
  %3046 = fsub fast float 1.000000e+00, %2179
  %3047 = bitcast float %3046 to i32
  %3048 = sitofp i32 %3047 to float
  %3049 = fmul fast float %3048, 5.000000e+00
  %3050 = fadd fast float %3049, 0xC1EFBF8940000000
  %3051 = fptosi float %3050 to i32
  %3052 = bitcast i32 %3051 to float
  %3053 = fmul fast float %3052, %1509
  %3054 = fmul fast float %2437, %3053
  %3055 = fmul fast float %3054, %2505
  %3056 = fmul fast float %3055, %3011
  %3057 = fmul fast float %2438, %3053
  %3058 = fmul fast float %3057, %2505
  %3059 = fmul fast float %3058, %3012
  %3060 = fmul fast float %2439, %3053
  %3061 = fmul fast float %3060, %2505
  %3062 = fmul fast float %3061, %3013
  %3063 = fadd fast float %3043, %1514
  %3064 = fadd fast float %3063, %3056
  %3065 = fmul fast float %3064, %1533
  %3066 = fadd fast float %3044, %1515
  %3067 = fadd fast float %3066, %3059
  %3068 = fmul fast float %3067, %1533
  %3069 = fadd fast float %3045, %1516
  %3070 = fadd fast float %3069, %3062
  %3071 = fmul fast float %3070, %1533
  %3072 = fmul fast float %2172, 0x4012D0A400000000
  %3073 = fadd fast float %3042, 1.000000e+00
  %3074 = fadd fast float %3041, 1.000000e+00
  %3075 = fadd fast float %3040, 1.000000e+00
  %3076 = fmul fast float %2505, %2439
  %3077 = fmul fast float %2505, %2438
  %3078 = fmul fast float %2505, %2437
  %3079 = fmul fast float %2194, %1533
  %3080 = fsub fast float 1.000000e+00, %3079
  %3081 = call float @dx.op.unary.f32(i32 7, float %3080)  ; Saturate(value)
  %3082 = fsub fast float 1.000000e+00, %3081
  %3083 = fadd fast float %3072, 0x3FDB6377A0000000
  %3084 = fmul fast float %3082, %3083
  %3085 = call float @dx.op.dot3.f32(i32 55, float %1601, float %1602, float %1603, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3086 = fadd fast float %3084, %3085
  %3087 = call float @dx.op.unary.f32(i32 7, float %3086)  ; Saturate(value)
  %3088 = call float @dx.op.binary.f32(i32 35, float %3087, float 0x3F847AE140000000)  ; FMax(a,b)
  %3089 = fmul fast float %3088, %3088
  %3090 = fmul fast float %3089, %3089
  %3091 = fmul fast float %3090, 0xC00A935000000000
  %3092 = call float @dx.op.unary.f32(i32 21, float %3091)  ; Exp(value)
  %3093 = fsub fast float 1.000000e+00, %3092
  %3094 = fmul fast float %3075, %2441
  %3095 = fmul fast float %3094, %3093
  %3096 = fmul fast float %3074, %2442
  %3097 = fmul fast float %3096, %3093
  %3098 = fmul fast float %3073, %2443
  %3099 = fmul fast float %3098, %3093
  %3100 = fadd fast float %3095, %3078
  %3101 = fmul fast float %3100, %1533
  %3102 = fadd fast float %3097, %3077
  %3103 = fmul fast float %3102, %1533
  %3104 = fadd fast float %3099, %3076
  %3105 = fmul fast float %3104, %1533
  %3106 = bitcast i32 %2203 to float
  %3107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3108 = extractvalue %dx.types.CBufRet.f32 %3107, 3
  %3109 = fcmp fast oeq float %3108, 0.000000e+00
  br i1 %3109, label %4787, label %3110

; <label>:3110                                    ; preds = %2994
  %3111 = extractvalue %dx.types.CBufRet.f32 %3107, 0
  %3112 = extractvalue %dx.types.CBufRet.f32 %3107, 1
  %3113 = extractvalue %dx.types.CBufRet.f32 %3107, 2
  %3114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3115 = extractvalue %dx.types.CBufRet.f32 %3114, 0
  %3116 = extractvalue %dx.types.CBufRet.f32 %3114, 1
  %3117 = extractvalue %dx.types.CBufRet.f32 %3114, 2
  %3118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3119 = extractvalue %dx.types.CBufRet.f32 %3118, 0
  %3120 = extractvalue %dx.types.CBufRet.f32 %3118, 1
  %3121 = call float @dx.op.dot3.f32(i32 55, float %3115, float %3116, float %3117, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3122 = select i1 %204, float %3119, float %3115
  %3123 = select i1 %204, float %3121, float %3116
  %3124 = select i1 %204, float %3120, float %3117
  %3125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3126 = extractvalue %dx.types.CBufRet.f32 %3125, 2
  %3127 = fmul fast float %3126, %97
  %3128 = fmul fast float %3126, %98
  %3129 = fmul fast float %3126, %99
  %3130 = fadd fast float %3127, %142
  %3131 = fadd fast float %3128, %143
  %3132 = fadd fast float %3129, %144
  %3133 = fcmp fast olt float %3108, 0.000000e+00
  br i1 %3133, label %4229, label %3134

; <label>:3134                                    ; preds = %3110
  %3135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3136 = extractvalue %dx.types.CBufRet.f32 %3135, 0
  %3137 = extractvalue %dx.types.CBufRet.f32 %3135, 1
  %3138 = extractvalue %dx.types.CBufRet.f32 %3135, 2
  %3139 = extractvalue %dx.types.CBufRet.f32 %3135, 3
  %3140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3141 = extractvalue %dx.types.CBufRet.f32 %3140, 0
  %3142 = extractvalue %dx.types.CBufRet.f32 %3140, 1
  %3143 = extractvalue %dx.types.CBufRet.f32 %3140, 2
  %3144 = extractvalue %dx.types.CBufRet.f32 %3140, 3
  %3145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3146 = extractvalue %dx.types.CBufRet.f32 %3145, 0
  %3147 = extractvalue %dx.types.CBufRet.f32 %3145, 1
  %3148 = extractvalue %dx.types.CBufRet.f32 %3145, 2
  %3149 = extractvalue %dx.types.CBufRet.f32 %3145, 3
  %3150 = fmul fast float %3136, %3130
  %3151 = call float @dx.op.tertiary.f32(i32 46, float %3131, float %3137, float %3150)  ; FMad(a,b,c)
  %3152 = call float @dx.op.tertiary.f32(i32 46, float %3132, float %3138, float %3151)  ; FMad(a,b,c)
  %3153 = fadd fast float %3152, %3139
  %3154 = fmul fast float %3141, %3130
  %3155 = call float @dx.op.tertiary.f32(i32 46, float %3131, float %3142, float %3154)  ; FMad(a,b,c)
  %3156 = call float @dx.op.tertiary.f32(i32 46, float %3132, float %3143, float %3155)  ; FMad(a,b,c)
  %3157 = fadd fast float %3156, %3144
  %3158 = fmul fast float %3146, %3130
  %3159 = call float @dx.op.tertiary.f32(i32 46, float %3131, float %3147, float %3158)  ; FMad(a,b,c)
  %3160 = call float @dx.op.tertiary.f32(i32 46, float %3132, float %3148, float %3159)  ; FMad(a,b,c)
  %3161 = fadd fast float %3160, %3149
  %3162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3163 = extractvalue %dx.types.CBufRet.f32 %3162, 0
  %3164 = extractvalue %dx.types.CBufRet.f32 %3162, 1
  %3165 = extractvalue %dx.types.CBufRet.f32 %3162, 3
  %3166 = fmul fast float %3165, %3153
  %3167 = fmul fast float %3165, %3157
  %3168 = fadd fast float %3166, %3163
  %3169 = fadd fast float %3167, %3164
  %3170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3171 = extractvalue %dx.types.CBufRet.f32 %3170, 0
  %3172 = extractvalue %dx.types.CBufRet.f32 %3170, 1
  %3173 = extractvalue %dx.types.CBufRet.f32 %3170, 3
  %3174 = fmul fast float %3173, %3153
  %3175 = fmul fast float %3173, %3157
  %3176 = fadd fast float %3174, %3171
  %3177 = fadd fast float %3175, %3172
  %3178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3179 = extractvalue %dx.types.CBufRet.f32 %3178, 1
  %3180 = fsub fast float %3179, %3161
  %3181 = extractvalue %dx.types.CBufRet.f32 %3178, 2
  %3182 = fmul fast float %3180, %3181
  %3183 = fsub fast float 1.000000e+00, %3182
  %3184 = call float @dx.op.unary.f32(i32 7, float %3183)  ; Saturate(value)
  %3185 = extractvalue %dx.types.CBufRet.f32 %3170, 2
  %3186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3187 = extractvalue %dx.types.CBufRet.f32 %3186, 2
  %3188 = fadd fast float %3187, %3185
  %3189 = fcmp fast ogt float %3188, 0.000000e+00
  br i1 %3189, label %3190, label %3214

; <label>:3190                                    ; preds = %3134
  %3191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3192 = extractvalue %dx.types.CBufRet.f32 %3191, 0
  %3193 = extractvalue %dx.types.CBufRet.f32 %3191, 1
  %3194 = fsub fast float %3176, %3192
  %3195 = fsub fast float %3177, %3193
  %3196 = fcmp fast olt float %3194, 0.000000e+00
  %3197 = fcmp fast olt float %3195, 0.000000e+00
  %3198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3199 = extractvalue %dx.types.CBufRet.f32 %3198, 0
  %3200 = extractvalue %dx.types.CBufRet.f32 %3198, 1
  %3201 = extractvalue %dx.types.CBufRet.f32 %3198, 2
  %3202 = extractvalue %dx.types.CBufRet.f32 %3198, 3
  %3203 = select i1 %3196, float %3199, float %3201
  %3204 = select i1 %3197, float %3200, float %3202
  %3205 = fmul fast float %3203, %3194
  %3206 = fmul fast float %3204, %3195
  %3207 = call float @dx.op.unary.f32(i32 6, float %3205)  ; FAbs(value)
  %3208 = call float @dx.op.unary.f32(i32 6, float %3206)  ; FAbs(value)
  %3209 = extractvalue %dx.types.CBufRet.f32 %3125, 0
  %3210 = call float @dx.op.binary.f32(i32 35, float %3207, float %3208)  ; FMax(a,b)
  %3211 = fsub fast float %3209, %3210
  %3212 = call float @dx.op.unary.f32(i32 7, float %3211)  ; Saturate(value)
  %3213 = fmul fast float %3212, %3184
  br label %3214

; <label>:3214                                    ; preds = %3190, %3134
  %3215 = phi float [ %3213, %3190 ], [ 0.000000e+00, %3134 ]
  %3216 = extractvalue %dx.types.CBufRet.f32 %3162, 2
  %3217 = extractvalue %dx.types.CBufRet.f32 %3186, 1
  %3218 = fadd fast float %3217, %3216
  %3219 = fcmp fast ogt float %3218, 0.000000e+00
  %3220 = extractvalue %dx.types.CBufRet.f32 %3125, 0
  br i1 %3219, label %3221, label %3244

; <label>:3221                                    ; preds = %3214
  %3222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3223 = extractvalue %dx.types.CBufRet.f32 %3222, 0
  %3224 = extractvalue %dx.types.CBufRet.f32 %3222, 1
  %3225 = fsub fast float %3168, %3223
  %3226 = fsub fast float %3169, %3224
  %3227 = fcmp fast olt float %3225, 0.000000e+00
  %3228 = fcmp fast olt float %3226, 0.000000e+00
  %3229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3230 = extractvalue %dx.types.CBufRet.f32 %3229, 0
  %3231 = extractvalue %dx.types.CBufRet.f32 %3229, 1
  %3232 = extractvalue %dx.types.CBufRet.f32 %3229, 2
  %3233 = extractvalue %dx.types.CBufRet.f32 %3229, 3
  %3234 = select i1 %3227, float %3230, float %3232
  %3235 = select i1 %3228, float %3231, float %3233
  %3236 = fmul fast float %3234, %3225
  %3237 = fmul fast float %3235, %3226
  %3238 = call float @dx.op.unary.f32(i32 6, float %3236)  ; FAbs(value)
  %3239 = call float @dx.op.unary.f32(i32 6, float %3237)  ; FAbs(value)
  %3240 = call float @dx.op.binary.f32(i32 35, float %3238, float %3239)  ; FMax(a,b)
  %3241 = fsub fast float %3220, %3240
  %3242 = call float @dx.op.unary.f32(i32 7, float %3241)  ; Saturate(value)
  %3243 = fmul fast float %3242, %3184
  br label %3244

; <label>:3244                                    ; preds = %3221, %3214
  %3245 = phi float [ %3243, %3221 ], [ 0.000000e+00, %3214 ]
  %3246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3247 = extractvalue %dx.types.CBufRet.f32 %3246, 1
  %3248 = call float @dx.op.unary.f32(i32 7, float %3247)  ; Saturate(value)
  %3249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3250 = extractvalue %dx.types.CBufRet.f32 %3249, 0
  %3251 = extractvalue %dx.types.CBufRet.f32 %3249, 1
  %3252 = fsub fast float %3153, %3250
  %3253 = fsub fast float %3157, %3251
  %3254 = fcmp fast olt float %3252, 0.000000e+00
  %3255 = fcmp fast olt float %3253, 0.000000e+00
  %3256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3257 = extractvalue %dx.types.CBufRet.f32 %3256, 0
  %3258 = extractvalue %dx.types.CBufRet.f32 %3256, 1
  %3259 = extractvalue %dx.types.CBufRet.f32 %3256, 2
  %3260 = extractvalue %dx.types.CBufRet.f32 %3256, 3
  %3261 = select i1 %3254, float %3257, float %3259
  %3262 = select i1 %3255, float %3258, float %3260
  %3263 = fmul fast float %3261, %3252
  %3264 = fmul fast float %3262, %3253
  %3265 = call float @dx.op.unary.f32(i32 6, float %3263)  ; FAbs(value)
  %3266 = call float @dx.op.unary.f32(i32 6, float %3264)  ; FAbs(value)
  %3267 = call float @dx.op.binary.f32(i32 35, float %3265, float %3266)  ; FMax(a,b)
  %3268 = fsub fast float %3220, %3267
  %3269 = call float @dx.op.unary.f32(i32 7, float %3268)  ; Saturate(value)
  %3270 = call float @dx.op.binary.f32(i32 36, float %3269, float %3248)  ; FMin(a,b)
  %3271 = fmul fast float %3270, %3184
  %3272 = fsub fast float %3245, %3271
  %3273 = fsub fast float %3215, %3245
  %3274 = fsub fast float %3273, %3271
  %3275 = call float @dx.op.binary.f32(i32 35, float %3245, float %3215)  ; FMax(a,b)
  %3276 = call float @dx.op.binary.f32(i32 35, float %3271, float %3275)  ; FMax(a,b)
  %3277 = fcmp fast olt float %3276, 1.000000e+00
  br i1 %3277, label %3278, label %3676, !dx.controlflow.hints !95

; <label>:3278                                    ; preds = %3244
  %3279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3280 = extractvalue %dx.types.CBufRet.f32 %3279, 0
  %3281 = fcmp fast une float %3280, 0.000000e+00
  br i1 %3281, label %3282, label %3676, !dx.controlflow.hints !96

; <label>:3282                                    ; preds = %3278
  %3283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3284 = extractvalue %dx.types.CBufRet.f32 %3283, 0
  %3285 = extractvalue %dx.types.CBufRet.f32 %3283, 1
  %3286 = extractvalue %dx.types.CBufRet.f32 %3283, 2
  %3287 = extractvalue %dx.types.CBufRet.f32 %3283, 3
  %3288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3289 = extractvalue %dx.types.CBufRet.f32 %3288, 0
  %3290 = extractvalue %dx.types.CBufRet.f32 %3288, 1
  %3291 = extractvalue %dx.types.CBufRet.f32 %3288, 2
  %3292 = extractvalue %dx.types.CBufRet.f32 %3288, 3
  %3293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3294 = extractvalue %dx.types.CBufRet.f32 %3293, 0
  %3295 = extractvalue %dx.types.CBufRet.f32 %3293, 1
  %3296 = extractvalue %dx.types.CBufRet.f32 %3293, 2
  %3297 = extractvalue %dx.types.CBufRet.f32 %3293, 3
  %3298 = fmul fast float %3284, %3130
  %3299 = call float @dx.op.tertiary.f32(i32 46, float %3131, float %3285, float %3298)  ; FMad(a,b,c)
  %3300 = call float @dx.op.tertiary.f32(i32 46, float %3132, float %3286, float %3299)  ; FMad(a,b,c)
  %3301 = fadd fast float %3300, %3287
  %3302 = fmul fast float %3289, %3130
  %3303 = call float @dx.op.tertiary.f32(i32 46, float %3131, float %3290, float %3302)  ; FMad(a,b,c)
  %3304 = call float @dx.op.tertiary.f32(i32 46, float %3132, float %3291, float %3303)  ; FMad(a,b,c)
  %3305 = fadd fast float %3304, %3292
  %3306 = fmul fast float %3294, %3130
  %3307 = call float @dx.op.tertiary.f32(i32 46, float %3131, float %3295, float %3306)  ; FMad(a,b,c)
  %3308 = call float @dx.op.tertiary.f32(i32 46, float %3132, float %3296, float %3307)  ; FMad(a,b,c)
  %3309 = fadd fast float %3308, %3297
  %3310 = fcmp fast oge float %3301, 1.000000e+00
  %3311 = fcmp fast oge float %3305, 1.000000e+00
  %3312 = or i1 %3310, %3311
  %3313 = fcmp fast olt float %3301, 0.000000e+00
  %3314 = fcmp fast olt float %3305, 0.000000e+00
  %3315 = or i1 %3313, %3314
  %3316 = or i1 %3312, %3315
  br i1 %3316, label %3676, label %3317, !dx.controlflow.hints !97

; <label>:3317                                    ; preds = %3282
  %3318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3319 = extractvalue %dx.types.CBufRet.f32 %3318, 0
  %3320 = extractvalue %dx.types.CBufRet.f32 %3318, 1
  %3321 = extractvalue %dx.types.CBufRet.f32 %3318, 2
  %3322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3323 = extractvalue %dx.types.CBufRet.i32 %3322, 2
  %3324 = uitofp i32 %3323 to float
  %3325 = extractvalue %dx.types.CBufRet.i32 %3322, 3
  %3326 = uitofp i32 %3325 to float
  %3327 = extractvalue %dx.types.CBufRet.f32 %3318, 3
  %3328 = fmul fast float %3327, 2.000000e+00
  %3329 = fsub fast float %3301, %3319
  %3330 = fsub fast float %3305, %3320
  %3331 = fmul fast float %3328, %3329
  %3332 = fmul fast float %3328, %3330
  %3333 = fdiv fast float 1.000000e+00, %3113
  %3334 = fmul fast float %3332, %3333
  %3335 = call float @dx.op.unary.f32(i32 6, float %3334)  ; FAbs(value)
  %3336 = fmul fast float %3321, %3132
  %3337 = fmul fast float %3336, %3328
  %3338 = call float @dx.op.unary.f32(i32 6, float %3337)  ; FAbs(value)
  %3339 = call float @dx.op.unary.f32(i32 6, float %3331)  ; FAbs(value)
  %3340 = call float @dx.op.binary.f32(i32 35, float %3338, float %3335)  ; FMax(a,b)
  %3341 = call float @dx.op.binary.f32(i32 35, float %3339, float %3340)  ; FMax(a,b)
  %3342 = fmul fast float %3341, 2.000000e+00
  %3343 = call float @dx.op.unary.f32(i32 23, float %3342)  ; Log(value)
  %3344 = call float @dx.op.binary.f32(i32 35, float %3343, float %3324)  ; FMax(a,b)
  %3345 = call float @dx.op.unary.f32(i32 22, float %3344)  ; Frc(value)
  %3346 = fadd fast float %3345, 0xBFEA666660000000
  %3347 = fmul fast float %3346, 8.000000e+00
  %3348 = call float @dx.op.unary.f32(i32 7, float %3347)  ; Saturate(value)
  %3349 = call float @dx.op.unary.f32(i32 27, float %3344)  ; Round_ni(value)
  %3350 = fadd fast float %3349, %3348
  %3351 = call float @dx.op.binary.f32(i32 36, float %3350, float %3326)  ; FMin(a,b)
  %3352 = call float @dx.op.unary.f32(i32 27, float %3351)  ; Round_ni(value)
  %3353 = fsub fast float -0.000000e+00, %3352
  %3354 = call float @dx.op.unary.f32(i32 21, float %3353)  ; Exp(value)
  %3355 = fmul fast float %3354, %3328
  %3356 = fmul fast float %3355, %3301
  %3357 = fmul fast float %3355, %3305
  %3358 = fmul fast float %3356, 2.500000e-01
  %3359 = fmul fast float %3357, 2.500000e-01
  %3360 = fadd fast float %3358, 5.000000e-01
  %3361 = fadd fast float %3359, 5.000000e-01
  %3362 = fsub fast float %3326, %3324
  %3363 = fptoui float %3362 to i32
  %3364 = add i32 %3363, 320
  %3365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %3364)  ; CBufferLoadLegacy(handle,regIndex)
  %3366 = extractvalue %dx.types.CBufRet.f32 %3365, 0
  %3367 = extractvalue %dx.types.CBufRet.f32 %3365, 1
  %3368 = fcmp fast une float %3351, %3326
  %3369 = fsub fast float %3301, %3366
  %3370 = fsub fast float %3305, %3367
  %3371 = call float @dx.op.unary.f32(i32 6, float %3369)  ; FAbs(value)
  %3372 = call float @dx.op.unary.f32(i32 6, float %3370)  ; FAbs(value)
  %3373 = fmul fast float %3371, %3355
  %3374 = fmul fast float %3372, %3355
  %3375 = fcmp fast olt float %3373, 1.000000e+00
  %3376 = fcmp fast olt float %3374, 1.000000e+00
  %3377 = and i1 %3375, %3376
  %3378 = or i1 %3368, %3377
  br i1 %3378, label %3379, label %3676, !dx.controlflow.hints !98

; <label>:3379                                    ; preds = %3317
  %3380 = fmul fast float %3357, 5.000000e-01
  %3381 = fmul fast float %3356, 5.000000e-01
  %3382 = fadd fast float %3380, 5.000000e-01
  %3383 = fadd fast float %3381, 5.000000e-01
  %3384 = sitofp i32 %3323 to float
  %3385 = fsub fast float %3351, %3384
  %3386 = call float @dx.op.unary.f32(i32 27, float %3385)  ; Round_ni(value)
  %3387 = call float @dx.op.unary.f32(i32 22, float %3351)  ; Frc(value)
  %3388 = call float @dx.op.unary.f32(i32 22, float %3383)  ; Frc(value)
  %3389 = call float @dx.op.unary.f32(i32 22, float %3382)  ; Frc(value)
  %3390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %3388, float %3389, float %3386, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3391 = extractvalue %dx.types.ResRet.f32 %3390, 0
  %3392 = extractvalue %dx.types.ResRet.f32 %3390, 1
  %3393 = extractvalue %dx.types.ResRet.f32 %3390, 2
  %3394 = extractvalue %dx.types.ResRet.f32 %3390, 3
  %3395 = fcmp fast ogt float %3387, 0.000000e+00
  br i1 %3395, label %3396, label %3417, !dx.controlflow.hints !99

; <label>:3396                                    ; preds = %3379
  %3397 = fadd fast float %3386, 1.000000e+00
  %3398 = call float @dx.op.unary.f32(i32 22, float %3360)  ; Frc(value)
  %3399 = call float @dx.op.unary.f32(i32 22, float %3361)  ; Frc(value)
  %3400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %3398, float %3399, float %3397, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3401 = extractvalue %dx.types.ResRet.f32 %3400, 0
  %3402 = extractvalue %dx.types.ResRet.f32 %3400, 1
  %3403 = extractvalue %dx.types.ResRet.f32 %3400, 2
  %3404 = extractvalue %dx.types.ResRet.f32 %3400, 3
  %3405 = fsub fast float %3401, %3391
  %3406 = fsub fast float %3402, %3392
  %3407 = fsub fast float %3403, %3393
  %3408 = fsub fast float %3404, %3394
  %3409 = fmul fast float %3405, %3387
  %3410 = fmul fast float %3406, %3387
  %3411 = fmul fast float %3407, %3387
  %3412 = fmul fast float %3408, %3387
  %3413 = fadd fast float %3409, %3391
  %3414 = fadd fast float %3410, %3392
  %3415 = fadd fast float %3411, %3393
  %3416 = fadd fast float %3412, %3394
  br label %3417

; <label>:3417                                    ; preds = %3396, %3379
  %3418 = phi float [ %3413, %3396 ], [ %3391, %3379 ]
  %3419 = phi float [ %3414, %3396 ], [ %3392, %3379 ]
  %3420 = phi float [ %3415, %3396 ], [ %3393, %3379 ]
  %3421 = phi float [ %3416, %3396 ], [ %3394, %3379 ]
  %3422 = fadd fast float %3418, -5.000000e-01
  %3423 = fadd fast float %3420, -5.000000e-01
  %3424 = fmul fast float %3422, 0xBFD5555560000000
  %3425 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3423, float %3424)  ; FMad(a,b,c)
  %3426 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3419, float 0.000000e+00)  ; FMad(a,b,c)
  %3427 = fadd fast float %3426, %3421
  %3428 = fmul fast float %3422, -7.500000e-01
  %3429 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3423, float %3428)  ; FMad(a,b,c)
  %3430 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3419, float 0.000000e+00)  ; FMad(a,b,c)
  %3431 = fadd fast float %3430, %3421
  %3432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3433 = extractvalue %dx.types.CBufRet.f32 %3432, 0
  %3434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3435 = extractvalue %dx.types.CBufRet.f32 %3434, 0
  %3436 = extractvalue %dx.types.CBufRet.f32 %3434, 1
  %3437 = extractvalue %dx.types.CBufRet.f32 %3434, 2
  %3438 = extractvalue %dx.types.CBufRet.f32 %3434, 3
  %3439 = fsub fast float %3435, %3425
  %3440 = fsub fast float %3436, %3427
  %3441 = fsub fast float %3437, %3429
  %3442 = fsub fast float %3438, %3431
  %3443 = fmul fast float %3439, %3433
  %3444 = fmul fast float %3440, %3433
  %3445 = fmul fast float %3441, %3433
  %3446 = fmul fast float %3442, %3433
  %3447 = fadd fast float %3443, %3425
  %3448 = fadd fast float %3444, %3427
  %3449 = fadd fast float %3445, %3429
  %3450 = fadd fast float %3446, %3431
  %3451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.i32 %3451, 0
  %3453 = and i32 %3452, 536870911
  %3454 = uitofp i32 %3453 to float
  %3455 = fmul fast float %3454, %3301
  %3456 = fmul fast float %3454, %3305
  %3457 = fptoui float %3455 to i32
  %3458 = fptoui float %3456 to i32
  %3459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.i32 %3459, 0
  %3461 = and i32 %3460, 31
  %3462 = lshr i32 %3457, %3461
  %3463 = lshr i32 %3458, %3461
  %3464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.i32 %3464, 0
  %3466 = and i32 %3465, 31
  %3467 = shl i32 1, %3466
  %3468 = call i32 @dx.op.binary.i32(i32 40, i32 %3467, i32 4)  ; UMin(a,b)
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = extractvalue %dx.types.ResRet.i32 %3469, 1
  %3472 = icmp eq i32 %3468, 0
  br i1 %3472, label %3514, label %3473

; <label>:3473                                    ; preds = %3417
  br label %3474

; <label>:3474                                    ; preds = %3502, %3473
  %3475 = phi i32 [ %3505, %3502 ], [ 0, %3473 ]
  %3476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.i32 %3476, 0
  %3478 = lshr i32 %3477, 16
  %3479 = and i32 %3478, 31
  %3480 = shl i32 %3463, %3479
  %3481 = add i32 %3480, %3462
  %3482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.i32 %3482, 0
  %3484 = and i32 %3483, 31
  %3485 = shl i32 %3481, %3484
  %3486 = add i32 %3485, %3475
  %3487 = shl i32 %3486, 2
  %3488 = add i32 %3487, 32
  %3489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3488, i32 undef)  ; BufferLoad(srv,index,wot)
  %3490 = extractvalue %dx.types.ResRet.i32 %3489, 0
  %3491 = icmp slt i32 %3490, 0
  %3492 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3475
  %3493 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3475
  %3494 = bitcast float* %3492 to i32*
  %3495 = bitcast float* %3493 to i32*
  br i1 %3491, label %3496, label %3502

; <label>:3496                                    ; preds = %3474
  %3497 = and i32 %3490, 1073741823
  %3498 = add nuw nsw i32 %3497, 20
  %3499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.i32 %3499, 0
  %3501 = extractvalue %dx.types.ResRet.i32 %3499, 1
  br label %3502

; <label>:3502                                    ; preds = %3496, %3474
  %3503 = phi i32 [ %3500, %3496 ], [ %3470, %3474 ]
  %3504 = phi i32 [ %3501, %3496 ], [ %3471, %3474 ]
  store i32 %3503, i32* %3494, align 4
  store i32 %3504, i32* %3495, align 4
  %3505 = add nuw i32 %3475, 1
  %3506 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3507 = extractvalue %dx.types.CBufRet.i32 %3506, 2
  %3508 = icmp eq i32 %3507, 0
  %3509 = icmp ugt i32 %3490, -1073741825
  %3510 = and i1 %3509, %3508
  %3511 = icmp ult i32 %3505, %3468
  %3512 = and i1 %3510, %3511
  br i1 %3512, label %3474, label %3513

; <label>:3513                                    ; preds = %3502
  br label %3514

; <label>:3514                                    ; preds = %3513, %3417
  %3515 = phi i32 [ 0, %3417 ], [ %3505, %3513 ]
  %3516 = extractvalue %dx.types.CBufRet.f32 %3279, 2
  %3517 = fptoui float %3516 to i32
  %3518 = icmp eq i32 %3517, 0
  br i1 %3518, label %3570, label %3519

; <label>:3519                                    ; preds = %3514
  br label %3520

; <label>:3520                                    ; preds = %3565, %3519
  %3521 = phi i32 [ %3566, %3565 ], [ %3515, %3519 ]
  %3522 = phi i32 [ %3567, %3565 ], [ 0, %3519 ]
  %3523 = lshr i32 %3522, 2
  %3524 = and i32 %3522, 3
  %3525 = add nuw nsw i32 %3523, 83
  %3526 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %3525)  ; CBufferLoadLegacy(handle,regIndex)
  %3527 = extractvalue %dx.types.CBufRet.i32 %3526, 0
  %3528 = extractvalue %dx.types.CBufRet.i32 %3526, 1
  %3529 = extractvalue %dx.types.CBufRet.i32 %3526, 2
  %3530 = extractvalue %dx.types.CBufRet.i32 %3526, 3
  %3531 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %3527, i32* %3531, align 4
  %3532 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %3528, i32* %3532, align 4
  %3533 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %3529, i32* %3533, align 4
  %3534 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %3530, i32* %3534, align 4
  %3535 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %3524
  %3536 = load i32, i32* %3535, align 4, !tbaa !100, !noalias !104
  %3537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3538 = extractvalue %dx.types.ResRet.i32 %3537, 0
  %3539 = lshr i32 %3538, 16
  %3540 = and i32 %3539, 31
  %3541 = shl i32 %3463, %3540
  %3542 = add i32 %3541, %3462
  %3543 = shl i32 %3542, 2
  %3544 = add i32 %3543, %3536
  %3545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.i32 %3545, 0
  %3547 = icmp eq i32 %3546, 0
  br i1 %3547, label %3565, label %3548

; <label>:3548                                    ; preds = %3520
  %3549 = icmp slt i32 %3546, 0
  %3550 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3521
  %3551 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3521
  %3552 = bitcast float* %3550 to i32*
  %3553 = bitcast float* %3551 to i32*
  br i1 %3549, label %3554, label %3561

; <label>:3554                                    ; preds = %3548
  %3555 = and i32 %3546, 1073741823
  %3556 = add i32 %3536, 20
  %3557 = add i32 %3556, %3555
  %3558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3559 = extractvalue %dx.types.ResRet.i32 %3558, 0
  %3560 = extractvalue %dx.types.ResRet.i32 %3558, 1
  br label %3561

; <label>:3561                                    ; preds = %3554, %3548
  %3562 = phi i32 [ %3559, %3554 ], [ %3470, %3548 ]
  %3563 = phi i32 [ %3560, %3554 ], [ %3471, %3548 ]
  store i32 %3562, i32* %3552, align 4
  store i32 %3563, i32* %3553, align 4
  %3564 = add i32 %3521, 1
  br label %3565

; <label>:3565                                    ; preds = %3561, %3520
  %3566 = phi i32 [ %3521, %3520 ], [ %3564, %3561 ]
  %3567 = add nuw i32 %3522, 1
  %3568 = icmp eq i32 %3567, %3517
  br i1 %3568, label %3569, label %3520

; <label>:3569                                    ; preds = %3565
  br label %3570

; <label>:3570                                    ; preds = %3569, %3514
  %3571 = phi i32 [ %3515, %3514 ], [ %3566, %3569 ]
  %3572 = icmp eq i32 %3571, 1
  %3573 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  %3574 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 0
  br i1 %3572, label %3575, label %3578

; <label>:3575                                    ; preds = %3570
  %3576 = load float, float* %3573, align 4
  %3577 = load float, float* %3574, align 4
  br label %3605

; <label>:3578                                    ; preds = %3570
  %3579 = load float, float* %3573, align 4
  %3580 = load float, float* %3574, align 4
  %3581 = fdiv fast float 1.000000e+00, %3580
  %3582 = fsub fast float %3579, %3581
  %3583 = icmp ugt i32 %3571, 1
  br i1 %3583, label %3584, label %3600

; <label>:3584                                    ; preds = %3578
  br label %3585

; <label>:3585                                    ; preds = %3585, %3584
  %3586 = phi float [ %3595, %3585 ], [ %3582, %3584 ]
  %3587 = phi float [ %3596, %3585 ], [ %3579, %3584 ]
  %3588 = phi i32 [ %3597, %3585 ], [ 1, %3584 ]
  %3589 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3588
  %3590 = load float, float* %3589, align 4
  %3591 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3588
  %3592 = load float, float* %3591, align 4
  %3593 = fdiv fast float 1.000000e+00, %3592
  %3594 = fsub fast float %3590, %3593
  %3595 = call float @dx.op.binary.f32(i32 36, float %3586, float %3594)  ; FMin(a,b)
  %3596 = call float @dx.op.binary.f32(i32 35, float %3587, float %3590)  ; FMax(a,b)
  %3597 = add nuw i32 %3588, 1
  %3598 = icmp eq i32 %3597, %3571
  br i1 %3598, label %3599, label %3585

; <label>:3599                                    ; preds = %3585
  br label %3600

; <label>:3600                                    ; preds = %3599, %3578
  %3601 = phi float [ %3582, %3578 ], [ %3595, %3599 ]
  %3602 = phi float [ %3579, %3578 ], [ %3596, %3599 ]
  %3603 = fsub fast float %3602, %3601
  %3604 = fdiv fast float 1.000000e+00, %3603
  br label %3605

; <label>:3605                                    ; preds = %3600, %3575
  %3606 = phi float [ %3576, %3575 ], [ %3602, %3600 ]
  %3607 = phi float [ %3577, %3575 ], [ %3604, %3600 ]
  %3608 = fadd fast float %3309, %3606
  %3609 = fmul fast float %3608, %3607
  %3610 = call float @dx.op.unary.f32(i32 7, float %3609)  ; Saturate(value)
  %3611 = fmul fast float %3610, 2.000000e+00
  %3612 = fsub fast float 1.000000e+00, %3611
  %3613 = fmul fast float %3447, %3447
  %3614 = fsub fast float %3448, %3613
  %3615 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3614)  ; FMax(a,b)
  %3616 = fdiv fast float 1.000000e+00, %3615
  %3617 = fmul fast float %3448, %3447
  %3618 = fsub fast float %3449, %3617
  %3619 = fsub fast float %3612, %3447
  %3620 = fmul fast float %3612, %3612
  %3621 = fsub fast float %3620, %3448
  %3622 = fmul fast float %3616, %3618
  %3623 = fmul fast float %3622, %3619
  %3624 = fsub fast float %3621, %3623
  %3625 = fmul fast float %3448, %3448
  %3626 = fsub fast float %3450, %3625
  %3627 = fmul fast float %3618, %3618
  %3628 = fmul fast float %3627, %3616
  %3629 = fsub fast float %3626, %3628
  %3630 = fdiv fast float %3624, %3629
  %3631 = fmul fast float %3630, %3618
  %3632 = fsub fast float %3619, %3631
  %3633 = fmul fast float %3632, %3616
  %3634 = fmul fast float %3633, %3447
  %3635 = fsub fast float 1.000000e+00, %3634
  %3636 = fmul fast float %3630, %3448
  %3637 = fsub fast float %3635, %3636
  %3638 = fmul fast float %3633, %3633
  %3639 = fmul fast float %3630, 4.000000e+00
  %3640 = fmul fast float %3639, %3637
  %3641 = fsub fast float %3638, %3640
  %3642 = call float @dx.op.unary.f32(i32 24, float %3641)  ; Sqrt(value)
  %3643 = fcmp fast oge float %3633, 0.000000e+00
  %3644 = fsub fast float -0.000000e+00, %3642
  %3645 = select i1 %3643, float %3644, float %3642
  %3646 = fsub fast float %3645, %3633
  %3647 = fdiv fast float %3646, %3630
  %3648 = fdiv fast float %3637, %3646
  %3649 = fmul fast float %3647, 5.000000e-01
  %3650 = fmul fast float %3648, 2.000000e+00
  %3651 = select i1 %3643, float %3649, float %3650
  %3652 = select i1 %3643, float %3650, float %3649
  %3653 = call float @dx.op.binary.f32(i32 35, float %3651, float %3652)  ; FMax(a,b)
  %3654 = call float @dx.op.binary.f32(i32 36, float %3651, float %3652)  ; FMin(a,b)
  %3655 = fcmp fast ogt float %3612, %3653
  %3656 = fsub fast float %3612, %3654
  %3657 = fsub fast float %3612, %3653
  %3658 = fsub fast float %3653, %3654
  %3659 = select i1 %3655, float %3657, float %3658
  %3660 = fmul float %3656, %3659
  %3661 = select i1 %3655, float %3654, float %3612
  %3662 = fcmp fast ogt float %3612, %3654
  %3663 = fmul fast float %3661, %3653
  %3664 = fadd fast float %3661, %3653
  %3665 = fmul fast float %3664, %3447
  %3666 = fadd fast float %3663, %3448
  %3667 = fsub fast float %3666, %3665
  %3668 = fdiv fast float %3667, %3660
  %3669 = select i1 %3662, float %3668, float 0.000000e+00
  %3670 = fsub fast float 1.000000e+00, %3669
  %3671 = select i1 %3655, float %3670, float %3669
  %3672 = call float @dx.op.unary.f32(i32 7, float %3671)  ; Saturate(value)
  %3673 = extractvalue %dx.types.CBufRet.f32 %3432, 3
  %3674 = fmul fast float %3673, %3672
  %3675 = fsub fast float 1.000000e+00, %3674
  br label %3676

; <label>:3676                                    ; preds = %3605, %3317, %3282, %3278, %3244
  %3677 = phi float [ 1.000000e+00, %3244 ], [ %3675, %3605 ], [ 1.000000e+00, %3282 ], [ 1.000000e+00, %3317 ], [ 1.000000e+00, %3278 ]
  %3678 = fcmp fast ogt float %3274, 0.000000e+00
  br i1 %3678, label %3679, label %3841, !dx.controlflow.hints !113

; <label>:3679                                    ; preds = %3676
  %3680 = fadd fast float %3187, %3161
  %3681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3682 = extractvalue %dx.types.CBufRet.f32 %3681, 2
  %3683 = extractvalue %dx.types.CBufRet.f32 %3681, 3
  %3684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3685 = extractvalue %dx.types.CBufRet.f32 %3684, 2
  %3686 = call float @dx.op.binary.f32(i32 35, float %3680, float 0.000000e+00)  ; FMax(a,b)
  %3687 = fadd fast float %3686, 0x3F10000000000000
  %3688 = fcmp fast oeq float %3685, 0.000000e+00
  br i1 %3688, label %3689, label %3756

; <label>:3689                                    ; preds = %3679
  %3690 = extractvalue %dx.types.CBufRet.f32 %3681, 1
  %3691 = extractvalue %dx.types.CBufRet.f32 %3681, 0
  %3692 = fmul fast float %3691, %3176
  %3693 = fmul fast float %3690, %3177
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
  %3734 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %3731, float %3733, float undef, float undef, i32 0, i32 0, i32 undef, float %3687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3735 = extractvalue %dx.types.ResRet.f32 %3734, 0
  %3736 = fmul fast float %3735, %3703
  %3737 = fadd fast float %3715, %3700
  %3738 = fmul fast float %3737, %3682
  %3739 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %3738, float %3733, float undef, float undef, i32 0, i32 0, i32 undef, float %3687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3740 = extractvalue %dx.types.ResRet.f32 %3739, 0
  %3741 = fmul fast float %3740, %3704
  %3742 = fadd fast float %3729, %3701
  %3743 = fmul fast float %3742, %3683
  %3744 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %3731, float %3743, float undef, float undef, i32 0, i32 0, i32 undef, float %3687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3745 = extractvalue %dx.types.ResRet.f32 %3744, 0
  %3746 = fmul fast float %3745, %3703
  %3747 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %3738, float %3743, float undef, float undef, i32 0, i32 0, i32 undef, float %3687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3748 = extractvalue %dx.types.ResRet.f32 %3747, 0
  %3749 = fmul fast float %3748, %3704
  %3750 = fadd fast float %3749, %3746
  %3751 = fmul fast float %3750, %3718
  %3752 = fadd fast float %3741, %3736
  %3753 = fmul fast float %3752, %3717
  %3754 = fadd fast float %3753, %3751
  %3755 = fmul fast float %3754, 6.250000e-02
  br label %3841

; <label>:3756                                    ; preds = %3679
  %3757 = fmul fast float %215, 0x401921FB60000000
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
  %3779 = fadd fast float %3777, %3176
  %3780 = fadd fast float %3778, %3177
  %3781 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %51, float %3779, float %3780, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3782 = extractvalue %dx.types.ResRet.f32 %3781, 0
  %3783 = extractvalue %dx.types.ResRet.f32 %3781, 1
  %3784 = extractvalue %dx.types.ResRet.f32 %3781, 2
  %3785 = extractvalue %dx.types.ResRet.f32 %3781, 3
  %3786 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 0
  store float %3782, float* %3786, align 4
  %3787 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 1
  store float %3783, float* %3787, align 4
  %3788 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 2
  store float %3784, float* %3788, align 4
  %3789 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 3
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
  %3800 = getelementptr [4 x float], [4 x float]* %87, i32 0, i32 %3797
  %3801 = load float, float* %3800, align 4, !tbaa !114, !noalias !104
  %3802 = fsub fast float %3801, %3687
  %3803 = fcmp fast olt float %3802, 0.000000e+00
  %3804 = select i1 %3803, float 0.000000e+00, float 1.000000e+00
  %3805 = fadd fast float %3804, %3799
  %3806 = fmul fast float %3804, %3802
  %3807 = fadd fast float %3806, %3798
  %3808 = add nuw nsw i32 %3797, 1
  %3809 = icmp eq i32 %3808, 4
  br i1 %3809, label %3810, label %3796, !llvm.loop !116

; <label>:3810                                    ; preds = %3796
  %3811 = add nuw nsw i32 %3764, 1
  %3812 = icmp eq i32 %3811, 8
  br i1 %3812, label %3813, label %3761, !llvm.loop !117

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

; <label>:3841                                    ; preds = %3813, %3689, %3676
  %3842 = phi float [ 1.000000e+00, %3676 ], [ %3755, %3689 ], [ %3840, %3813 ]
  %3843 = fcmp fast ogt float %3272, 0.000000e+00
  br i1 %3843, label %3844, label %4008, !dx.controlflow.hints !118

; <label>:3844                                    ; preds = %3841
  %3845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3846 = extractvalue %dx.types.CBufRet.f32 %3845, 1
  %3847 = fadd fast float %3846, %3161
  %3848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3849 = extractvalue %dx.types.CBufRet.f32 %3848, 2
  %3850 = extractvalue %dx.types.CBufRet.f32 %3848, 3
  %3851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3852 = extractvalue %dx.types.CBufRet.f32 %3851, 1
  %3853 = call float @dx.op.binary.f32(i32 35, float %3847, float 0.000000e+00)  ; FMax(a,b)
  %3854 = fadd fast float %3853, 0x3F10000000000000
  %3855 = fcmp fast oeq float %3852, 0.000000e+00
  br i1 %3855, label %3856, label %3923

; <label>:3856                                    ; preds = %3844
  %3857 = extractvalue %dx.types.CBufRet.f32 %3848, 1
  %3858 = extractvalue %dx.types.CBufRet.f32 %3848, 0
  %3859 = fmul fast float %3858, %3168
  %3860 = fmul fast float %3857, %3169
  %3861 = fadd fast float %3859, 5.000000e-01
  %3862 = call float @dx.op.unary.f32(i32 27, float %3861)  ; Round_ni(value)
  %3863 = fadd fast float %3860, 5.000000e-01
  %3864 = call float @dx.op.unary.f32(i32 27, float %3863)  ; Round_ni(value)
  %3865 = fsub fast float %3861, %3862
  %3866 = fsub fast float %3863, %3864
  %3867 = fadd fast float %3862, -5.000000e-01
  %3868 = fadd fast float %3864, -5.000000e-01
  %3869 = fmul fast float %3865, 2.000000e+00
  %3870 = fsub fast float 3.000000e+00, %3869
  %3871 = fadd fast float %3869, 1.000000e+00
  %3872 = fsub fast float 2.000000e+00, %3865
  %3873 = bitcast float %3870 to i32
  %3874 = sub nsw i32 2129859010, %3873
  %3875 = bitcast i32 %3874 to float
  %3876 = fmul fast float %3875, %3872
  %3877 = fadd fast float %3876, -1.000000e+00
  %3878 = bitcast float %3871 to i32
  %3879 = sub nsw i32 2129859010, %3878
  %3880 = bitcast i32 %3879 to float
  %3881 = fmul fast float %3880, %3865
  %3882 = fadd fast float %3881, 1.000000e+00
  %3883 = fmul fast float %3866, 2.000000e+00
  %3884 = fsub fast float 3.000000e+00, %3883
  %3885 = fadd fast float %3883, 1.000000e+00
  %3886 = fsub fast float 2.000000e+00, %3866
  %3887 = bitcast float %3884 to i32
  %3888 = sub nsw i32 2129859010, %3887
  %3889 = bitcast i32 %3888 to float
  %3890 = fmul fast float %3889, %3886
  %3891 = fadd fast float %3890, -1.000000e+00
  %3892 = bitcast float %3885 to i32
  %3893 = sub nsw i32 2129859010, %3892
  %3894 = bitcast i32 %3893 to float
  %3895 = fmul fast float %3894, %3866
  %3896 = fadd fast float %3895, 1.000000e+00
  %3897 = fadd fast float %3877, %3867
  %3898 = fmul fast float %3897, %3849
  %3899 = fadd fast float %3891, %3868
  %3900 = fmul fast float %3899, %3850
  %3901 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %3898, float %3900, float undef, float undef, i32 0, i32 0, i32 undef, float %3854)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3902 = extractvalue %dx.types.ResRet.f32 %3901, 0
  %3903 = fmul fast float %3902, %3870
  %3904 = fadd fast float %3882, %3867
  %3905 = fmul fast float %3904, %3849
  %3906 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %3905, float %3900, float undef, float undef, i32 0, i32 0, i32 undef, float %3854)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3907 = extractvalue %dx.types.ResRet.f32 %3906, 0
  %3908 = fmul fast float %3907, %3871
  %3909 = fadd fast float %3896, %3868
  %3910 = fmul fast float %3909, %3850
  %3911 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %3898, float %3910, float undef, float undef, i32 0, i32 0, i32 undef, float %3854)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3912 = extractvalue %dx.types.ResRet.f32 %3911, 0
  %3913 = fmul fast float %3912, %3870
  %3914 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %3905, float %3910, float undef, float undef, i32 0, i32 0, i32 undef, float %3854)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3915 = extractvalue %dx.types.ResRet.f32 %3914, 0
  %3916 = fmul fast float %3915, %3871
  %3917 = fadd fast float %3916, %3913
  %3918 = fmul fast float %3917, %3885
  %3919 = fadd fast float %3908, %3903
  %3920 = fmul fast float %3919, %3884
  %3921 = fadd fast float %3920, %3918
  %3922 = fmul fast float %3921, 6.250000e-02
  br label %4008

; <label>:3923                                    ; preds = %3844
  %3924 = fmul fast float %215, 0x401921FB60000000
  %3925 = call float @dx.op.unary.f32(i32 13, float %3924)  ; Sin(value)
  %3926 = call float @dx.op.unary.f32(i32 12, float %3924)  ; Cos(value)
  %3927 = fsub fast float -0.000000e+00, %3925
  br label %3928

; <label>:3928                                    ; preds = %3977, %3923
  %3929 = phi float [ 0.000000e+00, %3923 ], [ %3972, %3977 ]
  %3930 = phi float [ 0.000000e+00, %3923 ], [ %3974, %3977 ]
  %3931 = phi i32 [ 0, %3923 ], [ %3978, %3977 ]
  %3932 = mul i32 %3931, 2
  %3933 = add i32 0, %3932
  %3934 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3933
  %3935 = load float, float* %3934, align 4
  %3936 = mul i32 %3931, 2
  %3937 = add i32 1, %3936
  %3938 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3937
  %3939 = load float, float* %3938, align 4
  %3940 = fmul fast float %3935, %3926
  %3941 = call float @dx.op.tertiary.f32(i32 46, float %3939, float %3927, float %3940)  ; FMad(a,b,c)
  %3942 = fmul fast float %3935, %3925
  %3943 = call float @dx.op.tertiary.f32(i32 46, float %3939, float %3926, float %3942)  ; FMad(a,b,c)
  %3944 = fmul fast float %3941, %3852
  %3945 = fmul fast float %3943, %3852
  %3946 = fadd fast float %3944, %3168
  %3947 = fadd fast float %3945, %3169
  %3948 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %51, float %3946, float %3947, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3949 = extractvalue %dx.types.ResRet.f32 %3948, 0
  %3950 = extractvalue %dx.types.ResRet.f32 %3948, 1
  %3951 = extractvalue %dx.types.ResRet.f32 %3948, 2
  %3952 = extractvalue %dx.types.ResRet.f32 %3948, 3
  %3953 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 0
  store float %3949, float* %3953, align 4
  %3954 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 1
  store float %3950, float* %3954, align 4
  %3955 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 2
  store float %3951, float* %3955, align 4
  %3956 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 3
  store float %3952, float* %3956, align 4
  %3957 = fsub fast float %3949, %3854
  %3958 = fcmp fast olt float %3957, 0.000000e+00
  %3959 = select i1 %3958, float 0.000000e+00, float 1.000000e+00
  %3960 = fadd fast float %3959, %3929
  %3961 = fmul fast float %3959, %3957
  %3962 = fadd fast float %3961, %3930
  br label %3963

; <label>:3963                                    ; preds = %3963, %3928
  %3964 = phi i32 [ 1, %3928 ], [ %3975, %3963 ]
  %3965 = phi float [ %3962, %3928 ], [ %3974, %3963 ]
  %3966 = phi float [ %3960, %3928 ], [ %3972, %3963 ]
  %3967 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 %3964
  %3968 = load float, float* %3967, align 4, !tbaa !114, !noalias !104
  %3969 = fsub fast float %3968, %3854
  %3970 = fcmp fast olt float %3969, 0.000000e+00
  %3971 = select i1 %3970, float 0.000000e+00, float 1.000000e+00
  %3972 = fadd fast float %3971, %3966
  %3973 = fmul fast float %3971, %3969
  %3974 = fadd fast float %3973, %3965
  %3975 = add nuw nsw i32 %3964, 1
  %3976 = icmp eq i32 %3975, 4
  br i1 %3976, label %3977, label %3963, !llvm.loop !116

; <label>:3977                                    ; preds = %3963
  %3978 = add nuw nsw i32 %3931, 1
  %3979 = icmp eq i32 %3978, 8
  br i1 %3979, label %3980, label %3928, !llvm.loop !117

; <label>:3980                                    ; preds = %3977
  %3981 = fdiv fast float 1.000000e+00, %3972
  %3982 = fmul fast float %3981, %3974
  %3983 = fdiv fast float 1.000000e+00, %3854
  %3984 = fmul fast float %3982, %3983
  %3985 = call float @dx.op.unary.f32(i32 7, float %3984)  ; Saturate(value)
  %3986 = call float @dx.op.binary.f32(i32 35, float %3985, float 0.000000e+00)  ; FMax(a,b)
  %3987 = fmul fast float %3972, 3.125000e-02
  %3988 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %3989 = fmul fast float %3988, 2.000000e+00
  %3990 = fadd fast float %3989, -1.000000e+00
  %3991 = fcmp fast ogt float %3990, 0.000000e+00
  %3992 = fcmp fast olt float %3990, 0.000000e+00
  %3993 = zext i1 %3991 to i32
  %3994 = zext i1 %3992 to i32
  %3995 = sub nsw i32 %3993, %3994
  %3996 = sitofp i32 %3995 to float
  %3997 = fmul fast float %3996, %3990
  %3998 = fsub fast float 1.000000e+00, %3997
  %3999 = fmul fast float %3998, %3998
  %4000 = fmul fast float %3999, %3998
  %4001 = fsub fast float %3998, %4000
  %4002 = fmul fast float %4001, %3986
  %4003 = fsub fast float 1.000000e+00, %4000
  %4004 = fsub fast float %4003, %4002
  %4005 = fmul fast float %3996, 5.000000e-01
  %4006 = fmul fast float %4005, %4004
  %4007 = fsub fast float 5.000000e-01, %4006
  br label %4008

; <label>:4008                                    ; preds = %3980, %3856, %3841
  %4009 = phi float [ 1.000000e+00, %3841 ], [ %3922, %3856 ], [ %4007, %3980 ]
  %4010 = fcmp fast ogt float %3271, 0.000000e+00
  br i1 %4010, label %4011, label %4175, !dx.controlflow.hints !119

; <label>:4011                                    ; preds = %4008
  %4012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4013 = extractvalue %dx.types.CBufRet.f32 %4012, 0
  %4014 = fadd fast float %4013, %3161
  %4015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4016 = extractvalue %dx.types.CBufRet.f32 %4015, 2
  %4017 = extractvalue %dx.types.CBufRet.f32 %4015, 3
  %4018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4019 = extractvalue %dx.types.CBufRet.f32 %4018, 0
  %4020 = call float @dx.op.binary.f32(i32 35, float %4014, float 0.000000e+00)  ; FMax(a,b)
  %4021 = fadd fast float %4020, 0x3F10000000000000
  %4022 = fcmp fast oeq float %4019, 0.000000e+00
  br i1 %4022, label %4023, label %4090

; <label>:4023                                    ; preds = %4011
  %4024 = extractvalue %dx.types.CBufRet.f32 %4015, 1
  %4025 = extractvalue %dx.types.CBufRet.f32 %4015, 0
  %4026 = fmul fast float %4025, %3153
  %4027 = fmul fast float %4024, %3157
  %4028 = fadd fast float %4026, 5.000000e-01
  %4029 = call float @dx.op.unary.f32(i32 27, float %4028)  ; Round_ni(value)
  %4030 = fadd fast float %4027, 5.000000e-01
  %4031 = call float @dx.op.unary.f32(i32 27, float %4030)  ; Round_ni(value)
  %4032 = fsub fast float %4028, %4029
  %4033 = fsub fast float %4030, %4031
  %4034 = fadd fast float %4029, -5.000000e-01
  %4035 = fadd fast float %4031, -5.000000e-01
  %4036 = fmul fast float %4032, 2.000000e+00
  %4037 = fsub fast float 3.000000e+00, %4036
  %4038 = fadd fast float %4036, 1.000000e+00
  %4039 = fsub fast float 2.000000e+00, %4032
  %4040 = bitcast float %4037 to i32
  %4041 = sub nsw i32 2129859010, %4040
  %4042 = bitcast i32 %4041 to float
  %4043 = fmul fast float %4042, %4039
  %4044 = fadd fast float %4043, -1.000000e+00
  %4045 = bitcast float %4038 to i32
  %4046 = sub nsw i32 2129859010, %4045
  %4047 = bitcast i32 %4046 to float
  %4048 = fmul fast float %4047, %4032
  %4049 = fadd fast float %4048, 1.000000e+00
  %4050 = fmul fast float %4033, 2.000000e+00
  %4051 = fsub fast float 3.000000e+00, %4050
  %4052 = fadd fast float %4050, 1.000000e+00
  %4053 = fsub fast float 2.000000e+00, %4033
  %4054 = bitcast float %4051 to i32
  %4055 = sub nsw i32 2129859010, %4054
  %4056 = bitcast i32 %4055 to float
  %4057 = fmul fast float %4056, %4053
  %4058 = fadd fast float %4057, -1.000000e+00
  %4059 = bitcast float %4052 to i32
  %4060 = sub nsw i32 2129859010, %4059
  %4061 = bitcast i32 %4060 to float
  %4062 = fmul fast float %4061, %4033
  %4063 = fadd fast float %4062, 1.000000e+00
  %4064 = fadd fast float %4044, %4034
  %4065 = fmul fast float %4064, %4016
  %4066 = fadd fast float %4058, %4035
  %4067 = fmul fast float %4066, %4017
  %4068 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4065, float %4067, float undef, float undef, i32 0, i32 0, i32 undef, float %4021)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4069 = extractvalue %dx.types.ResRet.f32 %4068, 0
  %4070 = fmul fast float %4069, %4037
  %4071 = fadd fast float %4049, %4034
  %4072 = fmul fast float %4071, %4016
  %4073 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4072, float %4067, float undef, float undef, i32 0, i32 0, i32 undef, float %4021)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4074 = extractvalue %dx.types.ResRet.f32 %4073, 0
  %4075 = fmul fast float %4074, %4038
  %4076 = fadd fast float %4063, %4035
  %4077 = fmul fast float %4076, %4017
  %4078 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4065, float %4077, float undef, float undef, i32 0, i32 0, i32 undef, float %4021)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4079 = extractvalue %dx.types.ResRet.f32 %4078, 0
  %4080 = fmul fast float %4079, %4037
  %4081 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4072, float %4077, float undef, float undef, i32 0, i32 0, i32 undef, float %4021)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4082 = extractvalue %dx.types.ResRet.f32 %4081, 0
  %4083 = fmul fast float %4082, %4038
  %4084 = fadd fast float %4083, %4080
  %4085 = fmul fast float %4084, %4052
  %4086 = fadd fast float %4075, %4070
  %4087 = fmul fast float %4086, %4051
  %4088 = fadd fast float %4087, %4085
  %4089 = fmul fast float %4088, 6.250000e-02
  br label %4175

; <label>:4090                                    ; preds = %4011
  %4091 = fmul fast float %215, 0x401921FB60000000
  %4092 = call float @dx.op.unary.f32(i32 13, float %4091)  ; Sin(value)
  %4093 = call float @dx.op.unary.f32(i32 12, float %4091)  ; Cos(value)
  %4094 = fsub fast float -0.000000e+00, %4092
  br label %4095

; <label>:4095                                    ; preds = %4144, %4090
  %4096 = phi float [ 0.000000e+00, %4090 ], [ %4139, %4144 ]
  %4097 = phi float [ 0.000000e+00, %4090 ], [ %4141, %4144 ]
  %4098 = phi i32 [ 0, %4090 ], [ %4145, %4144 ]
  %4099 = mul i32 %4098, 2
  %4100 = add i32 0, %4099
  %4101 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4100
  %4102 = load float, float* %4101, align 4
  %4103 = mul i32 %4098, 2
  %4104 = add i32 1, %4103
  %4105 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4104
  %4106 = load float, float* %4105, align 4
  %4107 = fmul fast float %4102, %4093
  %4108 = call float @dx.op.tertiary.f32(i32 46, float %4106, float %4094, float %4107)  ; FMad(a,b,c)
  %4109 = fmul fast float %4102, %4092
  %4110 = call float @dx.op.tertiary.f32(i32 46, float %4106, float %4093, float %4109)  ; FMad(a,b,c)
  %4111 = fmul fast float %4108, %4019
  %4112 = fmul fast float %4110, %4019
  %4113 = fadd fast float %4111, %3153
  %4114 = fadd fast float %4112, %3157
  %4115 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %51, float %4113, float %4114, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4116 = extractvalue %dx.types.ResRet.f32 %4115, 0
  %4117 = extractvalue %dx.types.ResRet.f32 %4115, 1
  %4118 = extractvalue %dx.types.ResRet.f32 %4115, 2
  %4119 = extractvalue %dx.types.ResRet.f32 %4115, 3
  %4120 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 0
  store float %4116, float* %4120, align 4
  %4121 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 1
  store float %4117, float* %4121, align 4
  %4122 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 2
  store float %4118, float* %4122, align 4
  %4123 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 3
  store float %4119, float* %4123, align 4
  %4124 = fsub fast float %4116, %4021
  %4125 = fcmp fast olt float %4124, 0.000000e+00
  %4126 = select i1 %4125, float 0.000000e+00, float 1.000000e+00
  %4127 = fadd fast float %4126, %4096
  %4128 = fmul fast float %4126, %4124
  %4129 = fadd fast float %4128, %4097
  br label %4130

; <label>:4130                                    ; preds = %4130, %4095
  %4131 = phi i32 [ 1, %4095 ], [ %4142, %4130 ]
  %4132 = phi float [ %4129, %4095 ], [ %4141, %4130 ]
  %4133 = phi float [ %4127, %4095 ], [ %4139, %4130 ]
  %4134 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 %4131
  %4135 = load float, float* %4134, align 4, !tbaa !114, !noalias !104
  %4136 = fsub fast float %4135, %4021
  %4137 = fcmp fast olt float %4136, 0.000000e+00
  %4138 = select i1 %4137, float 0.000000e+00, float 1.000000e+00
  %4139 = fadd fast float %4138, %4133
  %4140 = fmul fast float %4138, %4136
  %4141 = fadd fast float %4140, %4132
  %4142 = add nuw nsw i32 %4131, 1
  %4143 = icmp eq i32 %4142, 4
  br i1 %4143, label %4144, label %4130, !llvm.loop !116

; <label>:4144                                    ; preds = %4130
  %4145 = add nuw nsw i32 %4098, 1
  %4146 = icmp eq i32 %4145, 8
  br i1 %4146, label %4147, label %4095, !llvm.loop !117

; <label>:4147                                    ; preds = %4144
  %4148 = fdiv fast float 1.000000e+00, %4139
  %4149 = fmul fast float %4148, %4141
  %4150 = fdiv fast float 1.000000e+00, %4021
  %4151 = fmul fast float %4149, %4150
  %4152 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4153 = call float @dx.op.binary.f32(i32 35, float %4152, float 0.000000e+00)  ; FMax(a,b)
  %4154 = fmul fast float %4139, 3.125000e-02
  %4155 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4156 = fmul fast float %4155, 2.000000e+00
  %4157 = fadd fast float %4156, -1.000000e+00
  %4158 = fcmp fast ogt float %4157, 0.000000e+00
  %4159 = fcmp fast olt float %4157, 0.000000e+00
  %4160 = zext i1 %4158 to i32
  %4161 = zext i1 %4159 to i32
  %4162 = sub nsw i32 %4160, %4161
  %4163 = sitofp i32 %4162 to float
  %4164 = fmul fast float %4163, %4157
  %4165 = fsub fast float 1.000000e+00, %4164
  %4166 = fmul fast float %4165, %4165
  %4167 = fmul fast float %4166, %4165
  %4168 = fsub fast float %4165, %4167
  %4169 = fmul fast float %4168, %4153
  %4170 = fsub fast float 1.000000e+00, %4167
  %4171 = fsub fast float %4170, %4169
  %4172 = fmul fast float %4163, 5.000000e-01
  %4173 = fmul fast float %4172, %4171
  %4174 = fsub fast float 5.000000e-01, %4173
  br label %4175

; <label>:4175                                    ; preds = %4147, %4023, %4008
  %4176 = phi float [ 1.000000e+00, %4008 ], [ %4089, %4023 ], [ %4174, %4147 ]
  %4177 = fsub fast float %3842, %3677
  %4178 = fmul fast float %4177, %3215
  %4179 = fadd fast float %4178, %3677
  %4180 = fsub fast float %4009, %4179
  %4181 = fmul fast float %4180, %3245
  %4182 = fadd fast float %4181, %4179
  %4183 = fsub fast float %4176, %4182
  %4184 = fmul fast float %4183, %3271
  %4185 = fadd fast float %4184, %4182
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 2
  %4188 = fcmp fast ogt float %4187, 0.000000e+00
  br i1 %4188, label %4189, label %4229, !dx.controlflow.hints !120

; <label>:4189                                    ; preds = %4175
  %4190 = fcmp fast ugt float %4187, 0.000000e+00
  br i1 %4190, label %4191, label %4226

; <label>:4191                                    ; preds = %4189
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 0
  %4194 = extractvalue %dx.types.CBufRet.f32 %4192, 1
  %4195 = extractvalue %dx.types.CBufRet.f32 %4192, 2
  %4196 = extractvalue %dx.types.CBufRet.f32 %4192, 3
  %4197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4198 = extractvalue %dx.types.CBufRet.f32 %4197, 0
  %4199 = extractvalue %dx.types.CBufRet.f32 %4197, 1
  %4200 = extractvalue %dx.types.CBufRet.f32 %4197, 2
  %4201 = extractvalue %dx.types.CBufRet.f32 %4197, 3
  %4202 = extractvalue %dx.types.CBufRet.f32 %4186, 0
  %4203 = extractvalue %dx.types.CBufRet.f32 %4186, 1
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 0
  %4206 = extractvalue %dx.types.CBufRet.f32 %4204, 1
  %4207 = extractvalue %dx.types.CBufRet.f32 %4204, 2
  %4208 = fadd fast float %4205, %3130
  %4209 = fadd fast float %4206, %3131
  %4210 = fadd fast float %4207, %3132
  %4211 = fmul fast float %4208, %4193
  %4212 = call float @dx.op.tertiary.f32(i32 46, float %4194, float %4209, float %4211)  ; FMad(a,b,c)
  %4213 = call float @dx.op.tertiary.f32(i32 46, float %4195, float %4210, float %4212)  ; FMad(a,b,c)
  %4214 = fadd fast float %4213, %4196
  %4215 = fmul fast float %4208, %4198
  %4216 = call float @dx.op.tertiary.f32(i32 46, float %4199, float %4209, float %4215)  ; FMad(a,b,c)
  %4217 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4210, float %4216)  ; FMad(a,b,c)
  %4218 = fadd fast float %4217, %4201
  %4219 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %4214, float %4218, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4220 = extractvalue %dx.types.ResRet.f32 %4219, 0
  %4221 = fmul fast float %4220, %4203
  %4222 = fadd fast float %4221, %4202
  %4223 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  %4224 = fmul fast float %4223, %4187
  %4225 = fsub fast float 1.000000e+00, %4224
  br label %4226

; <label>:4226                                    ; preds = %4191, %4189
  %4227 = phi float [ %4225, %4191 ], [ 1.000000e+00, %4189 ]
  %4228 = fmul fast float %4227, %4185
  br label %4229

; <label>:4229                                    ; preds = %4226, %4175, %3110
  %4230 = phi float [ 1.000000e+00, %3110 ], [ %4228, %4226 ], [ %4185, %4175 ]
  %4231 = call float @dx.op.binary.f32(i32 36, float %4230, float %4230)  ; FMin(a,b)
  %4232 = call float @dx.op.binary.f32(i32 36, float %4230, float %4231)  ; FMin(a,b)
  %4233 = fcmp fast ogt float %4232, 0.000000e+00
  br i1 %4233, label %4234, label %4399, !dx.controlflow.hints !121

; <label>:4234                                    ; preds = %4229
  %4235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.f32 %4235, 0
  %4237 = extractvalue %dx.types.CBufRet.f32 %4235, 1
  %4238 = extractvalue %dx.types.CBufRet.f32 %4235, 2
  %4239 = extractvalue %dx.types.CBufRet.f32 %4235, 3
  %4240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.f32 %4240, 0
  %4242 = extractvalue %dx.types.CBufRet.f32 %4240, 1
  %4243 = extractvalue %dx.types.CBufRet.f32 %4240, 2
  %4244 = extractvalue %dx.types.CBufRet.f32 %4240, 3
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 0
  %4247 = extractvalue %dx.types.CBufRet.f32 %4245, 1
  %4248 = extractvalue %dx.types.CBufRet.f32 %4245, 2
  %4249 = extractvalue %dx.types.CBufRet.f32 %4245, 3
  %4250 = fmul fast float %4236, %3130
  %4251 = call float @dx.op.tertiary.f32(i32 46, float %3131, float %4237, float %4250)  ; FMad(a,b,c)
  %4252 = call float @dx.op.tertiary.f32(i32 46, float %3132, float %4238, float %4251)  ; FMad(a,b,c)
  %4253 = fadd fast float %4252, %4239
  %4254 = fmul fast float %4241, %3130
  %4255 = call float @dx.op.tertiary.f32(i32 46, float %3131, float %4242, float %4254)  ; FMad(a,b,c)
  %4256 = call float @dx.op.tertiary.f32(i32 46, float %3132, float %4243, float %4255)  ; FMad(a,b,c)
  %4257 = fadd fast float %4256, %4244
  %4258 = fmul fast float %4246, %3130
  %4259 = call float @dx.op.tertiary.f32(i32 46, float %3131, float %4247, float %4258)  ; FMad(a,b,c)
  %4260 = call float @dx.op.tertiary.f32(i32 46, float %3132, float %4248, float %4259)  ; FMad(a,b,c)
  %4261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4262 = extractvalue %dx.types.CBufRet.f32 %4261, 0
  %4263 = extractvalue %dx.types.CBufRet.f32 %4261, 1
  %4264 = extractvalue %dx.types.CBufRet.f32 %4261, 3
  %4265 = fmul fast float %4264, %4253
  %4266 = fmul fast float %4264, %4257
  %4267 = fadd fast float %4265, %4262
  %4268 = fadd fast float %4266, %4263
  %4269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4270 = extractvalue %dx.types.CBufRet.f32 %4269, 0
  %4271 = extractvalue %dx.types.CBufRet.f32 %4269, 1
  %4272 = fsub fast float %4267, %4270
  %4273 = fsub fast float %4268, %4271
  %4274 = fcmp fast olt float %4272, 0.000000e+00
  %4275 = fcmp fast olt float %4273, 0.000000e+00
  %4276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4277 = extractvalue %dx.types.CBufRet.f32 %4276, 0
  %4278 = extractvalue %dx.types.CBufRet.f32 %4276, 1
  %4279 = extractvalue %dx.types.CBufRet.f32 %4276, 2
  %4280 = extractvalue %dx.types.CBufRet.f32 %4276, 3
  %4281 = select i1 %4274, float %4277, float %4279
  %4282 = select i1 %4275, float %4278, float %4280
  %4283 = fmul fast float %4281, %4272
  %4284 = fmul fast float %4282, %4273
  %4285 = call float @dx.op.unary.f32(i32 6, float %4283)  ; FAbs(value)
  %4286 = call float @dx.op.unary.f32(i32 6, float %4284)  ; FAbs(value)
  %4287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4287, 0
  %4289 = call float @dx.op.binary.f32(i32 35, float %4285, float %4286)  ; FMax(a,b)
  %4290 = fsub fast float %4288, %4289
  %4291 = call float @dx.op.unary.f32(i32 7, float %4290)  ; Saturate(value)
  %4292 = fcmp fast ogt float %4291, 0.000000e+00
  br i1 %4292, label %4293, label %4334, !dx.controlflow.hints !122

; <label>:4293                                    ; preds = %4234
  %4294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %4267, float %4268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4295 = extractvalue %dx.types.ResRet.f32 %4294, 1
  %4296 = fcmp fast ogt float %4295, 0.000000e+00
  br i1 %4296, label %4297, label %4329

; <label>:4297                                    ; preds = %4293
  %4298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %4267, float %4268, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4299 = extractvalue %dx.types.ResRet.f32 %4298, 0
  %4300 = extractvalue %dx.types.ResRet.f32 %4298, 1
  %4301 = extractvalue %dx.types.ResRet.f32 %4298, 2
  %4302 = extractvalue %dx.types.ResRet.f32 %4298, 3
  %4303 = fsub fast float 1.000000e+00, %4249
  %4304 = fsub fast float %4303, %4260
  %4305 = fmul fast float %4304, 0x400921FB60000000
  %4306 = fadd fast float %4305, 0x3FF921FB60000000
  %4307 = call float @dx.op.unary.f32(i32 13, float %4306)  ; Sin(value)
  %4308 = fadd fast float %4307, -1.000000e+00
  %4309 = fmul fast float %4308, 0x3FD45F3060000000
  %4310 = fmul fast float %4304, 0x401921FB60000000
  %4311 = fadd fast float %4310, 0x400921FB60000000
  %4312 = call float @dx.op.unary.f32(i32 13, float %4311)  ; Sin(value)
  %4313 = fadd fast float %4312, 0x3E7777A5C0000000
  %4314 = fmul fast float %4313, 0x3FC45F3060000000
  %4315 = fmul fast float %4304, 0x4022D97C80000000
  %4316 = fadd fast float %4315, 0x4012D97C80000000
  %4317 = call float @dx.op.unary.f32(i32 13, float %4316)  ; Sin(value)
  %4318 = fadd fast float %4317, 1.000000e+00
  %4319 = fmul fast float %4318, 0x3FBB2995E0000000
  %4320 = fmul fast float %4304, 0x402921FB60000000
  %4321 = fadd fast float %4320, 0x401921FB60000000
  %4322 = call float @dx.op.unary.f32(i32 13, float %4321)  ; Sin(value)
  %4323 = fadd fast float %4322, 0xBE8777A5C0000000
  %4324 = fmul fast float %4323, 0x3FB45F3060000000
  %4325 = call float @dx.op.dot4.f32(i32 56, float %4299, float %4300, float %4301, float %4302, float %4309, float %4314, float %4319, float %4324)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4326 = fmul fast float %4325, 0xBFF7154760000000
  %4327 = call float @dx.op.unary.f32(i32 21, float %4326)  ; Exp(value)
  %4328 = call float @dx.op.unary.f32(i32 7, float %4327)  ; Saturate(value)
  br label %4329

; <label>:4329                                    ; preds = %4297, %4293
  %4330 = phi float [ %4328, %4297 ], [ 1.000000e+00, %4293 ]
  %4331 = fadd fast float %4330, -1.000000e+00
  %4332 = fmul fast float %4331, %4291
  %4333 = fadd fast float %4332, 1.000000e+00
  br label %4334

; <label>:4334                                    ; preds = %4329, %4234
  %4335 = phi float [ %4333, %4329 ], [ 1.000000e+00, %4234 ]
  %4336 = fmul fast float %4335, %4230
  %4337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4338 = extractvalue %dx.types.CBufRet.f32 %4337, 0
  %4339 = extractvalue %dx.types.CBufRet.f32 %4337, 1
  %4340 = extractvalue %dx.types.CBufRet.f32 %4337, 2
  %4341 = fadd fast float %4338, %142
  %4342 = fadd fast float %4339, %143
  %4343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4344 = extractvalue %dx.types.CBufRet.f32 %4343, 1
  %4345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4346 = extractvalue %dx.types.CBufRet.f32 %4345, 0
  %4347 = extractvalue %dx.types.CBufRet.f32 %4345, 1
  %4348 = extractvalue %dx.types.CBufRet.f32 %4345, 2
  %4349 = fsub fast float -0.000000e+00, %4341
  %4350 = fsub fast float -0.000000e+00, %4342
  %4351 = fsub fast float %2176, %4340
  %4352 = fadd fast float %4351, %4344
  %4353 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4349, float %4350, float %4352)  ; Dot3(ax,ay,az,bx,by,bz)
  %4354 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4346, float %4347, float %4348)  ; Dot3(ax,ay,az,bx,by,bz)
  %4355 = fdiv fast float 1.000000e+00, %4354
  %4356 = fmul fast float %4355, %4353
  %4357 = fmul fast float %4346, %4356
  %4358 = fmul fast float %4347, %4356
  %4359 = fadd fast float %4357, %4341
  %4360 = fadd fast float %4358, %4342
  %4361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4362 = extractvalue %dx.types.CBufRet.f32 %4361, 0
  %4363 = extractvalue %dx.types.CBufRet.f32 %4361, 1
  %4364 = fsub fast float %4359, %4362
  %4365 = fsub fast float %4360, %4363
  %4366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4367 = extractvalue %dx.types.CBufRet.f32 %4366, 2
  %4368 = extractvalue %dx.types.CBufRet.f32 %4366, 3
  %4369 = fmul fast float %4364, %4367
  %4370 = fmul fast float %4365, %4368
  %4371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.i32 %4371, 3
  %4373 = icmp eq i32 %4372, 0
  br i1 %4373, label %4379, label %4374

; <label>:4374                                    ; preds = %4334
  %4375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %4369, float %4370, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4376 = extractvalue %dx.types.ResRet.f32 %4375, 0
  %4377 = extractvalue %dx.types.ResRet.f32 %4375, 1
  %4378 = extractvalue %dx.types.ResRet.f32 %4375, 2
  br label %4384

; <label>:4379                                    ; preds = %4334
  %4380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %4369, float %4370, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4381 = extractvalue %dx.types.ResRet.f32 %4380, 0
  %4382 = extractvalue %dx.types.ResRet.f32 %4380, 1
  %4383 = extractvalue %dx.types.ResRet.f32 %4380, 2
  br label %4384

; <label>:4384                                    ; preds = %4379, %4374
  %4385 = phi float [ %4376, %4374 ], [ %4381, %4379 ]
  %4386 = phi float [ %4377, %4374 ], [ %4382, %4379 ]
  %4387 = phi float [ %4378, %4374 ], [ %4383, %4379 ]
  %4388 = extractvalue %dx.types.CBufRet.f32 %4343, 2
  %4389 = fmul fast float %4388, %4385
  %4390 = extractvalue %dx.types.CBufRet.f32 %4343, 0
  %4391 = fsub fast float %4356, %4390
  %4392 = fsub fast float %4391, %4389
  %4393 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4392)  ; FMax(a,b)
  %4394 = fmul fast float %4393, %4386
  %4395 = call float @dx.op.binary.f32(i32 36, float %4387, float %4394)  ; FMin(a,b)
  %4396 = fmul fast float %4395, 0xBFF7154760000000
  %4397 = call float @dx.op.unary.f32(i32 21, float %4396)  ; Exp(value)
  %4398 = fmul fast float %4336, %4397
  br label %4399

; <label>:4399                                    ; preds = %4384, %4229
  %4400 = phi float [ %4398, %4384 ], [ %4230, %4229 ]
  %4401 = call float @dx.op.binary.f32(i32 36, float %4400, float %4400)  ; FMin(a,b)
  %4402 = call float @dx.op.binary.f32(i32 36, float %4400, float %4401)  ; FMin(a,b)
  %4403 = fcmp fast ogt float %4402, 0.000000e+00
  br i1 %4403, label %4404, label %4787, !dx.controlflow.hints !123

; <label>:4404                                    ; preds = %4399
  %4405 = fmul fast float %4400, %3122
  %4406 = fmul fast float %4400, %3123
  %4407 = fmul fast float %4400, %3124
  %4408 = fsub fast float %144, %1964
  %4409 = fcmp fast ogt float %4408, 0.000000e+00
  %4410 = fmul fast float %3111, 5.120000e+02
  %4411 = fmul fast float %3112, 5.120000e+02
  %4412 = fmul fast float %3113, 5.120000e+02
  %4413 = fadd fast float %4412, %144
  %4414 = fsub fast float %1964, %4413
  %4415 = fmul fast float %4414, 2.000000e+00
  %4416 = fadd fast float %4415, %4413
  %4417 = select i1 %4409, float %4416, float %4413
  %4418 = fsub fast float %4417, %144
  %4419 = call float @dx.op.dot3.f32(i32 55, float %4410, float %4411, float %4418, float %4410, float %4411, float %4418)  ; Dot3(ax,ay,az,bx,by,bz)
  %4420 = call float @dx.op.unary.f32(i32 25, float %4419)  ; Rsqrt(value)
  %4421 = fmul fast float %4420, %4410
  %4422 = fmul fast float %4420, %4411
  %4423 = fmul fast float %4420, %4418
  %4424 = fsub fast float %1964, %144
  %4425 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4424)  ; Dot3(ax,ay,az,bx,by,bz)
  %4426 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4421, float %4422, float %4423)  ; Dot3(ax,ay,az,bx,by,bz)
  %4427 = fdiv fast float 1.000000e+00, %4426
  %4428 = fmul fast float %4427, %4425
  %4429 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4408, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4430 = fcmp fast ogt float %4429, 0.000000e+00
  %4431 = fcmp fast olt float %4429, 0.000000e+00
  %4432 = zext i1 %4430 to i32
  %4433 = zext i1 %4431 to i32
  %4434 = sub nsw i32 %4432, %4433
  %4435 = sitofp i32 %4434 to float
  %4436 = fsub fast float %4417, %1964
  %4437 = call float @dx.op.dot3.f32(i32 55, float %4410, float %4411, float %4436, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4438 = fcmp fast ogt float %4437, 0.000000e+00
  %4439 = fcmp fast olt float %4437, 0.000000e+00
  %4440 = zext i1 %4438 to i32
  %4441 = zext i1 %4439 to i32
  %4442 = sub nsw i32 %4440, %4441
  %4443 = sitofp i32 %4442 to float
  %4444 = fcmp fast une float %4435, %4443
  br i1 %4444, label %4445, label %4455

; <label>:4445                                    ; preds = %4404
  %4446 = fmul fast float %4428, %4423
  %4447 = fmul fast float %4428, %4422
  %4448 = fmul fast float %4428, %4421
  %4449 = fmul fast float %4448, %4448
  %4450 = fmul fast float %4447, %4447
  %4451 = fadd fast float %4449, %4450
  %4452 = fmul fast float %4446, %4446
  %4453 = fadd fast float %4451, %4452
  %4454 = call float @dx.op.unary.f32(i32 24, float %4453)  ; Sqrt(value)
  br label %4465

; <label>:4455                                    ; preds = %4404
  %4456 = icmp slt i32 %4434, 0
  br i1 %4456, label %4457, label %4465

; <label>:4457                                    ; preds = %4455
  %4458 = fsub fast float %144, %4417
  %4459 = fmul fast float %4410, %4410
  %4460 = fmul fast float %4411, %4411
  %4461 = fadd fast float %4459, %4460
  %4462 = fmul fast float %4458, %4458
  %4463 = fadd fast float %4461, %4462
  %4464 = call float @dx.op.unary.f32(i32 24, float %4463)  ; Sqrt(value)
  br label %4465

; <label>:4465                                    ; preds = %4457, %4455, %4445
  %4466 = phi float [ %4454, %4445 ], [ %4464, %4457 ], [ 0.000000e+00, %4455 ]
  %4467 = fsub fast float -0.000000e+00, %4466
  %4468 = select i1 %4409, float -0.000000e+00, float %4467
  %4469 = fmul fast float %1965, 0x3FF7154760000000
  %4470 = fmul fast float %4469, %4468
  %4471 = fmul fast float %1966, 0x3FF7154760000000
  %4472 = fmul fast float %4471, %4468
  %4473 = fmul fast float %1967, 0x3FF7154760000000
  %4474 = fmul fast float %4473, %4468
  %4475 = call float @dx.op.unary.f32(i32 21, float %4470)  ; Exp(value)
  %4476 = call float @dx.op.unary.f32(i32 21, float %4472)  ; Exp(value)
  %4477 = call float @dx.op.unary.f32(i32 21, float %4474)  ; Exp(value)
  %4478 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4479 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4480 = call float @dx.op.unary.f32(i32 7, float %4477)  ; Saturate(value)
  %4481 = fmul fast float %4405, %4478
  %4482 = fmul fast float %4406, %4479
  %4483 = fmul fast float %4407, %4480
  %4484 = fsub fast float %3111, %2164
  %4485 = fsub fast float %3112, %2163
  %4486 = fsub fast float %3113, %2162
  %4487 = call float @dx.op.dot3.f32(i32 55, float %4484, float %4485, float %4486, float %4484, float %4485, float %4486)  ; Dot3(ax,ay,az,bx,by,bz)
  %4488 = call float @dx.op.unary.f32(i32 25, float %4487)  ; Rsqrt(value)
  %4489 = fmul fast float %4488, %4484
  %4490 = fmul fast float %4488, %4485
  %4491 = fmul fast float %4488, %4486
  %4492 = call float @dx.op.dot3.f32(i32 55, float %3111, float %3112, float %3113, float %2168, float %2169, float %2170)  ; Dot3(ax,ay,az,bx,by,bz)
  %4493 = call float @dx.op.dot3.f32(i32 55, float %2161, float %2160, float %2159, float %4489, float %4490, float %4491)  ; Dot3(ax,ay,az,bx,by,bz)
  %4494 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4495 = fmul fast float %4494, %4494
  %4496 = fmul fast float %4495, %3106
  %4497 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4498 = fmul fast float %4497, %4494
  %4499 = call float @dx.op.dot3.f32(i32 55, float %2168, float %2169, float %2170, float %4489, float %4490, float %4491)  ; Dot3(ax,ay,az,bx,by,bz)
  %4500 = fmul fast float %4499, %4499
  %4501 = call float @dx.op.unary.f32(i32 6, float %4492)  ; FAbs(value)
  %4502 = fsub fast float 1.000000e+00, %2197
  %4503 = fmul fast float %2179, %2179
  %4504 = fmul fast float %4503, %4502
  %4505 = fadd fast float %4504, %2197
  %4506 = bitcast float %4505 to i32
  %4507 = ashr i32 %4506, 1
  %4508 = add nsw i32 %4507, 532487669
  %4509 = bitcast i32 %4508 to float
  %4510 = fadd fast float %4509, %2179
  %4511 = fmul fast float %2197, %4500
  %4512 = fsub fast float 1.000000e+00, %4500
  %4513 = fadd fast float %4512, %4511
  %4514 = fmul fast float %4501, %4501
  %4515 = fmul fast float %4514, %4502
  %4516 = fadd fast float %4515, %2197
  %4517 = bitcast float %4516 to i32
  %4518 = ashr i32 %4517, 1
  %4519 = add nsw i32 %4518, 532487669
  %4520 = bitcast i32 %4519 to float
  %4521 = fadd fast float %4520, %4501
  %4522 = fmul fast float %4513, %4513
  %4523 = fmul fast float %4522, %4510
  %4524 = fmul fast float %4523, %4521
  %4525 = fdiv fast float 0x3FF0A00000000000, %4524
  %4526 = fmul fast float %4525, %2197
  %4527 = fmul fast float %2449, 0x3FF9999980000000
  %4528 = fsub fast float 5.000000e+00, %4527
  %4529 = call float @dx.op.unary.f32(i32 6, float %4493)  ; FAbs(value)
  %4530 = fsub fast float 1.000000e+00, %4529
  %4531 = fmul fast float %2449, 0x41D9660740000000
  %4532 = fadd fast float %4531, 0xC1EFBF8940000000
  %4533 = bitcast float %4530 to i32
  %4534 = sitofp i32 %4533 to float
  %4535 = fmul fast float %4534, %4528
  %4536 = fadd fast float %4532, %4535
  %4537 = fptosi float %4536 to i32
  %4538 = bitcast i32 %4537 to float
  %4539 = fsub fast float 1.000000e+00, %2171
  %4540 = fsub fast float 1.000000e+00, %2172
  %4541 = fsub fast float 1.000000e+00, %2177
  %4542 = fmul fast float %4538, %4539
  %4543 = fmul fast float %4538, %4540
  %4544 = fmul fast float %4538, %4541
  %4545 = fadd fast float %4542, %2171
  %4546 = fadd fast float %4543, %2172
  %4547 = fadd fast float %4544, %2177
  br i1 %2472, label %4548, label %4571

; <label>:4548                                    ; preds = %4465
  %4549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1510, float %4529, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4550 = extractvalue %dx.types.ResRet.f32 %4549, 0
  %4551 = extractvalue %dx.types.ResRet.f32 %4549, 1
  %4552 = extractvalue %dx.types.ResRet.f32 %4549, 2
  %4553 = fadd fast float %4550, -5.000000e-01
  %4554 = fadd fast float %4551, -5.000000e-01
  %4555 = fadd fast float %4552, -5.000000e-01
  %4556 = fmul fast float %2171, 4.000000e+00
  %4557 = fmul fast float %4556, %4539
  %4558 = fmul fast float %4557, %4553
  %4559 = fmul fast float %2172, 4.000000e+00
  %4560 = fmul fast float %4559, %4540
  %4561 = fmul fast float %4560, %4554
  %4562 = fmul fast float %2177, 4.000000e+00
  %4563 = fmul fast float %4562, %4541
  %4564 = fmul fast float %4563, %4555
  %4565 = fadd fast float %4558, %4545
  %4566 = fadd fast float %4561, %4546
  %4567 = fadd fast float %4564, %4547
  %4568 = call float @dx.op.unary.f32(i32 7, float %4565)  ; Saturate(value)
  %4569 = call float @dx.op.unary.f32(i32 7, float %4566)  ; Saturate(value)
  %4570 = call float @dx.op.unary.f32(i32 7, float %4567)  ; Saturate(value)
  br label %4571

; <label>:4571                                    ; preds = %4548, %4465
  %4572 = phi float [ %4568, %4548 ], [ %4545, %4465 ]
  %4573 = phi float [ %4569, %4548 ], [ %4546, %4465 ]
  %4574 = phi float [ %4570, %4548 ], [ %4547, %4465 ]
  %4575 = fmul fast float %4492, 9.843750e-01
  %4576 = fadd fast float %4575, 7.812500e-03
  %4577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %4576, float %2453, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4578 = extractvalue %dx.types.ResRet.f32 %4577, 0
  %4579 = extractvalue %dx.types.ResRet.f32 %4577, 1
  %4580 = extractvalue %dx.types.ResRet.f32 %4577, 2
  %4581 = extractvalue %dx.types.ResRet.f32 %4577, 3
  %4582 = fsub fast float %4580, %4578
  %4583 = fsub fast float %4581, %4579
  %4584 = fmul fast float %4582, %2459
  %4585 = fmul fast float %4583, %2459
  %4586 = fadd fast float %4584, %4578
  %4587 = fadd fast float %4585, %4579
  %4588 = fmul fast float %4586, %2171
  %4589 = fmul fast float %4586, %2172
  %4590 = fmul fast float %4586, %2177
  %4591 = fadd fast float %4588, %4587
  %4592 = fadd fast float %4589, %4587
  %4593 = fadd fast float %4590, %4587
  br i1 %2472, label %4594, label %4617

; <label>:4594                                    ; preds = %4571
  %4595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1510, float %4492, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4596 = extractvalue %dx.types.ResRet.f32 %4595, 0
  %4597 = extractvalue %dx.types.ResRet.f32 %4595, 1
  %4598 = extractvalue %dx.types.ResRet.f32 %4595, 2
  %4599 = fadd fast float %4596, -5.000000e-01
  %4600 = fadd fast float %4597, -5.000000e-01
  %4601 = fadd fast float %4598, -5.000000e-01
  %4602 = fmul fast float %2171, 4.000000e+00
  %4603 = fmul fast float %4602, %4539
  %4604 = fmul fast float %4603, %4599
  %4605 = fmul fast float %2172, 4.000000e+00
  %4606 = fmul fast float %4605, %4540
  %4607 = fmul fast float %4606, %4600
  %4608 = fmul fast float %2177, 4.000000e+00
  %4609 = fmul fast float %4608, %4541
  %4610 = fmul fast float %4609, %4601
  %4611 = fadd fast float %4604, %4591
  %4612 = fadd fast float %4607, %4592
  %4613 = fadd fast float %4610, %4593
  %4614 = call float @dx.op.unary.f32(i32 7, float %4611)  ; Saturate(value)
  %4615 = call float @dx.op.unary.f32(i32 7, float %4612)  ; Saturate(value)
  %4616 = call float @dx.op.unary.f32(i32 7, float %4613)  ; Saturate(value)
  br label %4617

; <label>:4617                                    ; preds = %4594, %4571
  %4618 = phi float [ %4614, %4594 ], [ %4591, %4571 ]
  %4619 = phi float [ %4615, %4594 ], [ %4592, %4571 ]
  %4620 = phi float [ %4616, %4594 ], [ %4593, %4571 ]
  %4621 = call float @dx.op.binary.f32(i32 35, float %4619, float %4620)  ; FMax(a,b)
  %4622 = call float @dx.op.binary.f32(i32 35, float %4618, float %4621)  ; FMax(a,b)
  %4623 = fsub fast float 1.000000e+00, %4622
  %4624 = call float @dx.op.binary.f32(i32 35, float %4501, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4625 = fdiv fast float %905, %4624
  %4626 = fmul fast float %3019, %4625
  %4627 = fmul fast float %3021, %4625
  %4628 = fmul fast float %3023, %4625
  %4629 = call float @dx.op.unary.f32(i32 21, float %4626)  ; Exp(value)
  %4630 = call float @dx.op.unary.f32(i32 21, float %4627)  ; Exp(value)
  %4631 = call float @dx.op.unary.f32(i32 21, float %4628)  ; Exp(value)
  %4632 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4633 = call float @dx.op.unary.f32(i32 7, float %4630)  ; Saturate(value)
  %4634 = call float @dx.op.unary.f32(i32 7, float %4631)  ; Saturate(value)
  %4635 = select i1 %3016, float %4632, float 0.000000e+00
  %4636 = select i1 %3017, float %4633, float 0.000000e+00
  %4637 = select i1 %3018, float %4634, float 0.000000e+00
  %4638 = fsub fast float -0.000000e+00, %2168
  %4639 = fsub fast float -0.000000e+00, %2169
  %4640 = fsub fast float -0.000000e+00, %2170
  %4641 = call float @dx.op.dot3.f32(i32 55, float %3111, float %3112, float %3113, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4642 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4643 = fmul fast float %4642, 9.843750e-01
  %4644 = fadd fast float %4643, 7.812500e-03
  %4645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %4644, float %2453, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4646 = extractvalue %dx.types.ResRet.f32 %4645, 0
  %4647 = extractvalue %dx.types.ResRet.f32 %4645, 1
  %4648 = extractvalue %dx.types.ResRet.f32 %4645, 2
  %4649 = extractvalue %dx.types.ResRet.f32 %4645, 3
  %4650 = fsub fast float %4648, %4646
  %4651 = fsub fast float %4649, %4647
  %4652 = fmul fast float %4650, %2459
  %4653 = fmul fast float %4651, %2459
  %4654 = fadd fast float %4652, %4646
  %4655 = fadd fast float %4653, %4647
  %4656 = fmul fast float %4654, %2171
  %4657 = fmul fast float %4654, %2172
  %4658 = fmul fast float %4654, %2177
  %4659 = fadd fast float %4656, %4655
  %4660 = fadd fast float %4657, %4655
  %4661 = fadd fast float %4658, %4655
  br i1 %2472, label %4662, label %4685

; <label>:4662                                    ; preds = %4617
  %4663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1510, float %4642, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4664 = extractvalue %dx.types.ResRet.f32 %4663, 0
  %4665 = extractvalue %dx.types.ResRet.f32 %4663, 1
  %4666 = extractvalue %dx.types.ResRet.f32 %4663, 2
  %4667 = fadd fast float %4664, -5.000000e-01
  %4668 = fadd fast float %4665, -5.000000e-01
  %4669 = fadd fast float %4666, -5.000000e-01
  %4670 = fmul fast float %2171, 4.000000e+00
  %4671 = fmul fast float %4670, %4539
  %4672 = fmul fast float %4671, %4667
  %4673 = fmul fast float %2172, 4.000000e+00
  %4674 = fmul fast float %4673, %4540
  %4675 = fmul fast float %4674, %4668
  %4676 = fmul fast float %2177, 4.000000e+00
  %4677 = fmul fast float %4676, %4541
  %4678 = fmul fast float %4677, %4669
  %4679 = fadd fast float %4672, %4659
  %4680 = fadd fast float %4675, %4660
  %4681 = fadd fast float %4678, %4661
  %4682 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4683 = call float @dx.op.unary.f32(i32 7, float %4680)  ; Saturate(value)
  %4684 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  br label %4685

; <label>:4685                                    ; preds = %4662, %4617
  %4686 = phi float [ %4682, %4662 ], [ %4659, %4617 ]
  %4687 = phi float [ %4683, %4662 ], [ %4660, %4617 ]
  %4688 = phi float [ %4684, %4662 ], [ %4661, %4617 ]
  %4689 = call float @dx.op.binary.f32(i32 35, float %4687, float %4688)  ; FMax(a,b)
  %4690 = call float @dx.op.binary.f32(i32 35, float %4686, float %4689)  ; FMax(a,b)
  %4691 = fsub fast float 1.000000e+00, %4690
  %4692 = fmul fast float %2194, %3083
  %4693 = fadd fast float %3085, %4692
  %4694 = call float @dx.op.unary.f32(i32 7, float %4693)  ; Saturate(value)
  %4695 = fsub fast float %3111, %2185
  %4696 = fsub fast float %3112, %2186
  %4697 = fsub fast float %3113, %2187
  %4698 = call float @dx.op.dot3.f32(i32 55, float %4695, float %4696, float %4697, float %4695, float %4696, float %4697)  ; Dot3(ax,ay,az,bx,by,bz)
  %4699 = call float @dx.op.unary.f32(i32 25, float %4698)  ; Rsqrt(value)
  %4700 = fmul fast float %4699, %4695
  %4701 = fmul fast float %4699, %4696
  %4702 = fmul fast float %4699, %4697
  %4703 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %4700, float %4701, float %4702)  ; Dot3(ax,ay,az,bx,by,bz)
  %4704 = fmul fast float %4703, %4703
  %4705 = call float @dx.op.unary.f32(i32 6, float %4642)  ; FAbs(value)
  %4706 = call float @dx.op.binary.f32(i32 35, float %4694, float 0x3F847AE140000000)  ; FMax(a,b)
  %4707 = fmul fast float %4706, %4706
  %4708 = fmul fast float %4707, %4707
  %4709 = fsub fast float 1.000000e+00, %4708
  %4710 = fmul fast float %4503, %4709
  %4711 = fadd fast float %4710, %4708
  %4712 = bitcast float %4711 to i32
  %4713 = ashr i32 %4712, 1
  %4714 = add nsw i32 %4713, 532487669
  %4715 = bitcast i32 %4714 to float
  %4716 = fadd fast float %4715, %2179
  %4717 = fmul fast float %4708, %4704
  %4718 = fsub fast float 1.000000e+00, %4704
  %4719 = fadd fast float %4718, %4717
  %4720 = fmul fast float %4705, %4705
  %4721 = fmul fast float %4720, %4709
  %4722 = fadd fast float %4721, %4708
  %4723 = bitcast float %4722 to i32
  %4724 = ashr i32 %4723, 1
  %4725 = add nsw i32 %4724, 532487669
  %4726 = bitcast i32 %4725 to float
  %4727 = fadd fast float %4726, %4705
  %4728 = fmul fast float %4719, %4719
  %4729 = fmul fast float %4728, %4716
  %4730 = fmul fast float %4729, %4727
  %4731 = fdiv fast float 0x3FF0A00000000000, %4730
  %4732 = fmul fast float %4731, %4708
  %4733 = fmul fast float %4642, %4635
  %4734 = fmul fast float %4642, %4636
  %4735 = fmul fast float %4642, %4637
  %4736 = fmul fast float %4733, %4691
  %4737 = fmul fast float %4736, %4732
  %4738 = fmul fast float %4734, %4691
  %4739 = fmul fast float %4738, %4732
  %4740 = fmul fast float %4735, %4691
  %4741 = fmul fast float %4740, %4732
  %4742 = fmul fast float %4572, %4526
  %4743 = fmul fast float %4573, %4526
  %4744 = fmul fast float %4574, %4526
  %4745 = fsub fast float 1.000000e+00, %4493
  %4746 = bitcast float %4745 to i32
  %4747 = sitofp i32 %4746 to float
  %4748 = fmul fast float %4747, 5.000000e+00
  %4749 = fadd fast float %4748, 0xC1EFBF8940000000
  %4750 = fptosi float %4749 to i32
  %4751 = bitcast i32 %4750 to float
  %4752 = fmul fast float %4751, %1509
  %4753 = fmul fast float %4623, %4752
  %4754 = fmul fast float %4753, %3011
  %4755 = fmul fast float %4753, %3012
  %4756 = fmul fast float %4753, %3013
  %4757 = fadd fast float %4754, %4742
  %4758 = fadd fast float %4755, %4743
  %4759 = fadd fast float %4756, %4744
  %4760 = fmul fast float %4757, %4498
  %4761 = fmul fast float %4758, %4498
  %4762 = fmul fast float %4759, %4498
  %4763 = fmul fast float %4498, %4481
  %4764 = fmul fast float %4763, %4623
  %4765 = fmul fast float %4498, %4482
  %4766 = fmul fast float %4765, %4623
  %4767 = fmul fast float %4498, %4483
  %4768 = fmul fast float %4767, %4623
  %4769 = fadd fast float %4760, %4737
  %4770 = fadd fast float %4761, %4739
  %4771 = fadd fast float %4762, %4741
  %4772 = fmul fast float %4769, %4481
  %4773 = fmul fast float %4770, %4482
  %4774 = fmul fast float %4771, %4483
  %4775 = fadd fast float %4764, %3100
  %4776 = fmul fast float %4775, %1533
  %4777 = fadd fast float %4766, %3102
  %4778 = fmul fast float %4777, %1533
  %4779 = fadd fast float %4768, %3104
  %4780 = fmul fast float %4779, %1533
  %4781 = fadd fast float %4772, %3064
  %4782 = fmul fast float %4781, %1533
  %4783 = fadd fast float %4773, %3067
  %4784 = fmul fast float %4783, %1533
  %4785 = fadd fast float %4774, %3070
  %4786 = fmul fast float %4785, %1533
  br label %4787

; <label>:4787                                    ; preds = %4685, %4399, %2994
  %4788 = phi float [ %3065, %2994 ], [ %3065, %4399 ], [ %4782, %4685 ]
  %4789 = phi float [ %3068, %2994 ], [ %3068, %4399 ], [ %4784, %4685 ]
  %4790 = phi float [ %3071, %2994 ], [ %3071, %4399 ], [ %4786, %4685 ]
  %4791 = phi float [ %3101, %2994 ], [ %3101, %4399 ], [ %4776, %4685 ]
  %4792 = phi float [ %3103, %2994 ], [ %3103, %4399 ], [ %4778, %4685 ]
  %4793 = phi float [ %3105, %2994 ], [ %3105, %4399 ], [ %4780, %4685 ]
  %4794 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.i32 %4794, 0
  %4796 = icmp eq i32 %4795, 0
  br i1 %4796, label %5614, label %4797

; <label>:4797                                    ; preds = %4787
  %4798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4799 = extractvalue %dx.types.CBufRet.f32 %4798, 2
  %4800 = extractvalue %dx.types.CBufRet.f32 %4798, 3
  %4801 = fmul fast float %4799, %94
  %4802 = fmul fast float %4800, %95
  %4803 = fptoui float %4801 to i32
  %4804 = fptoui float %4802 to i32
  %4805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4806 = extractvalue %dx.types.CBufRet.f32 %4805, 0
  %4807 = extractvalue %dx.types.CBufRet.f32 %4805, 2
  %4808 = extractvalue %dx.types.CBufRet.f32 %4805, 3
  %4809 = fadd fast float %82, -4.000000e+00
  %4810 = call float @dx.op.binary.f32(i32 35, float %4809, float 0.000000e+00)  ; FMax(a,b)
  %4811 = fadd fast float %4810, %4806
  %4812 = fmul fast float %4811, %4807
  %4813 = call float @dx.op.unary.f32(i32 23, float %4812)  ; Log(value)
  %4814 = fmul fast float %4813, %4808
  %4815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4816 = extractvalue %dx.types.CBufRet.f32 %4815, 2
  %4817 = fmul fast float %4814, %4816
  %4818 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4819 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.i32 %4819, 1
  %4821 = add i32 %4820, -1
  %4822 = uitofp i32 %4820 to float
  %4823 = fmul fast float %4822, %4818
  %4824 = fptoui float %4823 to i32
  %4825 = call i32 @dx.op.binary.i32(i32 40, i32 %4824, i32 %4821)  ; UMin(a,b)
  %4826 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.i32 %4826, 2
  %4828 = extractvalue %dx.types.CBufRet.i32 %4826, 3
  %4829 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4804, i32 %4827, i32 %4803)  ; UMad(a,b,c)
  %4830 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4825, i32 %4828, i32 %4829)  ; UMad(a,b,c)
  %4831 = add nsw i32 %4795, -1
  %4832 = call i32 @dx.op.binary.i32(i32 37, i32 %4831, i32 0)  ; IMax(a,b)
  %4833 = call float @dx.op.binary.f32(i32 35, float %82, float 0.000000e+00)  ; FMax(a,b)
  %4834 = fptoui float %4833 to i32
  %4835 = lshr i32 %4834, 5
  %4836 = call i32 @dx.op.binary.i32(i32 40, i32 %4835, i32 8191)  ; UMin(a,b)
  %4837 = shl i32 %4836, 2
  %4838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4837, i32 undef)  ; BufferLoad(srv,index,wot)
  %4839 = extractvalue %dx.types.ResRet.i32 %4838, 0
  %4840 = lshr i32 %4839, 16
  %4841 = and i32 %4839, 65535
  %4842 = lshr i32 %4839, 21
  %4843 = lshr i32 %4841, 5
  %4844 = call i32 @dx.op.binary.i32(i32 40, i32 %4843, i32 %4832)  ; UMin(a,b)
  %4845 = icmp ugt i32 %4842, %4844
  br i1 %4845, label %5614, label %4846

; <label>:4846                                    ; preds = %4797
  br label %4847

; <label>:4847                                    ; preds = %5604, %4846
  %4848 = phi i32 [ %5611, %5604 ], [ %4842, %4846 ]
  %4849 = phi float [ %5605, %5604 ], [ %4788, %4846 ]
  %4850 = phi float [ %5606, %5604 ], [ %4789, %4846 ]
  %4851 = phi float [ %5607, %5604 ], [ %4790, %4846 ]
  %4852 = phi float [ %5608, %5604 ], [ %4791, %4846 ]
  %4853 = phi float [ %5609, %5604 ], [ %4792, %4846 ]
  %4854 = phi float [ %5610, %5604 ], [ %4793, %4846 ]
  %4855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4856 = extractvalue %dx.types.CBufRet.i32 %4855, 0
  %4857 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4830, i32 %4856, i32 %4848)  ; UMad(a,b,c)
  %4858 = shl i32 %4857, 2
  %4859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4858, i32 undef)  ; BufferLoad(srv,index,wot)
  %4860 = extractvalue %dx.types.ResRet.i32 %4859, 0
  %4861 = shl i32 %4848, 5
  %4862 = sub nsw i32 %4840, %4861
  %4863 = call i32 @dx.op.binary.i32(i32 37, i32 %4862, i32 0)  ; IMax(a,b)
  %4864 = call i32 @dx.op.binary.i32(i32 38, i32 %4863, i32 31)  ; IMin(a,b)
  %4865 = sub nsw i32 1, %4840
  %4866 = add nsw i32 %4865, %4841
  %4867 = call i32 @dx.op.binary.i32(i32 37, i32 %4866, i32 0)  ; IMax(a,b)
  %4868 = call i32 @dx.op.binary.i32(i32 38, i32 %4867, i32 32)  ; IMin(a,b)
  %4869 = and i32 %4868, 31
  %4870 = shl i32 -1, %4869
  %4871 = xor i32 %4870, -1
  %4872 = and i32 %4864, 31
  %4873 = shl i32 %4871, %4872
  %4874 = icmp eq i32 %4868, 32
  %4875 = select i1 %4874, i32 -1, i32 %4873
  %4876 = and i32 %4875, %4860
  %4877 = icmp eq i32 %4876, 0
  br i1 %4877, label %5604, label %4878

; <label>:4878                                    ; preds = %4847
  br label %4879

; <label>:4879                                    ; preds = %5014, %4878
  %4880 = phi i32 [ %4891, %5014 ], [ %4876, %4878 ]
  %4881 = phi float [ %5015, %5014 ], [ %4849, %4878 ]
  %4882 = phi float [ %5016, %5014 ], [ %4850, %4878 ]
  %4883 = phi float [ %5017, %5014 ], [ %4851, %4878 ]
  %4884 = phi float [ %5018, %5014 ], [ %4852, %4878 ]
  %4885 = phi float [ %5019, %5014 ], [ %4853, %4878 ]
  %4886 = phi float [ %5020, %5014 ], [ %4854, %4878 ]
  %4887 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4880)  ; FirstbitLo(value)
  %4888 = add i32 %4887, %4861
  %4889 = and i32 %4887, 31
  %4890 = shl i32 1, %4889
  %4891 = xor i32 %4890, %4880
  %4892 = mul i32 %4888, 112
  %4893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4892, i32 undef)  ; BufferLoad(srv,index,wot)
  %4894 = extractvalue %dx.types.ResRet.f32 %4893, 0
  %4895 = extractvalue %dx.types.ResRet.f32 %4893, 1
  %4896 = extractvalue %dx.types.ResRet.f32 %4893, 2
  %4897 = or i32 %4892, 12
  %4898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4897, i32 undef)  ; BufferLoad(srv,index,wot)
  %4899 = extractvalue %dx.types.ResRet.f32 %4898, 0
  %4900 = add i32 %4892, 16
  %4901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4900, i32 undef)  ; BufferLoad(srv,index,wot)
  %4902 = extractvalue %dx.types.ResRet.f32 %4901, 0
  %4903 = extractvalue %dx.types.ResRet.f32 %4901, 1
  %4904 = extractvalue %dx.types.ResRet.f32 %4901, 2
  %4905 = add i32 %4892, 28
  %4906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4905, i32 undef)  ; BufferLoad(srv,index,wot)
  %4907 = extractvalue %dx.types.ResRet.i32 %4906, 0
  %4908 = add i32 %4892, 44
  %4909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4908, i32 undef)  ; BufferLoad(srv,index,wot)
  %4910 = extractvalue %dx.types.ResRet.f32 %4909, 0
  %4911 = add i32 %4892, 48
  %4912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4911, i32 undef)  ; BufferLoad(srv,index,wot)
  %4913 = extractvalue %dx.types.ResRet.f32 %4912, 0
  %4914 = extractvalue %dx.types.ResRet.f32 %4912, 1
  %4915 = extractvalue %dx.types.ResRet.f32 %4912, 2
  %4916 = extractvalue %dx.types.ResRet.f32 %4912, 3
  %4917 = add i32 %4892, 64
  %4918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4917, i32 undef)  ; BufferLoad(srv,index,wot)
  %4919 = extractvalue %dx.types.ResRet.f32 %4918, 0
  %4920 = extractvalue %dx.types.ResRet.f32 %4918, 1
  %4921 = extractvalue %dx.types.ResRet.f32 %4918, 2
  %4922 = extractvalue %dx.types.ResRet.f32 %4918, 3
  %4923 = add i32 %4892, 80
  %4924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4923, i32 undef)  ; BufferLoad(srv,index,wot)
  %4925 = extractvalue %dx.types.ResRet.f32 %4924, 1
  %4926 = extractvalue %dx.types.ResRet.f32 %4924, 2
  %4927 = add i32 %4892, 92
  %4928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4927, i32 undef)  ; BufferLoad(srv,index,wot)
  %4929 = extractvalue %dx.types.ResRet.i32 %4928, 0
  %4930 = call float @dx.op.dot3.f32(i32 55, float %4894, float %4895, float %4896, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4931 = select i1 %204, float %4925, float %4894
  %4932 = select i1 %204, float %4930, float %4895
  %4933 = select i1 %204, float %4926, float %4896
  %4934 = and i32 %4929, 65535
  %4935 = uitofp i32 %4934 to float
  %4936 = lshr i32 %4929, 16
  %4937 = uitofp i32 %4936 to float
  %4938 = and i32 %4907, 65535
  %4939 = and i32 %4907, 50331648
  %4940 = icmp slt i32 %4907, 0
  %4941 = icmp eq i32 %4939, 33554432
  %4942 = fsub fast float %4913, %142
  %4943 = fsub fast float %4914, %143
  %4944 = fsub fast float %4915, %144
  %4945 = call float @dx.op.dot3.f32(i32 55, float %4942, float %4943, float %4944, float %4942, float %4943, float %4944)  ; Dot3(ax,ay,az,bx,by,bz)
  %4946 = call float @dx.op.unary.f32(i32 24, float %4945)  ; Sqrt(value)
  %4947 = fdiv fast float 1.000000e+00, %4946
  %4948 = fmul fast float %4947, %4942
  %4949 = fmul fast float %4947, %4943
  %4950 = fmul fast float %4947, %4944
  %4951 = fadd fast float %4946, %4899
  %4952 = fdiv fast float 1.000000e+00, %4951
  %4953 = fmul float %4910, %4952
  %4954 = fmul float %4953, %4953
  %4955 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  br i1 %4941, label %4956, label %4977

; <label>:4956                                    ; preds = %4879
  %4957 = fmul fast float %4921, %4902
  %4958 = fmul fast float %4921, %4903
  %4959 = fmul fast float %4921, %4904
  %4960 = fadd fast float %4942, %4957
  %4961 = fadd fast float %4943, %4958
  %4962 = fadd fast float %4944, %4959
  %4963 = call float @dx.op.dot3.f32(i32 55, float %4960, float %4961, float %4962, float %4960, float %4961, float %4962)  ; Dot3(ax,ay,az,bx,by,bz)
  %4964 = call float @dx.op.unary.f32(i32 25, float %4963)  ; Rsqrt(value)
  %4965 = fmul fast float %4964, %4960
  %4966 = fmul fast float %4964, %4961
  %4967 = fmul fast float %4964, %4962
  %4968 = fsub fast float %142, %4913
  %4969 = fsub fast float %143, %4914
  %4970 = fsub fast float %144, %4915
  %4971 = fsub fast float -0.000000e+00, %4968
  %4972 = fsub fast float -0.000000e+00, %4969
  %4973 = fsub fast float -0.000000e+00, %4970
  %4974 = call float @dx.op.dot3.f32(i32 55, float %4971, float %4972, float %4973, float %4902, float %4903, float %4904)  ; Dot3(ax,ay,az,bx,by,bz)
  %4975 = fcmp fast ogt float %4974, 0.000000e+00
  %4976 = uitofp i1 %4975 to float
  br label %4977

; <label>:4977                                    ; preds = %4956, %4879
  %4978 = phi float [ %4976, %4956 ], [ 1.000000e+00, %4879 ]
  %4979 = phi float [ %4965, %4956 ], [ %4948, %4879 ]
  %4980 = phi float [ %4966, %4956 ], [ %4949, %4879 ]
  %4981 = phi float [ %4967, %4956 ], [ %4950, %4879 ]
  %4982 = call float @dx.op.dot3.f32(i32 55, float %4902, float %4903, float %4904, float %4979, float %4980, float %4981)  ; Dot3(ax,ay,az,bx,by,bz)
  %4983 = fmul fast float %4982, %4982
  %4984 = call float @dx.op.unary.f32(i32 7, float %4983)  ; Saturate(value)
  %4985 = fsub fast float 1.000000e+00, %4984
  %4986 = fmul fast float %4985, 5.000000e-01
  %4987 = fcmp fast ogt float %4982, 0.000000e+00
  %4988 = fsub fast float 1.000000e+00, %4986
  %4989 = select i1 %4987, float %4986, float %4988
  %4990 = fmul fast float %4989, %4937
  %4991 = fadd fast float %4990, %4935
  %4992 = fmul fast float %4991, 0x3EF0001000000000
  %4993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %50, float %4992, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4994 = extractvalue %dx.types.ResRet.f32 %4993, 0
  %4995 = fmul fast float %4982, %4919
  %4996 = fadd fast float %4995, %4920
  %4997 = call float @dx.op.unary.f32(i32 7, float %4996)  ; Saturate(value)
  %4998 = select i1 %4941, float 1.000000e+00, float %4997
  %4999 = select i1 %4941, float %4997, float 1.000000e+00
  %5000 = fmul fast float %4946, %4916
  %5001 = fsub fast float 1.000000e+00, %5000
  %5002 = fmul fast float %5001, %4922
  %5003 = call float @dx.op.unary.f32(i32 7, float %5002)  ; Saturate(value)
  %5004 = fmul fast float %5003, %4999
  %5005 = fmul fast float %5004, 2.000000e+00
  %5006 = fsub fast float 3.000000e+00, %5005
  %5007 = fmul fast float %4994, %4978
  %5008 = fmul fast float %5004, %5004
  %5009 = fmul fast float %5008, %5007
  %5010 = fmul fast float %5009, %5006
  %5011 = call float @dx.op.binary.f32(i32 36, float %5010, float %5010)  ; FMin(a,b)
  %5012 = call float @dx.op.binary.f32(i32 36, float %5010, float %5011)  ; FMin(a,b)
  %5013 = fcmp fast ogt float %5012, 0.000000e+00
  br i1 %5013, label %5022, label %5014, !dx.controlflow.hints !124

; <label>:5014                                    ; preds = %5557, %5168, %4977
  %5015 = phi float [ %4881, %5168 ], [ %4881, %4977 ], [ %5600, %5557 ]
  %5016 = phi float [ %4882, %5168 ], [ %4882, %4977 ], [ %5601, %5557 ]
  %5017 = phi float [ %4883, %5168 ], [ %4883, %4977 ], [ %5602, %5557 ]
  %5018 = phi float [ %4884, %5168 ], [ %4884, %4977 ], [ %5594, %5557 ]
  %5019 = phi float [ %4885, %5168 ], [ %4885, %4977 ], [ %5595, %5557 ]
  %5020 = phi float [ %4886, %5168 ], [ %4886, %4977 ], [ %5596, %5557 ]
  %5021 = icmp eq i32 %4880, %4890
  br i1 %5021, label %5603, label %4879

; <label>:5022                                    ; preds = %4977
  %5023 = icmp eq i32 %4938, 255
  br i1 %5023, label %5168, label %5024, !dx.controlflow.hints !125

; <label>:5024                                    ; preds = %5022
  %5025 = mul nuw nsw i32 %4938, 176
  %5026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5025, i32 undef)  ; BufferLoad(srv,index,wot)
  %5027 = extractvalue %dx.types.ResRet.f32 %5026, 0
  %5028 = extractvalue %dx.types.ResRet.f32 %5026, 1
  %5029 = extractvalue %dx.types.ResRet.f32 %5026, 2
  %5030 = extractvalue %dx.types.ResRet.f32 %5026, 3
  %5031 = add nuw nsw i32 %5025, 16
  %5032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5031, i32 undef)  ; BufferLoad(srv,index,wot)
  %5033 = extractvalue %dx.types.ResRet.f32 %5032, 0
  %5034 = extractvalue %dx.types.ResRet.f32 %5032, 1
  %5035 = add nuw nsw i32 %5025, 32
  %5036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5035, i32 undef)  ; BufferLoad(srv,index,wot)
  %5037 = extractvalue %dx.types.ResRet.f32 %5036, 0
  %5038 = extractvalue %dx.types.ResRet.f32 %5036, 1
  %5039 = extractvalue %dx.types.ResRet.f32 %5036, 2
  %5040 = add nuw nsw i32 %5025, 48
  %5041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5040, i32 undef)  ; BufferLoad(srv,index,wot)
  %5042 = extractvalue %dx.types.ResRet.f32 %5041, 0
  %5043 = extractvalue %dx.types.ResRet.f32 %5041, 1
  %5044 = extractvalue %dx.types.ResRet.f32 %5041, 2
  %5045 = extractvalue %dx.types.ResRet.f32 %5041, 3
  %5046 = add nuw nsw i32 %5025, 64
  %5047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5046, i32 undef)  ; BufferLoad(srv,index,wot)
  %5048 = extractvalue %dx.types.ResRet.f32 %5047, 0
  %5049 = extractvalue %dx.types.ResRet.f32 %5047, 1
  %5050 = extractvalue %dx.types.ResRet.f32 %5047, 2
  %5051 = extractvalue %dx.types.ResRet.f32 %5047, 3
  %5052 = add nuw nsw i32 %5025, 80
  %5053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5052, i32 undef)  ; BufferLoad(srv,index,wot)
  %5054 = extractvalue %dx.types.ResRet.f32 %5053, 0
  %5055 = extractvalue %dx.types.ResRet.f32 %5053, 1
  %5056 = extractvalue %dx.types.ResRet.f32 %5053, 2
  %5057 = extractvalue %dx.types.ResRet.f32 %5053, 3
  %5058 = add nuw nsw i32 %5025, 96
  %5059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5058, i32 undef)  ; BufferLoad(srv,index,wot)
  %5060 = extractvalue %dx.types.ResRet.f32 %5059, 0
  %5061 = extractvalue %dx.types.ResRet.f32 %5059, 1
  %5062 = extractvalue %dx.types.ResRet.f32 %5059, 2
  %5063 = extractvalue %dx.types.ResRet.f32 %5059, 3
  %5064 = bitcast float %5034 to i32
  %5065 = fmul fast float %5039, %97
  %5066 = fmul fast float %5039, %98
  %5067 = fmul fast float %5039, %99
  %5068 = fadd fast float %5065, %142
  %5069 = fadd fast float %5066, %143
  %5070 = fadd fast float %5067, %144
  %5071 = fmul fast float %5068, %5042
  %5072 = call float @dx.op.tertiary.f32(i32 46, float %5069, float %5048, float %5071)  ; FMad(a,b,c)
  %5073 = call float @dx.op.tertiary.f32(i32 46, float %5070, float %5054, float %5072)  ; FMad(a,b,c)
  %5074 = fadd fast float %5073, %5060
  %5075 = fmul fast float %5068, %5043
  %5076 = call float @dx.op.tertiary.f32(i32 46, float %5069, float %5049, float %5075)  ; FMad(a,b,c)
  %5077 = call float @dx.op.tertiary.f32(i32 46, float %5070, float %5055, float %5076)  ; FMad(a,b,c)
  %5078 = fadd fast float %5077, %5061
  %5079 = fmul fast float %5068, %5044
  %5080 = call float @dx.op.tertiary.f32(i32 46, float %5069, float %5050, float %5079)  ; FMad(a,b,c)
  %5081 = call float @dx.op.tertiary.f32(i32 46, float %5070, float %5056, float %5080)  ; FMad(a,b,c)
  %5082 = fadd fast float %5081, %5062
  %5083 = fmul fast float %5068, %5045
  %5084 = call float @dx.op.tertiary.f32(i32 46, float %5069, float %5051, float %5083)  ; FMad(a,b,c)
  %5085 = call float @dx.op.tertiary.f32(i32 46, float %5070, float %5057, float %5084)  ; FMad(a,b,c)
  %5086 = fadd fast float %5085, %5063
  %5087 = fdiv fast float %5074, %5086
  %5088 = fdiv fast float %5078, %5086
  %5089 = fdiv fast float %5082, %5086
  %5090 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5089)  ; FMax(a,b)
  %5091 = fmul fast float %215, 0x401921FB60000000
  %5092 = call float @dx.op.unary.f32(i32 13, float %5091)  ; Sin(value)
  %5093 = call float @dx.op.unary.f32(i32 12, float %5091)  ; Cos(value)
  %5094 = fmul fast float %5093, %5038
  %5095 = call float @dx.op.tertiary.f32(i32 46, float %5092, float %5038, float 0.000000e+00)  ; FMad(a,b,c)
  %5096 = fmul fast float %5038, %5092
  %5097 = fsub fast float -0.000000e+00, %5096
  %5098 = call float @dx.op.tertiary.f32(i32 46, float %5093, float %5038, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5099

; <label>:5099                                    ; preds = %5099, %5024
  %5100 = phi float [ 0.000000e+00, %5024 ], [ %5132, %5099 ]
  %5101 = phi float [ 0.000000e+00, %5024 ], [ %5134, %5099 ]
  %5102 = phi i32 [ 0, %5024 ], [ %5135, %5099 ]
  %5103 = mul i32 %5102, 2
  %5104 = add i32 0, %5103
  %5105 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5104
  %5106 = load float, float* %5105, align 4
  %5107 = mul i32 %5102, 2
  %5108 = add i32 1, %5107
  %5109 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5108
  %5110 = load float, float* %5109, align 4
  %5111 = fmul fast float %5094, %5106
  %5112 = call float @dx.op.tertiary.f32(i32 46, float %5110, float %5097, float %5111)  ; FMad(a,b,c)
  %5113 = fmul fast float %5106, %5095
  %5114 = call float @dx.op.tertiary.f32(i32 46, float %5110, float %5098, float %5113)  ; FMad(a,b,c)
  %5115 = fadd fast float %5112, %5087
  %5116 = fadd fast float %5114, %5088
  %5117 = fmul fast float %5115, %5033
  %5118 = fmul fast float %5116, %5033
  %5119 = call float @dx.op.binary.f32(i32 35, float %5117, float %5029)  ; FMax(a,b)
  %5120 = call float @dx.op.binary.f32(i32 35, float %5118, float %5029)  ; FMax(a,b)
  %5121 = call float @dx.op.binary.f32(i32 36, float %5119, float %5030)  ; FMin(a,b)
  %5122 = call float @dx.op.binary.f32(i32 36, float %5120, float %5030)  ; FMin(a,b)
  %5123 = fadd fast float %5121, %5027
  %5124 = fadd fast float %5122, %5028
  %5125 = uitofp i32 %5064 to float
  %5126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %51, float %5123, float %5124, float %5125, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5127 = extractvalue %dx.types.ResRet.f32 %5126, 0
  %5128 = fsub fast float %5127, %5090
  %5129 = fsub fast float %5128, %5037
  %5130 = fcmp fast ogt float %5129, 0.000000e+00
  %5131 = select i1 %5130, float 1.000000e+00, float 0.000000e+00
  %5132 = fadd fast float %5131, %5100
  %5133 = select i1 %5130, float %5129, float 0.000000e+00
  %5134 = fadd fast float %5133, %5101
  %5135 = add nuw nsw i32 %5102, 1
  %5136 = icmp eq i32 %5135, 8
  br i1 %5136, label %5137, label %5099

; <label>:5137                                    ; preds = %5099
  %5138 = fdiv fast float 1.000000e+00, %5132
  %5139 = fmul fast float %5138, %5134
  %5140 = fdiv fast float 1.000000e+00, %5090
  %5141 = fmul fast float %5139, %5140
  %5142 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  %5143 = call float @dx.op.binary.f32(i32 35, float %5142, float 0.000000e+00)  ; FMax(a,b)
  %5144 = fmul fast float %5132, 1.250000e-01
  %5145 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5146 = fmul fast float %5145, 2.000000e+00
  %5147 = fadd fast float %5146, -1.000000e+00
  %5148 = fcmp fast ogt float %5147, 0.000000e+00
  %5149 = fcmp fast olt float %5147, 0.000000e+00
  %5150 = zext i1 %5148 to i32
  %5151 = zext i1 %5149 to i32
  %5152 = sub nsw i32 %5150, %5151
  %5153 = sitofp i32 %5152 to float
  %5154 = fmul fast float %5153, %5147
  %5155 = fsub fast float 1.000000e+00, %5154
  %5156 = fmul fast float %5155, %5155
  %5157 = fmul fast float %5156, %5155
  %5158 = fsub fast float %5155, %5157
  %5159 = fmul fast float %5158, %5143
  %5160 = fsub fast float 1.000000e+00, %5157
  %5161 = fsub fast float %5160, %5159
  %5162 = fmul fast float %5153, 5.000000e-01
  %5163 = fmul fast float %5162, %5161
  %5164 = fsub fast float -5.000000e-01, %5163
  %5165 = fmul fast float %5164, %4998
  %5166 = fadd fast float %5165, 1.000000e+00
  %5167 = fmul fast float %5166, %5010
  br label %5168

; <label>:5168                                    ; preds = %5137, %5022
  %5169 = phi float [ %5167, %5137 ], [ %5010, %5022 ]
  %5170 = call float @dx.op.binary.f32(i32 36, float %5169, float %5169)  ; FMin(a,b)
  %5171 = call float @dx.op.binary.f32(i32 36, float %5169, float %5170)  ; FMin(a,b)
  %5172 = fcmp fast ogt float %5171, 0.000000e+00
  br i1 %5172, label %5173, label %5014, !dx.controlflow.hints !126

; <label>:5173                                    ; preds = %5168
  %5174 = fmul fast float %5169, %4931
  %5175 = fmul fast float %5169, %4932
  %5176 = fmul fast float %5169, %4933
  %5177 = fsub fast float %4915, %1964
  %5178 = fcmp fast ogt float %5177, 0.000000e+00
  %5179 = fsub fast float %144, %1964
  %5180 = fcmp fast ogt float %5179, 0.000000e+00
  %5181 = xor i1 %5180, %5178
  %5182 = fsub fast float %1964, %4915
  %5183 = fmul fast float %5182, 2.000000e+00
  %5184 = fadd fast float %5183, %4915
  %5185 = select i1 %5181, float %4915, float %5184
  %5186 = fsub fast float %5185, %144
  %5187 = call float @dx.op.dot3.f32(i32 55, float %4942, float %4943, float %5186, float %4942, float %4943, float %5186)  ; Dot3(ax,ay,az,bx,by,bz)
  %5188 = call float @dx.op.unary.f32(i32 25, float %5187)  ; Rsqrt(value)
  %5189 = fmul fast float %5188, %4942
  %5190 = fmul fast float %5188, %4943
  %5191 = fmul fast float %5188, %5186
  %5192 = fsub fast float %1964, %144
  %5193 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5192)  ; Dot3(ax,ay,az,bx,by,bz)
  %5194 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5189, float %5190, float %5191)  ; Dot3(ax,ay,az,bx,by,bz)
  %5195 = fdiv fast float 1.000000e+00, %5194
  %5196 = fmul fast float %5195, %5193
  %5197 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5179, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5198 = fcmp fast ogt float %5197, 0.000000e+00
  %5199 = fcmp fast olt float %5197, 0.000000e+00
  %5200 = zext i1 %5198 to i32
  %5201 = zext i1 %5199 to i32
  %5202 = sub nsw i32 %5200, %5201
  %5203 = sitofp i32 %5202 to float
  %5204 = fsub fast float %5185, %1964
  %5205 = call float @dx.op.dot3.f32(i32 55, float %4942, float %4943, float %5204, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5206 = fcmp fast ogt float %5205, 0.000000e+00
  %5207 = fcmp fast olt float %5205, 0.000000e+00
  %5208 = zext i1 %5206 to i32
  %5209 = zext i1 %5207 to i32
  %5210 = sub nsw i32 %5208, %5209
  %5211 = sitofp i32 %5210 to float
  %5212 = fcmp fast une float %5203, %5211
  br i1 %5212, label %5213, label %5223

; <label>:5213                                    ; preds = %5173
  %5214 = fmul fast float %5196, %5191
  %5215 = fmul fast float %5196, %5190
  %5216 = fmul fast float %5196, %5189
  %5217 = fmul fast float %5216, %5216
  %5218 = fmul fast float %5215, %5215
  %5219 = fadd fast float %5217, %5218
  %5220 = fmul fast float %5214, %5214
  %5221 = fadd fast float %5219, %5220
  %5222 = call float @dx.op.unary.f32(i32 24, float %5221)  ; Sqrt(value)
  br label %5235

; <label>:5223                                    ; preds = %5173
  %5224 = icmp slt i32 %5202, 0
  br i1 %5224, label %5225, label %5235

; <label>:5225                                    ; preds = %5223
  %5226 = fsub fast float %142, %4913
  %5227 = fsub fast float %143, %4914
  %5228 = fsub fast float %144, %5185
  %5229 = fmul fast float %5226, %5226
  %5230 = fmul fast float %5227, %5227
  %5231 = fadd fast float %5229, %5230
  %5232 = fmul fast float %5228, %5228
  %5233 = fadd fast float %5231, %5232
  %5234 = call float @dx.op.unary.f32(i32 24, float %5233)  ; Sqrt(value)
  br label %5235

; <label>:5235                                    ; preds = %5225, %5223, %5213
  %5236 = phi float [ %5222, %5213 ], [ %5234, %5225 ], [ 0.000000e+00, %5223 ]
  %5237 = and i1 %5180, %5178
  %5238 = fsub fast float -0.000000e+00, %5236
  %5239 = select i1 %5237, float -0.000000e+00, float %5238
  %5240 = fmul fast float %1965, 0x3FF7154760000000
  %5241 = fmul fast float %5240, %5239
  %5242 = fmul fast float %1966, 0x3FF7154760000000
  %5243 = fmul fast float %5242, %5239
  %5244 = fmul fast float %1967, 0x3FF7154760000000
  %5245 = fmul fast float %5244, %5239
  %5246 = call float @dx.op.unary.f32(i32 21, float %5241)  ; Exp(value)
  %5247 = call float @dx.op.unary.f32(i32 21, float %5243)  ; Exp(value)
  %5248 = call float @dx.op.unary.f32(i32 21, float %5245)  ; Exp(value)
  %5249 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5250 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  %5251 = call float @dx.op.unary.f32(i32 7, float %5248)  ; Saturate(value)
  %5252 = fmul fast float %5174, %5249
  %5253 = fmul fast float %5175, %5250
  %5254 = fmul fast float %5176, %5251
  %5255 = fsub fast float %4948, %2164
  %5256 = fsub fast float %4949, %2163
  %5257 = fsub fast float %4950, %2162
  %5258 = call float @dx.op.dot3.f32(i32 55, float %5255, float %5256, float %5257, float %5255, float %5256, float %5257)  ; Dot3(ax,ay,az,bx,by,bz)
  %5259 = call float @dx.op.unary.f32(i32 25, float %5258)  ; Rsqrt(value)
  %5260 = fmul fast float %5259, %5255
  %5261 = fmul fast float %5259, %5256
  %5262 = fmul fast float %5259, %5257
  %5263 = call float @dx.op.dot3.f32(i32 55, float %4948, float %4949, float %4950, float %2168, float %2169, float %2170)  ; Dot3(ax,ay,az,bx,by,bz)
  %5264 = call float @dx.op.dot3.f32(i32 55, float %2161, float %2160, float %2159, float %5260, float %5261, float %5262)  ; Dot3(ax,ay,az,bx,by,bz)
  %5265 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5266 = fmul fast float %5265, %4955
  %5267 = fmul fast float %5265, %5265
  %5268 = fmul fast float %5267, %3106
  %5269 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  %5270 = fmul fast float %5266, %5269
  %5271 = bitcast float %4945 to i32
  %5272 = ashr i32 %5271, 1
  %5273 = sub nsw i32 1597463007, %5272
  %5274 = bitcast i32 %5273 to float
  %5275 = fmul fast float %5274, %4942
  %5276 = fmul fast float %5274, %4943
  %5277 = fmul fast float %5274, %4944
  %5278 = fsub fast float %5275, %2164
  %5279 = fsub fast float %5276, %2163
  %5280 = fsub fast float %5277, %2162
  %5281 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5279, float %5280, float %5278, float %5279, float %5280)  ; Dot3(ax,ay,az,bx,by,bz)
  %5282 = call float @dx.op.unary.f32(i32 25, float %5281)  ; Rsqrt(value)
  %5283 = fmul fast float %5278, %5282
  %5284 = fmul fast float %5279, %5282
  %5285 = fmul fast float %5280, %5282
  %5286 = call float @dx.op.dot3.f32(i32 55, float %2168, float %2169, float %2170, float %5283, float %5284, float %5285)  ; Dot3(ax,ay,az,bx,by,bz)
  %5287 = fmul fast float %5286, %5286
  %5288 = call float @dx.op.unary.f32(i32 6, float %5263)  ; FAbs(value)
  %5289 = fsub fast float 1.000000e+00, %2197
  %5290 = fmul fast float %2179, %2179
  %5291 = fmul fast float %5290, %5289
  %5292 = fadd fast float %5291, %2197
  %5293 = bitcast float %5292 to i32
  %5294 = ashr i32 %5293, 1
  %5295 = add nsw i32 %5294, 532487669
  %5296 = bitcast i32 %5295 to float
  %5297 = fadd fast float %5296, %2179
  %5298 = fmul fast float %2197, %5287
  %5299 = fsub fast float 1.000000e+00, %5287
  %5300 = fadd fast float %5299, %5298
  %5301 = fmul fast float %5288, %5288
  %5302 = fmul fast float %5301, %5289
  %5303 = fadd fast float %5302, %2197
  %5304 = bitcast float %5303 to i32
  %5305 = ashr i32 %5304, 1
  %5306 = add nsw i32 %5305, 532487669
  %5307 = bitcast i32 %5306 to float
  %5308 = fadd fast float %5307, %5288
  %5309 = fmul fast float %5300, %5300
  %5310 = fmul fast float %5309, %5297
  %5311 = fmul fast float %5310, %5308
  %5312 = fdiv fast float 1.000000e+00, %5311
  %5313 = bitcast float %2197 to i32
  %5314 = sitofp i32 %5313 to float
  %5315 = fmul fast float %5314, 0x3FE7F73180000000
  %5316 = fadd fast float %5315, 0x41AFE27C40000000
  %5317 = fptosi float %5316 to i32
  %5318 = bitcast i32 %5317 to float
  %5319 = fmul fast float %4910, 0x3FD80E9D60000000
  %5320 = fmul fast float %5319, %5274
  %5321 = fadd fast float %5318, %5320
  %5322 = bitcast float %5321 to i32
  %5323 = sub nsw i32 2129859010, %5322
  %5324 = bitcast i32 %5323 to float
  %5325 = fmul fast float %2197, %5312
  %5326 = fmul fast float %5325, %5318
  %5327 = fmul fast float %5326, %5324
  %5328 = fmul fast float %2449, 0x3FF9999980000000
  %5329 = fsub fast float 5.000000e+00, %5328
  %5330 = call float @dx.op.unary.f32(i32 6, float %5264)  ; FAbs(value)
  %5331 = fsub fast float 1.000000e+00, %5330
  %5332 = fmul fast float %2449, 0x41D9660740000000
  %5333 = fadd fast float %5332, 0xC1EFBF8940000000
  %5334 = bitcast float %5331 to i32
  %5335 = sitofp i32 %5334 to float
  %5336 = fmul fast float %5335, %5329
  %5337 = fadd fast float %5333, %5336
  %5338 = fptosi float %5337 to i32
  %5339 = bitcast i32 %5338 to float
  %5340 = fsub fast float 1.000000e+00, %2171
  %5341 = fsub fast float 1.000000e+00, %2172
  %5342 = fsub fast float 1.000000e+00, %2177
  %5343 = fmul fast float %5339, %5340
  %5344 = fmul fast float %5339, %5341
  %5345 = fmul fast float %5339, %5342
  %5346 = fadd fast float %5343, %2171
  %5347 = fadd fast float %5344, %2172
  %5348 = fadd fast float %5345, %2177
  br i1 %2472, label %5349, label %5372

; <label>:5349                                    ; preds = %5235
  %5350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1510, float %5330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5351 = extractvalue %dx.types.ResRet.f32 %5350, 0
  %5352 = extractvalue %dx.types.ResRet.f32 %5350, 1
  %5353 = extractvalue %dx.types.ResRet.f32 %5350, 2
  %5354 = fadd fast float %5351, -5.000000e-01
  %5355 = fadd fast float %5352, -5.000000e-01
  %5356 = fadd fast float %5353, -5.000000e-01
  %5357 = fmul fast float %2171, 4.000000e+00
  %5358 = fmul fast float %5357, %5340
  %5359 = fmul fast float %5358, %5354
  %5360 = fmul fast float %2172, 4.000000e+00
  %5361 = fmul fast float %5360, %5341
  %5362 = fmul fast float %5361, %5355
  %5363 = fmul fast float %2177, 4.000000e+00
  %5364 = fmul fast float %5363, %5342
  %5365 = fmul fast float %5364, %5356
  %5366 = fadd fast float %5359, %5346
  %5367 = fadd fast float %5362, %5347
  %5368 = fadd fast float %5365, %5348
  %5369 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  %5370 = call float @dx.op.unary.f32(i32 7, float %5367)  ; Saturate(value)
  %5371 = call float @dx.op.unary.f32(i32 7, float %5368)  ; Saturate(value)
  br label %5372

; <label>:5372                                    ; preds = %5349, %5235
  %5373 = phi float [ %5369, %5349 ], [ %5346, %5235 ]
  %5374 = phi float [ %5370, %5349 ], [ %5347, %5235 ]
  %5375 = phi float [ %5371, %5349 ], [ %5348, %5235 ]
  %5376 = fmul fast float %5263, 9.843750e-01
  %5377 = fadd fast float %5376, 7.812500e-03
  %5378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %5377, float %2453, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5379 = extractvalue %dx.types.ResRet.f32 %5378, 0
  %5380 = extractvalue %dx.types.ResRet.f32 %5378, 1
  %5381 = extractvalue %dx.types.ResRet.f32 %5378, 2
  %5382 = extractvalue %dx.types.ResRet.f32 %5378, 3
  %5383 = fsub fast float %5381, %5379
  %5384 = fsub fast float %5382, %5380
  %5385 = fmul fast float %5383, %2459
  %5386 = fmul fast float %5384, %2459
  %5387 = fadd fast float %5385, %5379
  %5388 = fadd fast float %5386, %5380
  %5389 = fmul fast float %5387, %2171
  %5390 = fmul fast float %5387, %2172
  %5391 = fmul fast float %5387, %2177
  %5392 = fadd fast float %5389, %5388
  %5393 = fadd fast float %5390, %5388
  %5394 = fadd fast float %5391, %5388
  br i1 %2472, label %5395, label %5418

; <label>:5395                                    ; preds = %5372
  %5396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1510, float %5263, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5397 = extractvalue %dx.types.ResRet.f32 %5396, 0
  %5398 = extractvalue %dx.types.ResRet.f32 %5396, 1
  %5399 = extractvalue %dx.types.ResRet.f32 %5396, 2
  %5400 = fadd fast float %5397, -5.000000e-01
  %5401 = fadd fast float %5398, -5.000000e-01
  %5402 = fadd fast float %5399, -5.000000e-01
  %5403 = fmul fast float %2171, 4.000000e+00
  %5404 = fmul fast float %5403, %5340
  %5405 = fmul fast float %5404, %5400
  %5406 = fmul fast float %2172, 4.000000e+00
  %5407 = fmul fast float %5406, %5341
  %5408 = fmul fast float %5407, %5401
  %5409 = fmul fast float %2177, 4.000000e+00
  %5410 = fmul fast float %5409, %5342
  %5411 = fmul fast float %5410, %5402
  %5412 = fadd fast float %5405, %5392
  %5413 = fadd fast float %5408, %5393
  %5414 = fadd fast float %5411, %5394
  %5415 = call float @dx.op.unary.f32(i32 7, float %5412)  ; Saturate(value)
  %5416 = call float @dx.op.unary.f32(i32 7, float %5413)  ; Saturate(value)
  %5417 = call float @dx.op.unary.f32(i32 7, float %5414)  ; Saturate(value)
  br label %5418

; <label>:5418                                    ; preds = %5395, %5372
  %5419 = phi float [ %5415, %5395 ], [ %5392, %5372 ]
  %5420 = phi float [ %5416, %5395 ], [ %5393, %5372 ]
  %5421 = phi float [ %5417, %5395 ], [ %5394, %5372 ]
  %5422 = call float @dx.op.binary.f32(i32 35, float %5420, float %5421)  ; FMax(a,b)
  %5423 = call float @dx.op.binary.f32(i32 35, float %5419, float %5422)  ; FMax(a,b)
  %5424 = fsub fast float 1.000000e+00, %5423
  %5425 = call float @dx.op.binary.f32(i32 35, float %5288, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5426 = fdiv fast float %905, %5425
  %5427 = fmul fast float %3019, %5426
  %5428 = fmul fast float %3021, %5426
  %5429 = fmul fast float %3023, %5426
  %5430 = call float @dx.op.unary.f32(i32 21, float %5427)  ; Exp(value)
  %5431 = call float @dx.op.unary.f32(i32 21, float %5428)  ; Exp(value)
  %5432 = call float @dx.op.unary.f32(i32 21, float %5429)  ; Exp(value)
  %5433 = call float @dx.op.unary.f32(i32 7, float %5430)  ; Saturate(value)
  %5434 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5435 = call float @dx.op.unary.f32(i32 7, float %5432)  ; Saturate(value)
  %5436 = select i1 %3016, float %5433, float 0.000000e+00
  %5437 = select i1 %3017, float %5434, float 0.000000e+00
  %5438 = select i1 %3018, float %5435, float 0.000000e+00
  %5439 = fsub fast float -0.000000e+00, %2168
  %5440 = fsub fast float -0.000000e+00, %2169
  %5441 = fsub fast float -0.000000e+00, %2170
  %5442 = call float @dx.op.dot3.f32(i32 55, float %4948, float %4949, float %4950, float %5439, float %5440, float %5441)  ; Dot3(ax,ay,az,bx,by,bz)
  %5443 = call float @dx.op.unary.f32(i32 7, float %5442)  ; Saturate(value)
  %5444 = fmul fast float %5443, %4955
  %5445 = fmul fast float %5443, 9.843750e-01
  %5446 = fadd fast float %5445, 7.812500e-03
  %5447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %5446, float %2453, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5448 = extractvalue %dx.types.ResRet.f32 %5447, 0
  %5449 = extractvalue %dx.types.ResRet.f32 %5447, 1
  %5450 = extractvalue %dx.types.ResRet.f32 %5447, 2
  %5451 = extractvalue %dx.types.ResRet.f32 %5447, 3
  %5452 = fsub fast float %5450, %5448
  %5453 = fsub fast float %5451, %5449
  %5454 = fmul fast float %5452, %2459
  %5455 = fmul fast float %5453, %2459
  %5456 = fadd fast float %5454, %5448
  %5457 = fadd fast float %5455, %5449
  %5458 = fmul fast float %5456, %2171
  %5459 = fmul fast float %5456, %2172
  %5460 = fmul fast float %5456, %2177
  %5461 = fadd fast float %5458, %5457
  %5462 = fadd fast float %5459, %5457
  %5463 = fadd fast float %5460, %5457
  br i1 %2472, label %5464, label %5487

; <label>:5464                                    ; preds = %5418
  %5465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1510, float %5443, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5466 = extractvalue %dx.types.ResRet.f32 %5465, 0
  %5467 = extractvalue %dx.types.ResRet.f32 %5465, 1
  %5468 = extractvalue %dx.types.ResRet.f32 %5465, 2
  %5469 = fadd fast float %5466, -5.000000e-01
  %5470 = fadd fast float %5467, -5.000000e-01
  %5471 = fadd fast float %5468, -5.000000e-01
  %5472 = fmul fast float %2171, 4.000000e+00
  %5473 = fmul fast float %5472, %5340
  %5474 = fmul fast float %5473, %5469
  %5475 = fmul fast float %2172, 4.000000e+00
  %5476 = fmul fast float %5475, %5341
  %5477 = fmul fast float %5476, %5470
  %5478 = fmul fast float %2177, 4.000000e+00
  %5479 = fmul fast float %5478, %5342
  %5480 = fmul fast float %5479, %5471
  %5481 = fadd fast float %5474, %5461
  %5482 = fadd fast float %5477, %5462
  %5483 = fadd fast float %5480, %5463
  %5484 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5485 = call float @dx.op.unary.f32(i32 7, float %5482)  ; Saturate(value)
  %5486 = call float @dx.op.unary.f32(i32 7, float %5483)  ; Saturate(value)
  br label %5487

; <label>:5487                                    ; preds = %5464, %5418
  %5488 = phi float [ %5484, %5464 ], [ %5461, %5418 ]
  %5489 = phi float [ %5485, %5464 ], [ %5462, %5418 ]
  %5490 = phi float [ %5486, %5464 ], [ %5463, %5418 ]
  %5491 = call float @dx.op.binary.f32(i32 35, float %5489, float %5490)  ; FMax(a,b)
  %5492 = call float @dx.op.binary.f32(i32 35, float %5488, float %5491)  ; FMax(a,b)
  %5493 = fsub fast float 1.000000e+00, %5492
  %5494 = fmul fast float %2194, %3083
  %5495 = fadd fast float %3085, %5494
  %5496 = call float @dx.op.unary.f32(i32 7, float %5495)  ; Saturate(value)
  %5497 = fsub fast float %5275, %2185
  %5498 = fsub fast float %5276, %2186
  %5499 = fsub fast float %5277, %2187
  %5500 = call float @dx.op.dot3.f32(i32 55, float %5497, float %5498, float %5499, float %5497, float %5498, float %5499)  ; Dot3(ax,ay,az,bx,by,bz)
  %5501 = call float @dx.op.unary.f32(i32 25, float %5500)  ; Rsqrt(value)
  %5502 = fmul fast float %5497, %5501
  %5503 = fmul fast float %5498, %5501
  %5504 = fmul fast float %5499, %5501
  %5505 = call float @dx.op.dot3.f32(i32 55, float %5439, float %5440, float %5441, float %5502, float %5503, float %5504)  ; Dot3(ax,ay,az,bx,by,bz)
  %5506 = fmul fast float %5505, %5505
  %5507 = call float @dx.op.unary.f32(i32 6, float %5443)  ; FAbs(value)
  %5508 = call float @dx.op.binary.f32(i32 35, float %5496, float 0x3F847AE140000000)  ; FMax(a,b)
  %5509 = fmul fast float %5508, %5508
  %5510 = fmul fast float %5509, %5509
  %5511 = fsub fast float 1.000000e+00, %5510
  %5512 = fmul fast float %5290, %5511
  %5513 = fadd fast float %5512, %5510
  %5514 = bitcast float %5513 to i32
  %5515 = ashr i32 %5514, 1
  %5516 = add nsw i32 %5515, 532487669
  %5517 = bitcast i32 %5516 to float
  %5518 = fadd fast float %5517, %2179
  %5519 = fmul fast float %5510, %5506
  %5520 = fsub fast float 1.000000e+00, %5506
  %5521 = fadd fast float %5520, %5519
  %5522 = fmul fast float %5507, %5507
  %5523 = fmul fast float %5522, %5511
  %5524 = fadd fast float %5523, %5510
  %5525 = bitcast float %5524 to i32
  %5526 = ashr i32 %5525, 1
  %5527 = add nsw i32 %5526, 532487669
  %5528 = bitcast i32 %5527 to float
  %5529 = fadd fast float %5528, %5507
  %5530 = fmul fast float %5521, %5521
  %5531 = fmul fast float %5530, %5518
  %5532 = fmul fast float %5531, %5529
  %5533 = fdiv fast float 1.000000e+00, %5532
  %5534 = bitcast float %5510 to i32
  %5535 = sitofp i32 %5534 to float
  %5536 = fmul fast float %5535, 0x3FE7F73180000000
  %5537 = fadd fast float %5536, 0x41AFE27C40000000
  %5538 = fptosi float %5537 to i32
  %5539 = bitcast i32 %5538 to float
  %5540 = fadd fast float %5539, %5320
  %5541 = bitcast float %5540 to i32
  %5542 = sub nsw i32 2129859010, %5541
  %5543 = bitcast i32 %5542 to float
  %5544 = fmul fast float %5510, %5533
  %5545 = fmul fast float %5544, %5539
  %5546 = fmul fast float %5545, %5543
  br i1 %4940, label %5547, label %5557

; <label>:5547                                    ; preds = %5487
  %5548 = fmul fast float %5444, %5436
  %5549 = fmul fast float %5444, %5437
  %5550 = fmul fast float %5444, %5438
  %5551 = fmul fast float %5548, %5493
  %5552 = fmul fast float %5551, %5546
  %5553 = fmul fast float %5549, %5493
  %5554 = fmul fast float %5553, %5546
  %5555 = fmul fast float %5550, %5493
  %5556 = fmul fast float %5555, %5546
  br label %5557

; <label>:5557                                    ; preds = %5547, %5487
  %5558 = phi float [ %5552, %5547 ], [ 0.000000e+00, %5487 ]
  %5559 = phi float [ %5554, %5547 ], [ 0.000000e+00, %5487 ]
  %5560 = phi float [ %5556, %5547 ], [ 0.000000e+00, %5487 ]
  %5561 = fmul fast float %5373, %5327
  %5562 = fmul fast float %5374, %5327
  %5563 = fmul fast float %5375, %5327
  %5564 = fsub fast float 1.000000e+00, %5264
  %5565 = bitcast float %5564 to i32
  %5566 = sitofp i32 %5565 to float
  %5567 = fmul fast float %5566, 5.000000e+00
  %5568 = fadd fast float %5567, 0xC1EFBF8940000000
  %5569 = fptosi float %5568 to i32
  %5570 = bitcast i32 %5569 to float
  %5571 = fmul fast float %5570, %1509
  %5572 = fmul fast float %5424, %5571
  %5573 = fmul fast float %5572, %3011
  %5574 = fmul fast float %5572, %3012
  %5575 = fmul fast float %5572, %3013
  %5576 = fadd fast float %5573, %5561
  %5577 = fadd fast float %5574, %5562
  %5578 = fadd fast float %5575, %5563
  %5579 = fmul fast float %5576, %5270
  %5580 = fmul fast float %5577, %5270
  %5581 = fmul fast float %5578, %5270
  %5582 = fadd fast float %5579, %5558
  %5583 = fadd fast float %5580, %5559
  %5584 = fadd fast float %5581, %5560
  %5585 = fmul fast float %5252, %1533
  %5586 = fmul fast float %5585, %5270
  %5587 = fmul fast float %5586, %5424
  %5588 = fmul fast float %5253, %1533
  %5589 = fmul fast float %5588, %5270
  %5590 = fmul fast float %5589, %5424
  %5591 = fmul fast float %5254, %1533
  %5592 = fmul fast float %5591, %5270
  %5593 = fmul fast float %5592, %5424
  %5594 = fadd fast float %5587, %4884
  %5595 = fadd fast float %5590, %4885
  %5596 = fadd fast float %5593, %4886
  %5597 = fmul fast float %5585, %5582
  %5598 = fmul fast float %5588, %5583
  %5599 = fmul fast float %5591, %5584
  %5600 = fadd fast float %5597, %4881
  %5601 = fadd fast float %5598, %4882
  %5602 = fadd fast float %5599, %4883
  br label %5014

; <label>:5603                                    ; preds = %5014
  br label %5604

; <label>:5604                                    ; preds = %5603, %4847
  %5605 = phi float [ %4849, %4847 ], [ %5015, %5603 ]
  %5606 = phi float [ %4850, %4847 ], [ %5016, %5603 ]
  %5607 = phi float [ %4851, %4847 ], [ %5017, %5603 ]
  %5608 = phi float [ %4852, %4847 ], [ %5018, %5603 ]
  %5609 = phi float [ %4853, %4847 ], [ %5019, %5603 ]
  %5610 = phi float [ %4854, %4847 ], [ %5020, %5603 ]
  %5611 = add i32 %4848, 1
  %5612 = icmp ugt i32 %5611, %4844
  br i1 %5612, label %5613, label %4847

; <label>:5613                                    ; preds = %5604
  br label %5614

; <label>:5614                                    ; preds = %5613, %4797, %4787
  %5615 = phi float [ %4788, %4787 ], [ %4788, %4797 ], [ %5605, %5613 ]
  %5616 = phi float [ %4789, %4787 ], [ %4789, %4797 ], [ %5606, %5613 ]
  %5617 = phi float [ %4790, %4787 ], [ %4790, %4797 ], [ %5607, %5613 ]
  %5618 = phi float [ %4791, %4787 ], [ %4791, %4797 ], [ %5608, %5613 ]
  %5619 = phi float [ %4792, %4787 ], [ %4792, %4797 ], [ %5609, %5613 ]
  %5620 = phi float [ %4793, %4787 ], [ %4793, %4797 ], [ %5610, %5613 ]
  %5621 = fmul fast float %1533, %3040
  %5622 = fsub fast float -0.000000e+00, %5621
  %5623 = fmul fast float %1533, %3041
  %5624 = fsub fast float -0.000000e+00, %5623
  %5625 = fmul fast float %1533, %3042
  %5626 = fsub fast float -0.000000e+00, %5625
  %5627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5628 = extractvalue %dx.types.CBufRet.f32 %5627, 0
  %5629 = fmul fast float %5628, %3046
  %5630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5631 = extractvalue %dx.types.CBufRet.f32 %5630, 3
  %5632 = fsub fast float 1.000000e+00, %1505
  %5633 = call float @dx.op.unary.f32(i32 7, float %5632)  ; Saturate(value)
  %5634 = fadd fast float %5620, %1504
  %5635 = fmul fast float %5634, %1505
  %5636 = fmul fast float %5633, %5631
  %5637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5638 = extractvalue %dx.types.CBufRet.f32 %5637, 3
  %5639 = fmul fast float %5618, %2165
  %5640 = fmul fast float %5619, %2166
  %5641 = fmul fast float %5620, %2167
  %5642 = fcmp fast ogt float %82, %164
  %5643 = and i1 %5642, %1970
  %5644 = or i1 %1976, %5643
  %5645 = icmp eq i32 %1969, 2
  %5646 = fcmp fast ole float %82, %164
  %5647 = and i1 %5646, %5645
  %5648 = or i1 %5647, %5644
  br i1 %5643, label %5649, label %5908

; <label>:5649                                    ; preds = %5614
  %5650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5651 = extractvalue %dx.types.CBufRet.f32 %5650, 2
  %5652 = extractvalue %dx.types.CBufRet.f32 %5650, 3
  %5653 = fmul fast float %5651, %94
  %5654 = fmul fast float %5652, %95
  %5655 = call float @dx.op.unary.f32(i32 7, float %5653)  ; Saturate(value)
  %5656 = call float @dx.op.unary.f32(i32 7, float %5654)  ; Saturate(value)
  %5657 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %5655, float %5656, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5658 = extractvalue %dx.types.ResRet.f32 %5657, 0
  %5659 = extractvalue %dx.types.ResRet.f32 %5657, 1
  %5660 = extractvalue %dx.types.ResRet.f32 %5657, 2
  %5661 = extractvalue %dx.types.ResRet.f32 %5657, 3
  %5662 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %5655, float %5656, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5663 = extractvalue %dx.types.ResRet.f32 %5662, 0
  %5664 = extractvalue %dx.types.ResRet.f32 %5662, 1
  %5665 = extractvalue %dx.types.ResRet.f32 %5662, 2
  %5666 = extractvalue %dx.types.ResRet.f32 %5662, 3
  %5667 = call float @dx.op.binary.f32(i32 35, float %5659, float %5660)  ; FMax(a,b)
  %5668 = call float @dx.op.binary.f32(i32 35, float %5658, float %5667)  ; FMax(a,b)
  %5669 = call float @dx.op.binary.f32(i32 35, float %5668, float %5661)  ; FMax(a,b)
  %5670 = call float @dx.op.binary.f32(i32 36, float %5664, float %5665)  ; FMin(a,b)
  %5671 = call float @dx.op.binary.f32(i32 36, float %5663, float %5670)  ; FMin(a,b)
  %5672 = call float @dx.op.binary.f32(i32 36, float %5671, float %5666)  ; FMin(a,b)
  %5673 = fmul fast float %5669, 2.550000e+02
  %5674 = fadd fast float %5673, 0x3F70101020000000
  %5675 = fptoui float %5674 to i32
  %5676 = fmul fast float %5672, 2.550000e+02
  %5677 = fadd fast float %5676, 0x3F70101020000000
  %5678 = fptoui float %5677 to i32
  %5679 = icmp ult i32 %5675, %5678
  br i1 %5679, label %5680, label %5848

; <label>:5680                                    ; preds = %5649
  %5681 = fcmp fast ogt float %81, 9.843750e-01
  %5682 = fadd fast float %82, -4.000000e+00
  %5683 = select i1 %5681, float -4.000000e+00, float %5682
  %5684 = call float @dx.op.binary.f32(i32 35, float %5683, float 0.000000e+00)  ; FMax(a,b)
  %5685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5686 = extractvalue %dx.types.CBufRet.f32 %5685, 0
  %5687 = fadd fast float %5686, %5684
  %5688 = extractvalue %dx.types.CBufRet.f32 %5685, 2
  %5689 = fmul fast float %5687, %5688
  %5690 = call float @dx.op.unary.f32(i32 23, float %5689)  ; Log(value)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5685, 3
  %5692 = fmul fast float %5691, %5690
  %5693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5694 = extractvalue %dx.types.CBufRet.f32 %5693, 2
  %5695 = fmul fast float %5692, %5694
  %5696 = call float @dx.op.unary.f32(i32 7, float %5695)  ; Saturate(value)
  %5697 = uitofp i32 %5675 to float
  %5698 = uitofp i32 %5678 to float
  %5699 = fadd fast float %5697, 5.000000e-01
  %5700 = fadd fast float %5698, 5.000000e-01
  %5701 = fmul fast float %5694, %5699
  %5702 = fmul fast float %5694, %5700
  %5703 = fadd fast float %5701, 0x3F0FFB4800000000
  %5704 = fadd fast float %5702, 0xBF0FFB4800000000
  %5705 = call float @dx.op.binary.f32(i32 35, float %5696, float %5703)  ; FMax(a,b)
  %5706 = call float @dx.op.binary.f32(i32 36, float %5705, float %5704)  ; FMin(a,b)
  %5707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5708 = extractvalue %dx.types.CBufRet.f32 %5707, 1
  %5709 = extractvalue %dx.types.CBufRet.f32 %5707, 2
  %5710 = extractvalue %dx.types.CBufRet.f32 %5707, 0
  %5711 = fmul fast float %5708, %5706
  %5712 = fadd fast float %5710, %5711
  %5713 = fadd fast float %5710, %5709
  %5714 = fsub fast float %5708, %5709
  %5715 = fadd fast float %5714, %5710
  %5716 = call float @dx.op.binary.f32(i32 35, float %5712, float %5713)  ; FMax(a,b)
  %5717 = call float @dx.op.binary.f32(i32 36, float %5716, float %5715)  ; FMin(a,b)
  %5718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %5655, float %5656, float %5717, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5719 = extractvalue %dx.types.ResRet.f32 %5718, 0
  %5720 = extractvalue %dx.types.ResRet.f32 %5718, 1
  %5721 = extractvalue %dx.types.ResRet.f32 %5718, 2
  %5722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5723 = extractvalue %dx.types.CBufRet.i32 %5722, 0
  %5724 = extractvalue %dx.types.CBufRet.i32 %5722, 1
  %5725 = uitofp i32 %5723 to float
  %5726 = uitofp i32 %5724 to float
  %5727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5728 = extractvalue %dx.types.CBufRet.f32 %5727, 0
  %5729 = extractvalue %dx.types.CBufRet.f32 %5727, 1
  %5730 = fmul fast float %5725, %5655
  %5731 = fmul fast float %5726, %5656
  %5732 = fadd fast float %5730, -5.000000e-01
  %5733 = fadd fast float %5731, -5.000000e-01
  %5734 = call float @dx.op.unary.f32(i32 22, float %5732)  ; Frc(value)
  %5735 = call float @dx.op.unary.f32(i32 22, float %5733)  ; Frc(value)
  %5736 = fmul fast float %5734, %5734
  %5737 = fmul fast float %5736, %5734
  %5738 = fsub fast float 3.000000e+00, %5734
  %5739 = fmul fast float %5736, %5738
  %5740 = fmul fast float %5734, 3.000000e+00
  %5741 = fmul fast float %5737, 3.000000e+00
  %5742 = fmul fast float %5736, 6.000000e+00
  %5743 = fsub fast float %5741, %5742
  %5744 = fadd fast float %5743, 4.000000e+00
  %5745 = fmul fast float %5744, 0x3FC5555560000000
  %5746 = fmul fast float %5737, -3.000000e+00
  %5747 = fadd fast float %5736, %5734
  %5748 = fmul fast float %5747, 3.000000e+00
  %5749 = fadd fast float %5746, 1.000000e+00
  %5750 = fadd fast float %5749, %5748
  %5751 = fmul fast float %5737, 0x3FC5555560000000
  %5752 = fmul fast float %5735, %5735
  %5753 = fmul fast float %5752, %5735
  %5754 = fsub fast float 3.000000e+00, %5735
  %5755 = fmul fast float %5752, %5754
  %5756 = fmul fast float %5735, 3.000000e+00
  %5757 = fmul fast float %5753, 3.000000e+00
  %5758 = fmul fast float %5752, 6.000000e+00
  %5759 = fsub fast float %5757, %5758
  %5760 = fadd fast float %5759, 4.000000e+00
  %5761 = fmul fast float %5760, 0x3FC5555560000000
  %5762 = fmul fast float %5753, -3.000000e+00
  %5763 = fadd fast float %5752, %5735
  %5764 = fmul fast float %5763, 3.000000e+00
  %5765 = fadd fast float %5762, 1.000000e+00
  %5766 = fadd fast float %5765, %5764
  %5767 = fmul fast float %5753, 0x3FC5555560000000
  %5768 = fadd fast float %5734, 1.000000e+00
  %5769 = fsub fast float 1.000000e+00, %5740
  %5770 = fadd fast float %5769, %5739
  %5771 = fadd fast float %5770, %5744
  %5772 = fmul fast float %5771, 0x3FC5555560000000
  %5773 = fdiv fast float %5745, %5772
  %5774 = fsub fast float %5768, %5773
  %5775 = fsub fast float 1.000000e+00, %5734
  %5776 = fadd fast float %5750, %5737
  %5777 = fmul fast float %5776, 0x3FC5555560000000
  %5778 = fdiv fast float %5751, %5777
  %5779 = fadd fast float %5775, %5778
  %5780 = fadd fast float %5735, 1.000000e+00
  %5781 = fsub fast float 1.000000e+00, %5756
  %5782 = fadd fast float %5781, %5755
  %5783 = fadd fast float %5782, %5760
  %5784 = fmul fast float %5783, 0x3FC5555560000000
  %5785 = fdiv fast float %5761, %5784
  %5786 = fsub fast float %5780, %5785
  %5787 = fsub fast float 1.000000e+00, %5735
  %5788 = fadd fast float %5766, %5753
  %5789 = fmul fast float %5788, 0x3FC5555560000000
  %5790 = fdiv fast float %5767, %5789
  %5791 = fadd fast float %5790, %5787
  %5792 = fmul fast float %5774, %5728
  %5793 = fsub fast float %5655, %5792
  %5794 = fmul fast float %5779, %5728
  %5795 = fadd fast float %5794, %5655
  %5796 = fmul fast float %5791, %5729
  %5797 = fadd fast float %5796, %5656
  %5798 = fmul fast float %5786, %5729
  %5799 = fsub fast float %5656, %5798
  %5800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %5793, float %5799, float %5717, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5801 = extractvalue %dx.types.ResRet.f32 %5800, 0
  %5802 = extractvalue %dx.types.ResRet.f32 %5800, 1
  %5803 = extractvalue %dx.types.ResRet.f32 %5800, 2
  %5804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %5795, float %5799, float %5717, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5805 = extractvalue %dx.types.ResRet.f32 %5804, 0
  %5806 = extractvalue %dx.types.ResRet.f32 %5804, 1
  %5807 = extractvalue %dx.types.ResRet.f32 %5804, 2
  %5808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %5793, float %5797, float %5717, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5809 = extractvalue %dx.types.ResRet.f32 %5808, 0
  %5810 = extractvalue %dx.types.ResRet.f32 %5808, 1
  %5811 = extractvalue %dx.types.ResRet.f32 %5808, 2
  %5812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %5795, float %5797, float %5717, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5813 = extractvalue %dx.types.ResRet.f32 %5812, 0
  %5814 = extractvalue %dx.types.ResRet.f32 %5812, 1
  %5815 = extractvalue %dx.types.ResRet.f32 %5812, 2
  %5816 = fsub fast float %5809, %5801
  %5817 = fsub fast float %5810, %5802
  %5818 = fsub fast float %5811, %5803
  %5819 = fmul fast float %5816, %5789
  %5820 = fmul fast float %5817, %5789
  %5821 = fmul fast float %5818, %5789
  %5822 = fadd fast float %5819, %5801
  %5823 = fadd fast float %5820, %5802
  %5824 = fadd fast float %5821, %5803
  %5825 = fsub fast float %5813, %5805
  %5826 = fsub fast float %5814, %5806
  %5827 = fsub fast float %5815, %5807
  %5828 = fmul fast float %5825, %5789
  %5829 = fmul fast float %5826, %5789
  %5830 = fmul fast float %5827, %5789
  %5831 = fsub fast float %5805, %5822
  %5832 = fadd fast float %5831, %5828
  %5833 = fsub fast float %5806, %5823
  %5834 = fadd fast float %5833, %5829
  %5835 = fsub fast float %5807, %5824
  %5836 = fadd fast float %5835, %5830
  %5837 = fmul fast float %5832, %5777
  %5838 = fmul fast float %5834, %5777
  %5839 = fmul fast float %5836, %5777
  %5840 = fadd fast float %5837, %5822
  %5841 = fadd fast float %5838, %5823
  %5842 = fadd fast float %5839, %5824
  %5843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5844 = extractvalue %dx.types.CBufRet.f32 %5843, 1
  %5845 = fmul fast float %5840, %5844
  %5846 = fmul fast float %5841, %5844
  %5847 = fmul fast float %5842, %5844
  br label %5848

; <label>:5848                                    ; preds = %5680, %5649
  %5849 = phi float [ %5719, %5680 ], [ 1.000000e+00, %5649 ]
  %5850 = phi float [ %5720, %5680 ], [ 1.000000e+00, %5649 ]
  %5851 = phi float [ %5721, %5680 ], [ 1.000000e+00, %5649 ]
  %5852 = phi float [ %5845, %5680 ], [ 0.000000e+00, %5649 ]
  %5853 = phi float [ %5846, %5680 ], [ 0.000000e+00, %5649 ]
  %5854 = phi float [ %5847, %5680 ], [ 0.000000e+00, %5649 ]
  %5855 = fmul fast float %5852, %5622
  %5856 = fmul fast float %5853, %5624
  %5857 = fmul fast float %5854, %5626
  %5858 = call float @dx.op.dot3.f32(i32 55, float %5849, float %5850, float %5851, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5859 = call float @dx.op.dot3.f32(i32 55, float %5855, float %5856, float %5857, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5860 = select i1 %204, float %5858, float %5849
  %5861 = select i1 %204, float %5858, float %5850
  %5862 = select i1 %204, float 1.000000e+00, float %5851
  %5863 = select i1 %204, float %5859, float %5855
  %5864 = select i1 %204, float 0.000000e+00, float %5856
  %5865 = select i1 %204, float 0.000000e+00, float %5857
  %5866 = fmul fast float %5860, %5639
  %5867 = fmul fast float %5861, %5640
  %5868 = fmul fast float %5862, %5641
  %5869 = fadd fast float %5866, %5863
  %5870 = fadd fast float %5867, %5864
  %5871 = fadd fast float %5865, %5868
  %5872 = fmul fast float %5860, %5615
  %5873 = fmul fast float %5861, %5616
  %5874 = fmul fast float %5862, %5617
  %5875 = fmul fast float %94, 2.000000e+00
  %5876 = fmul fast float %5875, %5651
  %5877 = fmul fast float %95, 2.000000e+00
  %5878 = fmul fast float %5877, %5652
  %5879 = fsub fast float 1.000000e+00, %5876
  %5880 = fsub fast float 1.000000e+00, %5878
  %5881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5882 = extractvalue %dx.types.CBufRet.f32 %5881, 0
  %5883 = extractvalue %dx.types.CBufRet.f32 %5881, 1
  %5884 = extractvalue %dx.types.CBufRet.f32 %5881, 2
  %5885 = fmul fast float %5879, %5882
  %5886 = fmul fast float %5879, %5883
  %5887 = fmul fast float %5879, %5884
  %5888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5889 = extractvalue %dx.types.CBufRet.f32 %5888, 0
  %5890 = extractvalue %dx.types.CBufRet.f32 %5888, 1
  %5891 = extractvalue %dx.types.CBufRet.f32 %5888, 2
  %5892 = fmul fast float %5880, %5889
  %5893 = fmul fast float %5880, %5890
  %5894 = fmul fast float %5880, %5891
  %5895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5896 = extractvalue %dx.types.CBufRet.f32 %5895, 0
  %5897 = extractvalue %dx.types.CBufRet.f32 %5895, 1
  %5898 = extractvalue %dx.types.CBufRet.f32 %5895, 2
  %5899 = fadd fast float %5892, %5896
  %5900 = fadd fast float %5899, %5885
  %5901 = fadd fast float %5893, %5897
  %5902 = fadd fast float %5901, %5886
  %5903 = fadd fast float %5894, %5898
  %5904 = fadd fast float %5903, %5887
  %5905 = fmul fast float %5900, %164
  %5906 = fmul fast float %5902, %164
  %5907 = fmul fast float %5904, %164
  br label %5908

; <label>:5908                                    ; preds = %5848, %5614
  %5909 = phi float [ %5905, %5848 ], [ %142, %5614 ]
  %5910 = phi float [ %5906, %5848 ], [ %143, %5614 ]
  %5911 = phi float [ %5907, %5848 ], [ %144, %5614 ]
  %5912 = phi float [ %164, %5848 ], [ %82, %5614 ]
  %5913 = phi float [ %5869, %5848 ], [ %5639, %5614 ]
  %5914 = phi float [ %5870, %5848 ], [ %5640, %5614 ]
  %5915 = phi float [ %5871, %5848 ], [ %5641, %5614 ]
  %5916 = phi float [ %5872, %5848 ], [ %5615, %5614 ]
  %5917 = phi float [ %5873, %5848 ], [ %5616, %5614 ]
  %5918 = phi float [ %5874, %5848 ], [ %5617, %5614 ]
  %5919 = phi float [ %5849, %5848 ], [ 1.000000e+00, %5614 ]
  br i1 %5648, label %7074, label %5920

; <label>:5920                                    ; preds = %5908
  %5921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5922 = extractvalue %dx.types.CBufRet.f32 %5921, 0
  %5923 = extractvalue %dx.types.CBufRet.f32 %5921, 1
  %5924 = extractvalue %dx.types.CBufRet.f32 %5921, 2
  %5925 = extractvalue %dx.types.CBufRet.f32 %5921, 3
  %5926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5927 = extractvalue %dx.types.CBufRet.f32 %5926, 0
  %5928 = extractvalue %dx.types.CBufRet.f32 %5926, 1
  %5929 = extractvalue %dx.types.CBufRet.f32 %5926, 2
  %5930 = extractvalue %dx.types.CBufRet.f32 %5926, 3
  %5931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5931, 0
  %5933 = extractvalue %dx.types.CBufRet.f32 %5931, 1
  %5934 = extractvalue %dx.types.CBufRet.f32 %5931, 2
  %5935 = extractvalue %dx.types.CBufRet.f32 %5931, 3
  %5936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5937 = extractvalue %dx.types.CBufRet.f32 %5936, 0
  %5938 = extractvalue %dx.types.CBufRet.f32 %5936, 1
  %5939 = extractvalue %dx.types.CBufRet.f32 %5936, 2
  %5940 = extractvalue %dx.types.CBufRet.f32 %5936, 3
  %5941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5942 = extractvalue %dx.types.CBufRet.f32 %5941, 3
  %5943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5944 = extractvalue %dx.types.CBufRet.f32 %5943, 3
  %5945 = extractvalue %dx.types.CBufRet.f32 %5943, 0
  %5946 = extractvalue %dx.types.CBufRet.f32 %5943, 1
  %5947 = extractvalue %dx.types.CBufRet.f32 %5943, 2
  %5948 = fcmp fast olt float %5947, -5.000000e-01
  %5949 = call float @dx.op.dot3.f32(i32 55, float %5909, float %5910, float %5911, float %5909, float %5910, float %5911)  ; Dot3(ax,ay,az,bx,by,bz)
  %5950 = call float @dx.op.unary.f32(i32 25, float %5949)  ; Rsqrt(value)
  %5951 = fmul fast float %5950, %5949
  %5952 = fmul fast float %5950, %5909
  %5953 = fmul fast float %5950, %5910
  %5954 = fmul fast float %5950, %5911
  %5955 = fadd fast float %5951, %5925
  %5956 = call float @dx.op.dot3.f32(i32 55, float %5952, float %5953, float %5954, float %5922, float %5923, float %5924)  ; Dot3(ax,ay,az,bx,by,bz)
  %5957 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5958 = extractvalue %dx.types.CBufRet.i32 %5957, 1
  %5959 = and i32 %5958, 1
  %5960 = icmp ne i32 %5959, 0
  %5961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5962 = extractvalue %dx.types.CBufRet.f32 %5961, 2
  %5963 = fcmp fast ogt float %5962, 0.000000e+00
  %5964 = and i1 %5960, %5963
  br i1 %5964, label %5965, label %6371, !dx.controlflow.hints !127

; <label>:5965                                    ; preds = %5920
  %5966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5967 = extractvalue %dx.types.CBufRet.f32 %5966, 3
  %5968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5969 = extractvalue %dx.types.CBufRet.f32 %5968, 2
  %5970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5971 = extractvalue %dx.types.CBufRet.f32 %5970, 2
  %5972 = fsub fast float %5969, %5971
  %5973 = and i32 %5958, 2
  %5974 = extractvalue %dx.types.CBufRet.i32 %5957, 0
  %5975 = call i32 @dx.op.binary.i32(i32 40, i32 %5974, i32 3)  ; UMin(a,b)
  %5976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5977 = extractvalue %dx.types.CBufRet.f32 %5976, 0
  %5978 = extractvalue %dx.types.CBufRet.f32 %5976, 1
  %5979 = extractvalue %dx.types.CBufRet.f32 %5970, 0
  %5980 = extractvalue %dx.types.CBufRet.f32 %5970, 1
  %5981 = fsub fast float %5977, %5979
  %5982 = fsub fast float %5978, %5980
  %5983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.f32 %5983, 0
  %5985 = fcmp fast ogt float %5984, 0.000000e+00
  %5986 = fsub fast float -0.000000e+00, %5981
  %5987 = fsub fast float -0.000000e+00, %5982
  %5988 = call float @dx.op.dot2.f32(i32 54, float %5952, float %5953, float %5952, float %5953)  ; Dot2(ax,ay,bx,by)
  %5989 = call float @dx.op.dot2.f32(i32 54, float %5952, float %5953, float %5986, float %5987)  ; Dot2(ax,ay,bx,by)
  %5990 = fmul fast float %5989, 2.000000e+00
  %5991 = call float @dx.op.dot2.f32(i32 54, float %5986, float %5987, float %5986, float %5987)  ; Dot2(ax,ay,bx,by)
  %5992 = fmul fast float %5984, %5984
  %5993 = fsub fast float %5991, %5992
  %5994 = fmul fast float %5990, %5990
  %5995 = fmul fast float %5988, 4.000000e+00
  %5996 = fmul fast float %5995, %5993
  %5997 = fsub fast float %5994, %5996
  %5998 = fcmp fast ogt float %5997, 0.000000e+00
  br i1 %5998, label %5999, label %6014

; <label>:5999                                    ; preds = %5965
  %6000 = fcmp fast ogt float %5990, 0.000000e+00
  %6001 = call float @dx.op.unary.f32(i32 24, float %5997)  ; Sqrt(value)
  %6002 = fsub fast float -0.000000e+00, %6001
  %6003 = select i1 %6000, float %6001, float %6002
  %6004 = fadd fast float %6003, %5990
  %6005 = fmul float %6004, -5.000000e-01
  %6006 = fdiv fast float %6005, %5988
  %6007 = call float @dx.op.binary.f32(i32 35, float %6006, float 0.000000e+00)  ; FMax(a,b)
  %6008 = call float @dx.op.binary.f32(i32 36, float %5951, float %6007)  ; FMin(a,b)
  %6009 = fdiv fast float %5993, %6005
  %6010 = call float @dx.op.binary.f32(i32 35, float %6009, float 0.000000e+00)  ; FMax(a,b)
  %6011 = call float @dx.op.binary.f32(i32 36, float %5951, float %6010)  ; FMin(a,b)
  %6012 = call float @dx.op.binary.f32(i32 36, float %6008, float %6011)  ; FMin(a,b)
  %6013 = call float @dx.op.binary.f32(i32 35, float %6008, float %6011)  ; FMax(a,b)
  br label %6014

; <label>:6014                                    ; preds = %5999, %5965
  %6015 = phi float [ %6013, %5999 ], [ -1.000000e+00, %5965 ]
  %6016 = phi float [ %6012, %5999 ], [ -1.000000e+00, %5965 ]
  %6017 = phi i1 [ true, %5999 ], [ false, %5965 ]
  %6018 = and i1 %5985, %6017
  br i1 %6018, label %6019, label %6021

; <label>:6019                                    ; preds = %6014
  %6020 = fcmp fast oeq float %6016, %6015
  br i1 %6020, label %6324, label %6022

; <label>:6021                                    ; preds = %6014
  br i1 %5985, label %6324, label %6022

; <label>:6022                                    ; preds = %6021, %6019
  %6023 = phi float [ %5951, %6021 ], [ %6015, %6019 ]
  %6024 = phi float [ 0.000000e+00, %6021 ], [ %6016, %6019 ]
  %6025 = icmp ne i32 %5973, 0
  %6026 = fmul fast float %6023, %5954
  %6027 = fadd fast float %6026, %5967
  %6028 = fmul fast float %6027, %6023
  %6029 = select i1 %6025, float 0.000000e+00, float %6028
  %6030 = fcmp fast oeq float %5954, 0.000000e+00
  %6031 = fdiv fast float %5972, %5954
  %6032 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6031)  ; FMax(a,b)
  %6033 = select i1 %6030, float %6023, float %6032
  %6034 = call float @dx.op.binary.f32(i32 36, float %6023, float %6033)  ; FMin(a,b)
  %6035 = fcmp fast ogt float %5954, 0.000000e+00
  %6036 = fcmp fast olt float %5972, 0.000000e+00
  br i1 %6035, label %6037, label %6094

; <label>:6037                                    ; preds = %6022
  %6038 = icmp eq i32 %5973, 0
  br i1 %6036, label %6039, label %6083

; <label>:6039                                    ; preds = %6037
  %6040 = select i1 %6038, float %6023, float 0.000000e+00
  %6041 = fsub fast float -0.000000e+00, %6040
  %6042 = call float @dx.op.unary.f32(i32 6, float %6041)  ; FAbs(value)
  %6043 = fmul fast float %6040, %5954
  %6044 = fadd fast float %6043, %5967
  %6045 = fmul fast float %6042, %6044
  %6046 = fsub fast float %6029, %6045
  %6047 = fsub fast float %6023, %6042
  %6048 = select i1 %6038, float %6047, float 0.000000e+00
  %6049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6050 = extractvalue %dx.types.CBufRet.f32 %6049, 0
  %6051 = extractvalue %dx.types.CBufRet.f32 %6049, 1
  %6052 = extractvalue %dx.types.CBufRet.f32 %6049, 2
  %6053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6054 = extractvalue %dx.types.CBufRet.f32 %6053, 0
  %6055 = extractvalue %dx.types.CBufRet.f32 %6053, 1
  %6056 = extractvalue %dx.types.CBufRet.f32 %6053, 2
  %6057 = extractvalue %dx.types.CBufRet.f32 %6053, 3
  %6058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6059 = extractvalue %dx.types.CBufRet.f32 %6058, 3
  %6060 = call float @dx.op.binary.f32(i32 36, float %6046, float %6059)  ; FMin(a,b)
  %6061 = fmul fast float %6057, %6048
  %6062 = call float @dx.op.unary.f32(i32 7, float %6061)  ; Saturate(value)
  %6063 = fsub fast float %6054, %6050
  %6064 = fsub fast float %6055, %6051
  %6065 = fsub fast float %6056, %6052
  %6066 = fmul fast float %6062, %6063
  %6067 = fmul fast float %6062, %6064
  %6068 = fmul fast float %6062, %6065
  %6069 = fadd fast float %6066, %6050
  %6070 = fadd fast float %6067, %6051
  %6071 = fadd fast float %6068, %6052
  %6072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6073 = extractvalue %dx.types.CBufRet.f32 %6072, 0
  %6074 = extractvalue %dx.types.CBufRet.f32 %6072, 1
  %6075 = fadd fast float %6074, %6073
  %6076 = call float @dx.op.unary.f32(i32 7, float %6075)  ; Saturate(value)
  %6077 = extractvalue %dx.types.CBufRet.f32 %6072, 2
  %6078 = extractvalue %dx.types.CBufRet.f32 %6072, 3
  %6079 = fadd fast float %6078, %6077
  %6080 = call float @dx.op.unary.f32(i32 7, float %6079)  ; Saturate(value)
  %6081 = fmul fast float %6076, %6060
  %6082 = fmul fast float %6081, %6080
  br label %6324

; <label>:6083                                    ; preds = %6037
  br i1 %6038, label %6084, label %6105

; <label>:6084                                    ; preds = %6083
  %6085 = call float @dx.op.binary.f32(i32 36, float %6034, float %6024)  ; FMin(a,b)
  %6086 = fsub fast float %6034, %6085
  %6087 = fsub fast float %6086, %6023
  %6088 = call float @dx.op.unary.f32(i32 6, float %6087)  ; FAbs(value)
  %6089 = fadd fast float %6086, %6023
  %6090 = fmul fast float %6089, %5954
  %6091 = fadd fast float %6090, %5967
  %6092 = fmul fast float %6091, %6088
  %6093 = fsub fast float %6029, %6092
  br label %6105

; <label>:6094                                    ; preds = %6022
  br i1 %6036, label %6095, label %6105

; <label>:6095                                    ; preds = %6094
  %6096 = call float @dx.op.binary.f32(i32 35, float %6024, float %6034)  ; FMax(a,b)
  %6097 = icmp eq i32 %5973, 0
  %6098 = select i1 %6097, float %6034, float 0.000000e+00
  %6099 = fsub fast float -0.000000e+00, %6098
  %6100 = call float @dx.op.unary.f32(i32 6, float %6099)  ; FAbs(value)
  %6101 = fmul fast float %6098, %5954
  %6102 = fadd fast float %6101, %5967
  %6103 = fmul fast float %6100, %6102
  %6104 = fsub fast float %6029, %6103
  br label %6105

; <label>:6105                                    ; preds = %6095, %6094, %6084, %6083
  %6106 = phi float [ %6024, %6083 ], [ %6024, %6084 ], [ %6096, %6095 ], [ %6024, %6094 ]
  %6107 = phi float [ 0.000000e+00, %6083 ], [ %6088, %6084 ], [ %6100, %6095 ], [ 0.000000e+00, %6094 ]
  %6108 = phi float [ %6029, %6083 ], [ %6093, %6084 ], [ %6104, %6095 ], [ %6029, %6094 ]
  %6109 = phi float [ %6034, %6083 ], [ %6034, %6084 ], [ %6023, %6095 ], [ %6023, %6094 ]
  %6110 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 0
  store float -1.000000e+00, float* %6110, align 4, !tbaa !114, !noalias !128
  %6111 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 1
  store float -1.000000e+00, float* %6111, align 4, !tbaa !114, !noalias !128
  %6112 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 2
  store float -1.000000e+00, float* %6112, align 4, !tbaa !114, !noalias !128
  %6113 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 0
  store float -1.000000e+00, float* %6113, align 4, !tbaa !114, !noalias !128
  %6114 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 1
  store float -1.000000e+00, float* %6114, align 4, !tbaa !114, !noalias !128
  %6115 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 2
  store float -1.000000e+00, float* %6115, align 4, !tbaa !114, !noalias !128
  %6116 = icmp sgt i32 %5975, 0
  br i1 %6116, label %6117, label %6178

; <label>:6117                                    ; preds = %6105
  br label %6118

; <label>:6118                                    ; preds = %6167, %6117
  %6119 = phi i32 [ %6168, %6167 ], [ 0, %6117 ]
  %6120 = phi i32 [ %6169, %6167 ], [ 0, %6117 ]
  %6121 = add nuw i32 %6120, 171
  %6122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6121)  ; CBufferLoadLegacy(handle,regIndex)
  %6123 = extractvalue %dx.types.CBufRet.f32 %6122, 0
  %6124 = extractvalue %dx.types.CBufRet.f32 %6122, 1
  %6125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6126 = extractvalue %dx.types.CBufRet.f32 %6125, 0
  %6127 = extractvalue %dx.types.CBufRet.f32 %6125, 1
  %6128 = fsub fast float %6123, %6126
  %6129 = fsub fast float %6124, %6127
  %6130 = extractvalue %dx.types.CBufRet.f32 %6122, 2
  %6131 = fsub fast float -0.000000e+00, %6128
  %6132 = fsub fast float -0.000000e+00, %6129
  %6133 = call float @dx.op.dot2.f32(i32 54, float %5952, float %5953, float %6131, float %6132)  ; Dot2(ax,ay,bx,by)
  %6134 = fmul fast float %6133, 2.000000e+00
  %6135 = call float @dx.op.dot2.f32(i32 54, float %6131, float %6132, float %6131, float %6132)  ; Dot2(ax,ay,bx,by)
  %6136 = fmul fast float %6130, %6130
  %6137 = fsub fast float %6135, %6136
  %6138 = fmul fast float %6134, %6134
  %6139 = fmul fast float %5995, %6137
  %6140 = fsub fast float %6138, %6139
  %6141 = fcmp fast ogt float %6140, 0.000000e+00
  br i1 %6141, label %6142, label %6157

; <label>:6142                                    ; preds = %6118
  %6143 = fcmp fast ogt float %6134, 0.000000e+00
  %6144 = call float @dx.op.unary.f32(i32 24, float %6140)  ; Sqrt(value)
  %6145 = fsub fast float -0.000000e+00, %6144
  %6146 = select i1 %6143, float %6144, float %6145
  %6147 = fadd fast float %6146, %6134
  %6148 = fmul float %6147, -5.000000e-01
  %6149 = fdiv fast float %6148, %5988
  %6150 = call float @dx.op.binary.f32(i32 35, float %6149, float 0.000000e+00)  ; FMax(a,b)
  %6151 = call float @dx.op.binary.f32(i32 36, float %6023, float %6150)  ; FMin(a,b)
  %6152 = fdiv fast float %6137, %6148
  %6153 = call float @dx.op.binary.f32(i32 35, float %6152, float 0.000000e+00)  ; FMax(a,b)
  %6154 = call float @dx.op.binary.f32(i32 36, float %6023, float %6153)  ; FMin(a,b)
  %6155 = call float @dx.op.binary.f32(i32 36, float %6151, float %6154)  ; FMin(a,b)
  %6156 = call float @dx.op.binary.f32(i32 35, float %6151, float %6154)  ; FMax(a,b)
  br label %6157

; <label>:6157                                    ; preds = %6142, %6118
  %6158 = phi float [ %6156, %6142 ], [ -1.000000e+00, %6118 ]
  %6159 = phi float [ %6155, %6142 ], [ -1.000000e+00, %6118 ]
  %6160 = phi i1 [ true, %6142 ], [ false, %6118 ]
  br i1 %6160, label %6161, label %6167

; <label>:6161                                    ; preds = %6157
  %6162 = call float @dx.op.binary.f32(i32 35, float %6106, float %6159)  ; FMax(a,b)
  %6163 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %6120
  store float %6162, float* %6163, align 4, !tbaa !114, !noalias !128
  %6164 = call float @dx.op.binary.f32(i32 35, float %6106, float %6158)  ; FMax(a,b)
  %6165 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %6120
  store float %6164, float* %6165, align 4, !tbaa !114, !noalias !128
  %6166 = add nsw i32 %6119, 1
  br label %6167

; <label>:6167                                    ; preds = %6161, %6157
  %6168 = phi i32 [ %6166, %6161 ], [ %6119, %6157 ]
  %6169 = add nuw nsw i32 %6120, 1
  %6170 = icmp eq i32 %6169, %5975
  br i1 %6170, label %6171, label %6118

; <label>:6171                                    ; preds = %6167
  %6172 = load float, float* %6112, align 4, !tbaa !114, !alias.scope !144, !noalias !147
  %6173 = load float, float* %6111, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  %6174 = load float, float* %6110, align 4, !tbaa !114, !alias.scope !152, !noalias !153
  %6175 = load float, float* %6115, align 4, !tbaa !114, !alias.scope !154, !noalias !157
  %6176 = load float, float* %6114, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  %6177 = load float, float* %6113, align 4, !tbaa !114, !alias.scope !162, !noalias !163
  br label %6178

; <label>:6178                                    ; preds = %6171, %6105
  %6179 = phi float [ -1.000000e+00, %6105 ], [ %6177, %6171 ]
  %6180 = phi float [ -1.000000e+00, %6105 ], [ %6176, %6171 ]
  %6181 = phi float [ -1.000000e+00, %6105 ], [ %6175, %6171 ]
  %6182 = phi float [ -1.000000e+00, %6105 ], [ %6174, %6171 ]
  %6183 = phi float [ -1.000000e+00, %6105 ], [ %6173, %6171 ]
  %6184 = phi float [ -1.000000e+00, %6105 ], [ %6172, %6171 ]
  %6185 = phi i32 [ 0, %6105 ], [ %6168, %6171 ]
  %6186 = call float @dx.op.binary.f32(i32 36, float %6183, float %6184)  ; FMin(a,b)
  %6187 = call float @dx.op.binary.f32(i32 36, float %6182, float %6186)  ; FMin(a,b)
  %6188 = call float @dx.op.binary.f32(i32 35, float %6182, float %6183)  ; FMax(a,b)
  %6189 = call float @dx.op.binary.f32(i32 36, float %6188, float %6184)  ; FMin(a,b)
  %6190 = call float @dx.op.binary.f32(i32 36, float %6182, float %6183)  ; FMin(a,b)
  %6191 = call float @dx.op.binary.f32(i32 35, float %6190, float %6189)  ; FMax(a,b)
  %6192 = call float @dx.op.binary.f32(i32 35, float %6183, float %6184)  ; FMax(a,b)
  %6193 = call float @dx.op.binary.f32(i32 35, float %6182, float %6192)  ; FMax(a,b)
  store float %6187, float* %6110, align 4, !tbaa !114, !alias.scope !152, !noalias !153
  store float %6191, float* %6111, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  store float %6193, float* %6112, align 4, !tbaa !114, !alias.scope !144, !noalias !147
  %6194 = call float @dx.op.binary.f32(i32 36, float %6180, float %6181)  ; FMin(a,b)
  %6195 = call float @dx.op.binary.f32(i32 36, float %6179, float %6194)  ; FMin(a,b)
  %6196 = call float @dx.op.binary.f32(i32 35, float %6179, float %6180)  ; FMax(a,b)
  %6197 = call float @dx.op.binary.f32(i32 36, float %6196, float %6181)  ; FMin(a,b)
  %6198 = call float @dx.op.binary.f32(i32 36, float %6179, float %6180)  ; FMin(a,b)
  %6199 = call float @dx.op.binary.f32(i32 35, float %6198, float %6197)  ; FMax(a,b)
  %6200 = call float @dx.op.binary.f32(i32 35, float %6180, float %6181)  ; FMax(a,b)
  %6201 = call float @dx.op.binary.f32(i32 35, float %6179, float %6200)  ; FMax(a,b)
  store float %6195, float* %6113, align 4, !tbaa !114, !alias.scope !162, !noalias !163
  store float %6199, float* %6114, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  store float %6201, float* %6115, align 4, !tbaa !114, !alias.scope !154, !noalias !157
  %6202 = sub nsw i32 3, %6185
  %6203 = icmp sgt i32 %6202, 2
  br i1 %6203, label %6204, label %6242

; <label>:6204                                    ; preds = %6178
  %6205 = icmp eq i32 %5973, 0
  %6206 = fsub fast float %6023, %6107
  %6207 = select i1 %6205, float %6206, float %6107
  %6208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6209 = extractvalue %dx.types.CBufRet.f32 %6208, 0
  %6210 = extractvalue %dx.types.CBufRet.f32 %6208, 1
  %6211 = extractvalue %dx.types.CBufRet.f32 %6208, 2
  %6212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6213 = extractvalue %dx.types.CBufRet.f32 %6212, 0
  %6214 = extractvalue %dx.types.CBufRet.f32 %6212, 1
  %6215 = extractvalue %dx.types.CBufRet.f32 %6212, 2
  %6216 = extractvalue %dx.types.CBufRet.f32 %6212, 3
  %6217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6218 = extractvalue %dx.types.CBufRet.f32 %6217, 3
  %6219 = call float @dx.op.binary.f32(i32 36, float %6108, float %6218)  ; FMin(a,b)
  %6220 = fmul fast float %6216, %6207
  %6221 = call float @dx.op.unary.f32(i32 7, float %6220)  ; Saturate(value)
  %6222 = fsub fast float %6213, %6209
  %6223 = fsub fast float %6214, %6210
  %6224 = fsub fast float %6215, %6211
  %6225 = fmul fast float %6221, %6222
  %6226 = fmul fast float %6221, %6223
  %6227 = fmul fast float %6221, %6224
  %6228 = fadd fast float %6225, %6209
  %6229 = fadd fast float %6226, %6210
  %6230 = fadd fast float %6227, %6211
  %6231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6232 = extractvalue %dx.types.CBufRet.f32 %6231, 0
  %6233 = extractvalue %dx.types.CBufRet.f32 %6231, 1
  %6234 = fadd fast float %6233, %6232
  %6235 = call float @dx.op.unary.f32(i32 7, float %6234)  ; Saturate(value)
  %6236 = extractvalue %dx.types.CBufRet.f32 %6231, 2
  %6237 = extractvalue %dx.types.CBufRet.f32 %6231, 3
  %6238 = fadd fast float %6237, %6236
  %6239 = call float @dx.op.unary.f32(i32 7, float %6238)  ; Saturate(value)
  %6240 = fmul fast float %6235, %6219
  %6241 = fmul fast float %6240, %6239
  br label %6324

; <label>:6242                                    ; preds = %6178
  %6243 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %6202
  %6244 = load float, float* %6243, align 4, !tbaa !114, !noalias !128
  %6245 = fcmp fast olt float %6244, %6109
  %6246 = icmp sgt i32 %6185, 0
  %6247 = and i1 %6246, %6245
  br i1 %6247, label %6248, label %6285

; <label>:6248                                    ; preds = %6242
  br label %6249

; <label>:6249                                    ; preds = %6278, %6248
  %6250 = phi float [ %6279, %6278 ], [ %6107, %6248 ]
  %6251 = phi float [ %6280, %6278 ], [ %6108, %6248 ]
  %6252 = phi float [ %6260, %6278 ], [ %6244, %6248 ]
  %6253 = phi i32 [ %6257, %6278 ], [ %6202, %6248 ]
  %6254 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %6253
  %6255 = load float, float* %6254, align 4, !tbaa !114, !noalias !128
  %6256 = icmp slt i32 %6253, 2
  %6257 = add nsw i32 %6253, 1
  %6258 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %6257
  %6259 = load float, float* %6258, align 4, !tbaa !114, !noalias !128
  %6260 = select i1 %6256, float %6259, float %6023
  %6261 = call float @dx.op.binary.f32(i32 36, float %6260, float %6255)  ; FMin(a,b)
  %6262 = call float @dx.op.binary.f32(i32 36, float %6109, float %6261)  ; FMin(a,b)
  %6263 = icmp eq i32 %5973, 0
  %6264 = fadd fast float %6262, %6252
  %6265 = fmul fast float %6264, %5954
  %6266 = fadd fast float %6265, %5967
  br i1 %6263, label %6272, label %6267

; <label>:6267                                    ; preds = %6249
  %6268 = fsub fast float %6262, %6252
  %6269 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6268)  ; FMax(a,b)
  %6270 = fmul fast float %6269, %6266
  %6271 = fadd fast float %6270, %6251
  br label %6278

; <label>:6272                                    ; preds = %6249
  %6273 = fsub fast float %6252, %6262
  %6274 = call float @dx.op.unary.f32(i32 6, float %6273)  ; FAbs(value)
  %6275 = fadd fast float %6274, %6250
  %6276 = fmul fast float %6274, %6266
  %6277 = fsub fast float %6251, %6276
  br label %6278

; <label>:6278                                    ; preds = %6272, %6267
  %6279 = phi float [ %6269, %6267 ], [ %6275, %6272 ]
  %6280 = phi float [ %6271, %6267 ], [ %6277, %6272 ]
  %6281 = fcmp fast olt float %6260, %6109
  %6282 = icmp slt i32 %6257, 3
  %6283 = and i1 %6282, %6281
  br i1 %6283, label %6249, label %6284

; <label>:6284                                    ; preds = %6278
  br label %6285

; <label>:6285                                    ; preds = %6284, %6242
  %6286 = phi float [ %6107, %6242 ], [ %6279, %6284 ]
  %6287 = phi float [ %6108, %6242 ], [ %6280, %6284 ]
  %6288 = fsub fast float %6023, %6286
  %6289 = select i1 %6025, float %6286, float %6288
  %6290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6291 = extractvalue %dx.types.CBufRet.f32 %6290, 0
  %6292 = extractvalue %dx.types.CBufRet.f32 %6290, 1
  %6293 = extractvalue %dx.types.CBufRet.f32 %6290, 2
  %6294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6295 = extractvalue %dx.types.CBufRet.f32 %6294, 0
  %6296 = extractvalue %dx.types.CBufRet.f32 %6294, 1
  %6297 = extractvalue %dx.types.CBufRet.f32 %6294, 2
  %6298 = extractvalue %dx.types.CBufRet.f32 %6294, 3
  %6299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6300 = extractvalue %dx.types.CBufRet.f32 %6299, 3
  %6301 = call float @dx.op.binary.f32(i32 36, float %6287, float %6300)  ; FMin(a,b)
  %6302 = fmul fast float %6298, %6289
  %6303 = call float @dx.op.unary.f32(i32 7, float %6302)  ; Saturate(value)
  %6304 = fsub fast float %6295, %6291
  %6305 = fsub fast float %6296, %6292
  %6306 = fsub fast float %6297, %6293
  %6307 = fmul fast float %6303, %6304
  %6308 = fmul fast float %6303, %6305
  %6309 = fmul fast float %6303, %6306
  %6310 = fadd fast float %6307, %6291
  %6311 = fadd fast float %6308, %6292
  %6312 = fadd fast float %6309, %6293
  %6313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6314 = extractvalue %dx.types.CBufRet.f32 %6313, 0
  %6315 = extractvalue %dx.types.CBufRet.f32 %6313, 1
  %6316 = fadd fast float %6315, %6314
  %6317 = call float @dx.op.unary.f32(i32 7, float %6316)  ; Saturate(value)
  %6318 = extractvalue %dx.types.CBufRet.f32 %6313, 2
  %6319 = extractvalue %dx.types.CBufRet.f32 %6313, 3
  %6320 = fadd fast float %6319, %6318
  %6321 = call float @dx.op.unary.f32(i32 7, float %6320)  ; Saturate(value)
  %6322 = fmul fast float %6317, %6301
  %6323 = fmul fast float %6322, %6321
  br label %6324

; <label>:6324                                    ; preds = %6285, %6204, %6039, %6021, %6019
  %6325 = phi float [ %6048, %6039 ], [ %6207, %6204 ], [ %6289, %6285 ], [ 0.000000e+00, %6019 ], [ 0.000000e+00, %6021 ]
  %6326 = phi float [ %6082, %6039 ], [ %6241, %6204 ], [ %6323, %6285 ], [ 0.000000e+00, %6019 ], [ 0.000000e+00, %6021 ]
  %6327 = phi float [ %6069, %6039 ], [ %6228, %6204 ], [ %6310, %6285 ], [ 0.000000e+00, %6019 ], [ 0.000000e+00, %6021 ]
  %6328 = phi float [ %6070, %6039 ], [ %6229, %6204 ], [ %6311, %6285 ], [ 0.000000e+00, %6019 ], [ 0.000000e+00, %6021 ]
  %6329 = phi float [ %6071, %6039 ], [ %6230, %6204 ], [ %6312, %6285 ], [ 0.000000e+00, %6019 ], [ 0.000000e+00, %6021 ]
  %6330 = fmul fast float %5962, %6326
  %6331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6332 = extractvalue %dx.types.CBufRet.f32 %6331, 2
  %6333 = fsub fast float %5969, %6332
  %6334 = fcmp fast olt float %6330, -2.000000e+01
  %6335 = call float @dx.op.unary.f32(i32 21, float %6330)  ; Exp(value)
  %6336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.f32 %6336, 2
  %6338 = extractvalue %dx.types.CBufRet.f32 %6336, 3
  %6339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6340 = extractvalue %dx.types.CBufRet.f32 %6339, 2
  %6341 = fmul fast float %6338, %6333
  %6342 = call float @dx.op.unary.f32(i32 7, float %6341)  ; Saturate(value)
  %6343 = fsub fast float 1.000000e+00, %6342
  %6344 = fmul fast float %5954, 5.000000e-01
  %6345 = fadd fast float %6344, 5.000000e-01
  %6346 = call float @dx.op.unary.f32(i32 7, float %6345)  ; Saturate(value)
  %6347 = fsub fast float 1.000000e+00, %6346
  %6348 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6343)  ; FMax(a,b)
  %6349 = fdiv fast float %6347, %6348
  %6350 = fsub fast float %6333, %5911
  %6351 = call float @dx.op.unary.f32(i32 6, float %6350)  ; FAbs(value)
  %6352 = fmul fast float %6351, %6337
  %6353 = call float @dx.op.unary.f32(i32 7, float %6349)  ; Saturate(value)
  %6354 = fsub fast float 1.000000e+00, %6352
  %6355 = fmul fast float %6354, %6353
  %6356 = fadd fast float %6355, %6352
  %6357 = fmul fast float %6340, %6333
  %6358 = call float @dx.op.unary.f32(i32 7, float %6357)  ; Saturate(value)
  %6359 = fsub fast float 1.000000e+00, %6356
  %6360 = fmul fast float %6359, %6358
  %6361 = fadd fast float %6360, %6356
  %6362 = call float @dx.op.unary.f32(i32 7, float %6361)  ; Saturate(value)
  %6363 = fadd fast float %6335, -1.000000e+00
  %6364 = select i1 %6334, float -1.000000e+00, float %6363
  %6365 = fmul fast float %6362, %6364
  %6366 = fadd fast float %6365, 1.000000e+00
  %6367 = fsub fast float -0.000000e+00, %6365
  %6368 = fmul fast float %6327, %6367
  %6369 = fmul fast float %6328, %6367
  %6370 = fmul fast float %6329, %6367
  br label %6371

; <label>:6371                                    ; preds = %6324, %5920
  %6372 = phi float [ %6325, %6324 ], [ 0.000000e+00, %5920 ]
  %6373 = phi float [ %6366, %6324 ], [ 1.000000e+00, %5920 ]
  %6374 = phi float [ %6368, %6324 ], [ 0.000000e+00, %5920 ]
  %6375 = phi float [ %6369, %6324 ], [ 0.000000e+00, %5920 ]
  %6376 = phi float [ %6370, %6324 ], [ 0.000000e+00, %5920 ]
  %6377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6378 = extractvalue %dx.types.CBufRet.f32 %6377, 1
  %6379 = fsub fast float 1.000000e+00, %6373
  %6380 = fmul fast float %6379, %5955
  %6381 = fmul fast float %6380, %6378
  %6382 = fsub fast float %5955, %6381
  br i1 %5948, label %6383, label %6412, !dx.controlflow.hints !164

; <label>:6383                                    ; preds = %6371
  %6384 = fmul fast float %5956, %5945
  %6385 = fadd fast float %6384, %5946
  %6386 = call float @dx.op.unary.f32(i32 7, float %6385)  ; Saturate(value)
  %6387 = fmul fast float %5927, %6382
  %6388 = fsub fast float -0.000000e+00, %6387
  %6389 = fmul fast float %5928, %6382
  %6390 = fsub fast float -0.000000e+00, %6389
  %6391 = call float @dx.op.unary.f32(i32 21, float %6388)  ; Exp(value)
  %6392 = call float @dx.op.unary.f32(i32 21, float %6390)  ; Exp(value)
  %6393 = call float @dx.op.binary.f32(i32 35, float %5935, float %6391)  ; FMax(a,b)
  %6394 = call float @dx.op.binary.f32(i32 35, float %5935, float %6392)  ; FMax(a,b)
  %6395 = fsub fast float %6394, %6393
  %6396 = fmul fast float %6395, %6386
  %6397 = fadd fast float %6396, %6393
  %6398 = call float @dx.op.unary.f32(i32 7, float %6397)  ; Saturate(value)
  %6399 = fsub fast float %5932, %5937
  %6400 = fsub fast float %5933, %5938
  %6401 = fsub fast float %5934, %5939
  %6402 = fmul fast float %6386, %6399
  %6403 = fmul fast float %6386, %6400
  %6404 = fmul fast float %6386, %6401
  %6405 = fadd fast float %6402, %5937
  %6406 = fadd fast float %6403, %5938
  %6407 = fadd fast float %6404, %5939
  %6408 = fsub fast float 1.000000e+00, %6398
  %6409 = fmul fast float %6408, %6405
  %6410 = fmul fast float %6408, %6406
  %6411 = fmul fast float %6408, %6407
  br label %6471

; <label>:6412                                    ; preds = %6371
  %6413 = fmul fast float %6382, %5944
  %6414 = call float @dx.op.unary.f32(i32 7, float %6413)  ; Saturate(value)
  %6415 = fsub fast float 2.000000e+00, %6414
  %6416 = fmul fast float %6414, 9.921875e-01
  %6417 = fmul fast float %6416, %6415
  %6418 = fadd fast float %6417, 3.906250e-03
  %6419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %6418, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6420 = extractvalue %dx.types.ResRet.f32 %6419, 0
  %6421 = fsub fast float %6414, %6420
  %6422 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6421)  ; FMax(a,b)
  %6423 = fmul fast float %5930, %5911
  %6424 = call float @dx.op.unary.f32(i32 6, float %6423)  ; FAbs(value)
  %6425 = fcmp fast ogt float %6424, 0x3EB0C6F7A0000000
  br i1 %6425, label %6426, label %6432, !dx.controlflow.hints !165

; <label>:6426                                    ; preds = %6412
  %6427 = fmul fast float %6423, 0xBFF7154760000000
  %6428 = call float @dx.op.unary.f32(i32 21, float %6427)  ; Exp(value)
  %6429 = fsub fast float 1.000000e+00, %6428
  %6430 = fdiv fast float %6429, %6423
  %6431 = fmul fast float %6430, %5940
  br label %6432

; <label>:6432                                    ; preds = %6426, %6412
  %6433 = phi float [ %6431, %6426 ], [ %5940, %6412 ]
  %6434 = fadd fast float %6433, %5942
  %6435 = fmul fast float %6434, %6422
  %6436 = fmul fast float %5927, %6435
  %6437 = fsub fast float -0.000000e+00, %6436
  %6438 = fmul fast float %5928, %6435
  %6439 = fsub fast float -0.000000e+00, %6438
  %6440 = fmul fast float %5929, %6435
  %6441 = fsub fast float -0.000000e+00, %6440
  %6442 = call float @dx.op.unary.f32(i32 21, float %6437)  ; Exp(value)
  %6443 = call float @dx.op.unary.f32(i32 21, float %6439)  ; Exp(value)
  %6444 = call float @dx.op.unary.f32(i32 21, float %6441)  ; Exp(value)
  %6445 = fmul fast float %5956, %5956
  %6446 = fadd fast float %6445, 1.000000e+00
  %6447 = fmul fast float %6446, 0x3FAE8EC8A0000000
  %6448 = fmul fast float %6447, %5937
  %6449 = fmul fast float %6447, %5938
  %6450 = fmul fast float %6447, %5939
  %6451 = fmul fast float %5956, %5935
  %6452 = fsub fast float 1.000000e+00, %6451
  %6453 = fmul fast float %5935, %5935
  %6454 = fsub fast float 1.000000e+00, %6453
  %6455 = fmul fast float %6454, 0x3FB45F3060000000
  %6456 = fmul fast float %6452, %6452
  %6457 = fdiv fast float 1.000000e+00, %6456
  %6458 = fmul fast float %6455, %6457
  %6459 = fmul fast float %6458, %5932
  %6460 = fmul fast float %6458, %5933
  %6461 = fmul fast float %6458, %5934
  %6462 = fadd fast float %6459, %6448
  %6463 = fadd fast float %6460, %6449
  %6464 = fadd fast float %6461, %6450
  %6465 = fsub fast float 1.000000e+00, %6442
  %6466 = fsub fast float 1.000000e+00, %6443
  %6467 = fsub fast float 1.000000e+00, %6444
  %6468 = fmul fast float %6462, %6465
  %6469 = fmul fast float %6463, %6466
  %6470 = fmul fast float %6464, %6467
  br label %6471

; <label>:6471                                    ; preds = %6432, %6383
  %6472 = phi float [ %6409, %6383 ], [ %6468, %6432 ]
  %6473 = phi float [ %6410, %6383 ], [ %6469, %6432 ]
  %6474 = phi float [ %6411, %6383 ], [ %6470, %6432 ]
  %6475 = phi float [ %6398, %6383 ], [ %6442, %6432 ]
  %6476 = phi float [ %6398, %6383 ], [ %6443, %6432 ]
  %6477 = phi float [ %6398, %6383 ], [ %6444, %6432 ]
  br i1 %5964, label %6478, label %6676, !dx.controlflow.hints !166

; <label>:6478                                    ; preds = %6471
  %6479 = extractvalue %dx.types.CBufRet.f32 %6377, 0
  %6480 = fmul fast float %6479, %6379
  %6481 = fsub fast float %6374, %6472
  %6482 = fsub fast float %6375, %6473
  %6483 = fsub fast float %6376, %6474
  %6484 = fmul fast float %6480, %6481
  %6485 = fmul fast float %6480, %6482
  %6486 = fmul fast float %6480, %6483
  %6487 = fadd fast float %6484, %6472
  %6488 = fadd fast float %6485, %6473
  %6489 = fadd fast float %6486, %6474
  %6490 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6475)  ; FMax(a,b)
  %6491 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6476)  ; FMax(a,b)
  %6492 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6477)  ; FMax(a,b)
  %6493 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6373)  ; FMax(a,b)
  %6494 = call float @dx.op.binary.f32(i32 35, float %6372, float %6382)  ; FMax(a,b)
  %6495 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6494)  ; FMax(a,b)
  %6496 = fdiv fast float %6372, %6495
  %6497 = call float @dx.op.unary.f32(i32 7, float %6496)  ; Saturate(value)
  %6498 = fdiv fast float %6382, %6495
  %6499 = call float @dx.op.unary.f32(i32 7, float %6498)  ; Saturate(value)
  %6500 = fcmp fast une float %6493, 1.000000e+00
  br i1 %6500, label %6501, label %6514, !dx.controlflow.hints !167

; <label>:6501                                    ; preds = %6478
  %6502 = call float @dx.op.unary.f32(i32 23, float %6493)  ; Log(value)
  %6503 = fmul fast float %6502, 0x3FE62E4300000000
  %6504 = fmul fast float %6374, %6503
  %6505 = fsub fast float -0.000000e+00, %6504
  %6506 = fmul fast float %6375, %6503
  %6507 = fsub fast float -0.000000e+00, %6506
  %6508 = fmul fast float %6376, %6503
  %6509 = fsub fast float -0.000000e+00, %6508
  %6510 = fsub fast float 1.000000e+00, %6493
  %6511 = fdiv fast float %6505, %6510
  %6512 = fdiv fast float %6507, %6510
  %6513 = fdiv fast float %6509, %6510
  br label %6514

; <label>:6514                                    ; preds = %6501, %6478
  %6515 = phi float [ %6511, %6501 ], [ %6374, %6478 ]
  %6516 = phi float [ %6512, %6501 ], [ %6375, %6478 ]
  %6517 = phi float [ %6513, %6501 ], [ %6376, %6478 ]
  %6518 = phi float [ %6503, %6501 ], [ 0.000000e+00, %6478 ]
  %6519 = fcmp fast une float %6490, 1.000000e+00
  br i1 %6519, label %6520, label %6527, !dx.controlflow.hints !168

; <label>:6520                                    ; preds = %6514
  %6521 = call float @dx.op.unary.f32(i32 23, float %6490)  ; Log(value)
  %6522 = fmul fast float %6521, 0x3FE62E4300000000
  %6523 = fmul fast float %6487, %6522
  %6524 = fsub fast float -0.000000e+00, %6523
  %6525 = fsub fast float 1.000000e+00, %6490
  %6526 = fdiv fast float %6524, %6525
  br label %6527

; <label>:6527                                    ; preds = %6520, %6514
  %6528 = phi float [ %6526, %6520 ], [ %6487, %6514 ]
  %6529 = phi float [ %6522, %6520 ], [ 0.000000e+00, %6514 ]
  %6530 = fcmp fast une float %6491, 1.000000e+00
  br i1 %6530, label %6531, label %6538, !dx.controlflow.hints !168

; <label>:6531                                    ; preds = %6527
  %6532 = call float @dx.op.unary.f32(i32 23, float %6491)  ; Log(value)
  %6533 = fmul fast float %6532, 0x3FE62E4300000000
  %6534 = fmul fast float %6488, %6533
  %6535 = fsub fast float -0.000000e+00, %6534
  %6536 = fsub fast float 1.000000e+00, %6491
  %6537 = fdiv fast float %6535, %6536
  br label %6538

; <label>:6538                                    ; preds = %6531, %6527
  %6539 = phi float [ %6537, %6531 ], [ %6488, %6527 ]
  %6540 = phi float [ %6533, %6531 ], [ 0.000000e+00, %6527 ]
  %6541 = fcmp fast une float %6492, 1.000000e+00
  br i1 %6541, label %6542, label %6549, !dx.controlflow.hints !168

; <label>:6542                                    ; preds = %6538
  %6543 = call float @dx.op.unary.f32(i32 23, float %6492)  ; Log(value)
  %6544 = fmul fast float %6543, 0x3FE62E4300000000
  %6545 = fmul fast float %6489, %6544
  %6546 = fsub fast float -0.000000e+00, %6545
  %6547 = fsub fast float 1.000000e+00, %6492
  %6548 = fdiv fast float %6546, %6547
  br label %6549

; <label>:6549                                    ; preds = %6542, %6538
  %6550 = phi float [ %6548, %6542 ], [ %6489, %6538 ]
  %6551 = phi float [ %6544, %6542 ], [ 0.000000e+00, %6538 ]
  %6552 = fmul fast float %6515, %6499
  %6553 = fmul fast float %6516, %6499
  %6554 = fmul fast float %6517, %6499
  %6555 = fmul fast float %6518, %6499
  %6556 = fmul fast float %6528, %6497
  %6557 = fmul fast float %6539, %6497
  %6558 = fmul fast float %6550, %6497
  %6559 = fmul fast float %6529, %6497
  %6560 = fmul fast float %6540, %6497
  %6561 = fmul fast float %6551, %6497
  %6562 = fadd fast float %6556, %6552
  %6563 = fadd fast float %6557, %6553
  %6564 = fadd fast float %6558, %6554
  %6565 = fadd fast float %6559, %6555
  %6566 = fadd fast float %6560, %6555
  %6567 = fadd fast float %6561, %6555
  %6568 = fcmp fast une float %6565, 0.000000e+00
  br i1 %6568, label %6569, label %6576, !dx.controlflow.hints !169

; <label>:6569                                    ; preds = %6549
  %6570 = fmul fast float %6565, 0x3FF7154760000000
  %6571 = call float @dx.op.unary.f32(i32 21, float %6570)  ; Exp(value)
  %6572 = fsub fast float 1.000000e+00, %6571
  %6573 = fmul fast float %6562, %6572
  %6574 = fsub fast float -0.000000e+00, %6573
  %6575 = fdiv fast float %6574, %6565
  br label %6576

; <label>:6576                                    ; preds = %6569, %6549
  %6577 = phi float [ %6571, %6569 ], [ 1.000000e+00, %6549 ]
  %6578 = phi float [ %6575, %6569 ], [ %6562, %6549 ]
  %6579 = fcmp fast une float %6566, 0.000000e+00
  br i1 %6579, label %6580, label %6587, !dx.controlflow.hints !169

; <label>:6580                                    ; preds = %6576
  %6581 = fmul fast float %6566, 0x3FF7154760000000
  %6582 = call float @dx.op.unary.f32(i32 21, float %6581)  ; Exp(value)
  %6583 = fsub fast float 1.000000e+00, %6582
  %6584 = fmul fast float %6563, %6583
  %6585 = fsub fast float -0.000000e+00, %6584
  %6586 = fdiv fast float %6585, %6566
  br label %6587

; <label>:6587                                    ; preds = %6580, %6576
  %6588 = phi float [ %6582, %6580 ], [ 1.000000e+00, %6576 ]
  %6589 = phi float [ %6586, %6580 ], [ %6563, %6576 ]
  %6590 = fcmp fast une float %6567, 0.000000e+00
  br i1 %6590, label %6591, label %6598, !dx.controlflow.hints !169

; <label>:6591                                    ; preds = %6587
  %6592 = fmul fast float %6567, 0x3FF7154760000000
  %6593 = call float @dx.op.unary.f32(i32 21, float %6592)  ; Exp(value)
  %6594 = fsub fast float 1.000000e+00, %6593
  %6595 = fmul fast float %6564, %6594
  %6596 = fsub fast float -0.000000e+00, %6595
  %6597 = fdiv fast float %6596, %6567
  br label %6598

; <label>:6598                                    ; preds = %6591, %6587
  %6599 = phi float [ %6593, %6591 ], [ 1.000000e+00, %6587 ]
  %6600 = phi float [ %6597, %6591 ], [ %6564, %6587 ]
  %6601 = fcmp fast ogt float %6497, %6499
  br i1 %6601, label %6602, label %6622

; <label>:6602                                    ; preds = %6598
  %6603 = fsub fast float 1.000000e+00, %6499
  %6604 = fmul fast float %6515, %6603
  %6605 = fmul fast float %6516, %6603
  %6606 = fmul fast float %6517, %6603
  %6607 = fmul fast float %6518, %6603
  %6608 = fcmp fast une float %6607, 0.000000e+00
  br i1 %6608, label %6609, label %6660, !dx.controlflow.hints !170

; <label>:6609                                    ; preds = %6602
  %6610 = fmul fast float %6607, 0x3FF7154760000000
  %6611 = call float @dx.op.unary.f32(i32 21, float %6610)  ; Exp(value)
  %6612 = fsub fast float 1.000000e+00, %6611
  %6613 = fmul fast float %6604, %6612
  %6614 = fsub fast float -0.000000e+00, %6613
  %6615 = fmul fast float %6605, %6612
  %6616 = fsub fast float -0.000000e+00, %6615
  %6617 = fmul fast float %6606, %6612
  %6618 = fsub fast float -0.000000e+00, %6617
  %6619 = fdiv fast float %6614, %6607
  %6620 = fdiv fast float %6616, %6607
  %6621 = fdiv fast float %6618, %6607
  br label %6660

; <label>:6622                                    ; preds = %6598
  %6623 = fsub fast float 1.000000e+00, %6497
  %6624 = fmul fast float %6528, %6623
  %6625 = fmul fast float %6539, %6623
  %6626 = fmul fast float %6550, %6623
  %6627 = fmul fast float %6529, %6623
  %6628 = fmul fast float %6540, %6623
  %6629 = fmul fast float %6551, %6623
  %6630 = fcmp fast une float %6627, 0.000000e+00
  br i1 %6630, label %6631, label %6638, !dx.controlflow.hints !169

; <label>:6631                                    ; preds = %6622
  %6632 = fmul fast float %6627, 0x3FF7154760000000
  %6633 = call float @dx.op.unary.f32(i32 21, float %6632)  ; Exp(value)
  %6634 = fsub fast float 1.000000e+00, %6633
  %6635 = fmul fast float %6624, %6634
  %6636 = fsub fast float -0.000000e+00, %6635
  %6637 = fdiv fast float %6636, %6627
  br label %6638

; <label>:6638                                    ; preds = %6631, %6622
  %6639 = phi float [ %6637, %6631 ], [ %6624, %6622 ]
  %6640 = phi float [ %6633, %6631 ], [ 1.000000e+00, %6622 ]
  %6641 = fcmp fast une float %6628, 0.000000e+00
  br i1 %6641, label %6642, label %6649, !dx.controlflow.hints !169

; <label>:6642                                    ; preds = %6638
  %6643 = fmul fast float %6628, 0x3FF7154760000000
  %6644 = call float @dx.op.unary.f32(i32 21, float %6643)  ; Exp(value)
  %6645 = fsub fast float 1.000000e+00, %6644
  %6646 = fmul fast float %6625, %6645
  %6647 = fsub fast float -0.000000e+00, %6646
  %6648 = fdiv fast float %6647, %6628
  br label %6649

; <label>:6649                                    ; preds = %6642, %6638
  %6650 = phi float [ %6648, %6642 ], [ %6625, %6638 ]
  %6651 = phi float [ %6644, %6642 ], [ 1.000000e+00, %6638 ]
  %6652 = fcmp fast une float %6629, 0.000000e+00
  br i1 %6652, label %6653, label %6660, !dx.controlflow.hints !169

; <label>:6653                                    ; preds = %6649
  %6654 = fmul fast float %6629, 0x3FF7154760000000
  %6655 = call float @dx.op.unary.f32(i32 21, float %6654)  ; Exp(value)
  %6656 = fsub fast float 1.000000e+00, %6655
  %6657 = fmul fast float %6626, %6656
  %6658 = fsub fast float -0.000000e+00, %6657
  %6659 = fdiv fast float %6658, %6629
  br label %6660

; <label>:6660                                    ; preds = %6653, %6649, %6609, %6602
  %6661 = phi float [ %6659, %6653 ], [ %6621, %6609 ], [ %6606, %6602 ], [ %6626, %6649 ]
  %6662 = phi float [ %6650, %6653 ], [ %6620, %6609 ], [ %6605, %6602 ], [ %6650, %6649 ]
  %6663 = phi float [ %6639, %6653 ], [ %6619, %6609 ], [ %6604, %6602 ], [ %6639, %6649 ]
  %6664 = phi float [ %6655, %6653 ], [ %6611, %6609 ], [ 1.000000e+00, %6602 ], [ 1.000000e+00, %6649 ]
  %6665 = phi float [ %6651, %6653 ], [ %6611, %6609 ], [ 1.000000e+00, %6602 ], [ %6651, %6649 ]
  %6666 = phi float [ %6640, %6653 ], [ %6611, %6609 ], [ 1.000000e+00, %6602 ], [ %6640, %6649 ]
  %6667 = fmul fast float %6666, %6578
  %6668 = fmul fast float %6665, %6589
  %6669 = fmul fast float %6664, %6600
  %6670 = fadd fast float %6667, %6663
  %6671 = fadd fast float %6668, %6662
  %6672 = fadd fast float %6669, %6661
  %6673 = fmul fast float %6666, %6577
  %6674 = fmul fast float %6665, %6588
  %6675 = fmul fast float %6664, %6599
  br label %6676

; <label>:6676                                    ; preds = %6660, %6471
  %6677 = phi float [ %6675, %6660 ], [ %6477, %6471 ]
  %6678 = phi float [ %6674, %6660 ], [ %6476, %6471 ]
  %6679 = phi float [ %6673, %6660 ], [ %6475, %6471 ]
  %6680 = phi float [ %6672, %6660 ], [ %6474, %6471 ]
  %6681 = phi float [ %6671, %6660 ], [ %6473, %6471 ]
  %6682 = phi float [ %6670, %6660 ], [ %6472, %6471 ]
  %6683 = fmul fast float %6682, %5622
  %6684 = fmul fast float %6681, %5624
  %6685 = fmul fast float %6680, %5626
  %6686 = fmul fast float %6679, %5919
  %6687 = call float @dx.op.dot3.f32(i32 55, float %6679, float %6678, float %6677, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6688 = call float @dx.op.dot3.f32(i32 55, float %6683, float %6684, float %6685, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6689 = select i1 %204, float %6687, float %6679
  %6690 = select i1 %204, float %6687, float %6678
  %6691 = select i1 %204, float 1.000000e+00, float %6677
  %6692 = select i1 %204, float %6688, float %6683
  %6693 = select i1 %204, float 0.000000e+00, float %6684
  %6694 = select i1 %204, float 0.000000e+00, float %6685
  %6695 = fmul fast float %6689, %5913
  %6696 = fmul fast float %6690, %5914
  %6697 = fmul fast float %6691, %5915
  %6698 = fadd fast float %6695, %6692
  %6699 = fadd fast float %6696, %6693
  %6700 = fadd fast float %6694, %6697
  %6701 = fmul fast float %6689, %5916
  %6702 = fmul fast float %6690, %5917
  %6703 = fmul fast float %6691, %5918
  %6704 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6705 = extractvalue %dx.types.CBufRet.i32 %6704, 0
  %6706 = icmp eq i32 %6705, 0
  br i1 %6706, label %7074, label %6707, !dx.controlflow.hints !171

; <label>:6707                                    ; preds = %6676
  %6708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6709 = extractvalue %dx.types.CBufRet.f32 %6708, 2
  %6710 = extractvalue %dx.types.CBufRet.f32 %6708, 3
  %6711 = fmul fast float %6709, %94
  %6712 = fmul fast float %6710, %95
  %6713 = fmul fast float %6711, 2.000000e+00
  %6714 = fmul fast float %6712, 2.000000e+00
  %6715 = fsub fast float 1.000000e+00, %6713
  %6716 = fsub fast float 1.000000e+00, %6714
  %6717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6718 = extractvalue %dx.types.CBufRet.f32 %6717, 0
  %6719 = extractvalue %dx.types.CBufRet.f32 %6717, 1
  %6720 = extractvalue %dx.types.CBufRet.f32 %6717, 2
  %6721 = fmul fast float %6715, %6718
  %6722 = fmul fast float %6715, %6719
  %6723 = fmul fast float %6715, %6720
  %6724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6725 = extractvalue %dx.types.CBufRet.f32 %6724, 0
  %6726 = extractvalue %dx.types.CBufRet.f32 %6724, 1
  %6727 = extractvalue %dx.types.CBufRet.f32 %6724, 2
  %6728 = fmul fast float %6716, %6725
  %6729 = fmul fast float %6716, %6726
  %6730 = fmul fast float %6716, %6727
  %6731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6732 = extractvalue %dx.types.CBufRet.f32 %6731, 0
  %6733 = extractvalue %dx.types.CBufRet.f32 %6731, 1
  %6734 = extractvalue %dx.types.CBufRet.f32 %6731, 2
  %6735 = fadd fast float %6728, %6732
  %6736 = fadd fast float %6735, %6721
  %6737 = fadd fast float %6729, %6733
  %6738 = fadd fast float %6737, %6722
  %6739 = fadd fast float %6730, %6734
  %6740 = fadd fast float %6739, %6723
  %6741 = fmul fast float %6736, %5912
  %6742 = fmul fast float %6738, %5912
  %6743 = fmul fast float %6740, %5912
  %6744 = fmul fast float %6741, %6741
  %6745 = fmul fast float %6742, %6742
  %6746 = fadd fast float %6744, %6745
  %6747 = fmul fast float %6743, %6743
  %6748 = fadd fast float %6746, %6747
  %6749 = call float @dx.op.unary.f32(i32 24, float %6748)  ; Sqrt(value)
  %6750 = extractvalue %dx.types.CBufRet.f32 %5637, 0
  %6751 = fsub fast float %6749, %6750
  %6752 = extractvalue %dx.types.CBufRet.f32 %5637, 2
  %6753 = fmul fast float %6751, %6752
  %6754 = call float @dx.op.unary.f32(i32 7, float %6753)  ; Saturate(value)
  %6755 = fadd fast float %6754, -5.000000e-01
  %6756 = fmul fast float %6755, 2.000000e+00
  %6757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6758 = extractvalue %dx.types.CBufRet.f32 %6757, 2
  %6759 = call float @dx.op.binary.f32(i32 36, float %6758, float %6756)  ; FMin(a,b)
  %6760 = fsub fast float -0.000000e+00, %6758
  %6761 = fcmp fast ogt float %6759, %6760
  br i1 %6761, label %6762, label %7074, !dx.controlflow.hints !172

; <label>:6762                                    ; preds = %6707
  %6763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6764 = extractvalue %dx.types.CBufRet.f32 %6763, 3
  %6765 = fcmp fast ogt float %6764, 0.000000e+00
  br i1 %6765, label %6766, label %6841, !dx.controlflow.hints !173

; <label>:6766                                    ; preds = %6762
  %6767 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %6768 = extractvalue %dx.types.Dimensions %6767, 0
  %6769 = sitofp i32 %6768 to float
  %6770 = extractvalue %dx.types.Dimensions %6767, 1
  %6771 = sitofp i32 %6770 to float
  %6772 = fmul fast float %6711, %6769
  %6773 = fmul fast float %6712, %6771
  %6774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6775 = extractvalue %dx.types.CBufRet.f32 %6774, 1
  %6776 = fsub fast float -0.000000e+00, %6775
  %6777 = fptoui float %6776 to i32
  %6778 = fptoui float %6772 to i32
  %6779 = fptoui float %6773 to i32
  %6780 = and i32 %6777, 31
  %6781 = lshr i32 %6778, %6780
  %6782 = lshr i32 %6779, %6780
  %6783 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %6777, i32 %6781, i32 %6782, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6784 = extractvalue %dx.types.ResRet.f32 %6783, 0
  %6785 = fcmp fast olt float %6784, -1.000000e+00
  %6786 = fcmp fast ogt float %6784, -1.000000e+00
  %6787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6788 = extractvalue %dx.types.CBufRet.f32 %6787, 1
  %6789 = select i1 %6786, float %6788, float 1.000000e+00
  %6790 = fadd fast float %6784, 1.000000e+00
  %6791 = fmul fast float %6789, %6790
  %6792 = call float @dx.op.unary.f32(i32 6, float %6791)  ; FAbs(value)
  %6793 = extractvalue %dx.types.CBufRet.f32 %6787, 3
  %6794 = fcmp fast oge float %6792, %6793
  %6795 = select i1 %6794, float 0x4197782600000000, float %6792
  %6796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6797 = extractvalue %dx.types.CBufRet.f32 %6796, 0
  %6798 = extractvalue %dx.types.CBufRet.f32 %6796, 1
  %6799 = extractvalue %dx.types.CBufRet.f32 %6796, 2
  %6800 = select i1 %6785, float %6797, float %6718
  %6801 = select i1 %6785, float %6798, float %6719
  %6802 = select i1 %6785, float %6799, float %6720
  %6803 = fmul fast float %6800, %6715
  %6804 = fmul fast float %6801, %6715
  %6805 = fmul fast float %6802, %6715
  %6806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6807 = extractvalue %dx.types.CBufRet.f32 %6806, 0
  %6808 = extractvalue %dx.types.CBufRet.f32 %6806, 1
  %6809 = extractvalue %dx.types.CBufRet.f32 %6806, 2
  %6810 = select i1 %6785, float %6807, float %6725
  %6811 = select i1 %6785, float %6808, float %6726
  %6812 = select i1 %6785, float %6809, float %6727
  %6813 = fmul fast float %6810, %6716
  %6814 = fmul fast float %6811, %6716
  %6815 = fmul fast float %6812, %6716
  %6816 = fadd fast float %6813, %6803
  %6817 = fadd fast float %6814, %6804
  %6818 = fadd fast float %6815, %6805
  %6819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6820 = extractvalue %dx.types.CBufRet.f32 %6819, 0
  %6821 = extractvalue %dx.types.CBufRet.f32 %6819, 1
  %6822 = extractvalue %dx.types.CBufRet.f32 %6819, 2
  %6823 = select i1 %6785, float %6820, float %6732
  %6824 = select i1 %6785, float %6821, float %6733
  %6825 = select i1 %6785, float %6822, float %6734
  %6826 = fadd fast float %6816, %6823
  %6827 = fadd fast float %6817, %6824
  %6828 = fadd fast float %6818, %6825
  %6829 = fmul fast float %6826, %6795
  %6830 = fmul fast float %6827, %6795
  %6831 = fmul fast float %6828, %6795
  %6832 = fmul fast float %6829, %6829
  %6833 = fmul fast float %6830, %6830
  %6834 = fadd fast float %6832, %6833
  %6835 = fmul fast float %6831, %6831
  %6836 = fadd fast float %6834, %6835
  %6837 = call float @dx.op.unary.f32(i32 24, float %6836)  ; Sqrt(value)
  %6838 = fsub fast float %6837, %6750
  %6839 = fmul fast float %6838, %6752
  %6840 = call float @dx.op.unary.f32(i32 7, float %6839)  ; Saturate(value)
  br label %6841

; <label>:6841                                    ; preds = %6766, %6762
  %6842 = phi float [ %6840, %6766 ], [ 1.000000e+00, %6762 ]
  %6843 = fmul fast float %6759, 5.000000e-01
  %6844 = fadd fast float %6843, 5.000000e-01
  %6845 = call float @dx.op.unary.f32(i32 22, float %6844)  ; Frc(value)
  %6846 = call float @dx.op.unary.f32(i32 27, float %6845)  ; Round_ni(value)
  %6847 = call float @dx.op.unary.f32(i32 22, float %6845)  ; Frc(value)
  %6848 = fmul fast float %6847, 2.000000e+00
  %6849 = fadd fast float %6848, -1.000000e+00
  %6850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %6711, float %6712, float %6846, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6851 = extractvalue %dx.types.ResRet.f32 %6850, 0
  %6852 = extractvalue %dx.types.ResRet.f32 %6850, 1
  %6853 = extractvalue %dx.types.ResRet.f32 %6850, 2
  %6854 = extractvalue %dx.types.ResRet.f32 %6850, 3
  %6855 = fadd fast float %6851, -5.000000e-01
  %6856 = fadd fast float %6853, -5.000000e-01
  %6857 = fmul fast float %6855, 0xBFD5555560000000
  %6858 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6856, float %6857)  ; FMad(a,b,c)
  %6859 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6852, float 0.000000e+00)  ; FMad(a,b,c)
  %6860 = fadd fast float %6859, %6854
  %6861 = fmul fast float %6855, -7.500000e-01
  %6862 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6856, float %6861)  ; FMad(a,b,c)
  %6863 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6852, float 0.000000e+00)  ; FMad(a,b,c)
  %6864 = fadd fast float %6863, %6854
  %6865 = call float @dx.op.binary.f32(i32 35, float %6858, float -1.000000e+00)  ; FMax(a,b)
  %6866 = call float @dx.op.binary.f32(i32 35, float %6860, float -1.000000e+00)  ; FMax(a,b)
  %6867 = call float @dx.op.binary.f32(i32 35, float %6862, float -1.000000e+00)  ; FMax(a,b)
  %6868 = call float @dx.op.binary.f32(i32 35, float %6864, float -1.000000e+00)  ; FMax(a,b)
  %6869 = call float @dx.op.binary.f32(i32 36, float %6865, float 1.000000e+00)  ; FMin(a,b)
  %6870 = call float @dx.op.binary.f32(i32 36, float %6866, float 1.000000e+00)  ; FMin(a,b)
  %6871 = call float @dx.op.binary.f32(i32 36, float %6867, float 1.000000e+00)  ; FMin(a,b)
  %6872 = call float @dx.op.binary.f32(i32 36, float %6868, float 1.000000e+00)  ; FMin(a,b)
  %6873 = fcmp fast olt float %6869, 0x3FEFFF8020000000
  br i1 %6873, label %6874, label %6989, !dx.controlflow.hints !174

; <label>:6874                                    ; preds = %6841
  %6875 = extractvalue %dx.types.CBufRet.f32 %6757, 3
  %6876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6877 = extractvalue %dx.types.CBufRet.f32 %6876, 0
  %6878 = extractvalue %dx.types.CBufRet.f32 %6876, 1
  %6879 = extractvalue %dx.types.CBufRet.f32 %6876, 2
  %6880 = extractvalue %dx.types.CBufRet.f32 %6876, 3
  %6881 = fsub fast float %6877, %6869
  %6882 = fsub fast float %6878, %6870
  %6883 = fsub fast float %6879, %6871
  %6884 = fsub fast float %6880, %6872
  %6885 = fmul fast float %6881, %6875
  %6886 = fmul fast float %6882, %6875
  %6887 = fmul fast float %6883, %6875
  %6888 = fmul fast float %6884, %6875
  %6889 = fadd fast float %6885, %6869
  %6890 = fadd fast float %6886, %6870
  %6891 = fsub fast float -0.000000e+00, %6890
  %6892 = fadd fast float %6887, %6871
  %6893 = fadd fast float %6888, %6872
  %6894 = fmul fast float %6889, %6889
  %6895 = fsub fast float %6890, %6894
  %6896 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6895)  ; FMax(a,b)
  %6897 = fdiv fast float 1.000000e+00, %6896
  %6898 = fmul fast float %6890, %6889
  %6899 = fsub fast float %6892, %6898
  %6900 = fsub fast float %6849, %6889
  %6901 = fmul fast float %6849, %6849
  %6902 = fsub fast float %6901, %6890
  %6903 = fmul fast float %6900, %6897
  %6904 = fmul fast float %6903, %6899
  %6905 = fsub fast float %6902, %6904
  %6906 = fmul fast float %6890, %6890
  %6907 = fsub fast float %6893, %6906
  %6908 = fmul fast float %6899, %6899
  %6909 = fmul fast float %6908, %6897
  %6910 = fsub fast float %6907, %6909
  %6911 = fdiv fast float %6905, %6910
  %6912 = fmul fast float %6899, %6911
  %6913 = fsub fast float %6900, %6912
  %6914 = fmul fast float %6913, %6897
  %6915 = fmul fast float %6914, %6889
  %6916 = fsub fast float 1.000000e+00, %6915
  %6917 = fmul fast float %6890, %6911
  %6918 = fsub fast float %6916, %6917
  %6919 = fmul fast float %6914, %6914
  %6920 = fmul fast float %6911, 4.000000e+00
  %6921 = fmul fast float %6920, %6918
  %6922 = fsub fast float %6919, %6921
  %6923 = call float @dx.op.unary.f32(i32 24, float %6922)  ; Sqrt(value)
  %6924 = fcmp fast oge float %6914, 0.000000e+00
  %6925 = fsub fast float -0.000000e+00, %6923
  %6926 = select i1 %6924, float %6925, float %6923
  %6927 = fsub fast float %6926, %6914
  %6928 = fdiv fast float %6927, %6911
  %6929 = fdiv fast float %6918, %6927
  %6930 = fmul fast float %6928, 5.000000e-01
  %6931 = fmul fast float %6929, 2.000000e+00
  %6932 = select i1 %6924, float %6930, float %6931
  %6933 = select i1 %6924, float %6931, float %6930
  %6934 = call float @dx.op.binary.f32(i32 35, float %6932, float %6933)  ; FMax(a,b)
  %6935 = call float @dx.op.binary.f32(i32 36, float %6932, float %6933)  ; FMin(a,b)
  %6936 = fcmp fast ogt float %6849, %6935
  br i1 %6936, label %6937, label %6947

; <label>:6937                                    ; preds = %6874
  %6938 = fsub fast float %6849, %6935
  %6939 = fsub fast float %6934, %6935
  %6940 = fmul fast float %6938, %6939
  %6941 = fmul fast float %6934, %6849
  %6942 = fadd fast float %6934, %6849
  %6943 = fmul fast float %6942, %6889
  %6944 = fadd fast float %6941, %6890
  %6945 = fsub fast float %6944, %6943
  %6946 = fdiv fast float %6945, %6940
  br label %6947

; <label>:6947                                    ; preds = %6937, %6874
  %6948 = phi float [ %6946, %6937 ], [ 0.000000e+00, %6874 ]
  %6949 = fcmp fast ogt float %6849, %6934
  %6950 = fsub fast float %6849, %6934
  br i1 %6949, label %6951, label %6961

; <label>:6951                                    ; preds = %6947
  %6952 = fsub fast float %6934, %6935
  %6953 = fmul fast float %6952, %6950
  %6954 = fmul fast float %6935, %6849
  %6955 = fadd fast float %6935, %6849
  %6956 = fmul fast float %6955, %6889
  %6957 = fsub fast float %6891, %6954
  %6958 = fadd fast float %6957, %6956
  %6959 = fdiv fast float %6958, %6953
  %6960 = fadd fast float %6959, %6948
  br label %6961

; <label>:6961                                    ; preds = %6951, %6947
  %6962 = phi float [ %6960, %6951 ], [ %6948, %6947 ]
  %6963 = fsub fast float %6849, %6935
  %6964 = fmul fast float %6963, %6950
  %6965 = fmul fast float %6935, %6934
  %6966 = fadd fast float %6935, %6934
  %6967 = fmul fast float %6966, %6889
  %6968 = fadd fast float %6965, %6890
  %6969 = fsub fast float %6968, %6967
  %6970 = fdiv fast float %6969, %6964
  %6971 = call float @dx.op.unary.f32(i32 7, float %6962)  ; Saturate(value)
  %6972 = fcmp fast oeq float %5638, 0.000000e+00
  %6973 = extractvalue %dx.types.CBufRet.f32 %6757, 0
  %6974 = fcmp fast oeq float %6973, 0.000000e+00
  %6975 = or i1 %6972, %6974
  %6976 = fmul fast float %6973, 2.000000e+00
  %6977 = fadd fast float %6758, %6759
  %6978 = fdiv fast float %6977, %6976
  %6979 = call float @dx.op.unary.f32(i32 7, float %6978)  ; Saturate(value)
  %6980 = fmul fast float %6979, 2.000000e+00
  %6981 = fsub fast float 3.000000e+00, %6980
  %6982 = fmul fast float %6979, %6979
  %6983 = fmul fast float %6982, %6981
  %6984 = select i1 %6975, float 1.000000e+00, float %6983
  %6985 = fmul fast float %6970, %5638
  %6986 = fadd fast float %6971, %6985
  %6987 = call float @dx.op.unary.f32(i32 7, float %6986)  ; Saturate(value)
  %6988 = fmul fast float %6984, %6987
  br label %6989

; <label>:6989                                    ; preds = %6961, %6841
  %6990 = phi float [ %6988, %6961 ], [ 0.000000e+00, %6841 ]
  %6991 = fsub fast float 1.000000e+00, %6990
  %6992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %6711, float %6712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6993 = extractvalue %dx.types.ResRet.f32 %6992, 0
  %6994 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6995 = extractvalue %dx.types.CBufRet.i32 %6994, 2
  %6996 = icmp eq i32 %6995, 0
  br i1 %6996, label %7002, label %6997

; <label>:6997                                    ; preds = %6989
  %6998 = call float @dx.op.unary.f32(i32 7, float %6990)  ; Saturate(value)
  %6999 = fadd fast float %6993, -1.000000e+00
  %7000 = fmul fast float %6998, %6999
  %7001 = fadd fast float %7000, 1.000000e+00
  br label %7002

; <label>:7002                                    ; preds = %6997, %6989
  %7003 = phi float [ %7001, %6997 ], [ %6991, %6989 ]
  br i1 %6765, label %7004, label %7022

; <label>:7004                                    ; preds = %7002
  %7005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7006 = extractvalue %dx.types.CBufRet.f32 %7005, 1
  %7007 = fsub fast float %6842, %7006
  %7008 = call float @dx.op.unary.f32(i32 7, float %7007)  ; Saturate(value)
  %7009 = fsub fast float %6842, %6764
  %7010 = call float @dx.op.unary.f32(i32 7, float %7009)  ; Saturate(value)
  %7011 = fsub fast float %7008, %7010
  %7012 = fsub fast float %6844, %7010
  %7013 = fdiv fast float %7012, %7011
  %7014 = call float @dx.op.unary.f32(i32 7, float %7013)  ; Saturate(value)
  %7015 = fmul fast float %7014, 2.000000e+00
  %7016 = fsub fast float 3.000000e+00, %7015
  %7017 = fsub fast float %6993, %7003
  %7018 = fmul fast float %7014, %7014
  %7019 = fmul fast float %7018, %7017
  %7020 = fmul fast float %7019, %7016
  %7021 = fadd fast float %7020, %7003
  br label %7022

; <label>:7022                                    ; preds = %7004, %7002
  %7023 = phi float [ %7021, %7004 ], [ %7003, %7002 ]
  %7024 = call float @dx.op.binary.f32(i32 35, float %6993, float %7023)  ; FMax(a,b)
  %7025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7026 = extractvalue %dx.types.CBufRet.i32 %7025, 2
  %7027 = and i32 %7026, 1
  %7028 = icmp eq i32 %7027, 0
  %7029 = fcmp fast une float %7024, 1.000000e+00
  %7030 = and i1 %7029, %7028
  br i1 %7030, label %7031, label %7050

; <label>:7031                                    ; preds = %7022
  %7032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %6711, float %6712, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7033 = extractvalue %dx.types.ResRet.f32 %7032, 0
  %7034 = extractvalue %dx.types.ResRet.f32 %7032, 1
  %7035 = extractvalue %dx.types.ResRet.f32 %7032, 2
  %7036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7037 = extractvalue %dx.types.CBufRet.f32 %7036, 1
  %7038 = fmul fast float %7037, %7033
  %7039 = fmul fast float %7037, %7034
  %7040 = fmul fast float %7037, %7035
  %7041 = fcmp fast ogt float %6993, 0x3FEFFF2E40000000
  %7042 = fsub fast float 1.000000e+00, %7024
  %7043 = fsub fast float 1.000000e+00, %6993
  %7044 = fdiv fast float %7042, %7043
  %7045 = call float @dx.op.unary.f32(i32 7, float %7044)  ; Saturate(value)
  %7046 = select i1 %7041, float 0.000000e+00, float %7045
  %7047 = fmul fast float %7038, %7046
  %7048 = fmul fast float %7039, %7046
  %7049 = fmul fast float %7040, %7046
  br label %7050

; <label>:7050                                    ; preds = %7031, %7022
  %7051 = phi float [ 0.000000e+00, %7022 ], [ %7047, %7031 ]
  %7052 = phi float [ 0.000000e+00, %7022 ], [ %7048, %7031 ]
  %7053 = phi float [ 0.000000e+00, %7022 ], [ %7049, %7031 ]
  %7054 = fmul fast float %7051, %5622
  %7055 = fmul fast float %7052, %5624
  %7056 = fmul fast float %7053, %5626
  %7057 = fmul fast float %7024, %6686
  %7058 = call float @dx.op.dot3.f32(i32 55, float %7024, float %7024, float %7024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7059 = call float @dx.op.dot3.f32(i32 55, float %7054, float %7055, float %7056, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7060 = select i1 %204, float %7058, float %7024
  %7061 = select i1 %204, float 1.000000e+00, float %7024
  %7062 = select i1 %204, float %7059, float %7054
  %7063 = select i1 %204, float 0.000000e+00, float %7055
  %7064 = select i1 %204, float 0.000000e+00, float %7056
  %7065 = fmul fast float %7060, %6698
  %7066 = fmul fast float %7060, %6699
  %7067 = fmul fast float %7061, %6700
  %7068 = fadd fast float %7065, %7062
  %7069 = fadd fast float %7066, %7063
  %7070 = fadd fast float %7064, %7067
  %7071 = fmul fast float %7060, %6701
  %7072 = fmul fast float %7060, %6702
  %7073 = fmul fast float %7061, %6703
  br label %7074

; <label>:7074                                    ; preds = %7050, %6707, %6676, %5908
  %7075 = phi float [ %5913, %5908 ], [ %6698, %6676 ], [ %7068, %7050 ], [ %6698, %6707 ]
  %7076 = phi float [ %5914, %5908 ], [ %6699, %6676 ], [ %7069, %7050 ], [ %6699, %6707 ]
  %7077 = phi float [ %5915, %5908 ], [ %6700, %6676 ], [ %7070, %7050 ], [ %6700, %6707 ]
  %7078 = phi float [ %5916, %5908 ], [ %6701, %6676 ], [ %7071, %7050 ], [ %6701, %6707 ]
  %7079 = phi float [ %5917, %5908 ], [ %6702, %6676 ], [ %7072, %7050 ], [ %6702, %6707 ]
  %7080 = phi float [ %5918, %5908 ], [ %6703, %6676 ], [ %7073, %7050 ], [ %6703, %6707 ]
  %7081 = phi float [ %5919, %5908 ], [ %6686, %6676 ], [ %7057, %7050 ], [ %6686, %6707 ]
  %7082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7083 = extractvalue %dx.types.CBufRet.f32 %7082, 2
  %7084 = extractvalue %dx.types.CBufRet.f32 %7082, 3
  %7085 = fmul fast float %7083, %94
  %7086 = fmul fast float %7084, %95
  %7087 = call float @dx.op.unary.f32(i32 7, float %7085)  ; Saturate(value)
  %7088 = call float @dx.op.unary.f32(i32 7, float %7086)  ; Saturate(value)
  %7089 = select i1 %5648, i32 2, i32 0
  %7090 = or i32 %7089, 1
  %7091 = uitofp i32 %7090 to float
  %7092 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7087, float %7088, float %7091, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7093 = extractvalue %dx.types.ResRet.f32 %7092, 0
  %7094 = extractvalue %dx.types.ResRet.f32 %7092, 1
  %7095 = extractvalue %dx.types.ResRet.f32 %7092, 2
  %7096 = extractvalue %dx.types.ResRet.f32 %7092, 3
  %7097 = add nuw nsw i32 %7089, 2
  %7098 = uitofp i32 %7097 to float
  %7099 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7087, float %7088, float %7098, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7100 = extractvalue %dx.types.ResRet.f32 %7099, 0
  %7101 = extractvalue %dx.types.ResRet.f32 %7099, 1
  %7102 = extractvalue %dx.types.ResRet.f32 %7099, 2
  %7103 = extractvalue %dx.types.ResRet.f32 %7099, 3
  %7104 = call float @dx.op.binary.f32(i32 35, float %7094, float %7095)  ; FMax(a,b)
  %7105 = call float @dx.op.binary.f32(i32 35, float %7093, float %7104)  ; FMax(a,b)
  %7106 = call float @dx.op.binary.f32(i32 35, float %7105, float %7096)  ; FMax(a,b)
  %7107 = call float @dx.op.binary.f32(i32 36, float %7101, float %7102)  ; FMin(a,b)
  %7108 = call float @dx.op.binary.f32(i32 36, float %7100, float %7107)  ; FMin(a,b)
  %7109 = call float @dx.op.binary.f32(i32 36, float %7108, float %7103)  ; FMin(a,b)
  %7110 = fmul fast float %7106, 2.550000e+02
  %7111 = fadd fast float %7110, 0x3F70101020000000
  %7112 = fptoui float %7111 to i32
  %7113 = fmul fast float %7109, 2.550000e+02
  %7114 = fadd fast float %7113, 0x3F70101020000000
  %7115 = fptoui float %7114 to i32
  %7116 = icmp ult i32 %7112, %7115
  br i1 %7116, label %7117, label %7286

; <label>:7117                                    ; preds = %7074
  %7118 = fcmp fast ogt float %81, 9.843750e-01
  %7119 = fadd fast float %5912, -4.000000e+00
  %7120 = select i1 %7118, float -4.000000e+00, float %7119
  %7121 = call float @dx.op.binary.f32(i32 35, float %7120, float 0.000000e+00)  ; FMax(a,b)
  %7122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7123 = extractvalue %dx.types.CBufRet.f32 %7122, 0
  %7124 = fadd fast float %7123, %7121
  %7125 = extractvalue %dx.types.CBufRet.f32 %7122, 2
  %7126 = fmul fast float %7124, %7125
  %7127 = call float @dx.op.unary.f32(i32 23, float %7126)  ; Log(value)
  %7128 = extractvalue %dx.types.CBufRet.f32 %7122, 3
  %7129 = fmul fast float %7128, %7127
  %7130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7131 = extractvalue %dx.types.CBufRet.f32 %7130, 2
  %7132 = fmul fast float %7129, %7131
  %7133 = call float @dx.op.unary.f32(i32 7, float %7132)  ; Saturate(value)
  %7134 = uitofp i32 %7112 to float
  %7135 = uitofp i32 %7115 to float
  %7136 = fadd fast float %7134, 5.000000e-01
  %7137 = fadd fast float %7135, 5.000000e-01
  %7138 = fmul fast float %7131, %7136
  %7139 = fmul fast float %7131, %7137
  %7140 = fadd fast float %7138, 0x3F0FFB4800000000
  %7141 = fadd fast float %7139, 0xBF0FFB4800000000
  %7142 = call float @dx.op.binary.f32(i32 35, float %7133, float %7140)  ; FMax(a,b)
  %7143 = call float @dx.op.binary.f32(i32 36, float %7142, float %7141)  ; FMin(a,b)
  %7144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7145 = extractvalue %dx.types.CBufRet.f32 %7144, 1
  %7146 = extractvalue %dx.types.CBufRet.f32 %7144, 2
  %7147 = extractvalue %dx.types.CBufRet.f32 %7144, 0
  %7148 = select i1 %5648, float %7147, float 0.000000e+00
  %7149 = fmul fast float %7145, %7143
  %7150 = fadd fast float %7148, %7149
  %7151 = fadd fast float %7148, %7146
  %7152 = fsub fast float %7145, %7146
  %7153 = fadd fast float %7152, %7148
  %7154 = call float @dx.op.binary.f32(i32 35, float %7150, float %7151)  ; FMax(a,b)
  %7155 = call float @dx.op.binary.f32(i32 36, float %7154, float %7153)  ; FMin(a,b)
  %7156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7087, float %7088, float %7155, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7157 = extractvalue %dx.types.ResRet.f32 %7156, 0
  %7158 = extractvalue %dx.types.ResRet.f32 %7156, 1
  %7159 = extractvalue %dx.types.ResRet.f32 %7156, 2
  %7160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7161 = extractvalue %dx.types.CBufRet.i32 %7160, 0
  %7162 = extractvalue %dx.types.CBufRet.i32 %7160, 1
  %7163 = uitofp i32 %7161 to float
  %7164 = uitofp i32 %7162 to float
  %7165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7166 = extractvalue %dx.types.CBufRet.f32 %7165, 0
  %7167 = extractvalue %dx.types.CBufRet.f32 %7165, 1
  %7168 = fmul fast float %7163, %7087
  %7169 = fmul fast float %7164, %7088
  %7170 = fadd fast float %7168, -5.000000e-01
  %7171 = fadd fast float %7169, -5.000000e-01
  %7172 = call float @dx.op.unary.f32(i32 22, float %7170)  ; Frc(value)
  %7173 = call float @dx.op.unary.f32(i32 22, float %7171)  ; Frc(value)
  %7174 = fmul fast float %7172, %7172
  %7175 = fmul fast float %7174, %7172
  %7176 = fsub fast float 3.000000e+00, %7172
  %7177 = fmul fast float %7174, %7176
  %7178 = fmul fast float %7172, 3.000000e+00
  %7179 = fmul fast float %7175, 3.000000e+00
  %7180 = fmul fast float %7174, 6.000000e+00
  %7181 = fsub fast float %7179, %7180
  %7182 = fadd fast float %7181, 4.000000e+00
  %7183 = fmul fast float %7182, 0x3FC5555560000000
  %7184 = fmul fast float %7175, -3.000000e+00
  %7185 = fadd fast float %7174, %7172
  %7186 = fmul fast float %7185, 3.000000e+00
  %7187 = fadd fast float %7184, 1.000000e+00
  %7188 = fadd fast float %7187, %7186
  %7189 = fmul fast float %7175, 0x3FC5555560000000
  %7190 = fmul fast float %7173, %7173
  %7191 = fmul fast float %7190, %7173
  %7192 = fsub fast float 3.000000e+00, %7173
  %7193 = fmul fast float %7190, %7192
  %7194 = fmul fast float %7173, 3.000000e+00
  %7195 = fmul fast float %7191, 3.000000e+00
  %7196 = fmul fast float %7190, 6.000000e+00
  %7197 = fsub fast float %7195, %7196
  %7198 = fadd fast float %7197, 4.000000e+00
  %7199 = fmul fast float %7198, 0x3FC5555560000000
  %7200 = fmul fast float %7191, -3.000000e+00
  %7201 = fadd fast float %7190, %7173
  %7202 = fmul fast float %7201, 3.000000e+00
  %7203 = fadd fast float %7200, 1.000000e+00
  %7204 = fadd fast float %7203, %7202
  %7205 = fmul fast float %7191, 0x3FC5555560000000
  %7206 = fadd fast float %7172, 1.000000e+00
  %7207 = fsub fast float 1.000000e+00, %7178
  %7208 = fadd fast float %7207, %7177
  %7209 = fadd fast float %7208, %7182
  %7210 = fmul fast float %7209, 0x3FC5555560000000
  %7211 = fdiv fast float %7183, %7210
  %7212 = fsub fast float %7206, %7211
  %7213 = fsub fast float 1.000000e+00, %7172
  %7214 = fadd fast float %7188, %7175
  %7215 = fmul fast float %7214, 0x3FC5555560000000
  %7216 = fdiv fast float %7189, %7215
  %7217 = fadd fast float %7213, %7216
  %7218 = fadd fast float %7173, 1.000000e+00
  %7219 = fsub fast float 1.000000e+00, %7194
  %7220 = fadd fast float %7219, %7193
  %7221 = fadd fast float %7220, %7198
  %7222 = fmul fast float %7221, 0x3FC5555560000000
  %7223 = fdiv fast float %7199, %7222
  %7224 = fsub fast float %7218, %7223
  %7225 = fsub fast float 1.000000e+00, %7173
  %7226 = fadd fast float %7204, %7191
  %7227 = fmul fast float %7226, 0x3FC5555560000000
  %7228 = fdiv fast float %7205, %7227
  %7229 = fadd fast float %7228, %7225
  %7230 = fmul fast float %7212, %7166
  %7231 = fsub fast float %7087, %7230
  %7232 = fmul fast float %7217, %7166
  %7233 = fadd fast float %7232, %7087
  %7234 = fmul fast float %7229, %7167
  %7235 = fadd fast float %7234, %7088
  %7236 = fmul fast float %7224, %7167
  %7237 = fsub fast float %7088, %7236
  %7238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7231, float %7237, float %7155, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7239 = extractvalue %dx.types.ResRet.f32 %7238, 0
  %7240 = extractvalue %dx.types.ResRet.f32 %7238, 1
  %7241 = extractvalue %dx.types.ResRet.f32 %7238, 2
  %7242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7233, float %7237, float %7155, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7243 = extractvalue %dx.types.ResRet.f32 %7242, 0
  %7244 = extractvalue %dx.types.ResRet.f32 %7242, 1
  %7245 = extractvalue %dx.types.ResRet.f32 %7242, 2
  %7246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7231, float %7235, float %7155, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7247 = extractvalue %dx.types.ResRet.f32 %7246, 0
  %7248 = extractvalue %dx.types.ResRet.f32 %7246, 1
  %7249 = extractvalue %dx.types.ResRet.f32 %7246, 2
  %7250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7233, float %7235, float %7155, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7251 = extractvalue %dx.types.ResRet.f32 %7250, 0
  %7252 = extractvalue %dx.types.ResRet.f32 %7250, 1
  %7253 = extractvalue %dx.types.ResRet.f32 %7250, 2
  %7254 = fsub fast float %7247, %7239
  %7255 = fsub fast float %7248, %7240
  %7256 = fsub fast float %7249, %7241
  %7257 = fmul fast float %7254, %7227
  %7258 = fmul fast float %7255, %7227
  %7259 = fmul fast float %7256, %7227
  %7260 = fadd fast float %7257, %7239
  %7261 = fadd fast float %7258, %7240
  %7262 = fadd fast float %7259, %7241
  %7263 = fsub fast float %7251, %7243
  %7264 = fsub fast float %7252, %7244
  %7265 = fsub fast float %7253, %7245
  %7266 = fmul fast float %7263, %7227
  %7267 = fmul fast float %7264, %7227
  %7268 = fmul fast float %7265, %7227
  %7269 = fsub fast float %7243, %7260
  %7270 = fadd fast float %7269, %7266
  %7271 = fsub fast float %7244, %7261
  %7272 = fadd fast float %7271, %7267
  %7273 = fsub fast float %7245, %7262
  %7274 = fadd fast float %7273, %7268
  %7275 = fmul fast float %7270, %7215
  %7276 = fmul fast float %7272, %7215
  %7277 = fmul fast float %7274, %7215
  %7278 = fadd fast float %7275, %7260
  %7279 = fadd fast float %7276, %7261
  %7280 = fadd fast float %7277, %7262
  %7281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7282 = extractvalue %dx.types.CBufRet.f32 %7281, 1
  %7283 = fmul fast float %7278, %7282
  %7284 = fmul fast float %7279, %7282
  %7285 = fmul fast float %7280, %7282
  br label %7286

; <label>:7286                                    ; preds = %7117, %7074
  %7287 = phi float [ %7157, %7117 ], [ 1.000000e+00, %7074 ]
  %7288 = phi float [ %7158, %7117 ], [ 1.000000e+00, %7074 ]
  %7289 = phi float [ %7159, %7117 ], [ 1.000000e+00, %7074 ]
  %7290 = phi float [ %7283, %7117 ], [ 0.000000e+00, %7074 ]
  %7291 = phi float [ %7284, %7117 ], [ 0.000000e+00, %7074 ]
  %7292 = phi float [ %7285, %7117 ], [ 0.000000e+00, %7074 ]
  %7293 = fmul fast float %7290, %5622
  %7294 = fmul fast float %7291, %5624
  %7295 = fmul fast float %7292, %5626
  %7296 = fmul fast float %7287, %7081
  %7297 = call float @dx.op.dot3.f32(i32 55, float %7287, float %7288, float %7289, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7298 = call float @dx.op.dot3.f32(i32 55, float %7293, float %7294, float %7295, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7299 = select i1 %204, float %7297, float %7287
  %7300 = select i1 %204, float %7297, float %7288
  %7301 = select i1 %204, float 1.000000e+00, float %7289
  %7302 = select i1 %204, float %7298, float %7293
  %7303 = select i1 %204, float 0.000000e+00, float %7294
  %7304 = select i1 %204, float 0.000000e+00, float %7295
  %7305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7306 = extractvalue %dx.types.CBufRet.i32 %7305, 3
  %7307 = and i32 %7306, 3
  %7308 = icmp ne i32 %7307, 0
  %7309 = and i32 %7306, 4
  %7310 = icmp ne i32 %7309, 0
  %7311 = and i1 %7308, %7310
  %7312 = and i1 %204, %7311
  br i1 %7312, label %7313, label %7319

; <label>:7313                                    ; preds = %7286
  %7314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7315 = extractvalue %dx.types.CBufRet.f32 %7314, 1
  %7316 = fadd fast float %7296, -1.000000e+00
  %7317 = fmul fast float %7315, %7316
  %7318 = fadd fast float %7317, 1.000000e+00
  br label %7319

; <label>:7319                                    ; preds = %7313, %7286
  %7320 = phi float [ %7318, %7313 ], [ %7296, %7286 ]
  %7321 = fadd fast float %7078, %7075
  %7322 = fmul fast float %7299, %7321
  %7323 = fadd fast float %7322, %7302
  %7324 = fadd fast float %7079, %7076
  %7325 = fmul fast float %7300, %7324
  %7326 = fadd fast float %7325, %7303
  %7327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7328 = extractvalue %dx.types.CBufRet.f32 %7327, 0
  br i1 %204, label %7329, label %7344

; <label>:7329                                    ; preds = %7319
  %7330 = fadd fast float %7323, %7326
  %7331 = fmul fast float %7328, %7330
  %7332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7333 = extractvalue %dx.types.CBufRet.f32 %7332, 3
  %7334 = extractvalue %dx.types.CBufRet.f32 %5630, 1
  %7335 = fsub fast float %5635, %5629
  %7336 = fadd fast float %7335, %5636
  %7337 = fsub fast float %7336, %7334
  %7338 = extractvalue %dx.types.CBufRet.f32 %5630, 2
  %7339 = fmul fast float %7337, %7338
  %7340 = call float @dx.op.unary.f32(i32 7, float %7339)  ; Saturate(value)
  %7341 = fsub fast float %7340, %7333
  %7342 = fmul fast float %7341, %7320
  %7343 = fadd fast float %7342, %7333
  br label %7369

; <label>:7344                                    ; preds = %7319
  %7345 = fadd fast float %7080, %7077
  %7346 = fmul fast float %7301, %7345
  %7347 = fadd fast float %7346, %7304
  %7348 = fmul fast float %7328, %7323
  %7349 = fmul fast float %7328, %7326
  %7350 = fmul fast float %7328, %7347
  %7351 = call float @dx.op.binary.f32(i32 35, float %7349, float %7350)  ; FMax(a,b)
  %7352 = call float @dx.op.binary.f32(i32 35, float %7348, float %7351)  ; FMax(a,b)
  %7353 = call float @dx.op.binary.f32(i32 35, float %5624, float %5626)  ; FMax(a,b)
  %7354 = call float @dx.op.binary.f32(i32 35, float %5622, float %7353)  ; FMax(a,b)
  %7355 = call float @dx.op.binary.f32(i32 35, float %7352, float %7354)  ; FMax(a,b)
  %7356 = fcmp fast ugt float %7355, 0x3F10000000000000
  br i1 %7356, label %7358, label %7357

; <label>:7357                                    ; preds = %7344
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7358

; <label>:7358                                    ; preds = %7357, %7344
  %7359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %7360 = extractvalue %dx.types.ResRet.i32 %7359, 0
  %7361 = and i32 %7360, 32
  %7362 = icmp eq i32 %7361, 0
  br i1 %7362, label %7369, label %7363

; <label>:7363                                    ; preds = %7358
  %7364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7365 = extractvalue %dx.types.CBufRet.f32 %7364, 0
  %7366 = fmul fast float %7365, 0x3FE99999A0000000
  %7367 = fadd fast float %7365, %7348
  %7368 = fadd fast float %7366, %7350
  br label %7369

; <label>:7369                                    ; preds = %7363, %7358, %7329
  %7370 = phi float [ 1.000000e+00, %7329 ], [ %5624, %7363 ], [ %5624, %7358 ]
  %7371 = phi float [ 1.000000e+00, %7329 ], [ %5626, %7363 ], [ %5626, %7358 ]
  %7372 = phi float [ %7331, %7329 ], [ %7367, %7363 ], [ %7348, %7358 ]
  %7373 = phi float [ %7343, %7329 ], [ %7349, %7363 ], [ %7349, %7358 ]
  %7374 = phi float [ 1.000000e+00, %7329 ], [ %7368, %7363 ], [ %7350, %7358 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7375 = call float @dx.op.binary.f32(i32 36, float %7372, float 3.225500e+04)  ; FMin(a,b)
  %7376 = call float @dx.op.binary.f32(i32 36, float %7373, float 3.225500e+04)  ; FMin(a,b)
  %7377 = call float @dx.op.binary.f32(i32 36, float %7374, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7375)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7376)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7377)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7378 = call float @dx.op.binary.f32(i32 36, float %5622, float 3.225500e+04)  ; FMin(a,b)
  %7379 = call float @dx.op.binary.f32(i32 36, float %7370, float 3.225500e+04)  ; FMin(a,b)
  %7380 = call float @dx.op.binary.f32(i32 36, float %7371, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %7378)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %7379)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %7380)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!69}
!dx.entryPoints = !{!70}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !58, !61}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !31}
!31 = !{i32 0, i32 5}
!32 = !{i32 24, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!38 = !{i32 30, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!42 = !{i32 34, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !43}
!43 = !{i32 0, i32 14}
!44 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!45 = !{i32 36, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!51 = !{i32 42, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!52 = !{i32 43, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!53 = !{i32 44, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!54 = !{i32 45, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!55 = !{i32 46, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !43}
!56 = !{i32 47, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!57 = !{i32 48, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!58 = !{!59, !60}
!59 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!60 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!61 = !{!62, !63, !64, !65, !66, !67, !68}
!62 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!63 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!64 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!65 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!66 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!67 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!68 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!69 = !{[31 x i32] [i32 29, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119]}
!70 = !{void ()* @ps_main, !"ps_main", !71, !4, !91}
!71 = !{!72, !87, null}
!72 = !{!73, !76, !78, !80, !81, !82, !83, !84, !86}
!73 = !{i32 0, !"SV_Position", i8 9, i8 3, !74, i8 4, i32 1, i8 4, i32 0, i8 0, !75}
!74 = !{i32 0}
!75 = !{i32 3, i32 15}
!76 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !74, i8 2, i32 1, i8 2, i32 1, i8 0, !77}
!77 = !{i32 3, i32 3}
!78 = !{i32 2, !"NORMAL", i8 9, i8 0, !74, i8 2, i32 1, i8 3, i32 2, i8 0, !79}
!79 = !{i32 3, i32 7}
!80 = !{i32 3, !"TANGENT", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 3, i8 0, !75}
!81 = !{i32 4, !"SH_RED", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 4, i8 0, !75}
!82 = !{i32 5, !"SH_GREEN", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 5, i8 0, !75}
!83 = !{i32 6, !"SH_BLUE", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 6, i8 0, !75}
!84 = !{i32 7, !"SV_IsFrontFace", i8 5, i8 13, !74, i8 1, i32 1, i8 1, i32 7, i8 0, !85}
!85 = !{i32 3, i32 1}
!86 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !74, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!87 = !{!88, !89}
!88 = !{i32 0, !"SV_Target", i8 9, i8 16, !74, i8 0, i32 1, i8 4, i32 0, i8 0, !75}
!89 = !{i32 1, !"SV_Target", i8 9, i8 16, !90, i8 0, i32 1, i8 4, i32 1, i8 0, !75}
!90 = !{i32 1}
!91 = !{i32 0, i64 16}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !94}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = !{!101, !101, i64 0}
!101 = !{!"int", !102, i64 0}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !{!105, !107, !109, !111}
!105 = distinct !{!105, !106, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!106 = distinct !{!106, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!107 = distinct !{!107, !108, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!108 = distinct !{!108, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!109 = distinct !{!109, !110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!110 = distinct !{!110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!111 = distinct !{!111, !112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!112 = distinct !{!112, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = !{!115, !115, i64 0}
!115 = !{!"float", !102, i64 0}
!116 = distinct !{!116, !94}
!117 = distinct !{!117, !94}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = !{!129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!129 = distinct !{!129, !130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!130 = distinct !{!130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!131 = distinct !{!131, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!132 = distinct !{!132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!133 = distinct !{!133, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!134 = distinct !{!134, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!135 = distinct !{!135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!136 = distinct !{!136, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!137 = distinct !{!137, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!138 = distinct !{!138, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!139 = distinct !{!139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!140 = distinct !{!140, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!141 = distinct !{!141, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!142 = distinct !{!142, !143, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!143 = distinct !{!143, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"\01?sort@@YAXAIAM00@Z: %c"}
!146 = distinct !{!146, !"\01?sort@@YAXAIAM00@Z"}
!147 = !{!148, !149, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!148 = distinct !{!148, !146, !"\01?sort@@YAXAIAM00@Z: %a"}
!149 = distinct !{!149, !146, !"\01?sort@@YAXAIAM00@Z: %b"}
!150 = !{!149}
!151 = !{!148, !145, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!152 = !{!148}
!153 = !{!149, !145, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!154 = !{!155}
!155 = distinct !{!155, !156, !"\01?sort@@YAXAIAM00@Z: %c"}
!156 = distinct !{!156, !"\01?sort@@YAXAIAM00@Z"}
!157 = !{!158, !159, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!158 = distinct !{!158, !156, !"\01?sort@@YAXAIAM00@Z: %a"}
!159 = distinct !{!159, !156, !"\01?sort@@YAXAIAM00@Z: %b"}
!160 = !{!159}
!161 = !{!158, !155, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!162 = !{!158}
!163 = !{!159, !155, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 2}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}

