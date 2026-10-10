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
; shader hash: e6344daab979665a58b9da5078f345f9
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
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 0
  %909 = call float @dx.op.dot2.f32(i32 54, float %887, float %888, float %887, float %888)  ; Dot2(ax,ay,bx,by)
  %910 = fmul fast float %909, 0x3FE3333340000000
  %911 = fsub fast float 1.000000e+00, %910
  %912 = call float @dx.op.dot3.f32(i32 55, float %887, float %888, float %911, float %887, float %888, float %911)  ; Dot3(ax,ay,az,bx,by,bz)
  %913 = call float @dx.op.unary.f32(i32 25, float %912)  ; Rsqrt(value)
  %914 = fmul fast float %913, %887
  %915 = fmul fast float %913, %888
  %916 = fmul fast float %911, %913
  %917 = fmul fast float %916, %97
  %918 = fmul fast float %916, %98
  %919 = fmul fast float %916, %99
  %920 = fmul fast float %914, %70
  %921 = fmul fast float %914, %71
  %922 = fmul fast float %914, %72
  %923 = fmul fast float %102, %73
  %924 = fmul fast float %923, %915
  %925 = fmul fast float %105, %73
  %926 = fmul fast float %925, %915
  %927 = fmul fast float %108, %73
  %928 = fmul fast float %927, %915
  %929 = fadd fast float %924, %920
  %930 = fmul fast float %929, %96
  %931 = fadd fast float %930, %917
  %932 = fadd fast float %926, %921
  %933 = fmul fast float %932, %96
  %934 = fadd fast float %933, %918
  %935 = fadd fast float %928, %922
  %936 = fmul fast float %935, %96
  %937 = fadd fast float %936, %919
  %938 = call float @dx.op.dot3.f32(i32 55, float %931, float %934, float %937, float %931, float %934, float %937)  ; Dot3(ax,ay,az,bx,by,bz)
  %939 = call float @dx.op.unary.f32(i32 25, float %938)  ; Rsqrt(value)
  %940 = fmul fast float %931, %939
  %941 = fmul fast float %934, %939
  %942 = fmul fast float %937, %939
  %943 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %944 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %945 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %946 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %947 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %948 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %949 = fadd fast float %943, %142
  %950 = fadd fast float %944, %143
  %951 = fadd fast float %945, %144
  %952 = fadd fast float %946, %142
  %953 = fadd fast float %947, %143
  %954 = fadd fast float %948, %144
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 0
  %957 = extractvalue %dx.types.CBufRet.f32 %955, 1
  %958 = extractvalue %dx.types.CBufRet.f32 %955, 2
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 2
  %961 = extractvalue %dx.types.CBufRet.f32 %959, 3
  %962 = fmul fast float %956, %94
  %963 = fmul fast float %962, %960
  %964 = fmul fast float %957, %95
  %965 = fmul fast float %964, %961
  %966 = fptoui float %963 to i32
  %967 = fptoui float %965 to i32
  %968 = fadd fast float %956, -1.000000e+00
  %969 = fadd fast float %957, -1.000000e+00
  %970 = fptoui float %968 to i32
  %971 = fptoui float %969 to i32
  %972 = call i32 @dx.op.binary.i32(i32 40, i32 %966, i32 %970)  ; UMin(a,b)
  %973 = call i32 @dx.op.binary.i32(i32 40, i32 %967, i32 %971)  ; UMin(a,b)
  %974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.f32 %974, 2
  %976 = extractvalue %dx.types.CBufRet.f32 %974, 3
  %977 = fmul fast float %975, %82
  %978 = fsub fast float %977, %976
  %979 = fadd fast float %958, -1.000000e+00
  %980 = call float @dx.op.binary.f32(i32 36, float %978, float %979)  ; FMin(a,b)
  %981 = fptoui float %980 to i32
  %982 = fptoui float %956 to i32
  %983 = fptoui float %957 to i32
  %984 = mul i32 %981, %983
  %985 = add i32 %984, %973
  %986 = mul i32 %985, %982
  %987 = add i32 %986, %972
  %988 = shl i32 %987, 2
  %989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = and i32 %990, 1023
  %992 = lshr i32 %990, 10
  %993 = icmp eq i32 %991, 0
  br i1 %993, label %1497, label %994

; <label>:994                                     ; preds = %886
  %995 = and i32 %990, 1023
  br label %996

; <label>:996                                     ; preds = %1128, %994
  %997 = phi i32 [ %1078, %1128 ], [ 0, %994 ]
  %998 = phi float [ %1129, %1128 ], [ 0.000000e+00, %994 ]
  %999 = phi float [ %1130, %1128 ], [ %908, %994 ]
  %1000 = phi float [ %1131, %1128 ], [ %906, %994 ]
  %1001 = phi float [ %1132, %1128 ], [ %898, %994 ]
  %1002 = phi float [ %1133, %1128 ], [ %899, %994 ]
  %1003 = phi float [ %1134, %1128 ], [ %900, %994 ]
  %1004 = phi float [ %1135, %1128 ], [ 0.000000e+00, %994 ]
  %1005 = phi float [ %1136, %1128 ], [ 0.000000e+00, %994 ]
  %1006 = phi float [ %1137, %1128 ], [ %895, %994 ]
  %1007 = phi float [ %1138, %1128 ], [ %896, %994 ]
  %1008 = phi float [ %1139, %1128 ], [ %897, %994 ]
  %1009 = phi float [ %1140, %1128 ], [ %892, %994 ]
  %1010 = phi float [ %1141, %1128 ], [ %893, %994 ]
  %1011 = phi float [ %1142, %1128 ], [ %894, %994 ]
  %1012 = phi float [ %1143, %1128 ], [ %940, %994 ]
  %1013 = phi float [ %1144, %1128 ], [ %941, %994 ]
  %1014 = phi float [ %1145, %1128 ], [ %942, %994 ]
  %1015 = phi float [ %1146, %1128 ], [ %904, %994 ]
  %1016 = phi float [ %1147, %1128 ], [ %903, %994 ]
  %1017 = phi float [ %1148, %1128 ], [ 0.000000e+00, %994 ]
  %1018 = phi float [ %1149, %1128 ], [ %901, %994 ]
  %1019 = phi float [ %1150, %1128 ], [ %889, %994 ]
  %1020 = phi float [ %1151, %1128 ], [ %890, %994 ]
  %1021 = phi float [ %1152, %1128 ], [ %891, %994 ]
  %1022 = add nuw nsw i32 %997, %992
  %1023 = shl i32 %1022, 2
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = shl i32 %1025, 8
  %1027 = or i32 %1026, 48
  %1028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.ResRet.f32 %1028, 1
  %1031 = extractvalue %dx.types.ResRet.f32 %1028, 2
  %1032 = extractvalue %dx.types.ResRet.f32 %1028, 3
  %1033 = or i32 %1026, 64
  %1034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.i32 %1034, 0
  %1036 = extractvalue %dx.types.ResRet.i32 %1034, 1
  %1037 = or i32 %1026, 80
  %1038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.f32 %1038, 2
  %1040 = extractvalue %dx.types.ResRet.f32 %1038, 3
  %1041 = or i32 %1026, 96
  %1042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.ResRet.f32 %1042, 1
  %1045 = extractvalue %dx.types.ResRet.f32 %1042, 2
  %1046 = extractvalue %dx.types.ResRet.f32 %1042, 3
  %1047 = or i32 %1026, 112
  %1048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1050 = or i32 %1026, 128
  %1051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.ResRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.ResRet.f32 %1051, 2
  %1055 = extractvalue %dx.types.ResRet.f32 %1051, 3
  %1056 = or i32 %1026, 144
  %1057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = extractvalue %dx.types.ResRet.f32 %1057, 1
  %1060 = extractvalue %dx.types.ResRet.f32 %1057, 2
  %1061 = extractvalue %dx.types.ResRet.f32 %1057, 3
  %1062 = or i32 %1026, 160
  %1063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.f32 %1063, 0
  %1065 = extractvalue %dx.types.ResRet.f32 %1063, 1
  %1066 = extractvalue %dx.types.ResRet.f32 %1063, 2
  %1067 = extractvalue %dx.types.ResRet.f32 %1063, 3
  %1068 = or i32 %1026, 192
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = or i32 %1026, 208
  %1072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.f32 %1072, 0
  %1074 = or i32 %1026, 248
  %1075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.ResRet.f32 %1075, 1
  %1078 = add nuw nsw i32 %997, 1
  %1079 = bitcast float %1032 to i32
  %1080 = and i32 %1079, 512
  %1081 = icmp eq i32 %1080, 0
  %1082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1026, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.f32 %1082, 0
  %1084 = extractvalue %dx.types.ResRet.f32 %1082, 1
  %1085 = extractvalue %dx.types.ResRet.f32 %1082, 2
  %1086 = extractvalue %dx.types.ResRet.f32 %1082, 3
  %1087 = call float @dx.op.dot4.f32(i32 56, float %1083, float %1084, float %1085, float %1086, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1088 = or i32 %1026, 16
  %1089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1092 = extractvalue %dx.types.ResRet.f32 %1089, 2
  %1093 = extractvalue %dx.types.ResRet.f32 %1089, 3
  %1094 = call float @dx.op.dot4.f32(i32 56, float %1090, float %1091, float %1092, float %1093, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1095 = or i32 %1026, 32
  %1096 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1095, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.f32 %1096, 0
  %1098 = extractvalue %dx.types.ResRet.f32 %1096, 1
  %1099 = extractvalue %dx.types.ResRet.f32 %1096, 2
  %1100 = extractvalue %dx.types.ResRet.f32 %1096, 3
  %1101 = call float @dx.op.dot4.f32(i32 56, float %1097, float %1098, float %1099, float %1100, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1102 = call float @dx.op.unary.f32(i32 27, float %1087)  ; Round_ni(value)
  %1103 = call float @dx.op.unary.f32(i32 6, float %1102)  ; FAbs(value)
  %1104 = call float @dx.op.unary.f32(i32 27, float %1094)  ; Round_ni(value)
  %1105 = call float @dx.op.unary.f32(i32 6, float %1104)  ; FAbs(value)
  %1106 = call float @dx.op.unary.f32(i32 6, float %1101)  ; FAbs(value)
  %1107 = call float @dx.op.unary.f32(i32 27, float %1106)  ; Round_ni(value)
  %1108 = fadd fast float %1105, %1103
  %1109 = fadd fast float %1108, %1107
  %1110 = fcmp fast oeq float %1109, 0.000000e+00
  %1111 = call float @dx.op.dot4.f32(i32 56, float %1083, float %1084, float %1085, float %1086, float %949, float %950, float %951, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1112 = call float @dx.op.dot4.f32(i32 56, float %1090, float %1091, float %1092, float %1093, float %949, float %950, float %951, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1113 = call float @dx.op.dot4.f32(i32 56, float %1083, float %1084, float %1085, float %1086, float %952, float %953, float %954, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1114 = call float @dx.op.dot4.f32(i32 56, float %1090, float %1091, float %1092, float %1093, float %952, float %953, float %954, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1115 = fsub fast float %1111, %1087
  %1116 = fsub fast float %1113, %1087
  %1117 = fsub fast float %1112, %1094
  %1118 = fsub fast float %1114, %1094
  %1119 = call float @dx.op.dot3.f32(i32 55, float %1029, float %1030, float %1031, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %1120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.f32 %1120, 2
  %1122 = fadd fast float %1121, %1119
  %1123 = call float @dx.op.unary.f32(i32 7, float %1122)  ; Saturate(value)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1120, 0
  %1125 = fcmp fast ogt float %1123, %1124
  %1126 = and i1 %1110, %1125
  %1127 = and i1 %1081, %1126
  br i1 %1127, label %1154, label %1128

; <label>:1128                                    ; preds = %1483, %1235, %1154, %996
  %1129 = phi float [ %998, %1154 ], [ %1238, %1235 ], [ %1238, %1483 ], [ %998, %996 ]
  %1130 = phi float [ %999, %1154 ], [ %999, %1235 ], [ %1459, %1483 ], [ %999, %996 ]
  %1131 = phi float [ %1000, %1154 ], [ %1000, %1235 ], [ %1457, %1483 ], [ %1000, %996 ]
  %1132 = phi float [ %1001, %1154 ], [ %1001, %1235 ], [ %1435, %1483 ], [ %1001, %996 ]
  %1133 = phi float [ %1002, %1154 ], [ %1002, %1235 ], [ %1436, %1483 ], [ %1002, %996 ]
  %1134 = phi float [ %1003, %1154 ], [ %1003, %1235 ], [ %1437, %1483 ], [ %1003, %996 ]
  %1135 = phi float [ %1004, %1154 ], [ %1004, %1235 ], [ %1362, %1483 ], [ %1004, %996 ]
  %1136 = phi float [ %1005, %1154 ], [ %1005, %1235 ], [ %1360, %1483 ], [ %1005, %996 ]
  %1137 = phi float [ %1006, %1154 ], [ %1006, %1235 ], [ %1405, %1483 ], [ %1006, %996 ]
  %1138 = phi float [ %1007, %1154 ], [ %1007, %1235 ], [ %1406, %1483 ], [ %1007, %996 ]
  %1139 = phi float [ %1008, %1154 ], [ %1008, %1235 ], [ %1407, %1483 ], [ %1008, %996 ]
  %1140 = phi float [ %1009, %1154 ], [ %1009, %1235 ], [ %1493, %1483 ], [ %1009, %996 ]
  %1141 = phi float [ %1010, %1154 ], [ %1010, %1235 ], [ %1494, %1483 ], [ %1010, %996 ]
  %1142 = phi float [ %1011, %1154 ], [ %1011, %1235 ], [ %1495, %1483 ], [ %1011, %996 ]
  %1143 = phi float [ %1012, %1154 ], [ %1012, %1235 ], [ %1341, %1483 ], [ %1012, %996 ]
  %1144 = phi float [ %1013, %1154 ], [ %1013, %1235 ], [ %1342, %1483 ], [ %1013, %996 ]
  %1145 = phi float [ %1014, %1154 ], [ %1014, %1235 ], [ %1343, %1483 ], [ %1014, %996 ]
  %1146 = phi float [ %1015, %1154 ], [ %1015, %1235 ], [ %1415, %1483 ], [ %1015, %996 ]
  %1147 = phi float [ %1016, %1154 ], [ %1016, %1235 ], [ %1412, %1483 ], [ %1016, %996 ]
  %1148 = phi float [ %1017, %1154 ], [ %1017, %1235 ], [ %1409, %1483 ], [ %1017, %996 ]
  %1149 = phi float [ %1018, %1154 ], [ %1018, %1235 ], [ %1358, %1483 ], [ %1018, %996 ]
  %1150 = phi float [ %1019, %1154 ], [ %1019, %1235 ], [ %1353, %1483 ], [ %1019, %996 ]
  %1151 = phi float [ %1020, %1154 ], [ %1020, %1235 ], [ %1354, %1483 ], [ %1020, %996 ]
  %1152 = phi float [ %1021, %1154 ], [ %1021, %1235 ], [ %1355, %1483 ], [ %1021, %996 ]
  %1153 = icmp eq i32 %1078, %995
  br i1 %1153, label %1496, label %996

; <label>:1154                                    ; preds = %996
  %1155 = extractvalue %dx.types.ResRet.f32 %1048, 3
  %1156 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1157 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1158 = extractvalue %dx.types.ResRet.f32 %1038, 1
  %1159 = extractvalue %dx.types.ResRet.f32 %1038, 0
  %1160 = extractvalue %dx.types.ResRet.i32 %1034, 3
  %1161 = extractvalue %dx.types.ResRet.i32 %1034, 2
  %1162 = add i32 %1160, 0
  %1163 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1162, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1165 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1163, %dx.types.Handle %1164, float %1087, float %1094, float undef, float undef, i32 0, i32 0, i32 undef, float %1115, float %1117, float undef, float %1116, float %1118, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1166 = extractvalue %dx.types.ResRet.f32 %1165, 0
  %1167 = fmul fast float %1166, %1159
  %1168 = fadd fast float %1167, %1158
  %1169 = call float @dx.op.unary.f32(i32 7, float %1168)  ; Saturate(value)
  %1170 = fmul fast float %1087, %1043
  %1171 = call float @dx.op.tertiary.f32(i32 46, float %1044, float %1094, float %1170)  ; FMad(a,b,c)
  %1172 = fadd fast float %1171, %1157
  %1173 = fmul fast float %1087, %1045
  %1174 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %1094, float %1173)  ; FMad(a,b,c)
  %1175 = fadd fast float %1174, %1156
  %1176 = fmul fast float %1115, %1043
  %1177 = call float @dx.op.tertiary.f32(i32 46, float %1044, float %1117, float %1176)  ; FMad(a,b,c)
  %1178 = fmul fast float %1115, %1045
  %1179 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %1117, float %1178)  ; FMad(a,b,c)
  %1180 = fmul fast float %1116, %1043
  %1181 = call float @dx.op.tertiary.f32(i32 46, float %1044, float %1118, float %1180)  ; FMad(a,b,c)
  %1182 = fmul fast float %1116, %1045
  %1183 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %1118, float %1182)  ; FMad(a,b,c)
  %1184 = add i32 %1161, 0
  %1185 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1184, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1186 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1185, %dx.types.Handle %1164, float %1172, float %1175, float undef, float undef, i32 0, i32 0, i32 undef, float %1177, float %1179, float undef, float %1181, float %1183, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1187 = extractvalue %dx.types.ResRet.f32 %1186, 0
  %1188 = and i32 %1079, 1024
  %1189 = icmp ne i32 %1188, 0
  %1190 = fcmp fast ogt float %1187, 0x3FE0101020000000
  %1191 = uitofp i1 %1190 to float
  %1192 = select i1 %1189, float %1191, float %1187
  %1193 = and i32 %1079, 8192
  %1194 = icmp ne i32 %1193, 0
  %1195 = select i1 %1194, float %1155, float 1.000000e+00
  %1196 = fmul fast float %1087, 2.000000e+00
  %1197 = fadd fast float %1196, -1.000000e+00
  %1198 = call float @dx.op.unary.f32(i32 6, float %1197)  ; FAbs(value)
  %1199 = fmul fast float %1198, %1076
  %1200 = fsub fast float %1199, %1076
  %1201 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1202 = fmul fast float %1094, 2.000000e+00
  %1203 = fadd fast float %1202, -1.000000e+00
  %1204 = call float @dx.op.unary.f32(i32 6, float %1203)  ; FAbs(value)
  %1205 = fmul fast float %1204, %1077
  %1206 = fsub fast float %1205, %1077
  %1207 = call float @dx.op.unary.f32(i32 7, float %1206)  ; Saturate(value)
  %1208 = fmul fast float %1106, %1039
  %1209 = fsub fast float %1208, %1039
  %1210 = call float @dx.op.unary.f32(i32 7, float %1209)  ; Saturate(value)
  %1211 = fmul fast float %1169, %1195
  %1212 = fmul fast float %1211, %1166
  %1213 = fmul fast float %1212, %1201
  %1214 = fmul fast float %1213, %1192
  %1215 = fmul fast float %1214, %1207
  %1216 = fmul fast float %1215, %1210
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 1
  %1219 = extractvalue %dx.types.CBufRet.f32 %1217, 0
  %1220 = fsub fast float %1123, %1219
  %1221 = fmul fast float %1220, %1218
  %1222 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1223 = fmul fast float %1216, %1040
  %1224 = fadd fast float %1216, %1040
  %1225 = fmul fast float %1224, %1049
  %1226 = fsub fast float %1225, %1049
  %1227 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  %1228 = and i32 %1079, 128
  %1229 = icmp ne i32 %1228, 0
  %1230 = select i1 %1229, float %1227, float %1223
  %1231 = fmul fast float %1230, %1222
  %1232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.f32 %1232, 0
  %1234 = fcmp fast ugt float %1231, %1233
  br i1 %1234, label %1235, label %1128

; <label>:1235                                    ; preds = %1154
  %1236 = select i1 %1194, float %1231, float 0.000000e+00
  %1237 = fadd fast float %1236, %998
  %1238 = call float @dx.op.unary.f32(i32 7, float %1237)  ; Saturate(value)
  br i1 %1194, label %1128, label %1239

; <label>:1239                                    ; preds = %1235
  %1240 = and i32 %1079, 4
  %1241 = and i32 %1079, 8
  %1242 = add i32 %1035, 0
  %1243 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1242, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1245 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1243, %dx.types.Handle %1244, float %1172, float %1175, float undef, float undef, i32 0, i32 0, i32 undef, float %1177, float %1179, float undef, float %1181, float %1183, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 0
  %1247 = extractvalue %dx.types.ResRet.f32 %1245, 1
  %1248 = extractvalue %dx.types.ResRet.f32 %1245, 2
  %1249 = extractvalue %dx.types.ResRet.f32 %1245, 3
  %1250 = bitcast float %1061 to i32
  %1251 = and i32 %1250, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = lshr i32 %1250, 8
  %1254 = and i32 %1253, 255
  %1255 = uitofp i32 %1254 to float
  %1256 = fmul fast float %1249, %1252
  %1257 = fadd fast float %1256, %1255
  %1258 = fmul fast float %1257, 0x3F70101000000000
  %1259 = add i32 %1036, 0
  %1260 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1259, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1261 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1260, %dx.types.Handle %1244, float %1172, float %1175, float undef, float undef, i32 0, i32 0, i32 undef, float %1177, float %1179, float undef, float %1181, float %1183, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1262 = extractvalue %dx.types.ResRet.f32 %1261, 0
  %1263 = extractvalue %dx.types.ResRet.f32 %1261, 1
  %1264 = extractvalue %dx.types.ResRet.f32 %1261, 2
  %1265 = extractvalue %dx.types.ResRet.f32 %1261, 3
  %1266 = bitcast float %1055 to i32
  %1267 = and i32 %1266, 255
  %1268 = uitofp i32 %1267 to float
  %1269 = lshr i32 %1266, 8
  %1270 = and i32 %1269, 255
  %1271 = uitofp i32 %1270 to float
  %1272 = lshr i32 %1266, 16
  %1273 = and i32 %1272, 255
  %1274 = uitofp i32 %1273 to float
  %1275 = fmul fast float %1274, 0x3F70101000000000
  %1276 = fmul fast float %1262, %1268
  %1277 = fadd fast float %1276, %1271
  %1278 = fmul fast float %1277, 0x3F70101000000000
  %1279 = fadd fast float %1263, -5.000000e-01
  %1280 = fadd fast float %1265, -5.000000e-01
  %1281 = fmul fast float %1279, %1275
  %1282 = fmul fast float %1280, %1275
  %1283 = fadd fast float %1281, 5.000000e-01
  %1284 = fadd fast float %1282, 5.000000e-01
  %1285 = fmul fast float %1246, %1064
  %1286 = fmul fast float %1247, %1065
  %1287 = fmul fast float %1248, %1066
  %1288 = fmul fast float %1283, 2.000000e+00
  %1289 = fadd fast float %1288, -1.000000e+00
  %1290 = fmul fast float %1284, 2.000000e+00
  %1291 = fadd fast float %1290, -1.000000e+00
  %1292 = fadd fast float %1289, %1291
  %1293 = fmul fast float %1292, 5.000000e-01
  %1294 = fsub fast float %1289, %1291
  %1295 = fmul fast float %1294, 5.000000e-01
  %1296 = call float @dx.op.unary.f32(i32 6, float %1293)  ; FAbs(value)
  %1297 = fsub fast float 1.000000e+00, %1296
  %1298 = call float @dx.op.unary.f32(i32 6, float %1295)  ; FAbs(value)
  %1299 = fsub fast float %1297, %1298
  %1300 = call float @dx.op.dot3.f32(i32 55, float %1293, float %1295, float %1299, float %1293, float %1295, float %1299)  ; Dot3(ax,ay,az,bx,by,bz)
  %1301 = call float @dx.op.unary.f32(i32 25, float %1300)  ; Rsqrt(value)
  %1302 = fmul fast float %1293, %1301
  %1303 = fmul fast float %1295, %1301
  %1304 = fmul fast float %1301, %1299
  %1305 = fmul fast float %1304, %1029
  %1306 = fmul fast float %1304, %1030
  %1307 = fmul fast float %1304, %1031
  %1308 = fmul fast float %1302, %1052
  %1309 = fmul fast float %1302, %1053
  %1310 = fmul fast float %1302, %1054
  %1311 = fadd fast float %1308, %1305
  %1312 = fadd fast float %1309, %1306
  %1313 = fadd fast float %1310, %1307
  %1314 = fmul fast float %1303, %1058
  %1315 = fmul fast float %1303, %1059
  %1316 = fmul fast float %1303, %1060
  %1317 = fadd fast float %1311, %1314
  %1318 = fadd fast float %1312, %1315
  %1319 = fadd fast float %1313, %1316
  %1320 = call float @dx.op.dot3.f32(i32 55, float %1317, float %1318, float %1319, float %1317, float %1318, float %1319)  ; Dot3(ax,ay,az,bx,by,bz)
  %1321 = call float @dx.op.unary.f32(i32 25, float %1320)  ; Rsqrt(value)
  %1322 = fmul fast float %1317, %1321
  %1323 = fmul fast float %1318, %1321
  %1324 = fmul fast float %1319, %1321
  %1325 = icmp ne i32 %1241, 0
  %1326 = select i1 %1325, float 1.000000e+00, float 0.000000e+00
  %1327 = fmul fast float %1231, %1326
  %1328 = and i32 %1079, 1
  %1329 = icmp eq i32 %1328, 0
  br i1 %1329, label %1330, label %1334

; <label>:1330                                    ; preds = %1239
  %1331 = fsub fast float %1322, %1012
  %1332 = fsub fast float %1323, %1013
  %1333 = fsub fast float %1324, %1014
  br label %1334

; <label>:1334                                    ; preds = %1330, %1239
  %1335 = phi float [ %1331, %1330 ], [ %1322, %1239 ]
  %1336 = phi float [ %1332, %1330 ], [ %1323, %1239 ]
  %1337 = phi float [ %1333, %1330 ], [ %1324, %1239 ]
  %1338 = fmul float %1337, %1327
  %1339 = fmul float %1336, %1327
  %1340 = fmul float %1335, %1327
  %1341 = fadd fast float %1340, %1012
  %1342 = fadd fast float %1339, %1013
  %1343 = fadd fast float %1338, %1014
  %1344 = icmp ne i32 %1240, 0
  %1345 = select i1 %1344, float 1.000000e+00, float 0.000000e+00
  %1346 = fmul fast float %1231, %1345
  %1347 = fsub fast float %1285, %1019
  %1348 = fsub fast float %1286, %1020
  %1349 = fsub fast float %1287, %1021
  %1350 = fmul fast float %1347, %1346
  %1351 = fmul fast float %1348, %1346
  %1352 = fmul fast float %1349, %1346
  %1353 = fadd fast float %1350, %1019
  %1354 = fadd fast float %1351, %1020
  %1355 = fadd fast float %1352, %1021
  %1356 = fsub fast float %1258, %1018
  %1357 = fmul fast float %1356, %1346
  %1358 = fadd fast float %1357, %1018
  %1359 = fmul fast float %1346, %1005
  %1360 = fsub fast float %1005, %1359
  %1361 = fmul fast float %1346, %1004
  %1362 = fsub fast float %1004, %1361
  %1363 = bitcast float %1073 to i32
  %1364 = lshr i32 %1363, 16
  %1365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1364)  ; LegacyF16ToF32(value)
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = and i32 %1367, 1
  %1369 = icmp eq i32 %1368, 0
  br i1 %1369, label %1370, label %1395

; <label>:1370                                    ; preds = %1334
  %1371 = fadd fast float %1258, 0xBFB99999A0000000
  %1372 = call float @dx.op.unary.f32(i32 7, float %1371)  ; Saturate(value)
  %1373 = fmul fast float %1372, 0x3FF1C71C80000000
  %1374 = fsub fast float 1.000000e+00, %1373
  %1375 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  %1376 = fmul fast float %1375, %1285
  %1377 = fmul fast float %1375, %1286
  %1378 = fmul fast float %1375, %1287
  %1379 = call float @dx.op.unary.f32(i32 7, float %1376)  ; Saturate(value)
  %1380 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  %1381 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1382 = call float @dx.op.binary.f32(i32 35, float %1380, float %1381)  ; FMax(a,b)
  %1383 = call float @dx.op.binary.f32(i32 35, float %1379, float %1382)  ; FMax(a,b)
  %1384 = fcmp fast ogt float %1383, 0.000000e+00
  %1385 = bitcast float %1383 to i32
  %1386 = sub nsw i32 2129859010, %1385
  %1387 = bitcast i32 %1386 to float
  %1388 = select i1 %1384, float %1387, float 0.000000e+00
  %1389 = fmul fast float %1379, %1365
  %1390 = fmul fast float %1380, %1365
  %1391 = fmul fast float %1381, %1365
  %1392 = fmul fast float %1389, %1388
  %1393 = fmul fast float %1390, %1388
  %1394 = fmul fast float %1391, %1388
  br label %1395

; <label>:1395                                    ; preds = %1370, %1334
  %1396 = phi float [ %1365, %1334 ], [ %1392, %1370 ]
  %1397 = phi float [ %1365, %1334 ], [ %1393, %1370 ]
  %1398 = phi float [ %1365, %1334 ], [ %1394, %1370 ]
  %1399 = fsub fast float %1396, %1006
  %1400 = fsub fast float %1397, %1007
  %1401 = fsub fast float %1398, %1008
  %1402 = fmul fast float %1399, %1346
  %1403 = fmul fast float %1400, %1346
  %1404 = fmul fast float %1401, %1346
  %1405 = fadd fast float %1402, %1006
  %1406 = fadd fast float %1403, %1007
  %1407 = fadd fast float %1404, %1008
  %1408 = fadd fast float %1231, %1017
  %1409 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1410 = fsub fast float %1278, %1016
  %1411 = fmul fast float %1410, %1327
  %1412 = fadd fast float %1411, %1016
  %1413 = fsub fast float %1264, %1015
  %1414 = fmul fast float %1413, %1327
  %1415 = fadd fast float %1414, %1015
  br i1 %1329, label %1424, label %1416

; <label>:1416                                    ; preds = %1395
  %1417 = and i32 %1079, 32768
  %1418 = icmp eq i32 %1417, 0
  br i1 %1418, label %1434, label %1419

; <label>:1419                                    ; preds = %1416
  %1420 = fmul fast float %1327, 1.270000e+02
  %1421 = fadd fast float %1420, %1001
  %1422 = fadd fast float %1420, %1002
  %1423 = fadd fast float %1420, %1003
  br label %1434

; <label>:1424                                    ; preds = %1395
  %1425 = fsub fast float 1.270000e+02, %1001
  %1426 = fsub fast float 1.270000e+02, %1002
  %1427 = fsub fast float 1.270000e+02, %1003
  %1428 = fmul fast float %1327, %1425
  %1429 = fmul fast float %1327, %1426
  %1430 = fmul fast float %1327, %1427
  %1431 = fadd fast float %1428, %1001
  %1432 = fadd fast float %1429, %1002
  %1433 = fadd fast float %1430, %1003
  br label %1434

; <label>:1434                                    ; preds = %1424, %1419, %1416
  %1435 = phi float [ %1421, %1419 ], [ %1001, %1416 ], [ %1431, %1424 ]
  %1436 = phi float [ %1422, %1419 ], [ %1002, %1416 ], [ %1432, %1424 ]
  %1437 = phi float [ %1423, %1419 ], [ %1003, %1416 ], [ %1433, %1424 ]
  %1438 = call float @dx.op.dot3.f32(i32 55, float %1285, float %1286, float %1287, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1440 = extractvalue %dx.types.CBufRet.f32 %1439, 0
  %1441 = extractvalue %dx.types.CBufRet.f32 %1439, 1
  %1442 = fmul fast float %1441, %1438
  %1443 = fadd fast float %1442, %1440
  %1444 = call float @dx.op.unary.f32(i32 7, float %1443)  ; Saturate(value)
  %1445 = bitcast float %1067 to i32
  %1446 = and i32 %1445, 65535
  %1447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1446)  ; LegacyF16ToF32(value)
  %1448 = lshr i32 %1445, 16
  %1449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1448)  ; LegacyF16ToF32(value)
  %1450 = fcmp fast oge float %1447, 0.000000e+00
  %1451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.f32 %1451, 0
  %1453 = select i1 %1450, float %1447, float %1452
  %1454 = fadd fast float %1453, %1449
  %1455 = fsub fast float %1444, %1000
  %1456 = fmul fast float %1455, %1231
  %1457 = fadd fast float %1456, %1000
  %1458 = fmul fast float %1454, %1231
  %1459 = call float @dx.op.binary.f32(i32 35, float %999, float %1458)  ; FMax(a,b)
  %1460 = and i32 %1079, 16
  %1461 = icmp eq i32 %1460, 0
  br i1 %1461, label %1483, label %1462

; <label>:1462                                    ; preds = %1434
  %1463 = add i32 %1070, 0
  %1464 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1463, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1465 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1464, %dx.types.Handle %1244, float %1172, float %1175, float undef, float undef, i32 0, i32 0, i32 undef, float %1177, float %1179, float undef, float %1181, float %1183, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1466 = extractvalue %dx.types.ResRet.f32 %1465, 0
  %1467 = extractvalue %dx.types.ResRet.f32 %1465, 1
  %1468 = extractvalue %dx.types.ResRet.f32 %1465, 2
  %1469 = and i32 %1363, 65535
  %1470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1469)  ; LegacyF16ToF32(value)
  %1471 = fmul fast float %1466, %1064
  %1472 = fmul fast float %1467, %1065
  %1473 = fmul fast float %1468, %1066
  %1474 = and i32 %1079, 16384
  %1475 = icmp ne i32 %1474, 0
  %1476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1477 = extractvalue %dx.types.CBufRet.f32 %1476, 0
  %1478 = select i1 %1475, float %1477, float 1.000000e+00
  %1479 = fmul fast float %1478, %1470
  %1480 = fmul fast float %1471, %1479
  %1481 = fmul fast float %1472, %1479
  %1482 = fmul fast float %1473, %1479
  br label %1483

; <label>:1483                                    ; preds = %1462, %1434
  %1484 = phi float [ %1480, %1462 ], [ 0.000000e+00, %1434 ]
  %1485 = phi float [ %1481, %1462 ], [ 0.000000e+00, %1434 ]
  %1486 = phi float [ %1482, %1462 ], [ 0.000000e+00, %1434 ]
  %1487 = fsub fast float %1484, %1009
  %1488 = fsub fast float %1485, %1010
  %1489 = fsub fast float %1486, %1011
  %1490 = fmul fast float %1487, %1231
  %1491 = fmul fast float %1488, %1231
  %1492 = fmul fast float %1489, %1231
  %1493 = fadd fast float %1490, %1009
  %1494 = fadd fast float %1491, %1010
  %1495 = fadd fast float %1492, %1011
  br label %1128

; <label>:1496                                    ; preds = %1128
  br label %1497

; <label>:1497                                    ; preds = %1496, %886
  %1498 = phi float [ 0.000000e+00, %886 ], [ %1129, %1496 ]
  %1499 = phi float [ %908, %886 ], [ %1130, %1496 ]
  %1500 = phi float [ %906, %886 ], [ %1131, %1496 ]
  %1501 = phi float [ %898, %886 ], [ %1132, %1496 ]
  %1502 = phi float [ %899, %886 ], [ %1133, %1496 ]
  %1503 = phi float [ %900, %886 ], [ %1134, %1496 ]
  %1504 = phi float [ 0.000000e+00, %886 ], [ %1135, %1496 ]
  %1505 = phi float [ 0.000000e+00, %886 ], [ %1136, %1496 ]
  %1506 = phi float [ %895, %886 ], [ %1137, %1496 ]
  %1507 = phi float [ %896, %886 ], [ %1138, %1496 ]
  %1508 = phi float [ %897, %886 ], [ %1139, %1496 ]
  %1509 = phi float [ %892, %886 ], [ %1140, %1496 ]
  %1510 = phi float [ %893, %886 ], [ %1141, %1496 ]
  %1511 = phi float [ %894, %886 ], [ %1142, %1496 ]
  %1512 = phi float [ %940, %886 ], [ %1143, %1496 ]
  %1513 = phi float [ %941, %886 ], [ %1144, %1496 ]
  %1514 = phi float [ %942, %886 ], [ %1145, %1496 ]
  %1515 = phi float [ %904, %886 ], [ %1146, %1496 ]
  %1516 = phi float [ %903, %886 ], [ %1147, %1496 ]
  %1517 = phi float [ 0.000000e+00, %886 ], [ %1148, %1496 ]
  %1518 = phi float [ %901, %886 ], [ %1149, %1496 ]
  %1519 = phi float [ %889, %886 ], [ %1150, %1496 ]
  %1520 = phi float [ %890, %886 ], [ %1151, %1496 ]
  %1521 = phi float [ %891, %886 ], [ %1152, %1496 ]
  %1522 = call float @dx.op.dot3.f32(i32 55, float %1512, float %1513, float %1514, float %1512, float %1513, float %1514)  ; Dot3(ax,ay,az,bx,by,bz)
  %1523 = call float @dx.op.unary.f32(i32 25, float %1522)  ; Rsqrt(value)
  %1524 = fmul fast float %1523, %1512
  %1525 = fmul fast float %1523, %1513
  %1526 = fmul fast float %1523, %1514
  %1527 = fadd fast float %1517, %902
  %1528 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1529 = call float @dx.op.dot3.f32(i32 55, float %1524, float %1525, float %1526, float %1524, float %1525, float %1526)  ; Dot3(ax,ay,az,bx,by,bz)
  %1530 = call float @dx.op.unary.f32(i32 25, float %1529)  ; Rsqrt(value)
  %1531 = fmul fast float %1530, %1524
  %1532 = fmul fast float %1530, %1525
  %1533 = fmul fast float %1530, %1526
  %1534 = fadd fast float %1518, 0xBFB99999A0000000
  %1535 = call float @dx.op.unary.f32(i32 7, float %1534)  ; Saturate(value)
  %1536 = fmul fast float %1535, 0x3FF1C71C80000000
  %1537 = call float @dx.op.binary.f32(i32 36, float %1518, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1538 = fsub fast float 1.000000e+00, %1536
  %1539 = call float @dx.op.unary.f32(i32 7, float %1538)  ; Saturate(value)
  %1540 = fmul fast float %1539, %1519
  %1541 = fmul fast float %1539, %1520
  %1542 = fmul fast float %1539, %1521
  %1543 = call float @dx.op.unary.f32(i32 7, float %1540)  ; Saturate(value)
  %1544 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  %1545 = call float @dx.op.unary.f32(i32 7, float %1542)  ; Saturate(value)
  %1546 = fmul fast float %1536, %1519
  %1547 = fmul fast float %1536, %1520
  %1548 = fmul fast float %1536, %1521
  %1549 = fadd fast float %1546, %1537
  %1550 = fadd fast float %1547, %1537
  %1551 = fadd fast float %1548, %1537
  %1552 = call float @dx.op.unary.f32(i32 7, float %1549)  ; Saturate(value)
  %1553 = call float @dx.op.unary.f32(i32 7, float %1550)  ; Saturate(value)
  %1554 = call float @dx.op.unary.f32(i32 7, float %1551)  ; Saturate(value)
  %1555 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = and i32 %1557, 1
  %1559 = icmp eq i32 %1558, 0
  br i1 %1559, label %1574, label %1560

; <label>:1560                                    ; preds = %1497
  %1561 = call float @dx.op.binary.f32(i32 35, float %1544, float %1545)  ; FMax(a,b)
  %1562 = call float @dx.op.binary.f32(i32 35, float %1543, float %1561)  ; FMax(a,b)
  %1563 = fcmp fast ogt float %1562, 0.000000e+00
  %1564 = bitcast float %1562 to i32
  %1565 = sub nsw i32 2129859010, %1564
  %1566 = bitcast i32 %1565 to float
  %1567 = select i1 %1563, float %1566, float 0.000000e+00
  %1568 = fmul fast float %1543, %1506
  %1569 = fmul fast float %1544, %1507
  %1570 = fmul fast float %1545, %1508
  %1571 = fmul fast float %1568, %1567
  %1572 = fmul fast float %1569, %1567
  %1573 = fmul fast float %1570, %1567
  br label %1574

; <label>:1574                                    ; preds = %1560, %1497
  %1575 = phi float [ %1571, %1560 ], [ %1506, %1497 ]
  %1576 = phi float [ %1572, %1560 ], [ %1507, %1497 ]
  %1577 = phi float [ %1573, %1560 ], [ %1508, %1497 ]
  %1578 = call float @dx.op.binary.f32(i32 36, float %1501, float 1.270000e+02)  ; FMin(a,b)
  %1579 = call float @dx.op.binary.f32(i32 36, float %1502, float 1.270000e+02)  ; FMin(a,b)
  %1580 = call float @dx.op.binary.f32(i32 36, float %1503, float 1.270000e+02)  ; FMin(a,b)
  %1581 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1582 = extractvalue %dx.types.CBufRet.i32 %1581, 3
  %1583 = and i32 %1582, 8
  %1584 = icmp ne i32 %1583, 0
  %1585 = call float @dx.op.binary.f32(i32 35, float %1543, float %1519)  ; FMax(a,b)
  %1586 = call float @dx.op.binary.f32(i32 35, float %1544, float %1519)  ; FMax(a,b)
  %1587 = call float @dx.op.binary.f32(i32 35, float %1545, float %1519)  ; FMax(a,b)
  %1588 = call float @dx.op.dot3.f32(i32 55, float %1543, float %1544, float %1545, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1589 = select i1 %204, float %1519, float %1543
  %1590 = select i1 %204, float %1588, float %1544
  %1591 = select i1 %204, float 1.000000e+00, float %1545
  %1592 = select i1 %1584, float %1585, float %1589
  %1593 = select i1 %1584, float %1586, float %1590
  %1594 = select i1 %1584, float %1587, float %1591
  %1595 = call float @dx.op.dot3.f32(i32 55, float %1575, float %1576, float %1577, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1596 = select i1 %204, float %1595, float %1575
  %1597 = select i1 %204, float %1595, float %1576
  %1598 = select i1 %204, float %1595, float %1577
  %1599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1600 = extractvalue %dx.types.CBufRet.f32 %1599, 0
  %1601 = extractvalue %dx.types.CBufRet.f32 %1599, 1
  %1602 = extractvalue %dx.types.CBufRet.f32 %1599, 2
  %1603 = fadd fast float %1600, %142
  %1604 = fadd fast float %1601, %143
  %1605 = fadd fast float %1602, %144
  %1606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1607 = extractvalue %dx.types.CBufRet.f32 %1606, 0
  %1608 = extractvalue %dx.types.CBufRet.f32 %1606, 1
  %1609 = fsub fast float %1603, %1607
  %1610 = fsub fast float %1604, %1608
  %1611 = fmul fast float %1609, %1609
  %1612 = fmul fast float %1610, %1610
  %1613 = fadd fast float %1611, %1612
  %1614 = call float @dx.op.unary.f32(i32 24, float %1613)  ; Sqrt(value)
  %1615 = extractvalue %dx.types.CBufRet.f32 %1606, 2
  %1616 = fcmp fast olt float %1614, %1615
  br i1 %1616, label %1617, label %1684

; <label>:1617                                    ; preds = %1574
  %1618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1619 = extractvalue %dx.types.CBufRet.f32 %1618, 0
  %1620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1621 = extractvalue %dx.types.CBufRet.f32 %1620, 0
  %1622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1622, 0
  %1624 = extractvalue %dx.types.CBufRet.f32 %1618, 1
  %1625 = extractvalue %dx.types.CBufRet.f32 %1620, 1
  %1626 = extractvalue %dx.types.CBufRet.f32 %1622, 1
  %1627 = extractvalue %dx.types.CBufRet.f32 %1618, 3
  %1628 = extractvalue %dx.types.CBufRet.f32 %1620, 3
  %1629 = extractvalue %dx.types.CBufRet.f32 %1622, 3
  %1630 = fadd fast float %1627, %1603
  %1631 = fadd fast float %1628, %1604
  %1632 = fadd fast float %1629, %1605
  %1633 = fmul fast float %1630, %1619
  %1634 = call float @dx.op.tertiary.f32(i32 46, float %1631, float %1621, float %1633)  ; FMad(a,b,c)
  %1635 = call float @dx.op.tertiary.f32(i32 46, float %1632, float %1623, float %1634)  ; FMad(a,b,c)
  %1636 = fmul fast float %1630, %1624
  %1637 = call float @dx.op.tertiary.f32(i32 46, float %1631, float %1625, float %1636)  ; FMad(a,b,c)
  %1638 = call float @dx.op.tertiary.f32(i32 46, float %1632, float %1626, float %1637)  ; FMad(a,b,c)
  %1639 = fsub fast float %1635, %1627
  %1640 = fsub fast float %1638, %1628
  %1641 = fsub fast float %1639, %1607
  %1642 = fadd fast float %1641, %1615
  %1643 = fsub fast float %1640, %1608
  %1644 = fadd fast float %1643, %1615
  %1645 = extractvalue %dx.types.CBufRet.f32 %1606, 3
  %1646 = fmul fast float %1642, %1645
  %1647 = fmul fast float %1644, %1645
  %1648 = call float @dx.op.unary.f32(i32 7, float %1646)  ; Saturate(value)
  %1649 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1650 = fsub fast float 1.000000e+00, %1648
  %1651 = fsub fast float 1.000000e+00, %1649
  %1652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %50, float %1650, float %1651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1653 = extractvalue %dx.types.ResRet.f32 %1652, 0
  %1654 = fcmp fast ugt float %1653, 0.000000e+00
  br i1 %1654, label %1655, label %1958

; <label>:1655                                    ; preds = %1617
  %1656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.f32 %1656, 2
  %1658 = fmul fast float %1657, %1653
  %1659 = extractvalue %dx.types.CBufRet.f32 %1656, 3
  %1660 = fadd fast float %1659, %1658
  %1661 = extractvalue %dx.types.CBufRet.f32 %1622, 2
  %1662 = fadd fast float %1660, %1629
  %1663 = fmul fast float %1635, %1623
  %1664 = call float @dx.op.tertiary.f32(i32 46, float %1638, float %1626, float %1663)  ; FMad(a,b,c)
  %1665 = call float @dx.op.tertiary.f32(i32 46, float %1662, float %1661, float %1664)  ; FMad(a,b,c)
  %1666 = fsub fast float %1665, %1629
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 2
  %1669 = fsub fast float %1666, %1668
  %1670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %1650, float %1651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1671 = extractvalue %dx.types.ResRet.f32 %1670, 0
  %1672 = extractvalue %dx.types.ResRet.f32 %1670, 1
  %1673 = extractvalue %dx.types.ResRet.f32 %1670, 2
  %1674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %1650, float %1651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1675 = extractvalue %dx.types.ResRet.f32 %1674, 0
  %1676 = extractvalue %dx.types.ResRet.f32 %1674, 1
  %1677 = extractvalue %dx.types.ResRet.f32 %1674, 2
  %1678 = fadd fast float %1675, %1671
  %1679 = fmul fast float %1678, 0x3F847AE140000000
  %1680 = fadd fast float %1676, %1672
  %1681 = fmul fast float %1680, 0x3F847AE140000000
  %1682 = fadd fast float %1677, %1673
  %1683 = fmul fast float %1682, 0x3F847AE140000000
  br label %1958

; <label>:1684                                    ; preds = %1574
  %1685 = and i32 %180, 1
  %1686 = icmp eq i32 %1685, 0
  br i1 %1686, label %1958, label %1687

; <label>:1687                                    ; preds = %1684
  %1688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1689 = extractvalue %dx.types.CBufRet.f32 %1688, 0
  %1690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1691 = extractvalue %dx.types.CBufRet.f32 %1690, 0
  %1692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1693 = extractvalue %dx.types.CBufRet.f32 %1692, 0
  %1694 = extractvalue %dx.types.CBufRet.f32 %1688, 1
  %1695 = extractvalue %dx.types.CBufRet.f32 %1690, 1
  %1696 = extractvalue %dx.types.CBufRet.f32 %1692, 1
  %1697 = extractvalue %dx.types.CBufRet.f32 %1688, 3
  %1698 = extractvalue %dx.types.CBufRet.f32 %1690, 3
  %1699 = extractvalue %dx.types.CBufRet.f32 %1692, 3
  %1700 = fadd fast float %1697, %1603
  %1701 = fadd fast float %1698, %1604
  %1702 = fadd fast float %1699, %1605
  %1703 = fmul fast float %1700, %1689
  %1704 = call float @dx.op.tertiary.f32(i32 46, float %1701, float %1691, float %1703)  ; FMad(a,b,c)
  %1705 = call float @dx.op.tertiary.f32(i32 46, float %1702, float %1693, float %1704)  ; FMad(a,b,c)
  %1706 = fmul fast float %1700, %1694
  %1707 = call float @dx.op.tertiary.f32(i32 46, float %1701, float %1695, float %1706)  ; FMad(a,b,c)
  %1708 = call float @dx.op.tertiary.f32(i32 46, float %1702, float %1696, float %1707)  ; FMad(a,b,c)
  %1709 = fsub fast float %1705, %1697
  %1710 = fsub fast float %1708, %1698
  %1711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1712 = extractvalue %dx.types.CBufRet.f32 %1711, 0
  %1713 = extractvalue %dx.types.CBufRet.f32 %1711, 1
  %1714 = extractvalue %dx.types.CBufRet.f32 %1711, 2
  %1715 = extractvalue %dx.types.CBufRet.f32 %1711, 3
  %1716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1717 = extractvalue %dx.types.CBufRet.f32 %1716, 3
  %1718 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1719 = extractvalue %dx.types.CBufRet.i32 %1718, 0
  %1720 = extractvalue %dx.types.CBufRet.i32 %1718, 1
  %1721 = udiv i32 %1720, %1719
  %1722 = fsub fast float %1709, %1712
  %1723 = fsub fast float %1710, %1713
  %1724 = call float @dx.op.binary.f32(i32 35, float %1722, float 0.000000e+00)  ; FMax(a,b)
  %1725 = call float @dx.op.binary.f32(i32 35, float %1723, float 0.000000e+00)  ; FMax(a,b)
  %1726 = call float @dx.op.binary.f32(i32 36, float %1724, float %1714)  ; FMin(a,b)
  %1727 = call float @dx.op.binary.f32(i32 36, float %1725, float %1715)  ; FMin(a,b)
  %1728 = add i32 %1719, -1
  %1729 = add i32 %1721, -1
  %1730 = fmul fast float %1726, %1717
  %1731 = fmul fast float %1727, %1717
  %1732 = fptoui float %1730 to i32
  %1733 = fptoui float %1731 to i32
  %1734 = call i32 @dx.op.binary.i32(i32 40, i32 %1732, i32 %1728)  ; UMin(a,b)
  %1735 = call i32 @dx.op.binary.i32(i32 40, i32 %1733, i32 %1729)  ; UMin(a,b)
  %1736 = mul i32 %1735, %1719
  %1737 = add i32 %1736, %1734
  %1738 = shl i32 %1737, 2
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = icmp eq i32 %1740, -1
  br i1 %1741, label %1958, label %1742

; <label>:1742                                    ; preds = %1687
  %1743 = mul i32 %1740, 148
  %1744 = add i32 %1743, 4
  %1745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1744, i32 undef)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.f32 %1745, 0
  %1747 = add i32 %1743, 8
  %1748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.f32 %1748, 0
  %1750 = add i32 %1743, 36
  %1751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.f32 %1751, 0
  %1753 = add i32 %1743, 60
  %1754 = add i32 %1743, 92
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = add i32 %1743, 116
  %1758 = fsub fast float %1709, %1746
  %1759 = fsub fast float %1710, %1749
  %1760 = fmul fast float %1717, %1758
  %1761 = fmul fast float %1717, %1759
  %1762 = call float @dx.op.unary.f32(i32 7, float %1760)  ; Saturate(value)
  %1763 = call float @dx.op.unary.f32(i32 7, float %1761)  ; Saturate(value)
  %1764 = fsub fast float 1.000000e+00, %1763
  %1765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1766 = extractvalue %dx.types.CBufRet.f32 %1765, 2
  %1767 = call float @dx.op.unary.f32(i32 83, float %1762)  ; DerivCoarseX(value)
  %1768 = call float @dx.op.unary.f32(i32 83, float %1764)  ; DerivCoarseX(value)
  %1769 = call float @dx.op.unary.f32(i32 84, float %1762)  ; DerivCoarseY(value)
  %1770 = call float @dx.op.unary.f32(i32 84, float %1764)  ; DerivCoarseY(value)
  %1771 = fmul fast float %1767, %1766
  %1772 = fmul fast float %1768, %1766
  %1773 = fmul fast float %1769, %1766
  %1774 = fmul fast float %1770, %1766
  %1775 = call float @dx.op.dot2.f32(i32 54, float %1773, float %1774, float %1773, float %1774)  ; Dot2(ax,ay,bx,by)
  %1776 = call float @dx.op.dot2.f32(i32 54, float %1771, float %1772, float %1771, float %1772)  ; Dot2(ax,ay,bx,by)
  %1777 = call float @dx.op.binary.f32(i32 35, float %1776, float %1775)  ; FMax(a,b)
  %1778 = call float @dx.op.unary.f32(i32 23, float %1777)  ; Log(value)
  %1779 = fmul fast float %1778, 5.000000e-01
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 1
  %1782 = fadd fast float %1781, %1779
  %1783 = call float @dx.op.binary.f32(i32 35, float %1782, float 0.000000e+00)  ; FMax(a,b)
  %1784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1784, 3
  %1786 = fadd fast float %1785, %1783
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 3
  %1789 = fadd fast float %1786, %1788
  %1790 = add i32 %1756, 0
  %1791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1790, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1792 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1791, i32 0)  ; GetDimensions(handle,mipLevel)
  %1793 = extractvalue %dx.types.Dimensions %1792, 0
  %1794 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1793)  ; FirstbitLo(value)
  %1795 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1796 = extractvalue %dx.types.CBufRet.i32 %1795, 1
  %1797 = sub nsw i32 %1796, %1794
  %1798 = sitofp i32 %1797 to float
  %1799 = fsub fast float %1789, %1798
  %1800 = call float @dx.op.binary.f32(i32 35, float %1799, float 0.000000e+00)  ; FMax(a,b)
  %1801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1791, %dx.types.Handle %48, float %1762, float %1764, float %1752, float undef, i32 0, i32 0, i32 undef, float %1800)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1802 = extractvalue %dx.types.ResRet.f32 %1801, 0
  %1803 = fcmp ule float %1802, 0x3FE0101020000000
  %1804 = extractvalue %dx.types.CBufRet.i32 %1795, 0
  %1805 = and i32 %1804, 128
  %1806 = icmp ne i32 %1805, 0
  %1807 = and i1 %1803, %1806
  br i1 %1807, label %1958, label %1808

; <label>:1808                                    ; preds = %1742
  %1809 = add i32 %1743, 20
  %1810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.f32 %1810, 0
  %1812 = add i32 %1743, 24
  %1813 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1812, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.f32 %1813, 0
  %1815 = add i32 %1743, 40
  %1816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.f32 %1816, 0
  %1818 = add i32 %1743, 96
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1822 = extractvalue %dx.types.CBufRet.f32 %1821, 2
  %1823 = fmul fast float %1822, %1762
  %1824 = fmul fast float %1822, %1764
  %1825 = extractvalue %dx.types.CBufRet.f32 %1821, 3
  %1826 = fadd fast float %1823, %1825
  %1827 = fadd fast float %1824, %1825
  %1828 = add i32 %1820, 0
  %1829 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1828, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1830 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1829, i32 0)  ; GetDimensions(handle,mipLevel)
  %1831 = extractvalue %dx.types.Dimensions %1830, 0
  %1832 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1831)  ; FirstbitLo(value)
  %1833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1834 = extractvalue %dx.types.CBufRet.i32 %1833, 1
  %1835 = sub nsw i32 %1834, %1832
  %1836 = sitofp i32 %1835 to float
  %1837 = fsub fast float %1786, %1836
  %1838 = call float @dx.op.binary.f32(i32 35, float %1837, float 0.000000e+00)  ; FMax(a,b)
  %1839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1829, %dx.types.Handle %48, float %1826, float %1827, float %1817, float undef, i32 0, i32 0, i32 undef, float %1838)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1840 = extractvalue %dx.types.ResRet.f32 %1839, 0
  %1841 = fmul fast float %1840, %1811
  %1842 = fadd fast float %1841, %1814
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 0
  %1845 = extractvalue %dx.types.CBufRet.f32 %1843, 1
  %1846 = extractvalue %dx.types.CBufRet.f32 %1843, 2
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 3
  %1849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1850 = extractvalue %dx.types.CBufRet.f32 %1849, 3
  %1851 = extractvalue %dx.types.CBufRet.f32 %1843, 3
  %1852 = fadd fast float %1848, %1709
  %1853 = fadd fast float %1850, %1710
  %1854 = fadd fast float %1842, %1851
  %1855 = fmul fast float %1852, %1844
  %1856 = call float @dx.op.tertiary.f32(i32 46, float %1853, float %1845, float %1855)  ; FMad(a,b,c)
  %1857 = call float @dx.op.tertiary.f32(i32 46, float %1854, float %1846, float %1856)  ; FMad(a,b,c)
  %1858 = fsub fast float %1857, %1851
  %1859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.f32 %1859, 2
  %1861 = fsub fast float %1858, %1860
  %1862 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1863 = extractvalue %dx.types.CBufRet.i32 %1862, 0
  %1864 = call i32 @dx.op.binary.i32(i32 40, i32 %1740, i32 %1863)  ; UMin(a,b)
  %1865 = mul i32 %1864, 36
  %1866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.i32 %1866, 0
  %1868 = add i32 %1865, 4
  %1869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1870 = extractvalue %dx.types.CBufRet.f32 %1869, 0
  %1871 = fmul fast float %1870, %1762
  %1872 = fmul fast float %1870, %1764
  %1873 = extractvalue %dx.types.CBufRet.f32 %1869, 1
  %1874 = fadd fast float %1871, %1873
  %1875 = fadd fast float %1872, %1873
  %1876 = icmp eq i32 %1867, 0
  br i1 %1876, label %1945, label %1877

; <label>:1877                                    ; preds = %1808
  br label %1878

; <label>:1878                                    ; preds = %1935, %1877
  %1879 = phi float [ %1936, %1935 ], [ 0.000000e+00, %1877 ]
  %1880 = phi float [ %1937, %1935 ], [ 0.000000e+00, %1877 ]
  %1881 = phi float [ %1938, %1935 ], [ 0.000000e+00, %1877 ]
  %1882 = phi float [ %1939, %1935 ], [ 0.000000e+00, %1877 ]
  %1883 = phi float [ %1940, %1935 ], [ 0.000000e+00, %1877 ]
  %1884 = phi float [ %1941, %1935 ], [ 0.000000e+00, %1877 ]
  %1885 = phi i32 [ %1942, %1935 ], [ 0, %1877 ]
  %1886 = shl i32 %1885, 2
  %1887 = add i32 %1753, %1886
  %1888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.f32 %1888, 0
  %1890 = add i32 %1757, %1886
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = add i32 %1892, 0
  %1894 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1893, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1895 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1894, i32 0)  ; GetDimensions(handle,mipLevel)
  %1896 = extractvalue %dx.types.Dimensions %1895, 0
  %1897 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1896)  ; FirstbitLo(value)
  %1898 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1899 = extractvalue %dx.types.CBufRet.i32 %1898, 1
  %1900 = sub nsw i32 %1899, %1897
  %1901 = sitofp i32 %1900 to float
  %1902 = fsub fast float %1786, %1901
  %1903 = call float @dx.op.binary.f32(i32 35, float %1902, float 0.000000e+00)  ; FMax(a,b)
  %1904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1894, %dx.types.Handle %48, float %1874, float %1875, float %1889, float undef, i32 0, i32 0, i32 undef, float %1903)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1905 = extractvalue %dx.types.ResRet.f32 %1904, 0
  %1906 = fcmp fast ogt float %1905, 0.000000e+00
  br i1 %1906, label %1907, label %1935

; <label>:1907                                    ; preds = %1878
  %1908 = add i32 %1868, %1886
  %1909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1910 = extractvalue %dx.types.ResRet.i32 %1909, 0
  %1911 = and i32 %1910, 32767
  %1912 = mul nuw nsw i32 %1911, 928
  %1913 = add nuw nsw i32 %1912, 48
  %1914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1915 = extractvalue %dx.types.ResRet.f32 %1914, 0
  %1916 = extractvalue %dx.types.ResRet.f32 %1914, 1
  %1917 = extractvalue %dx.types.ResRet.f32 %1914, 2
  %1918 = add nuw nsw i32 %1912, 60
  %1919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.f32 %1919, 0
  %1921 = extractvalue %dx.types.ResRet.f32 %1919, 1
  %1922 = extractvalue %dx.types.ResRet.f32 %1919, 2
  %1923 = fmul fast float %1915, %1905
  %1924 = fmul fast float %1916, %1905
  %1925 = fmul fast float %1917, %1905
  %1926 = fadd fast float %1923, %1879
  %1927 = fadd fast float %1924, %1880
  %1928 = fadd fast float %1925, %1881
  %1929 = fmul fast float %1920, %1905
  %1930 = fmul fast float %1921, %1905
  %1931 = fmul fast float %1922, %1905
  %1932 = fadd fast float %1929, %1882
  %1933 = fadd fast float %1930, %1883
  %1934 = fadd fast float %1931, %1884
  br label %1935

; <label>:1935                                    ; preds = %1907, %1878
  %1936 = phi float [ %1926, %1907 ], [ %1879, %1878 ]
  %1937 = phi float [ %1927, %1907 ], [ %1880, %1878 ]
  %1938 = phi float [ %1928, %1907 ], [ %1881, %1878 ]
  %1939 = phi float [ %1932, %1907 ], [ %1882, %1878 ]
  %1940 = phi float [ %1933, %1907 ], [ %1883, %1878 ]
  %1941 = phi float [ %1934, %1907 ], [ %1884, %1878 ]
  %1942 = add nuw i32 %1885, 1
  %1943 = icmp eq i32 %1942, %1867
  br i1 %1943, label %1944, label %1878

; <label>:1944                                    ; preds = %1935
  br label %1945

; <label>:1945                                    ; preds = %1944, %1808
  %1946 = phi float [ 0.000000e+00, %1808 ], [ %1936, %1944 ]
  %1947 = phi float [ 0.000000e+00, %1808 ], [ %1937, %1944 ]
  %1948 = phi float [ 0.000000e+00, %1808 ], [ %1938, %1944 ]
  %1949 = phi float [ 0.000000e+00, %1808 ], [ %1939, %1944 ]
  %1950 = phi float [ 0.000000e+00, %1808 ], [ %1940, %1944 ]
  %1951 = phi float [ 0.000000e+00, %1808 ], [ %1941, %1944 ]
  %1952 = fadd fast float %1949, %1946
  %1953 = fmul fast float %1952, 0x3F847AE140000000
  %1954 = fadd fast float %1950, %1947
  %1955 = fmul fast float %1954, 0x3F847AE140000000
  %1956 = fadd fast float %1951, %1948
  %1957 = fmul fast float %1956, 0x3F847AE140000000
  br label %1958

; <label>:1958                                    ; preds = %1945, %1742, %1687, %1684, %1655, %1617
  %1959 = phi float [ %1669, %1655 ], [ -1.310720e+05, %1617 ], [ %1861, %1945 ], [ -1.310720e+05, %1687 ], [ -1.310720e+05, %1742 ], [ -1.310720e+05, %1684 ]
  %1960 = phi float [ %1679, %1655 ], [ 0.000000e+00, %1617 ], [ %1953, %1945 ], [ 0.000000e+00, %1687 ], [ 0.000000e+00, %1742 ], [ 0.000000e+00, %1684 ]
  %1961 = phi float [ %1681, %1655 ], [ 0.000000e+00, %1617 ], [ %1955, %1945 ], [ 0.000000e+00, %1687 ], [ 0.000000e+00, %1742 ], [ 0.000000e+00, %1684 ]
  %1962 = phi float [ %1683, %1655 ], [ 0.000000e+00, %1617 ], [ %1957, %1945 ], [ 0.000000e+00, %1687 ], [ 0.000000e+00, %1742 ], [ 0.000000e+00, %1684 ]
  %1963 = phi i1 [ true, %1655 ], [ false, %1617 ], [ true, %1945 ], [ false, %1687 ], [ false, %1742 ], [ false, %1684 ]
  %1964 = and i32 %180, 3
  %1965 = icmp eq i32 %1964, 1
  %1966 = select i1 %1965, float 1.000000e+00, float 0.000000e+00
  %1967 = fsub fast float %1959, %144
  %1968 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1969 = select i1 %1963, float %1968, float 1.000000e+00
  %1970 = fmul fast float %1969, %1966
  %1971 = icmp eq i32 %1964, 3
  %1972 = select i1 %1971, float 1.000000e+00, float %1970
  %1973 = call float @dx.op.binary.f32(i32 35, float %1498, float %1972)  ; FMax(a,b)
  %1974 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  %1975 = fcmp fast une float %1974, 0.000000e+00
  %1976 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %142, float %143, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %1977 = call float @dx.op.unary.f32(i32 25, float %1976)  ; Rsqrt(value)
  br i1 %1975, label %1985, label %1978

; <label>:1978                                    ; preds = %1958
  %1979 = fmul fast float %1977, %142
  %1980 = fmul fast float %1977, %143
  %1981 = fmul fast float %1977, %144
  %1982 = fsub fast float -0.000000e+00, %1979
  %1983 = fsub fast float -0.000000e+00, %1980
  %1984 = fsub fast float -0.000000e+00, %1981
  br label %2153

; <label>:1985                                    ; preds = %1958
  %1986 = fmul fast float %142, %1977
  %1987 = fsub fast float -0.000000e+00, %1986
  %1988 = fmul fast float %143, %1977
  %1989 = fsub fast float -0.000000e+00, %1988
  %1990 = fmul fast float %144, %1977
  %1991 = fsub fast float -0.000000e+00, %1990
  %1992 = call float @dx.op.dot3.f32(i32 55, float %1987, float %1989, float %1991, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %1993 = fmul fast float %1974, 2.500000e+00
  %1994 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1995 = fmul fast float %1974, 0x4013FFFFE0000000
  %1996 = fadd fast float %1995, 0xBFFFFFFFE0000000
  %1997 = call float @dx.op.unary.f32(i32 7, float %1996)  ; Saturate(value)
  %1998 = fmul fast float %1974, 0x4004000020000000
  %1999 = fadd fast float %1998, 0xBFF8000040000000
  %2000 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2001 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %2002 = fmul fast float %1534, 1.000000e+01
  %2003 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  %2004 = fmul fast float %2003, 2.000000e+00
  %2005 = fsub fast float 3.000000e+00, %2004
  %2006 = fmul fast float %2003, %2003
  %2007 = fmul fast float %2006, %2005
  %2008 = fsub fast float 1.000000e+00, %2007
  %2009 = fsub fast float 0x3FE3333340000000, %1555
  %2010 = fmul fast float %2009, 0x400AAAAAA0000000
  %2011 = call float @dx.op.unary.f32(i32 7, float %2010)  ; Saturate(value)
  %2012 = fmul fast float %2008, %2011
  %2013 = fmul fast float %1592, 0x3FEA2B8620000000
  %2014 = fmul fast float %1593, 0x3FEA2B8620000000
  %2015 = fmul fast float %1594, 0x3FEA2B8620000000
  %2016 = fadd fast float %2013, 0x3FC81DFBA0000000
  %2017 = fmul fast float %2016, %1592
  %2018 = fadd fast float %2017, 0x3F910E6020000000
  %2019 = fadd fast float %2014, 0x3FC81DFBA0000000
  %2020 = fmul fast float %2019, %1593
  %2021 = fadd fast float %2020, 0x3F910E6020000000
  %2022 = fadd fast float %2015, 0x3FC81DFBA0000000
  %2023 = fmul fast float %2022, %1594
  %2024 = fadd fast float %2023, 0x3F910E6020000000
  %2025 = call float @dx.op.unary.f32(i32 7, float %2018)  ; Saturate(value)
  %2026 = call float @dx.op.unary.f32(i32 7, float %2021)  ; Saturate(value)
  %2027 = call float @dx.op.unary.f32(i32 7, float %2024)  ; Saturate(value)
  %2028 = fsub fast float %2025, %1592
  %2029 = fsub fast float %2026, %1593
  %2030 = fsub fast float %2027, %1594
  %2031 = fmul fast float %2028, %2001
  %2032 = fmul fast float %2031, %2012
  %2033 = fmul fast float %2029, %2001
  %2034 = fmul fast float %2033, %2012
  %2035 = fmul fast float %2030, %2001
  %2036 = fmul fast float %2035, %2012
  %2037 = fadd fast float %2032, %1592
  %2038 = fadd fast float %2034, %1593
  %2039 = fadd fast float %2036, %1594
  %2040 = fmul fast float %1515, %1515
  %2041 = fmul fast float %2040, %2040
  %2042 = fadd fast float %1997, 1.000000e+00
  %2043 = fsub fast float %2042, %2012
  %2044 = call float @dx.op.unary.f32(i32 7, float %2043)  ; Saturate(value)
  %2045 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2046 = call float @dx.op.unary.f32(i32 7, float %2045)  ; Saturate(value)
  %2047 = fsub fast float 1.000000e+00, %2041
  %2048 = call float @dx.op.binary.f32(i32 36, float %2044, float %2047)  ; FMin(a,b)
  %2049 = call float @dx.op.unary.f32(i32 7, float %2000)  ; Saturate(value)
  %2050 = call float @dx.op.binary.f32(i32 35, float %2048, float %2049)  ; FMax(a,b)
  %2051 = fadd fast float %2046, 0xBFE4CCCCC0000000
  %2052 = fmul fast float %2051, 0x4006DB6DA0000000
  %2053 = call float @dx.op.unary.f32(i32 7, float %2052)  ; Saturate(value)
  %2054 = fmul fast float %2053, 2.000000e+00
  %2055 = fsub fast float 3.000000e+00, %2054
  %2056 = bitcast float %1552 to i32
  %2057 = ashr i32 %2056, 1
  %2058 = add nsw i32 %2057, 532487669
  %2059 = bitcast i32 %2058 to float
  %2060 = fsub fast float 1.000000e+00, %2059
  %2061 = bitcast float %2060 to i32
  %2062 = sub nsw i32 2129859010, %2061
  %2063 = bitcast i32 %2062 to float
  %2064 = fmul fast float %2063, 2.000000e+00
  %2065 = bitcast float %1553 to i32
  %2066 = ashr i32 %2065, 1
  %2067 = add nsw i32 %2066, 532487669
  %2068 = bitcast i32 %2067 to float
  %2069 = fsub fast float 1.000000e+00, %2068
  %2070 = bitcast float %2069 to i32
  %2071 = sub nsw i32 2129859010, %2070
  %2072 = bitcast i32 %2071 to float
  %2073 = fmul fast float %2072, 2.000000e+00
  %2074 = bitcast float %1554 to i32
  %2075 = ashr i32 %2074, 1
  %2076 = add nsw i32 %2075, 532487669
  %2077 = bitcast i32 %2076 to float
  %2078 = fsub fast float 1.000000e+00, %2077
  %2079 = bitcast float %2078 to i32
  %2080 = sub nsw i32 2129859010, %2079
  %2081 = bitcast i32 %2080 to float
  %2082 = fmul fast float %2081, 2.000000e+00
  %2083 = fsub fast float 0x4002A9FBE0000000, %2064
  %2084 = fadd fast float %2064, 0x3FD54FDF00000000
  %2085 = bitcast float %2084 to i32
  %2086 = sub nsw i32 2129859010, %2085
  %2087 = bitcast i32 %2086 to float
  %2088 = fmul fast float %2087, %2083
  %2089 = fmul fast float %2088, %2088
  %2090 = fsub fast float 0x4002A9FBE0000000, %2073
  %2091 = fadd fast float %2073, 0x3FD54FDF00000000
  %2092 = bitcast float %2091 to i32
  %2093 = sub nsw i32 2129859010, %2092
  %2094 = bitcast i32 %2093 to float
  %2095 = fmul fast float %2094, %2090
  %2096 = fmul fast float %2095, %2095
  %2097 = fsub fast float 0x4002A9FBE0000000, %2082
  %2098 = fadd fast float %2082, 0x3FD54FDF00000000
  %2099 = bitcast float %2098 to i32
  %2100 = sub nsw i32 2129859010, %2099
  %2101 = bitcast i32 %2100 to float
  %2102 = fmul fast float %2101, %2097
  %2103 = fmul fast float %2102, %2102
  %2104 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2089)  ; FMax(a,b)
  %2105 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2096)  ; FMax(a,b)
  %2106 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2103)  ; FMax(a,b)
  %2107 = fsub fast float 1.000000e+00, %1992
  %2108 = fadd fast float %2107, %2008
  %2109 = call float @dx.op.unary.f32(i32 7, float %2108)  ; Saturate(value)
  %2110 = fsub fast float 1.000000e+00, %1972
  %2111 = fmul fast float %2050, %2110
  %2112 = fmul fast float %2053, %2053
  %2113 = fmul fast float %2112, %2111
  %2114 = fmul fast float %2113, %2055
  %2115 = fmul fast float %2110, 0xBFE99999A0000000
  %2116 = fmul fast float %2115, %2001
  %2117 = fmul fast float %2116, %2012
  %2118 = fadd fast float %2117, 1.000000e+00
  %2119 = fadd fast float %1555, -1.000000e+00
  %2120 = fmul fast float %2118, %2119
  %2121 = fadd fast float %2120, 1.000000e+00
  %2122 = fsub fast float %2104, %1552
  %2123 = fsub fast float %2105, %1553
  %2124 = fsub fast float %2106, %1554
  %2125 = fmul fast float %2114, %2122
  %2126 = fmul fast float %2114, %2123
  %2127 = fmul fast float %2114, %2124
  %2128 = fadd fast float %2125, %1552
  %2129 = fadd fast float %2126, %1553
  %2130 = fadd fast float %2127, %1554
  %2131 = fsub fast float %97, %1531
  %2132 = fsub fast float %98, %1532
  %2133 = fsub fast float %99, %1533
  %2134 = fmul fast float %2114, %2131
  %2135 = fmul fast float %2114, %2132
  %2136 = fmul fast float %2114, %2133
  %2137 = fadd fast float %2134, %1531
  %2138 = fadd fast float %2135, %1532
  %2139 = fadd fast float %2136, %1533
  %2140 = fmul fast float %2114, %2109
  %2141 = call float @dx.op.unary.f32(i32 7, float %2121)  ; Saturate(value)
  %2142 = fsub fast float 1.000000e+00, %2141
  %2143 = fmul fast float %2140, %2142
  %2144 = fadd fast float %2143, %2141
  %2145 = fsub fast float 1.000000e+00, %1515
  %2146 = fmul fast float %2114, %2145
  %2147 = fadd fast float %2146, %1515
  %2148 = call float @dx.op.dot3.f32(i32 55, float %2137, float %2138, float %2139, float %2137, float %2138, float %2139)  ; Dot3(ax,ay,az,bx,by,bz)
  %2149 = call float @dx.op.unary.f32(i32 25, float %2148)  ; Rsqrt(value)
  %2150 = fmul fast float %2137, %2149
  %2151 = fmul fast float %2138, %2149
  %2152 = fmul fast float %2139, %2149
  br label %2153

; <label>:2153                                    ; preds = %1985, %1978
  %2154 = phi float [ %1984, %1978 ], [ %1991, %1985 ]
  %2155 = phi float [ %1983, %1978 ], [ %1989, %1985 ]
  %2156 = phi float [ %1982, %1978 ], [ %1987, %1985 ]
  %2157 = phi float [ %1981, %1978 ], [ %1990, %1985 ]
  %2158 = phi float [ %1980, %1978 ], [ %1988, %1985 ]
  %2159 = phi float [ %1979, %1978 ], [ %1986, %1985 ]
  %2160 = phi float [ %1592, %1978 ], [ %2037, %1985 ]
  %2161 = phi float [ %1593, %1978 ], [ %2038, %1985 ]
  %2162 = phi float [ %1594, %1978 ], [ %2039, %1985 ]
  %2163 = phi float [ %1552, %1978 ], [ %2128, %1985 ]
  %2164 = phi float [ %1553, %1978 ], [ %2129, %1985 ]
  %2165 = phi float [ %1554, %1978 ], [ %2130, %1985 ]
  %2166 = phi float [ %1531, %1978 ], [ %2150, %1985 ]
  %2167 = phi float [ %1532, %1978 ], [ %2151, %1985 ]
  %2168 = phi float [ %1533, %1978 ], [ %2152, %1985 ]
  %2169 = phi float [ %1555, %1978 ], [ %2144, %1985 ]
  %2170 = phi float [ %1515, %1978 ], [ %2147, %1985 ]
  %2171 = fsub fast float -0.000000e+00, %144
  %2172 = select i1 %204, float 0.000000e+00, float %2165
  %2173 = call float @dx.op.dot3.f32(i32 55, float %2166, float %2167, float %2168, float %2156, float %2155, float %2154)  ; Dot3(ax,ay,az,bx,by,bz)
  %2174 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2175 = call float @dx.op.dot3.f32(i32 55, float %2159, float %2158, float %2157, float %2166, float %2167, float %2168)  ; Dot3(ax,ay,az,bx,by,bz)
  %2176 = fmul fast float %2175, 2.000000e+00
  %2177 = fmul fast float %2176, %2166
  %2178 = fmul fast float %2176, %2167
  %2179 = fmul fast float %2176, %2168
  %2180 = fsub fast float %2159, %2177
  %2181 = fsub fast float %2158, %2178
  %2182 = fsub fast float %2157, %2179
  %2183 = call float @dx.op.binary.f32(i32 36, float %2170, float 1.000000e+00)  ; FMin(a,b)
  %2184 = fsub fast float 1.000000e+00, %2183
  %2185 = bitcast float %2184 to i32
  %2186 = ashr i32 %2185, 1
  %2187 = add nsw i32 %2186, 532487669
  %2188 = bitcast i32 %2187 to float
  %2189 = fsub fast float 1.000000e+00, %2169
  %2190 = call float @dx.op.binary.f32(i32 35, float %2189, float 0x3F847AE140000000)  ; FMax(a,b)
  %2191 = fmul fast float %2190, %2190
  %2192 = fmul fast float %2191, %2191
  %2193 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %2188, float %2192, float %2193, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2195 = extractvalue %dx.types.ResRet.f32 %2194, 0
  %2196 = fsub fast float 1.000000e+00, %2170
  %2197 = bitcast float %2196 to i32
  %2198 = sub nsw i32 2129859010, %2197
  %2199 = call float @dx.op.dot3.f32(i32 55, float %66, float %62, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2200 = fmul fast float %2199, 0x3FD20DD760000000
  %2201 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  %2202 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %2203 = fcmp fast oeq float %2202, 0.000000e+00
  %2204 = fcmp fast oeq float %2201, 0.000000e+00
  %2205 = or i1 %2204, %2203
  br i1 %2205, label %2235, label %2206

; <label>:2206                                    ; preds = %2153
  %2207 = fsub fast float -0.000000e+00, %69
  %2208 = fsub fast float -0.000000e+00, %67
  %2209 = call float @dx.op.unary.f32(i32 24, float %2202)  ; Sqrt(value)
  %2210 = fdiv fast float %2209, %2201
  %2211 = fcmp fast ogt float %2210, 0x3FFB6F8900000000
  %2212 = select i1 %2211, float 0x3FFB6F8900000000, float %2210
  %2213 = fmul fast float %2212, 0x3FE8A23460000000
  %2214 = call float @dx.op.unary.f32(i32 7, float %2213)  ; Saturate(value)
  %2215 = call float @dx.op.binary.f32(i32 35, float %2212, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2216 = fmul fast float %2214, %2201
  %2217 = fmul fast float %2215, 0x3FF279A740000000
  %2218 = fadd fast float %2217, -1.000000e+00
  %2219 = call float @dx.op.dot3.f32(i32 55, float %2207, float %2208, float %68, float %2207, float %2208, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %2220 = call float @dx.op.unary.f32(i32 25, float %2219)  ; Rsqrt(value)
  %2221 = fmul fast float %2220, %2207
  %2222 = fmul fast float %2220, %2208
  %2223 = fmul fast float %2220, %68
  %2224 = fmul fast float %2218, %2218
  %2225 = fsub fast float 1.000000e+00, %2224
  %2226 = fmul fast float %2215, 0x40005F8BE0000000
  %2227 = fsub fast float 0x400C5BF8A0000000, %2226
  %2228 = fdiv fast float %2216, %2227
  %2229 = fmul fast float %2228, 0x3FEE31C3C0000000
  %2230 = fmul fast float %2229, %2225
  %2231 = fmul fast float %2215, 0x3FDACB7480000000
  %2232 = fadd fast float %2231, 0xBFD7347680000000
  %2233 = fmul fast float %2232, %2228
  %2234 = fmul fast float %2233, %2225
  br label %2235

; <label>:2235                                    ; preds = %2206, %2153
  %2236 = phi float [ %2221, %2206 ], [ 0.000000e+00, %2153 ]
  %2237 = phi float [ %2222, %2206 ], [ 0.000000e+00, %2153 ]
  %2238 = phi float [ %2223, %2206 ], [ 0.000000e+00, %2153 ]
  %2239 = phi float [ %2230, %2206 ], [ 0.000000e+00, %2153 ]
  %2240 = phi float [ %2234, %2206 ], [ 0.000000e+00, %2153 ]
  %2241 = call float @dx.op.dot3.f32(i32 55, float %2236, float %2237, float %2238, float %2166, float %2167, float %2168)  ; Dot3(ax,ay,az,bx,by,bz)
  %2242 = fmul fast float %2241, 0x3FDF454380000000
  %2243 = fmul fast float %2241, %2241
  %2244 = fmul fast float %2243, 0x3FEE471020000000
  %2245 = fadd fast float %2244, 0xBFD42F6020000000
  %2246 = fmul fast float %2201, 0x3FD20DD760000000
  %2247 = fmul fast float %2245, %2240
  %2248 = fadd fast float %2247, %2246
  %2249 = fmul fast float %2242, %2239
  %2250 = fadd fast float %2248, %2249
  %2251 = fsub fast float %2248, %2249
  %2252 = call float @dx.op.dot3.f32(i32 55, float %2236, float %2237, float %2238, float %2180, float %2181, float %2182)  ; Dot3(ax,ay,az,bx,by,bz)
  %2253 = fmul fast float %2252, 0x3FDF454380000000
  %2254 = fmul fast float %2252, %2252
  %2255 = fmul fast float %2254, 0x3FEE471020000000
  %2256 = fadd fast float %2255, 0xBFD42F6020000000
  %2257 = call float @dx.op.dot3.f32(i32 55, float %2201, float %2239, float %2240, float 0x3FD20DD760000000, float %2253, float %2256)  ; Dot3(ax,ay,az,bx,by,bz)
  %2258 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %2259 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %2260 = fcmp fast oeq float %2259, 0.000000e+00
  %2261 = fcmp fast oeq float %2258, 0.000000e+00
  %2262 = or i1 %2261, %2260
  br i1 %2262, label %2292, label %2263

; <label>:2263                                    ; preds = %2235
  %2264 = fsub fast float -0.000000e+00, %65
  %2265 = fsub fast float -0.000000e+00, %63
  %2266 = call float @dx.op.unary.f32(i32 24, float %2259)  ; Sqrt(value)
  %2267 = fdiv fast float %2266, %2258
  %2268 = fcmp fast ogt float %2267, 0x3FFB6F8900000000
  %2269 = select i1 %2268, float 0x3FFB6F8900000000, float %2267
  %2270 = fmul fast float %2269, 0x3FE8A23460000000
  %2271 = call float @dx.op.unary.f32(i32 7, float %2270)  ; Saturate(value)
  %2272 = call float @dx.op.binary.f32(i32 35, float %2269, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2273 = fmul fast float %2271, %2258
  %2274 = fmul fast float %2272, 0x3FF279A740000000
  %2275 = fadd fast float %2274, -1.000000e+00
  %2276 = call float @dx.op.dot3.f32(i32 55, float %2264, float %2265, float %64, float %2264, float %2265, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %2277 = call float @dx.op.unary.f32(i32 25, float %2276)  ; Rsqrt(value)
  %2278 = fmul fast float %2277, %2264
  %2279 = fmul fast float %2277, %2265
  %2280 = fmul fast float %2277, %64
  %2281 = fmul fast float %2275, %2275
  %2282 = fsub fast float 1.000000e+00, %2281
  %2283 = fmul fast float %2272, 0x40005F8BE0000000
  %2284 = fsub fast float 0x400C5BF8A0000000, %2283
  %2285 = fdiv fast float %2273, %2284
  %2286 = fmul fast float %2285, 0x3FEE31C3C0000000
  %2287 = fmul fast float %2286, %2282
  %2288 = fmul fast float %2272, 0x3FDACB7480000000
  %2289 = fadd fast float %2288, 0xBFD7347680000000
  %2290 = fmul fast float %2289, %2285
  %2291 = fmul fast float %2290, %2282
  br label %2292

; <label>:2292                                    ; preds = %2263, %2235
  %2293 = phi float [ %2278, %2263 ], [ 0.000000e+00, %2235 ]
  %2294 = phi float [ %2279, %2263 ], [ 0.000000e+00, %2235 ]
  %2295 = phi float [ %2280, %2263 ], [ 0.000000e+00, %2235 ]
  %2296 = phi float [ %2287, %2263 ], [ 0.000000e+00, %2235 ]
  %2297 = phi float [ %2291, %2263 ], [ 0.000000e+00, %2235 ]
  %2298 = call float @dx.op.dot3.f32(i32 55, float %2293, float %2294, float %2295, float %2166, float %2167, float %2168)  ; Dot3(ax,ay,az,bx,by,bz)
  %2299 = fmul fast float %2298, 0x3FDF454380000000
  %2300 = fmul fast float %2298, %2298
  %2301 = fmul fast float %2300, 0x3FEE471020000000
  %2302 = fadd fast float %2301, 0xBFD42F6020000000
  %2303 = fmul fast float %2258, 0x3FD20DD760000000
  %2304 = fmul fast float %2302, %2297
  %2305 = fadd fast float %2304, %2303
  %2306 = fmul fast float %2299, %2296
  %2307 = fadd fast float %2305, %2306
  %2308 = fsub fast float %2305, %2306
  %2309 = call float @dx.op.dot3.f32(i32 55, float %2293, float %2294, float %2295, float %2180, float %2181, float %2182)  ; Dot3(ax,ay,az,bx,by,bz)
  %2310 = fmul fast float %2309, 0x3FDF454380000000
  %2311 = fmul fast float %2309, %2309
  %2312 = fmul fast float %2311, 0x3FEE471020000000
  %2313 = fadd fast float %2312, 0xBFD42F6020000000
  %2314 = call float @dx.op.dot3.f32(i32 55, float %2258, float %2296, float %2297, float 0x3FD20DD760000000, float %2310, float %2313)  ; Dot3(ax,ay,az,bx,by,bz)
  %2315 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %2316 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %2317 = fcmp fast oeq float %2316, 0.000000e+00
  %2318 = fcmp fast oeq float %2315, 0.000000e+00
  %2319 = or i1 %2318, %2317
  br i1 %2319, label %2349, label %2320

; <label>:2320                                    ; preds = %2292
  %2321 = fsub fast float -0.000000e+00, %61
  %2322 = fsub fast float -0.000000e+00, %59
  %2323 = call float @dx.op.unary.f32(i32 24, float %2316)  ; Sqrt(value)
  %2324 = fdiv fast float %2323, %2315
  %2325 = fcmp fast ogt float %2324, 0x3FFB6F8900000000
  %2326 = select i1 %2325, float 0x3FFB6F8900000000, float %2324
  %2327 = fmul fast float %2326, 0x3FE8A23460000000
  %2328 = call float @dx.op.unary.f32(i32 7, float %2327)  ; Saturate(value)
  %2329 = call float @dx.op.binary.f32(i32 35, float %2326, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2330 = fmul fast float %2328, %2315
  %2331 = fmul fast float %2329, 0x3FF279A740000000
  %2332 = fadd fast float %2331, -1.000000e+00
  %2333 = call float @dx.op.dot3.f32(i32 55, float %2321, float %2322, float %60, float %2321, float %2322, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %2334 = call float @dx.op.unary.f32(i32 25, float %2333)  ; Rsqrt(value)
  %2335 = fmul fast float %2334, %2321
  %2336 = fmul fast float %2334, %2322
  %2337 = fmul fast float %2334, %60
  %2338 = fmul fast float %2332, %2332
  %2339 = fsub fast float 1.000000e+00, %2338
  %2340 = fmul fast float %2329, 0x40005F8BE0000000
  %2341 = fsub fast float 0x400C5BF8A0000000, %2340
  %2342 = fdiv fast float %2330, %2341
  %2343 = fmul fast float %2342, 0x3FEE31C3C0000000
  %2344 = fmul fast float %2343, %2339
  %2345 = fmul fast float %2329, 0x3FDACB7480000000
  %2346 = fadd fast float %2345, 0xBFD7347680000000
  %2347 = fmul fast float %2346, %2342
  %2348 = fmul fast float %2347, %2339
  br label %2349

; <label>:2349                                    ; preds = %2320, %2292
  %2350 = phi float [ %2335, %2320 ], [ 0.000000e+00, %2292 ]
  %2351 = phi float [ %2336, %2320 ], [ 0.000000e+00, %2292 ]
  %2352 = phi float [ %2337, %2320 ], [ 0.000000e+00, %2292 ]
  %2353 = phi float [ %2344, %2320 ], [ 0.000000e+00, %2292 ]
  %2354 = phi float [ %2348, %2320 ], [ 0.000000e+00, %2292 ]
  %2355 = call float @dx.op.dot3.f32(i32 55, float %2350, float %2351, float %2352, float %2166, float %2167, float %2168)  ; Dot3(ax,ay,az,bx,by,bz)
  %2356 = fmul fast float %2355, 0x3FDF454380000000
  %2357 = fmul fast float %2355, %2355
  %2358 = fmul fast float %2357, 0x3FEE471020000000
  %2359 = fadd fast float %2358, 0xBFD42F6020000000
  %2360 = fmul fast float %2315, 0x3FD20DD760000000
  %2361 = fmul fast float %2359, %2354
  %2362 = fadd fast float %2361, %2360
  %2363 = fmul fast float %2356, %2353
  %2364 = fadd fast float %2362, %2363
  %2365 = fsub fast float %2362, %2363
  %2366 = call float @dx.op.dot3.f32(i32 55, float %2350, float %2351, float %2352, float %2180, float %2181, float %2182)  ; Dot3(ax,ay,az,bx,by,bz)
  %2367 = fmul fast float %2366, 0x3FDF454380000000
  %2368 = fmul fast float %2366, %2366
  %2369 = fmul fast float %2368, 0x3FEE471020000000
  %2370 = fadd fast float %2369, 0xBFD42F6020000000
  %2371 = call float @dx.op.dot3.f32(i32 55, float %2315, float %2353, float %2354, float 0x3FD20DD760000000, float %2367, float %2370)  ; Dot3(ax,ay,az,bx,by,bz)
  %2372 = call float @dx.op.binary.f32(i32 35, float %2250, float 0.000000e+00)  ; FMax(a,b)
  %2373 = call float @dx.op.binary.f32(i32 35, float %2307, float 0.000000e+00)  ; FMax(a,b)
  %2374 = call float @dx.op.binary.f32(i32 35, float %2364, float 0.000000e+00)  ; FMax(a,b)
  %2375 = call float @dx.op.binary.f32(i32 35, float %2251, float 0.000000e+00)  ; FMax(a,b)
  %2376 = call float @dx.op.binary.f32(i32 35, float %2308, float 0.000000e+00)  ; FMax(a,b)
  %2377 = call float @dx.op.binary.f32(i32 35, float %2365, float 0.000000e+00)  ; FMax(a,b)
  %2378 = call float @dx.op.binary.f32(i32 35, float %2257, float 0.000000e+00)  ; FMax(a,b)
  %2379 = call float @dx.op.binary.f32(i32 35, float %2314, float 0.000000e+00)  ; FMax(a,b)
  %2380 = call float @dx.op.binary.f32(i32 35, float %2371, float 0.000000e+00)  ; FMax(a,b)
  %2381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2382 = extractvalue %dx.types.CBufRet.f32 %2381, 0
  %2383 = call float @dx.op.binary.f32(i32 36, float %2160, float %2382)  ; FMin(a,b)
  %2384 = fmul fast float %2383, %2184
  %2385 = fsub fast float 1.000000e+00, %2384
  %2386 = bitcast float %2385 to i32
  %2387 = sub nsw i32 2129859010, %2386
  %2388 = bitcast i32 %2387 to float
  %2389 = call float @dx.op.binary.f32(i32 36, float %2161, float %2382)  ; FMin(a,b)
  %2390 = fmul fast float %2389, %2184
  %2391 = fsub fast float 1.000000e+00, %2390
  %2392 = bitcast float %2391 to i32
  %2393 = sub nsw i32 2129859010, %2392
  %2394 = bitcast i32 %2393 to float
  %2395 = call float @dx.op.binary.f32(i32 36, float %2162, float %2382)  ; FMin(a,b)
  %2396 = fmul fast float %2395, %2184
  %2397 = fsub fast float 1.000000e+00, %2396
  %2398 = bitcast float %2397 to i32
  %2399 = sub nsw i32 2129859010, %2398
  %2400 = bitcast i32 %2399 to float
  %2401 = fmul fast float %2372, %2183
  %2402 = fmul fast float %2401, %2388
  %2403 = fmul fast float %2373, %2183
  %2404 = fmul fast float %2403, %2394
  %2405 = fmul fast float %2374, %2183
  %2406 = fmul fast float %2405, %2400
  %2407 = call float @dx.op.binary.f32(i32 36, float %2163, float %2382)  ; FMin(a,b)
  %2408 = fmul fast float %2407, %2184
  %2409 = fsub fast float 1.000000e+00, %2408
  %2410 = bitcast float %2409 to i32
  %2411 = sub nsw i32 2129859010, %2410
  %2412 = bitcast i32 %2411 to float
  %2413 = call float @dx.op.binary.f32(i32 36, float %2164, float %2382)  ; FMin(a,b)
  %2414 = fmul fast float %2413, %2184
  %2415 = fsub fast float 1.000000e+00, %2414
  %2416 = bitcast float %2415 to i32
  %2417 = sub nsw i32 2129859010, %2416
  %2418 = bitcast i32 %2417 to float
  %2419 = call float @dx.op.binary.f32(i32 36, float %2172, float %2382)  ; FMin(a,b)
  %2420 = fmul fast float %2419, %2184
  %2421 = fsub fast float 1.000000e+00, %2420
  %2422 = bitcast float %2421 to i32
  %2423 = sub nsw i32 2129859010, %2422
  %2424 = bitcast i32 %2423 to float
  %2425 = fmul fast float %2378, %2183
  %2426 = fmul fast float %2425, %2412
  %2427 = fmul fast float %2379, %2183
  %2428 = fmul fast float %2427, %2418
  %2429 = fmul fast float %2380, %2183
  %2430 = fmul fast float %2429, %2424
  %2431 = call float @dx.op.dot3.f32(i32 55, float %2402, float %2404, float %2406, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2432 = select i1 %204, float 0.000000e+00, float %2402
  %2433 = select i1 %204, float %2431, float %2404
  %2434 = select i1 %204, float 0.000000e+00, float %2406
  %2435 = call float @dx.op.dot3.f32(i32 55, float %2375, float %2376, float %2377, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2436 = select i1 %204, float 0.000000e+00, float %2375
  %2437 = select i1 %204, float %2435, float %2376
  %2438 = select i1 %204, float 0.000000e+00, float %2377
  %2439 = call float @dx.op.dot3.f32(i32 55, float %2426, float %2428, float %2430, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2440 = select i1 %204, float 0.000000e+00, float %2426
  %2441 = select i1 %204, float %2439, float %2428
  %2442 = select i1 %204, float 0.000000e+00, float %2430
  %2443 = fmul fast float %905, %905
  %2444 = call float @dx.op.unary.f32(i32 7, float %2443)  ; Saturate(value)
  %2445 = fmul fast float %2174, 9.843750e-01
  %2446 = fmul fast float %2169, 9.843750e-01
  %2447 = fadd fast float %2445, 7.812500e-03
  %2448 = fadd fast float %2446, 7.812500e-03
  %2449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %2447, float %2448, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2450 = extractvalue %dx.types.ResRet.f32 %2449, 0
  %2451 = extractvalue %dx.types.ResRet.f32 %2449, 1
  %2452 = extractvalue %dx.types.ResRet.f32 %2449, 2
  %2453 = extractvalue %dx.types.ResRet.f32 %2449, 3
  %2454 = fsub fast float 1.000000e+00, %2444
  %2455 = fsub fast float %2452, %2450
  %2456 = fsub fast float %2453, %2451
  %2457 = fmul fast float %2455, %2454
  %2458 = fmul fast float %2456, %2454
  %2459 = fadd fast float %2457, %2450
  %2460 = fadd fast float %2458, %2451
  %2461 = fmul fast float %2459, %2163
  %2462 = fmul fast float %2459, %2164
  %2463 = fmul fast float %2459, %2172
  %2464 = fadd fast float %2461, %2460
  %2465 = fadd fast float %2462, %2460
  %2466 = fadd fast float %2463, %2460
  %2467 = fcmp fast ogt float %1505, 0.000000e+00
  br i1 %2467, label %2468, label %2494

; <label>:2468                                    ; preds = %2349
  %2469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1505, float %2174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2470 = extractvalue %dx.types.ResRet.f32 %2469, 0
  %2471 = extractvalue %dx.types.ResRet.f32 %2469, 1
  %2472 = extractvalue %dx.types.ResRet.f32 %2469, 2
  %2473 = fadd fast float %2470, -5.000000e-01
  %2474 = fadd fast float %2471, -5.000000e-01
  %2475 = fadd fast float %2472, -5.000000e-01
  %2476 = fsub fast float 1.000000e+00, %2163
  %2477 = fsub fast float 1.000000e+00, %2164
  %2478 = fsub fast float 1.000000e+00, %2172
  %2479 = fmul fast float %2163, 4.000000e+00
  %2480 = fmul fast float %2479, %2476
  %2481 = fmul fast float %2480, %2473
  %2482 = fmul fast float %2164, 4.000000e+00
  %2483 = fmul fast float %2482, %2477
  %2484 = fmul fast float %2483, %2474
  %2485 = fmul fast float %2172, 4.000000e+00
  %2486 = fmul fast float %2485, %2478
  %2487 = fmul fast float %2486, %2475
  %2488 = fadd fast float %2481, %2464
  %2489 = fadd fast float %2484, %2465
  %2490 = fadd fast float %2487, %2466
  %2491 = call float @dx.op.unary.f32(i32 7, float %2488)  ; Saturate(value)
  %2492 = call float @dx.op.unary.f32(i32 7, float %2489)  ; Saturate(value)
  %2493 = call float @dx.op.unary.f32(i32 7, float %2490)  ; Saturate(value)
  br label %2494

; <label>:2494                                    ; preds = %2468, %2349
  %2495 = phi float [ %2491, %2468 ], [ %2464, %2349 ]
  %2496 = phi float [ %2492, %2468 ], [ %2465, %2349 ]
  %2497 = phi float [ %2493, %2468 ], [ %2466, %2349 ]
  %2498 = call float @dx.op.binary.f32(i32 35, float %2496, float %2497)  ; FMax(a,b)
  %2499 = call float @dx.op.binary.f32(i32 35, float %2495, float %2498)  ; FMax(a,b)
  %2500 = fsub fast float 1.000000e+00, %2499
  %2501 = fmul fast float %2499, %2169
  %2502 = fadd fast float %2501, %2169
  %2503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2504 = extractvalue %dx.types.CBufRet.f32 %2503, 2
  %2505 = extractvalue %dx.types.CBufRet.f32 %2503, 3
  %2506 = fmul fast float %2502, %2504
  %2507 = fadd fast float %2506, %2505
  %2508 = call float @dx.op.unary.f32(i32 7, float %2507)  ; Saturate(value)
  %2509 = fsub fast float 1.000000e+00, %2195
  %2510 = fadd fast float %2509, %2508
  %2511 = call float @dx.op.unary.f32(i32 7, float %2510)  ; Saturate(value)
  %2512 = fcmp fast olt float %2511, 1.000000e+00
  br i1 %2512, label %2513, label %2989

; <label>:2513                                    ; preds = %2494
  %2514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2515 = extractvalue %dx.types.CBufRet.f32 %2514, 2
  %2516 = extractvalue %dx.types.CBufRet.f32 %2514, 3
  %2517 = fmul fast float %2515, %94
  %2518 = fmul fast float %2516, %95
  %2519 = fptoui float %2517 to i32
  %2520 = fptoui float %2518 to i32
  %2521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2522 = extractvalue %dx.types.CBufRet.f32 %2521, 0
  %2523 = extractvalue %dx.types.CBufRet.f32 %2521, 2
  %2524 = extractvalue %dx.types.CBufRet.f32 %2521, 3
  %2525 = fadd fast float %82, -4.000000e+00
  %2526 = call float @dx.op.binary.f32(i32 35, float %2525, float 0.000000e+00)  ; FMax(a,b)
  %2527 = fadd fast float %2526, %2522
  %2528 = fmul fast float %2527, %2523
  %2529 = call float @dx.op.unary.f32(i32 23, float %2528)  ; Log(value)
  %2530 = fmul fast float %2529, %2524
  %2531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2532 = extractvalue %dx.types.CBufRet.f32 %2531, 2
  %2533 = fmul fast float %2530, %2532
  %2534 = call float @dx.op.unary.f32(i32 7, float %2533)  ; Saturate(value)
  %2535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2536 = extractvalue %dx.types.CBufRet.i32 %2535, 1
  %2537 = add i32 %2536, -1
  %2538 = uitofp i32 %2536 to float
  %2539 = fmul fast float %2538, %2534
  %2540 = fptoui float %2539 to i32
  %2541 = call i32 @dx.op.binary.i32(i32 40, i32 %2540, i32 %2537)  ; UMin(a,b)
  %2542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2543 = extractvalue %dx.types.CBufRet.i32 %2542, 2
  %2544 = extractvalue %dx.types.CBufRet.i32 %2542, 3
  %2545 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2520, i32 %2543, i32 %2519)  ; UMad(a,b,c)
  %2546 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2541, i32 %2544, i32 %2545)  ; UMad(a,b,c)
  %2547 = call float @dx.op.binary.f32(i32 35, float %82, float 0.000000e+00)  ; FMax(a,b)
  %2548 = fptoui float %2547 to i32
  %2549 = lshr i32 %2548, 5
  %2550 = call i32 @dx.op.binary.i32(i32 40, i32 %2549, i32 8191)  ; UMin(a,b)
  %2551 = fsub fast float %1959, %144
  %2552 = call float @dx.op.unary.f32(i32 7, float %2551)  ; Saturate(value)
  %2553 = fcmp fast ogt float %2552, 0.000000e+00
  %2554 = fcmp fast ogt float %2182, 0.000000e+00
  %2555 = and i1 %2554, %2553
  br i1 %2555, label %2556, label %2585

; <label>:2556                                    ; preds = %2513
  %2557 = call float @dx.op.dot3.f32(i32 55, float %2180, float %2181, float %2182, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2558 = call float @dx.op.binary.f32(i32 35, float %2557, float -1.000000e+00)  ; FMax(a,b)
  %2559 = call float @dx.op.binary.f32(i32 36, float %2558, float 1.000000e+00)  ; FMin(a,b)
  %2560 = fmul fast float %2559, %2559
  %2561 = fsub fast float 1.000000e+00, %2560
  %2562 = fmul fast float %2561, 0x3FFC6E2300000000
  %2563 = fsub fast float 1.000000e+00, %2562
  %2564 = fcmp fast ogt float %2563, 0.000000e+00
  %2565 = call float @dx.op.unary.f32(i32 24, float %2563)  ; Sqrt(value)
  %2566 = fsub fast float 1.000000e+00, %2565
  %2567 = call float @dx.op.unary.f32(i32 23, float %2566)  ; Log(value)
  %2568 = fmul fast float %2567, 5.000000e+00
  %2569 = call float @dx.op.unary.f32(i32 21, float %2568)  ; Exp(value)
  %2570 = fmul fast float %2569, 0x3FEF591A60000000
  %2571 = fadd fast float %2570, 0x3F94DCB540000000
  %2572 = select i1 %2564, float %2571, float 1.000000e+00
  %2573 = fcmp fast oge float %2572, 1.000000e+00
  %2574 = fmul fast float %2557, 2.000000e+00
  %2575 = fadd fast float %2574, %2182
  %2576 = select i1 %2573, float %2575, float %2182
  %2577 = fsub fast float %2576, %2182
  %2578 = fmul fast float %2577, %2552
  %2579 = fadd fast float %2578, %2182
  %2580 = call float @dx.op.dot3.f32(i32 55, float %2180, float %2181, float %2579, float %2180, float %2181, float %2579)  ; Dot3(ax,ay,az,bx,by,bz)
  %2581 = call float @dx.op.unary.f32(i32 25, float %2580)  ; Rsqrt(value)
  %2582 = fmul fast float %2581, %2180
  %2583 = fmul fast float %2581, %2181
  %2584 = fmul fast float %2579, %2581
  br label %2585

; <label>:2585                                    ; preds = %2556, %2513
  %2586 = phi float [ %2582, %2556 ], [ %2180, %2513 ]
  %2587 = phi float [ %2583, %2556 ], [ %2181, %2513 ]
  %2588 = phi float [ %2584, %2556 ], [ %2182, %2513 ]
  %2589 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2590 = extractvalue %dx.types.CBufRet.i32 %2589, 2
  %2591 = add nsw i32 %2590, -1
  %2592 = call i32 @dx.op.binary.i32(i32 37, i32 %2591, i32 0)  ; IMax(a,b)
  %2593 = shl i32 %2550, 2
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = lshr i32 %2595, 16
  %2597 = and i32 %2595, 65535
  %2598 = lshr i32 %2595, 21
  %2599 = lshr i32 %2597, 5
  %2600 = call i32 @dx.op.binary.i32(i32 40, i32 %2599, i32 %2592)  ; UMin(a,b)
  %2601 = icmp ugt i32 %2598, %2600
  br i1 %2601, label %2965, label %2602

; <label>:2602                                    ; preds = %2585
  br label %2603

; <label>:2603                                    ; preds = %2957, %2602
  %2604 = phi float [ %2958, %2957 ], [ 0.000000e+00, %2602 ]
  %2605 = phi float [ %2959, %2957 ], [ 0.000000e+00, %2602 ]
  %2606 = phi float [ %2960, %2957 ], [ 0.000000e+00, %2602 ]
  %2607 = phi float [ %2961, %2957 ], [ 1.000000e+00, %2602 ]
  %2608 = phi i32 [ %2962, %2957 ], [ %2598, %2602 ]
  %2609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2610 = extractvalue %dx.types.CBufRet.i32 %2609, 2
  %2611 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2546, i32 %2610, i32 %2608)  ; UMad(a,b,c)
  %2612 = shl i32 %2611, 2
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2612, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = shl i32 %2608, 5
  %2616 = sub nsw i32 %2596, %2615
  %2617 = call i32 @dx.op.binary.i32(i32 37, i32 %2616, i32 0)  ; IMax(a,b)
  %2618 = call i32 @dx.op.binary.i32(i32 38, i32 %2617, i32 31)  ; IMin(a,b)
  %2619 = sub nsw i32 1, %2596
  %2620 = add nsw i32 %2619, %2597
  %2621 = call i32 @dx.op.binary.i32(i32 37, i32 %2620, i32 0)  ; IMax(a,b)
  %2622 = call i32 @dx.op.binary.i32(i32 38, i32 %2621, i32 32)  ; IMin(a,b)
  %2623 = and i32 %2622, 31
  %2624 = shl i32 -1, %2623
  %2625 = xor i32 %2624, -1
  %2626 = and i32 %2618, 31
  %2627 = shl i32 %2625, %2626
  %2628 = icmp eq i32 %2622, 32
  %2629 = select i1 %2628, i32 -1, i32 %2627
  %2630 = and i32 %2629, %2614
  %2631 = icmp eq i32 %2630, 0
  br i1 %2631, label %2957, label %2632

; <label>:2632                                    ; preds = %2603
  br label %2633

; <label>:2633                                    ; preds = %2740, %2632
  %2634 = phi float [ %2741, %2740 ], [ %2604, %2632 ]
  %2635 = phi float [ %2742, %2740 ], [ %2605, %2632 ]
  %2636 = phi float [ %2743, %2740 ], [ %2606, %2632 ]
  %2637 = phi float [ %2744, %2740 ], [ %2607, %2632 ]
  %2638 = phi i32 [ %2643, %2740 ], [ %2630, %2632 ]
  %2639 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2638)  ; FirstbitLo(value)
  %2640 = add i32 %2639, %2615
  %2641 = and i32 %2639, 31
  %2642 = shl i32 1, %2641
  %2643 = xor i32 %2642, %2638
  %2644 = mul i32 %2640, 72
  %2645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.f32 %2645, 0
  %2647 = extractvalue %dx.types.ResRet.f32 %2645, 1
  %2648 = extractvalue %dx.types.ResRet.f32 %2645, 2
  %2649 = add i32 %2644, 12
  %2650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2649, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.i32 %2650, 0
  %2652 = add i32 %2644, 16
  %2653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2652, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.f32 %2653, 0
  %2655 = extractvalue %dx.types.ResRet.f32 %2653, 1
  %2656 = extractvalue %dx.types.ResRet.f32 %2653, 2
  %2657 = add i32 %2644, 28
  %2658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.f32 %2658, 0
  %2660 = add i32 %2644, 32
  %2661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2660, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.f32 %2661, 0
  %2663 = extractvalue %dx.types.ResRet.f32 %2661, 1
  %2664 = extractvalue %dx.types.ResRet.f32 %2661, 2
  %2665 = extractvalue %dx.types.ResRet.f32 %2661, 3
  %2666 = add i32 %2644, 48
  %2667 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.f32 %2667, 0
  %2669 = extractvalue %dx.types.ResRet.f32 %2667, 1
  %2670 = add i32 %2644, 56
  %2671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.f32 %2671, 0
  %2673 = extractvalue %dx.types.ResRet.f32 %2671, 1
  %2674 = add i32 %2644, 64
  %2675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2674, i32 undef)  ; BufferLoad(srv,index,wot)
  %2676 = extractvalue %dx.types.ResRet.f32 %2675, 0
  %2677 = extractvalue %dx.types.ResRet.f32 %2675, 1
  %2678 = mul i32 %2640, 60
  %2679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2680 = extractvalue %dx.types.ResRet.f32 %2679, 0
  %2681 = extractvalue %dx.types.ResRet.f32 %2679, 1
  %2682 = extractvalue %dx.types.ResRet.f32 %2679, 2
  %2683 = add i32 %2678, 12
  %2684 = add i32 %2678, 48
  %2685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %2686 = extractvalue %dx.types.ResRet.f32 %2685, 0
  %2687 = extractvalue %dx.types.ResRet.f32 %2685, 1
  %2688 = extractvalue %dx.types.ResRet.f32 %2685, 2
  %2689 = and i32 %2651, 32767
  %2690 = bitcast float %2646 to i32
  %2691 = icmp eq i32 %2690, -1
  %2692 = bitcast float %2647 to i32
  %2693 = and i32 %2651, 32768
  %2694 = icmp ne i32 %2693, 0
  %2695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2696 = extractvalue %dx.types.CBufRet.f32 %2695, 0
  %2697 = extractvalue %dx.types.CBufRet.f32 %2695, 1
  %2698 = extractvalue %dx.types.CBufRet.f32 %2695, 2
  %2699 = fsub fast float %2680, %2696
  %2700 = fsub fast float %2681, %2697
  %2701 = fsub fast float %2682, %2698
  %2702 = fsub fast float %142, %2699
  %2703 = fsub fast float %143, %2700
  %2704 = fsub fast float %144, %2701
  %2705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2706 = extractvalue %dx.types.ResRet.f32 %2705, 0
  %2707 = extractvalue %dx.types.ResRet.f32 %2705, 1
  %2708 = extractvalue %dx.types.ResRet.f32 %2705, 2
  %2709 = call float @dx.op.dot3.f32(i32 55, float %2702, float %2703, float %2704, float %2706, float %2707, float %2708)  ; Dot3(ax,ay,az,bx,by,bz)
  %2710 = add i32 %2678, 24
  %2711 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2710, i32 undef)  ; BufferLoad(srv,index,wot)
  %2712 = extractvalue %dx.types.ResRet.f32 %2711, 0
  %2713 = extractvalue %dx.types.ResRet.f32 %2711, 1
  %2714 = extractvalue %dx.types.ResRet.f32 %2711, 2
  %2715 = call float @dx.op.dot3.f32(i32 55, float %2702, float %2703, float %2704, float %2712, float %2713, float %2714)  ; Dot3(ax,ay,az,bx,by,bz)
  %2716 = add i32 %2678, 36
  %2717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2716, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.f32 %2717, 0
  %2719 = extractvalue %dx.types.ResRet.f32 %2717, 1
  %2720 = extractvalue %dx.types.ResRet.f32 %2717, 2
  %2721 = call float @dx.op.dot3.f32(i32 55, float %2702, float %2703, float %2704, float %2718, float %2719, float %2720)  ; Dot3(ax,ay,az,bx,by,bz)
  %2722 = call float @dx.op.unary.f32(i32 6, float %2709)  ; FAbs(value)
  %2723 = call float @dx.op.unary.f32(i32 6, float %2715)  ; FAbs(value)
  %2724 = call float @dx.op.unary.f32(i32 6, float %2721)  ; FAbs(value)
  %2725 = fsub fast float %2686, %2722
  %2726 = fsub fast float %2687, %2723
  %2727 = fsub fast float %2688, %2724
  %2728 = fmul fast float %2725, %2654
  %2729 = fmul fast float %2726, %2655
  %2730 = fmul fast float %2727, %2656
  %2731 = call float @dx.op.binary.f32(i32 36, float %2729, float %2730)  ; FMin(a,b)
  %2732 = call float @dx.op.binary.f32(i32 36, float %2728, float %2731)  ; FMin(a,b)
  %2733 = call float @dx.op.unary.f32(i32 7, float %2732)  ; Saturate(value)
  %2734 = call float @dx.op.binary.f32(i32 36, float %2637, float %2733)  ; FMin(a,b)
  %2735 = uitofp i1 %2694 to float
  %2736 = fadd fast float %2552, 1.000000e+00
  %2737 = fsub fast float %2736, %2735
  %2738 = fmul fast float %2734, %2737
  %2739 = fcmp fast ogt float %2738, 0.000000e+00
  br i1 %2739, label %2746, label %2740

; <label>:2740                                    ; preds = %2888, %2633
  %2741 = phi float [ %2952, %2888 ], [ %2634, %2633 ]
  %2742 = phi float [ %2953, %2888 ], [ %2635, %2633 ]
  %2743 = phi float [ %2954, %2888 ], [ %2636, %2633 ]
  %2744 = phi float [ %2955, %2888 ], [ %2637, %2633 ]
  %2745 = icmp eq i32 %2638, %2642
  br i1 %2745, label %2956, label %2633

; <label>:2746                                    ; preds = %2633
  br i1 %2691, label %2804, label %2747

; <label>:2747                                    ; preds = %2746
  %2748 = fsub fast float -0.000000e+00, %2706
  %2749 = fsub fast float -0.000000e+00, %2707
  %2750 = fsub fast float -0.000000e+00, %2708
  %2751 = call float @dx.op.dot3.f32(i32 55, float %2586, float %2587, float %2588, float %2748, float %2749, float %2750)  ; Dot3(ax,ay,az,bx,by,bz)
  %2752 = fsub fast float -0.000000e+00, %2751
  %2753 = call float @dx.op.dot3.f32(i32 55, float %2702, float %2703, float %2704, float %2748, float %2749, float %2750)  ; Dot3(ax,ay,az,bx,by,bz)
  %2754 = fadd fast float %2753, %2669
  %2755 = fadd fast float %2668, %2753
  %2756 = fsub fast float -0.000000e+00, %2755
  %2757 = fcmp ogt float %2751, -0.000000e+00
  %2758 = select i1 %2757, float %2756, float %2754
  %2759 = call float @dx.op.unary.f32(i32 6, float %2752)  ; FAbs(value)
  %2760 = fdiv fast float 1.000000e+00, %2759
  %2761 = fmul fast float %2758, %2760
  %2762 = call float @dx.op.binary.f32(i32 35, float %2761, float 0.000000e+00)  ; FMax(a,b)
  %2763 = fsub fast float -0.000000e+00, %2712
  %2764 = fsub fast float -0.000000e+00, %2713
  %2765 = fsub fast float -0.000000e+00, %2714
  %2766 = call float @dx.op.dot3.f32(i32 55, float %2586, float %2587, float %2588, float %2763, float %2764, float %2765)  ; Dot3(ax,ay,az,bx,by,bz)
  %2767 = fsub fast float -0.000000e+00, %2766
  %2768 = call float @dx.op.dot3.f32(i32 55, float %2702, float %2703, float %2704, float %2763, float %2764, float %2765)  ; Dot3(ax,ay,az,bx,by,bz)
  %2769 = fadd fast float %2768, %2673
  %2770 = fadd fast float %2672, %2768
  %2771 = fsub fast float -0.000000e+00, %2770
  %2772 = fcmp ogt float %2766, -0.000000e+00
  %2773 = select i1 %2772, float %2771, float %2769
  %2774 = call float @dx.op.unary.f32(i32 6, float %2767)  ; FAbs(value)
  %2775 = fdiv fast float 1.000000e+00, %2774
  %2776 = fmul fast float %2773, %2775
  %2777 = call float @dx.op.binary.f32(i32 35, float %2776, float 0.000000e+00)  ; FMax(a,b)
  %2778 = fsub fast float -0.000000e+00, %2718
  %2779 = fsub fast float -0.000000e+00, %2719
  %2780 = fsub fast float -0.000000e+00, %2720
  %2781 = call float @dx.op.dot3.f32(i32 55, float %2586, float %2587, float %2588, float %2778, float %2779, float %2780)  ; Dot3(ax,ay,az,bx,by,bz)
  %2782 = fsub fast float -0.000000e+00, %2781
  %2783 = call float @dx.op.dot3.f32(i32 55, float %2702, float %2703, float %2704, float %2778, float %2779, float %2780)  ; Dot3(ax,ay,az,bx,by,bz)
  %2784 = fadd fast float %2783, %2677
  %2785 = fadd fast float %2676, %2783
  %2786 = fsub fast float -0.000000e+00, %2785
  %2787 = fcmp ogt float %2781, -0.000000e+00
  %2788 = select i1 %2787, float %2786, float %2784
  %2789 = call float @dx.op.unary.f32(i32 6, float %2782)  ; FAbs(value)
  %2790 = fdiv fast float 1.000000e+00, %2789
  %2791 = fmul fast float %2788, %2790
  %2792 = call float @dx.op.binary.f32(i32 35, float %2791, float 0.000000e+00)  ; FMax(a,b)
  %2793 = call float @dx.op.binary.f32(i32 36, float %2777, float %2792)  ; FMin(a,b)
  %2794 = call float @dx.op.binary.f32(i32 36, float %2762, float %2793)  ; FMin(a,b)
  %2795 = fmul fast float %2794, %2586
  %2796 = fmul fast float %2794, %2587
  %2797 = fmul fast float %2794, %2588
  %2798 = fadd fast float %2795, %142
  %2799 = fadd fast float %2796, %143
  %2800 = fadd fast float %2797, %144
  %2801 = fsub fast float %2798, %2646
  %2802 = fsub fast float %2799, %2647
  %2803 = fsub fast float %2800, %2648
  br label %2811

; <label>:2804                                    ; preds = %2746
  %2805 = fmul fast float %2586, 8.096000e+03
  %2806 = fmul fast float %2587, 8.096000e+03
  %2807 = fmul fast float %2588, 8.096000e+03
  %2808 = fadd fast float %2805, %142
  %2809 = fadd fast float %2806, %143
  %2810 = fadd fast float %2807, %144
  br label %2811

; <label>:2811                                    ; preds = %2804, %2747
  %2812 = phi float [ %2586, %2804 ], [ %2801, %2747 ]
  %2813 = phi float [ %2587, %2804 ], [ %2802, %2747 ]
  %2814 = phi float [ %2588, %2804 ], [ %2803, %2747 ]
  %2815 = phi float [ %2808, %2804 ], [ %2798, %2747 ]
  %2816 = phi float [ %2809, %2804 ], [ %2799, %2747 ]
  %2817 = phi float [ %2810, %2804 ], [ %2800, %2747 ]
  %2818 = fcmp fast olt float %2665, 1.000000e+00
  br i1 %2818, label %2819, label %2850, !dx.controlflow.hints !90

; <label>:2819                                    ; preds = %2811
  %2820 = fmul fast float %2814, %2663
  %2821 = fmul fast float %2813, %2664
  %2822 = fsub fast float %2820, %2821
  %2823 = fmul fast float %2812, %2664
  %2824 = fmul fast float %2814, %2662
  %2825 = fsub fast float %2823, %2824
  %2826 = fmul fast float %2813, %2662
  %2827 = fmul fast float %2812, %2663
  %2828 = fsub fast float %2826, %2827
  %2829 = fmul fast float %2822, 2.000000e+00
  %2830 = fmul fast float %2825, 2.000000e+00
  %2831 = fmul fast float %2828, 2.000000e+00
  %2832 = fmul fast float %2829, %2665
  %2833 = fmul fast float %2830, %2665
  %2834 = fmul fast float %2831, %2665
  %2835 = fmul fast float %2831, %2663
  %2836 = fmul fast float %2830, %2664
  %2837 = fmul fast float %2829, %2664
  %2838 = fmul fast float %2831, %2662
  %2839 = fmul fast float %2830, %2662
  %2840 = fmul fast float %2829, %2663
  %2841 = fadd fast float %2835, %2812
  %2842 = fadd fast float %2841, %2832
  %2843 = fsub fast float %2842, %2836
  %2844 = fsub fast float %2813, %2838
  %2845 = fadd fast float %2844, %2833
  %2846 = fadd fast float %2845, %2837
  %2847 = fadd fast float %2834, %2814
  %2848 = fsub fast float %2847, %2840
  %2849 = fadd fast float %2848, %2839
  br label %2850

; <label>:2850                                    ; preds = %2819, %2811
  %2851 = phi float [ %2843, %2819 ], [ %2812, %2811 ]
  %2852 = phi float [ %2846, %2819 ], [ %2813, %2811 ]
  %2853 = phi float [ %2849, %2819 ], [ %2814, %2811 ]
  br i1 %2691, label %2885, label %2854

; <label>:2854                                    ; preds = %2850
  %2855 = fmul fast float %2169, 0x400187C840000000
  %2856 = fadd fast float %2855, 0xC00EFC2120000000
  %2857 = fmul fast float %2856, %2169
  %2858 = fadd fast float %2857, 0x3FE5D16340000000
  %2859 = fmul fast float %2858, %2169
  %2860 = fadd fast float %2859, 1.000000e+00
  %2861 = call float @dx.op.unary.f32(i32 7, float %2860)  ; Saturate(value)
  %2862 = fsub fast float %2815, %142
  %2863 = fsub fast float %2816, %143
  %2864 = fsub fast float %2817, %144
  %2865 = fsub fast float %2815, %2646
  %2866 = fsub fast float %2816, %2647
  %2867 = fsub fast float %2817, %2648
  %2868 = call float @dx.op.dot3.f32(i32 55, float %2862, float %2863, float %2864, float %2862, float %2863, float %2864)  ; Dot3(ax,ay,az,bx,by,bz)
  %2869 = call float @dx.op.dot3.f32(i32 55, float %2865, float %2866, float %2867, float %2865, float %2866, float %2867)  ; Dot3(ax,ay,az,bx,by,bz)
  %2870 = fadd fast float %2869, 0x3EE4F8B580000000
  %2871 = fdiv fast float %2868, %2870
  %2872 = bitcast float %2871 to i32
  %2873 = ashr i32 %2872, 1
  %2874 = add nsw i32 %2873, 532487669
  %2875 = bitcast i32 %2874 to float
  %2876 = fmul fast float %2875, %2861
  %2877 = call float @dx.op.unary.f32(i32 7, float %2876)  ; Saturate(value)
  %2878 = fmul fast float %2877, 0x4009981AE0000000
  %2879 = fsub fast float 0x40111BBD80000000, %2878
  %2880 = fmul fast float %2879, %2877
  %2881 = fadd fast float %2880, 0xC0009F6020000000
  %2882 = fmul fast float %2881, %2877
  %2883 = fadd fast float %2882, 1.000000e+00
  %2884 = call float @dx.op.unary.f32(i32 7, float %2883)  ; Saturate(value)
  br label %2888

; <label>:2885                                    ; preds = %2850
  %2886 = icmp ne i32 %2692, -1
  %2887 = zext i1 %2886 to i32
  br label %2888

; <label>:2888                                    ; preds = %2885, %2854
  %2889 = phi float [ %2169, %2885 ], [ %2884, %2854 ]
  %2890 = phi i32 [ %2887, %2885 ], [ 0, %2854 ]
  %2891 = fmul float %2889, 5.000000e+00
  %2892 = fsub float 5.000000e+00, %2891
  %2893 = icmp ne i32 %2890, 0
  %2894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2895 = extractvalue %dx.types.CBufRet.f32 %2894, 3
  %2896 = fadd fast float %2895, %2892
  %2897 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2896)  ; FMax(a,b)
  %2898 = call float @dx.op.unary.f32(i32 6, float %2851)  ; FAbs(value)
  %2899 = call float @dx.op.unary.f32(i32 6, float %2852)  ; FAbs(value)
  %2900 = fadd fast float %2899, %2898
  %2901 = call float @dx.op.unary.f32(i32 6, float %2853)  ; FAbs(value)
  %2902 = fadd fast float %2900, %2901
  %2903 = fcmp fast oeq float %2902, 0.000000e+00
  %2904 = fdiv fast float 1.000000e+00, %2902
  %2905 = select i1 %2903, float 1.000000e+00, float %2904
  %2906 = fmul fast float %2905, %2851
  %2907 = fmul fast float %2905, %2852
  %2908 = call float @dx.op.unary.f32(i32 6, float %2907)  ; FAbs(value)
  %2909 = call float @dx.op.unary.f32(i32 6, float %2906)  ; FAbs(value)
  %2910 = fsub fast float 1.000000e+00, %2908
  %2911 = fsub fast float 1.000000e+00, %2909
  %2912 = fcmp fast oge float %2906, 0.000000e+00
  %2913 = fcmp fast oge float %2907, 0.000000e+00
  %2914 = select i1 %2912, float 1.000000e+00, float -1.000000e+00
  %2915 = select i1 %2913, float 1.000000e+00, float -1.000000e+00
  %2916 = fcmp fast ole float %2853, 0.000000e+00
  %2917 = fmul fast float %2914, %2910
  %2918 = fmul fast float %2915, %2911
  %2919 = select i1 %2916, float %2917, float %2906
  %2920 = select i1 %2916, float %2918, float %2907
  %2921 = fmul fast float %2919, 5.000000e-01
  %2922 = fmul fast float %2920, 5.000000e-01
  %2923 = fadd fast float %2921, 5.000000e-01
  %2924 = fadd fast float %2922, 5.000000e-01
  %2925 = uitofp i32 %2689 to float
  %2926 = call float @dx.op.binary.f32(i32 36, float %2897, float 3.000000e+00)  ; FMin(a,b)
  %2927 = fadd fast float %2926, 2.000000e+00
  %2928 = call float @dx.op.unary.f32(i32 21, float %2927)  ; Exp(value)
  %2929 = extractvalue %dx.types.CBufRet.f32 %2894, 1
  %2930 = fmul fast float %2929, %2928
  %2931 = fmul fast float %2930, 2.000000e+00
  %2932 = fsub fast float 1.000000e+00, %2931
  %2933 = fmul fast float %2923, %2932
  %2934 = fmul fast float %2924, %2932
  %2935 = fadd fast float %2933, %2930
  %2936 = fadd fast float %2934, %2930
  %2937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %48, float %2935, float %2936, float %2925, float undef, i32 0, i32 0, i32 undef, float %2897)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2938 = extractvalue %dx.types.ResRet.f32 %2937, 0
  %2939 = extractvalue %dx.types.ResRet.f32 %2937, 1
  %2940 = extractvalue %dx.types.ResRet.f32 %2937, 2
  %2941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2942 = extractvalue %dx.types.CBufRet.f32 %2941, 3
  %2943 = fmul fast float %2942, %2659
  %2944 = call float @dx.op.binary.f32(i32 36, float %2200, float %2943)  ; FMin(a,b)
  %2945 = select i1 %2893, float %2944, float %2943
  %2946 = fmul fast float %2938, %2738
  %2947 = fmul fast float %2946, %2945
  %2948 = fmul fast float %2939, %2738
  %2949 = fmul fast float %2948, %2945
  %2950 = fmul fast float %2940, %2738
  %2951 = fmul fast float %2950, %2945
  %2952 = fadd fast float %2947, %2634
  %2953 = fadd fast float %2949, %2635
  %2954 = fadd fast float %2951, %2636
  %2955 = fsub fast float %2637, %2738
  br label %2740

; <label>:2956                                    ; preds = %2740
  br label %2957

; <label>:2957                                    ; preds = %2956, %2603
  %2958 = phi float [ %2604, %2603 ], [ %2741, %2956 ]
  %2959 = phi float [ %2605, %2603 ], [ %2742, %2956 ]
  %2960 = phi float [ %2606, %2603 ], [ %2743, %2956 ]
  %2961 = phi float [ %2607, %2603 ], [ %2744, %2956 ]
  %2962 = add i32 %2608, 1
  %2963 = icmp ugt i32 %2962, %2600
  br i1 %2963, label %2964, label %2603, !llvm.loop !91

; <label>:2964                                    ; preds = %2957
  br label %2965

; <label>:2965                                    ; preds = %2964, %2585
  %2966 = phi float [ 0.000000e+00, %2585 ], [ %2958, %2964 ]
  %2967 = phi float [ 0.000000e+00, %2585 ], [ %2959, %2964 ]
  %2968 = phi float [ 0.000000e+00, %2585 ], [ %2960, %2964 ]
  %2969 = call float @dx.op.dot3.f32(i32 55, float %2966, float %2967, float %2968, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2970 = select i1 %204, float 0.000000e+00, float %2966
  %2971 = select i1 %204, float %2969, float %2967
  %2972 = select i1 %204, float 0.000000e+00, float %2968
  %2973 = fcmp fast olt float %2511, 0.000000e+00
  %2974 = call float @dx.op.unary.f32(i32 6, float %2511)  ; FAbs(value)
  %2975 = fmul fast float %2974, %2440
  %2976 = fmul fast float %2974, %2441
  %2977 = fmul fast float %2974, %2442
  %2978 = select i1 %2973, float %2440, float %2975
  %2979 = select i1 %2973, float %2441, float %2976
  %2980 = select i1 %2973, float %2442, float %2977
  %2981 = fsub fast float 1.000000e+00, %2974
  %2982 = call float @dx.op.unary.f32(i32 7, float %2981)  ; Saturate(value)
  %2983 = fmul fast float %2982, %2970
  %2984 = fmul fast float %2982, %2971
  %2985 = fmul fast float %2982, %2972
  %2986 = fadd fast float %2978, %2983
  %2987 = fadd fast float %2979, %2984
  %2988 = fadd fast float %2980, %2985
  br label %2989

; <label>:2989                                    ; preds = %2965, %2494
  %2990 = phi float [ %2440, %2494 ], [ %2986, %2965 ]
  %2991 = phi float [ %2441, %2494 ], [ %2987, %2965 ]
  %2992 = phi float [ %2442, %2494 ], [ %2988, %2965 ]
  %2993 = call float @dx.op.dot3.f32(i32 55, float %2160, float %2161, float %2162, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2994 = fcmp fast ogt float %2993, 0x3E7FF19E20000000
  %2995 = fdiv fast float 1.000000e+00, %2993
  %2996 = select i1 %2994, float %2995, float 0.000000e+00
  %2997 = fmul fast float %2996, %2160
  %2998 = fmul fast float %2996, %2161
  %2999 = fmul fast float %2996, %2162
  %3000 = fadd fast float %2997, -1.000000e+00
  %3001 = fadd fast float %2998, -1.000000e+00
  %3002 = fadd fast float %2999, -1.000000e+00
  %3003 = fmul fast float %3000, 5.000000e-01
  %3004 = fmul fast float %3001, 5.000000e-01
  %3005 = fmul fast float %3002, 5.000000e-01
  %3006 = fadd fast float %3003, 1.000000e+00
  %3007 = fadd fast float %3004, 1.000000e+00
  %3008 = fadd fast float %3005, 1.000000e+00
  %3009 = call float @dx.op.binary.f32(i32 35, float %2174, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3010 = fdiv fast float %905, %3009
  %3011 = fcmp fast olt float %1578, 1.270000e+02
  %3012 = fcmp fast olt float %1579, 1.270000e+02
  %3013 = fcmp fast olt float %1580, 1.270000e+02
  %3014 = fmul fast float %1578, 0xBFF7154760000000
  %3015 = fmul fast float %3014, %3010
  %3016 = fmul fast float %1579, 0xBFF7154760000000
  %3017 = fmul fast float %3016, %3010
  %3018 = fmul fast float %1580, 0xBFF7154760000000
  %3019 = fmul fast float %3018, %3010
  %3020 = call float @dx.op.unary.f32(i32 21, float %3015)  ; Exp(value)
  %3021 = call float @dx.op.unary.f32(i32 21, float %3017)  ; Exp(value)
  %3022 = call float @dx.op.unary.f32(i32 21, float %3019)  ; Exp(value)
  %3023 = call float @dx.op.unary.f32(i32 7, float %3020)  ; Saturate(value)
  %3024 = call float @dx.op.unary.f32(i32 7, float %3021)  ; Saturate(value)
  %3025 = call float @dx.op.unary.f32(i32 7, float %3022)  ; Saturate(value)
  %3026 = select i1 %3011, float %3023, float 0.000000e+00
  %3027 = select i1 %3012, float %3024, float 0.000000e+00
  %3028 = select i1 %3013, float %3025, float 0.000000e+00
  %3029 = fmul fast float %3026, %2500
  %3030 = fmul fast float %3027, %2500
  %3031 = fmul fast float %3028, %2500
  %3032 = fadd fast float %3029, -1.000000e+00
  %3033 = fadd fast float %3030, -1.000000e+00
  %3034 = fadd fast float %3031, -1.000000e+00
  %3035 = fmul fast float %3032, %1528
  %3036 = fmul fast float %3033, %1528
  %3037 = fmul fast float %3034, %1528
  %3038 = fmul fast float %2990, %2495
  %3039 = fmul fast float %2991, %2496
  %3040 = fmul fast float %2992, %2497
  %3041 = fsub fast float 1.000000e+00, %2174
  %3042 = bitcast float %3041 to i32
  %3043 = sitofp i32 %3042 to float
  %3044 = fmul fast float %3043, 5.000000e+00
  %3045 = fadd fast float %3044, 0xC1EFBF8940000000
  %3046 = fptosi float %3045 to i32
  %3047 = bitcast i32 %3046 to float
  %3048 = fmul fast float %3047, %1504
  %3049 = fmul fast float %2432, %3048
  %3050 = fmul fast float %3049, %2500
  %3051 = fmul fast float %3050, %3006
  %3052 = fmul fast float %2433, %3048
  %3053 = fmul fast float %3052, %2500
  %3054 = fmul fast float %3053, %3007
  %3055 = fmul fast float %2434, %3048
  %3056 = fmul fast float %3055, %2500
  %3057 = fmul fast float %3056, %3008
  %3058 = fadd fast float %3038, %1509
  %3059 = fadd fast float %3058, %3051
  %3060 = fmul fast float %3059, %1528
  %3061 = fadd fast float %3039, %1510
  %3062 = fadd fast float %3061, %3054
  %3063 = fmul fast float %3062, %1528
  %3064 = fadd fast float %3040, %1511
  %3065 = fadd fast float %3064, %3057
  %3066 = fmul fast float %3065, %1528
  %3067 = fmul fast float %2164, 0x4012D0A400000000
  %3068 = fadd fast float %3037, 1.000000e+00
  %3069 = fadd fast float %3036, 1.000000e+00
  %3070 = fadd fast float %3035, 1.000000e+00
  %3071 = fmul fast float %2500, %2434
  %3072 = fmul fast float %2500, %2433
  %3073 = fmul fast float %2500, %2432
  %3074 = fmul fast float %2189, %1528
  %3075 = fsub fast float 1.000000e+00, %3074
  %3076 = call float @dx.op.unary.f32(i32 7, float %3075)  ; Saturate(value)
  %3077 = fsub fast float 1.000000e+00, %3076
  %3078 = fadd fast float %3067, 0x3FDB6377A0000000
  %3079 = fmul fast float %3077, %3078
  %3080 = call float @dx.op.dot3.f32(i32 55, float %1596, float %1597, float %1598, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3081 = fadd fast float %3079, %3080
  %3082 = call float @dx.op.unary.f32(i32 7, float %3081)  ; Saturate(value)
  %3083 = call float @dx.op.binary.f32(i32 35, float %3082, float 0x3F847AE140000000)  ; FMax(a,b)
  %3084 = fmul fast float %3083, %3083
  %3085 = fmul fast float %3084, %3084
  %3086 = fmul fast float %3085, 0xC00A935000000000
  %3087 = call float @dx.op.unary.f32(i32 21, float %3086)  ; Exp(value)
  %3088 = fsub fast float 1.000000e+00, %3087
  %3089 = fmul fast float %3070, %2436
  %3090 = fmul fast float %3089, %3088
  %3091 = fmul fast float %3069, %2437
  %3092 = fmul fast float %3091, %3088
  %3093 = fmul fast float %3068, %2438
  %3094 = fmul fast float %3093, %3088
  %3095 = fadd fast float %3090, %3073
  %3096 = fmul fast float %3095, %1528
  %3097 = fadd fast float %3092, %3072
  %3098 = fmul fast float %3097, %1528
  %3099 = fadd fast float %3094, %3071
  %3100 = fmul fast float %3099, %1528
  %3101 = bitcast i32 %2198 to float
  %3102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3103 = extractvalue %dx.types.CBufRet.f32 %3102, 3
  %3104 = fcmp fast oeq float %3103, 0.000000e+00
  br i1 %3104, label %4782, label %3105

; <label>:3105                                    ; preds = %2989
  %3106 = extractvalue %dx.types.CBufRet.f32 %3102, 0
  %3107 = extractvalue %dx.types.CBufRet.f32 %3102, 1
  %3108 = extractvalue %dx.types.CBufRet.f32 %3102, 2
  %3109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3110 = extractvalue %dx.types.CBufRet.f32 %3109, 0
  %3111 = extractvalue %dx.types.CBufRet.f32 %3109, 1
  %3112 = extractvalue %dx.types.CBufRet.f32 %3109, 2
  %3113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3114 = extractvalue %dx.types.CBufRet.f32 %3113, 0
  %3115 = extractvalue %dx.types.CBufRet.f32 %3113, 1
  %3116 = call float @dx.op.dot3.f32(i32 55, float %3110, float %3111, float %3112, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3117 = select i1 %204, float %3114, float %3110
  %3118 = select i1 %204, float %3116, float %3111
  %3119 = select i1 %204, float %3115, float %3112
  %3120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3121 = extractvalue %dx.types.CBufRet.f32 %3120, 2
  %3122 = fmul fast float %3121, %97
  %3123 = fmul fast float %3121, %98
  %3124 = fmul fast float %3121, %99
  %3125 = fadd fast float %3122, %142
  %3126 = fadd fast float %3123, %143
  %3127 = fadd fast float %3124, %144
  %3128 = fcmp fast olt float %3103, 0.000000e+00
  br i1 %3128, label %4224, label %3129

; <label>:3129                                    ; preds = %3105
  %3130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3131 = extractvalue %dx.types.CBufRet.f32 %3130, 0
  %3132 = extractvalue %dx.types.CBufRet.f32 %3130, 1
  %3133 = extractvalue %dx.types.CBufRet.f32 %3130, 2
  %3134 = extractvalue %dx.types.CBufRet.f32 %3130, 3
  %3135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3136 = extractvalue %dx.types.CBufRet.f32 %3135, 0
  %3137 = extractvalue %dx.types.CBufRet.f32 %3135, 1
  %3138 = extractvalue %dx.types.CBufRet.f32 %3135, 2
  %3139 = extractvalue %dx.types.CBufRet.f32 %3135, 3
  %3140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3141 = extractvalue %dx.types.CBufRet.f32 %3140, 0
  %3142 = extractvalue %dx.types.CBufRet.f32 %3140, 1
  %3143 = extractvalue %dx.types.CBufRet.f32 %3140, 2
  %3144 = extractvalue %dx.types.CBufRet.f32 %3140, 3
  %3145 = fmul fast float %3131, %3125
  %3146 = call float @dx.op.tertiary.f32(i32 46, float %3126, float %3132, float %3145)  ; FMad(a,b,c)
  %3147 = call float @dx.op.tertiary.f32(i32 46, float %3127, float %3133, float %3146)  ; FMad(a,b,c)
  %3148 = fadd fast float %3147, %3134
  %3149 = fmul fast float %3136, %3125
  %3150 = call float @dx.op.tertiary.f32(i32 46, float %3126, float %3137, float %3149)  ; FMad(a,b,c)
  %3151 = call float @dx.op.tertiary.f32(i32 46, float %3127, float %3138, float %3150)  ; FMad(a,b,c)
  %3152 = fadd fast float %3151, %3139
  %3153 = fmul fast float %3141, %3125
  %3154 = call float @dx.op.tertiary.f32(i32 46, float %3126, float %3142, float %3153)  ; FMad(a,b,c)
  %3155 = call float @dx.op.tertiary.f32(i32 46, float %3127, float %3143, float %3154)  ; FMad(a,b,c)
  %3156 = fadd fast float %3155, %3144
  %3157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3158 = extractvalue %dx.types.CBufRet.f32 %3157, 0
  %3159 = extractvalue %dx.types.CBufRet.f32 %3157, 1
  %3160 = extractvalue %dx.types.CBufRet.f32 %3157, 3
  %3161 = fmul fast float %3160, %3148
  %3162 = fmul fast float %3160, %3152
  %3163 = fadd fast float %3161, %3158
  %3164 = fadd fast float %3162, %3159
  %3165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3166 = extractvalue %dx.types.CBufRet.f32 %3165, 0
  %3167 = extractvalue %dx.types.CBufRet.f32 %3165, 1
  %3168 = extractvalue %dx.types.CBufRet.f32 %3165, 3
  %3169 = fmul fast float %3168, %3148
  %3170 = fmul fast float %3168, %3152
  %3171 = fadd fast float %3169, %3166
  %3172 = fadd fast float %3170, %3167
  %3173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3174 = extractvalue %dx.types.CBufRet.f32 %3173, 1
  %3175 = fsub fast float %3174, %3156
  %3176 = extractvalue %dx.types.CBufRet.f32 %3173, 2
  %3177 = fmul fast float %3175, %3176
  %3178 = fsub fast float 1.000000e+00, %3177
  %3179 = call float @dx.op.unary.f32(i32 7, float %3178)  ; Saturate(value)
  %3180 = extractvalue %dx.types.CBufRet.f32 %3165, 2
  %3181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3182 = extractvalue %dx.types.CBufRet.f32 %3181, 2
  %3183 = fadd fast float %3182, %3180
  %3184 = fcmp fast ogt float %3183, 0.000000e+00
  br i1 %3184, label %3185, label %3209

; <label>:3185                                    ; preds = %3129
  %3186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3187 = extractvalue %dx.types.CBufRet.f32 %3186, 0
  %3188 = extractvalue %dx.types.CBufRet.f32 %3186, 1
  %3189 = fsub fast float %3171, %3187
  %3190 = fsub fast float %3172, %3188
  %3191 = fcmp fast olt float %3189, 0.000000e+00
  %3192 = fcmp fast olt float %3190, 0.000000e+00
  %3193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3194 = extractvalue %dx.types.CBufRet.f32 %3193, 0
  %3195 = extractvalue %dx.types.CBufRet.f32 %3193, 1
  %3196 = extractvalue %dx.types.CBufRet.f32 %3193, 2
  %3197 = extractvalue %dx.types.CBufRet.f32 %3193, 3
  %3198 = select i1 %3191, float %3194, float %3196
  %3199 = select i1 %3192, float %3195, float %3197
  %3200 = fmul fast float %3198, %3189
  %3201 = fmul fast float %3199, %3190
  %3202 = call float @dx.op.unary.f32(i32 6, float %3200)  ; FAbs(value)
  %3203 = call float @dx.op.unary.f32(i32 6, float %3201)  ; FAbs(value)
  %3204 = extractvalue %dx.types.CBufRet.f32 %3120, 0
  %3205 = call float @dx.op.binary.f32(i32 35, float %3202, float %3203)  ; FMax(a,b)
  %3206 = fsub fast float %3204, %3205
  %3207 = call float @dx.op.unary.f32(i32 7, float %3206)  ; Saturate(value)
  %3208 = fmul fast float %3207, %3179
  br label %3209

; <label>:3209                                    ; preds = %3185, %3129
  %3210 = phi float [ %3208, %3185 ], [ 0.000000e+00, %3129 ]
  %3211 = extractvalue %dx.types.CBufRet.f32 %3157, 2
  %3212 = extractvalue %dx.types.CBufRet.f32 %3181, 1
  %3213 = fadd fast float %3212, %3211
  %3214 = fcmp fast ogt float %3213, 0.000000e+00
  %3215 = extractvalue %dx.types.CBufRet.f32 %3120, 0
  br i1 %3214, label %3216, label %3239

; <label>:3216                                    ; preds = %3209
  %3217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3218 = extractvalue %dx.types.CBufRet.f32 %3217, 0
  %3219 = extractvalue %dx.types.CBufRet.f32 %3217, 1
  %3220 = fsub fast float %3163, %3218
  %3221 = fsub fast float %3164, %3219
  %3222 = fcmp fast olt float %3220, 0.000000e+00
  %3223 = fcmp fast olt float %3221, 0.000000e+00
  %3224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3225 = extractvalue %dx.types.CBufRet.f32 %3224, 0
  %3226 = extractvalue %dx.types.CBufRet.f32 %3224, 1
  %3227 = extractvalue %dx.types.CBufRet.f32 %3224, 2
  %3228 = extractvalue %dx.types.CBufRet.f32 %3224, 3
  %3229 = select i1 %3222, float %3225, float %3227
  %3230 = select i1 %3223, float %3226, float %3228
  %3231 = fmul fast float %3229, %3220
  %3232 = fmul fast float %3230, %3221
  %3233 = call float @dx.op.unary.f32(i32 6, float %3231)  ; FAbs(value)
  %3234 = call float @dx.op.unary.f32(i32 6, float %3232)  ; FAbs(value)
  %3235 = call float @dx.op.binary.f32(i32 35, float %3233, float %3234)  ; FMax(a,b)
  %3236 = fsub fast float %3215, %3235
  %3237 = call float @dx.op.unary.f32(i32 7, float %3236)  ; Saturate(value)
  %3238 = fmul fast float %3237, %3179
  br label %3239

; <label>:3239                                    ; preds = %3216, %3209
  %3240 = phi float [ %3238, %3216 ], [ 0.000000e+00, %3209 ]
  %3241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3242 = extractvalue %dx.types.CBufRet.f32 %3241, 1
  %3243 = call float @dx.op.unary.f32(i32 7, float %3242)  ; Saturate(value)
  %3244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3245 = extractvalue %dx.types.CBufRet.f32 %3244, 0
  %3246 = extractvalue %dx.types.CBufRet.f32 %3244, 1
  %3247 = fsub fast float %3148, %3245
  %3248 = fsub fast float %3152, %3246
  %3249 = fcmp fast olt float %3247, 0.000000e+00
  %3250 = fcmp fast olt float %3248, 0.000000e+00
  %3251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3252 = extractvalue %dx.types.CBufRet.f32 %3251, 0
  %3253 = extractvalue %dx.types.CBufRet.f32 %3251, 1
  %3254 = extractvalue %dx.types.CBufRet.f32 %3251, 2
  %3255 = extractvalue %dx.types.CBufRet.f32 %3251, 3
  %3256 = select i1 %3249, float %3252, float %3254
  %3257 = select i1 %3250, float %3253, float %3255
  %3258 = fmul fast float %3256, %3247
  %3259 = fmul fast float %3257, %3248
  %3260 = call float @dx.op.unary.f32(i32 6, float %3258)  ; FAbs(value)
  %3261 = call float @dx.op.unary.f32(i32 6, float %3259)  ; FAbs(value)
  %3262 = call float @dx.op.binary.f32(i32 35, float %3260, float %3261)  ; FMax(a,b)
  %3263 = fsub fast float %3215, %3262
  %3264 = call float @dx.op.unary.f32(i32 7, float %3263)  ; Saturate(value)
  %3265 = call float @dx.op.binary.f32(i32 36, float %3264, float %3243)  ; FMin(a,b)
  %3266 = fmul fast float %3265, %3179
  %3267 = fsub fast float %3240, %3266
  %3268 = fsub fast float %3210, %3240
  %3269 = fsub fast float %3268, %3266
  %3270 = call float @dx.op.binary.f32(i32 35, float %3240, float %3210)  ; FMax(a,b)
  %3271 = call float @dx.op.binary.f32(i32 35, float %3266, float %3270)  ; FMax(a,b)
  %3272 = fcmp fast olt float %3271, 1.000000e+00
  br i1 %3272, label %3273, label %3671, !dx.controlflow.hints !93

; <label>:3273                                    ; preds = %3239
  %3274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3275 = extractvalue %dx.types.CBufRet.f32 %3274, 0
  %3276 = fcmp fast une float %3275, 0.000000e+00
  br i1 %3276, label %3277, label %3671, !dx.controlflow.hints !94

; <label>:3277                                    ; preds = %3273
  %3278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3279 = extractvalue %dx.types.CBufRet.f32 %3278, 0
  %3280 = extractvalue %dx.types.CBufRet.f32 %3278, 1
  %3281 = extractvalue %dx.types.CBufRet.f32 %3278, 2
  %3282 = extractvalue %dx.types.CBufRet.f32 %3278, 3
  %3283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3284 = extractvalue %dx.types.CBufRet.f32 %3283, 0
  %3285 = extractvalue %dx.types.CBufRet.f32 %3283, 1
  %3286 = extractvalue %dx.types.CBufRet.f32 %3283, 2
  %3287 = extractvalue %dx.types.CBufRet.f32 %3283, 3
  %3288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3289 = extractvalue %dx.types.CBufRet.f32 %3288, 0
  %3290 = extractvalue %dx.types.CBufRet.f32 %3288, 1
  %3291 = extractvalue %dx.types.CBufRet.f32 %3288, 2
  %3292 = extractvalue %dx.types.CBufRet.f32 %3288, 3
  %3293 = fmul fast float %3279, %3125
  %3294 = call float @dx.op.tertiary.f32(i32 46, float %3126, float %3280, float %3293)  ; FMad(a,b,c)
  %3295 = call float @dx.op.tertiary.f32(i32 46, float %3127, float %3281, float %3294)  ; FMad(a,b,c)
  %3296 = fadd fast float %3295, %3282
  %3297 = fmul fast float %3284, %3125
  %3298 = call float @dx.op.tertiary.f32(i32 46, float %3126, float %3285, float %3297)  ; FMad(a,b,c)
  %3299 = call float @dx.op.tertiary.f32(i32 46, float %3127, float %3286, float %3298)  ; FMad(a,b,c)
  %3300 = fadd fast float %3299, %3287
  %3301 = fmul fast float %3289, %3125
  %3302 = call float @dx.op.tertiary.f32(i32 46, float %3126, float %3290, float %3301)  ; FMad(a,b,c)
  %3303 = call float @dx.op.tertiary.f32(i32 46, float %3127, float %3291, float %3302)  ; FMad(a,b,c)
  %3304 = fadd fast float %3303, %3292
  %3305 = fcmp fast oge float %3296, 1.000000e+00
  %3306 = fcmp fast oge float %3300, 1.000000e+00
  %3307 = or i1 %3305, %3306
  %3308 = fcmp fast olt float %3296, 0.000000e+00
  %3309 = fcmp fast olt float %3300, 0.000000e+00
  %3310 = or i1 %3308, %3309
  %3311 = or i1 %3307, %3310
  br i1 %3311, label %3671, label %3312, !dx.controlflow.hints !95

; <label>:3312                                    ; preds = %3277
  %3313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3314 = extractvalue %dx.types.CBufRet.f32 %3313, 0
  %3315 = extractvalue %dx.types.CBufRet.f32 %3313, 1
  %3316 = extractvalue %dx.types.CBufRet.f32 %3313, 2
  %3317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3318 = extractvalue %dx.types.CBufRet.i32 %3317, 2
  %3319 = uitofp i32 %3318 to float
  %3320 = extractvalue %dx.types.CBufRet.i32 %3317, 3
  %3321 = uitofp i32 %3320 to float
  %3322 = extractvalue %dx.types.CBufRet.f32 %3313, 3
  %3323 = fmul fast float %3322, 2.000000e+00
  %3324 = fsub fast float %3296, %3314
  %3325 = fsub fast float %3300, %3315
  %3326 = fmul fast float %3323, %3324
  %3327 = fmul fast float %3323, %3325
  %3328 = fdiv fast float 1.000000e+00, %3108
  %3329 = fmul fast float %3327, %3328
  %3330 = call float @dx.op.unary.f32(i32 6, float %3329)  ; FAbs(value)
  %3331 = fmul fast float %3316, %3127
  %3332 = fmul fast float %3331, %3323
  %3333 = call float @dx.op.unary.f32(i32 6, float %3332)  ; FAbs(value)
  %3334 = call float @dx.op.unary.f32(i32 6, float %3326)  ; FAbs(value)
  %3335 = call float @dx.op.binary.f32(i32 35, float %3333, float %3330)  ; FMax(a,b)
  %3336 = call float @dx.op.binary.f32(i32 35, float %3334, float %3335)  ; FMax(a,b)
  %3337 = fmul fast float %3336, 2.000000e+00
  %3338 = call float @dx.op.unary.f32(i32 23, float %3337)  ; Log(value)
  %3339 = call float @dx.op.binary.f32(i32 35, float %3338, float %3319)  ; FMax(a,b)
  %3340 = call float @dx.op.unary.f32(i32 22, float %3339)  ; Frc(value)
  %3341 = fadd fast float %3340, 0xBFEA666660000000
  %3342 = fmul fast float %3341, 8.000000e+00
  %3343 = call float @dx.op.unary.f32(i32 7, float %3342)  ; Saturate(value)
  %3344 = call float @dx.op.unary.f32(i32 27, float %3339)  ; Round_ni(value)
  %3345 = fadd fast float %3344, %3343
  %3346 = call float @dx.op.binary.f32(i32 36, float %3345, float %3321)  ; FMin(a,b)
  %3347 = call float @dx.op.unary.f32(i32 27, float %3346)  ; Round_ni(value)
  %3348 = fsub fast float -0.000000e+00, %3347
  %3349 = call float @dx.op.unary.f32(i32 21, float %3348)  ; Exp(value)
  %3350 = fmul fast float %3349, %3323
  %3351 = fmul fast float %3350, %3296
  %3352 = fmul fast float %3350, %3300
  %3353 = fmul fast float %3351, 2.500000e-01
  %3354 = fmul fast float %3352, 2.500000e-01
  %3355 = fadd fast float %3353, 5.000000e-01
  %3356 = fadd fast float %3354, 5.000000e-01
  %3357 = fsub fast float %3321, %3319
  %3358 = fptoui float %3357 to i32
  %3359 = add i32 %3358, 320
  %3360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %3359)  ; CBufferLoadLegacy(handle,regIndex)
  %3361 = extractvalue %dx.types.CBufRet.f32 %3360, 0
  %3362 = extractvalue %dx.types.CBufRet.f32 %3360, 1
  %3363 = fcmp fast une float %3346, %3321
  %3364 = fsub fast float %3296, %3361
  %3365 = fsub fast float %3300, %3362
  %3366 = call float @dx.op.unary.f32(i32 6, float %3364)  ; FAbs(value)
  %3367 = call float @dx.op.unary.f32(i32 6, float %3365)  ; FAbs(value)
  %3368 = fmul fast float %3366, %3350
  %3369 = fmul fast float %3367, %3350
  %3370 = fcmp fast olt float %3368, 1.000000e+00
  %3371 = fcmp fast olt float %3369, 1.000000e+00
  %3372 = and i1 %3370, %3371
  %3373 = or i1 %3363, %3372
  br i1 %3373, label %3374, label %3671, !dx.controlflow.hints !96

; <label>:3374                                    ; preds = %3312
  %3375 = fmul fast float %3352, 5.000000e-01
  %3376 = fmul fast float %3351, 5.000000e-01
  %3377 = fadd fast float %3375, 5.000000e-01
  %3378 = fadd fast float %3376, 5.000000e-01
  %3379 = sitofp i32 %3318 to float
  %3380 = fsub fast float %3346, %3379
  %3381 = call float @dx.op.unary.f32(i32 27, float %3380)  ; Round_ni(value)
  %3382 = call float @dx.op.unary.f32(i32 22, float %3346)  ; Frc(value)
  %3383 = call float @dx.op.unary.f32(i32 22, float %3378)  ; Frc(value)
  %3384 = call float @dx.op.unary.f32(i32 22, float %3377)  ; Frc(value)
  %3385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %3383, float %3384, float %3381, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3386 = extractvalue %dx.types.ResRet.f32 %3385, 0
  %3387 = extractvalue %dx.types.ResRet.f32 %3385, 1
  %3388 = extractvalue %dx.types.ResRet.f32 %3385, 2
  %3389 = extractvalue %dx.types.ResRet.f32 %3385, 3
  %3390 = fcmp fast ogt float %3382, 0.000000e+00
  br i1 %3390, label %3391, label %3412, !dx.controlflow.hints !97

; <label>:3391                                    ; preds = %3374
  %3392 = fadd fast float %3381, 1.000000e+00
  %3393 = call float @dx.op.unary.f32(i32 22, float %3355)  ; Frc(value)
  %3394 = call float @dx.op.unary.f32(i32 22, float %3356)  ; Frc(value)
  %3395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %3393, float %3394, float %3392, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3396 = extractvalue %dx.types.ResRet.f32 %3395, 0
  %3397 = extractvalue %dx.types.ResRet.f32 %3395, 1
  %3398 = extractvalue %dx.types.ResRet.f32 %3395, 2
  %3399 = extractvalue %dx.types.ResRet.f32 %3395, 3
  %3400 = fsub fast float %3396, %3386
  %3401 = fsub fast float %3397, %3387
  %3402 = fsub fast float %3398, %3388
  %3403 = fsub fast float %3399, %3389
  %3404 = fmul fast float %3400, %3382
  %3405 = fmul fast float %3401, %3382
  %3406 = fmul fast float %3402, %3382
  %3407 = fmul fast float %3403, %3382
  %3408 = fadd fast float %3404, %3386
  %3409 = fadd fast float %3405, %3387
  %3410 = fadd fast float %3406, %3388
  %3411 = fadd fast float %3407, %3389
  br label %3412

; <label>:3412                                    ; preds = %3391, %3374
  %3413 = phi float [ %3408, %3391 ], [ %3386, %3374 ]
  %3414 = phi float [ %3409, %3391 ], [ %3387, %3374 ]
  %3415 = phi float [ %3410, %3391 ], [ %3388, %3374 ]
  %3416 = phi float [ %3411, %3391 ], [ %3389, %3374 ]
  %3417 = fadd fast float %3413, -5.000000e-01
  %3418 = fadd fast float %3415, -5.000000e-01
  %3419 = fmul fast float %3417, 0xBFD5555560000000
  %3420 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3418, float %3419)  ; FMad(a,b,c)
  %3421 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3414, float 0.000000e+00)  ; FMad(a,b,c)
  %3422 = fadd fast float %3421, %3416
  %3423 = fmul fast float %3417, -7.500000e-01
  %3424 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3418, float %3423)  ; FMad(a,b,c)
  %3425 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3414, float 0.000000e+00)  ; FMad(a,b,c)
  %3426 = fadd fast float %3425, %3416
  %3427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3428 = extractvalue %dx.types.CBufRet.f32 %3427, 0
  %3429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3430 = extractvalue %dx.types.CBufRet.f32 %3429, 0
  %3431 = extractvalue %dx.types.CBufRet.f32 %3429, 1
  %3432 = extractvalue %dx.types.CBufRet.f32 %3429, 2
  %3433 = extractvalue %dx.types.CBufRet.f32 %3429, 3
  %3434 = fsub fast float %3430, %3420
  %3435 = fsub fast float %3431, %3422
  %3436 = fsub fast float %3432, %3424
  %3437 = fsub fast float %3433, %3426
  %3438 = fmul fast float %3434, %3428
  %3439 = fmul fast float %3435, %3428
  %3440 = fmul fast float %3436, %3428
  %3441 = fmul fast float %3437, %3428
  %3442 = fadd fast float %3438, %3420
  %3443 = fadd fast float %3439, %3422
  %3444 = fadd fast float %3440, %3424
  %3445 = fadd fast float %3441, %3426
  %3446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.i32 %3446, 0
  %3448 = and i32 %3447, 536870911
  %3449 = uitofp i32 %3448 to float
  %3450 = fmul fast float %3449, %3296
  %3451 = fmul fast float %3449, %3300
  %3452 = fptoui float %3450 to i32
  %3453 = fptoui float %3451 to i32
  %3454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.i32 %3454, 0
  %3456 = and i32 %3455, 31
  %3457 = lshr i32 %3452, %3456
  %3458 = lshr i32 %3453, %3456
  %3459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.i32 %3459, 0
  %3461 = and i32 %3460, 31
  %3462 = shl i32 1, %3461
  %3463 = call i32 @dx.op.binary.i32(i32 40, i32 %3462, i32 4)  ; UMin(a,b)
  %3464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.i32 %3464, 0
  %3466 = extractvalue %dx.types.ResRet.i32 %3464, 1
  %3467 = icmp eq i32 %3463, 0
  br i1 %3467, label %3509, label %3468

; <label>:3468                                    ; preds = %3412
  br label %3469

; <label>:3469                                    ; preds = %3497, %3468
  %3470 = phi i32 [ %3500, %3497 ], [ 0, %3468 ]
  %3471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.i32 %3471, 0
  %3473 = lshr i32 %3472, 16
  %3474 = and i32 %3473, 31
  %3475 = shl i32 %3458, %3474
  %3476 = add i32 %3475, %3457
  %3477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.i32 %3477, 0
  %3479 = and i32 %3478, 31
  %3480 = shl i32 %3476, %3479
  %3481 = add i32 %3480, %3470
  %3482 = shl i32 %3481, 2
  %3483 = add i32 %3482, 32
  %3484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.i32 %3484, 0
  %3486 = icmp slt i32 %3485, 0
  %3487 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3470
  %3488 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3470
  %3489 = bitcast float* %3487 to i32*
  %3490 = bitcast float* %3488 to i32*
  br i1 %3486, label %3491, label %3497

; <label>:3491                                    ; preds = %3469
  %3492 = and i32 %3485, 1073741823
  %3493 = add nuw nsw i32 %3492, 20
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = extractvalue %dx.types.ResRet.i32 %3494, 1
  br label %3497

; <label>:3497                                    ; preds = %3491, %3469
  %3498 = phi i32 [ %3495, %3491 ], [ %3465, %3469 ]
  %3499 = phi i32 [ %3496, %3491 ], [ %3466, %3469 ]
  store i32 %3498, i32* %3489, align 4
  store i32 %3499, i32* %3490, align 4
  %3500 = add nuw i32 %3470, 1
  %3501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3502 = extractvalue %dx.types.CBufRet.i32 %3501, 2
  %3503 = icmp eq i32 %3502, 0
  %3504 = icmp ugt i32 %3485, -1073741825
  %3505 = and i1 %3504, %3503
  %3506 = icmp ult i32 %3500, %3463
  %3507 = and i1 %3505, %3506
  br i1 %3507, label %3469, label %3508

; <label>:3508                                    ; preds = %3497
  br label %3509

; <label>:3509                                    ; preds = %3508, %3412
  %3510 = phi i32 [ 0, %3412 ], [ %3500, %3508 ]
  %3511 = extractvalue %dx.types.CBufRet.f32 %3274, 2
  %3512 = fptoui float %3511 to i32
  %3513 = icmp eq i32 %3512, 0
  br i1 %3513, label %3565, label %3514

; <label>:3514                                    ; preds = %3509
  br label %3515

; <label>:3515                                    ; preds = %3560, %3514
  %3516 = phi i32 [ %3561, %3560 ], [ %3510, %3514 ]
  %3517 = phi i32 [ %3562, %3560 ], [ 0, %3514 ]
  %3518 = lshr i32 %3517, 2
  %3519 = and i32 %3517, 3
  %3520 = add nuw nsw i32 %3518, 83
  %3521 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %3520)  ; CBufferLoadLegacy(handle,regIndex)
  %3522 = extractvalue %dx.types.CBufRet.i32 %3521, 0
  %3523 = extractvalue %dx.types.CBufRet.i32 %3521, 1
  %3524 = extractvalue %dx.types.CBufRet.i32 %3521, 2
  %3525 = extractvalue %dx.types.CBufRet.i32 %3521, 3
  %3526 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %3522, i32* %3526, align 4
  %3527 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %3523, i32* %3527, align 4
  %3528 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %3524, i32* %3528, align 4
  %3529 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %3525, i32* %3529, align 4
  %3530 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %3519
  %3531 = load i32, i32* %3530, align 4, !tbaa !98, !noalias !102
  %3532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3533 = extractvalue %dx.types.ResRet.i32 %3532, 0
  %3534 = lshr i32 %3533, 16
  %3535 = and i32 %3534, 31
  %3536 = shl i32 %3458, %3535
  %3537 = add i32 %3536, %3457
  %3538 = shl i32 %3537, 2
  %3539 = add i32 %3538, %3531
  %3540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3541 = extractvalue %dx.types.ResRet.i32 %3540, 0
  %3542 = icmp eq i32 %3541, 0
  br i1 %3542, label %3560, label %3543

; <label>:3543                                    ; preds = %3515
  %3544 = icmp slt i32 %3541, 0
  %3545 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3516
  %3546 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3516
  %3547 = bitcast float* %3545 to i32*
  %3548 = bitcast float* %3546 to i32*
  br i1 %3544, label %3549, label %3556

; <label>:3549                                    ; preds = %3543
  %3550 = and i32 %3541, 1073741823
  %3551 = add i32 %3531, 20
  %3552 = add i32 %3551, %3550
  %3553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3554 = extractvalue %dx.types.ResRet.i32 %3553, 0
  %3555 = extractvalue %dx.types.ResRet.i32 %3553, 1
  br label %3556

; <label>:3556                                    ; preds = %3549, %3543
  %3557 = phi i32 [ %3554, %3549 ], [ %3465, %3543 ]
  %3558 = phi i32 [ %3555, %3549 ], [ %3466, %3543 ]
  store i32 %3557, i32* %3547, align 4
  store i32 %3558, i32* %3548, align 4
  %3559 = add i32 %3516, 1
  br label %3560

; <label>:3560                                    ; preds = %3556, %3515
  %3561 = phi i32 [ %3516, %3515 ], [ %3559, %3556 ]
  %3562 = add nuw i32 %3517, 1
  %3563 = icmp eq i32 %3562, %3512
  br i1 %3563, label %3564, label %3515

; <label>:3564                                    ; preds = %3560
  br label %3565

; <label>:3565                                    ; preds = %3564, %3509
  %3566 = phi i32 [ %3510, %3509 ], [ %3561, %3564 ]
  %3567 = icmp eq i32 %3566, 1
  %3568 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  %3569 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 0
  br i1 %3567, label %3570, label %3573

; <label>:3570                                    ; preds = %3565
  %3571 = load float, float* %3568, align 4
  %3572 = load float, float* %3569, align 4
  br label %3600

; <label>:3573                                    ; preds = %3565
  %3574 = load float, float* %3568, align 4
  %3575 = load float, float* %3569, align 4
  %3576 = fdiv fast float 1.000000e+00, %3575
  %3577 = fsub fast float %3574, %3576
  %3578 = icmp ugt i32 %3566, 1
  br i1 %3578, label %3579, label %3595

; <label>:3579                                    ; preds = %3573
  br label %3580

; <label>:3580                                    ; preds = %3580, %3579
  %3581 = phi float [ %3590, %3580 ], [ %3577, %3579 ]
  %3582 = phi float [ %3591, %3580 ], [ %3574, %3579 ]
  %3583 = phi i32 [ %3592, %3580 ], [ 1, %3579 ]
  %3584 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3583
  %3585 = load float, float* %3584, align 4
  %3586 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3583
  %3587 = load float, float* %3586, align 4
  %3588 = fdiv fast float 1.000000e+00, %3587
  %3589 = fsub fast float %3585, %3588
  %3590 = call float @dx.op.binary.f32(i32 36, float %3581, float %3589)  ; FMin(a,b)
  %3591 = call float @dx.op.binary.f32(i32 35, float %3582, float %3585)  ; FMax(a,b)
  %3592 = add nuw i32 %3583, 1
  %3593 = icmp eq i32 %3592, %3566
  br i1 %3593, label %3594, label %3580

; <label>:3594                                    ; preds = %3580
  br label %3595

; <label>:3595                                    ; preds = %3594, %3573
  %3596 = phi float [ %3577, %3573 ], [ %3590, %3594 ]
  %3597 = phi float [ %3574, %3573 ], [ %3591, %3594 ]
  %3598 = fsub fast float %3597, %3596
  %3599 = fdiv fast float 1.000000e+00, %3598
  br label %3600

; <label>:3600                                    ; preds = %3595, %3570
  %3601 = phi float [ %3571, %3570 ], [ %3597, %3595 ]
  %3602 = phi float [ %3572, %3570 ], [ %3599, %3595 ]
  %3603 = fadd fast float %3304, %3601
  %3604 = fmul fast float %3603, %3602
  %3605 = call float @dx.op.unary.f32(i32 7, float %3604)  ; Saturate(value)
  %3606 = fmul fast float %3605, 2.000000e+00
  %3607 = fsub fast float 1.000000e+00, %3606
  %3608 = fmul fast float %3442, %3442
  %3609 = fsub fast float %3443, %3608
  %3610 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3609)  ; FMax(a,b)
  %3611 = fdiv fast float 1.000000e+00, %3610
  %3612 = fmul fast float %3443, %3442
  %3613 = fsub fast float %3444, %3612
  %3614 = fsub fast float %3607, %3442
  %3615 = fmul fast float %3607, %3607
  %3616 = fsub fast float %3615, %3443
  %3617 = fmul fast float %3611, %3613
  %3618 = fmul fast float %3617, %3614
  %3619 = fsub fast float %3616, %3618
  %3620 = fmul fast float %3443, %3443
  %3621 = fsub fast float %3445, %3620
  %3622 = fmul fast float %3613, %3613
  %3623 = fmul fast float %3622, %3611
  %3624 = fsub fast float %3621, %3623
  %3625 = fdiv fast float %3619, %3624
  %3626 = fmul fast float %3625, %3613
  %3627 = fsub fast float %3614, %3626
  %3628 = fmul fast float %3627, %3611
  %3629 = fmul fast float %3628, %3442
  %3630 = fsub fast float 1.000000e+00, %3629
  %3631 = fmul fast float %3625, %3443
  %3632 = fsub fast float %3630, %3631
  %3633 = fmul fast float %3628, %3628
  %3634 = fmul fast float %3625, 4.000000e+00
  %3635 = fmul fast float %3634, %3632
  %3636 = fsub fast float %3633, %3635
  %3637 = call float @dx.op.unary.f32(i32 24, float %3636)  ; Sqrt(value)
  %3638 = fcmp fast oge float %3628, 0.000000e+00
  %3639 = fsub fast float -0.000000e+00, %3637
  %3640 = select i1 %3638, float %3639, float %3637
  %3641 = fsub fast float %3640, %3628
  %3642 = fdiv fast float %3641, %3625
  %3643 = fdiv fast float %3632, %3641
  %3644 = fmul fast float %3642, 5.000000e-01
  %3645 = fmul fast float %3643, 2.000000e+00
  %3646 = select i1 %3638, float %3644, float %3645
  %3647 = select i1 %3638, float %3645, float %3644
  %3648 = call float @dx.op.binary.f32(i32 35, float %3646, float %3647)  ; FMax(a,b)
  %3649 = call float @dx.op.binary.f32(i32 36, float %3646, float %3647)  ; FMin(a,b)
  %3650 = fcmp fast ogt float %3607, %3648
  %3651 = fsub fast float %3607, %3649
  %3652 = fsub fast float %3607, %3648
  %3653 = fsub fast float %3648, %3649
  %3654 = select i1 %3650, float %3652, float %3653
  %3655 = fmul float %3651, %3654
  %3656 = select i1 %3650, float %3649, float %3607
  %3657 = fcmp fast ogt float %3607, %3649
  %3658 = fmul fast float %3656, %3648
  %3659 = fadd fast float %3656, %3648
  %3660 = fmul fast float %3659, %3442
  %3661 = fadd fast float %3658, %3443
  %3662 = fsub fast float %3661, %3660
  %3663 = fdiv fast float %3662, %3655
  %3664 = select i1 %3657, float %3663, float 0.000000e+00
  %3665 = fsub fast float 1.000000e+00, %3664
  %3666 = select i1 %3650, float %3665, float %3664
  %3667 = call float @dx.op.unary.f32(i32 7, float %3666)  ; Saturate(value)
  %3668 = extractvalue %dx.types.CBufRet.f32 %3427, 3
  %3669 = fmul fast float %3668, %3667
  %3670 = fsub fast float 1.000000e+00, %3669
  br label %3671

; <label>:3671                                    ; preds = %3600, %3312, %3277, %3273, %3239
  %3672 = phi float [ 1.000000e+00, %3239 ], [ %3670, %3600 ], [ 1.000000e+00, %3277 ], [ 1.000000e+00, %3312 ], [ 1.000000e+00, %3273 ]
  %3673 = fcmp fast ogt float %3269, 0.000000e+00
  br i1 %3673, label %3674, label %3836, !dx.controlflow.hints !111

; <label>:3674                                    ; preds = %3671
  %3675 = fadd fast float %3182, %3156
  %3676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3677 = extractvalue %dx.types.CBufRet.f32 %3676, 2
  %3678 = extractvalue %dx.types.CBufRet.f32 %3676, 3
  %3679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3680 = extractvalue %dx.types.CBufRet.f32 %3679, 2
  %3681 = call float @dx.op.binary.f32(i32 35, float %3675, float 0.000000e+00)  ; FMax(a,b)
  %3682 = fadd fast float %3681, 0x3F10000000000000
  %3683 = fcmp fast oeq float %3680, 0.000000e+00
  br i1 %3683, label %3684, label %3751

; <label>:3684                                    ; preds = %3674
  %3685 = extractvalue %dx.types.CBufRet.f32 %3676, 1
  %3686 = extractvalue %dx.types.CBufRet.f32 %3676, 0
  %3687 = fmul fast float %3686, %3171
  %3688 = fmul fast float %3685, %3172
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
  %3729 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %3726, float %3728, float undef, float undef, i32 0, i32 0, i32 undef, float %3682)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3730 = extractvalue %dx.types.ResRet.f32 %3729, 0
  %3731 = fmul fast float %3730, %3698
  %3732 = fadd fast float %3710, %3695
  %3733 = fmul fast float %3732, %3677
  %3734 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %3733, float %3728, float undef, float undef, i32 0, i32 0, i32 undef, float %3682)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3735 = extractvalue %dx.types.ResRet.f32 %3734, 0
  %3736 = fmul fast float %3735, %3699
  %3737 = fadd fast float %3724, %3696
  %3738 = fmul fast float %3737, %3678
  %3739 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %3726, float %3738, float undef, float undef, i32 0, i32 0, i32 undef, float %3682)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3740 = extractvalue %dx.types.ResRet.f32 %3739, 0
  %3741 = fmul fast float %3740, %3698
  %3742 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %3733, float %3738, float undef, float undef, i32 0, i32 0, i32 undef, float %3682)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3743 = extractvalue %dx.types.ResRet.f32 %3742, 0
  %3744 = fmul fast float %3743, %3699
  %3745 = fadd fast float %3744, %3741
  %3746 = fmul fast float %3745, %3713
  %3747 = fadd fast float %3736, %3731
  %3748 = fmul fast float %3747, %3712
  %3749 = fadd fast float %3748, %3746
  %3750 = fmul fast float %3749, 6.250000e-02
  br label %3836

; <label>:3751                                    ; preds = %3674
  %3752 = fmul fast float %215, 0x401921FB60000000
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
  %3774 = fadd fast float %3772, %3171
  %3775 = fadd fast float %3773, %3172
  %3776 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %51, float %3774, float %3775, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3777 = extractvalue %dx.types.ResRet.f32 %3776, 0
  %3778 = extractvalue %dx.types.ResRet.f32 %3776, 1
  %3779 = extractvalue %dx.types.ResRet.f32 %3776, 2
  %3780 = extractvalue %dx.types.ResRet.f32 %3776, 3
  %3781 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 0
  store float %3777, float* %3781, align 4
  %3782 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 1
  store float %3778, float* %3782, align 4
  %3783 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 2
  store float %3779, float* %3783, align 4
  %3784 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 3
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
  %3795 = getelementptr [4 x float], [4 x float]* %87, i32 0, i32 %3792
  %3796 = load float, float* %3795, align 4, !tbaa !112, !noalias !102
  %3797 = fsub fast float %3796, %3682
  %3798 = fcmp fast olt float %3797, 0.000000e+00
  %3799 = select i1 %3798, float 0.000000e+00, float 1.000000e+00
  %3800 = fadd fast float %3799, %3794
  %3801 = fmul fast float %3799, %3797
  %3802 = fadd fast float %3801, %3793
  %3803 = add nuw nsw i32 %3792, 1
  %3804 = icmp eq i32 %3803, 4
  br i1 %3804, label %3805, label %3791, !llvm.loop !114

; <label>:3805                                    ; preds = %3791
  %3806 = add nuw nsw i32 %3759, 1
  %3807 = icmp eq i32 %3806, 8
  br i1 %3807, label %3808, label %3756, !llvm.loop !115

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

; <label>:3836                                    ; preds = %3808, %3684, %3671
  %3837 = phi float [ 1.000000e+00, %3671 ], [ %3750, %3684 ], [ %3835, %3808 ]
  %3838 = fcmp fast ogt float %3267, 0.000000e+00
  br i1 %3838, label %3839, label %4003, !dx.controlflow.hints !116

; <label>:3839                                    ; preds = %3836
  %3840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3841 = extractvalue %dx.types.CBufRet.f32 %3840, 1
  %3842 = fadd fast float %3841, %3156
  %3843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3844 = extractvalue %dx.types.CBufRet.f32 %3843, 2
  %3845 = extractvalue %dx.types.CBufRet.f32 %3843, 3
  %3846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3847 = extractvalue %dx.types.CBufRet.f32 %3846, 1
  %3848 = call float @dx.op.binary.f32(i32 35, float %3842, float 0.000000e+00)  ; FMax(a,b)
  %3849 = fadd fast float %3848, 0x3F10000000000000
  %3850 = fcmp fast oeq float %3847, 0.000000e+00
  br i1 %3850, label %3851, label %3918

; <label>:3851                                    ; preds = %3839
  %3852 = extractvalue %dx.types.CBufRet.f32 %3843, 1
  %3853 = extractvalue %dx.types.CBufRet.f32 %3843, 0
  %3854 = fmul fast float %3853, %3163
  %3855 = fmul fast float %3852, %3164
  %3856 = fadd fast float %3854, 5.000000e-01
  %3857 = call float @dx.op.unary.f32(i32 27, float %3856)  ; Round_ni(value)
  %3858 = fadd fast float %3855, 5.000000e-01
  %3859 = call float @dx.op.unary.f32(i32 27, float %3858)  ; Round_ni(value)
  %3860 = fsub fast float %3856, %3857
  %3861 = fsub fast float %3858, %3859
  %3862 = fadd fast float %3857, -5.000000e-01
  %3863 = fadd fast float %3859, -5.000000e-01
  %3864 = fmul fast float %3860, 2.000000e+00
  %3865 = fsub fast float 3.000000e+00, %3864
  %3866 = fadd fast float %3864, 1.000000e+00
  %3867 = fsub fast float 2.000000e+00, %3860
  %3868 = bitcast float %3865 to i32
  %3869 = sub nsw i32 2129859010, %3868
  %3870 = bitcast i32 %3869 to float
  %3871 = fmul fast float %3870, %3867
  %3872 = fadd fast float %3871, -1.000000e+00
  %3873 = bitcast float %3866 to i32
  %3874 = sub nsw i32 2129859010, %3873
  %3875 = bitcast i32 %3874 to float
  %3876 = fmul fast float %3875, %3860
  %3877 = fadd fast float %3876, 1.000000e+00
  %3878 = fmul fast float %3861, 2.000000e+00
  %3879 = fsub fast float 3.000000e+00, %3878
  %3880 = fadd fast float %3878, 1.000000e+00
  %3881 = fsub fast float 2.000000e+00, %3861
  %3882 = bitcast float %3879 to i32
  %3883 = sub nsw i32 2129859010, %3882
  %3884 = bitcast i32 %3883 to float
  %3885 = fmul fast float %3884, %3881
  %3886 = fadd fast float %3885, -1.000000e+00
  %3887 = bitcast float %3880 to i32
  %3888 = sub nsw i32 2129859010, %3887
  %3889 = bitcast i32 %3888 to float
  %3890 = fmul fast float %3889, %3861
  %3891 = fadd fast float %3890, 1.000000e+00
  %3892 = fadd fast float %3872, %3862
  %3893 = fmul fast float %3892, %3844
  %3894 = fadd fast float %3886, %3863
  %3895 = fmul fast float %3894, %3845
  %3896 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %3893, float %3895, float undef, float undef, i32 0, i32 0, i32 undef, float %3849)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3897 = extractvalue %dx.types.ResRet.f32 %3896, 0
  %3898 = fmul fast float %3897, %3865
  %3899 = fadd fast float %3877, %3862
  %3900 = fmul fast float %3899, %3844
  %3901 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %3900, float %3895, float undef, float undef, i32 0, i32 0, i32 undef, float %3849)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3902 = extractvalue %dx.types.ResRet.f32 %3901, 0
  %3903 = fmul fast float %3902, %3866
  %3904 = fadd fast float %3891, %3863
  %3905 = fmul fast float %3904, %3845
  %3906 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %3893, float %3905, float undef, float undef, i32 0, i32 0, i32 undef, float %3849)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3907 = extractvalue %dx.types.ResRet.f32 %3906, 0
  %3908 = fmul fast float %3907, %3865
  %3909 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %3900, float %3905, float undef, float undef, i32 0, i32 0, i32 undef, float %3849)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3910 = extractvalue %dx.types.ResRet.f32 %3909, 0
  %3911 = fmul fast float %3910, %3866
  %3912 = fadd fast float %3911, %3908
  %3913 = fmul fast float %3912, %3880
  %3914 = fadd fast float %3903, %3898
  %3915 = fmul fast float %3914, %3879
  %3916 = fadd fast float %3915, %3913
  %3917 = fmul fast float %3916, 6.250000e-02
  br label %4003

; <label>:3918                                    ; preds = %3839
  %3919 = fmul fast float %215, 0x401921FB60000000
  %3920 = call float @dx.op.unary.f32(i32 13, float %3919)  ; Sin(value)
  %3921 = call float @dx.op.unary.f32(i32 12, float %3919)  ; Cos(value)
  %3922 = fsub fast float -0.000000e+00, %3920
  br label %3923

; <label>:3923                                    ; preds = %3972, %3918
  %3924 = phi float [ 0.000000e+00, %3918 ], [ %3967, %3972 ]
  %3925 = phi float [ 0.000000e+00, %3918 ], [ %3969, %3972 ]
  %3926 = phi i32 [ 0, %3918 ], [ %3973, %3972 ]
  %3927 = mul i32 %3926, 2
  %3928 = add i32 0, %3927
  %3929 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3928
  %3930 = load float, float* %3929, align 4
  %3931 = mul i32 %3926, 2
  %3932 = add i32 1, %3931
  %3933 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3932
  %3934 = load float, float* %3933, align 4
  %3935 = fmul fast float %3930, %3921
  %3936 = call float @dx.op.tertiary.f32(i32 46, float %3934, float %3922, float %3935)  ; FMad(a,b,c)
  %3937 = fmul fast float %3930, %3920
  %3938 = call float @dx.op.tertiary.f32(i32 46, float %3934, float %3921, float %3937)  ; FMad(a,b,c)
  %3939 = fmul fast float %3936, %3847
  %3940 = fmul fast float %3938, %3847
  %3941 = fadd fast float %3939, %3163
  %3942 = fadd fast float %3940, %3164
  %3943 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %51, float %3941, float %3942, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3944 = extractvalue %dx.types.ResRet.f32 %3943, 0
  %3945 = extractvalue %dx.types.ResRet.f32 %3943, 1
  %3946 = extractvalue %dx.types.ResRet.f32 %3943, 2
  %3947 = extractvalue %dx.types.ResRet.f32 %3943, 3
  %3948 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 0
  store float %3944, float* %3948, align 4
  %3949 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 1
  store float %3945, float* %3949, align 4
  %3950 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 2
  store float %3946, float* %3950, align 4
  %3951 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 3
  store float %3947, float* %3951, align 4
  %3952 = fsub fast float %3944, %3849
  %3953 = fcmp fast olt float %3952, 0.000000e+00
  %3954 = select i1 %3953, float 0.000000e+00, float 1.000000e+00
  %3955 = fadd fast float %3954, %3924
  %3956 = fmul fast float %3954, %3952
  %3957 = fadd fast float %3956, %3925
  br label %3958

; <label>:3958                                    ; preds = %3958, %3923
  %3959 = phi i32 [ 1, %3923 ], [ %3970, %3958 ]
  %3960 = phi float [ %3957, %3923 ], [ %3969, %3958 ]
  %3961 = phi float [ %3955, %3923 ], [ %3967, %3958 ]
  %3962 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 %3959
  %3963 = load float, float* %3962, align 4, !tbaa !112, !noalias !102
  %3964 = fsub fast float %3963, %3849
  %3965 = fcmp fast olt float %3964, 0.000000e+00
  %3966 = select i1 %3965, float 0.000000e+00, float 1.000000e+00
  %3967 = fadd fast float %3966, %3961
  %3968 = fmul fast float %3966, %3964
  %3969 = fadd fast float %3968, %3960
  %3970 = add nuw nsw i32 %3959, 1
  %3971 = icmp eq i32 %3970, 4
  br i1 %3971, label %3972, label %3958, !llvm.loop !114

; <label>:3972                                    ; preds = %3958
  %3973 = add nuw nsw i32 %3926, 1
  %3974 = icmp eq i32 %3973, 8
  br i1 %3974, label %3975, label %3923, !llvm.loop !115

; <label>:3975                                    ; preds = %3972
  %3976 = fdiv fast float 1.000000e+00, %3967
  %3977 = fmul fast float %3976, %3969
  %3978 = fdiv fast float 1.000000e+00, %3849
  %3979 = fmul fast float %3977, %3978
  %3980 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3981 = call float @dx.op.binary.f32(i32 35, float %3980, float 0.000000e+00)  ; FMax(a,b)
  %3982 = fmul fast float %3967, 3.125000e-02
  %3983 = call float @dx.op.unary.f32(i32 7, float %3982)  ; Saturate(value)
  %3984 = fmul fast float %3983, 2.000000e+00
  %3985 = fadd fast float %3984, -1.000000e+00
  %3986 = fcmp fast ogt float %3985, 0.000000e+00
  %3987 = fcmp fast olt float %3985, 0.000000e+00
  %3988 = zext i1 %3986 to i32
  %3989 = zext i1 %3987 to i32
  %3990 = sub nsw i32 %3988, %3989
  %3991 = sitofp i32 %3990 to float
  %3992 = fmul fast float %3991, %3985
  %3993 = fsub fast float 1.000000e+00, %3992
  %3994 = fmul fast float %3993, %3993
  %3995 = fmul fast float %3994, %3993
  %3996 = fsub fast float %3993, %3995
  %3997 = fmul fast float %3996, %3981
  %3998 = fsub fast float 1.000000e+00, %3995
  %3999 = fsub fast float %3998, %3997
  %4000 = fmul fast float %3991, 5.000000e-01
  %4001 = fmul fast float %4000, %3999
  %4002 = fsub fast float 5.000000e-01, %4001
  br label %4003

; <label>:4003                                    ; preds = %3975, %3851, %3836
  %4004 = phi float [ 1.000000e+00, %3836 ], [ %3917, %3851 ], [ %4002, %3975 ]
  %4005 = fcmp fast ogt float %3266, 0.000000e+00
  br i1 %4005, label %4006, label %4170, !dx.controlflow.hints !117

; <label>:4006                                    ; preds = %4003
  %4007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4008 = extractvalue %dx.types.CBufRet.f32 %4007, 0
  %4009 = fadd fast float %4008, %3156
  %4010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4011 = extractvalue %dx.types.CBufRet.f32 %4010, 2
  %4012 = extractvalue %dx.types.CBufRet.f32 %4010, 3
  %4013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4014 = extractvalue %dx.types.CBufRet.f32 %4013, 0
  %4015 = call float @dx.op.binary.f32(i32 35, float %4009, float 0.000000e+00)  ; FMax(a,b)
  %4016 = fadd fast float %4015, 0x3F10000000000000
  %4017 = fcmp fast oeq float %4014, 0.000000e+00
  br i1 %4017, label %4018, label %4085

; <label>:4018                                    ; preds = %4006
  %4019 = extractvalue %dx.types.CBufRet.f32 %4010, 1
  %4020 = extractvalue %dx.types.CBufRet.f32 %4010, 0
  %4021 = fmul fast float %4020, %3148
  %4022 = fmul fast float %4019, %3152
  %4023 = fadd fast float %4021, 5.000000e-01
  %4024 = call float @dx.op.unary.f32(i32 27, float %4023)  ; Round_ni(value)
  %4025 = fadd fast float %4022, 5.000000e-01
  %4026 = call float @dx.op.unary.f32(i32 27, float %4025)  ; Round_ni(value)
  %4027 = fsub fast float %4023, %4024
  %4028 = fsub fast float %4025, %4026
  %4029 = fadd fast float %4024, -5.000000e-01
  %4030 = fadd fast float %4026, -5.000000e-01
  %4031 = fmul fast float %4027, 2.000000e+00
  %4032 = fsub fast float 3.000000e+00, %4031
  %4033 = fadd fast float %4031, 1.000000e+00
  %4034 = fsub fast float 2.000000e+00, %4027
  %4035 = bitcast float %4032 to i32
  %4036 = sub nsw i32 2129859010, %4035
  %4037 = bitcast i32 %4036 to float
  %4038 = fmul fast float %4037, %4034
  %4039 = fadd fast float %4038, -1.000000e+00
  %4040 = bitcast float %4033 to i32
  %4041 = sub nsw i32 2129859010, %4040
  %4042 = bitcast i32 %4041 to float
  %4043 = fmul fast float %4042, %4027
  %4044 = fadd fast float %4043, 1.000000e+00
  %4045 = fmul fast float %4028, 2.000000e+00
  %4046 = fsub fast float 3.000000e+00, %4045
  %4047 = fadd fast float %4045, 1.000000e+00
  %4048 = fsub fast float 2.000000e+00, %4028
  %4049 = bitcast float %4046 to i32
  %4050 = sub nsw i32 2129859010, %4049
  %4051 = bitcast i32 %4050 to float
  %4052 = fmul fast float %4051, %4048
  %4053 = fadd fast float %4052, -1.000000e+00
  %4054 = bitcast float %4047 to i32
  %4055 = sub nsw i32 2129859010, %4054
  %4056 = bitcast i32 %4055 to float
  %4057 = fmul fast float %4056, %4028
  %4058 = fadd fast float %4057, 1.000000e+00
  %4059 = fadd fast float %4039, %4029
  %4060 = fmul fast float %4059, %4011
  %4061 = fadd fast float %4053, %4030
  %4062 = fmul fast float %4061, %4012
  %4063 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4060, float %4062, float undef, float undef, i32 0, i32 0, i32 undef, float %4016)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4064 = extractvalue %dx.types.ResRet.f32 %4063, 0
  %4065 = fmul fast float %4064, %4032
  %4066 = fadd fast float %4044, %4029
  %4067 = fmul fast float %4066, %4011
  %4068 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4067, float %4062, float undef, float undef, i32 0, i32 0, i32 undef, float %4016)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4069 = extractvalue %dx.types.ResRet.f32 %4068, 0
  %4070 = fmul fast float %4069, %4033
  %4071 = fadd fast float %4058, %4030
  %4072 = fmul fast float %4071, %4012
  %4073 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4060, float %4072, float undef, float undef, i32 0, i32 0, i32 undef, float %4016)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4074 = extractvalue %dx.types.ResRet.f32 %4073, 0
  %4075 = fmul fast float %4074, %4032
  %4076 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4067, float %4072, float undef, float undef, i32 0, i32 0, i32 undef, float %4016)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4077 = extractvalue %dx.types.ResRet.f32 %4076, 0
  %4078 = fmul fast float %4077, %4033
  %4079 = fadd fast float %4078, %4075
  %4080 = fmul fast float %4079, %4047
  %4081 = fadd fast float %4070, %4065
  %4082 = fmul fast float %4081, %4046
  %4083 = fadd fast float %4082, %4080
  %4084 = fmul fast float %4083, 6.250000e-02
  br label %4170

; <label>:4085                                    ; preds = %4006
  %4086 = fmul fast float %215, 0x401921FB60000000
  %4087 = call float @dx.op.unary.f32(i32 13, float %4086)  ; Sin(value)
  %4088 = call float @dx.op.unary.f32(i32 12, float %4086)  ; Cos(value)
  %4089 = fsub fast float -0.000000e+00, %4087
  br label %4090

; <label>:4090                                    ; preds = %4139, %4085
  %4091 = phi float [ 0.000000e+00, %4085 ], [ %4134, %4139 ]
  %4092 = phi float [ 0.000000e+00, %4085 ], [ %4136, %4139 ]
  %4093 = phi i32 [ 0, %4085 ], [ %4140, %4139 ]
  %4094 = mul i32 %4093, 2
  %4095 = add i32 0, %4094
  %4096 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4095
  %4097 = load float, float* %4096, align 4
  %4098 = mul i32 %4093, 2
  %4099 = add i32 1, %4098
  %4100 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4099
  %4101 = load float, float* %4100, align 4
  %4102 = fmul fast float %4097, %4088
  %4103 = call float @dx.op.tertiary.f32(i32 46, float %4101, float %4089, float %4102)  ; FMad(a,b,c)
  %4104 = fmul fast float %4097, %4087
  %4105 = call float @dx.op.tertiary.f32(i32 46, float %4101, float %4088, float %4104)  ; FMad(a,b,c)
  %4106 = fmul fast float %4103, %4014
  %4107 = fmul fast float %4105, %4014
  %4108 = fadd fast float %4106, %3148
  %4109 = fadd fast float %4107, %3152
  %4110 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %51, float %4108, float %4109, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4111 = extractvalue %dx.types.ResRet.f32 %4110, 0
  %4112 = extractvalue %dx.types.ResRet.f32 %4110, 1
  %4113 = extractvalue %dx.types.ResRet.f32 %4110, 2
  %4114 = extractvalue %dx.types.ResRet.f32 %4110, 3
  %4115 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 0
  store float %4111, float* %4115, align 4
  %4116 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 1
  store float %4112, float* %4116, align 4
  %4117 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 2
  store float %4113, float* %4117, align 4
  %4118 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 3
  store float %4114, float* %4118, align 4
  %4119 = fsub fast float %4111, %4016
  %4120 = fcmp fast olt float %4119, 0.000000e+00
  %4121 = select i1 %4120, float 0.000000e+00, float 1.000000e+00
  %4122 = fadd fast float %4121, %4091
  %4123 = fmul fast float %4121, %4119
  %4124 = fadd fast float %4123, %4092
  br label %4125

; <label>:4125                                    ; preds = %4125, %4090
  %4126 = phi i32 [ 1, %4090 ], [ %4137, %4125 ]
  %4127 = phi float [ %4124, %4090 ], [ %4136, %4125 ]
  %4128 = phi float [ %4122, %4090 ], [ %4134, %4125 ]
  %4129 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 %4126
  %4130 = load float, float* %4129, align 4, !tbaa !112, !noalias !102
  %4131 = fsub fast float %4130, %4016
  %4132 = fcmp fast olt float %4131, 0.000000e+00
  %4133 = select i1 %4132, float 0.000000e+00, float 1.000000e+00
  %4134 = fadd fast float %4133, %4128
  %4135 = fmul fast float %4133, %4131
  %4136 = fadd fast float %4135, %4127
  %4137 = add nuw nsw i32 %4126, 1
  %4138 = icmp eq i32 %4137, 4
  br i1 %4138, label %4139, label %4125, !llvm.loop !114

; <label>:4139                                    ; preds = %4125
  %4140 = add nuw nsw i32 %4093, 1
  %4141 = icmp eq i32 %4140, 8
  br i1 %4141, label %4142, label %4090, !llvm.loop !115

; <label>:4142                                    ; preds = %4139
  %4143 = fdiv fast float 1.000000e+00, %4134
  %4144 = fmul fast float %4143, %4136
  %4145 = fdiv fast float 1.000000e+00, %4016
  %4146 = fmul fast float %4144, %4145
  %4147 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4148 = call float @dx.op.binary.f32(i32 35, float %4147, float 0.000000e+00)  ; FMax(a,b)
  %4149 = fmul fast float %4134, 3.125000e-02
  %4150 = call float @dx.op.unary.f32(i32 7, float %4149)  ; Saturate(value)
  %4151 = fmul fast float %4150, 2.000000e+00
  %4152 = fadd fast float %4151, -1.000000e+00
  %4153 = fcmp fast ogt float %4152, 0.000000e+00
  %4154 = fcmp fast olt float %4152, 0.000000e+00
  %4155 = zext i1 %4153 to i32
  %4156 = zext i1 %4154 to i32
  %4157 = sub nsw i32 %4155, %4156
  %4158 = sitofp i32 %4157 to float
  %4159 = fmul fast float %4158, %4152
  %4160 = fsub fast float 1.000000e+00, %4159
  %4161 = fmul fast float %4160, %4160
  %4162 = fmul fast float %4161, %4160
  %4163 = fsub fast float %4160, %4162
  %4164 = fmul fast float %4163, %4148
  %4165 = fsub fast float 1.000000e+00, %4162
  %4166 = fsub fast float %4165, %4164
  %4167 = fmul fast float %4158, 5.000000e-01
  %4168 = fmul fast float %4167, %4166
  %4169 = fsub fast float 5.000000e-01, %4168
  br label %4170

; <label>:4170                                    ; preds = %4142, %4018, %4003
  %4171 = phi float [ 1.000000e+00, %4003 ], [ %4084, %4018 ], [ %4169, %4142 ]
  %4172 = fsub fast float %3837, %3672
  %4173 = fmul fast float %4172, %3210
  %4174 = fadd fast float %4173, %3672
  %4175 = fsub fast float %4004, %4174
  %4176 = fmul fast float %4175, %3240
  %4177 = fadd fast float %4176, %4174
  %4178 = fsub fast float %4171, %4177
  %4179 = fmul fast float %4178, %3266
  %4180 = fadd fast float %4179, %4177
  %4181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.f32 %4181, 2
  %4183 = fcmp fast ogt float %4182, 0.000000e+00
  br i1 %4183, label %4184, label %4224, !dx.controlflow.hints !118

; <label>:4184                                    ; preds = %4170
  %4185 = fcmp fast ugt float %4182, 0.000000e+00
  br i1 %4185, label %4186, label %4221

; <label>:4186                                    ; preds = %4184
  %4187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4188 = extractvalue %dx.types.CBufRet.f32 %4187, 0
  %4189 = extractvalue %dx.types.CBufRet.f32 %4187, 1
  %4190 = extractvalue %dx.types.CBufRet.f32 %4187, 2
  %4191 = extractvalue %dx.types.CBufRet.f32 %4187, 3
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 0
  %4194 = extractvalue %dx.types.CBufRet.f32 %4192, 1
  %4195 = extractvalue %dx.types.CBufRet.f32 %4192, 2
  %4196 = extractvalue %dx.types.CBufRet.f32 %4192, 3
  %4197 = extractvalue %dx.types.CBufRet.f32 %4181, 0
  %4198 = extractvalue %dx.types.CBufRet.f32 %4181, 1
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 0
  %4201 = extractvalue %dx.types.CBufRet.f32 %4199, 1
  %4202 = extractvalue %dx.types.CBufRet.f32 %4199, 2
  %4203 = fadd fast float %4200, %3125
  %4204 = fadd fast float %4201, %3126
  %4205 = fadd fast float %4202, %3127
  %4206 = fmul fast float %4203, %4188
  %4207 = call float @dx.op.tertiary.f32(i32 46, float %4189, float %4204, float %4206)  ; FMad(a,b,c)
  %4208 = call float @dx.op.tertiary.f32(i32 46, float %4190, float %4205, float %4207)  ; FMad(a,b,c)
  %4209 = fadd fast float %4208, %4191
  %4210 = fmul fast float %4203, %4193
  %4211 = call float @dx.op.tertiary.f32(i32 46, float %4194, float %4204, float %4210)  ; FMad(a,b,c)
  %4212 = call float @dx.op.tertiary.f32(i32 46, float %4195, float %4205, float %4211)  ; FMad(a,b,c)
  %4213 = fadd fast float %4212, %4196
  %4214 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %4209, float %4213, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = fmul fast float %4215, %4198
  %4217 = fadd fast float %4216, %4197
  %4218 = call float @dx.op.unary.f32(i32 7, float %4217)  ; Saturate(value)
  %4219 = fmul fast float %4218, %4182
  %4220 = fsub fast float 1.000000e+00, %4219
  br label %4221

; <label>:4221                                    ; preds = %4186, %4184
  %4222 = phi float [ %4220, %4186 ], [ 1.000000e+00, %4184 ]
  %4223 = fmul fast float %4222, %4180
  br label %4224

; <label>:4224                                    ; preds = %4221, %4170, %3105
  %4225 = phi float [ 1.000000e+00, %3105 ], [ %4223, %4221 ], [ %4180, %4170 ]
  %4226 = call float @dx.op.binary.f32(i32 36, float %4225, float %4225)  ; FMin(a,b)
  %4227 = call float @dx.op.binary.f32(i32 36, float %4225, float %4226)  ; FMin(a,b)
  %4228 = fcmp fast ogt float %4227, 0.000000e+00
  br i1 %4228, label %4229, label %4394, !dx.controlflow.hints !119

; <label>:4229                                    ; preds = %4224
  %4230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4231 = extractvalue %dx.types.CBufRet.f32 %4230, 0
  %4232 = extractvalue %dx.types.CBufRet.f32 %4230, 1
  %4233 = extractvalue %dx.types.CBufRet.f32 %4230, 2
  %4234 = extractvalue %dx.types.CBufRet.f32 %4230, 3
  %4235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.f32 %4235, 0
  %4237 = extractvalue %dx.types.CBufRet.f32 %4235, 1
  %4238 = extractvalue %dx.types.CBufRet.f32 %4235, 2
  %4239 = extractvalue %dx.types.CBufRet.f32 %4235, 3
  %4240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.f32 %4240, 0
  %4242 = extractvalue %dx.types.CBufRet.f32 %4240, 1
  %4243 = extractvalue %dx.types.CBufRet.f32 %4240, 2
  %4244 = extractvalue %dx.types.CBufRet.f32 %4240, 3
  %4245 = fmul fast float %4231, %3125
  %4246 = call float @dx.op.tertiary.f32(i32 46, float %3126, float %4232, float %4245)  ; FMad(a,b,c)
  %4247 = call float @dx.op.tertiary.f32(i32 46, float %3127, float %4233, float %4246)  ; FMad(a,b,c)
  %4248 = fadd fast float %4247, %4234
  %4249 = fmul fast float %4236, %3125
  %4250 = call float @dx.op.tertiary.f32(i32 46, float %3126, float %4237, float %4249)  ; FMad(a,b,c)
  %4251 = call float @dx.op.tertiary.f32(i32 46, float %3127, float %4238, float %4250)  ; FMad(a,b,c)
  %4252 = fadd fast float %4251, %4239
  %4253 = fmul fast float %4241, %3125
  %4254 = call float @dx.op.tertiary.f32(i32 46, float %3126, float %4242, float %4253)  ; FMad(a,b,c)
  %4255 = call float @dx.op.tertiary.f32(i32 46, float %3127, float %4243, float %4254)  ; FMad(a,b,c)
  %4256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4257 = extractvalue %dx.types.CBufRet.f32 %4256, 0
  %4258 = extractvalue %dx.types.CBufRet.f32 %4256, 1
  %4259 = extractvalue %dx.types.CBufRet.f32 %4256, 3
  %4260 = fmul fast float %4259, %4248
  %4261 = fmul fast float %4259, %4252
  %4262 = fadd fast float %4260, %4257
  %4263 = fadd fast float %4261, %4258
  %4264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.f32 %4264, 0
  %4266 = extractvalue %dx.types.CBufRet.f32 %4264, 1
  %4267 = fsub fast float %4262, %4265
  %4268 = fsub fast float %4263, %4266
  %4269 = fcmp fast olt float %4267, 0.000000e+00
  %4270 = fcmp fast olt float %4268, 0.000000e+00
  %4271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4272 = extractvalue %dx.types.CBufRet.f32 %4271, 0
  %4273 = extractvalue %dx.types.CBufRet.f32 %4271, 1
  %4274 = extractvalue %dx.types.CBufRet.f32 %4271, 2
  %4275 = extractvalue %dx.types.CBufRet.f32 %4271, 3
  %4276 = select i1 %4269, float %4272, float %4274
  %4277 = select i1 %4270, float %4273, float %4275
  %4278 = fmul fast float %4276, %4267
  %4279 = fmul fast float %4277, %4268
  %4280 = call float @dx.op.unary.f32(i32 6, float %4278)  ; FAbs(value)
  %4281 = call float @dx.op.unary.f32(i32 6, float %4279)  ; FAbs(value)
  %4282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4283 = extractvalue %dx.types.CBufRet.f32 %4282, 0
  %4284 = call float @dx.op.binary.f32(i32 35, float %4280, float %4281)  ; FMax(a,b)
  %4285 = fsub fast float %4283, %4284
  %4286 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4287 = fcmp fast ogt float %4286, 0.000000e+00
  br i1 %4287, label %4288, label %4329, !dx.controlflow.hints !120

; <label>:4288                                    ; preds = %4229
  %4289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %4262, float %4263, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4290 = extractvalue %dx.types.ResRet.f32 %4289, 1
  %4291 = fcmp fast ogt float %4290, 0.000000e+00
  br i1 %4291, label %4292, label %4324

; <label>:4292                                    ; preds = %4288
  %4293 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %4262, float %4263, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4294 = extractvalue %dx.types.ResRet.f32 %4293, 0
  %4295 = extractvalue %dx.types.ResRet.f32 %4293, 1
  %4296 = extractvalue %dx.types.ResRet.f32 %4293, 2
  %4297 = extractvalue %dx.types.ResRet.f32 %4293, 3
  %4298 = fsub fast float 1.000000e+00, %4244
  %4299 = fsub fast float %4298, %4255
  %4300 = fmul fast float %4299, 0x400921FB60000000
  %4301 = fadd fast float %4300, 0x3FF921FB60000000
  %4302 = call float @dx.op.unary.f32(i32 13, float %4301)  ; Sin(value)
  %4303 = fadd fast float %4302, -1.000000e+00
  %4304 = fmul fast float %4303, 0x3FD45F3060000000
  %4305 = fmul fast float %4299, 0x401921FB60000000
  %4306 = fadd fast float %4305, 0x400921FB60000000
  %4307 = call float @dx.op.unary.f32(i32 13, float %4306)  ; Sin(value)
  %4308 = fadd fast float %4307, 0x3E7777A5C0000000
  %4309 = fmul fast float %4308, 0x3FC45F3060000000
  %4310 = fmul fast float %4299, 0x4022D97C80000000
  %4311 = fadd fast float %4310, 0x4012D97C80000000
  %4312 = call float @dx.op.unary.f32(i32 13, float %4311)  ; Sin(value)
  %4313 = fadd fast float %4312, 1.000000e+00
  %4314 = fmul fast float %4313, 0x3FBB2995E0000000
  %4315 = fmul fast float %4299, 0x402921FB60000000
  %4316 = fadd fast float %4315, 0x401921FB60000000
  %4317 = call float @dx.op.unary.f32(i32 13, float %4316)  ; Sin(value)
  %4318 = fadd fast float %4317, 0xBE8777A5C0000000
  %4319 = fmul fast float %4318, 0x3FB45F3060000000
  %4320 = call float @dx.op.dot4.f32(i32 56, float %4294, float %4295, float %4296, float %4297, float %4304, float %4309, float %4314, float %4319)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4321 = fmul fast float %4320, 0xBFF7154760000000
  %4322 = call float @dx.op.unary.f32(i32 21, float %4321)  ; Exp(value)
  %4323 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  br label %4324

; <label>:4324                                    ; preds = %4292, %4288
  %4325 = phi float [ %4323, %4292 ], [ 1.000000e+00, %4288 ]
  %4326 = fadd fast float %4325, -1.000000e+00
  %4327 = fmul fast float %4326, %4286
  %4328 = fadd fast float %4327, 1.000000e+00
  br label %4329

; <label>:4329                                    ; preds = %4324, %4229
  %4330 = phi float [ %4328, %4324 ], [ 1.000000e+00, %4229 ]
  %4331 = fmul fast float %4330, %4225
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 0
  %4334 = extractvalue %dx.types.CBufRet.f32 %4332, 1
  %4335 = extractvalue %dx.types.CBufRet.f32 %4332, 2
  %4336 = fadd fast float %4333, %142
  %4337 = fadd fast float %4334, %143
  %4338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.f32 %4338, 1
  %4340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4341 = extractvalue %dx.types.CBufRet.f32 %4340, 0
  %4342 = extractvalue %dx.types.CBufRet.f32 %4340, 1
  %4343 = extractvalue %dx.types.CBufRet.f32 %4340, 2
  %4344 = fsub fast float -0.000000e+00, %4336
  %4345 = fsub fast float -0.000000e+00, %4337
  %4346 = fsub fast float %2171, %4335
  %4347 = fadd fast float %4346, %4339
  %4348 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4344, float %4345, float %4347)  ; Dot3(ax,ay,az,bx,by,bz)
  %4349 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4341, float %4342, float %4343)  ; Dot3(ax,ay,az,bx,by,bz)
  %4350 = fdiv fast float 1.000000e+00, %4349
  %4351 = fmul fast float %4350, %4348
  %4352 = fmul fast float %4341, %4351
  %4353 = fmul fast float %4342, %4351
  %4354 = fadd fast float %4352, %4336
  %4355 = fadd fast float %4353, %4337
  %4356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.f32 %4356, 0
  %4358 = extractvalue %dx.types.CBufRet.f32 %4356, 1
  %4359 = fsub fast float %4354, %4357
  %4360 = fsub fast float %4355, %4358
  %4361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4362 = extractvalue %dx.types.CBufRet.f32 %4361, 2
  %4363 = extractvalue %dx.types.CBufRet.f32 %4361, 3
  %4364 = fmul fast float %4359, %4362
  %4365 = fmul fast float %4360, %4363
  %4366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4367 = extractvalue %dx.types.CBufRet.i32 %4366, 3
  %4368 = icmp eq i32 %4367, 0
  br i1 %4368, label %4374, label %4369

; <label>:4369                                    ; preds = %4329
  %4370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %4364, float %4365, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4371 = extractvalue %dx.types.ResRet.f32 %4370, 0
  %4372 = extractvalue %dx.types.ResRet.f32 %4370, 1
  %4373 = extractvalue %dx.types.ResRet.f32 %4370, 2
  br label %4379

; <label>:4374                                    ; preds = %4329
  %4375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %4364, float %4365, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4376 = extractvalue %dx.types.ResRet.f32 %4375, 0
  %4377 = extractvalue %dx.types.ResRet.f32 %4375, 1
  %4378 = extractvalue %dx.types.ResRet.f32 %4375, 2
  br label %4379

; <label>:4379                                    ; preds = %4374, %4369
  %4380 = phi float [ %4371, %4369 ], [ %4376, %4374 ]
  %4381 = phi float [ %4372, %4369 ], [ %4377, %4374 ]
  %4382 = phi float [ %4373, %4369 ], [ %4378, %4374 ]
  %4383 = extractvalue %dx.types.CBufRet.f32 %4338, 2
  %4384 = fmul fast float %4383, %4380
  %4385 = extractvalue %dx.types.CBufRet.f32 %4338, 0
  %4386 = fsub fast float %4351, %4385
  %4387 = fsub fast float %4386, %4384
  %4388 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4387)  ; FMax(a,b)
  %4389 = fmul fast float %4388, %4381
  %4390 = call float @dx.op.binary.f32(i32 36, float %4382, float %4389)  ; FMin(a,b)
  %4391 = fmul fast float %4390, 0xBFF7154760000000
  %4392 = call float @dx.op.unary.f32(i32 21, float %4391)  ; Exp(value)
  %4393 = fmul fast float %4331, %4392
  br label %4394

; <label>:4394                                    ; preds = %4379, %4224
  %4395 = phi float [ %4393, %4379 ], [ %4225, %4224 ]
  %4396 = call float @dx.op.binary.f32(i32 36, float %4395, float %4395)  ; FMin(a,b)
  %4397 = call float @dx.op.binary.f32(i32 36, float %4395, float %4396)  ; FMin(a,b)
  %4398 = fcmp fast ogt float %4397, 0.000000e+00
  br i1 %4398, label %4399, label %4782, !dx.controlflow.hints !121

; <label>:4399                                    ; preds = %4394
  %4400 = fmul fast float %4395, %3117
  %4401 = fmul fast float %4395, %3118
  %4402 = fmul fast float %4395, %3119
  %4403 = fsub fast float %144, %1959
  %4404 = fcmp fast ogt float %4403, 0.000000e+00
  %4405 = fmul fast float %3106, 5.120000e+02
  %4406 = fmul fast float %3107, 5.120000e+02
  %4407 = fmul fast float %3108, 5.120000e+02
  %4408 = fadd fast float %4407, %144
  %4409 = fsub fast float %1959, %4408
  %4410 = fmul fast float %4409, 2.000000e+00
  %4411 = fadd fast float %4410, %4408
  %4412 = select i1 %4404, float %4411, float %4408
  %4413 = fsub fast float %4412, %144
  %4414 = call float @dx.op.dot3.f32(i32 55, float %4405, float %4406, float %4413, float %4405, float %4406, float %4413)  ; Dot3(ax,ay,az,bx,by,bz)
  %4415 = call float @dx.op.unary.f32(i32 25, float %4414)  ; Rsqrt(value)
  %4416 = fmul fast float %4415, %4405
  %4417 = fmul fast float %4415, %4406
  %4418 = fmul fast float %4415, %4413
  %4419 = fsub fast float %1959, %144
  %4420 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4419)  ; Dot3(ax,ay,az,bx,by,bz)
  %4421 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4416, float %4417, float %4418)  ; Dot3(ax,ay,az,bx,by,bz)
  %4422 = fdiv fast float 1.000000e+00, %4421
  %4423 = fmul fast float %4422, %4420
  %4424 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4403, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4425 = fcmp fast ogt float %4424, 0.000000e+00
  %4426 = fcmp fast olt float %4424, 0.000000e+00
  %4427 = zext i1 %4425 to i32
  %4428 = zext i1 %4426 to i32
  %4429 = sub nsw i32 %4427, %4428
  %4430 = sitofp i32 %4429 to float
  %4431 = fsub fast float %4412, %1959
  %4432 = call float @dx.op.dot3.f32(i32 55, float %4405, float %4406, float %4431, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4433 = fcmp fast ogt float %4432, 0.000000e+00
  %4434 = fcmp fast olt float %4432, 0.000000e+00
  %4435 = zext i1 %4433 to i32
  %4436 = zext i1 %4434 to i32
  %4437 = sub nsw i32 %4435, %4436
  %4438 = sitofp i32 %4437 to float
  %4439 = fcmp fast une float %4430, %4438
  br i1 %4439, label %4440, label %4450

; <label>:4440                                    ; preds = %4399
  %4441 = fmul fast float %4423, %4418
  %4442 = fmul fast float %4423, %4417
  %4443 = fmul fast float %4423, %4416
  %4444 = fmul fast float %4443, %4443
  %4445 = fmul fast float %4442, %4442
  %4446 = fadd fast float %4444, %4445
  %4447 = fmul fast float %4441, %4441
  %4448 = fadd fast float %4446, %4447
  %4449 = call float @dx.op.unary.f32(i32 24, float %4448)  ; Sqrt(value)
  br label %4460

; <label>:4450                                    ; preds = %4399
  %4451 = icmp slt i32 %4429, 0
  br i1 %4451, label %4452, label %4460

; <label>:4452                                    ; preds = %4450
  %4453 = fsub fast float %144, %4412
  %4454 = fmul fast float %4405, %4405
  %4455 = fmul fast float %4406, %4406
  %4456 = fadd fast float %4454, %4455
  %4457 = fmul fast float %4453, %4453
  %4458 = fadd fast float %4456, %4457
  %4459 = call float @dx.op.unary.f32(i32 24, float %4458)  ; Sqrt(value)
  br label %4460

; <label>:4460                                    ; preds = %4452, %4450, %4440
  %4461 = phi float [ %4449, %4440 ], [ %4459, %4452 ], [ 0.000000e+00, %4450 ]
  %4462 = fsub fast float -0.000000e+00, %4461
  %4463 = select i1 %4404, float -0.000000e+00, float %4462
  %4464 = fmul fast float %1960, 0x3FF7154760000000
  %4465 = fmul fast float %4464, %4463
  %4466 = fmul fast float %1961, 0x3FF7154760000000
  %4467 = fmul fast float %4466, %4463
  %4468 = fmul fast float %1962, 0x3FF7154760000000
  %4469 = fmul fast float %4468, %4463
  %4470 = call float @dx.op.unary.f32(i32 21, float %4465)  ; Exp(value)
  %4471 = call float @dx.op.unary.f32(i32 21, float %4467)  ; Exp(value)
  %4472 = call float @dx.op.unary.f32(i32 21, float %4469)  ; Exp(value)
  %4473 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4474 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4475 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4476 = fmul fast float %4400, %4473
  %4477 = fmul fast float %4401, %4474
  %4478 = fmul fast float %4402, %4475
  %4479 = fsub fast float %3106, %2159
  %4480 = fsub fast float %3107, %2158
  %4481 = fsub fast float %3108, %2157
  %4482 = call float @dx.op.dot3.f32(i32 55, float %4479, float %4480, float %4481, float %4479, float %4480, float %4481)  ; Dot3(ax,ay,az,bx,by,bz)
  %4483 = call float @dx.op.unary.f32(i32 25, float %4482)  ; Rsqrt(value)
  %4484 = fmul fast float %4483, %4479
  %4485 = fmul fast float %4483, %4480
  %4486 = fmul fast float %4483, %4481
  %4487 = call float @dx.op.dot3.f32(i32 55, float %3106, float %3107, float %3108, float %2166, float %2167, float %2168)  ; Dot3(ax,ay,az,bx,by,bz)
  %4488 = call float @dx.op.dot3.f32(i32 55, float %2156, float %2155, float %2154, float %4484, float %4485, float %4486)  ; Dot3(ax,ay,az,bx,by,bz)
  %4489 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4490 = fmul fast float %4489, %4489
  %4491 = fmul fast float %4490, %3101
  %4492 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4493 = fmul fast float %4492, %4489
  %4494 = call float @dx.op.dot3.f32(i32 55, float %2166, float %2167, float %2168, float %4484, float %4485, float %4486)  ; Dot3(ax,ay,az,bx,by,bz)
  %4495 = fmul fast float %4494, %4494
  %4496 = call float @dx.op.unary.f32(i32 6, float %4487)  ; FAbs(value)
  %4497 = fsub fast float 1.000000e+00, %2192
  %4498 = fmul fast float %2174, %2174
  %4499 = fmul fast float %4498, %4497
  %4500 = fadd fast float %4499, %2192
  %4501 = bitcast float %4500 to i32
  %4502 = ashr i32 %4501, 1
  %4503 = add nsw i32 %4502, 532487669
  %4504 = bitcast i32 %4503 to float
  %4505 = fadd fast float %4504, %2174
  %4506 = fmul fast float %2192, %4495
  %4507 = fsub fast float 1.000000e+00, %4495
  %4508 = fadd fast float %4507, %4506
  %4509 = fmul fast float %4496, %4496
  %4510 = fmul fast float %4509, %4497
  %4511 = fadd fast float %4510, %2192
  %4512 = bitcast float %4511 to i32
  %4513 = ashr i32 %4512, 1
  %4514 = add nsw i32 %4513, 532487669
  %4515 = bitcast i32 %4514 to float
  %4516 = fadd fast float %4515, %4496
  %4517 = fmul fast float %4508, %4508
  %4518 = fmul fast float %4517, %4505
  %4519 = fmul fast float %4518, %4516
  %4520 = fdiv fast float 0x3FF0A00000000000, %4519
  %4521 = fmul fast float %4520, %2192
  %4522 = fmul fast float %2444, 0x3FF9999980000000
  %4523 = fsub fast float 5.000000e+00, %4522
  %4524 = call float @dx.op.unary.f32(i32 6, float %4488)  ; FAbs(value)
  %4525 = fsub fast float 1.000000e+00, %4524
  %4526 = fmul fast float %2444, 0x41D9660740000000
  %4527 = fadd fast float %4526, 0xC1EFBF8940000000
  %4528 = bitcast float %4525 to i32
  %4529 = sitofp i32 %4528 to float
  %4530 = fmul fast float %4529, %4523
  %4531 = fadd fast float %4527, %4530
  %4532 = fptosi float %4531 to i32
  %4533 = bitcast i32 %4532 to float
  %4534 = fsub fast float 1.000000e+00, %2163
  %4535 = fsub fast float 1.000000e+00, %2164
  %4536 = fsub fast float 1.000000e+00, %2172
  %4537 = fmul fast float %4533, %4534
  %4538 = fmul fast float %4533, %4535
  %4539 = fmul fast float %4533, %4536
  %4540 = fadd fast float %4537, %2163
  %4541 = fadd fast float %4538, %2164
  %4542 = fadd fast float %4539, %2172
  br i1 %2467, label %4543, label %4566

; <label>:4543                                    ; preds = %4460
  %4544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1505, float %4524, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4545 = extractvalue %dx.types.ResRet.f32 %4544, 0
  %4546 = extractvalue %dx.types.ResRet.f32 %4544, 1
  %4547 = extractvalue %dx.types.ResRet.f32 %4544, 2
  %4548 = fadd fast float %4545, -5.000000e-01
  %4549 = fadd fast float %4546, -5.000000e-01
  %4550 = fadd fast float %4547, -5.000000e-01
  %4551 = fmul fast float %2163, 4.000000e+00
  %4552 = fmul fast float %4551, %4534
  %4553 = fmul fast float %4552, %4548
  %4554 = fmul fast float %2164, 4.000000e+00
  %4555 = fmul fast float %4554, %4535
  %4556 = fmul fast float %4555, %4549
  %4557 = fmul fast float %2172, 4.000000e+00
  %4558 = fmul fast float %4557, %4536
  %4559 = fmul fast float %4558, %4550
  %4560 = fadd fast float %4553, %4540
  %4561 = fadd fast float %4556, %4541
  %4562 = fadd fast float %4559, %4542
  %4563 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4564 = call float @dx.op.unary.f32(i32 7, float %4561)  ; Saturate(value)
  %4565 = call float @dx.op.unary.f32(i32 7, float %4562)  ; Saturate(value)
  br label %4566

; <label>:4566                                    ; preds = %4543, %4460
  %4567 = phi float [ %4563, %4543 ], [ %4540, %4460 ]
  %4568 = phi float [ %4564, %4543 ], [ %4541, %4460 ]
  %4569 = phi float [ %4565, %4543 ], [ %4542, %4460 ]
  %4570 = fmul fast float %4487, 9.843750e-01
  %4571 = fadd fast float %4570, 7.812500e-03
  %4572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %4571, float %2448, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4573 = extractvalue %dx.types.ResRet.f32 %4572, 0
  %4574 = extractvalue %dx.types.ResRet.f32 %4572, 1
  %4575 = extractvalue %dx.types.ResRet.f32 %4572, 2
  %4576 = extractvalue %dx.types.ResRet.f32 %4572, 3
  %4577 = fsub fast float %4575, %4573
  %4578 = fsub fast float %4576, %4574
  %4579 = fmul fast float %4577, %2454
  %4580 = fmul fast float %4578, %2454
  %4581 = fadd fast float %4579, %4573
  %4582 = fadd fast float %4580, %4574
  %4583 = fmul fast float %4581, %2163
  %4584 = fmul fast float %4581, %2164
  %4585 = fmul fast float %4581, %2172
  %4586 = fadd fast float %4583, %4582
  %4587 = fadd fast float %4584, %4582
  %4588 = fadd fast float %4585, %4582
  br i1 %2467, label %4589, label %4612

; <label>:4589                                    ; preds = %4566
  %4590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1505, float %4487, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4591 = extractvalue %dx.types.ResRet.f32 %4590, 0
  %4592 = extractvalue %dx.types.ResRet.f32 %4590, 1
  %4593 = extractvalue %dx.types.ResRet.f32 %4590, 2
  %4594 = fadd fast float %4591, -5.000000e-01
  %4595 = fadd fast float %4592, -5.000000e-01
  %4596 = fadd fast float %4593, -5.000000e-01
  %4597 = fmul fast float %2163, 4.000000e+00
  %4598 = fmul fast float %4597, %4534
  %4599 = fmul fast float %4598, %4594
  %4600 = fmul fast float %2164, 4.000000e+00
  %4601 = fmul fast float %4600, %4535
  %4602 = fmul fast float %4601, %4595
  %4603 = fmul fast float %2172, 4.000000e+00
  %4604 = fmul fast float %4603, %4536
  %4605 = fmul fast float %4604, %4596
  %4606 = fadd fast float %4599, %4586
  %4607 = fadd fast float %4602, %4587
  %4608 = fadd fast float %4605, %4588
  %4609 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  %4610 = call float @dx.op.unary.f32(i32 7, float %4607)  ; Saturate(value)
  %4611 = call float @dx.op.unary.f32(i32 7, float %4608)  ; Saturate(value)
  br label %4612

; <label>:4612                                    ; preds = %4589, %4566
  %4613 = phi float [ %4609, %4589 ], [ %4586, %4566 ]
  %4614 = phi float [ %4610, %4589 ], [ %4587, %4566 ]
  %4615 = phi float [ %4611, %4589 ], [ %4588, %4566 ]
  %4616 = call float @dx.op.binary.f32(i32 35, float %4614, float %4615)  ; FMax(a,b)
  %4617 = call float @dx.op.binary.f32(i32 35, float %4613, float %4616)  ; FMax(a,b)
  %4618 = fsub fast float 1.000000e+00, %4617
  %4619 = call float @dx.op.binary.f32(i32 35, float %4496, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4620 = fdiv fast float %905, %4619
  %4621 = fmul fast float %3014, %4620
  %4622 = fmul fast float %3016, %4620
  %4623 = fmul fast float %3018, %4620
  %4624 = call float @dx.op.unary.f32(i32 21, float %4621)  ; Exp(value)
  %4625 = call float @dx.op.unary.f32(i32 21, float %4622)  ; Exp(value)
  %4626 = call float @dx.op.unary.f32(i32 21, float %4623)  ; Exp(value)
  %4627 = call float @dx.op.unary.f32(i32 7, float %4624)  ; Saturate(value)
  %4628 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4629 = call float @dx.op.unary.f32(i32 7, float %4626)  ; Saturate(value)
  %4630 = select i1 %3011, float %4627, float 0.000000e+00
  %4631 = select i1 %3012, float %4628, float 0.000000e+00
  %4632 = select i1 %3013, float %4629, float 0.000000e+00
  %4633 = fsub fast float -0.000000e+00, %2166
  %4634 = fsub fast float -0.000000e+00, %2167
  %4635 = fsub fast float -0.000000e+00, %2168
  %4636 = call float @dx.op.dot3.f32(i32 55, float %3106, float %3107, float %3108, float %4633, float %4634, float %4635)  ; Dot3(ax,ay,az,bx,by,bz)
  %4637 = call float @dx.op.unary.f32(i32 7, float %4636)  ; Saturate(value)
  %4638 = fmul fast float %4637, 9.843750e-01
  %4639 = fadd fast float %4638, 7.812500e-03
  %4640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %4639, float %2448, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4641 = extractvalue %dx.types.ResRet.f32 %4640, 0
  %4642 = extractvalue %dx.types.ResRet.f32 %4640, 1
  %4643 = extractvalue %dx.types.ResRet.f32 %4640, 2
  %4644 = extractvalue %dx.types.ResRet.f32 %4640, 3
  %4645 = fsub fast float %4643, %4641
  %4646 = fsub fast float %4644, %4642
  %4647 = fmul fast float %4645, %2454
  %4648 = fmul fast float %4646, %2454
  %4649 = fadd fast float %4647, %4641
  %4650 = fadd fast float %4648, %4642
  %4651 = fmul fast float %4649, %2163
  %4652 = fmul fast float %4649, %2164
  %4653 = fmul fast float %4649, %2172
  %4654 = fadd fast float %4651, %4650
  %4655 = fadd fast float %4652, %4650
  %4656 = fadd fast float %4653, %4650
  br i1 %2467, label %4657, label %4680

; <label>:4657                                    ; preds = %4612
  %4658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1505, float %4637, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4659 = extractvalue %dx.types.ResRet.f32 %4658, 0
  %4660 = extractvalue %dx.types.ResRet.f32 %4658, 1
  %4661 = extractvalue %dx.types.ResRet.f32 %4658, 2
  %4662 = fadd fast float %4659, -5.000000e-01
  %4663 = fadd fast float %4660, -5.000000e-01
  %4664 = fadd fast float %4661, -5.000000e-01
  %4665 = fmul fast float %2163, 4.000000e+00
  %4666 = fmul fast float %4665, %4534
  %4667 = fmul fast float %4666, %4662
  %4668 = fmul fast float %2164, 4.000000e+00
  %4669 = fmul fast float %4668, %4535
  %4670 = fmul fast float %4669, %4663
  %4671 = fmul fast float %2172, 4.000000e+00
  %4672 = fmul fast float %4671, %4536
  %4673 = fmul fast float %4672, %4664
  %4674 = fadd fast float %4667, %4654
  %4675 = fadd fast float %4670, %4655
  %4676 = fadd fast float %4673, %4656
  %4677 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4678 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4679 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  br label %4680

; <label>:4680                                    ; preds = %4657, %4612
  %4681 = phi float [ %4677, %4657 ], [ %4654, %4612 ]
  %4682 = phi float [ %4678, %4657 ], [ %4655, %4612 ]
  %4683 = phi float [ %4679, %4657 ], [ %4656, %4612 ]
  %4684 = call float @dx.op.binary.f32(i32 35, float %4682, float %4683)  ; FMax(a,b)
  %4685 = call float @dx.op.binary.f32(i32 35, float %4681, float %4684)  ; FMax(a,b)
  %4686 = fsub fast float 1.000000e+00, %4685
  %4687 = fmul fast float %2189, %3078
  %4688 = fadd fast float %3080, %4687
  %4689 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4690 = fsub fast float %3106, %2180
  %4691 = fsub fast float %3107, %2181
  %4692 = fsub fast float %3108, %2182
  %4693 = call float @dx.op.dot3.f32(i32 55, float %4690, float %4691, float %4692, float %4690, float %4691, float %4692)  ; Dot3(ax,ay,az,bx,by,bz)
  %4694 = call float @dx.op.unary.f32(i32 25, float %4693)  ; Rsqrt(value)
  %4695 = fmul fast float %4694, %4690
  %4696 = fmul fast float %4694, %4691
  %4697 = fmul fast float %4694, %4692
  %4698 = call float @dx.op.dot3.f32(i32 55, float %4633, float %4634, float %4635, float %4695, float %4696, float %4697)  ; Dot3(ax,ay,az,bx,by,bz)
  %4699 = fmul fast float %4698, %4698
  %4700 = call float @dx.op.unary.f32(i32 6, float %4637)  ; FAbs(value)
  %4701 = call float @dx.op.binary.f32(i32 35, float %4689, float 0x3F847AE140000000)  ; FMax(a,b)
  %4702 = fmul fast float %4701, %4701
  %4703 = fmul fast float %4702, %4702
  %4704 = fsub fast float 1.000000e+00, %4703
  %4705 = fmul fast float %4498, %4704
  %4706 = fadd fast float %4705, %4703
  %4707 = bitcast float %4706 to i32
  %4708 = ashr i32 %4707, 1
  %4709 = add nsw i32 %4708, 532487669
  %4710 = bitcast i32 %4709 to float
  %4711 = fadd fast float %4710, %2174
  %4712 = fmul fast float %4703, %4699
  %4713 = fsub fast float 1.000000e+00, %4699
  %4714 = fadd fast float %4713, %4712
  %4715 = fmul fast float %4700, %4700
  %4716 = fmul fast float %4715, %4704
  %4717 = fadd fast float %4716, %4703
  %4718 = bitcast float %4717 to i32
  %4719 = ashr i32 %4718, 1
  %4720 = add nsw i32 %4719, 532487669
  %4721 = bitcast i32 %4720 to float
  %4722 = fadd fast float %4721, %4700
  %4723 = fmul fast float %4714, %4714
  %4724 = fmul fast float %4723, %4711
  %4725 = fmul fast float %4724, %4722
  %4726 = fdiv fast float 0x3FF0A00000000000, %4725
  %4727 = fmul fast float %4726, %4703
  %4728 = fmul fast float %4637, %4630
  %4729 = fmul fast float %4637, %4631
  %4730 = fmul fast float %4637, %4632
  %4731 = fmul fast float %4728, %4686
  %4732 = fmul fast float %4731, %4727
  %4733 = fmul fast float %4729, %4686
  %4734 = fmul fast float %4733, %4727
  %4735 = fmul fast float %4730, %4686
  %4736 = fmul fast float %4735, %4727
  %4737 = fmul fast float %4567, %4521
  %4738 = fmul fast float %4568, %4521
  %4739 = fmul fast float %4569, %4521
  %4740 = fsub fast float 1.000000e+00, %4488
  %4741 = bitcast float %4740 to i32
  %4742 = sitofp i32 %4741 to float
  %4743 = fmul fast float %4742, 5.000000e+00
  %4744 = fadd fast float %4743, 0xC1EFBF8940000000
  %4745 = fptosi float %4744 to i32
  %4746 = bitcast i32 %4745 to float
  %4747 = fmul fast float %4746, %1504
  %4748 = fmul fast float %4618, %4747
  %4749 = fmul fast float %4748, %3006
  %4750 = fmul fast float %4748, %3007
  %4751 = fmul fast float %4748, %3008
  %4752 = fadd fast float %4749, %4737
  %4753 = fadd fast float %4750, %4738
  %4754 = fadd fast float %4751, %4739
  %4755 = fmul fast float %4752, %4493
  %4756 = fmul fast float %4753, %4493
  %4757 = fmul fast float %4754, %4493
  %4758 = fmul fast float %4493, %4476
  %4759 = fmul fast float %4758, %4618
  %4760 = fmul fast float %4493, %4477
  %4761 = fmul fast float %4760, %4618
  %4762 = fmul fast float %4493, %4478
  %4763 = fmul fast float %4762, %4618
  %4764 = fadd fast float %4755, %4732
  %4765 = fadd fast float %4756, %4734
  %4766 = fadd fast float %4757, %4736
  %4767 = fmul fast float %4764, %4476
  %4768 = fmul fast float %4765, %4477
  %4769 = fmul fast float %4766, %4478
  %4770 = fadd fast float %4759, %3095
  %4771 = fmul fast float %4770, %1528
  %4772 = fadd fast float %4761, %3097
  %4773 = fmul fast float %4772, %1528
  %4774 = fadd fast float %4763, %3099
  %4775 = fmul fast float %4774, %1528
  %4776 = fadd fast float %4767, %3059
  %4777 = fmul fast float %4776, %1528
  %4778 = fadd fast float %4768, %3062
  %4779 = fmul fast float %4778, %1528
  %4780 = fadd fast float %4769, %3065
  %4781 = fmul fast float %4780, %1528
  br label %4782

; <label>:4782                                    ; preds = %4680, %4394, %2989
  %4783 = phi float [ %3060, %2989 ], [ %3060, %4394 ], [ %4777, %4680 ]
  %4784 = phi float [ %3063, %2989 ], [ %3063, %4394 ], [ %4779, %4680 ]
  %4785 = phi float [ %3066, %2989 ], [ %3066, %4394 ], [ %4781, %4680 ]
  %4786 = phi float [ %3096, %2989 ], [ %3096, %4394 ], [ %4771, %4680 ]
  %4787 = phi float [ %3098, %2989 ], [ %3098, %4394 ], [ %4773, %4680 ]
  %4788 = phi float [ %3100, %2989 ], [ %3100, %4394 ], [ %4775, %4680 ]
  %4789 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.i32 %4789, 0
  %4791 = icmp eq i32 %4790, 0
  br i1 %4791, label %5609, label %4792

; <label>:4792                                    ; preds = %4782
  %4793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4794 = extractvalue %dx.types.CBufRet.f32 %4793, 2
  %4795 = extractvalue %dx.types.CBufRet.f32 %4793, 3
  %4796 = fmul fast float %4794, %94
  %4797 = fmul fast float %4795, %95
  %4798 = fptoui float %4796 to i32
  %4799 = fptoui float %4797 to i32
  %4800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4801 = extractvalue %dx.types.CBufRet.f32 %4800, 0
  %4802 = extractvalue %dx.types.CBufRet.f32 %4800, 2
  %4803 = extractvalue %dx.types.CBufRet.f32 %4800, 3
  %4804 = fadd fast float %82, -4.000000e+00
  %4805 = call float @dx.op.binary.f32(i32 35, float %4804, float 0.000000e+00)  ; FMax(a,b)
  %4806 = fadd fast float %4805, %4801
  %4807 = fmul fast float %4806, %4802
  %4808 = call float @dx.op.unary.f32(i32 23, float %4807)  ; Log(value)
  %4809 = fmul fast float %4808, %4803
  %4810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4811 = extractvalue %dx.types.CBufRet.f32 %4810, 2
  %4812 = fmul fast float %4809, %4811
  %4813 = call float @dx.op.unary.f32(i32 7, float %4812)  ; Saturate(value)
  %4814 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4815 = extractvalue %dx.types.CBufRet.i32 %4814, 1
  %4816 = add i32 %4815, -1
  %4817 = uitofp i32 %4815 to float
  %4818 = fmul fast float %4817, %4813
  %4819 = fptoui float %4818 to i32
  %4820 = call i32 @dx.op.binary.i32(i32 40, i32 %4819, i32 %4816)  ; UMin(a,b)
  %4821 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.i32 %4821, 2
  %4823 = extractvalue %dx.types.CBufRet.i32 %4821, 3
  %4824 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4799, i32 %4822, i32 %4798)  ; UMad(a,b,c)
  %4825 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4820, i32 %4823, i32 %4824)  ; UMad(a,b,c)
  %4826 = add nsw i32 %4790, -1
  %4827 = call i32 @dx.op.binary.i32(i32 37, i32 %4826, i32 0)  ; IMax(a,b)
  %4828 = call float @dx.op.binary.f32(i32 35, float %82, float 0.000000e+00)  ; FMax(a,b)
  %4829 = fptoui float %4828 to i32
  %4830 = lshr i32 %4829, 5
  %4831 = call i32 @dx.op.binary.i32(i32 40, i32 %4830, i32 8191)  ; UMin(a,b)
  %4832 = shl i32 %4831, 2
  %4833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4832, i32 undef)  ; BufferLoad(srv,index,wot)
  %4834 = extractvalue %dx.types.ResRet.i32 %4833, 0
  %4835 = lshr i32 %4834, 16
  %4836 = and i32 %4834, 65535
  %4837 = lshr i32 %4834, 21
  %4838 = lshr i32 %4836, 5
  %4839 = call i32 @dx.op.binary.i32(i32 40, i32 %4838, i32 %4827)  ; UMin(a,b)
  %4840 = icmp ugt i32 %4837, %4839
  br i1 %4840, label %5609, label %4841

; <label>:4841                                    ; preds = %4792
  br label %4842

; <label>:4842                                    ; preds = %5599, %4841
  %4843 = phi i32 [ %5606, %5599 ], [ %4837, %4841 ]
  %4844 = phi float [ %5600, %5599 ], [ %4783, %4841 ]
  %4845 = phi float [ %5601, %5599 ], [ %4784, %4841 ]
  %4846 = phi float [ %5602, %5599 ], [ %4785, %4841 ]
  %4847 = phi float [ %5603, %5599 ], [ %4786, %4841 ]
  %4848 = phi float [ %5604, %5599 ], [ %4787, %4841 ]
  %4849 = phi float [ %5605, %5599 ], [ %4788, %4841 ]
  %4850 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4851 = extractvalue %dx.types.CBufRet.i32 %4850, 0
  %4852 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4825, i32 %4851, i32 %4843)  ; UMad(a,b,c)
  %4853 = shl i32 %4852, 2
  %4854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4853, i32 undef)  ; BufferLoad(srv,index,wot)
  %4855 = extractvalue %dx.types.ResRet.i32 %4854, 0
  %4856 = shl i32 %4843, 5
  %4857 = sub nsw i32 %4835, %4856
  %4858 = call i32 @dx.op.binary.i32(i32 37, i32 %4857, i32 0)  ; IMax(a,b)
  %4859 = call i32 @dx.op.binary.i32(i32 38, i32 %4858, i32 31)  ; IMin(a,b)
  %4860 = sub nsw i32 1, %4835
  %4861 = add nsw i32 %4860, %4836
  %4862 = call i32 @dx.op.binary.i32(i32 37, i32 %4861, i32 0)  ; IMax(a,b)
  %4863 = call i32 @dx.op.binary.i32(i32 38, i32 %4862, i32 32)  ; IMin(a,b)
  %4864 = and i32 %4863, 31
  %4865 = shl i32 -1, %4864
  %4866 = xor i32 %4865, -1
  %4867 = and i32 %4859, 31
  %4868 = shl i32 %4866, %4867
  %4869 = icmp eq i32 %4863, 32
  %4870 = select i1 %4869, i32 -1, i32 %4868
  %4871 = and i32 %4870, %4855
  %4872 = icmp eq i32 %4871, 0
  br i1 %4872, label %5599, label %4873

; <label>:4873                                    ; preds = %4842
  br label %4874

; <label>:4874                                    ; preds = %5009, %4873
  %4875 = phi i32 [ %4886, %5009 ], [ %4871, %4873 ]
  %4876 = phi float [ %5010, %5009 ], [ %4844, %4873 ]
  %4877 = phi float [ %5011, %5009 ], [ %4845, %4873 ]
  %4878 = phi float [ %5012, %5009 ], [ %4846, %4873 ]
  %4879 = phi float [ %5013, %5009 ], [ %4847, %4873 ]
  %4880 = phi float [ %5014, %5009 ], [ %4848, %4873 ]
  %4881 = phi float [ %5015, %5009 ], [ %4849, %4873 ]
  %4882 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4875)  ; FirstbitLo(value)
  %4883 = add i32 %4882, %4856
  %4884 = and i32 %4882, 31
  %4885 = shl i32 1, %4884
  %4886 = xor i32 %4885, %4875
  %4887 = mul i32 %4883, 112
  %4888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4887, i32 undef)  ; BufferLoad(srv,index,wot)
  %4889 = extractvalue %dx.types.ResRet.f32 %4888, 0
  %4890 = extractvalue %dx.types.ResRet.f32 %4888, 1
  %4891 = extractvalue %dx.types.ResRet.f32 %4888, 2
  %4892 = or i32 %4887, 12
  %4893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4892, i32 undef)  ; BufferLoad(srv,index,wot)
  %4894 = extractvalue %dx.types.ResRet.f32 %4893, 0
  %4895 = add i32 %4887, 16
  %4896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4895, i32 undef)  ; BufferLoad(srv,index,wot)
  %4897 = extractvalue %dx.types.ResRet.f32 %4896, 0
  %4898 = extractvalue %dx.types.ResRet.f32 %4896, 1
  %4899 = extractvalue %dx.types.ResRet.f32 %4896, 2
  %4900 = add i32 %4887, 28
  %4901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4900, i32 undef)  ; BufferLoad(srv,index,wot)
  %4902 = extractvalue %dx.types.ResRet.i32 %4901, 0
  %4903 = add i32 %4887, 44
  %4904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4903, i32 undef)  ; BufferLoad(srv,index,wot)
  %4905 = extractvalue %dx.types.ResRet.f32 %4904, 0
  %4906 = add i32 %4887, 48
  %4907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4906, i32 undef)  ; BufferLoad(srv,index,wot)
  %4908 = extractvalue %dx.types.ResRet.f32 %4907, 0
  %4909 = extractvalue %dx.types.ResRet.f32 %4907, 1
  %4910 = extractvalue %dx.types.ResRet.f32 %4907, 2
  %4911 = extractvalue %dx.types.ResRet.f32 %4907, 3
  %4912 = add i32 %4887, 64
  %4913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4912, i32 undef)  ; BufferLoad(srv,index,wot)
  %4914 = extractvalue %dx.types.ResRet.f32 %4913, 0
  %4915 = extractvalue %dx.types.ResRet.f32 %4913, 1
  %4916 = extractvalue %dx.types.ResRet.f32 %4913, 2
  %4917 = extractvalue %dx.types.ResRet.f32 %4913, 3
  %4918 = add i32 %4887, 80
  %4919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4918, i32 undef)  ; BufferLoad(srv,index,wot)
  %4920 = extractvalue %dx.types.ResRet.f32 %4919, 1
  %4921 = extractvalue %dx.types.ResRet.f32 %4919, 2
  %4922 = add i32 %4887, 92
  %4923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4922, i32 undef)  ; BufferLoad(srv,index,wot)
  %4924 = extractvalue %dx.types.ResRet.i32 %4923, 0
  %4925 = call float @dx.op.dot3.f32(i32 55, float %4889, float %4890, float %4891, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4926 = select i1 %204, float %4920, float %4889
  %4927 = select i1 %204, float %4925, float %4890
  %4928 = select i1 %204, float %4921, float %4891
  %4929 = and i32 %4924, 65535
  %4930 = uitofp i32 %4929 to float
  %4931 = lshr i32 %4924, 16
  %4932 = uitofp i32 %4931 to float
  %4933 = and i32 %4902, 65535
  %4934 = and i32 %4902, 50331648
  %4935 = icmp slt i32 %4902, 0
  %4936 = icmp eq i32 %4934, 33554432
  %4937 = fsub fast float %4908, %142
  %4938 = fsub fast float %4909, %143
  %4939 = fsub fast float %4910, %144
  %4940 = call float @dx.op.dot3.f32(i32 55, float %4937, float %4938, float %4939, float %4937, float %4938, float %4939)  ; Dot3(ax,ay,az,bx,by,bz)
  %4941 = call float @dx.op.unary.f32(i32 24, float %4940)  ; Sqrt(value)
  %4942 = fdiv fast float 1.000000e+00, %4941
  %4943 = fmul fast float %4942, %4937
  %4944 = fmul fast float %4942, %4938
  %4945 = fmul fast float %4942, %4939
  %4946 = fadd fast float %4941, %4894
  %4947 = fdiv fast float 1.000000e+00, %4946
  %4948 = fmul float %4905, %4947
  %4949 = fmul float %4948, %4948
  %4950 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  br i1 %4936, label %4951, label %4972

; <label>:4951                                    ; preds = %4874
  %4952 = fmul fast float %4916, %4897
  %4953 = fmul fast float %4916, %4898
  %4954 = fmul fast float %4916, %4899
  %4955 = fadd fast float %4937, %4952
  %4956 = fadd fast float %4938, %4953
  %4957 = fadd fast float %4939, %4954
  %4958 = call float @dx.op.dot3.f32(i32 55, float %4955, float %4956, float %4957, float %4955, float %4956, float %4957)  ; Dot3(ax,ay,az,bx,by,bz)
  %4959 = call float @dx.op.unary.f32(i32 25, float %4958)  ; Rsqrt(value)
  %4960 = fmul fast float %4959, %4955
  %4961 = fmul fast float %4959, %4956
  %4962 = fmul fast float %4959, %4957
  %4963 = fsub fast float %142, %4908
  %4964 = fsub fast float %143, %4909
  %4965 = fsub fast float %144, %4910
  %4966 = fsub fast float -0.000000e+00, %4963
  %4967 = fsub fast float -0.000000e+00, %4964
  %4968 = fsub fast float -0.000000e+00, %4965
  %4969 = call float @dx.op.dot3.f32(i32 55, float %4966, float %4967, float %4968, float %4897, float %4898, float %4899)  ; Dot3(ax,ay,az,bx,by,bz)
  %4970 = fcmp fast ogt float %4969, 0.000000e+00
  %4971 = uitofp i1 %4970 to float
  br label %4972

; <label>:4972                                    ; preds = %4951, %4874
  %4973 = phi float [ %4971, %4951 ], [ 1.000000e+00, %4874 ]
  %4974 = phi float [ %4960, %4951 ], [ %4943, %4874 ]
  %4975 = phi float [ %4961, %4951 ], [ %4944, %4874 ]
  %4976 = phi float [ %4962, %4951 ], [ %4945, %4874 ]
  %4977 = call float @dx.op.dot3.f32(i32 55, float %4897, float %4898, float %4899, float %4974, float %4975, float %4976)  ; Dot3(ax,ay,az,bx,by,bz)
  %4978 = fmul fast float %4977, %4977
  %4979 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4980 = fsub fast float 1.000000e+00, %4979
  %4981 = fmul fast float %4980, 5.000000e-01
  %4982 = fcmp fast ogt float %4977, 0.000000e+00
  %4983 = fsub fast float 1.000000e+00, %4981
  %4984 = select i1 %4982, float %4981, float %4983
  %4985 = fmul fast float %4984, %4932
  %4986 = fadd fast float %4985, %4930
  %4987 = fmul fast float %4986, 0x3EF0001000000000
  %4988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %50, float %4987, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4989 = extractvalue %dx.types.ResRet.f32 %4988, 0
  %4990 = fmul fast float %4977, %4914
  %4991 = fadd fast float %4990, %4915
  %4992 = call float @dx.op.unary.f32(i32 7, float %4991)  ; Saturate(value)
  %4993 = select i1 %4936, float 1.000000e+00, float %4992
  %4994 = select i1 %4936, float %4992, float 1.000000e+00
  %4995 = fmul fast float %4941, %4911
  %4996 = fsub fast float 1.000000e+00, %4995
  %4997 = fmul fast float %4996, %4917
  %4998 = call float @dx.op.unary.f32(i32 7, float %4997)  ; Saturate(value)
  %4999 = fmul fast float %4998, %4994
  %5000 = fmul fast float %4999, 2.000000e+00
  %5001 = fsub fast float 3.000000e+00, %5000
  %5002 = fmul fast float %4989, %4973
  %5003 = fmul fast float %4999, %4999
  %5004 = fmul fast float %5003, %5002
  %5005 = fmul fast float %5004, %5001
  %5006 = call float @dx.op.binary.f32(i32 36, float %5005, float %5005)  ; FMin(a,b)
  %5007 = call float @dx.op.binary.f32(i32 36, float %5005, float %5006)  ; FMin(a,b)
  %5008 = fcmp fast ogt float %5007, 0.000000e+00
  br i1 %5008, label %5017, label %5009, !dx.controlflow.hints !122

; <label>:5009                                    ; preds = %5552, %5163, %4972
  %5010 = phi float [ %4876, %5163 ], [ %4876, %4972 ], [ %5595, %5552 ]
  %5011 = phi float [ %4877, %5163 ], [ %4877, %4972 ], [ %5596, %5552 ]
  %5012 = phi float [ %4878, %5163 ], [ %4878, %4972 ], [ %5597, %5552 ]
  %5013 = phi float [ %4879, %5163 ], [ %4879, %4972 ], [ %5589, %5552 ]
  %5014 = phi float [ %4880, %5163 ], [ %4880, %4972 ], [ %5590, %5552 ]
  %5015 = phi float [ %4881, %5163 ], [ %4881, %4972 ], [ %5591, %5552 ]
  %5016 = icmp eq i32 %4875, %4885
  br i1 %5016, label %5598, label %4874

; <label>:5017                                    ; preds = %4972
  %5018 = icmp eq i32 %4933, 255
  br i1 %5018, label %5163, label %5019, !dx.controlflow.hints !123

; <label>:5019                                    ; preds = %5017
  %5020 = mul nuw nsw i32 %4933, 176
  %5021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5020, i32 undef)  ; BufferLoad(srv,index,wot)
  %5022 = extractvalue %dx.types.ResRet.f32 %5021, 0
  %5023 = extractvalue %dx.types.ResRet.f32 %5021, 1
  %5024 = extractvalue %dx.types.ResRet.f32 %5021, 2
  %5025 = extractvalue %dx.types.ResRet.f32 %5021, 3
  %5026 = add nuw nsw i32 %5020, 16
  %5027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5026, i32 undef)  ; BufferLoad(srv,index,wot)
  %5028 = extractvalue %dx.types.ResRet.f32 %5027, 0
  %5029 = extractvalue %dx.types.ResRet.f32 %5027, 1
  %5030 = add nuw nsw i32 %5020, 32
  %5031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5030, i32 undef)  ; BufferLoad(srv,index,wot)
  %5032 = extractvalue %dx.types.ResRet.f32 %5031, 0
  %5033 = extractvalue %dx.types.ResRet.f32 %5031, 1
  %5034 = extractvalue %dx.types.ResRet.f32 %5031, 2
  %5035 = add nuw nsw i32 %5020, 48
  %5036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5035, i32 undef)  ; BufferLoad(srv,index,wot)
  %5037 = extractvalue %dx.types.ResRet.f32 %5036, 0
  %5038 = extractvalue %dx.types.ResRet.f32 %5036, 1
  %5039 = extractvalue %dx.types.ResRet.f32 %5036, 2
  %5040 = extractvalue %dx.types.ResRet.f32 %5036, 3
  %5041 = add nuw nsw i32 %5020, 64
  %5042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5041, i32 undef)  ; BufferLoad(srv,index,wot)
  %5043 = extractvalue %dx.types.ResRet.f32 %5042, 0
  %5044 = extractvalue %dx.types.ResRet.f32 %5042, 1
  %5045 = extractvalue %dx.types.ResRet.f32 %5042, 2
  %5046 = extractvalue %dx.types.ResRet.f32 %5042, 3
  %5047 = add nuw nsw i32 %5020, 80
  %5048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5047, i32 undef)  ; BufferLoad(srv,index,wot)
  %5049 = extractvalue %dx.types.ResRet.f32 %5048, 0
  %5050 = extractvalue %dx.types.ResRet.f32 %5048, 1
  %5051 = extractvalue %dx.types.ResRet.f32 %5048, 2
  %5052 = extractvalue %dx.types.ResRet.f32 %5048, 3
  %5053 = add nuw nsw i32 %5020, 96
  %5054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5053, i32 undef)  ; BufferLoad(srv,index,wot)
  %5055 = extractvalue %dx.types.ResRet.f32 %5054, 0
  %5056 = extractvalue %dx.types.ResRet.f32 %5054, 1
  %5057 = extractvalue %dx.types.ResRet.f32 %5054, 2
  %5058 = extractvalue %dx.types.ResRet.f32 %5054, 3
  %5059 = bitcast float %5029 to i32
  %5060 = fmul fast float %5034, %97
  %5061 = fmul fast float %5034, %98
  %5062 = fmul fast float %5034, %99
  %5063 = fadd fast float %5060, %142
  %5064 = fadd fast float %5061, %143
  %5065 = fadd fast float %5062, %144
  %5066 = fmul fast float %5063, %5037
  %5067 = call float @dx.op.tertiary.f32(i32 46, float %5064, float %5043, float %5066)  ; FMad(a,b,c)
  %5068 = call float @dx.op.tertiary.f32(i32 46, float %5065, float %5049, float %5067)  ; FMad(a,b,c)
  %5069 = fadd fast float %5068, %5055
  %5070 = fmul fast float %5063, %5038
  %5071 = call float @dx.op.tertiary.f32(i32 46, float %5064, float %5044, float %5070)  ; FMad(a,b,c)
  %5072 = call float @dx.op.tertiary.f32(i32 46, float %5065, float %5050, float %5071)  ; FMad(a,b,c)
  %5073 = fadd fast float %5072, %5056
  %5074 = fmul fast float %5063, %5039
  %5075 = call float @dx.op.tertiary.f32(i32 46, float %5064, float %5045, float %5074)  ; FMad(a,b,c)
  %5076 = call float @dx.op.tertiary.f32(i32 46, float %5065, float %5051, float %5075)  ; FMad(a,b,c)
  %5077 = fadd fast float %5076, %5057
  %5078 = fmul fast float %5063, %5040
  %5079 = call float @dx.op.tertiary.f32(i32 46, float %5064, float %5046, float %5078)  ; FMad(a,b,c)
  %5080 = call float @dx.op.tertiary.f32(i32 46, float %5065, float %5052, float %5079)  ; FMad(a,b,c)
  %5081 = fadd fast float %5080, %5058
  %5082 = fdiv fast float %5069, %5081
  %5083 = fdiv fast float %5073, %5081
  %5084 = fdiv fast float %5077, %5081
  %5085 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5084)  ; FMax(a,b)
  %5086 = fmul fast float %215, 0x401921FB60000000
  %5087 = call float @dx.op.unary.f32(i32 13, float %5086)  ; Sin(value)
  %5088 = call float @dx.op.unary.f32(i32 12, float %5086)  ; Cos(value)
  %5089 = fmul fast float %5088, %5033
  %5090 = call float @dx.op.tertiary.f32(i32 46, float %5087, float %5033, float 0.000000e+00)  ; FMad(a,b,c)
  %5091 = fmul fast float %5033, %5087
  %5092 = fsub fast float -0.000000e+00, %5091
  %5093 = call float @dx.op.tertiary.f32(i32 46, float %5088, float %5033, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5094

; <label>:5094                                    ; preds = %5094, %5019
  %5095 = phi float [ 0.000000e+00, %5019 ], [ %5127, %5094 ]
  %5096 = phi float [ 0.000000e+00, %5019 ], [ %5129, %5094 ]
  %5097 = phi i32 [ 0, %5019 ], [ %5130, %5094 ]
  %5098 = mul i32 %5097, 2
  %5099 = add i32 0, %5098
  %5100 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5099
  %5101 = load float, float* %5100, align 4
  %5102 = mul i32 %5097, 2
  %5103 = add i32 1, %5102
  %5104 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5103
  %5105 = load float, float* %5104, align 4
  %5106 = fmul fast float %5089, %5101
  %5107 = call float @dx.op.tertiary.f32(i32 46, float %5105, float %5092, float %5106)  ; FMad(a,b,c)
  %5108 = fmul fast float %5101, %5090
  %5109 = call float @dx.op.tertiary.f32(i32 46, float %5105, float %5093, float %5108)  ; FMad(a,b,c)
  %5110 = fadd fast float %5107, %5082
  %5111 = fadd fast float %5109, %5083
  %5112 = fmul fast float %5110, %5028
  %5113 = fmul fast float %5111, %5028
  %5114 = call float @dx.op.binary.f32(i32 35, float %5112, float %5024)  ; FMax(a,b)
  %5115 = call float @dx.op.binary.f32(i32 35, float %5113, float %5024)  ; FMax(a,b)
  %5116 = call float @dx.op.binary.f32(i32 36, float %5114, float %5025)  ; FMin(a,b)
  %5117 = call float @dx.op.binary.f32(i32 36, float %5115, float %5025)  ; FMin(a,b)
  %5118 = fadd fast float %5116, %5022
  %5119 = fadd fast float %5117, %5023
  %5120 = uitofp i32 %5059 to float
  %5121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %51, float %5118, float %5119, float %5120, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5122 = extractvalue %dx.types.ResRet.f32 %5121, 0
  %5123 = fsub fast float %5122, %5085
  %5124 = fsub fast float %5123, %5032
  %5125 = fcmp fast ogt float %5124, 0.000000e+00
  %5126 = select i1 %5125, float 1.000000e+00, float 0.000000e+00
  %5127 = fadd fast float %5126, %5095
  %5128 = select i1 %5125, float %5124, float 0.000000e+00
  %5129 = fadd fast float %5128, %5096
  %5130 = add nuw nsw i32 %5097, 1
  %5131 = icmp eq i32 %5130, 8
  br i1 %5131, label %5132, label %5094

; <label>:5132                                    ; preds = %5094
  %5133 = fdiv fast float 1.000000e+00, %5127
  %5134 = fmul fast float %5133, %5129
  %5135 = fdiv fast float 1.000000e+00, %5085
  %5136 = fmul fast float %5134, %5135
  %5137 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5138 = call float @dx.op.binary.f32(i32 35, float %5137, float 0.000000e+00)  ; FMax(a,b)
  %5139 = fmul fast float %5127, 1.250000e-01
  %5140 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5141 = fmul fast float %5140, 2.000000e+00
  %5142 = fadd fast float %5141, -1.000000e+00
  %5143 = fcmp fast ogt float %5142, 0.000000e+00
  %5144 = fcmp fast olt float %5142, 0.000000e+00
  %5145 = zext i1 %5143 to i32
  %5146 = zext i1 %5144 to i32
  %5147 = sub nsw i32 %5145, %5146
  %5148 = sitofp i32 %5147 to float
  %5149 = fmul fast float %5148, %5142
  %5150 = fsub fast float 1.000000e+00, %5149
  %5151 = fmul fast float %5150, %5150
  %5152 = fmul fast float %5151, %5150
  %5153 = fsub fast float %5150, %5152
  %5154 = fmul fast float %5153, %5138
  %5155 = fsub fast float 1.000000e+00, %5152
  %5156 = fsub fast float %5155, %5154
  %5157 = fmul fast float %5148, 5.000000e-01
  %5158 = fmul fast float %5157, %5156
  %5159 = fsub fast float -5.000000e-01, %5158
  %5160 = fmul fast float %5159, %4993
  %5161 = fadd fast float %5160, 1.000000e+00
  %5162 = fmul fast float %5161, %5005
  br label %5163

; <label>:5163                                    ; preds = %5132, %5017
  %5164 = phi float [ %5162, %5132 ], [ %5005, %5017 ]
  %5165 = call float @dx.op.binary.f32(i32 36, float %5164, float %5164)  ; FMin(a,b)
  %5166 = call float @dx.op.binary.f32(i32 36, float %5164, float %5165)  ; FMin(a,b)
  %5167 = fcmp fast ogt float %5166, 0.000000e+00
  br i1 %5167, label %5168, label %5009, !dx.controlflow.hints !124

; <label>:5168                                    ; preds = %5163
  %5169 = fmul fast float %5164, %4926
  %5170 = fmul fast float %5164, %4927
  %5171 = fmul fast float %5164, %4928
  %5172 = fsub fast float %4910, %1959
  %5173 = fcmp fast ogt float %5172, 0.000000e+00
  %5174 = fsub fast float %144, %1959
  %5175 = fcmp fast ogt float %5174, 0.000000e+00
  %5176 = xor i1 %5175, %5173
  %5177 = fsub fast float %1959, %4910
  %5178 = fmul fast float %5177, 2.000000e+00
  %5179 = fadd fast float %5178, %4910
  %5180 = select i1 %5176, float %4910, float %5179
  %5181 = fsub fast float %5180, %144
  %5182 = call float @dx.op.dot3.f32(i32 55, float %4937, float %4938, float %5181, float %4937, float %4938, float %5181)  ; Dot3(ax,ay,az,bx,by,bz)
  %5183 = call float @dx.op.unary.f32(i32 25, float %5182)  ; Rsqrt(value)
  %5184 = fmul fast float %5183, %4937
  %5185 = fmul fast float %5183, %4938
  %5186 = fmul fast float %5183, %5181
  %5187 = fsub fast float %1959, %144
  %5188 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5187)  ; Dot3(ax,ay,az,bx,by,bz)
  %5189 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5184, float %5185, float %5186)  ; Dot3(ax,ay,az,bx,by,bz)
  %5190 = fdiv fast float 1.000000e+00, %5189
  %5191 = fmul fast float %5190, %5188
  %5192 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5174, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5193 = fcmp fast ogt float %5192, 0.000000e+00
  %5194 = fcmp fast olt float %5192, 0.000000e+00
  %5195 = zext i1 %5193 to i32
  %5196 = zext i1 %5194 to i32
  %5197 = sub nsw i32 %5195, %5196
  %5198 = sitofp i32 %5197 to float
  %5199 = fsub fast float %5180, %1959
  %5200 = call float @dx.op.dot3.f32(i32 55, float %4937, float %4938, float %5199, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5201 = fcmp fast ogt float %5200, 0.000000e+00
  %5202 = fcmp fast olt float %5200, 0.000000e+00
  %5203 = zext i1 %5201 to i32
  %5204 = zext i1 %5202 to i32
  %5205 = sub nsw i32 %5203, %5204
  %5206 = sitofp i32 %5205 to float
  %5207 = fcmp fast une float %5198, %5206
  br i1 %5207, label %5208, label %5218

; <label>:5208                                    ; preds = %5168
  %5209 = fmul fast float %5191, %5186
  %5210 = fmul fast float %5191, %5185
  %5211 = fmul fast float %5191, %5184
  %5212 = fmul fast float %5211, %5211
  %5213 = fmul fast float %5210, %5210
  %5214 = fadd fast float %5212, %5213
  %5215 = fmul fast float %5209, %5209
  %5216 = fadd fast float %5214, %5215
  %5217 = call float @dx.op.unary.f32(i32 24, float %5216)  ; Sqrt(value)
  br label %5230

; <label>:5218                                    ; preds = %5168
  %5219 = icmp slt i32 %5197, 0
  br i1 %5219, label %5220, label %5230

; <label>:5220                                    ; preds = %5218
  %5221 = fsub fast float %142, %4908
  %5222 = fsub fast float %143, %4909
  %5223 = fsub fast float %144, %5180
  %5224 = fmul fast float %5221, %5221
  %5225 = fmul fast float %5222, %5222
  %5226 = fadd fast float %5224, %5225
  %5227 = fmul fast float %5223, %5223
  %5228 = fadd fast float %5226, %5227
  %5229 = call float @dx.op.unary.f32(i32 24, float %5228)  ; Sqrt(value)
  br label %5230

; <label>:5230                                    ; preds = %5220, %5218, %5208
  %5231 = phi float [ %5217, %5208 ], [ %5229, %5220 ], [ 0.000000e+00, %5218 ]
  %5232 = and i1 %5175, %5173
  %5233 = fsub fast float -0.000000e+00, %5231
  %5234 = select i1 %5232, float -0.000000e+00, float %5233
  %5235 = fmul fast float %1960, 0x3FF7154760000000
  %5236 = fmul fast float %5235, %5234
  %5237 = fmul fast float %1961, 0x3FF7154760000000
  %5238 = fmul fast float %5237, %5234
  %5239 = fmul fast float %1962, 0x3FF7154760000000
  %5240 = fmul fast float %5239, %5234
  %5241 = call float @dx.op.unary.f32(i32 21, float %5236)  ; Exp(value)
  %5242 = call float @dx.op.unary.f32(i32 21, float %5238)  ; Exp(value)
  %5243 = call float @dx.op.unary.f32(i32 21, float %5240)  ; Exp(value)
  %5244 = call float @dx.op.unary.f32(i32 7, float %5241)  ; Saturate(value)
  %5245 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5246 = call float @dx.op.unary.f32(i32 7, float %5243)  ; Saturate(value)
  %5247 = fmul fast float %5169, %5244
  %5248 = fmul fast float %5170, %5245
  %5249 = fmul fast float %5171, %5246
  %5250 = fsub fast float %4943, %2159
  %5251 = fsub fast float %4944, %2158
  %5252 = fsub fast float %4945, %2157
  %5253 = call float @dx.op.dot3.f32(i32 55, float %5250, float %5251, float %5252, float %5250, float %5251, float %5252)  ; Dot3(ax,ay,az,bx,by,bz)
  %5254 = call float @dx.op.unary.f32(i32 25, float %5253)  ; Rsqrt(value)
  %5255 = fmul fast float %5254, %5250
  %5256 = fmul fast float %5254, %5251
  %5257 = fmul fast float %5254, %5252
  %5258 = call float @dx.op.dot3.f32(i32 55, float %4943, float %4944, float %4945, float %2166, float %2167, float %2168)  ; Dot3(ax,ay,az,bx,by,bz)
  %5259 = call float @dx.op.dot3.f32(i32 55, float %2156, float %2155, float %2154, float %5255, float %5256, float %5257)  ; Dot3(ax,ay,az,bx,by,bz)
  %5260 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5261 = fmul fast float %5260, %4950
  %5262 = fmul fast float %5260, %5260
  %5263 = fmul fast float %5262, %3101
  %5264 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5265 = fmul fast float %5261, %5264
  %5266 = bitcast float %4940 to i32
  %5267 = ashr i32 %5266, 1
  %5268 = sub nsw i32 1597463007, %5267
  %5269 = bitcast i32 %5268 to float
  %5270 = fmul fast float %5269, %4937
  %5271 = fmul fast float %5269, %4938
  %5272 = fmul fast float %5269, %4939
  %5273 = fsub fast float %5270, %2159
  %5274 = fsub fast float %5271, %2158
  %5275 = fsub fast float %5272, %2157
  %5276 = call float @dx.op.dot3.f32(i32 55, float %5273, float %5274, float %5275, float %5273, float %5274, float %5275)  ; Dot3(ax,ay,az,bx,by,bz)
  %5277 = call float @dx.op.unary.f32(i32 25, float %5276)  ; Rsqrt(value)
  %5278 = fmul fast float %5273, %5277
  %5279 = fmul fast float %5274, %5277
  %5280 = fmul fast float %5275, %5277
  %5281 = call float @dx.op.dot3.f32(i32 55, float %2166, float %2167, float %2168, float %5278, float %5279, float %5280)  ; Dot3(ax,ay,az,bx,by,bz)
  %5282 = fmul fast float %5281, %5281
  %5283 = call float @dx.op.unary.f32(i32 6, float %5258)  ; FAbs(value)
  %5284 = fsub fast float 1.000000e+00, %2192
  %5285 = fmul fast float %2174, %2174
  %5286 = fmul fast float %5285, %5284
  %5287 = fadd fast float %5286, %2192
  %5288 = bitcast float %5287 to i32
  %5289 = ashr i32 %5288, 1
  %5290 = add nsw i32 %5289, 532487669
  %5291 = bitcast i32 %5290 to float
  %5292 = fadd fast float %5291, %2174
  %5293 = fmul fast float %2192, %5282
  %5294 = fsub fast float 1.000000e+00, %5282
  %5295 = fadd fast float %5294, %5293
  %5296 = fmul fast float %5283, %5283
  %5297 = fmul fast float %5296, %5284
  %5298 = fadd fast float %5297, %2192
  %5299 = bitcast float %5298 to i32
  %5300 = ashr i32 %5299, 1
  %5301 = add nsw i32 %5300, 532487669
  %5302 = bitcast i32 %5301 to float
  %5303 = fadd fast float %5302, %5283
  %5304 = fmul fast float %5295, %5295
  %5305 = fmul fast float %5304, %5292
  %5306 = fmul fast float %5305, %5303
  %5307 = fdiv fast float 1.000000e+00, %5306
  %5308 = bitcast float %2192 to i32
  %5309 = sitofp i32 %5308 to float
  %5310 = fmul fast float %5309, 0x3FE7F73180000000
  %5311 = fadd fast float %5310, 0x41AFE27C40000000
  %5312 = fptosi float %5311 to i32
  %5313 = bitcast i32 %5312 to float
  %5314 = fmul fast float %4905, 0x3FD80E9D60000000
  %5315 = fmul fast float %5314, %5269
  %5316 = fadd fast float %5313, %5315
  %5317 = bitcast float %5316 to i32
  %5318 = sub nsw i32 2129859010, %5317
  %5319 = bitcast i32 %5318 to float
  %5320 = fmul fast float %2192, %5307
  %5321 = fmul fast float %5320, %5313
  %5322 = fmul fast float %5321, %5319
  %5323 = fmul fast float %2444, 0x3FF9999980000000
  %5324 = fsub fast float 5.000000e+00, %5323
  %5325 = call float @dx.op.unary.f32(i32 6, float %5259)  ; FAbs(value)
  %5326 = fsub fast float 1.000000e+00, %5325
  %5327 = fmul fast float %2444, 0x41D9660740000000
  %5328 = fadd fast float %5327, 0xC1EFBF8940000000
  %5329 = bitcast float %5326 to i32
  %5330 = sitofp i32 %5329 to float
  %5331 = fmul fast float %5330, %5324
  %5332 = fadd fast float %5328, %5331
  %5333 = fptosi float %5332 to i32
  %5334 = bitcast i32 %5333 to float
  %5335 = fsub fast float 1.000000e+00, %2163
  %5336 = fsub fast float 1.000000e+00, %2164
  %5337 = fsub fast float 1.000000e+00, %2172
  %5338 = fmul fast float %5334, %5335
  %5339 = fmul fast float %5334, %5336
  %5340 = fmul fast float %5334, %5337
  %5341 = fadd fast float %5338, %2163
  %5342 = fadd fast float %5339, %2164
  %5343 = fadd fast float %5340, %2172
  br i1 %2467, label %5344, label %5367

; <label>:5344                                    ; preds = %5230
  %5345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1505, float %5325, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5346 = extractvalue %dx.types.ResRet.f32 %5345, 0
  %5347 = extractvalue %dx.types.ResRet.f32 %5345, 1
  %5348 = extractvalue %dx.types.ResRet.f32 %5345, 2
  %5349 = fadd fast float %5346, -5.000000e-01
  %5350 = fadd fast float %5347, -5.000000e-01
  %5351 = fadd fast float %5348, -5.000000e-01
  %5352 = fmul fast float %2163, 4.000000e+00
  %5353 = fmul fast float %5352, %5335
  %5354 = fmul fast float %5353, %5349
  %5355 = fmul fast float %2164, 4.000000e+00
  %5356 = fmul fast float %5355, %5336
  %5357 = fmul fast float %5356, %5350
  %5358 = fmul fast float %2172, 4.000000e+00
  %5359 = fmul fast float %5358, %5337
  %5360 = fmul fast float %5359, %5351
  %5361 = fadd fast float %5354, %5341
  %5362 = fadd fast float %5357, %5342
  %5363 = fadd fast float %5360, %5343
  %5364 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5365 = call float @dx.op.unary.f32(i32 7, float %5362)  ; Saturate(value)
  %5366 = call float @dx.op.unary.f32(i32 7, float %5363)  ; Saturate(value)
  br label %5367

; <label>:5367                                    ; preds = %5344, %5230
  %5368 = phi float [ %5364, %5344 ], [ %5341, %5230 ]
  %5369 = phi float [ %5365, %5344 ], [ %5342, %5230 ]
  %5370 = phi float [ %5366, %5344 ], [ %5343, %5230 ]
  %5371 = fmul fast float %5258, 9.843750e-01
  %5372 = fadd fast float %5371, 7.812500e-03
  %5373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %5372, float %2448, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5374 = extractvalue %dx.types.ResRet.f32 %5373, 0
  %5375 = extractvalue %dx.types.ResRet.f32 %5373, 1
  %5376 = extractvalue %dx.types.ResRet.f32 %5373, 2
  %5377 = extractvalue %dx.types.ResRet.f32 %5373, 3
  %5378 = fsub fast float %5376, %5374
  %5379 = fsub fast float %5377, %5375
  %5380 = fmul fast float %5378, %2454
  %5381 = fmul fast float %5379, %2454
  %5382 = fadd fast float %5380, %5374
  %5383 = fadd fast float %5381, %5375
  %5384 = fmul fast float %5382, %2163
  %5385 = fmul fast float %5382, %2164
  %5386 = fmul fast float %5382, %2172
  %5387 = fadd fast float %5384, %5383
  %5388 = fadd fast float %5385, %5383
  %5389 = fadd fast float %5386, %5383
  br i1 %2467, label %5390, label %5413

; <label>:5390                                    ; preds = %5367
  %5391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1505, float %5258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5392 = extractvalue %dx.types.ResRet.f32 %5391, 0
  %5393 = extractvalue %dx.types.ResRet.f32 %5391, 1
  %5394 = extractvalue %dx.types.ResRet.f32 %5391, 2
  %5395 = fadd fast float %5392, -5.000000e-01
  %5396 = fadd fast float %5393, -5.000000e-01
  %5397 = fadd fast float %5394, -5.000000e-01
  %5398 = fmul fast float %2163, 4.000000e+00
  %5399 = fmul fast float %5398, %5335
  %5400 = fmul fast float %5399, %5395
  %5401 = fmul fast float %2164, 4.000000e+00
  %5402 = fmul fast float %5401, %5336
  %5403 = fmul fast float %5402, %5396
  %5404 = fmul fast float %2172, 4.000000e+00
  %5405 = fmul fast float %5404, %5337
  %5406 = fmul fast float %5405, %5397
  %5407 = fadd fast float %5400, %5387
  %5408 = fadd fast float %5403, %5388
  %5409 = fadd fast float %5406, %5389
  %5410 = call float @dx.op.unary.f32(i32 7, float %5407)  ; Saturate(value)
  %5411 = call float @dx.op.unary.f32(i32 7, float %5408)  ; Saturate(value)
  %5412 = call float @dx.op.unary.f32(i32 7, float %5409)  ; Saturate(value)
  br label %5413

; <label>:5413                                    ; preds = %5390, %5367
  %5414 = phi float [ %5410, %5390 ], [ %5387, %5367 ]
  %5415 = phi float [ %5411, %5390 ], [ %5388, %5367 ]
  %5416 = phi float [ %5412, %5390 ], [ %5389, %5367 ]
  %5417 = call float @dx.op.binary.f32(i32 35, float %5415, float %5416)  ; FMax(a,b)
  %5418 = call float @dx.op.binary.f32(i32 35, float %5414, float %5417)  ; FMax(a,b)
  %5419 = fsub fast float 1.000000e+00, %5418
  %5420 = call float @dx.op.binary.f32(i32 35, float %5283, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5421 = fdiv fast float %905, %5420
  %5422 = fmul fast float %3014, %5421
  %5423 = fmul fast float %3016, %5421
  %5424 = fmul fast float %3018, %5421
  %5425 = call float @dx.op.unary.f32(i32 21, float %5422)  ; Exp(value)
  %5426 = call float @dx.op.unary.f32(i32 21, float %5423)  ; Exp(value)
  %5427 = call float @dx.op.unary.f32(i32 21, float %5424)  ; Exp(value)
  %5428 = call float @dx.op.unary.f32(i32 7, float %5425)  ; Saturate(value)
  %5429 = call float @dx.op.unary.f32(i32 7, float %5426)  ; Saturate(value)
  %5430 = call float @dx.op.unary.f32(i32 7, float %5427)  ; Saturate(value)
  %5431 = select i1 %3011, float %5428, float 0.000000e+00
  %5432 = select i1 %3012, float %5429, float 0.000000e+00
  %5433 = select i1 %3013, float %5430, float 0.000000e+00
  %5434 = fsub fast float -0.000000e+00, %2166
  %5435 = fsub fast float -0.000000e+00, %2167
  %5436 = fsub fast float -0.000000e+00, %2168
  %5437 = call float @dx.op.dot3.f32(i32 55, float %4943, float %4944, float %4945, float %5434, float %5435, float %5436)  ; Dot3(ax,ay,az,bx,by,bz)
  %5438 = call float @dx.op.unary.f32(i32 7, float %5437)  ; Saturate(value)
  %5439 = fmul fast float %5438, %4950
  %5440 = fmul fast float %5438, 9.843750e-01
  %5441 = fadd fast float %5440, 7.812500e-03
  %5442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %5441, float %2448, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5443 = extractvalue %dx.types.ResRet.f32 %5442, 0
  %5444 = extractvalue %dx.types.ResRet.f32 %5442, 1
  %5445 = extractvalue %dx.types.ResRet.f32 %5442, 2
  %5446 = extractvalue %dx.types.ResRet.f32 %5442, 3
  %5447 = fsub fast float %5445, %5443
  %5448 = fsub fast float %5446, %5444
  %5449 = fmul fast float %5447, %2454
  %5450 = fmul fast float %5448, %2454
  %5451 = fadd fast float %5449, %5443
  %5452 = fadd fast float %5450, %5444
  %5453 = fmul fast float %5451, %2163
  %5454 = fmul fast float %5451, %2164
  %5455 = fmul fast float %5451, %2172
  %5456 = fadd fast float %5453, %5452
  %5457 = fadd fast float %5454, %5452
  %5458 = fadd fast float %5455, %5452
  br i1 %2467, label %5459, label %5482

; <label>:5459                                    ; preds = %5413
  %5460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1505, float %5438, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5461 = extractvalue %dx.types.ResRet.f32 %5460, 0
  %5462 = extractvalue %dx.types.ResRet.f32 %5460, 1
  %5463 = extractvalue %dx.types.ResRet.f32 %5460, 2
  %5464 = fadd fast float %5461, -5.000000e-01
  %5465 = fadd fast float %5462, -5.000000e-01
  %5466 = fadd fast float %5463, -5.000000e-01
  %5467 = fmul fast float %2163, 4.000000e+00
  %5468 = fmul fast float %5467, %5335
  %5469 = fmul fast float %5468, %5464
  %5470 = fmul fast float %2164, 4.000000e+00
  %5471 = fmul fast float %5470, %5336
  %5472 = fmul fast float %5471, %5465
  %5473 = fmul fast float %2172, 4.000000e+00
  %5474 = fmul fast float %5473, %5337
  %5475 = fmul fast float %5474, %5466
  %5476 = fadd fast float %5469, %5456
  %5477 = fadd fast float %5472, %5457
  %5478 = fadd fast float %5475, %5458
  %5479 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5480 = call float @dx.op.unary.f32(i32 7, float %5477)  ; Saturate(value)
  %5481 = call float @dx.op.unary.f32(i32 7, float %5478)  ; Saturate(value)
  br label %5482

; <label>:5482                                    ; preds = %5459, %5413
  %5483 = phi float [ %5479, %5459 ], [ %5456, %5413 ]
  %5484 = phi float [ %5480, %5459 ], [ %5457, %5413 ]
  %5485 = phi float [ %5481, %5459 ], [ %5458, %5413 ]
  %5486 = call float @dx.op.binary.f32(i32 35, float %5484, float %5485)  ; FMax(a,b)
  %5487 = call float @dx.op.binary.f32(i32 35, float %5483, float %5486)  ; FMax(a,b)
  %5488 = fsub fast float 1.000000e+00, %5487
  %5489 = fmul fast float %2189, %3078
  %5490 = fadd fast float %3080, %5489
  %5491 = call float @dx.op.unary.f32(i32 7, float %5490)  ; Saturate(value)
  %5492 = fsub fast float %5270, %2180
  %5493 = fsub fast float %5271, %2181
  %5494 = fsub fast float %5272, %2182
  %5495 = call float @dx.op.dot3.f32(i32 55, float %5492, float %5493, float %5494, float %5492, float %5493, float %5494)  ; Dot3(ax,ay,az,bx,by,bz)
  %5496 = call float @dx.op.unary.f32(i32 25, float %5495)  ; Rsqrt(value)
  %5497 = fmul fast float %5492, %5496
  %5498 = fmul fast float %5493, %5496
  %5499 = fmul fast float %5494, %5496
  %5500 = call float @dx.op.dot3.f32(i32 55, float %5434, float %5435, float %5436, float %5497, float %5498, float %5499)  ; Dot3(ax,ay,az,bx,by,bz)
  %5501 = fmul fast float %5500, %5500
  %5502 = call float @dx.op.unary.f32(i32 6, float %5438)  ; FAbs(value)
  %5503 = call float @dx.op.binary.f32(i32 35, float %5491, float 0x3F847AE140000000)  ; FMax(a,b)
  %5504 = fmul fast float %5503, %5503
  %5505 = fmul fast float %5504, %5504
  %5506 = fsub fast float 1.000000e+00, %5505
  %5507 = fmul fast float %5285, %5506
  %5508 = fadd fast float %5507, %5505
  %5509 = bitcast float %5508 to i32
  %5510 = ashr i32 %5509, 1
  %5511 = add nsw i32 %5510, 532487669
  %5512 = bitcast i32 %5511 to float
  %5513 = fadd fast float %5512, %2174
  %5514 = fmul fast float %5505, %5501
  %5515 = fsub fast float 1.000000e+00, %5501
  %5516 = fadd fast float %5515, %5514
  %5517 = fmul fast float %5502, %5502
  %5518 = fmul fast float %5517, %5506
  %5519 = fadd fast float %5518, %5505
  %5520 = bitcast float %5519 to i32
  %5521 = ashr i32 %5520, 1
  %5522 = add nsw i32 %5521, 532487669
  %5523 = bitcast i32 %5522 to float
  %5524 = fadd fast float %5523, %5502
  %5525 = fmul fast float %5516, %5516
  %5526 = fmul fast float %5525, %5513
  %5527 = fmul fast float %5526, %5524
  %5528 = fdiv fast float 1.000000e+00, %5527
  %5529 = bitcast float %5505 to i32
  %5530 = sitofp i32 %5529 to float
  %5531 = fmul fast float %5530, 0x3FE7F73180000000
  %5532 = fadd fast float %5531, 0x41AFE27C40000000
  %5533 = fptosi float %5532 to i32
  %5534 = bitcast i32 %5533 to float
  %5535 = fadd fast float %5534, %5315
  %5536 = bitcast float %5535 to i32
  %5537 = sub nsw i32 2129859010, %5536
  %5538 = bitcast i32 %5537 to float
  %5539 = fmul fast float %5505, %5528
  %5540 = fmul fast float %5539, %5534
  %5541 = fmul fast float %5540, %5538
  br i1 %4935, label %5542, label %5552

; <label>:5542                                    ; preds = %5482
  %5543 = fmul fast float %5439, %5431
  %5544 = fmul fast float %5439, %5432
  %5545 = fmul fast float %5439, %5433
  %5546 = fmul fast float %5543, %5488
  %5547 = fmul fast float %5546, %5541
  %5548 = fmul fast float %5544, %5488
  %5549 = fmul fast float %5548, %5541
  %5550 = fmul fast float %5545, %5488
  %5551 = fmul fast float %5550, %5541
  br label %5552

; <label>:5552                                    ; preds = %5542, %5482
  %5553 = phi float [ %5547, %5542 ], [ 0.000000e+00, %5482 ]
  %5554 = phi float [ %5549, %5542 ], [ 0.000000e+00, %5482 ]
  %5555 = phi float [ %5551, %5542 ], [ 0.000000e+00, %5482 ]
  %5556 = fmul fast float %5368, %5322
  %5557 = fmul fast float %5369, %5322
  %5558 = fmul fast float %5370, %5322
  %5559 = fsub fast float 1.000000e+00, %5259
  %5560 = bitcast float %5559 to i32
  %5561 = sitofp i32 %5560 to float
  %5562 = fmul fast float %5561, 5.000000e+00
  %5563 = fadd fast float %5562, 0xC1EFBF8940000000
  %5564 = fptosi float %5563 to i32
  %5565 = bitcast i32 %5564 to float
  %5566 = fmul fast float %5565, %1504
  %5567 = fmul fast float %5419, %5566
  %5568 = fmul fast float %5567, %3006
  %5569 = fmul fast float %5567, %3007
  %5570 = fmul fast float %5567, %3008
  %5571 = fadd fast float %5568, %5556
  %5572 = fadd fast float %5569, %5557
  %5573 = fadd fast float %5570, %5558
  %5574 = fmul fast float %5571, %5265
  %5575 = fmul fast float %5572, %5265
  %5576 = fmul fast float %5573, %5265
  %5577 = fadd fast float %5574, %5553
  %5578 = fadd fast float %5575, %5554
  %5579 = fadd fast float %5576, %5555
  %5580 = fmul fast float %5247, %1528
  %5581 = fmul fast float %5580, %5265
  %5582 = fmul fast float %5581, %5419
  %5583 = fmul fast float %5248, %1528
  %5584 = fmul fast float %5583, %5265
  %5585 = fmul fast float %5584, %5419
  %5586 = fmul fast float %5249, %1528
  %5587 = fmul fast float %5586, %5265
  %5588 = fmul fast float %5587, %5419
  %5589 = fadd fast float %5582, %4879
  %5590 = fadd fast float %5585, %4880
  %5591 = fadd fast float %5588, %4881
  %5592 = fmul fast float %5580, %5577
  %5593 = fmul fast float %5583, %5578
  %5594 = fmul fast float %5586, %5579
  %5595 = fadd fast float %5592, %4876
  %5596 = fadd fast float %5593, %4877
  %5597 = fadd fast float %5594, %4878
  br label %5009

; <label>:5598                                    ; preds = %5009
  br label %5599

; <label>:5599                                    ; preds = %5598, %4842
  %5600 = phi float [ %4844, %4842 ], [ %5010, %5598 ]
  %5601 = phi float [ %4845, %4842 ], [ %5011, %5598 ]
  %5602 = phi float [ %4846, %4842 ], [ %5012, %5598 ]
  %5603 = phi float [ %4847, %4842 ], [ %5013, %5598 ]
  %5604 = phi float [ %4848, %4842 ], [ %5014, %5598 ]
  %5605 = phi float [ %4849, %4842 ], [ %5015, %5598 ]
  %5606 = add i32 %4843, 1
  %5607 = icmp ugt i32 %5606, %4839
  br i1 %5607, label %5608, label %4842

; <label>:5608                                    ; preds = %5599
  br label %5609

; <label>:5609                                    ; preds = %5608, %4792, %4782
  %5610 = phi float [ %4783, %4782 ], [ %4783, %4792 ], [ %5600, %5608 ]
  %5611 = phi float [ %4784, %4782 ], [ %4784, %4792 ], [ %5601, %5608 ]
  %5612 = phi float [ %4785, %4782 ], [ %4785, %4792 ], [ %5602, %5608 ]
  %5613 = phi float [ %4786, %4782 ], [ %4786, %4792 ], [ %5603, %5608 ]
  %5614 = phi float [ %4787, %4782 ], [ %4787, %4792 ], [ %5604, %5608 ]
  %5615 = phi float [ %4788, %4782 ], [ %4788, %4792 ], [ %5605, %5608 ]
  %5616 = fmul fast float %3035, %1528
  %5617 = fmul fast float %3036, %1528
  %5618 = fmul fast float %3037, %1528
  %5619 = fadd fast float %5616, 1.000000e+00
  %5620 = fadd fast float %5617, 1.000000e+00
  %5621 = fadd fast float %5618, 1.000000e+00
  %5622 = call float @dx.op.dot3.f32(i32 55, float %5619, float %5620, float %5621, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5623 = fsub fast float 1.000000e+00, %5622
  %5624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5625 = extractvalue %dx.types.CBufRet.f32 %5624, 0
  %5626 = fmul fast float %5625, %3041
  %5627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5628 = extractvalue %dx.types.CBufRet.f32 %5627, 3
  %5629 = fsub fast float 1.000000e+00, %1500
  %5630 = call float @dx.op.unary.f32(i32 7, float %5629)  ; Saturate(value)
  %5631 = fadd fast float %5615, %1499
  %5632 = fmul fast float %5631, %1500
  %5633 = fmul fast float %5630, %5628
  %5634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5635 = extractvalue %dx.types.CBufRet.f32 %5634, 3
  %5636 = fmul fast float %5613, %2160
  %5637 = fmul fast float %5614, %2161
  %5638 = fmul fast float %5615, %2162
  %5639 = fcmp fast ogt float %82, %164
  %5640 = and i1 %5639, %1965
  %5641 = or i1 %1971, %5640
  %5642 = icmp eq i32 %1964, 2
  %5643 = fcmp fast ole float %82, %164
  %5644 = and i1 %5643, %5642
  %5645 = or i1 %5644, %5641
  br i1 %5640, label %5646, label %5905

; <label>:5646                                    ; preds = %5609
  %5647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5648 = extractvalue %dx.types.CBufRet.f32 %5647, 2
  %5649 = extractvalue %dx.types.CBufRet.f32 %5647, 3
  %5650 = fmul fast float %5648, %94
  %5651 = fmul fast float %5649, %95
  %5652 = call float @dx.op.unary.f32(i32 7, float %5650)  ; Saturate(value)
  %5653 = call float @dx.op.unary.f32(i32 7, float %5651)  ; Saturate(value)
  %5654 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %5652, float %5653, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5655 = extractvalue %dx.types.ResRet.f32 %5654, 0
  %5656 = extractvalue %dx.types.ResRet.f32 %5654, 1
  %5657 = extractvalue %dx.types.ResRet.f32 %5654, 2
  %5658 = extractvalue %dx.types.ResRet.f32 %5654, 3
  %5659 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %5652, float %5653, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5660 = extractvalue %dx.types.ResRet.f32 %5659, 0
  %5661 = extractvalue %dx.types.ResRet.f32 %5659, 1
  %5662 = extractvalue %dx.types.ResRet.f32 %5659, 2
  %5663 = extractvalue %dx.types.ResRet.f32 %5659, 3
  %5664 = call float @dx.op.binary.f32(i32 35, float %5656, float %5657)  ; FMax(a,b)
  %5665 = call float @dx.op.binary.f32(i32 35, float %5655, float %5664)  ; FMax(a,b)
  %5666 = call float @dx.op.binary.f32(i32 35, float %5665, float %5658)  ; FMax(a,b)
  %5667 = call float @dx.op.binary.f32(i32 36, float %5661, float %5662)  ; FMin(a,b)
  %5668 = call float @dx.op.binary.f32(i32 36, float %5660, float %5667)  ; FMin(a,b)
  %5669 = call float @dx.op.binary.f32(i32 36, float %5668, float %5663)  ; FMin(a,b)
  %5670 = fmul fast float %5666, 2.550000e+02
  %5671 = fadd fast float %5670, 0x3F70101020000000
  %5672 = fptoui float %5671 to i32
  %5673 = fmul fast float %5669, 2.550000e+02
  %5674 = fadd fast float %5673, 0x3F70101020000000
  %5675 = fptoui float %5674 to i32
  %5676 = icmp ult i32 %5672, %5675
  br i1 %5676, label %5677, label %5845

; <label>:5677                                    ; preds = %5646
  %5678 = fcmp fast ogt float %81, 9.843750e-01
  %5679 = fadd fast float %82, -4.000000e+00
  %5680 = select i1 %5678, float -4.000000e+00, float %5679
  %5681 = call float @dx.op.binary.f32(i32 35, float %5680, float 0.000000e+00)  ; FMax(a,b)
  %5682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5683 = extractvalue %dx.types.CBufRet.f32 %5682, 0
  %5684 = fadd fast float %5683, %5681
  %5685 = extractvalue %dx.types.CBufRet.f32 %5682, 2
  %5686 = fmul fast float %5684, %5685
  %5687 = call float @dx.op.unary.f32(i32 23, float %5686)  ; Log(value)
  %5688 = extractvalue %dx.types.CBufRet.f32 %5682, 3
  %5689 = fmul fast float %5688, %5687
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 2
  %5692 = fmul fast float %5689, %5691
  %5693 = call float @dx.op.unary.f32(i32 7, float %5692)  ; Saturate(value)
  %5694 = uitofp i32 %5672 to float
  %5695 = uitofp i32 %5675 to float
  %5696 = fadd fast float %5694, 5.000000e-01
  %5697 = fadd fast float %5695, 5.000000e-01
  %5698 = fmul fast float %5691, %5696
  %5699 = fmul fast float %5691, %5697
  %5700 = fadd fast float %5698, 0x3F0FFB4800000000
  %5701 = fadd fast float %5699, 0xBF0FFB4800000000
  %5702 = call float @dx.op.binary.f32(i32 35, float %5693, float %5700)  ; FMax(a,b)
  %5703 = call float @dx.op.binary.f32(i32 36, float %5702, float %5701)  ; FMin(a,b)
  %5704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5705 = extractvalue %dx.types.CBufRet.f32 %5704, 1
  %5706 = extractvalue %dx.types.CBufRet.f32 %5704, 2
  %5707 = extractvalue %dx.types.CBufRet.f32 %5704, 0
  %5708 = fmul fast float %5705, %5703
  %5709 = fadd fast float %5707, %5708
  %5710 = fadd fast float %5707, %5706
  %5711 = fsub fast float %5705, %5706
  %5712 = fadd fast float %5711, %5707
  %5713 = call float @dx.op.binary.f32(i32 35, float %5709, float %5710)  ; FMax(a,b)
  %5714 = call float @dx.op.binary.f32(i32 36, float %5713, float %5712)  ; FMin(a,b)
  %5715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %5652, float %5653, float %5714, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5716 = extractvalue %dx.types.ResRet.f32 %5715, 0
  %5717 = extractvalue %dx.types.ResRet.f32 %5715, 1
  %5718 = extractvalue %dx.types.ResRet.f32 %5715, 2
  %5719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5720 = extractvalue %dx.types.CBufRet.i32 %5719, 0
  %5721 = extractvalue %dx.types.CBufRet.i32 %5719, 1
  %5722 = uitofp i32 %5720 to float
  %5723 = uitofp i32 %5721 to float
  %5724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5725 = extractvalue %dx.types.CBufRet.f32 %5724, 0
  %5726 = extractvalue %dx.types.CBufRet.f32 %5724, 1
  %5727 = fmul fast float %5722, %5652
  %5728 = fmul fast float %5723, %5653
  %5729 = fadd fast float %5727, -5.000000e-01
  %5730 = fadd fast float %5728, -5.000000e-01
  %5731 = call float @dx.op.unary.f32(i32 22, float %5729)  ; Frc(value)
  %5732 = call float @dx.op.unary.f32(i32 22, float %5730)  ; Frc(value)
  %5733 = fmul fast float %5731, %5731
  %5734 = fmul fast float %5733, %5731
  %5735 = fsub fast float 3.000000e+00, %5731
  %5736 = fmul fast float %5733, %5735
  %5737 = fmul fast float %5731, 3.000000e+00
  %5738 = fmul fast float %5734, 3.000000e+00
  %5739 = fmul fast float %5733, 6.000000e+00
  %5740 = fsub fast float %5738, %5739
  %5741 = fadd fast float %5740, 4.000000e+00
  %5742 = fmul fast float %5741, 0x3FC5555560000000
  %5743 = fmul fast float %5734, -3.000000e+00
  %5744 = fadd fast float %5733, %5731
  %5745 = fmul fast float %5744, 3.000000e+00
  %5746 = fadd fast float %5743, 1.000000e+00
  %5747 = fadd fast float %5746, %5745
  %5748 = fmul fast float %5734, 0x3FC5555560000000
  %5749 = fmul fast float %5732, %5732
  %5750 = fmul fast float %5749, %5732
  %5751 = fsub fast float 3.000000e+00, %5732
  %5752 = fmul fast float %5749, %5751
  %5753 = fmul fast float %5732, 3.000000e+00
  %5754 = fmul fast float %5750, 3.000000e+00
  %5755 = fmul fast float %5749, 6.000000e+00
  %5756 = fsub fast float %5754, %5755
  %5757 = fadd fast float %5756, 4.000000e+00
  %5758 = fmul fast float %5757, 0x3FC5555560000000
  %5759 = fmul fast float %5750, -3.000000e+00
  %5760 = fadd fast float %5749, %5732
  %5761 = fmul fast float %5760, 3.000000e+00
  %5762 = fadd fast float %5759, 1.000000e+00
  %5763 = fadd fast float %5762, %5761
  %5764 = fmul fast float %5750, 0x3FC5555560000000
  %5765 = fadd fast float %5731, 1.000000e+00
  %5766 = fsub fast float 1.000000e+00, %5737
  %5767 = fadd fast float %5766, %5736
  %5768 = fadd fast float %5767, %5741
  %5769 = fmul fast float %5768, 0x3FC5555560000000
  %5770 = fdiv fast float %5742, %5769
  %5771 = fsub fast float %5765, %5770
  %5772 = fsub fast float 1.000000e+00, %5731
  %5773 = fadd fast float %5747, %5734
  %5774 = fmul fast float %5773, 0x3FC5555560000000
  %5775 = fdiv fast float %5748, %5774
  %5776 = fadd fast float %5772, %5775
  %5777 = fadd fast float %5732, 1.000000e+00
  %5778 = fsub fast float 1.000000e+00, %5753
  %5779 = fadd fast float %5778, %5752
  %5780 = fadd fast float %5779, %5757
  %5781 = fmul fast float %5780, 0x3FC5555560000000
  %5782 = fdiv fast float %5758, %5781
  %5783 = fsub fast float %5777, %5782
  %5784 = fsub fast float 1.000000e+00, %5732
  %5785 = fadd fast float %5763, %5750
  %5786 = fmul fast float %5785, 0x3FC5555560000000
  %5787 = fdiv fast float %5764, %5786
  %5788 = fadd fast float %5787, %5784
  %5789 = fmul fast float %5771, %5725
  %5790 = fsub fast float %5652, %5789
  %5791 = fmul fast float %5776, %5725
  %5792 = fadd fast float %5791, %5652
  %5793 = fmul fast float %5788, %5726
  %5794 = fadd fast float %5793, %5653
  %5795 = fmul fast float %5783, %5726
  %5796 = fsub fast float %5653, %5795
  %5797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %5790, float %5796, float %5714, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5798 = extractvalue %dx.types.ResRet.f32 %5797, 0
  %5799 = extractvalue %dx.types.ResRet.f32 %5797, 1
  %5800 = extractvalue %dx.types.ResRet.f32 %5797, 2
  %5801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %5792, float %5796, float %5714, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5802 = extractvalue %dx.types.ResRet.f32 %5801, 0
  %5803 = extractvalue %dx.types.ResRet.f32 %5801, 1
  %5804 = extractvalue %dx.types.ResRet.f32 %5801, 2
  %5805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %5790, float %5794, float %5714, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5806 = extractvalue %dx.types.ResRet.f32 %5805, 0
  %5807 = extractvalue %dx.types.ResRet.f32 %5805, 1
  %5808 = extractvalue %dx.types.ResRet.f32 %5805, 2
  %5809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %5792, float %5794, float %5714, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5810 = extractvalue %dx.types.ResRet.f32 %5809, 0
  %5811 = extractvalue %dx.types.ResRet.f32 %5809, 1
  %5812 = extractvalue %dx.types.ResRet.f32 %5809, 2
  %5813 = fsub fast float %5806, %5798
  %5814 = fsub fast float %5807, %5799
  %5815 = fsub fast float %5808, %5800
  %5816 = fmul fast float %5813, %5786
  %5817 = fmul fast float %5814, %5786
  %5818 = fmul fast float %5815, %5786
  %5819 = fadd fast float %5816, %5798
  %5820 = fadd fast float %5817, %5799
  %5821 = fadd fast float %5818, %5800
  %5822 = fsub fast float %5810, %5802
  %5823 = fsub fast float %5811, %5803
  %5824 = fsub fast float %5812, %5804
  %5825 = fmul fast float %5822, %5786
  %5826 = fmul fast float %5823, %5786
  %5827 = fmul fast float %5824, %5786
  %5828 = fsub fast float %5802, %5819
  %5829 = fadd fast float %5828, %5825
  %5830 = fsub fast float %5803, %5820
  %5831 = fadd fast float %5830, %5826
  %5832 = fsub fast float %5804, %5821
  %5833 = fadd fast float %5832, %5827
  %5834 = fmul fast float %5829, %5774
  %5835 = fmul fast float %5831, %5774
  %5836 = fmul fast float %5833, %5774
  %5837 = fadd fast float %5834, %5819
  %5838 = fadd fast float %5835, %5820
  %5839 = fadd fast float %5836, %5821
  %5840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5841 = extractvalue %dx.types.CBufRet.f32 %5840, 1
  %5842 = fmul fast float %5837, %5841
  %5843 = fmul fast float %5838, %5841
  %5844 = fmul fast float %5839, %5841
  br label %5845

; <label>:5845                                    ; preds = %5677, %5646
  %5846 = phi float [ %5716, %5677 ], [ 1.000000e+00, %5646 ]
  %5847 = phi float [ %5717, %5677 ], [ 1.000000e+00, %5646 ]
  %5848 = phi float [ %5718, %5677 ], [ 1.000000e+00, %5646 ]
  %5849 = phi float [ %5842, %5677 ], [ 0.000000e+00, %5646 ]
  %5850 = phi float [ %5843, %5677 ], [ 0.000000e+00, %5646 ]
  %5851 = phi float [ %5844, %5677 ], [ 0.000000e+00, %5646 ]
  %5852 = fmul fast float %5849, %5623
  %5853 = fmul fast float %5850, %5623
  %5854 = fmul fast float %5851, %5623
  %5855 = call float @dx.op.dot3.f32(i32 55, float %5846, float %5847, float %5848, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5856 = call float @dx.op.dot3.f32(i32 55, float %5852, float %5853, float %5854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5857 = select i1 %204, float %5855, float %5846
  %5858 = select i1 %204, float %5855, float %5847
  %5859 = select i1 %204, float 1.000000e+00, float %5848
  %5860 = select i1 %204, float %5856, float %5852
  %5861 = select i1 %204, float 0.000000e+00, float %5853
  %5862 = select i1 %204, float 0.000000e+00, float %5854
  %5863 = fmul fast float %5857, %5636
  %5864 = fmul fast float %5858, %5637
  %5865 = fmul fast float %5859, %5638
  %5866 = fadd fast float %5863, %5860
  %5867 = fadd fast float %5864, %5861
  %5868 = fadd fast float %5862, %5865
  %5869 = fmul fast float %5857, %5610
  %5870 = fmul fast float %5858, %5611
  %5871 = fmul fast float %5859, %5612
  %5872 = fmul fast float %94, 2.000000e+00
  %5873 = fmul fast float %5872, %5648
  %5874 = fmul fast float %95, 2.000000e+00
  %5875 = fmul fast float %5874, %5649
  %5876 = fsub fast float 1.000000e+00, %5873
  %5877 = fsub fast float 1.000000e+00, %5875
  %5878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5879 = extractvalue %dx.types.CBufRet.f32 %5878, 0
  %5880 = extractvalue %dx.types.CBufRet.f32 %5878, 1
  %5881 = extractvalue %dx.types.CBufRet.f32 %5878, 2
  %5882 = fmul fast float %5876, %5879
  %5883 = fmul fast float %5876, %5880
  %5884 = fmul fast float %5876, %5881
  %5885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5886 = extractvalue %dx.types.CBufRet.f32 %5885, 0
  %5887 = extractvalue %dx.types.CBufRet.f32 %5885, 1
  %5888 = extractvalue %dx.types.CBufRet.f32 %5885, 2
  %5889 = fmul fast float %5877, %5886
  %5890 = fmul fast float %5877, %5887
  %5891 = fmul fast float %5877, %5888
  %5892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5893 = extractvalue %dx.types.CBufRet.f32 %5892, 0
  %5894 = extractvalue %dx.types.CBufRet.f32 %5892, 1
  %5895 = extractvalue %dx.types.CBufRet.f32 %5892, 2
  %5896 = fadd fast float %5889, %5893
  %5897 = fadd fast float %5896, %5882
  %5898 = fadd fast float %5890, %5894
  %5899 = fadd fast float %5898, %5883
  %5900 = fadd fast float %5891, %5895
  %5901 = fadd fast float %5900, %5884
  %5902 = fmul fast float %5897, %164
  %5903 = fmul fast float %5899, %164
  %5904 = fmul fast float %5901, %164
  br label %5905

; <label>:5905                                    ; preds = %5845, %5609
  %5906 = phi float [ %5902, %5845 ], [ %142, %5609 ]
  %5907 = phi float [ %5903, %5845 ], [ %143, %5609 ]
  %5908 = phi float [ %5904, %5845 ], [ %144, %5609 ]
  %5909 = phi float [ %164, %5845 ], [ %82, %5609 ]
  %5910 = phi float [ %5866, %5845 ], [ %5636, %5609 ]
  %5911 = phi float [ %5867, %5845 ], [ %5637, %5609 ]
  %5912 = phi float [ %5868, %5845 ], [ %5638, %5609 ]
  %5913 = phi float [ %5869, %5845 ], [ %5610, %5609 ]
  %5914 = phi float [ %5870, %5845 ], [ %5611, %5609 ]
  %5915 = phi float [ %5871, %5845 ], [ %5612, %5609 ]
  %5916 = phi float [ %5846, %5845 ], [ 1.000000e+00, %5609 ]
  br i1 %5645, label %7071, label %5917

; <label>:5917                                    ; preds = %5905
  %5918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %5919 = extractvalue %dx.types.CBufRet.f32 %5918, 0
  %5920 = extractvalue %dx.types.CBufRet.f32 %5918, 1
  %5921 = extractvalue %dx.types.CBufRet.f32 %5918, 2
  %5922 = extractvalue %dx.types.CBufRet.f32 %5918, 3
  %5923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %5924 = extractvalue %dx.types.CBufRet.f32 %5923, 0
  %5925 = extractvalue %dx.types.CBufRet.f32 %5923, 1
  %5926 = extractvalue %dx.types.CBufRet.f32 %5923, 2
  %5927 = extractvalue %dx.types.CBufRet.f32 %5923, 3
  %5928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5928, 0
  %5930 = extractvalue %dx.types.CBufRet.f32 %5928, 1
  %5931 = extractvalue %dx.types.CBufRet.f32 %5928, 2
  %5932 = extractvalue %dx.types.CBufRet.f32 %5928, 3
  %5933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %5934 = extractvalue %dx.types.CBufRet.f32 %5933, 0
  %5935 = extractvalue %dx.types.CBufRet.f32 %5933, 1
  %5936 = extractvalue %dx.types.CBufRet.f32 %5933, 2
  %5937 = extractvalue %dx.types.CBufRet.f32 %5933, 3
  %5938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %5939 = extractvalue %dx.types.CBufRet.f32 %5938, 3
  %5940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5940, 3
  %5942 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %5943 = extractvalue %dx.types.CBufRet.f32 %5940, 1
  %5944 = extractvalue %dx.types.CBufRet.f32 %5940, 2
  %5945 = fcmp fast olt float %5944, -5.000000e-01
  %5946 = call float @dx.op.dot3.f32(i32 55, float %5906, float %5907, float %5908, float %5906, float %5907, float %5908)  ; Dot3(ax,ay,az,bx,by,bz)
  %5947 = call float @dx.op.unary.f32(i32 25, float %5946)  ; Rsqrt(value)
  %5948 = fmul fast float %5947, %5946
  %5949 = fmul fast float %5947, %5906
  %5950 = fmul fast float %5947, %5907
  %5951 = fmul fast float %5947, %5908
  %5952 = fadd fast float %5948, %5922
  %5953 = call float @dx.op.dot3.f32(i32 55, float %5949, float %5950, float %5951, float %5919, float %5920, float %5921)  ; Dot3(ax,ay,az,bx,by,bz)
  %5954 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5955 = extractvalue %dx.types.CBufRet.i32 %5954, 1
  %5956 = and i32 %5955, 1
  %5957 = icmp ne i32 %5956, 0
  %5958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %5959 = extractvalue %dx.types.CBufRet.f32 %5958, 2
  %5960 = fcmp fast ogt float %5959, 0.000000e+00
  %5961 = and i1 %5957, %5960
  br i1 %5961, label %5962, label %6368, !dx.controlflow.hints !125

; <label>:5962                                    ; preds = %5917
  %5963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %5964 = extractvalue %dx.types.CBufRet.f32 %5963, 3
  %5965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %5966 = extractvalue %dx.types.CBufRet.f32 %5965, 2
  %5967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5968 = extractvalue %dx.types.CBufRet.f32 %5967, 2
  %5969 = fsub fast float %5966, %5968
  %5970 = and i32 %5955, 2
  %5971 = extractvalue %dx.types.CBufRet.i32 %5954, 0
  %5972 = call i32 @dx.op.binary.i32(i32 40, i32 %5971, i32 3)  ; UMin(a,b)
  %5973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %5974 = extractvalue %dx.types.CBufRet.f32 %5973, 0
  %5975 = extractvalue %dx.types.CBufRet.f32 %5973, 1
  %5976 = extractvalue %dx.types.CBufRet.f32 %5967, 0
  %5977 = extractvalue %dx.types.CBufRet.f32 %5967, 1
  %5978 = fsub fast float %5974, %5976
  %5979 = fsub fast float %5975, %5977
  %5980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %5981 = extractvalue %dx.types.CBufRet.f32 %5980, 0
  %5982 = fcmp fast ogt float %5981, 0.000000e+00
  %5983 = fsub fast float -0.000000e+00, %5978
  %5984 = fsub fast float -0.000000e+00, %5979
  %5985 = call float @dx.op.dot2.f32(i32 54, float %5949, float %5950, float %5949, float %5950)  ; Dot2(ax,ay,bx,by)
  %5986 = call float @dx.op.dot2.f32(i32 54, float %5949, float %5950, float %5983, float %5984)  ; Dot2(ax,ay,bx,by)
  %5987 = fmul fast float %5986, 2.000000e+00
  %5988 = call float @dx.op.dot2.f32(i32 54, float %5983, float %5984, float %5983, float %5984)  ; Dot2(ax,ay,bx,by)
  %5989 = fmul fast float %5981, %5981
  %5990 = fsub fast float %5988, %5989
  %5991 = fmul fast float %5987, %5987
  %5992 = fmul fast float %5985, 4.000000e+00
  %5993 = fmul fast float %5992, %5990
  %5994 = fsub fast float %5991, %5993
  %5995 = fcmp fast ogt float %5994, 0.000000e+00
  br i1 %5995, label %5996, label %6011

; <label>:5996                                    ; preds = %5962
  %5997 = fcmp fast ogt float %5987, 0.000000e+00
  %5998 = call float @dx.op.unary.f32(i32 24, float %5994)  ; Sqrt(value)
  %5999 = fsub fast float -0.000000e+00, %5998
  %6000 = select i1 %5997, float %5998, float %5999
  %6001 = fadd fast float %6000, %5987
  %6002 = fmul float %6001, -5.000000e-01
  %6003 = fdiv fast float %6002, %5985
  %6004 = call float @dx.op.binary.f32(i32 35, float %6003, float 0.000000e+00)  ; FMax(a,b)
  %6005 = call float @dx.op.binary.f32(i32 36, float %5948, float %6004)  ; FMin(a,b)
  %6006 = fdiv fast float %5990, %6002
  %6007 = call float @dx.op.binary.f32(i32 35, float %6006, float 0.000000e+00)  ; FMax(a,b)
  %6008 = call float @dx.op.binary.f32(i32 36, float %5948, float %6007)  ; FMin(a,b)
  %6009 = call float @dx.op.binary.f32(i32 36, float %6005, float %6008)  ; FMin(a,b)
  %6010 = call float @dx.op.binary.f32(i32 35, float %6005, float %6008)  ; FMax(a,b)
  br label %6011

; <label>:6011                                    ; preds = %5996, %5962
  %6012 = phi float [ %6010, %5996 ], [ -1.000000e+00, %5962 ]
  %6013 = phi float [ %6009, %5996 ], [ -1.000000e+00, %5962 ]
  %6014 = phi i1 [ true, %5996 ], [ false, %5962 ]
  %6015 = and i1 %5982, %6014
  br i1 %6015, label %6016, label %6018

; <label>:6016                                    ; preds = %6011
  %6017 = fcmp fast oeq float %6013, %6012
  br i1 %6017, label %6321, label %6019

; <label>:6018                                    ; preds = %6011
  br i1 %5982, label %6321, label %6019

; <label>:6019                                    ; preds = %6018, %6016
  %6020 = phi float [ %5948, %6018 ], [ %6012, %6016 ]
  %6021 = phi float [ 0.000000e+00, %6018 ], [ %6013, %6016 ]
  %6022 = icmp ne i32 %5970, 0
  %6023 = fmul fast float %6020, %5951
  %6024 = fadd fast float %6023, %5964
  %6025 = fmul fast float %6024, %6020
  %6026 = select i1 %6022, float 0.000000e+00, float %6025
  %6027 = fcmp fast oeq float %5951, 0.000000e+00
  %6028 = fdiv fast float %5969, %5951
  %6029 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6028)  ; FMax(a,b)
  %6030 = select i1 %6027, float %6020, float %6029
  %6031 = call float @dx.op.binary.f32(i32 36, float %6020, float %6030)  ; FMin(a,b)
  %6032 = fcmp fast ogt float %5951, 0.000000e+00
  %6033 = fcmp fast olt float %5969, 0.000000e+00
  br i1 %6032, label %6034, label %6091

; <label>:6034                                    ; preds = %6019
  %6035 = icmp eq i32 %5970, 0
  br i1 %6033, label %6036, label %6080

; <label>:6036                                    ; preds = %6034
  %6037 = select i1 %6035, float %6020, float 0.000000e+00
  %6038 = fsub fast float -0.000000e+00, %6037
  %6039 = call float @dx.op.unary.f32(i32 6, float %6038)  ; FAbs(value)
  %6040 = fmul fast float %6037, %5951
  %6041 = fadd fast float %6040, %5964
  %6042 = fmul fast float %6039, %6041
  %6043 = fsub fast float %6026, %6042
  %6044 = fsub fast float %6020, %6039
  %6045 = select i1 %6035, float %6044, float 0.000000e+00
  %6046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6047 = extractvalue %dx.types.CBufRet.f32 %6046, 0
  %6048 = extractvalue %dx.types.CBufRet.f32 %6046, 1
  %6049 = extractvalue %dx.types.CBufRet.f32 %6046, 2
  %6050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6051 = extractvalue %dx.types.CBufRet.f32 %6050, 0
  %6052 = extractvalue %dx.types.CBufRet.f32 %6050, 1
  %6053 = extractvalue %dx.types.CBufRet.f32 %6050, 2
  %6054 = extractvalue %dx.types.CBufRet.f32 %6050, 3
  %6055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6056 = extractvalue %dx.types.CBufRet.f32 %6055, 3
  %6057 = call float @dx.op.binary.f32(i32 36, float %6043, float %6056)  ; FMin(a,b)
  %6058 = fmul fast float %6054, %6045
  %6059 = call float @dx.op.unary.f32(i32 7, float %6058)  ; Saturate(value)
  %6060 = fsub fast float %6051, %6047
  %6061 = fsub fast float %6052, %6048
  %6062 = fsub fast float %6053, %6049
  %6063 = fmul fast float %6059, %6060
  %6064 = fmul fast float %6059, %6061
  %6065 = fmul fast float %6059, %6062
  %6066 = fadd fast float %6063, %6047
  %6067 = fadd fast float %6064, %6048
  %6068 = fadd fast float %6065, %6049
  %6069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6070 = extractvalue %dx.types.CBufRet.f32 %6069, 0
  %6071 = extractvalue %dx.types.CBufRet.f32 %6069, 1
  %6072 = fadd fast float %6071, %6070
  %6073 = call float @dx.op.unary.f32(i32 7, float %6072)  ; Saturate(value)
  %6074 = extractvalue %dx.types.CBufRet.f32 %6069, 2
  %6075 = extractvalue %dx.types.CBufRet.f32 %6069, 3
  %6076 = fadd fast float %6075, %6074
  %6077 = call float @dx.op.unary.f32(i32 7, float %6076)  ; Saturate(value)
  %6078 = fmul fast float %6073, %6057
  %6079 = fmul fast float %6078, %6077
  br label %6321

; <label>:6080                                    ; preds = %6034
  br i1 %6035, label %6081, label %6102

; <label>:6081                                    ; preds = %6080
  %6082 = call float @dx.op.binary.f32(i32 36, float %6031, float %6021)  ; FMin(a,b)
  %6083 = fsub fast float %6031, %6082
  %6084 = fsub fast float %6083, %6020
  %6085 = call float @dx.op.unary.f32(i32 6, float %6084)  ; FAbs(value)
  %6086 = fadd fast float %6083, %6020
  %6087 = fmul fast float %6086, %5951
  %6088 = fadd fast float %6087, %5964
  %6089 = fmul fast float %6088, %6085
  %6090 = fsub fast float %6026, %6089
  br label %6102

; <label>:6091                                    ; preds = %6019
  br i1 %6033, label %6092, label %6102

; <label>:6092                                    ; preds = %6091
  %6093 = call float @dx.op.binary.f32(i32 35, float %6021, float %6031)  ; FMax(a,b)
  %6094 = icmp eq i32 %5970, 0
  %6095 = select i1 %6094, float %6031, float 0.000000e+00
  %6096 = fsub fast float -0.000000e+00, %6095
  %6097 = call float @dx.op.unary.f32(i32 6, float %6096)  ; FAbs(value)
  %6098 = fmul fast float %6095, %5951
  %6099 = fadd fast float %6098, %5964
  %6100 = fmul fast float %6097, %6099
  %6101 = fsub fast float %6026, %6100
  br label %6102

; <label>:6102                                    ; preds = %6092, %6091, %6081, %6080
  %6103 = phi float [ %6021, %6080 ], [ %6021, %6081 ], [ %6093, %6092 ], [ %6021, %6091 ]
  %6104 = phi float [ 0.000000e+00, %6080 ], [ %6085, %6081 ], [ %6097, %6092 ], [ 0.000000e+00, %6091 ]
  %6105 = phi float [ %6026, %6080 ], [ %6090, %6081 ], [ %6101, %6092 ], [ %6026, %6091 ]
  %6106 = phi float [ %6031, %6080 ], [ %6031, %6081 ], [ %6020, %6092 ], [ %6020, %6091 ]
  %6107 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 0
  store float -1.000000e+00, float* %6107, align 4, !tbaa !112, !noalias !126
  %6108 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 1
  store float -1.000000e+00, float* %6108, align 4, !tbaa !112, !noalias !126
  %6109 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 2
  store float -1.000000e+00, float* %6109, align 4, !tbaa !112, !noalias !126
  %6110 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 0
  store float -1.000000e+00, float* %6110, align 4, !tbaa !112, !noalias !126
  %6111 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 1
  store float -1.000000e+00, float* %6111, align 4, !tbaa !112, !noalias !126
  %6112 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 2
  store float -1.000000e+00, float* %6112, align 4, !tbaa !112, !noalias !126
  %6113 = icmp sgt i32 %5972, 0
  br i1 %6113, label %6114, label %6175

; <label>:6114                                    ; preds = %6102
  br label %6115

; <label>:6115                                    ; preds = %6164, %6114
  %6116 = phi i32 [ %6165, %6164 ], [ 0, %6114 ]
  %6117 = phi i32 [ %6166, %6164 ], [ 0, %6114 ]
  %6118 = add nuw i32 %6117, 171
  %6119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6118)  ; CBufferLoadLegacy(handle,regIndex)
  %6120 = extractvalue %dx.types.CBufRet.f32 %6119, 0
  %6121 = extractvalue %dx.types.CBufRet.f32 %6119, 1
  %6122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6123 = extractvalue %dx.types.CBufRet.f32 %6122, 0
  %6124 = extractvalue %dx.types.CBufRet.f32 %6122, 1
  %6125 = fsub fast float %6120, %6123
  %6126 = fsub fast float %6121, %6124
  %6127 = extractvalue %dx.types.CBufRet.f32 %6119, 2
  %6128 = fsub fast float -0.000000e+00, %6125
  %6129 = fsub fast float -0.000000e+00, %6126
  %6130 = call float @dx.op.dot2.f32(i32 54, float %5949, float %5950, float %6128, float %6129)  ; Dot2(ax,ay,bx,by)
  %6131 = fmul fast float %6130, 2.000000e+00
  %6132 = call float @dx.op.dot2.f32(i32 54, float %6128, float %6129, float %6128, float %6129)  ; Dot2(ax,ay,bx,by)
  %6133 = fmul fast float %6127, %6127
  %6134 = fsub fast float %6132, %6133
  %6135 = fmul fast float %6131, %6131
  %6136 = fmul fast float %5992, %6134
  %6137 = fsub fast float %6135, %6136
  %6138 = fcmp fast ogt float %6137, 0.000000e+00
  br i1 %6138, label %6139, label %6154

; <label>:6139                                    ; preds = %6115
  %6140 = fcmp fast ogt float %6131, 0.000000e+00
  %6141 = call float @dx.op.unary.f32(i32 24, float %6137)  ; Sqrt(value)
  %6142 = fsub fast float -0.000000e+00, %6141
  %6143 = select i1 %6140, float %6141, float %6142
  %6144 = fadd fast float %6143, %6131
  %6145 = fmul float %6144, -5.000000e-01
  %6146 = fdiv fast float %6145, %5985
  %6147 = call float @dx.op.binary.f32(i32 35, float %6146, float 0.000000e+00)  ; FMax(a,b)
  %6148 = call float @dx.op.binary.f32(i32 36, float %6020, float %6147)  ; FMin(a,b)
  %6149 = fdiv fast float %6134, %6145
  %6150 = call float @dx.op.binary.f32(i32 35, float %6149, float 0.000000e+00)  ; FMax(a,b)
  %6151 = call float @dx.op.binary.f32(i32 36, float %6020, float %6150)  ; FMin(a,b)
  %6152 = call float @dx.op.binary.f32(i32 36, float %6148, float %6151)  ; FMin(a,b)
  %6153 = call float @dx.op.binary.f32(i32 35, float %6148, float %6151)  ; FMax(a,b)
  br label %6154

; <label>:6154                                    ; preds = %6139, %6115
  %6155 = phi float [ %6153, %6139 ], [ -1.000000e+00, %6115 ]
  %6156 = phi float [ %6152, %6139 ], [ -1.000000e+00, %6115 ]
  %6157 = phi i1 [ true, %6139 ], [ false, %6115 ]
  br i1 %6157, label %6158, label %6164

; <label>:6158                                    ; preds = %6154
  %6159 = call float @dx.op.binary.f32(i32 35, float %6103, float %6156)  ; FMax(a,b)
  %6160 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %6117
  store float %6159, float* %6160, align 4, !tbaa !112, !noalias !126
  %6161 = call float @dx.op.binary.f32(i32 35, float %6103, float %6155)  ; FMax(a,b)
  %6162 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %6117
  store float %6161, float* %6162, align 4, !tbaa !112, !noalias !126
  %6163 = add nsw i32 %6116, 1
  br label %6164

; <label>:6164                                    ; preds = %6158, %6154
  %6165 = phi i32 [ %6163, %6158 ], [ %6116, %6154 ]
  %6166 = add nuw nsw i32 %6117, 1
  %6167 = icmp eq i32 %6166, %5972
  br i1 %6167, label %6168, label %6115

; <label>:6168                                    ; preds = %6164
  %6169 = load float, float* %6109, align 4, !tbaa !112, !alias.scope !142, !noalias !145
  %6170 = load float, float* %6108, align 4, !tbaa !112, !alias.scope !148, !noalias !149
  %6171 = load float, float* %6107, align 4, !tbaa !112, !alias.scope !150, !noalias !151
  %6172 = load float, float* %6112, align 4, !tbaa !112, !alias.scope !152, !noalias !155
  %6173 = load float, float* %6111, align 4, !tbaa !112, !alias.scope !158, !noalias !159
  %6174 = load float, float* %6110, align 4, !tbaa !112, !alias.scope !160, !noalias !161
  br label %6175

; <label>:6175                                    ; preds = %6168, %6102
  %6176 = phi float [ -1.000000e+00, %6102 ], [ %6174, %6168 ]
  %6177 = phi float [ -1.000000e+00, %6102 ], [ %6173, %6168 ]
  %6178 = phi float [ -1.000000e+00, %6102 ], [ %6172, %6168 ]
  %6179 = phi float [ -1.000000e+00, %6102 ], [ %6171, %6168 ]
  %6180 = phi float [ -1.000000e+00, %6102 ], [ %6170, %6168 ]
  %6181 = phi float [ -1.000000e+00, %6102 ], [ %6169, %6168 ]
  %6182 = phi i32 [ 0, %6102 ], [ %6165, %6168 ]
  %6183 = call float @dx.op.binary.f32(i32 36, float %6180, float %6181)  ; FMin(a,b)
  %6184 = call float @dx.op.binary.f32(i32 36, float %6179, float %6183)  ; FMin(a,b)
  %6185 = call float @dx.op.binary.f32(i32 35, float %6179, float %6180)  ; FMax(a,b)
  %6186 = call float @dx.op.binary.f32(i32 36, float %6185, float %6181)  ; FMin(a,b)
  %6187 = call float @dx.op.binary.f32(i32 36, float %6179, float %6180)  ; FMin(a,b)
  %6188 = call float @dx.op.binary.f32(i32 35, float %6187, float %6186)  ; FMax(a,b)
  %6189 = call float @dx.op.binary.f32(i32 35, float %6180, float %6181)  ; FMax(a,b)
  %6190 = call float @dx.op.binary.f32(i32 35, float %6179, float %6189)  ; FMax(a,b)
  store float %6184, float* %6107, align 4, !tbaa !112, !alias.scope !150, !noalias !151
  store float %6188, float* %6108, align 4, !tbaa !112, !alias.scope !148, !noalias !149
  store float %6190, float* %6109, align 4, !tbaa !112, !alias.scope !142, !noalias !145
  %6191 = call float @dx.op.binary.f32(i32 36, float %6177, float %6178)  ; FMin(a,b)
  %6192 = call float @dx.op.binary.f32(i32 36, float %6176, float %6191)  ; FMin(a,b)
  %6193 = call float @dx.op.binary.f32(i32 35, float %6176, float %6177)  ; FMax(a,b)
  %6194 = call float @dx.op.binary.f32(i32 36, float %6193, float %6178)  ; FMin(a,b)
  %6195 = call float @dx.op.binary.f32(i32 36, float %6176, float %6177)  ; FMin(a,b)
  %6196 = call float @dx.op.binary.f32(i32 35, float %6195, float %6194)  ; FMax(a,b)
  %6197 = call float @dx.op.binary.f32(i32 35, float %6177, float %6178)  ; FMax(a,b)
  %6198 = call float @dx.op.binary.f32(i32 35, float %6176, float %6197)  ; FMax(a,b)
  store float %6192, float* %6110, align 4, !tbaa !112, !alias.scope !160, !noalias !161
  store float %6196, float* %6111, align 4, !tbaa !112, !alias.scope !158, !noalias !159
  store float %6198, float* %6112, align 4, !tbaa !112, !alias.scope !152, !noalias !155
  %6199 = sub nsw i32 3, %6182
  %6200 = icmp sgt i32 %6199, 2
  br i1 %6200, label %6201, label %6239

; <label>:6201                                    ; preds = %6175
  %6202 = icmp eq i32 %5970, 0
  %6203 = fsub fast float %6020, %6104
  %6204 = select i1 %6202, float %6203, float %6104
  %6205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6206 = extractvalue %dx.types.CBufRet.f32 %6205, 0
  %6207 = extractvalue %dx.types.CBufRet.f32 %6205, 1
  %6208 = extractvalue %dx.types.CBufRet.f32 %6205, 2
  %6209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6210 = extractvalue %dx.types.CBufRet.f32 %6209, 0
  %6211 = extractvalue %dx.types.CBufRet.f32 %6209, 1
  %6212 = extractvalue %dx.types.CBufRet.f32 %6209, 2
  %6213 = extractvalue %dx.types.CBufRet.f32 %6209, 3
  %6214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6215 = extractvalue %dx.types.CBufRet.f32 %6214, 3
  %6216 = call float @dx.op.binary.f32(i32 36, float %6105, float %6215)  ; FMin(a,b)
  %6217 = fmul fast float %6213, %6204
  %6218 = call float @dx.op.unary.f32(i32 7, float %6217)  ; Saturate(value)
  %6219 = fsub fast float %6210, %6206
  %6220 = fsub fast float %6211, %6207
  %6221 = fsub fast float %6212, %6208
  %6222 = fmul fast float %6218, %6219
  %6223 = fmul fast float %6218, %6220
  %6224 = fmul fast float %6218, %6221
  %6225 = fadd fast float %6222, %6206
  %6226 = fadd fast float %6223, %6207
  %6227 = fadd fast float %6224, %6208
  %6228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6229 = extractvalue %dx.types.CBufRet.f32 %6228, 0
  %6230 = extractvalue %dx.types.CBufRet.f32 %6228, 1
  %6231 = fadd fast float %6230, %6229
  %6232 = call float @dx.op.unary.f32(i32 7, float %6231)  ; Saturate(value)
  %6233 = extractvalue %dx.types.CBufRet.f32 %6228, 2
  %6234 = extractvalue %dx.types.CBufRet.f32 %6228, 3
  %6235 = fadd fast float %6234, %6233
  %6236 = call float @dx.op.unary.f32(i32 7, float %6235)  ; Saturate(value)
  %6237 = fmul fast float %6232, %6216
  %6238 = fmul fast float %6237, %6236
  br label %6321

; <label>:6239                                    ; preds = %6175
  %6240 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %6199
  %6241 = load float, float* %6240, align 4, !tbaa !112, !noalias !126
  %6242 = fcmp fast olt float %6241, %6106
  %6243 = icmp sgt i32 %6182, 0
  %6244 = and i1 %6243, %6242
  br i1 %6244, label %6245, label %6282

; <label>:6245                                    ; preds = %6239
  br label %6246

; <label>:6246                                    ; preds = %6275, %6245
  %6247 = phi float [ %6276, %6275 ], [ %6104, %6245 ]
  %6248 = phi float [ %6277, %6275 ], [ %6105, %6245 ]
  %6249 = phi float [ %6257, %6275 ], [ %6241, %6245 ]
  %6250 = phi i32 [ %6254, %6275 ], [ %6199, %6245 ]
  %6251 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %6250
  %6252 = load float, float* %6251, align 4, !tbaa !112, !noalias !126
  %6253 = icmp slt i32 %6250, 2
  %6254 = add nsw i32 %6250, 1
  %6255 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %6254
  %6256 = load float, float* %6255, align 4, !tbaa !112, !noalias !126
  %6257 = select i1 %6253, float %6256, float %6020
  %6258 = call float @dx.op.binary.f32(i32 36, float %6257, float %6252)  ; FMin(a,b)
  %6259 = call float @dx.op.binary.f32(i32 36, float %6106, float %6258)  ; FMin(a,b)
  %6260 = icmp eq i32 %5970, 0
  %6261 = fadd fast float %6259, %6249
  %6262 = fmul fast float %6261, %5951
  %6263 = fadd fast float %6262, %5964
  br i1 %6260, label %6269, label %6264

; <label>:6264                                    ; preds = %6246
  %6265 = fsub fast float %6259, %6249
  %6266 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6265)  ; FMax(a,b)
  %6267 = fmul fast float %6266, %6263
  %6268 = fadd fast float %6267, %6248
  br label %6275

; <label>:6269                                    ; preds = %6246
  %6270 = fsub fast float %6249, %6259
  %6271 = call float @dx.op.unary.f32(i32 6, float %6270)  ; FAbs(value)
  %6272 = fadd fast float %6271, %6247
  %6273 = fmul fast float %6271, %6263
  %6274 = fsub fast float %6248, %6273
  br label %6275

; <label>:6275                                    ; preds = %6269, %6264
  %6276 = phi float [ %6266, %6264 ], [ %6272, %6269 ]
  %6277 = phi float [ %6268, %6264 ], [ %6274, %6269 ]
  %6278 = fcmp fast olt float %6257, %6106
  %6279 = icmp slt i32 %6254, 3
  %6280 = and i1 %6279, %6278
  br i1 %6280, label %6246, label %6281

; <label>:6281                                    ; preds = %6275
  br label %6282

; <label>:6282                                    ; preds = %6281, %6239
  %6283 = phi float [ %6104, %6239 ], [ %6276, %6281 ]
  %6284 = phi float [ %6105, %6239 ], [ %6277, %6281 ]
  %6285 = fsub fast float %6020, %6283
  %6286 = select i1 %6022, float %6283, float %6285
  %6287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6288 = extractvalue %dx.types.CBufRet.f32 %6287, 0
  %6289 = extractvalue %dx.types.CBufRet.f32 %6287, 1
  %6290 = extractvalue %dx.types.CBufRet.f32 %6287, 2
  %6291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6292 = extractvalue %dx.types.CBufRet.f32 %6291, 0
  %6293 = extractvalue %dx.types.CBufRet.f32 %6291, 1
  %6294 = extractvalue %dx.types.CBufRet.f32 %6291, 2
  %6295 = extractvalue %dx.types.CBufRet.f32 %6291, 3
  %6296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6297 = extractvalue %dx.types.CBufRet.f32 %6296, 3
  %6298 = call float @dx.op.binary.f32(i32 36, float %6284, float %6297)  ; FMin(a,b)
  %6299 = fmul fast float %6295, %6286
  %6300 = call float @dx.op.unary.f32(i32 7, float %6299)  ; Saturate(value)
  %6301 = fsub fast float %6292, %6288
  %6302 = fsub fast float %6293, %6289
  %6303 = fsub fast float %6294, %6290
  %6304 = fmul fast float %6300, %6301
  %6305 = fmul fast float %6300, %6302
  %6306 = fmul fast float %6300, %6303
  %6307 = fadd fast float %6304, %6288
  %6308 = fadd fast float %6305, %6289
  %6309 = fadd fast float %6306, %6290
  %6310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6311 = extractvalue %dx.types.CBufRet.f32 %6310, 0
  %6312 = extractvalue %dx.types.CBufRet.f32 %6310, 1
  %6313 = fadd fast float %6312, %6311
  %6314 = call float @dx.op.unary.f32(i32 7, float %6313)  ; Saturate(value)
  %6315 = extractvalue %dx.types.CBufRet.f32 %6310, 2
  %6316 = extractvalue %dx.types.CBufRet.f32 %6310, 3
  %6317 = fadd fast float %6316, %6315
  %6318 = call float @dx.op.unary.f32(i32 7, float %6317)  ; Saturate(value)
  %6319 = fmul fast float %6314, %6298
  %6320 = fmul fast float %6319, %6318
  br label %6321

; <label>:6321                                    ; preds = %6282, %6201, %6036, %6018, %6016
  %6322 = phi float [ %6045, %6036 ], [ %6204, %6201 ], [ %6286, %6282 ], [ 0.000000e+00, %6016 ], [ 0.000000e+00, %6018 ]
  %6323 = phi float [ %6079, %6036 ], [ %6238, %6201 ], [ %6320, %6282 ], [ 0.000000e+00, %6016 ], [ 0.000000e+00, %6018 ]
  %6324 = phi float [ %6066, %6036 ], [ %6225, %6201 ], [ %6307, %6282 ], [ 0.000000e+00, %6016 ], [ 0.000000e+00, %6018 ]
  %6325 = phi float [ %6067, %6036 ], [ %6226, %6201 ], [ %6308, %6282 ], [ 0.000000e+00, %6016 ], [ 0.000000e+00, %6018 ]
  %6326 = phi float [ %6068, %6036 ], [ %6227, %6201 ], [ %6309, %6282 ], [ 0.000000e+00, %6016 ], [ 0.000000e+00, %6018 ]
  %6327 = fmul fast float %5959, %6323
  %6328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6329 = extractvalue %dx.types.CBufRet.f32 %6328, 2
  %6330 = fsub fast float %5966, %6329
  %6331 = fcmp fast olt float %6327, -2.000000e+01
  %6332 = call float @dx.op.unary.f32(i32 21, float %6327)  ; Exp(value)
  %6333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6334 = extractvalue %dx.types.CBufRet.f32 %6333, 2
  %6335 = extractvalue %dx.types.CBufRet.f32 %6333, 3
  %6336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.f32 %6336, 2
  %6338 = fmul fast float %6335, %6330
  %6339 = call float @dx.op.unary.f32(i32 7, float %6338)  ; Saturate(value)
  %6340 = fsub fast float 1.000000e+00, %6339
  %6341 = fmul fast float %5951, 5.000000e-01
  %6342 = fadd fast float %6341, 5.000000e-01
  %6343 = call float @dx.op.unary.f32(i32 7, float %6342)  ; Saturate(value)
  %6344 = fsub fast float 1.000000e+00, %6343
  %6345 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6340)  ; FMax(a,b)
  %6346 = fdiv fast float %6344, %6345
  %6347 = fsub fast float %6330, %5908
  %6348 = call float @dx.op.unary.f32(i32 6, float %6347)  ; FAbs(value)
  %6349 = fmul fast float %6348, %6334
  %6350 = call float @dx.op.unary.f32(i32 7, float %6346)  ; Saturate(value)
  %6351 = fsub fast float 1.000000e+00, %6349
  %6352 = fmul fast float %6351, %6350
  %6353 = fadd fast float %6352, %6349
  %6354 = fmul fast float %6337, %6330
  %6355 = call float @dx.op.unary.f32(i32 7, float %6354)  ; Saturate(value)
  %6356 = fsub fast float 1.000000e+00, %6353
  %6357 = fmul fast float %6356, %6355
  %6358 = fadd fast float %6357, %6353
  %6359 = call float @dx.op.unary.f32(i32 7, float %6358)  ; Saturate(value)
  %6360 = fadd fast float %6332, -1.000000e+00
  %6361 = select i1 %6331, float -1.000000e+00, float %6360
  %6362 = fmul fast float %6359, %6361
  %6363 = fadd fast float %6362, 1.000000e+00
  %6364 = fsub fast float -0.000000e+00, %6362
  %6365 = fmul fast float %6324, %6364
  %6366 = fmul fast float %6325, %6364
  %6367 = fmul fast float %6326, %6364
  br label %6368

; <label>:6368                                    ; preds = %6321, %5917
  %6369 = phi float [ %6322, %6321 ], [ 0.000000e+00, %5917 ]
  %6370 = phi float [ %6363, %6321 ], [ 1.000000e+00, %5917 ]
  %6371 = phi float [ %6365, %6321 ], [ 0.000000e+00, %5917 ]
  %6372 = phi float [ %6366, %6321 ], [ 0.000000e+00, %5917 ]
  %6373 = phi float [ %6367, %6321 ], [ 0.000000e+00, %5917 ]
  %6374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6375 = extractvalue %dx.types.CBufRet.f32 %6374, 1
  %6376 = fsub fast float 1.000000e+00, %6370
  %6377 = fmul fast float %6376, %5952
  %6378 = fmul fast float %6377, %6375
  %6379 = fsub fast float %5952, %6378
  br i1 %5945, label %6380, label %6409, !dx.controlflow.hints !162

; <label>:6380                                    ; preds = %6368
  %6381 = fmul fast float %5953, %5942
  %6382 = fadd fast float %6381, %5943
  %6383 = call float @dx.op.unary.f32(i32 7, float %6382)  ; Saturate(value)
  %6384 = fmul fast float %5924, %6379
  %6385 = fsub fast float -0.000000e+00, %6384
  %6386 = fmul fast float %5925, %6379
  %6387 = fsub fast float -0.000000e+00, %6386
  %6388 = call float @dx.op.unary.f32(i32 21, float %6385)  ; Exp(value)
  %6389 = call float @dx.op.unary.f32(i32 21, float %6387)  ; Exp(value)
  %6390 = call float @dx.op.binary.f32(i32 35, float %5932, float %6388)  ; FMax(a,b)
  %6391 = call float @dx.op.binary.f32(i32 35, float %5932, float %6389)  ; FMax(a,b)
  %6392 = fsub fast float %6391, %6390
  %6393 = fmul fast float %6392, %6383
  %6394 = fadd fast float %6393, %6390
  %6395 = call float @dx.op.unary.f32(i32 7, float %6394)  ; Saturate(value)
  %6396 = fsub fast float %5929, %5934
  %6397 = fsub fast float %5930, %5935
  %6398 = fsub fast float %5931, %5936
  %6399 = fmul fast float %6383, %6396
  %6400 = fmul fast float %6383, %6397
  %6401 = fmul fast float %6383, %6398
  %6402 = fadd fast float %6399, %5934
  %6403 = fadd fast float %6400, %5935
  %6404 = fadd fast float %6401, %5936
  %6405 = fsub fast float 1.000000e+00, %6395
  %6406 = fmul fast float %6405, %6402
  %6407 = fmul fast float %6405, %6403
  %6408 = fmul fast float %6405, %6404
  br label %6468

; <label>:6409                                    ; preds = %6368
  %6410 = fmul fast float %6379, %5941
  %6411 = call float @dx.op.unary.f32(i32 7, float %6410)  ; Saturate(value)
  %6412 = fsub fast float 2.000000e+00, %6411
  %6413 = fmul fast float %6411, 9.921875e-01
  %6414 = fmul fast float %6413, %6412
  %6415 = fadd fast float %6414, 3.906250e-03
  %6416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %6415, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6417 = extractvalue %dx.types.ResRet.f32 %6416, 0
  %6418 = fsub fast float %6411, %6417
  %6419 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6418)  ; FMax(a,b)
  %6420 = fmul fast float %5927, %5908
  %6421 = call float @dx.op.unary.f32(i32 6, float %6420)  ; FAbs(value)
  %6422 = fcmp fast ogt float %6421, 0x3EB0C6F7A0000000
  br i1 %6422, label %6423, label %6429, !dx.controlflow.hints !163

; <label>:6423                                    ; preds = %6409
  %6424 = fmul fast float %6420, 0xBFF7154760000000
  %6425 = call float @dx.op.unary.f32(i32 21, float %6424)  ; Exp(value)
  %6426 = fsub fast float 1.000000e+00, %6425
  %6427 = fdiv fast float %6426, %6420
  %6428 = fmul fast float %6427, %5937
  br label %6429

; <label>:6429                                    ; preds = %6423, %6409
  %6430 = phi float [ %6428, %6423 ], [ %5937, %6409 ]
  %6431 = fadd fast float %6430, %5939
  %6432 = fmul fast float %6431, %6419
  %6433 = fmul fast float %5924, %6432
  %6434 = fsub fast float -0.000000e+00, %6433
  %6435 = fmul fast float %5925, %6432
  %6436 = fsub fast float -0.000000e+00, %6435
  %6437 = fmul fast float %5926, %6432
  %6438 = fsub fast float -0.000000e+00, %6437
  %6439 = call float @dx.op.unary.f32(i32 21, float %6434)  ; Exp(value)
  %6440 = call float @dx.op.unary.f32(i32 21, float %6436)  ; Exp(value)
  %6441 = call float @dx.op.unary.f32(i32 21, float %6438)  ; Exp(value)
  %6442 = fmul fast float %5953, %5953
  %6443 = fadd fast float %6442, 1.000000e+00
  %6444 = fmul fast float %6443, 0x3FAE8EC8A0000000
  %6445 = fmul fast float %6444, %5934
  %6446 = fmul fast float %6444, %5935
  %6447 = fmul fast float %6444, %5936
  %6448 = fmul fast float %5953, %5932
  %6449 = fsub fast float 1.000000e+00, %6448
  %6450 = fmul fast float %5932, %5932
  %6451 = fsub fast float 1.000000e+00, %6450
  %6452 = fmul fast float %6451, 0x3FB45F3060000000
  %6453 = fmul fast float %6449, %6449
  %6454 = fdiv fast float 1.000000e+00, %6453
  %6455 = fmul fast float %6452, %6454
  %6456 = fmul fast float %6455, %5929
  %6457 = fmul fast float %6455, %5930
  %6458 = fmul fast float %6455, %5931
  %6459 = fadd fast float %6456, %6445
  %6460 = fadd fast float %6457, %6446
  %6461 = fadd fast float %6458, %6447
  %6462 = fsub fast float 1.000000e+00, %6439
  %6463 = fsub fast float 1.000000e+00, %6440
  %6464 = fsub fast float 1.000000e+00, %6441
  %6465 = fmul fast float %6459, %6462
  %6466 = fmul fast float %6460, %6463
  %6467 = fmul fast float %6461, %6464
  br label %6468

; <label>:6468                                    ; preds = %6429, %6380
  %6469 = phi float [ %6406, %6380 ], [ %6465, %6429 ]
  %6470 = phi float [ %6407, %6380 ], [ %6466, %6429 ]
  %6471 = phi float [ %6408, %6380 ], [ %6467, %6429 ]
  %6472 = phi float [ %6395, %6380 ], [ %6439, %6429 ]
  %6473 = phi float [ %6395, %6380 ], [ %6440, %6429 ]
  %6474 = phi float [ %6395, %6380 ], [ %6441, %6429 ]
  br i1 %5961, label %6475, label %6673, !dx.controlflow.hints !164

; <label>:6475                                    ; preds = %6468
  %6476 = extractvalue %dx.types.CBufRet.f32 %6374, 0
  %6477 = fmul fast float %6476, %6376
  %6478 = fsub fast float %6371, %6469
  %6479 = fsub fast float %6372, %6470
  %6480 = fsub fast float %6373, %6471
  %6481 = fmul fast float %6477, %6478
  %6482 = fmul fast float %6477, %6479
  %6483 = fmul fast float %6477, %6480
  %6484 = fadd fast float %6481, %6469
  %6485 = fadd fast float %6482, %6470
  %6486 = fadd fast float %6483, %6471
  %6487 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6472)  ; FMax(a,b)
  %6488 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6473)  ; FMax(a,b)
  %6489 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6474)  ; FMax(a,b)
  %6490 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6370)  ; FMax(a,b)
  %6491 = call float @dx.op.binary.f32(i32 35, float %6369, float %6379)  ; FMax(a,b)
  %6492 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6491)  ; FMax(a,b)
  %6493 = fdiv fast float %6369, %6492
  %6494 = call float @dx.op.unary.f32(i32 7, float %6493)  ; Saturate(value)
  %6495 = fdiv fast float %6379, %6492
  %6496 = call float @dx.op.unary.f32(i32 7, float %6495)  ; Saturate(value)
  %6497 = fcmp fast une float %6490, 1.000000e+00
  br i1 %6497, label %6498, label %6511, !dx.controlflow.hints !165

; <label>:6498                                    ; preds = %6475
  %6499 = call float @dx.op.unary.f32(i32 23, float %6490)  ; Log(value)
  %6500 = fmul fast float %6499, 0x3FE62E4300000000
  %6501 = fmul fast float %6371, %6500
  %6502 = fsub fast float -0.000000e+00, %6501
  %6503 = fmul fast float %6372, %6500
  %6504 = fsub fast float -0.000000e+00, %6503
  %6505 = fmul fast float %6373, %6500
  %6506 = fsub fast float -0.000000e+00, %6505
  %6507 = fsub fast float 1.000000e+00, %6490
  %6508 = fdiv fast float %6502, %6507
  %6509 = fdiv fast float %6504, %6507
  %6510 = fdiv fast float %6506, %6507
  br label %6511

; <label>:6511                                    ; preds = %6498, %6475
  %6512 = phi float [ %6508, %6498 ], [ %6371, %6475 ]
  %6513 = phi float [ %6509, %6498 ], [ %6372, %6475 ]
  %6514 = phi float [ %6510, %6498 ], [ %6373, %6475 ]
  %6515 = phi float [ %6500, %6498 ], [ 0.000000e+00, %6475 ]
  %6516 = fcmp fast une float %6487, 1.000000e+00
  br i1 %6516, label %6517, label %6524, !dx.controlflow.hints !166

; <label>:6517                                    ; preds = %6511
  %6518 = call float @dx.op.unary.f32(i32 23, float %6487)  ; Log(value)
  %6519 = fmul fast float %6518, 0x3FE62E4300000000
  %6520 = fmul fast float %6484, %6519
  %6521 = fsub fast float -0.000000e+00, %6520
  %6522 = fsub fast float 1.000000e+00, %6487
  %6523 = fdiv fast float %6521, %6522
  br label %6524

; <label>:6524                                    ; preds = %6517, %6511
  %6525 = phi float [ %6523, %6517 ], [ %6484, %6511 ]
  %6526 = phi float [ %6519, %6517 ], [ 0.000000e+00, %6511 ]
  %6527 = fcmp fast une float %6488, 1.000000e+00
  br i1 %6527, label %6528, label %6535, !dx.controlflow.hints !166

; <label>:6528                                    ; preds = %6524
  %6529 = call float @dx.op.unary.f32(i32 23, float %6488)  ; Log(value)
  %6530 = fmul fast float %6529, 0x3FE62E4300000000
  %6531 = fmul fast float %6485, %6530
  %6532 = fsub fast float -0.000000e+00, %6531
  %6533 = fsub fast float 1.000000e+00, %6488
  %6534 = fdiv fast float %6532, %6533
  br label %6535

; <label>:6535                                    ; preds = %6528, %6524
  %6536 = phi float [ %6534, %6528 ], [ %6485, %6524 ]
  %6537 = phi float [ %6530, %6528 ], [ 0.000000e+00, %6524 ]
  %6538 = fcmp fast une float %6489, 1.000000e+00
  br i1 %6538, label %6539, label %6546, !dx.controlflow.hints !166

; <label>:6539                                    ; preds = %6535
  %6540 = call float @dx.op.unary.f32(i32 23, float %6489)  ; Log(value)
  %6541 = fmul fast float %6540, 0x3FE62E4300000000
  %6542 = fmul fast float %6486, %6541
  %6543 = fsub fast float -0.000000e+00, %6542
  %6544 = fsub fast float 1.000000e+00, %6489
  %6545 = fdiv fast float %6543, %6544
  br label %6546

; <label>:6546                                    ; preds = %6539, %6535
  %6547 = phi float [ %6545, %6539 ], [ %6486, %6535 ]
  %6548 = phi float [ %6541, %6539 ], [ 0.000000e+00, %6535 ]
  %6549 = fmul fast float %6512, %6496
  %6550 = fmul fast float %6513, %6496
  %6551 = fmul fast float %6514, %6496
  %6552 = fmul fast float %6515, %6496
  %6553 = fmul fast float %6525, %6494
  %6554 = fmul fast float %6536, %6494
  %6555 = fmul fast float %6547, %6494
  %6556 = fmul fast float %6526, %6494
  %6557 = fmul fast float %6537, %6494
  %6558 = fmul fast float %6548, %6494
  %6559 = fadd fast float %6553, %6549
  %6560 = fadd fast float %6554, %6550
  %6561 = fadd fast float %6555, %6551
  %6562 = fadd fast float %6556, %6552
  %6563 = fadd fast float %6557, %6552
  %6564 = fadd fast float %6558, %6552
  %6565 = fcmp fast une float %6562, 0.000000e+00
  br i1 %6565, label %6566, label %6573, !dx.controlflow.hints !167

; <label>:6566                                    ; preds = %6546
  %6567 = fmul fast float %6562, 0x3FF7154760000000
  %6568 = call float @dx.op.unary.f32(i32 21, float %6567)  ; Exp(value)
  %6569 = fsub fast float 1.000000e+00, %6568
  %6570 = fmul fast float %6559, %6569
  %6571 = fsub fast float -0.000000e+00, %6570
  %6572 = fdiv fast float %6571, %6562
  br label %6573

; <label>:6573                                    ; preds = %6566, %6546
  %6574 = phi float [ %6568, %6566 ], [ 1.000000e+00, %6546 ]
  %6575 = phi float [ %6572, %6566 ], [ %6559, %6546 ]
  %6576 = fcmp fast une float %6563, 0.000000e+00
  br i1 %6576, label %6577, label %6584, !dx.controlflow.hints !167

; <label>:6577                                    ; preds = %6573
  %6578 = fmul fast float %6563, 0x3FF7154760000000
  %6579 = call float @dx.op.unary.f32(i32 21, float %6578)  ; Exp(value)
  %6580 = fsub fast float 1.000000e+00, %6579
  %6581 = fmul fast float %6560, %6580
  %6582 = fsub fast float -0.000000e+00, %6581
  %6583 = fdiv fast float %6582, %6563
  br label %6584

; <label>:6584                                    ; preds = %6577, %6573
  %6585 = phi float [ %6579, %6577 ], [ 1.000000e+00, %6573 ]
  %6586 = phi float [ %6583, %6577 ], [ %6560, %6573 ]
  %6587 = fcmp fast une float %6564, 0.000000e+00
  br i1 %6587, label %6588, label %6595, !dx.controlflow.hints !167

; <label>:6588                                    ; preds = %6584
  %6589 = fmul fast float %6564, 0x3FF7154760000000
  %6590 = call float @dx.op.unary.f32(i32 21, float %6589)  ; Exp(value)
  %6591 = fsub fast float 1.000000e+00, %6590
  %6592 = fmul fast float %6561, %6591
  %6593 = fsub fast float -0.000000e+00, %6592
  %6594 = fdiv fast float %6593, %6564
  br label %6595

; <label>:6595                                    ; preds = %6588, %6584
  %6596 = phi float [ %6590, %6588 ], [ 1.000000e+00, %6584 ]
  %6597 = phi float [ %6594, %6588 ], [ %6561, %6584 ]
  %6598 = fcmp fast ogt float %6494, %6496
  br i1 %6598, label %6599, label %6619

; <label>:6599                                    ; preds = %6595
  %6600 = fsub fast float 1.000000e+00, %6496
  %6601 = fmul fast float %6512, %6600
  %6602 = fmul fast float %6513, %6600
  %6603 = fmul fast float %6514, %6600
  %6604 = fmul fast float %6515, %6600
  %6605 = fcmp fast une float %6604, 0.000000e+00
  br i1 %6605, label %6606, label %6657, !dx.controlflow.hints !168

; <label>:6606                                    ; preds = %6599
  %6607 = fmul fast float %6604, 0x3FF7154760000000
  %6608 = call float @dx.op.unary.f32(i32 21, float %6607)  ; Exp(value)
  %6609 = fsub fast float 1.000000e+00, %6608
  %6610 = fmul fast float %6601, %6609
  %6611 = fsub fast float -0.000000e+00, %6610
  %6612 = fmul fast float %6602, %6609
  %6613 = fsub fast float -0.000000e+00, %6612
  %6614 = fmul fast float %6603, %6609
  %6615 = fsub fast float -0.000000e+00, %6614
  %6616 = fdiv fast float %6611, %6604
  %6617 = fdiv fast float %6613, %6604
  %6618 = fdiv fast float %6615, %6604
  br label %6657

; <label>:6619                                    ; preds = %6595
  %6620 = fsub fast float 1.000000e+00, %6494
  %6621 = fmul fast float %6525, %6620
  %6622 = fmul fast float %6536, %6620
  %6623 = fmul fast float %6547, %6620
  %6624 = fmul fast float %6526, %6620
  %6625 = fmul fast float %6537, %6620
  %6626 = fmul fast float %6548, %6620
  %6627 = fcmp fast une float %6624, 0.000000e+00
  br i1 %6627, label %6628, label %6635, !dx.controlflow.hints !167

; <label>:6628                                    ; preds = %6619
  %6629 = fmul fast float %6624, 0x3FF7154760000000
  %6630 = call float @dx.op.unary.f32(i32 21, float %6629)  ; Exp(value)
  %6631 = fsub fast float 1.000000e+00, %6630
  %6632 = fmul fast float %6621, %6631
  %6633 = fsub fast float -0.000000e+00, %6632
  %6634 = fdiv fast float %6633, %6624
  br label %6635

; <label>:6635                                    ; preds = %6628, %6619
  %6636 = phi float [ %6634, %6628 ], [ %6621, %6619 ]
  %6637 = phi float [ %6630, %6628 ], [ 1.000000e+00, %6619 ]
  %6638 = fcmp fast une float %6625, 0.000000e+00
  br i1 %6638, label %6639, label %6646, !dx.controlflow.hints !167

; <label>:6639                                    ; preds = %6635
  %6640 = fmul fast float %6625, 0x3FF7154760000000
  %6641 = call float @dx.op.unary.f32(i32 21, float %6640)  ; Exp(value)
  %6642 = fsub fast float 1.000000e+00, %6641
  %6643 = fmul fast float %6622, %6642
  %6644 = fsub fast float -0.000000e+00, %6643
  %6645 = fdiv fast float %6644, %6625
  br label %6646

; <label>:6646                                    ; preds = %6639, %6635
  %6647 = phi float [ %6645, %6639 ], [ %6622, %6635 ]
  %6648 = phi float [ %6641, %6639 ], [ 1.000000e+00, %6635 ]
  %6649 = fcmp fast une float %6626, 0.000000e+00
  br i1 %6649, label %6650, label %6657, !dx.controlflow.hints !167

; <label>:6650                                    ; preds = %6646
  %6651 = fmul fast float %6626, 0x3FF7154760000000
  %6652 = call float @dx.op.unary.f32(i32 21, float %6651)  ; Exp(value)
  %6653 = fsub fast float 1.000000e+00, %6652
  %6654 = fmul fast float %6623, %6653
  %6655 = fsub fast float -0.000000e+00, %6654
  %6656 = fdiv fast float %6655, %6626
  br label %6657

; <label>:6657                                    ; preds = %6650, %6646, %6606, %6599
  %6658 = phi float [ %6656, %6650 ], [ %6618, %6606 ], [ %6603, %6599 ], [ %6623, %6646 ]
  %6659 = phi float [ %6647, %6650 ], [ %6617, %6606 ], [ %6602, %6599 ], [ %6647, %6646 ]
  %6660 = phi float [ %6636, %6650 ], [ %6616, %6606 ], [ %6601, %6599 ], [ %6636, %6646 ]
  %6661 = phi float [ %6652, %6650 ], [ %6608, %6606 ], [ 1.000000e+00, %6599 ], [ 1.000000e+00, %6646 ]
  %6662 = phi float [ %6648, %6650 ], [ %6608, %6606 ], [ 1.000000e+00, %6599 ], [ %6648, %6646 ]
  %6663 = phi float [ %6637, %6650 ], [ %6608, %6606 ], [ 1.000000e+00, %6599 ], [ %6637, %6646 ]
  %6664 = fmul fast float %6663, %6575
  %6665 = fmul fast float %6662, %6586
  %6666 = fmul fast float %6661, %6597
  %6667 = fadd fast float %6664, %6660
  %6668 = fadd fast float %6665, %6659
  %6669 = fadd fast float %6666, %6658
  %6670 = fmul fast float %6663, %6574
  %6671 = fmul fast float %6662, %6585
  %6672 = fmul fast float %6661, %6596
  br label %6673

; <label>:6673                                    ; preds = %6657, %6468
  %6674 = phi float [ %6672, %6657 ], [ %6474, %6468 ]
  %6675 = phi float [ %6671, %6657 ], [ %6473, %6468 ]
  %6676 = phi float [ %6670, %6657 ], [ %6472, %6468 ]
  %6677 = phi float [ %6669, %6657 ], [ %6471, %6468 ]
  %6678 = phi float [ %6668, %6657 ], [ %6470, %6468 ]
  %6679 = phi float [ %6667, %6657 ], [ %6469, %6468 ]
  %6680 = fmul fast float %6679, %5623
  %6681 = fmul fast float %6678, %5623
  %6682 = fmul fast float %6677, %5623
  %6683 = fmul fast float %6676, %5916
  %6684 = call float @dx.op.dot3.f32(i32 55, float %6676, float %6675, float %6674, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6685 = call float @dx.op.dot3.f32(i32 55, float %6680, float %6681, float %6682, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6686 = select i1 %204, float %6684, float %6676
  %6687 = select i1 %204, float %6684, float %6675
  %6688 = select i1 %204, float 1.000000e+00, float %6674
  %6689 = select i1 %204, float %6685, float %6680
  %6690 = select i1 %204, float 0.000000e+00, float %6681
  %6691 = select i1 %204, float 0.000000e+00, float %6682
  %6692 = fmul fast float %6686, %5910
  %6693 = fmul fast float %6687, %5911
  %6694 = fmul fast float %6688, %5912
  %6695 = fadd fast float %6692, %6689
  %6696 = fadd fast float %6693, %6690
  %6697 = fadd fast float %6691, %6694
  %6698 = fmul fast float %6686, %5913
  %6699 = fmul fast float %6687, %5914
  %6700 = fmul fast float %6688, %5915
  %6701 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6702 = extractvalue %dx.types.CBufRet.i32 %6701, 0
  %6703 = icmp eq i32 %6702, 0
  br i1 %6703, label %7071, label %6704, !dx.controlflow.hints !169

; <label>:6704                                    ; preds = %6673
  %6705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6706 = extractvalue %dx.types.CBufRet.f32 %6705, 2
  %6707 = extractvalue %dx.types.CBufRet.f32 %6705, 3
  %6708 = fmul fast float %6706, %94
  %6709 = fmul fast float %6707, %95
  %6710 = fmul fast float %6708, 2.000000e+00
  %6711 = fmul fast float %6709, 2.000000e+00
  %6712 = fsub fast float 1.000000e+00, %6710
  %6713 = fsub fast float 1.000000e+00, %6711
  %6714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6715 = extractvalue %dx.types.CBufRet.f32 %6714, 0
  %6716 = extractvalue %dx.types.CBufRet.f32 %6714, 1
  %6717 = extractvalue %dx.types.CBufRet.f32 %6714, 2
  %6718 = fmul fast float %6712, %6715
  %6719 = fmul fast float %6712, %6716
  %6720 = fmul fast float %6712, %6717
  %6721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6722 = extractvalue %dx.types.CBufRet.f32 %6721, 0
  %6723 = extractvalue %dx.types.CBufRet.f32 %6721, 1
  %6724 = extractvalue %dx.types.CBufRet.f32 %6721, 2
  %6725 = fmul fast float %6713, %6722
  %6726 = fmul fast float %6713, %6723
  %6727 = fmul fast float %6713, %6724
  %6728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6729 = extractvalue %dx.types.CBufRet.f32 %6728, 0
  %6730 = extractvalue %dx.types.CBufRet.f32 %6728, 1
  %6731 = extractvalue %dx.types.CBufRet.f32 %6728, 2
  %6732 = fadd fast float %6725, %6729
  %6733 = fadd fast float %6732, %6718
  %6734 = fadd fast float %6726, %6730
  %6735 = fadd fast float %6734, %6719
  %6736 = fadd fast float %6727, %6731
  %6737 = fadd fast float %6736, %6720
  %6738 = fmul fast float %6733, %5909
  %6739 = fmul fast float %6735, %5909
  %6740 = fmul fast float %6737, %5909
  %6741 = fmul fast float %6738, %6738
  %6742 = fmul fast float %6739, %6739
  %6743 = fadd fast float %6741, %6742
  %6744 = fmul fast float %6740, %6740
  %6745 = fadd fast float %6743, %6744
  %6746 = call float @dx.op.unary.f32(i32 24, float %6745)  ; Sqrt(value)
  %6747 = extractvalue %dx.types.CBufRet.f32 %5634, 0
  %6748 = fsub fast float %6746, %6747
  %6749 = extractvalue %dx.types.CBufRet.f32 %5634, 2
  %6750 = fmul fast float %6748, %6749
  %6751 = call float @dx.op.unary.f32(i32 7, float %6750)  ; Saturate(value)
  %6752 = fadd fast float %6751, -5.000000e-01
  %6753 = fmul fast float %6752, 2.000000e+00
  %6754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6755 = extractvalue %dx.types.CBufRet.f32 %6754, 2
  %6756 = call float @dx.op.binary.f32(i32 36, float %6755, float %6753)  ; FMin(a,b)
  %6757 = fsub fast float -0.000000e+00, %6755
  %6758 = fcmp fast ogt float %6756, %6757
  br i1 %6758, label %6759, label %7071, !dx.controlflow.hints !170

; <label>:6759                                    ; preds = %6704
  %6760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6761 = extractvalue %dx.types.CBufRet.f32 %6760, 3
  %6762 = fcmp fast ogt float %6761, 0.000000e+00
  br i1 %6762, label %6763, label %6838, !dx.controlflow.hints !171

; <label>:6763                                    ; preds = %6759
  %6764 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %6765 = extractvalue %dx.types.Dimensions %6764, 0
  %6766 = sitofp i32 %6765 to float
  %6767 = extractvalue %dx.types.Dimensions %6764, 1
  %6768 = sitofp i32 %6767 to float
  %6769 = fmul fast float %6708, %6766
  %6770 = fmul fast float %6709, %6768
  %6771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6772 = extractvalue %dx.types.CBufRet.f32 %6771, 1
  %6773 = fsub fast float -0.000000e+00, %6772
  %6774 = fptoui float %6773 to i32
  %6775 = fptoui float %6769 to i32
  %6776 = fptoui float %6770 to i32
  %6777 = and i32 %6774, 31
  %6778 = lshr i32 %6775, %6777
  %6779 = lshr i32 %6776, %6777
  %6780 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %6774, i32 %6778, i32 %6779, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6781 = extractvalue %dx.types.ResRet.f32 %6780, 0
  %6782 = fcmp fast olt float %6781, -1.000000e+00
  %6783 = fcmp fast ogt float %6781, -1.000000e+00
  %6784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6785 = extractvalue %dx.types.CBufRet.f32 %6784, 1
  %6786 = select i1 %6783, float %6785, float 1.000000e+00
  %6787 = fadd fast float %6781, 1.000000e+00
  %6788 = fmul fast float %6786, %6787
  %6789 = call float @dx.op.unary.f32(i32 6, float %6788)  ; FAbs(value)
  %6790 = extractvalue %dx.types.CBufRet.f32 %6784, 3
  %6791 = fcmp fast oge float %6789, %6790
  %6792 = select i1 %6791, float 0x4197782600000000, float %6789
  %6793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6794 = extractvalue %dx.types.CBufRet.f32 %6793, 0
  %6795 = extractvalue %dx.types.CBufRet.f32 %6793, 1
  %6796 = extractvalue %dx.types.CBufRet.f32 %6793, 2
  %6797 = select i1 %6782, float %6794, float %6715
  %6798 = select i1 %6782, float %6795, float %6716
  %6799 = select i1 %6782, float %6796, float %6717
  %6800 = fmul fast float %6797, %6712
  %6801 = fmul fast float %6798, %6712
  %6802 = fmul fast float %6799, %6712
  %6803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6804 = extractvalue %dx.types.CBufRet.f32 %6803, 0
  %6805 = extractvalue %dx.types.CBufRet.f32 %6803, 1
  %6806 = extractvalue %dx.types.CBufRet.f32 %6803, 2
  %6807 = select i1 %6782, float %6804, float %6722
  %6808 = select i1 %6782, float %6805, float %6723
  %6809 = select i1 %6782, float %6806, float %6724
  %6810 = fmul fast float %6807, %6713
  %6811 = fmul fast float %6808, %6713
  %6812 = fmul fast float %6809, %6713
  %6813 = fadd fast float %6810, %6800
  %6814 = fadd fast float %6811, %6801
  %6815 = fadd fast float %6812, %6802
  %6816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6817 = extractvalue %dx.types.CBufRet.f32 %6816, 0
  %6818 = extractvalue %dx.types.CBufRet.f32 %6816, 1
  %6819 = extractvalue %dx.types.CBufRet.f32 %6816, 2
  %6820 = select i1 %6782, float %6817, float %6729
  %6821 = select i1 %6782, float %6818, float %6730
  %6822 = select i1 %6782, float %6819, float %6731
  %6823 = fadd fast float %6813, %6820
  %6824 = fadd fast float %6814, %6821
  %6825 = fadd fast float %6815, %6822
  %6826 = fmul fast float %6823, %6792
  %6827 = fmul fast float %6824, %6792
  %6828 = fmul fast float %6825, %6792
  %6829 = fmul fast float %6826, %6826
  %6830 = fmul fast float %6827, %6827
  %6831 = fadd fast float %6829, %6830
  %6832 = fmul fast float %6828, %6828
  %6833 = fadd fast float %6831, %6832
  %6834 = call float @dx.op.unary.f32(i32 24, float %6833)  ; Sqrt(value)
  %6835 = fsub fast float %6834, %6747
  %6836 = fmul fast float %6835, %6749
  %6837 = call float @dx.op.unary.f32(i32 7, float %6836)  ; Saturate(value)
  br label %6838

; <label>:6838                                    ; preds = %6763, %6759
  %6839 = phi float [ %6837, %6763 ], [ 1.000000e+00, %6759 ]
  %6840 = fmul fast float %6756, 5.000000e-01
  %6841 = fadd fast float %6840, 5.000000e-01
  %6842 = call float @dx.op.unary.f32(i32 22, float %6841)  ; Frc(value)
  %6843 = call float @dx.op.unary.f32(i32 27, float %6842)  ; Round_ni(value)
  %6844 = call float @dx.op.unary.f32(i32 22, float %6842)  ; Frc(value)
  %6845 = fmul fast float %6844, 2.000000e+00
  %6846 = fadd fast float %6845, -1.000000e+00
  %6847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %6708, float %6709, float %6843, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6848 = extractvalue %dx.types.ResRet.f32 %6847, 0
  %6849 = extractvalue %dx.types.ResRet.f32 %6847, 1
  %6850 = extractvalue %dx.types.ResRet.f32 %6847, 2
  %6851 = extractvalue %dx.types.ResRet.f32 %6847, 3
  %6852 = fadd fast float %6848, -5.000000e-01
  %6853 = fadd fast float %6850, -5.000000e-01
  %6854 = fmul fast float %6852, 0xBFD5555560000000
  %6855 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6853, float %6854)  ; FMad(a,b,c)
  %6856 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6849, float 0.000000e+00)  ; FMad(a,b,c)
  %6857 = fadd fast float %6856, %6851
  %6858 = fmul fast float %6852, -7.500000e-01
  %6859 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6853, float %6858)  ; FMad(a,b,c)
  %6860 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6849, float 0.000000e+00)  ; FMad(a,b,c)
  %6861 = fadd fast float %6860, %6851
  %6862 = call float @dx.op.binary.f32(i32 35, float %6855, float -1.000000e+00)  ; FMax(a,b)
  %6863 = call float @dx.op.binary.f32(i32 35, float %6857, float -1.000000e+00)  ; FMax(a,b)
  %6864 = call float @dx.op.binary.f32(i32 35, float %6859, float -1.000000e+00)  ; FMax(a,b)
  %6865 = call float @dx.op.binary.f32(i32 35, float %6861, float -1.000000e+00)  ; FMax(a,b)
  %6866 = call float @dx.op.binary.f32(i32 36, float %6862, float 1.000000e+00)  ; FMin(a,b)
  %6867 = call float @dx.op.binary.f32(i32 36, float %6863, float 1.000000e+00)  ; FMin(a,b)
  %6868 = call float @dx.op.binary.f32(i32 36, float %6864, float 1.000000e+00)  ; FMin(a,b)
  %6869 = call float @dx.op.binary.f32(i32 36, float %6865, float 1.000000e+00)  ; FMin(a,b)
  %6870 = fcmp fast olt float %6866, 0x3FEFFF8020000000
  br i1 %6870, label %6871, label %6986, !dx.controlflow.hints !172

; <label>:6871                                    ; preds = %6838
  %6872 = extractvalue %dx.types.CBufRet.f32 %6754, 3
  %6873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6874 = extractvalue %dx.types.CBufRet.f32 %6873, 0
  %6875 = extractvalue %dx.types.CBufRet.f32 %6873, 1
  %6876 = extractvalue %dx.types.CBufRet.f32 %6873, 2
  %6877 = extractvalue %dx.types.CBufRet.f32 %6873, 3
  %6878 = fsub fast float %6874, %6866
  %6879 = fsub fast float %6875, %6867
  %6880 = fsub fast float %6876, %6868
  %6881 = fsub fast float %6877, %6869
  %6882 = fmul fast float %6878, %6872
  %6883 = fmul fast float %6879, %6872
  %6884 = fmul fast float %6880, %6872
  %6885 = fmul fast float %6881, %6872
  %6886 = fadd fast float %6882, %6866
  %6887 = fadd fast float %6883, %6867
  %6888 = fsub fast float -0.000000e+00, %6887
  %6889 = fadd fast float %6884, %6868
  %6890 = fadd fast float %6885, %6869
  %6891 = fmul fast float %6886, %6886
  %6892 = fsub fast float %6887, %6891
  %6893 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6892)  ; FMax(a,b)
  %6894 = fdiv fast float 1.000000e+00, %6893
  %6895 = fmul fast float %6887, %6886
  %6896 = fsub fast float %6889, %6895
  %6897 = fsub fast float %6846, %6886
  %6898 = fmul fast float %6846, %6846
  %6899 = fsub fast float %6898, %6887
  %6900 = fmul fast float %6897, %6894
  %6901 = fmul fast float %6900, %6896
  %6902 = fsub fast float %6899, %6901
  %6903 = fmul fast float %6887, %6887
  %6904 = fsub fast float %6890, %6903
  %6905 = fmul fast float %6896, %6896
  %6906 = fmul fast float %6905, %6894
  %6907 = fsub fast float %6904, %6906
  %6908 = fdiv fast float %6902, %6907
  %6909 = fmul fast float %6896, %6908
  %6910 = fsub fast float %6897, %6909
  %6911 = fmul fast float %6910, %6894
  %6912 = fmul fast float %6911, %6886
  %6913 = fsub fast float 1.000000e+00, %6912
  %6914 = fmul fast float %6887, %6908
  %6915 = fsub fast float %6913, %6914
  %6916 = fmul fast float %6911, %6911
  %6917 = fmul fast float %6908, 4.000000e+00
  %6918 = fmul fast float %6917, %6915
  %6919 = fsub fast float %6916, %6918
  %6920 = call float @dx.op.unary.f32(i32 24, float %6919)  ; Sqrt(value)
  %6921 = fcmp fast oge float %6911, 0.000000e+00
  %6922 = fsub fast float -0.000000e+00, %6920
  %6923 = select i1 %6921, float %6922, float %6920
  %6924 = fsub fast float %6923, %6911
  %6925 = fdiv fast float %6924, %6908
  %6926 = fdiv fast float %6915, %6924
  %6927 = fmul fast float %6925, 5.000000e-01
  %6928 = fmul fast float %6926, 2.000000e+00
  %6929 = select i1 %6921, float %6927, float %6928
  %6930 = select i1 %6921, float %6928, float %6927
  %6931 = call float @dx.op.binary.f32(i32 35, float %6929, float %6930)  ; FMax(a,b)
  %6932 = call float @dx.op.binary.f32(i32 36, float %6929, float %6930)  ; FMin(a,b)
  %6933 = fcmp fast ogt float %6846, %6932
  br i1 %6933, label %6934, label %6944

; <label>:6934                                    ; preds = %6871
  %6935 = fsub fast float %6846, %6932
  %6936 = fsub fast float %6931, %6932
  %6937 = fmul fast float %6935, %6936
  %6938 = fmul fast float %6931, %6846
  %6939 = fadd fast float %6931, %6846
  %6940 = fmul fast float %6939, %6886
  %6941 = fadd fast float %6938, %6887
  %6942 = fsub fast float %6941, %6940
  %6943 = fdiv fast float %6942, %6937
  br label %6944

; <label>:6944                                    ; preds = %6934, %6871
  %6945 = phi float [ %6943, %6934 ], [ 0.000000e+00, %6871 ]
  %6946 = fcmp fast ogt float %6846, %6931
  %6947 = fsub fast float %6846, %6931
  br i1 %6946, label %6948, label %6958

; <label>:6948                                    ; preds = %6944
  %6949 = fsub fast float %6931, %6932
  %6950 = fmul fast float %6949, %6947
  %6951 = fmul fast float %6932, %6846
  %6952 = fadd fast float %6932, %6846
  %6953 = fmul fast float %6952, %6886
  %6954 = fsub fast float %6888, %6951
  %6955 = fadd fast float %6954, %6953
  %6956 = fdiv fast float %6955, %6950
  %6957 = fadd fast float %6956, %6945
  br label %6958

; <label>:6958                                    ; preds = %6948, %6944
  %6959 = phi float [ %6957, %6948 ], [ %6945, %6944 ]
  %6960 = fsub fast float %6846, %6932
  %6961 = fmul fast float %6960, %6947
  %6962 = fmul fast float %6932, %6931
  %6963 = fadd fast float %6932, %6931
  %6964 = fmul fast float %6963, %6886
  %6965 = fadd fast float %6962, %6887
  %6966 = fsub fast float %6965, %6964
  %6967 = fdiv fast float %6966, %6961
  %6968 = call float @dx.op.unary.f32(i32 7, float %6959)  ; Saturate(value)
  %6969 = fcmp fast oeq float %5635, 0.000000e+00
  %6970 = extractvalue %dx.types.CBufRet.f32 %6754, 0
  %6971 = fcmp fast oeq float %6970, 0.000000e+00
  %6972 = or i1 %6969, %6971
  %6973 = fmul fast float %6970, 2.000000e+00
  %6974 = fadd fast float %6755, %6756
  %6975 = fdiv fast float %6974, %6973
  %6976 = call float @dx.op.unary.f32(i32 7, float %6975)  ; Saturate(value)
  %6977 = fmul fast float %6976, 2.000000e+00
  %6978 = fsub fast float 3.000000e+00, %6977
  %6979 = fmul fast float %6976, %6976
  %6980 = fmul fast float %6979, %6978
  %6981 = select i1 %6972, float 1.000000e+00, float %6980
  %6982 = fmul fast float %6967, %5635
  %6983 = fadd fast float %6968, %6982
  %6984 = call float @dx.op.unary.f32(i32 7, float %6983)  ; Saturate(value)
  %6985 = fmul fast float %6981, %6984
  br label %6986

; <label>:6986                                    ; preds = %6958, %6838
  %6987 = phi float [ %6985, %6958 ], [ 0.000000e+00, %6838 ]
  %6988 = fsub fast float 1.000000e+00, %6987
  %6989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %6708, float %6709, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6990 = extractvalue %dx.types.ResRet.f32 %6989, 0
  %6991 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %6992 = extractvalue %dx.types.CBufRet.i32 %6991, 2
  %6993 = icmp eq i32 %6992, 0
  br i1 %6993, label %6999, label %6994

; <label>:6994                                    ; preds = %6986
  %6995 = call float @dx.op.unary.f32(i32 7, float %6987)  ; Saturate(value)
  %6996 = fadd fast float %6990, -1.000000e+00
  %6997 = fmul fast float %6995, %6996
  %6998 = fadd fast float %6997, 1.000000e+00
  br label %6999

; <label>:6999                                    ; preds = %6994, %6986
  %7000 = phi float [ %6998, %6994 ], [ %6988, %6986 ]
  br i1 %6762, label %7001, label %7019

; <label>:7001                                    ; preds = %6999
  %7002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7003 = extractvalue %dx.types.CBufRet.f32 %7002, 1
  %7004 = fsub fast float %6839, %7003
  %7005 = call float @dx.op.unary.f32(i32 7, float %7004)  ; Saturate(value)
  %7006 = fsub fast float %6839, %6761
  %7007 = call float @dx.op.unary.f32(i32 7, float %7006)  ; Saturate(value)
  %7008 = fsub fast float %7005, %7007
  %7009 = fsub fast float %6841, %7007
  %7010 = fdiv fast float %7009, %7008
  %7011 = call float @dx.op.unary.f32(i32 7, float %7010)  ; Saturate(value)
  %7012 = fmul fast float %7011, 2.000000e+00
  %7013 = fsub fast float 3.000000e+00, %7012
  %7014 = fsub fast float %6990, %7000
  %7015 = fmul fast float %7011, %7011
  %7016 = fmul fast float %7015, %7014
  %7017 = fmul fast float %7016, %7013
  %7018 = fadd fast float %7017, %7000
  br label %7019

; <label>:7019                                    ; preds = %7001, %6999
  %7020 = phi float [ %7018, %7001 ], [ %7000, %6999 ]
  %7021 = call float @dx.op.binary.f32(i32 35, float %6990, float %7020)  ; FMax(a,b)
  %7022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7023 = extractvalue %dx.types.CBufRet.i32 %7022, 2
  %7024 = and i32 %7023, 1
  %7025 = icmp eq i32 %7024, 0
  %7026 = fcmp fast une float %7021, 1.000000e+00
  %7027 = and i1 %7026, %7025
  br i1 %7027, label %7028, label %7047

; <label>:7028                                    ; preds = %7019
  %7029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %6708, float %6709, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7030 = extractvalue %dx.types.ResRet.f32 %7029, 0
  %7031 = extractvalue %dx.types.ResRet.f32 %7029, 1
  %7032 = extractvalue %dx.types.ResRet.f32 %7029, 2
  %7033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7034 = extractvalue %dx.types.CBufRet.f32 %7033, 1
  %7035 = fmul fast float %7034, %7030
  %7036 = fmul fast float %7034, %7031
  %7037 = fmul fast float %7034, %7032
  %7038 = fcmp fast ogt float %6990, 0x3FEFFF2E40000000
  %7039 = fsub fast float 1.000000e+00, %7021
  %7040 = fsub fast float 1.000000e+00, %6990
  %7041 = fdiv fast float %7039, %7040
  %7042 = call float @dx.op.unary.f32(i32 7, float %7041)  ; Saturate(value)
  %7043 = select i1 %7038, float 0.000000e+00, float %7042
  %7044 = fmul fast float %7035, %7043
  %7045 = fmul fast float %7036, %7043
  %7046 = fmul fast float %7037, %7043
  br label %7047

; <label>:7047                                    ; preds = %7028, %7019
  %7048 = phi float [ 0.000000e+00, %7019 ], [ %7044, %7028 ]
  %7049 = phi float [ 0.000000e+00, %7019 ], [ %7045, %7028 ]
  %7050 = phi float [ 0.000000e+00, %7019 ], [ %7046, %7028 ]
  %7051 = fmul fast float %7048, %5623
  %7052 = fmul fast float %7049, %5623
  %7053 = fmul fast float %7050, %5623
  %7054 = fmul fast float %7021, %6683
  %7055 = call float @dx.op.dot3.f32(i32 55, float %7021, float %7021, float %7021, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7056 = call float @dx.op.dot3.f32(i32 55, float %7051, float %7052, float %7053, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7057 = select i1 %204, float %7055, float %7021
  %7058 = select i1 %204, float 1.000000e+00, float %7021
  %7059 = select i1 %204, float %7056, float %7051
  %7060 = select i1 %204, float 0.000000e+00, float %7052
  %7061 = select i1 %204, float 0.000000e+00, float %7053
  %7062 = fmul fast float %7057, %6695
  %7063 = fmul fast float %7057, %6696
  %7064 = fmul fast float %7058, %6697
  %7065 = fadd fast float %7062, %7059
  %7066 = fadd fast float %7063, %7060
  %7067 = fadd fast float %7061, %7064
  %7068 = fmul fast float %7057, %6698
  %7069 = fmul fast float %7057, %6699
  %7070 = fmul fast float %7058, %6700
  br label %7071

; <label>:7071                                    ; preds = %7047, %6704, %6673, %5905
  %7072 = phi float [ %5910, %5905 ], [ %6695, %6673 ], [ %7065, %7047 ], [ %6695, %6704 ]
  %7073 = phi float [ %5911, %5905 ], [ %6696, %6673 ], [ %7066, %7047 ], [ %6696, %6704 ]
  %7074 = phi float [ %5912, %5905 ], [ %6697, %6673 ], [ %7067, %7047 ], [ %6697, %6704 ]
  %7075 = phi float [ %5913, %5905 ], [ %6698, %6673 ], [ %7068, %7047 ], [ %6698, %6704 ]
  %7076 = phi float [ %5914, %5905 ], [ %6699, %6673 ], [ %7069, %7047 ], [ %6699, %6704 ]
  %7077 = phi float [ %5915, %5905 ], [ %6700, %6673 ], [ %7070, %7047 ], [ %6700, %6704 ]
  %7078 = phi float [ %5916, %5905 ], [ %6683, %6673 ], [ %7054, %7047 ], [ %6683, %6704 ]
  %7079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7080 = extractvalue %dx.types.CBufRet.f32 %7079, 2
  %7081 = extractvalue %dx.types.CBufRet.f32 %7079, 3
  %7082 = fmul fast float %7080, %94
  %7083 = fmul fast float %7081, %95
  %7084 = call float @dx.op.unary.f32(i32 7, float %7082)  ; Saturate(value)
  %7085 = call float @dx.op.unary.f32(i32 7, float %7083)  ; Saturate(value)
  %7086 = select i1 %5645, i32 2, i32 0
  %7087 = or i32 %7086, 1
  %7088 = uitofp i32 %7087 to float
  %7089 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7084, float %7085, float %7088, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7090 = extractvalue %dx.types.ResRet.f32 %7089, 0
  %7091 = extractvalue %dx.types.ResRet.f32 %7089, 1
  %7092 = extractvalue %dx.types.ResRet.f32 %7089, 2
  %7093 = extractvalue %dx.types.ResRet.f32 %7089, 3
  %7094 = add nuw nsw i32 %7086, 2
  %7095 = uitofp i32 %7094 to float
  %7096 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7084, float %7085, float %7095, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7097 = extractvalue %dx.types.ResRet.f32 %7096, 0
  %7098 = extractvalue %dx.types.ResRet.f32 %7096, 1
  %7099 = extractvalue %dx.types.ResRet.f32 %7096, 2
  %7100 = extractvalue %dx.types.ResRet.f32 %7096, 3
  %7101 = call float @dx.op.binary.f32(i32 35, float %7091, float %7092)  ; FMax(a,b)
  %7102 = call float @dx.op.binary.f32(i32 35, float %7090, float %7101)  ; FMax(a,b)
  %7103 = call float @dx.op.binary.f32(i32 35, float %7102, float %7093)  ; FMax(a,b)
  %7104 = call float @dx.op.binary.f32(i32 36, float %7098, float %7099)  ; FMin(a,b)
  %7105 = call float @dx.op.binary.f32(i32 36, float %7097, float %7104)  ; FMin(a,b)
  %7106 = call float @dx.op.binary.f32(i32 36, float %7105, float %7100)  ; FMin(a,b)
  %7107 = fmul fast float %7103, 2.550000e+02
  %7108 = fadd fast float %7107, 0x3F70101020000000
  %7109 = fptoui float %7108 to i32
  %7110 = fmul fast float %7106, 2.550000e+02
  %7111 = fadd fast float %7110, 0x3F70101020000000
  %7112 = fptoui float %7111 to i32
  %7113 = icmp ult i32 %7109, %7112
  br i1 %7113, label %7114, label %7283

; <label>:7114                                    ; preds = %7071
  %7115 = fcmp fast ogt float %81, 9.843750e-01
  %7116 = fadd fast float %5909, -4.000000e+00
  %7117 = select i1 %7115, float -4.000000e+00, float %7116
  %7118 = call float @dx.op.binary.f32(i32 35, float %7117, float 0.000000e+00)  ; FMax(a,b)
  %7119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7120 = extractvalue %dx.types.CBufRet.f32 %7119, 0
  %7121 = fadd fast float %7120, %7118
  %7122 = extractvalue %dx.types.CBufRet.f32 %7119, 2
  %7123 = fmul fast float %7121, %7122
  %7124 = call float @dx.op.unary.f32(i32 23, float %7123)  ; Log(value)
  %7125 = extractvalue %dx.types.CBufRet.f32 %7119, 3
  %7126 = fmul fast float %7125, %7124
  %7127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7128 = extractvalue %dx.types.CBufRet.f32 %7127, 2
  %7129 = fmul fast float %7126, %7128
  %7130 = call float @dx.op.unary.f32(i32 7, float %7129)  ; Saturate(value)
  %7131 = uitofp i32 %7109 to float
  %7132 = uitofp i32 %7112 to float
  %7133 = fadd fast float %7131, 5.000000e-01
  %7134 = fadd fast float %7132, 5.000000e-01
  %7135 = fmul fast float %7128, %7133
  %7136 = fmul fast float %7128, %7134
  %7137 = fadd fast float %7135, 0x3F0FFB4800000000
  %7138 = fadd fast float %7136, 0xBF0FFB4800000000
  %7139 = call float @dx.op.binary.f32(i32 35, float %7130, float %7137)  ; FMax(a,b)
  %7140 = call float @dx.op.binary.f32(i32 36, float %7139, float %7138)  ; FMin(a,b)
  %7141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7142 = extractvalue %dx.types.CBufRet.f32 %7141, 1
  %7143 = extractvalue %dx.types.CBufRet.f32 %7141, 2
  %7144 = extractvalue %dx.types.CBufRet.f32 %7141, 0
  %7145 = select i1 %5645, float %7144, float 0.000000e+00
  %7146 = fmul fast float %7142, %7140
  %7147 = fadd fast float %7145, %7146
  %7148 = fadd fast float %7145, %7143
  %7149 = fsub fast float %7142, %7143
  %7150 = fadd fast float %7149, %7145
  %7151 = call float @dx.op.binary.f32(i32 35, float %7147, float %7148)  ; FMax(a,b)
  %7152 = call float @dx.op.binary.f32(i32 36, float %7151, float %7150)  ; FMin(a,b)
  %7153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7084, float %7085, float %7152, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7154 = extractvalue %dx.types.ResRet.f32 %7153, 0
  %7155 = extractvalue %dx.types.ResRet.f32 %7153, 1
  %7156 = extractvalue %dx.types.ResRet.f32 %7153, 2
  %7157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7158 = extractvalue %dx.types.CBufRet.i32 %7157, 0
  %7159 = extractvalue %dx.types.CBufRet.i32 %7157, 1
  %7160 = uitofp i32 %7158 to float
  %7161 = uitofp i32 %7159 to float
  %7162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7163 = extractvalue %dx.types.CBufRet.f32 %7162, 0
  %7164 = extractvalue %dx.types.CBufRet.f32 %7162, 1
  %7165 = fmul fast float %7160, %7084
  %7166 = fmul fast float %7161, %7085
  %7167 = fadd fast float %7165, -5.000000e-01
  %7168 = fadd fast float %7166, -5.000000e-01
  %7169 = call float @dx.op.unary.f32(i32 22, float %7167)  ; Frc(value)
  %7170 = call float @dx.op.unary.f32(i32 22, float %7168)  ; Frc(value)
  %7171 = fmul fast float %7169, %7169
  %7172 = fmul fast float %7171, %7169
  %7173 = fsub fast float 3.000000e+00, %7169
  %7174 = fmul fast float %7171, %7173
  %7175 = fmul fast float %7169, 3.000000e+00
  %7176 = fmul fast float %7172, 3.000000e+00
  %7177 = fmul fast float %7171, 6.000000e+00
  %7178 = fsub fast float %7176, %7177
  %7179 = fadd fast float %7178, 4.000000e+00
  %7180 = fmul fast float %7179, 0x3FC5555560000000
  %7181 = fmul fast float %7172, -3.000000e+00
  %7182 = fadd fast float %7171, %7169
  %7183 = fmul fast float %7182, 3.000000e+00
  %7184 = fadd fast float %7181, 1.000000e+00
  %7185 = fadd fast float %7184, %7183
  %7186 = fmul fast float %7172, 0x3FC5555560000000
  %7187 = fmul fast float %7170, %7170
  %7188 = fmul fast float %7187, %7170
  %7189 = fsub fast float 3.000000e+00, %7170
  %7190 = fmul fast float %7187, %7189
  %7191 = fmul fast float %7170, 3.000000e+00
  %7192 = fmul fast float %7188, 3.000000e+00
  %7193 = fmul fast float %7187, 6.000000e+00
  %7194 = fsub fast float %7192, %7193
  %7195 = fadd fast float %7194, 4.000000e+00
  %7196 = fmul fast float %7195, 0x3FC5555560000000
  %7197 = fmul fast float %7188, -3.000000e+00
  %7198 = fadd fast float %7187, %7170
  %7199 = fmul fast float %7198, 3.000000e+00
  %7200 = fadd fast float %7197, 1.000000e+00
  %7201 = fadd fast float %7200, %7199
  %7202 = fmul fast float %7188, 0x3FC5555560000000
  %7203 = fadd fast float %7169, 1.000000e+00
  %7204 = fsub fast float 1.000000e+00, %7175
  %7205 = fadd fast float %7204, %7174
  %7206 = fadd fast float %7205, %7179
  %7207 = fmul fast float %7206, 0x3FC5555560000000
  %7208 = fdiv fast float %7180, %7207
  %7209 = fsub fast float %7203, %7208
  %7210 = fsub fast float 1.000000e+00, %7169
  %7211 = fadd fast float %7185, %7172
  %7212 = fmul fast float %7211, 0x3FC5555560000000
  %7213 = fdiv fast float %7186, %7212
  %7214 = fadd fast float %7210, %7213
  %7215 = fadd fast float %7170, 1.000000e+00
  %7216 = fsub fast float 1.000000e+00, %7191
  %7217 = fadd fast float %7216, %7190
  %7218 = fadd fast float %7217, %7195
  %7219 = fmul fast float %7218, 0x3FC5555560000000
  %7220 = fdiv fast float %7196, %7219
  %7221 = fsub fast float %7215, %7220
  %7222 = fsub fast float 1.000000e+00, %7170
  %7223 = fadd fast float %7201, %7188
  %7224 = fmul fast float %7223, 0x3FC5555560000000
  %7225 = fdiv fast float %7202, %7224
  %7226 = fadd fast float %7225, %7222
  %7227 = fmul fast float %7209, %7163
  %7228 = fsub fast float %7084, %7227
  %7229 = fmul fast float %7214, %7163
  %7230 = fadd fast float %7229, %7084
  %7231 = fmul fast float %7226, %7164
  %7232 = fadd fast float %7231, %7085
  %7233 = fmul fast float %7221, %7164
  %7234 = fsub fast float %7085, %7233
  %7235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7228, float %7234, float %7152, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7236 = extractvalue %dx.types.ResRet.f32 %7235, 0
  %7237 = extractvalue %dx.types.ResRet.f32 %7235, 1
  %7238 = extractvalue %dx.types.ResRet.f32 %7235, 2
  %7239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7230, float %7234, float %7152, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7240 = extractvalue %dx.types.ResRet.f32 %7239, 0
  %7241 = extractvalue %dx.types.ResRet.f32 %7239, 1
  %7242 = extractvalue %dx.types.ResRet.f32 %7239, 2
  %7243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7228, float %7232, float %7152, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7244 = extractvalue %dx.types.ResRet.f32 %7243, 0
  %7245 = extractvalue %dx.types.ResRet.f32 %7243, 1
  %7246 = extractvalue %dx.types.ResRet.f32 %7243, 2
  %7247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7230, float %7232, float %7152, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7248 = extractvalue %dx.types.ResRet.f32 %7247, 0
  %7249 = extractvalue %dx.types.ResRet.f32 %7247, 1
  %7250 = extractvalue %dx.types.ResRet.f32 %7247, 2
  %7251 = fsub fast float %7244, %7236
  %7252 = fsub fast float %7245, %7237
  %7253 = fsub fast float %7246, %7238
  %7254 = fmul fast float %7251, %7224
  %7255 = fmul fast float %7252, %7224
  %7256 = fmul fast float %7253, %7224
  %7257 = fadd fast float %7254, %7236
  %7258 = fadd fast float %7255, %7237
  %7259 = fadd fast float %7256, %7238
  %7260 = fsub fast float %7248, %7240
  %7261 = fsub fast float %7249, %7241
  %7262 = fsub fast float %7250, %7242
  %7263 = fmul fast float %7260, %7224
  %7264 = fmul fast float %7261, %7224
  %7265 = fmul fast float %7262, %7224
  %7266 = fsub fast float %7240, %7257
  %7267 = fadd fast float %7266, %7263
  %7268 = fsub fast float %7241, %7258
  %7269 = fadd fast float %7268, %7264
  %7270 = fsub fast float %7242, %7259
  %7271 = fadd fast float %7270, %7265
  %7272 = fmul fast float %7267, %7212
  %7273 = fmul fast float %7269, %7212
  %7274 = fmul fast float %7271, %7212
  %7275 = fadd fast float %7272, %7257
  %7276 = fadd fast float %7273, %7258
  %7277 = fadd fast float %7274, %7259
  %7278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7279 = extractvalue %dx.types.CBufRet.f32 %7278, 1
  %7280 = fmul fast float %7275, %7279
  %7281 = fmul fast float %7276, %7279
  %7282 = fmul fast float %7277, %7279
  br label %7283

; <label>:7283                                    ; preds = %7114, %7071
  %7284 = phi float [ %7154, %7114 ], [ 1.000000e+00, %7071 ]
  %7285 = phi float [ %7155, %7114 ], [ 1.000000e+00, %7071 ]
  %7286 = phi float [ %7156, %7114 ], [ 1.000000e+00, %7071 ]
  %7287 = phi float [ %7280, %7114 ], [ 0.000000e+00, %7071 ]
  %7288 = phi float [ %7281, %7114 ], [ 0.000000e+00, %7071 ]
  %7289 = phi float [ %7282, %7114 ], [ 0.000000e+00, %7071 ]
  %7290 = fmul fast float %7287, %5623
  %7291 = fmul fast float %7288, %5623
  %7292 = fmul fast float %7289, %5623
  %7293 = fmul fast float %7284, %7078
  %7294 = call float @dx.op.dot3.f32(i32 55, float %7284, float %7285, float %7286, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7295 = call float @dx.op.dot3.f32(i32 55, float %7290, float %7291, float %7292, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7296 = select i1 %204, float %7294, float %7284
  %7297 = select i1 %204, float %7294, float %7285
  %7298 = select i1 %204, float 1.000000e+00, float %7286
  %7299 = select i1 %204, float %7295, float %7290
  %7300 = select i1 %204, float 0.000000e+00, float %7291
  %7301 = select i1 %204, float 0.000000e+00, float %7292
  %7302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7303 = extractvalue %dx.types.CBufRet.i32 %7302, 3
  %7304 = and i32 %7303, 3
  %7305 = icmp ne i32 %7304, 0
  %7306 = and i32 %7303, 4
  %7307 = icmp ne i32 %7306, 0
  %7308 = and i1 %7305, %7307
  %7309 = and i1 %204, %7308
  br i1 %7309, label %7310, label %7316

; <label>:7310                                    ; preds = %7283
  %7311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7312 = extractvalue %dx.types.CBufRet.f32 %7311, 1
  %7313 = fadd fast float %7293, -1.000000e+00
  %7314 = fmul fast float %7312, %7313
  %7315 = fadd fast float %7314, 1.000000e+00
  br label %7316

; <label>:7316                                    ; preds = %7310, %7283
  %7317 = phi float [ %7315, %7310 ], [ %7293, %7283 ]
  %7318 = fadd fast float %7075, %7072
  %7319 = fmul fast float %7296, %7318
  %7320 = fadd fast float %7319, %7299
  %7321 = fadd fast float %7076, %7073
  %7322 = fmul fast float %7297, %7321
  %7323 = fadd fast float %7322, %7300
  %7324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7325 = extractvalue %dx.types.CBufRet.f32 %7324, 0
  br i1 %204, label %7326, label %7349

; <label>:7326                                    ; preds = %7316
  %7327 = fadd fast float %7320, %7323
  %7328 = fmul fast float %7325, %7327
  %7329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7330 = extractvalue %dx.types.CBufRet.f32 %7329, 3
  %7331 = extractvalue %dx.types.CBufRet.f32 %5627, 1
  %7332 = fsub fast float %5632, %5626
  %7333 = fadd fast float %7332, %5633
  %7334 = fsub fast float %7333, %7331
  %7335 = extractvalue %dx.types.CBufRet.f32 %5627, 2
  %7336 = fmul fast float %7334, %7335
  %7337 = call float @dx.op.unary.f32(i32 7, float %7336)  ; Saturate(value)
  %7338 = fsub fast float %7337, %7330
  %7339 = fmul fast float %7338, %7317
  %7340 = fadd fast float %7339, %7330
  %7341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7342 = extractvalue %dx.types.CBufRet.f32 %7341, 0
  %7343 = fsub fast float %7340, %7342
  %7344 = fmul fast float %7343, 1.000000e+01
  %7345 = call float @dx.op.unary.f32(i32 7, float %7344)  ; Saturate(value)
  %7346 = fmul fast float %7345, %5622
  %7347 = fadd fast float %7346, %5623
  %7348 = fmul fast float %7347, %7340
  br label %7372

; <label>:7349                                    ; preds = %7316
  %7350 = fadd fast float %7077, %7074
  %7351 = fmul fast float %7298, %7350
  %7352 = fadd fast float %7351, %7301
  %7353 = fmul fast float %7325, %7320
  %7354 = fmul fast float %7325, %7323
  %7355 = fmul fast float %7325, %7352
  %7356 = call float @dx.op.binary.f32(i32 35, float %7354, float %7355)  ; FMax(a,b)
  %7357 = call float @dx.op.binary.f32(i32 35, float %7353, float %7356)  ; FMax(a,b)
  %7358 = call float @dx.op.binary.f32(i32 35, float %7357, float %5623)  ; FMax(a,b)
  %7359 = fcmp fast ugt float %7358, 0x3F10000000000000
  br i1 %7359, label %7361, label %7360

; <label>:7360                                    ; preds = %7349
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7361

; <label>:7361                                    ; preds = %7360, %7349
  %7362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %7363 = extractvalue %dx.types.ResRet.i32 %7362, 0
  %7364 = and i32 %7363, 32
  %7365 = icmp eq i32 %7364, 0
  br i1 %7365, label %7372, label %7366

; <label>:7366                                    ; preds = %7361
  %7367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7368 = extractvalue %dx.types.CBufRet.f32 %7367, 0
  %7369 = fmul fast float %7368, 0x3FE99999A0000000
  %7370 = fadd fast float %7368, %7353
  %7371 = fadd fast float %7369, %7355
  br label %7372

; <label>:7372                                    ; preds = %7366, %7361, %7326
  %7373 = phi float [ %7328, %7326 ], [ %7370, %7366 ], [ %7353, %7361 ]
  %7374 = phi float [ %7348, %7326 ], [ %7354, %7366 ], [ %7354, %7361 ]
  %7375 = phi float [ %7347, %7326 ], [ %7371, %7366 ], [ %7355, %7361 ]
  %7376 = phi float [ %7347, %7326 ], [ %5623, %7366 ], [ %5623, %7361 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7377 = call float @dx.op.binary.f32(i32 36, float %7373, float 3.225500e+04)  ; FMin(a,b)
  %7378 = call float @dx.op.binary.f32(i32 36, float %7374, float 3.225500e+04)  ; FMin(a,b)
  %7379 = call float @dx.op.binary.f32(i32 36, float %7375, float 3.225500e+04)  ; FMin(a,b)
  %7380 = call float @dx.op.binary.f32(i32 36, float %7376, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7377)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7378)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7379)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7380)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!69 = !{[31 x i32] [i32 29, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15]}
!70 = !{void ()* @ps_main, !"ps_main", !71, !4, !89}
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
!87 = !{!88}
!88 = !{i32 0, !"SV_Target", i8 9, i8 16, !74, i8 0, i32 1, i8 4, i32 0, i8 0, !75}
!89 = !{i32 0, i64 16}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = !{!99, !99, i64 0}
!99 = !{!"int", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !{!103, !105, !107, !109}
!103 = distinct !{!103, !104, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!104 = distinct !{!104, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!105 = distinct !{!105, !106, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!106 = distinct !{!106, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!107 = distinct !{!107, !108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!108 = distinct !{!108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!109 = distinct !{!109, !110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!110 = distinct !{!110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = !{!113, !113, i64 0}
!113 = !{!"float", !100, i64 0}
!114 = distinct !{!114, !92}
!115 = distinct !{!115, !92}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = !{!127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!127 = distinct !{!127, !128, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!128 = distinct !{!128, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!129 = distinct !{!129, !130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!130 = distinct !{!130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!131 = distinct !{!131, !130, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!132 = distinct !{!132, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!133 = distinct !{!133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!134 = distinct !{!134, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!135 = distinct !{!135, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!136 = distinct !{!136, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!137 = distinct !{!137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!138 = distinct !{!138, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!139 = distinct !{!139, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!140 = distinct !{!140, !141, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!141 = distinct !{!141, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"\01?sort@@YAXAIAM00@Z: %c"}
!144 = distinct !{!144, !"\01?sort@@YAXAIAM00@Z"}
!145 = !{!146, !147, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!146 = distinct !{!146, !144, !"\01?sort@@YAXAIAM00@Z: %a"}
!147 = distinct !{!147, !144, !"\01?sort@@YAXAIAM00@Z: %b"}
!148 = !{!147}
!149 = !{!146, !143, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!150 = !{!146}
!151 = !{!147, !143, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!152 = !{!153}
!153 = distinct !{!153, !154, !"\01?sort@@YAXAIAM00@Z: %c"}
!154 = distinct !{!154, !"\01?sort@@YAXAIAM00@Z"}
!155 = !{!156, !157, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!156 = distinct !{!156, !154, !"\01?sort@@YAXAIAM00@Z: %a"}
!157 = distinct !{!157, !154, !"\01?sort@@YAXAIAM00@Z: %b"}
!158 = !{!157}
!159 = !{!156, !153, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!160 = !{!156}
!161 = !{!157, !153, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 2}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}

