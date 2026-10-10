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
; shader hash: e6cdff16831d742198bdd7f1c9ce3afa
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
  %100 = fmul fast float %70, %96
  %101 = fmul fast float %71, %96
  %102 = fmul fast float %72, %96
  %103 = fmul fast float %75, %72
  %104 = fmul fast float %76, %71
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %76, %70
  %107 = fmul fast float %74, %72
  %108 = fsub fast float %106, %107
  %109 = fmul fast float %74, %71
  %110 = fmul fast float %75, %70
  %111 = fsub fast float %109, %110
  %112 = fmul fast float %73, %96
  %113 = fmul fast float %112, %105
  %114 = fmul fast float %112, %108
  %115 = fmul fast float %112, %111
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 3
  %119 = fmul fast float %117, 2.000000e+00
  %120 = fmul fast float %119, %94
  %121 = fmul fast float %118, 2.000000e+00
  %122 = fmul fast float %121, %95
  %123 = fsub fast float 1.000000e+00, %120
  %124 = fsub fast float 1.000000e+00, %122
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %129 = fmul fast float %123, %126
  %130 = fmul fast float %123, %127
  %131 = fmul fast float %123, %128
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %136 = fmul fast float %124, %133
  %137 = fmul fast float %124, %134
  %138 = fmul fast float %124, %135
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %142 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %143 = fadd fast float %136, %140
  %144 = fadd fast float %143, %129
  %145 = fadd fast float %137, %141
  %146 = fadd fast float %145, %130
  %147 = fadd fast float %138, %142
  %148 = fadd fast float %147, %131
  %149 = fmul fast float %144, %82
  %150 = fmul fast float %146, %82
  %151 = fmul fast float %148, %82
  %152 = fmul fast float %94, 5.000000e-01
  %153 = fmul fast float %95, 5.000000e-01
  %154 = fptosi float %152 to i32
  %155 = fptosi float %153 to i32
  %156 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %154, i32 %155, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %157 = extractvalue %dx.types.ResRet.i32 %156, 0
  %158 = lshr i32 %157, 18
  %159 = uitofp i32 %158 to float
  %160 = fmul fast float %159, 0x3F4C00EBA0000000
  %161 = call float @dx.op.unary.f32(i32 21, float %160)  ; Exp(value)
  %162 = fadd fast float %161, -1.000000e+00
  %163 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %164 = extractvalue %dx.types.Dimensions %163, 0
  %165 = sitofp i32 %164 to float
  %166 = extractvalue %dx.types.Dimensions %163, 1
  %167 = sitofp i32 %166 to float
  %168 = fcmp fast oge float %152, %165
  %169 = fcmp fast oge float %153, %167
  %170 = or i1 %168, %169
  %171 = select i1 %170, float 0x4197782600000000, float %162
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 3
  %175 = fmul fast float %173, %94
  %176 = fmul fast float %174, %95
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = and i32 %178, 114688
  %180 = icmp ne i32 %179, 0
  %181 = select i1 %180, float %175, float 0.000000e+00
  %182 = select i1 %180, float %176, float 0.000000e+00
  %183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %51, float %181, float %182, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = fmul fast float %184, 2.550000e+02
  %186 = fptoui float %185 to i32
  %187 = select i1 %180, i32 %186, i32 0
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.i32 %189, 3
  %191 = and i32 %190, 3
  %192 = icmp ne i32 %191, 0
  %193 = and i32 %190, 4
  %194 = icmp ne i32 %193, 0
  %195 = and i1 %192, %194
  br i1 %195, label %196, label %207

; <label>:196                                     ; preds = %0
  %197 = extractvalue %dx.types.CBufRet.f32 %188, 3
  %198 = fmul fast float %197, %95
  %199 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %200 = fmul fast float %199, %94
  %201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %200, float %198, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = fsub fast float 1.000000e+00, %202
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 0
  %206 = fcmp fast olt float %203, %205
  br label %210

; <label>:207                                     ; preds = %0
  %208 = icmp eq i32 %193, 0
  %209 = and i1 %192, %208
  br label %210

; <label>:210                                     ; preds = %207, %196
  %211 = phi i1 [ %206, %196 ], [ %209, %207 ]
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %214 = fmul fast float %213, 0x3FE3C6EF40000000
  %215 = frem fast float %94, 2.560000e+02
  %216 = frem fast float %95, 2.560000e+02
  %217 = fptoui float %215 to i32
  %218 = fptoui float %216 to i32
  %219 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %217, i32 %218, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 0
  %221 = fadd fast float %220, %214
  %222 = call float @dx.op.unary.f32(i32 22, float %221)  ; Frc(value)
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = shl i32 %224, 4
  %226 = and i32 %225, 32752
  %227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %226)  ; LegacyF16ToF32(value)
  %228 = lshr i32 %224, 7
  %229 = and i32 %228, 32752
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %224, 22
  %232 = shl nuw nsw i32 %231, 5
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 255
  %237 = uitofp i32 %236 to float
  %238 = fmul fast float %237, 0x3F70101020000000
  %239 = lshr i32 %235, 8
  %240 = and i32 %239, 255
  %241 = uitofp i32 %240 to float
  %242 = fmul fast float %241, 0x3F70101020000000
  %243 = lshr i32 %235, 16
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F70101020000000
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = and i32 %248, 65535
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %248, 16
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = and i32 %254, 65535
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = lshr i32 %254, 16
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = fmul fast float %256, 0x3F50624DE0000000
  %260 = fmul fast float %258, 0x3F50624DE0000000
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = and i32 %262, 2
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %272, label %265

; <label>:265                                     ; preds = %210
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = add i32 %267, 0
  %269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %268, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %270 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %269, %dx.types.Handle %91, float %77, float %78, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 3
  br label %272

; <label>:272                                     ; preds = %265, %210
  %273 = phi float [ 1.000000e+00, %210 ], [ %271, %265 ]
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = or i32 %277, %275
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %893, label %280

; <label>:280                                     ; preds = %272
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = lshr i32 %282, 16
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = fmul fast float %284, 0x3F50624DE0000000
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = lshr i32 %287, 16
  %289 = and i32 %288, 255
  %290 = lshr i32 %287, 24
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 65535
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %292, 16
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = lshr i32 %298, 22
  %300 = shl nuw nsw i32 %299, 5
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = shl i32 %298, 4
  %303 = and i32 %302, 32752
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %298, 7
  %306 = and i32 %305, 32752
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 3
  %310 = fmul fast float %309, 1.000000e+03
  %311 = fmul fast float %259, %310
  %312 = call float @dx.op.unary.f32(i32 22, float %311)  ; Frc(value)
  %313 = fadd fast float %312, %250
  %314 = fmul fast float %260, %310
  %315 = call float @dx.op.unary.f32(i32 22, float %314)  ; Frc(value)
  %316 = fadd fast float %315, %252
  %317 = fmul fast float %285, %310
  %318 = call float @dx.op.unary.f32(i32 22, float %317)  ; Frc(value)
  %319 = fmul fast float %318, 0x401921FB60000000
  %320 = fadd fast float %319, %301
  %321 = call float @dx.op.unary.f32(i32 13, float %320)  ; Sin(value)
  %322 = call float @dx.op.unary.f32(i32 12, float %320)  ; Cos(value)
  %323 = fsub fast float -0.000000e+00, %321
  %324 = fadd fast float %77, -5.000000e-01
  %325 = fadd fast float %78, -5.000000e-01
  %326 = fmul fast float %294, %324
  %327 = fmul fast float %296, %325
  %328 = fadd fast float %326, 5.000000e-01
  %329 = fadd fast float %327, 5.000000e-01
  %330 = fmul fast float %304, %328
  %331 = fmul fast float %307, %329
  %332 = fmul fast float %322, %330
  %333 = call float @dx.op.tertiary.f32(i32 46, float %323, float %331, float %332)  ; FMad(a,b,c)
  %334 = fmul fast float %321, %330
  %335 = call float @dx.op.tertiary.f32(i32 46, float %322, float %331, float %334)  ; FMad(a,b,c)
  %336 = fadd fast float %313, %333
  %337 = fadd fast float %316, %335
  %338 = icmp ugt i32 %289, 1
  %339 = icmp ugt i32 %287, 33554431
  %340 = or i1 %339, %338
  br i1 %340, label %341, label %365

; <label>:341                                     ; preds = %280
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = lshr i32 %343, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = fmul fast float %309, %345
  %347 = call float @dx.op.unary.f32(i32 22, float %346)  ; Frc(value)
  %348 = mul nuw nsw i32 %289, %290
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %347, %349
  %351 = call float @dx.op.unary.f32(i32 27, float %350)  ; Round_ni(value)
  %352 = fptoui float %351 to i32
  %353 = urem i32 %352, %289
  %354 = udiv i32 %352, %290
  %355 = call float @dx.op.unary.f32(i32 22, float %336)  ; Frc(value)
  %356 = call float @dx.op.unary.f32(i32 22, float %337)  ; Frc(value)
  %357 = uitofp i32 %353 to float
  %358 = uitofp i32 %354 to float
  %359 = fadd fast float %355, %357
  %360 = fadd fast float %356, %358
  %361 = uitofp i32 %289 to float
  %362 = uitofp i32 %290 to float
  %363 = fdiv fast float %359, %361
  %364 = fdiv fast float %360, %362
  br label %365

; <label>:365                                     ; preds = %341, %280
  %366 = phi float [ %363, %341 ], [ %336, %280 ]
  %367 = phi float [ %364, %341 ], [ %337, %280 ]
  %368 = and i32 %275, 256
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %414, label %370

; <label>:370                                     ; preds = %365
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = add i32 %372, 0
  %374 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %373, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %375 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %374, %dx.types.Handle %91, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %376 = extractvalue %dx.types.ResRet.f32 %375, 0
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = shl i32 %378, 4
  %380 = and i32 %379, 32752
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = lshr i32 %378, 7
  %383 = and i32 %382, 32752
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = fsub fast float 1.000000e+00, %273
  %386 = call float @dx.op.binary.f32(i32 35, float %385, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %387 = bitcast float %273 to i32
  %388 = sitofp i32 %387 to float
  %389 = fadd fast float %388, 0xC1CFBF8940000000
  %390 = fmul fast float %384, %389
  %391 = fadd fast float %390, 0x41CFBF8940000000
  %392 = fptosi float %391 to i32
  %393 = bitcast i32 %392 to float
  %394 = bitcast float %386 to i32
  %395 = sitofp i32 %394 to float
  %396 = fadd fast float %395, 0xC1CFBF8940000000
  %397 = fmul fast float %396, %384
  %398 = fadd fast float %397, 0x41CFBF8940000000
  %399 = fptosi float %398 to i32
  %400 = bitcast i32 %399 to float
  %401 = fmul fast float %393, %381
  %402 = fmul fast float %400, %381
  %403 = fsub fast float %386, %401
  %404 = fadd fast float %402, %386
  %405 = call float @dx.op.unary.f32(i32 7, float %403)  ; Saturate(value)
  %406 = call float @dx.op.unary.f32(i32 7, float %404)  ; Saturate(value)
  %407 = fsub fast float %376, %405
  %408 = fsub fast float %406, %405
  %409 = bitcast float %408 to i32
  %410 = sub nsw i32 2129859010, %409
  %411 = bitcast i32 %410 to float
  %412 = fmul fast float %411, %407
  %413 = call float @dx.op.unary.f32(i32 7, float %412)  ; Saturate(value)
  br label %414

; <label>:414                                     ; preds = %370, %365
  %415 = phi float [ %413, %370 ], [ %273, %365 ]
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 128
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %435, label %420

; <label>:420                                     ; preds = %414
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = add i32 %422, 0
  %424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %423, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %425 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %424, %dx.types.Handle %91, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %426 = extractvalue %dx.types.ResRet.f32 %425, 0
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 524288
  %430 = icmp ne i32 %429, 0
  %431 = fcmp fast ogt float %426, 0x3FE0101020000000
  %432 = select i1 %431, float 1.000000e+00, float 0.000000e+00
  %433 = select i1 %430, float %432, float %426
  %434 = fmul fast float %433, %415
  br label %435

; <label>:435                                     ; preds = %420, %414
  %436 = phi float [ %434, %420 ], [ %415, %414 ]
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = and i32 %438, 16
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %634, label %441

; <label>:441                                     ; preds = %435
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = add i32 %445, 0
  %447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %446, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %448 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %447, %dx.types.Handle %90, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = extractvalue %dx.types.ResRet.f32 %448, 1
  %451 = extractvalue %dx.types.ResRet.f32 %448, 2
  %452 = extractvalue %dx.types.ResRet.f32 %448, 3
  %453 = and i32 %443, 255
  %454 = uitofp i32 %453 to float
  %455 = lshr i32 %443, 8
  %456 = and i32 %455, 255
  %457 = uitofp i32 %456 to float
  %458 = fmul fast float %452, %454
  %459 = fadd fast float %458, %457
  %460 = fmul fast float %459, 0x3F70101000000000
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = and i32 %462, 512
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %472, label %465

; <label>:465                                     ; preds = %441
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = add i32 %467, 0
  %469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %468, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %470 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %469, %dx.types.Handle %91, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %471 = extractvalue %dx.types.ResRet.f32 %470, 0
  br label %472

; <label>:472                                     ; preds = %465, %441
  %473 = phi float [ %471, %465 ], [ 1.000000e+00, %441 ]
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = and i32 %475, 33554432
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %581, label %478

; <label>:478                                     ; preds = %472
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = and i32 %480, 65535
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = lshr i32 %480, 16
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = and i32 %486, 65535
  %488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %487)  ; LegacyF16ToF32(value)
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = lshr i32 %490, 24
  %492 = uitofp i32 %491 to float
  %493 = fmul fast float %492, 0x3F70101020000000
  %494 = and i32 %490, 255
  %495 = uitofp i32 %494 to float
  %496 = fmul fast float %495, 0x3F70101020000000
  %497 = lshr i32 %490, 8
  %498 = and i32 %497, 255
  %499 = uitofp i32 %498 to float
  %500 = fmul fast float %499, 0x3F70101020000000
  %501 = lshr i32 %490, 16
  %502 = and i32 %501, 255
  %503 = uitofp i32 %502 to float
  %504 = fmul fast float %503, 0x3F70101020000000
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = lshr i32 %506, 24
  %508 = uitofp i32 %507 to float
  %509 = fmul fast float %508, 0x3F70101020000000
  %510 = and i32 %506, 255
  %511 = uitofp i32 %510 to float
  %512 = fmul fast float %511, 0x3F70101020000000
  %513 = lshr i32 %506, 8
  %514 = and i32 %513, 255
  %515 = uitofp i32 %514 to float
  %516 = fmul fast float %515, 0x3F70101020000000
  %517 = lshr i32 %506, 16
  %518 = and i32 %517, 255
  %519 = uitofp i32 %518 to float
  %520 = fmul fast float %519, 0x3F70101020000000
  %521 = bitcast float %449 to i32
  %522 = ashr i32 %521, 1
  %523 = sub nsw i32 1597463174, %522
  %524 = bitcast i32 %523 to float
  %525 = fmul fast float %449, 5.000000e-01
  %526 = fmul fast float %524, %524
  %527 = fmul fast float %526, %525
  %528 = fsub fast float 1.500000e+00, %527
  %529 = fmul fast float %524, %449
  %530 = fmul fast float %529, %528
  %531 = bitcast float %450 to i32
  %532 = ashr i32 %531, 1
  %533 = sub nsw i32 1597463174, %532
  %534 = bitcast i32 %533 to float
  %535 = fmul fast float %450, 5.000000e-01
  %536 = fmul fast float %534, %534
  %537 = fmul fast float %536, %535
  %538 = fsub fast float 1.500000e+00, %537
  %539 = fmul fast float %534, %450
  %540 = fmul fast float %539, %538
  %541 = bitcast float %451 to i32
  %542 = ashr i32 %541, 1
  %543 = sub nsw i32 1597463174, %542
  %544 = bitcast i32 %543 to float
  %545 = fmul fast float %451, 5.000000e-01
  %546 = fmul fast float %544, %544
  %547 = fmul fast float %546, %545
  %548 = fsub fast float 1.500000e+00, %547
  %549 = fmul fast float %544, %451
  %550 = fmul fast float %549, %548
  %551 = fsub fast float %530, %512
  %552 = fsub fast float %540, %516
  %553 = fsub fast float %550, %520
  %554 = fmul fast float %551, %482
  %555 = fmul fast float %552, %484
  %556 = fmul fast float %553, %488
  %557 = fadd fast float %554, %496
  %558 = fadd fast float %555, %500
  %559 = fadd fast float %556, %504
  %560 = call float @dx.op.unary.f32(i32 7, float %557)  ; Saturate(value)
  %561 = call float @dx.op.unary.f32(i32 7, float %558)  ; Saturate(value)
  %562 = call float @dx.op.unary.f32(i32 7, float %559)  ; Saturate(value)
  %563 = fmul fast float %560, %560
  %564 = fmul fast float %561, %561
  %565 = fmul fast float %562, %562
  %566 = fsub fast float %563, %449
  %567 = fsub fast float %564, %450
  %568 = fsub fast float %565, %451
  %569 = fmul fast float %566, %473
  %570 = fmul fast float %567, %473
  %571 = fmul fast float %568, %473
  %572 = fadd fast float %569, %449
  %573 = fadd fast float %570, %450
  %574 = fadd fast float %571, %451
  %575 = fadd fast float %493, %460
  %576 = fsub fast float %575, %509
  %577 = call float @dx.op.unary.f32(i32 7, float %576)  ; Saturate(value)
  %578 = fsub fast float %577, %460
  %579 = fmul fast float %578, %473
  %580 = fadd fast float %579, %460
  br label %634

; <label>:581                                     ; preds = %472
  %582 = and i32 %475, 134217728
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %618, label %584

; <label>:584                                     ; preds = %581
  %585 = call float @dx.op.unary.f32(i32 24, float %238)  ; Sqrt(value)
  %586 = call float @dx.op.unary.f32(i32 24, float %242)  ; Sqrt(value)
  %587 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %588 = fadd fast float %585, -5.000000e-01
  %589 = fadd fast float %586, -5.000000e-01
  %590 = fadd fast float %587, -5.000000e-01
  %591 = fmul fast float %588, %473
  %592 = fmul fast float %589, %473
  %593 = fmul fast float %590, %473
  %594 = fadd fast float %591, 5.000000e-01
  %595 = fadd fast float %592, 5.000000e-01
  %596 = fadd fast float %593, 5.000000e-01
  %597 = call float @dx.op.unary.f32(i32 24, float %449)  ; Sqrt(value)
  %598 = call float @dx.op.unary.f32(i32 24, float %450)  ; Sqrt(value)
  %599 = call float @dx.op.unary.f32(i32 24, float %451)  ; Sqrt(value)
  %600 = fmul fast float %594, 2.000000e+00
  %601 = fsub fast float 1.000000e+00, %600
  %602 = fmul fast float %601, %597
  %603 = fadd fast float %602, %600
  %604 = fmul fast float %603, %597
  %605 = fmul fast float %595, 2.000000e+00
  %606 = fsub fast float 1.000000e+00, %605
  %607 = fmul fast float %606, %598
  %608 = fadd fast float %607, %605
  %609 = fmul fast float %608, %598
  %610 = fmul fast float %596, 2.000000e+00
  %611 = fsub fast float 1.000000e+00, %610
  %612 = fmul fast float %611, %599
  %613 = fadd fast float %612, %610
  %614 = fmul fast float %613, %599
  %615 = fmul fast float %604, %604
  %616 = fmul fast float %609, %609
  %617 = fmul fast float %614, %614
  br label %634

; <label>:618                                     ; preds = %581
  %619 = fmul fast float %238, %238
  %620 = fmul fast float %242, %242
  %621 = fmul fast float %246, %246
  %622 = fadd fast float %619, -1.000000e+00
  %623 = fadd fast float %620, -1.000000e+00
  %624 = fadd fast float %621, -1.000000e+00
  %625 = fmul fast float %473, %622
  %626 = fmul fast float %473, %623
  %627 = fmul fast float %473, %624
  %628 = fadd fast float %625, 1.000000e+00
  %629 = fadd fast float %626, 1.000000e+00
  %630 = fadd fast float %627, 1.000000e+00
  %631 = fmul fast float %628, %449
  %632 = fmul fast float %629, %450
  %633 = fmul fast float %630, %451
  br label %634

; <label>:634                                     ; preds = %618, %584, %478, %435
  %635 = phi float [ %580, %478 ], [ %460, %584 ], [ %460, %618 ], [ 0x3FA23C0BE0000000, %435 ]
  %636 = phi float [ %572, %478 ], [ %615, %584 ], [ %631, %618 ], [ 1.000000e+00, %435 ]
  %637 = phi float [ %573, %478 ], [ %616, %584 ], [ %632, %618 ], [ 1.000000e+00, %435 ]
  %638 = phi float [ %574, %478 ], [ %617, %584 ], [ %633, %618 ], [ 1.000000e+00, %435 ]
  %639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.i32 %639, 1
  %641 = and i32 %640, 1
  %642 = icmp ne i32 %641, 0
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = and i32 %644, 32
  %646 = icmp ne i32 %645, 0
  %647 = and i1 %642, %646
  %648 = select i1 %647, float 1.000000e+00, float %636
  %649 = select i1 %647, float 0x3FD3333340000000, float %637
  %650 = select i1 %647, float 0x3FD3333340000000, float %638
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = and i32 %652, 32
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %724, label %655

; <label>:655                                     ; preds = %634
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = add i32 %659, 0
  %661 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %660, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %662 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %661, %dx.types.Handle %90, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %663 = extractvalue %dx.types.ResRet.f32 %662, 0
  %664 = extractvalue %dx.types.ResRet.f32 %662, 1
  %665 = extractvalue %dx.types.ResRet.f32 %662, 2
  %666 = extractvalue %dx.types.ResRet.f32 %662, 3
  %667 = and i32 %657, 255
  %668 = uitofp i32 %667 to float
  %669 = lshr i32 %657, 8
  %670 = and i32 %669, 255
  %671 = uitofp i32 %670 to float
  %672 = lshr i32 %657, 16
  %673 = and i32 %672, 255
  %674 = uitofp i32 %673 to float
  %675 = fmul fast float %674, 0x3F70101000000000
  %676 = fmul fast float %663, %668
  %677 = fadd fast float %676, %671
  %678 = fmul fast float %677, 0x3F70101000000000
  %679 = fadd fast float %664, -5.000000e-01
  %680 = fadd fast float %666, -5.000000e-01
  %681 = fmul fast float %679, %675
  %682 = fmul fast float %680, %675
  %683 = fadd fast float %681, 5.000000e-01
  %684 = fadd fast float %682, 5.000000e-01
  %685 = fmul fast float %683, 2.000000e+00
  %686 = fadd fast float %685, -1.000000e+00
  %687 = fmul fast float %684, 2.000000e+00
  %688 = fadd fast float %687, -1.000000e+00
  %689 = fadd fast float %686, %688
  %690 = fmul fast float %689, 5.000000e-01
  %691 = fsub fast float %686, %688
  %692 = fmul fast float %691, 5.000000e-01
  %693 = call float @dx.op.unary.f32(i32 6, float %690)  ; FAbs(value)
  %694 = fsub fast float 1.000000e+00, %693
  %695 = call float @dx.op.unary.f32(i32 6, float %692)  ; FAbs(value)
  %696 = fsub fast float %694, %695
  %697 = call float @dx.op.dot3.f32(i32 55, float %690, float %692, float %696, float %690, float %692, float %696)  ; Dot3(ax,ay,az,bx,by,bz)
  %698 = call float @dx.op.unary.f32(i32 25, float %697)  ; Rsqrt(value)
  %699 = fmul fast float %690, %698
  %700 = fmul fast float %692, %698
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = and i32 %702, 67108864
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %720, label %705

; <label>:705                                     ; preds = %655
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = and i32 %707, 65535
  %709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %708)  ; LegacyF16ToF32(value)
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = and i32 %711, 65535
  %713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %712)  ; LegacyF16ToF32(value)
  %714 = lshr i32 %707, 16
  %715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %714)  ; LegacyF16ToF32(value)
  %716 = fsub fast float %678, %715
  %717 = fmul fast float %716, %709
  %718 = fadd fast float %717, %713
  %719 = call float @dx.op.unary.f32(i32 7, float %718)  ; Saturate(value)
  br label %720

; <label>:720                                     ; preds = %705, %655
  %721 = phi float [ %719, %705 ], [ %678, %655 ]
  %722 = call float @dx.op.dot2.f32(i32 54, float %699, float %700, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %723 = call float @dx.op.dot2.f32(i32 54, float %699, float %700, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %724

; <label>:724                                     ; preds = %720, %634
  %725 = phi float [ %721, %720 ], [ 0x3FD6666660000000, %634 ]
  %726 = phi float [ %722, %720 ], [ 0.000000e+00, %634 ]
  %727 = phi float [ %723, %720 ], [ 0.000000e+00, %634 ]
  %728 = phi float [ %665, %720 ], [ 1.000000e+00, %634 ]
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = lshr i32 %730, 22
  %732 = shl nuw nsw i32 %731, 5
  %733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %732)  ; LegacyF16ToF32(value)
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = and i32 %735, 64
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %770, label %738

; <label>:738                                     ; preds = %724
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = add i32 %740, 0
  %742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 131072
  %746 = icmp eq i32 %745, 0
  %747 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %742, %dx.types.Handle %90, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = extractvalue %dx.types.ResRet.f32 %747, 1
  %750 = extractvalue %dx.types.ResRet.f32 %747, 2
  %751 = fmul fast float %748, %227
  %752 = fmul fast float %749, %230
  %753 = fmul fast float %750, %233
  br i1 %746, label %760, label %754

; <label>:754                                     ; preds = %738
  %755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %756 = extractvalue %dx.types.CBufRet.f32 %755, 0
  %757 = fmul fast float %756, %751
  %758 = fmul fast float %756, %752
  %759 = fmul fast float %756, %753
  br label %760

; <label>:760                                     ; preds = %754, %738
  %761 = phi float [ %757, %754 ], [ %751, %738 ]
  %762 = phi float [ %758, %754 ], [ %752, %738 ]
  %763 = phi float [ %759, %754 ], [ %753, %738 ]
  %764 = fmul fast float %761, %733
  %765 = select i1 %211, float %764, float %761
  %766 = call float @dx.op.dot3.f32(i32 55, float %765, float %762, float %763, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %767 = select i1 %211, float 0.000000e+00, float %761
  %768 = select i1 %211, float %766, float %762
  %769 = select i1 %211, float 0.000000e+00, float %763
  br label %770

; <label>:770                                     ; preds = %760, %724
  %771 = phi float [ %767, %760 ], [ 0.000000e+00, %724 ]
  %772 = phi float [ %768, %760 ], [ 0.000000e+00, %724 ]
  %773 = phi float [ %769, %760 ], [ 0.000000e+00, %724 ]
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = and i32 %775, 1024
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %806, label %778

; <label>:778                                     ; preds = %770
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = and i32 %780, 255
  %782 = uitofp i32 %781 to float
  %783 = fmul fast float %782, 0x3F70101020000000
  %784 = lshr i32 %780, 8
  %785 = and i32 %784, 255
  %786 = uitofp i32 %785 to float
  %787 = fmul fast float %786, 0x3F70101020000000
  %788 = lshr i32 %780, 16
  %789 = and i32 %788, 255
  %790 = uitofp i32 %789 to float
  %791 = fmul fast float %790, 0x3F70101020000000
  %792 = fmul fast float %783, %783
  %793 = fmul fast float %787, %787
  %794 = fmul fast float %791, %791
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = add i32 %796, 0
  %798 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %797, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %799 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %798, %dx.types.Handle %91, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %800 = extractvalue %dx.types.ResRet.f32 %799, 0
  %801 = extractvalue %dx.types.ResRet.f32 %799, 1
  %802 = extractvalue %dx.types.ResRet.f32 %799, 2
  %803 = fmul fast float %792, %800
  %804 = fmul fast float %793, %801
  %805 = fmul fast float %794, %802
  br label %806

; <label>:806                                     ; preds = %778, %770
  %807 = phi float [ %803, %778 ], [ 0.000000e+00, %770 ]
  %808 = phi float [ %804, %778 ], [ 0.000000e+00, %770 ]
  %809 = phi float [ %805, %778 ], [ 0.000000e+00, %770 ]
  %810 = fcmp fast ogt float %807, 0.000000e+00
  %811 = fcmp fast ogt float %808, 0.000000e+00
  %812 = fcmp fast ogt float %809, 0.000000e+00
  %813 = call float @dx.op.unary.f32(i32 23, float %807)  ; Log(value)
  %814 = call float @dx.op.unary.f32(i32 23, float %808)  ; Log(value)
  %815 = call float @dx.op.unary.f32(i32 23, float %809)  ; Log(value)
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = lshr i32 %817, 7
  %819 = and i32 %818, 32752
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = fmul fast float %813, 0xBFE62E4300000000
  %822 = fmul fast float %821, %820
  %823 = fmul fast float %814, 0xBFE62E4300000000
  %824 = fmul fast float %823, %820
  %825 = fmul fast float %815, 0xBFE62E4300000000
  %826 = fmul fast float %825, %820
  %827 = select i1 %810, float %822, float 1.270000e+02
  %828 = select i1 %811, float %824, float 1.270000e+02
  %829 = select i1 %812, float %826, float 1.270000e+02
  %830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.i32 %830, 0
  %832 = and i32 %831, 10240
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %876, label %834

; <label>:834                                     ; preds = %806
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = add i32 %836, 0
  %838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %837, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %839 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %838, %dx.types.Handle %91, float %366, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 1
  %841 = extractvalue %dx.types.ResRet.f32 %839, 3
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = and i32 %843, 1048576
  %845 = icmp ne i32 %844, 0
  %846 = and i32 %843, 8192
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %862, label %848

; <label>:848                                     ; preds = %834
  %849 = extractvalue %dx.types.ResRet.f32 %839, 2
  %850 = select i1 %845, float %849, float %840
  %851 = extractvalue %dx.types.ResRet.f32 %839, 0
  %852 = select i1 %845, float %851, float %840
  %853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.i32 %853, 0
  %855 = lshr i32 %854, 16
  %856 = and i32 %855, 255
  %857 = uitofp i32 %856 to float
  %858 = fmul fast float %857, 0x3F80101020000000
  %859 = fmul fast float %858, %852
  %860 = fmul fast float %858, %840
  %861 = fmul fast float %858, %850
  br label %862

; <label>:862                                     ; preds = %848, %834
  %863 = phi float [ %859, %848 ], [ 0.000000e+00, %834 ]
  %864 = phi float [ %860, %848 ], [ 0.000000e+00, %834 ]
  %865 = phi float [ %861, %848 ], [ 0.000000e+00, %834 ]
  %866 = and i32 %843, 2048
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %876, label %868

; <label>:868                                     ; preds = %862
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = shl i32 %870, 4
  %872 = and i32 %871, 32752
  %873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %872)  ; LegacyF16ToF32(value)
  %874 = fmul fast float %873, %841
  %875 = call float @dx.op.binary.f32(i32 35, float %874, float 0x3F70101020000000)  ; FMax(a,b)
  br label %876

; <label>:876                                     ; preds = %868, %862, %806
  %877 = phi float [ %863, %868 ], [ %863, %862 ], [ 0.000000e+00, %806 ]
  %878 = phi float [ %864, %868 ], [ %864, %862 ], [ 0.000000e+00, %806 ]
  %879 = phi float [ %865, %868 ], [ %865, %862 ], [ 0.000000e+00, %806 ]
  %880 = phi float [ %875, %868 ], [ 0x3F70101020000000, %862 ], [ 0x3F70101020000000, %806 ]
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = and i32 %882, 255
  %884 = uitofp i32 %883 to float
  %885 = lshr i32 %882, 8
  %886 = and i32 %885, 255
  %887 = uitofp i32 %886 to float
  %888 = call float @dx.op.dot3.f32(i32 55, float %648, float %649, float %650, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %889 = fmul fast float %887, %888
  %890 = fadd fast float %889, %884
  %891 = fmul fast float %890, 0x3F70101020000000
  %892 = call float @dx.op.unary.f32(i32 7, float %891)  ; Saturate(value)
  br label %893

; <label>:893                                     ; preds = %876, %272
  %894 = phi float [ 0.000000e+00, %272 ], [ %726, %876 ]
  %895 = phi float [ 0.000000e+00, %272 ], [ %727, %876 ]
  %896 = phi float [ 0.000000e+00, %272 ], [ %648, %876 ]
  %897 = phi float [ 0.000000e+00, %272 ], [ %649, %876 ]
  %898 = phi float [ 0.000000e+00, %272 ], [ %650, %876 ]
  %899 = phi float [ 0.000000e+00, %272 ], [ %771, %876 ]
  %900 = phi float [ 0.000000e+00, %272 ], [ %772, %876 ]
  %901 = phi float [ 0.000000e+00, %272 ], [ %773, %876 ]
  %902 = phi float [ 0.000000e+00, %272 ], [ %877, %876 ]
  %903 = phi float [ 0.000000e+00, %272 ], [ %878, %876 ]
  %904 = phi float [ 0.000000e+00, %272 ], [ %879, %876 ]
  %905 = phi float [ 0.000000e+00, %272 ], [ %827, %876 ]
  %906 = phi float [ 0.000000e+00, %272 ], [ %828, %876 ]
  %907 = phi float [ 0.000000e+00, %272 ], [ %829, %876 ]
  %908 = phi float [ 0.000000e+00, %272 ], [ %635, %876 ]
  %909 = phi float [ 0.000000e+00, %272 ], [ %436, %876 ]
  %910 = phi float [ 0.000000e+00, %272 ], [ %725, %876 ]
  %911 = phi float [ 0.000000e+00, %272 ], [ %728, %876 ]
  %912 = phi float [ 0.000000e+00, %272 ], [ %880, %876 ]
  %913 = phi float [ 0.000000e+00, %272 ], [ %892, %876 ]
  %914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %915 = extractvalue %dx.types.CBufRet.f32 %914, 0
  %916 = call float @dx.op.dot2.f32(i32 54, float %894, float %895, float %894, float %895)  ; Dot2(ax,ay,bx,by)
  %917 = fmul fast float %916, 0x3FE3333340000000
  %918 = fsub fast float 1.000000e+00, %917
  %919 = call float @dx.op.dot3.f32(i32 55, float %894, float %895, float %918, float %894, float %895, float %918)  ; Dot3(ax,ay,az,bx,by,bz)
  %920 = call float @dx.op.unary.f32(i32 25, float %919)  ; Rsqrt(value)
  %921 = fmul fast float %920, %894
  %922 = fmul fast float %920, %895
  %923 = fmul fast float %918, %920
  %924 = fmul fast float %923, %97
  %925 = fmul fast float %923, %98
  %926 = fmul fast float %923, %99
  %927 = fmul fast float %921, %100
  %928 = fmul fast float %921, %101
  %929 = fmul fast float %921, %102
  %930 = fadd fast float %924, %927
  %931 = fadd fast float %925, %928
  %932 = fadd fast float %926, %929
  %933 = fmul fast float %922, %113
  %934 = fmul fast float %922, %114
  %935 = fmul fast float %922, %115
  %936 = fadd fast float %930, %933
  %937 = fadd fast float %931, %934
  %938 = fadd fast float %932, %935
  %939 = call float @dx.op.dot3.f32(i32 55, float %936, float %937, float %938, float %936, float %937, float %938)  ; Dot3(ax,ay,az,bx,by,bz)
  %940 = call float @dx.op.unary.f32(i32 25, float %939)  ; Rsqrt(value)
  %941 = fmul fast float %936, %940
  %942 = fmul fast float %937, %940
  %943 = fmul fast float %938, %940
  %944 = call float @dx.op.unary.f32(i32 83, float %149)  ; DerivCoarseX(value)
  %945 = call float @dx.op.unary.f32(i32 83, float %150)  ; DerivCoarseX(value)
  %946 = call float @dx.op.unary.f32(i32 83, float %151)  ; DerivCoarseX(value)
  %947 = call float @dx.op.unary.f32(i32 84, float %149)  ; DerivCoarseY(value)
  %948 = call float @dx.op.unary.f32(i32 84, float %150)  ; DerivCoarseY(value)
  %949 = call float @dx.op.unary.f32(i32 84, float %151)  ; DerivCoarseY(value)
  %950 = fadd fast float %944, %149
  %951 = fadd fast float %945, %150
  %952 = fadd fast float %946, %151
  %953 = fadd fast float %947, %149
  %954 = fadd fast float %948, %150
  %955 = fadd fast float %949, %151
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 0
  %958 = extractvalue %dx.types.CBufRet.f32 %956, 1
  %959 = extractvalue %dx.types.CBufRet.f32 %956, 2
  %960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.f32 %960, 2
  %962 = extractvalue %dx.types.CBufRet.f32 %960, 3
  %963 = fmul fast float %957, %94
  %964 = fmul fast float %963, %961
  %965 = fmul fast float %958, %95
  %966 = fmul fast float %965, %962
  %967 = fptoui float %964 to i32
  %968 = fptoui float %966 to i32
  %969 = fadd fast float %957, -1.000000e+00
  %970 = fadd fast float %958, -1.000000e+00
  %971 = fptoui float %969 to i32
  %972 = fptoui float %970 to i32
  %973 = call i32 @dx.op.binary.i32(i32 40, i32 %967, i32 %971)  ; UMin(a,b)
  %974 = call i32 @dx.op.binary.i32(i32 40, i32 %968, i32 %972)  ; UMin(a,b)
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 2
  %977 = extractvalue %dx.types.CBufRet.f32 %975, 3
  %978 = fmul fast float %976, %82
  %979 = fsub fast float %978, %977
  %980 = fadd fast float %959, -1.000000e+00
  %981 = call float @dx.op.binary.f32(i32 36, float %979, float %980)  ; FMin(a,b)
  %982 = fptoui float %981 to i32
  %983 = fptoui float %957 to i32
  %984 = fptoui float %958 to i32
  %985 = mul i32 %982, %984
  %986 = add i32 %985, %974
  %987 = mul i32 %986, %983
  %988 = add i32 %987, %973
  %989 = shl i32 %988, 2
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %989, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = and i32 %991, 1023
  %993 = lshr i32 %991, 10
  %994 = icmp eq i32 %992, 0
  br i1 %994, label %1498, label %995

; <label>:995                                     ; preds = %893
  %996 = and i32 %991, 1023
  br label %997

; <label>:997                                     ; preds = %1129, %995
  %998 = phi i32 [ %1079, %1129 ], [ 0, %995 ]
  %999 = phi float [ %1130, %1129 ], [ 0.000000e+00, %995 ]
  %1000 = phi float [ %1131, %1129 ], [ %915, %995 ]
  %1001 = phi float [ %1132, %1129 ], [ %913, %995 ]
  %1002 = phi float [ %1133, %1129 ], [ %905, %995 ]
  %1003 = phi float [ %1134, %1129 ], [ %906, %995 ]
  %1004 = phi float [ %1135, %1129 ], [ %907, %995 ]
  %1005 = phi float [ %1136, %1129 ], [ 0.000000e+00, %995 ]
  %1006 = phi float [ %1137, %1129 ], [ 0.000000e+00, %995 ]
  %1007 = phi float [ %1138, %1129 ], [ %902, %995 ]
  %1008 = phi float [ %1139, %1129 ], [ %903, %995 ]
  %1009 = phi float [ %1140, %1129 ], [ %904, %995 ]
  %1010 = phi float [ %1141, %1129 ], [ %899, %995 ]
  %1011 = phi float [ %1142, %1129 ], [ %900, %995 ]
  %1012 = phi float [ %1143, %1129 ], [ %901, %995 ]
  %1013 = phi float [ %1144, %1129 ], [ %941, %995 ]
  %1014 = phi float [ %1145, %1129 ], [ %942, %995 ]
  %1015 = phi float [ %1146, %1129 ], [ %943, %995 ]
  %1016 = phi float [ %1147, %1129 ], [ %911, %995 ]
  %1017 = phi float [ %1148, %1129 ], [ %910, %995 ]
  %1018 = phi float [ %1149, %1129 ], [ 0.000000e+00, %995 ]
  %1019 = phi float [ %1150, %1129 ], [ %908, %995 ]
  %1020 = phi float [ %1151, %1129 ], [ %896, %995 ]
  %1021 = phi float [ %1152, %1129 ], [ %897, %995 ]
  %1022 = phi float [ %1153, %1129 ], [ %898, %995 ]
  %1023 = add nuw nsw i32 %998, %993
  %1024 = shl i32 %1023, 2
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = shl i32 %1026, 8
  %1028 = or i32 %1027, 48
  %1029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.ResRet.f32 %1029, 2
  %1033 = extractvalue %dx.types.ResRet.f32 %1029, 3
  %1034 = or i32 %1027, 64
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = extractvalue %dx.types.ResRet.i32 %1035, 1
  %1038 = or i32 %1027, 80
  %1039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 2
  %1041 = extractvalue %dx.types.ResRet.f32 %1039, 3
  %1042 = or i32 %1027, 96
  %1043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.f32 %1043, 0
  %1045 = extractvalue %dx.types.ResRet.f32 %1043, 1
  %1046 = extractvalue %dx.types.ResRet.f32 %1043, 2
  %1047 = extractvalue %dx.types.ResRet.f32 %1043, 3
  %1048 = or i32 %1027, 112
  %1049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1048, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1051 = or i32 %1027, 128
  %1052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.ResRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.ResRet.f32 %1052, 2
  %1056 = extractvalue %dx.types.ResRet.f32 %1052, 3
  %1057 = or i32 %1027, 144
  %1058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.ResRet.f32 %1058, 1
  %1061 = extractvalue %dx.types.ResRet.f32 %1058, 2
  %1062 = extractvalue %dx.types.ResRet.f32 %1058, 3
  %1063 = or i32 %1027, 160
  %1064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.ResRet.f32 %1064, 1
  %1067 = extractvalue %dx.types.ResRet.f32 %1064, 2
  %1068 = extractvalue %dx.types.ResRet.f32 %1064, 3
  %1069 = or i32 %1027, 192
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = or i32 %1027, 208
  %1073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.f32 %1073, 0
  %1075 = or i32 %1027, 248
  %1076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1079 = add nuw nsw i32 %998, 1
  %1080 = bitcast float %1033 to i32
  %1081 = and i32 %1080, 512
  %1082 = icmp eq i32 %1081, 0
  %1083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = extractvalue %dx.types.ResRet.f32 %1083, 3
  %1088 = call float @dx.op.dot4.f32(i32 56, float %1084, float %1085, float %1086, float %1087, float %149, float %150, float %151, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1089 = or i32 %1027, 16
  %1090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.ResRet.f32 %1090, 1
  %1093 = extractvalue %dx.types.ResRet.f32 %1090, 2
  %1094 = extractvalue %dx.types.ResRet.f32 %1090, 3
  %1095 = call float @dx.op.dot4.f32(i32 56, float %1091, float %1092, float %1093, float %1094, float %149, float %150, float %151, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1096 = or i32 %1027, 32
  %1097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.f32 %1097, 0
  %1099 = extractvalue %dx.types.ResRet.f32 %1097, 1
  %1100 = extractvalue %dx.types.ResRet.f32 %1097, 2
  %1101 = extractvalue %dx.types.ResRet.f32 %1097, 3
  %1102 = call float @dx.op.dot4.f32(i32 56, float %1098, float %1099, float %1100, float %1101, float %149, float %150, float %151, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1103 = call float @dx.op.unary.f32(i32 27, float %1088)  ; Round_ni(value)
  %1104 = call float @dx.op.unary.f32(i32 6, float %1103)  ; FAbs(value)
  %1105 = call float @dx.op.unary.f32(i32 27, float %1095)  ; Round_ni(value)
  %1106 = call float @dx.op.unary.f32(i32 6, float %1105)  ; FAbs(value)
  %1107 = call float @dx.op.unary.f32(i32 6, float %1102)  ; FAbs(value)
  %1108 = call float @dx.op.unary.f32(i32 27, float %1107)  ; Round_ni(value)
  %1109 = fadd fast float %1106, %1104
  %1110 = fadd fast float %1109, %1108
  %1111 = fcmp fast oeq float %1110, 0.000000e+00
  %1112 = call float @dx.op.dot4.f32(i32 56, float %1084, float %1085, float %1086, float %1087, float %950, float %951, float %952, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1113 = call float @dx.op.dot4.f32(i32 56, float %1091, float %1092, float %1093, float %1094, float %950, float %951, float %952, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1114 = call float @dx.op.dot4.f32(i32 56, float %1084, float %1085, float %1086, float %1087, float %953, float %954, float %955, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1115 = call float @dx.op.dot4.f32(i32 56, float %1091, float %1092, float %1093, float %1094, float %953, float %954, float %955, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1116 = fsub fast float %1112, %1088
  %1117 = fsub fast float %1114, %1088
  %1118 = fsub fast float %1113, %1095
  %1119 = fsub fast float %1115, %1095
  %1120 = call float @dx.op.dot3.f32(i32 55, float %1030, float %1031, float %1032, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 2
  %1123 = fadd fast float %1122, %1120
  %1124 = call float @dx.op.unary.f32(i32 7, float %1123)  ; Saturate(value)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1121, 0
  %1126 = fcmp fast ogt float %1124, %1125
  %1127 = and i1 %1111, %1126
  %1128 = and i1 %1082, %1127
  br i1 %1128, label %1155, label %1129

; <label>:1129                                    ; preds = %1484, %1236, %1155, %997
  %1130 = phi float [ %999, %1155 ], [ %1239, %1236 ], [ %1239, %1484 ], [ %999, %997 ]
  %1131 = phi float [ %1000, %1155 ], [ %1000, %1236 ], [ %1460, %1484 ], [ %1000, %997 ]
  %1132 = phi float [ %1001, %1155 ], [ %1001, %1236 ], [ %1458, %1484 ], [ %1001, %997 ]
  %1133 = phi float [ %1002, %1155 ], [ %1002, %1236 ], [ %1436, %1484 ], [ %1002, %997 ]
  %1134 = phi float [ %1003, %1155 ], [ %1003, %1236 ], [ %1437, %1484 ], [ %1003, %997 ]
  %1135 = phi float [ %1004, %1155 ], [ %1004, %1236 ], [ %1438, %1484 ], [ %1004, %997 ]
  %1136 = phi float [ %1005, %1155 ], [ %1005, %1236 ], [ %1363, %1484 ], [ %1005, %997 ]
  %1137 = phi float [ %1006, %1155 ], [ %1006, %1236 ], [ %1361, %1484 ], [ %1006, %997 ]
  %1138 = phi float [ %1007, %1155 ], [ %1007, %1236 ], [ %1406, %1484 ], [ %1007, %997 ]
  %1139 = phi float [ %1008, %1155 ], [ %1008, %1236 ], [ %1407, %1484 ], [ %1008, %997 ]
  %1140 = phi float [ %1009, %1155 ], [ %1009, %1236 ], [ %1408, %1484 ], [ %1009, %997 ]
  %1141 = phi float [ %1010, %1155 ], [ %1010, %1236 ], [ %1494, %1484 ], [ %1010, %997 ]
  %1142 = phi float [ %1011, %1155 ], [ %1011, %1236 ], [ %1495, %1484 ], [ %1011, %997 ]
  %1143 = phi float [ %1012, %1155 ], [ %1012, %1236 ], [ %1496, %1484 ], [ %1012, %997 ]
  %1144 = phi float [ %1013, %1155 ], [ %1013, %1236 ], [ %1342, %1484 ], [ %1013, %997 ]
  %1145 = phi float [ %1014, %1155 ], [ %1014, %1236 ], [ %1343, %1484 ], [ %1014, %997 ]
  %1146 = phi float [ %1015, %1155 ], [ %1015, %1236 ], [ %1344, %1484 ], [ %1015, %997 ]
  %1147 = phi float [ %1016, %1155 ], [ %1016, %1236 ], [ %1416, %1484 ], [ %1016, %997 ]
  %1148 = phi float [ %1017, %1155 ], [ %1017, %1236 ], [ %1413, %1484 ], [ %1017, %997 ]
  %1149 = phi float [ %1018, %1155 ], [ %1018, %1236 ], [ %1410, %1484 ], [ %1018, %997 ]
  %1150 = phi float [ %1019, %1155 ], [ %1019, %1236 ], [ %1359, %1484 ], [ %1019, %997 ]
  %1151 = phi float [ %1020, %1155 ], [ %1020, %1236 ], [ %1354, %1484 ], [ %1020, %997 ]
  %1152 = phi float [ %1021, %1155 ], [ %1021, %1236 ], [ %1355, %1484 ], [ %1021, %997 ]
  %1153 = phi float [ %1022, %1155 ], [ %1022, %1236 ], [ %1356, %1484 ], [ %1022, %997 ]
  %1154 = icmp eq i32 %1079, %996
  br i1 %1154, label %1497, label %997

; <label>:1155                                    ; preds = %997
  %1156 = extractvalue %dx.types.ResRet.f32 %1049, 3
  %1157 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1158 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1159 = extractvalue %dx.types.ResRet.f32 %1039, 1
  %1160 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1161 = extractvalue %dx.types.ResRet.i32 %1035, 3
  %1162 = extractvalue %dx.types.ResRet.i32 %1035, 2
  %1163 = add i32 %1161, 0
  %1164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1163, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1166 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1164, %dx.types.Handle %1165, float %1088, float %1095, float undef, float undef, i32 0, i32 0, i32 undef, float %1116, float %1118, float undef, float %1117, float %1119, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1167 = extractvalue %dx.types.ResRet.f32 %1166, 0
  %1168 = fmul fast float %1167, %1160
  %1169 = fadd fast float %1168, %1159
  %1170 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  %1171 = fmul fast float %1088, %1044
  %1172 = call float @dx.op.tertiary.f32(i32 46, float %1045, float %1095, float %1171)  ; FMad(a,b,c)
  %1173 = fadd fast float %1172, %1158
  %1174 = fmul fast float %1088, %1046
  %1175 = call float @dx.op.tertiary.f32(i32 46, float %1047, float %1095, float %1174)  ; FMad(a,b,c)
  %1176 = fadd fast float %1175, %1157
  %1177 = fmul fast float %1116, %1044
  %1178 = call float @dx.op.tertiary.f32(i32 46, float %1045, float %1118, float %1177)  ; FMad(a,b,c)
  %1179 = fmul fast float %1116, %1046
  %1180 = call float @dx.op.tertiary.f32(i32 46, float %1047, float %1118, float %1179)  ; FMad(a,b,c)
  %1181 = fmul fast float %1117, %1044
  %1182 = call float @dx.op.tertiary.f32(i32 46, float %1045, float %1119, float %1181)  ; FMad(a,b,c)
  %1183 = fmul fast float %1117, %1046
  %1184 = call float @dx.op.tertiary.f32(i32 46, float %1047, float %1119, float %1183)  ; FMad(a,b,c)
  %1185 = add i32 %1162, 0
  %1186 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1185, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1187 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1186, %dx.types.Handle %1165, float %1173, float %1176, float undef, float undef, i32 0, i32 0, i32 undef, float %1178, float %1180, float undef, float %1182, float %1184, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1188 = extractvalue %dx.types.ResRet.f32 %1187, 0
  %1189 = and i32 %1080, 1024
  %1190 = icmp ne i32 %1189, 0
  %1191 = fcmp fast ogt float %1188, 0x3FE0101020000000
  %1192 = uitofp i1 %1191 to float
  %1193 = select i1 %1190, float %1192, float %1188
  %1194 = and i32 %1080, 8192
  %1195 = icmp ne i32 %1194, 0
  %1196 = select i1 %1195, float %1156, float 1.000000e+00
  %1197 = fmul fast float %1088, 2.000000e+00
  %1198 = fadd fast float %1197, -1.000000e+00
  %1199 = call float @dx.op.unary.f32(i32 6, float %1198)  ; FAbs(value)
  %1200 = fmul fast float %1199, %1077
  %1201 = fsub fast float %1200, %1077
  %1202 = call float @dx.op.unary.f32(i32 7, float %1201)  ; Saturate(value)
  %1203 = fmul fast float %1095, 2.000000e+00
  %1204 = fadd fast float %1203, -1.000000e+00
  %1205 = call float @dx.op.unary.f32(i32 6, float %1204)  ; FAbs(value)
  %1206 = fmul fast float %1205, %1078
  %1207 = fsub fast float %1206, %1078
  %1208 = call float @dx.op.unary.f32(i32 7, float %1207)  ; Saturate(value)
  %1209 = fmul fast float %1107, %1040
  %1210 = fsub fast float %1209, %1040
  %1211 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  %1212 = fmul fast float %1170, %1196
  %1213 = fmul fast float %1212, %1167
  %1214 = fmul fast float %1213, %1202
  %1215 = fmul fast float %1214, %1193
  %1216 = fmul fast float %1215, %1208
  %1217 = fmul fast float %1216, %1211
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 1
  %1220 = extractvalue %dx.types.CBufRet.f32 %1218, 0
  %1221 = fsub fast float %1124, %1220
  %1222 = fmul fast float %1221, %1219
  %1223 = call float @dx.op.unary.f32(i32 7, float %1222)  ; Saturate(value)
  %1224 = fmul fast float %1217, %1041
  %1225 = fadd fast float %1217, %1041
  %1226 = fmul fast float %1225, %1050
  %1227 = fsub fast float %1226, %1050
  %1228 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  %1229 = and i32 %1080, 128
  %1230 = icmp ne i32 %1229, 0
  %1231 = select i1 %1230, float %1228, float %1224
  %1232 = fmul fast float %1231, %1223
  %1233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1234 = extractvalue %dx.types.CBufRet.f32 %1233, 0
  %1235 = fcmp fast ugt float %1232, %1234
  br i1 %1235, label %1236, label %1129

; <label>:1236                                    ; preds = %1155
  %1237 = select i1 %1195, float %1232, float 0.000000e+00
  %1238 = fadd fast float %1237, %999
  %1239 = call float @dx.op.unary.f32(i32 7, float %1238)  ; Saturate(value)
  br i1 %1195, label %1129, label %1240

; <label>:1240                                    ; preds = %1236
  %1241 = and i32 %1080, 4
  %1242 = and i32 %1080, 8
  %1243 = add i32 %1036, 0
  %1244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1243, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1245 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1246 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1244, %dx.types.Handle %1245, float %1173, float %1176, float undef, float undef, i32 0, i32 0, i32 undef, float %1178, float %1180, float undef, float %1182, float %1184, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1247 = extractvalue %dx.types.ResRet.f32 %1246, 0
  %1248 = extractvalue %dx.types.ResRet.f32 %1246, 1
  %1249 = extractvalue %dx.types.ResRet.f32 %1246, 2
  %1250 = extractvalue %dx.types.ResRet.f32 %1246, 3
  %1251 = bitcast float %1062 to i32
  %1252 = and i32 %1251, 255
  %1253 = uitofp i32 %1252 to float
  %1254 = lshr i32 %1251, 8
  %1255 = and i32 %1254, 255
  %1256 = uitofp i32 %1255 to float
  %1257 = fmul fast float %1250, %1253
  %1258 = fadd fast float %1257, %1256
  %1259 = fmul fast float %1258, 0x3F70101000000000
  %1260 = add i32 %1037, 0
  %1261 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1260, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1262 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1261, %dx.types.Handle %1245, float %1173, float %1176, float undef, float undef, i32 0, i32 0, i32 undef, float %1178, float %1180, float undef, float %1182, float %1184, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  %1264 = extractvalue %dx.types.ResRet.f32 %1262, 1
  %1265 = extractvalue %dx.types.ResRet.f32 %1262, 2
  %1266 = extractvalue %dx.types.ResRet.f32 %1262, 3
  %1267 = bitcast float %1056 to i32
  %1268 = and i32 %1267, 255
  %1269 = uitofp i32 %1268 to float
  %1270 = lshr i32 %1267, 8
  %1271 = and i32 %1270, 255
  %1272 = uitofp i32 %1271 to float
  %1273 = lshr i32 %1267, 16
  %1274 = and i32 %1273, 255
  %1275 = uitofp i32 %1274 to float
  %1276 = fmul fast float %1275, 0x3F70101000000000
  %1277 = fmul fast float %1263, %1269
  %1278 = fadd fast float %1277, %1272
  %1279 = fmul fast float %1278, 0x3F70101000000000
  %1280 = fadd fast float %1264, -5.000000e-01
  %1281 = fadd fast float %1266, -5.000000e-01
  %1282 = fmul fast float %1280, %1276
  %1283 = fmul fast float %1281, %1276
  %1284 = fadd fast float %1282, 5.000000e-01
  %1285 = fadd fast float %1283, 5.000000e-01
  %1286 = fmul fast float %1247, %1065
  %1287 = fmul fast float %1248, %1066
  %1288 = fmul fast float %1249, %1067
  %1289 = fmul fast float %1284, 2.000000e+00
  %1290 = fadd fast float %1289, -1.000000e+00
  %1291 = fmul fast float %1285, 2.000000e+00
  %1292 = fadd fast float %1291, -1.000000e+00
  %1293 = fadd fast float %1290, %1292
  %1294 = fmul fast float %1293, 5.000000e-01
  %1295 = fsub fast float %1290, %1292
  %1296 = fmul fast float %1295, 5.000000e-01
  %1297 = call float @dx.op.unary.f32(i32 6, float %1294)  ; FAbs(value)
  %1298 = fsub fast float 1.000000e+00, %1297
  %1299 = call float @dx.op.unary.f32(i32 6, float %1296)  ; FAbs(value)
  %1300 = fsub fast float %1298, %1299
  %1301 = call float @dx.op.dot3.f32(i32 55, float %1294, float %1296, float %1300, float %1294, float %1296, float %1300)  ; Dot3(ax,ay,az,bx,by,bz)
  %1302 = call float @dx.op.unary.f32(i32 25, float %1301)  ; Rsqrt(value)
  %1303 = fmul fast float %1294, %1302
  %1304 = fmul fast float %1296, %1302
  %1305 = fmul fast float %1302, %1300
  %1306 = fmul fast float %1305, %1030
  %1307 = fmul fast float %1305, %1031
  %1308 = fmul fast float %1305, %1032
  %1309 = fmul fast float %1303, %1053
  %1310 = fmul fast float %1303, %1054
  %1311 = fmul fast float %1303, %1055
  %1312 = fadd fast float %1309, %1306
  %1313 = fadd fast float %1310, %1307
  %1314 = fadd fast float %1311, %1308
  %1315 = fmul fast float %1304, %1059
  %1316 = fmul fast float %1304, %1060
  %1317 = fmul fast float %1304, %1061
  %1318 = fadd fast float %1312, %1315
  %1319 = fadd fast float %1313, %1316
  %1320 = fadd fast float %1314, %1317
  %1321 = call float @dx.op.dot3.f32(i32 55, float %1318, float %1319, float %1320, float %1318, float %1319, float %1320)  ; Dot3(ax,ay,az,bx,by,bz)
  %1322 = call float @dx.op.unary.f32(i32 25, float %1321)  ; Rsqrt(value)
  %1323 = fmul fast float %1318, %1322
  %1324 = fmul fast float %1319, %1322
  %1325 = fmul fast float %1320, %1322
  %1326 = icmp ne i32 %1242, 0
  %1327 = select i1 %1326, float 1.000000e+00, float 0.000000e+00
  %1328 = fmul fast float %1232, %1327
  %1329 = and i32 %1080, 1
  %1330 = icmp eq i32 %1329, 0
  br i1 %1330, label %1331, label %1335

; <label>:1331                                    ; preds = %1240
  %1332 = fsub fast float %1323, %1013
  %1333 = fsub fast float %1324, %1014
  %1334 = fsub fast float %1325, %1015
  br label %1335

; <label>:1335                                    ; preds = %1331, %1240
  %1336 = phi float [ %1332, %1331 ], [ %1323, %1240 ]
  %1337 = phi float [ %1333, %1331 ], [ %1324, %1240 ]
  %1338 = phi float [ %1334, %1331 ], [ %1325, %1240 ]
  %1339 = fmul float %1338, %1328
  %1340 = fmul float %1337, %1328
  %1341 = fmul float %1336, %1328
  %1342 = fadd fast float %1341, %1013
  %1343 = fadd fast float %1340, %1014
  %1344 = fadd fast float %1339, %1015
  %1345 = icmp ne i32 %1241, 0
  %1346 = select i1 %1345, float 1.000000e+00, float 0.000000e+00
  %1347 = fmul fast float %1232, %1346
  %1348 = fsub fast float %1286, %1020
  %1349 = fsub fast float %1287, %1021
  %1350 = fsub fast float %1288, %1022
  %1351 = fmul fast float %1348, %1347
  %1352 = fmul fast float %1349, %1347
  %1353 = fmul fast float %1350, %1347
  %1354 = fadd fast float %1351, %1020
  %1355 = fadd fast float %1352, %1021
  %1356 = fadd fast float %1353, %1022
  %1357 = fsub fast float %1259, %1019
  %1358 = fmul fast float %1357, %1347
  %1359 = fadd fast float %1358, %1019
  %1360 = fmul fast float %1347, %1006
  %1361 = fsub fast float %1006, %1360
  %1362 = fmul fast float %1347, %1005
  %1363 = fsub fast float %1005, %1362
  %1364 = bitcast float %1074 to i32
  %1365 = lshr i32 %1364, 16
  %1366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1365)  ; LegacyF16ToF32(value)
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = and i32 %1368, 1
  %1370 = icmp eq i32 %1369, 0
  br i1 %1370, label %1371, label %1396

; <label>:1371                                    ; preds = %1335
  %1372 = fadd fast float %1259, 0xBFB99999A0000000
  %1373 = call float @dx.op.unary.f32(i32 7, float %1372)  ; Saturate(value)
  %1374 = fmul fast float %1373, 0x3FF1C71C80000000
  %1375 = fsub fast float 1.000000e+00, %1374
  %1376 = call float @dx.op.unary.f32(i32 7, float %1375)  ; Saturate(value)
  %1377 = fmul fast float %1376, %1286
  %1378 = fmul fast float %1376, %1287
  %1379 = fmul fast float %1376, %1288
  %1380 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  %1381 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1382 = call float @dx.op.unary.f32(i32 7, float %1379)  ; Saturate(value)
  %1383 = call float @dx.op.binary.f32(i32 35, float %1381, float %1382)  ; FMax(a,b)
  %1384 = call float @dx.op.binary.f32(i32 35, float %1380, float %1383)  ; FMax(a,b)
  %1385 = fcmp fast ogt float %1384, 0.000000e+00
  %1386 = bitcast float %1384 to i32
  %1387 = sub nsw i32 2129859010, %1386
  %1388 = bitcast i32 %1387 to float
  %1389 = select i1 %1385, float %1388, float 0.000000e+00
  %1390 = fmul fast float %1380, %1366
  %1391 = fmul fast float %1381, %1366
  %1392 = fmul fast float %1382, %1366
  %1393 = fmul fast float %1390, %1389
  %1394 = fmul fast float %1391, %1389
  %1395 = fmul fast float %1392, %1389
  br label %1396

; <label>:1396                                    ; preds = %1371, %1335
  %1397 = phi float [ %1366, %1335 ], [ %1393, %1371 ]
  %1398 = phi float [ %1366, %1335 ], [ %1394, %1371 ]
  %1399 = phi float [ %1366, %1335 ], [ %1395, %1371 ]
  %1400 = fsub fast float %1397, %1007
  %1401 = fsub fast float %1398, %1008
  %1402 = fsub fast float %1399, %1009
  %1403 = fmul fast float %1400, %1347
  %1404 = fmul fast float %1401, %1347
  %1405 = fmul fast float %1402, %1347
  %1406 = fadd fast float %1403, %1007
  %1407 = fadd fast float %1404, %1008
  %1408 = fadd fast float %1405, %1009
  %1409 = fadd fast float %1232, %1018
  %1410 = call float @dx.op.unary.f32(i32 7, float %1409)  ; Saturate(value)
  %1411 = fsub fast float %1279, %1017
  %1412 = fmul fast float %1411, %1328
  %1413 = fadd fast float %1412, %1017
  %1414 = fsub fast float %1265, %1016
  %1415 = fmul fast float %1414, %1328
  %1416 = fadd fast float %1415, %1016
  br i1 %1330, label %1425, label %1417

; <label>:1417                                    ; preds = %1396
  %1418 = and i32 %1080, 32768
  %1419 = icmp eq i32 %1418, 0
  br i1 %1419, label %1435, label %1420

; <label>:1420                                    ; preds = %1417
  %1421 = fmul fast float %1328, 1.270000e+02
  %1422 = fadd fast float %1421, %1002
  %1423 = fadd fast float %1421, %1003
  %1424 = fadd fast float %1421, %1004
  br label %1435

; <label>:1425                                    ; preds = %1396
  %1426 = fsub fast float 1.270000e+02, %1002
  %1427 = fsub fast float 1.270000e+02, %1003
  %1428 = fsub fast float 1.270000e+02, %1004
  %1429 = fmul fast float %1328, %1426
  %1430 = fmul fast float %1328, %1427
  %1431 = fmul fast float %1328, %1428
  %1432 = fadd fast float %1429, %1002
  %1433 = fadd fast float %1430, %1003
  %1434 = fadd fast float %1431, %1004
  br label %1435

; <label>:1435                                    ; preds = %1425, %1420, %1417
  %1436 = phi float [ %1422, %1420 ], [ %1002, %1417 ], [ %1432, %1425 ]
  %1437 = phi float [ %1423, %1420 ], [ %1003, %1417 ], [ %1433, %1425 ]
  %1438 = phi float [ %1424, %1420 ], [ %1004, %1417 ], [ %1434, %1425 ]
  %1439 = call float @dx.op.dot3.f32(i32 55, float %1286, float %1287, float %1288, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1441 = extractvalue %dx.types.CBufRet.f32 %1440, 0
  %1442 = extractvalue %dx.types.CBufRet.f32 %1440, 1
  %1443 = fmul fast float %1442, %1439
  %1444 = fadd fast float %1443, %1441
  %1445 = call float @dx.op.unary.f32(i32 7, float %1444)  ; Saturate(value)
  %1446 = bitcast float %1068 to i32
  %1447 = and i32 %1446, 65535
  %1448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1447)  ; LegacyF16ToF32(value)
  %1449 = lshr i32 %1446, 16
  %1450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1449)  ; LegacyF16ToF32(value)
  %1451 = fcmp fast oge float %1448, 0.000000e+00
  %1452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1453 = extractvalue %dx.types.CBufRet.f32 %1452, 0
  %1454 = select i1 %1451, float %1448, float %1453
  %1455 = fadd fast float %1454, %1450
  %1456 = fsub fast float %1445, %1001
  %1457 = fmul fast float %1456, %1232
  %1458 = fadd fast float %1457, %1001
  %1459 = fmul fast float %1455, %1232
  %1460 = call float @dx.op.binary.f32(i32 35, float %1000, float %1459)  ; FMax(a,b)
  %1461 = and i32 %1080, 16
  %1462 = icmp eq i32 %1461, 0
  br i1 %1462, label %1484, label %1463

; <label>:1463                                    ; preds = %1435
  %1464 = add i32 %1071, 0
  %1465 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1464, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1466 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1465, %dx.types.Handle %1245, float %1173, float %1176, float undef, float undef, i32 0, i32 0, i32 undef, float %1178, float %1180, float undef, float %1182, float %1184, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1467 = extractvalue %dx.types.ResRet.f32 %1466, 0
  %1468 = extractvalue %dx.types.ResRet.f32 %1466, 1
  %1469 = extractvalue %dx.types.ResRet.f32 %1466, 2
  %1470 = and i32 %1364, 65535
  %1471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1470)  ; LegacyF16ToF32(value)
  %1472 = fmul fast float %1467, %1065
  %1473 = fmul fast float %1468, %1066
  %1474 = fmul fast float %1469, %1067
  %1475 = and i32 %1080, 16384
  %1476 = icmp ne i32 %1475, 0
  %1477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.f32 %1477, 0
  %1479 = select i1 %1476, float %1478, float 1.000000e+00
  %1480 = fmul fast float %1479, %1471
  %1481 = fmul fast float %1472, %1480
  %1482 = fmul fast float %1473, %1480
  %1483 = fmul fast float %1474, %1480
  br label %1484

; <label>:1484                                    ; preds = %1463, %1435
  %1485 = phi float [ %1481, %1463 ], [ 0.000000e+00, %1435 ]
  %1486 = phi float [ %1482, %1463 ], [ 0.000000e+00, %1435 ]
  %1487 = phi float [ %1483, %1463 ], [ 0.000000e+00, %1435 ]
  %1488 = fsub fast float %1485, %1010
  %1489 = fsub fast float %1486, %1011
  %1490 = fsub fast float %1487, %1012
  %1491 = fmul fast float %1488, %1232
  %1492 = fmul fast float %1489, %1232
  %1493 = fmul fast float %1490, %1232
  %1494 = fadd fast float %1491, %1010
  %1495 = fadd fast float %1492, %1011
  %1496 = fadd fast float %1493, %1012
  br label %1129

; <label>:1497                                    ; preds = %1129
  br label %1498

; <label>:1498                                    ; preds = %1497, %893
  %1499 = phi float [ 0.000000e+00, %893 ], [ %1130, %1497 ]
  %1500 = phi float [ %915, %893 ], [ %1131, %1497 ]
  %1501 = phi float [ %913, %893 ], [ %1132, %1497 ]
  %1502 = phi float [ %905, %893 ], [ %1133, %1497 ]
  %1503 = phi float [ %906, %893 ], [ %1134, %1497 ]
  %1504 = phi float [ %907, %893 ], [ %1135, %1497 ]
  %1505 = phi float [ 0.000000e+00, %893 ], [ %1136, %1497 ]
  %1506 = phi float [ 0.000000e+00, %893 ], [ %1137, %1497 ]
  %1507 = phi float [ %902, %893 ], [ %1138, %1497 ]
  %1508 = phi float [ %903, %893 ], [ %1139, %1497 ]
  %1509 = phi float [ %904, %893 ], [ %1140, %1497 ]
  %1510 = phi float [ %899, %893 ], [ %1141, %1497 ]
  %1511 = phi float [ %900, %893 ], [ %1142, %1497 ]
  %1512 = phi float [ %901, %893 ], [ %1143, %1497 ]
  %1513 = phi float [ %941, %893 ], [ %1144, %1497 ]
  %1514 = phi float [ %942, %893 ], [ %1145, %1497 ]
  %1515 = phi float [ %943, %893 ], [ %1146, %1497 ]
  %1516 = phi float [ %911, %893 ], [ %1147, %1497 ]
  %1517 = phi float [ %910, %893 ], [ %1148, %1497 ]
  %1518 = phi float [ 0.000000e+00, %893 ], [ %1149, %1497 ]
  %1519 = phi float [ %908, %893 ], [ %1150, %1497 ]
  %1520 = phi float [ %896, %893 ], [ %1151, %1497 ]
  %1521 = phi float [ %897, %893 ], [ %1152, %1497 ]
  %1522 = phi float [ %898, %893 ], [ %1153, %1497 ]
  %1523 = call float @dx.op.dot3.f32(i32 55, float %1513, float %1514, float %1515, float %1513, float %1514, float %1515)  ; Dot3(ax,ay,az,bx,by,bz)
  %1524 = call float @dx.op.unary.f32(i32 25, float %1523)  ; Rsqrt(value)
  %1525 = fmul fast float %1524, %1513
  %1526 = fmul fast float %1524, %1514
  %1527 = fmul fast float %1524, %1515
  %1528 = fadd fast float %1518, %909
  %1529 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1530 = call float @dx.op.dot3.f32(i32 55, float %1525, float %1526, float %1527, float %1525, float %1526, float %1527)  ; Dot3(ax,ay,az,bx,by,bz)
  %1531 = call float @dx.op.unary.f32(i32 25, float %1530)  ; Rsqrt(value)
  %1532 = fmul fast float %1531, %1525
  %1533 = fmul fast float %1531, %1526
  %1534 = fmul fast float %1531, %1527
  %1535 = fadd fast float %1519, 0xBFB99999A0000000
  %1536 = call float @dx.op.unary.f32(i32 7, float %1535)  ; Saturate(value)
  %1537 = fmul fast float %1536, 0x3FF1C71C80000000
  %1538 = call float @dx.op.binary.f32(i32 36, float %1519, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1539 = fsub fast float 1.000000e+00, %1537
  %1540 = call float @dx.op.unary.f32(i32 7, float %1539)  ; Saturate(value)
  %1541 = fmul fast float %1540, %1520
  %1542 = fmul fast float %1540, %1521
  %1543 = fmul fast float %1540, %1522
  %1544 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  %1545 = call float @dx.op.unary.f32(i32 7, float %1542)  ; Saturate(value)
  %1546 = call float @dx.op.unary.f32(i32 7, float %1543)  ; Saturate(value)
  %1547 = fmul fast float %1537, %1520
  %1548 = fmul fast float %1537, %1521
  %1549 = fmul fast float %1537, %1522
  %1550 = fadd fast float %1547, %1538
  %1551 = fadd fast float %1548, %1538
  %1552 = fadd fast float %1549, %1538
  %1553 = call float @dx.op.unary.f32(i32 7, float %1550)  ; Saturate(value)
  %1554 = call float @dx.op.unary.f32(i32 7, float %1551)  ; Saturate(value)
  %1555 = call float @dx.op.unary.f32(i32 7, float %1552)  ; Saturate(value)
  %1556 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = and i32 %1558, 1
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1575, label %1561

; <label>:1561                                    ; preds = %1498
  %1562 = call float @dx.op.binary.f32(i32 35, float %1545, float %1546)  ; FMax(a,b)
  %1563 = call float @dx.op.binary.f32(i32 35, float %1544, float %1562)  ; FMax(a,b)
  %1564 = fcmp fast ogt float %1563, 0.000000e+00
  %1565 = bitcast float %1563 to i32
  %1566 = sub nsw i32 2129859010, %1565
  %1567 = bitcast i32 %1566 to float
  %1568 = select i1 %1564, float %1567, float 0.000000e+00
  %1569 = fmul fast float %1544, %1507
  %1570 = fmul fast float %1545, %1508
  %1571 = fmul fast float %1546, %1509
  %1572 = fmul fast float %1569, %1568
  %1573 = fmul fast float %1570, %1568
  %1574 = fmul fast float %1571, %1568
  br label %1575

; <label>:1575                                    ; preds = %1561, %1498
  %1576 = phi float [ %1572, %1561 ], [ %1507, %1498 ]
  %1577 = phi float [ %1573, %1561 ], [ %1508, %1498 ]
  %1578 = phi float [ %1574, %1561 ], [ %1509, %1498 ]
  %1579 = call float @dx.op.binary.f32(i32 36, float %1502, float 1.270000e+02)  ; FMin(a,b)
  %1580 = call float @dx.op.binary.f32(i32 36, float %1503, float 1.270000e+02)  ; FMin(a,b)
  %1581 = call float @dx.op.binary.f32(i32 36, float %1504, float 1.270000e+02)  ; FMin(a,b)
  %1582 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1583 = extractvalue %dx.types.CBufRet.i32 %1582, 3
  %1584 = and i32 %1583, 8
  %1585 = icmp ne i32 %1584, 0
  %1586 = call float @dx.op.binary.f32(i32 35, float %1544, float %1520)  ; FMax(a,b)
  %1587 = call float @dx.op.binary.f32(i32 35, float %1545, float %1520)  ; FMax(a,b)
  %1588 = call float @dx.op.binary.f32(i32 35, float %1546, float %1520)  ; FMax(a,b)
  %1589 = call float @dx.op.dot3.f32(i32 55, float %1544, float %1545, float %1546, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1590 = select i1 %211, float %1520, float %1544
  %1591 = select i1 %211, float %1589, float %1545
  %1592 = select i1 %211, float 1.000000e+00, float %1546
  %1593 = select i1 %1585, float %1586, float %1590
  %1594 = select i1 %1585, float %1587, float %1591
  %1595 = select i1 %1585, float %1588, float %1592
  %1596 = call float @dx.op.dot3.f32(i32 55, float %1576, float %1577, float %1578, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1597 = select i1 %211, float %1596, float %1576
  %1598 = select i1 %211, float %1596, float %1577
  %1599 = select i1 %211, float %1596, float %1578
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = add i32 %1601, 0
  %1603 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1602, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1604 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1603, %dx.types.Handle %91, float %77, float %78, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1605 = extractvalue %dx.types.ResRet.f32 %1604, 0
  %1606 = extractvalue %dx.types.ResRet.f32 %1604, 1
  %1607 = extractvalue %dx.types.ResRet.f32 %1604, 2
  %1608 = extractvalue %dx.types.ResRet.f32 %1604, 3
  %1609 = fmul fast float %1605, 2.000000e+00
  %1610 = fadd fast float %1609, -1.000000e+00
  %1611 = fmul fast float %1606, 2.000000e+00
  %1612 = fadd fast float %1611, -1.000000e+00
  %1613 = fmul fast float %1610, %100
  %1614 = fmul fast float %1610, %101
  %1615 = fmul fast float %1610, %102
  %1616 = fmul fast float %1612, %113
  %1617 = fmul fast float %1612, %114
  %1618 = fmul fast float %1612, %115
  %1619 = fadd fast float %1613, %1616
  %1620 = fadd fast float %1614, %1617
  %1621 = fadd fast float %1615, %1618
  %1622 = call float @dx.op.dot3.f32(i32 55, float %1619, float %1620, float %1621, float %1619, float %1620, float %1621)  ; Dot3(ax,ay,az,bx,by,bz)
  %1623 = call float @dx.op.unary.f32(i32 25, float %1622)  ; Rsqrt(value)
  %1624 = fmul fast float %1619, %1623
  %1625 = fmul fast float %1620, %1623
  %1626 = fmul fast float %1621, %1623
  %1627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1628 = extractvalue %dx.types.ResRet.i32 %1627, 0
  %1629 = bitcast i32 %1628 to float
  %1630 = fmul fast float %1629, %1607
  %1631 = call float @dx.op.unary.f32(i32 7, float %1630)  ; Saturate(value)
  %1632 = extractvalue %dx.types.ResRet.i32 %1627, 1
  %1633 = bitcast i32 %1632 to float
  %1634 = fmul fast float %1633, %1608
  %1635 = fmul fast float %1634, %1532
  %1636 = fmul fast float %1634, %1533
  %1637 = fmul fast float %1634, %1534
  %1638 = fadd fast float %1635, %1624
  %1639 = fadd fast float %1636, %1625
  %1640 = fadd fast float %1637, %1626
  %1641 = call float @dx.op.dot3.f32(i32 55, float %1638, float %1639, float %1640, float %1638, float %1639, float %1640)  ; Dot3(ax,ay,az,bx,by,bz)
  %1642 = call float @dx.op.unary.f32(i32 25, float %1641)  ; Rsqrt(value)
  %1643 = fmul fast float %1638, %1642
  %1644 = fmul fast float %1639, %1642
  %1645 = fmul fast float %1640, %1642
  %1646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1647 = extractvalue %dx.types.CBufRet.f32 %1646, 0
  %1648 = extractvalue %dx.types.CBufRet.f32 %1646, 1
  %1649 = extractvalue %dx.types.CBufRet.f32 %1646, 2
  %1650 = fadd fast float %1647, %149
  %1651 = fadd fast float %1648, %150
  %1652 = fadd fast float %1649, %151
  %1653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1654 = extractvalue %dx.types.CBufRet.f32 %1653, 0
  %1655 = extractvalue %dx.types.CBufRet.f32 %1653, 1
  %1656 = fsub fast float %1650, %1654
  %1657 = fsub fast float %1651, %1655
  %1658 = fmul fast float %1656, %1656
  %1659 = fmul fast float %1657, %1657
  %1660 = fadd fast float %1658, %1659
  %1661 = call float @dx.op.unary.f32(i32 24, float %1660)  ; Sqrt(value)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1653, 2
  %1663 = fcmp fast olt float %1661, %1662
  br i1 %1663, label %1664, label %1731

; <label>:1664                                    ; preds = %1575
  %1665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1666 = extractvalue %dx.types.CBufRet.f32 %1665, 0
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 0
  %1669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1670 = extractvalue %dx.types.CBufRet.f32 %1669, 0
  %1671 = extractvalue %dx.types.CBufRet.f32 %1665, 1
  %1672 = extractvalue %dx.types.CBufRet.f32 %1667, 1
  %1673 = extractvalue %dx.types.CBufRet.f32 %1669, 1
  %1674 = extractvalue %dx.types.CBufRet.f32 %1665, 3
  %1675 = extractvalue %dx.types.CBufRet.f32 %1667, 3
  %1676 = extractvalue %dx.types.CBufRet.f32 %1669, 3
  %1677 = fadd fast float %1674, %1650
  %1678 = fadd fast float %1675, %1651
  %1679 = fadd fast float %1676, %1652
  %1680 = fmul fast float %1677, %1666
  %1681 = call float @dx.op.tertiary.f32(i32 46, float %1678, float %1668, float %1680)  ; FMad(a,b,c)
  %1682 = call float @dx.op.tertiary.f32(i32 46, float %1679, float %1670, float %1681)  ; FMad(a,b,c)
  %1683 = fmul fast float %1677, %1671
  %1684 = call float @dx.op.tertiary.f32(i32 46, float %1678, float %1672, float %1683)  ; FMad(a,b,c)
  %1685 = call float @dx.op.tertiary.f32(i32 46, float %1679, float %1673, float %1684)  ; FMad(a,b,c)
  %1686 = fsub fast float %1682, %1674
  %1687 = fsub fast float %1685, %1675
  %1688 = fsub fast float %1686, %1654
  %1689 = fadd fast float %1688, %1662
  %1690 = fsub fast float %1687, %1655
  %1691 = fadd fast float %1690, %1662
  %1692 = extractvalue %dx.types.CBufRet.f32 %1653, 3
  %1693 = fmul fast float %1689, %1692
  %1694 = fmul fast float %1691, %1692
  %1695 = call float @dx.op.unary.f32(i32 7, float %1693)  ; Saturate(value)
  %1696 = call float @dx.op.unary.f32(i32 7, float %1694)  ; Saturate(value)
  %1697 = fsub fast float 1.000000e+00, %1695
  %1698 = fsub fast float 1.000000e+00, %1696
  %1699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %50, float %1697, float %1698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1700 = extractvalue %dx.types.ResRet.f32 %1699, 0
  %1701 = fcmp fast ugt float %1700, 0.000000e+00
  br i1 %1701, label %1702, label %2005

; <label>:1702                                    ; preds = %1664
  %1703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1704 = extractvalue %dx.types.CBufRet.f32 %1703, 2
  %1705 = fmul fast float %1704, %1700
  %1706 = extractvalue %dx.types.CBufRet.f32 %1703, 3
  %1707 = fadd fast float %1706, %1705
  %1708 = extractvalue %dx.types.CBufRet.f32 %1669, 2
  %1709 = fadd fast float %1707, %1676
  %1710 = fmul fast float %1682, %1670
  %1711 = call float @dx.op.tertiary.f32(i32 46, float %1685, float %1673, float %1710)  ; FMad(a,b,c)
  %1712 = call float @dx.op.tertiary.f32(i32 46, float %1709, float %1708, float %1711)  ; FMad(a,b,c)
  %1713 = fsub fast float %1712, %1676
  %1714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1715 = extractvalue %dx.types.CBufRet.f32 %1714, 2
  %1716 = fsub fast float %1713, %1715
  %1717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %1697, float %1698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1718 = extractvalue %dx.types.ResRet.f32 %1717, 0
  %1719 = extractvalue %dx.types.ResRet.f32 %1717, 1
  %1720 = extractvalue %dx.types.ResRet.f32 %1717, 2
  %1721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %1697, float %1698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1722 = extractvalue %dx.types.ResRet.f32 %1721, 0
  %1723 = extractvalue %dx.types.ResRet.f32 %1721, 1
  %1724 = extractvalue %dx.types.ResRet.f32 %1721, 2
  %1725 = fadd fast float %1722, %1718
  %1726 = fmul fast float %1725, 0x3F847AE140000000
  %1727 = fadd fast float %1723, %1719
  %1728 = fmul fast float %1727, 0x3F847AE140000000
  %1729 = fadd fast float %1724, %1720
  %1730 = fmul fast float %1729, 0x3F847AE140000000
  br label %2005

; <label>:1731                                    ; preds = %1575
  %1732 = and i32 %187, 1
  %1733 = icmp eq i32 %1732, 0
  br i1 %1733, label %2005, label %1734

; <label>:1734                                    ; preds = %1731
  %1735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1736 = extractvalue %dx.types.CBufRet.f32 %1735, 0
  %1737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1738 = extractvalue %dx.types.CBufRet.f32 %1737, 0
  %1739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1740 = extractvalue %dx.types.CBufRet.f32 %1739, 0
  %1741 = extractvalue %dx.types.CBufRet.f32 %1735, 1
  %1742 = extractvalue %dx.types.CBufRet.f32 %1737, 1
  %1743 = extractvalue %dx.types.CBufRet.f32 %1739, 1
  %1744 = extractvalue %dx.types.CBufRet.f32 %1735, 3
  %1745 = extractvalue %dx.types.CBufRet.f32 %1737, 3
  %1746 = extractvalue %dx.types.CBufRet.f32 %1739, 3
  %1747 = fadd fast float %1744, %1650
  %1748 = fadd fast float %1745, %1651
  %1749 = fadd fast float %1746, %1652
  %1750 = fmul fast float %1747, %1736
  %1751 = call float @dx.op.tertiary.f32(i32 46, float %1748, float %1738, float %1750)  ; FMad(a,b,c)
  %1752 = call float @dx.op.tertiary.f32(i32 46, float %1749, float %1740, float %1751)  ; FMad(a,b,c)
  %1753 = fmul fast float %1747, %1741
  %1754 = call float @dx.op.tertiary.f32(i32 46, float %1748, float %1742, float %1753)  ; FMad(a,b,c)
  %1755 = call float @dx.op.tertiary.f32(i32 46, float %1749, float %1743, float %1754)  ; FMad(a,b,c)
  %1756 = fsub fast float %1752, %1744
  %1757 = fsub fast float %1755, %1745
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 0
  %1760 = extractvalue %dx.types.CBufRet.f32 %1758, 1
  %1761 = extractvalue %dx.types.CBufRet.f32 %1758, 2
  %1762 = extractvalue %dx.types.CBufRet.f32 %1758, 3
  %1763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.f32 %1763, 3
  %1765 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1766 = extractvalue %dx.types.CBufRet.i32 %1765, 0
  %1767 = extractvalue %dx.types.CBufRet.i32 %1765, 1
  %1768 = udiv i32 %1767, %1766
  %1769 = fsub fast float %1756, %1759
  %1770 = fsub fast float %1757, %1760
  %1771 = call float @dx.op.binary.f32(i32 35, float %1769, float 0.000000e+00)  ; FMax(a,b)
  %1772 = call float @dx.op.binary.f32(i32 35, float %1770, float 0.000000e+00)  ; FMax(a,b)
  %1773 = call float @dx.op.binary.f32(i32 36, float %1771, float %1761)  ; FMin(a,b)
  %1774 = call float @dx.op.binary.f32(i32 36, float %1772, float %1762)  ; FMin(a,b)
  %1775 = add i32 %1766, -1
  %1776 = add i32 %1768, -1
  %1777 = fmul fast float %1773, %1764
  %1778 = fmul fast float %1774, %1764
  %1779 = fptoui float %1777 to i32
  %1780 = fptoui float %1778 to i32
  %1781 = call i32 @dx.op.binary.i32(i32 40, i32 %1779, i32 %1775)  ; UMin(a,b)
  %1782 = call i32 @dx.op.binary.i32(i32 40, i32 %1780, i32 %1776)  ; UMin(a,b)
  %1783 = mul i32 %1782, %1766
  %1784 = add i32 %1783, %1781
  %1785 = shl i32 %1784, 2
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = icmp eq i32 %1787, -1
  br i1 %1788, label %2005, label %1789

; <label>:1789                                    ; preds = %1734
  %1790 = mul i32 %1787, 148
  %1791 = add i32 %1790, 4
  %1792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1791, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.f32 %1792, 0
  %1794 = add i32 %1790, 8
  %1795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %1796 = extractvalue %dx.types.ResRet.f32 %1795, 0
  %1797 = add i32 %1790, 36
  %1798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.f32 %1798, 0
  %1800 = add i32 %1790, 60
  %1801 = add i32 %1790, 92
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = add i32 %1790, 116
  %1805 = fsub fast float %1756, %1793
  %1806 = fsub fast float %1757, %1796
  %1807 = fmul fast float %1764, %1805
  %1808 = fmul fast float %1764, %1806
  %1809 = call float @dx.op.unary.f32(i32 7, float %1807)  ; Saturate(value)
  %1810 = call float @dx.op.unary.f32(i32 7, float %1808)  ; Saturate(value)
  %1811 = fsub fast float 1.000000e+00, %1810
  %1812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1813 = extractvalue %dx.types.CBufRet.f32 %1812, 2
  %1814 = call float @dx.op.unary.f32(i32 83, float %1809)  ; DerivCoarseX(value)
  %1815 = call float @dx.op.unary.f32(i32 83, float %1811)  ; DerivCoarseX(value)
  %1816 = call float @dx.op.unary.f32(i32 84, float %1809)  ; DerivCoarseY(value)
  %1817 = call float @dx.op.unary.f32(i32 84, float %1811)  ; DerivCoarseY(value)
  %1818 = fmul fast float %1814, %1813
  %1819 = fmul fast float %1815, %1813
  %1820 = fmul fast float %1816, %1813
  %1821 = fmul fast float %1817, %1813
  %1822 = call float @dx.op.dot2.f32(i32 54, float %1820, float %1821, float %1820, float %1821)  ; Dot2(ax,ay,bx,by)
  %1823 = call float @dx.op.dot2.f32(i32 54, float %1818, float %1819, float %1818, float %1819)  ; Dot2(ax,ay,bx,by)
  %1824 = call float @dx.op.binary.f32(i32 35, float %1823, float %1822)  ; FMax(a,b)
  %1825 = call float @dx.op.unary.f32(i32 23, float %1824)  ; Log(value)
  %1826 = fmul fast float %1825, 5.000000e-01
  %1827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1828 = extractvalue %dx.types.CBufRet.f32 %1827, 1
  %1829 = fadd fast float %1828, %1826
  %1830 = call float @dx.op.binary.f32(i32 35, float %1829, float 0.000000e+00)  ; FMax(a,b)
  %1831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1832 = extractvalue %dx.types.CBufRet.f32 %1831, 3
  %1833 = fadd fast float %1832, %1830
  %1834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1835 = extractvalue %dx.types.CBufRet.f32 %1834, 3
  %1836 = fadd fast float %1833, %1835
  %1837 = add i32 %1803, 0
  %1838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1837, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1839 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1838, i32 0)  ; GetDimensions(handle,mipLevel)
  %1840 = extractvalue %dx.types.Dimensions %1839, 0
  %1841 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1840)  ; FirstbitLo(value)
  %1842 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1843 = extractvalue %dx.types.CBufRet.i32 %1842, 1
  %1844 = sub nsw i32 %1843, %1841
  %1845 = sitofp i32 %1844 to float
  %1846 = fsub fast float %1836, %1845
  %1847 = call float @dx.op.binary.f32(i32 35, float %1846, float 0.000000e+00)  ; FMax(a,b)
  %1848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1838, %dx.types.Handle %48, float %1809, float %1811, float %1799, float undef, i32 0, i32 0, i32 undef, float %1847)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1849 = extractvalue %dx.types.ResRet.f32 %1848, 0
  %1850 = fcmp ule float %1849, 0x3FE0101020000000
  %1851 = extractvalue %dx.types.CBufRet.i32 %1842, 0
  %1852 = and i32 %1851, 128
  %1853 = icmp ne i32 %1852, 0
  %1854 = and i1 %1850, %1853
  br i1 %1854, label %2005, label %1855

; <label>:1855                                    ; preds = %1789
  %1856 = add i32 %1790, 20
  %1857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.f32 %1857, 0
  %1859 = add i32 %1790, 24
  %1860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %1861 = extractvalue %dx.types.ResRet.f32 %1860, 0
  %1862 = add i32 %1790, 40
  %1863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1862, i32 undef)  ; BufferLoad(srv,index,wot)
  %1864 = extractvalue %dx.types.ResRet.f32 %1863, 0
  %1865 = add i32 %1790, 96
  %1866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.i32 %1866, 0
  %1868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1869 = extractvalue %dx.types.CBufRet.f32 %1868, 2
  %1870 = fmul fast float %1869, %1809
  %1871 = fmul fast float %1869, %1811
  %1872 = extractvalue %dx.types.CBufRet.f32 %1868, 3
  %1873 = fadd fast float %1870, %1872
  %1874 = fadd fast float %1871, %1872
  %1875 = add i32 %1867, 0
  %1876 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1875, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1877 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1876, i32 0)  ; GetDimensions(handle,mipLevel)
  %1878 = extractvalue %dx.types.Dimensions %1877, 0
  %1879 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1878)  ; FirstbitLo(value)
  %1880 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.i32 %1880, 1
  %1882 = sub nsw i32 %1881, %1879
  %1883 = sitofp i32 %1882 to float
  %1884 = fsub fast float %1833, %1883
  %1885 = call float @dx.op.binary.f32(i32 35, float %1884, float 0.000000e+00)  ; FMax(a,b)
  %1886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1876, %dx.types.Handle %48, float %1873, float %1874, float %1864, float undef, i32 0, i32 0, i32 undef, float %1885)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1887 = extractvalue %dx.types.ResRet.f32 %1886, 0
  %1888 = fmul fast float %1887, %1858
  %1889 = fadd fast float %1888, %1861
  %1890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.f32 %1890, 0
  %1892 = extractvalue %dx.types.CBufRet.f32 %1890, 1
  %1893 = extractvalue %dx.types.CBufRet.f32 %1890, 2
  %1894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1895 = extractvalue %dx.types.CBufRet.f32 %1894, 3
  %1896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1897 = extractvalue %dx.types.CBufRet.f32 %1896, 3
  %1898 = extractvalue %dx.types.CBufRet.f32 %1890, 3
  %1899 = fadd fast float %1895, %1756
  %1900 = fadd fast float %1897, %1757
  %1901 = fadd fast float %1889, %1898
  %1902 = fmul fast float %1899, %1891
  %1903 = call float @dx.op.tertiary.f32(i32 46, float %1900, float %1892, float %1902)  ; FMad(a,b,c)
  %1904 = call float @dx.op.tertiary.f32(i32 46, float %1901, float %1893, float %1903)  ; FMad(a,b,c)
  %1905 = fsub fast float %1904, %1898
  %1906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1907 = extractvalue %dx.types.CBufRet.f32 %1906, 2
  %1908 = fsub fast float %1905, %1907
  %1909 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1910 = extractvalue %dx.types.CBufRet.i32 %1909, 0
  %1911 = call i32 @dx.op.binary.i32(i32 40, i32 %1787, i32 %1910)  ; UMin(a,b)
  %1912 = mul i32 %1911, 36
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = add i32 %1912, 4
  %1916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1917 = extractvalue %dx.types.CBufRet.f32 %1916, 0
  %1918 = fmul fast float %1917, %1809
  %1919 = fmul fast float %1917, %1811
  %1920 = extractvalue %dx.types.CBufRet.f32 %1916, 1
  %1921 = fadd fast float %1918, %1920
  %1922 = fadd fast float %1919, %1920
  %1923 = icmp eq i32 %1914, 0
  br i1 %1923, label %1992, label %1924

; <label>:1924                                    ; preds = %1855
  br label %1925

; <label>:1925                                    ; preds = %1982, %1924
  %1926 = phi float [ %1983, %1982 ], [ 0.000000e+00, %1924 ]
  %1927 = phi float [ %1984, %1982 ], [ 0.000000e+00, %1924 ]
  %1928 = phi float [ %1985, %1982 ], [ 0.000000e+00, %1924 ]
  %1929 = phi float [ %1986, %1982 ], [ 0.000000e+00, %1924 ]
  %1930 = phi float [ %1987, %1982 ], [ 0.000000e+00, %1924 ]
  %1931 = phi float [ %1988, %1982 ], [ 0.000000e+00, %1924 ]
  %1932 = phi i32 [ %1989, %1982 ], [ 0, %1924 ]
  %1933 = shl i32 %1932, 2
  %1934 = add i32 %1800, %1933
  %1935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.f32 %1935, 0
  %1937 = add i32 %1804, %1933
  %1938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1939 = extractvalue %dx.types.ResRet.i32 %1938, 0
  %1940 = add i32 %1939, 0
  %1941 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1940, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1942 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1941, i32 0)  ; GetDimensions(handle,mipLevel)
  %1943 = extractvalue %dx.types.Dimensions %1942, 0
  %1944 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1943)  ; FirstbitLo(value)
  %1945 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1946 = extractvalue %dx.types.CBufRet.i32 %1945, 1
  %1947 = sub nsw i32 %1946, %1944
  %1948 = sitofp i32 %1947 to float
  %1949 = fsub fast float %1833, %1948
  %1950 = call float @dx.op.binary.f32(i32 35, float %1949, float 0.000000e+00)  ; FMax(a,b)
  %1951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1941, %dx.types.Handle %48, float %1921, float %1922, float %1936, float undef, i32 0, i32 0, i32 undef, float %1950)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1952 = extractvalue %dx.types.ResRet.f32 %1951, 0
  %1953 = fcmp fast ogt float %1952, 0.000000e+00
  br i1 %1953, label %1954, label %1982

; <label>:1954                                    ; preds = %1925
  %1955 = add i32 %1915, %1933
  %1956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1955, i32 undef)  ; BufferLoad(srv,index,wot)
  %1957 = extractvalue %dx.types.ResRet.i32 %1956, 0
  %1958 = and i32 %1957, 32767
  %1959 = mul nuw nsw i32 %1958, 928
  %1960 = add nuw nsw i32 %1959, 48
  %1961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.f32 %1961, 0
  %1963 = extractvalue %dx.types.ResRet.f32 %1961, 1
  %1964 = extractvalue %dx.types.ResRet.f32 %1961, 2
  %1965 = add nuw nsw i32 %1959, 60
  %1966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.f32 %1966, 0
  %1968 = extractvalue %dx.types.ResRet.f32 %1966, 1
  %1969 = extractvalue %dx.types.ResRet.f32 %1966, 2
  %1970 = fmul fast float %1962, %1952
  %1971 = fmul fast float %1963, %1952
  %1972 = fmul fast float %1964, %1952
  %1973 = fadd fast float %1970, %1926
  %1974 = fadd fast float %1971, %1927
  %1975 = fadd fast float %1972, %1928
  %1976 = fmul fast float %1967, %1952
  %1977 = fmul fast float %1968, %1952
  %1978 = fmul fast float %1969, %1952
  %1979 = fadd fast float %1976, %1929
  %1980 = fadd fast float %1977, %1930
  %1981 = fadd fast float %1978, %1931
  br label %1982

; <label>:1982                                    ; preds = %1954, %1925
  %1983 = phi float [ %1973, %1954 ], [ %1926, %1925 ]
  %1984 = phi float [ %1974, %1954 ], [ %1927, %1925 ]
  %1985 = phi float [ %1975, %1954 ], [ %1928, %1925 ]
  %1986 = phi float [ %1979, %1954 ], [ %1929, %1925 ]
  %1987 = phi float [ %1980, %1954 ], [ %1930, %1925 ]
  %1988 = phi float [ %1981, %1954 ], [ %1931, %1925 ]
  %1989 = add nuw i32 %1932, 1
  %1990 = icmp eq i32 %1989, %1914
  br i1 %1990, label %1991, label %1925

; <label>:1991                                    ; preds = %1982
  br label %1992

; <label>:1992                                    ; preds = %1991, %1855
  %1993 = phi float [ 0.000000e+00, %1855 ], [ %1983, %1991 ]
  %1994 = phi float [ 0.000000e+00, %1855 ], [ %1984, %1991 ]
  %1995 = phi float [ 0.000000e+00, %1855 ], [ %1985, %1991 ]
  %1996 = phi float [ 0.000000e+00, %1855 ], [ %1986, %1991 ]
  %1997 = phi float [ 0.000000e+00, %1855 ], [ %1987, %1991 ]
  %1998 = phi float [ 0.000000e+00, %1855 ], [ %1988, %1991 ]
  %1999 = fadd fast float %1996, %1993
  %2000 = fmul fast float %1999, 0x3F847AE140000000
  %2001 = fadd fast float %1997, %1994
  %2002 = fmul fast float %2001, 0x3F847AE140000000
  %2003 = fadd fast float %1998, %1995
  %2004 = fmul fast float %2003, 0x3F847AE140000000
  br label %2005

; <label>:2005                                    ; preds = %1992, %1789, %1734, %1731, %1702, %1664
  %2006 = phi float [ %1716, %1702 ], [ -1.310720e+05, %1664 ], [ %1908, %1992 ], [ -1.310720e+05, %1734 ], [ -1.310720e+05, %1789 ], [ -1.310720e+05, %1731 ]
  %2007 = phi float [ %1726, %1702 ], [ 0.000000e+00, %1664 ], [ %2000, %1992 ], [ 0.000000e+00, %1734 ], [ 0.000000e+00, %1789 ], [ 0.000000e+00, %1731 ]
  %2008 = phi float [ %1728, %1702 ], [ 0.000000e+00, %1664 ], [ %2002, %1992 ], [ 0.000000e+00, %1734 ], [ 0.000000e+00, %1789 ], [ 0.000000e+00, %1731 ]
  %2009 = phi float [ %1730, %1702 ], [ 0.000000e+00, %1664 ], [ %2004, %1992 ], [ 0.000000e+00, %1734 ], [ 0.000000e+00, %1789 ], [ 0.000000e+00, %1731 ]
  %2010 = phi i1 [ true, %1702 ], [ false, %1664 ], [ true, %1992 ], [ false, %1734 ], [ false, %1789 ], [ false, %1731 ]
  %2011 = and i32 %187, 3
  %2012 = icmp eq i32 %2011, 1
  %2013 = select i1 %2012, float 1.000000e+00, float 0.000000e+00
  %2014 = fsub fast float %2006, %151
  %2015 = call float @dx.op.unary.f32(i32 7, float %2014)  ; Saturate(value)
  %2016 = select i1 %2010, float %2015, float 1.000000e+00
  %2017 = fmul fast float %2016, %2013
  %2018 = icmp eq i32 %2011, 3
  %2019 = select i1 %2018, float 1.000000e+00, float %2017
  %2020 = call float @dx.op.binary.f32(i32 35, float %1499, float %2019)  ; FMax(a,b)
  %2021 = call float @dx.op.unary.f32(i32 7, float %2020)  ; Saturate(value)
  %2022 = fcmp fast une float %2021, 0.000000e+00
  %2023 = call float @dx.op.dot3.f32(i32 55, float %149, float %150, float %151, float %149, float %150, float %151)  ; Dot3(ax,ay,az,bx,by,bz)
  %2024 = call float @dx.op.unary.f32(i32 25, float %2023)  ; Rsqrt(value)
  br i1 %2022, label %2032, label %2025

; <label>:2025                                    ; preds = %2005
  %2026 = fmul fast float %2024, %149
  %2027 = fmul fast float %2024, %150
  %2028 = fmul fast float %2024, %151
  %2029 = fsub fast float -0.000000e+00, %2026
  %2030 = fsub fast float -0.000000e+00, %2027
  %2031 = fsub fast float -0.000000e+00, %2028
  br label %2200

; <label>:2032                                    ; preds = %2005
  %2033 = fmul fast float %149, %2024
  %2034 = fsub fast float -0.000000e+00, %2033
  %2035 = fmul fast float %150, %2024
  %2036 = fsub fast float -0.000000e+00, %2035
  %2037 = fmul fast float %151, %2024
  %2038 = fsub fast float -0.000000e+00, %2037
  %2039 = call float @dx.op.dot3.f32(i32 55, float %2034, float %2036, float %2038, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %2040 = fmul fast float %2021, 2.500000e+00
  %2041 = call float @dx.op.unary.f32(i32 7, float %2040)  ; Saturate(value)
  %2042 = fmul fast float %2021, 0x4013FFFFE0000000
  %2043 = fadd fast float %2042, 0xBFFFFFFFE0000000
  %2044 = call float @dx.op.unary.f32(i32 7, float %2043)  ; Saturate(value)
  %2045 = fmul fast float %2021, 0x4004000020000000
  %2046 = fadd fast float %2045, 0xBFF8000040000000
  %2047 = call float @dx.op.unary.f32(i32 7, float %2046)  ; Saturate(value)
  %2048 = call float @dx.op.unary.f32(i32 7, float %2041)  ; Saturate(value)
  %2049 = fmul fast float %1535, 1.000000e+01
  %2050 = call float @dx.op.unary.f32(i32 7, float %2049)  ; Saturate(value)
  %2051 = fmul fast float %2050, 2.000000e+00
  %2052 = fsub fast float 3.000000e+00, %2051
  %2053 = fmul fast float %2050, %2050
  %2054 = fmul fast float %2053, %2052
  %2055 = fsub fast float 1.000000e+00, %2054
  %2056 = fsub fast float 0x3FE3333340000000, %1556
  %2057 = fmul fast float %2056, 0x400AAAAAA0000000
  %2058 = call float @dx.op.unary.f32(i32 7, float %2057)  ; Saturate(value)
  %2059 = fmul fast float %2055, %2058
  %2060 = fmul fast float %1593, 0x3FEA2B8620000000
  %2061 = fmul fast float %1594, 0x3FEA2B8620000000
  %2062 = fmul fast float %1595, 0x3FEA2B8620000000
  %2063 = fadd fast float %2060, 0x3FC81DFBA0000000
  %2064 = fmul fast float %2063, %1593
  %2065 = fadd fast float %2064, 0x3F910E6020000000
  %2066 = fadd fast float %2061, 0x3FC81DFBA0000000
  %2067 = fmul fast float %2066, %1594
  %2068 = fadd fast float %2067, 0x3F910E6020000000
  %2069 = fadd fast float %2062, 0x3FC81DFBA0000000
  %2070 = fmul fast float %2069, %1595
  %2071 = fadd fast float %2070, 0x3F910E6020000000
  %2072 = call float @dx.op.unary.f32(i32 7, float %2065)  ; Saturate(value)
  %2073 = call float @dx.op.unary.f32(i32 7, float %2068)  ; Saturate(value)
  %2074 = call float @dx.op.unary.f32(i32 7, float %2071)  ; Saturate(value)
  %2075 = fsub fast float %2072, %1593
  %2076 = fsub fast float %2073, %1594
  %2077 = fsub fast float %2074, %1595
  %2078 = fmul fast float %2075, %2048
  %2079 = fmul fast float %2078, %2059
  %2080 = fmul fast float %2076, %2048
  %2081 = fmul fast float %2080, %2059
  %2082 = fmul fast float %2077, %2048
  %2083 = fmul fast float %2082, %2059
  %2084 = fadd fast float %2079, %1593
  %2085 = fadd fast float %2081, %1594
  %2086 = fadd fast float %2083, %1595
  %2087 = fmul fast float %1516, %1516
  %2088 = fmul fast float %2087, %2087
  %2089 = fadd fast float %2044, 1.000000e+00
  %2090 = fsub fast float %2089, %2059
  %2091 = call float @dx.op.unary.f32(i32 7, float %2090)  ; Saturate(value)
  %2092 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2093 = call float @dx.op.unary.f32(i32 7, float %2092)  ; Saturate(value)
  %2094 = fsub fast float 1.000000e+00, %2088
  %2095 = call float @dx.op.binary.f32(i32 36, float %2091, float %2094)  ; FMin(a,b)
  %2096 = call float @dx.op.unary.f32(i32 7, float %2047)  ; Saturate(value)
  %2097 = call float @dx.op.binary.f32(i32 35, float %2095, float %2096)  ; FMax(a,b)
  %2098 = fadd fast float %2093, 0xBFE4CCCCC0000000
  %2099 = fmul fast float %2098, 0x4006DB6DA0000000
  %2100 = call float @dx.op.unary.f32(i32 7, float %2099)  ; Saturate(value)
  %2101 = fmul fast float %2100, 2.000000e+00
  %2102 = fsub fast float 3.000000e+00, %2101
  %2103 = bitcast float %1553 to i32
  %2104 = ashr i32 %2103, 1
  %2105 = add nsw i32 %2104, 532487669
  %2106 = bitcast i32 %2105 to float
  %2107 = fsub fast float 1.000000e+00, %2106
  %2108 = bitcast float %2107 to i32
  %2109 = sub nsw i32 2129859010, %2108
  %2110 = bitcast i32 %2109 to float
  %2111 = fmul fast float %2110, 2.000000e+00
  %2112 = bitcast float %1554 to i32
  %2113 = ashr i32 %2112, 1
  %2114 = add nsw i32 %2113, 532487669
  %2115 = bitcast i32 %2114 to float
  %2116 = fsub fast float 1.000000e+00, %2115
  %2117 = bitcast float %2116 to i32
  %2118 = sub nsw i32 2129859010, %2117
  %2119 = bitcast i32 %2118 to float
  %2120 = fmul fast float %2119, 2.000000e+00
  %2121 = bitcast float %1555 to i32
  %2122 = ashr i32 %2121, 1
  %2123 = add nsw i32 %2122, 532487669
  %2124 = bitcast i32 %2123 to float
  %2125 = fsub fast float 1.000000e+00, %2124
  %2126 = bitcast float %2125 to i32
  %2127 = sub nsw i32 2129859010, %2126
  %2128 = bitcast i32 %2127 to float
  %2129 = fmul fast float %2128, 2.000000e+00
  %2130 = fsub fast float 0x4002A9FBE0000000, %2111
  %2131 = fadd fast float %2111, 0x3FD54FDF00000000
  %2132 = bitcast float %2131 to i32
  %2133 = sub nsw i32 2129859010, %2132
  %2134 = bitcast i32 %2133 to float
  %2135 = fmul fast float %2134, %2130
  %2136 = fmul fast float %2135, %2135
  %2137 = fsub fast float 0x4002A9FBE0000000, %2120
  %2138 = fadd fast float %2120, 0x3FD54FDF00000000
  %2139 = bitcast float %2138 to i32
  %2140 = sub nsw i32 2129859010, %2139
  %2141 = bitcast i32 %2140 to float
  %2142 = fmul fast float %2141, %2137
  %2143 = fmul fast float %2142, %2142
  %2144 = fsub fast float 0x4002A9FBE0000000, %2129
  %2145 = fadd fast float %2129, 0x3FD54FDF00000000
  %2146 = bitcast float %2145 to i32
  %2147 = sub nsw i32 2129859010, %2146
  %2148 = bitcast i32 %2147 to float
  %2149 = fmul fast float %2148, %2144
  %2150 = fmul fast float %2149, %2149
  %2151 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2136)  ; FMax(a,b)
  %2152 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2143)  ; FMax(a,b)
  %2153 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2150)  ; FMax(a,b)
  %2154 = fsub fast float 1.000000e+00, %2039
  %2155 = fadd fast float %2154, %2055
  %2156 = call float @dx.op.unary.f32(i32 7, float %2155)  ; Saturate(value)
  %2157 = fsub fast float 1.000000e+00, %2019
  %2158 = fmul fast float %2097, %2157
  %2159 = fmul fast float %2100, %2100
  %2160 = fmul fast float %2159, %2158
  %2161 = fmul fast float %2160, %2102
  %2162 = fmul fast float %2157, 0xBFE99999A0000000
  %2163 = fmul fast float %2162, %2048
  %2164 = fmul fast float %2163, %2059
  %2165 = fadd fast float %2164, 1.000000e+00
  %2166 = fadd fast float %1556, -1.000000e+00
  %2167 = fmul fast float %2165, %2166
  %2168 = fadd fast float %2167, 1.000000e+00
  %2169 = fsub fast float %2151, %1553
  %2170 = fsub fast float %2152, %1554
  %2171 = fsub fast float %2153, %1555
  %2172 = fmul fast float %2161, %2169
  %2173 = fmul fast float %2161, %2170
  %2174 = fmul fast float %2161, %2171
  %2175 = fadd fast float %2172, %1553
  %2176 = fadd fast float %2173, %1554
  %2177 = fadd fast float %2174, %1555
  %2178 = fsub fast float %97, %1532
  %2179 = fsub fast float %98, %1533
  %2180 = fsub fast float %99, %1534
  %2181 = fmul fast float %2161, %2178
  %2182 = fmul fast float %2161, %2179
  %2183 = fmul fast float %2161, %2180
  %2184 = fadd fast float %2181, %1532
  %2185 = fadd fast float %2182, %1533
  %2186 = fadd fast float %2183, %1534
  %2187 = fmul fast float %2161, %2156
  %2188 = call float @dx.op.unary.f32(i32 7, float %2168)  ; Saturate(value)
  %2189 = fsub fast float 1.000000e+00, %2188
  %2190 = fmul fast float %2187, %2189
  %2191 = fadd fast float %2190, %2188
  %2192 = fsub fast float 1.000000e+00, %1516
  %2193 = fmul fast float %2161, %2192
  %2194 = fadd fast float %2193, %1516
  %2195 = call float @dx.op.dot3.f32(i32 55, float %2184, float %2185, float %2186, float %2184, float %2185, float %2186)  ; Dot3(ax,ay,az,bx,by,bz)
  %2196 = call float @dx.op.unary.f32(i32 25, float %2195)  ; Rsqrt(value)
  %2197 = fmul fast float %2184, %2196
  %2198 = fmul fast float %2185, %2196
  %2199 = fmul fast float %2186, %2196
  br label %2200

; <label>:2200                                    ; preds = %2032, %2025
  %2201 = phi float [ %2031, %2025 ], [ %2038, %2032 ]
  %2202 = phi float [ %2030, %2025 ], [ %2036, %2032 ]
  %2203 = phi float [ %2029, %2025 ], [ %2034, %2032 ]
  %2204 = phi float [ %2028, %2025 ], [ %2037, %2032 ]
  %2205 = phi float [ %2027, %2025 ], [ %2035, %2032 ]
  %2206 = phi float [ %2026, %2025 ], [ %2033, %2032 ]
  %2207 = phi float [ %1593, %2025 ], [ %2084, %2032 ]
  %2208 = phi float [ %1594, %2025 ], [ %2085, %2032 ]
  %2209 = phi float [ %1595, %2025 ], [ %2086, %2032 ]
  %2210 = phi float [ %1553, %2025 ], [ %2175, %2032 ]
  %2211 = phi float [ %1554, %2025 ], [ %2176, %2032 ]
  %2212 = phi float [ %1555, %2025 ], [ %2177, %2032 ]
  %2213 = phi float [ %1532, %2025 ], [ %2197, %2032 ]
  %2214 = phi float [ %1533, %2025 ], [ %2198, %2032 ]
  %2215 = phi float [ %1534, %2025 ], [ %2199, %2032 ]
  %2216 = phi float [ %1556, %2025 ], [ %2191, %2032 ]
  %2217 = phi float [ %1516, %2025 ], [ %2194, %2032 ]
  %2218 = fsub fast float -0.000000e+00, %2215
  %2219 = fsub fast float -0.000000e+00, %2214
  %2220 = fsub fast float -0.000000e+00, %2213
  %2221 = fsub fast float -0.000000e+00, %151
  %2222 = select i1 %211, float 0.000000e+00, float %2212
  %2223 = call float @dx.op.dot3.f32(i32 55, float %2213, float %2214, float %2215, float %2203, float %2202, float %2201)  ; Dot3(ax,ay,az,bx,by,bz)
  %2224 = call float @dx.op.unary.f32(i32 7, float %2223)  ; Saturate(value)
  %2225 = call float @dx.op.dot3.f32(i32 55, float %2206, float %2205, float %2204, float %2213, float %2214, float %2215)  ; Dot3(ax,ay,az,bx,by,bz)
  %2226 = fmul fast float %2225, 2.000000e+00
  %2227 = fmul fast float %2226, %2213
  %2228 = fmul fast float %2226, %2214
  %2229 = fmul fast float %2226, %2215
  %2230 = fsub fast float %2206, %2227
  %2231 = fsub fast float %2205, %2228
  %2232 = fsub fast float %2204, %2229
  %2233 = fmul fast float %2205, %1645
  %2234 = fmul fast float %2204, %1644
  %2235 = fsub fast float %2233, %2234
  %2236 = fmul fast float %2204, %1643
  %2237 = fmul fast float %2206, %1645
  %2238 = fsub fast float %2236, %2237
  %2239 = fmul fast float %2206, %1644
  %2240 = fmul fast float %2205, %1643
  %2241 = fsub fast float %2239, %2240
  %2242 = fmul fast float %2238, %1645
  %2243 = fmul fast float %2241, %1644
  %2244 = fmul fast float %2241, %1643
  %2245 = fmul fast float %2235, %1645
  %2246 = fmul fast float %2235, %1644
  %2247 = fmul fast float %2238, %1643
  %2248 = fsub fast float %2220, %2243
  %2249 = fadd fast float %2248, %2242
  %2250 = fsub fast float %2219, %2245
  %2251 = fadd fast float %2250, %2244
  %2252 = fsub fast float %2218, %2247
  %2253 = fadd fast float %2252, %2246
  %2254 = fmul fast float %2249, %1631
  %2255 = fmul fast float %2251, %1631
  %2256 = fmul fast float %2253, %1631
  %2257 = fadd fast float %2254, %2213
  %2258 = fadd fast float %2255, %2214
  %2259 = fadd fast float %2256, %2215
  %2260 = call float @dx.op.dot3.f32(i32 55, float %2257, float %2258, float %2259, float %2257, float %2258, float %2259)  ; Dot3(ax,ay,az,bx,by,bz)
  %2261 = call float @dx.op.unary.f32(i32 25, float %2260)  ; Rsqrt(value)
  %2262 = fmul fast float %2257, %2261
  %2263 = fmul fast float %2258, %2261
  %2264 = fmul fast float %2259, %2261
  %2265 = call float @dx.op.dot3.f32(i32 55, float %2206, float %2205, float %2204, float %2262, float %2263, float %2264)  ; Dot3(ax,ay,az,bx,by,bz)
  %2266 = fmul fast float %2265, 2.000000e+00
  %2267 = fmul fast float %2262, %2266
  %2268 = fmul fast float %2263, %2266
  %2269 = fmul fast float %2264, %2266
  %2270 = fsub fast float %2206, %2267
  %2271 = fsub fast float %2205, %2268
  %2272 = fsub fast float %2204, %2269
  %2273 = call float @dx.op.binary.f32(i32 36, float %2217, float 1.000000e+00)  ; FMin(a,b)
  %2274 = fsub fast float 1.000000e+00, %2273
  %2275 = bitcast float %2274 to i32
  %2276 = ashr i32 %2275, 1
  %2277 = add nsw i32 %2276, 532487669
  %2278 = bitcast i32 %2277 to float
  %2279 = fsub fast float 1.000000e+00, %2216
  %2280 = call float @dx.op.binary.f32(i32 35, float %2279, float 0x3F847AE140000000)  ; FMax(a,b)
  %2281 = fmul fast float %2280, %2280
  %2282 = fmul fast float %2281, %2281
  %2283 = call float @dx.op.unary.f32(i32 7, float %2224)  ; Saturate(value)
  %2284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %2278, float %2282, float %2283, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2285 = extractvalue %dx.types.ResRet.f32 %2284, 0
  %2286 = fsub fast float 1.000000e+00, %2217
  %2287 = bitcast float %2286 to i32
  %2288 = sub nsw i32 2129859010, %2287
  %2289 = call float @dx.op.dot3.f32(i32 55, float %66, float %62, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2290 = fmul fast float %2289, 0x3FD20DD760000000
  %2291 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  %2292 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %2293 = fcmp fast oeq float %2292, 0.000000e+00
  %2294 = fcmp fast oeq float %2291, 0.000000e+00
  %2295 = or i1 %2294, %2293
  br i1 %2295, label %2325, label %2296

; <label>:2296                                    ; preds = %2200
  %2297 = fsub fast float -0.000000e+00, %69
  %2298 = fsub fast float -0.000000e+00, %67
  %2299 = call float @dx.op.unary.f32(i32 24, float %2292)  ; Sqrt(value)
  %2300 = fdiv fast float %2299, %2291
  %2301 = fcmp fast ogt float %2300, 0x3FFB6F8900000000
  %2302 = select i1 %2301, float 0x3FFB6F8900000000, float %2300
  %2303 = fmul fast float %2302, 0x3FE8A23460000000
  %2304 = call float @dx.op.unary.f32(i32 7, float %2303)  ; Saturate(value)
  %2305 = call float @dx.op.binary.f32(i32 35, float %2302, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2306 = fmul fast float %2304, %2291
  %2307 = fmul fast float %2305, 0x3FF279A740000000
  %2308 = fadd fast float %2307, -1.000000e+00
  %2309 = call float @dx.op.dot3.f32(i32 55, float %2297, float %2298, float %68, float %2297, float %2298, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %2310 = call float @dx.op.unary.f32(i32 25, float %2309)  ; Rsqrt(value)
  %2311 = fmul fast float %2310, %2297
  %2312 = fmul fast float %2310, %2298
  %2313 = fmul fast float %2310, %68
  %2314 = fmul fast float %2308, %2308
  %2315 = fsub fast float 1.000000e+00, %2314
  %2316 = fmul fast float %2305, 0x40005F8BE0000000
  %2317 = fsub fast float 0x400C5BF8A0000000, %2316
  %2318 = fdiv fast float %2306, %2317
  %2319 = fmul fast float %2318, 0x3FEE31C3C0000000
  %2320 = fmul fast float %2319, %2315
  %2321 = fmul fast float %2305, 0x3FDACB7480000000
  %2322 = fadd fast float %2321, 0xBFD7347680000000
  %2323 = fmul fast float %2322, %2318
  %2324 = fmul fast float %2323, %2315
  br label %2325

; <label>:2325                                    ; preds = %2296, %2200
  %2326 = phi float [ %2311, %2296 ], [ 0.000000e+00, %2200 ]
  %2327 = phi float [ %2312, %2296 ], [ 0.000000e+00, %2200 ]
  %2328 = phi float [ %2313, %2296 ], [ 0.000000e+00, %2200 ]
  %2329 = phi float [ %2320, %2296 ], [ 0.000000e+00, %2200 ]
  %2330 = phi float [ %2324, %2296 ], [ 0.000000e+00, %2200 ]
  %2331 = call float @dx.op.dot3.f32(i32 55, float %2326, float %2327, float %2328, float %2213, float %2214, float %2215)  ; Dot3(ax,ay,az,bx,by,bz)
  %2332 = fmul fast float %2331, 0x3FDF454380000000
  %2333 = fmul fast float %2331, %2331
  %2334 = fmul fast float %2333, 0x3FEE471020000000
  %2335 = fadd fast float %2334, 0xBFD42F6020000000
  %2336 = fmul fast float %2291, 0x3FD20DD760000000
  %2337 = fmul fast float %2335, %2330
  %2338 = fadd fast float %2337, %2336
  %2339 = fmul fast float %2332, %2329
  %2340 = fadd fast float %2338, %2339
  %2341 = fsub fast float %2338, %2339
  %2342 = call float @dx.op.dot3.f32(i32 55, float %2326, float %2327, float %2328, float %2270, float %2271, float %2272)  ; Dot3(ax,ay,az,bx,by,bz)
  %2343 = fmul fast float %2342, 0x3FDF454380000000
  %2344 = fmul fast float %2342, %2342
  %2345 = fmul fast float %2344, 0x3FEE471020000000
  %2346 = fadd fast float %2345, 0xBFD42F6020000000
  %2347 = call float @dx.op.dot3.f32(i32 55, float %2291, float %2329, float %2330, float 0x3FD20DD760000000, float %2343, float %2346)  ; Dot3(ax,ay,az,bx,by,bz)
  %2348 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %2349 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %2350 = fcmp fast oeq float %2349, 0.000000e+00
  %2351 = fcmp fast oeq float %2348, 0.000000e+00
  %2352 = or i1 %2351, %2350
  br i1 %2352, label %2382, label %2353

; <label>:2353                                    ; preds = %2325
  %2354 = fsub fast float -0.000000e+00, %65
  %2355 = fsub fast float -0.000000e+00, %63
  %2356 = call float @dx.op.unary.f32(i32 24, float %2349)  ; Sqrt(value)
  %2357 = fdiv fast float %2356, %2348
  %2358 = fcmp fast ogt float %2357, 0x3FFB6F8900000000
  %2359 = select i1 %2358, float 0x3FFB6F8900000000, float %2357
  %2360 = fmul fast float %2359, 0x3FE8A23460000000
  %2361 = call float @dx.op.unary.f32(i32 7, float %2360)  ; Saturate(value)
  %2362 = call float @dx.op.binary.f32(i32 35, float %2359, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2363 = fmul fast float %2361, %2348
  %2364 = fmul fast float %2362, 0x3FF279A740000000
  %2365 = fadd fast float %2364, -1.000000e+00
  %2366 = call float @dx.op.dot3.f32(i32 55, float %2354, float %2355, float %64, float %2354, float %2355, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %2367 = call float @dx.op.unary.f32(i32 25, float %2366)  ; Rsqrt(value)
  %2368 = fmul fast float %2367, %2354
  %2369 = fmul fast float %2367, %2355
  %2370 = fmul fast float %2367, %64
  %2371 = fmul fast float %2365, %2365
  %2372 = fsub fast float 1.000000e+00, %2371
  %2373 = fmul fast float %2362, 0x40005F8BE0000000
  %2374 = fsub fast float 0x400C5BF8A0000000, %2373
  %2375 = fdiv fast float %2363, %2374
  %2376 = fmul fast float %2375, 0x3FEE31C3C0000000
  %2377 = fmul fast float %2376, %2372
  %2378 = fmul fast float %2362, 0x3FDACB7480000000
  %2379 = fadd fast float %2378, 0xBFD7347680000000
  %2380 = fmul fast float %2379, %2375
  %2381 = fmul fast float %2380, %2372
  br label %2382

; <label>:2382                                    ; preds = %2353, %2325
  %2383 = phi float [ %2368, %2353 ], [ 0.000000e+00, %2325 ]
  %2384 = phi float [ %2369, %2353 ], [ 0.000000e+00, %2325 ]
  %2385 = phi float [ %2370, %2353 ], [ 0.000000e+00, %2325 ]
  %2386 = phi float [ %2377, %2353 ], [ 0.000000e+00, %2325 ]
  %2387 = phi float [ %2381, %2353 ], [ 0.000000e+00, %2325 ]
  %2388 = call float @dx.op.dot3.f32(i32 55, float %2383, float %2384, float %2385, float %2213, float %2214, float %2215)  ; Dot3(ax,ay,az,bx,by,bz)
  %2389 = fmul fast float %2388, 0x3FDF454380000000
  %2390 = fmul fast float %2388, %2388
  %2391 = fmul fast float %2390, 0x3FEE471020000000
  %2392 = fadd fast float %2391, 0xBFD42F6020000000
  %2393 = fmul fast float %2348, 0x3FD20DD760000000
  %2394 = fmul fast float %2392, %2387
  %2395 = fadd fast float %2394, %2393
  %2396 = fmul fast float %2389, %2386
  %2397 = fadd fast float %2395, %2396
  %2398 = fsub fast float %2395, %2396
  %2399 = call float @dx.op.dot3.f32(i32 55, float %2383, float %2384, float %2385, float %2270, float %2271, float %2272)  ; Dot3(ax,ay,az,bx,by,bz)
  %2400 = fmul fast float %2399, 0x3FDF454380000000
  %2401 = fmul fast float %2399, %2399
  %2402 = fmul fast float %2401, 0x3FEE471020000000
  %2403 = fadd fast float %2402, 0xBFD42F6020000000
  %2404 = call float @dx.op.dot3.f32(i32 55, float %2348, float %2386, float %2387, float 0x3FD20DD760000000, float %2400, float %2403)  ; Dot3(ax,ay,az,bx,by,bz)
  %2405 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %2406 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %2407 = fcmp fast oeq float %2406, 0.000000e+00
  %2408 = fcmp fast oeq float %2405, 0.000000e+00
  %2409 = or i1 %2408, %2407
  br i1 %2409, label %2439, label %2410

; <label>:2410                                    ; preds = %2382
  %2411 = fsub fast float -0.000000e+00, %61
  %2412 = fsub fast float -0.000000e+00, %59
  %2413 = call float @dx.op.unary.f32(i32 24, float %2406)  ; Sqrt(value)
  %2414 = fdiv fast float %2413, %2405
  %2415 = fcmp fast ogt float %2414, 0x3FFB6F8900000000
  %2416 = select i1 %2415, float 0x3FFB6F8900000000, float %2414
  %2417 = fmul fast float %2416, 0x3FE8A23460000000
  %2418 = call float @dx.op.unary.f32(i32 7, float %2417)  ; Saturate(value)
  %2419 = call float @dx.op.binary.f32(i32 35, float %2416, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2420 = fmul fast float %2418, %2405
  %2421 = fmul fast float %2419, 0x3FF279A740000000
  %2422 = fadd fast float %2421, -1.000000e+00
  %2423 = call float @dx.op.dot3.f32(i32 55, float %2411, float %2412, float %60, float %2411, float %2412, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %2424 = call float @dx.op.unary.f32(i32 25, float %2423)  ; Rsqrt(value)
  %2425 = fmul fast float %2424, %2411
  %2426 = fmul fast float %2424, %2412
  %2427 = fmul fast float %2424, %60
  %2428 = fmul fast float %2422, %2422
  %2429 = fsub fast float 1.000000e+00, %2428
  %2430 = fmul fast float %2419, 0x40005F8BE0000000
  %2431 = fsub fast float 0x400C5BF8A0000000, %2430
  %2432 = fdiv fast float %2420, %2431
  %2433 = fmul fast float %2432, 0x3FEE31C3C0000000
  %2434 = fmul fast float %2433, %2429
  %2435 = fmul fast float %2419, 0x3FDACB7480000000
  %2436 = fadd fast float %2435, 0xBFD7347680000000
  %2437 = fmul fast float %2436, %2432
  %2438 = fmul fast float %2437, %2429
  br label %2439

; <label>:2439                                    ; preds = %2410, %2382
  %2440 = phi float [ %2425, %2410 ], [ 0.000000e+00, %2382 ]
  %2441 = phi float [ %2426, %2410 ], [ 0.000000e+00, %2382 ]
  %2442 = phi float [ %2427, %2410 ], [ 0.000000e+00, %2382 ]
  %2443 = phi float [ %2434, %2410 ], [ 0.000000e+00, %2382 ]
  %2444 = phi float [ %2438, %2410 ], [ 0.000000e+00, %2382 ]
  %2445 = call float @dx.op.dot3.f32(i32 55, float %2440, float %2441, float %2442, float %2213, float %2214, float %2215)  ; Dot3(ax,ay,az,bx,by,bz)
  %2446 = fmul fast float %2445, 0x3FDF454380000000
  %2447 = fmul fast float %2445, %2445
  %2448 = fmul fast float %2447, 0x3FEE471020000000
  %2449 = fadd fast float %2448, 0xBFD42F6020000000
  %2450 = fmul fast float %2405, 0x3FD20DD760000000
  %2451 = fmul fast float %2449, %2444
  %2452 = fadd fast float %2451, %2450
  %2453 = fmul fast float %2446, %2443
  %2454 = fadd fast float %2452, %2453
  %2455 = fsub fast float %2452, %2453
  %2456 = call float @dx.op.dot3.f32(i32 55, float %2440, float %2441, float %2442, float %2270, float %2271, float %2272)  ; Dot3(ax,ay,az,bx,by,bz)
  %2457 = fmul fast float %2456, 0x3FDF454380000000
  %2458 = fmul fast float %2456, %2456
  %2459 = fmul fast float %2458, 0x3FEE471020000000
  %2460 = fadd fast float %2459, 0xBFD42F6020000000
  %2461 = call float @dx.op.dot3.f32(i32 55, float %2405, float %2443, float %2444, float 0x3FD20DD760000000, float %2457, float %2460)  ; Dot3(ax,ay,az,bx,by,bz)
  %2462 = call float @dx.op.binary.f32(i32 35, float %2340, float 0.000000e+00)  ; FMax(a,b)
  %2463 = call float @dx.op.binary.f32(i32 35, float %2397, float 0.000000e+00)  ; FMax(a,b)
  %2464 = call float @dx.op.binary.f32(i32 35, float %2454, float 0.000000e+00)  ; FMax(a,b)
  %2465 = call float @dx.op.binary.f32(i32 35, float %2341, float 0.000000e+00)  ; FMax(a,b)
  %2466 = call float @dx.op.binary.f32(i32 35, float %2398, float 0.000000e+00)  ; FMax(a,b)
  %2467 = call float @dx.op.binary.f32(i32 35, float %2455, float 0.000000e+00)  ; FMax(a,b)
  %2468 = call float @dx.op.binary.f32(i32 35, float %2347, float 0.000000e+00)  ; FMax(a,b)
  %2469 = call float @dx.op.binary.f32(i32 35, float %2404, float 0.000000e+00)  ; FMax(a,b)
  %2470 = call float @dx.op.binary.f32(i32 35, float %2461, float 0.000000e+00)  ; FMax(a,b)
  %2471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2472 = extractvalue %dx.types.CBufRet.f32 %2471, 0
  %2473 = call float @dx.op.binary.f32(i32 36, float %2207, float %2472)  ; FMin(a,b)
  %2474 = fmul fast float %2473, %2274
  %2475 = fsub fast float 1.000000e+00, %2474
  %2476 = bitcast float %2475 to i32
  %2477 = sub nsw i32 2129859010, %2476
  %2478 = bitcast i32 %2477 to float
  %2479 = call float @dx.op.binary.f32(i32 36, float %2208, float %2472)  ; FMin(a,b)
  %2480 = fmul fast float %2479, %2274
  %2481 = fsub fast float 1.000000e+00, %2480
  %2482 = bitcast float %2481 to i32
  %2483 = sub nsw i32 2129859010, %2482
  %2484 = bitcast i32 %2483 to float
  %2485 = call float @dx.op.binary.f32(i32 36, float %2209, float %2472)  ; FMin(a,b)
  %2486 = fmul fast float %2485, %2274
  %2487 = fsub fast float 1.000000e+00, %2486
  %2488 = bitcast float %2487 to i32
  %2489 = sub nsw i32 2129859010, %2488
  %2490 = bitcast i32 %2489 to float
  %2491 = fmul fast float %2462, %2273
  %2492 = fmul fast float %2491, %2478
  %2493 = fmul fast float %2463, %2273
  %2494 = fmul fast float %2493, %2484
  %2495 = fmul fast float %2464, %2273
  %2496 = fmul fast float %2495, %2490
  %2497 = call float @dx.op.binary.f32(i32 36, float %2210, float %2472)  ; FMin(a,b)
  %2498 = fmul fast float %2497, %2274
  %2499 = fsub fast float 1.000000e+00, %2498
  %2500 = bitcast float %2499 to i32
  %2501 = sub nsw i32 2129859010, %2500
  %2502 = bitcast i32 %2501 to float
  %2503 = call float @dx.op.binary.f32(i32 36, float %2211, float %2472)  ; FMin(a,b)
  %2504 = fmul fast float %2503, %2274
  %2505 = fsub fast float 1.000000e+00, %2504
  %2506 = bitcast float %2505 to i32
  %2507 = sub nsw i32 2129859010, %2506
  %2508 = bitcast i32 %2507 to float
  %2509 = call float @dx.op.binary.f32(i32 36, float %2222, float %2472)  ; FMin(a,b)
  %2510 = fmul fast float %2509, %2274
  %2511 = fsub fast float 1.000000e+00, %2510
  %2512 = bitcast float %2511 to i32
  %2513 = sub nsw i32 2129859010, %2512
  %2514 = bitcast i32 %2513 to float
  %2515 = fmul fast float %2468, %2273
  %2516 = fmul fast float %2515, %2502
  %2517 = fmul fast float %2469, %2273
  %2518 = fmul fast float %2517, %2508
  %2519 = fmul fast float %2470, %2273
  %2520 = fmul fast float %2519, %2514
  %2521 = call float @dx.op.dot3.f32(i32 55, float %2492, float %2494, float %2496, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2522 = select i1 %211, float 0.000000e+00, float %2492
  %2523 = select i1 %211, float %2521, float %2494
  %2524 = select i1 %211, float 0.000000e+00, float %2496
  %2525 = call float @dx.op.dot3.f32(i32 55, float %2465, float %2466, float %2467, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2526 = select i1 %211, float 0.000000e+00, float %2465
  %2527 = select i1 %211, float %2525, float %2466
  %2528 = select i1 %211, float 0.000000e+00, float %2467
  %2529 = call float @dx.op.dot3.f32(i32 55, float %2516, float %2518, float %2520, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2530 = select i1 %211, float 0.000000e+00, float %2516
  %2531 = select i1 %211, float %2529, float %2518
  %2532 = select i1 %211, float 0.000000e+00, float %2520
  %2533 = fmul fast float %912, %912
  %2534 = call float @dx.op.unary.f32(i32 7, float %2533)  ; Saturate(value)
  %2535 = fmul fast float %2224, 9.843750e-01
  %2536 = fmul fast float %2216, 9.843750e-01
  %2537 = fadd fast float %2535, 7.812500e-03
  %2538 = fadd fast float %2536, 7.812500e-03
  %2539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %2537, float %2538, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2540 = extractvalue %dx.types.ResRet.f32 %2539, 0
  %2541 = extractvalue %dx.types.ResRet.f32 %2539, 1
  %2542 = extractvalue %dx.types.ResRet.f32 %2539, 2
  %2543 = extractvalue %dx.types.ResRet.f32 %2539, 3
  %2544 = fsub fast float 1.000000e+00, %2534
  %2545 = fsub fast float %2542, %2540
  %2546 = fsub fast float %2543, %2541
  %2547 = fmul fast float %2545, %2544
  %2548 = fmul fast float %2546, %2544
  %2549 = fadd fast float %2547, %2540
  %2550 = fadd fast float %2548, %2541
  %2551 = fmul fast float %2549, %2210
  %2552 = fmul fast float %2549, %2211
  %2553 = fmul fast float %2549, %2222
  %2554 = fadd fast float %2551, %2550
  %2555 = fadd fast float %2552, %2550
  %2556 = fadd fast float %2553, %2550
  %2557 = fcmp fast ogt float %1506, 0.000000e+00
  br i1 %2557, label %2558, label %2584

; <label>:2558                                    ; preds = %2439
  %2559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1506, float %2224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2560 = extractvalue %dx.types.ResRet.f32 %2559, 0
  %2561 = extractvalue %dx.types.ResRet.f32 %2559, 1
  %2562 = extractvalue %dx.types.ResRet.f32 %2559, 2
  %2563 = fadd fast float %2560, -5.000000e-01
  %2564 = fadd fast float %2561, -5.000000e-01
  %2565 = fadd fast float %2562, -5.000000e-01
  %2566 = fsub fast float 1.000000e+00, %2210
  %2567 = fsub fast float 1.000000e+00, %2211
  %2568 = fsub fast float 1.000000e+00, %2222
  %2569 = fmul fast float %2210, 4.000000e+00
  %2570 = fmul fast float %2569, %2566
  %2571 = fmul fast float %2570, %2563
  %2572 = fmul fast float %2211, 4.000000e+00
  %2573 = fmul fast float %2572, %2567
  %2574 = fmul fast float %2573, %2564
  %2575 = fmul fast float %2222, 4.000000e+00
  %2576 = fmul fast float %2575, %2568
  %2577 = fmul fast float %2576, %2565
  %2578 = fadd fast float %2571, %2554
  %2579 = fadd fast float %2574, %2555
  %2580 = fadd fast float %2577, %2556
  %2581 = call float @dx.op.unary.f32(i32 7, float %2578)  ; Saturate(value)
  %2582 = call float @dx.op.unary.f32(i32 7, float %2579)  ; Saturate(value)
  %2583 = call float @dx.op.unary.f32(i32 7, float %2580)  ; Saturate(value)
  br label %2584

; <label>:2584                                    ; preds = %2558, %2439
  %2585 = phi float [ %2581, %2558 ], [ %2554, %2439 ]
  %2586 = phi float [ %2582, %2558 ], [ %2555, %2439 ]
  %2587 = phi float [ %2583, %2558 ], [ %2556, %2439 ]
  %2588 = call float @dx.op.binary.f32(i32 35, float %2586, float %2587)  ; FMax(a,b)
  %2589 = call float @dx.op.binary.f32(i32 35, float %2585, float %2588)  ; FMax(a,b)
  %2590 = fsub fast float 1.000000e+00, %2589
  %2591 = fmul fast float %2589, %2216
  %2592 = fadd fast float %2591, %2216
  %2593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2594 = extractvalue %dx.types.CBufRet.f32 %2593, 2
  %2595 = extractvalue %dx.types.CBufRet.f32 %2593, 3
  %2596 = fmul fast float %2592, %2594
  %2597 = fadd fast float %2596, %2595
  %2598 = call float @dx.op.unary.f32(i32 7, float %2597)  ; Saturate(value)
  %2599 = fsub fast float 1.000000e+00, %2285
  %2600 = fadd fast float %2599, %2598
  %2601 = call float @dx.op.unary.f32(i32 7, float %2600)  ; Saturate(value)
  %2602 = fcmp fast olt float %2601, 1.000000e+00
  br i1 %2602, label %2603, label %3079

; <label>:2603                                    ; preds = %2584
  %2604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2605 = extractvalue %dx.types.CBufRet.f32 %2604, 2
  %2606 = extractvalue %dx.types.CBufRet.f32 %2604, 3
  %2607 = fmul fast float %2605, %94
  %2608 = fmul fast float %2606, %95
  %2609 = fptoui float %2607 to i32
  %2610 = fptoui float %2608 to i32
  %2611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2612 = extractvalue %dx.types.CBufRet.f32 %2611, 0
  %2613 = extractvalue %dx.types.CBufRet.f32 %2611, 2
  %2614 = extractvalue %dx.types.CBufRet.f32 %2611, 3
  %2615 = fadd fast float %82, -4.000000e+00
  %2616 = call float @dx.op.binary.f32(i32 35, float %2615, float 0.000000e+00)  ; FMax(a,b)
  %2617 = fadd fast float %2616, %2612
  %2618 = fmul fast float %2617, %2613
  %2619 = call float @dx.op.unary.f32(i32 23, float %2618)  ; Log(value)
  %2620 = fmul fast float %2619, %2614
  %2621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2622 = extractvalue %dx.types.CBufRet.f32 %2621, 2
  %2623 = fmul fast float %2620, %2622
  %2624 = call float @dx.op.unary.f32(i32 7, float %2623)  ; Saturate(value)
  %2625 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2626 = extractvalue %dx.types.CBufRet.i32 %2625, 1
  %2627 = add i32 %2626, -1
  %2628 = uitofp i32 %2626 to float
  %2629 = fmul fast float %2628, %2624
  %2630 = fptoui float %2629 to i32
  %2631 = call i32 @dx.op.binary.i32(i32 40, i32 %2630, i32 %2627)  ; UMin(a,b)
  %2632 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2633 = extractvalue %dx.types.CBufRet.i32 %2632, 2
  %2634 = extractvalue %dx.types.CBufRet.i32 %2632, 3
  %2635 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2610, i32 %2633, i32 %2609)  ; UMad(a,b,c)
  %2636 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2631, i32 %2634, i32 %2635)  ; UMad(a,b,c)
  %2637 = call float @dx.op.binary.f32(i32 35, float %82, float 0.000000e+00)  ; FMax(a,b)
  %2638 = fptoui float %2637 to i32
  %2639 = lshr i32 %2638, 5
  %2640 = call i32 @dx.op.binary.i32(i32 40, i32 %2639, i32 8191)  ; UMin(a,b)
  %2641 = fsub fast float %2006, %151
  %2642 = call float @dx.op.unary.f32(i32 7, float %2641)  ; Saturate(value)
  %2643 = fcmp fast ogt float %2642, 0.000000e+00
  %2644 = fcmp fast ogt float %2272, 0.000000e+00
  %2645 = and i1 %2644, %2643
  br i1 %2645, label %2646, label %2675

; <label>:2646                                    ; preds = %2603
  %2647 = call float @dx.op.dot3.f32(i32 55, float %2270, float %2271, float %2272, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2648 = call float @dx.op.binary.f32(i32 35, float %2647, float -1.000000e+00)  ; FMax(a,b)
  %2649 = call float @dx.op.binary.f32(i32 36, float %2648, float 1.000000e+00)  ; FMin(a,b)
  %2650 = fmul fast float %2649, %2649
  %2651 = fsub fast float 1.000000e+00, %2650
  %2652 = fmul fast float %2651, 0x3FFC6E2300000000
  %2653 = fsub fast float 1.000000e+00, %2652
  %2654 = fcmp fast ogt float %2653, 0.000000e+00
  %2655 = call float @dx.op.unary.f32(i32 24, float %2653)  ; Sqrt(value)
  %2656 = fsub fast float 1.000000e+00, %2655
  %2657 = call float @dx.op.unary.f32(i32 23, float %2656)  ; Log(value)
  %2658 = fmul fast float %2657, 5.000000e+00
  %2659 = call float @dx.op.unary.f32(i32 21, float %2658)  ; Exp(value)
  %2660 = fmul fast float %2659, 0x3FEF591A60000000
  %2661 = fadd fast float %2660, 0x3F94DCB540000000
  %2662 = select i1 %2654, float %2661, float 1.000000e+00
  %2663 = fcmp fast oge float %2662, 1.000000e+00
  %2664 = fmul fast float %2647, 2.000000e+00
  %2665 = fadd fast float %2664, %2272
  %2666 = select i1 %2663, float %2665, float %2272
  %2667 = fsub fast float %2666, %2272
  %2668 = fmul fast float %2667, %2642
  %2669 = fadd fast float %2668, %2272
  %2670 = call float @dx.op.dot3.f32(i32 55, float %2270, float %2271, float %2669, float %2270, float %2271, float %2669)  ; Dot3(ax,ay,az,bx,by,bz)
  %2671 = call float @dx.op.unary.f32(i32 25, float %2670)  ; Rsqrt(value)
  %2672 = fmul fast float %2671, %2270
  %2673 = fmul fast float %2671, %2271
  %2674 = fmul fast float %2669, %2671
  br label %2675

; <label>:2675                                    ; preds = %2646, %2603
  %2676 = phi float [ %2672, %2646 ], [ %2270, %2603 ]
  %2677 = phi float [ %2673, %2646 ], [ %2271, %2603 ]
  %2678 = phi float [ %2674, %2646 ], [ %2272, %2603 ]
  %2679 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2680 = extractvalue %dx.types.CBufRet.i32 %2679, 2
  %2681 = add nsw i32 %2680, -1
  %2682 = call i32 @dx.op.binary.i32(i32 37, i32 %2681, i32 0)  ; IMax(a,b)
  %2683 = shl i32 %2640, 2
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = lshr i32 %2685, 16
  %2687 = and i32 %2685, 65535
  %2688 = lshr i32 %2685, 21
  %2689 = lshr i32 %2687, 5
  %2690 = call i32 @dx.op.binary.i32(i32 40, i32 %2689, i32 %2682)  ; UMin(a,b)
  %2691 = icmp ugt i32 %2688, %2690
  br i1 %2691, label %3055, label %2692

; <label>:2692                                    ; preds = %2675
  br label %2693

; <label>:2693                                    ; preds = %3047, %2692
  %2694 = phi float [ %3048, %3047 ], [ 0.000000e+00, %2692 ]
  %2695 = phi float [ %3049, %3047 ], [ 0.000000e+00, %2692 ]
  %2696 = phi float [ %3050, %3047 ], [ 0.000000e+00, %2692 ]
  %2697 = phi float [ %3051, %3047 ], [ 1.000000e+00, %2692 ]
  %2698 = phi i32 [ %3052, %3047 ], [ %2688, %2692 ]
  %2699 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2700 = extractvalue %dx.types.CBufRet.i32 %2699, 2
  %2701 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2636, i32 %2700, i32 %2698)  ; UMad(a,b,c)
  %2702 = shl i32 %2701, 2
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = shl i32 %2698, 5
  %2706 = sub nsw i32 %2686, %2705
  %2707 = call i32 @dx.op.binary.i32(i32 37, i32 %2706, i32 0)  ; IMax(a,b)
  %2708 = call i32 @dx.op.binary.i32(i32 38, i32 %2707, i32 31)  ; IMin(a,b)
  %2709 = sub nsw i32 1, %2686
  %2710 = add nsw i32 %2709, %2687
  %2711 = call i32 @dx.op.binary.i32(i32 37, i32 %2710, i32 0)  ; IMax(a,b)
  %2712 = call i32 @dx.op.binary.i32(i32 38, i32 %2711, i32 32)  ; IMin(a,b)
  %2713 = and i32 %2712, 31
  %2714 = shl i32 -1, %2713
  %2715 = xor i32 %2714, -1
  %2716 = and i32 %2708, 31
  %2717 = shl i32 %2715, %2716
  %2718 = icmp eq i32 %2712, 32
  %2719 = select i1 %2718, i32 -1, i32 %2717
  %2720 = and i32 %2719, %2704
  %2721 = icmp eq i32 %2720, 0
  br i1 %2721, label %3047, label %2722

; <label>:2722                                    ; preds = %2693
  br label %2723

; <label>:2723                                    ; preds = %2830, %2722
  %2724 = phi float [ %2831, %2830 ], [ %2694, %2722 ]
  %2725 = phi float [ %2832, %2830 ], [ %2695, %2722 ]
  %2726 = phi float [ %2833, %2830 ], [ %2696, %2722 ]
  %2727 = phi float [ %2834, %2830 ], [ %2697, %2722 ]
  %2728 = phi i32 [ %2733, %2830 ], [ %2720, %2722 ]
  %2729 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2728)  ; FirstbitLo(value)
  %2730 = add i32 %2729, %2705
  %2731 = and i32 %2729, 31
  %2732 = shl i32 1, %2731
  %2733 = xor i32 %2732, %2728
  %2734 = mul i32 %2730, 72
  %2735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2734, i32 undef)  ; BufferLoad(srv,index,wot)
  %2736 = extractvalue %dx.types.ResRet.f32 %2735, 0
  %2737 = extractvalue %dx.types.ResRet.f32 %2735, 1
  %2738 = extractvalue %dx.types.ResRet.f32 %2735, 2
  %2739 = add i32 %2734, 12
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = add i32 %2734, 16
  %2743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.f32 %2743, 0
  %2745 = extractvalue %dx.types.ResRet.f32 %2743, 1
  %2746 = extractvalue %dx.types.ResRet.f32 %2743, 2
  %2747 = add i32 %2734, 28
  %2748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.f32 %2748, 0
  %2750 = add i32 %2734, 32
  %2751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.f32 %2751, 0
  %2753 = extractvalue %dx.types.ResRet.f32 %2751, 1
  %2754 = extractvalue %dx.types.ResRet.f32 %2751, 2
  %2755 = extractvalue %dx.types.ResRet.f32 %2751, 3
  %2756 = add i32 %2734, 48
  %2757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2756, i32 undef)  ; BufferLoad(srv,index,wot)
  %2758 = extractvalue %dx.types.ResRet.f32 %2757, 0
  %2759 = extractvalue %dx.types.ResRet.f32 %2757, 1
  %2760 = add i32 %2734, 56
  %2761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.f32 %2761, 0
  %2763 = extractvalue %dx.types.ResRet.f32 %2761, 1
  %2764 = add i32 %2734, 64
  %2765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.f32 %2765, 0
  %2767 = extractvalue %dx.types.ResRet.f32 %2765, 1
  %2768 = mul i32 %2730, 60
  %2769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2768, i32 undef)  ; BufferLoad(srv,index,wot)
  %2770 = extractvalue %dx.types.ResRet.f32 %2769, 0
  %2771 = extractvalue %dx.types.ResRet.f32 %2769, 1
  %2772 = extractvalue %dx.types.ResRet.f32 %2769, 2
  %2773 = add i32 %2768, 12
  %2774 = add i32 %2768, 48
  %2775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2774, i32 undef)  ; BufferLoad(srv,index,wot)
  %2776 = extractvalue %dx.types.ResRet.f32 %2775, 0
  %2777 = extractvalue %dx.types.ResRet.f32 %2775, 1
  %2778 = extractvalue %dx.types.ResRet.f32 %2775, 2
  %2779 = and i32 %2741, 32767
  %2780 = bitcast float %2736 to i32
  %2781 = icmp eq i32 %2780, -1
  %2782 = bitcast float %2737 to i32
  %2783 = and i32 %2741, 32768
  %2784 = icmp ne i32 %2783, 0
  %2785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2786 = extractvalue %dx.types.CBufRet.f32 %2785, 0
  %2787 = extractvalue %dx.types.CBufRet.f32 %2785, 1
  %2788 = extractvalue %dx.types.CBufRet.f32 %2785, 2
  %2789 = fsub fast float %2770, %2786
  %2790 = fsub fast float %2771, %2787
  %2791 = fsub fast float %2772, %2788
  %2792 = fsub fast float %149, %2789
  %2793 = fsub fast float %150, %2790
  %2794 = fsub fast float %151, %2791
  %2795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2796 = extractvalue %dx.types.ResRet.f32 %2795, 0
  %2797 = extractvalue %dx.types.ResRet.f32 %2795, 1
  %2798 = extractvalue %dx.types.ResRet.f32 %2795, 2
  %2799 = call float @dx.op.dot3.f32(i32 55, float %2792, float %2793, float %2794, float %2796, float %2797, float %2798)  ; Dot3(ax,ay,az,bx,by,bz)
  %2800 = add i32 %2768, 24
  %2801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2802 = extractvalue %dx.types.ResRet.f32 %2801, 0
  %2803 = extractvalue %dx.types.ResRet.f32 %2801, 1
  %2804 = extractvalue %dx.types.ResRet.f32 %2801, 2
  %2805 = call float @dx.op.dot3.f32(i32 55, float %2792, float %2793, float %2794, float %2802, float %2803, float %2804)  ; Dot3(ax,ay,az,bx,by,bz)
  %2806 = add i32 %2768, 36
  %2807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2806, i32 undef)  ; BufferLoad(srv,index,wot)
  %2808 = extractvalue %dx.types.ResRet.f32 %2807, 0
  %2809 = extractvalue %dx.types.ResRet.f32 %2807, 1
  %2810 = extractvalue %dx.types.ResRet.f32 %2807, 2
  %2811 = call float @dx.op.dot3.f32(i32 55, float %2792, float %2793, float %2794, float %2808, float %2809, float %2810)  ; Dot3(ax,ay,az,bx,by,bz)
  %2812 = call float @dx.op.unary.f32(i32 6, float %2799)  ; FAbs(value)
  %2813 = call float @dx.op.unary.f32(i32 6, float %2805)  ; FAbs(value)
  %2814 = call float @dx.op.unary.f32(i32 6, float %2811)  ; FAbs(value)
  %2815 = fsub fast float %2776, %2812
  %2816 = fsub fast float %2777, %2813
  %2817 = fsub fast float %2778, %2814
  %2818 = fmul fast float %2815, %2744
  %2819 = fmul fast float %2816, %2745
  %2820 = fmul fast float %2817, %2746
  %2821 = call float @dx.op.binary.f32(i32 36, float %2819, float %2820)  ; FMin(a,b)
  %2822 = call float @dx.op.binary.f32(i32 36, float %2818, float %2821)  ; FMin(a,b)
  %2823 = call float @dx.op.unary.f32(i32 7, float %2822)  ; Saturate(value)
  %2824 = call float @dx.op.binary.f32(i32 36, float %2727, float %2823)  ; FMin(a,b)
  %2825 = uitofp i1 %2784 to float
  %2826 = fadd fast float %2642, 1.000000e+00
  %2827 = fsub fast float %2826, %2825
  %2828 = fmul fast float %2824, %2827
  %2829 = fcmp fast ogt float %2828, 0.000000e+00
  br i1 %2829, label %2836, label %2830

; <label>:2830                                    ; preds = %2978, %2723
  %2831 = phi float [ %3042, %2978 ], [ %2724, %2723 ]
  %2832 = phi float [ %3043, %2978 ], [ %2725, %2723 ]
  %2833 = phi float [ %3044, %2978 ], [ %2726, %2723 ]
  %2834 = phi float [ %3045, %2978 ], [ %2727, %2723 ]
  %2835 = icmp eq i32 %2728, %2732
  br i1 %2835, label %3046, label %2723

; <label>:2836                                    ; preds = %2723
  br i1 %2781, label %2894, label %2837

; <label>:2837                                    ; preds = %2836
  %2838 = fsub fast float -0.000000e+00, %2796
  %2839 = fsub fast float -0.000000e+00, %2797
  %2840 = fsub fast float -0.000000e+00, %2798
  %2841 = call float @dx.op.dot3.f32(i32 55, float %2676, float %2677, float %2678, float %2838, float %2839, float %2840)  ; Dot3(ax,ay,az,bx,by,bz)
  %2842 = fsub fast float -0.000000e+00, %2841
  %2843 = call float @dx.op.dot3.f32(i32 55, float %2792, float %2793, float %2794, float %2838, float %2839, float %2840)  ; Dot3(ax,ay,az,bx,by,bz)
  %2844 = fadd fast float %2843, %2759
  %2845 = fadd fast float %2758, %2843
  %2846 = fsub fast float -0.000000e+00, %2845
  %2847 = fcmp ogt float %2841, -0.000000e+00
  %2848 = select i1 %2847, float %2846, float %2844
  %2849 = call float @dx.op.unary.f32(i32 6, float %2842)  ; FAbs(value)
  %2850 = fdiv fast float 1.000000e+00, %2849
  %2851 = fmul fast float %2848, %2850
  %2852 = call float @dx.op.binary.f32(i32 35, float %2851, float 0.000000e+00)  ; FMax(a,b)
  %2853 = fsub fast float -0.000000e+00, %2802
  %2854 = fsub fast float -0.000000e+00, %2803
  %2855 = fsub fast float -0.000000e+00, %2804
  %2856 = call float @dx.op.dot3.f32(i32 55, float %2676, float %2677, float %2678, float %2853, float %2854, float %2855)  ; Dot3(ax,ay,az,bx,by,bz)
  %2857 = fsub fast float -0.000000e+00, %2856
  %2858 = call float @dx.op.dot3.f32(i32 55, float %2792, float %2793, float %2794, float %2853, float %2854, float %2855)  ; Dot3(ax,ay,az,bx,by,bz)
  %2859 = fadd fast float %2858, %2763
  %2860 = fadd fast float %2762, %2858
  %2861 = fsub fast float -0.000000e+00, %2860
  %2862 = fcmp ogt float %2856, -0.000000e+00
  %2863 = select i1 %2862, float %2861, float %2859
  %2864 = call float @dx.op.unary.f32(i32 6, float %2857)  ; FAbs(value)
  %2865 = fdiv fast float 1.000000e+00, %2864
  %2866 = fmul fast float %2863, %2865
  %2867 = call float @dx.op.binary.f32(i32 35, float %2866, float 0.000000e+00)  ; FMax(a,b)
  %2868 = fsub fast float -0.000000e+00, %2808
  %2869 = fsub fast float -0.000000e+00, %2809
  %2870 = fsub fast float -0.000000e+00, %2810
  %2871 = call float @dx.op.dot3.f32(i32 55, float %2676, float %2677, float %2678, float %2868, float %2869, float %2870)  ; Dot3(ax,ay,az,bx,by,bz)
  %2872 = fsub fast float -0.000000e+00, %2871
  %2873 = call float @dx.op.dot3.f32(i32 55, float %2792, float %2793, float %2794, float %2868, float %2869, float %2870)  ; Dot3(ax,ay,az,bx,by,bz)
  %2874 = fadd fast float %2873, %2767
  %2875 = fadd fast float %2766, %2873
  %2876 = fsub fast float -0.000000e+00, %2875
  %2877 = fcmp ogt float %2871, -0.000000e+00
  %2878 = select i1 %2877, float %2876, float %2874
  %2879 = call float @dx.op.unary.f32(i32 6, float %2872)  ; FAbs(value)
  %2880 = fdiv fast float 1.000000e+00, %2879
  %2881 = fmul fast float %2878, %2880
  %2882 = call float @dx.op.binary.f32(i32 35, float %2881, float 0.000000e+00)  ; FMax(a,b)
  %2883 = call float @dx.op.binary.f32(i32 36, float %2867, float %2882)  ; FMin(a,b)
  %2884 = call float @dx.op.binary.f32(i32 36, float %2852, float %2883)  ; FMin(a,b)
  %2885 = fmul fast float %2884, %2676
  %2886 = fmul fast float %2884, %2677
  %2887 = fmul fast float %2884, %2678
  %2888 = fadd fast float %2885, %149
  %2889 = fadd fast float %2886, %150
  %2890 = fadd fast float %2887, %151
  %2891 = fsub fast float %2888, %2736
  %2892 = fsub fast float %2889, %2737
  %2893 = fsub fast float %2890, %2738
  br label %2901

; <label>:2894                                    ; preds = %2836
  %2895 = fmul fast float %2676, 8.096000e+03
  %2896 = fmul fast float %2677, 8.096000e+03
  %2897 = fmul fast float %2678, 8.096000e+03
  %2898 = fadd fast float %2895, %149
  %2899 = fadd fast float %2896, %150
  %2900 = fadd fast float %2897, %151
  br label %2901

; <label>:2901                                    ; preds = %2894, %2837
  %2902 = phi float [ %2676, %2894 ], [ %2891, %2837 ]
  %2903 = phi float [ %2677, %2894 ], [ %2892, %2837 ]
  %2904 = phi float [ %2678, %2894 ], [ %2893, %2837 ]
  %2905 = phi float [ %2898, %2894 ], [ %2888, %2837 ]
  %2906 = phi float [ %2899, %2894 ], [ %2889, %2837 ]
  %2907 = phi float [ %2900, %2894 ], [ %2890, %2837 ]
  %2908 = fcmp fast olt float %2755, 1.000000e+00
  br i1 %2908, label %2909, label %2940, !dx.controlflow.hints !92

; <label>:2909                                    ; preds = %2901
  %2910 = fmul fast float %2904, %2753
  %2911 = fmul fast float %2903, %2754
  %2912 = fsub fast float %2910, %2911
  %2913 = fmul fast float %2902, %2754
  %2914 = fmul fast float %2904, %2752
  %2915 = fsub fast float %2913, %2914
  %2916 = fmul fast float %2903, %2752
  %2917 = fmul fast float %2902, %2753
  %2918 = fsub fast float %2916, %2917
  %2919 = fmul fast float %2912, 2.000000e+00
  %2920 = fmul fast float %2915, 2.000000e+00
  %2921 = fmul fast float %2918, 2.000000e+00
  %2922 = fmul fast float %2919, %2755
  %2923 = fmul fast float %2920, %2755
  %2924 = fmul fast float %2921, %2755
  %2925 = fmul fast float %2921, %2753
  %2926 = fmul fast float %2920, %2754
  %2927 = fmul fast float %2919, %2754
  %2928 = fmul fast float %2921, %2752
  %2929 = fmul fast float %2920, %2752
  %2930 = fmul fast float %2919, %2753
  %2931 = fadd fast float %2925, %2902
  %2932 = fadd fast float %2931, %2922
  %2933 = fsub fast float %2932, %2926
  %2934 = fsub fast float %2903, %2928
  %2935 = fadd fast float %2934, %2923
  %2936 = fadd fast float %2935, %2927
  %2937 = fadd fast float %2924, %2904
  %2938 = fsub fast float %2937, %2930
  %2939 = fadd fast float %2938, %2929
  br label %2940

; <label>:2940                                    ; preds = %2909, %2901
  %2941 = phi float [ %2933, %2909 ], [ %2902, %2901 ]
  %2942 = phi float [ %2936, %2909 ], [ %2903, %2901 ]
  %2943 = phi float [ %2939, %2909 ], [ %2904, %2901 ]
  br i1 %2781, label %2975, label %2944

; <label>:2944                                    ; preds = %2940
  %2945 = fmul fast float %2216, 0x400187C840000000
  %2946 = fadd fast float %2945, 0xC00EFC2120000000
  %2947 = fmul fast float %2946, %2216
  %2948 = fadd fast float %2947, 0x3FE5D16340000000
  %2949 = fmul fast float %2948, %2216
  %2950 = fadd fast float %2949, 1.000000e+00
  %2951 = call float @dx.op.unary.f32(i32 7, float %2950)  ; Saturate(value)
  %2952 = fsub fast float %2905, %149
  %2953 = fsub fast float %2906, %150
  %2954 = fsub fast float %2907, %151
  %2955 = fsub fast float %2905, %2736
  %2956 = fsub fast float %2906, %2737
  %2957 = fsub fast float %2907, %2738
  %2958 = call float @dx.op.dot3.f32(i32 55, float %2952, float %2953, float %2954, float %2952, float %2953, float %2954)  ; Dot3(ax,ay,az,bx,by,bz)
  %2959 = call float @dx.op.dot3.f32(i32 55, float %2955, float %2956, float %2957, float %2955, float %2956, float %2957)  ; Dot3(ax,ay,az,bx,by,bz)
  %2960 = fadd fast float %2959, 0x3EE4F8B580000000
  %2961 = fdiv fast float %2958, %2960
  %2962 = bitcast float %2961 to i32
  %2963 = ashr i32 %2962, 1
  %2964 = add nsw i32 %2963, 532487669
  %2965 = bitcast i32 %2964 to float
  %2966 = fmul fast float %2965, %2951
  %2967 = call float @dx.op.unary.f32(i32 7, float %2966)  ; Saturate(value)
  %2968 = fmul fast float %2967, 0x4009981AE0000000
  %2969 = fsub fast float 0x40111BBD80000000, %2968
  %2970 = fmul fast float %2969, %2967
  %2971 = fadd fast float %2970, 0xC0009F6020000000
  %2972 = fmul fast float %2971, %2967
  %2973 = fadd fast float %2972, 1.000000e+00
  %2974 = call float @dx.op.unary.f32(i32 7, float %2973)  ; Saturate(value)
  br label %2978

; <label>:2975                                    ; preds = %2940
  %2976 = icmp ne i32 %2782, -1
  %2977 = zext i1 %2976 to i32
  br label %2978

; <label>:2978                                    ; preds = %2975, %2944
  %2979 = phi float [ %2216, %2975 ], [ %2974, %2944 ]
  %2980 = phi i32 [ %2977, %2975 ], [ 0, %2944 ]
  %2981 = fmul float %2979, 5.000000e+00
  %2982 = fsub float 5.000000e+00, %2981
  %2983 = icmp ne i32 %2980, 0
  %2984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2985 = extractvalue %dx.types.CBufRet.f32 %2984, 3
  %2986 = fadd fast float %2985, %2982
  %2987 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2986)  ; FMax(a,b)
  %2988 = call float @dx.op.unary.f32(i32 6, float %2941)  ; FAbs(value)
  %2989 = call float @dx.op.unary.f32(i32 6, float %2942)  ; FAbs(value)
  %2990 = fadd fast float %2989, %2988
  %2991 = call float @dx.op.unary.f32(i32 6, float %2943)  ; FAbs(value)
  %2992 = fadd fast float %2990, %2991
  %2993 = fcmp fast oeq float %2992, 0.000000e+00
  %2994 = fdiv fast float 1.000000e+00, %2992
  %2995 = select i1 %2993, float 1.000000e+00, float %2994
  %2996 = fmul fast float %2995, %2941
  %2997 = fmul fast float %2995, %2942
  %2998 = call float @dx.op.unary.f32(i32 6, float %2997)  ; FAbs(value)
  %2999 = call float @dx.op.unary.f32(i32 6, float %2996)  ; FAbs(value)
  %3000 = fsub fast float 1.000000e+00, %2998
  %3001 = fsub fast float 1.000000e+00, %2999
  %3002 = fcmp fast oge float %2996, 0.000000e+00
  %3003 = fcmp fast oge float %2997, 0.000000e+00
  %3004 = select i1 %3002, float 1.000000e+00, float -1.000000e+00
  %3005 = select i1 %3003, float 1.000000e+00, float -1.000000e+00
  %3006 = fcmp fast ole float %2943, 0.000000e+00
  %3007 = fmul fast float %3004, %3000
  %3008 = fmul fast float %3005, %3001
  %3009 = select i1 %3006, float %3007, float %2996
  %3010 = select i1 %3006, float %3008, float %2997
  %3011 = fmul fast float %3009, 5.000000e-01
  %3012 = fmul fast float %3010, 5.000000e-01
  %3013 = fadd fast float %3011, 5.000000e-01
  %3014 = fadd fast float %3012, 5.000000e-01
  %3015 = uitofp i32 %2779 to float
  %3016 = call float @dx.op.binary.f32(i32 36, float %2987, float 3.000000e+00)  ; FMin(a,b)
  %3017 = fadd fast float %3016, 2.000000e+00
  %3018 = call float @dx.op.unary.f32(i32 21, float %3017)  ; Exp(value)
  %3019 = extractvalue %dx.types.CBufRet.f32 %2984, 1
  %3020 = fmul fast float %3019, %3018
  %3021 = fmul fast float %3020, 2.000000e+00
  %3022 = fsub fast float 1.000000e+00, %3021
  %3023 = fmul fast float %3013, %3022
  %3024 = fmul fast float %3014, %3022
  %3025 = fadd fast float %3023, %3020
  %3026 = fadd fast float %3024, %3020
  %3027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %48, float %3025, float %3026, float %3015, float undef, i32 0, i32 0, i32 undef, float %2987)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3028 = extractvalue %dx.types.ResRet.f32 %3027, 0
  %3029 = extractvalue %dx.types.ResRet.f32 %3027, 1
  %3030 = extractvalue %dx.types.ResRet.f32 %3027, 2
  %3031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3032 = extractvalue %dx.types.CBufRet.f32 %3031, 3
  %3033 = fmul fast float %3032, %2749
  %3034 = call float @dx.op.binary.f32(i32 36, float %2290, float %3033)  ; FMin(a,b)
  %3035 = select i1 %2983, float %3034, float %3033
  %3036 = fmul fast float %3028, %2828
  %3037 = fmul fast float %3036, %3035
  %3038 = fmul fast float %3029, %2828
  %3039 = fmul fast float %3038, %3035
  %3040 = fmul fast float %3030, %2828
  %3041 = fmul fast float %3040, %3035
  %3042 = fadd fast float %3037, %2724
  %3043 = fadd fast float %3039, %2725
  %3044 = fadd fast float %3041, %2726
  %3045 = fsub fast float %2727, %2828
  br label %2830

; <label>:3046                                    ; preds = %2830
  br label %3047

; <label>:3047                                    ; preds = %3046, %2693
  %3048 = phi float [ %2694, %2693 ], [ %2831, %3046 ]
  %3049 = phi float [ %2695, %2693 ], [ %2832, %3046 ]
  %3050 = phi float [ %2696, %2693 ], [ %2833, %3046 ]
  %3051 = phi float [ %2697, %2693 ], [ %2834, %3046 ]
  %3052 = add i32 %2698, 1
  %3053 = icmp ugt i32 %3052, %2690
  br i1 %3053, label %3054, label %2693, !llvm.loop !93

; <label>:3054                                    ; preds = %3047
  br label %3055

; <label>:3055                                    ; preds = %3054, %2675
  %3056 = phi float [ 0.000000e+00, %2675 ], [ %3048, %3054 ]
  %3057 = phi float [ 0.000000e+00, %2675 ], [ %3049, %3054 ]
  %3058 = phi float [ 0.000000e+00, %2675 ], [ %3050, %3054 ]
  %3059 = call float @dx.op.dot3.f32(i32 55, float %3056, float %3057, float %3058, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3060 = select i1 %211, float 0.000000e+00, float %3056
  %3061 = select i1 %211, float %3059, float %3057
  %3062 = select i1 %211, float 0.000000e+00, float %3058
  %3063 = fcmp fast olt float %2601, 0.000000e+00
  %3064 = call float @dx.op.unary.f32(i32 6, float %2601)  ; FAbs(value)
  %3065 = fmul fast float %3064, %2530
  %3066 = fmul fast float %3064, %2531
  %3067 = fmul fast float %3064, %2532
  %3068 = select i1 %3063, float %2530, float %3065
  %3069 = select i1 %3063, float %2531, float %3066
  %3070 = select i1 %3063, float %2532, float %3067
  %3071 = fsub fast float 1.000000e+00, %3064
  %3072 = call float @dx.op.unary.f32(i32 7, float %3071)  ; Saturate(value)
  %3073 = fmul fast float %3072, %3060
  %3074 = fmul fast float %3072, %3061
  %3075 = fmul fast float %3072, %3062
  %3076 = fadd fast float %3068, %3073
  %3077 = fadd fast float %3069, %3074
  %3078 = fadd fast float %3070, %3075
  br label %3079

; <label>:3079                                    ; preds = %3055, %2584
  %3080 = phi float [ %2530, %2584 ], [ %3076, %3055 ]
  %3081 = phi float [ %2531, %2584 ], [ %3077, %3055 ]
  %3082 = phi float [ %2532, %2584 ], [ %3078, %3055 ]
  %3083 = call float @dx.op.dot3.f32(i32 55, float %2207, float %2208, float %2209, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3084 = fcmp fast ogt float %3083, 0x3E7FF19E20000000
  %3085 = fdiv fast float 1.000000e+00, %3083
  %3086 = select i1 %3084, float %3085, float 0.000000e+00
  %3087 = fmul fast float %3086, %2207
  %3088 = fmul fast float %3086, %2208
  %3089 = fmul fast float %3086, %2209
  %3090 = fadd fast float %3087, -1.000000e+00
  %3091 = fadd fast float %3088, -1.000000e+00
  %3092 = fadd fast float %3089, -1.000000e+00
  %3093 = fmul fast float %3090, 5.000000e-01
  %3094 = fmul fast float %3091, 5.000000e-01
  %3095 = fmul fast float %3092, 5.000000e-01
  %3096 = fadd fast float %3093, 1.000000e+00
  %3097 = fadd fast float %3094, 1.000000e+00
  %3098 = fadd fast float %3095, 1.000000e+00
  %3099 = call float @dx.op.binary.f32(i32 35, float %2224, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3100 = fdiv fast float %912, %3099
  %3101 = fcmp fast olt float %1579, 1.270000e+02
  %3102 = fcmp fast olt float %1580, 1.270000e+02
  %3103 = fcmp fast olt float %1581, 1.270000e+02
  %3104 = fmul fast float %1579, 0xBFF7154760000000
  %3105 = fmul fast float %3104, %3100
  %3106 = fmul fast float %1580, 0xBFF7154760000000
  %3107 = fmul fast float %3106, %3100
  %3108 = fmul fast float %1581, 0xBFF7154760000000
  %3109 = fmul fast float %3108, %3100
  %3110 = call float @dx.op.unary.f32(i32 21, float %3105)  ; Exp(value)
  %3111 = call float @dx.op.unary.f32(i32 21, float %3107)  ; Exp(value)
  %3112 = call float @dx.op.unary.f32(i32 21, float %3109)  ; Exp(value)
  %3113 = call float @dx.op.unary.f32(i32 7, float %3110)  ; Saturate(value)
  %3114 = call float @dx.op.unary.f32(i32 7, float %3111)  ; Saturate(value)
  %3115 = call float @dx.op.unary.f32(i32 7, float %3112)  ; Saturate(value)
  %3116 = select i1 %3101, float %3113, float 0.000000e+00
  %3117 = select i1 %3102, float %3114, float 0.000000e+00
  %3118 = select i1 %3103, float %3115, float 0.000000e+00
  %3119 = fmul fast float %3116, %2590
  %3120 = fmul fast float %3117, %2590
  %3121 = fmul fast float %3118, %2590
  %3122 = fadd fast float %3119, -1.000000e+00
  %3123 = fadd fast float %3120, -1.000000e+00
  %3124 = fadd fast float %3121, -1.000000e+00
  %3125 = fmul fast float %3122, %1529
  %3126 = fmul fast float %3123, %1529
  %3127 = fmul fast float %3124, %1529
  %3128 = fmul fast float %3080, %2585
  %3129 = fmul fast float %3081, %2586
  %3130 = fmul fast float %3082, %2587
  %3131 = fsub fast float 1.000000e+00, %2224
  %3132 = bitcast float %3131 to i32
  %3133 = sitofp i32 %3132 to float
  %3134 = fmul fast float %3133, 5.000000e+00
  %3135 = fadd fast float %3134, 0xC1EFBF8940000000
  %3136 = fptosi float %3135 to i32
  %3137 = bitcast i32 %3136 to float
  %3138 = fmul fast float %3137, %1505
  %3139 = fmul fast float %2522, %3138
  %3140 = fmul fast float %3139, %2590
  %3141 = fmul fast float %3140, %3096
  %3142 = fmul fast float %2523, %3138
  %3143 = fmul fast float %3142, %2590
  %3144 = fmul fast float %3143, %3097
  %3145 = fmul fast float %2524, %3138
  %3146 = fmul fast float %3145, %2590
  %3147 = fmul fast float %3146, %3098
  %3148 = fadd fast float %3128, %1510
  %3149 = fadd fast float %3148, %3141
  %3150 = fmul fast float %3149, %1529
  %3151 = fadd fast float %3129, %1511
  %3152 = fadd fast float %3151, %3144
  %3153 = fmul fast float %3152, %1529
  %3154 = fadd fast float %3130, %1512
  %3155 = fadd fast float %3154, %3147
  %3156 = fmul fast float %3155, %1529
  %3157 = fmul fast float %2211, 0x4012D0A400000000
  %3158 = fadd fast float %3127, 1.000000e+00
  %3159 = fadd fast float %3126, 1.000000e+00
  %3160 = fadd fast float %3125, 1.000000e+00
  %3161 = fmul fast float %2590, %2524
  %3162 = fmul fast float %2590, %2523
  %3163 = fmul fast float %2590, %2522
  %3164 = fmul fast float %2279, %1529
  %3165 = fsub fast float 1.000000e+00, %3164
  %3166 = call float @dx.op.unary.f32(i32 7, float %3165)  ; Saturate(value)
  %3167 = fsub fast float 1.000000e+00, %3166
  %3168 = fadd fast float %3157, 0x3FDB6377A0000000
  %3169 = fmul fast float %3167, %3168
  %3170 = call float @dx.op.dot3.f32(i32 55, float %1597, float %1598, float %1599, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3171 = fadd fast float %3169, %3170
  %3172 = call float @dx.op.unary.f32(i32 7, float %3171)  ; Saturate(value)
  %3173 = call float @dx.op.binary.f32(i32 35, float %3172, float 0x3F847AE140000000)  ; FMax(a,b)
  %3174 = fmul fast float %3173, %3173
  %3175 = fmul fast float %3174, %3174
  %3176 = fmul fast float %3175, 0xC00A935000000000
  %3177 = call float @dx.op.unary.f32(i32 21, float %3176)  ; Exp(value)
  %3178 = fsub fast float 1.000000e+00, %3177
  %3179 = fmul fast float %3160, %2526
  %3180 = fmul fast float %3179, %3178
  %3181 = fmul fast float %3159, %2527
  %3182 = fmul fast float %3181, %3178
  %3183 = fmul fast float %3158, %2528
  %3184 = fmul fast float %3183, %3178
  %3185 = fadd fast float %3180, %3163
  %3186 = fmul fast float %3185, %1529
  %3187 = fadd fast float %3182, %3162
  %3188 = fmul fast float %3187, %1529
  %3189 = fadd fast float %3184, %3161
  %3190 = fmul fast float %3189, %1529
  %3191 = bitcast i32 %2288 to float
  %3192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3193 = extractvalue %dx.types.CBufRet.f32 %3192, 3
  %3194 = fcmp fast oeq float %3193, 0.000000e+00
  br i1 %3194, label %4886, label %3195

; <label>:3195                                    ; preds = %3079
  %3196 = extractvalue %dx.types.CBufRet.f32 %3192, 0
  %3197 = extractvalue %dx.types.CBufRet.f32 %3192, 1
  %3198 = extractvalue %dx.types.CBufRet.f32 %3192, 2
  %3199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3200 = extractvalue %dx.types.CBufRet.f32 %3199, 0
  %3201 = extractvalue %dx.types.CBufRet.f32 %3199, 1
  %3202 = extractvalue %dx.types.CBufRet.f32 %3199, 2
  %3203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3204 = extractvalue %dx.types.CBufRet.f32 %3203, 0
  %3205 = extractvalue %dx.types.CBufRet.f32 %3203, 1
  %3206 = call float @dx.op.dot3.f32(i32 55, float %3200, float %3201, float %3202, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3207 = select i1 %211, float %3204, float %3200
  %3208 = select i1 %211, float %3206, float %3201
  %3209 = select i1 %211, float %3205, float %3202
  %3210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3211 = extractvalue %dx.types.CBufRet.f32 %3210, 2
  %3212 = fmul fast float %3211, %97
  %3213 = fmul fast float %3211, %98
  %3214 = fmul fast float %3211, %99
  %3215 = fadd fast float %3212, %149
  %3216 = fadd fast float %3213, %150
  %3217 = fadd fast float %3214, %151
  %3218 = fcmp fast olt float %3193, 0.000000e+00
  br i1 %3218, label %4314, label %3219

; <label>:3219                                    ; preds = %3195
  %3220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3221 = extractvalue %dx.types.CBufRet.f32 %3220, 0
  %3222 = extractvalue %dx.types.CBufRet.f32 %3220, 1
  %3223 = extractvalue %dx.types.CBufRet.f32 %3220, 2
  %3224 = extractvalue %dx.types.CBufRet.f32 %3220, 3
  %3225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3226 = extractvalue %dx.types.CBufRet.f32 %3225, 0
  %3227 = extractvalue %dx.types.CBufRet.f32 %3225, 1
  %3228 = extractvalue %dx.types.CBufRet.f32 %3225, 2
  %3229 = extractvalue %dx.types.CBufRet.f32 %3225, 3
  %3230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3231 = extractvalue %dx.types.CBufRet.f32 %3230, 0
  %3232 = extractvalue %dx.types.CBufRet.f32 %3230, 1
  %3233 = extractvalue %dx.types.CBufRet.f32 %3230, 2
  %3234 = extractvalue %dx.types.CBufRet.f32 %3230, 3
  %3235 = fmul fast float %3221, %3215
  %3236 = call float @dx.op.tertiary.f32(i32 46, float %3216, float %3222, float %3235)  ; FMad(a,b,c)
  %3237 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %3223, float %3236)  ; FMad(a,b,c)
  %3238 = fadd fast float %3237, %3224
  %3239 = fmul fast float %3226, %3215
  %3240 = call float @dx.op.tertiary.f32(i32 46, float %3216, float %3227, float %3239)  ; FMad(a,b,c)
  %3241 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %3228, float %3240)  ; FMad(a,b,c)
  %3242 = fadd fast float %3241, %3229
  %3243 = fmul fast float %3231, %3215
  %3244 = call float @dx.op.tertiary.f32(i32 46, float %3216, float %3232, float %3243)  ; FMad(a,b,c)
  %3245 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %3233, float %3244)  ; FMad(a,b,c)
  %3246 = fadd fast float %3245, %3234
  %3247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3248 = extractvalue %dx.types.CBufRet.f32 %3247, 0
  %3249 = extractvalue %dx.types.CBufRet.f32 %3247, 1
  %3250 = extractvalue %dx.types.CBufRet.f32 %3247, 3
  %3251 = fmul fast float %3250, %3238
  %3252 = fmul fast float %3250, %3242
  %3253 = fadd fast float %3251, %3248
  %3254 = fadd fast float %3252, %3249
  %3255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3256 = extractvalue %dx.types.CBufRet.f32 %3255, 0
  %3257 = extractvalue %dx.types.CBufRet.f32 %3255, 1
  %3258 = extractvalue %dx.types.CBufRet.f32 %3255, 3
  %3259 = fmul fast float %3258, %3238
  %3260 = fmul fast float %3258, %3242
  %3261 = fadd fast float %3259, %3256
  %3262 = fadd fast float %3260, %3257
  %3263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3264 = extractvalue %dx.types.CBufRet.f32 %3263, 1
  %3265 = fsub fast float %3264, %3246
  %3266 = extractvalue %dx.types.CBufRet.f32 %3263, 2
  %3267 = fmul fast float %3265, %3266
  %3268 = fsub fast float 1.000000e+00, %3267
  %3269 = call float @dx.op.unary.f32(i32 7, float %3268)  ; Saturate(value)
  %3270 = extractvalue %dx.types.CBufRet.f32 %3255, 2
  %3271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3272 = extractvalue %dx.types.CBufRet.f32 %3271, 2
  %3273 = fadd fast float %3272, %3270
  %3274 = fcmp fast ogt float %3273, 0.000000e+00
  br i1 %3274, label %3275, label %3299

; <label>:3275                                    ; preds = %3219
  %3276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3277 = extractvalue %dx.types.CBufRet.f32 %3276, 0
  %3278 = extractvalue %dx.types.CBufRet.f32 %3276, 1
  %3279 = fsub fast float %3261, %3277
  %3280 = fsub fast float %3262, %3278
  %3281 = fcmp fast olt float %3279, 0.000000e+00
  %3282 = fcmp fast olt float %3280, 0.000000e+00
  %3283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3284 = extractvalue %dx.types.CBufRet.f32 %3283, 0
  %3285 = extractvalue %dx.types.CBufRet.f32 %3283, 1
  %3286 = extractvalue %dx.types.CBufRet.f32 %3283, 2
  %3287 = extractvalue %dx.types.CBufRet.f32 %3283, 3
  %3288 = select i1 %3281, float %3284, float %3286
  %3289 = select i1 %3282, float %3285, float %3287
  %3290 = fmul fast float %3288, %3279
  %3291 = fmul fast float %3289, %3280
  %3292 = call float @dx.op.unary.f32(i32 6, float %3290)  ; FAbs(value)
  %3293 = call float @dx.op.unary.f32(i32 6, float %3291)  ; FAbs(value)
  %3294 = extractvalue %dx.types.CBufRet.f32 %3210, 0
  %3295 = call float @dx.op.binary.f32(i32 35, float %3292, float %3293)  ; FMax(a,b)
  %3296 = fsub fast float %3294, %3295
  %3297 = call float @dx.op.unary.f32(i32 7, float %3296)  ; Saturate(value)
  %3298 = fmul fast float %3297, %3269
  br label %3299

; <label>:3299                                    ; preds = %3275, %3219
  %3300 = phi float [ %3298, %3275 ], [ 0.000000e+00, %3219 ]
  %3301 = extractvalue %dx.types.CBufRet.f32 %3247, 2
  %3302 = extractvalue %dx.types.CBufRet.f32 %3271, 1
  %3303 = fadd fast float %3302, %3301
  %3304 = fcmp fast ogt float %3303, 0.000000e+00
  %3305 = extractvalue %dx.types.CBufRet.f32 %3210, 0
  br i1 %3304, label %3306, label %3329

; <label>:3306                                    ; preds = %3299
  %3307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3308 = extractvalue %dx.types.CBufRet.f32 %3307, 0
  %3309 = extractvalue %dx.types.CBufRet.f32 %3307, 1
  %3310 = fsub fast float %3253, %3308
  %3311 = fsub fast float %3254, %3309
  %3312 = fcmp fast olt float %3310, 0.000000e+00
  %3313 = fcmp fast olt float %3311, 0.000000e+00
  %3314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3315 = extractvalue %dx.types.CBufRet.f32 %3314, 0
  %3316 = extractvalue %dx.types.CBufRet.f32 %3314, 1
  %3317 = extractvalue %dx.types.CBufRet.f32 %3314, 2
  %3318 = extractvalue %dx.types.CBufRet.f32 %3314, 3
  %3319 = select i1 %3312, float %3315, float %3317
  %3320 = select i1 %3313, float %3316, float %3318
  %3321 = fmul fast float %3319, %3310
  %3322 = fmul fast float %3320, %3311
  %3323 = call float @dx.op.unary.f32(i32 6, float %3321)  ; FAbs(value)
  %3324 = call float @dx.op.unary.f32(i32 6, float %3322)  ; FAbs(value)
  %3325 = call float @dx.op.binary.f32(i32 35, float %3323, float %3324)  ; FMax(a,b)
  %3326 = fsub fast float %3305, %3325
  %3327 = call float @dx.op.unary.f32(i32 7, float %3326)  ; Saturate(value)
  %3328 = fmul fast float %3327, %3269
  br label %3329

; <label>:3329                                    ; preds = %3306, %3299
  %3330 = phi float [ %3328, %3306 ], [ 0.000000e+00, %3299 ]
  %3331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3332 = extractvalue %dx.types.CBufRet.f32 %3331, 1
  %3333 = call float @dx.op.unary.f32(i32 7, float %3332)  ; Saturate(value)
  %3334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3335 = extractvalue %dx.types.CBufRet.f32 %3334, 0
  %3336 = extractvalue %dx.types.CBufRet.f32 %3334, 1
  %3337 = fsub fast float %3238, %3335
  %3338 = fsub fast float %3242, %3336
  %3339 = fcmp fast olt float %3337, 0.000000e+00
  %3340 = fcmp fast olt float %3338, 0.000000e+00
  %3341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3342 = extractvalue %dx.types.CBufRet.f32 %3341, 0
  %3343 = extractvalue %dx.types.CBufRet.f32 %3341, 1
  %3344 = extractvalue %dx.types.CBufRet.f32 %3341, 2
  %3345 = extractvalue %dx.types.CBufRet.f32 %3341, 3
  %3346 = select i1 %3339, float %3342, float %3344
  %3347 = select i1 %3340, float %3343, float %3345
  %3348 = fmul fast float %3346, %3337
  %3349 = fmul fast float %3347, %3338
  %3350 = call float @dx.op.unary.f32(i32 6, float %3348)  ; FAbs(value)
  %3351 = call float @dx.op.unary.f32(i32 6, float %3349)  ; FAbs(value)
  %3352 = call float @dx.op.binary.f32(i32 35, float %3350, float %3351)  ; FMax(a,b)
  %3353 = fsub fast float %3305, %3352
  %3354 = call float @dx.op.unary.f32(i32 7, float %3353)  ; Saturate(value)
  %3355 = call float @dx.op.binary.f32(i32 36, float %3354, float %3333)  ; FMin(a,b)
  %3356 = fmul fast float %3355, %3269
  %3357 = fsub fast float %3330, %3356
  %3358 = fsub fast float %3300, %3330
  %3359 = fsub fast float %3358, %3356
  %3360 = call float @dx.op.binary.f32(i32 35, float %3330, float %3300)  ; FMax(a,b)
  %3361 = call float @dx.op.binary.f32(i32 35, float %3356, float %3360)  ; FMax(a,b)
  %3362 = fcmp fast olt float %3361, 1.000000e+00
  br i1 %3362, label %3363, label %3761, !dx.controlflow.hints !95

; <label>:3363                                    ; preds = %3329
  %3364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3365 = extractvalue %dx.types.CBufRet.f32 %3364, 0
  %3366 = fcmp fast une float %3365, 0.000000e+00
  br i1 %3366, label %3367, label %3761, !dx.controlflow.hints !96

; <label>:3367                                    ; preds = %3363
  %3368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3369 = extractvalue %dx.types.CBufRet.f32 %3368, 0
  %3370 = extractvalue %dx.types.CBufRet.f32 %3368, 1
  %3371 = extractvalue %dx.types.CBufRet.f32 %3368, 2
  %3372 = extractvalue %dx.types.CBufRet.f32 %3368, 3
  %3373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3374 = extractvalue %dx.types.CBufRet.f32 %3373, 0
  %3375 = extractvalue %dx.types.CBufRet.f32 %3373, 1
  %3376 = extractvalue %dx.types.CBufRet.f32 %3373, 2
  %3377 = extractvalue %dx.types.CBufRet.f32 %3373, 3
  %3378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3379 = extractvalue %dx.types.CBufRet.f32 %3378, 0
  %3380 = extractvalue %dx.types.CBufRet.f32 %3378, 1
  %3381 = extractvalue %dx.types.CBufRet.f32 %3378, 2
  %3382 = extractvalue %dx.types.CBufRet.f32 %3378, 3
  %3383 = fmul fast float %3369, %3215
  %3384 = call float @dx.op.tertiary.f32(i32 46, float %3216, float %3370, float %3383)  ; FMad(a,b,c)
  %3385 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %3371, float %3384)  ; FMad(a,b,c)
  %3386 = fadd fast float %3385, %3372
  %3387 = fmul fast float %3374, %3215
  %3388 = call float @dx.op.tertiary.f32(i32 46, float %3216, float %3375, float %3387)  ; FMad(a,b,c)
  %3389 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %3376, float %3388)  ; FMad(a,b,c)
  %3390 = fadd fast float %3389, %3377
  %3391 = fmul fast float %3379, %3215
  %3392 = call float @dx.op.tertiary.f32(i32 46, float %3216, float %3380, float %3391)  ; FMad(a,b,c)
  %3393 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %3381, float %3392)  ; FMad(a,b,c)
  %3394 = fadd fast float %3393, %3382
  %3395 = fcmp fast oge float %3386, 1.000000e+00
  %3396 = fcmp fast oge float %3390, 1.000000e+00
  %3397 = or i1 %3395, %3396
  %3398 = fcmp fast olt float %3386, 0.000000e+00
  %3399 = fcmp fast olt float %3390, 0.000000e+00
  %3400 = or i1 %3398, %3399
  %3401 = or i1 %3397, %3400
  br i1 %3401, label %3761, label %3402, !dx.controlflow.hints !97

; <label>:3402                                    ; preds = %3367
  %3403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3404 = extractvalue %dx.types.CBufRet.f32 %3403, 0
  %3405 = extractvalue %dx.types.CBufRet.f32 %3403, 1
  %3406 = extractvalue %dx.types.CBufRet.f32 %3403, 2
  %3407 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3408 = extractvalue %dx.types.CBufRet.i32 %3407, 2
  %3409 = uitofp i32 %3408 to float
  %3410 = extractvalue %dx.types.CBufRet.i32 %3407, 3
  %3411 = uitofp i32 %3410 to float
  %3412 = extractvalue %dx.types.CBufRet.f32 %3403, 3
  %3413 = fmul fast float %3412, 2.000000e+00
  %3414 = fsub fast float %3386, %3404
  %3415 = fsub fast float %3390, %3405
  %3416 = fmul fast float %3413, %3414
  %3417 = fmul fast float %3413, %3415
  %3418 = fdiv fast float 1.000000e+00, %3198
  %3419 = fmul fast float %3417, %3418
  %3420 = call float @dx.op.unary.f32(i32 6, float %3419)  ; FAbs(value)
  %3421 = fmul fast float %3406, %3217
  %3422 = fmul fast float %3421, %3413
  %3423 = call float @dx.op.unary.f32(i32 6, float %3422)  ; FAbs(value)
  %3424 = call float @dx.op.unary.f32(i32 6, float %3416)  ; FAbs(value)
  %3425 = call float @dx.op.binary.f32(i32 35, float %3423, float %3420)  ; FMax(a,b)
  %3426 = call float @dx.op.binary.f32(i32 35, float %3424, float %3425)  ; FMax(a,b)
  %3427 = fmul fast float %3426, 2.000000e+00
  %3428 = call float @dx.op.unary.f32(i32 23, float %3427)  ; Log(value)
  %3429 = call float @dx.op.binary.f32(i32 35, float %3428, float %3409)  ; FMax(a,b)
  %3430 = call float @dx.op.unary.f32(i32 22, float %3429)  ; Frc(value)
  %3431 = fadd fast float %3430, 0xBFEA666660000000
  %3432 = fmul fast float %3431, 8.000000e+00
  %3433 = call float @dx.op.unary.f32(i32 7, float %3432)  ; Saturate(value)
  %3434 = call float @dx.op.unary.f32(i32 27, float %3429)  ; Round_ni(value)
  %3435 = fadd fast float %3434, %3433
  %3436 = call float @dx.op.binary.f32(i32 36, float %3435, float %3411)  ; FMin(a,b)
  %3437 = call float @dx.op.unary.f32(i32 27, float %3436)  ; Round_ni(value)
  %3438 = fsub fast float -0.000000e+00, %3437
  %3439 = call float @dx.op.unary.f32(i32 21, float %3438)  ; Exp(value)
  %3440 = fmul fast float %3439, %3413
  %3441 = fmul fast float %3440, %3386
  %3442 = fmul fast float %3440, %3390
  %3443 = fmul fast float %3441, 2.500000e-01
  %3444 = fmul fast float %3442, 2.500000e-01
  %3445 = fadd fast float %3443, 5.000000e-01
  %3446 = fadd fast float %3444, 5.000000e-01
  %3447 = fsub fast float %3411, %3409
  %3448 = fptoui float %3447 to i32
  %3449 = add i32 %3448, 320
  %3450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %3449)  ; CBufferLoadLegacy(handle,regIndex)
  %3451 = extractvalue %dx.types.CBufRet.f32 %3450, 0
  %3452 = extractvalue %dx.types.CBufRet.f32 %3450, 1
  %3453 = fcmp fast une float %3436, %3411
  %3454 = fsub fast float %3386, %3451
  %3455 = fsub fast float %3390, %3452
  %3456 = call float @dx.op.unary.f32(i32 6, float %3454)  ; FAbs(value)
  %3457 = call float @dx.op.unary.f32(i32 6, float %3455)  ; FAbs(value)
  %3458 = fmul fast float %3456, %3440
  %3459 = fmul fast float %3457, %3440
  %3460 = fcmp fast olt float %3458, 1.000000e+00
  %3461 = fcmp fast olt float %3459, 1.000000e+00
  %3462 = and i1 %3460, %3461
  %3463 = or i1 %3453, %3462
  br i1 %3463, label %3464, label %3761, !dx.controlflow.hints !98

; <label>:3464                                    ; preds = %3402
  %3465 = fmul fast float %3442, 5.000000e-01
  %3466 = fmul fast float %3441, 5.000000e-01
  %3467 = fadd fast float %3465, 5.000000e-01
  %3468 = fadd fast float %3466, 5.000000e-01
  %3469 = sitofp i32 %3408 to float
  %3470 = fsub fast float %3436, %3469
  %3471 = call float @dx.op.unary.f32(i32 27, float %3470)  ; Round_ni(value)
  %3472 = call float @dx.op.unary.f32(i32 22, float %3436)  ; Frc(value)
  %3473 = call float @dx.op.unary.f32(i32 22, float %3468)  ; Frc(value)
  %3474 = call float @dx.op.unary.f32(i32 22, float %3467)  ; Frc(value)
  %3475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %3473, float %3474, float %3471, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3476 = extractvalue %dx.types.ResRet.f32 %3475, 0
  %3477 = extractvalue %dx.types.ResRet.f32 %3475, 1
  %3478 = extractvalue %dx.types.ResRet.f32 %3475, 2
  %3479 = extractvalue %dx.types.ResRet.f32 %3475, 3
  %3480 = fcmp fast ogt float %3472, 0.000000e+00
  br i1 %3480, label %3481, label %3502, !dx.controlflow.hints !99

; <label>:3481                                    ; preds = %3464
  %3482 = fadd fast float %3471, 1.000000e+00
  %3483 = call float @dx.op.unary.f32(i32 22, float %3445)  ; Frc(value)
  %3484 = call float @dx.op.unary.f32(i32 22, float %3446)  ; Frc(value)
  %3485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %3483, float %3484, float %3482, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3486 = extractvalue %dx.types.ResRet.f32 %3485, 0
  %3487 = extractvalue %dx.types.ResRet.f32 %3485, 1
  %3488 = extractvalue %dx.types.ResRet.f32 %3485, 2
  %3489 = extractvalue %dx.types.ResRet.f32 %3485, 3
  %3490 = fsub fast float %3486, %3476
  %3491 = fsub fast float %3487, %3477
  %3492 = fsub fast float %3488, %3478
  %3493 = fsub fast float %3489, %3479
  %3494 = fmul fast float %3490, %3472
  %3495 = fmul fast float %3491, %3472
  %3496 = fmul fast float %3492, %3472
  %3497 = fmul fast float %3493, %3472
  %3498 = fadd fast float %3494, %3476
  %3499 = fadd fast float %3495, %3477
  %3500 = fadd fast float %3496, %3478
  %3501 = fadd fast float %3497, %3479
  br label %3502

; <label>:3502                                    ; preds = %3481, %3464
  %3503 = phi float [ %3498, %3481 ], [ %3476, %3464 ]
  %3504 = phi float [ %3499, %3481 ], [ %3477, %3464 ]
  %3505 = phi float [ %3500, %3481 ], [ %3478, %3464 ]
  %3506 = phi float [ %3501, %3481 ], [ %3479, %3464 ]
  %3507 = fadd fast float %3503, -5.000000e-01
  %3508 = fadd fast float %3505, -5.000000e-01
  %3509 = fmul fast float %3507, 0xBFD5555560000000
  %3510 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3508, float %3509)  ; FMad(a,b,c)
  %3511 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3504, float 0.000000e+00)  ; FMad(a,b,c)
  %3512 = fadd fast float %3511, %3506
  %3513 = fmul fast float %3507, -7.500000e-01
  %3514 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3508, float %3513)  ; FMad(a,b,c)
  %3515 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3504, float 0.000000e+00)  ; FMad(a,b,c)
  %3516 = fadd fast float %3515, %3506
  %3517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3518 = extractvalue %dx.types.CBufRet.f32 %3517, 0
  %3519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3520 = extractvalue %dx.types.CBufRet.f32 %3519, 0
  %3521 = extractvalue %dx.types.CBufRet.f32 %3519, 1
  %3522 = extractvalue %dx.types.CBufRet.f32 %3519, 2
  %3523 = extractvalue %dx.types.CBufRet.f32 %3519, 3
  %3524 = fsub fast float %3520, %3510
  %3525 = fsub fast float %3521, %3512
  %3526 = fsub fast float %3522, %3514
  %3527 = fsub fast float %3523, %3516
  %3528 = fmul fast float %3524, %3518
  %3529 = fmul fast float %3525, %3518
  %3530 = fmul fast float %3526, %3518
  %3531 = fmul fast float %3527, %3518
  %3532 = fadd fast float %3528, %3510
  %3533 = fadd fast float %3529, %3512
  %3534 = fadd fast float %3530, %3514
  %3535 = fadd fast float %3531, %3516
  %3536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3537 = extractvalue %dx.types.ResRet.i32 %3536, 0
  %3538 = and i32 %3537, 536870911
  %3539 = uitofp i32 %3538 to float
  %3540 = fmul fast float %3539, %3386
  %3541 = fmul fast float %3539, %3390
  %3542 = fptoui float %3540 to i32
  %3543 = fptoui float %3541 to i32
  %3544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3545 = extractvalue %dx.types.ResRet.i32 %3544, 0
  %3546 = and i32 %3545, 31
  %3547 = lshr i32 %3542, %3546
  %3548 = lshr i32 %3543, %3546
  %3549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3550 = extractvalue %dx.types.ResRet.i32 %3549, 0
  %3551 = and i32 %3550, 31
  %3552 = shl i32 1, %3551
  %3553 = call i32 @dx.op.binary.i32(i32 40, i32 %3552, i32 4)  ; UMin(a,b)
  %3554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3555 = extractvalue %dx.types.ResRet.i32 %3554, 0
  %3556 = extractvalue %dx.types.ResRet.i32 %3554, 1
  %3557 = icmp eq i32 %3553, 0
  br i1 %3557, label %3599, label %3558

; <label>:3558                                    ; preds = %3502
  br label %3559

; <label>:3559                                    ; preds = %3587, %3558
  %3560 = phi i32 [ %3590, %3587 ], [ 0, %3558 ]
  %3561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3562 = extractvalue %dx.types.ResRet.i32 %3561, 0
  %3563 = lshr i32 %3562, 16
  %3564 = and i32 %3563, 31
  %3565 = shl i32 %3548, %3564
  %3566 = add i32 %3565, %3547
  %3567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3568 = extractvalue %dx.types.ResRet.i32 %3567, 0
  %3569 = and i32 %3568, 31
  %3570 = shl i32 %3566, %3569
  %3571 = add i32 %3570, %3560
  %3572 = shl i32 %3571, 2
  %3573 = add i32 %3572, 32
  %3574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3573, i32 undef)  ; BufferLoad(srv,index,wot)
  %3575 = extractvalue %dx.types.ResRet.i32 %3574, 0
  %3576 = icmp slt i32 %3575, 0
  %3577 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3560
  %3578 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3560
  %3579 = bitcast float* %3577 to i32*
  %3580 = bitcast float* %3578 to i32*
  br i1 %3576, label %3581, label %3587

; <label>:3581                                    ; preds = %3559
  %3582 = and i32 %3575, 1073741823
  %3583 = add nuw nsw i32 %3582, 20
  %3584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.i32 %3584, 0
  %3586 = extractvalue %dx.types.ResRet.i32 %3584, 1
  br label %3587

; <label>:3587                                    ; preds = %3581, %3559
  %3588 = phi i32 [ %3585, %3581 ], [ %3555, %3559 ]
  %3589 = phi i32 [ %3586, %3581 ], [ %3556, %3559 ]
  store i32 %3588, i32* %3579, align 4
  store i32 %3589, i32* %3580, align 4
  %3590 = add nuw i32 %3560, 1
  %3591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3592 = extractvalue %dx.types.CBufRet.i32 %3591, 2
  %3593 = icmp eq i32 %3592, 0
  %3594 = icmp ugt i32 %3575, -1073741825
  %3595 = and i1 %3594, %3593
  %3596 = icmp ult i32 %3590, %3553
  %3597 = and i1 %3595, %3596
  br i1 %3597, label %3559, label %3598

; <label>:3598                                    ; preds = %3587
  br label %3599

; <label>:3599                                    ; preds = %3598, %3502
  %3600 = phi i32 [ 0, %3502 ], [ %3590, %3598 ]
  %3601 = extractvalue %dx.types.CBufRet.f32 %3364, 2
  %3602 = fptoui float %3601 to i32
  %3603 = icmp eq i32 %3602, 0
  br i1 %3603, label %3655, label %3604

; <label>:3604                                    ; preds = %3599
  br label %3605

; <label>:3605                                    ; preds = %3650, %3604
  %3606 = phi i32 [ %3651, %3650 ], [ %3600, %3604 ]
  %3607 = phi i32 [ %3652, %3650 ], [ 0, %3604 ]
  %3608 = lshr i32 %3607, 2
  %3609 = and i32 %3607, 3
  %3610 = add nuw nsw i32 %3608, 83
  %3611 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %3610)  ; CBufferLoadLegacy(handle,regIndex)
  %3612 = extractvalue %dx.types.CBufRet.i32 %3611, 0
  %3613 = extractvalue %dx.types.CBufRet.i32 %3611, 1
  %3614 = extractvalue %dx.types.CBufRet.i32 %3611, 2
  %3615 = extractvalue %dx.types.CBufRet.i32 %3611, 3
  %3616 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %3612, i32* %3616, align 4
  %3617 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %3613, i32* %3617, align 4
  %3618 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %3614, i32* %3618, align 4
  %3619 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %3615, i32* %3619, align 4
  %3620 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %3609
  %3621 = load i32, i32* %3620, align 4, !tbaa !100, !noalias !104
  %3622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3623 = extractvalue %dx.types.ResRet.i32 %3622, 0
  %3624 = lshr i32 %3623, 16
  %3625 = and i32 %3624, 31
  %3626 = shl i32 %3548, %3625
  %3627 = add i32 %3626, %3547
  %3628 = shl i32 %3627, 2
  %3629 = add i32 %3628, %3621
  %3630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3629, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.i32 %3630, 0
  %3632 = icmp eq i32 %3631, 0
  br i1 %3632, label %3650, label %3633

; <label>:3633                                    ; preds = %3605
  %3634 = icmp slt i32 %3631, 0
  %3635 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3606
  %3636 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3606
  %3637 = bitcast float* %3635 to i32*
  %3638 = bitcast float* %3636 to i32*
  br i1 %3634, label %3639, label %3646

; <label>:3639                                    ; preds = %3633
  %3640 = and i32 %3631, 1073741823
  %3641 = add i32 %3621, 20
  %3642 = add i32 %3641, %3640
  %3643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3642, i32 undef)  ; BufferLoad(srv,index,wot)
  %3644 = extractvalue %dx.types.ResRet.i32 %3643, 0
  %3645 = extractvalue %dx.types.ResRet.i32 %3643, 1
  br label %3646

; <label>:3646                                    ; preds = %3639, %3633
  %3647 = phi i32 [ %3644, %3639 ], [ %3555, %3633 ]
  %3648 = phi i32 [ %3645, %3639 ], [ %3556, %3633 ]
  store i32 %3647, i32* %3637, align 4
  store i32 %3648, i32* %3638, align 4
  %3649 = add i32 %3606, 1
  br label %3650

; <label>:3650                                    ; preds = %3646, %3605
  %3651 = phi i32 [ %3606, %3605 ], [ %3649, %3646 ]
  %3652 = add nuw i32 %3607, 1
  %3653 = icmp eq i32 %3652, %3602
  br i1 %3653, label %3654, label %3605

; <label>:3654                                    ; preds = %3650
  br label %3655

; <label>:3655                                    ; preds = %3654, %3599
  %3656 = phi i32 [ %3600, %3599 ], [ %3651, %3654 ]
  %3657 = icmp eq i32 %3656, 1
  %3658 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  %3659 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 0
  br i1 %3657, label %3660, label %3663

; <label>:3660                                    ; preds = %3655
  %3661 = load float, float* %3658, align 4
  %3662 = load float, float* %3659, align 4
  br label %3690

; <label>:3663                                    ; preds = %3655
  %3664 = load float, float* %3658, align 4
  %3665 = load float, float* %3659, align 4
  %3666 = fdiv fast float 1.000000e+00, %3665
  %3667 = fsub fast float %3664, %3666
  %3668 = icmp ugt i32 %3656, 1
  br i1 %3668, label %3669, label %3685

; <label>:3669                                    ; preds = %3663
  br label %3670

; <label>:3670                                    ; preds = %3670, %3669
  %3671 = phi float [ %3680, %3670 ], [ %3667, %3669 ]
  %3672 = phi float [ %3681, %3670 ], [ %3664, %3669 ]
  %3673 = phi i32 [ %3682, %3670 ], [ 1, %3669 ]
  %3674 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3673
  %3675 = load float, float* %3674, align 4
  %3676 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3673
  %3677 = load float, float* %3676, align 4
  %3678 = fdiv fast float 1.000000e+00, %3677
  %3679 = fsub fast float %3675, %3678
  %3680 = call float @dx.op.binary.f32(i32 36, float %3671, float %3679)  ; FMin(a,b)
  %3681 = call float @dx.op.binary.f32(i32 35, float %3672, float %3675)  ; FMax(a,b)
  %3682 = add nuw i32 %3673, 1
  %3683 = icmp eq i32 %3682, %3656
  br i1 %3683, label %3684, label %3670

; <label>:3684                                    ; preds = %3670
  br label %3685

; <label>:3685                                    ; preds = %3684, %3663
  %3686 = phi float [ %3667, %3663 ], [ %3680, %3684 ]
  %3687 = phi float [ %3664, %3663 ], [ %3681, %3684 ]
  %3688 = fsub fast float %3687, %3686
  %3689 = fdiv fast float 1.000000e+00, %3688
  br label %3690

; <label>:3690                                    ; preds = %3685, %3660
  %3691 = phi float [ %3661, %3660 ], [ %3687, %3685 ]
  %3692 = phi float [ %3662, %3660 ], [ %3689, %3685 ]
  %3693 = fadd fast float %3394, %3691
  %3694 = fmul fast float %3693, %3692
  %3695 = call float @dx.op.unary.f32(i32 7, float %3694)  ; Saturate(value)
  %3696 = fmul fast float %3695, 2.000000e+00
  %3697 = fsub fast float 1.000000e+00, %3696
  %3698 = fmul fast float %3532, %3532
  %3699 = fsub fast float %3533, %3698
  %3700 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3699)  ; FMax(a,b)
  %3701 = fdiv fast float 1.000000e+00, %3700
  %3702 = fmul fast float %3533, %3532
  %3703 = fsub fast float %3534, %3702
  %3704 = fsub fast float %3697, %3532
  %3705 = fmul fast float %3697, %3697
  %3706 = fsub fast float %3705, %3533
  %3707 = fmul fast float %3701, %3703
  %3708 = fmul fast float %3707, %3704
  %3709 = fsub fast float %3706, %3708
  %3710 = fmul fast float %3533, %3533
  %3711 = fsub fast float %3535, %3710
  %3712 = fmul fast float %3703, %3703
  %3713 = fmul fast float %3712, %3701
  %3714 = fsub fast float %3711, %3713
  %3715 = fdiv fast float %3709, %3714
  %3716 = fmul fast float %3715, %3703
  %3717 = fsub fast float %3704, %3716
  %3718 = fmul fast float %3717, %3701
  %3719 = fmul fast float %3718, %3532
  %3720 = fsub fast float 1.000000e+00, %3719
  %3721 = fmul fast float %3715, %3533
  %3722 = fsub fast float %3720, %3721
  %3723 = fmul fast float %3718, %3718
  %3724 = fmul fast float %3715, 4.000000e+00
  %3725 = fmul fast float %3724, %3722
  %3726 = fsub fast float %3723, %3725
  %3727 = call float @dx.op.unary.f32(i32 24, float %3726)  ; Sqrt(value)
  %3728 = fcmp fast oge float %3718, 0.000000e+00
  %3729 = fsub fast float -0.000000e+00, %3727
  %3730 = select i1 %3728, float %3729, float %3727
  %3731 = fsub fast float %3730, %3718
  %3732 = fdiv fast float %3731, %3715
  %3733 = fdiv fast float %3722, %3731
  %3734 = fmul fast float %3732, 5.000000e-01
  %3735 = fmul fast float %3733, 2.000000e+00
  %3736 = select i1 %3728, float %3734, float %3735
  %3737 = select i1 %3728, float %3735, float %3734
  %3738 = call float @dx.op.binary.f32(i32 35, float %3736, float %3737)  ; FMax(a,b)
  %3739 = call float @dx.op.binary.f32(i32 36, float %3736, float %3737)  ; FMin(a,b)
  %3740 = fcmp fast ogt float %3697, %3738
  %3741 = fsub fast float %3697, %3739
  %3742 = fsub fast float %3697, %3738
  %3743 = fsub fast float %3738, %3739
  %3744 = select i1 %3740, float %3742, float %3743
  %3745 = fmul float %3741, %3744
  %3746 = select i1 %3740, float %3739, float %3697
  %3747 = fcmp fast ogt float %3697, %3739
  %3748 = fmul fast float %3746, %3738
  %3749 = fadd fast float %3746, %3738
  %3750 = fmul fast float %3749, %3532
  %3751 = fadd fast float %3748, %3533
  %3752 = fsub fast float %3751, %3750
  %3753 = fdiv fast float %3752, %3745
  %3754 = select i1 %3747, float %3753, float 0.000000e+00
  %3755 = fsub fast float 1.000000e+00, %3754
  %3756 = select i1 %3740, float %3755, float %3754
  %3757 = call float @dx.op.unary.f32(i32 7, float %3756)  ; Saturate(value)
  %3758 = extractvalue %dx.types.CBufRet.f32 %3517, 3
  %3759 = fmul fast float %3758, %3757
  %3760 = fsub fast float 1.000000e+00, %3759
  br label %3761

; <label>:3761                                    ; preds = %3690, %3402, %3367, %3363, %3329
  %3762 = phi float [ 1.000000e+00, %3329 ], [ %3760, %3690 ], [ 1.000000e+00, %3367 ], [ 1.000000e+00, %3402 ], [ 1.000000e+00, %3363 ]
  %3763 = fcmp fast ogt float %3359, 0.000000e+00
  br i1 %3763, label %3764, label %3926, !dx.controlflow.hints !113

; <label>:3764                                    ; preds = %3761
  %3765 = fadd fast float %3272, %3246
  %3766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3767 = extractvalue %dx.types.CBufRet.f32 %3766, 2
  %3768 = extractvalue %dx.types.CBufRet.f32 %3766, 3
  %3769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3769, 2
  %3771 = call float @dx.op.binary.f32(i32 35, float %3765, float 0.000000e+00)  ; FMax(a,b)
  %3772 = fadd fast float %3771, 0x3F10000000000000
  %3773 = fcmp fast oeq float %3770, 0.000000e+00
  br i1 %3773, label %3774, label %3841

; <label>:3774                                    ; preds = %3764
  %3775 = extractvalue %dx.types.CBufRet.f32 %3766, 1
  %3776 = extractvalue %dx.types.CBufRet.f32 %3766, 0
  %3777 = fmul fast float %3776, %3261
  %3778 = fmul fast float %3775, %3262
  %3779 = fadd fast float %3777, 5.000000e-01
  %3780 = call float @dx.op.unary.f32(i32 27, float %3779)  ; Round_ni(value)
  %3781 = fadd fast float %3778, 5.000000e-01
  %3782 = call float @dx.op.unary.f32(i32 27, float %3781)  ; Round_ni(value)
  %3783 = fsub fast float %3779, %3780
  %3784 = fsub fast float %3781, %3782
  %3785 = fadd fast float %3780, -5.000000e-01
  %3786 = fadd fast float %3782, -5.000000e-01
  %3787 = fmul fast float %3783, 2.000000e+00
  %3788 = fsub fast float 3.000000e+00, %3787
  %3789 = fadd fast float %3787, 1.000000e+00
  %3790 = fsub fast float 2.000000e+00, %3783
  %3791 = bitcast float %3788 to i32
  %3792 = sub nsw i32 2129859010, %3791
  %3793 = bitcast i32 %3792 to float
  %3794 = fmul fast float %3793, %3790
  %3795 = fadd fast float %3794, -1.000000e+00
  %3796 = bitcast float %3789 to i32
  %3797 = sub nsw i32 2129859010, %3796
  %3798 = bitcast i32 %3797 to float
  %3799 = fmul fast float %3798, %3783
  %3800 = fadd fast float %3799, 1.000000e+00
  %3801 = fmul fast float %3784, 2.000000e+00
  %3802 = fsub fast float 3.000000e+00, %3801
  %3803 = fadd fast float %3801, 1.000000e+00
  %3804 = fsub fast float 2.000000e+00, %3784
  %3805 = bitcast float %3802 to i32
  %3806 = sub nsw i32 2129859010, %3805
  %3807 = bitcast i32 %3806 to float
  %3808 = fmul fast float %3807, %3804
  %3809 = fadd fast float %3808, -1.000000e+00
  %3810 = bitcast float %3803 to i32
  %3811 = sub nsw i32 2129859010, %3810
  %3812 = bitcast i32 %3811 to float
  %3813 = fmul fast float %3812, %3784
  %3814 = fadd fast float %3813, 1.000000e+00
  %3815 = fadd fast float %3795, %3785
  %3816 = fmul fast float %3815, %3767
  %3817 = fadd fast float %3809, %3786
  %3818 = fmul fast float %3817, %3768
  %3819 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %3816, float %3818, float undef, float undef, i32 0, i32 0, i32 undef, float %3772)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3820 = extractvalue %dx.types.ResRet.f32 %3819, 0
  %3821 = fmul fast float %3820, %3788
  %3822 = fadd fast float %3800, %3785
  %3823 = fmul fast float %3822, %3767
  %3824 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %3823, float %3818, float undef, float undef, i32 0, i32 0, i32 undef, float %3772)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3825 = extractvalue %dx.types.ResRet.f32 %3824, 0
  %3826 = fmul fast float %3825, %3789
  %3827 = fadd fast float %3814, %3786
  %3828 = fmul fast float %3827, %3768
  %3829 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %3816, float %3828, float undef, float undef, i32 0, i32 0, i32 undef, float %3772)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3830 = extractvalue %dx.types.ResRet.f32 %3829, 0
  %3831 = fmul fast float %3830, %3788
  %3832 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %3823, float %3828, float undef, float undef, i32 0, i32 0, i32 undef, float %3772)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3833 = extractvalue %dx.types.ResRet.f32 %3832, 0
  %3834 = fmul fast float %3833, %3789
  %3835 = fadd fast float %3834, %3831
  %3836 = fmul fast float %3835, %3803
  %3837 = fadd fast float %3826, %3821
  %3838 = fmul fast float %3837, %3802
  %3839 = fadd fast float %3838, %3836
  %3840 = fmul fast float %3839, 6.250000e-02
  br label %3926

; <label>:3841                                    ; preds = %3764
  %3842 = fmul fast float %222, 0x401921FB60000000
  %3843 = call float @dx.op.unary.f32(i32 13, float %3842)  ; Sin(value)
  %3844 = call float @dx.op.unary.f32(i32 12, float %3842)  ; Cos(value)
  %3845 = fsub fast float -0.000000e+00, %3843
  br label %3846

; <label>:3846                                    ; preds = %3895, %3841
  %3847 = phi float [ 0.000000e+00, %3841 ], [ %3890, %3895 ]
  %3848 = phi float [ 0.000000e+00, %3841 ], [ %3892, %3895 ]
  %3849 = phi i32 [ 0, %3841 ], [ %3896, %3895 ]
  %3850 = mul i32 %3849, 2
  %3851 = add i32 0, %3850
  %3852 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3851
  %3853 = load float, float* %3852, align 4
  %3854 = mul i32 %3849, 2
  %3855 = add i32 1, %3854
  %3856 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3855
  %3857 = load float, float* %3856, align 4
  %3858 = fmul fast float %3853, %3844
  %3859 = call float @dx.op.tertiary.f32(i32 46, float %3857, float %3845, float %3858)  ; FMad(a,b,c)
  %3860 = fmul fast float %3853, %3843
  %3861 = call float @dx.op.tertiary.f32(i32 46, float %3857, float %3844, float %3860)  ; FMad(a,b,c)
  %3862 = fmul fast float %3859, %3770
  %3863 = fmul fast float %3861, %3770
  %3864 = fadd fast float %3862, %3261
  %3865 = fadd fast float %3863, %3262
  %3866 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %51, float %3864, float %3865, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3867 = extractvalue %dx.types.ResRet.f32 %3866, 0
  %3868 = extractvalue %dx.types.ResRet.f32 %3866, 1
  %3869 = extractvalue %dx.types.ResRet.f32 %3866, 2
  %3870 = extractvalue %dx.types.ResRet.f32 %3866, 3
  %3871 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 0
  store float %3867, float* %3871, align 4
  %3872 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 1
  store float %3868, float* %3872, align 4
  %3873 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 2
  store float %3869, float* %3873, align 4
  %3874 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 3
  store float %3870, float* %3874, align 4
  %3875 = fsub fast float %3867, %3772
  %3876 = fcmp fast olt float %3875, 0.000000e+00
  %3877 = select i1 %3876, float 0.000000e+00, float 1.000000e+00
  %3878 = fadd fast float %3877, %3847
  %3879 = fmul fast float %3877, %3875
  %3880 = fadd fast float %3879, %3848
  br label %3881

; <label>:3881                                    ; preds = %3881, %3846
  %3882 = phi i32 [ 1, %3846 ], [ %3893, %3881 ]
  %3883 = phi float [ %3880, %3846 ], [ %3892, %3881 ]
  %3884 = phi float [ %3878, %3846 ], [ %3890, %3881 ]
  %3885 = getelementptr [4 x float], [4 x float]* %87, i32 0, i32 %3882
  %3886 = load float, float* %3885, align 4, !tbaa !114, !noalias !104
  %3887 = fsub fast float %3886, %3772
  %3888 = fcmp fast olt float %3887, 0.000000e+00
  %3889 = select i1 %3888, float 0.000000e+00, float 1.000000e+00
  %3890 = fadd fast float %3889, %3884
  %3891 = fmul fast float %3889, %3887
  %3892 = fadd fast float %3891, %3883
  %3893 = add nuw nsw i32 %3882, 1
  %3894 = icmp eq i32 %3893, 4
  br i1 %3894, label %3895, label %3881, !llvm.loop !116

; <label>:3895                                    ; preds = %3881
  %3896 = add nuw nsw i32 %3849, 1
  %3897 = icmp eq i32 %3896, 8
  br i1 %3897, label %3898, label %3846, !llvm.loop !117

; <label>:3898                                    ; preds = %3895
  %3899 = fdiv fast float 1.000000e+00, %3890
  %3900 = fmul fast float %3899, %3892
  %3901 = fdiv fast float 1.000000e+00, %3772
  %3902 = fmul fast float %3900, %3901
  %3903 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3904 = call float @dx.op.binary.f32(i32 35, float %3903, float 0.000000e+00)  ; FMax(a,b)
  %3905 = fmul fast float %3890, 3.125000e-02
  %3906 = call float @dx.op.unary.f32(i32 7, float %3905)  ; Saturate(value)
  %3907 = fmul fast float %3906, 2.000000e+00
  %3908 = fadd fast float %3907, -1.000000e+00
  %3909 = fcmp fast ogt float %3908, 0.000000e+00
  %3910 = fcmp fast olt float %3908, 0.000000e+00
  %3911 = zext i1 %3909 to i32
  %3912 = zext i1 %3910 to i32
  %3913 = sub nsw i32 %3911, %3912
  %3914 = sitofp i32 %3913 to float
  %3915 = fmul fast float %3914, %3908
  %3916 = fsub fast float 1.000000e+00, %3915
  %3917 = fmul fast float %3916, %3916
  %3918 = fmul fast float %3917, %3916
  %3919 = fsub fast float %3916, %3918
  %3920 = fmul fast float %3919, %3904
  %3921 = fsub fast float 1.000000e+00, %3918
  %3922 = fsub fast float %3921, %3920
  %3923 = fmul fast float %3914, 5.000000e-01
  %3924 = fmul fast float %3923, %3922
  %3925 = fsub fast float 5.000000e-01, %3924
  br label %3926

; <label>:3926                                    ; preds = %3898, %3774, %3761
  %3927 = phi float [ 1.000000e+00, %3761 ], [ %3840, %3774 ], [ %3925, %3898 ]
  %3928 = fcmp fast ogt float %3357, 0.000000e+00
  br i1 %3928, label %3929, label %4093, !dx.controlflow.hints !118

; <label>:3929                                    ; preds = %3926
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 1
  %3932 = fadd fast float %3931, %3246
  %3933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3934 = extractvalue %dx.types.CBufRet.f32 %3933, 2
  %3935 = extractvalue %dx.types.CBufRet.f32 %3933, 3
  %3936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3937 = extractvalue %dx.types.CBufRet.f32 %3936, 1
  %3938 = call float @dx.op.binary.f32(i32 35, float %3932, float 0.000000e+00)  ; FMax(a,b)
  %3939 = fadd fast float %3938, 0x3F10000000000000
  %3940 = fcmp fast oeq float %3937, 0.000000e+00
  br i1 %3940, label %3941, label %4008

; <label>:3941                                    ; preds = %3929
  %3942 = extractvalue %dx.types.CBufRet.f32 %3933, 1
  %3943 = extractvalue %dx.types.CBufRet.f32 %3933, 0
  %3944 = fmul fast float %3943, %3253
  %3945 = fmul fast float %3942, %3254
  %3946 = fadd fast float %3944, 5.000000e-01
  %3947 = call float @dx.op.unary.f32(i32 27, float %3946)  ; Round_ni(value)
  %3948 = fadd fast float %3945, 5.000000e-01
  %3949 = call float @dx.op.unary.f32(i32 27, float %3948)  ; Round_ni(value)
  %3950 = fsub fast float %3946, %3947
  %3951 = fsub fast float %3948, %3949
  %3952 = fadd fast float %3947, -5.000000e-01
  %3953 = fadd fast float %3949, -5.000000e-01
  %3954 = fmul fast float %3950, 2.000000e+00
  %3955 = fsub fast float 3.000000e+00, %3954
  %3956 = fadd fast float %3954, 1.000000e+00
  %3957 = fsub fast float 2.000000e+00, %3950
  %3958 = bitcast float %3955 to i32
  %3959 = sub nsw i32 2129859010, %3958
  %3960 = bitcast i32 %3959 to float
  %3961 = fmul fast float %3960, %3957
  %3962 = fadd fast float %3961, -1.000000e+00
  %3963 = bitcast float %3956 to i32
  %3964 = sub nsw i32 2129859010, %3963
  %3965 = bitcast i32 %3964 to float
  %3966 = fmul fast float %3965, %3950
  %3967 = fadd fast float %3966, 1.000000e+00
  %3968 = fmul fast float %3951, 2.000000e+00
  %3969 = fsub fast float 3.000000e+00, %3968
  %3970 = fadd fast float %3968, 1.000000e+00
  %3971 = fsub fast float 2.000000e+00, %3951
  %3972 = bitcast float %3969 to i32
  %3973 = sub nsw i32 2129859010, %3972
  %3974 = bitcast i32 %3973 to float
  %3975 = fmul fast float %3974, %3971
  %3976 = fadd fast float %3975, -1.000000e+00
  %3977 = bitcast float %3970 to i32
  %3978 = sub nsw i32 2129859010, %3977
  %3979 = bitcast i32 %3978 to float
  %3980 = fmul fast float %3979, %3951
  %3981 = fadd fast float %3980, 1.000000e+00
  %3982 = fadd fast float %3962, %3952
  %3983 = fmul fast float %3982, %3934
  %3984 = fadd fast float %3976, %3953
  %3985 = fmul fast float %3984, %3935
  %3986 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %3983, float %3985, float undef, float undef, i32 0, i32 0, i32 undef, float %3939)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3987 = extractvalue %dx.types.ResRet.f32 %3986, 0
  %3988 = fmul fast float %3987, %3955
  %3989 = fadd fast float %3967, %3952
  %3990 = fmul fast float %3989, %3934
  %3991 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %3990, float %3985, float undef, float undef, i32 0, i32 0, i32 undef, float %3939)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3992 = extractvalue %dx.types.ResRet.f32 %3991, 0
  %3993 = fmul fast float %3992, %3956
  %3994 = fadd fast float %3981, %3953
  %3995 = fmul fast float %3994, %3935
  %3996 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %3983, float %3995, float undef, float undef, i32 0, i32 0, i32 undef, float %3939)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3997 = extractvalue %dx.types.ResRet.f32 %3996, 0
  %3998 = fmul fast float %3997, %3955
  %3999 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %3990, float %3995, float undef, float undef, i32 0, i32 0, i32 undef, float %3939)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4000 = extractvalue %dx.types.ResRet.f32 %3999, 0
  %4001 = fmul fast float %4000, %3956
  %4002 = fadd fast float %4001, %3998
  %4003 = fmul fast float %4002, %3970
  %4004 = fadd fast float %3993, %3988
  %4005 = fmul fast float %4004, %3969
  %4006 = fadd fast float %4005, %4003
  %4007 = fmul fast float %4006, 6.250000e-02
  br label %4093

; <label>:4008                                    ; preds = %3929
  %4009 = fmul fast float %222, 0x401921FB60000000
  %4010 = call float @dx.op.unary.f32(i32 13, float %4009)  ; Sin(value)
  %4011 = call float @dx.op.unary.f32(i32 12, float %4009)  ; Cos(value)
  %4012 = fsub fast float -0.000000e+00, %4010
  br label %4013

; <label>:4013                                    ; preds = %4062, %4008
  %4014 = phi float [ 0.000000e+00, %4008 ], [ %4057, %4062 ]
  %4015 = phi float [ 0.000000e+00, %4008 ], [ %4059, %4062 ]
  %4016 = phi i32 [ 0, %4008 ], [ %4063, %4062 ]
  %4017 = mul i32 %4016, 2
  %4018 = add i32 0, %4017
  %4019 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4018
  %4020 = load float, float* %4019, align 4
  %4021 = mul i32 %4016, 2
  %4022 = add i32 1, %4021
  %4023 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4022
  %4024 = load float, float* %4023, align 4
  %4025 = fmul fast float %4020, %4011
  %4026 = call float @dx.op.tertiary.f32(i32 46, float %4024, float %4012, float %4025)  ; FMad(a,b,c)
  %4027 = fmul fast float %4020, %4010
  %4028 = call float @dx.op.tertiary.f32(i32 46, float %4024, float %4011, float %4027)  ; FMad(a,b,c)
  %4029 = fmul fast float %4026, %3937
  %4030 = fmul fast float %4028, %3937
  %4031 = fadd fast float %4029, %3253
  %4032 = fadd fast float %4030, %3254
  %4033 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %51, float %4031, float %4032, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4034 = extractvalue %dx.types.ResRet.f32 %4033, 0
  %4035 = extractvalue %dx.types.ResRet.f32 %4033, 1
  %4036 = extractvalue %dx.types.ResRet.f32 %4033, 2
  %4037 = extractvalue %dx.types.ResRet.f32 %4033, 3
  %4038 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 0
  store float %4034, float* %4038, align 4
  %4039 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 1
  store float %4035, float* %4039, align 4
  %4040 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 2
  store float %4036, float* %4040, align 4
  %4041 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 3
  store float %4037, float* %4041, align 4
  %4042 = fsub fast float %4034, %3939
  %4043 = fcmp fast olt float %4042, 0.000000e+00
  %4044 = select i1 %4043, float 0.000000e+00, float 1.000000e+00
  %4045 = fadd fast float %4044, %4014
  %4046 = fmul fast float %4044, %4042
  %4047 = fadd fast float %4046, %4015
  br label %4048

; <label>:4048                                    ; preds = %4048, %4013
  %4049 = phi i32 [ 1, %4013 ], [ %4060, %4048 ]
  %4050 = phi float [ %4047, %4013 ], [ %4059, %4048 ]
  %4051 = phi float [ %4045, %4013 ], [ %4057, %4048 ]
  %4052 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 %4049
  %4053 = load float, float* %4052, align 4, !tbaa !114, !noalias !104
  %4054 = fsub fast float %4053, %3939
  %4055 = fcmp fast olt float %4054, 0.000000e+00
  %4056 = select i1 %4055, float 0.000000e+00, float 1.000000e+00
  %4057 = fadd fast float %4056, %4051
  %4058 = fmul fast float %4056, %4054
  %4059 = fadd fast float %4058, %4050
  %4060 = add nuw nsw i32 %4049, 1
  %4061 = icmp eq i32 %4060, 4
  br i1 %4061, label %4062, label %4048, !llvm.loop !116

; <label>:4062                                    ; preds = %4048
  %4063 = add nuw nsw i32 %4016, 1
  %4064 = icmp eq i32 %4063, 8
  br i1 %4064, label %4065, label %4013, !llvm.loop !117

; <label>:4065                                    ; preds = %4062
  %4066 = fdiv fast float 1.000000e+00, %4057
  %4067 = fmul fast float %4066, %4059
  %4068 = fdiv fast float 1.000000e+00, %3939
  %4069 = fmul fast float %4067, %4068
  %4070 = call float @dx.op.unary.f32(i32 7, float %4069)  ; Saturate(value)
  %4071 = call float @dx.op.binary.f32(i32 35, float %4070, float 0.000000e+00)  ; FMax(a,b)
  %4072 = fmul fast float %4057, 3.125000e-02
  %4073 = call float @dx.op.unary.f32(i32 7, float %4072)  ; Saturate(value)
  %4074 = fmul fast float %4073, 2.000000e+00
  %4075 = fadd fast float %4074, -1.000000e+00
  %4076 = fcmp fast ogt float %4075, 0.000000e+00
  %4077 = fcmp fast olt float %4075, 0.000000e+00
  %4078 = zext i1 %4076 to i32
  %4079 = zext i1 %4077 to i32
  %4080 = sub nsw i32 %4078, %4079
  %4081 = sitofp i32 %4080 to float
  %4082 = fmul fast float %4081, %4075
  %4083 = fsub fast float 1.000000e+00, %4082
  %4084 = fmul fast float %4083, %4083
  %4085 = fmul fast float %4084, %4083
  %4086 = fsub fast float %4083, %4085
  %4087 = fmul fast float %4086, %4071
  %4088 = fsub fast float 1.000000e+00, %4085
  %4089 = fsub fast float %4088, %4087
  %4090 = fmul fast float %4081, 5.000000e-01
  %4091 = fmul fast float %4090, %4089
  %4092 = fsub fast float 5.000000e-01, %4091
  br label %4093

; <label>:4093                                    ; preds = %4065, %3941, %3926
  %4094 = phi float [ 1.000000e+00, %3926 ], [ %4007, %3941 ], [ %4092, %4065 ]
  %4095 = fcmp fast ogt float %3356, 0.000000e+00
  br i1 %4095, label %4096, label %4260, !dx.controlflow.hints !119

; <label>:4096                                    ; preds = %4093
  %4097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4097, 0
  %4099 = fadd fast float %4098, %3246
  %4100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4101 = extractvalue %dx.types.CBufRet.f32 %4100, 2
  %4102 = extractvalue %dx.types.CBufRet.f32 %4100, 3
  %4103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4104 = extractvalue %dx.types.CBufRet.f32 %4103, 0
  %4105 = call float @dx.op.binary.f32(i32 35, float %4099, float 0.000000e+00)  ; FMax(a,b)
  %4106 = fadd fast float %4105, 0x3F10000000000000
  %4107 = fcmp fast oeq float %4104, 0.000000e+00
  br i1 %4107, label %4108, label %4175

; <label>:4108                                    ; preds = %4096
  %4109 = extractvalue %dx.types.CBufRet.f32 %4100, 1
  %4110 = extractvalue %dx.types.CBufRet.f32 %4100, 0
  %4111 = fmul fast float %4110, %3238
  %4112 = fmul fast float %4109, %3242
  %4113 = fadd fast float %4111, 5.000000e-01
  %4114 = call float @dx.op.unary.f32(i32 27, float %4113)  ; Round_ni(value)
  %4115 = fadd fast float %4112, 5.000000e-01
  %4116 = call float @dx.op.unary.f32(i32 27, float %4115)  ; Round_ni(value)
  %4117 = fsub fast float %4113, %4114
  %4118 = fsub fast float %4115, %4116
  %4119 = fadd fast float %4114, -5.000000e-01
  %4120 = fadd fast float %4116, -5.000000e-01
  %4121 = fmul fast float %4117, 2.000000e+00
  %4122 = fsub fast float 3.000000e+00, %4121
  %4123 = fadd fast float %4121, 1.000000e+00
  %4124 = fsub fast float 2.000000e+00, %4117
  %4125 = bitcast float %4122 to i32
  %4126 = sub nsw i32 2129859010, %4125
  %4127 = bitcast i32 %4126 to float
  %4128 = fmul fast float %4127, %4124
  %4129 = fadd fast float %4128, -1.000000e+00
  %4130 = bitcast float %4123 to i32
  %4131 = sub nsw i32 2129859010, %4130
  %4132 = bitcast i32 %4131 to float
  %4133 = fmul fast float %4132, %4117
  %4134 = fadd fast float %4133, 1.000000e+00
  %4135 = fmul fast float %4118, 2.000000e+00
  %4136 = fsub fast float 3.000000e+00, %4135
  %4137 = fadd fast float %4135, 1.000000e+00
  %4138 = fsub fast float 2.000000e+00, %4118
  %4139 = bitcast float %4136 to i32
  %4140 = sub nsw i32 2129859010, %4139
  %4141 = bitcast i32 %4140 to float
  %4142 = fmul fast float %4141, %4138
  %4143 = fadd fast float %4142, -1.000000e+00
  %4144 = bitcast float %4137 to i32
  %4145 = sub nsw i32 2129859010, %4144
  %4146 = bitcast i32 %4145 to float
  %4147 = fmul fast float %4146, %4118
  %4148 = fadd fast float %4147, 1.000000e+00
  %4149 = fadd fast float %4129, %4119
  %4150 = fmul fast float %4149, %4101
  %4151 = fadd fast float %4143, %4120
  %4152 = fmul fast float %4151, %4102
  %4153 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4150, float %4152, float undef, float undef, i32 0, i32 0, i32 undef, float %4106)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4154 = extractvalue %dx.types.ResRet.f32 %4153, 0
  %4155 = fmul fast float %4154, %4122
  %4156 = fadd fast float %4134, %4119
  %4157 = fmul fast float %4156, %4101
  %4158 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4157, float %4152, float undef, float undef, i32 0, i32 0, i32 undef, float %4106)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4159 = extractvalue %dx.types.ResRet.f32 %4158, 0
  %4160 = fmul fast float %4159, %4123
  %4161 = fadd fast float %4148, %4120
  %4162 = fmul fast float %4161, %4102
  %4163 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4150, float %4162, float undef, float undef, i32 0, i32 0, i32 undef, float %4106)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4164 = extractvalue %dx.types.ResRet.f32 %4163, 0
  %4165 = fmul fast float %4164, %4122
  %4166 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4157, float %4162, float undef, float undef, i32 0, i32 0, i32 undef, float %4106)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4167 = extractvalue %dx.types.ResRet.f32 %4166, 0
  %4168 = fmul fast float %4167, %4123
  %4169 = fadd fast float %4168, %4165
  %4170 = fmul fast float %4169, %4137
  %4171 = fadd fast float %4160, %4155
  %4172 = fmul fast float %4171, %4136
  %4173 = fadd fast float %4172, %4170
  %4174 = fmul fast float %4173, 6.250000e-02
  br label %4260

; <label>:4175                                    ; preds = %4096
  %4176 = fmul fast float %222, 0x401921FB60000000
  %4177 = call float @dx.op.unary.f32(i32 13, float %4176)  ; Sin(value)
  %4178 = call float @dx.op.unary.f32(i32 12, float %4176)  ; Cos(value)
  %4179 = fsub fast float -0.000000e+00, %4177
  br label %4180

; <label>:4180                                    ; preds = %4229, %4175
  %4181 = phi float [ 0.000000e+00, %4175 ], [ %4224, %4229 ]
  %4182 = phi float [ 0.000000e+00, %4175 ], [ %4226, %4229 ]
  %4183 = phi i32 [ 0, %4175 ], [ %4230, %4229 ]
  %4184 = mul i32 %4183, 2
  %4185 = add i32 0, %4184
  %4186 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4185
  %4187 = load float, float* %4186, align 4
  %4188 = mul i32 %4183, 2
  %4189 = add i32 1, %4188
  %4190 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4189
  %4191 = load float, float* %4190, align 4
  %4192 = fmul fast float %4187, %4178
  %4193 = call float @dx.op.tertiary.f32(i32 46, float %4191, float %4179, float %4192)  ; FMad(a,b,c)
  %4194 = fmul fast float %4187, %4177
  %4195 = call float @dx.op.tertiary.f32(i32 46, float %4191, float %4178, float %4194)  ; FMad(a,b,c)
  %4196 = fmul fast float %4193, %4104
  %4197 = fmul fast float %4195, %4104
  %4198 = fadd fast float %4196, %3238
  %4199 = fadd fast float %4197, %3242
  %4200 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %51, float %4198, float %4199, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.ResRet.f32 %4200, 1
  %4203 = extractvalue %dx.types.ResRet.f32 %4200, 2
  %4204 = extractvalue %dx.types.ResRet.f32 %4200, 3
  %4205 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 0
  store float %4201, float* %4205, align 4
  %4206 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 1
  store float %4202, float* %4206, align 4
  %4207 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 2
  store float %4203, float* %4207, align 4
  %4208 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 3
  store float %4204, float* %4208, align 4
  %4209 = fsub fast float %4201, %4106
  %4210 = fcmp fast olt float %4209, 0.000000e+00
  %4211 = select i1 %4210, float 0.000000e+00, float 1.000000e+00
  %4212 = fadd fast float %4211, %4181
  %4213 = fmul fast float %4211, %4209
  %4214 = fadd fast float %4213, %4182
  br label %4215

; <label>:4215                                    ; preds = %4215, %4180
  %4216 = phi i32 [ 1, %4180 ], [ %4227, %4215 ]
  %4217 = phi float [ %4214, %4180 ], [ %4226, %4215 ]
  %4218 = phi float [ %4212, %4180 ], [ %4224, %4215 ]
  %4219 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 %4216
  %4220 = load float, float* %4219, align 4, !tbaa !114, !noalias !104
  %4221 = fsub fast float %4220, %4106
  %4222 = fcmp fast olt float %4221, 0.000000e+00
  %4223 = select i1 %4222, float 0.000000e+00, float 1.000000e+00
  %4224 = fadd fast float %4223, %4218
  %4225 = fmul fast float %4223, %4221
  %4226 = fadd fast float %4225, %4217
  %4227 = add nuw nsw i32 %4216, 1
  %4228 = icmp eq i32 %4227, 4
  br i1 %4228, label %4229, label %4215, !llvm.loop !116

; <label>:4229                                    ; preds = %4215
  %4230 = add nuw nsw i32 %4183, 1
  %4231 = icmp eq i32 %4230, 8
  br i1 %4231, label %4232, label %4180, !llvm.loop !117

; <label>:4232                                    ; preds = %4229
  %4233 = fdiv fast float 1.000000e+00, %4224
  %4234 = fmul fast float %4233, %4226
  %4235 = fdiv fast float 1.000000e+00, %4106
  %4236 = fmul fast float %4234, %4235
  %4237 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4238 = call float @dx.op.binary.f32(i32 35, float %4237, float 0.000000e+00)  ; FMax(a,b)
  %4239 = fmul fast float %4224, 3.125000e-02
  %4240 = call float @dx.op.unary.f32(i32 7, float %4239)  ; Saturate(value)
  %4241 = fmul fast float %4240, 2.000000e+00
  %4242 = fadd fast float %4241, -1.000000e+00
  %4243 = fcmp fast ogt float %4242, 0.000000e+00
  %4244 = fcmp fast olt float %4242, 0.000000e+00
  %4245 = zext i1 %4243 to i32
  %4246 = zext i1 %4244 to i32
  %4247 = sub nsw i32 %4245, %4246
  %4248 = sitofp i32 %4247 to float
  %4249 = fmul fast float %4248, %4242
  %4250 = fsub fast float 1.000000e+00, %4249
  %4251 = fmul fast float %4250, %4250
  %4252 = fmul fast float %4251, %4250
  %4253 = fsub fast float %4250, %4252
  %4254 = fmul fast float %4253, %4238
  %4255 = fsub fast float 1.000000e+00, %4252
  %4256 = fsub fast float %4255, %4254
  %4257 = fmul fast float %4248, 5.000000e-01
  %4258 = fmul fast float %4257, %4256
  %4259 = fsub fast float 5.000000e-01, %4258
  br label %4260

; <label>:4260                                    ; preds = %4232, %4108, %4093
  %4261 = phi float [ 1.000000e+00, %4093 ], [ %4174, %4108 ], [ %4259, %4232 ]
  %4262 = fsub fast float %3927, %3762
  %4263 = fmul fast float %4262, %3300
  %4264 = fadd fast float %4263, %3762
  %4265 = fsub fast float %4094, %4264
  %4266 = fmul fast float %4265, %3330
  %4267 = fadd fast float %4266, %4264
  %4268 = fsub fast float %4261, %4267
  %4269 = fmul fast float %4268, %3356
  %4270 = fadd fast float %4269, %4267
  %4271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4272 = extractvalue %dx.types.CBufRet.f32 %4271, 2
  %4273 = fcmp fast ogt float %4272, 0.000000e+00
  br i1 %4273, label %4274, label %4314, !dx.controlflow.hints !120

; <label>:4274                                    ; preds = %4260
  %4275 = fcmp fast ugt float %4272, 0.000000e+00
  br i1 %4275, label %4276, label %4311

; <label>:4276                                    ; preds = %4274
  %4277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4278 = extractvalue %dx.types.CBufRet.f32 %4277, 0
  %4279 = extractvalue %dx.types.CBufRet.f32 %4277, 1
  %4280 = extractvalue %dx.types.CBufRet.f32 %4277, 2
  %4281 = extractvalue %dx.types.CBufRet.f32 %4277, 3
  %4282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4283 = extractvalue %dx.types.CBufRet.f32 %4282, 0
  %4284 = extractvalue %dx.types.CBufRet.f32 %4282, 1
  %4285 = extractvalue %dx.types.CBufRet.f32 %4282, 2
  %4286 = extractvalue %dx.types.CBufRet.f32 %4282, 3
  %4287 = extractvalue %dx.types.CBufRet.f32 %4271, 0
  %4288 = extractvalue %dx.types.CBufRet.f32 %4271, 1
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 0
  %4291 = extractvalue %dx.types.CBufRet.f32 %4289, 1
  %4292 = extractvalue %dx.types.CBufRet.f32 %4289, 2
  %4293 = fadd fast float %4290, %3215
  %4294 = fadd fast float %4291, %3216
  %4295 = fadd fast float %4292, %3217
  %4296 = fmul fast float %4293, %4278
  %4297 = call float @dx.op.tertiary.f32(i32 46, float %4279, float %4294, float %4296)  ; FMad(a,b,c)
  %4298 = call float @dx.op.tertiary.f32(i32 46, float %4280, float %4295, float %4297)  ; FMad(a,b,c)
  %4299 = fadd fast float %4298, %4281
  %4300 = fmul fast float %4293, %4283
  %4301 = call float @dx.op.tertiary.f32(i32 46, float %4284, float %4294, float %4300)  ; FMad(a,b,c)
  %4302 = call float @dx.op.tertiary.f32(i32 46, float %4285, float %4295, float %4301)  ; FMad(a,b,c)
  %4303 = fadd fast float %4302, %4286
  %4304 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %4299, float %4303, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4305 = extractvalue %dx.types.ResRet.f32 %4304, 0
  %4306 = fmul fast float %4305, %4288
  %4307 = fadd fast float %4306, %4287
  %4308 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4309 = fmul fast float %4308, %4272
  %4310 = fsub fast float 1.000000e+00, %4309
  br label %4311

; <label>:4311                                    ; preds = %4276, %4274
  %4312 = phi float [ %4310, %4276 ], [ 1.000000e+00, %4274 ]
  %4313 = fmul fast float %4312, %4270
  br label %4314

; <label>:4314                                    ; preds = %4311, %4260, %3195
  %4315 = phi float [ 1.000000e+00, %3195 ], [ %4313, %4311 ], [ %4270, %4260 ]
  %4316 = call float @dx.op.binary.f32(i32 36, float %4315, float %4315)  ; FMin(a,b)
  %4317 = call float @dx.op.binary.f32(i32 36, float %4315, float %4316)  ; FMin(a,b)
  %4318 = fcmp fast ogt float %4317, 0.000000e+00
  br i1 %4318, label %4319, label %4484, !dx.controlflow.hints !121

; <label>:4319                                    ; preds = %4314
  %4320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.f32 %4320, 0
  %4322 = extractvalue %dx.types.CBufRet.f32 %4320, 1
  %4323 = extractvalue %dx.types.CBufRet.f32 %4320, 2
  %4324 = extractvalue %dx.types.CBufRet.f32 %4320, 3
  %4325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4326 = extractvalue %dx.types.CBufRet.f32 %4325, 0
  %4327 = extractvalue %dx.types.CBufRet.f32 %4325, 1
  %4328 = extractvalue %dx.types.CBufRet.f32 %4325, 2
  %4329 = extractvalue %dx.types.CBufRet.f32 %4325, 3
  %4330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4331 = extractvalue %dx.types.CBufRet.f32 %4330, 0
  %4332 = extractvalue %dx.types.CBufRet.f32 %4330, 1
  %4333 = extractvalue %dx.types.CBufRet.f32 %4330, 2
  %4334 = extractvalue %dx.types.CBufRet.f32 %4330, 3
  %4335 = fmul fast float %4321, %3215
  %4336 = call float @dx.op.tertiary.f32(i32 46, float %3216, float %4322, float %4335)  ; FMad(a,b,c)
  %4337 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %4323, float %4336)  ; FMad(a,b,c)
  %4338 = fadd fast float %4337, %4324
  %4339 = fmul fast float %4326, %3215
  %4340 = call float @dx.op.tertiary.f32(i32 46, float %3216, float %4327, float %4339)  ; FMad(a,b,c)
  %4341 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %4328, float %4340)  ; FMad(a,b,c)
  %4342 = fadd fast float %4341, %4329
  %4343 = fmul fast float %4331, %3215
  %4344 = call float @dx.op.tertiary.f32(i32 46, float %3216, float %4332, float %4343)  ; FMad(a,b,c)
  %4345 = call float @dx.op.tertiary.f32(i32 46, float %3217, float %4333, float %4344)  ; FMad(a,b,c)
  %4346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4347 = extractvalue %dx.types.CBufRet.f32 %4346, 0
  %4348 = extractvalue %dx.types.CBufRet.f32 %4346, 1
  %4349 = extractvalue %dx.types.CBufRet.f32 %4346, 3
  %4350 = fmul fast float %4349, %4338
  %4351 = fmul fast float %4349, %4342
  %4352 = fadd fast float %4350, %4347
  %4353 = fadd fast float %4351, %4348
  %4354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4355 = extractvalue %dx.types.CBufRet.f32 %4354, 0
  %4356 = extractvalue %dx.types.CBufRet.f32 %4354, 1
  %4357 = fsub fast float %4352, %4355
  %4358 = fsub fast float %4353, %4356
  %4359 = fcmp fast olt float %4357, 0.000000e+00
  %4360 = fcmp fast olt float %4358, 0.000000e+00
  %4361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4362 = extractvalue %dx.types.CBufRet.f32 %4361, 0
  %4363 = extractvalue %dx.types.CBufRet.f32 %4361, 1
  %4364 = extractvalue %dx.types.CBufRet.f32 %4361, 2
  %4365 = extractvalue %dx.types.CBufRet.f32 %4361, 3
  %4366 = select i1 %4359, float %4362, float %4364
  %4367 = select i1 %4360, float %4363, float %4365
  %4368 = fmul fast float %4366, %4357
  %4369 = fmul fast float %4367, %4358
  %4370 = call float @dx.op.unary.f32(i32 6, float %4368)  ; FAbs(value)
  %4371 = call float @dx.op.unary.f32(i32 6, float %4369)  ; FAbs(value)
  %4372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4373 = extractvalue %dx.types.CBufRet.f32 %4372, 0
  %4374 = call float @dx.op.binary.f32(i32 35, float %4370, float %4371)  ; FMax(a,b)
  %4375 = fsub fast float %4373, %4374
  %4376 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4377 = fcmp fast ogt float %4376, 0.000000e+00
  br i1 %4377, label %4378, label %4419, !dx.controlflow.hints !122

; <label>:4378                                    ; preds = %4319
  %4379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %4352, float %4353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4380 = extractvalue %dx.types.ResRet.f32 %4379, 1
  %4381 = fcmp fast ogt float %4380, 0.000000e+00
  br i1 %4381, label %4382, label %4414

; <label>:4382                                    ; preds = %4378
  %4383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %4352, float %4353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4384 = extractvalue %dx.types.ResRet.f32 %4383, 0
  %4385 = extractvalue %dx.types.ResRet.f32 %4383, 1
  %4386 = extractvalue %dx.types.ResRet.f32 %4383, 2
  %4387 = extractvalue %dx.types.ResRet.f32 %4383, 3
  %4388 = fsub fast float 1.000000e+00, %4334
  %4389 = fsub fast float %4388, %4345
  %4390 = fmul fast float %4389, 0x400921FB60000000
  %4391 = fadd fast float %4390, 0x3FF921FB60000000
  %4392 = call float @dx.op.unary.f32(i32 13, float %4391)  ; Sin(value)
  %4393 = fadd fast float %4392, -1.000000e+00
  %4394 = fmul fast float %4393, 0x3FD45F3060000000
  %4395 = fmul fast float %4389, 0x401921FB60000000
  %4396 = fadd fast float %4395, 0x400921FB60000000
  %4397 = call float @dx.op.unary.f32(i32 13, float %4396)  ; Sin(value)
  %4398 = fadd fast float %4397, 0x3E7777A5C0000000
  %4399 = fmul fast float %4398, 0x3FC45F3060000000
  %4400 = fmul fast float %4389, 0x4022D97C80000000
  %4401 = fadd fast float %4400, 0x4012D97C80000000
  %4402 = call float @dx.op.unary.f32(i32 13, float %4401)  ; Sin(value)
  %4403 = fadd fast float %4402, 1.000000e+00
  %4404 = fmul fast float %4403, 0x3FBB2995E0000000
  %4405 = fmul fast float %4389, 0x402921FB60000000
  %4406 = fadd fast float %4405, 0x401921FB60000000
  %4407 = call float @dx.op.unary.f32(i32 13, float %4406)  ; Sin(value)
  %4408 = fadd fast float %4407, 0xBE8777A5C0000000
  %4409 = fmul fast float %4408, 0x3FB45F3060000000
  %4410 = call float @dx.op.dot4.f32(i32 56, float %4384, float %4385, float %4386, float %4387, float %4394, float %4399, float %4404, float %4409)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4411 = fmul fast float %4410, 0xBFF7154760000000
  %4412 = call float @dx.op.unary.f32(i32 21, float %4411)  ; Exp(value)
  %4413 = call float @dx.op.unary.f32(i32 7, float %4412)  ; Saturate(value)
  br label %4414

; <label>:4414                                    ; preds = %4382, %4378
  %4415 = phi float [ %4413, %4382 ], [ 1.000000e+00, %4378 ]
  %4416 = fadd fast float %4415, -1.000000e+00
  %4417 = fmul fast float %4416, %4376
  %4418 = fadd fast float %4417, 1.000000e+00
  br label %4419

; <label>:4419                                    ; preds = %4414, %4319
  %4420 = phi float [ %4418, %4414 ], [ 1.000000e+00, %4319 ]
  %4421 = fmul fast float %4420, %4315
  %4422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4423 = extractvalue %dx.types.CBufRet.f32 %4422, 0
  %4424 = extractvalue %dx.types.CBufRet.f32 %4422, 1
  %4425 = extractvalue %dx.types.CBufRet.f32 %4422, 2
  %4426 = fadd fast float %4423, %149
  %4427 = fadd fast float %4424, %150
  %4428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4429 = extractvalue %dx.types.CBufRet.f32 %4428, 1
  %4430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4431 = extractvalue %dx.types.CBufRet.f32 %4430, 0
  %4432 = extractvalue %dx.types.CBufRet.f32 %4430, 1
  %4433 = extractvalue %dx.types.CBufRet.f32 %4430, 2
  %4434 = fsub fast float -0.000000e+00, %4426
  %4435 = fsub fast float -0.000000e+00, %4427
  %4436 = fsub fast float %2221, %4425
  %4437 = fadd fast float %4436, %4429
  %4438 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4434, float %4435, float %4437)  ; Dot3(ax,ay,az,bx,by,bz)
  %4439 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4431, float %4432, float %4433)  ; Dot3(ax,ay,az,bx,by,bz)
  %4440 = fdiv fast float 1.000000e+00, %4439
  %4441 = fmul fast float %4440, %4438
  %4442 = fmul fast float %4431, %4441
  %4443 = fmul fast float %4432, %4441
  %4444 = fadd fast float %4442, %4426
  %4445 = fadd fast float %4443, %4427
  %4446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4447 = extractvalue %dx.types.CBufRet.f32 %4446, 0
  %4448 = extractvalue %dx.types.CBufRet.f32 %4446, 1
  %4449 = fsub fast float %4444, %4447
  %4450 = fsub fast float %4445, %4448
  %4451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4452 = extractvalue %dx.types.CBufRet.f32 %4451, 2
  %4453 = extractvalue %dx.types.CBufRet.f32 %4451, 3
  %4454 = fmul fast float %4449, %4452
  %4455 = fmul fast float %4450, %4453
  %4456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4457 = extractvalue %dx.types.CBufRet.i32 %4456, 3
  %4458 = icmp eq i32 %4457, 0
  br i1 %4458, label %4464, label %4459

; <label>:4459                                    ; preds = %4419
  %4460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %4454, float %4455, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4461 = extractvalue %dx.types.ResRet.f32 %4460, 0
  %4462 = extractvalue %dx.types.ResRet.f32 %4460, 1
  %4463 = extractvalue %dx.types.ResRet.f32 %4460, 2
  br label %4469

; <label>:4464                                    ; preds = %4419
  %4465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %4454, float %4455, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4466 = extractvalue %dx.types.ResRet.f32 %4465, 0
  %4467 = extractvalue %dx.types.ResRet.f32 %4465, 1
  %4468 = extractvalue %dx.types.ResRet.f32 %4465, 2
  br label %4469

; <label>:4469                                    ; preds = %4464, %4459
  %4470 = phi float [ %4461, %4459 ], [ %4466, %4464 ]
  %4471 = phi float [ %4462, %4459 ], [ %4467, %4464 ]
  %4472 = phi float [ %4463, %4459 ], [ %4468, %4464 ]
  %4473 = extractvalue %dx.types.CBufRet.f32 %4428, 2
  %4474 = fmul fast float %4473, %4470
  %4475 = extractvalue %dx.types.CBufRet.f32 %4428, 0
  %4476 = fsub fast float %4441, %4475
  %4477 = fsub fast float %4476, %4474
  %4478 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4477)  ; FMax(a,b)
  %4479 = fmul fast float %4478, %4471
  %4480 = call float @dx.op.binary.f32(i32 36, float %4472, float %4479)  ; FMin(a,b)
  %4481 = fmul fast float %4480, 0xBFF7154760000000
  %4482 = call float @dx.op.unary.f32(i32 21, float %4481)  ; Exp(value)
  %4483 = fmul fast float %4421, %4482
  br label %4484

; <label>:4484                                    ; preds = %4469, %4314
  %4485 = phi float [ %4483, %4469 ], [ %4315, %4314 ]
  %4486 = call float @dx.op.binary.f32(i32 36, float %4485, float %4485)  ; FMin(a,b)
  %4487 = call float @dx.op.binary.f32(i32 36, float %4485, float %4486)  ; FMin(a,b)
  %4488 = fcmp fast ogt float %4487, 0.000000e+00
  br i1 %4488, label %4489, label %4886, !dx.controlflow.hints !123

; <label>:4489                                    ; preds = %4484
  %4490 = fmul fast float %4485, %3207
  %4491 = fmul fast float %4485, %3208
  %4492 = fmul fast float %4485, %3209
  %4493 = fsub fast float %151, %2006
  %4494 = fcmp fast ogt float %4493, 0.000000e+00
  %4495 = fmul fast float %3196, 5.120000e+02
  %4496 = fmul fast float %3197, 5.120000e+02
  %4497 = fmul fast float %3198, 5.120000e+02
  %4498 = fadd fast float %4497, %151
  %4499 = fsub fast float %2006, %4498
  %4500 = fmul fast float %4499, 2.000000e+00
  %4501 = fadd fast float %4500, %4498
  %4502 = select i1 %4494, float %4501, float %4498
  %4503 = fsub fast float %4502, %151
  %4504 = call float @dx.op.dot3.f32(i32 55, float %4495, float %4496, float %4503, float %4495, float %4496, float %4503)  ; Dot3(ax,ay,az,bx,by,bz)
  %4505 = call float @dx.op.unary.f32(i32 25, float %4504)  ; Rsqrt(value)
  %4506 = fmul fast float %4505, %4495
  %4507 = fmul fast float %4505, %4496
  %4508 = fmul fast float %4505, %4503
  %4509 = fsub fast float %2006, %151
  %4510 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4509)  ; Dot3(ax,ay,az,bx,by,bz)
  %4511 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4506, float %4507, float %4508)  ; Dot3(ax,ay,az,bx,by,bz)
  %4512 = fdiv fast float 1.000000e+00, %4511
  %4513 = fmul fast float %4512, %4510
  %4514 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4493, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4515 = fcmp fast ogt float %4514, 0.000000e+00
  %4516 = fcmp fast olt float %4514, 0.000000e+00
  %4517 = zext i1 %4515 to i32
  %4518 = zext i1 %4516 to i32
  %4519 = sub nsw i32 %4517, %4518
  %4520 = sitofp i32 %4519 to float
  %4521 = fsub fast float %4502, %2006
  %4522 = call float @dx.op.dot3.f32(i32 55, float %4495, float %4496, float %4521, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4523 = fcmp fast ogt float %4522, 0.000000e+00
  %4524 = fcmp fast olt float %4522, 0.000000e+00
  %4525 = zext i1 %4523 to i32
  %4526 = zext i1 %4524 to i32
  %4527 = sub nsw i32 %4525, %4526
  %4528 = sitofp i32 %4527 to float
  %4529 = fcmp fast une float %4520, %4528
  br i1 %4529, label %4530, label %4540

; <label>:4530                                    ; preds = %4489
  %4531 = fmul fast float %4513, %4508
  %4532 = fmul fast float %4513, %4507
  %4533 = fmul fast float %4513, %4506
  %4534 = fmul fast float %4533, %4533
  %4535 = fmul fast float %4532, %4532
  %4536 = fadd fast float %4534, %4535
  %4537 = fmul fast float %4531, %4531
  %4538 = fadd fast float %4536, %4537
  %4539 = call float @dx.op.unary.f32(i32 24, float %4538)  ; Sqrt(value)
  br label %4550

; <label>:4540                                    ; preds = %4489
  %4541 = icmp slt i32 %4519, 0
  br i1 %4541, label %4542, label %4550

; <label>:4542                                    ; preds = %4540
  %4543 = fsub fast float %151, %4502
  %4544 = fmul fast float %4495, %4495
  %4545 = fmul fast float %4496, %4496
  %4546 = fadd fast float %4544, %4545
  %4547 = fmul fast float %4543, %4543
  %4548 = fadd fast float %4546, %4547
  %4549 = call float @dx.op.unary.f32(i32 24, float %4548)  ; Sqrt(value)
  br label %4550

; <label>:4550                                    ; preds = %4542, %4540, %4530
  %4551 = phi float [ %4539, %4530 ], [ %4549, %4542 ], [ 0.000000e+00, %4540 ]
  %4552 = fsub fast float -0.000000e+00, %4551
  %4553 = select i1 %4494, float -0.000000e+00, float %4552
  %4554 = fmul fast float %2007, 0x3FF7154760000000
  %4555 = fmul fast float %4554, %4553
  %4556 = fmul fast float %2008, 0x3FF7154760000000
  %4557 = fmul fast float %4556, %4553
  %4558 = fmul fast float %2009, 0x3FF7154760000000
  %4559 = fmul fast float %4558, %4553
  %4560 = call float @dx.op.unary.f32(i32 21, float %4555)  ; Exp(value)
  %4561 = call float @dx.op.unary.f32(i32 21, float %4557)  ; Exp(value)
  %4562 = call float @dx.op.unary.f32(i32 21, float %4559)  ; Exp(value)
  %4563 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4564 = call float @dx.op.unary.f32(i32 7, float %4561)  ; Saturate(value)
  %4565 = call float @dx.op.unary.f32(i32 7, float %4562)  ; Saturate(value)
  %4566 = fmul fast float %4490, %4563
  %4567 = fmul fast float %4491, %4564
  %4568 = fmul fast float %4492, %4565
  %4569 = fsub fast float %3196, %2206
  %4570 = fsub fast float %3197, %2205
  %4571 = fsub fast float %3198, %2204
  %4572 = call float @dx.op.dot3.f32(i32 55, float %4569, float %4570, float %4571, float %4569, float %4570, float %4571)  ; Dot3(ax,ay,az,bx,by,bz)
  %4573 = call float @dx.op.unary.f32(i32 25, float %4572)  ; Rsqrt(value)
  %4574 = fmul fast float %4573, %4569
  %4575 = fmul fast float %4573, %4570
  %4576 = fmul fast float %4573, %4571
  %4577 = call float @dx.op.dot3.f32(i32 55, float %3196, float %3197, float %3198, float %2213, float %2214, float %2215)  ; Dot3(ax,ay,az,bx,by,bz)
  %4578 = call float @dx.op.dot3.f32(i32 55, float %2203, float %2202, float %2201, float %4574, float %4575, float %4576)  ; Dot3(ax,ay,az,bx,by,bz)
  %4579 = call float @dx.op.unary.f32(i32 7, float %4577)  ; Saturate(value)
  %4580 = fmul fast float %4579, %4579
  %4581 = fmul fast float %4580, %3191
  %4582 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4583 = fmul fast float %4582, %4579
  %4584 = call float @dx.op.dot3.f32(i32 55, float %2213, float %2214, float %2215, float %4574, float %4575, float %4576)  ; Dot3(ax,ay,az,bx,by,bz)
  %4585 = fmul fast float %4584, %4584
  %4586 = call float @dx.op.unary.f32(i32 6, float %4577)  ; FAbs(value)
  %4587 = fsub fast float 1.000000e+00, %2282
  %4588 = fmul fast float %2224, %2224
  %4589 = fmul fast float %4588, %4587
  %4590 = fadd fast float %4589, %2282
  %4591 = bitcast float %4590 to i32
  %4592 = ashr i32 %4591, 1
  %4593 = add nsw i32 %4592, 532487669
  %4594 = bitcast i32 %4593 to float
  %4595 = fadd fast float %4594, %2224
  %4596 = call float @dx.op.dot3.f32(i32 55, float %1643, float %1644, float %1645, float %4574, float %4575, float %4576)  ; Dot3(ax,ay,az,bx,by,bz)
  %4597 = fsub fast float 1.000000e+00, %1631
  %4598 = call float @dx.op.binary.f32(i32 35, float %4597, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4599 = fmul fast float %4598, %4598
  %4600 = fmul fast float %4599, %2282
  %4601 = fmul fast float %4596, %4596
  %4602 = fsub fast float 1.000000e+00, %4585
  %4603 = fsub fast float %4602, %4601
  %4604 = fdiv fast float %4601, %4600
  %4605 = fadd fast float %4604, %4585
  %4606 = fdiv fast float %4603, %2282
  %4607 = fadd fast float %4605, %4606
  %4608 = fmul fast float %4586, %4586
  %4609 = fmul fast float %4608, %4587
  %4610 = fadd fast float %4609, %2282
  %4611 = bitcast float %4610 to i32
  %4612 = ashr i32 %4611, 1
  %4613 = add nsw i32 %4612, 532487669
  %4614 = bitcast i32 %4613 to float
  %4615 = fadd fast float %4614, %4586
  %4616 = fmul fast float %2282, %4598
  %4617 = fmul fast float %4607, %4607
  %4618 = fmul fast float %4617, %4616
  %4619 = fmul fast float %4618, %4595
  %4620 = fmul fast float %4619, %4615
  %4621 = fdiv fast float 0x3FF0A00000000000, %4620
  %4622 = fmul fast float %2534, 0x3FF9999980000000
  %4623 = fsub fast float 5.000000e+00, %4622
  %4624 = call float @dx.op.unary.f32(i32 6, float %4578)  ; FAbs(value)
  %4625 = fsub fast float 1.000000e+00, %4624
  %4626 = fmul fast float %2534, 0x41D9660740000000
  %4627 = fadd fast float %4626, 0xC1EFBF8940000000
  %4628 = bitcast float %4625 to i32
  %4629 = sitofp i32 %4628 to float
  %4630 = fmul fast float %4629, %4623
  %4631 = fadd fast float %4627, %4630
  %4632 = fptosi float %4631 to i32
  %4633 = bitcast i32 %4632 to float
  %4634 = fsub fast float 1.000000e+00, %2210
  %4635 = fsub fast float 1.000000e+00, %2211
  %4636 = fsub fast float 1.000000e+00, %2222
  %4637 = fmul fast float %4633, %4634
  %4638 = fmul fast float %4633, %4635
  %4639 = fmul fast float %4633, %4636
  %4640 = fadd fast float %4637, %2210
  %4641 = fadd fast float %4638, %2211
  %4642 = fadd fast float %4639, %2222
  br i1 %2557, label %4643, label %4666

; <label>:4643                                    ; preds = %4550
  %4644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1506, float %4624, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4645 = extractvalue %dx.types.ResRet.f32 %4644, 0
  %4646 = extractvalue %dx.types.ResRet.f32 %4644, 1
  %4647 = extractvalue %dx.types.ResRet.f32 %4644, 2
  %4648 = fadd fast float %4645, -5.000000e-01
  %4649 = fadd fast float %4646, -5.000000e-01
  %4650 = fadd fast float %4647, -5.000000e-01
  %4651 = fmul fast float %2210, 4.000000e+00
  %4652 = fmul fast float %4651, %4634
  %4653 = fmul fast float %4652, %4648
  %4654 = fmul fast float %2211, 4.000000e+00
  %4655 = fmul fast float %4654, %4635
  %4656 = fmul fast float %4655, %4649
  %4657 = fmul fast float %2222, 4.000000e+00
  %4658 = fmul fast float %4657, %4636
  %4659 = fmul fast float %4658, %4650
  %4660 = fadd fast float %4653, %4640
  %4661 = fadd fast float %4656, %4641
  %4662 = fadd fast float %4659, %4642
  %4663 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4664 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4665 = call float @dx.op.unary.f32(i32 7, float %4662)  ; Saturate(value)
  br label %4666

; <label>:4666                                    ; preds = %4643, %4550
  %4667 = phi float [ %4663, %4643 ], [ %4640, %4550 ]
  %4668 = phi float [ %4664, %4643 ], [ %4641, %4550 ]
  %4669 = phi float [ %4665, %4643 ], [ %4642, %4550 ]
  %4670 = fmul fast float %4577, 9.843750e-01
  %4671 = fadd fast float %4670, 7.812500e-03
  %4672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %4671, float %2538, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4673 = extractvalue %dx.types.ResRet.f32 %4672, 0
  %4674 = extractvalue %dx.types.ResRet.f32 %4672, 1
  %4675 = extractvalue %dx.types.ResRet.f32 %4672, 2
  %4676 = extractvalue %dx.types.ResRet.f32 %4672, 3
  %4677 = fsub fast float %4675, %4673
  %4678 = fsub fast float %4676, %4674
  %4679 = fmul fast float %4677, %2544
  %4680 = fmul fast float %4678, %2544
  %4681 = fadd fast float %4679, %4673
  %4682 = fadd fast float %4680, %4674
  %4683 = fmul fast float %4681, %2210
  %4684 = fmul fast float %4681, %2211
  %4685 = fmul fast float %4681, %2222
  %4686 = fadd fast float %4683, %4682
  %4687 = fadd fast float %4684, %4682
  %4688 = fadd fast float %4685, %4682
  br i1 %2557, label %4689, label %4712

; <label>:4689                                    ; preds = %4666
  %4690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1506, float %4577, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4691 = extractvalue %dx.types.ResRet.f32 %4690, 0
  %4692 = extractvalue %dx.types.ResRet.f32 %4690, 1
  %4693 = extractvalue %dx.types.ResRet.f32 %4690, 2
  %4694 = fadd fast float %4691, -5.000000e-01
  %4695 = fadd fast float %4692, -5.000000e-01
  %4696 = fadd fast float %4693, -5.000000e-01
  %4697 = fmul fast float %2210, 4.000000e+00
  %4698 = fmul fast float %4697, %4634
  %4699 = fmul fast float %4698, %4694
  %4700 = fmul fast float %2211, 4.000000e+00
  %4701 = fmul fast float %4700, %4635
  %4702 = fmul fast float %4701, %4695
  %4703 = fmul fast float %2222, 4.000000e+00
  %4704 = fmul fast float %4703, %4636
  %4705 = fmul fast float %4704, %4696
  %4706 = fadd fast float %4699, %4686
  %4707 = fadd fast float %4702, %4687
  %4708 = fadd fast float %4705, %4688
  %4709 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4710 = call float @dx.op.unary.f32(i32 7, float %4707)  ; Saturate(value)
  %4711 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  br label %4712

; <label>:4712                                    ; preds = %4689, %4666
  %4713 = phi float [ %4709, %4689 ], [ %4686, %4666 ]
  %4714 = phi float [ %4710, %4689 ], [ %4687, %4666 ]
  %4715 = phi float [ %4711, %4689 ], [ %4688, %4666 ]
  %4716 = call float @dx.op.binary.f32(i32 35, float %4714, float %4715)  ; FMax(a,b)
  %4717 = call float @dx.op.binary.f32(i32 35, float %4713, float %4716)  ; FMax(a,b)
  %4718 = fsub fast float 1.000000e+00, %4717
  %4719 = call float @dx.op.binary.f32(i32 35, float %4586, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4720 = fdiv fast float %912, %4719
  %4721 = fmul fast float %3104, %4720
  %4722 = fmul fast float %3106, %4720
  %4723 = fmul fast float %3108, %4720
  %4724 = call float @dx.op.unary.f32(i32 21, float %4721)  ; Exp(value)
  %4725 = call float @dx.op.unary.f32(i32 21, float %4722)  ; Exp(value)
  %4726 = call float @dx.op.unary.f32(i32 21, float %4723)  ; Exp(value)
  %4727 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4728 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4729 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4730 = select i1 %3101, float %4727, float 0.000000e+00
  %4731 = select i1 %3102, float %4728, float 0.000000e+00
  %4732 = select i1 %3103, float %4729, float 0.000000e+00
  %4733 = call float @dx.op.dot3.f32(i32 55, float %3196, float %3197, float %3198, float %2220, float %2219, float %2218)  ; Dot3(ax,ay,az,bx,by,bz)
  %4734 = call float @dx.op.unary.f32(i32 7, float %4733)  ; Saturate(value)
  %4735 = fmul fast float %4734, 9.843750e-01
  %4736 = fadd fast float %4735, 7.812500e-03
  %4737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %4736, float %2538, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4738 = extractvalue %dx.types.ResRet.f32 %4737, 0
  %4739 = extractvalue %dx.types.ResRet.f32 %4737, 1
  %4740 = extractvalue %dx.types.ResRet.f32 %4737, 2
  %4741 = extractvalue %dx.types.ResRet.f32 %4737, 3
  %4742 = fsub fast float %4740, %4738
  %4743 = fsub fast float %4741, %4739
  %4744 = fmul fast float %4742, %2544
  %4745 = fmul fast float %4743, %2544
  %4746 = fadd fast float %4744, %4738
  %4747 = fadd fast float %4745, %4739
  %4748 = fmul fast float %4746, %2210
  %4749 = fmul fast float %4746, %2211
  %4750 = fmul fast float %4746, %2222
  %4751 = fadd fast float %4748, %4747
  %4752 = fadd fast float %4749, %4747
  %4753 = fadd fast float %4750, %4747
  br i1 %2557, label %4754, label %4777

; <label>:4754                                    ; preds = %4712
  %4755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1506, float %4734, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4756 = extractvalue %dx.types.ResRet.f32 %4755, 0
  %4757 = extractvalue %dx.types.ResRet.f32 %4755, 1
  %4758 = extractvalue %dx.types.ResRet.f32 %4755, 2
  %4759 = fadd fast float %4756, -5.000000e-01
  %4760 = fadd fast float %4757, -5.000000e-01
  %4761 = fadd fast float %4758, -5.000000e-01
  %4762 = fmul fast float %2210, 4.000000e+00
  %4763 = fmul fast float %4762, %4634
  %4764 = fmul fast float %4763, %4759
  %4765 = fmul fast float %2211, 4.000000e+00
  %4766 = fmul fast float %4765, %4635
  %4767 = fmul fast float %4766, %4760
  %4768 = fmul fast float %2222, 4.000000e+00
  %4769 = fmul fast float %4768, %4636
  %4770 = fmul fast float %4769, %4761
  %4771 = fadd fast float %4764, %4751
  %4772 = fadd fast float %4767, %4752
  %4773 = fadd fast float %4770, %4753
  %4774 = call float @dx.op.unary.f32(i32 7, float %4771)  ; Saturate(value)
  %4775 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4776 = call float @dx.op.unary.f32(i32 7, float %4773)  ; Saturate(value)
  br label %4777

; <label>:4777                                    ; preds = %4754, %4712
  %4778 = phi float [ %4774, %4754 ], [ %4751, %4712 ]
  %4779 = phi float [ %4775, %4754 ], [ %4752, %4712 ]
  %4780 = phi float [ %4776, %4754 ], [ %4753, %4712 ]
  %4781 = call float @dx.op.binary.f32(i32 35, float %4779, float %4780)  ; FMax(a,b)
  %4782 = call float @dx.op.binary.f32(i32 35, float %4778, float %4781)  ; FMax(a,b)
  %4783 = fsub fast float 1.000000e+00, %4782
  %4784 = fmul fast float %2279, %3168
  %4785 = fadd fast float %3170, %4784
  %4786 = call float @dx.op.unary.f32(i32 7, float %4785)  ; Saturate(value)
  %4787 = fsub fast float %3196, %2230
  %4788 = fsub fast float %3197, %2231
  %4789 = fsub fast float %3198, %2232
  %4790 = call float @dx.op.dot3.f32(i32 55, float %4787, float %4788, float %4789, float %4787, float %4788, float %4789)  ; Dot3(ax,ay,az,bx,by,bz)
  %4791 = call float @dx.op.unary.f32(i32 25, float %4790)  ; Rsqrt(value)
  %4792 = fmul fast float %4791, %4787
  %4793 = fmul fast float %4791, %4788
  %4794 = fmul fast float %4791, %4789
  %4795 = call float @dx.op.dot3.f32(i32 55, float %2220, float %2219, float %2218, float %4792, float %4793, float %4794)  ; Dot3(ax,ay,az,bx,by,bz)
  %4796 = fmul fast float %4795, %4795
  %4797 = call float @dx.op.unary.f32(i32 6, float %4734)  ; FAbs(value)
  %4798 = call float @dx.op.binary.f32(i32 35, float %4786, float 0x3F847AE140000000)  ; FMax(a,b)
  %4799 = fmul fast float %4798, %4798
  %4800 = fmul fast float %4799, %4799
  %4801 = fsub fast float 1.000000e+00, %4800
  %4802 = fmul fast float %4588, %4801
  %4803 = fadd fast float %4802, %4800
  %4804 = bitcast float %4803 to i32
  %4805 = ashr i32 %4804, 1
  %4806 = add nsw i32 %4805, 532487669
  %4807 = bitcast i32 %4806 to float
  %4808 = fadd fast float %4807, %2224
  %4809 = call float @dx.op.dot3.f32(i32 55, float %1643, float %1644, float %1645, float %4792, float %4793, float %4794)  ; Dot3(ax,ay,az,bx,by,bz)
  %4810 = fmul fast float %4599, %4800
  %4811 = fmul fast float %4809, %4809
  %4812 = fsub fast float 1.000000e+00, %4796
  %4813 = fsub fast float %4812, %4811
  %4814 = fdiv fast float %4811, %4810
  %4815 = fadd fast float %4814, %4796
  %4816 = fdiv fast float %4813, %4800
  %4817 = fadd fast float %4815, %4816
  %4818 = fmul fast float %4797, %4797
  %4819 = fmul fast float %4818, %4801
  %4820 = fadd fast float %4819, %4800
  %4821 = bitcast float %4820 to i32
  %4822 = ashr i32 %4821, 1
  %4823 = add nsw i32 %4822, 532487669
  %4824 = bitcast i32 %4823 to float
  %4825 = fadd fast float %4824, %4797
  %4826 = fmul fast float %4800, %4598
  %4827 = fmul fast float %4817, %4817
  %4828 = fmul fast float %4827, %4826
  %4829 = fmul fast float %4828, %4808
  %4830 = fmul fast float %4829, %4825
  %4831 = fdiv fast float 0x3FF0A00000000000, %4830
  %4832 = fmul fast float %4734, %4730
  %4833 = fmul fast float %4734, %4731
  %4834 = fmul fast float %4734, %4732
  %4835 = fmul fast float %4832, %4783
  %4836 = fmul fast float %4835, %4831
  %4837 = fmul fast float %4833, %4783
  %4838 = fmul fast float %4837, %4831
  %4839 = fmul fast float %4834, %4783
  %4840 = fmul fast float %4839, %4831
  %4841 = fmul fast float %4667, %4621
  %4842 = fmul fast float %4668, %4621
  %4843 = fmul fast float %4669, %4621
  %4844 = fsub fast float 1.000000e+00, %4578
  %4845 = bitcast float %4844 to i32
  %4846 = sitofp i32 %4845 to float
  %4847 = fmul fast float %4846, 5.000000e+00
  %4848 = fadd fast float %4847, 0xC1EFBF8940000000
  %4849 = fptosi float %4848 to i32
  %4850 = bitcast i32 %4849 to float
  %4851 = fmul fast float %4850, %1505
  %4852 = fmul fast float %4718, %4851
  %4853 = fmul fast float %4852, %3096
  %4854 = fmul fast float %4852, %3097
  %4855 = fmul fast float %4852, %3098
  %4856 = fadd fast float %4853, %4841
  %4857 = fadd fast float %4854, %4842
  %4858 = fadd fast float %4855, %4843
  %4859 = fmul fast float %4856, %4583
  %4860 = fmul fast float %4857, %4583
  %4861 = fmul fast float %4858, %4583
  %4862 = fmul fast float %4583, %4566
  %4863 = fmul fast float %4862, %4718
  %4864 = fmul fast float %4583, %4567
  %4865 = fmul fast float %4864, %4718
  %4866 = fmul fast float %4583, %4568
  %4867 = fmul fast float %4866, %4718
  %4868 = fadd fast float %4859, %4836
  %4869 = fadd fast float %4860, %4838
  %4870 = fadd fast float %4861, %4840
  %4871 = fmul fast float %4868, %4566
  %4872 = fmul fast float %4869, %4567
  %4873 = fmul fast float %4870, %4568
  %4874 = fadd fast float %4863, %3185
  %4875 = fmul fast float %4874, %1529
  %4876 = fadd fast float %4865, %3187
  %4877 = fmul fast float %4876, %1529
  %4878 = fadd fast float %4867, %3189
  %4879 = fmul fast float %4878, %1529
  %4880 = fadd fast float %4871, %3149
  %4881 = fmul fast float %4880, %1529
  %4882 = fadd fast float %4872, %3152
  %4883 = fmul fast float %4882, %1529
  %4884 = fadd fast float %4873, %3155
  %4885 = fmul fast float %4884, %1529
  br label %4886

; <label>:4886                                    ; preds = %4777, %4484, %3079
  %4887 = phi float [ %3150, %3079 ], [ %3150, %4484 ], [ %4881, %4777 ]
  %4888 = phi float [ %3153, %3079 ], [ %3153, %4484 ], [ %4883, %4777 ]
  %4889 = phi float [ %3156, %3079 ], [ %3156, %4484 ], [ %4885, %4777 ]
  %4890 = phi float [ %3186, %3079 ], [ %3186, %4484 ], [ %4875, %4777 ]
  %4891 = phi float [ %3188, %3079 ], [ %3188, %4484 ], [ %4877, %4777 ]
  %4892 = phi float [ %3190, %3079 ], [ %3190, %4484 ], [ %4879, %4777 ]
  %4893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4894 = extractvalue %dx.types.CBufRet.i32 %4893, 0
  %4895 = icmp eq i32 %4894, 0
  br i1 %4895, label %5727, label %4896

; <label>:4896                                    ; preds = %4886
  %4897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4898 = extractvalue %dx.types.CBufRet.f32 %4897, 2
  %4899 = extractvalue %dx.types.CBufRet.f32 %4897, 3
  %4900 = fmul fast float %4898, %94
  %4901 = fmul fast float %4899, %95
  %4902 = fptoui float %4900 to i32
  %4903 = fptoui float %4901 to i32
  %4904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4905 = extractvalue %dx.types.CBufRet.f32 %4904, 0
  %4906 = extractvalue %dx.types.CBufRet.f32 %4904, 2
  %4907 = extractvalue %dx.types.CBufRet.f32 %4904, 3
  %4908 = fadd fast float %82, -4.000000e+00
  %4909 = call float @dx.op.binary.f32(i32 35, float %4908, float 0.000000e+00)  ; FMax(a,b)
  %4910 = fadd fast float %4909, %4905
  %4911 = fmul fast float %4910, %4906
  %4912 = call float @dx.op.unary.f32(i32 23, float %4911)  ; Log(value)
  %4913 = fmul fast float %4912, %4907
  %4914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4915 = extractvalue %dx.types.CBufRet.f32 %4914, 2
  %4916 = fmul fast float %4913, %4915
  %4917 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4918 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4919 = extractvalue %dx.types.CBufRet.i32 %4918, 1
  %4920 = add i32 %4919, -1
  %4921 = uitofp i32 %4919 to float
  %4922 = fmul fast float %4921, %4917
  %4923 = fptoui float %4922 to i32
  %4924 = call i32 @dx.op.binary.i32(i32 40, i32 %4923, i32 %4920)  ; UMin(a,b)
  %4925 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4926 = extractvalue %dx.types.CBufRet.i32 %4925, 2
  %4927 = extractvalue %dx.types.CBufRet.i32 %4925, 3
  %4928 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4903, i32 %4926, i32 %4902)  ; UMad(a,b,c)
  %4929 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4924, i32 %4927, i32 %4928)  ; UMad(a,b,c)
  %4930 = add nsw i32 %4894, -1
  %4931 = call i32 @dx.op.binary.i32(i32 37, i32 %4930, i32 0)  ; IMax(a,b)
  %4932 = call float @dx.op.binary.f32(i32 35, float %82, float 0.000000e+00)  ; FMax(a,b)
  %4933 = fptoui float %4932 to i32
  %4934 = lshr i32 %4933, 5
  %4935 = call i32 @dx.op.binary.i32(i32 40, i32 %4934, i32 8191)  ; UMin(a,b)
  %4936 = shl i32 %4935, 2
  %4937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4936, i32 undef)  ; BufferLoad(srv,index,wot)
  %4938 = extractvalue %dx.types.ResRet.i32 %4937, 0
  %4939 = lshr i32 %4938, 16
  %4940 = and i32 %4938, 65535
  %4941 = lshr i32 %4938, 21
  %4942 = lshr i32 %4940, 5
  %4943 = call i32 @dx.op.binary.i32(i32 40, i32 %4942, i32 %4931)  ; UMin(a,b)
  %4944 = icmp ugt i32 %4941, %4943
  br i1 %4944, label %5727, label %4945

; <label>:4945                                    ; preds = %4896
  br label %4946

; <label>:4946                                    ; preds = %5717, %4945
  %4947 = phi i32 [ %5724, %5717 ], [ %4941, %4945 ]
  %4948 = phi float [ %5718, %5717 ], [ %4887, %4945 ]
  %4949 = phi float [ %5719, %5717 ], [ %4888, %4945 ]
  %4950 = phi float [ %5720, %5717 ], [ %4889, %4945 ]
  %4951 = phi float [ %5721, %5717 ], [ %4890, %4945 ]
  %4952 = phi float [ %5722, %5717 ], [ %4891, %4945 ]
  %4953 = phi float [ %5723, %5717 ], [ %4892, %4945 ]
  %4954 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4955 = extractvalue %dx.types.CBufRet.i32 %4954, 0
  %4956 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4929, i32 %4955, i32 %4947)  ; UMad(a,b,c)
  %4957 = shl i32 %4956, 2
  %4958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4957, i32 undef)  ; BufferLoad(srv,index,wot)
  %4959 = extractvalue %dx.types.ResRet.i32 %4958, 0
  %4960 = shl i32 %4947, 5
  %4961 = sub nsw i32 %4939, %4960
  %4962 = call i32 @dx.op.binary.i32(i32 37, i32 %4961, i32 0)  ; IMax(a,b)
  %4963 = call i32 @dx.op.binary.i32(i32 38, i32 %4962, i32 31)  ; IMin(a,b)
  %4964 = sub nsw i32 1, %4939
  %4965 = add nsw i32 %4964, %4940
  %4966 = call i32 @dx.op.binary.i32(i32 37, i32 %4965, i32 0)  ; IMax(a,b)
  %4967 = call i32 @dx.op.binary.i32(i32 38, i32 %4966, i32 32)  ; IMin(a,b)
  %4968 = and i32 %4967, 31
  %4969 = shl i32 -1, %4968
  %4970 = xor i32 %4969, -1
  %4971 = and i32 %4963, 31
  %4972 = shl i32 %4970, %4971
  %4973 = icmp eq i32 %4967, 32
  %4974 = select i1 %4973, i32 -1, i32 %4972
  %4975 = and i32 %4974, %4959
  %4976 = icmp eq i32 %4975, 0
  br i1 %4976, label %5717, label %4977

; <label>:4977                                    ; preds = %4946
  br label %4978

; <label>:4978                                    ; preds = %5113, %4977
  %4979 = phi i32 [ %4990, %5113 ], [ %4975, %4977 ]
  %4980 = phi float [ %5114, %5113 ], [ %4948, %4977 ]
  %4981 = phi float [ %5115, %5113 ], [ %4949, %4977 ]
  %4982 = phi float [ %5116, %5113 ], [ %4950, %4977 ]
  %4983 = phi float [ %5117, %5113 ], [ %4951, %4977 ]
  %4984 = phi float [ %5118, %5113 ], [ %4952, %4977 ]
  %4985 = phi float [ %5119, %5113 ], [ %4953, %4977 ]
  %4986 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4979)  ; FirstbitLo(value)
  %4987 = add i32 %4986, %4960
  %4988 = and i32 %4986, 31
  %4989 = shl i32 1, %4988
  %4990 = xor i32 %4989, %4979
  %4991 = mul i32 %4987, 112
  %4992 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4991, i32 undef)  ; BufferLoad(srv,index,wot)
  %4993 = extractvalue %dx.types.ResRet.f32 %4992, 0
  %4994 = extractvalue %dx.types.ResRet.f32 %4992, 1
  %4995 = extractvalue %dx.types.ResRet.f32 %4992, 2
  %4996 = or i32 %4991, 12
  %4997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4996, i32 undef)  ; BufferLoad(srv,index,wot)
  %4998 = extractvalue %dx.types.ResRet.f32 %4997, 0
  %4999 = add i32 %4991, 16
  %5000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4999, i32 undef)  ; BufferLoad(srv,index,wot)
  %5001 = extractvalue %dx.types.ResRet.f32 %5000, 0
  %5002 = extractvalue %dx.types.ResRet.f32 %5000, 1
  %5003 = extractvalue %dx.types.ResRet.f32 %5000, 2
  %5004 = add i32 %4991, 28
  %5005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5004, i32 undef)  ; BufferLoad(srv,index,wot)
  %5006 = extractvalue %dx.types.ResRet.i32 %5005, 0
  %5007 = add i32 %4991, 44
  %5008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5007, i32 undef)  ; BufferLoad(srv,index,wot)
  %5009 = extractvalue %dx.types.ResRet.f32 %5008, 0
  %5010 = add i32 %4991, 48
  %5011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5010, i32 undef)  ; BufferLoad(srv,index,wot)
  %5012 = extractvalue %dx.types.ResRet.f32 %5011, 0
  %5013 = extractvalue %dx.types.ResRet.f32 %5011, 1
  %5014 = extractvalue %dx.types.ResRet.f32 %5011, 2
  %5015 = extractvalue %dx.types.ResRet.f32 %5011, 3
  %5016 = add i32 %4991, 64
  %5017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5016, i32 undef)  ; BufferLoad(srv,index,wot)
  %5018 = extractvalue %dx.types.ResRet.f32 %5017, 0
  %5019 = extractvalue %dx.types.ResRet.f32 %5017, 1
  %5020 = extractvalue %dx.types.ResRet.f32 %5017, 2
  %5021 = extractvalue %dx.types.ResRet.f32 %5017, 3
  %5022 = add i32 %4991, 80
  %5023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5022, i32 undef)  ; BufferLoad(srv,index,wot)
  %5024 = extractvalue %dx.types.ResRet.f32 %5023, 1
  %5025 = extractvalue %dx.types.ResRet.f32 %5023, 2
  %5026 = add i32 %4991, 92
  %5027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5026, i32 undef)  ; BufferLoad(srv,index,wot)
  %5028 = extractvalue %dx.types.ResRet.i32 %5027, 0
  %5029 = call float @dx.op.dot3.f32(i32 55, float %4993, float %4994, float %4995, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5030 = select i1 %211, float %5024, float %4993
  %5031 = select i1 %211, float %5029, float %4994
  %5032 = select i1 %211, float %5025, float %4995
  %5033 = and i32 %5028, 65535
  %5034 = uitofp i32 %5033 to float
  %5035 = lshr i32 %5028, 16
  %5036 = uitofp i32 %5035 to float
  %5037 = and i32 %5006, 65535
  %5038 = and i32 %5006, 50331648
  %5039 = icmp slt i32 %5006, 0
  %5040 = icmp eq i32 %5038, 33554432
  %5041 = fsub fast float %5012, %149
  %5042 = fsub fast float %5013, %150
  %5043 = fsub fast float %5014, %151
  %5044 = call float @dx.op.dot3.f32(i32 55, float %5041, float %5042, float %5043, float %5041, float %5042, float %5043)  ; Dot3(ax,ay,az,bx,by,bz)
  %5045 = call float @dx.op.unary.f32(i32 24, float %5044)  ; Sqrt(value)
  %5046 = fdiv fast float 1.000000e+00, %5045
  %5047 = fmul fast float %5046, %5041
  %5048 = fmul fast float %5046, %5042
  %5049 = fmul fast float %5046, %5043
  %5050 = fadd fast float %5045, %4998
  %5051 = fdiv fast float 1.000000e+00, %5050
  %5052 = fmul float %5009, %5051
  %5053 = fmul float %5052, %5052
  %5054 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  br i1 %5040, label %5055, label %5076

; <label>:5055                                    ; preds = %4978
  %5056 = fmul fast float %5020, %5001
  %5057 = fmul fast float %5020, %5002
  %5058 = fmul fast float %5020, %5003
  %5059 = fadd fast float %5041, %5056
  %5060 = fadd fast float %5042, %5057
  %5061 = fadd fast float %5043, %5058
  %5062 = call float @dx.op.dot3.f32(i32 55, float %5059, float %5060, float %5061, float %5059, float %5060, float %5061)  ; Dot3(ax,ay,az,bx,by,bz)
  %5063 = call float @dx.op.unary.f32(i32 25, float %5062)  ; Rsqrt(value)
  %5064 = fmul fast float %5063, %5059
  %5065 = fmul fast float %5063, %5060
  %5066 = fmul fast float %5063, %5061
  %5067 = fsub fast float %149, %5012
  %5068 = fsub fast float %150, %5013
  %5069 = fsub fast float %151, %5014
  %5070 = fsub fast float -0.000000e+00, %5067
  %5071 = fsub fast float -0.000000e+00, %5068
  %5072 = fsub fast float -0.000000e+00, %5069
  %5073 = call float @dx.op.dot3.f32(i32 55, float %5070, float %5071, float %5072, float %5001, float %5002, float %5003)  ; Dot3(ax,ay,az,bx,by,bz)
  %5074 = fcmp fast ogt float %5073, 0.000000e+00
  %5075 = uitofp i1 %5074 to float
  br label %5076

; <label>:5076                                    ; preds = %5055, %4978
  %5077 = phi float [ %5075, %5055 ], [ 1.000000e+00, %4978 ]
  %5078 = phi float [ %5064, %5055 ], [ %5047, %4978 ]
  %5079 = phi float [ %5065, %5055 ], [ %5048, %4978 ]
  %5080 = phi float [ %5066, %5055 ], [ %5049, %4978 ]
  %5081 = call float @dx.op.dot3.f32(i32 55, float %5001, float %5002, float %5003, float %5078, float %5079, float %5080)  ; Dot3(ax,ay,az,bx,by,bz)
  %5082 = fmul fast float %5081, %5081
  %5083 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5084 = fsub fast float 1.000000e+00, %5083
  %5085 = fmul fast float %5084, 5.000000e-01
  %5086 = fcmp fast ogt float %5081, 0.000000e+00
  %5087 = fsub fast float 1.000000e+00, %5085
  %5088 = select i1 %5086, float %5085, float %5087
  %5089 = fmul fast float %5088, %5036
  %5090 = fadd fast float %5089, %5034
  %5091 = fmul fast float %5090, 0x3EF0001000000000
  %5092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %50, float %5091, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5093 = extractvalue %dx.types.ResRet.f32 %5092, 0
  %5094 = fmul fast float %5081, %5018
  %5095 = fadd fast float %5094, %5019
  %5096 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5097 = select i1 %5040, float 1.000000e+00, float %5096
  %5098 = select i1 %5040, float %5096, float 1.000000e+00
  %5099 = fmul fast float %5045, %5015
  %5100 = fsub fast float 1.000000e+00, %5099
  %5101 = fmul fast float %5100, %5021
  %5102 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5103 = fmul fast float %5102, %5098
  %5104 = fmul fast float %5103, 2.000000e+00
  %5105 = fsub fast float 3.000000e+00, %5104
  %5106 = fmul fast float %5093, %5077
  %5107 = fmul fast float %5103, %5103
  %5108 = fmul fast float %5107, %5106
  %5109 = fmul fast float %5108, %5105
  %5110 = call float @dx.op.binary.f32(i32 36, float %5109, float %5109)  ; FMin(a,b)
  %5111 = call float @dx.op.binary.f32(i32 36, float %5109, float %5110)  ; FMin(a,b)
  %5112 = fcmp fast ogt float %5111, 0.000000e+00
  br i1 %5112, label %5121, label %5113, !dx.controlflow.hints !124

; <label>:5113                                    ; preds = %5670, %5267, %5076
  %5114 = phi float [ %4980, %5267 ], [ %4980, %5076 ], [ %5713, %5670 ]
  %5115 = phi float [ %4981, %5267 ], [ %4981, %5076 ], [ %5714, %5670 ]
  %5116 = phi float [ %4982, %5267 ], [ %4982, %5076 ], [ %5715, %5670 ]
  %5117 = phi float [ %4983, %5267 ], [ %4983, %5076 ], [ %5707, %5670 ]
  %5118 = phi float [ %4984, %5267 ], [ %4984, %5076 ], [ %5708, %5670 ]
  %5119 = phi float [ %4985, %5267 ], [ %4985, %5076 ], [ %5709, %5670 ]
  %5120 = icmp eq i32 %4979, %4989
  br i1 %5120, label %5716, label %4978

; <label>:5121                                    ; preds = %5076
  %5122 = icmp eq i32 %5037, 255
  br i1 %5122, label %5267, label %5123, !dx.controlflow.hints !125

; <label>:5123                                    ; preds = %5121
  %5124 = mul nuw nsw i32 %5037, 176
  %5125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5124, i32 undef)  ; BufferLoad(srv,index,wot)
  %5126 = extractvalue %dx.types.ResRet.f32 %5125, 0
  %5127 = extractvalue %dx.types.ResRet.f32 %5125, 1
  %5128 = extractvalue %dx.types.ResRet.f32 %5125, 2
  %5129 = extractvalue %dx.types.ResRet.f32 %5125, 3
  %5130 = add nuw nsw i32 %5124, 16
  %5131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5130, i32 undef)  ; BufferLoad(srv,index,wot)
  %5132 = extractvalue %dx.types.ResRet.f32 %5131, 0
  %5133 = extractvalue %dx.types.ResRet.f32 %5131, 1
  %5134 = add nuw nsw i32 %5124, 32
  %5135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5134, i32 undef)  ; BufferLoad(srv,index,wot)
  %5136 = extractvalue %dx.types.ResRet.f32 %5135, 0
  %5137 = extractvalue %dx.types.ResRet.f32 %5135, 1
  %5138 = extractvalue %dx.types.ResRet.f32 %5135, 2
  %5139 = add nuw nsw i32 %5124, 48
  %5140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5139, i32 undef)  ; BufferLoad(srv,index,wot)
  %5141 = extractvalue %dx.types.ResRet.f32 %5140, 0
  %5142 = extractvalue %dx.types.ResRet.f32 %5140, 1
  %5143 = extractvalue %dx.types.ResRet.f32 %5140, 2
  %5144 = extractvalue %dx.types.ResRet.f32 %5140, 3
  %5145 = add nuw nsw i32 %5124, 64
  %5146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5145, i32 undef)  ; BufferLoad(srv,index,wot)
  %5147 = extractvalue %dx.types.ResRet.f32 %5146, 0
  %5148 = extractvalue %dx.types.ResRet.f32 %5146, 1
  %5149 = extractvalue %dx.types.ResRet.f32 %5146, 2
  %5150 = extractvalue %dx.types.ResRet.f32 %5146, 3
  %5151 = add nuw nsw i32 %5124, 80
  %5152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5151, i32 undef)  ; BufferLoad(srv,index,wot)
  %5153 = extractvalue %dx.types.ResRet.f32 %5152, 0
  %5154 = extractvalue %dx.types.ResRet.f32 %5152, 1
  %5155 = extractvalue %dx.types.ResRet.f32 %5152, 2
  %5156 = extractvalue %dx.types.ResRet.f32 %5152, 3
  %5157 = add nuw nsw i32 %5124, 96
  %5158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5157, i32 undef)  ; BufferLoad(srv,index,wot)
  %5159 = extractvalue %dx.types.ResRet.f32 %5158, 0
  %5160 = extractvalue %dx.types.ResRet.f32 %5158, 1
  %5161 = extractvalue %dx.types.ResRet.f32 %5158, 2
  %5162 = extractvalue %dx.types.ResRet.f32 %5158, 3
  %5163 = bitcast float %5133 to i32
  %5164 = fmul fast float %5138, %97
  %5165 = fmul fast float %5138, %98
  %5166 = fmul fast float %5138, %99
  %5167 = fadd fast float %5164, %149
  %5168 = fadd fast float %5165, %150
  %5169 = fadd fast float %5166, %151
  %5170 = fmul fast float %5167, %5141
  %5171 = call float @dx.op.tertiary.f32(i32 46, float %5168, float %5147, float %5170)  ; FMad(a,b,c)
  %5172 = call float @dx.op.tertiary.f32(i32 46, float %5169, float %5153, float %5171)  ; FMad(a,b,c)
  %5173 = fadd fast float %5172, %5159
  %5174 = fmul fast float %5167, %5142
  %5175 = call float @dx.op.tertiary.f32(i32 46, float %5168, float %5148, float %5174)  ; FMad(a,b,c)
  %5176 = call float @dx.op.tertiary.f32(i32 46, float %5169, float %5154, float %5175)  ; FMad(a,b,c)
  %5177 = fadd fast float %5176, %5160
  %5178 = fmul fast float %5167, %5143
  %5179 = call float @dx.op.tertiary.f32(i32 46, float %5168, float %5149, float %5178)  ; FMad(a,b,c)
  %5180 = call float @dx.op.tertiary.f32(i32 46, float %5169, float %5155, float %5179)  ; FMad(a,b,c)
  %5181 = fadd fast float %5180, %5161
  %5182 = fmul fast float %5167, %5144
  %5183 = call float @dx.op.tertiary.f32(i32 46, float %5168, float %5150, float %5182)  ; FMad(a,b,c)
  %5184 = call float @dx.op.tertiary.f32(i32 46, float %5169, float %5156, float %5183)  ; FMad(a,b,c)
  %5185 = fadd fast float %5184, %5162
  %5186 = fdiv fast float %5173, %5185
  %5187 = fdiv fast float %5177, %5185
  %5188 = fdiv fast float %5181, %5185
  %5189 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5188)  ; FMax(a,b)
  %5190 = fmul fast float %222, 0x401921FB60000000
  %5191 = call float @dx.op.unary.f32(i32 13, float %5190)  ; Sin(value)
  %5192 = call float @dx.op.unary.f32(i32 12, float %5190)  ; Cos(value)
  %5193 = fmul fast float %5192, %5137
  %5194 = call float @dx.op.tertiary.f32(i32 46, float %5191, float %5137, float 0.000000e+00)  ; FMad(a,b,c)
  %5195 = fmul fast float %5137, %5191
  %5196 = fsub fast float -0.000000e+00, %5195
  %5197 = call float @dx.op.tertiary.f32(i32 46, float %5192, float %5137, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5198

; <label>:5198                                    ; preds = %5198, %5123
  %5199 = phi float [ 0.000000e+00, %5123 ], [ %5231, %5198 ]
  %5200 = phi float [ 0.000000e+00, %5123 ], [ %5233, %5198 ]
  %5201 = phi i32 [ 0, %5123 ], [ %5234, %5198 ]
  %5202 = mul i32 %5201, 2
  %5203 = add i32 0, %5202
  %5204 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5203
  %5205 = load float, float* %5204, align 4
  %5206 = mul i32 %5201, 2
  %5207 = add i32 1, %5206
  %5208 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5207
  %5209 = load float, float* %5208, align 4
  %5210 = fmul fast float %5193, %5205
  %5211 = call float @dx.op.tertiary.f32(i32 46, float %5209, float %5196, float %5210)  ; FMad(a,b,c)
  %5212 = fmul fast float %5205, %5194
  %5213 = call float @dx.op.tertiary.f32(i32 46, float %5209, float %5197, float %5212)  ; FMad(a,b,c)
  %5214 = fadd fast float %5211, %5186
  %5215 = fadd fast float %5213, %5187
  %5216 = fmul fast float %5214, %5132
  %5217 = fmul fast float %5215, %5132
  %5218 = call float @dx.op.binary.f32(i32 35, float %5216, float %5128)  ; FMax(a,b)
  %5219 = call float @dx.op.binary.f32(i32 35, float %5217, float %5128)  ; FMax(a,b)
  %5220 = call float @dx.op.binary.f32(i32 36, float %5218, float %5129)  ; FMin(a,b)
  %5221 = call float @dx.op.binary.f32(i32 36, float %5219, float %5129)  ; FMin(a,b)
  %5222 = fadd fast float %5220, %5126
  %5223 = fadd fast float %5221, %5127
  %5224 = uitofp i32 %5163 to float
  %5225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %51, float %5222, float %5223, float %5224, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5226 = extractvalue %dx.types.ResRet.f32 %5225, 0
  %5227 = fsub fast float %5226, %5189
  %5228 = fsub fast float %5227, %5136
  %5229 = fcmp fast ogt float %5228, 0.000000e+00
  %5230 = select i1 %5229, float 1.000000e+00, float 0.000000e+00
  %5231 = fadd fast float %5230, %5199
  %5232 = select i1 %5229, float %5228, float 0.000000e+00
  %5233 = fadd fast float %5232, %5200
  %5234 = add nuw nsw i32 %5201, 1
  %5235 = icmp eq i32 %5234, 8
  br i1 %5235, label %5236, label %5198

; <label>:5236                                    ; preds = %5198
  %5237 = fdiv fast float 1.000000e+00, %5231
  %5238 = fmul fast float %5237, %5233
  %5239 = fdiv fast float 1.000000e+00, %5189
  %5240 = fmul fast float %5238, %5239
  %5241 = call float @dx.op.unary.f32(i32 7, float %5240)  ; Saturate(value)
  %5242 = call float @dx.op.binary.f32(i32 35, float %5241, float 0.000000e+00)  ; FMax(a,b)
  %5243 = fmul fast float %5231, 1.250000e-01
  %5244 = call float @dx.op.unary.f32(i32 7, float %5243)  ; Saturate(value)
  %5245 = fmul fast float %5244, 2.000000e+00
  %5246 = fadd fast float %5245, -1.000000e+00
  %5247 = fcmp fast ogt float %5246, 0.000000e+00
  %5248 = fcmp fast olt float %5246, 0.000000e+00
  %5249 = zext i1 %5247 to i32
  %5250 = zext i1 %5248 to i32
  %5251 = sub nsw i32 %5249, %5250
  %5252 = sitofp i32 %5251 to float
  %5253 = fmul fast float %5252, %5246
  %5254 = fsub fast float 1.000000e+00, %5253
  %5255 = fmul fast float %5254, %5254
  %5256 = fmul fast float %5255, %5254
  %5257 = fsub fast float %5254, %5256
  %5258 = fmul fast float %5257, %5242
  %5259 = fsub fast float 1.000000e+00, %5256
  %5260 = fsub fast float %5259, %5258
  %5261 = fmul fast float %5252, 5.000000e-01
  %5262 = fmul fast float %5261, %5260
  %5263 = fsub fast float -5.000000e-01, %5262
  %5264 = fmul fast float %5263, %5097
  %5265 = fadd fast float %5264, 1.000000e+00
  %5266 = fmul fast float %5265, %5109
  br label %5267

; <label>:5267                                    ; preds = %5236, %5121
  %5268 = phi float [ %5266, %5236 ], [ %5109, %5121 ]
  %5269 = call float @dx.op.binary.f32(i32 36, float %5268, float %5268)  ; FMin(a,b)
  %5270 = call float @dx.op.binary.f32(i32 36, float %5268, float %5269)  ; FMin(a,b)
  %5271 = fcmp fast ogt float %5270, 0.000000e+00
  br i1 %5271, label %5272, label %5113, !dx.controlflow.hints !126

; <label>:5272                                    ; preds = %5267
  %5273 = fmul fast float %5268, %5030
  %5274 = fmul fast float %5268, %5031
  %5275 = fmul fast float %5268, %5032
  %5276 = fsub fast float %5014, %2006
  %5277 = fcmp fast ogt float %5276, 0.000000e+00
  %5278 = fsub fast float %151, %2006
  %5279 = fcmp fast ogt float %5278, 0.000000e+00
  %5280 = xor i1 %5279, %5277
  %5281 = fsub fast float %2006, %5014
  %5282 = fmul fast float %5281, 2.000000e+00
  %5283 = fadd fast float %5282, %5014
  %5284 = select i1 %5280, float %5014, float %5283
  %5285 = fsub fast float %5284, %151
  %5286 = call float @dx.op.dot3.f32(i32 55, float %5041, float %5042, float %5285, float %5041, float %5042, float %5285)  ; Dot3(ax,ay,az,bx,by,bz)
  %5287 = call float @dx.op.unary.f32(i32 25, float %5286)  ; Rsqrt(value)
  %5288 = fmul fast float %5287, %5041
  %5289 = fmul fast float %5287, %5042
  %5290 = fmul fast float %5287, %5285
  %5291 = fsub fast float %2006, %151
  %5292 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5291)  ; Dot3(ax,ay,az,bx,by,bz)
  %5293 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5288, float %5289, float %5290)  ; Dot3(ax,ay,az,bx,by,bz)
  %5294 = fdiv fast float 1.000000e+00, %5293
  %5295 = fmul fast float %5294, %5292
  %5296 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5278, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5297 = fcmp fast ogt float %5296, 0.000000e+00
  %5298 = fcmp fast olt float %5296, 0.000000e+00
  %5299 = zext i1 %5297 to i32
  %5300 = zext i1 %5298 to i32
  %5301 = sub nsw i32 %5299, %5300
  %5302 = sitofp i32 %5301 to float
  %5303 = fsub fast float %5284, %2006
  %5304 = call float @dx.op.dot3.f32(i32 55, float %5041, float %5042, float %5303, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5305 = fcmp fast ogt float %5304, 0.000000e+00
  %5306 = fcmp fast olt float %5304, 0.000000e+00
  %5307 = zext i1 %5305 to i32
  %5308 = zext i1 %5306 to i32
  %5309 = sub nsw i32 %5307, %5308
  %5310 = sitofp i32 %5309 to float
  %5311 = fcmp fast une float %5302, %5310
  br i1 %5311, label %5312, label %5322

; <label>:5312                                    ; preds = %5272
  %5313 = fmul fast float %5295, %5290
  %5314 = fmul fast float %5295, %5289
  %5315 = fmul fast float %5295, %5288
  %5316 = fmul fast float %5315, %5315
  %5317 = fmul fast float %5314, %5314
  %5318 = fadd fast float %5316, %5317
  %5319 = fmul fast float %5313, %5313
  %5320 = fadd fast float %5318, %5319
  %5321 = call float @dx.op.unary.f32(i32 24, float %5320)  ; Sqrt(value)
  br label %5334

; <label>:5322                                    ; preds = %5272
  %5323 = icmp slt i32 %5301, 0
  br i1 %5323, label %5324, label %5334

; <label>:5324                                    ; preds = %5322
  %5325 = fsub fast float %149, %5012
  %5326 = fsub fast float %150, %5013
  %5327 = fsub fast float %151, %5284
  %5328 = fmul fast float %5325, %5325
  %5329 = fmul fast float %5326, %5326
  %5330 = fadd fast float %5328, %5329
  %5331 = fmul fast float %5327, %5327
  %5332 = fadd fast float %5330, %5331
  %5333 = call float @dx.op.unary.f32(i32 24, float %5332)  ; Sqrt(value)
  br label %5334

; <label>:5334                                    ; preds = %5324, %5322, %5312
  %5335 = phi float [ %5321, %5312 ], [ %5333, %5324 ], [ 0.000000e+00, %5322 ]
  %5336 = and i1 %5279, %5277
  %5337 = fsub fast float -0.000000e+00, %5335
  %5338 = select i1 %5336, float -0.000000e+00, float %5337
  %5339 = fmul fast float %2007, 0x3FF7154760000000
  %5340 = fmul fast float %5339, %5338
  %5341 = fmul fast float %2008, 0x3FF7154760000000
  %5342 = fmul fast float %5341, %5338
  %5343 = fmul fast float %2009, 0x3FF7154760000000
  %5344 = fmul fast float %5343, %5338
  %5345 = call float @dx.op.unary.f32(i32 21, float %5340)  ; Exp(value)
  %5346 = call float @dx.op.unary.f32(i32 21, float %5342)  ; Exp(value)
  %5347 = call float @dx.op.unary.f32(i32 21, float %5344)  ; Exp(value)
  %5348 = call float @dx.op.unary.f32(i32 7, float %5345)  ; Saturate(value)
  %5349 = call float @dx.op.unary.f32(i32 7, float %5346)  ; Saturate(value)
  %5350 = call float @dx.op.unary.f32(i32 7, float %5347)  ; Saturate(value)
  %5351 = fmul fast float %5273, %5348
  %5352 = fmul fast float %5274, %5349
  %5353 = fmul fast float %5275, %5350
  %5354 = fsub fast float %5047, %2206
  %5355 = fsub fast float %5048, %2205
  %5356 = fsub fast float %5049, %2204
  %5357 = call float @dx.op.dot3.f32(i32 55, float %5354, float %5355, float %5356, float %5354, float %5355, float %5356)  ; Dot3(ax,ay,az,bx,by,bz)
  %5358 = call float @dx.op.unary.f32(i32 25, float %5357)  ; Rsqrt(value)
  %5359 = fmul fast float %5358, %5354
  %5360 = fmul fast float %5358, %5355
  %5361 = fmul fast float %5358, %5356
  %5362 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5048, float %5049, float %2213, float %2214, float %2215)  ; Dot3(ax,ay,az,bx,by,bz)
  %5363 = call float @dx.op.dot3.f32(i32 55, float %2203, float %2202, float %2201, float %5359, float %5360, float %5361)  ; Dot3(ax,ay,az,bx,by,bz)
  %5364 = call float @dx.op.unary.f32(i32 7, float %5362)  ; Saturate(value)
  %5365 = fmul fast float %5364, %5054
  %5366 = fmul fast float %5364, %5364
  %5367 = fmul fast float %5366, %3191
  %5368 = call float @dx.op.unary.f32(i32 7, float %5367)  ; Saturate(value)
  %5369 = fmul fast float %5365, %5368
  %5370 = bitcast float %5044 to i32
  %5371 = ashr i32 %5370, 1
  %5372 = sub nsw i32 1597463007, %5371
  %5373 = bitcast i32 %5372 to float
  %5374 = fmul fast float %5373, %5041
  %5375 = fmul fast float %5373, %5042
  %5376 = fmul fast float %5373, %5043
  %5377 = fsub fast float %5374, %2206
  %5378 = fsub fast float %5375, %2205
  %5379 = fsub fast float %5376, %2204
  %5380 = call float @dx.op.dot3.f32(i32 55, float %5377, float %5378, float %5379, float %5377, float %5378, float %5379)  ; Dot3(ax,ay,az,bx,by,bz)
  %5381 = call float @dx.op.unary.f32(i32 25, float %5380)  ; Rsqrt(value)
  %5382 = fmul fast float %5377, %5381
  %5383 = fmul fast float %5378, %5381
  %5384 = fmul fast float %5379, %5381
  %5385 = call float @dx.op.dot3.f32(i32 55, float %2213, float %2214, float %2215, float %5382, float %5383, float %5384)  ; Dot3(ax,ay,az,bx,by,bz)
  %5386 = fmul fast float %5385, %5385
  %5387 = call float @dx.op.unary.f32(i32 6, float %5362)  ; FAbs(value)
  %5388 = fsub fast float 1.000000e+00, %2282
  %5389 = fmul fast float %2224, %2224
  %5390 = fmul fast float %5389, %5388
  %5391 = fadd fast float %5390, %2282
  %5392 = bitcast float %5391 to i32
  %5393 = ashr i32 %5392, 1
  %5394 = add nsw i32 %5393, 532487669
  %5395 = bitcast i32 %5394 to float
  %5396 = fadd fast float %5395, %2224
  %5397 = call float @dx.op.dot3.f32(i32 55, float %1643, float %1644, float %1645, float %5382, float %5383, float %5384)  ; Dot3(ax,ay,az,bx,by,bz)
  %5398 = fsub fast float 1.000000e+00, %1631
  %5399 = call float @dx.op.binary.f32(i32 35, float %5398, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5400 = fmul fast float %5399, %5399
  %5401 = fmul fast float %5400, %2282
  %5402 = fmul fast float %5397, %5397
  %5403 = fsub fast float 1.000000e+00, %5386
  %5404 = fsub fast float %5403, %5402
  %5405 = fdiv fast float %5402, %5401
  %5406 = fadd fast float %5405, %5386
  %5407 = fdiv fast float %5404, %2282
  %5408 = fadd fast float %5406, %5407
  %5409 = fmul fast float %5387, %5387
  %5410 = fmul fast float %5409, %5388
  %5411 = fadd fast float %5410, %2282
  %5412 = bitcast float %5411 to i32
  %5413 = ashr i32 %5412, 1
  %5414 = add nsw i32 %5413, 532487669
  %5415 = bitcast i32 %5414 to float
  %5416 = fadd fast float %5415, %5387
  %5417 = fmul fast float %2282, %5399
  %5418 = fmul fast float %5408, %5408
  %5419 = fmul fast float %5418, %5417
  %5420 = fmul fast float %5419, %5396
  %5421 = fmul fast float %5420, %5416
  %5422 = fdiv fast float 1.000000e+00, %5421
  %5423 = bitcast float %2282 to i32
  %5424 = sitofp i32 %5423 to float
  %5425 = fmul fast float %5424, 0x3FE7F73180000000
  %5426 = fadd fast float %5425, 0x41AFE27C40000000
  %5427 = fptosi float %5426 to i32
  %5428 = bitcast i32 %5427 to float
  %5429 = fmul fast float %5009, 0x3FD80E9D60000000
  %5430 = fmul fast float %5429, %5373
  %5431 = fadd fast float %5428, %5430
  %5432 = bitcast float %5431 to i32
  %5433 = sub nsw i32 2129859010, %5432
  %5434 = bitcast i32 %5433 to float
  %5435 = fmul fast float %5428, %5422
  %5436 = fmul fast float %5435, %5434
  %5437 = fmul fast float %2534, 0x3FF9999980000000
  %5438 = fsub fast float 5.000000e+00, %5437
  %5439 = call float @dx.op.unary.f32(i32 6, float %5363)  ; FAbs(value)
  %5440 = fsub fast float 1.000000e+00, %5439
  %5441 = fmul fast float %2534, 0x41D9660740000000
  %5442 = fadd fast float %5441, 0xC1EFBF8940000000
  %5443 = bitcast float %5440 to i32
  %5444 = sitofp i32 %5443 to float
  %5445 = fmul fast float %5444, %5438
  %5446 = fadd fast float %5442, %5445
  %5447 = fptosi float %5446 to i32
  %5448 = bitcast i32 %5447 to float
  %5449 = fsub fast float 1.000000e+00, %2210
  %5450 = fsub fast float 1.000000e+00, %2211
  %5451 = fsub fast float 1.000000e+00, %2222
  %5452 = fmul fast float %5448, %5449
  %5453 = fmul fast float %5448, %5450
  %5454 = fmul fast float %5448, %5451
  %5455 = fadd fast float %5452, %2210
  %5456 = fadd fast float %5453, %2211
  %5457 = fadd fast float %5454, %2222
  br i1 %2557, label %5458, label %5481

; <label>:5458                                    ; preds = %5334
  %5459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1506, float %5439, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5460 = extractvalue %dx.types.ResRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.ResRet.f32 %5459, 1
  %5462 = extractvalue %dx.types.ResRet.f32 %5459, 2
  %5463 = fadd fast float %5460, -5.000000e-01
  %5464 = fadd fast float %5461, -5.000000e-01
  %5465 = fadd fast float %5462, -5.000000e-01
  %5466 = fmul fast float %2210, 4.000000e+00
  %5467 = fmul fast float %5466, %5449
  %5468 = fmul fast float %5467, %5463
  %5469 = fmul fast float %2211, 4.000000e+00
  %5470 = fmul fast float %5469, %5450
  %5471 = fmul fast float %5470, %5464
  %5472 = fmul fast float %2222, 4.000000e+00
  %5473 = fmul fast float %5472, %5451
  %5474 = fmul fast float %5473, %5465
  %5475 = fadd fast float %5468, %5455
  %5476 = fadd fast float %5471, %5456
  %5477 = fadd fast float %5474, %5457
  %5478 = call float @dx.op.unary.f32(i32 7, float %5475)  ; Saturate(value)
  %5479 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5480 = call float @dx.op.unary.f32(i32 7, float %5477)  ; Saturate(value)
  br label %5481

; <label>:5481                                    ; preds = %5458, %5334
  %5482 = phi float [ %5478, %5458 ], [ %5455, %5334 ]
  %5483 = phi float [ %5479, %5458 ], [ %5456, %5334 ]
  %5484 = phi float [ %5480, %5458 ], [ %5457, %5334 ]
  %5485 = fmul fast float %5362, 9.843750e-01
  %5486 = fadd fast float %5485, 7.812500e-03
  %5487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %5486, float %2538, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5488 = extractvalue %dx.types.ResRet.f32 %5487, 0
  %5489 = extractvalue %dx.types.ResRet.f32 %5487, 1
  %5490 = extractvalue %dx.types.ResRet.f32 %5487, 2
  %5491 = extractvalue %dx.types.ResRet.f32 %5487, 3
  %5492 = fsub fast float %5490, %5488
  %5493 = fsub fast float %5491, %5489
  %5494 = fmul fast float %5492, %2544
  %5495 = fmul fast float %5493, %2544
  %5496 = fadd fast float %5494, %5488
  %5497 = fadd fast float %5495, %5489
  %5498 = fmul fast float %5496, %2210
  %5499 = fmul fast float %5496, %2211
  %5500 = fmul fast float %5496, %2222
  %5501 = fadd fast float %5498, %5497
  %5502 = fadd fast float %5499, %5497
  %5503 = fadd fast float %5500, %5497
  br i1 %2557, label %5504, label %5527

; <label>:5504                                    ; preds = %5481
  %5505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1506, float %5362, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5506 = extractvalue %dx.types.ResRet.f32 %5505, 0
  %5507 = extractvalue %dx.types.ResRet.f32 %5505, 1
  %5508 = extractvalue %dx.types.ResRet.f32 %5505, 2
  %5509 = fadd fast float %5506, -5.000000e-01
  %5510 = fadd fast float %5507, -5.000000e-01
  %5511 = fadd fast float %5508, -5.000000e-01
  %5512 = fmul fast float %2210, 4.000000e+00
  %5513 = fmul fast float %5512, %5449
  %5514 = fmul fast float %5513, %5509
  %5515 = fmul fast float %2211, 4.000000e+00
  %5516 = fmul fast float %5515, %5450
  %5517 = fmul fast float %5516, %5510
  %5518 = fmul fast float %2222, 4.000000e+00
  %5519 = fmul fast float %5518, %5451
  %5520 = fmul fast float %5519, %5511
  %5521 = fadd fast float %5514, %5501
  %5522 = fadd fast float %5517, %5502
  %5523 = fadd fast float %5520, %5503
  %5524 = call float @dx.op.unary.f32(i32 7, float %5521)  ; Saturate(value)
  %5525 = call float @dx.op.unary.f32(i32 7, float %5522)  ; Saturate(value)
  %5526 = call float @dx.op.unary.f32(i32 7, float %5523)  ; Saturate(value)
  br label %5527

; <label>:5527                                    ; preds = %5504, %5481
  %5528 = phi float [ %5524, %5504 ], [ %5501, %5481 ]
  %5529 = phi float [ %5525, %5504 ], [ %5502, %5481 ]
  %5530 = phi float [ %5526, %5504 ], [ %5503, %5481 ]
  %5531 = call float @dx.op.binary.f32(i32 35, float %5529, float %5530)  ; FMax(a,b)
  %5532 = call float @dx.op.binary.f32(i32 35, float %5528, float %5531)  ; FMax(a,b)
  %5533 = fsub fast float 1.000000e+00, %5532
  %5534 = call float @dx.op.binary.f32(i32 35, float %5387, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5535 = fdiv fast float %912, %5534
  %5536 = fmul fast float %3104, %5535
  %5537 = fmul fast float %3106, %5535
  %5538 = fmul fast float %3108, %5535
  %5539 = call float @dx.op.unary.f32(i32 21, float %5536)  ; Exp(value)
  %5540 = call float @dx.op.unary.f32(i32 21, float %5537)  ; Exp(value)
  %5541 = call float @dx.op.unary.f32(i32 21, float %5538)  ; Exp(value)
  %5542 = call float @dx.op.unary.f32(i32 7, float %5539)  ; Saturate(value)
  %5543 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  %5544 = call float @dx.op.unary.f32(i32 7, float %5541)  ; Saturate(value)
  %5545 = select i1 %3101, float %5542, float 0.000000e+00
  %5546 = select i1 %3102, float %5543, float 0.000000e+00
  %5547 = select i1 %3103, float %5544, float 0.000000e+00
  %5548 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5048, float %5049, float %2220, float %2219, float %2218)  ; Dot3(ax,ay,az,bx,by,bz)
  %5549 = call float @dx.op.unary.f32(i32 7, float %5548)  ; Saturate(value)
  %5550 = fmul fast float %5549, %5054
  %5551 = fmul fast float %5549, 9.843750e-01
  %5552 = fadd fast float %5551, 7.812500e-03
  %5553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %5552, float %2538, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5554 = extractvalue %dx.types.ResRet.f32 %5553, 0
  %5555 = extractvalue %dx.types.ResRet.f32 %5553, 1
  %5556 = extractvalue %dx.types.ResRet.f32 %5553, 2
  %5557 = extractvalue %dx.types.ResRet.f32 %5553, 3
  %5558 = fsub fast float %5556, %5554
  %5559 = fsub fast float %5557, %5555
  %5560 = fmul fast float %5558, %2544
  %5561 = fmul fast float %5559, %2544
  %5562 = fadd fast float %5560, %5554
  %5563 = fadd fast float %5561, %5555
  %5564 = fmul fast float %5562, %2210
  %5565 = fmul fast float %5562, %2211
  %5566 = fmul fast float %5562, %2222
  %5567 = fadd fast float %5564, %5563
  %5568 = fadd fast float %5565, %5563
  %5569 = fadd fast float %5566, %5563
  br i1 %2557, label %5570, label %5593

; <label>:5570                                    ; preds = %5527
  %5571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1506, float %5549, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5572 = extractvalue %dx.types.ResRet.f32 %5571, 0
  %5573 = extractvalue %dx.types.ResRet.f32 %5571, 1
  %5574 = extractvalue %dx.types.ResRet.f32 %5571, 2
  %5575 = fadd fast float %5572, -5.000000e-01
  %5576 = fadd fast float %5573, -5.000000e-01
  %5577 = fadd fast float %5574, -5.000000e-01
  %5578 = fmul fast float %2210, 4.000000e+00
  %5579 = fmul fast float %5578, %5449
  %5580 = fmul fast float %5579, %5575
  %5581 = fmul fast float %2211, 4.000000e+00
  %5582 = fmul fast float %5581, %5450
  %5583 = fmul fast float %5582, %5576
  %5584 = fmul fast float %2222, 4.000000e+00
  %5585 = fmul fast float %5584, %5451
  %5586 = fmul fast float %5585, %5577
  %5587 = fadd fast float %5580, %5567
  %5588 = fadd fast float %5583, %5568
  %5589 = fadd fast float %5586, %5569
  %5590 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  %5591 = call float @dx.op.unary.f32(i32 7, float %5588)  ; Saturate(value)
  %5592 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  br label %5593

; <label>:5593                                    ; preds = %5570, %5527
  %5594 = phi float [ %5590, %5570 ], [ %5567, %5527 ]
  %5595 = phi float [ %5591, %5570 ], [ %5568, %5527 ]
  %5596 = phi float [ %5592, %5570 ], [ %5569, %5527 ]
  %5597 = call float @dx.op.binary.f32(i32 35, float %5595, float %5596)  ; FMax(a,b)
  %5598 = call float @dx.op.binary.f32(i32 35, float %5594, float %5597)  ; FMax(a,b)
  %5599 = fsub fast float 1.000000e+00, %5598
  %5600 = fmul fast float %2279, %3168
  %5601 = fadd fast float %3170, %5600
  %5602 = call float @dx.op.unary.f32(i32 7, float %5601)  ; Saturate(value)
  %5603 = fsub fast float %5374, %2230
  %5604 = fsub fast float %5375, %2231
  %5605 = fsub fast float %5376, %2232
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5603, float %5604, float %5605, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = call float @dx.op.unary.f32(i32 25, float %5606)  ; Rsqrt(value)
  %5608 = fmul fast float %5603, %5607
  %5609 = fmul fast float %5604, %5607
  %5610 = fmul fast float %5605, %5607
  %5611 = call float @dx.op.dot3.f32(i32 55, float %2220, float %2219, float %2218, float %5608, float %5609, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = fmul fast float %5611, %5611
  %5613 = call float @dx.op.unary.f32(i32 6, float %5549)  ; FAbs(value)
  %5614 = call float @dx.op.binary.f32(i32 35, float %5602, float 0x3F847AE140000000)  ; FMax(a,b)
  %5615 = fmul fast float %5614, %5614
  %5616 = fmul fast float %5615, %5615
  %5617 = fsub fast float 1.000000e+00, %5616
  %5618 = fmul fast float %5389, %5617
  %5619 = fadd fast float %5618, %5616
  %5620 = bitcast float %5619 to i32
  %5621 = ashr i32 %5620, 1
  %5622 = add nsw i32 %5621, 532487669
  %5623 = bitcast i32 %5622 to float
  %5624 = fadd fast float %5623, %2224
  %5625 = call float @dx.op.dot3.f32(i32 55, float %1643, float %1644, float %1645, float %5608, float %5609, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %5626 = fmul fast float %5400, %5616
  %5627 = fmul fast float %5625, %5625
  %5628 = fsub fast float 1.000000e+00, %5612
  %5629 = fsub fast float %5628, %5627
  %5630 = fdiv fast float %5627, %5626
  %5631 = fadd fast float %5630, %5612
  %5632 = fdiv fast float %5629, %5616
  %5633 = fadd fast float %5631, %5632
  %5634 = fmul fast float %5613, %5613
  %5635 = fmul fast float %5634, %5617
  %5636 = fadd fast float %5635, %5616
  %5637 = bitcast float %5636 to i32
  %5638 = ashr i32 %5637, 1
  %5639 = add nsw i32 %5638, 532487669
  %5640 = bitcast i32 %5639 to float
  %5641 = fadd fast float %5640, %5613
  %5642 = fmul fast float %5616, %5399
  %5643 = fmul fast float %5633, %5633
  %5644 = fmul fast float %5643, %5642
  %5645 = fmul fast float %5644, %5624
  %5646 = fmul fast float %5645, %5641
  %5647 = fdiv fast float 1.000000e+00, %5646
  %5648 = bitcast float %5616 to i32
  %5649 = sitofp i32 %5648 to float
  %5650 = fmul fast float %5649, 0x3FE7F73180000000
  %5651 = fadd fast float %5650, 0x41AFE27C40000000
  %5652 = fptosi float %5651 to i32
  %5653 = bitcast i32 %5652 to float
  %5654 = fadd fast float %5653, %5430
  %5655 = bitcast float %5654 to i32
  %5656 = sub nsw i32 2129859010, %5655
  %5657 = bitcast i32 %5656 to float
  %5658 = fmul fast float %5653, %5647
  %5659 = fmul fast float %5658, %5657
  br i1 %5039, label %5660, label %5670

; <label>:5660                                    ; preds = %5593
  %5661 = fmul fast float %5550, %5545
  %5662 = fmul fast float %5550, %5546
  %5663 = fmul fast float %5550, %5547
  %5664 = fmul fast float %5661, %5599
  %5665 = fmul fast float %5664, %5659
  %5666 = fmul fast float %5662, %5599
  %5667 = fmul fast float %5666, %5659
  %5668 = fmul fast float %5663, %5599
  %5669 = fmul fast float %5668, %5659
  br label %5670

; <label>:5670                                    ; preds = %5660, %5593
  %5671 = phi float [ %5665, %5660 ], [ 0.000000e+00, %5593 ]
  %5672 = phi float [ %5667, %5660 ], [ 0.000000e+00, %5593 ]
  %5673 = phi float [ %5669, %5660 ], [ 0.000000e+00, %5593 ]
  %5674 = fmul fast float %5482, %5436
  %5675 = fmul fast float %5483, %5436
  %5676 = fmul fast float %5484, %5436
  %5677 = fsub fast float 1.000000e+00, %5363
  %5678 = bitcast float %5677 to i32
  %5679 = sitofp i32 %5678 to float
  %5680 = fmul fast float %5679, 5.000000e+00
  %5681 = fadd fast float %5680, 0xC1EFBF8940000000
  %5682 = fptosi float %5681 to i32
  %5683 = bitcast i32 %5682 to float
  %5684 = fmul fast float %5683, %1505
  %5685 = fmul fast float %5533, %5684
  %5686 = fmul fast float %5685, %3096
  %5687 = fmul fast float %5685, %3097
  %5688 = fmul fast float %5685, %3098
  %5689 = fadd fast float %5686, %5674
  %5690 = fadd fast float %5687, %5675
  %5691 = fadd fast float %5688, %5676
  %5692 = fmul fast float %5689, %5369
  %5693 = fmul fast float %5690, %5369
  %5694 = fmul fast float %5691, %5369
  %5695 = fadd fast float %5692, %5671
  %5696 = fadd fast float %5693, %5672
  %5697 = fadd fast float %5694, %5673
  %5698 = fmul fast float %5351, %1529
  %5699 = fmul fast float %5698, %5369
  %5700 = fmul fast float %5699, %5533
  %5701 = fmul fast float %5352, %1529
  %5702 = fmul fast float %5701, %5369
  %5703 = fmul fast float %5702, %5533
  %5704 = fmul fast float %5353, %1529
  %5705 = fmul fast float %5704, %5369
  %5706 = fmul fast float %5705, %5533
  %5707 = fadd fast float %5700, %4983
  %5708 = fadd fast float %5703, %4984
  %5709 = fadd fast float %5706, %4985
  %5710 = fmul fast float %5698, %5695
  %5711 = fmul fast float %5701, %5696
  %5712 = fmul fast float %5704, %5697
  %5713 = fadd fast float %5710, %4980
  %5714 = fadd fast float %5711, %4981
  %5715 = fadd fast float %5712, %4982
  br label %5113

; <label>:5716                                    ; preds = %5113
  br label %5717

; <label>:5717                                    ; preds = %5716, %4946
  %5718 = phi float [ %4948, %4946 ], [ %5114, %5716 ]
  %5719 = phi float [ %4949, %4946 ], [ %5115, %5716 ]
  %5720 = phi float [ %4950, %4946 ], [ %5116, %5716 ]
  %5721 = phi float [ %4951, %4946 ], [ %5117, %5716 ]
  %5722 = phi float [ %4952, %4946 ], [ %5118, %5716 ]
  %5723 = phi float [ %4953, %4946 ], [ %5119, %5716 ]
  %5724 = add i32 %4947, 1
  %5725 = icmp ugt i32 %5724, %4943
  br i1 %5725, label %5726, label %4946

; <label>:5726                                    ; preds = %5717
  br label %5727

; <label>:5727                                    ; preds = %5726, %4896, %4886
  %5728 = phi float [ %4887, %4886 ], [ %4887, %4896 ], [ %5718, %5726 ]
  %5729 = phi float [ %4888, %4886 ], [ %4888, %4896 ], [ %5719, %5726 ]
  %5730 = phi float [ %4889, %4886 ], [ %4889, %4896 ], [ %5720, %5726 ]
  %5731 = phi float [ %4890, %4886 ], [ %4890, %4896 ], [ %5721, %5726 ]
  %5732 = phi float [ %4891, %4886 ], [ %4891, %4896 ], [ %5722, %5726 ]
  %5733 = phi float [ %4892, %4886 ], [ %4892, %4896 ], [ %5723, %5726 ]
  %5734 = fmul fast float %1529, %3125
  %5735 = fsub fast float -0.000000e+00, %5734
  %5736 = fmul fast float %1529, %3126
  %5737 = fsub fast float -0.000000e+00, %5736
  %5738 = fmul fast float %1529, %3127
  %5739 = fsub fast float -0.000000e+00, %5738
  %5740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5741 = extractvalue %dx.types.CBufRet.f32 %5740, 0
  %5742 = fmul fast float %5741, %3131
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 3
  %5745 = fsub fast float 1.000000e+00, %1501
  %5746 = call float @dx.op.unary.f32(i32 7, float %5745)  ; Saturate(value)
  %5747 = fadd fast float %5733, %1500
  %5748 = fmul fast float %5747, %1501
  %5749 = fmul fast float %5746, %5744
  %5750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.f32 %5750, 3
  %5752 = fmul fast float %5731, %2207
  %5753 = fmul fast float %5732, %2208
  %5754 = fmul fast float %5733, %2209
  %5755 = fcmp fast ogt float %82, %171
  %5756 = and i1 %5755, %2012
  %5757 = or i1 %2018, %5756
  %5758 = icmp eq i32 %2011, 2
  %5759 = fcmp fast ole float %82, %171
  %5760 = and i1 %5759, %5758
  %5761 = or i1 %5760, %5757
  br i1 %5756, label %5762, label %6021

; <label>:5762                                    ; preds = %5727
  %5763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5764 = extractvalue %dx.types.CBufRet.f32 %5763, 2
  %5765 = extractvalue %dx.types.CBufRet.f32 %5763, 3
  %5766 = fmul fast float %5764, %94
  %5767 = fmul fast float %5765, %95
  %5768 = call float @dx.op.unary.f32(i32 7, float %5766)  ; Saturate(value)
  %5769 = call float @dx.op.unary.f32(i32 7, float %5767)  ; Saturate(value)
  %5770 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %5768, float %5769, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5771 = extractvalue %dx.types.ResRet.f32 %5770, 0
  %5772 = extractvalue %dx.types.ResRet.f32 %5770, 1
  %5773 = extractvalue %dx.types.ResRet.f32 %5770, 2
  %5774 = extractvalue %dx.types.ResRet.f32 %5770, 3
  %5775 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %5768, float %5769, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5776 = extractvalue %dx.types.ResRet.f32 %5775, 0
  %5777 = extractvalue %dx.types.ResRet.f32 %5775, 1
  %5778 = extractvalue %dx.types.ResRet.f32 %5775, 2
  %5779 = extractvalue %dx.types.ResRet.f32 %5775, 3
  %5780 = call float @dx.op.binary.f32(i32 35, float %5772, float %5773)  ; FMax(a,b)
  %5781 = call float @dx.op.binary.f32(i32 35, float %5771, float %5780)  ; FMax(a,b)
  %5782 = call float @dx.op.binary.f32(i32 35, float %5781, float %5774)  ; FMax(a,b)
  %5783 = call float @dx.op.binary.f32(i32 36, float %5777, float %5778)  ; FMin(a,b)
  %5784 = call float @dx.op.binary.f32(i32 36, float %5776, float %5783)  ; FMin(a,b)
  %5785 = call float @dx.op.binary.f32(i32 36, float %5784, float %5779)  ; FMin(a,b)
  %5786 = fmul fast float %5782, 2.550000e+02
  %5787 = fadd fast float %5786, 0x3F70101020000000
  %5788 = fptoui float %5787 to i32
  %5789 = fmul fast float %5785, 2.550000e+02
  %5790 = fadd fast float %5789, 0x3F70101020000000
  %5791 = fptoui float %5790 to i32
  %5792 = icmp ult i32 %5788, %5791
  br i1 %5792, label %5793, label %5961

; <label>:5793                                    ; preds = %5762
  %5794 = fcmp fast ogt float %81, 9.843750e-01
  %5795 = fadd fast float %82, -4.000000e+00
  %5796 = select i1 %5794, float -4.000000e+00, float %5795
  %5797 = call float @dx.op.binary.f32(i32 35, float %5796, float 0.000000e+00)  ; FMax(a,b)
  %5798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5799 = extractvalue %dx.types.CBufRet.f32 %5798, 0
  %5800 = fadd fast float %5799, %5797
  %5801 = extractvalue %dx.types.CBufRet.f32 %5798, 2
  %5802 = fmul fast float %5800, %5801
  %5803 = call float @dx.op.unary.f32(i32 23, float %5802)  ; Log(value)
  %5804 = extractvalue %dx.types.CBufRet.f32 %5798, 3
  %5805 = fmul fast float %5804, %5803
  %5806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5807 = extractvalue %dx.types.CBufRet.f32 %5806, 2
  %5808 = fmul fast float %5805, %5807
  %5809 = call float @dx.op.unary.f32(i32 7, float %5808)  ; Saturate(value)
  %5810 = uitofp i32 %5788 to float
  %5811 = uitofp i32 %5791 to float
  %5812 = fadd fast float %5810, 5.000000e-01
  %5813 = fadd fast float %5811, 5.000000e-01
  %5814 = fmul fast float %5807, %5812
  %5815 = fmul fast float %5807, %5813
  %5816 = fadd fast float %5814, 0x3F0FFB4800000000
  %5817 = fadd fast float %5815, 0xBF0FFB4800000000
  %5818 = call float @dx.op.binary.f32(i32 35, float %5809, float %5816)  ; FMax(a,b)
  %5819 = call float @dx.op.binary.f32(i32 36, float %5818, float %5817)  ; FMin(a,b)
  %5820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5821 = extractvalue %dx.types.CBufRet.f32 %5820, 1
  %5822 = extractvalue %dx.types.CBufRet.f32 %5820, 2
  %5823 = extractvalue %dx.types.CBufRet.f32 %5820, 0
  %5824 = fmul fast float %5821, %5819
  %5825 = fadd fast float %5823, %5824
  %5826 = fadd fast float %5823, %5822
  %5827 = fsub fast float %5821, %5822
  %5828 = fadd fast float %5827, %5823
  %5829 = call float @dx.op.binary.f32(i32 35, float %5825, float %5826)  ; FMax(a,b)
  %5830 = call float @dx.op.binary.f32(i32 36, float %5829, float %5828)  ; FMin(a,b)
  %5831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %5768, float %5769, float %5830, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5832 = extractvalue %dx.types.ResRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.ResRet.f32 %5831, 1
  %5834 = extractvalue %dx.types.ResRet.f32 %5831, 2
  %5835 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5836 = extractvalue %dx.types.CBufRet.i32 %5835, 0
  %5837 = extractvalue %dx.types.CBufRet.i32 %5835, 1
  %5838 = uitofp i32 %5836 to float
  %5839 = uitofp i32 %5837 to float
  %5840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5841 = extractvalue %dx.types.CBufRet.f32 %5840, 0
  %5842 = extractvalue %dx.types.CBufRet.f32 %5840, 1
  %5843 = fmul fast float %5838, %5768
  %5844 = fmul fast float %5839, %5769
  %5845 = fadd fast float %5843, -5.000000e-01
  %5846 = fadd fast float %5844, -5.000000e-01
  %5847 = call float @dx.op.unary.f32(i32 22, float %5845)  ; Frc(value)
  %5848 = call float @dx.op.unary.f32(i32 22, float %5846)  ; Frc(value)
  %5849 = fmul fast float %5847, %5847
  %5850 = fmul fast float %5849, %5847
  %5851 = fsub fast float 3.000000e+00, %5847
  %5852 = fmul fast float %5849, %5851
  %5853 = fmul fast float %5847, 3.000000e+00
  %5854 = fmul fast float %5850, 3.000000e+00
  %5855 = fmul fast float %5849, 6.000000e+00
  %5856 = fsub fast float %5854, %5855
  %5857 = fadd fast float %5856, 4.000000e+00
  %5858 = fmul fast float %5857, 0x3FC5555560000000
  %5859 = fmul fast float %5850, -3.000000e+00
  %5860 = fadd fast float %5849, %5847
  %5861 = fmul fast float %5860, 3.000000e+00
  %5862 = fadd fast float %5859, 1.000000e+00
  %5863 = fadd fast float %5862, %5861
  %5864 = fmul fast float %5850, 0x3FC5555560000000
  %5865 = fmul fast float %5848, %5848
  %5866 = fmul fast float %5865, %5848
  %5867 = fsub fast float 3.000000e+00, %5848
  %5868 = fmul fast float %5865, %5867
  %5869 = fmul fast float %5848, 3.000000e+00
  %5870 = fmul fast float %5866, 3.000000e+00
  %5871 = fmul fast float %5865, 6.000000e+00
  %5872 = fsub fast float %5870, %5871
  %5873 = fadd fast float %5872, 4.000000e+00
  %5874 = fmul fast float %5873, 0x3FC5555560000000
  %5875 = fmul fast float %5866, -3.000000e+00
  %5876 = fadd fast float %5865, %5848
  %5877 = fmul fast float %5876, 3.000000e+00
  %5878 = fadd fast float %5875, 1.000000e+00
  %5879 = fadd fast float %5878, %5877
  %5880 = fmul fast float %5866, 0x3FC5555560000000
  %5881 = fadd fast float %5847, 1.000000e+00
  %5882 = fsub fast float 1.000000e+00, %5853
  %5883 = fadd fast float %5882, %5852
  %5884 = fadd fast float %5883, %5857
  %5885 = fmul fast float %5884, 0x3FC5555560000000
  %5886 = fdiv fast float %5858, %5885
  %5887 = fsub fast float %5881, %5886
  %5888 = fsub fast float 1.000000e+00, %5847
  %5889 = fadd fast float %5863, %5850
  %5890 = fmul fast float %5889, 0x3FC5555560000000
  %5891 = fdiv fast float %5864, %5890
  %5892 = fadd fast float %5888, %5891
  %5893 = fadd fast float %5848, 1.000000e+00
  %5894 = fsub fast float 1.000000e+00, %5869
  %5895 = fadd fast float %5894, %5868
  %5896 = fadd fast float %5895, %5873
  %5897 = fmul fast float %5896, 0x3FC5555560000000
  %5898 = fdiv fast float %5874, %5897
  %5899 = fsub fast float %5893, %5898
  %5900 = fsub fast float 1.000000e+00, %5848
  %5901 = fadd fast float %5879, %5866
  %5902 = fmul fast float %5901, 0x3FC5555560000000
  %5903 = fdiv fast float %5880, %5902
  %5904 = fadd fast float %5903, %5900
  %5905 = fmul fast float %5887, %5841
  %5906 = fsub fast float %5768, %5905
  %5907 = fmul fast float %5892, %5841
  %5908 = fadd fast float %5907, %5768
  %5909 = fmul fast float %5904, %5842
  %5910 = fadd fast float %5909, %5769
  %5911 = fmul fast float %5899, %5842
  %5912 = fsub fast float %5769, %5911
  %5913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %5906, float %5912, float %5830, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5914 = extractvalue %dx.types.ResRet.f32 %5913, 0
  %5915 = extractvalue %dx.types.ResRet.f32 %5913, 1
  %5916 = extractvalue %dx.types.ResRet.f32 %5913, 2
  %5917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %5908, float %5912, float %5830, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5918 = extractvalue %dx.types.ResRet.f32 %5917, 0
  %5919 = extractvalue %dx.types.ResRet.f32 %5917, 1
  %5920 = extractvalue %dx.types.ResRet.f32 %5917, 2
  %5921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %5906, float %5910, float %5830, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5922 = extractvalue %dx.types.ResRet.f32 %5921, 0
  %5923 = extractvalue %dx.types.ResRet.f32 %5921, 1
  %5924 = extractvalue %dx.types.ResRet.f32 %5921, 2
  %5925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %5908, float %5910, float %5830, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5926 = extractvalue %dx.types.ResRet.f32 %5925, 0
  %5927 = extractvalue %dx.types.ResRet.f32 %5925, 1
  %5928 = extractvalue %dx.types.ResRet.f32 %5925, 2
  %5929 = fsub fast float %5922, %5914
  %5930 = fsub fast float %5923, %5915
  %5931 = fsub fast float %5924, %5916
  %5932 = fmul fast float %5929, %5902
  %5933 = fmul fast float %5930, %5902
  %5934 = fmul fast float %5931, %5902
  %5935 = fadd fast float %5932, %5914
  %5936 = fadd fast float %5933, %5915
  %5937 = fadd fast float %5934, %5916
  %5938 = fsub fast float %5926, %5918
  %5939 = fsub fast float %5927, %5919
  %5940 = fsub fast float %5928, %5920
  %5941 = fmul fast float %5938, %5902
  %5942 = fmul fast float %5939, %5902
  %5943 = fmul fast float %5940, %5902
  %5944 = fsub fast float %5918, %5935
  %5945 = fadd fast float %5944, %5941
  %5946 = fsub fast float %5919, %5936
  %5947 = fadd fast float %5946, %5942
  %5948 = fsub fast float %5920, %5937
  %5949 = fadd fast float %5948, %5943
  %5950 = fmul fast float %5945, %5890
  %5951 = fmul fast float %5947, %5890
  %5952 = fmul fast float %5949, %5890
  %5953 = fadd fast float %5950, %5935
  %5954 = fadd fast float %5951, %5936
  %5955 = fadd fast float %5952, %5937
  %5956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5957 = extractvalue %dx.types.CBufRet.f32 %5956, 1
  %5958 = fmul fast float %5953, %5957
  %5959 = fmul fast float %5954, %5957
  %5960 = fmul fast float %5955, %5957
  br label %5961

; <label>:5961                                    ; preds = %5793, %5762
  %5962 = phi float [ %5832, %5793 ], [ 1.000000e+00, %5762 ]
  %5963 = phi float [ %5833, %5793 ], [ 1.000000e+00, %5762 ]
  %5964 = phi float [ %5834, %5793 ], [ 1.000000e+00, %5762 ]
  %5965 = phi float [ %5958, %5793 ], [ 0.000000e+00, %5762 ]
  %5966 = phi float [ %5959, %5793 ], [ 0.000000e+00, %5762 ]
  %5967 = phi float [ %5960, %5793 ], [ 0.000000e+00, %5762 ]
  %5968 = fmul fast float %5965, %5735
  %5969 = fmul fast float %5966, %5737
  %5970 = fmul fast float %5967, %5739
  %5971 = call float @dx.op.dot3.f32(i32 55, float %5962, float %5963, float %5964, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5972 = call float @dx.op.dot3.f32(i32 55, float %5968, float %5969, float %5970, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5973 = select i1 %211, float %5971, float %5962
  %5974 = select i1 %211, float %5971, float %5963
  %5975 = select i1 %211, float 1.000000e+00, float %5964
  %5976 = select i1 %211, float %5972, float %5968
  %5977 = select i1 %211, float 0.000000e+00, float %5969
  %5978 = select i1 %211, float 0.000000e+00, float %5970
  %5979 = fmul fast float %5973, %5752
  %5980 = fmul fast float %5974, %5753
  %5981 = fmul fast float %5975, %5754
  %5982 = fadd fast float %5979, %5976
  %5983 = fadd fast float %5980, %5977
  %5984 = fadd fast float %5978, %5981
  %5985 = fmul fast float %5973, %5728
  %5986 = fmul fast float %5974, %5729
  %5987 = fmul fast float %5975, %5730
  %5988 = fmul fast float %94, 2.000000e+00
  %5989 = fmul fast float %5988, %5764
  %5990 = fmul fast float %95, 2.000000e+00
  %5991 = fmul fast float %5990, %5765
  %5992 = fsub fast float 1.000000e+00, %5989
  %5993 = fsub fast float 1.000000e+00, %5991
  %5994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5995 = extractvalue %dx.types.CBufRet.f32 %5994, 0
  %5996 = extractvalue %dx.types.CBufRet.f32 %5994, 1
  %5997 = extractvalue %dx.types.CBufRet.f32 %5994, 2
  %5998 = fmul fast float %5992, %5995
  %5999 = fmul fast float %5992, %5996
  %6000 = fmul fast float %5992, %5997
  %6001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6002 = extractvalue %dx.types.CBufRet.f32 %6001, 0
  %6003 = extractvalue %dx.types.CBufRet.f32 %6001, 1
  %6004 = extractvalue %dx.types.CBufRet.f32 %6001, 2
  %6005 = fmul fast float %5993, %6002
  %6006 = fmul fast float %5993, %6003
  %6007 = fmul fast float %5993, %6004
  %6008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6009 = extractvalue %dx.types.CBufRet.f32 %6008, 0
  %6010 = extractvalue %dx.types.CBufRet.f32 %6008, 1
  %6011 = extractvalue %dx.types.CBufRet.f32 %6008, 2
  %6012 = fadd fast float %6005, %6009
  %6013 = fadd fast float %6012, %5998
  %6014 = fadd fast float %6006, %6010
  %6015 = fadd fast float %6014, %5999
  %6016 = fadd fast float %6007, %6011
  %6017 = fadd fast float %6016, %6000
  %6018 = fmul fast float %6013, %171
  %6019 = fmul fast float %6015, %171
  %6020 = fmul fast float %6017, %171
  br label %6021

; <label>:6021                                    ; preds = %5961, %5727
  %6022 = phi float [ %6018, %5961 ], [ %149, %5727 ]
  %6023 = phi float [ %6019, %5961 ], [ %150, %5727 ]
  %6024 = phi float [ %6020, %5961 ], [ %151, %5727 ]
  %6025 = phi float [ %171, %5961 ], [ %82, %5727 ]
  %6026 = phi float [ %5982, %5961 ], [ %5752, %5727 ]
  %6027 = phi float [ %5983, %5961 ], [ %5753, %5727 ]
  %6028 = phi float [ %5984, %5961 ], [ %5754, %5727 ]
  %6029 = phi float [ %5985, %5961 ], [ %5728, %5727 ]
  %6030 = phi float [ %5986, %5961 ], [ %5729, %5727 ]
  %6031 = phi float [ %5987, %5961 ], [ %5730, %5727 ]
  %6032 = phi float [ %5962, %5961 ], [ 1.000000e+00, %5727 ]
  br i1 %5761, label %7187, label %6033

; <label>:6033                                    ; preds = %6021
  %6034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6035 = extractvalue %dx.types.CBufRet.f32 %6034, 0
  %6036 = extractvalue %dx.types.CBufRet.f32 %6034, 1
  %6037 = extractvalue %dx.types.CBufRet.f32 %6034, 2
  %6038 = extractvalue %dx.types.CBufRet.f32 %6034, 3
  %6039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6040 = extractvalue %dx.types.CBufRet.f32 %6039, 0
  %6041 = extractvalue %dx.types.CBufRet.f32 %6039, 1
  %6042 = extractvalue %dx.types.CBufRet.f32 %6039, 2
  %6043 = extractvalue %dx.types.CBufRet.f32 %6039, 3
  %6044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6045 = extractvalue %dx.types.CBufRet.f32 %6044, 0
  %6046 = extractvalue %dx.types.CBufRet.f32 %6044, 1
  %6047 = extractvalue %dx.types.CBufRet.f32 %6044, 2
  %6048 = extractvalue %dx.types.CBufRet.f32 %6044, 3
  %6049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6050 = extractvalue %dx.types.CBufRet.f32 %6049, 0
  %6051 = extractvalue %dx.types.CBufRet.f32 %6049, 1
  %6052 = extractvalue %dx.types.CBufRet.f32 %6049, 2
  %6053 = extractvalue %dx.types.CBufRet.f32 %6049, 3
  %6054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6055 = extractvalue %dx.types.CBufRet.f32 %6054, 3
  %6056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6057 = extractvalue %dx.types.CBufRet.f32 %6056, 3
  %6058 = extractvalue %dx.types.CBufRet.f32 %6056, 0
  %6059 = extractvalue %dx.types.CBufRet.f32 %6056, 1
  %6060 = extractvalue %dx.types.CBufRet.f32 %6056, 2
  %6061 = fcmp fast olt float %6060, -5.000000e-01
  %6062 = call float @dx.op.dot3.f32(i32 55, float %6022, float %6023, float %6024, float %6022, float %6023, float %6024)  ; Dot3(ax,ay,az,bx,by,bz)
  %6063 = call float @dx.op.unary.f32(i32 25, float %6062)  ; Rsqrt(value)
  %6064 = fmul fast float %6063, %6062
  %6065 = fmul fast float %6063, %6022
  %6066 = fmul fast float %6063, %6023
  %6067 = fmul fast float %6063, %6024
  %6068 = fadd fast float %6064, %6038
  %6069 = call float @dx.op.dot3.f32(i32 55, float %6065, float %6066, float %6067, float %6035, float %6036, float %6037)  ; Dot3(ax,ay,az,bx,by,bz)
  %6070 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6071 = extractvalue %dx.types.CBufRet.i32 %6070, 1
  %6072 = and i32 %6071, 1
  %6073 = icmp ne i32 %6072, 0
  %6074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6075 = extractvalue %dx.types.CBufRet.f32 %6074, 2
  %6076 = fcmp fast ogt float %6075, 0.000000e+00
  %6077 = and i1 %6073, %6076
  br i1 %6077, label %6078, label %6484, !dx.controlflow.hints !127

; <label>:6078                                    ; preds = %6033
  %6079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6080 = extractvalue %dx.types.CBufRet.f32 %6079, 3
  %6081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6082 = extractvalue %dx.types.CBufRet.f32 %6081, 2
  %6083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6084 = extractvalue %dx.types.CBufRet.f32 %6083, 2
  %6085 = fsub fast float %6082, %6084
  %6086 = and i32 %6071, 2
  %6087 = extractvalue %dx.types.CBufRet.i32 %6070, 0
  %6088 = call i32 @dx.op.binary.i32(i32 40, i32 %6087, i32 3)  ; UMin(a,b)
  %6089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6090 = extractvalue %dx.types.CBufRet.f32 %6089, 0
  %6091 = extractvalue %dx.types.CBufRet.f32 %6089, 1
  %6092 = extractvalue %dx.types.CBufRet.f32 %6083, 0
  %6093 = extractvalue %dx.types.CBufRet.f32 %6083, 1
  %6094 = fsub fast float %6090, %6092
  %6095 = fsub fast float %6091, %6093
  %6096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6097 = extractvalue %dx.types.CBufRet.f32 %6096, 0
  %6098 = fcmp fast ogt float %6097, 0.000000e+00
  %6099 = fsub fast float -0.000000e+00, %6094
  %6100 = fsub fast float -0.000000e+00, %6095
  %6101 = call float @dx.op.dot2.f32(i32 54, float %6065, float %6066, float %6065, float %6066)  ; Dot2(ax,ay,bx,by)
  %6102 = call float @dx.op.dot2.f32(i32 54, float %6065, float %6066, float %6099, float %6100)  ; Dot2(ax,ay,bx,by)
  %6103 = fmul fast float %6102, 2.000000e+00
  %6104 = call float @dx.op.dot2.f32(i32 54, float %6099, float %6100, float %6099, float %6100)  ; Dot2(ax,ay,bx,by)
  %6105 = fmul fast float %6097, %6097
  %6106 = fsub fast float %6104, %6105
  %6107 = fmul fast float %6103, %6103
  %6108 = fmul fast float %6101, 4.000000e+00
  %6109 = fmul fast float %6108, %6106
  %6110 = fsub fast float %6107, %6109
  %6111 = fcmp fast ogt float %6110, 0.000000e+00
  br i1 %6111, label %6112, label %6127

; <label>:6112                                    ; preds = %6078
  %6113 = fcmp fast ogt float %6103, 0.000000e+00
  %6114 = call float @dx.op.unary.f32(i32 24, float %6110)  ; Sqrt(value)
  %6115 = fsub fast float -0.000000e+00, %6114
  %6116 = select i1 %6113, float %6114, float %6115
  %6117 = fadd fast float %6116, %6103
  %6118 = fmul float %6117, -5.000000e-01
  %6119 = fdiv fast float %6118, %6101
  %6120 = call float @dx.op.binary.f32(i32 35, float %6119, float 0.000000e+00)  ; FMax(a,b)
  %6121 = call float @dx.op.binary.f32(i32 36, float %6064, float %6120)  ; FMin(a,b)
  %6122 = fdiv fast float %6106, %6118
  %6123 = call float @dx.op.binary.f32(i32 35, float %6122, float 0.000000e+00)  ; FMax(a,b)
  %6124 = call float @dx.op.binary.f32(i32 36, float %6064, float %6123)  ; FMin(a,b)
  %6125 = call float @dx.op.binary.f32(i32 36, float %6121, float %6124)  ; FMin(a,b)
  %6126 = call float @dx.op.binary.f32(i32 35, float %6121, float %6124)  ; FMax(a,b)
  br label %6127

; <label>:6127                                    ; preds = %6112, %6078
  %6128 = phi float [ %6126, %6112 ], [ -1.000000e+00, %6078 ]
  %6129 = phi float [ %6125, %6112 ], [ -1.000000e+00, %6078 ]
  %6130 = phi i1 [ true, %6112 ], [ false, %6078 ]
  %6131 = and i1 %6098, %6130
  br i1 %6131, label %6132, label %6134

; <label>:6132                                    ; preds = %6127
  %6133 = fcmp fast oeq float %6129, %6128
  br i1 %6133, label %6437, label %6135

; <label>:6134                                    ; preds = %6127
  br i1 %6098, label %6437, label %6135

; <label>:6135                                    ; preds = %6134, %6132
  %6136 = phi float [ %6064, %6134 ], [ %6128, %6132 ]
  %6137 = phi float [ 0.000000e+00, %6134 ], [ %6129, %6132 ]
  %6138 = icmp ne i32 %6086, 0
  %6139 = fmul fast float %6136, %6067
  %6140 = fadd fast float %6139, %6080
  %6141 = fmul fast float %6140, %6136
  %6142 = select i1 %6138, float 0.000000e+00, float %6141
  %6143 = fcmp fast oeq float %6067, 0.000000e+00
  %6144 = fdiv fast float %6085, %6067
  %6145 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6144)  ; FMax(a,b)
  %6146 = select i1 %6143, float %6136, float %6145
  %6147 = call float @dx.op.binary.f32(i32 36, float %6136, float %6146)  ; FMin(a,b)
  %6148 = fcmp fast ogt float %6067, 0.000000e+00
  %6149 = fcmp fast olt float %6085, 0.000000e+00
  br i1 %6148, label %6150, label %6207

; <label>:6150                                    ; preds = %6135
  %6151 = icmp eq i32 %6086, 0
  br i1 %6149, label %6152, label %6196

; <label>:6152                                    ; preds = %6150
  %6153 = select i1 %6151, float %6136, float 0.000000e+00
  %6154 = fsub fast float -0.000000e+00, %6153
  %6155 = call float @dx.op.unary.f32(i32 6, float %6154)  ; FAbs(value)
  %6156 = fmul fast float %6153, %6067
  %6157 = fadd fast float %6156, %6080
  %6158 = fmul fast float %6155, %6157
  %6159 = fsub fast float %6142, %6158
  %6160 = fsub fast float %6136, %6155
  %6161 = select i1 %6151, float %6160, float 0.000000e+00
  %6162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6163 = extractvalue %dx.types.CBufRet.f32 %6162, 0
  %6164 = extractvalue %dx.types.CBufRet.f32 %6162, 1
  %6165 = extractvalue %dx.types.CBufRet.f32 %6162, 2
  %6166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6167 = extractvalue %dx.types.CBufRet.f32 %6166, 0
  %6168 = extractvalue %dx.types.CBufRet.f32 %6166, 1
  %6169 = extractvalue %dx.types.CBufRet.f32 %6166, 2
  %6170 = extractvalue %dx.types.CBufRet.f32 %6166, 3
  %6171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6172 = extractvalue %dx.types.CBufRet.f32 %6171, 3
  %6173 = call float @dx.op.binary.f32(i32 36, float %6159, float %6172)  ; FMin(a,b)
  %6174 = fmul fast float %6170, %6161
  %6175 = call float @dx.op.unary.f32(i32 7, float %6174)  ; Saturate(value)
  %6176 = fsub fast float %6167, %6163
  %6177 = fsub fast float %6168, %6164
  %6178 = fsub fast float %6169, %6165
  %6179 = fmul fast float %6175, %6176
  %6180 = fmul fast float %6175, %6177
  %6181 = fmul fast float %6175, %6178
  %6182 = fadd fast float %6179, %6163
  %6183 = fadd fast float %6180, %6164
  %6184 = fadd fast float %6181, %6165
  %6185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6186 = extractvalue %dx.types.CBufRet.f32 %6185, 0
  %6187 = extractvalue %dx.types.CBufRet.f32 %6185, 1
  %6188 = fadd fast float %6187, %6186
  %6189 = call float @dx.op.unary.f32(i32 7, float %6188)  ; Saturate(value)
  %6190 = extractvalue %dx.types.CBufRet.f32 %6185, 2
  %6191 = extractvalue %dx.types.CBufRet.f32 %6185, 3
  %6192 = fadd fast float %6191, %6190
  %6193 = call float @dx.op.unary.f32(i32 7, float %6192)  ; Saturate(value)
  %6194 = fmul fast float %6189, %6173
  %6195 = fmul fast float %6194, %6193
  br label %6437

; <label>:6196                                    ; preds = %6150
  br i1 %6151, label %6197, label %6218

; <label>:6197                                    ; preds = %6196
  %6198 = call float @dx.op.binary.f32(i32 36, float %6147, float %6137)  ; FMin(a,b)
  %6199 = fsub fast float %6147, %6198
  %6200 = fsub fast float %6199, %6136
  %6201 = call float @dx.op.unary.f32(i32 6, float %6200)  ; FAbs(value)
  %6202 = fadd fast float %6199, %6136
  %6203 = fmul fast float %6202, %6067
  %6204 = fadd fast float %6203, %6080
  %6205 = fmul fast float %6204, %6201
  %6206 = fsub fast float %6142, %6205
  br label %6218

; <label>:6207                                    ; preds = %6135
  br i1 %6149, label %6208, label %6218

; <label>:6208                                    ; preds = %6207
  %6209 = call float @dx.op.binary.f32(i32 35, float %6137, float %6147)  ; FMax(a,b)
  %6210 = icmp eq i32 %6086, 0
  %6211 = select i1 %6210, float %6147, float 0.000000e+00
  %6212 = fsub fast float -0.000000e+00, %6211
  %6213 = call float @dx.op.unary.f32(i32 6, float %6212)  ; FAbs(value)
  %6214 = fmul fast float %6211, %6067
  %6215 = fadd fast float %6214, %6080
  %6216 = fmul fast float %6213, %6215
  %6217 = fsub fast float %6142, %6216
  br label %6218

; <label>:6218                                    ; preds = %6208, %6207, %6197, %6196
  %6219 = phi float [ %6137, %6196 ], [ %6137, %6197 ], [ %6209, %6208 ], [ %6137, %6207 ]
  %6220 = phi float [ 0.000000e+00, %6196 ], [ %6201, %6197 ], [ %6213, %6208 ], [ 0.000000e+00, %6207 ]
  %6221 = phi float [ %6142, %6196 ], [ %6206, %6197 ], [ %6217, %6208 ], [ %6142, %6207 ]
  %6222 = phi float [ %6147, %6196 ], [ %6147, %6197 ], [ %6136, %6208 ], [ %6136, %6207 ]
  %6223 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 0
  store float -1.000000e+00, float* %6223, align 4, !tbaa !114, !noalias !128
  %6224 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 1
  store float -1.000000e+00, float* %6224, align 4, !tbaa !114, !noalias !128
  %6225 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 2
  store float -1.000000e+00, float* %6225, align 4, !tbaa !114, !noalias !128
  %6226 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 0
  store float -1.000000e+00, float* %6226, align 4, !tbaa !114, !noalias !128
  %6227 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 1
  store float -1.000000e+00, float* %6227, align 4, !tbaa !114, !noalias !128
  %6228 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 2
  store float -1.000000e+00, float* %6228, align 4, !tbaa !114, !noalias !128
  %6229 = icmp sgt i32 %6088, 0
  br i1 %6229, label %6230, label %6291

; <label>:6230                                    ; preds = %6218
  br label %6231

; <label>:6231                                    ; preds = %6280, %6230
  %6232 = phi i32 [ %6281, %6280 ], [ 0, %6230 ]
  %6233 = phi i32 [ %6282, %6280 ], [ 0, %6230 ]
  %6234 = add nuw i32 %6233, 171
  %6235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6234)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.f32 %6235, 0
  %6237 = extractvalue %dx.types.CBufRet.f32 %6235, 1
  %6238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6239 = extractvalue %dx.types.CBufRet.f32 %6238, 0
  %6240 = extractvalue %dx.types.CBufRet.f32 %6238, 1
  %6241 = fsub fast float %6236, %6239
  %6242 = fsub fast float %6237, %6240
  %6243 = extractvalue %dx.types.CBufRet.f32 %6235, 2
  %6244 = fsub fast float -0.000000e+00, %6241
  %6245 = fsub fast float -0.000000e+00, %6242
  %6246 = call float @dx.op.dot2.f32(i32 54, float %6065, float %6066, float %6244, float %6245)  ; Dot2(ax,ay,bx,by)
  %6247 = fmul fast float %6246, 2.000000e+00
  %6248 = call float @dx.op.dot2.f32(i32 54, float %6244, float %6245, float %6244, float %6245)  ; Dot2(ax,ay,bx,by)
  %6249 = fmul fast float %6243, %6243
  %6250 = fsub fast float %6248, %6249
  %6251 = fmul fast float %6247, %6247
  %6252 = fmul fast float %6108, %6250
  %6253 = fsub fast float %6251, %6252
  %6254 = fcmp fast ogt float %6253, 0.000000e+00
  br i1 %6254, label %6255, label %6270

; <label>:6255                                    ; preds = %6231
  %6256 = fcmp fast ogt float %6247, 0.000000e+00
  %6257 = call float @dx.op.unary.f32(i32 24, float %6253)  ; Sqrt(value)
  %6258 = fsub fast float -0.000000e+00, %6257
  %6259 = select i1 %6256, float %6257, float %6258
  %6260 = fadd fast float %6259, %6247
  %6261 = fmul float %6260, -5.000000e-01
  %6262 = fdiv fast float %6261, %6101
  %6263 = call float @dx.op.binary.f32(i32 35, float %6262, float 0.000000e+00)  ; FMax(a,b)
  %6264 = call float @dx.op.binary.f32(i32 36, float %6136, float %6263)  ; FMin(a,b)
  %6265 = fdiv fast float %6250, %6261
  %6266 = call float @dx.op.binary.f32(i32 35, float %6265, float 0.000000e+00)  ; FMax(a,b)
  %6267 = call float @dx.op.binary.f32(i32 36, float %6136, float %6266)  ; FMin(a,b)
  %6268 = call float @dx.op.binary.f32(i32 36, float %6264, float %6267)  ; FMin(a,b)
  %6269 = call float @dx.op.binary.f32(i32 35, float %6264, float %6267)  ; FMax(a,b)
  br label %6270

; <label>:6270                                    ; preds = %6255, %6231
  %6271 = phi float [ %6269, %6255 ], [ -1.000000e+00, %6231 ]
  %6272 = phi float [ %6268, %6255 ], [ -1.000000e+00, %6231 ]
  %6273 = phi i1 [ true, %6255 ], [ false, %6231 ]
  br i1 %6273, label %6274, label %6280

; <label>:6274                                    ; preds = %6270
  %6275 = call float @dx.op.binary.f32(i32 35, float %6219, float %6272)  ; FMax(a,b)
  %6276 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %6233
  store float %6275, float* %6276, align 4, !tbaa !114, !noalias !128
  %6277 = call float @dx.op.binary.f32(i32 35, float %6219, float %6271)  ; FMax(a,b)
  %6278 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %6233
  store float %6277, float* %6278, align 4, !tbaa !114, !noalias !128
  %6279 = add nsw i32 %6232, 1
  br label %6280

; <label>:6280                                    ; preds = %6274, %6270
  %6281 = phi i32 [ %6279, %6274 ], [ %6232, %6270 ]
  %6282 = add nuw nsw i32 %6233, 1
  %6283 = icmp eq i32 %6282, %6088
  br i1 %6283, label %6284, label %6231

; <label>:6284                                    ; preds = %6280
  %6285 = load float, float* %6225, align 4, !tbaa !114, !alias.scope !144, !noalias !147
  %6286 = load float, float* %6224, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  %6287 = load float, float* %6223, align 4, !tbaa !114, !alias.scope !152, !noalias !153
  %6288 = load float, float* %6228, align 4, !tbaa !114, !alias.scope !154, !noalias !157
  %6289 = load float, float* %6227, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  %6290 = load float, float* %6226, align 4, !tbaa !114, !alias.scope !162, !noalias !163
  br label %6291

; <label>:6291                                    ; preds = %6284, %6218
  %6292 = phi float [ -1.000000e+00, %6218 ], [ %6290, %6284 ]
  %6293 = phi float [ -1.000000e+00, %6218 ], [ %6289, %6284 ]
  %6294 = phi float [ -1.000000e+00, %6218 ], [ %6288, %6284 ]
  %6295 = phi float [ -1.000000e+00, %6218 ], [ %6287, %6284 ]
  %6296 = phi float [ -1.000000e+00, %6218 ], [ %6286, %6284 ]
  %6297 = phi float [ -1.000000e+00, %6218 ], [ %6285, %6284 ]
  %6298 = phi i32 [ 0, %6218 ], [ %6281, %6284 ]
  %6299 = call float @dx.op.binary.f32(i32 36, float %6296, float %6297)  ; FMin(a,b)
  %6300 = call float @dx.op.binary.f32(i32 36, float %6295, float %6299)  ; FMin(a,b)
  %6301 = call float @dx.op.binary.f32(i32 35, float %6295, float %6296)  ; FMax(a,b)
  %6302 = call float @dx.op.binary.f32(i32 36, float %6301, float %6297)  ; FMin(a,b)
  %6303 = call float @dx.op.binary.f32(i32 36, float %6295, float %6296)  ; FMin(a,b)
  %6304 = call float @dx.op.binary.f32(i32 35, float %6303, float %6302)  ; FMax(a,b)
  %6305 = call float @dx.op.binary.f32(i32 35, float %6296, float %6297)  ; FMax(a,b)
  %6306 = call float @dx.op.binary.f32(i32 35, float %6295, float %6305)  ; FMax(a,b)
  store float %6300, float* %6223, align 4, !tbaa !114, !alias.scope !152, !noalias !153
  store float %6304, float* %6224, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  store float %6306, float* %6225, align 4, !tbaa !114, !alias.scope !144, !noalias !147
  %6307 = call float @dx.op.binary.f32(i32 36, float %6293, float %6294)  ; FMin(a,b)
  %6308 = call float @dx.op.binary.f32(i32 36, float %6292, float %6307)  ; FMin(a,b)
  %6309 = call float @dx.op.binary.f32(i32 35, float %6292, float %6293)  ; FMax(a,b)
  %6310 = call float @dx.op.binary.f32(i32 36, float %6309, float %6294)  ; FMin(a,b)
  %6311 = call float @dx.op.binary.f32(i32 36, float %6292, float %6293)  ; FMin(a,b)
  %6312 = call float @dx.op.binary.f32(i32 35, float %6311, float %6310)  ; FMax(a,b)
  %6313 = call float @dx.op.binary.f32(i32 35, float %6293, float %6294)  ; FMax(a,b)
  %6314 = call float @dx.op.binary.f32(i32 35, float %6292, float %6313)  ; FMax(a,b)
  store float %6308, float* %6226, align 4, !tbaa !114, !alias.scope !162, !noalias !163
  store float %6312, float* %6227, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  store float %6314, float* %6228, align 4, !tbaa !114, !alias.scope !154, !noalias !157
  %6315 = sub nsw i32 3, %6298
  %6316 = icmp sgt i32 %6315, 2
  br i1 %6316, label %6317, label %6355

; <label>:6317                                    ; preds = %6291
  %6318 = icmp eq i32 %6086, 0
  %6319 = fsub fast float %6136, %6220
  %6320 = select i1 %6318, float %6319, float %6220
  %6321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6322 = extractvalue %dx.types.CBufRet.f32 %6321, 0
  %6323 = extractvalue %dx.types.CBufRet.f32 %6321, 1
  %6324 = extractvalue %dx.types.CBufRet.f32 %6321, 2
  %6325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.f32 %6325, 0
  %6327 = extractvalue %dx.types.CBufRet.f32 %6325, 1
  %6328 = extractvalue %dx.types.CBufRet.f32 %6325, 2
  %6329 = extractvalue %dx.types.CBufRet.f32 %6325, 3
  %6330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6331 = extractvalue %dx.types.CBufRet.f32 %6330, 3
  %6332 = call float @dx.op.binary.f32(i32 36, float %6221, float %6331)  ; FMin(a,b)
  %6333 = fmul fast float %6329, %6320
  %6334 = call float @dx.op.unary.f32(i32 7, float %6333)  ; Saturate(value)
  %6335 = fsub fast float %6326, %6322
  %6336 = fsub fast float %6327, %6323
  %6337 = fsub fast float %6328, %6324
  %6338 = fmul fast float %6334, %6335
  %6339 = fmul fast float %6334, %6336
  %6340 = fmul fast float %6334, %6337
  %6341 = fadd fast float %6338, %6322
  %6342 = fadd fast float %6339, %6323
  %6343 = fadd fast float %6340, %6324
  %6344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6345 = extractvalue %dx.types.CBufRet.f32 %6344, 0
  %6346 = extractvalue %dx.types.CBufRet.f32 %6344, 1
  %6347 = fadd fast float %6346, %6345
  %6348 = call float @dx.op.unary.f32(i32 7, float %6347)  ; Saturate(value)
  %6349 = extractvalue %dx.types.CBufRet.f32 %6344, 2
  %6350 = extractvalue %dx.types.CBufRet.f32 %6344, 3
  %6351 = fadd fast float %6350, %6349
  %6352 = call float @dx.op.unary.f32(i32 7, float %6351)  ; Saturate(value)
  %6353 = fmul fast float %6348, %6332
  %6354 = fmul fast float %6353, %6352
  br label %6437

; <label>:6355                                    ; preds = %6291
  %6356 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %6315
  %6357 = load float, float* %6356, align 4, !tbaa !114, !noalias !128
  %6358 = fcmp fast olt float %6357, %6222
  %6359 = icmp sgt i32 %6298, 0
  %6360 = and i1 %6359, %6358
  br i1 %6360, label %6361, label %6398

; <label>:6361                                    ; preds = %6355
  br label %6362

; <label>:6362                                    ; preds = %6391, %6361
  %6363 = phi float [ %6392, %6391 ], [ %6220, %6361 ]
  %6364 = phi float [ %6393, %6391 ], [ %6221, %6361 ]
  %6365 = phi float [ %6373, %6391 ], [ %6357, %6361 ]
  %6366 = phi i32 [ %6370, %6391 ], [ %6315, %6361 ]
  %6367 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %6366
  %6368 = load float, float* %6367, align 4, !tbaa !114, !noalias !128
  %6369 = icmp slt i32 %6366, 2
  %6370 = add nsw i32 %6366, 1
  %6371 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %6370
  %6372 = load float, float* %6371, align 4, !tbaa !114, !noalias !128
  %6373 = select i1 %6369, float %6372, float %6136
  %6374 = call float @dx.op.binary.f32(i32 36, float %6373, float %6368)  ; FMin(a,b)
  %6375 = call float @dx.op.binary.f32(i32 36, float %6222, float %6374)  ; FMin(a,b)
  %6376 = icmp eq i32 %6086, 0
  %6377 = fadd fast float %6375, %6365
  %6378 = fmul fast float %6377, %6067
  %6379 = fadd fast float %6378, %6080
  br i1 %6376, label %6385, label %6380

; <label>:6380                                    ; preds = %6362
  %6381 = fsub fast float %6375, %6365
  %6382 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6381)  ; FMax(a,b)
  %6383 = fmul fast float %6382, %6379
  %6384 = fadd fast float %6383, %6364
  br label %6391

; <label>:6385                                    ; preds = %6362
  %6386 = fsub fast float %6365, %6375
  %6387 = call float @dx.op.unary.f32(i32 6, float %6386)  ; FAbs(value)
  %6388 = fadd fast float %6387, %6363
  %6389 = fmul fast float %6387, %6379
  %6390 = fsub fast float %6364, %6389
  br label %6391

; <label>:6391                                    ; preds = %6385, %6380
  %6392 = phi float [ %6382, %6380 ], [ %6388, %6385 ]
  %6393 = phi float [ %6384, %6380 ], [ %6390, %6385 ]
  %6394 = fcmp fast olt float %6373, %6222
  %6395 = icmp slt i32 %6370, 3
  %6396 = and i1 %6395, %6394
  br i1 %6396, label %6362, label %6397

; <label>:6397                                    ; preds = %6391
  br label %6398

; <label>:6398                                    ; preds = %6397, %6355
  %6399 = phi float [ %6220, %6355 ], [ %6392, %6397 ]
  %6400 = phi float [ %6221, %6355 ], [ %6393, %6397 ]
  %6401 = fsub fast float %6136, %6399
  %6402 = select i1 %6138, float %6399, float %6401
  %6403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.f32 %6403, 0
  %6405 = extractvalue %dx.types.CBufRet.f32 %6403, 1
  %6406 = extractvalue %dx.types.CBufRet.f32 %6403, 2
  %6407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6408 = extractvalue %dx.types.CBufRet.f32 %6407, 0
  %6409 = extractvalue %dx.types.CBufRet.f32 %6407, 1
  %6410 = extractvalue %dx.types.CBufRet.f32 %6407, 2
  %6411 = extractvalue %dx.types.CBufRet.f32 %6407, 3
  %6412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6413 = extractvalue %dx.types.CBufRet.f32 %6412, 3
  %6414 = call float @dx.op.binary.f32(i32 36, float %6400, float %6413)  ; FMin(a,b)
  %6415 = fmul fast float %6411, %6402
  %6416 = call float @dx.op.unary.f32(i32 7, float %6415)  ; Saturate(value)
  %6417 = fsub fast float %6408, %6404
  %6418 = fsub fast float %6409, %6405
  %6419 = fsub fast float %6410, %6406
  %6420 = fmul fast float %6416, %6417
  %6421 = fmul fast float %6416, %6418
  %6422 = fmul fast float %6416, %6419
  %6423 = fadd fast float %6420, %6404
  %6424 = fadd fast float %6421, %6405
  %6425 = fadd fast float %6422, %6406
  %6426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6427 = extractvalue %dx.types.CBufRet.f32 %6426, 0
  %6428 = extractvalue %dx.types.CBufRet.f32 %6426, 1
  %6429 = fadd fast float %6428, %6427
  %6430 = call float @dx.op.unary.f32(i32 7, float %6429)  ; Saturate(value)
  %6431 = extractvalue %dx.types.CBufRet.f32 %6426, 2
  %6432 = extractvalue %dx.types.CBufRet.f32 %6426, 3
  %6433 = fadd fast float %6432, %6431
  %6434 = call float @dx.op.unary.f32(i32 7, float %6433)  ; Saturate(value)
  %6435 = fmul fast float %6430, %6414
  %6436 = fmul fast float %6435, %6434
  br label %6437

; <label>:6437                                    ; preds = %6398, %6317, %6152, %6134, %6132
  %6438 = phi float [ %6161, %6152 ], [ %6320, %6317 ], [ %6402, %6398 ], [ 0.000000e+00, %6132 ], [ 0.000000e+00, %6134 ]
  %6439 = phi float [ %6195, %6152 ], [ %6354, %6317 ], [ %6436, %6398 ], [ 0.000000e+00, %6132 ], [ 0.000000e+00, %6134 ]
  %6440 = phi float [ %6182, %6152 ], [ %6341, %6317 ], [ %6423, %6398 ], [ 0.000000e+00, %6132 ], [ 0.000000e+00, %6134 ]
  %6441 = phi float [ %6183, %6152 ], [ %6342, %6317 ], [ %6424, %6398 ], [ 0.000000e+00, %6132 ], [ 0.000000e+00, %6134 ]
  %6442 = phi float [ %6184, %6152 ], [ %6343, %6317 ], [ %6425, %6398 ], [ 0.000000e+00, %6132 ], [ 0.000000e+00, %6134 ]
  %6443 = fmul fast float %6075, %6439
  %6444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6445 = extractvalue %dx.types.CBufRet.f32 %6444, 2
  %6446 = fsub fast float %6082, %6445
  %6447 = fcmp fast olt float %6443, -2.000000e+01
  %6448 = call float @dx.op.unary.f32(i32 21, float %6443)  ; Exp(value)
  %6449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6450 = extractvalue %dx.types.CBufRet.f32 %6449, 2
  %6451 = extractvalue %dx.types.CBufRet.f32 %6449, 3
  %6452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6453 = extractvalue %dx.types.CBufRet.f32 %6452, 2
  %6454 = fmul fast float %6451, %6446
  %6455 = call float @dx.op.unary.f32(i32 7, float %6454)  ; Saturate(value)
  %6456 = fsub fast float 1.000000e+00, %6455
  %6457 = fmul fast float %6067, 5.000000e-01
  %6458 = fadd fast float %6457, 5.000000e-01
  %6459 = call float @dx.op.unary.f32(i32 7, float %6458)  ; Saturate(value)
  %6460 = fsub fast float 1.000000e+00, %6459
  %6461 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6456)  ; FMax(a,b)
  %6462 = fdiv fast float %6460, %6461
  %6463 = fsub fast float %6446, %6024
  %6464 = call float @dx.op.unary.f32(i32 6, float %6463)  ; FAbs(value)
  %6465 = fmul fast float %6464, %6450
  %6466 = call float @dx.op.unary.f32(i32 7, float %6462)  ; Saturate(value)
  %6467 = fsub fast float 1.000000e+00, %6465
  %6468 = fmul fast float %6467, %6466
  %6469 = fadd fast float %6468, %6465
  %6470 = fmul fast float %6453, %6446
  %6471 = call float @dx.op.unary.f32(i32 7, float %6470)  ; Saturate(value)
  %6472 = fsub fast float 1.000000e+00, %6469
  %6473 = fmul fast float %6472, %6471
  %6474 = fadd fast float %6473, %6469
  %6475 = call float @dx.op.unary.f32(i32 7, float %6474)  ; Saturate(value)
  %6476 = fadd fast float %6448, -1.000000e+00
  %6477 = select i1 %6447, float -1.000000e+00, float %6476
  %6478 = fmul fast float %6475, %6477
  %6479 = fadd fast float %6478, 1.000000e+00
  %6480 = fsub fast float -0.000000e+00, %6478
  %6481 = fmul fast float %6440, %6480
  %6482 = fmul fast float %6441, %6480
  %6483 = fmul fast float %6442, %6480
  br label %6484

; <label>:6484                                    ; preds = %6437, %6033
  %6485 = phi float [ %6438, %6437 ], [ 0.000000e+00, %6033 ]
  %6486 = phi float [ %6479, %6437 ], [ 1.000000e+00, %6033 ]
  %6487 = phi float [ %6481, %6437 ], [ 0.000000e+00, %6033 ]
  %6488 = phi float [ %6482, %6437 ], [ 0.000000e+00, %6033 ]
  %6489 = phi float [ %6483, %6437 ], [ 0.000000e+00, %6033 ]
  %6490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6491 = extractvalue %dx.types.CBufRet.f32 %6490, 1
  %6492 = fsub fast float 1.000000e+00, %6486
  %6493 = fmul fast float %6492, %6068
  %6494 = fmul fast float %6493, %6491
  %6495 = fsub fast float %6068, %6494
  br i1 %6061, label %6496, label %6525, !dx.controlflow.hints !164

; <label>:6496                                    ; preds = %6484
  %6497 = fmul fast float %6069, %6058
  %6498 = fadd fast float %6497, %6059
  %6499 = call float @dx.op.unary.f32(i32 7, float %6498)  ; Saturate(value)
  %6500 = fmul fast float %6040, %6495
  %6501 = fsub fast float -0.000000e+00, %6500
  %6502 = fmul fast float %6041, %6495
  %6503 = fsub fast float -0.000000e+00, %6502
  %6504 = call float @dx.op.unary.f32(i32 21, float %6501)  ; Exp(value)
  %6505 = call float @dx.op.unary.f32(i32 21, float %6503)  ; Exp(value)
  %6506 = call float @dx.op.binary.f32(i32 35, float %6048, float %6504)  ; FMax(a,b)
  %6507 = call float @dx.op.binary.f32(i32 35, float %6048, float %6505)  ; FMax(a,b)
  %6508 = fsub fast float %6507, %6506
  %6509 = fmul fast float %6508, %6499
  %6510 = fadd fast float %6509, %6506
  %6511 = call float @dx.op.unary.f32(i32 7, float %6510)  ; Saturate(value)
  %6512 = fsub fast float %6045, %6050
  %6513 = fsub fast float %6046, %6051
  %6514 = fsub fast float %6047, %6052
  %6515 = fmul fast float %6499, %6512
  %6516 = fmul fast float %6499, %6513
  %6517 = fmul fast float %6499, %6514
  %6518 = fadd fast float %6515, %6050
  %6519 = fadd fast float %6516, %6051
  %6520 = fadd fast float %6517, %6052
  %6521 = fsub fast float 1.000000e+00, %6511
  %6522 = fmul fast float %6521, %6518
  %6523 = fmul fast float %6521, %6519
  %6524 = fmul fast float %6521, %6520
  br label %6584

; <label>:6525                                    ; preds = %6484
  %6526 = fmul fast float %6495, %6057
  %6527 = call float @dx.op.unary.f32(i32 7, float %6526)  ; Saturate(value)
  %6528 = fsub fast float 2.000000e+00, %6527
  %6529 = fmul fast float %6527, 9.921875e-01
  %6530 = fmul fast float %6529, %6528
  %6531 = fadd fast float %6530, 3.906250e-03
  %6532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %6531, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6533 = extractvalue %dx.types.ResRet.f32 %6532, 0
  %6534 = fsub fast float %6527, %6533
  %6535 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6534)  ; FMax(a,b)
  %6536 = fmul fast float %6043, %6024
  %6537 = call float @dx.op.unary.f32(i32 6, float %6536)  ; FAbs(value)
  %6538 = fcmp fast ogt float %6537, 0x3EB0C6F7A0000000
  br i1 %6538, label %6539, label %6545, !dx.controlflow.hints !165

; <label>:6539                                    ; preds = %6525
  %6540 = fmul fast float %6536, 0xBFF7154760000000
  %6541 = call float @dx.op.unary.f32(i32 21, float %6540)  ; Exp(value)
  %6542 = fsub fast float 1.000000e+00, %6541
  %6543 = fdiv fast float %6542, %6536
  %6544 = fmul fast float %6543, %6053
  br label %6545

; <label>:6545                                    ; preds = %6539, %6525
  %6546 = phi float [ %6544, %6539 ], [ %6053, %6525 ]
  %6547 = fadd fast float %6546, %6055
  %6548 = fmul fast float %6547, %6535
  %6549 = fmul fast float %6040, %6548
  %6550 = fsub fast float -0.000000e+00, %6549
  %6551 = fmul fast float %6041, %6548
  %6552 = fsub fast float -0.000000e+00, %6551
  %6553 = fmul fast float %6042, %6548
  %6554 = fsub fast float -0.000000e+00, %6553
  %6555 = call float @dx.op.unary.f32(i32 21, float %6550)  ; Exp(value)
  %6556 = call float @dx.op.unary.f32(i32 21, float %6552)  ; Exp(value)
  %6557 = call float @dx.op.unary.f32(i32 21, float %6554)  ; Exp(value)
  %6558 = fmul fast float %6069, %6069
  %6559 = fadd fast float %6558, 1.000000e+00
  %6560 = fmul fast float %6559, 0x3FAE8EC8A0000000
  %6561 = fmul fast float %6560, %6050
  %6562 = fmul fast float %6560, %6051
  %6563 = fmul fast float %6560, %6052
  %6564 = fmul fast float %6069, %6048
  %6565 = fsub fast float 1.000000e+00, %6564
  %6566 = fmul fast float %6048, %6048
  %6567 = fsub fast float 1.000000e+00, %6566
  %6568 = fmul fast float %6567, 0x3FB45F3060000000
  %6569 = fmul fast float %6565, %6565
  %6570 = fdiv fast float 1.000000e+00, %6569
  %6571 = fmul fast float %6568, %6570
  %6572 = fmul fast float %6571, %6045
  %6573 = fmul fast float %6571, %6046
  %6574 = fmul fast float %6571, %6047
  %6575 = fadd fast float %6572, %6561
  %6576 = fadd fast float %6573, %6562
  %6577 = fadd fast float %6574, %6563
  %6578 = fsub fast float 1.000000e+00, %6555
  %6579 = fsub fast float 1.000000e+00, %6556
  %6580 = fsub fast float 1.000000e+00, %6557
  %6581 = fmul fast float %6575, %6578
  %6582 = fmul fast float %6576, %6579
  %6583 = fmul fast float %6577, %6580
  br label %6584

; <label>:6584                                    ; preds = %6545, %6496
  %6585 = phi float [ %6522, %6496 ], [ %6581, %6545 ]
  %6586 = phi float [ %6523, %6496 ], [ %6582, %6545 ]
  %6587 = phi float [ %6524, %6496 ], [ %6583, %6545 ]
  %6588 = phi float [ %6511, %6496 ], [ %6555, %6545 ]
  %6589 = phi float [ %6511, %6496 ], [ %6556, %6545 ]
  %6590 = phi float [ %6511, %6496 ], [ %6557, %6545 ]
  br i1 %6077, label %6591, label %6789, !dx.controlflow.hints !166

; <label>:6591                                    ; preds = %6584
  %6592 = extractvalue %dx.types.CBufRet.f32 %6490, 0
  %6593 = fmul fast float %6592, %6492
  %6594 = fsub fast float %6487, %6585
  %6595 = fsub fast float %6488, %6586
  %6596 = fsub fast float %6489, %6587
  %6597 = fmul fast float %6593, %6594
  %6598 = fmul fast float %6593, %6595
  %6599 = fmul fast float %6593, %6596
  %6600 = fadd fast float %6597, %6585
  %6601 = fadd fast float %6598, %6586
  %6602 = fadd fast float %6599, %6587
  %6603 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6588)  ; FMax(a,b)
  %6604 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6589)  ; FMax(a,b)
  %6605 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6590)  ; FMax(a,b)
  %6606 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6486)  ; FMax(a,b)
  %6607 = call float @dx.op.binary.f32(i32 35, float %6485, float %6495)  ; FMax(a,b)
  %6608 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6607)  ; FMax(a,b)
  %6609 = fdiv fast float %6485, %6608
  %6610 = call float @dx.op.unary.f32(i32 7, float %6609)  ; Saturate(value)
  %6611 = fdiv fast float %6495, %6608
  %6612 = call float @dx.op.unary.f32(i32 7, float %6611)  ; Saturate(value)
  %6613 = fcmp fast une float %6606, 1.000000e+00
  br i1 %6613, label %6614, label %6627, !dx.controlflow.hints !167

; <label>:6614                                    ; preds = %6591
  %6615 = call float @dx.op.unary.f32(i32 23, float %6606)  ; Log(value)
  %6616 = fmul fast float %6615, 0x3FE62E4300000000
  %6617 = fmul fast float %6487, %6616
  %6618 = fsub fast float -0.000000e+00, %6617
  %6619 = fmul fast float %6488, %6616
  %6620 = fsub fast float -0.000000e+00, %6619
  %6621 = fmul fast float %6489, %6616
  %6622 = fsub fast float -0.000000e+00, %6621
  %6623 = fsub fast float 1.000000e+00, %6606
  %6624 = fdiv fast float %6618, %6623
  %6625 = fdiv fast float %6620, %6623
  %6626 = fdiv fast float %6622, %6623
  br label %6627

; <label>:6627                                    ; preds = %6614, %6591
  %6628 = phi float [ %6624, %6614 ], [ %6487, %6591 ]
  %6629 = phi float [ %6625, %6614 ], [ %6488, %6591 ]
  %6630 = phi float [ %6626, %6614 ], [ %6489, %6591 ]
  %6631 = phi float [ %6616, %6614 ], [ 0.000000e+00, %6591 ]
  %6632 = fcmp fast une float %6603, 1.000000e+00
  br i1 %6632, label %6633, label %6640, !dx.controlflow.hints !168

; <label>:6633                                    ; preds = %6627
  %6634 = call float @dx.op.unary.f32(i32 23, float %6603)  ; Log(value)
  %6635 = fmul fast float %6634, 0x3FE62E4300000000
  %6636 = fmul fast float %6600, %6635
  %6637 = fsub fast float -0.000000e+00, %6636
  %6638 = fsub fast float 1.000000e+00, %6603
  %6639 = fdiv fast float %6637, %6638
  br label %6640

; <label>:6640                                    ; preds = %6633, %6627
  %6641 = phi float [ %6639, %6633 ], [ %6600, %6627 ]
  %6642 = phi float [ %6635, %6633 ], [ 0.000000e+00, %6627 ]
  %6643 = fcmp fast une float %6604, 1.000000e+00
  br i1 %6643, label %6644, label %6651, !dx.controlflow.hints !168

; <label>:6644                                    ; preds = %6640
  %6645 = call float @dx.op.unary.f32(i32 23, float %6604)  ; Log(value)
  %6646 = fmul fast float %6645, 0x3FE62E4300000000
  %6647 = fmul fast float %6601, %6646
  %6648 = fsub fast float -0.000000e+00, %6647
  %6649 = fsub fast float 1.000000e+00, %6604
  %6650 = fdiv fast float %6648, %6649
  br label %6651

; <label>:6651                                    ; preds = %6644, %6640
  %6652 = phi float [ %6650, %6644 ], [ %6601, %6640 ]
  %6653 = phi float [ %6646, %6644 ], [ 0.000000e+00, %6640 ]
  %6654 = fcmp fast une float %6605, 1.000000e+00
  br i1 %6654, label %6655, label %6662, !dx.controlflow.hints !168

; <label>:6655                                    ; preds = %6651
  %6656 = call float @dx.op.unary.f32(i32 23, float %6605)  ; Log(value)
  %6657 = fmul fast float %6656, 0x3FE62E4300000000
  %6658 = fmul fast float %6602, %6657
  %6659 = fsub fast float -0.000000e+00, %6658
  %6660 = fsub fast float 1.000000e+00, %6605
  %6661 = fdiv fast float %6659, %6660
  br label %6662

; <label>:6662                                    ; preds = %6655, %6651
  %6663 = phi float [ %6661, %6655 ], [ %6602, %6651 ]
  %6664 = phi float [ %6657, %6655 ], [ 0.000000e+00, %6651 ]
  %6665 = fmul fast float %6628, %6612
  %6666 = fmul fast float %6629, %6612
  %6667 = fmul fast float %6630, %6612
  %6668 = fmul fast float %6631, %6612
  %6669 = fmul fast float %6641, %6610
  %6670 = fmul fast float %6652, %6610
  %6671 = fmul fast float %6663, %6610
  %6672 = fmul fast float %6642, %6610
  %6673 = fmul fast float %6653, %6610
  %6674 = fmul fast float %6664, %6610
  %6675 = fadd fast float %6669, %6665
  %6676 = fadd fast float %6670, %6666
  %6677 = fadd fast float %6671, %6667
  %6678 = fadd fast float %6672, %6668
  %6679 = fadd fast float %6673, %6668
  %6680 = fadd fast float %6674, %6668
  %6681 = fcmp fast une float %6678, 0.000000e+00
  br i1 %6681, label %6682, label %6689, !dx.controlflow.hints !169

; <label>:6682                                    ; preds = %6662
  %6683 = fmul fast float %6678, 0x3FF7154760000000
  %6684 = call float @dx.op.unary.f32(i32 21, float %6683)  ; Exp(value)
  %6685 = fsub fast float 1.000000e+00, %6684
  %6686 = fmul fast float %6675, %6685
  %6687 = fsub fast float -0.000000e+00, %6686
  %6688 = fdiv fast float %6687, %6678
  br label %6689

; <label>:6689                                    ; preds = %6682, %6662
  %6690 = phi float [ %6684, %6682 ], [ 1.000000e+00, %6662 ]
  %6691 = phi float [ %6688, %6682 ], [ %6675, %6662 ]
  %6692 = fcmp fast une float %6679, 0.000000e+00
  br i1 %6692, label %6693, label %6700, !dx.controlflow.hints !169

; <label>:6693                                    ; preds = %6689
  %6694 = fmul fast float %6679, 0x3FF7154760000000
  %6695 = call float @dx.op.unary.f32(i32 21, float %6694)  ; Exp(value)
  %6696 = fsub fast float 1.000000e+00, %6695
  %6697 = fmul fast float %6676, %6696
  %6698 = fsub fast float -0.000000e+00, %6697
  %6699 = fdiv fast float %6698, %6679
  br label %6700

; <label>:6700                                    ; preds = %6693, %6689
  %6701 = phi float [ %6695, %6693 ], [ 1.000000e+00, %6689 ]
  %6702 = phi float [ %6699, %6693 ], [ %6676, %6689 ]
  %6703 = fcmp fast une float %6680, 0.000000e+00
  br i1 %6703, label %6704, label %6711, !dx.controlflow.hints !169

; <label>:6704                                    ; preds = %6700
  %6705 = fmul fast float %6680, 0x3FF7154760000000
  %6706 = call float @dx.op.unary.f32(i32 21, float %6705)  ; Exp(value)
  %6707 = fsub fast float 1.000000e+00, %6706
  %6708 = fmul fast float %6677, %6707
  %6709 = fsub fast float -0.000000e+00, %6708
  %6710 = fdiv fast float %6709, %6680
  br label %6711

; <label>:6711                                    ; preds = %6704, %6700
  %6712 = phi float [ %6706, %6704 ], [ 1.000000e+00, %6700 ]
  %6713 = phi float [ %6710, %6704 ], [ %6677, %6700 ]
  %6714 = fcmp fast ogt float %6610, %6612
  br i1 %6714, label %6715, label %6735

; <label>:6715                                    ; preds = %6711
  %6716 = fsub fast float 1.000000e+00, %6612
  %6717 = fmul fast float %6628, %6716
  %6718 = fmul fast float %6629, %6716
  %6719 = fmul fast float %6630, %6716
  %6720 = fmul fast float %6631, %6716
  %6721 = fcmp fast une float %6720, 0.000000e+00
  br i1 %6721, label %6722, label %6773, !dx.controlflow.hints !170

; <label>:6722                                    ; preds = %6715
  %6723 = fmul fast float %6720, 0x3FF7154760000000
  %6724 = call float @dx.op.unary.f32(i32 21, float %6723)  ; Exp(value)
  %6725 = fsub fast float 1.000000e+00, %6724
  %6726 = fmul fast float %6717, %6725
  %6727 = fsub fast float -0.000000e+00, %6726
  %6728 = fmul fast float %6718, %6725
  %6729 = fsub fast float -0.000000e+00, %6728
  %6730 = fmul fast float %6719, %6725
  %6731 = fsub fast float -0.000000e+00, %6730
  %6732 = fdiv fast float %6727, %6720
  %6733 = fdiv fast float %6729, %6720
  %6734 = fdiv fast float %6731, %6720
  br label %6773

; <label>:6735                                    ; preds = %6711
  %6736 = fsub fast float 1.000000e+00, %6610
  %6737 = fmul fast float %6641, %6736
  %6738 = fmul fast float %6652, %6736
  %6739 = fmul fast float %6663, %6736
  %6740 = fmul fast float %6642, %6736
  %6741 = fmul fast float %6653, %6736
  %6742 = fmul fast float %6664, %6736
  %6743 = fcmp fast une float %6740, 0.000000e+00
  br i1 %6743, label %6744, label %6751, !dx.controlflow.hints !169

; <label>:6744                                    ; preds = %6735
  %6745 = fmul fast float %6740, 0x3FF7154760000000
  %6746 = call float @dx.op.unary.f32(i32 21, float %6745)  ; Exp(value)
  %6747 = fsub fast float 1.000000e+00, %6746
  %6748 = fmul fast float %6737, %6747
  %6749 = fsub fast float -0.000000e+00, %6748
  %6750 = fdiv fast float %6749, %6740
  br label %6751

; <label>:6751                                    ; preds = %6744, %6735
  %6752 = phi float [ %6750, %6744 ], [ %6737, %6735 ]
  %6753 = phi float [ %6746, %6744 ], [ 1.000000e+00, %6735 ]
  %6754 = fcmp fast une float %6741, 0.000000e+00
  br i1 %6754, label %6755, label %6762, !dx.controlflow.hints !169

; <label>:6755                                    ; preds = %6751
  %6756 = fmul fast float %6741, 0x3FF7154760000000
  %6757 = call float @dx.op.unary.f32(i32 21, float %6756)  ; Exp(value)
  %6758 = fsub fast float 1.000000e+00, %6757
  %6759 = fmul fast float %6738, %6758
  %6760 = fsub fast float -0.000000e+00, %6759
  %6761 = fdiv fast float %6760, %6741
  br label %6762

; <label>:6762                                    ; preds = %6755, %6751
  %6763 = phi float [ %6761, %6755 ], [ %6738, %6751 ]
  %6764 = phi float [ %6757, %6755 ], [ 1.000000e+00, %6751 ]
  %6765 = fcmp fast une float %6742, 0.000000e+00
  br i1 %6765, label %6766, label %6773, !dx.controlflow.hints !169

; <label>:6766                                    ; preds = %6762
  %6767 = fmul fast float %6742, 0x3FF7154760000000
  %6768 = call float @dx.op.unary.f32(i32 21, float %6767)  ; Exp(value)
  %6769 = fsub fast float 1.000000e+00, %6768
  %6770 = fmul fast float %6739, %6769
  %6771 = fsub fast float -0.000000e+00, %6770
  %6772 = fdiv fast float %6771, %6742
  br label %6773

; <label>:6773                                    ; preds = %6766, %6762, %6722, %6715
  %6774 = phi float [ %6772, %6766 ], [ %6734, %6722 ], [ %6719, %6715 ], [ %6739, %6762 ]
  %6775 = phi float [ %6763, %6766 ], [ %6733, %6722 ], [ %6718, %6715 ], [ %6763, %6762 ]
  %6776 = phi float [ %6752, %6766 ], [ %6732, %6722 ], [ %6717, %6715 ], [ %6752, %6762 ]
  %6777 = phi float [ %6768, %6766 ], [ %6724, %6722 ], [ 1.000000e+00, %6715 ], [ 1.000000e+00, %6762 ]
  %6778 = phi float [ %6764, %6766 ], [ %6724, %6722 ], [ 1.000000e+00, %6715 ], [ %6764, %6762 ]
  %6779 = phi float [ %6753, %6766 ], [ %6724, %6722 ], [ 1.000000e+00, %6715 ], [ %6753, %6762 ]
  %6780 = fmul fast float %6779, %6691
  %6781 = fmul fast float %6778, %6702
  %6782 = fmul fast float %6777, %6713
  %6783 = fadd fast float %6780, %6776
  %6784 = fadd fast float %6781, %6775
  %6785 = fadd fast float %6782, %6774
  %6786 = fmul fast float %6779, %6690
  %6787 = fmul fast float %6778, %6701
  %6788 = fmul fast float %6777, %6712
  br label %6789

; <label>:6789                                    ; preds = %6773, %6584
  %6790 = phi float [ %6788, %6773 ], [ %6590, %6584 ]
  %6791 = phi float [ %6787, %6773 ], [ %6589, %6584 ]
  %6792 = phi float [ %6786, %6773 ], [ %6588, %6584 ]
  %6793 = phi float [ %6785, %6773 ], [ %6587, %6584 ]
  %6794 = phi float [ %6784, %6773 ], [ %6586, %6584 ]
  %6795 = phi float [ %6783, %6773 ], [ %6585, %6584 ]
  %6796 = fmul fast float %6795, %5735
  %6797 = fmul fast float %6794, %5737
  %6798 = fmul fast float %6793, %5739
  %6799 = fmul fast float %6792, %6032
  %6800 = call float @dx.op.dot3.f32(i32 55, float %6792, float %6791, float %6790, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6801 = call float @dx.op.dot3.f32(i32 55, float %6796, float %6797, float %6798, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6802 = select i1 %211, float %6800, float %6792
  %6803 = select i1 %211, float %6800, float %6791
  %6804 = select i1 %211, float 1.000000e+00, float %6790
  %6805 = select i1 %211, float %6801, float %6796
  %6806 = select i1 %211, float 0.000000e+00, float %6797
  %6807 = select i1 %211, float 0.000000e+00, float %6798
  %6808 = fmul fast float %6802, %6026
  %6809 = fmul fast float %6803, %6027
  %6810 = fmul fast float %6804, %6028
  %6811 = fadd fast float %6808, %6805
  %6812 = fadd fast float %6809, %6806
  %6813 = fadd fast float %6807, %6810
  %6814 = fmul fast float %6802, %6029
  %6815 = fmul fast float %6803, %6030
  %6816 = fmul fast float %6804, %6031
  %6817 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6818 = extractvalue %dx.types.CBufRet.i32 %6817, 0
  %6819 = icmp eq i32 %6818, 0
  br i1 %6819, label %7187, label %6820, !dx.controlflow.hints !171

; <label>:6820                                    ; preds = %6789
  %6821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6822 = extractvalue %dx.types.CBufRet.f32 %6821, 2
  %6823 = extractvalue %dx.types.CBufRet.f32 %6821, 3
  %6824 = fmul fast float %6822, %94
  %6825 = fmul fast float %6823, %95
  %6826 = fmul fast float %6824, 2.000000e+00
  %6827 = fmul fast float %6825, 2.000000e+00
  %6828 = fsub fast float 1.000000e+00, %6826
  %6829 = fsub fast float 1.000000e+00, %6827
  %6830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6831 = extractvalue %dx.types.CBufRet.f32 %6830, 0
  %6832 = extractvalue %dx.types.CBufRet.f32 %6830, 1
  %6833 = extractvalue %dx.types.CBufRet.f32 %6830, 2
  %6834 = fmul fast float %6828, %6831
  %6835 = fmul fast float %6828, %6832
  %6836 = fmul fast float %6828, %6833
  %6837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6838 = extractvalue %dx.types.CBufRet.f32 %6837, 0
  %6839 = extractvalue %dx.types.CBufRet.f32 %6837, 1
  %6840 = extractvalue %dx.types.CBufRet.f32 %6837, 2
  %6841 = fmul fast float %6829, %6838
  %6842 = fmul fast float %6829, %6839
  %6843 = fmul fast float %6829, %6840
  %6844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6845 = extractvalue %dx.types.CBufRet.f32 %6844, 0
  %6846 = extractvalue %dx.types.CBufRet.f32 %6844, 1
  %6847 = extractvalue %dx.types.CBufRet.f32 %6844, 2
  %6848 = fadd fast float %6841, %6845
  %6849 = fadd fast float %6848, %6834
  %6850 = fadd fast float %6842, %6846
  %6851 = fadd fast float %6850, %6835
  %6852 = fadd fast float %6843, %6847
  %6853 = fadd fast float %6852, %6836
  %6854 = fmul fast float %6849, %6025
  %6855 = fmul fast float %6851, %6025
  %6856 = fmul fast float %6853, %6025
  %6857 = fmul fast float %6854, %6854
  %6858 = fmul fast float %6855, %6855
  %6859 = fadd fast float %6857, %6858
  %6860 = fmul fast float %6856, %6856
  %6861 = fadd fast float %6859, %6860
  %6862 = call float @dx.op.unary.f32(i32 24, float %6861)  ; Sqrt(value)
  %6863 = extractvalue %dx.types.CBufRet.f32 %5750, 0
  %6864 = fsub fast float %6862, %6863
  %6865 = extractvalue %dx.types.CBufRet.f32 %5750, 2
  %6866 = fmul fast float %6864, %6865
  %6867 = call float @dx.op.unary.f32(i32 7, float %6866)  ; Saturate(value)
  %6868 = fadd fast float %6867, -5.000000e-01
  %6869 = fmul fast float %6868, 2.000000e+00
  %6870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6871 = extractvalue %dx.types.CBufRet.f32 %6870, 2
  %6872 = call float @dx.op.binary.f32(i32 36, float %6871, float %6869)  ; FMin(a,b)
  %6873 = fsub fast float -0.000000e+00, %6871
  %6874 = fcmp fast ogt float %6872, %6873
  br i1 %6874, label %6875, label %7187, !dx.controlflow.hints !172

; <label>:6875                                    ; preds = %6820
  %6876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6877 = extractvalue %dx.types.CBufRet.f32 %6876, 3
  %6878 = fcmp fast ogt float %6877, 0.000000e+00
  br i1 %6878, label %6879, label %6954, !dx.controlflow.hints !173

; <label>:6879                                    ; preds = %6875
  %6880 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %6881 = extractvalue %dx.types.Dimensions %6880, 0
  %6882 = sitofp i32 %6881 to float
  %6883 = extractvalue %dx.types.Dimensions %6880, 1
  %6884 = sitofp i32 %6883 to float
  %6885 = fmul fast float %6824, %6882
  %6886 = fmul fast float %6825, %6884
  %6887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6888 = extractvalue %dx.types.CBufRet.f32 %6887, 1
  %6889 = fsub fast float -0.000000e+00, %6888
  %6890 = fptoui float %6889 to i32
  %6891 = fptoui float %6885 to i32
  %6892 = fptoui float %6886 to i32
  %6893 = and i32 %6890, 31
  %6894 = lshr i32 %6891, %6893
  %6895 = lshr i32 %6892, %6893
  %6896 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %6890, i32 %6894, i32 %6895, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6897 = extractvalue %dx.types.ResRet.f32 %6896, 0
  %6898 = fcmp fast olt float %6897, -1.000000e+00
  %6899 = fcmp fast ogt float %6897, -1.000000e+00
  %6900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6901 = extractvalue %dx.types.CBufRet.f32 %6900, 1
  %6902 = select i1 %6899, float %6901, float 1.000000e+00
  %6903 = fadd fast float %6897, 1.000000e+00
  %6904 = fmul fast float %6902, %6903
  %6905 = call float @dx.op.unary.f32(i32 6, float %6904)  ; FAbs(value)
  %6906 = extractvalue %dx.types.CBufRet.f32 %6900, 3
  %6907 = fcmp fast oge float %6905, %6906
  %6908 = select i1 %6907, float 0x4197782600000000, float %6905
  %6909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %6910 = extractvalue %dx.types.CBufRet.f32 %6909, 0
  %6911 = extractvalue %dx.types.CBufRet.f32 %6909, 1
  %6912 = extractvalue %dx.types.CBufRet.f32 %6909, 2
  %6913 = select i1 %6898, float %6910, float %6831
  %6914 = select i1 %6898, float %6911, float %6832
  %6915 = select i1 %6898, float %6912, float %6833
  %6916 = fmul fast float %6913, %6828
  %6917 = fmul fast float %6914, %6828
  %6918 = fmul fast float %6915, %6828
  %6919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %6920 = extractvalue %dx.types.CBufRet.f32 %6919, 0
  %6921 = extractvalue %dx.types.CBufRet.f32 %6919, 1
  %6922 = extractvalue %dx.types.CBufRet.f32 %6919, 2
  %6923 = select i1 %6898, float %6920, float %6838
  %6924 = select i1 %6898, float %6921, float %6839
  %6925 = select i1 %6898, float %6922, float %6840
  %6926 = fmul fast float %6923, %6829
  %6927 = fmul fast float %6924, %6829
  %6928 = fmul fast float %6925, %6829
  %6929 = fadd fast float %6926, %6916
  %6930 = fadd fast float %6927, %6917
  %6931 = fadd fast float %6928, %6918
  %6932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %6933 = extractvalue %dx.types.CBufRet.f32 %6932, 0
  %6934 = extractvalue %dx.types.CBufRet.f32 %6932, 1
  %6935 = extractvalue %dx.types.CBufRet.f32 %6932, 2
  %6936 = select i1 %6898, float %6933, float %6845
  %6937 = select i1 %6898, float %6934, float %6846
  %6938 = select i1 %6898, float %6935, float %6847
  %6939 = fadd fast float %6929, %6936
  %6940 = fadd fast float %6930, %6937
  %6941 = fadd fast float %6931, %6938
  %6942 = fmul fast float %6939, %6908
  %6943 = fmul fast float %6940, %6908
  %6944 = fmul fast float %6941, %6908
  %6945 = fmul fast float %6942, %6942
  %6946 = fmul fast float %6943, %6943
  %6947 = fadd fast float %6945, %6946
  %6948 = fmul fast float %6944, %6944
  %6949 = fadd fast float %6947, %6948
  %6950 = call float @dx.op.unary.f32(i32 24, float %6949)  ; Sqrt(value)
  %6951 = fsub fast float %6950, %6863
  %6952 = fmul fast float %6951, %6865
  %6953 = call float @dx.op.unary.f32(i32 7, float %6952)  ; Saturate(value)
  br label %6954

; <label>:6954                                    ; preds = %6879, %6875
  %6955 = phi float [ %6953, %6879 ], [ 1.000000e+00, %6875 ]
  %6956 = fmul fast float %6872, 5.000000e-01
  %6957 = fadd fast float %6956, 5.000000e-01
  %6958 = call float @dx.op.unary.f32(i32 22, float %6957)  ; Frc(value)
  %6959 = call float @dx.op.unary.f32(i32 27, float %6958)  ; Round_ni(value)
  %6960 = call float @dx.op.unary.f32(i32 22, float %6958)  ; Frc(value)
  %6961 = fmul fast float %6960, 2.000000e+00
  %6962 = fadd fast float %6961, -1.000000e+00
  %6963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %6824, float %6825, float %6959, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6964 = extractvalue %dx.types.ResRet.f32 %6963, 0
  %6965 = extractvalue %dx.types.ResRet.f32 %6963, 1
  %6966 = extractvalue %dx.types.ResRet.f32 %6963, 2
  %6967 = extractvalue %dx.types.ResRet.f32 %6963, 3
  %6968 = fadd fast float %6964, -5.000000e-01
  %6969 = fadd fast float %6966, -5.000000e-01
  %6970 = fmul fast float %6968, 0xBFD5555560000000
  %6971 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6969, float %6970)  ; FMad(a,b,c)
  %6972 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6965, float 0.000000e+00)  ; FMad(a,b,c)
  %6973 = fadd fast float %6972, %6967
  %6974 = fmul fast float %6968, -7.500000e-01
  %6975 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6969, float %6974)  ; FMad(a,b,c)
  %6976 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6965, float 0.000000e+00)  ; FMad(a,b,c)
  %6977 = fadd fast float %6976, %6967
  %6978 = call float @dx.op.binary.f32(i32 35, float %6971, float -1.000000e+00)  ; FMax(a,b)
  %6979 = call float @dx.op.binary.f32(i32 35, float %6973, float -1.000000e+00)  ; FMax(a,b)
  %6980 = call float @dx.op.binary.f32(i32 35, float %6975, float -1.000000e+00)  ; FMax(a,b)
  %6981 = call float @dx.op.binary.f32(i32 35, float %6977, float -1.000000e+00)  ; FMax(a,b)
  %6982 = call float @dx.op.binary.f32(i32 36, float %6978, float 1.000000e+00)  ; FMin(a,b)
  %6983 = call float @dx.op.binary.f32(i32 36, float %6979, float 1.000000e+00)  ; FMin(a,b)
  %6984 = call float @dx.op.binary.f32(i32 36, float %6980, float 1.000000e+00)  ; FMin(a,b)
  %6985 = call float @dx.op.binary.f32(i32 36, float %6981, float 1.000000e+00)  ; FMin(a,b)
  %6986 = fcmp fast olt float %6982, 0x3FEFFF8020000000
  br i1 %6986, label %6987, label %7102, !dx.controlflow.hints !174

; <label>:6987                                    ; preds = %6954
  %6988 = extractvalue %dx.types.CBufRet.f32 %6870, 3
  %6989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %6990 = extractvalue %dx.types.CBufRet.f32 %6989, 0
  %6991 = extractvalue %dx.types.CBufRet.f32 %6989, 1
  %6992 = extractvalue %dx.types.CBufRet.f32 %6989, 2
  %6993 = extractvalue %dx.types.CBufRet.f32 %6989, 3
  %6994 = fsub fast float %6990, %6982
  %6995 = fsub fast float %6991, %6983
  %6996 = fsub fast float %6992, %6984
  %6997 = fsub fast float %6993, %6985
  %6998 = fmul fast float %6994, %6988
  %6999 = fmul fast float %6995, %6988
  %7000 = fmul fast float %6996, %6988
  %7001 = fmul fast float %6997, %6988
  %7002 = fadd fast float %6998, %6982
  %7003 = fadd fast float %6999, %6983
  %7004 = fsub fast float -0.000000e+00, %7003
  %7005 = fadd fast float %7000, %6984
  %7006 = fadd fast float %7001, %6985
  %7007 = fmul fast float %7002, %7002
  %7008 = fsub fast float %7003, %7007
  %7009 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7008)  ; FMax(a,b)
  %7010 = fdiv fast float 1.000000e+00, %7009
  %7011 = fmul fast float %7003, %7002
  %7012 = fsub fast float %7005, %7011
  %7013 = fsub fast float %6962, %7002
  %7014 = fmul fast float %6962, %6962
  %7015 = fsub fast float %7014, %7003
  %7016 = fmul fast float %7013, %7010
  %7017 = fmul fast float %7016, %7012
  %7018 = fsub fast float %7015, %7017
  %7019 = fmul fast float %7003, %7003
  %7020 = fsub fast float %7006, %7019
  %7021 = fmul fast float %7012, %7012
  %7022 = fmul fast float %7021, %7010
  %7023 = fsub fast float %7020, %7022
  %7024 = fdiv fast float %7018, %7023
  %7025 = fmul fast float %7012, %7024
  %7026 = fsub fast float %7013, %7025
  %7027 = fmul fast float %7026, %7010
  %7028 = fmul fast float %7027, %7002
  %7029 = fsub fast float 1.000000e+00, %7028
  %7030 = fmul fast float %7003, %7024
  %7031 = fsub fast float %7029, %7030
  %7032 = fmul fast float %7027, %7027
  %7033 = fmul fast float %7024, 4.000000e+00
  %7034 = fmul fast float %7033, %7031
  %7035 = fsub fast float %7032, %7034
  %7036 = call float @dx.op.unary.f32(i32 24, float %7035)  ; Sqrt(value)
  %7037 = fcmp fast oge float %7027, 0.000000e+00
  %7038 = fsub fast float -0.000000e+00, %7036
  %7039 = select i1 %7037, float %7038, float %7036
  %7040 = fsub fast float %7039, %7027
  %7041 = fdiv fast float %7040, %7024
  %7042 = fdiv fast float %7031, %7040
  %7043 = fmul fast float %7041, 5.000000e-01
  %7044 = fmul fast float %7042, 2.000000e+00
  %7045 = select i1 %7037, float %7043, float %7044
  %7046 = select i1 %7037, float %7044, float %7043
  %7047 = call float @dx.op.binary.f32(i32 35, float %7045, float %7046)  ; FMax(a,b)
  %7048 = call float @dx.op.binary.f32(i32 36, float %7045, float %7046)  ; FMin(a,b)
  %7049 = fcmp fast ogt float %6962, %7048
  br i1 %7049, label %7050, label %7060

; <label>:7050                                    ; preds = %6987
  %7051 = fsub fast float %6962, %7048
  %7052 = fsub fast float %7047, %7048
  %7053 = fmul fast float %7051, %7052
  %7054 = fmul fast float %7047, %6962
  %7055 = fadd fast float %7047, %6962
  %7056 = fmul fast float %7055, %7002
  %7057 = fadd fast float %7054, %7003
  %7058 = fsub fast float %7057, %7056
  %7059 = fdiv fast float %7058, %7053
  br label %7060

; <label>:7060                                    ; preds = %7050, %6987
  %7061 = phi float [ %7059, %7050 ], [ 0.000000e+00, %6987 ]
  %7062 = fcmp fast ogt float %6962, %7047
  %7063 = fsub fast float %6962, %7047
  br i1 %7062, label %7064, label %7074

; <label>:7064                                    ; preds = %7060
  %7065 = fsub fast float %7047, %7048
  %7066 = fmul fast float %7065, %7063
  %7067 = fmul fast float %7048, %6962
  %7068 = fadd fast float %7048, %6962
  %7069 = fmul fast float %7068, %7002
  %7070 = fsub fast float %7004, %7067
  %7071 = fadd fast float %7070, %7069
  %7072 = fdiv fast float %7071, %7066
  %7073 = fadd fast float %7072, %7061
  br label %7074

; <label>:7074                                    ; preds = %7064, %7060
  %7075 = phi float [ %7073, %7064 ], [ %7061, %7060 ]
  %7076 = fsub fast float %6962, %7048
  %7077 = fmul fast float %7076, %7063
  %7078 = fmul fast float %7048, %7047
  %7079 = fadd fast float %7048, %7047
  %7080 = fmul fast float %7079, %7002
  %7081 = fadd fast float %7078, %7003
  %7082 = fsub fast float %7081, %7080
  %7083 = fdiv fast float %7082, %7077
  %7084 = call float @dx.op.unary.f32(i32 7, float %7075)  ; Saturate(value)
  %7085 = fcmp fast oeq float %5751, 0.000000e+00
  %7086 = extractvalue %dx.types.CBufRet.f32 %6870, 0
  %7087 = fcmp fast oeq float %7086, 0.000000e+00
  %7088 = or i1 %7085, %7087
  %7089 = fmul fast float %7086, 2.000000e+00
  %7090 = fadd fast float %6871, %6872
  %7091 = fdiv fast float %7090, %7089
  %7092 = call float @dx.op.unary.f32(i32 7, float %7091)  ; Saturate(value)
  %7093 = fmul fast float %7092, 2.000000e+00
  %7094 = fsub fast float 3.000000e+00, %7093
  %7095 = fmul fast float %7092, %7092
  %7096 = fmul fast float %7095, %7094
  %7097 = select i1 %7088, float 1.000000e+00, float %7096
  %7098 = fmul fast float %7083, %5751
  %7099 = fadd fast float %7084, %7098
  %7100 = call float @dx.op.unary.f32(i32 7, float %7099)  ; Saturate(value)
  %7101 = fmul fast float %7097, %7100
  br label %7102

; <label>:7102                                    ; preds = %7074, %6954
  %7103 = phi float [ %7101, %7074 ], [ 0.000000e+00, %6954 ]
  %7104 = fsub fast float 1.000000e+00, %7103
  %7105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %6824, float %6825, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7106 = extractvalue %dx.types.ResRet.f32 %7105, 0
  %7107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7108 = extractvalue %dx.types.CBufRet.i32 %7107, 2
  %7109 = icmp eq i32 %7108, 0
  br i1 %7109, label %7115, label %7110

; <label>:7110                                    ; preds = %7102
  %7111 = call float @dx.op.unary.f32(i32 7, float %7103)  ; Saturate(value)
  %7112 = fadd fast float %7106, -1.000000e+00
  %7113 = fmul fast float %7111, %7112
  %7114 = fadd fast float %7113, 1.000000e+00
  br label %7115

; <label>:7115                                    ; preds = %7110, %7102
  %7116 = phi float [ %7114, %7110 ], [ %7104, %7102 ]
  br i1 %6878, label %7117, label %7135

; <label>:7117                                    ; preds = %7115
  %7118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7119 = extractvalue %dx.types.CBufRet.f32 %7118, 1
  %7120 = fsub fast float %6955, %7119
  %7121 = call float @dx.op.unary.f32(i32 7, float %7120)  ; Saturate(value)
  %7122 = fsub fast float %6955, %6877
  %7123 = call float @dx.op.unary.f32(i32 7, float %7122)  ; Saturate(value)
  %7124 = fsub fast float %7121, %7123
  %7125 = fsub fast float %6957, %7123
  %7126 = fdiv fast float %7125, %7124
  %7127 = call float @dx.op.unary.f32(i32 7, float %7126)  ; Saturate(value)
  %7128 = fmul fast float %7127, 2.000000e+00
  %7129 = fsub fast float 3.000000e+00, %7128
  %7130 = fsub fast float %7106, %7116
  %7131 = fmul fast float %7127, %7127
  %7132 = fmul fast float %7131, %7130
  %7133 = fmul fast float %7132, %7129
  %7134 = fadd fast float %7133, %7116
  br label %7135

; <label>:7135                                    ; preds = %7117, %7115
  %7136 = phi float [ %7134, %7117 ], [ %7116, %7115 ]
  %7137 = call float @dx.op.binary.f32(i32 35, float %7106, float %7136)  ; FMax(a,b)
  %7138 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7139 = extractvalue %dx.types.CBufRet.i32 %7138, 2
  %7140 = and i32 %7139, 1
  %7141 = icmp eq i32 %7140, 0
  %7142 = fcmp fast une float %7137, 1.000000e+00
  %7143 = and i1 %7142, %7141
  br i1 %7143, label %7144, label %7163

; <label>:7144                                    ; preds = %7135
  %7145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %6824, float %6825, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7146 = extractvalue %dx.types.ResRet.f32 %7145, 0
  %7147 = extractvalue %dx.types.ResRet.f32 %7145, 1
  %7148 = extractvalue %dx.types.ResRet.f32 %7145, 2
  %7149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7150 = extractvalue %dx.types.CBufRet.f32 %7149, 1
  %7151 = fmul fast float %7150, %7146
  %7152 = fmul fast float %7150, %7147
  %7153 = fmul fast float %7150, %7148
  %7154 = fcmp fast ogt float %7106, 0x3FEFFF2E40000000
  %7155 = fsub fast float 1.000000e+00, %7137
  %7156 = fsub fast float 1.000000e+00, %7106
  %7157 = fdiv fast float %7155, %7156
  %7158 = call float @dx.op.unary.f32(i32 7, float %7157)  ; Saturate(value)
  %7159 = select i1 %7154, float 0.000000e+00, float %7158
  %7160 = fmul fast float %7151, %7159
  %7161 = fmul fast float %7152, %7159
  %7162 = fmul fast float %7153, %7159
  br label %7163

; <label>:7163                                    ; preds = %7144, %7135
  %7164 = phi float [ 0.000000e+00, %7135 ], [ %7160, %7144 ]
  %7165 = phi float [ 0.000000e+00, %7135 ], [ %7161, %7144 ]
  %7166 = phi float [ 0.000000e+00, %7135 ], [ %7162, %7144 ]
  %7167 = fmul fast float %7164, %5735
  %7168 = fmul fast float %7165, %5737
  %7169 = fmul fast float %7166, %5739
  %7170 = fmul fast float %7137, %6799
  %7171 = call float @dx.op.dot3.f32(i32 55, float %7137, float %7137, float %7137, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7172 = call float @dx.op.dot3.f32(i32 55, float %7167, float %7168, float %7169, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7173 = select i1 %211, float %7171, float %7137
  %7174 = select i1 %211, float 1.000000e+00, float %7137
  %7175 = select i1 %211, float %7172, float %7167
  %7176 = select i1 %211, float 0.000000e+00, float %7168
  %7177 = select i1 %211, float 0.000000e+00, float %7169
  %7178 = fmul fast float %7173, %6811
  %7179 = fmul fast float %7173, %6812
  %7180 = fmul fast float %7174, %6813
  %7181 = fadd fast float %7178, %7175
  %7182 = fadd fast float %7179, %7176
  %7183 = fadd fast float %7177, %7180
  %7184 = fmul fast float %7173, %6814
  %7185 = fmul fast float %7173, %6815
  %7186 = fmul fast float %7174, %6816
  br label %7187

; <label>:7187                                    ; preds = %7163, %6820, %6789, %6021
  %7188 = phi float [ %6026, %6021 ], [ %6811, %6789 ], [ %7181, %7163 ], [ %6811, %6820 ]
  %7189 = phi float [ %6027, %6021 ], [ %6812, %6789 ], [ %7182, %7163 ], [ %6812, %6820 ]
  %7190 = phi float [ %6028, %6021 ], [ %6813, %6789 ], [ %7183, %7163 ], [ %6813, %6820 ]
  %7191 = phi float [ %6029, %6021 ], [ %6814, %6789 ], [ %7184, %7163 ], [ %6814, %6820 ]
  %7192 = phi float [ %6030, %6021 ], [ %6815, %6789 ], [ %7185, %7163 ], [ %6815, %6820 ]
  %7193 = phi float [ %6031, %6021 ], [ %6816, %6789 ], [ %7186, %7163 ], [ %6816, %6820 ]
  %7194 = phi float [ %6032, %6021 ], [ %6799, %6789 ], [ %7170, %7163 ], [ %6799, %6820 ]
  %7195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7196 = extractvalue %dx.types.CBufRet.f32 %7195, 2
  %7197 = extractvalue %dx.types.CBufRet.f32 %7195, 3
  %7198 = fmul fast float %7196, %94
  %7199 = fmul fast float %7197, %95
  %7200 = call float @dx.op.unary.f32(i32 7, float %7198)  ; Saturate(value)
  %7201 = call float @dx.op.unary.f32(i32 7, float %7199)  ; Saturate(value)
  %7202 = select i1 %5761, i32 2, i32 0
  %7203 = or i32 %7202, 1
  %7204 = uitofp i32 %7203 to float
  %7205 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7200, float %7201, float %7204, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7206 = extractvalue %dx.types.ResRet.f32 %7205, 0
  %7207 = extractvalue %dx.types.ResRet.f32 %7205, 1
  %7208 = extractvalue %dx.types.ResRet.f32 %7205, 2
  %7209 = extractvalue %dx.types.ResRet.f32 %7205, 3
  %7210 = add nuw nsw i32 %7202, 2
  %7211 = uitofp i32 %7210 to float
  %7212 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7200, float %7201, float %7211, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7213 = extractvalue %dx.types.ResRet.f32 %7212, 0
  %7214 = extractvalue %dx.types.ResRet.f32 %7212, 1
  %7215 = extractvalue %dx.types.ResRet.f32 %7212, 2
  %7216 = extractvalue %dx.types.ResRet.f32 %7212, 3
  %7217 = call float @dx.op.binary.f32(i32 35, float %7207, float %7208)  ; FMax(a,b)
  %7218 = call float @dx.op.binary.f32(i32 35, float %7206, float %7217)  ; FMax(a,b)
  %7219 = call float @dx.op.binary.f32(i32 35, float %7218, float %7209)  ; FMax(a,b)
  %7220 = call float @dx.op.binary.f32(i32 36, float %7214, float %7215)  ; FMin(a,b)
  %7221 = call float @dx.op.binary.f32(i32 36, float %7213, float %7220)  ; FMin(a,b)
  %7222 = call float @dx.op.binary.f32(i32 36, float %7221, float %7216)  ; FMin(a,b)
  %7223 = fmul fast float %7219, 2.550000e+02
  %7224 = fadd fast float %7223, 0x3F70101020000000
  %7225 = fptoui float %7224 to i32
  %7226 = fmul fast float %7222, 2.550000e+02
  %7227 = fadd fast float %7226, 0x3F70101020000000
  %7228 = fptoui float %7227 to i32
  %7229 = icmp ult i32 %7225, %7228
  br i1 %7229, label %7230, label %7399

; <label>:7230                                    ; preds = %7187
  %7231 = fcmp fast ogt float %81, 9.843750e-01
  %7232 = fadd fast float %6025, -4.000000e+00
  %7233 = select i1 %7231, float -4.000000e+00, float %7232
  %7234 = call float @dx.op.binary.f32(i32 35, float %7233, float 0.000000e+00)  ; FMax(a,b)
  %7235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7236 = extractvalue %dx.types.CBufRet.f32 %7235, 0
  %7237 = fadd fast float %7236, %7234
  %7238 = extractvalue %dx.types.CBufRet.f32 %7235, 2
  %7239 = fmul fast float %7237, %7238
  %7240 = call float @dx.op.unary.f32(i32 23, float %7239)  ; Log(value)
  %7241 = extractvalue %dx.types.CBufRet.f32 %7235, 3
  %7242 = fmul fast float %7241, %7240
  %7243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7244 = extractvalue %dx.types.CBufRet.f32 %7243, 2
  %7245 = fmul fast float %7242, %7244
  %7246 = call float @dx.op.unary.f32(i32 7, float %7245)  ; Saturate(value)
  %7247 = uitofp i32 %7225 to float
  %7248 = uitofp i32 %7228 to float
  %7249 = fadd fast float %7247, 5.000000e-01
  %7250 = fadd fast float %7248, 5.000000e-01
  %7251 = fmul fast float %7244, %7249
  %7252 = fmul fast float %7244, %7250
  %7253 = fadd fast float %7251, 0x3F0FFB4800000000
  %7254 = fadd fast float %7252, 0xBF0FFB4800000000
  %7255 = call float @dx.op.binary.f32(i32 35, float %7246, float %7253)  ; FMax(a,b)
  %7256 = call float @dx.op.binary.f32(i32 36, float %7255, float %7254)  ; FMin(a,b)
  %7257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7258 = extractvalue %dx.types.CBufRet.f32 %7257, 1
  %7259 = extractvalue %dx.types.CBufRet.f32 %7257, 2
  %7260 = extractvalue %dx.types.CBufRet.f32 %7257, 0
  %7261 = select i1 %5761, float %7260, float 0.000000e+00
  %7262 = fmul fast float %7258, %7256
  %7263 = fadd fast float %7261, %7262
  %7264 = fadd fast float %7261, %7259
  %7265 = fsub fast float %7258, %7259
  %7266 = fadd fast float %7265, %7261
  %7267 = call float @dx.op.binary.f32(i32 35, float %7263, float %7264)  ; FMax(a,b)
  %7268 = call float @dx.op.binary.f32(i32 36, float %7267, float %7266)  ; FMin(a,b)
  %7269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7200, float %7201, float %7268, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7270 = extractvalue %dx.types.ResRet.f32 %7269, 0
  %7271 = extractvalue %dx.types.ResRet.f32 %7269, 1
  %7272 = extractvalue %dx.types.ResRet.f32 %7269, 2
  %7273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7274 = extractvalue %dx.types.CBufRet.i32 %7273, 0
  %7275 = extractvalue %dx.types.CBufRet.i32 %7273, 1
  %7276 = uitofp i32 %7274 to float
  %7277 = uitofp i32 %7275 to float
  %7278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7279 = extractvalue %dx.types.CBufRet.f32 %7278, 0
  %7280 = extractvalue %dx.types.CBufRet.f32 %7278, 1
  %7281 = fmul fast float %7276, %7200
  %7282 = fmul fast float %7277, %7201
  %7283 = fadd fast float %7281, -5.000000e-01
  %7284 = fadd fast float %7282, -5.000000e-01
  %7285 = call float @dx.op.unary.f32(i32 22, float %7283)  ; Frc(value)
  %7286 = call float @dx.op.unary.f32(i32 22, float %7284)  ; Frc(value)
  %7287 = fmul fast float %7285, %7285
  %7288 = fmul fast float %7287, %7285
  %7289 = fsub fast float 3.000000e+00, %7285
  %7290 = fmul fast float %7287, %7289
  %7291 = fmul fast float %7285, 3.000000e+00
  %7292 = fmul fast float %7288, 3.000000e+00
  %7293 = fmul fast float %7287, 6.000000e+00
  %7294 = fsub fast float %7292, %7293
  %7295 = fadd fast float %7294, 4.000000e+00
  %7296 = fmul fast float %7295, 0x3FC5555560000000
  %7297 = fmul fast float %7288, -3.000000e+00
  %7298 = fadd fast float %7287, %7285
  %7299 = fmul fast float %7298, 3.000000e+00
  %7300 = fadd fast float %7297, 1.000000e+00
  %7301 = fadd fast float %7300, %7299
  %7302 = fmul fast float %7288, 0x3FC5555560000000
  %7303 = fmul fast float %7286, %7286
  %7304 = fmul fast float %7303, %7286
  %7305 = fsub fast float 3.000000e+00, %7286
  %7306 = fmul fast float %7303, %7305
  %7307 = fmul fast float %7286, 3.000000e+00
  %7308 = fmul fast float %7304, 3.000000e+00
  %7309 = fmul fast float %7303, 6.000000e+00
  %7310 = fsub fast float %7308, %7309
  %7311 = fadd fast float %7310, 4.000000e+00
  %7312 = fmul fast float %7311, 0x3FC5555560000000
  %7313 = fmul fast float %7304, -3.000000e+00
  %7314 = fadd fast float %7303, %7286
  %7315 = fmul fast float %7314, 3.000000e+00
  %7316 = fadd fast float %7313, 1.000000e+00
  %7317 = fadd fast float %7316, %7315
  %7318 = fmul fast float %7304, 0x3FC5555560000000
  %7319 = fadd fast float %7285, 1.000000e+00
  %7320 = fsub fast float 1.000000e+00, %7291
  %7321 = fadd fast float %7320, %7290
  %7322 = fadd fast float %7321, %7295
  %7323 = fmul fast float %7322, 0x3FC5555560000000
  %7324 = fdiv fast float %7296, %7323
  %7325 = fsub fast float %7319, %7324
  %7326 = fsub fast float 1.000000e+00, %7285
  %7327 = fadd fast float %7301, %7288
  %7328 = fmul fast float %7327, 0x3FC5555560000000
  %7329 = fdiv fast float %7302, %7328
  %7330 = fadd fast float %7326, %7329
  %7331 = fadd fast float %7286, 1.000000e+00
  %7332 = fsub fast float 1.000000e+00, %7307
  %7333 = fadd fast float %7332, %7306
  %7334 = fadd fast float %7333, %7311
  %7335 = fmul fast float %7334, 0x3FC5555560000000
  %7336 = fdiv fast float %7312, %7335
  %7337 = fsub fast float %7331, %7336
  %7338 = fsub fast float 1.000000e+00, %7286
  %7339 = fadd fast float %7317, %7304
  %7340 = fmul fast float %7339, 0x3FC5555560000000
  %7341 = fdiv fast float %7318, %7340
  %7342 = fadd fast float %7341, %7338
  %7343 = fmul fast float %7325, %7279
  %7344 = fsub fast float %7200, %7343
  %7345 = fmul fast float %7330, %7279
  %7346 = fadd fast float %7345, %7200
  %7347 = fmul fast float %7342, %7280
  %7348 = fadd fast float %7347, %7201
  %7349 = fmul fast float %7337, %7280
  %7350 = fsub fast float %7201, %7349
  %7351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7344, float %7350, float %7268, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7352 = extractvalue %dx.types.ResRet.f32 %7351, 0
  %7353 = extractvalue %dx.types.ResRet.f32 %7351, 1
  %7354 = extractvalue %dx.types.ResRet.f32 %7351, 2
  %7355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7346, float %7350, float %7268, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7356 = extractvalue %dx.types.ResRet.f32 %7355, 0
  %7357 = extractvalue %dx.types.ResRet.f32 %7355, 1
  %7358 = extractvalue %dx.types.ResRet.f32 %7355, 2
  %7359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7344, float %7348, float %7268, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7360 = extractvalue %dx.types.ResRet.f32 %7359, 0
  %7361 = extractvalue %dx.types.ResRet.f32 %7359, 1
  %7362 = extractvalue %dx.types.ResRet.f32 %7359, 2
  %7363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %7346, float %7348, float %7268, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7364 = extractvalue %dx.types.ResRet.f32 %7363, 0
  %7365 = extractvalue %dx.types.ResRet.f32 %7363, 1
  %7366 = extractvalue %dx.types.ResRet.f32 %7363, 2
  %7367 = fsub fast float %7360, %7352
  %7368 = fsub fast float %7361, %7353
  %7369 = fsub fast float %7362, %7354
  %7370 = fmul fast float %7367, %7340
  %7371 = fmul fast float %7368, %7340
  %7372 = fmul fast float %7369, %7340
  %7373 = fadd fast float %7370, %7352
  %7374 = fadd fast float %7371, %7353
  %7375 = fadd fast float %7372, %7354
  %7376 = fsub fast float %7364, %7356
  %7377 = fsub fast float %7365, %7357
  %7378 = fsub fast float %7366, %7358
  %7379 = fmul fast float %7376, %7340
  %7380 = fmul fast float %7377, %7340
  %7381 = fmul fast float %7378, %7340
  %7382 = fsub fast float %7356, %7373
  %7383 = fadd fast float %7382, %7379
  %7384 = fsub fast float %7357, %7374
  %7385 = fadd fast float %7384, %7380
  %7386 = fsub fast float %7358, %7375
  %7387 = fadd fast float %7386, %7381
  %7388 = fmul fast float %7383, %7328
  %7389 = fmul fast float %7385, %7328
  %7390 = fmul fast float %7387, %7328
  %7391 = fadd fast float %7388, %7373
  %7392 = fadd fast float %7389, %7374
  %7393 = fadd fast float %7390, %7375
  %7394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7395 = extractvalue %dx.types.CBufRet.f32 %7394, 1
  %7396 = fmul fast float %7391, %7395
  %7397 = fmul fast float %7392, %7395
  %7398 = fmul fast float %7393, %7395
  br label %7399

; <label>:7399                                    ; preds = %7230, %7187
  %7400 = phi float [ %7270, %7230 ], [ 1.000000e+00, %7187 ]
  %7401 = phi float [ %7271, %7230 ], [ 1.000000e+00, %7187 ]
  %7402 = phi float [ %7272, %7230 ], [ 1.000000e+00, %7187 ]
  %7403 = phi float [ %7396, %7230 ], [ 0.000000e+00, %7187 ]
  %7404 = phi float [ %7397, %7230 ], [ 0.000000e+00, %7187 ]
  %7405 = phi float [ %7398, %7230 ], [ 0.000000e+00, %7187 ]
  %7406 = fmul fast float %7403, %5735
  %7407 = fmul fast float %7404, %5737
  %7408 = fmul fast float %7405, %5739
  %7409 = fmul fast float %7400, %7194
  %7410 = call float @dx.op.dot3.f32(i32 55, float %7400, float %7401, float %7402, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7411 = call float @dx.op.dot3.f32(i32 55, float %7406, float %7407, float %7408, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7412 = select i1 %211, float %7410, float %7400
  %7413 = select i1 %211, float %7410, float %7401
  %7414 = select i1 %211, float 1.000000e+00, float %7402
  %7415 = select i1 %211, float %7411, float %7406
  %7416 = select i1 %211, float 0.000000e+00, float %7407
  %7417 = select i1 %211, float 0.000000e+00, float %7408
  %7418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7419 = extractvalue %dx.types.CBufRet.i32 %7418, 3
  %7420 = and i32 %7419, 3
  %7421 = icmp ne i32 %7420, 0
  %7422 = and i32 %7419, 4
  %7423 = icmp ne i32 %7422, 0
  %7424 = and i1 %7421, %7423
  %7425 = and i1 %211, %7424
  br i1 %7425, label %7426, label %7432

; <label>:7426                                    ; preds = %7399
  %7427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7428 = extractvalue %dx.types.CBufRet.f32 %7427, 1
  %7429 = fadd fast float %7409, -1.000000e+00
  %7430 = fmul fast float %7428, %7429
  %7431 = fadd fast float %7430, 1.000000e+00
  br label %7432

; <label>:7432                                    ; preds = %7426, %7399
  %7433 = phi float [ %7431, %7426 ], [ %7409, %7399 ]
  %7434 = fadd fast float %7191, %7188
  %7435 = fmul fast float %7412, %7434
  %7436 = fadd fast float %7435, %7415
  %7437 = fadd fast float %7192, %7189
  %7438 = fmul fast float %7413, %7437
  %7439 = fadd fast float %7438, %7416
  %7440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7441 = extractvalue %dx.types.CBufRet.f32 %7440, 0
  br i1 %211, label %7442, label %7457

; <label>:7442                                    ; preds = %7432
  %7443 = fadd fast float %7436, %7439
  %7444 = fmul fast float %7441, %7443
  %7445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7446 = extractvalue %dx.types.CBufRet.f32 %7445, 3
  %7447 = extractvalue %dx.types.CBufRet.f32 %5743, 1
  %7448 = fsub fast float %5748, %5742
  %7449 = fadd fast float %7448, %5749
  %7450 = fsub fast float %7449, %7447
  %7451 = extractvalue %dx.types.CBufRet.f32 %5743, 2
  %7452 = fmul fast float %7450, %7451
  %7453 = call float @dx.op.unary.f32(i32 7, float %7452)  ; Saturate(value)
  %7454 = fsub fast float %7453, %7446
  %7455 = fmul fast float %7454, %7433
  %7456 = fadd fast float %7455, %7446
  br label %7482

; <label>:7457                                    ; preds = %7432
  %7458 = fadd fast float %7193, %7190
  %7459 = fmul fast float %7414, %7458
  %7460 = fadd fast float %7459, %7417
  %7461 = fmul fast float %7441, %7436
  %7462 = fmul fast float %7441, %7439
  %7463 = fmul fast float %7441, %7460
  %7464 = call float @dx.op.binary.f32(i32 35, float %7462, float %7463)  ; FMax(a,b)
  %7465 = call float @dx.op.binary.f32(i32 35, float %7461, float %7464)  ; FMax(a,b)
  %7466 = call float @dx.op.binary.f32(i32 35, float %5737, float %5739)  ; FMax(a,b)
  %7467 = call float @dx.op.binary.f32(i32 35, float %5735, float %7466)  ; FMax(a,b)
  %7468 = call float @dx.op.binary.f32(i32 35, float %7465, float %7467)  ; FMax(a,b)
  %7469 = fcmp fast ugt float %7468, 0x3F10000000000000
  br i1 %7469, label %7471, label %7470

; <label>:7470                                    ; preds = %7457
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7471

; <label>:7471                                    ; preds = %7470, %7457
  %7472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %7473 = extractvalue %dx.types.ResRet.i32 %7472, 0
  %7474 = and i32 %7473, 32
  %7475 = icmp eq i32 %7474, 0
  br i1 %7475, label %7482, label %7476

; <label>:7476                                    ; preds = %7471
  %7477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7478 = extractvalue %dx.types.CBufRet.f32 %7477, 0
  %7479 = fmul fast float %7478, 0x3FE99999A0000000
  %7480 = fadd fast float %7478, %7461
  %7481 = fadd fast float %7479, %7463
  br label %7482

; <label>:7482                                    ; preds = %7476, %7471, %7442
  %7483 = phi float [ 1.000000e+00, %7442 ], [ %5737, %7476 ], [ %5737, %7471 ]
  %7484 = phi float [ 1.000000e+00, %7442 ], [ %5739, %7476 ], [ %5739, %7471 ]
  %7485 = phi float [ %7444, %7442 ], [ %7480, %7476 ], [ %7461, %7471 ]
  %7486 = phi float [ %7456, %7442 ], [ %7462, %7476 ], [ %7462, %7471 ]
  %7487 = phi float [ 1.000000e+00, %7442 ], [ %7481, %7476 ], [ %7463, %7471 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7488 = call float @dx.op.binary.f32(i32 36, float %7485, float 3.225500e+04)  ; FMin(a,b)
  %7489 = call float @dx.op.binary.f32(i32 36, float %7486, float 3.225500e+04)  ; FMin(a,b)
  %7490 = call float @dx.op.binary.f32(i32 36, float %7487, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7488)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7489)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7490)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7491 = call float @dx.op.binary.f32(i32 36, float %5735, float 3.225500e+04)  ; FMin(a,b)
  %7492 = call float @dx.op.binary.f32(i32 36, float %7483, float 3.225500e+04)  ; FMin(a,b)
  %7493 = call float @dx.op.binary.f32(i32 36, float %7484, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %7491)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %7492)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %7493)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

