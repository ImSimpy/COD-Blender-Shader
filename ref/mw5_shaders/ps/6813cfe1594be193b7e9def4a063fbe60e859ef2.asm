;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          8     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        9     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x zw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 4e747322cd98babaa513fb81c981888d
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
; COLOR                    0                 linear       
; TEXCOORDS                0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
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
;                                   texture     f32          3d      T2      t0,space7unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture    byte         r/o      T5      t3,space1     1
;                                   texture    byte         r/o      T6      t4,space1     1
;                                   texture    byte         r/o      T7      t5,space1     1
;                                   texture    byte         r/o      T8      t6,space1     1
;                                   texture     f32          2d      T9     t69,space2     1
;                                   texture    byte         r/o     T10     t49,space1     1
;                                   texture    byte         r/o     T11     t50,space1     1
;                                   texture    byte         r/o     T12     t51,space1     1
;                                   texture    byte         r/o     T13     t52,space1     1
;                                   texture    byte         r/o     T14     t16,space1     1
;                                   texture    byte         r/o     T15     t17,space1     1
;                                   texture     f32          2d     T16     t37,space2     1
;                                   texture     f32          2d     T17             t0     1
;                                   texture     f32          2d     T18     t58,space2     1
;                                   texture     f32          2d     T19     t57,space2     1
;                                   texture    byte         r/o     T20     t69,space1     1
;                                   texture     u32          2d     T21     t56,space2     1
;                                   texture     f32     2darray     T22     t35,space2     1
;                                   texture     f32          2d     T23     t34,space2     1
;                                   texture     f32          3d     T24     t31,space2     1
;                                   texture     f32          2d     T25      t2,space2     1
;                                   texture     f32          2d     T26      t3,space2     1
;                                   texture     f32          2d     T27      t4,space2     1
;                                   textureunorm_f32     2darray     T28     t80,space2     1
;                                   texture    byte         r/o     T29     t67,space1     1
;                                   texture     f32          2d     T30      t7,space2     1
;                                   texture     f32          2d     T31      t6,space2     1
;                                   texture     f32          2d     T32      t5,space2     1
;                                   texture     f32          2d     T33     t38,space2     1
;                                   texture     f32          1d     T34     t30,space2     1
;                                   texture     f32          3d     T35     t44,space2     1
;                                   texture     f32          3d     T36     t45,space2     1
;                                   texture     f32     2darray     T37     t47,space2     1
;                                   textureunorm_f32     2darray     T38     t85,space2     1
;                                   texture     f32          2d     T39     t83,space2     1
;                                   texture     f32          2d     T40     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 44, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = alloca [4 x i32], align 4
  %48 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = alloca [12 x float], align 4
  %87 = alloca [12 x float], align 4
  %88 = alloca [4 x float], align 4
  %89 = alloca [4 x float], align 4
  %90 = alloca [4 x float], align 4
  %91 = alloca [3 x float], align 4
  %92 = alloca [3 x float], align 4
  %93 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %94 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = fmul fast float %96, %82
  %98 = fmul fast float %96, %83
  %99 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %100 = bitcast float %99 to i32
  %101 = ashr i32 %100, 1
  %102 = sub nsw i32 1597250115, %101
  %103 = bitcast i32 %102 to float
  %104 = fmul fast float %103, %73
  %105 = fmul fast float %103, %74
  %106 = fmul fast float %103, %75
  %107 = fmul fast float %74, %71
  %108 = fmul fast float %75, %70
  %109 = fsub fast float %107, %108
  %110 = fmul fast float %75, %69
  %111 = fmul fast float %73, %71
  %112 = fsub fast float %110, %111
  %113 = fmul fast float %73, %70
  %114 = fmul fast float %74, %69
  %115 = fsub fast float %113, %114
  %116 = fmul fast float %109, %72
  %117 = fmul fast float %112, %72
  %118 = fmul fast float %115, %72
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 3
  %122 = fmul fast float %97, 2.000000e+00
  %123 = fmul fast float %122, %120
  %124 = fmul fast float %98, 2.000000e+00
  %125 = fmul fast float %124, %121
  %126 = fsub fast float 1.000000e+00, %123
  %127 = fsub fast float 1.000000e+00, %125
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = fmul fast float %126, %129
  %133 = fmul fast float %126, %130
  %134 = fmul fast float %126, %131
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = fmul fast float %127, %136
  %140 = fmul fast float %127, %137
  %141 = fmul fast float %127, %138
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %145 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %146 = fadd fast float %139, %143
  %147 = fadd fast float %146, %132
  %148 = fadd fast float %140, %144
  %149 = fadd fast float %148, %133
  %150 = fadd fast float %141, %145
  %151 = fadd fast float %150, %134
  %152 = fmul fast float %147, %85
  %153 = fmul fast float %149, %85
  %154 = fmul fast float %151, %85
  %155 = fmul fast float %97, 5.000000e-01
  %156 = fmul fast float %98, 5.000000e-01
  %157 = fptosi float %155 to i32
  %158 = fptosi float %156 to i32
  %159 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %157, i32 %158, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %160 = extractvalue %dx.types.ResRet.i32 %159, 0
  %161 = lshr i32 %160, 18
  %162 = uitofp i32 %161 to float
  %163 = fmul fast float %162, 0x3F4C00EBA0000000
  %164 = call float @dx.op.unary.f32(i32 21, float %163)  ; Exp(value)
  %165 = fadd fast float %164, -1.000000e+00
  %166 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %20, i32 0)  ; GetDimensions(handle,mipLevel)
  %167 = extractvalue %dx.types.Dimensions %166, 0
  %168 = sitofp i32 %167 to float
  %169 = extractvalue %dx.types.Dimensions %166, 1
  %170 = sitofp i32 %169 to float
  %171 = fcmp fast oge float %155, %168
  %172 = fcmp fast oge float %156, %170
  %173 = or i1 %171, %172
  %174 = select i1 %173, float 0x4197782600000000, float %165
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 3
  %178 = fmul fast float %176, %97
  %179 = fmul fast float %177, %98
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = and i32 %181, 114688
  %183 = icmp ne i32 %182, 0
  %184 = select i1 %183, float %178, float 0.000000e+00
  %185 = select i1 %183, float %179, float 0.000000e+00
  %186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %43, float %184, float %185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = fmul fast float %187, 2.550000e+02
  %189 = fptoui float %188 to i32
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.i32 %191, 3
  %193 = and i32 %192, 3
  %194 = icmp ne i32 %193, 0
  %195 = and i32 %192, 4
  %196 = icmp ne i32 %195, 0
  %197 = and i1 %194, %196
  br i1 %197, label %198, label %209

; <label>:198                                     ; preds = %0
  %199 = extractvalue %dx.types.CBufRet.f32 %190, 3
  %200 = fmul fast float %199, %98
  %201 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %202 = fmul fast float %201, %97
  %203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %42, float %202, float %200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %204 = extractvalue %dx.types.ResRet.f32 %203, 0
  %205 = fsub fast float 1.000000e+00, %204
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 0
  %208 = fcmp fast olt float %205, %207
  br label %212

; <label>:209                                     ; preds = %0
  %210 = icmp eq i32 %195, 0
  %211 = and i1 %194, %210
  br label %212

; <label>:212                                     ; preds = %209, %198
  %213 = phi i1 [ %208, %198 ], [ %211, %209 ]
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %216 = fmul fast float %215, 0x3FE3C6EF40000000
  %217 = frem fast float %97, 2.560000e+02
  %218 = frem fast float %98, 2.560000e+02
  %219 = fptoui float %217 to i32
  %220 = fptoui float %218 to i32
  %221 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 0, i32 %219, i32 %220, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = fadd fast float %222, %216
  %224 = call float @dx.op.unary.f32(i32 22, float %223)  ; Frc(value)
  %225 = add i32 %48, 156
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = shl i32 %227, 4
  %229 = and i32 %228, 32752
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %227, 7
  %232 = and i32 %231, 32752
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = lshr i32 %227, 22
  %235 = shl nuw nsw i32 %234, 5
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = add i32 %48, 216
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = and i32 %239, 255
  %241 = uitofp i32 %240 to float
  %242 = fmul fast float %241, 0x3F70101020000000
  %243 = lshr i32 %239, 8
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F70101020000000
  %247 = lshr i32 %239, 16
  %248 = and i32 %247, 255
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %249, 0x3F70101020000000
  %251 = add i32 %48, 36
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = and i32 %253, 65535
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %253, 16
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = add i32 %48, 288
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = and i32 %260, 65535
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %260, 16
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = fmul fast float %262, 0x3F50624DE0000000
  %266 = fmul fast float %264, 0x3F50624DE0000000
  %267 = add i32 %48, 172
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = shl i32 %269, 4
  %271 = and i32 %270, 32752
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %269, 7
  %274 = and i32 %273, 32752
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = lshr i32 %269, 22
  %277 = shl nuw nsw i32 %276, 5
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = add i32 %48, 232
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = and i32 %281, 255
  %283 = uitofp i32 %282 to float
  %284 = fmul fast float %283, 0x3F70101020000000
  %285 = lshr i32 %281, 8
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = lshr i32 %281, 16
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = add i32 %48, 52
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 65535
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %295, 16
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = add i32 %48, 304
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 65535
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %302, 16
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = fmul fast float %304, 0x3F50624DE0000000
  %308 = fmul fast float %306, 0x3F50624DE0000000
  %309 = add i32 %48, 188
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = shl i32 %311, 4
  %313 = and i32 %312, 32752
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %311, 7
  %316 = and i32 %315, 32752
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %311, 22
  %319 = shl nuw nsw i32 %318, 5
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = add i32 %48, 248
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = and i32 %323, 255
  %325 = uitofp i32 %324 to float
  %326 = fmul fast float %325, 0x3F70101020000000
  %327 = lshr i32 %323, 8
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = lshr i32 %323, 16
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = add i32 %48, 68
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 65535
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %337, 16
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = add i32 %48, 320
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 65535
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %344, 16
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = fmul fast float %346, 0x3F50624DE0000000
  %350 = fmul fast float %348, 0x3F50624DE0000000
  %351 = add i32 %48, 204
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = shl i32 %353, 4
  %355 = and i32 %354, 32752
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %353, 7
  %358 = and i32 %357, 32752
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %353, 22
  %361 = shl nuw nsw i32 %360, 5
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = add i32 %48, 264
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = and i32 %365, 255
  %367 = uitofp i32 %366 to float
  %368 = fmul fast float %367, 0x3F70101020000000
  %369 = lshr i32 %365, 8
  %370 = and i32 %369, 255
  %371 = uitofp i32 %370 to float
  %372 = fmul fast float %371, 0x3F70101020000000
  %373 = lshr i32 %365, 16
  %374 = and i32 %373, 255
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = add i32 %48, 84
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 65535
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = lshr i32 %379, 16
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = add i32 %48, 336
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = and i32 %386, 65535
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %386, 16
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = fmul fast float %388, 0x3F50624DE0000000
  %392 = fmul fast float %390, 0x3F50624DE0000000
  %393 = add i32 %48, 348
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = and i32 %395, 32
  %397 = icmp eq i32 %396, 0
  %398 = and i32 %395, 64
  %399 = icmp eq i32 %398, 0
  %400 = and i32 %395, 128
  %401 = icmp eq i32 %400, 0
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = and i32 %403, 2
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %421, label %406

; <label>:406                                     ; preds = %212
  %407 = add i32 %48, 488
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = add i32 %409, 0
  %411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %410, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %412 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %411, %dx.types.Handle %94, float %76, float %77, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  %414 = extractvalue %dx.types.ResRet.f32 %412, 1
  %415 = extractvalue %dx.types.ResRet.f32 %412, 2
  %416 = extractvalue %dx.types.ResRet.f32 %412, 3
  %417 = fmul fast float %416, %78
  %418 = fmul fast float %413, %79
  %419 = fmul fast float %414, %80
  %420 = fmul fast float %415, %81
  br label %421

; <label>:421                                     ; preds = %406, %212
  %422 = phi float [ %81, %212 ], [ %420, %406 ]
  %423 = phi float [ %80, %212 ], [ %419, %406 ]
  %424 = phi float [ %79, %212 ], [ %418, %406 ]
  %425 = phi float [ %78, %212 ], [ %417, %406 ]
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = and i32 %427, 2
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %449, label %430

; <label>:430                                     ; preds = %421
  %431 = add i32 %48, 44
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = and i32 %433, 1
  %435 = icmp ne i32 %434, 0
  %436 = select i1 %435, float %424, float 1.000000e+00
  %437 = add i32 %48, 60
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = and i32 %439, 1
  %441 = icmp ne i32 %440, 0
  %442 = select i1 %441, float %423, float 1.000000e+00
  %443 = add i32 %48, 76
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %445, 1
  %447 = icmp ne i32 %446, 0
  %448 = select i1 %447, float %422, float 1.000000e+00
  br label %449

; <label>:449                                     ; preds = %430, %421
  %450 = phi float [ %422, %421 ], [ %448, %430 ]
  %451 = phi float [ %423, %421 ], [ %442, %430 ]
  %452 = phi float [ %424, %421 ], [ %436, %430 ]
  %453 = lshr i32 %427, 20
  %454 = and i32 %453, 3
  %455 = add nuw nsw i32 %454, 1
  %456 = add i32 %48, 24
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = add i32 %48, 28
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = or i32 %461, %458
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %1224, label %464

; <label>:464                                     ; preds = %449
  %465 = and i32 %458, 262144
  %466 = icmp ne i32 %465, 0
  %467 = select i1 %466, float %51, float 1.000000e+00
  %468 = select i1 %466, float %52, float 0.000000e+00
  %469 = select i1 %466, float %53, float 0.000000e+00
  %470 = select i1 %466, float %54, float 1.000000e+00
  %471 = select i1 %466, float %55, float %76
  %472 = select i1 %466, float %56, float %77
  %473 = add i32 %48, 284
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = lshr i32 %475, 16
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = fmul fast float %477, 0x3F50624DE0000000
  %479 = add i32 %48, 88
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = lshr i32 %481, 16
  %483 = and i32 %482, 255
  %484 = lshr i32 %481, 24
  %485 = add i32 %48, 292
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = and i32 %487, 65535
  %489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %488)  ; LegacyF16ToF32(value)
  %490 = lshr i32 %487, 16
  %491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %490)  ; LegacyF16ToF32(value)
  %492 = add i32 %48, 32
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = lshr i32 %494, 22
  %496 = shl nuw nsw i32 %495, 5
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = shl i32 %494, 4
  %499 = and i32 %498, 32752
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = lshr i32 %494, 7
  %502 = and i32 %501, 32752
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %505 = extractvalue %dx.types.CBufRet.f32 %504, 3
  %506 = fmul fast float %505, 1.000000e+03
  %507 = fmul fast float %265, %506
  %508 = call float @dx.op.unary.f32(i32 22, float %507)  ; Frc(value)
  %509 = fadd fast float %508, %255
  %510 = fmul fast float %266, %506
  %511 = call float @dx.op.unary.f32(i32 22, float %510)  ; Frc(value)
  %512 = fadd fast float %511, %257
  %513 = fmul fast float %478, %506
  %514 = call float @dx.op.unary.f32(i32 22, float %513)  ; Frc(value)
  %515 = fmul fast float %514, 0x401921FB60000000
  %516 = fadd fast float %515, %497
  %517 = call float @dx.op.unary.f32(i32 13, float %516)  ; Sin(value)
  %518 = call float @dx.op.unary.f32(i32 12, float %516)  ; Cos(value)
  %519 = fsub fast float -0.000000e+00, %517
  %520 = fadd fast float %471, -5.000000e-01
  %521 = fadd fast float %472, -5.000000e-01
  %522 = fmul fast float %489, %520
  %523 = fmul fast float %491, %521
  %524 = fadd fast float %522, 5.000000e-01
  %525 = fadd fast float %523, 5.000000e-01
  %526 = fmul fast float %500, %524
  %527 = fmul fast float %503, %525
  %528 = fmul fast float %518, %526
  %529 = call float @dx.op.tertiary.f32(i32 46, float %519, float %527, float %528)  ; FMad(a,b,c)
  %530 = fmul fast float %517, %526
  %531 = call float @dx.op.tertiary.f32(i32 46, float %518, float %527, float %530)  ; FMad(a,b,c)
  %532 = fadd fast float %509, %529
  %533 = fadd fast float %512, %531
  %534 = icmp ugt i32 %483, 1
  %535 = icmp ugt i32 %481, 33554431
  %536 = or i1 %535, %534
  br i1 %536, label %537, label %562

; <label>:537                                     ; preds = %464
  %538 = add i32 %48, 228
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = lshr i32 %540, 16
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = fmul fast float %505, %542
  %544 = call float @dx.op.unary.f32(i32 22, float %543)  ; Frc(value)
  %545 = mul nuw nsw i32 %483, %484
  %546 = uitofp i32 %545 to float
  %547 = fmul fast float %544, %546
  %548 = call float @dx.op.unary.f32(i32 27, float %547)  ; Round_ni(value)
  %549 = fptoui float %548 to i32
  %550 = urem i32 %549, %483
  %551 = udiv i32 %549, %484
  %552 = call float @dx.op.unary.f32(i32 22, float %532)  ; Frc(value)
  %553 = call float @dx.op.unary.f32(i32 22, float %533)  ; Frc(value)
  %554 = uitofp i32 %550 to float
  %555 = uitofp i32 %551 to float
  %556 = fadd fast float %552, %554
  %557 = fadd fast float %553, %555
  %558 = uitofp i32 %483 to float
  %559 = uitofp i32 %484 to float
  %560 = fdiv fast float %556, %558
  %561 = fdiv fast float %557, %559
  br label %562

; <label>:562                                     ; preds = %537, %464
  %563 = phi float [ %560, %537 ], [ %532, %464 ]
  %564 = phi float [ %561, %537 ], [ %533, %464 ]
  %565 = and i32 %458, 16777216
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %676, label %567

; <label>:567                                     ; preds = %562
  %568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.f32 %568, 0
  %570 = extractvalue %dx.types.CBufRet.f32 %568, 1
  %571 = extractvalue %dx.types.CBufRet.f32 %568, 2
  %572 = fadd fast float %569, %152
  %573 = fadd fast float %570, %153
  %574 = fadd fast float %571, %154
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 0
  %577 = call float @dx.op.unary.f32(i32 7, float %576)  ; Saturate(value)
  %578 = icmp eq i32 %49, 65535
  br i1 %578, label %673, label %579

; <label>:579                                     ; preds = %567
  %580 = lshr i32 %49, 1
  %581 = shl i32 %580, 2
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = and i32 %49, 1
  %585 = icmp ne i32 %584, 0
  %586 = lshr i32 %583, 16
  %587 = and i32 %583, 65535
  %588 = select i1 %585, i32 %586, i32 %587
  %589 = icmp eq i32 %588, 65535
  br i1 %589, label %669, label %590

; <label>:590                                     ; preds = %579
  %591 = mul nuw nsw i32 %588, 40
  %592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.f32 %592, 0
  %594 = extractvalue %dx.types.ResRet.f32 %592, 1
  %595 = extractvalue %dx.types.ResRet.f32 %592, 2
  %596 = add nuw nsw i32 %591, 12
  %597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = extractvalue %dx.types.ResRet.f32 %597, 1
  %600 = extractvalue %dx.types.ResRet.f32 %597, 2
  %601 = add nuw nsw i32 %591, 24
  %602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 0
  %604 = extractvalue %dx.types.ResRet.f32 %602, 1
  %605 = extractvalue %dx.types.ResRet.f32 %602, 2
  %606 = add nuw nsw i32 %591, 36
  %607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = fsub fast float %572, %593
  %610 = fsub fast float %573, %594
  %611 = fsub fast float %574, %595
  %612 = fmul fast float %608, %609
  %613 = fmul fast float %608, %610
  %614 = fmul fast float %608, %611
  %615 = call float @dx.op.unary.f32(i32 27, float %612)  ; Round_ni(value)
  %616 = call float @dx.op.unary.f32(i32 27, float %613)  ; Round_ni(value)
  %617 = call float @dx.op.unary.f32(i32 27, float %614)  ; Round_ni(value)
  %618 = fadd fast float %615, 5.000000e-01
  %619 = fadd fast float %616, 5.000000e-01
  %620 = fadd fast float %617, 5.000000e-01
  %621 = fmul fast float %618, %598
  %622 = fmul fast float %619, %599
  %623 = fmul fast float %620, %600
  %624 = shl i32 %49, 2
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = add i32 %626, 0
  %628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %627, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %629 = call float @dx.op.unary.f32(i32 22, float %621)  ; Frc(value)
  %630 = call float @dx.op.unary.f32(i32 22, float %622)  ; Frc(value)
  %631 = call float @dx.op.unary.f32(i32 22, float %623)  ; Frc(value)
  %632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %628, %dx.types.Handle %43, float %629, float %630, float %631, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %633 = extractvalue %dx.types.ResRet.f32 %632, 0
  %634 = extractvalue %dx.types.ResRet.f32 %632, 1
  %635 = extractvalue %dx.types.ResRet.f32 %632, 2
  %636 = fmul fast float %633, 1.023000e+03
  %637 = fmul fast float %634, 1.023000e+03
  %638 = fmul fast float %635, 1.023000e+03
  %639 = fadd fast float %636, 5.000000e-01
  %640 = fadd fast float %637, 5.000000e-01
  %641 = fadd fast float %638, 5.000000e-01
  %642 = call float @dx.op.unary.f32(i32 27, float %639)  ; Round_ni(value)
  %643 = call float @dx.op.unary.f32(i32 27, float %640)  ; Round_ni(value)
  %644 = call float @dx.op.unary.f32(i32 27, float %641)  ; Round_ni(value)
  %645 = fsub fast float %612, %615
  %646 = fsub fast float %613, %616
  %647 = fsub fast float %614, %617
  %648 = fmul fast float %645, 7.500000e-01
  %649 = fmul fast float %646, 7.500000e-01
  %650 = fmul fast float %647, 7.500000e-01
  %651 = fadd fast float %615, 1.250000e-01
  %652 = fadd fast float %651, %648
  %653 = fadd fast float %652, %642
  %654 = fadd fast float %616, 1.250000e-01
  %655 = fadd fast float %654, %649
  %656 = fadd fast float %655, %643
  %657 = fadd fast float %617, 1.250000e-01
  %658 = fadd fast float %657, %650
  %659 = fadd fast float %658, %644
  %660 = fmul fast float %653, %603
  %661 = fmul fast float %656, %604
  %662 = fmul fast float %659, %605
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = add i32 %664, 0
  %666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %665, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %666, %dx.types.Handle %41, float %660, float %661, float %662, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %668 = extractvalue %dx.types.ResRet.f32 %667, 0
  br label %669

; <label>:669                                     ; preds = %590, %579
  %670 = phi float [ %668, %590 ], [ -1.000000e+00, %579 ]
  %671 = fadd fast float %670, %577
  %672 = call float @dx.op.unary.f32(i32 7, float %671)  ; Saturate(value)
  br label %673

; <label>:673                                     ; preds = %669, %567
  %674 = phi float [ %672, %669 ], [ %577, %567 ]
  %675 = fmul fast float %674, %425
  br label %676

; <label>:676                                     ; preds = %673, %562
  %677 = phi float [ %675, %673 ], [ %425, %562 ]
  %678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = and i32 %679, 256
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %728, label %682

; <label>:682                                     ; preds = %676
  %683 = add i32 %48, 424
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = add i32 %685, 0
  %687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %686, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %688 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %687, %dx.types.Handle %94, float %563, float %564, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %689 = extractvalue %dx.types.ResRet.f32 %688, 0
  %690 = add i32 %48, 100
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = shl i32 %692, 4
  %694 = and i32 %693, 32752
  %695 = call float @dx.op.legacyF16ToF32(i32 131, i32 %694)  ; LegacyF16ToF32(value)
  %696 = lshr i32 %692, 7
  %697 = and i32 %696, 32752
  %698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %697)  ; LegacyF16ToF32(value)
  %699 = fsub fast float 1.000000e+00, %677
  %700 = call float @dx.op.binary.f32(i32 35, float %699, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %701 = bitcast float %677 to i32
  %702 = sitofp i32 %701 to float
  %703 = fadd fast float %702, 0xC1CFBF8940000000
  %704 = fmul fast float %698, %703
  %705 = fadd fast float %704, 0x41CFBF8940000000
  %706 = fptosi float %705 to i32
  %707 = bitcast i32 %706 to float
  %708 = bitcast float %700 to i32
  %709 = sitofp i32 %708 to float
  %710 = fadd fast float %709, 0xC1CFBF8940000000
  %711 = fmul fast float %710, %698
  %712 = fadd fast float %711, 0x41CFBF8940000000
  %713 = fptosi float %712 to i32
  %714 = bitcast i32 %713 to float
  %715 = fmul fast float %707, %695
  %716 = fmul fast float %714, %695
  %717 = fsub fast float %700, %715
  %718 = fadd fast float %716, %700
  %719 = call float @dx.op.unary.f32(i32 7, float %717)  ; Saturate(value)
  %720 = call float @dx.op.unary.f32(i32 7, float %718)  ; Saturate(value)
  %721 = fsub fast float %689, %719
  %722 = fsub fast float %720, %719
  %723 = bitcast float %722 to i32
  %724 = sub nsw i32 2129859010, %723
  %725 = bitcast i32 %724 to float
  %726 = fmul fast float %725, %721
  %727 = call float @dx.op.unary.f32(i32 7, float %726)  ; Saturate(value)
  br label %728

; <label>:728                                     ; preds = %682, %676
  %729 = phi float [ %727, %682 ], [ %677, %676 ]
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = and i32 %731, 128
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %750, label %734

; <label>:734                                     ; preds = %728
  %735 = add i32 %48, 408
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = add i32 %737, 0
  %739 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %738, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %740 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %739, %dx.types.Handle %94, float %563, float %564, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = and i32 %743, 524288
  %745 = icmp ne i32 %744, 0
  %746 = fcmp fast ogt float %741, 0x3FE0101020000000
  %747 = select i1 %746, float 1.000000e+00, float 0.000000e+00
  %748 = select i1 %745, float %747, float %741
  %749 = fmul fast float %748, %729
  br label %750

; <label>:750                                     ; preds = %734, %728
  %751 = phi float [ %749, %734 ], [ %729, %728 ]
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = and i32 %753, 16
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %954, label %756

; <label>:756                                     ; preds = %750
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = add i32 %48, 360
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %759, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = add i32 %761, 0
  %763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %762, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %764 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %763, %dx.types.Handle %93, float %563, float %564, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %765 = extractvalue %dx.types.ResRet.f32 %764, 0
  %766 = extractvalue %dx.types.ResRet.f32 %764, 1
  %767 = extractvalue %dx.types.ResRet.f32 %764, 2
  %768 = extractvalue %dx.types.ResRet.f32 %764, 3
  %769 = and i32 %758, 255
  %770 = uitofp i32 %769 to float
  %771 = lshr i32 %758, 8
  %772 = and i32 %771, 255
  %773 = uitofp i32 %772 to float
  %774 = fmul fast float %768, %770
  %775 = fadd fast float %774, %773
  %776 = fmul fast float %775, 0x3F70101000000000
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = and i32 %778, 512
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %789, label %781

; <label>:781                                     ; preds = %756
  %782 = add i32 %48, 440
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = add i32 %784, 0
  %786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %785, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %787 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %786, %dx.types.Handle %94, float %563, float %564, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %788 = extractvalue %dx.types.ResRet.f32 %787, 0
  br label %789

; <label>:789                                     ; preds = %781, %756
  %790 = phi float [ %788, %781 ], [ 1.000000e+00, %756 ]
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = and i32 %792, 33554432
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %901, label %795

; <label>:795                                     ; preds = %789
  %796 = add i32 %48, 224
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = and i32 %798, 65535
  %800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %799)  ; LegacyF16ToF32(value)
  %801 = lshr i32 %798, 16
  %802 = call float @dx.op.legacyF16ToF32(i32 131, i32 %801)  ; LegacyF16ToF32(value)
  %803 = add i32 %48, 228
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 65535
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = lshr i32 %809, 24
  %811 = uitofp i32 %810 to float
  %812 = fmul fast float %811, 0x3F70101020000000
  %813 = and i32 %809, 255
  %814 = uitofp i32 %813 to float
  %815 = fmul fast float %814, 0x3F70101020000000
  %816 = lshr i32 %809, 8
  %817 = and i32 %816, 255
  %818 = uitofp i32 %817 to float
  %819 = fmul fast float %818, 0x3F70101020000000
  %820 = lshr i32 %809, 16
  %821 = and i32 %820, 255
  %822 = uitofp i32 %821 to float
  %823 = fmul fast float %822, 0x3F70101020000000
  %824 = add i32 %48, 220
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %824, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = lshr i32 %826, 24
  %828 = uitofp i32 %827 to float
  %829 = fmul fast float %828, 0x3F70101020000000
  %830 = and i32 %826, 255
  %831 = uitofp i32 %830 to float
  %832 = fmul fast float %831, 0x3F70101020000000
  %833 = lshr i32 %826, 8
  %834 = and i32 %833, 255
  %835 = uitofp i32 %834 to float
  %836 = fmul fast float %835, 0x3F70101020000000
  %837 = lshr i32 %826, 16
  %838 = and i32 %837, 255
  %839 = uitofp i32 %838 to float
  %840 = fmul fast float %839, 0x3F70101020000000
  %841 = bitcast float %765 to i32
  %842 = ashr i32 %841, 1
  %843 = sub nsw i32 1597463174, %842
  %844 = bitcast i32 %843 to float
  %845 = fmul fast float %765, 5.000000e-01
  %846 = fmul fast float %844, %844
  %847 = fmul fast float %846, %845
  %848 = fsub fast float 1.500000e+00, %847
  %849 = fmul fast float %844, %765
  %850 = fmul fast float %849, %848
  %851 = bitcast float %766 to i32
  %852 = ashr i32 %851, 1
  %853 = sub nsw i32 1597463174, %852
  %854 = bitcast i32 %853 to float
  %855 = fmul fast float %766, 5.000000e-01
  %856 = fmul fast float %854, %854
  %857 = fmul fast float %856, %855
  %858 = fsub fast float 1.500000e+00, %857
  %859 = fmul fast float %854, %766
  %860 = fmul fast float %859, %858
  %861 = bitcast float %767 to i32
  %862 = ashr i32 %861, 1
  %863 = sub nsw i32 1597463174, %862
  %864 = bitcast i32 %863 to float
  %865 = fmul fast float %767, 5.000000e-01
  %866 = fmul fast float %864, %864
  %867 = fmul fast float %866, %865
  %868 = fsub fast float 1.500000e+00, %867
  %869 = fmul fast float %864, %767
  %870 = fmul fast float %869, %868
  %871 = fsub fast float %850, %832
  %872 = fsub fast float %860, %836
  %873 = fsub fast float %870, %840
  %874 = fmul fast float %871, %800
  %875 = fmul fast float %872, %802
  %876 = fmul fast float %873, %807
  %877 = fadd fast float %874, %815
  %878 = fadd fast float %875, %819
  %879 = fadd fast float %876, %823
  %880 = call float @dx.op.unary.f32(i32 7, float %877)  ; Saturate(value)
  %881 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  %882 = call float @dx.op.unary.f32(i32 7, float %879)  ; Saturate(value)
  %883 = fmul fast float %880, %880
  %884 = fmul fast float %881, %881
  %885 = fmul fast float %882, %882
  %886 = fsub fast float %883, %765
  %887 = fsub fast float %884, %766
  %888 = fsub fast float %885, %767
  %889 = fmul fast float %886, %790
  %890 = fmul fast float %887, %790
  %891 = fmul fast float %888, %790
  %892 = fadd fast float %889, %765
  %893 = fadd fast float %890, %766
  %894 = fadd fast float %891, %767
  %895 = fadd fast float %812, %776
  %896 = fsub fast float %895, %829
  %897 = call float @dx.op.unary.f32(i32 7, float %896)  ; Saturate(value)
  %898 = fsub fast float %897, %776
  %899 = fmul fast float %898, %790
  %900 = fadd fast float %899, %776
  br label %954

; <label>:901                                     ; preds = %789
  %902 = and i32 %792, 134217728
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %938, label %904

; <label>:904                                     ; preds = %901
  %905 = call float @dx.op.unary.f32(i32 24, float %242)  ; Sqrt(value)
  %906 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %907 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %908 = fadd fast float %905, -5.000000e-01
  %909 = fadd fast float %906, -5.000000e-01
  %910 = fadd fast float %907, -5.000000e-01
  %911 = fmul fast float %908, %790
  %912 = fmul fast float %909, %790
  %913 = fmul fast float %910, %790
  %914 = fadd fast float %911, 5.000000e-01
  %915 = fadd fast float %912, 5.000000e-01
  %916 = fadd fast float %913, 5.000000e-01
  %917 = call float @dx.op.unary.f32(i32 24, float %765)  ; Sqrt(value)
  %918 = call float @dx.op.unary.f32(i32 24, float %766)  ; Sqrt(value)
  %919 = call float @dx.op.unary.f32(i32 24, float %767)  ; Sqrt(value)
  %920 = fmul fast float %914, 2.000000e+00
  %921 = fsub fast float 1.000000e+00, %920
  %922 = fmul fast float %921, %917
  %923 = fadd fast float %922, %920
  %924 = fmul fast float %923, %917
  %925 = fmul fast float %915, 2.000000e+00
  %926 = fsub fast float 1.000000e+00, %925
  %927 = fmul fast float %926, %918
  %928 = fadd fast float %927, %925
  %929 = fmul fast float %928, %918
  %930 = fmul fast float %916, 2.000000e+00
  %931 = fsub fast float 1.000000e+00, %930
  %932 = fmul fast float %931, %919
  %933 = fadd fast float %932, %930
  %934 = fmul fast float %933, %919
  %935 = fmul fast float %924, %924
  %936 = fmul fast float %929, %929
  %937 = fmul fast float %934, %934
  br label %954

; <label>:938                                     ; preds = %901
  %939 = fmul fast float %242, %242
  %940 = fmul fast float %246, %246
  %941 = fmul fast float %250, %250
  %942 = fadd fast float %939, -1.000000e+00
  %943 = fadd fast float %940, -1.000000e+00
  %944 = fadd fast float %941, -1.000000e+00
  %945 = fmul fast float %790, %942
  %946 = fmul fast float %790, %943
  %947 = fmul fast float %790, %944
  %948 = fadd fast float %945, 1.000000e+00
  %949 = fadd fast float %946, 1.000000e+00
  %950 = fadd fast float %947, 1.000000e+00
  %951 = fmul fast float %948, %765
  %952 = fmul fast float %949, %766
  %953 = fmul fast float %950, %767
  br label %954

; <label>:954                                     ; preds = %938, %904, %795, %750
  %955 = phi float [ %900, %795 ], [ %776, %904 ], [ %776, %938 ], [ 0x3FA23C0BE0000000, %750 ]
  %956 = phi float [ %892, %795 ], [ %935, %904 ], [ %951, %938 ], [ 1.000000e+00, %750 ]
  %957 = phi float [ %893, %795 ], [ %936, %904 ], [ %952, %938 ], [ 1.000000e+00, %750 ]
  %958 = phi float [ %894, %795 ], [ %937, %904 ], [ %953, %938 ], [ 1.000000e+00, %750 ]
  %959 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.i32 %959, 1
  %961 = and i32 %960, 1
  %962 = icmp ne i32 %961, 0
  %963 = add i32 %48, 356
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = and i32 %965, 32
  %967 = icmp ne i32 %966, 0
  %968 = and i1 %962, %967
  %969 = select i1 %968, float 1.000000e+00, float %956
  %970 = select i1 %968, float 0x3FD3333340000000, float %957
  %971 = select i1 %968, float 0x3FD3333340000000, float %958
  %972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.i32 %972, 0
  %974 = and i32 %973, 32
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %1048, label %976

; <label>:976                                     ; preds = %954
  %977 = add i32 %48, 92
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = add i32 %48, 376
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %980, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = add i32 %982, 0
  %984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %983, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %985 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %984, %dx.types.Handle %93, float %563, float %564, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %986 = extractvalue %dx.types.ResRet.f32 %985, 0
  %987 = extractvalue %dx.types.ResRet.f32 %985, 1
  %988 = extractvalue %dx.types.ResRet.f32 %985, 2
  %989 = extractvalue %dx.types.ResRet.f32 %985, 3
  %990 = and i32 %979, 255
  %991 = uitofp i32 %990 to float
  %992 = lshr i32 %979, 8
  %993 = and i32 %992, 255
  %994 = uitofp i32 %993 to float
  %995 = lshr i32 %979, 16
  %996 = and i32 %995, 255
  %997 = uitofp i32 %996 to float
  %998 = fmul fast float %997, 0x3F70101000000000
  %999 = fmul fast float %986, %991
  %1000 = fadd fast float %999, %994
  %1001 = fmul fast float %1000, 0x3F70101000000000
  %1002 = fadd fast float %987, -5.000000e-01
  %1003 = fadd fast float %989, -5.000000e-01
  %1004 = fmul fast float %1002, %998
  %1005 = fmul fast float %1003, %998
  %1006 = fadd fast float %1004, 5.000000e-01
  %1007 = fadd fast float %1005, 5.000000e-01
  %1008 = fmul fast float %1006, 2.000000e+00
  %1009 = fadd fast float %1008, -1.000000e+00
  %1010 = fmul fast float %1007, 2.000000e+00
  %1011 = fadd fast float %1010, -1.000000e+00
  %1012 = fadd fast float %1009, %1011
  %1013 = fmul fast float %1012, 5.000000e-01
  %1014 = fsub fast float %1009, %1011
  %1015 = fmul fast float %1014, 5.000000e-01
  %1016 = call float @dx.op.unary.f32(i32 6, float %1013)  ; FAbs(value)
  %1017 = fsub fast float 1.000000e+00, %1016
  %1018 = call float @dx.op.unary.f32(i32 6, float %1015)  ; FAbs(value)
  %1019 = fsub fast float %1017, %1018
  %1020 = call float @dx.op.dot3.f32(i32 55, float %1013, float %1015, float %1019, float %1013, float %1015, float %1019)  ; Dot3(ax,ay,az,bx,by,bz)
  %1021 = call float @dx.op.unary.f32(i32 25, float %1020)  ; Rsqrt(value)
  %1022 = fmul fast float %1013, %1021
  %1023 = fmul fast float %1015, %1021
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = and i32 %1025, 67108864
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1044, label %1028

; <label>:1028                                    ; preds = %976
  %1029 = add i32 %48, 280
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = and i32 %1031, 65535
  %1033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1032)  ; LegacyF16ToF32(value)
  %1034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.i32 %1034, 0
  %1036 = and i32 %1035, 65535
  %1037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1036)  ; LegacyF16ToF32(value)
  %1038 = lshr i32 %1031, 16
  %1039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1038)  ; LegacyF16ToF32(value)
  %1040 = fsub fast float %1001, %1039
  %1041 = fmul fast float %1040, %1033
  %1042 = fadd fast float %1041, %1037
  %1043 = call float @dx.op.unary.f32(i32 7, float %1042)  ; Saturate(value)
  br label %1044

; <label>:1044                                    ; preds = %1028, %976
  %1045 = phi float [ %1043, %1028 ], [ %1001, %976 ]
  %1046 = call float @dx.op.dot2.f32(i32 54, float %1022, float %1023, float %467, float %468)  ; Dot2(ax,ay,bx,by)
  %1047 = call float @dx.op.dot2.f32(i32 54, float %1022, float %1023, float %469, float %470)  ; Dot2(ax,ay,bx,by)
  br label %1048

; <label>:1048                                    ; preds = %1044, %954
  %1049 = phi float [ %1045, %1044 ], [ 0x3FD6666660000000, %954 ]
  %1050 = phi float [ %1046, %1044 ], [ 0.000000e+00, %954 ]
  %1051 = phi float [ %1047, %1044 ], [ 0.000000e+00, %954 ]
  %1052 = phi float [ %988, %1044 ], [ 1.000000e+00, %954 ]
  %1053 = add i32 %48, 160
  %1054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.i32 %1054, 0
  %1056 = lshr i32 %1055, 22
  %1057 = shl nuw nsw i32 %1056, 5
  %1058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1057)  ; LegacyF16ToF32(value)
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = and i32 %1060, 64
  %1062 = icmp eq i32 %1061, 0
  br i1 %1062, label %1096, label %1063

; <label>:1063                                    ; preds = %1048
  %1064 = add i32 %48, 392
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = add i32 %1066, 0
  %1068 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1067, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = and i32 %1070, 131072
  %1072 = icmp eq i32 %1071, 0
  %1073 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1068, %dx.types.Handle %93, float %563, float %564, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1074 = extractvalue %dx.types.ResRet.f32 %1073, 0
  %1075 = extractvalue %dx.types.ResRet.f32 %1073, 1
  %1076 = extractvalue %dx.types.ResRet.f32 %1073, 2
  %1077 = fmul fast float %1074, %230
  %1078 = fmul fast float %1075, %233
  %1079 = fmul fast float %1076, %236
  br i1 %1072, label %1086, label %1080

; <label>:1080                                    ; preds = %1063
  %1081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1082 = extractvalue %dx.types.CBufRet.f32 %1081, 0
  %1083 = fmul fast float %1082, %1077
  %1084 = fmul fast float %1082, %1078
  %1085 = fmul fast float %1082, %1079
  br label %1086

; <label>:1086                                    ; preds = %1080, %1063
  %1087 = phi float [ %1083, %1080 ], [ %1077, %1063 ]
  %1088 = phi float [ %1084, %1080 ], [ %1078, %1063 ]
  %1089 = phi float [ %1085, %1080 ], [ %1079, %1063 ]
  %1090 = fmul fast float %1087, %1058
  %1091 = select i1 %213, float %1090, float %1087
  %1092 = call float @dx.op.dot3.f32(i32 55, float %1091, float %1088, float %1089, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1093 = select i1 %213, float 0.000000e+00, float %1087
  %1094 = select i1 %213, float %1092, float %1088
  %1095 = select i1 %213, float 0.000000e+00, float %1089
  br label %1096

; <label>:1096                                    ; preds = %1086, %1048
  %1097 = phi float [ %1093, %1086 ], [ 0.000000e+00, %1048 ]
  %1098 = phi float [ %1094, %1086 ], [ 0.000000e+00, %1048 ]
  %1099 = phi float [ %1095, %1086 ], [ 0.000000e+00, %1048 ]
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = and i32 %1101, 1024
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1134, label %1104

; <label>:1104                                    ; preds = %1096
  %1105 = add i32 %48, 152
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = and i32 %1107, 255
  %1109 = uitofp i32 %1108 to float
  %1110 = fmul fast float %1109, 0x3F70101020000000
  %1111 = lshr i32 %1107, 8
  %1112 = and i32 %1111, 255
  %1113 = uitofp i32 %1112 to float
  %1114 = fmul fast float %1113, 0x3F70101020000000
  %1115 = lshr i32 %1107, 16
  %1116 = and i32 %1115, 255
  %1117 = uitofp i32 %1116 to float
  %1118 = fmul fast float %1117, 0x3F70101020000000
  %1119 = fmul fast float %1110, %1110
  %1120 = fmul fast float %1114, %1114
  %1121 = fmul fast float %1118, %1118
  %1122 = add i32 %48, 456
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = add i32 %1124, 0
  %1126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1125, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1127 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1126, %dx.types.Handle %94, float %563, float %564, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1128 = extractvalue %dx.types.ResRet.f32 %1127, 0
  %1129 = extractvalue %dx.types.ResRet.f32 %1127, 1
  %1130 = extractvalue %dx.types.ResRet.f32 %1127, 2
  %1131 = fmul fast float %1119, %1128
  %1132 = fmul fast float %1120, %1129
  %1133 = fmul fast float %1121, %1130
  br label %1134

; <label>:1134                                    ; preds = %1104, %1096
  %1135 = phi float [ %1131, %1104 ], [ 0.000000e+00, %1096 ]
  %1136 = phi float [ %1132, %1104 ], [ 0.000000e+00, %1096 ]
  %1137 = phi float [ %1133, %1104 ], [ 0.000000e+00, %1096 ]
  %1138 = fcmp fast ogt float %1135, 0.000000e+00
  %1139 = fcmp fast ogt float %1136, 0.000000e+00
  %1140 = fcmp fast ogt float %1137, 0.000000e+00
  %1141 = call float @dx.op.unary.f32(i32 23, float %1135)  ; Log(value)
  %1142 = call float @dx.op.unary.f32(i32 23, float %1136)  ; Log(value)
  %1143 = call float @dx.op.unary.f32(i32 23, float %1137)  ; Log(value)
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = lshr i32 %1145, 7
  %1147 = and i32 %1146, 32752
  %1148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1147)  ; LegacyF16ToF32(value)
  %1149 = fmul fast float %1141, 0xBFE62E4300000000
  %1150 = fmul fast float %1149, %1148
  %1151 = fmul fast float %1142, 0xBFE62E4300000000
  %1152 = fmul fast float %1151, %1148
  %1153 = fmul fast float %1143, 0xBFE62E4300000000
  %1154 = fmul fast float %1153, %1148
  %1155 = select i1 %1138, float %1150, float 1.270000e+02
  %1156 = select i1 %1139, float %1152, float 1.270000e+02
  %1157 = select i1 %1140, float %1154, float 1.270000e+02
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = and i32 %1159, 10240
  %1161 = icmp eq i32 %1160, 0
  br i1 %1161, label %1206, label %1162

; <label>:1162                                    ; preds = %1134
  %1163 = add i32 %48, 472
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = add i32 %1165, 0
  %1167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1167, %dx.types.Handle %94, float %563, float %564, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 1
  %1170 = extractvalue %dx.types.ResRet.f32 %1168, 3
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = and i32 %1172, 1048576
  %1174 = icmp ne i32 %1173, 0
  %1175 = and i32 %1172, 8192
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1192, label %1177

; <label>:1177                                    ; preds = %1162
  %1178 = extractvalue %dx.types.ResRet.f32 %1168, 2
  %1179 = select i1 %1174, float %1178, float %1169
  %1180 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1181 = select i1 %1174, float %1180, float %1169
  %1182 = add i32 %48, 96
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = lshr i32 %1184, 16
  %1186 = and i32 %1185, 255
  %1187 = uitofp i32 %1186 to float
  %1188 = fmul fast float %1187, 0x3F80101020000000
  %1189 = fmul fast float %1188, %1181
  %1190 = fmul fast float %1188, %1169
  %1191 = fmul fast float %1188, %1179
  br label %1192

; <label>:1192                                    ; preds = %1177, %1162
  %1193 = phi float [ %1189, %1177 ], [ 0.000000e+00, %1162 ]
  %1194 = phi float [ %1190, %1177 ], [ 0.000000e+00, %1162 ]
  %1195 = phi float [ %1191, %1177 ], [ 0.000000e+00, %1162 ]
  %1196 = and i32 %1172, 2048
  %1197 = icmp eq i32 %1196, 0
  br i1 %1197, label %1206, label %1198

; <label>:1198                                    ; preds = %1192
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = shl i32 %1200, 4
  %1202 = and i32 %1201, 32752
  %1203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1202)  ; LegacyF16ToF32(value)
  %1204 = fmul fast float %1203, %1170
  %1205 = call float @dx.op.binary.f32(i32 35, float %1204, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1206

; <label>:1206                                    ; preds = %1198, %1192, %1134
  %1207 = phi float [ %1193, %1198 ], [ %1193, %1192 ], [ 0.000000e+00, %1134 ]
  %1208 = phi float [ %1194, %1198 ], [ %1194, %1192 ], [ 0.000000e+00, %1134 ]
  %1209 = phi float [ %1195, %1198 ], [ %1195, %1192 ], [ 0.000000e+00, %1134 ]
  %1210 = phi float [ %1205, %1198 ], [ 0x3F70101020000000, %1192 ], [ 0x3F70101020000000, %1134 ]
  %1211 = add i32 %48, 96
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = and i32 %1213, 255
  %1215 = uitofp i32 %1214 to float
  %1216 = lshr i32 %1213, 8
  %1217 = and i32 %1216, 255
  %1218 = uitofp i32 %1217 to float
  %1219 = call float @dx.op.dot3.f32(i32 55, float %969, float %970, float %971, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1220 = fmul fast float %1218, %1219
  %1221 = fadd fast float %1220, %1215
  %1222 = fmul fast float %1221, 0x3F70101020000000
  %1223 = call float @dx.op.unary.f32(i32 7, float %1222)  ; Saturate(value)
  br label %1224

; <label>:1224                                    ; preds = %1206, %449
  %1225 = phi float [ 0.000000e+00, %449 ], [ %1050, %1206 ]
  %1226 = phi float [ 0.000000e+00, %449 ], [ %1051, %1206 ]
  %1227 = phi float [ 0.000000e+00, %449 ], [ %969, %1206 ]
  %1228 = phi float [ 0.000000e+00, %449 ], [ %970, %1206 ]
  %1229 = phi float [ 0.000000e+00, %449 ], [ %971, %1206 ]
  %1230 = phi float [ 0.000000e+00, %449 ], [ %1097, %1206 ]
  %1231 = phi float [ 0.000000e+00, %449 ], [ %1098, %1206 ]
  %1232 = phi float [ 0.000000e+00, %449 ], [ %1099, %1206 ]
  %1233 = phi float [ 0.000000e+00, %449 ], [ %1155, %1206 ]
  %1234 = phi float [ 0.000000e+00, %449 ], [ %1156, %1206 ]
  %1235 = phi float [ 0.000000e+00, %449 ], [ %1157, %1206 ]
  %1236 = phi float [ 0.000000e+00, %449 ], [ %1207, %1206 ]
  %1237 = phi float [ 0.000000e+00, %449 ], [ %1208, %1206 ]
  %1238 = phi float [ 0.000000e+00, %449 ], [ %1209, %1206 ]
  %1239 = phi float [ 0.000000e+00, %449 ], [ %955, %1206 ]
  %1240 = phi float [ 0.000000e+00, %449 ], [ %751, %1206 ]
  %1241 = phi float [ 0.000000e+00, %449 ], [ %1049, %1206 ]
  %1242 = phi float [ 0.000000e+00, %449 ], [ %1052, %1206 ]
  %1243 = phi float [ 0.000000e+00, %449 ], [ %1210, %1206 ]
  %1244 = phi float [ 0.000000e+00, %449 ], [ %1223, %1206 ]
  br i1 %397, label %2282, label %1245

; <label>:1245                                    ; preds = %1224
  %1246 = icmp ult i32 %455, 2
  %1247 = add i32 %48, 40
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = add i32 %48, 44
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = or i32 %1252, %1249
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %2282, label %1255

; <label>:1255                                    ; preds = %1245
  %1256 = and i32 %1249, 262144
  %1257 = icmp ne i32 %1256, 0
  %1258 = select i1 %1257, float %51, float 1.000000e+00
  %1259 = select i1 %1257, float %52, float 0.000000e+00
  %1260 = select i1 %1257, float %53, float 0.000000e+00
  %1261 = select i1 %1257, float %54, float 1.000000e+00
  %1262 = select i1 %1257, float %55, float %76
  %1263 = select i1 %1257, float %56, float %77
  %1264 = add i32 %48, 300
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = lshr i32 %1266, 16
  %1268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1267)  ; LegacyF16ToF32(value)
  %1269 = fmul fast float %1268, 0x3F50624DE0000000
  %1270 = add i32 %48, 104
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = lshr i32 %1272, 16
  %1274 = and i32 %1273, 255
  %1275 = lshr i32 %1272, 24
  %1276 = add i32 %48, 308
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = and i32 %1278, 65535
  %1280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1279)  ; LegacyF16ToF32(value)
  %1281 = lshr i32 %1278, 16
  %1282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1281)  ; LegacyF16ToF32(value)
  %1283 = add i32 %48, 48
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = lshr i32 %1285, 22
  %1287 = shl nuw nsw i32 %1286, 5
  %1288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1287)  ; LegacyF16ToF32(value)
  %1289 = shl i32 %1285, 4
  %1290 = and i32 %1289, 32752
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = lshr i32 %1285, 7
  %1293 = and i32 %1292, 32752
  %1294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1293)  ; LegacyF16ToF32(value)
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 3
  %1297 = fmul fast float %1296, 1.000000e+03
  %1298 = fmul fast float %307, %1297
  %1299 = call float @dx.op.unary.f32(i32 22, float %1298)  ; Frc(value)
  %1300 = fadd fast float %1299, %297
  %1301 = fmul fast float %308, %1297
  %1302 = call float @dx.op.unary.f32(i32 22, float %1301)  ; Frc(value)
  %1303 = fadd fast float %1302, %299
  %1304 = fmul fast float %1269, %1297
  %1305 = call float @dx.op.unary.f32(i32 22, float %1304)  ; Frc(value)
  %1306 = fmul fast float %1305, 0x401921FB60000000
  %1307 = fadd fast float %1306, %1288
  %1308 = call float @dx.op.unary.f32(i32 13, float %1307)  ; Sin(value)
  %1309 = call float @dx.op.unary.f32(i32 12, float %1307)  ; Cos(value)
  %1310 = fsub fast float -0.000000e+00, %1308
  %1311 = fadd fast float %1262, -5.000000e-01
  %1312 = fadd fast float %1263, -5.000000e-01
  %1313 = fmul fast float %1280, %1311
  %1314 = fmul fast float %1282, %1312
  %1315 = fadd fast float %1313, 5.000000e-01
  %1316 = fadd fast float %1314, 5.000000e-01
  %1317 = fmul fast float %1291, %1315
  %1318 = fmul fast float %1294, %1316
  %1319 = fmul fast float %1309, %1317
  %1320 = call float @dx.op.tertiary.f32(i32 46, float %1310, float %1318, float %1319)  ; FMad(a,b,c)
  %1321 = fmul fast float %1308, %1317
  %1322 = call float @dx.op.tertiary.f32(i32 46, float %1309, float %1318, float %1321)  ; FMad(a,b,c)
  %1323 = fadd fast float %1300, %1320
  %1324 = fadd fast float %1303, %1322
  %1325 = icmp ugt i32 %1274, 1
  %1326 = icmp ugt i32 %1272, 33554431
  %1327 = or i1 %1326, %1325
  br i1 %1327, label %1328, label %1353

; <label>:1328                                    ; preds = %1255
  %1329 = add i32 %48, 244
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = lshr i32 %1331, 16
  %1333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1332)  ; LegacyF16ToF32(value)
  %1334 = fmul fast float %1296, %1333
  %1335 = call float @dx.op.unary.f32(i32 22, float %1334)  ; Frc(value)
  %1336 = mul nuw nsw i32 %1274, %1275
  %1337 = uitofp i32 %1336 to float
  %1338 = fmul fast float %1335, %1337
  %1339 = call float @dx.op.unary.f32(i32 27, float %1338)  ; Round_ni(value)
  %1340 = fptoui float %1339 to i32
  %1341 = urem i32 %1340, %1274
  %1342 = udiv i32 %1340, %1275
  %1343 = call float @dx.op.unary.f32(i32 22, float %1323)  ; Frc(value)
  %1344 = call float @dx.op.unary.f32(i32 22, float %1324)  ; Frc(value)
  %1345 = uitofp i32 %1341 to float
  %1346 = uitofp i32 %1342 to float
  %1347 = fadd fast float %1343, %1345
  %1348 = fadd fast float %1344, %1346
  %1349 = uitofp i32 %1274 to float
  %1350 = uitofp i32 %1275 to float
  %1351 = fdiv fast float %1347, %1349
  %1352 = fdiv fast float %1348, %1350
  br label %1353

; <label>:1353                                    ; preds = %1328, %1255
  %1354 = phi float [ %1351, %1328 ], [ %1323, %1255 ]
  %1355 = phi float [ %1352, %1328 ], [ %1324, %1255 ]
  %1356 = and i32 %1249, 16777216
  %1357 = icmp eq i32 %1356, 0
  br i1 %1357, label %1467, label %1358

; <label>:1358                                    ; preds = %1353
  %1359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1360 = extractvalue %dx.types.CBufRet.f32 %1359, 0
  %1361 = extractvalue %dx.types.CBufRet.f32 %1359, 1
  %1362 = extractvalue %dx.types.CBufRet.f32 %1359, 2
  %1363 = fadd fast float %1360, %152
  %1364 = fadd fast float %1361, %153
  %1365 = fadd fast float %1362, %154
  %1366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1367 = extractvalue %dx.types.CBufRet.f32 %1366, 0
  %1368 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  %1369 = icmp eq i32 %49, 65535
  br i1 %1369, label %1464, label %1370

; <label>:1370                                    ; preds = %1358
  %1371 = lshr i32 %49, 1
  %1372 = shl i32 %1371, 2
  %1373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.i32 %1373, 0
  %1375 = and i32 %49, 1
  %1376 = icmp ne i32 %1375, 0
  %1377 = lshr i32 %1374, 16
  %1378 = and i32 %1374, 65535
  %1379 = select i1 %1376, i32 %1377, i32 %1378
  %1380 = icmp eq i32 %1379, 65535
  br i1 %1380, label %1460, label %1381

; <label>:1381                                    ; preds = %1370
  %1382 = mul nuw nsw i32 %1379, 40
  %1383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.f32 %1383, 0
  %1385 = extractvalue %dx.types.ResRet.f32 %1383, 1
  %1386 = extractvalue %dx.types.ResRet.f32 %1383, 2
  %1387 = add nuw nsw i32 %1382, 12
  %1388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1387, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  %1390 = extractvalue %dx.types.ResRet.f32 %1388, 1
  %1391 = extractvalue %dx.types.ResRet.f32 %1388, 2
  %1392 = add nuw nsw i32 %1382, 24
  %1393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.ResRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.ResRet.f32 %1393, 2
  %1397 = add nuw nsw i32 %1382, 36
  %1398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = fsub fast float %1363, %1384
  %1401 = fsub fast float %1364, %1385
  %1402 = fsub fast float %1365, %1386
  %1403 = fmul fast float %1399, %1400
  %1404 = fmul fast float %1399, %1401
  %1405 = fmul fast float %1399, %1402
  %1406 = call float @dx.op.unary.f32(i32 27, float %1403)  ; Round_ni(value)
  %1407 = call float @dx.op.unary.f32(i32 27, float %1404)  ; Round_ni(value)
  %1408 = call float @dx.op.unary.f32(i32 27, float %1405)  ; Round_ni(value)
  %1409 = fadd fast float %1406, 5.000000e-01
  %1410 = fadd fast float %1407, 5.000000e-01
  %1411 = fadd fast float %1408, 5.000000e-01
  %1412 = fmul fast float %1409, %1389
  %1413 = fmul fast float %1410, %1390
  %1414 = fmul fast float %1411, %1391
  %1415 = shl i32 %49, 2
  %1416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.i32 %1416, 0
  %1418 = add i32 %1417, 0
  %1419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1418, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1420 = call float @dx.op.unary.f32(i32 22, float %1412)  ; Frc(value)
  %1421 = call float @dx.op.unary.f32(i32 22, float %1413)  ; Frc(value)
  %1422 = call float @dx.op.unary.f32(i32 22, float %1414)  ; Frc(value)
  %1423 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1419, %dx.types.Handle %43, float %1420, float %1421, float %1422, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1424 = extractvalue %dx.types.ResRet.f32 %1423, 0
  %1425 = extractvalue %dx.types.ResRet.f32 %1423, 1
  %1426 = extractvalue %dx.types.ResRet.f32 %1423, 2
  %1427 = fmul fast float %1424, 1.023000e+03
  %1428 = fmul fast float %1425, 1.023000e+03
  %1429 = fmul fast float %1426, 1.023000e+03
  %1430 = fadd fast float %1427, 5.000000e-01
  %1431 = fadd fast float %1428, 5.000000e-01
  %1432 = fadd fast float %1429, 5.000000e-01
  %1433 = call float @dx.op.unary.f32(i32 27, float %1430)  ; Round_ni(value)
  %1434 = call float @dx.op.unary.f32(i32 27, float %1431)  ; Round_ni(value)
  %1435 = call float @dx.op.unary.f32(i32 27, float %1432)  ; Round_ni(value)
  %1436 = fsub fast float %1403, %1406
  %1437 = fsub fast float %1404, %1407
  %1438 = fsub fast float %1405, %1408
  %1439 = fmul fast float %1436, 7.500000e-01
  %1440 = fmul fast float %1437, 7.500000e-01
  %1441 = fmul fast float %1438, 7.500000e-01
  %1442 = fadd fast float %1406, 1.250000e-01
  %1443 = fadd fast float %1442, %1439
  %1444 = fadd fast float %1443, %1433
  %1445 = fadd fast float %1407, 1.250000e-01
  %1446 = fadd fast float %1445, %1440
  %1447 = fadd fast float %1446, %1434
  %1448 = fadd fast float %1408, 1.250000e-01
  %1449 = fadd fast float %1448, %1441
  %1450 = fadd fast float %1449, %1435
  %1451 = fmul fast float %1444, %1394
  %1452 = fmul fast float %1447, %1395
  %1453 = fmul fast float %1450, %1396
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = add i32 %1455, 0
  %1457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1456, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1457, %dx.types.Handle %41, float %1451, float %1452, float %1453, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1459 = extractvalue %dx.types.ResRet.f32 %1458, 0
  br label %1460

; <label>:1460                                    ; preds = %1381, %1370
  %1461 = phi float [ %1459, %1381 ], [ -1.000000e+00, %1370 ]
  %1462 = fadd fast float %1461, %1368
  %1463 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  br label %1464

; <label>:1464                                    ; preds = %1460, %1358
  %1465 = phi float [ %1463, %1460 ], [ %1368, %1358 ]
  %1466 = fmul fast float %1465, %452
  br label %1467

; <label>:1467                                    ; preds = %1464, %1353
  %1468 = phi float [ %1466, %1464 ], [ %452, %1353 ]
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = and i32 %1470, 256
  %1472 = icmp eq i32 %1471, 0
  br i1 %1472, label %1519, label %1473

; <label>:1473                                    ; preds = %1467
  %1474 = add i32 %48, 428
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = add i32 %1476, 0
  %1478 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1477, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1479 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1478, %dx.types.Handle %94, float %1354, float %1355, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1480 = extractvalue %dx.types.ResRet.f32 %1479, 0
  %1481 = add i32 %48, 116
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1481, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = shl i32 %1483, 4
  %1485 = and i32 %1484, 32752
  %1486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1485)  ; LegacyF16ToF32(value)
  %1487 = lshr i32 %1483, 7
  %1488 = and i32 %1487, 32752
  %1489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1488)  ; LegacyF16ToF32(value)
  %1490 = fsub fast float 1.000000e+00, %1468
  %1491 = call float @dx.op.binary.f32(i32 35, float %1490, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1492 = bitcast float %1468 to i32
  %1493 = sitofp i32 %1492 to float
  %1494 = fadd fast float %1493, 0xC1CFBF8940000000
  %1495 = fmul fast float %1489, %1494
  %1496 = fadd fast float %1495, 0x41CFBF8940000000
  %1497 = fptosi float %1496 to i32
  %1498 = bitcast i32 %1497 to float
  %1499 = bitcast float %1491 to i32
  %1500 = sitofp i32 %1499 to float
  %1501 = fadd fast float %1500, 0xC1CFBF8940000000
  %1502 = fmul fast float %1501, %1489
  %1503 = fadd fast float %1502, 0x41CFBF8940000000
  %1504 = fptosi float %1503 to i32
  %1505 = bitcast i32 %1504 to float
  %1506 = fmul fast float %1498, %1486
  %1507 = fmul fast float %1505, %1486
  %1508 = fsub fast float %1491, %1506
  %1509 = fadd fast float %1507, %1491
  %1510 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  %1511 = call float @dx.op.unary.f32(i32 7, float %1509)  ; Saturate(value)
  %1512 = fsub fast float %1480, %1510
  %1513 = fsub fast float %1511, %1510
  %1514 = bitcast float %1513 to i32
  %1515 = sub nsw i32 2129859010, %1514
  %1516 = bitcast i32 %1515 to float
  %1517 = fmul fast float %1516, %1512
  %1518 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  br label %1519

; <label>:1519                                    ; preds = %1473, %1467
  %1520 = phi float [ %1518, %1473 ], [ %1468, %1467 ]
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 128
  %1524 = icmp eq i32 %1523, 0
  br i1 %1524, label %1541, label %1525

; <label>:1525                                    ; preds = %1519
  %1526 = add i32 %48, 412
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = add i32 %1528, 0
  %1530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1529, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1531 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1530, %dx.types.Handle %94, float %1354, float %1355, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1532 = extractvalue %dx.types.ResRet.f32 %1531, 0
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = and i32 %1534, 524288
  %1536 = icmp ne i32 %1535, 0
  %1537 = fcmp fast ogt float %1532, 0x3FE0101020000000
  %1538 = select i1 %1537, float 1.000000e+00, float 0.000000e+00
  %1539 = select i1 %1536, float %1538, float %1532
  %1540 = fmul fast float %1539, %1520
  br label %1541

; <label>:1541                                    ; preds = %1525, %1519
  %1542 = phi float [ %1540, %1525 ], [ %1520, %1519 ]
  %1543 = fcmp fast ult float %1542, 0x3F70101020000000
  br i1 %1543, label %2282, label %1544

; <label>:1544                                    ; preds = %1541
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = and i32 %1546, 16
  %1548 = icmp eq i32 %1547, 0
  br i1 %1548, label %1747, label %1549

; <label>:1549                                    ; preds = %1544
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = add i32 %48, 364
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = add i32 %1554, 0
  %1556 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1555, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1557 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1556, %dx.types.Handle %93, float %1354, float %1355, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1558 = extractvalue %dx.types.ResRet.f32 %1557, 0
  %1559 = extractvalue %dx.types.ResRet.f32 %1557, 1
  %1560 = extractvalue %dx.types.ResRet.f32 %1557, 2
  %1561 = extractvalue %dx.types.ResRet.f32 %1557, 3
  %1562 = and i32 %1551, 255
  %1563 = uitofp i32 %1562 to float
  %1564 = lshr i32 %1551, 8
  %1565 = and i32 %1564, 255
  %1566 = uitofp i32 %1565 to float
  %1567 = fmul fast float %1561, %1563
  %1568 = fadd fast float %1567, %1566
  %1569 = fmul fast float %1568, 0x3F70101000000000
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 512
  %1573 = icmp eq i32 %1572, 0
  br i1 %1573, label %1582, label %1574

; <label>:1574                                    ; preds = %1549
  %1575 = add i32 %48, 444
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = add i32 %1577, 0
  %1579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1578, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1580 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1579, %dx.types.Handle %94, float %1354, float %1355, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1581 = extractvalue %dx.types.ResRet.f32 %1580, 0
  br label %1582

; <label>:1582                                    ; preds = %1574, %1549
  %1583 = phi float [ %1581, %1574 ], [ 1.000000e+00, %1549 ]
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = and i32 %1585, 33554432
  %1587 = icmp eq i32 %1586, 0
  br i1 %1587, label %1694, label %1588

; <label>:1588                                    ; preds = %1582
  %1589 = add i32 %48, 240
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = and i32 %1591, 65535
  %1593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1592)  ; LegacyF16ToF32(value)
  %1594 = lshr i32 %1591, 16
  %1595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1594)  ; LegacyF16ToF32(value)
  %1596 = add i32 %48, 244
  %1597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1596, i32 undef)  ; BufferLoad(srv,index,wot)
  %1598 = extractvalue %dx.types.ResRet.i32 %1597, 0
  %1599 = and i32 %1598, 65535
  %1600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1599)  ; LegacyF16ToF32(value)
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = lshr i32 %1602, 24
  %1604 = uitofp i32 %1603 to float
  %1605 = fmul fast float %1604, 0x3F70101020000000
  %1606 = and i32 %1602, 255
  %1607 = uitofp i32 %1606 to float
  %1608 = fmul fast float %1607, 0x3F70101020000000
  %1609 = lshr i32 %1602, 8
  %1610 = and i32 %1609, 255
  %1611 = uitofp i32 %1610 to float
  %1612 = fmul fast float %1611, 0x3F70101020000000
  %1613 = lshr i32 %1602, 16
  %1614 = and i32 %1613, 255
  %1615 = uitofp i32 %1614 to float
  %1616 = fmul fast float %1615, 0x3F70101020000000
  %1617 = add i32 %48, 236
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1617, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = lshr i32 %1619, 24
  %1621 = uitofp i32 %1620 to float
  %1622 = fmul fast float %1621, 0x3F70101020000000
  %1623 = and i32 %1619, 255
  %1624 = uitofp i32 %1623 to float
  %1625 = fmul fast float %1624, 0x3F70101020000000
  %1626 = lshr i32 %1619, 8
  %1627 = and i32 %1626, 255
  %1628 = uitofp i32 %1627 to float
  %1629 = fmul fast float %1628, 0x3F70101020000000
  %1630 = lshr i32 %1619, 16
  %1631 = and i32 %1630, 255
  %1632 = uitofp i32 %1631 to float
  %1633 = fmul fast float %1632, 0x3F70101020000000
  %1634 = bitcast float %1558 to i32
  %1635 = ashr i32 %1634, 1
  %1636 = sub nsw i32 1597463174, %1635
  %1637 = bitcast i32 %1636 to float
  %1638 = fmul fast float %1558, 5.000000e-01
  %1639 = fmul fast float %1637, %1637
  %1640 = fmul fast float %1639, %1638
  %1641 = fsub fast float 1.500000e+00, %1640
  %1642 = fmul fast float %1637, %1558
  %1643 = fmul fast float %1642, %1641
  %1644 = bitcast float %1559 to i32
  %1645 = ashr i32 %1644, 1
  %1646 = sub nsw i32 1597463174, %1645
  %1647 = bitcast i32 %1646 to float
  %1648 = fmul fast float %1559, 5.000000e-01
  %1649 = fmul fast float %1647, %1647
  %1650 = fmul fast float %1649, %1648
  %1651 = fsub fast float 1.500000e+00, %1650
  %1652 = fmul fast float %1647, %1559
  %1653 = fmul fast float %1652, %1651
  %1654 = bitcast float %1560 to i32
  %1655 = ashr i32 %1654, 1
  %1656 = sub nsw i32 1597463174, %1655
  %1657 = bitcast i32 %1656 to float
  %1658 = fmul fast float %1560, 5.000000e-01
  %1659 = fmul fast float %1657, %1657
  %1660 = fmul fast float %1659, %1658
  %1661 = fsub fast float 1.500000e+00, %1660
  %1662 = fmul fast float %1657, %1560
  %1663 = fmul fast float %1662, %1661
  %1664 = fsub fast float %1643, %1625
  %1665 = fsub fast float %1653, %1629
  %1666 = fsub fast float %1663, %1633
  %1667 = fmul fast float %1664, %1593
  %1668 = fmul fast float %1665, %1595
  %1669 = fmul fast float %1666, %1600
  %1670 = fadd fast float %1667, %1608
  %1671 = fadd fast float %1668, %1612
  %1672 = fadd fast float %1669, %1616
  %1673 = call float @dx.op.unary.f32(i32 7, float %1670)  ; Saturate(value)
  %1674 = call float @dx.op.unary.f32(i32 7, float %1671)  ; Saturate(value)
  %1675 = call float @dx.op.unary.f32(i32 7, float %1672)  ; Saturate(value)
  %1676 = fmul fast float %1673, %1673
  %1677 = fmul fast float %1674, %1674
  %1678 = fmul fast float %1675, %1675
  %1679 = fsub fast float %1676, %1558
  %1680 = fsub fast float %1677, %1559
  %1681 = fsub fast float %1678, %1560
  %1682 = fmul fast float %1679, %1583
  %1683 = fmul fast float %1680, %1583
  %1684 = fmul fast float %1681, %1583
  %1685 = fadd fast float %1682, %1558
  %1686 = fadd fast float %1683, %1559
  %1687 = fadd fast float %1684, %1560
  %1688 = fadd fast float %1605, %1569
  %1689 = fsub fast float %1688, %1622
  %1690 = call float @dx.op.unary.f32(i32 7, float %1689)  ; Saturate(value)
  %1691 = fsub fast float %1690, %1569
  %1692 = fmul fast float %1691, %1583
  %1693 = fadd fast float %1692, %1569
  br label %1747

; <label>:1694                                    ; preds = %1582
  %1695 = and i32 %1585, 134217728
  %1696 = icmp eq i32 %1695, 0
  br i1 %1696, label %1731, label %1697

; <label>:1697                                    ; preds = %1694
  %1698 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %1699 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %1700 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %1701 = fadd fast float %1698, -5.000000e-01
  %1702 = fadd fast float %1699, -5.000000e-01
  %1703 = fadd fast float %1700, -5.000000e-01
  %1704 = fmul fast float %1701, %1583
  %1705 = fmul fast float %1702, %1583
  %1706 = fmul fast float %1703, %1583
  %1707 = fadd fast float %1704, 5.000000e-01
  %1708 = fadd fast float %1705, 5.000000e-01
  %1709 = fadd fast float %1706, 5.000000e-01
  %1710 = call float @dx.op.unary.f32(i32 24, float %1558)  ; Sqrt(value)
  %1711 = call float @dx.op.unary.f32(i32 24, float %1559)  ; Sqrt(value)
  %1712 = call float @dx.op.unary.f32(i32 24, float %1560)  ; Sqrt(value)
  %1713 = fmul fast float %1707, 2.000000e+00
  %1714 = fsub fast float 1.000000e+00, %1713
  %1715 = fmul fast float %1714, %1710
  %1716 = fadd fast float %1715, %1713
  %1717 = fmul fast float %1716, %1710
  %1718 = fmul fast float %1708, 2.000000e+00
  %1719 = fsub fast float 1.000000e+00, %1718
  %1720 = fmul fast float %1719, %1711
  %1721 = fadd fast float %1720, %1718
  %1722 = fmul fast float %1721, %1711
  %1723 = fmul fast float %1709, 2.000000e+00
  %1724 = fsub fast float 1.000000e+00, %1723
  %1725 = fmul fast float %1724, %1712
  %1726 = fadd fast float %1725, %1723
  %1727 = fmul fast float %1726, %1712
  %1728 = fmul fast float %1717, %1717
  %1729 = fmul fast float %1722, %1722
  %1730 = fmul fast float %1727, %1727
  br label %1747

; <label>:1731                                    ; preds = %1694
  %1732 = fmul fast float %284, %284
  %1733 = fmul fast float %288, %288
  %1734 = fmul fast float %292, %292
  %1735 = fadd fast float %1732, -1.000000e+00
  %1736 = fadd fast float %1733, -1.000000e+00
  %1737 = fadd fast float %1734, -1.000000e+00
  %1738 = fmul fast float %1583, %1735
  %1739 = fmul fast float %1583, %1736
  %1740 = fmul fast float %1583, %1737
  %1741 = fadd fast float %1738, 1.000000e+00
  %1742 = fadd fast float %1739, 1.000000e+00
  %1743 = fadd fast float %1740, 1.000000e+00
  %1744 = fmul fast float %1741, %1558
  %1745 = fmul fast float %1742, %1559
  %1746 = fmul fast float %1743, %1560
  br label %1747

; <label>:1747                                    ; preds = %1731, %1697, %1588, %1544
  %1748 = phi float [ %1693, %1588 ], [ %1569, %1697 ], [ %1569, %1731 ], [ 0x3FA23C0BE0000000, %1544 ]
  %1749 = phi float [ %1685, %1588 ], [ %1728, %1697 ], [ %1744, %1731 ], [ 1.000000e+00, %1544 ]
  %1750 = phi float [ %1686, %1588 ], [ %1729, %1697 ], [ %1745, %1731 ], [ 1.000000e+00, %1544 ]
  %1751 = phi float [ %1687, %1588 ], [ %1730, %1697 ], [ %1746, %1731 ], [ 1.000000e+00, %1544 ]
  %1752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1753 = extractvalue %dx.types.CBufRet.i32 %1752, 1
  %1754 = and i32 %1753, 1
  %1755 = icmp ne i32 %1754, 0
  %1756 = add i32 %48, 356
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = and i32 %1758, 32
  %1760 = icmp ne i32 %1759, 0
  %1761 = and i1 %1755, %1760
  %1762 = select i1 %1761, float 1.000000e+00, float %1749
  %1763 = select i1 %1761, float 0x3FD3333340000000, float %1750
  %1764 = select i1 %1761, float 0x3FD3333340000000, float %1751
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = and i32 %1766, 32
  %1768 = icmp eq i32 %1767, 0
  br i1 %1768, label %1841, label %1769

; <label>:1769                                    ; preds = %1747
  %1770 = add i32 %48, 108
  %1771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %1772 = extractvalue %dx.types.ResRet.i32 %1771, 0
  %1773 = add i32 %48, 380
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = add i32 %1775, 0
  %1777 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1776, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1778 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1777, %dx.types.Handle %93, float %1354, float %1355, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1779 = extractvalue %dx.types.ResRet.f32 %1778, 0
  %1780 = extractvalue %dx.types.ResRet.f32 %1778, 1
  %1781 = extractvalue %dx.types.ResRet.f32 %1778, 2
  %1782 = extractvalue %dx.types.ResRet.f32 %1778, 3
  %1783 = and i32 %1772, 255
  %1784 = uitofp i32 %1783 to float
  %1785 = lshr i32 %1772, 8
  %1786 = and i32 %1785, 255
  %1787 = uitofp i32 %1786 to float
  %1788 = lshr i32 %1772, 16
  %1789 = and i32 %1788, 255
  %1790 = uitofp i32 %1789 to float
  %1791 = fmul fast float %1790, 0x3F70101000000000
  %1792 = fmul fast float %1779, %1784
  %1793 = fadd fast float %1792, %1787
  %1794 = fmul fast float %1793, 0x3F70101000000000
  %1795 = fadd fast float %1780, -5.000000e-01
  %1796 = fadd fast float %1782, -5.000000e-01
  %1797 = fmul fast float %1795, %1791
  %1798 = fmul fast float %1796, %1791
  %1799 = fadd fast float %1797, 5.000000e-01
  %1800 = fadd fast float %1798, 5.000000e-01
  %1801 = fmul fast float %1799, 2.000000e+00
  %1802 = fadd fast float %1801, -1.000000e+00
  %1803 = fmul fast float %1800, 2.000000e+00
  %1804 = fadd fast float %1803, -1.000000e+00
  %1805 = fadd fast float %1802, %1804
  %1806 = fmul fast float %1805, 5.000000e-01
  %1807 = fsub fast float %1802, %1804
  %1808 = fmul fast float %1807, 5.000000e-01
  %1809 = call float @dx.op.unary.f32(i32 6, float %1806)  ; FAbs(value)
  %1810 = fsub fast float 1.000000e+00, %1809
  %1811 = call float @dx.op.unary.f32(i32 6, float %1808)  ; FAbs(value)
  %1812 = fsub fast float %1810, %1811
  %1813 = call float @dx.op.dot3.f32(i32 55, float %1806, float %1808, float %1812, float %1806, float %1808, float %1812)  ; Dot3(ax,ay,az,bx,by,bz)
  %1814 = call float @dx.op.unary.f32(i32 25, float %1813)  ; Rsqrt(value)
  %1815 = fmul fast float %1806, %1814
  %1816 = fmul fast float %1808, %1814
  %1817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.i32 %1817, 0
  %1819 = and i32 %1818, 67108864
  %1820 = icmp eq i32 %1819, 0
  br i1 %1820, label %1837, label %1821

; <label>:1821                                    ; preds = %1769
  %1822 = add i32 %48, 296
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = and i32 %1824, 65535
  %1826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1825)  ; LegacyF16ToF32(value)
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = and i32 %1828, 65535
  %1830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1829)  ; LegacyF16ToF32(value)
  %1831 = lshr i32 %1824, 16
  %1832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1831)  ; LegacyF16ToF32(value)
  %1833 = fsub fast float %1794, %1832
  %1834 = fmul fast float %1833, %1826
  %1835 = fadd fast float %1834, %1830
  %1836 = call float @dx.op.unary.f32(i32 7, float %1835)  ; Saturate(value)
  br label %1837

; <label>:1837                                    ; preds = %1821, %1769
  %1838 = phi float [ %1836, %1821 ], [ %1794, %1769 ]
  %1839 = call float @dx.op.dot2.f32(i32 54, float %1815, float %1816, float %1258, float %1259)  ; Dot2(ax,ay,bx,by)
  %1840 = call float @dx.op.dot2.f32(i32 54, float %1815, float %1816, float %1260, float %1261)  ; Dot2(ax,ay,bx,by)
  br label %1841

; <label>:1841                                    ; preds = %1837, %1747
  %1842 = phi float [ %1838, %1837 ], [ 0x3FD6666660000000, %1747 ]
  %1843 = phi float [ %1839, %1837 ], [ 0.000000e+00, %1747 ]
  %1844 = phi float [ %1840, %1837 ], [ 0.000000e+00, %1747 ]
  %1845 = phi float [ %1781, %1837 ], [ 1.000000e+00, %1747 ]
  %1846 = add i32 %48, 176
  %1847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1846, i32 undef)  ; BufferLoad(srv,index,wot)
  %1848 = extractvalue %dx.types.ResRet.i32 %1847, 0
  %1849 = lshr i32 %1848, 22
  %1850 = shl nuw nsw i32 %1849, 5
  %1851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1850)  ; LegacyF16ToF32(value)
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = and i32 %1853, 64
  %1855 = icmp eq i32 %1854, 0
  br i1 %1855, label %1889, label %1856

; <label>:1856                                    ; preds = %1841
  %1857 = add i32 %48, 396
  %1858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %1859 = extractvalue %dx.types.ResRet.i32 %1858, 0
  %1860 = add i32 %1859, 0
  %1861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1860, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = and i32 %1863, 131072
  %1865 = icmp eq i32 %1864, 0
  %1866 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1861, %dx.types.Handle %93, float %1354, float %1355, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1867 = extractvalue %dx.types.ResRet.f32 %1866, 0
  %1868 = extractvalue %dx.types.ResRet.f32 %1866, 1
  %1869 = extractvalue %dx.types.ResRet.f32 %1866, 2
  %1870 = fmul fast float %1867, %272
  %1871 = fmul fast float %1868, %275
  %1872 = fmul fast float %1869, %278
  br i1 %1865, label %1879, label %1873

; <label>:1873                                    ; preds = %1856
  %1874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1875 = extractvalue %dx.types.CBufRet.f32 %1874, 0
  %1876 = fmul fast float %1875, %1870
  %1877 = fmul fast float %1875, %1871
  %1878 = fmul fast float %1875, %1872
  br label %1879

; <label>:1879                                    ; preds = %1873, %1856
  %1880 = phi float [ %1876, %1873 ], [ %1870, %1856 ]
  %1881 = phi float [ %1877, %1873 ], [ %1871, %1856 ]
  %1882 = phi float [ %1878, %1873 ], [ %1872, %1856 ]
  %1883 = fmul fast float %1880, %1851
  %1884 = select i1 %213, float %1883, float %1880
  %1885 = call float @dx.op.dot3.f32(i32 55, float %1884, float %1881, float %1882, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1886 = select i1 %213, float 0.000000e+00, float %1880
  %1887 = select i1 %213, float %1885, float %1881
  %1888 = select i1 %213, float 0.000000e+00, float %1882
  br label %1889

; <label>:1889                                    ; preds = %1879, %1841
  %1890 = phi float [ %1886, %1879 ], [ 0.000000e+00, %1841 ]
  %1891 = phi float [ %1887, %1879 ], [ 0.000000e+00, %1841 ]
  %1892 = phi float [ %1888, %1879 ], [ 0.000000e+00, %1841 ]
  %1893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.i32 %1893, 0
  %1895 = and i32 %1894, 1024
  %1896 = icmp eq i32 %1895, 0
  br i1 %1896, label %1927, label %1897

; <label>:1897                                    ; preds = %1889
  %1898 = add i32 %48, 168
  %1899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1898, i32 undef)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.i32 %1899, 0
  %1901 = and i32 %1900, 255
  %1902 = uitofp i32 %1901 to float
  %1903 = fmul fast float %1902, 0x3F70101020000000
  %1904 = lshr i32 %1900, 8
  %1905 = and i32 %1904, 255
  %1906 = uitofp i32 %1905 to float
  %1907 = fmul fast float %1906, 0x3F70101020000000
  %1908 = lshr i32 %1900, 16
  %1909 = and i32 %1908, 255
  %1910 = uitofp i32 %1909 to float
  %1911 = fmul fast float %1910, 0x3F70101020000000
  %1912 = fmul fast float %1903, %1903
  %1913 = fmul fast float %1907, %1907
  %1914 = fmul fast float %1911, %1911
  %1915 = add i32 %48, 460
  %1916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.i32 %1916, 0
  %1918 = add i32 %1917, 0
  %1919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1918, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1920 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1919, %dx.types.Handle %94, float %1354, float %1355, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1921 = extractvalue %dx.types.ResRet.f32 %1920, 0
  %1922 = extractvalue %dx.types.ResRet.f32 %1920, 1
  %1923 = extractvalue %dx.types.ResRet.f32 %1920, 2
  %1924 = fmul fast float %1912, %1921
  %1925 = fmul fast float %1913, %1922
  %1926 = fmul fast float %1914, %1923
  br label %1927

; <label>:1927                                    ; preds = %1897, %1889
  %1928 = phi float [ %1924, %1897 ], [ 0.000000e+00, %1889 ]
  %1929 = phi float [ %1925, %1897 ], [ 0.000000e+00, %1889 ]
  %1930 = phi float [ %1926, %1897 ], [ 0.000000e+00, %1889 ]
  %1931 = fcmp fast ogt float %1928, 0.000000e+00
  %1932 = fcmp fast ogt float %1929, 0.000000e+00
  %1933 = fcmp fast ogt float %1930, 0.000000e+00
  %1934 = call float @dx.op.unary.f32(i32 23, float %1928)  ; Log(value)
  %1935 = call float @dx.op.unary.f32(i32 23, float %1929)  ; Log(value)
  %1936 = call float @dx.op.unary.f32(i32 23, float %1930)  ; Log(value)
  %1937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1846, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.i32 %1937, 0
  %1939 = lshr i32 %1938, 7
  %1940 = and i32 %1939, 32752
  %1941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1940)  ; LegacyF16ToF32(value)
  %1942 = fmul fast float %1934, 0xBFE62E4300000000
  %1943 = fmul fast float %1942, %1941
  %1944 = fmul fast float %1935, 0xBFE62E4300000000
  %1945 = fmul fast float %1944, %1941
  %1946 = fmul fast float %1936, 0xBFE62E4300000000
  %1947 = fmul fast float %1946, %1941
  %1948 = select i1 %1931, float %1943, float 1.270000e+02
  %1949 = select i1 %1932, float %1945, float 1.270000e+02
  %1950 = select i1 %1933, float %1947, float 1.270000e+02
  %1951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1952 = extractvalue %dx.types.ResRet.i32 %1951, 0
  %1953 = and i32 %1952, 10240
  %1954 = icmp eq i32 %1953, 0
  br i1 %1954, label %1999, label %1955

; <label>:1955                                    ; preds = %1927
  %1956 = add i32 %48, 476
  %1957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.i32 %1957, 0
  %1959 = add i32 %1958, 0
  %1960 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1959, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1961 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1960, %dx.types.Handle %94, float %1354, float %1355, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1962 = extractvalue %dx.types.ResRet.f32 %1961, 1
  %1963 = extractvalue %dx.types.ResRet.f32 %1961, 3
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = and i32 %1965, 1048576
  %1967 = icmp ne i32 %1966, 0
  %1968 = and i32 %1965, 8192
  %1969 = icmp eq i32 %1968, 0
  br i1 %1969, label %1985, label %1970

; <label>:1970                                    ; preds = %1955
  %1971 = extractvalue %dx.types.ResRet.f32 %1961, 2
  %1972 = select i1 %1967, float %1971, float %1962
  %1973 = extractvalue %dx.types.ResRet.f32 %1961, 0
  %1974 = select i1 %1967, float %1973, float %1962
  %1975 = add i32 %48, 112
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = lshr i32 %1977, 16
  %1979 = and i32 %1978, 255
  %1980 = uitofp i32 %1979 to float
  %1981 = fmul fast float %1980, 0x3F80101020000000
  %1982 = fmul fast float %1981, %1974
  %1983 = fmul fast float %1981, %1962
  %1984 = fmul fast float %1981, %1972
  br label %1985

; <label>:1985                                    ; preds = %1970, %1955
  %1986 = phi float [ %1982, %1970 ], [ 0.000000e+00, %1955 ]
  %1987 = phi float [ %1983, %1970 ], [ 0.000000e+00, %1955 ]
  %1988 = phi float [ %1984, %1970 ], [ 0.000000e+00, %1955 ]
  %1989 = and i32 %1965, 2048
  %1990 = icmp eq i32 %1989, 0
  br i1 %1990, label %1999, label %1991

; <label>:1991                                    ; preds = %1985
  %1992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1846, i32 undef)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.i32 %1992, 0
  %1994 = shl i32 %1993, 4
  %1995 = and i32 %1994, 32752
  %1996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1995)  ; LegacyF16ToF32(value)
  %1997 = fmul fast float %1996, %1963
  %1998 = call float @dx.op.binary.f32(i32 35, float %1997, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1999

; <label>:1999                                    ; preds = %1991, %1985, %1927
  %2000 = phi float [ %1986, %1991 ], [ %1986, %1985 ], [ 0.000000e+00, %1927 ]
  %2001 = phi float [ %1987, %1991 ], [ %1987, %1985 ], [ 0.000000e+00, %1927 ]
  %2002 = phi float [ %1988, %1991 ], [ %1988, %1985 ], [ 0.000000e+00, %1927 ]
  %2003 = phi float [ %1998, %1991 ], [ 0x3F70101020000000, %1985 ], [ 0x3F70101020000000, %1927 ]
  %2004 = add i32 %48, 112
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = and i32 %2006, 255
  %2008 = uitofp i32 %2007 to float
  %2009 = lshr i32 %2006, 8
  %2010 = and i32 %2009, 255
  %2011 = uitofp i32 %2010 to float
  %2012 = call float @dx.op.dot3.f32(i32 55, float %1762, float %1763, float %1764, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2013 = fmul fast float %2011, %2012
  %2014 = fadd fast float %2013, %2008
  %2015 = fmul fast float %2014, 0x3F70101020000000
  %2016 = call float @dx.op.unary.f32(i32 7, float %2015)  ; Saturate(value)
  br i1 %1246, label %2017, label %2052

; <label>:2017                                    ; preds = %1999
  %2018 = fmul fast float %2003, 2.000000e+00
  %2019 = fcmp fast olt float %1948, 1.270000e+02
  %2020 = fcmp fast olt float %1949, 1.270000e+02
  %2021 = fcmp fast olt float %1950, 1.270000e+02
  %2022 = fmul fast float %1948, 0xBFF7154760000000
  %2023 = fmul fast float %2022, %2018
  %2024 = fmul fast float %1949, 0xBFF7154760000000
  %2025 = fmul fast float %2024, %2018
  %2026 = fmul fast float %1950, 0xBFF7154760000000
  %2027 = fmul fast float %2026, %2018
  %2028 = call float @dx.op.unary.f32(i32 21, float %2023)  ; Exp(value)
  %2029 = call float @dx.op.unary.f32(i32 21, float %2025)  ; Exp(value)
  %2030 = call float @dx.op.unary.f32(i32 21, float %2027)  ; Exp(value)
  %2031 = call float @dx.op.unary.f32(i32 7, float %2028)  ; Saturate(value)
  %2032 = call float @dx.op.unary.f32(i32 7, float %2029)  ; Saturate(value)
  %2033 = call float @dx.op.unary.f32(i32 7, float %2030)  ; Saturate(value)
  %2034 = fadd fast float %2031, -1.000000e+00
  %2035 = select i1 %2019, float %2034, float -1.000000e+00
  %2036 = fadd fast float %2032, -1.000000e+00
  %2037 = select i1 %2020, float %2036, float -1.000000e+00
  %2038 = fadd fast float %2033, -1.000000e+00
  %2039 = select i1 %2021, float %2038, float -1.000000e+00
  %2040 = fmul fast float %2035, %1542
  %2041 = fmul fast float %2037, %1542
  %2042 = fmul fast float %2039, %1542
  %2043 = fadd fast float %2040, 1.000000e+00
  %2044 = fadd fast float %2041, 1.000000e+00
  %2045 = fadd fast float %2042, 1.000000e+00
  %2046 = fmul fast float %2043, %1227
  %2047 = fmul fast float %2044, %1228
  %2048 = fmul fast float %2045, %1229
  %2049 = fmul fast float %2043, %1230
  %2050 = fmul fast float %2044, %1231
  %2051 = fmul fast float %2045, %1232
  br label %2052

; <label>:2052                                    ; preds = %2017, %1999
  %2053 = phi float [ %2046, %2017 ], [ %1227, %1999 ]
  %2054 = phi float [ %2047, %2017 ], [ %1228, %1999 ]
  %2055 = phi float [ %2048, %2017 ], [ %1229, %1999 ]
  %2056 = phi float [ %2049, %2017 ], [ %1230, %1999 ]
  %2057 = phi float [ %2050, %2017 ], [ %1231, %1999 ]
  %2058 = phi float [ %2051, %2017 ], [ %1232, %1999 ]
  %2059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.i32 %2059, 0
  %2061 = and i32 %2060, 3
  %2062 = icmp eq i32 %2061, 3
  br i1 %2062, label %2141, label %2063

; <label>:2063                                    ; preds = %2052
  %2064 = and i32 %2060, 16
  %2065 = icmp ne i32 %2064, 0
  %2066 = select i1 %2065, float %1542, float 0.000000e+00
  %2067 = icmp eq i32 %2061, 0
  br i1 %2067, label %2068, label %2096

; <label>:2068                                    ; preds = %2063
  %2069 = and i32 %2060, 64
  %2070 = icmp ne i32 %2069, 0
  %2071 = select i1 %2070, float %1542, float 0.000000e+00
  %2072 = fsub fast float %1762, %2053
  %2073 = fsub fast float %1763, %2054
  %2074 = fsub fast float %1764, %2055
  %2075 = fmul fast float %2066, %2072
  %2076 = fmul fast float %2066, %2073
  %2077 = fmul fast float %2066, %2074
  %2078 = fadd fast float %2075, %2053
  %2079 = fadd fast float %2076, %2054
  %2080 = fadd fast float %2077, %2055
  %2081 = fsub fast float %1748, %1239
  %2082 = fmul fast float %2066, %2081
  %2083 = fadd fast float %2082, %1239
  %2084 = fsub fast float %1890, %2056
  %2085 = fsub fast float %1891, %2057
  %2086 = fsub fast float %1892, %2058
  %2087 = fmul fast float %2071, %2084
  %2088 = fmul fast float %2071, %2085
  %2089 = fmul fast float %2071, %2086
  %2090 = fadd fast float %2087, %2056
  %2091 = fadd fast float %2088, %2057
  %2092 = fadd fast float %2089, %2058
  %2093 = fsub fast float %2016, %1244
  %2094 = fmul fast float %2066, %2093
  %2095 = fadd fast float %2094, %1244
  br label %2141

; <label>:2096                                    ; preds = %2063
  %2097 = icmp eq i32 %2061, 1
  br i1 %2097, label %2098, label %2111

; <label>:2098                                    ; preds = %2096
  %2099 = fadd fast float %1762, -1.000000e+00
  %2100 = fadd fast float %1763, -1.000000e+00
  %2101 = fadd fast float %1764, -1.000000e+00
  %2102 = fmul fast float %2066, %2099
  %2103 = fmul fast float %2066, %2100
  %2104 = fmul fast float %2066, %2101
  %2105 = fadd fast float %2102, 1.000000e+00
  %2106 = fadd fast float %2103, 1.000000e+00
  %2107 = fadd fast float %2104, 1.000000e+00
  %2108 = fmul fast float %2105, %2053
  %2109 = fmul fast float %2106, %2054
  %2110 = fmul fast float %2107, %2055
  br label %2141

; <label>:2111                                    ; preds = %2096
  %2112 = icmp eq i32 %2061, 2
  br i1 %2112, label %2113, label %2141

; <label>:2113                                    ; preds = %2111
  %2114 = call float @dx.op.unary.f32(i32 24, float %1762)  ; Sqrt(value)
  %2115 = call float @dx.op.unary.f32(i32 24, float %1763)  ; Sqrt(value)
  %2116 = call float @dx.op.unary.f32(i32 24, float %1764)  ; Sqrt(value)
  %2117 = fadd fast float %2114, -5.000000e-01
  %2118 = fadd fast float %2115, -5.000000e-01
  %2119 = fadd fast float %2116, -5.000000e-01
  %2120 = fmul fast float %2117, %2066
  %2121 = fmul fast float %2118, %2066
  %2122 = fmul fast float %2119, %2066
  %2123 = fadd fast float %2120, 5.000000e-01
  %2124 = fadd fast float %2121, 5.000000e-01
  %2125 = fadd fast float %2122, 5.000000e-01
  %2126 = fmul fast float %2123, 2.000000e+00
  %2127 = fsub fast float 1.000000e+00, %2126
  %2128 = fmul fast float %2127, %2053
  %2129 = fadd fast float %2128, %2126
  %2130 = fmul fast float %2129, %2053
  %2131 = fmul fast float %2124, 2.000000e+00
  %2132 = fsub fast float 1.000000e+00, %2131
  %2133 = fmul fast float %2132, %2054
  %2134 = fadd fast float %2133, %2131
  %2135 = fmul fast float %2134, %2054
  %2136 = fmul fast float %2125, 2.000000e+00
  %2137 = fsub fast float 1.000000e+00, %2136
  %2138 = fmul fast float %2137, %2055
  %2139 = fadd fast float %2138, %2136
  %2140 = fmul fast float %2139, %2055
  br label %2141

; <label>:2141                                    ; preds = %2113, %2111, %2098, %2068, %2052
  %2142 = phi float [ %2053, %2052 ], [ %2130, %2113 ], [ %2053, %2111 ], [ %2108, %2098 ], [ %2078, %2068 ]
  %2143 = phi float [ %2054, %2052 ], [ %2135, %2113 ], [ %2054, %2111 ], [ %2109, %2098 ], [ %2079, %2068 ]
  %2144 = phi float [ %2055, %2052 ], [ %2140, %2113 ], [ %2055, %2111 ], [ %2110, %2098 ], [ %2080, %2068 ]
  %2145 = phi float [ %2056, %2052 ], [ %2056, %2113 ], [ %2056, %2111 ], [ %2056, %2098 ], [ %2090, %2068 ]
  %2146 = phi float [ %2057, %2052 ], [ %2057, %2113 ], [ %2057, %2111 ], [ %2057, %2098 ], [ %2091, %2068 ]
  %2147 = phi float [ %2058, %2052 ], [ %2058, %2113 ], [ %2058, %2111 ], [ %2058, %2098 ], [ %2092, %2068 ]
  %2148 = phi float [ %1239, %2052 ], [ %1239, %2113 ], [ %1239, %2111 ], [ %1239, %2098 ], [ %2083, %2068 ]
  %2149 = phi float [ %1244, %2052 ], [ %1244, %2113 ], [ %1244, %2111 ], [ %1244, %2098 ], [ %2095, %2068 ]
  %2150 = and i32 %2060, 12
  %2151 = icmp eq i32 %2150, 12
  br i1 %2151, label %2282, label %2152

; <label>:2152                                    ; preds = %2141
  %2153 = and i32 %2060, 2097184
  %2154 = icmp eq i32 %2153, 2097184
  %2155 = select i1 %2154, float %1542, float 0.000000e+00
  %2156 = and i32 %2060, 4194336
  %2157 = icmp eq i32 %2156, 4194336
  %2158 = select i1 %2157, float %1542, float 0.000000e+00
  %2159 = and i32 %2060, 8388640
  %2160 = icmp eq i32 %2159, 8388640
  %2161 = select i1 %2160, float %1542, float 0.000000e+00
  %2162 = and i32 %2060, 1024
  %2163 = icmp ne i32 %2162, 0
  %2164 = select i1 %2163, float %1542, float 0.000000e+00
  %2165 = and i32 %2060, 2048
  %2166 = icmp ne i32 %2165, 0
  %2167 = select i1 %2166, float %1542, float 0.000000e+00
  %2168 = and i32 %2060, 8192
  %2169 = icmp ne i32 %2168, 0
  %2170 = select i1 %2169, float %1542, float 0.000000e+00
  %2171 = icmp eq i32 %2150, 0
  br i1 %2171, label %2172, label %2206

; <label>:2172                                    ; preds = %2152
  %2173 = fsub fast float %1843, %1225
  %2174 = fsub fast float %1844, %1226
  %2175 = fmul fast float %2155, %2173
  %2176 = fmul fast float %2155, %2174
  %2177 = fadd fast float %2175, %1225
  %2178 = fadd fast float %2176, %1226
  %2179 = fsub fast float %1845, %1242
  %2180 = fmul fast float %2158, %2179
  %2181 = fadd fast float %2180, %1242
  %2182 = fsub fast float %1842, %1241
  %2183 = fmul fast float %2161, %2182
  %2184 = fadd fast float %2183, %1241
  %2185 = fsub fast float %1948, %1233
  %2186 = fsub fast float %1949, %1234
  %2187 = fsub fast float %1950, %1235
  %2188 = fmul fast float %2164, %2185
  %2189 = fmul fast float %2164, %2186
  %2190 = fmul fast float %2164, %2187
  %2191 = fadd fast float %2188, %1233
  %2192 = fadd fast float %2189, %1234
  %2193 = fadd fast float %2190, %1235
  %2194 = fsub fast float %2003, %1243
  %2195 = fmul fast float %2167, %2194
  %2196 = fadd fast float %2195, %1243
  %2197 = fsub fast float %2000, %1236
  %2198 = fsub fast float %2001, %1237
  %2199 = fsub fast float %2002, %1238
  %2200 = fmul fast float %2170, %2197
  %2201 = fmul fast float %2170, %2198
  %2202 = fmul fast float %2170, %2199
  %2203 = fadd fast float %2200, %1236
  %2204 = fadd fast float %2201, %1237
  %2205 = fadd fast float %2202, %1238
  br label %2282

; <label>:2206                                    ; preds = %2152
  %2207 = icmp eq i32 %2150, 4
  br i1 %2207, label %2208, label %2254

; <label>:2208                                    ; preds = %2206
  %2209 = fmul fast float %2155, %1843
  %2210 = fmul fast float %2155, %1844
  %2211 = fadd fast float %2209, %1225
  %2212 = fadd fast float %2210, %1226
  %2213 = call float @dx.op.binary.f32(i32 36, float %1242, float %1845)  ; FMin(a,b)
  %2214 = fsub fast float %2213, %1242
  %2215 = fmul fast float %2214, %2158
  %2216 = fadd fast float %2215, %1242
  %2217 = fadd fast float %1842, %1241
  %2218 = fmul fast float %2217, 0x3FF337FAE0000000
  %2219 = fmul fast float %1241, %1241
  %2220 = fmul fast float %1842, %1842
  %2221 = fadd fast float %2220, %2219
  %2222 = fmul fast float %2221, 0x3FE5152B00000000
  %2223 = fmul fast float %1241, 0xBFCC1F85E0000000
  %2224 = fmul fast float %2223, %1842
  %2225 = fadd fast float %2224, 0xBFE1363700000000
  %2226 = fadd fast float %2225, %2218
  %2227 = fsub fast float %2226, %2222
  %2228 = fmul fast float %2217, 0x3FBA6F0D00000000
  %2229 = fmul fast float %2221, 0x3FD0432880000000
  %2230 = fmul fast float %1241, 0xBFEF110800000000
  %2231 = fmul fast float %2230, %1842
  %2232 = fadd fast float %2231, 1.000000e+00
  %2233 = fsub fast float %2232, %2228
  %2234 = fadd fast float %2233, %2229
  %2235 = fdiv fast float %2227, %2234
  %2236 = call float @dx.op.unary.f32(i32 7, float %2235)  ; Saturate(value)
  %2237 = fsub fast float %2236, %1241
  %2238 = fmul fast float %2237, %2161
  %2239 = fadd fast float %2238, %1241
  %2240 = fmul fast float %2164, %1948
  %2241 = fmul fast float %2164, %1949
  %2242 = fmul fast float %2164, %1950
  %2243 = fadd fast float %2240, %1233
  %2244 = fadd fast float %2241, %1234
  %2245 = fadd fast float %2242, %1235
  %2246 = fmul fast float %2167, %2003
  %2247 = fadd fast float %2246, %1243
  %2248 = fmul fast float %2170, %2000
  %2249 = fmul fast float %2170, %2001
  %2250 = fmul fast float %2170, %2002
  %2251 = fadd fast float %2248, %1236
  %2252 = fadd fast float %2249, %1237
  %2253 = fadd fast float %2250, %1238
  br label %2282

; <label>:2254                                    ; preds = %2206
  %2255 = icmp eq i32 %2150, 8
  br i1 %2255, label %2256, label %2282

; <label>:2256                                    ; preds = %2254
  %2257 = fmul fast float %2155, %1843
  %2258 = fmul fast float %2155, %1844
  %2259 = fadd fast float %2257, %1225
  %2260 = fadd fast float %2258, %1226
  %2261 = call float @dx.op.binary.f32(i32 36, float %1242, float %1845)  ; FMin(a,b)
  %2262 = fsub fast float %2261, %1242
  %2263 = fmul fast float %2262, %2158
  %2264 = fadd fast float %2263, %1242
  %2265 = fsub fast float %1842, %1241
  %2266 = fmul fast float %2161, %2265
  %2267 = fadd fast float %2266, %1241
  %2268 = fmul fast float %2164, %1948
  %2269 = fmul fast float %2164, %1949
  %2270 = fmul fast float %2164, %1950
  %2271 = fadd fast float %2268, %1233
  %2272 = fadd fast float %2269, %1234
  %2273 = fadd fast float %2270, %1235
  %2274 = fmul fast float %2167, %2003
  %2275 = fadd fast float %2274, %1243
  %2276 = fmul fast float %2170, %2000
  %2277 = fmul fast float %2170, %2001
  %2278 = fmul fast float %2170, %2002
  %2279 = fadd fast float %2276, %1236
  %2280 = fadd fast float %2277, %1237
  %2281 = fadd fast float %2278, %1238
  br label %2282

; <label>:2282                                    ; preds = %2256, %2254, %2208, %2172, %2141, %1541, %1245, %1224
  %2283 = phi float [ %1225, %2141 ], [ %1225, %1541 ], [ %1225, %1224 ], [ %2259, %2256 ], [ %1225, %2254 ], [ %2211, %2208 ], [ %2177, %2172 ], [ %1225, %1245 ]
  %2284 = phi float [ %1226, %2141 ], [ %1226, %1541 ], [ %1226, %1224 ], [ %2260, %2256 ], [ %1226, %2254 ], [ %2212, %2208 ], [ %2178, %2172 ], [ %1226, %1245 ]
  %2285 = phi float [ %2142, %2141 ], [ %1227, %1541 ], [ %1227, %1224 ], [ %2142, %2256 ], [ %2142, %2254 ], [ %2142, %2208 ], [ %2142, %2172 ], [ %1227, %1245 ]
  %2286 = phi float [ %2143, %2141 ], [ %1228, %1541 ], [ %1228, %1224 ], [ %2143, %2256 ], [ %2143, %2254 ], [ %2143, %2208 ], [ %2143, %2172 ], [ %1228, %1245 ]
  %2287 = phi float [ %2144, %2141 ], [ %1229, %1541 ], [ %1229, %1224 ], [ %2144, %2256 ], [ %2144, %2254 ], [ %2144, %2208 ], [ %2144, %2172 ], [ %1229, %1245 ]
  %2288 = phi float [ %2145, %2141 ], [ %1230, %1541 ], [ %1230, %1224 ], [ %2145, %2256 ], [ %2145, %2254 ], [ %2145, %2208 ], [ %2145, %2172 ], [ %1230, %1245 ]
  %2289 = phi float [ %2146, %2141 ], [ %1231, %1541 ], [ %1231, %1224 ], [ %2146, %2256 ], [ %2146, %2254 ], [ %2146, %2208 ], [ %2146, %2172 ], [ %1231, %1245 ]
  %2290 = phi float [ %2147, %2141 ], [ %1232, %1541 ], [ %1232, %1224 ], [ %2147, %2256 ], [ %2147, %2254 ], [ %2147, %2208 ], [ %2147, %2172 ], [ %1232, %1245 ]
  %2291 = phi float [ %1233, %2141 ], [ %1233, %1541 ], [ %1233, %1224 ], [ %2271, %2256 ], [ %1233, %2254 ], [ %2243, %2208 ], [ %2191, %2172 ], [ %1233, %1245 ]
  %2292 = phi float [ %1234, %2141 ], [ %1234, %1541 ], [ %1234, %1224 ], [ %2272, %2256 ], [ %1234, %2254 ], [ %2244, %2208 ], [ %2192, %2172 ], [ %1234, %1245 ]
  %2293 = phi float [ %1235, %2141 ], [ %1235, %1541 ], [ %1235, %1224 ], [ %2273, %2256 ], [ %1235, %2254 ], [ %2245, %2208 ], [ %2193, %2172 ], [ %1235, %1245 ]
  %2294 = phi float [ %1236, %2141 ], [ %1236, %1541 ], [ %1236, %1224 ], [ %2279, %2256 ], [ %1236, %2254 ], [ %2251, %2208 ], [ %2203, %2172 ], [ %1236, %1245 ]
  %2295 = phi float [ %1237, %2141 ], [ %1237, %1541 ], [ %1237, %1224 ], [ %2280, %2256 ], [ %1237, %2254 ], [ %2252, %2208 ], [ %2204, %2172 ], [ %1237, %1245 ]
  %2296 = phi float [ %1238, %2141 ], [ %1238, %1541 ], [ %1238, %1224 ], [ %2281, %2256 ], [ %1238, %2254 ], [ %2253, %2208 ], [ %2205, %2172 ], [ %1238, %1245 ]
  %2297 = phi float [ %2148, %2141 ], [ %1239, %1541 ], [ %1239, %1224 ], [ %2148, %2256 ], [ %2148, %2254 ], [ %2148, %2208 ], [ %2148, %2172 ], [ %1239, %1245 ]
  %2298 = phi float [ %1241, %2141 ], [ %1241, %1541 ], [ %1241, %1224 ], [ %2267, %2256 ], [ %1241, %2254 ], [ %2239, %2208 ], [ %2184, %2172 ], [ %1241, %1245 ]
  %2299 = phi float [ %1242, %2141 ], [ %1242, %1541 ], [ %1242, %1224 ], [ %2264, %2256 ], [ %1242, %2254 ], [ %2216, %2208 ], [ %2181, %2172 ], [ %1242, %1245 ]
  %2300 = phi float [ %1243, %2141 ], [ %1243, %1541 ], [ %1243, %1224 ], [ %2275, %2256 ], [ %1243, %2254 ], [ %2247, %2208 ], [ %2196, %2172 ], [ %1243, %1245 ]
  %2301 = phi float [ %2149, %2141 ], [ %1244, %1541 ], [ %1244, %1224 ], [ %2149, %2256 ], [ %2149, %2254 ], [ %2149, %2208 ], [ %2149, %2172 ], [ %1244, %1245 ]
  br i1 %399, label %3339, label %2302

; <label>:2302                                    ; preds = %2282
  %2303 = icmp ult i32 %455, 3
  %2304 = add i32 %48, 56
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = add i32 %48, 60
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = or i32 %2309, %2306
  %2311 = icmp eq i32 %2310, 0
  br i1 %2311, label %3339, label %2312

; <label>:2312                                    ; preds = %2302
  %2313 = and i32 %2306, 262144
  %2314 = icmp ne i32 %2313, 0
  %2315 = select i1 %2314, float %51, float 1.000000e+00
  %2316 = select i1 %2314, float %52, float 0.000000e+00
  %2317 = select i1 %2314, float %53, float 0.000000e+00
  %2318 = select i1 %2314, float %54, float 1.000000e+00
  %2319 = select i1 %2314, float %55, float %76
  %2320 = select i1 %2314, float %56, float %77
  %2321 = add i32 %48, 316
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = lshr i32 %2323, 16
  %2325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2324)  ; LegacyF16ToF32(value)
  %2326 = fmul fast float %2325, 0x3F50624DE0000000
  %2327 = add i32 %48, 120
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2327, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = lshr i32 %2329, 16
  %2331 = and i32 %2330, 255
  %2332 = lshr i32 %2329, 24
  %2333 = add i32 %48, 324
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2333, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = and i32 %2335, 65535
  %2337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2336)  ; LegacyF16ToF32(value)
  %2338 = lshr i32 %2335, 16
  %2339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2338)  ; LegacyF16ToF32(value)
  %2340 = add i32 %48, 64
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = lshr i32 %2342, 22
  %2344 = shl nuw nsw i32 %2343, 5
  %2345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2344)  ; LegacyF16ToF32(value)
  %2346 = shl i32 %2342, 4
  %2347 = and i32 %2346, 32752
  %2348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2347)  ; LegacyF16ToF32(value)
  %2349 = lshr i32 %2342, 7
  %2350 = and i32 %2349, 32752
  %2351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2350)  ; LegacyF16ToF32(value)
  %2352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2353 = extractvalue %dx.types.CBufRet.f32 %2352, 3
  %2354 = fmul fast float %2353, 1.000000e+03
  %2355 = fmul fast float %349, %2354
  %2356 = call float @dx.op.unary.f32(i32 22, float %2355)  ; Frc(value)
  %2357 = fadd fast float %2356, %339
  %2358 = fmul fast float %350, %2354
  %2359 = call float @dx.op.unary.f32(i32 22, float %2358)  ; Frc(value)
  %2360 = fadd fast float %2359, %341
  %2361 = fmul fast float %2326, %2354
  %2362 = call float @dx.op.unary.f32(i32 22, float %2361)  ; Frc(value)
  %2363 = fmul fast float %2362, 0x401921FB60000000
  %2364 = fadd fast float %2363, %2345
  %2365 = call float @dx.op.unary.f32(i32 13, float %2364)  ; Sin(value)
  %2366 = call float @dx.op.unary.f32(i32 12, float %2364)  ; Cos(value)
  %2367 = fsub fast float -0.000000e+00, %2365
  %2368 = fadd fast float %2319, -5.000000e-01
  %2369 = fadd fast float %2320, -5.000000e-01
  %2370 = fmul fast float %2337, %2368
  %2371 = fmul fast float %2339, %2369
  %2372 = fadd fast float %2370, 5.000000e-01
  %2373 = fadd fast float %2371, 5.000000e-01
  %2374 = fmul fast float %2348, %2372
  %2375 = fmul fast float %2351, %2373
  %2376 = fmul fast float %2366, %2374
  %2377 = call float @dx.op.tertiary.f32(i32 46, float %2367, float %2375, float %2376)  ; FMad(a,b,c)
  %2378 = fmul fast float %2365, %2374
  %2379 = call float @dx.op.tertiary.f32(i32 46, float %2366, float %2375, float %2378)  ; FMad(a,b,c)
  %2380 = fadd fast float %2357, %2377
  %2381 = fadd fast float %2360, %2379
  %2382 = icmp ugt i32 %2331, 1
  %2383 = icmp ugt i32 %2329, 33554431
  %2384 = or i1 %2383, %2382
  br i1 %2384, label %2385, label %2410

; <label>:2385                                    ; preds = %2312
  %2386 = add i32 %48, 260
  %2387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2386, i32 undef)  ; BufferLoad(srv,index,wot)
  %2388 = extractvalue %dx.types.ResRet.i32 %2387, 0
  %2389 = lshr i32 %2388, 16
  %2390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2389)  ; LegacyF16ToF32(value)
  %2391 = fmul fast float %2353, %2390
  %2392 = call float @dx.op.unary.f32(i32 22, float %2391)  ; Frc(value)
  %2393 = mul nuw nsw i32 %2331, %2332
  %2394 = uitofp i32 %2393 to float
  %2395 = fmul fast float %2392, %2394
  %2396 = call float @dx.op.unary.f32(i32 27, float %2395)  ; Round_ni(value)
  %2397 = fptoui float %2396 to i32
  %2398 = urem i32 %2397, %2331
  %2399 = udiv i32 %2397, %2332
  %2400 = call float @dx.op.unary.f32(i32 22, float %2380)  ; Frc(value)
  %2401 = call float @dx.op.unary.f32(i32 22, float %2381)  ; Frc(value)
  %2402 = uitofp i32 %2398 to float
  %2403 = uitofp i32 %2399 to float
  %2404 = fadd fast float %2400, %2402
  %2405 = fadd fast float %2401, %2403
  %2406 = uitofp i32 %2331 to float
  %2407 = uitofp i32 %2332 to float
  %2408 = fdiv fast float %2404, %2406
  %2409 = fdiv fast float %2405, %2407
  br label %2410

; <label>:2410                                    ; preds = %2385, %2312
  %2411 = phi float [ %2408, %2385 ], [ %2380, %2312 ]
  %2412 = phi float [ %2409, %2385 ], [ %2381, %2312 ]
  %2413 = and i32 %2306, 16777216
  %2414 = icmp eq i32 %2413, 0
  br i1 %2414, label %2524, label %2415

; <label>:2415                                    ; preds = %2410
  %2416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2417 = extractvalue %dx.types.CBufRet.f32 %2416, 0
  %2418 = extractvalue %dx.types.CBufRet.f32 %2416, 1
  %2419 = extractvalue %dx.types.CBufRet.f32 %2416, 2
  %2420 = fadd fast float %2417, %152
  %2421 = fadd fast float %2418, %153
  %2422 = fadd fast float %2419, %154
  %2423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2424 = extractvalue %dx.types.CBufRet.f32 %2423, 0
  %2425 = call float @dx.op.unary.f32(i32 7, float %2424)  ; Saturate(value)
  %2426 = icmp eq i32 %49, 65535
  br i1 %2426, label %2521, label %2427

; <label>:2427                                    ; preds = %2415
  %2428 = lshr i32 %49, 1
  %2429 = shl i32 %2428, 2
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2429, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = and i32 %49, 1
  %2433 = icmp ne i32 %2432, 0
  %2434 = lshr i32 %2431, 16
  %2435 = and i32 %2431, 65535
  %2436 = select i1 %2433, i32 %2434, i32 %2435
  %2437 = icmp eq i32 %2436, 65535
  br i1 %2437, label %2517, label %2438

; <label>:2438                                    ; preds = %2427
  %2439 = mul nuw nsw i32 %2436, 40
  %2440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2439, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.f32 %2440, 0
  %2442 = extractvalue %dx.types.ResRet.f32 %2440, 1
  %2443 = extractvalue %dx.types.ResRet.f32 %2440, 2
  %2444 = add nuw nsw i32 %2439, 12
  %2445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2444, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.f32 %2445, 0
  %2447 = extractvalue %dx.types.ResRet.f32 %2445, 1
  %2448 = extractvalue %dx.types.ResRet.f32 %2445, 2
  %2449 = add nuw nsw i32 %2439, 24
  %2450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2449, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.f32 %2450, 0
  %2452 = extractvalue %dx.types.ResRet.f32 %2450, 1
  %2453 = extractvalue %dx.types.ResRet.f32 %2450, 2
  %2454 = add nuw nsw i32 %2439, 36
  %2455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2454, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.f32 %2455, 0
  %2457 = fsub fast float %2420, %2441
  %2458 = fsub fast float %2421, %2442
  %2459 = fsub fast float %2422, %2443
  %2460 = fmul fast float %2456, %2457
  %2461 = fmul fast float %2456, %2458
  %2462 = fmul fast float %2456, %2459
  %2463 = call float @dx.op.unary.f32(i32 27, float %2460)  ; Round_ni(value)
  %2464 = call float @dx.op.unary.f32(i32 27, float %2461)  ; Round_ni(value)
  %2465 = call float @dx.op.unary.f32(i32 27, float %2462)  ; Round_ni(value)
  %2466 = fadd fast float %2463, 5.000000e-01
  %2467 = fadd fast float %2464, 5.000000e-01
  %2468 = fadd fast float %2465, 5.000000e-01
  %2469 = fmul fast float %2466, %2446
  %2470 = fmul fast float %2467, %2447
  %2471 = fmul fast float %2468, %2448
  %2472 = shl i32 %49, 2
  %2473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2472, i32 undef)  ; BufferLoad(srv,index,wot)
  %2474 = extractvalue %dx.types.ResRet.i32 %2473, 0
  %2475 = add i32 %2474, 0
  %2476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2475, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2477 = call float @dx.op.unary.f32(i32 22, float %2469)  ; Frc(value)
  %2478 = call float @dx.op.unary.f32(i32 22, float %2470)  ; Frc(value)
  %2479 = call float @dx.op.unary.f32(i32 22, float %2471)  ; Frc(value)
  %2480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2476, %dx.types.Handle %43, float %2477, float %2478, float %2479, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2481 = extractvalue %dx.types.ResRet.f32 %2480, 0
  %2482 = extractvalue %dx.types.ResRet.f32 %2480, 1
  %2483 = extractvalue %dx.types.ResRet.f32 %2480, 2
  %2484 = fmul fast float %2481, 1.023000e+03
  %2485 = fmul fast float %2482, 1.023000e+03
  %2486 = fmul fast float %2483, 1.023000e+03
  %2487 = fadd fast float %2484, 5.000000e-01
  %2488 = fadd fast float %2485, 5.000000e-01
  %2489 = fadd fast float %2486, 5.000000e-01
  %2490 = call float @dx.op.unary.f32(i32 27, float %2487)  ; Round_ni(value)
  %2491 = call float @dx.op.unary.f32(i32 27, float %2488)  ; Round_ni(value)
  %2492 = call float @dx.op.unary.f32(i32 27, float %2489)  ; Round_ni(value)
  %2493 = fsub fast float %2460, %2463
  %2494 = fsub fast float %2461, %2464
  %2495 = fsub fast float %2462, %2465
  %2496 = fmul fast float %2493, 7.500000e-01
  %2497 = fmul fast float %2494, 7.500000e-01
  %2498 = fmul fast float %2495, 7.500000e-01
  %2499 = fadd fast float %2463, 1.250000e-01
  %2500 = fadd fast float %2499, %2496
  %2501 = fadd fast float %2500, %2490
  %2502 = fadd fast float %2464, 1.250000e-01
  %2503 = fadd fast float %2502, %2497
  %2504 = fadd fast float %2503, %2491
  %2505 = fadd fast float %2465, 1.250000e-01
  %2506 = fadd fast float %2505, %2498
  %2507 = fadd fast float %2506, %2492
  %2508 = fmul fast float %2501, %2451
  %2509 = fmul fast float %2504, %2452
  %2510 = fmul fast float %2507, %2453
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2472, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = add i32 %2512, 0
  %2514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2513, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2514, %dx.types.Handle %41, float %2508, float %2509, float %2510, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2516 = extractvalue %dx.types.ResRet.f32 %2515, 0
  br label %2517

; <label>:2517                                    ; preds = %2438, %2427
  %2518 = phi float [ %2516, %2438 ], [ -1.000000e+00, %2427 ]
  %2519 = fadd fast float %2518, %2425
  %2520 = call float @dx.op.unary.f32(i32 7, float %2519)  ; Saturate(value)
  br label %2521

; <label>:2521                                    ; preds = %2517, %2415
  %2522 = phi float [ %2520, %2517 ], [ %2425, %2415 ]
  %2523 = fmul fast float %2522, %451
  br label %2524

; <label>:2524                                    ; preds = %2521, %2410
  %2525 = phi float [ %2523, %2521 ], [ %451, %2410 ]
  %2526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2527 = extractvalue %dx.types.ResRet.i32 %2526, 0
  %2528 = and i32 %2527, 256
  %2529 = icmp eq i32 %2528, 0
  br i1 %2529, label %2576, label %2530

; <label>:2530                                    ; preds = %2524
  %2531 = add i32 %48, 432
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2531, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = add i32 %2533, 0
  %2535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2534, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2535, %dx.types.Handle %94, float %2411, float %2412, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2537 = extractvalue %dx.types.ResRet.f32 %2536, 0
  %2538 = add i32 %48, 132
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = shl i32 %2540, 4
  %2542 = and i32 %2541, 32752
  %2543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2542)  ; LegacyF16ToF32(value)
  %2544 = lshr i32 %2540, 7
  %2545 = and i32 %2544, 32752
  %2546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2545)  ; LegacyF16ToF32(value)
  %2547 = fsub fast float 1.000000e+00, %2525
  %2548 = call float @dx.op.binary.f32(i32 35, float %2547, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2549 = bitcast float %2525 to i32
  %2550 = sitofp i32 %2549 to float
  %2551 = fadd fast float %2550, 0xC1CFBF8940000000
  %2552 = fmul fast float %2546, %2551
  %2553 = fadd fast float %2552, 0x41CFBF8940000000
  %2554 = fptosi float %2553 to i32
  %2555 = bitcast i32 %2554 to float
  %2556 = bitcast float %2548 to i32
  %2557 = sitofp i32 %2556 to float
  %2558 = fadd fast float %2557, 0xC1CFBF8940000000
  %2559 = fmul fast float %2558, %2546
  %2560 = fadd fast float %2559, 0x41CFBF8940000000
  %2561 = fptosi float %2560 to i32
  %2562 = bitcast i32 %2561 to float
  %2563 = fmul fast float %2555, %2543
  %2564 = fmul fast float %2562, %2543
  %2565 = fsub fast float %2548, %2563
  %2566 = fadd fast float %2564, %2548
  %2567 = call float @dx.op.unary.f32(i32 7, float %2565)  ; Saturate(value)
  %2568 = call float @dx.op.unary.f32(i32 7, float %2566)  ; Saturate(value)
  %2569 = fsub fast float %2537, %2567
  %2570 = fsub fast float %2568, %2567
  %2571 = bitcast float %2570 to i32
  %2572 = sub nsw i32 2129859010, %2571
  %2573 = bitcast i32 %2572 to float
  %2574 = fmul fast float %2573, %2569
  %2575 = call float @dx.op.unary.f32(i32 7, float %2574)  ; Saturate(value)
  br label %2576

; <label>:2576                                    ; preds = %2530, %2524
  %2577 = phi float [ %2575, %2530 ], [ %2525, %2524 ]
  %2578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.i32 %2578, 0
  %2580 = and i32 %2579, 128
  %2581 = icmp eq i32 %2580, 0
  br i1 %2581, label %2598, label %2582

; <label>:2582                                    ; preds = %2576
  %2583 = add i32 %48, 416
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = add i32 %2585, 0
  %2587 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2586, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2588 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2587, %dx.types.Handle %94, float %2411, float %2412, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2589 = extractvalue %dx.types.ResRet.f32 %2588, 0
  %2590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2591 = extractvalue %dx.types.ResRet.i32 %2590, 0
  %2592 = and i32 %2591, 524288
  %2593 = icmp ne i32 %2592, 0
  %2594 = fcmp fast ogt float %2589, 0x3FE0101020000000
  %2595 = select i1 %2594, float 1.000000e+00, float 0.000000e+00
  %2596 = select i1 %2593, float %2595, float %2589
  %2597 = fmul fast float %2596, %2577
  br label %2598

; <label>:2598                                    ; preds = %2582, %2576
  %2599 = phi float [ %2597, %2582 ], [ %2577, %2576 ]
  %2600 = fcmp fast ult float %2599, 0x3F70101020000000
  br i1 %2600, label %3339, label %2601

; <label>:2601                                    ; preds = %2598
  %2602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2603 = extractvalue %dx.types.ResRet.i32 %2602, 0
  %2604 = and i32 %2603, 16
  %2605 = icmp eq i32 %2604, 0
  br i1 %2605, label %2804, label %2606

; <label>:2606                                    ; preds = %2601
  %2607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2327, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = add i32 %48, 368
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = add i32 %2611, 0
  %2613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2614 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2613, %dx.types.Handle %93, float %2411, float %2412, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2615 = extractvalue %dx.types.ResRet.f32 %2614, 0
  %2616 = extractvalue %dx.types.ResRet.f32 %2614, 1
  %2617 = extractvalue %dx.types.ResRet.f32 %2614, 2
  %2618 = extractvalue %dx.types.ResRet.f32 %2614, 3
  %2619 = and i32 %2608, 255
  %2620 = uitofp i32 %2619 to float
  %2621 = lshr i32 %2608, 8
  %2622 = and i32 %2621, 255
  %2623 = uitofp i32 %2622 to float
  %2624 = fmul fast float %2618, %2620
  %2625 = fadd fast float %2624, %2623
  %2626 = fmul fast float %2625, 0x3F70101000000000
  %2627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2628 = extractvalue %dx.types.ResRet.i32 %2627, 0
  %2629 = and i32 %2628, 512
  %2630 = icmp eq i32 %2629, 0
  br i1 %2630, label %2639, label %2631

; <label>:2631                                    ; preds = %2606
  %2632 = add i32 %48, 448
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2632, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = add i32 %2634, 0
  %2636 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2635, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2637 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2636, %dx.types.Handle %94, float %2411, float %2412, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2638 = extractvalue %dx.types.ResRet.f32 %2637, 0
  br label %2639

; <label>:2639                                    ; preds = %2631, %2606
  %2640 = phi float [ %2638, %2631 ], [ 1.000000e+00, %2606 ]
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = and i32 %2642, 33554432
  %2644 = icmp eq i32 %2643, 0
  br i1 %2644, label %2751, label %2645

; <label>:2645                                    ; preds = %2639
  %2646 = add i32 %48, 256
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2646, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = and i32 %2648, 65535
  %2650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2649)  ; LegacyF16ToF32(value)
  %2651 = lshr i32 %2648, 16
  %2652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2651)  ; LegacyF16ToF32(value)
  %2653 = add i32 %48, 260
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = and i32 %2655, 65535
  %2657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2656)  ; LegacyF16ToF32(value)
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = lshr i32 %2659, 24
  %2661 = uitofp i32 %2660 to float
  %2662 = fmul fast float %2661, 0x3F70101020000000
  %2663 = and i32 %2659, 255
  %2664 = uitofp i32 %2663 to float
  %2665 = fmul fast float %2664, 0x3F70101020000000
  %2666 = lshr i32 %2659, 8
  %2667 = and i32 %2666, 255
  %2668 = uitofp i32 %2667 to float
  %2669 = fmul fast float %2668, 0x3F70101020000000
  %2670 = lshr i32 %2659, 16
  %2671 = and i32 %2670, 255
  %2672 = uitofp i32 %2671 to float
  %2673 = fmul fast float %2672, 0x3F70101020000000
  %2674 = add i32 %48, 252
  %2675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2674, i32 undef)  ; BufferLoad(srv,index,wot)
  %2676 = extractvalue %dx.types.ResRet.i32 %2675, 0
  %2677 = lshr i32 %2676, 24
  %2678 = uitofp i32 %2677 to float
  %2679 = fmul fast float %2678, 0x3F70101020000000
  %2680 = and i32 %2676, 255
  %2681 = uitofp i32 %2680 to float
  %2682 = fmul fast float %2681, 0x3F70101020000000
  %2683 = lshr i32 %2676, 8
  %2684 = and i32 %2683, 255
  %2685 = uitofp i32 %2684 to float
  %2686 = fmul fast float %2685, 0x3F70101020000000
  %2687 = lshr i32 %2676, 16
  %2688 = and i32 %2687, 255
  %2689 = uitofp i32 %2688 to float
  %2690 = fmul fast float %2689, 0x3F70101020000000
  %2691 = bitcast float %2615 to i32
  %2692 = ashr i32 %2691, 1
  %2693 = sub nsw i32 1597463174, %2692
  %2694 = bitcast i32 %2693 to float
  %2695 = fmul fast float %2615, 5.000000e-01
  %2696 = fmul fast float %2694, %2694
  %2697 = fmul fast float %2696, %2695
  %2698 = fsub fast float 1.500000e+00, %2697
  %2699 = fmul fast float %2694, %2615
  %2700 = fmul fast float %2699, %2698
  %2701 = bitcast float %2616 to i32
  %2702 = ashr i32 %2701, 1
  %2703 = sub nsw i32 1597463174, %2702
  %2704 = bitcast i32 %2703 to float
  %2705 = fmul fast float %2616, 5.000000e-01
  %2706 = fmul fast float %2704, %2704
  %2707 = fmul fast float %2706, %2705
  %2708 = fsub fast float 1.500000e+00, %2707
  %2709 = fmul fast float %2704, %2616
  %2710 = fmul fast float %2709, %2708
  %2711 = bitcast float %2617 to i32
  %2712 = ashr i32 %2711, 1
  %2713 = sub nsw i32 1597463174, %2712
  %2714 = bitcast i32 %2713 to float
  %2715 = fmul fast float %2617, 5.000000e-01
  %2716 = fmul fast float %2714, %2714
  %2717 = fmul fast float %2716, %2715
  %2718 = fsub fast float 1.500000e+00, %2717
  %2719 = fmul fast float %2714, %2617
  %2720 = fmul fast float %2719, %2718
  %2721 = fsub fast float %2700, %2682
  %2722 = fsub fast float %2710, %2686
  %2723 = fsub fast float %2720, %2690
  %2724 = fmul fast float %2721, %2650
  %2725 = fmul fast float %2722, %2652
  %2726 = fmul fast float %2723, %2657
  %2727 = fadd fast float %2724, %2665
  %2728 = fadd fast float %2725, %2669
  %2729 = fadd fast float %2726, %2673
  %2730 = call float @dx.op.unary.f32(i32 7, float %2727)  ; Saturate(value)
  %2731 = call float @dx.op.unary.f32(i32 7, float %2728)  ; Saturate(value)
  %2732 = call float @dx.op.unary.f32(i32 7, float %2729)  ; Saturate(value)
  %2733 = fmul fast float %2730, %2730
  %2734 = fmul fast float %2731, %2731
  %2735 = fmul fast float %2732, %2732
  %2736 = fsub fast float %2733, %2615
  %2737 = fsub fast float %2734, %2616
  %2738 = fsub fast float %2735, %2617
  %2739 = fmul fast float %2736, %2640
  %2740 = fmul fast float %2737, %2640
  %2741 = fmul fast float %2738, %2640
  %2742 = fadd fast float %2739, %2615
  %2743 = fadd fast float %2740, %2616
  %2744 = fadd fast float %2741, %2617
  %2745 = fadd fast float %2662, %2626
  %2746 = fsub fast float %2745, %2679
  %2747 = call float @dx.op.unary.f32(i32 7, float %2746)  ; Saturate(value)
  %2748 = fsub fast float %2747, %2626
  %2749 = fmul fast float %2748, %2640
  %2750 = fadd fast float %2749, %2626
  br label %2804

; <label>:2751                                    ; preds = %2639
  %2752 = and i32 %2642, 134217728
  %2753 = icmp eq i32 %2752, 0
  br i1 %2753, label %2788, label %2754

; <label>:2754                                    ; preds = %2751
  %2755 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %2756 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %2757 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %2758 = fadd fast float %2755, -5.000000e-01
  %2759 = fadd fast float %2756, -5.000000e-01
  %2760 = fadd fast float %2757, -5.000000e-01
  %2761 = fmul fast float %2758, %2640
  %2762 = fmul fast float %2759, %2640
  %2763 = fmul fast float %2760, %2640
  %2764 = fadd fast float %2761, 5.000000e-01
  %2765 = fadd fast float %2762, 5.000000e-01
  %2766 = fadd fast float %2763, 5.000000e-01
  %2767 = call float @dx.op.unary.f32(i32 24, float %2615)  ; Sqrt(value)
  %2768 = call float @dx.op.unary.f32(i32 24, float %2616)  ; Sqrt(value)
  %2769 = call float @dx.op.unary.f32(i32 24, float %2617)  ; Sqrt(value)
  %2770 = fmul fast float %2764, 2.000000e+00
  %2771 = fsub fast float 1.000000e+00, %2770
  %2772 = fmul fast float %2771, %2767
  %2773 = fadd fast float %2772, %2770
  %2774 = fmul fast float %2773, %2767
  %2775 = fmul fast float %2765, 2.000000e+00
  %2776 = fsub fast float 1.000000e+00, %2775
  %2777 = fmul fast float %2776, %2768
  %2778 = fadd fast float %2777, %2775
  %2779 = fmul fast float %2778, %2768
  %2780 = fmul fast float %2766, 2.000000e+00
  %2781 = fsub fast float 1.000000e+00, %2780
  %2782 = fmul fast float %2781, %2769
  %2783 = fadd fast float %2782, %2780
  %2784 = fmul fast float %2783, %2769
  %2785 = fmul fast float %2774, %2774
  %2786 = fmul fast float %2779, %2779
  %2787 = fmul fast float %2784, %2784
  br label %2804

; <label>:2788                                    ; preds = %2751
  %2789 = fmul fast float %326, %326
  %2790 = fmul fast float %330, %330
  %2791 = fmul fast float %334, %334
  %2792 = fadd fast float %2789, -1.000000e+00
  %2793 = fadd fast float %2790, -1.000000e+00
  %2794 = fadd fast float %2791, -1.000000e+00
  %2795 = fmul fast float %2640, %2792
  %2796 = fmul fast float %2640, %2793
  %2797 = fmul fast float %2640, %2794
  %2798 = fadd fast float %2795, 1.000000e+00
  %2799 = fadd fast float %2796, 1.000000e+00
  %2800 = fadd fast float %2797, 1.000000e+00
  %2801 = fmul fast float %2798, %2615
  %2802 = fmul fast float %2799, %2616
  %2803 = fmul fast float %2800, %2617
  br label %2804

; <label>:2804                                    ; preds = %2788, %2754, %2645, %2601
  %2805 = phi float [ %2750, %2645 ], [ %2626, %2754 ], [ %2626, %2788 ], [ 0x3FA23C0BE0000000, %2601 ]
  %2806 = phi float [ %2742, %2645 ], [ %2785, %2754 ], [ %2801, %2788 ], [ 1.000000e+00, %2601 ]
  %2807 = phi float [ %2743, %2645 ], [ %2786, %2754 ], [ %2802, %2788 ], [ 1.000000e+00, %2601 ]
  %2808 = phi float [ %2744, %2645 ], [ %2787, %2754 ], [ %2803, %2788 ], [ 1.000000e+00, %2601 ]
  %2809 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.i32 %2809, 1
  %2811 = and i32 %2810, 1
  %2812 = icmp ne i32 %2811, 0
  %2813 = add i32 %48, 356
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = and i32 %2815, 32
  %2817 = icmp ne i32 %2816, 0
  %2818 = and i1 %2812, %2817
  %2819 = select i1 %2818, float 1.000000e+00, float %2806
  %2820 = select i1 %2818, float 0x3FD3333340000000, float %2807
  %2821 = select i1 %2818, float 0x3FD3333340000000, float %2808
  %2822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2823 = extractvalue %dx.types.ResRet.i32 %2822, 0
  %2824 = and i32 %2823, 32
  %2825 = icmp eq i32 %2824, 0
  br i1 %2825, label %2898, label %2826

; <label>:2826                                    ; preds = %2804
  %2827 = add i32 %48, 124
  %2828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %2829 = extractvalue %dx.types.ResRet.i32 %2828, 0
  %2830 = add i32 %48, 384
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = add i32 %2832, 0
  %2834 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2833, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2835 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2834, %dx.types.Handle %93, float %2411, float %2412, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2836 = extractvalue %dx.types.ResRet.f32 %2835, 0
  %2837 = extractvalue %dx.types.ResRet.f32 %2835, 1
  %2838 = extractvalue %dx.types.ResRet.f32 %2835, 2
  %2839 = extractvalue %dx.types.ResRet.f32 %2835, 3
  %2840 = and i32 %2829, 255
  %2841 = uitofp i32 %2840 to float
  %2842 = lshr i32 %2829, 8
  %2843 = and i32 %2842, 255
  %2844 = uitofp i32 %2843 to float
  %2845 = lshr i32 %2829, 16
  %2846 = and i32 %2845, 255
  %2847 = uitofp i32 %2846 to float
  %2848 = fmul fast float %2847, 0x3F70101000000000
  %2849 = fmul fast float %2836, %2841
  %2850 = fadd fast float %2849, %2844
  %2851 = fmul fast float %2850, 0x3F70101000000000
  %2852 = fadd fast float %2837, -5.000000e-01
  %2853 = fadd fast float %2839, -5.000000e-01
  %2854 = fmul fast float %2852, %2848
  %2855 = fmul fast float %2853, %2848
  %2856 = fadd fast float %2854, 5.000000e-01
  %2857 = fadd fast float %2855, 5.000000e-01
  %2858 = fmul fast float %2856, 2.000000e+00
  %2859 = fadd fast float %2858, -1.000000e+00
  %2860 = fmul fast float %2857, 2.000000e+00
  %2861 = fadd fast float %2860, -1.000000e+00
  %2862 = fadd fast float %2859, %2861
  %2863 = fmul fast float %2862, 5.000000e-01
  %2864 = fsub fast float %2859, %2861
  %2865 = fmul fast float %2864, 5.000000e-01
  %2866 = call float @dx.op.unary.f32(i32 6, float %2863)  ; FAbs(value)
  %2867 = fsub fast float 1.000000e+00, %2866
  %2868 = call float @dx.op.unary.f32(i32 6, float %2865)  ; FAbs(value)
  %2869 = fsub fast float %2867, %2868
  %2870 = call float @dx.op.dot3.f32(i32 55, float %2863, float %2865, float %2869, float %2863, float %2865, float %2869)  ; Dot3(ax,ay,az,bx,by,bz)
  %2871 = call float @dx.op.unary.f32(i32 25, float %2870)  ; Rsqrt(value)
  %2872 = fmul fast float %2863, %2871
  %2873 = fmul fast float %2865, %2871
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = and i32 %2875, 67108864
  %2877 = icmp eq i32 %2876, 0
  br i1 %2877, label %2894, label %2878

; <label>:2878                                    ; preds = %2826
  %2879 = add i32 %48, 312
  %2880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.i32 %2880, 0
  %2882 = and i32 %2881, 65535
  %2883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2882)  ; LegacyF16ToF32(value)
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = and i32 %2885, 65535
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = lshr i32 %2881, 16
  %2889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2888)  ; LegacyF16ToF32(value)
  %2890 = fsub fast float %2851, %2889
  %2891 = fmul fast float %2890, %2883
  %2892 = fadd fast float %2891, %2887
  %2893 = call float @dx.op.unary.f32(i32 7, float %2892)  ; Saturate(value)
  br label %2894

; <label>:2894                                    ; preds = %2878, %2826
  %2895 = phi float [ %2893, %2878 ], [ %2851, %2826 ]
  %2896 = call float @dx.op.dot2.f32(i32 54, float %2872, float %2873, float %2315, float %2316)  ; Dot2(ax,ay,bx,by)
  %2897 = call float @dx.op.dot2.f32(i32 54, float %2872, float %2873, float %2317, float %2318)  ; Dot2(ax,ay,bx,by)
  br label %2898

; <label>:2898                                    ; preds = %2894, %2804
  %2899 = phi float [ %2895, %2894 ], [ 0x3FD6666660000000, %2804 ]
  %2900 = phi float [ %2896, %2894 ], [ 0.000000e+00, %2804 ]
  %2901 = phi float [ %2897, %2894 ], [ 0.000000e+00, %2804 ]
  %2902 = phi float [ %2838, %2894 ], [ 1.000000e+00, %2804 ]
  %2903 = add i32 %48, 192
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = lshr i32 %2905, 22
  %2907 = shl nuw nsw i32 %2906, 5
  %2908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2907)  ; LegacyF16ToF32(value)
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = and i32 %2910, 64
  %2912 = icmp eq i32 %2911, 0
  br i1 %2912, label %2946, label %2913

; <label>:2913                                    ; preds = %2898
  %2914 = add i32 %48, 400
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2914, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = add i32 %2916, 0
  %2918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2917, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = and i32 %2920, 131072
  %2922 = icmp eq i32 %2921, 0
  %2923 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2918, %dx.types.Handle %93, float %2411, float %2412, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2924 = extractvalue %dx.types.ResRet.f32 %2923, 0
  %2925 = extractvalue %dx.types.ResRet.f32 %2923, 1
  %2926 = extractvalue %dx.types.ResRet.f32 %2923, 2
  %2927 = fmul fast float %2924, %314
  %2928 = fmul fast float %2925, %317
  %2929 = fmul fast float %2926, %320
  br i1 %2922, label %2936, label %2930

; <label>:2930                                    ; preds = %2913
  %2931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2932 = extractvalue %dx.types.CBufRet.f32 %2931, 0
  %2933 = fmul fast float %2932, %2927
  %2934 = fmul fast float %2932, %2928
  %2935 = fmul fast float %2932, %2929
  br label %2936

; <label>:2936                                    ; preds = %2930, %2913
  %2937 = phi float [ %2933, %2930 ], [ %2927, %2913 ]
  %2938 = phi float [ %2934, %2930 ], [ %2928, %2913 ]
  %2939 = phi float [ %2935, %2930 ], [ %2929, %2913 ]
  %2940 = fmul fast float %2937, %2908
  %2941 = select i1 %213, float %2940, float %2937
  %2942 = call float @dx.op.dot3.f32(i32 55, float %2941, float %2938, float %2939, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2943 = select i1 %213, float 0.000000e+00, float %2937
  %2944 = select i1 %213, float %2942, float %2938
  %2945 = select i1 %213, float 0.000000e+00, float %2939
  br label %2946

; <label>:2946                                    ; preds = %2936, %2898
  %2947 = phi float [ %2943, %2936 ], [ 0.000000e+00, %2898 ]
  %2948 = phi float [ %2944, %2936 ], [ 0.000000e+00, %2898 ]
  %2949 = phi float [ %2945, %2936 ], [ 0.000000e+00, %2898 ]
  %2950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.i32 %2950, 0
  %2952 = and i32 %2951, 1024
  %2953 = icmp eq i32 %2952, 0
  br i1 %2953, label %2984, label %2954

; <label>:2954                                    ; preds = %2946
  %2955 = add i32 %48, 184
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = and i32 %2957, 255
  %2959 = uitofp i32 %2958 to float
  %2960 = fmul fast float %2959, 0x3F70101020000000
  %2961 = lshr i32 %2957, 8
  %2962 = and i32 %2961, 255
  %2963 = uitofp i32 %2962 to float
  %2964 = fmul fast float %2963, 0x3F70101020000000
  %2965 = lshr i32 %2957, 16
  %2966 = and i32 %2965, 255
  %2967 = uitofp i32 %2966 to float
  %2968 = fmul fast float %2967, 0x3F70101020000000
  %2969 = fmul fast float %2960, %2960
  %2970 = fmul fast float %2964, %2964
  %2971 = fmul fast float %2968, %2968
  %2972 = add i32 %48, 464
  %2973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.i32 %2973, 0
  %2975 = add i32 %2974, 0
  %2976 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2975, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2977 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2976, %dx.types.Handle %94, float %2411, float %2412, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2978 = extractvalue %dx.types.ResRet.f32 %2977, 0
  %2979 = extractvalue %dx.types.ResRet.f32 %2977, 1
  %2980 = extractvalue %dx.types.ResRet.f32 %2977, 2
  %2981 = fmul fast float %2969, %2978
  %2982 = fmul fast float %2970, %2979
  %2983 = fmul fast float %2971, %2980
  br label %2984

; <label>:2984                                    ; preds = %2954, %2946
  %2985 = phi float [ %2981, %2954 ], [ 0.000000e+00, %2946 ]
  %2986 = phi float [ %2982, %2954 ], [ 0.000000e+00, %2946 ]
  %2987 = phi float [ %2983, %2954 ], [ 0.000000e+00, %2946 ]
  %2988 = fcmp fast ogt float %2985, 0.000000e+00
  %2989 = fcmp fast ogt float %2986, 0.000000e+00
  %2990 = fcmp fast ogt float %2987, 0.000000e+00
  %2991 = call float @dx.op.unary.f32(i32 23, float %2985)  ; Log(value)
  %2992 = call float @dx.op.unary.f32(i32 23, float %2986)  ; Log(value)
  %2993 = call float @dx.op.unary.f32(i32 23, float %2987)  ; Log(value)
  %2994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.i32 %2994, 0
  %2996 = lshr i32 %2995, 7
  %2997 = and i32 %2996, 32752
  %2998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2997)  ; LegacyF16ToF32(value)
  %2999 = fmul fast float %2991, 0xBFE62E4300000000
  %3000 = fmul fast float %2999, %2998
  %3001 = fmul fast float %2992, 0xBFE62E4300000000
  %3002 = fmul fast float %3001, %2998
  %3003 = fmul fast float %2993, 0xBFE62E4300000000
  %3004 = fmul fast float %3003, %2998
  %3005 = select i1 %2988, float %3000, float 1.270000e+02
  %3006 = select i1 %2989, float %3002, float 1.270000e+02
  %3007 = select i1 %2990, float %3004, float 1.270000e+02
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = and i32 %3009, 10240
  %3011 = icmp eq i32 %3010, 0
  br i1 %3011, label %3056, label %3012

; <label>:3012                                    ; preds = %2984
  %3013 = add i32 %48, 480
  %3014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3013, i32 undef)  ; BufferLoad(srv,index,wot)
  %3015 = extractvalue %dx.types.ResRet.i32 %3014, 0
  %3016 = add i32 %3015, 0
  %3017 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3016, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3018 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3017, %dx.types.Handle %94, float %2411, float %2412, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3019 = extractvalue %dx.types.ResRet.f32 %3018, 1
  %3020 = extractvalue %dx.types.ResRet.f32 %3018, 3
  %3021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %3022 = extractvalue %dx.types.ResRet.i32 %3021, 0
  %3023 = and i32 %3022, 1048576
  %3024 = icmp ne i32 %3023, 0
  %3025 = and i32 %3022, 8192
  %3026 = icmp eq i32 %3025, 0
  br i1 %3026, label %3042, label %3027

; <label>:3027                                    ; preds = %3012
  %3028 = extractvalue %dx.types.ResRet.f32 %3018, 2
  %3029 = select i1 %3024, float %3028, float %3019
  %3030 = extractvalue %dx.types.ResRet.f32 %3018, 0
  %3031 = select i1 %3024, float %3030, float %3019
  %3032 = add i32 %48, 128
  %3033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3032, i32 undef)  ; BufferLoad(srv,index,wot)
  %3034 = extractvalue %dx.types.ResRet.i32 %3033, 0
  %3035 = lshr i32 %3034, 16
  %3036 = and i32 %3035, 255
  %3037 = uitofp i32 %3036 to float
  %3038 = fmul fast float %3037, 0x3F80101020000000
  %3039 = fmul fast float %3038, %3031
  %3040 = fmul fast float %3038, %3019
  %3041 = fmul fast float %3038, %3029
  br label %3042

; <label>:3042                                    ; preds = %3027, %3012
  %3043 = phi float [ %3039, %3027 ], [ 0.000000e+00, %3012 ]
  %3044 = phi float [ %3040, %3027 ], [ 0.000000e+00, %3012 ]
  %3045 = phi float [ %3041, %3027 ], [ 0.000000e+00, %3012 ]
  %3046 = and i32 %3022, 2048
  %3047 = icmp eq i32 %3046, 0
  br i1 %3047, label %3056, label %3048

; <label>:3048                                    ; preds = %3042
  %3049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3050 = extractvalue %dx.types.ResRet.i32 %3049, 0
  %3051 = shl i32 %3050, 4
  %3052 = and i32 %3051, 32752
  %3053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3052)  ; LegacyF16ToF32(value)
  %3054 = fmul fast float %3053, %3020
  %3055 = call float @dx.op.binary.f32(i32 35, float %3054, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3056

; <label>:3056                                    ; preds = %3048, %3042, %2984
  %3057 = phi float [ %3043, %3048 ], [ %3043, %3042 ], [ 0.000000e+00, %2984 ]
  %3058 = phi float [ %3044, %3048 ], [ %3044, %3042 ], [ 0.000000e+00, %2984 ]
  %3059 = phi float [ %3045, %3048 ], [ %3045, %3042 ], [ 0.000000e+00, %2984 ]
  %3060 = phi float [ %3055, %3048 ], [ 0x3F70101020000000, %3042 ], [ 0x3F70101020000000, %2984 ]
  %3061 = add i32 %48, 128
  %3062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3061, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.i32 %3062, 0
  %3064 = and i32 %3063, 255
  %3065 = uitofp i32 %3064 to float
  %3066 = lshr i32 %3063, 8
  %3067 = and i32 %3066, 255
  %3068 = uitofp i32 %3067 to float
  %3069 = call float @dx.op.dot3.f32(i32 55, float %2819, float %2820, float %2821, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3070 = fmul fast float %3068, %3069
  %3071 = fadd fast float %3070, %3065
  %3072 = fmul fast float %3071, 0x3F70101020000000
  %3073 = call float @dx.op.unary.f32(i32 7, float %3072)  ; Saturate(value)
  br i1 %2303, label %3074, label %3109

; <label>:3074                                    ; preds = %3056
  %3075 = fmul fast float %3060, 2.000000e+00
  %3076 = fcmp fast olt float %3005, 1.270000e+02
  %3077 = fcmp fast olt float %3006, 1.270000e+02
  %3078 = fcmp fast olt float %3007, 1.270000e+02
  %3079 = fmul fast float %3005, 0xBFF7154760000000
  %3080 = fmul fast float %3079, %3075
  %3081 = fmul fast float %3006, 0xBFF7154760000000
  %3082 = fmul fast float %3081, %3075
  %3083 = fmul fast float %3007, 0xBFF7154760000000
  %3084 = fmul fast float %3083, %3075
  %3085 = call float @dx.op.unary.f32(i32 21, float %3080)  ; Exp(value)
  %3086 = call float @dx.op.unary.f32(i32 21, float %3082)  ; Exp(value)
  %3087 = call float @dx.op.unary.f32(i32 21, float %3084)  ; Exp(value)
  %3088 = call float @dx.op.unary.f32(i32 7, float %3085)  ; Saturate(value)
  %3089 = call float @dx.op.unary.f32(i32 7, float %3086)  ; Saturate(value)
  %3090 = call float @dx.op.unary.f32(i32 7, float %3087)  ; Saturate(value)
  %3091 = fadd fast float %3088, -1.000000e+00
  %3092 = select i1 %3076, float %3091, float -1.000000e+00
  %3093 = fadd fast float %3089, -1.000000e+00
  %3094 = select i1 %3077, float %3093, float -1.000000e+00
  %3095 = fadd fast float %3090, -1.000000e+00
  %3096 = select i1 %3078, float %3095, float -1.000000e+00
  %3097 = fmul fast float %3092, %2599
  %3098 = fmul fast float %3094, %2599
  %3099 = fmul fast float %3096, %2599
  %3100 = fadd fast float %3097, 1.000000e+00
  %3101 = fadd fast float %3098, 1.000000e+00
  %3102 = fadd fast float %3099, 1.000000e+00
  %3103 = fmul fast float %3100, %2285
  %3104 = fmul fast float %3101, %2286
  %3105 = fmul fast float %3102, %2287
  %3106 = fmul fast float %3100, %2288
  %3107 = fmul fast float %3101, %2289
  %3108 = fmul fast float %3102, %2290
  br label %3109

; <label>:3109                                    ; preds = %3074, %3056
  %3110 = phi float [ %3103, %3074 ], [ %2285, %3056 ]
  %3111 = phi float [ %3104, %3074 ], [ %2286, %3056 ]
  %3112 = phi float [ %3105, %3074 ], [ %2287, %3056 ]
  %3113 = phi float [ %3106, %3074 ], [ %2288, %3056 ]
  %3114 = phi float [ %3107, %3074 ], [ %2289, %3056 ]
  %3115 = phi float [ %3108, %3074 ], [ %2290, %3056 ]
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = and i32 %3117, 3
  %3119 = icmp eq i32 %3118, 3
  br i1 %3119, label %3198, label %3120

; <label>:3120                                    ; preds = %3109
  %3121 = and i32 %3117, 16
  %3122 = icmp ne i32 %3121, 0
  %3123 = select i1 %3122, float %2599, float 0.000000e+00
  %3124 = icmp eq i32 %3118, 0
  br i1 %3124, label %3125, label %3153

; <label>:3125                                    ; preds = %3120
  %3126 = and i32 %3117, 64
  %3127 = icmp ne i32 %3126, 0
  %3128 = select i1 %3127, float %2599, float 0.000000e+00
  %3129 = fsub fast float %2819, %3110
  %3130 = fsub fast float %2820, %3111
  %3131 = fsub fast float %2821, %3112
  %3132 = fmul fast float %3123, %3129
  %3133 = fmul fast float %3123, %3130
  %3134 = fmul fast float %3123, %3131
  %3135 = fadd fast float %3132, %3110
  %3136 = fadd fast float %3133, %3111
  %3137 = fadd fast float %3134, %3112
  %3138 = fsub fast float %2805, %2297
  %3139 = fmul fast float %3123, %3138
  %3140 = fadd fast float %3139, %2297
  %3141 = fsub fast float %2947, %3113
  %3142 = fsub fast float %2948, %3114
  %3143 = fsub fast float %2949, %3115
  %3144 = fmul fast float %3128, %3141
  %3145 = fmul fast float %3128, %3142
  %3146 = fmul fast float %3128, %3143
  %3147 = fadd fast float %3144, %3113
  %3148 = fadd fast float %3145, %3114
  %3149 = fadd fast float %3146, %3115
  %3150 = fsub fast float %3073, %2301
  %3151 = fmul fast float %3123, %3150
  %3152 = fadd fast float %3151, %2301
  br label %3198

; <label>:3153                                    ; preds = %3120
  %3154 = icmp eq i32 %3118, 1
  br i1 %3154, label %3155, label %3168

; <label>:3155                                    ; preds = %3153
  %3156 = fadd fast float %2819, -1.000000e+00
  %3157 = fadd fast float %2820, -1.000000e+00
  %3158 = fadd fast float %2821, -1.000000e+00
  %3159 = fmul fast float %3123, %3156
  %3160 = fmul fast float %3123, %3157
  %3161 = fmul fast float %3123, %3158
  %3162 = fadd fast float %3159, 1.000000e+00
  %3163 = fadd fast float %3160, 1.000000e+00
  %3164 = fadd fast float %3161, 1.000000e+00
  %3165 = fmul fast float %3162, %3110
  %3166 = fmul fast float %3163, %3111
  %3167 = fmul fast float %3164, %3112
  br label %3198

; <label>:3168                                    ; preds = %3153
  %3169 = icmp eq i32 %3118, 2
  br i1 %3169, label %3170, label %3198

; <label>:3170                                    ; preds = %3168
  %3171 = call float @dx.op.unary.f32(i32 24, float %2819)  ; Sqrt(value)
  %3172 = call float @dx.op.unary.f32(i32 24, float %2820)  ; Sqrt(value)
  %3173 = call float @dx.op.unary.f32(i32 24, float %2821)  ; Sqrt(value)
  %3174 = fadd fast float %3171, -5.000000e-01
  %3175 = fadd fast float %3172, -5.000000e-01
  %3176 = fadd fast float %3173, -5.000000e-01
  %3177 = fmul fast float %3174, %3123
  %3178 = fmul fast float %3175, %3123
  %3179 = fmul fast float %3176, %3123
  %3180 = fadd fast float %3177, 5.000000e-01
  %3181 = fadd fast float %3178, 5.000000e-01
  %3182 = fadd fast float %3179, 5.000000e-01
  %3183 = fmul fast float %3180, 2.000000e+00
  %3184 = fsub fast float 1.000000e+00, %3183
  %3185 = fmul fast float %3184, %3110
  %3186 = fadd fast float %3185, %3183
  %3187 = fmul fast float %3186, %3110
  %3188 = fmul fast float %3181, 2.000000e+00
  %3189 = fsub fast float 1.000000e+00, %3188
  %3190 = fmul fast float %3189, %3111
  %3191 = fadd fast float %3190, %3188
  %3192 = fmul fast float %3191, %3111
  %3193 = fmul fast float %3182, 2.000000e+00
  %3194 = fsub fast float 1.000000e+00, %3193
  %3195 = fmul fast float %3194, %3112
  %3196 = fadd fast float %3195, %3193
  %3197 = fmul fast float %3196, %3112
  br label %3198

; <label>:3198                                    ; preds = %3170, %3168, %3155, %3125, %3109
  %3199 = phi float [ %3110, %3109 ], [ %3187, %3170 ], [ %3110, %3168 ], [ %3165, %3155 ], [ %3135, %3125 ]
  %3200 = phi float [ %3111, %3109 ], [ %3192, %3170 ], [ %3111, %3168 ], [ %3166, %3155 ], [ %3136, %3125 ]
  %3201 = phi float [ %3112, %3109 ], [ %3197, %3170 ], [ %3112, %3168 ], [ %3167, %3155 ], [ %3137, %3125 ]
  %3202 = phi float [ %3113, %3109 ], [ %3113, %3170 ], [ %3113, %3168 ], [ %3113, %3155 ], [ %3147, %3125 ]
  %3203 = phi float [ %3114, %3109 ], [ %3114, %3170 ], [ %3114, %3168 ], [ %3114, %3155 ], [ %3148, %3125 ]
  %3204 = phi float [ %3115, %3109 ], [ %3115, %3170 ], [ %3115, %3168 ], [ %3115, %3155 ], [ %3149, %3125 ]
  %3205 = phi float [ %2297, %3109 ], [ %2297, %3170 ], [ %2297, %3168 ], [ %2297, %3155 ], [ %3140, %3125 ]
  %3206 = phi float [ %2301, %3109 ], [ %2301, %3170 ], [ %2301, %3168 ], [ %2301, %3155 ], [ %3152, %3125 ]
  %3207 = and i32 %3117, 12
  %3208 = icmp eq i32 %3207, 12
  br i1 %3208, label %3339, label %3209

; <label>:3209                                    ; preds = %3198
  %3210 = and i32 %3117, 2097184
  %3211 = icmp eq i32 %3210, 2097184
  %3212 = select i1 %3211, float %2599, float 0.000000e+00
  %3213 = and i32 %3117, 4194336
  %3214 = icmp eq i32 %3213, 4194336
  %3215 = select i1 %3214, float %2599, float 0.000000e+00
  %3216 = and i32 %3117, 8388640
  %3217 = icmp eq i32 %3216, 8388640
  %3218 = select i1 %3217, float %2599, float 0.000000e+00
  %3219 = and i32 %3117, 1024
  %3220 = icmp ne i32 %3219, 0
  %3221 = select i1 %3220, float %2599, float 0.000000e+00
  %3222 = and i32 %3117, 2048
  %3223 = icmp ne i32 %3222, 0
  %3224 = select i1 %3223, float %2599, float 0.000000e+00
  %3225 = and i32 %3117, 8192
  %3226 = icmp ne i32 %3225, 0
  %3227 = select i1 %3226, float %2599, float 0.000000e+00
  %3228 = icmp eq i32 %3207, 0
  br i1 %3228, label %3229, label %3263

; <label>:3229                                    ; preds = %3209
  %3230 = fsub fast float %2900, %2283
  %3231 = fsub fast float %2901, %2284
  %3232 = fmul fast float %3212, %3230
  %3233 = fmul fast float %3212, %3231
  %3234 = fadd fast float %3232, %2283
  %3235 = fadd fast float %3233, %2284
  %3236 = fsub fast float %2902, %2299
  %3237 = fmul fast float %3215, %3236
  %3238 = fadd fast float %3237, %2299
  %3239 = fsub fast float %2899, %2298
  %3240 = fmul fast float %3218, %3239
  %3241 = fadd fast float %3240, %2298
  %3242 = fsub fast float %3005, %2291
  %3243 = fsub fast float %3006, %2292
  %3244 = fsub fast float %3007, %2293
  %3245 = fmul fast float %3221, %3242
  %3246 = fmul fast float %3221, %3243
  %3247 = fmul fast float %3221, %3244
  %3248 = fadd fast float %3245, %2291
  %3249 = fadd fast float %3246, %2292
  %3250 = fadd fast float %3247, %2293
  %3251 = fsub fast float %3060, %2300
  %3252 = fmul fast float %3224, %3251
  %3253 = fadd fast float %3252, %2300
  %3254 = fsub fast float %3057, %2294
  %3255 = fsub fast float %3058, %2295
  %3256 = fsub fast float %3059, %2296
  %3257 = fmul fast float %3227, %3254
  %3258 = fmul fast float %3227, %3255
  %3259 = fmul fast float %3227, %3256
  %3260 = fadd fast float %3257, %2294
  %3261 = fadd fast float %3258, %2295
  %3262 = fadd fast float %3259, %2296
  br label %3339

; <label>:3263                                    ; preds = %3209
  %3264 = icmp eq i32 %3207, 4
  br i1 %3264, label %3265, label %3311

; <label>:3265                                    ; preds = %3263
  %3266 = fmul fast float %3212, %2900
  %3267 = fmul fast float %3212, %2901
  %3268 = fadd fast float %3266, %2283
  %3269 = fadd fast float %3267, %2284
  %3270 = call float @dx.op.binary.f32(i32 36, float %2299, float %2902)  ; FMin(a,b)
  %3271 = fsub fast float %3270, %2299
  %3272 = fmul fast float %3271, %3215
  %3273 = fadd fast float %3272, %2299
  %3274 = fadd fast float %2899, %2298
  %3275 = fmul fast float %3274, 0x3FF337FAE0000000
  %3276 = fmul fast float %2298, %2298
  %3277 = fmul fast float %2899, %2899
  %3278 = fadd fast float %3277, %3276
  %3279 = fmul fast float %3278, 0x3FE5152B00000000
  %3280 = fmul fast float %2298, 0xBFCC1F85E0000000
  %3281 = fmul fast float %3280, %2899
  %3282 = fadd fast float %3281, 0xBFE1363700000000
  %3283 = fadd fast float %3282, %3275
  %3284 = fsub fast float %3283, %3279
  %3285 = fmul fast float %3274, 0x3FBA6F0D00000000
  %3286 = fmul fast float %3278, 0x3FD0432880000000
  %3287 = fmul fast float %2298, 0xBFEF110800000000
  %3288 = fmul fast float %3287, %2899
  %3289 = fadd fast float %3288, 1.000000e+00
  %3290 = fsub fast float %3289, %3285
  %3291 = fadd fast float %3290, %3286
  %3292 = fdiv fast float %3284, %3291
  %3293 = call float @dx.op.unary.f32(i32 7, float %3292)  ; Saturate(value)
  %3294 = fsub fast float %3293, %2298
  %3295 = fmul fast float %3294, %3218
  %3296 = fadd fast float %3295, %2298
  %3297 = fmul fast float %3221, %3005
  %3298 = fmul fast float %3221, %3006
  %3299 = fmul fast float %3221, %3007
  %3300 = fadd fast float %3297, %2291
  %3301 = fadd fast float %3298, %2292
  %3302 = fadd fast float %3299, %2293
  %3303 = fmul fast float %3224, %3060
  %3304 = fadd fast float %3303, %2300
  %3305 = fmul fast float %3227, %3057
  %3306 = fmul fast float %3227, %3058
  %3307 = fmul fast float %3227, %3059
  %3308 = fadd fast float %3305, %2294
  %3309 = fadd fast float %3306, %2295
  %3310 = fadd fast float %3307, %2296
  br label %3339

; <label>:3311                                    ; preds = %3263
  %3312 = icmp eq i32 %3207, 8
  br i1 %3312, label %3313, label %3339

; <label>:3313                                    ; preds = %3311
  %3314 = fmul fast float %3212, %2900
  %3315 = fmul fast float %3212, %2901
  %3316 = fadd fast float %3314, %2283
  %3317 = fadd fast float %3315, %2284
  %3318 = call float @dx.op.binary.f32(i32 36, float %2299, float %2902)  ; FMin(a,b)
  %3319 = fsub fast float %3318, %2299
  %3320 = fmul fast float %3319, %3215
  %3321 = fadd fast float %3320, %2299
  %3322 = fsub fast float %2899, %2298
  %3323 = fmul fast float %3218, %3322
  %3324 = fadd fast float %3323, %2298
  %3325 = fmul fast float %3221, %3005
  %3326 = fmul fast float %3221, %3006
  %3327 = fmul fast float %3221, %3007
  %3328 = fadd fast float %3325, %2291
  %3329 = fadd fast float %3326, %2292
  %3330 = fadd fast float %3327, %2293
  %3331 = fmul fast float %3224, %3060
  %3332 = fadd fast float %3331, %2300
  %3333 = fmul fast float %3227, %3057
  %3334 = fmul fast float %3227, %3058
  %3335 = fmul fast float %3227, %3059
  %3336 = fadd fast float %3333, %2294
  %3337 = fadd fast float %3334, %2295
  %3338 = fadd fast float %3335, %2296
  br label %3339

; <label>:3339                                    ; preds = %3313, %3311, %3265, %3229, %3198, %2598, %2302, %2282
  %3340 = phi float [ %2283, %3198 ], [ %2283, %2598 ], [ %2283, %2282 ], [ %3316, %3313 ], [ %2283, %3311 ], [ %3268, %3265 ], [ %3234, %3229 ], [ %2283, %2302 ]
  %3341 = phi float [ %2284, %3198 ], [ %2284, %2598 ], [ %2284, %2282 ], [ %3317, %3313 ], [ %2284, %3311 ], [ %3269, %3265 ], [ %3235, %3229 ], [ %2284, %2302 ]
  %3342 = phi float [ %3199, %3198 ], [ %2285, %2598 ], [ %2285, %2282 ], [ %3199, %3313 ], [ %3199, %3311 ], [ %3199, %3265 ], [ %3199, %3229 ], [ %2285, %2302 ]
  %3343 = phi float [ %3200, %3198 ], [ %2286, %2598 ], [ %2286, %2282 ], [ %3200, %3313 ], [ %3200, %3311 ], [ %3200, %3265 ], [ %3200, %3229 ], [ %2286, %2302 ]
  %3344 = phi float [ %3201, %3198 ], [ %2287, %2598 ], [ %2287, %2282 ], [ %3201, %3313 ], [ %3201, %3311 ], [ %3201, %3265 ], [ %3201, %3229 ], [ %2287, %2302 ]
  %3345 = phi float [ %3202, %3198 ], [ %2288, %2598 ], [ %2288, %2282 ], [ %3202, %3313 ], [ %3202, %3311 ], [ %3202, %3265 ], [ %3202, %3229 ], [ %2288, %2302 ]
  %3346 = phi float [ %3203, %3198 ], [ %2289, %2598 ], [ %2289, %2282 ], [ %3203, %3313 ], [ %3203, %3311 ], [ %3203, %3265 ], [ %3203, %3229 ], [ %2289, %2302 ]
  %3347 = phi float [ %3204, %3198 ], [ %2290, %2598 ], [ %2290, %2282 ], [ %3204, %3313 ], [ %3204, %3311 ], [ %3204, %3265 ], [ %3204, %3229 ], [ %2290, %2302 ]
  %3348 = phi float [ %2291, %3198 ], [ %2291, %2598 ], [ %2291, %2282 ], [ %3328, %3313 ], [ %2291, %3311 ], [ %3300, %3265 ], [ %3248, %3229 ], [ %2291, %2302 ]
  %3349 = phi float [ %2292, %3198 ], [ %2292, %2598 ], [ %2292, %2282 ], [ %3329, %3313 ], [ %2292, %3311 ], [ %3301, %3265 ], [ %3249, %3229 ], [ %2292, %2302 ]
  %3350 = phi float [ %2293, %3198 ], [ %2293, %2598 ], [ %2293, %2282 ], [ %3330, %3313 ], [ %2293, %3311 ], [ %3302, %3265 ], [ %3250, %3229 ], [ %2293, %2302 ]
  %3351 = phi float [ %2294, %3198 ], [ %2294, %2598 ], [ %2294, %2282 ], [ %3336, %3313 ], [ %2294, %3311 ], [ %3308, %3265 ], [ %3260, %3229 ], [ %2294, %2302 ]
  %3352 = phi float [ %2295, %3198 ], [ %2295, %2598 ], [ %2295, %2282 ], [ %3337, %3313 ], [ %2295, %3311 ], [ %3309, %3265 ], [ %3261, %3229 ], [ %2295, %2302 ]
  %3353 = phi float [ %2296, %3198 ], [ %2296, %2598 ], [ %2296, %2282 ], [ %3338, %3313 ], [ %2296, %3311 ], [ %3310, %3265 ], [ %3262, %3229 ], [ %2296, %2302 ]
  %3354 = phi float [ %3205, %3198 ], [ %2297, %2598 ], [ %2297, %2282 ], [ %3205, %3313 ], [ %3205, %3311 ], [ %3205, %3265 ], [ %3205, %3229 ], [ %2297, %2302 ]
  %3355 = phi float [ %2298, %3198 ], [ %2298, %2598 ], [ %2298, %2282 ], [ %3324, %3313 ], [ %2298, %3311 ], [ %3296, %3265 ], [ %3241, %3229 ], [ %2298, %2302 ]
  %3356 = phi float [ %2299, %3198 ], [ %2299, %2598 ], [ %2299, %2282 ], [ %3321, %3313 ], [ %2299, %3311 ], [ %3273, %3265 ], [ %3238, %3229 ], [ %2299, %2302 ]
  %3357 = phi float [ %2300, %3198 ], [ %2300, %2598 ], [ %2300, %2282 ], [ %3332, %3313 ], [ %2300, %3311 ], [ %3304, %3265 ], [ %3253, %3229 ], [ %2300, %2302 ]
  %3358 = phi float [ %3206, %3198 ], [ %2301, %2598 ], [ %2301, %2282 ], [ %3206, %3313 ], [ %3206, %3311 ], [ %3206, %3265 ], [ %3206, %3229 ], [ %2301, %2302 ]
  br i1 %401, label %4396, label %3359

; <label>:3359                                    ; preds = %3339
  %3360 = icmp ult i32 %455, 4
  %3361 = add i32 %48, 72
  %3362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3363 = extractvalue %dx.types.ResRet.i32 %3362, 0
  %3364 = add i32 %48, 76
  %3365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.i32 %3365, 0
  %3367 = or i32 %3366, %3363
  %3368 = icmp eq i32 %3367, 0
  br i1 %3368, label %4396, label %3369

; <label>:3369                                    ; preds = %3359
  %3370 = and i32 %3363, 262144
  %3371 = icmp ne i32 %3370, 0
  %3372 = select i1 %3371, float %51, float 1.000000e+00
  %3373 = select i1 %3371, float %52, float 0.000000e+00
  %3374 = select i1 %3371, float %53, float 0.000000e+00
  %3375 = select i1 %3371, float %54, float 1.000000e+00
  %3376 = select i1 %3371, float %55, float %76
  %3377 = select i1 %3371, float %56, float %77
  %3378 = add i32 %48, 332
  %3379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3378, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.i32 %3379, 0
  %3381 = lshr i32 %3380, 16
  %3382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3381)  ; LegacyF16ToF32(value)
  %3383 = fmul fast float %3382, 0x3F50624DE0000000
  %3384 = add i32 %48, 136
  %3385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3384, i32 undef)  ; BufferLoad(srv,index,wot)
  %3386 = extractvalue %dx.types.ResRet.i32 %3385, 0
  %3387 = lshr i32 %3386, 16
  %3388 = and i32 %3387, 255
  %3389 = lshr i32 %3386, 24
  %3390 = add i32 %48, 340
  %3391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3390, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.i32 %3391, 0
  %3393 = and i32 %3392, 65535
  %3394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3393)  ; LegacyF16ToF32(value)
  %3395 = lshr i32 %3392, 16
  %3396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3395)  ; LegacyF16ToF32(value)
  %3397 = add i32 %48, 80
  %3398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.i32 %3398, 0
  %3400 = lshr i32 %3399, 22
  %3401 = shl nuw nsw i32 %3400, 5
  %3402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3401)  ; LegacyF16ToF32(value)
  %3403 = shl i32 %3399, 4
  %3404 = and i32 %3403, 32752
  %3405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3404)  ; LegacyF16ToF32(value)
  %3406 = lshr i32 %3399, 7
  %3407 = and i32 %3406, 32752
  %3408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3407)  ; LegacyF16ToF32(value)
  %3409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3410 = extractvalue %dx.types.CBufRet.f32 %3409, 3
  %3411 = fmul fast float %3410, 1.000000e+03
  %3412 = fmul fast float %391, %3411
  %3413 = call float @dx.op.unary.f32(i32 22, float %3412)  ; Frc(value)
  %3414 = fadd fast float %3413, %381
  %3415 = fmul fast float %392, %3411
  %3416 = call float @dx.op.unary.f32(i32 22, float %3415)  ; Frc(value)
  %3417 = fadd fast float %3416, %383
  %3418 = fmul fast float %3383, %3411
  %3419 = call float @dx.op.unary.f32(i32 22, float %3418)  ; Frc(value)
  %3420 = fmul fast float %3419, 0x401921FB60000000
  %3421 = fadd fast float %3420, %3402
  %3422 = call float @dx.op.unary.f32(i32 13, float %3421)  ; Sin(value)
  %3423 = call float @dx.op.unary.f32(i32 12, float %3421)  ; Cos(value)
  %3424 = fsub fast float -0.000000e+00, %3422
  %3425 = fadd fast float %3376, -5.000000e-01
  %3426 = fadd fast float %3377, -5.000000e-01
  %3427 = fmul fast float %3394, %3425
  %3428 = fmul fast float %3396, %3426
  %3429 = fadd fast float %3427, 5.000000e-01
  %3430 = fadd fast float %3428, 5.000000e-01
  %3431 = fmul fast float %3405, %3429
  %3432 = fmul fast float %3408, %3430
  %3433 = fmul fast float %3423, %3431
  %3434 = call float @dx.op.tertiary.f32(i32 46, float %3424, float %3432, float %3433)  ; FMad(a,b,c)
  %3435 = fmul fast float %3422, %3431
  %3436 = call float @dx.op.tertiary.f32(i32 46, float %3423, float %3432, float %3435)  ; FMad(a,b,c)
  %3437 = fadd fast float %3414, %3434
  %3438 = fadd fast float %3417, %3436
  %3439 = icmp ugt i32 %3388, 1
  %3440 = icmp ugt i32 %3386, 33554431
  %3441 = or i1 %3440, %3439
  br i1 %3441, label %3442, label %3467

; <label>:3442                                    ; preds = %3369
  %3443 = add i32 %48, 276
  %3444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3443, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.i32 %3444, 0
  %3446 = lshr i32 %3445, 16
  %3447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3446)  ; LegacyF16ToF32(value)
  %3448 = fmul fast float %3410, %3447
  %3449 = call float @dx.op.unary.f32(i32 22, float %3448)  ; Frc(value)
  %3450 = mul nuw nsw i32 %3388, %3389
  %3451 = uitofp i32 %3450 to float
  %3452 = fmul fast float %3449, %3451
  %3453 = call float @dx.op.unary.f32(i32 27, float %3452)  ; Round_ni(value)
  %3454 = fptoui float %3453 to i32
  %3455 = urem i32 %3454, %3388
  %3456 = udiv i32 %3454, %3389
  %3457 = call float @dx.op.unary.f32(i32 22, float %3437)  ; Frc(value)
  %3458 = call float @dx.op.unary.f32(i32 22, float %3438)  ; Frc(value)
  %3459 = uitofp i32 %3455 to float
  %3460 = uitofp i32 %3456 to float
  %3461 = fadd fast float %3457, %3459
  %3462 = fadd fast float %3458, %3460
  %3463 = uitofp i32 %3388 to float
  %3464 = uitofp i32 %3389 to float
  %3465 = fdiv fast float %3461, %3463
  %3466 = fdiv fast float %3462, %3464
  br label %3467

; <label>:3467                                    ; preds = %3442, %3369
  %3468 = phi float [ %3465, %3442 ], [ %3437, %3369 ]
  %3469 = phi float [ %3466, %3442 ], [ %3438, %3369 ]
  %3470 = and i32 %3363, 16777216
  %3471 = icmp eq i32 %3470, 0
  br i1 %3471, label %3581, label %3472

; <label>:3472                                    ; preds = %3467
  %3473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3474 = extractvalue %dx.types.CBufRet.f32 %3473, 0
  %3475 = extractvalue %dx.types.CBufRet.f32 %3473, 1
  %3476 = extractvalue %dx.types.CBufRet.f32 %3473, 2
  %3477 = fadd fast float %3474, %152
  %3478 = fadd fast float %3475, %153
  %3479 = fadd fast float %3476, %154
  %3480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3481 = extractvalue %dx.types.CBufRet.f32 %3480, 0
  %3482 = call float @dx.op.unary.f32(i32 7, float %3481)  ; Saturate(value)
  %3483 = icmp eq i32 %49, 65535
  br i1 %3483, label %3578, label %3484

; <label>:3484                                    ; preds = %3472
  %3485 = lshr i32 %49, 1
  %3486 = shl i32 %3485, 2
  %3487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3486, i32 undef)  ; BufferLoad(srv,index,wot)
  %3488 = extractvalue %dx.types.ResRet.i32 %3487, 0
  %3489 = and i32 %49, 1
  %3490 = icmp ne i32 %3489, 0
  %3491 = lshr i32 %3488, 16
  %3492 = and i32 %3488, 65535
  %3493 = select i1 %3490, i32 %3491, i32 %3492
  %3494 = icmp eq i32 %3493, 65535
  br i1 %3494, label %3574, label %3495

; <label>:3495                                    ; preds = %3484
  %3496 = mul nuw nsw i32 %3493, 40
  %3497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3496, i32 undef)  ; BufferLoad(srv,index,wot)
  %3498 = extractvalue %dx.types.ResRet.f32 %3497, 0
  %3499 = extractvalue %dx.types.ResRet.f32 %3497, 1
  %3500 = extractvalue %dx.types.ResRet.f32 %3497, 2
  %3501 = add nuw nsw i32 %3496, 12
  %3502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.f32 %3502, 0
  %3504 = extractvalue %dx.types.ResRet.f32 %3502, 1
  %3505 = extractvalue %dx.types.ResRet.f32 %3502, 2
  %3506 = add nuw nsw i32 %3496, 24
  %3507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.f32 %3507, 0
  %3509 = extractvalue %dx.types.ResRet.f32 %3507, 1
  %3510 = extractvalue %dx.types.ResRet.f32 %3507, 2
  %3511 = add nuw nsw i32 %3496, 36
  %3512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3511, i32 undef)  ; BufferLoad(srv,index,wot)
  %3513 = extractvalue %dx.types.ResRet.f32 %3512, 0
  %3514 = fsub fast float %3477, %3498
  %3515 = fsub fast float %3478, %3499
  %3516 = fsub fast float %3479, %3500
  %3517 = fmul fast float %3513, %3514
  %3518 = fmul fast float %3513, %3515
  %3519 = fmul fast float %3513, %3516
  %3520 = call float @dx.op.unary.f32(i32 27, float %3517)  ; Round_ni(value)
  %3521 = call float @dx.op.unary.f32(i32 27, float %3518)  ; Round_ni(value)
  %3522 = call float @dx.op.unary.f32(i32 27, float %3519)  ; Round_ni(value)
  %3523 = fadd fast float %3520, 5.000000e-01
  %3524 = fadd fast float %3521, 5.000000e-01
  %3525 = fadd fast float %3522, 5.000000e-01
  %3526 = fmul fast float %3523, %3503
  %3527 = fmul fast float %3524, %3504
  %3528 = fmul fast float %3525, %3505
  %3529 = shl i32 %49, 2
  %3530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3529, i32 undef)  ; BufferLoad(srv,index,wot)
  %3531 = extractvalue %dx.types.ResRet.i32 %3530, 0
  %3532 = add i32 %3531, 0
  %3533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3534 = call float @dx.op.unary.f32(i32 22, float %3526)  ; Frc(value)
  %3535 = call float @dx.op.unary.f32(i32 22, float %3527)  ; Frc(value)
  %3536 = call float @dx.op.unary.f32(i32 22, float %3528)  ; Frc(value)
  %3537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3533, %dx.types.Handle %43, float %3534, float %3535, float %3536, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3538 = extractvalue %dx.types.ResRet.f32 %3537, 0
  %3539 = extractvalue %dx.types.ResRet.f32 %3537, 1
  %3540 = extractvalue %dx.types.ResRet.f32 %3537, 2
  %3541 = fmul fast float %3538, 1.023000e+03
  %3542 = fmul fast float %3539, 1.023000e+03
  %3543 = fmul fast float %3540, 1.023000e+03
  %3544 = fadd fast float %3541, 5.000000e-01
  %3545 = fadd fast float %3542, 5.000000e-01
  %3546 = fadd fast float %3543, 5.000000e-01
  %3547 = call float @dx.op.unary.f32(i32 27, float %3544)  ; Round_ni(value)
  %3548 = call float @dx.op.unary.f32(i32 27, float %3545)  ; Round_ni(value)
  %3549 = call float @dx.op.unary.f32(i32 27, float %3546)  ; Round_ni(value)
  %3550 = fsub fast float %3517, %3520
  %3551 = fsub fast float %3518, %3521
  %3552 = fsub fast float %3519, %3522
  %3553 = fmul fast float %3550, 7.500000e-01
  %3554 = fmul fast float %3551, 7.500000e-01
  %3555 = fmul fast float %3552, 7.500000e-01
  %3556 = fadd fast float %3520, 1.250000e-01
  %3557 = fadd fast float %3556, %3553
  %3558 = fadd fast float %3557, %3547
  %3559 = fadd fast float %3521, 1.250000e-01
  %3560 = fadd fast float %3559, %3554
  %3561 = fadd fast float %3560, %3548
  %3562 = fadd fast float %3522, 1.250000e-01
  %3563 = fadd fast float %3562, %3555
  %3564 = fadd fast float %3563, %3549
  %3565 = fmul fast float %3558, %3508
  %3566 = fmul fast float %3561, %3509
  %3567 = fmul fast float %3564, %3510
  %3568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3529, i32 undef)  ; BufferLoad(srv,index,wot)
  %3569 = extractvalue %dx.types.ResRet.i32 %3568, 0
  %3570 = add i32 %3569, 0
  %3571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3571, %dx.types.Handle %41, float %3565, float %3566, float %3567, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3573 = extractvalue %dx.types.ResRet.f32 %3572, 0
  br label %3574

; <label>:3574                                    ; preds = %3495, %3484
  %3575 = phi float [ %3573, %3495 ], [ -1.000000e+00, %3484 ]
  %3576 = fadd fast float %3575, %3482
  %3577 = call float @dx.op.unary.f32(i32 7, float %3576)  ; Saturate(value)
  br label %3578

; <label>:3578                                    ; preds = %3574, %3472
  %3579 = phi float [ %3577, %3574 ], [ %3482, %3472 ]
  %3580 = fmul fast float %3579, %450
  br label %3581

; <label>:3581                                    ; preds = %3578, %3467
  %3582 = phi float [ %3580, %3578 ], [ %450, %3467 ]
  %3583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.i32 %3583, 0
  %3585 = and i32 %3584, 256
  %3586 = icmp eq i32 %3585, 0
  br i1 %3586, label %3633, label %3587

; <label>:3587                                    ; preds = %3581
  %3588 = add i32 %48, 436
  %3589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3588, i32 undef)  ; BufferLoad(srv,index,wot)
  %3590 = extractvalue %dx.types.ResRet.i32 %3589, 0
  %3591 = add i32 %3590, 0
  %3592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3591, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3593 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3592, %dx.types.Handle %94, float %3468, float %3469, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3594 = extractvalue %dx.types.ResRet.f32 %3593, 0
  %3595 = add i32 %48, 148
  %3596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.i32 %3596, 0
  %3598 = shl i32 %3597, 4
  %3599 = and i32 %3598, 32752
  %3600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3599)  ; LegacyF16ToF32(value)
  %3601 = lshr i32 %3597, 7
  %3602 = and i32 %3601, 32752
  %3603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3602)  ; LegacyF16ToF32(value)
  %3604 = fsub fast float 1.000000e+00, %3582
  %3605 = call float @dx.op.binary.f32(i32 35, float %3604, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3606 = bitcast float %3582 to i32
  %3607 = sitofp i32 %3606 to float
  %3608 = fadd fast float %3607, 0xC1CFBF8940000000
  %3609 = fmul fast float %3603, %3608
  %3610 = fadd fast float %3609, 0x41CFBF8940000000
  %3611 = fptosi float %3610 to i32
  %3612 = bitcast i32 %3611 to float
  %3613 = bitcast float %3605 to i32
  %3614 = sitofp i32 %3613 to float
  %3615 = fadd fast float %3614, 0xC1CFBF8940000000
  %3616 = fmul fast float %3615, %3603
  %3617 = fadd fast float %3616, 0x41CFBF8940000000
  %3618 = fptosi float %3617 to i32
  %3619 = bitcast i32 %3618 to float
  %3620 = fmul fast float %3612, %3600
  %3621 = fmul fast float %3619, %3600
  %3622 = fsub fast float %3605, %3620
  %3623 = fadd fast float %3621, %3605
  %3624 = call float @dx.op.unary.f32(i32 7, float %3622)  ; Saturate(value)
  %3625 = call float @dx.op.unary.f32(i32 7, float %3623)  ; Saturate(value)
  %3626 = fsub fast float %3594, %3624
  %3627 = fsub fast float %3625, %3624
  %3628 = bitcast float %3627 to i32
  %3629 = sub nsw i32 2129859010, %3628
  %3630 = bitcast i32 %3629 to float
  %3631 = fmul fast float %3630, %3626
  %3632 = call float @dx.op.unary.f32(i32 7, float %3631)  ; Saturate(value)
  br label %3633

; <label>:3633                                    ; preds = %3587, %3581
  %3634 = phi float [ %3632, %3587 ], [ %3582, %3581 ]
  %3635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3636 = extractvalue %dx.types.ResRet.i32 %3635, 0
  %3637 = and i32 %3636, 128
  %3638 = icmp eq i32 %3637, 0
  br i1 %3638, label %3655, label %3639

; <label>:3639                                    ; preds = %3633
  %3640 = add i32 %48, 420
  %3641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3640, i32 undef)  ; BufferLoad(srv,index,wot)
  %3642 = extractvalue %dx.types.ResRet.i32 %3641, 0
  %3643 = add i32 %3642, 0
  %3644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3643, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3645 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3644, %dx.types.Handle %94, float %3468, float %3469, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3646 = extractvalue %dx.types.ResRet.f32 %3645, 0
  %3647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3648 = extractvalue %dx.types.ResRet.i32 %3647, 0
  %3649 = and i32 %3648, 524288
  %3650 = icmp ne i32 %3649, 0
  %3651 = fcmp fast ogt float %3646, 0x3FE0101020000000
  %3652 = select i1 %3651, float 1.000000e+00, float 0.000000e+00
  %3653 = select i1 %3650, float %3652, float %3646
  %3654 = fmul fast float %3653, %3634
  br label %3655

; <label>:3655                                    ; preds = %3639, %3633
  %3656 = phi float [ %3654, %3639 ], [ %3634, %3633 ]
  %3657 = fcmp fast ult float %3656, 0x3F70101020000000
  br i1 %3657, label %4396, label %3658

; <label>:3658                                    ; preds = %3655
  %3659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.i32 %3659, 0
  %3661 = and i32 %3660, 16
  %3662 = icmp eq i32 %3661, 0
  br i1 %3662, label %3861, label %3663

; <label>:3663                                    ; preds = %3658
  %3664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3384, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.i32 %3664, 0
  %3666 = add i32 %48, 372
  %3667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3666, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.i32 %3667, 0
  %3669 = add i32 %3668, 0
  %3670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3671 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3670, %dx.types.Handle %93, float %3468, float %3469, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3672 = extractvalue %dx.types.ResRet.f32 %3671, 0
  %3673 = extractvalue %dx.types.ResRet.f32 %3671, 1
  %3674 = extractvalue %dx.types.ResRet.f32 %3671, 2
  %3675 = extractvalue %dx.types.ResRet.f32 %3671, 3
  %3676 = and i32 %3665, 255
  %3677 = uitofp i32 %3676 to float
  %3678 = lshr i32 %3665, 8
  %3679 = and i32 %3678, 255
  %3680 = uitofp i32 %3679 to float
  %3681 = fmul fast float %3675, %3677
  %3682 = fadd fast float %3681, %3680
  %3683 = fmul fast float %3682, 0x3F70101000000000
  %3684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3685 = extractvalue %dx.types.ResRet.i32 %3684, 0
  %3686 = and i32 %3685, 512
  %3687 = icmp eq i32 %3686, 0
  br i1 %3687, label %3696, label %3688

; <label>:3688                                    ; preds = %3663
  %3689 = add i32 %48, 452
  %3690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3689, i32 undef)  ; BufferLoad(srv,index,wot)
  %3691 = extractvalue %dx.types.ResRet.i32 %3690, 0
  %3692 = add i32 %3691, 0
  %3693 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3692, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3694 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3693, %dx.types.Handle %94, float %3468, float %3469, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3695 = extractvalue %dx.types.ResRet.f32 %3694, 0
  br label %3696

; <label>:3696                                    ; preds = %3688, %3663
  %3697 = phi float [ %3695, %3688 ], [ 1.000000e+00, %3663 ]
  %3698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3699 = extractvalue %dx.types.ResRet.i32 %3698, 0
  %3700 = and i32 %3699, 33554432
  %3701 = icmp eq i32 %3700, 0
  br i1 %3701, label %3808, label %3702

; <label>:3702                                    ; preds = %3696
  %3703 = add i32 %48, 272
  %3704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3703, i32 undef)  ; BufferLoad(srv,index,wot)
  %3705 = extractvalue %dx.types.ResRet.i32 %3704, 0
  %3706 = and i32 %3705, 65535
  %3707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3706)  ; LegacyF16ToF32(value)
  %3708 = lshr i32 %3705, 16
  %3709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3708)  ; LegacyF16ToF32(value)
  %3710 = add i32 %48, 276
  %3711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3710, i32 undef)  ; BufferLoad(srv,index,wot)
  %3712 = extractvalue %dx.types.ResRet.i32 %3711, 0
  %3713 = and i32 %3712, 65535
  %3714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3713)  ; LegacyF16ToF32(value)
  %3715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %3716 = extractvalue %dx.types.ResRet.i32 %3715, 0
  %3717 = lshr i32 %3716, 24
  %3718 = uitofp i32 %3717 to float
  %3719 = fmul fast float %3718, 0x3F70101020000000
  %3720 = and i32 %3716, 255
  %3721 = uitofp i32 %3720 to float
  %3722 = fmul fast float %3721, 0x3F70101020000000
  %3723 = lshr i32 %3716, 8
  %3724 = and i32 %3723, 255
  %3725 = uitofp i32 %3724 to float
  %3726 = fmul fast float %3725, 0x3F70101020000000
  %3727 = lshr i32 %3716, 16
  %3728 = and i32 %3727, 255
  %3729 = uitofp i32 %3728 to float
  %3730 = fmul fast float %3729, 0x3F70101020000000
  %3731 = add i32 %48, 268
  %3732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3731, i32 undef)  ; BufferLoad(srv,index,wot)
  %3733 = extractvalue %dx.types.ResRet.i32 %3732, 0
  %3734 = lshr i32 %3733, 24
  %3735 = uitofp i32 %3734 to float
  %3736 = fmul fast float %3735, 0x3F70101020000000
  %3737 = and i32 %3733, 255
  %3738 = uitofp i32 %3737 to float
  %3739 = fmul fast float %3738, 0x3F70101020000000
  %3740 = lshr i32 %3733, 8
  %3741 = and i32 %3740, 255
  %3742 = uitofp i32 %3741 to float
  %3743 = fmul fast float %3742, 0x3F70101020000000
  %3744 = lshr i32 %3733, 16
  %3745 = and i32 %3744, 255
  %3746 = uitofp i32 %3745 to float
  %3747 = fmul fast float %3746, 0x3F70101020000000
  %3748 = bitcast float %3672 to i32
  %3749 = ashr i32 %3748, 1
  %3750 = sub nsw i32 1597463174, %3749
  %3751 = bitcast i32 %3750 to float
  %3752 = fmul fast float %3672, 5.000000e-01
  %3753 = fmul fast float %3751, %3751
  %3754 = fmul fast float %3753, %3752
  %3755 = fsub fast float 1.500000e+00, %3754
  %3756 = fmul fast float %3751, %3672
  %3757 = fmul fast float %3756, %3755
  %3758 = bitcast float %3673 to i32
  %3759 = ashr i32 %3758, 1
  %3760 = sub nsw i32 1597463174, %3759
  %3761 = bitcast i32 %3760 to float
  %3762 = fmul fast float %3673, 5.000000e-01
  %3763 = fmul fast float %3761, %3761
  %3764 = fmul fast float %3763, %3762
  %3765 = fsub fast float 1.500000e+00, %3764
  %3766 = fmul fast float %3761, %3673
  %3767 = fmul fast float %3766, %3765
  %3768 = bitcast float %3674 to i32
  %3769 = ashr i32 %3768, 1
  %3770 = sub nsw i32 1597463174, %3769
  %3771 = bitcast i32 %3770 to float
  %3772 = fmul fast float %3674, 5.000000e-01
  %3773 = fmul fast float %3771, %3771
  %3774 = fmul fast float %3773, %3772
  %3775 = fsub fast float 1.500000e+00, %3774
  %3776 = fmul fast float %3771, %3674
  %3777 = fmul fast float %3776, %3775
  %3778 = fsub fast float %3757, %3739
  %3779 = fsub fast float %3767, %3743
  %3780 = fsub fast float %3777, %3747
  %3781 = fmul fast float %3778, %3707
  %3782 = fmul fast float %3779, %3709
  %3783 = fmul fast float %3780, %3714
  %3784 = fadd fast float %3781, %3722
  %3785 = fadd fast float %3782, %3726
  %3786 = fadd fast float %3783, %3730
  %3787 = call float @dx.op.unary.f32(i32 7, float %3784)  ; Saturate(value)
  %3788 = call float @dx.op.unary.f32(i32 7, float %3785)  ; Saturate(value)
  %3789 = call float @dx.op.unary.f32(i32 7, float %3786)  ; Saturate(value)
  %3790 = fmul fast float %3787, %3787
  %3791 = fmul fast float %3788, %3788
  %3792 = fmul fast float %3789, %3789
  %3793 = fsub fast float %3790, %3672
  %3794 = fsub fast float %3791, %3673
  %3795 = fsub fast float %3792, %3674
  %3796 = fmul fast float %3793, %3697
  %3797 = fmul fast float %3794, %3697
  %3798 = fmul fast float %3795, %3697
  %3799 = fadd fast float %3796, %3672
  %3800 = fadd fast float %3797, %3673
  %3801 = fadd fast float %3798, %3674
  %3802 = fadd fast float %3719, %3683
  %3803 = fsub fast float %3802, %3736
  %3804 = call float @dx.op.unary.f32(i32 7, float %3803)  ; Saturate(value)
  %3805 = fsub fast float %3804, %3683
  %3806 = fmul fast float %3805, %3697
  %3807 = fadd fast float %3806, %3683
  br label %3861

; <label>:3808                                    ; preds = %3696
  %3809 = and i32 %3699, 134217728
  %3810 = icmp eq i32 %3809, 0
  br i1 %3810, label %3845, label %3811

; <label>:3811                                    ; preds = %3808
  %3812 = call float @dx.op.unary.f32(i32 24, float %368)  ; Sqrt(value)
  %3813 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %3814 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %3815 = fadd fast float %3812, -5.000000e-01
  %3816 = fadd fast float %3813, -5.000000e-01
  %3817 = fadd fast float %3814, -5.000000e-01
  %3818 = fmul fast float %3815, %3697
  %3819 = fmul fast float %3816, %3697
  %3820 = fmul fast float %3817, %3697
  %3821 = fadd fast float %3818, 5.000000e-01
  %3822 = fadd fast float %3819, 5.000000e-01
  %3823 = fadd fast float %3820, 5.000000e-01
  %3824 = call float @dx.op.unary.f32(i32 24, float %3672)  ; Sqrt(value)
  %3825 = call float @dx.op.unary.f32(i32 24, float %3673)  ; Sqrt(value)
  %3826 = call float @dx.op.unary.f32(i32 24, float %3674)  ; Sqrt(value)
  %3827 = fmul fast float %3821, 2.000000e+00
  %3828 = fsub fast float 1.000000e+00, %3827
  %3829 = fmul fast float %3828, %3824
  %3830 = fadd fast float %3829, %3827
  %3831 = fmul fast float %3830, %3824
  %3832 = fmul fast float %3822, 2.000000e+00
  %3833 = fsub fast float 1.000000e+00, %3832
  %3834 = fmul fast float %3833, %3825
  %3835 = fadd fast float %3834, %3832
  %3836 = fmul fast float %3835, %3825
  %3837 = fmul fast float %3823, 2.000000e+00
  %3838 = fsub fast float 1.000000e+00, %3837
  %3839 = fmul fast float %3838, %3826
  %3840 = fadd fast float %3839, %3837
  %3841 = fmul fast float %3840, %3826
  %3842 = fmul fast float %3831, %3831
  %3843 = fmul fast float %3836, %3836
  %3844 = fmul fast float %3841, %3841
  br label %3861

; <label>:3845                                    ; preds = %3808
  %3846 = fmul fast float %368, %368
  %3847 = fmul fast float %372, %372
  %3848 = fmul fast float %376, %376
  %3849 = fadd fast float %3846, -1.000000e+00
  %3850 = fadd fast float %3847, -1.000000e+00
  %3851 = fadd fast float %3848, -1.000000e+00
  %3852 = fmul fast float %3697, %3849
  %3853 = fmul fast float %3697, %3850
  %3854 = fmul fast float %3697, %3851
  %3855 = fadd fast float %3852, 1.000000e+00
  %3856 = fadd fast float %3853, 1.000000e+00
  %3857 = fadd fast float %3854, 1.000000e+00
  %3858 = fmul fast float %3855, %3672
  %3859 = fmul fast float %3856, %3673
  %3860 = fmul fast float %3857, %3674
  br label %3861

; <label>:3861                                    ; preds = %3845, %3811, %3702, %3658
  %3862 = phi float [ %3807, %3702 ], [ %3683, %3811 ], [ %3683, %3845 ], [ 0x3FA23C0BE0000000, %3658 ]
  %3863 = phi float [ %3799, %3702 ], [ %3842, %3811 ], [ %3858, %3845 ], [ 1.000000e+00, %3658 ]
  %3864 = phi float [ %3800, %3702 ], [ %3843, %3811 ], [ %3859, %3845 ], [ 1.000000e+00, %3658 ]
  %3865 = phi float [ %3801, %3702 ], [ %3844, %3811 ], [ %3860, %3845 ], [ 1.000000e+00, %3658 ]
  %3866 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3867 = extractvalue %dx.types.CBufRet.i32 %3866, 1
  %3868 = and i32 %3867, 1
  %3869 = icmp ne i32 %3868, 0
  %3870 = add i32 %48, 356
  %3871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3870, i32 undef)  ; BufferLoad(srv,index,wot)
  %3872 = extractvalue %dx.types.ResRet.i32 %3871, 0
  %3873 = and i32 %3872, 32
  %3874 = icmp ne i32 %3873, 0
  %3875 = and i1 %3869, %3874
  %3876 = select i1 %3875, float 1.000000e+00, float %3863
  %3877 = select i1 %3875, float 0x3FD3333340000000, float %3864
  %3878 = select i1 %3875, float 0x3FD3333340000000, float %3865
  %3879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3880 = extractvalue %dx.types.ResRet.i32 %3879, 0
  %3881 = and i32 %3880, 32
  %3882 = icmp eq i32 %3881, 0
  br i1 %3882, label %3955, label %3883

; <label>:3883                                    ; preds = %3861
  %3884 = add i32 %48, 140
  %3885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3884, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.i32 %3885, 0
  %3887 = add i32 %48, 388
  %3888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.i32 %3888, 0
  %3890 = add i32 %3889, 0
  %3891 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3890, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3892 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3891, %dx.types.Handle %93, float %3468, float %3469, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3893 = extractvalue %dx.types.ResRet.f32 %3892, 0
  %3894 = extractvalue %dx.types.ResRet.f32 %3892, 1
  %3895 = extractvalue %dx.types.ResRet.f32 %3892, 2
  %3896 = extractvalue %dx.types.ResRet.f32 %3892, 3
  %3897 = and i32 %3886, 255
  %3898 = uitofp i32 %3897 to float
  %3899 = lshr i32 %3886, 8
  %3900 = and i32 %3899, 255
  %3901 = uitofp i32 %3900 to float
  %3902 = lshr i32 %3886, 16
  %3903 = and i32 %3902, 255
  %3904 = uitofp i32 %3903 to float
  %3905 = fmul fast float %3904, 0x3F70101000000000
  %3906 = fmul fast float %3893, %3898
  %3907 = fadd fast float %3906, %3901
  %3908 = fmul fast float %3907, 0x3F70101000000000
  %3909 = fadd fast float %3894, -5.000000e-01
  %3910 = fadd fast float %3896, -5.000000e-01
  %3911 = fmul fast float %3909, %3905
  %3912 = fmul fast float %3910, %3905
  %3913 = fadd fast float %3911, 5.000000e-01
  %3914 = fadd fast float %3912, 5.000000e-01
  %3915 = fmul fast float %3913, 2.000000e+00
  %3916 = fadd fast float %3915, -1.000000e+00
  %3917 = fmul fast float %3914, 2.000000e+00
  %3918 = fadd fast float %3917, -1.000000e+00
  %3919 = fadd fast float %3916, %3918
  %3920 = fmul fast float %3919, 5.000000e-01
  %3921 = fsub fast float %3916, %3918
  %3922 = fmul fast float %3921, 5.000000e-01
  %3923 = call float @dx.op.unary.f32(i32 6, float %3920)  ; FAbs(value)
  %3924 = fsub fast float 1.000000e+00, %3923
  %3925 = call float @dx.op.unary.f32(i32 6, float %3922)  ; FAbs(value)
  %3926 = fsub fast float %3924, %3925
  %3927 = call float @dx.op.dot3.f32(i32 55, float %3920, float %3922, float %3926, float %3920, float %3922, float %3926)  ; Dot3(ax,ay,az,bx,by,bz)
  %3928 = call float @dx.op.unary.f32(i32 25, float %3927)  ; Rsqrt(value)
  %3929 = fmul fast float %3920, %3928
  %3930 = fmul fast float %3922, %3928
  %3931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3932 = extractvalue %dx.types.ResRet.i32 %3931, 0
  %3933 = and i32 %3932, 67108864
  %3934 = icmp eq i32 %3933, 0
  br i1 %3934, label %3951, label %3935

; <label>:3935                                    ; preds = %3883
  %3936 = add i32 %48, 328
  %3937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3936, i32 undef)  ; BufferLoad(srv,index,wot)
  %3938 = extractvalue %dx.types.ResRet.i32 %3937, 0
  %3939 = and i32 %3938, 65535
  %3940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3939)  ; LegacyF16ToF32(value)
  %3941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3378, i32 undef)  ; BufferLoad(srv,index,wot)
  %3942 = extractvalue %dx.types.ResRet.i32 %3941, 0
  %3943 = and i32 %3942, 65535
  %3944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3943)  ; LegacyF16ToF32(value)
  %3945 = lshr i32 %3938, 16
  %3946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3945)  ; LegacyF16ToF32(value)
  %3947 = fsub fast float %3908, %3946
  %3948 = fmul fast float %3947, %3940
  %3949 = fadd fast float %3948, %3944
  %3950 = call float @dx.op.unary.f32(i32 7, float %3949)  ; Saturate(value)
  br label %3951

; <label>:3951                                    ; preds = %3935, %3883
  %3952 = phi float [ %3950, %3935 ], [ %3908, %3883 ]
  %3953 = call float @dx.op.dot2.f32(i32 54, float %3929, float %3930, float %3372, float %3373)  ; Dot2(ax,ay,bx,by)
  %3954 = call float @dx.op.dot2.f32(i32 54, float %3929, float %3930, float %3374, float %3375)  ; Dot2(ax,ay,bx,by)
  br label %3955

; <label>:3955                                    ; preds = %3951, %3861
  %3956 = phi float [ %3952, %3951 ], [ 0x3FD6666660000000, %3861 ]
  %3957 = phi float [ %3953, %3951 ], [ 0.000000e+00, %3861 ]
  %3958 = phi float [ %3954, %3951 ], [ 0.000000e+00, %3861 ]
  %3959 = phi float [ %3895, %3951 ], [ 1.000000e+00, %3861 ]
  %3960 = add i32 %48, 208
  %3961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3960, i32 undef)  ; BufferLoad(srv,index,wot)
  %3962 = extractvalue %dx.types.ResRet.i32 %3961, 0
  %3963 = lshr i32 %3962, 22
  %3964 = shl nuw nsw i32 %3963, 5
  %3965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3964)  ; LegacyF16ToF32(value)
  %3966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3967 = extractvalue %dx.types.ResRet.i32 %3966, 0
  %3968 = and i32 %3967, 64
  %3969 = icmp eq i32 %3968, 0
  br i1 %3969, label %4003, label %3970

; <label>:3970                                    ; preds = %3955
  %3971 = add i32 %48, 404
  %3972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3971, i32 undef)  ; BufferLoad(srv,index,wot)
  %3973 = extractvalue %dx.types.ResRet.i32 %3972, 0
  %3974 = add i32 %3973, 0
  %3975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3974, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3977 = extractvalue %dx.types.ResRet.i32 %3976, 0
  %3978 = and i32 %3977, 131072
  %3979 = icmp eq i32 %3978, 0
  %3980 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3975, %dx.types.Handle %93, float %3468, float %3469, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3981 = extractvalue %dx.types.ResRet.f32 %3980, 0
  %3982 = extractvalue %dx.types.ResRet.f32 %3980, 1
  %3983 = extractvalue %dx.types.ResRet.f32 %3980, 2
  %3984 = fmul fast float %3981, %356
  %3985 = fmul fast float %3982, %359
  %3986 = fmul fast float %3983, %362
  br i1 %3979, label %3993, label %3987

; <label>:3987                                    ; preds = %3970
  %3988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3989 = extractvalue %dx.types.CBufRet.f32 %3988, 0
  %3990 = fmul fast float %3989, %3984
  %3991 = fmul fast float %3989, %3985
  %3992 = fmul fast float %3989, %3986
  br label %3993

; <label>:3993                                    ; preds = %3987, %3970
  %3994 = phi float [ %3990, %3987 ], [ %3984, %3970 ]
  %3995 = phi float [ %3991, %3987 ], [ %3985, %3970 ]
  %3996 = phi float [ %3992, %3987 ], [ %3986, %3970 ]
  %3997 = fmul fast float %3994, %3965
  %3998 = select i1 %213, float %3997, float %3994
  %3999 = call float @dx.op.dot3.f32(i32 55, float %3998, float %3995, float %3996, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4000 = select i1 %213, float 0.000000e+00, float %3994
  %4001 = select i1 %213, float %3999, float %3995
  %4002 = select i1 %213, float 0.000000e+00, float %3996
  br label %4003

; <label>:4003                                    ; preds = %3993, %3955
  %4004 = phi float [ %4000, %3993 ], [ 0.000000e+00, %3955 ]
  %4005 = phi float [ %4001, %3993 ], [ 0.000000e+00, %3955 ]
  %4006 = phi float [ %4002, %3993 ], [ 0.000000e+00, %3955 ]
  %4007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %4008 = extractvalue %dx.types.ResRet.i32 %4007, 0
  %4009 = and i32 %4008, 1024
  %4010 = icmp eq i32 %4009, 0
  br i1 %4010, label %4041, label %4011

; <label>:4011                                    ; preds = %4003
  %4012 = add i32 %48, 200
  %4013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4012, i32 undef)  ; BufferLoad(srv,index,wot)
  %4014 = extractvalue %dx.types.ResRet.i32 %4013, 0
  %4015 = and i32 %4014, 255
  %4016 = uitofp i32 %4015 to float
  %4017 = fmul fast float %4016, 0x3F70101020000000
  %4018 = lshr i32 %4014, 8
  %4019 = and i32 %4018, 255
  %4020 = uitofp i32 %4019 to float
  %4021 = fmul fast float %4020, 0x3F70101020000000
  %4022 = lshr i32 %4014, 16
  %4023 = and i32 %4022, 255
  %4024 = uitofp i32 %4023 to float
  %4025 = fmul fast float %4024, 0x3F70101020000000
  %4026 = fmul fast float %4017, %4017
  %4027 = fmul fast float %4021, %4021
  %4028 = fmul fast float %4025, %4025
  %4029 = add i32 %48, 468
  %4030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4029, i32 undef)  ; BufferLoad(srv,index,wot)
  %4031 = extractvalue %dx.types.ResRet.i32 %4030, 0
  %4032 = add i32 %4031, 0
  %4033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4032, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4034 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4033, %dx.types.Handle %94, float %3468, float %3469, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4035 = extractvalue %dx.types.ResRet.f32 %4034, 0
  %4036 = extractvalue %dx.types.ResRet.f32 %4034, 1
  %4037 = extractvalue %dx.types.ResRet.f32 %4034, 2
  %4038 = fmul fast float %4026, %4035
  %4039 = fmul fast float %4027, %4036
  %4040 = fmul fast float %4028, %4037
  br label %4041

; <label>:4041                                    ; preds = %4011, %4003
  %4042 = phi float [ %4038, %4011 ], [ 0.000000e+00, %4003 ]
  %4043 = phi float [ %4039, %4011 ], [ 0.000000e+00, %4003 ]
  %4044 = phi float [ %4040, %4011 ], [ 0.000000e+00, %4003 ]
  %4045 = fcmp fast ogt float %4042, 0.000000e+00
  %4046 = fcmp fast ogt float %4043, 0.000000e+00
  %4047 = fcmp fast ogt float %4044, 0.000000e+00
  %4048 = call float @dx.op.unary.f32(i32 23, float %4042)  ; Log(value)
  %4049 = call float @dx.op.unary.f32(i32 23, float %4043)  ; Log(value)
  %4050 = call float @dx.op.unary.f32(i32 23, float %4044)  ; Log(value)
  %4051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3960, i32 undef)  ; BufferLoad(srv,index,wot)
  %4052 = extractvalue %dx.types.ResRet.i32 %4051, 0
  %4053 = lshr i32 %4052, 7
  %4054 = and i32 %4053, 32752
  %4055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4054)  ; LegacyF16ToF32(value)
  %4056 = fmul fast float %4048, 0xBFE62E4300000000
  %4057 = fmul fast float %4056, %4055
  %4058 = fmul fast float %4049, 0xBFE62E4300000000
  %4059 = fmul fast float %4058, %4055
  %4060 = fmul fast float %4050, 0xBFE62E4300000000
  %4061 = fmul fast float %4060, %4055
  %4062 = select i1 %4045, float %4057, float 1.270000e+02
  %4063 = select i1 %4046, float %4059, float 1.270000e+02
  %4064 = select i1 %4047, float %4061, float 1.270000e+02
  %4065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %4066 = extractvalue %dx.types.ResRet.i32 %4065, 0
  %4067 = and i32 %4066, 10240
  %4068 = icmp eq i32 %4067, 0
  br i1 %4068, label %4113, label %4069

; <label>:4069                                    ; preds = %4041
  %4070 = add i32 %48, 484
  %4071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4070, i32 undef)  ; BufferLoad(srv,index,wot)
  %4072 = extractvalue %dx.types.ResRet.i32 %4071, 0
  %4073 = add i32 %4072, 0
  %4074 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4073, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4075 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4074, %dx.types.Handle %94, float %3468, float %3469, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4076 = extractvalue %dx.types.ResRet.f32 %4075, 1
  %4077 = extractvalue %dx.types.ResRet.f32 %4075, 3
  %4078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %4079 = extractvalue %dx.types.ResRet.i32 %4078, 0
  %4080 = and i32 %4079, 1048576
  %4081 = icmp ne i32 %4080, 0
  %4082 = and i32 %4079, 8192
  %4083 = icmp eq i32 %4082, 0
  br i1 %4083, label %4099, label %4084

; <label>:4084                                    ; preds = %4069
  %4085 = extractvalue %dx.types.ResRet.f32 %4075, 2
  %4086 = select i1 %4081, float %4085, float %4076
  %4087 = extractvalue %dx.types.ResRet.f32 %4075, 0
  %4088 = select i1 %4081, float %4087, float %4076
  %4089 = add i32 %48, 144
  %4090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.i32 %4090, 0
  %4092 = lshr i32 %4091, 16
  %4093 = and i32 %4092, 255
  %4094 = uitofp i32 %4093 to float
  %4095 = fmul fast float %4094, 0x3F80101020000000
  %4096 = fmul fast float %4095, %4088
  %4097 = fmul fast float %4095, %4076
  %4098 = fmul fast float %4095, %4086
  br label %4099

; <label>:4099                                    ; preds = %4084, %4069
  %4100 = phi float [ %4096, %4084 ], [ 0.000000e+00, %4069 ]
  %4101 = phi float [ %4097, %4084 ], [ 0.000000e+00, %4069 ]
  %4102 = phi float [ %4098, %4084 ], [ 0.000000e+00, %4069 ]
  %4103 = and i32 %4079, 2048
  %4104 = icmp eq i32 %4103, 0
  br i1 %4104, label %4113, label %4105

; <label>:4105                                    ; preds = %4099
  %4106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3960, i32 undef)  ; BufferLoad(srv,index,wot)
  %4107 = extractvalue %dx.types.ResRet.i32 %4106, 0
  %4108 = shl i32 %4107, 4
  %4109 = and i32 %4108, 32752
  %4110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4109)  ; LegacyF16ToF32(value)
  %4111 = fmul fast float %4110, %4077
  %4112 = call float @dx.op.binary.f32(i32 35, float %4111, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4113

; <label>:4113                                    ; preds = %4105, %4099, %4041
  %4114 = phi float [ %4100, %4105 ], [ %4100, %4099 ], [ 0.000000e+00, %4041 ]
  %4115 = phi float [ %4101, %4105 ], [ %4101, %4099 ], [ 0.000000e+00, %4041 ]
  %4116 = phi float [ %4102, %4105 ], [ %4102, %4099 ], [ 0.000000e+00, %4041 ]
  %4117 = phi float [ %4112, %4105 ], [ 0x3F70101020000000, %4099 ], [ 0x3F70101020000000, %4041 ]
  %4118 = add i32 %48, 144
  %4119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4118, i32 undef)  ; BufferLoad(srv,index,wot)
  %4120 = extractvalue %dx.types.ResRet.i32 %4119, 0
  %4121 = and i32 %4120, 255
  %4122 = uitofp i32 %4121 to float
  %4123 = lshr i32 %4120, 8
  %4124 = and i32 %4123, 255
  %4125 = uitofp i32 %4124 to float
  %4126 = call float @dx.op.dot3.f32(i32 55, float %3876, float %3877, float %3878, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4127 = fmul fast float %4125, %4126
  %4128 = fadd fast float %4127, %4122
  %4129 = fmul fast float %4128, 0x3F70101020000000
  %4130 = call float @dx.op.unary.f32(i32 7, float %4129)  ; Saturate(value)
  br i1 %3360, label %4131, label %4166

; <label>:4131                                    ; preds = %4113
  %4132 = fmul fast float %4117, 2.000000e+00
  %4133 = fcmp fast olt float %4062, 1.270000e+02
  %4134 = fcmp fast olt float %4063, 1.270000e+02
  %4135 = fcmp fast olt float %4064, 1.270000e+02
  %4136 = fmul fast float %4062, 0xBFF7154760000000
  %4137 = fmul fast float %4136, %4132
  %4138 = fmul fast float %4063, 0xBFF7154760000000
  %4139 = fmul fast float %4138, %4132
  %4140 = fmul fast float %4064, 0xBFF7154760000000
  %4141 = fmul fast float %4140, %4132
  %4142 = call float @dx.op.unary.f32(i32 21, float %4137)  ; Exp(value)
  %4143 = call float @dx.op.unary.f32(i32 21, float %4139)  ; Exp(value)
  %4144 = call float @dx.op.unary.f32(i32 21, float %4141)  ; Exp(value)
  %4145 = call float @dx.op.unary.f32(i32 7, float %4142)  ; Saturate(value)
  %4146 = call float @dx.op.unary.f32(i32 7, float %4143)  ; Saturate(value)
  %4147 = call float @dx.op.unary.f32(i32 7, float %4144)  ; Saturate(value)
  %4148 = fadd fast float %4145, -1.000000e+00
  %4149 = select i1 %4133, float %4148, float -1.000000e+00
  %4150 = fadd fast float %4146, -1.000000e+00
  %4151 = select i1 %4134, float %4150, float -1.000000e+00
  %4152 = fadd fast float %4147, -1.000000e+00
  %4153 = select i1 %4135, float %4152, float -1.000000e+00
  %4154 = fmul fast float %4149, %3656
  %4155 = fmul fast float %4151, %3656
  %4156 = fmul fast float %4153, %3656
  %4157 = fadd fast float %4154, 1.000000e+00
  %4158 = fadd fast float %4155, 1.000000e+00
  %4159 = fadd fast float %4156, 1.000000e+00
  %4160 = fmul fast float %4157, %3342
  %4161 = fmul fast float %4158, %3343
  %4162 = fmul fast float %4159, %3344
  %4163 = fmul fast float %4157, %3345
  %4164 = fmul fast float %4158, %3346
  %4165 = fmul fast float %4159, %3347
  br label %4166

; <label>:4166                                    ; preds = %4131, %4113
  %4167 = phi float [ %4160, %4131 ], [ %3342, %4113 ]
  %4168 = phi float [ %4161, %4131 ], [ %3343, %4113 ]
  %4169 = phi float [ %4162, %4131 ], [ %3344, %4113 ]
  %4170 = phi float [ %4163, %4131 ], [ %3345, %4113 ]
  %4171 = phi float [ %4164, %4131 ], [ %3346, %4113 ]
  %4172 = phi float [ %4165, %4131 ], [ %3347, %4113 ]
  %4173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %4174 = extractvalue %dx.types.ResRet.i32 %4173, 0
  %4175 = and i32 %4174, 3
  %4176 = icmp eq i32 %4175, 3
  br i1 %4176, label %4255, label %4177

; <label>:4177                                    ; preds = %4166
  %4178 = and i32 %4174, 16
  %4179 = icmp ne i32 %4178, 0
  %4180 = select i1 %4179, float %3656, float 0.000000e+00
  %4181 = icmp eq i32 %4175, 0
  br i1 %4181, label %4182, label %4210

; <label>:4182                                    ; preds = %4177
  %4183 = and i32 %4174, 64
  %4184 = icmp ne i32 %4183, 0
  %4185 = select i1 %4184, float %3656, float 0.000000e+00
  %4186 = fsub fast float %3876, %4167
  %4187 = fsub fast float %3877, %4168
  %4188 = fsub fast float %3878, %4169
  %4189 = fmul fast float %4180, %4186
  %4190 = fmul fast float %4180, %4187
  %4191 = fmul fast float %4180, %4188
  %4192 = fadd fast float %4189, %4167
  %4193 = fadd fast float %4190, %4168
  %4194 = fadd fast float %4191, %4169
  %4195 = fsub fast float %3862, %3354
  %4196 = fmul fast float %4180, %4195
  %4197 = fadd fast float %4196, %3354
  %4198 = fsub fast float %4004, %4170
  %4199 = fsub fast float %4005, %4171
  %4200 = fsub fast float %4006, %4172
  %4201 = fmul fast float %4185, %4198
  %4202 = fmul fast float %4185, %4199
  %4203 = fmul fast float %4185, %4200
  %4204 = fadd fast float %4201, %4170
  %4205 = fadd fast float %4202, %4171
  %4206 = fadd fast float %4203, %4172
  %4207 = fsub fast float %4130, %3358
  %4208 = fmul fast float %4180, %4207
  %4209 = fadd fast float %4208, %3358
  br label %4255

; <label>:4210                                    ; preds = %4177
  %4211 = icmp eq i32 %4175, 1
  br i1 %4211, label %4212, label %4225

; <label>:4212                                    ; preds = %4210
  %4213 = fadd fast float %3876, -1.000000e+00
  %4214 = fadd fast float %3877, -1.000000e+00
  %4215 = fadd fast float %3878, -1.000000e+00
  %4216 = fmul fast float %4180, %4213
  %4217 = fmul fast float %4180, %4214
  %4218 = fmul fast float %4180, %4215
  %4219 = fadd fast float %4216, 1.000000e+00
  %4220 = fadd fast float %4217, 1.000000e+00
  %4221 = fadd fast float %4218, 1.000000e+00
  %4222 = fmul fast float %4219, %4167
  %4223 = fmul fast float %4220, %4168
  %4224 = fmul fast float %4221, %4169
  br label %4255

; <label>:4225                                    ; preds = %4210
  %4226 = icmp eq i32 %4175, 2
  br i1 %4226, label %4227, label %4255

; <label>:4227                                    ; preds = %4225
  %4228 = call float @dx.op.unary.f32(i32 24, float %3876)  ; Sqrt(value)
  %4229 = call float @dx.op.unary.f32(i32 24, float %3877)  ; Sqrt(value)
  %4230 = call float @dx.op.unary.f32(i32 24, float %3878)  ; Sqrt(value)
  %4231 = fadd fast float %4228, -5.000000e-01
  %4232 = fadd fast float %4229, -5.000000e-01
  %4233 = fadd fast float %4230, -5.000000e-01
  %4234 = fmul fast float %4231, %4180
  %4235 = fmul fast float %4232, %4180
  %4236 = fmul fast float %4233, %4180
  %4237 = fadd fast float %4234, 5.000000e-01
  %4238 = fadd fast float %4235, 5.000000e-01
  %4239 = fadd fast float %4236, 5.000000e-01
  %4240 = fmul fast float %4237, 2.000000e+00
  %4241 = fsub fast float 1.000000e+00, %4240
  %4242 = fmul fast float %4241, %4167
  %4243 = fadd fast float %4242, %4240
  %4244 = fmul fast float %4243, %4167
  %4245 = fmul fast float %4238, 2.000000e+00
  %4246 = fsub fast float 1.000000e+00, %4245
  %4247 = fmul fast float %4246, %4168
  %4248 = fadd fast float %4247, %4245
  %4249 = fmul fast float %4248, %4168
  %4250 = fmul fast float %4239, 2.000000e+00
  %4251 = fsub fast float 1.000000e+00, %4250
  %4252 = fmul fast float %4251, %4169
  %4253 = fadd fast float %4252, %4250
  %4254 = fmul fast float %4253, %4169
  br label %4255

; <label>:4255                                    ; preds = %4227, %4225, %4212, %4182, %4166
  %4256 = phi float [ %4167, %4166 ], [ %4244, %4227 ], [ %4167, %4225 ], [ %4222, %4212 ], [ %4192, %4182 ]
  %4257 = phi float [ %4168, %4166 ], [ %4249, %4227 ], [ %4168, %4225 ], [ %4223, %4212 ], [ %4193, %4182 ]
  %4258 = phi float [ %4169, %4166 ], [ %4254, %4227 ], [ %4169, %4225 ], [ %4224, %4212 ], [ %4194, %4182 ]
  %4259 = phi float [ %4170, %4166 ], [ %4170, %4227 ], [ %4170, %4225 ], [ %4170, %4212 ], [ %4204, %4182 ]
  %4260 = phi float [ %4171, %4166 ], [ %4171, %4227 ], [ %4171, %4225 ], [ %4171, %4212 ], [ %4205, %4182 ]
  %4261 = phi float [ %4172, %4166 ], [ %4172, %4227 ], [ %4172, %4225 ], [ %4172, %4212 ], [ %4206, %4182 ]
  %4262 = phi float [ %3354, %4166 ], [ %3354, %4227 ], [ %3354, %4225 ], [ %3354, %4212 ], [ %4197, %4182 ]
  %4263 = phi float [ %3358, %4166 ], [ %3358, %4227 ], [ %3358, %4225 ], [ %3358, %4212 ], [ %4209, %4182 ]
  %4264 = and i32 %4174, 12
  %4265 = icmp eq i32 %4264, 12
  br i1 %4265, label %4396, label %4266

; <label>:4266                                    ; preds = %4255
  %4267 = and i32 %4174, 2097184
  %4268 = icmp eq i32 %4267, 2097184
  %4269 = select i1 %4268, float %3656, float 0.000000e+00
  %4270 = and i32 %4174, 4194336
  %4271 = icmp eq i32 %4270, 4194336
  %4272 = select i1 %4271, float %3656, float 0.000000e+00
  %4273 = and i32 %4174, 8388640
  %4274 = icmp eq i32 %4273, 8388640
  %4275 = select i1 %4274, float %3656, float 0.000000e+00
  %4276 = and i32 %4174, 1024
  %4277 = icmp ne i32 %4276, 0
  %4278 = select i1 %4277, float %3656, float 0.000000e+00
  %4279 = and i32 %4174, 2048
  %4280 = icmp ne i32 %4279, 0
  %4281 = select i1 %4280, float %3656, float 0.000000e+00
  %4282 = and i32 %4174, 8192
  %4283 = icmp ne i32 %4282, 0
  %4284 = select i1 %4283, float %3656, float 0.000000e+00
  %4285 = icmp eq i32 %4264, 0
  br i1 %4285, label %4286, label %4320

; <label>:4286                                    ; preds = %4266
  %4287 = fsub fast float %3957, %3340
  %4288 = fsub fast float %3958, %3341
  %4289 = fmul fast float %4269, %4287
  %4290 = fmul fast float %4269, %4288
  %4291 = fadd fast float %4289, %3340
  %4292 = fadd fast float %4290, %3341
  %4293 = fsub fast float %3959, %3356
  %4294 = fmul fast float %4272, %4293
  %4295 = fadd fast float %4294, %3356
  %4296 = fsub fast float %3956, %3355
  %4297 = fmul fast float %4275, %4296
  %4298 = fadd fast float %4297, %3355
  %4299 = fsub fast float %4062, %3348
  %4300 = fsub fast float %4063, %3349
  %4301 = fsub fast float %4064, %3350
  %4302 = fmul fast float %4278, %4299
  %4303 = fmul fast float %4278, %4300
  %4304 = fmul fast float %4278, %4301
  %4305 = fadd fast float %4302, %3348
  %4306 = fadd fast float %4303, %3349
  %4307 = fadd fast float %4304, %3350
  %4308 = fsub fast float %4117, %3357
  %4309 = fmul fast float %4281, %4308
  %4310 = fadd fast float %4309, %3357
  %4311 = fsub fast float %4114, %3351
  %4312 = fsub fast float %4115, %3352
  %4313 = fsub fast float %4116, %3353
  %4314 = fmul fast float %4284, %4311
  %4315 = fmul fast float %4284, %4312
  %4316 = fmul fast float %4284, %4313
  %4317 = fadd fast float %4314, %3351
  %4318 = fadd fast float %4315, %3352
  %4319 = fadd fast float %4316, %3353
  br label %4396

; <label>:4320                                    ; preds = %4266
  %4321 = icmp eq i32 %4264, 4
  br i1 %4321, label %4322, label %4368

; <label>:4322                                    ; preds = %4320
  %4323 = fmul fast float %4269, %3957
  %4324 = fmul fast float %4269, %3958
  %4325 = fadd fast float %4323, %3340
  %4326 = fadd fast float %4324, %3341
  %4327 = call float @dx.op.binary.f32(i32 36, float %3356, float %3959)  ; FMin(a,b)
  %4328 = fsub fast float %4327, %3356
  %4329 = fmul fast float %4328, %4272
  %4330 = fadd fast float %4329, %3356
  %4331 = fadd fast float %3956, %3355
  %4332 = fmul fast float %4331, 0x3FF337FAE0000000
  %4333 = fmul fast float %3355, %3355
  %4334 = fmul fast float %3956, %3956
  %4335 = fadd fast float %4334, %4333
  %4336 = fmul fast float %4335, 0x3FE5152B00000000
  %4337 = fmul fast float %3355, 0xBFCC1F85E0000000
  %4338 = fmul fast float %4337, %3956
  %4339 = fadd fast float %4338, 0xBFE1363700000000
  %4340 = fadd fast float %4339, %4332
  %4341 = fsub fast float %4340, %4336
  %4342 = fmul fast float %4331, 0x3FBA6F0D00000000
  %4343 = fmul fast float %4335, 0x3FD0432880000000
  %4344 = fmul fast float %3355, 0xBFEF110800000000
  %4345 = fmul fast float %4344, %3956
  %4346 = fadd fast float %4345, 1.000000e+00
  %4347 = fsub fast float %4346, %4342
  %4348 = fadd fast float %4347, %4343
  %4349 = fdiv fast float %4341, %4348
  %4350 = call float @dx.op.unary.f32(i32 7, float %4349)  ; Saturate(value)
  %4351 = fsub fast float %4350, %3355
  %4352 = fmul fast float %4351, %4275
  %4353 = fadd fast float %4352, %3355
  %4354 = fmul fast float %4278, %4062
  %4355 = fmul fast float %4278, %4063
  %4356 = fmul fast float %4278, %4064
  %4357 = fadd fast float %4354, %3348
  %4358 = fadd fast float %4355, %3349
  %4359 = fadd fast float %4356, %3350
  %4360 = fmul fast float %4281, %4117
  %4361 = fadd fast float %4360, %3357
  %4362 = fmul fast float %4284, %4114
  %4363 = fmul fast float %4284, %4115
  %4364 = fmul fast float %4284, %4116
  %4365 = fadd fast float %4362, %3351
  %4366 = fadd fast float %4363, %3352
  %4367 = fadd fast float %4364, %3353
  br label %4396

; <label>:4368                                    ; preds = %4320
  %4369 = icmp eq i32 %4264, 8
  br i1 %4369, label %4370, label %4396

; <label>:4370                                    ; preds = %4368
  %4371 = fmul fast float %4269, %3957
  %4372 = fmul fast float %4269, %3958
  %4373 = fadd fast float %4371, %3340
  %4374 = fadd fast float %4372, %3341
  %4375 = call float @dx.op.binary.f32(i32 36, float %3356, float %3959)  ; FMin(a,b)
  %4376 = fsub fast float %4375, %3356
  %4377 = fmul fast float %4376, %4272
  %4378 = fadd fast float %4377, %3356
  %4379 = fsub fast float %3956, %3355
  %4380 = fmul fast float %4275, %4379
  %4381 = fadd fast float %4380, %3355
  %4382 = fmul fast float %4278, %4062
  %4383 = fmul fast float %4278, %4063
  %4384 = fmul fast float %4278, %4064
  %4385 = fadd fast float %4382, %3348
  %4386 = fadd fast float %4383, %3349
  %4387 = fadd fast float %4384, %3350
  %4388 = fmul fast float %4281, %4117
  %4389 = fadd fast float %4388, %3357
  %4390 = fmul fast float %4284, %4114
  %4391 = fmul fast float %4284, %4115
  %4392 = fmul fast float %4284, %4116
  %4393 = fadd fast float %4390, %3351
  %4394 = fadd fast float %4391, %3352
  %4395 = fadd fast float %4392, %3353
  br label %4396

; <label>:4396                                    ; preds = %4370, %4368, %4322, %4286, %4255, %3655, %3359, %3339
  %4397 = phi float [ %3340, %4255 ], [ %3340, %3655 ], [ %3340, %3339 ], [ %3340, %3359 ], [ %4291, %4286 ], [ %4325, %4322 ], [ %3340, %4368 ], [ %4373, %4370 ]
  %4398 = phi float [ %3341, %4255 ], [ %3341, %3655 ], [ %3341, %3339 ], [ %3341, %3359 ], [ %4292, %4286 ], [ %4326, %4322 ], [ %3341, %4368 ], [ %4374, %4370 ]
  %4399 = phi float [ %4256, %4255 ], [ %3342, %3655 ], [ %3342, %3339 ], [ %3342, %3359 ], [ %4256, %4286 ], [ %4256, %4322 ], [ %4256, %4368 ], [ %4256, %4370 ]
  %4400 = phi float [ %4257, %4255 ], [ %3343, %3655 ], [ %3343, %3339 ], [ %3343, %3359 ], [ %4257, %4286 ], [ %4257, %4322 ], [ %4257, %4368 ], [ %4257, %4370 ]
  %4401 = phi float [ %4258, %4255 ], [ %3344, %3655 ], [ %3344, %3339 ], [ %3344, %3359 ], [ %4258, %4286 ], [ %4258, %4322 ], [ %4258, %4368 ], [ %4258, %4370 ]
  %4402 = phi float [ %4259, %4255 ], [ %3345, %3655 ], [ %3345, %3339 ], [ %3345, %3359 ], [ %4259, %4286 ], [ %4259, %4322 ], [ %4259, %4368 ], [ %4259, %4370 ]
  %4403 = phi float [ %4260, %4255 ], [ %3346, %3655 ], [ %3346, %3339 ], [ %3346, %3359 ], [ %4260, %4286 ], [ %4260, %4322 ], [ %4260, %4368 ], [ %4260, %4370 ]
  %4404 = phi float [ %4261, %4255 ], [ %3347, %3655 ], [ %3347, %3339 ], [ %3347, %3359 ], [ %4261, %4286 ], [ %4261, %4322 ], [ %4261, %4368 ], [ %4261, %4370 ]
  %4405 = phi float [ %3348, %4255 ], [ %3348, %3655 ], [ %3348, %3339 ], [ %3348, %3359 ], [ %4305, %4286 ], [ %4357, %4322 ], [ %3348, %4368 ], [ %4385, %4370 ]
  %4406 = phi float [ %3349, %4255 ], [ %3349, %3655 ], [ %3349, %3339 ], [ %3349, %3359 ], [ %4306, %4286 ], [ %4358, %4322 ], [ %3349, %4368 ], [ %4386, %4370 ]
  %4407 = phi float [ %3350, %4255 ], [ %3350, %3655 ], [ %3350, %3339 ], [ %3350, %3359 ], [ %4307, %4286 ], [ %4359, %4322 ], [ %3350, %4368 ], [ %4387, %4370 ]
  %4408 = phi float [ %3351, %4255 ], [ %3351, %3655 ], [ %3351, %3339 ], [ %3351, %3359 ], [ %4317, %4286 ], [ %4365, %4322 ], [ %3351, %4368 ], [ %4393, %4370 ]
  %4409 = phi float [ %3352, %4255 ], [ %3352, %3655 ], [ %3352, %3339 ], [ %3352, %3359 ], [ %4318, %4286 ], [ %4366, %4322 ], [ %3352, %4368 ], [ %4394, %4370 ]
  %4410 = phi float [ %3353, %4255 ], [ %3353, %3655 ], [ %3353, %3339 ], [ %3353, %3359 ], [ %4319, %4286 ], [ %4367, %4322 ], [ %3353, %4368 ], [ %4395, %4370 ]
  %4411 = phi float [ %4262, %4255 ], [ %3354, %3655 ], [ %3354, %3339 ], [ %3354, %3359 ], [ %4262, %4286 ], [ %4262, %4322 ], [ %4262, %4368 ], [ %4262, %4370 ]
  %4412 = phi float [ %3355, %4255 ], [ %3355, %3655 ], [ %3355, %3339 ], [ %3355, %3359 ], [ %4298, %4286 ], [ %4353, %4322 ], [ %3355, %4368 ], [ %4381, %4370 ]
  %4413 = phi float [ %3356, %4255 ], [ %3356, %3655 ], [ %3356, %3339 ], [ %3356, %3359 ], [ %4295, %4286 ], [ %4330, %4322 ], [ %3356, %4368 ], [ %4378, %4370 ]
  %4414 = phi float [ %3357, %4255 ], [ %3357, %3655 ], [ %3357, %3339 ], [ %3357, %3359 ], [ %4310, %4286 ], [ %4361, %4322 ], [ %3357, %4368 ], [ %4389, %4370 ]
  %4415 = phi float [ %4263, %4255 ], [ %3358, %3655 ], [ %3358, %3339 ], [ %3358, %3359 ], [ %4263, %4286 ], [ %4263, %4322 ], [ %4263, %4368 ], [ %4263, %4370 ]
  %4416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4417 = extractvalue %dx.types.CBufRet.f32 %4416, 0
  %4418 = call float @dx.op.dot2.f32(i32 54, float %4397, float %4398, float %4397, float %4398)  ; Dot2(ax,ay,bx,by)
  %4419 = fmul fast float %4418, 0x3FE3333340000000
  %4420 = fsub fast float 1.000000e+00, %4419
  %4421 = call float @dx.op.dot3.f32(i32 55, float %4397, float %4398, float %4420, float %4397, float %4398, float %4420)  ; Dot3(ax,ay,az,bx,by,bz)
  %4422 = call float @dx.op.unary.f32(i32 25, float %4421)  ; Rsqrt(value)
  %4423 = fmul fast float %4422, %4397
  %4424 = fmul fast float %4422, %4398
  %4425 = fmul fast float %4420, %4422
  %4426 = fmul fast float %4425, %104
  %4427 = fmul fast float %4425, %105
  %4428 = fmul fast float %4425, %106
  %4429 = fmul fast float %4423, %69
  %4430 = fmul fast float %4423, %70
  %4431 = fmul fast float %4423, %71
  %4432 = fadd fast float %4426, %4429
  %4433 = fadd fast float %4427, %4430
  %4434 = fadd fast float %4428, %4431
  %4435 = fmul fast float %116, %4424
  %4436 = fmul fast float %117, %4424
  %4437 = fmul fast float %118, %4424
  %4438 = fadd fast float %4432, %4435
  %4439 = fadd fast float %4433, %4436
  %4440 = fadd fast float %4434, %4437
  %4441 = call float @dx.op.dot3.f32(i32 55, float %4438, float %4439, float %4440, float %4438, float %4439, float %4440)  ; Dot3(ax,ay,az,bx,by,bz)
  %4442 = call float @dx.op.unary.f32(i32 25, float %4441)  ; Rsqrt(value)
  %4443 = fmul fast float %4438, %4442
  %4444 = fmul fast float %4439, %4442
  %4445 = fmul fast float %4440, %4442
  %4446 = and i32 %50, 1
  %4447 = icmp eq i32 %4446, 0
  br i1 %4447, label %4448, label %5040

; <label>:4448                                    ; preds = %4396
  %4449 = call float @dx.op.unary.f32(i32 83, float %152)  ; DerivCoarseX(value)
  %4450 = call float @dx.op.unary.f32(i32 83, float %153)  ; DerivCoarseX(value)
  %4451 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %4452 = call float @dx.op.unary.f32(i32 84, float %152)  ; DerivCoarseY(value)
  %4453 = call float @dx.op.unary.f32(i32 84, float %153)  ; DerivCoarseY(value)
  %4454 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %4455 = fadd fast float %4449, %152
  %4456 = fadd fast float %4450, %153
  %4457 = fadd fast float %4451, %154
  %4458 = fadd fast float %4452, %152
  %4459 = fadd fast float %4453, %153
  %4460 = fadd fast float %4454, %154
  %4461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4462 = extractvalue %dx.types.CBufRet.f32 %4461, 0
  %4463 = extractvalue %dx.types.CBufRet.f32 %4461, 1
  %4464 = extractvalue %dx.types.CBufRet.f32 %4461, 2
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 2
  %4467 = extractvalue %dx.types.CBufRet.f32 %4465, 3
  %4468 = fmul fast float %4462, %97
  %4469 = fmul fast float %4468, %4466
  %4470 = fmul fast float %4463, %98
  %4471 = fmul fast float %4470, %4467
  %4472 = fptoui float %4469 to i32
  %4473 = fptoui float %4471 to i32
  %4474 = fadd fast float %4462, -1.000000e+00
  %4475 = fadd fast float %4463, -1.000000e+00
  %4476 = fptoui float %4474 to i32
  %4477 = fptoui float %4475 to i32
  %4478 = call i32 @dx.op.binary.i32(i32 40, i32 %4472, i32 %4476)  ; UMin(a,b)
  %4479 = call i32 @dx.op.binary.i32(i32 40, i32 %4473, i32 %4477)  ; UMin(a,b)
  %4480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4481 = extractvalue %dx.types.CBufRet.f32 %4480, 2
  %4482 = extractvalue %dx.types.CBufRet.f32 %4480, 3
  %4483 = fmul fast float %4481, %85
  %4484 = fsub fast float %4483, %4482
  %4485 = fadd fast float %4464, -1.000000e+00
  %4486 = call float @dx.op.binary.f32(i32 36, float %4484, float %4485)  ; FMin(a,b)
  %4487 = fptoui float %4486 to i32
  %4488 = fptoui float %4462 to i32
  %4489 = fptoui float %4463 to i32
  %4490 = mul i32 %4487, %4489
  %4491 = add i32 %4490, %4479
  %4492 = mul i32 %4491, %4488
  %4493 = add i32 %4492, %4478
  %4494 = shl i32 %4493, 2
  %4495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4494, i32 undef)  ; BufferLoad(srv,index,wot)
  %4496 = extractvalue %dx.types.ResRet.i32 %4495, 0
  %4497 = and i32 %4496, 1023
  %4498 = lshr i32 %4496, 10
  %4499 = icmp eq i32 %4497, 0
  br i1 %4499, label %5003, label %4500

; <label>:4500                                    ; preds = %4448
  %4501 = and i32 %4496, 1023
  br label %4502

; <label>:4502                                    ; preds = %4634, %4500
  %4503 = phi i32 [ %4584, %4634 ], [ 0, %4500 ]
  %4504 = phi float [ %4635, %4634 ], [ 0.000000e+00, %4500 ]
  %4505 = phi float [ %4636, %4634 ], [ %4417, %4500 ]
  %4506 = phi float [ %4637, %4634 ], [ %4415, %4500 ]
  %4507 = phi float [ %4638, %4634 ], [ %4405, %4500 ]
  %4508 = phi float [ %4639, %4634 ], [ %4406, %4500 ]
  %4509 = phi float [ %4640, %4634 ], [ %4407, %4500 ]
  %4510 = phi float [ %4641, %4634 ], [ 0.000000e+00, %4500 ]
  %4511 = phi float [ %4642, %4634 ], [ 0.000000e+00, %4500 ]
  %4512 = phi float [ %4643, %4634 ], [ %4408, %4500 ]
  %4513 = phi float [ %4644, %4634 ], [ %4409, %4500 ]
  %4514 = phi float [ %4645, %4634 ], [ %4410, %4500 ]
  %4515 = phi float [ %4646, %4634 ], [ %4402, %4500 ]
  %4516 = phi float [ %4647, %4634 ], [ %4403, %4500 ]
  %4517 = phi float [ %4648, %4634 ], [ %4404, %4500 ]
  %4518 = phi float [ %4649, %4634 ], [ %4443, %4500 ]
  %4519 = phi float [ %4650, %4634 ], [ %4444, %4500 ]
  %4520 = phi float [ %4651, %4634 ], [ %4445, %4500 ]
  %4521 = phi float [ %4652, %4634 ], [ %4413, %4500 ]
  %4522 = phi float [ %4653, %4634 ], [ %4412, %4500 ]
  %4523 = phi float [ %4654, %4634 ], [ 0.000000e+00, %4500 ]
  %4524 = phi float [ %4655, %4634 ], [ %4411, %4500 ]
  %4525 = phi float [ %4656, %4634 ], [ %4399, %4500 ]
  %4526 = phi float [ %4657, %4634 ], [ %4400, %4500 ]
  %4527 = phi float [ %4658, %4634 ], [ %4401, %4500 ]
  %4528 = add nuw nsw i32 %4503, %4498
  %4529 = shl i32 %4528, 2
  %4530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4529, i32 undef)  ; BufferLoad(srv,index,wot)
  %4531 = extractvalue %dx.types.ResRet.i32 %4530, 0
  %4532 = shl i32 %4531, 8
  %4533 = or i32 %4532, 48
  %4534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4533, i32 undef)  ; BufferLoad(srv,index,wot)
  %4535 = extractvalue %dx.types.ResRet.f32 %4534, 0
  %4536 = extractvalue %dx.types.ResRet.f32 %4534, 1
  %4537 = extractvalue %dx.types.ResRet.f32 %4534, 2
  %4538 = extractvalue %dx.types.ResRet.f32 %4534, 3
  %4539 = or i32 %4532, 64
  %4540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4539, i32 undef)  ; BufferLoad(srv,index,wot)
  %4541 = extractvalue %dx.types.ResRet.i32 %4540, 0
  %4542 = extractvalue %dx.types.ResRet.i32 %4540, 1
  %4543 = or i32 %4532, 80
  %4544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4543, i32 undef)  ; BufferLoad(srv,index,wot)
  %4545 = extractvalue %dx.types.ResRet.f32 %4544, 2
  %4546 = extractvalue %dx.types.ResRet.f32 %4544, 3
  %4547 = or i32 %4532, 96
  %4548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4547, i32 undef)  ; BufferLoad(srv,index,wot)
  %4549 = extractvalue %dx.types.ResRet.f32 %4548, 0
  %4550 = extractvalue %dx.types.ResRet.f32 %4548, 1
  %4551 = extractvalue %dx.types.ResRet.f32 %4548, 2
  %4552 = extractvalue %dx.types.ResRet.f32 %4548, 3
  %4553 = or i32 %4532, 112
  %4554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4553, i32 undef)  ; BufferLoad(srv,index,wot)
  %4555 = extractvalue %dx.types.ResRet.f32 %4554, 2
  %4556 = or i32 %4532, 128
  %4557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4556, i32 undef)  ; BufferLoad(srv,index,wot)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4559 = extractvalue %dx.types.ResRet.f32 %4557, 1
  %4560 = extractvalue %dx.types.ResRet.f32 %4557, 2
  %4561 = extractvalue %dx.types.ResRet.f32 %4557, 3
  %4562 = or i32 %4532, 144
  %4563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4562, i32 undef)  ; BufferLoad(srv,index,wot)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4565 = extractvalue %dx.types.ResRet.f32 %4563, 1
  %4566 = extractvalue %dx.types.ResRet.f32 %4563, 2
  %4567 = extractvalue %dx.types.ResRet.f32 %4563, 3
  %4568 = or i32 %4532, 160
  %4569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4568, i32 undef)  ; BufferLoad(srv,index,wot)
  %4570 = extractvalue %dx.types.ResRet.f32 %4569, 0
  %4571 = extractvalue %dx.types.ResRet.f32 %4569, 1
  %4572 = extractvalue %dx.types.ResRet.f32 %4569, 2
  %4573 = extractvalue %dx.types.ResRet.f32 %4569, 3
  %4574 = or i32 %4532, 192
  %4575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4574, i32 undef)  ; BufferLoad(srv,index,wot)
  %4576 = extractvalue %dx.types.ResRet.i32 %4575, 0
  %4577 = or i32 %4532, 208
  %4578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4577, i32 undef)  ; BufferLoad(srv,index,wot)
  %4579 = extractvalue %dx.types.ResRet.f32 %4578, 0
  %4580 = or i32 %4532, 248
  %4581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4580, i32 undef)  ; BufferLoad(srv,index,wot)
  %4582 = extractvalue %dx.types.ResRet.f32 %4581, 0
  %4583 = extractvalue %dx.types.ResRet.f32 %4581, 1
  %4584 = add nuw nsw i32 %4503, 1
  %4585 = bitcast float %4538 to i32
  %4586 = and i32 %4585, 512
  %4587 = icmp eq i32 %4586, 0
  %4588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4532, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = extractvalue %dx.types.ResRet.f32 %4588, 1
  %4591 = extractvalue %dx.types.ResRet.f32 %4588, 2
  %4592 = extractvalue %dx.types.ResRet.f32 %4588, 3
  %4593 = call float @dx.op.dot4.f32(i32 56, float %4589, float %4590, float %4591, float %4592, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4594 = or i32 %4532, 16
  %4595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4594, i32 undef)  ; BufferLoad(srv,index,wot)
  %4596 = extractvalue %dx.types.ResRet.f32 %4595, 0
  %4597 = extractvalue %dx.types.ResRet.f32 %4595, 1
  %4598 = extractvalue %dx.types.ResRet.f32 %4595, 2
  %4599 = extractvalue %dx.types.ResRet.f32 %4595, 3
  %4600 = call float @dx.op.dot4.f32(i32 56, float %4596, float %4597, float %4598, float %4599, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4601 = or i32 %4532, 32
  %4602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4601, i32 undef)  ; BufferLoad(srv,index,wot)
  %4603 = extractvalue %dx.types.ResRet.f32 %4602, 0
  %4604 = extractvalue %dx.types.ResRet.f32 %4602, 1
  %4605 = extractvalue %dx.types.ResRet.f32 %4602, 2
  %4606 = extractvalue %dx.types.ResRet.f32 %4602, 3
  %4607 = call float @dx.op.dot4.f32(i32 56, float %4603, float %4604, float %4605, float %4606, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4608 = call float @dx.op.unary.f32(i32 27, float %4593)  ; Round_ni(value)
  %4609 = call float @dx.op.unary.f32(i32 6, float %4608)  ; FAbs(value)
  %4610 = call float @dx.op.unary.f32(i32 27, float %4600)  ; Round_ni(value)
  %4611 = call float @dx.op.unary.f32(i32 6, float %4610)  ; FAbs(value)
  %4612 = call float @dx.op.unary.f32(i32 6, float %4607)  ; FAbs(value)
  %4613 = call float @dx.op.unary.f32(i32 27, float %4612)  ; Round_ni(value)
  %4614 = fadd fast float %4611, %4609
  %4615 = fadd fast float %4614, %4613
  %4616 = fcmp fast oeq float %4615, 0.000000e+00
  %4617 = call float @dx.op.dot4.f32(i32 56, float %4589, float %4590, float %4591, float %4592, float %4455, float %4456, float %4457, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4618 = call float @dx.op.dot4.f32(i32 56, float %4596, float %4597, float %4598, float %4599, float %4455, float %4456, float %4457, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4619 = call float @dx.op.dot4.f32(i32 56, float %4589, float %4590, float %4591, float %4592, float %4458, float %4459, float %4460, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4620 = call float @dx.op.dot4.f32(i32 56, float %4596, float %4597, float %4598, float %4599, float %4458, float %4459, float %4460, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4621 = fsub fast float %4617, %4593
  %4622 = fsub fast float %4619, %4593
  %4623 = fsub fast float %4618, %4600
  %4624 = fsub fast float %4620, %4600
  %4625 = call float @dx.op.dot3.f32(i32 55, float %4535, float %4536, float %4537, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4627 = extractvalue %dx.types.CBufRet.f32 %4626, 2
  %4628 = fadd fast float %4627, %4625
  %4629 = call float @dx.op.unary.f32(i32 7, float %4628)  ; Saturate(value)
  %4630 = extractvalue %dx.types.CBufRet.f32 %4626, 0
  %4631 = fcmp fast ogt float %4629, %4630
  %4632 = and i1 %4616, %4631
  %4633 = and i1 %4587, %4632
  br i1 %4633, label %4660, label %4634

; <label>:4634                                    ; preds = %4989, %4741, %4660, %4502
  %4635 = phi float [ %4504, %4660 ], [ %4744, %4741 ], [ %4744, %4989 ], [ %4504, %4502 ]
  %4636 = phi float [ %4505, %4660 ], [ %4505, %4741 ], [ %4965, %4989 ], [ %4505, %4502 ]
  %4637 = phi float [ %4506, %4660 ], [ %4506, %4741 ], [ %4963, %4989 ], [ %4506, %4502 ]
  %4638 = phi float [ %4507, %4660 ], [ %4507, %4741 ], [ %4941, %4989 ], [ %4507, %4502 ]
  %4639 = phi float [ %4508, %4660 ], [ %4508, %4741 ], [ %4942, %4989 ], [ %4508, %4502 ]
  %4640 = phi float [ %4509, %4660 ], [ %4509, %4741 ], [ %4943, %4989 ], [ %4509, %4502 ]
  %4641 = phi float [ %4510, %4660 ], [ %4510, %4741 ], [ %4868, %4989 ], [ %4510, %4502 ]
  %4642 = phi float [ %4511, %4660 ], [ %4511, %4741 ], [ %4866, %4989 ], [ %4511, %4502 ]
  %4643 = phi float [ %4512, %4660 ], [ %4512, %4741 ], [ %4911, %4989 ], [ %4512, %4502 ]
  %4644 = phi float [ %4513, %4660 ], [ %4513, %4741 ], [ %4912, %4989 ], [ %4513, %4502 ]
  %4645 = phi float [ %4514, %4660 ], [ %4514, %4741 ], [ %4913, %4989 ], [ %4514, %4502 ]
  %4646 = phi float [ %4515, %4660 ], [ %4515, %4741 ], [ %4999, %4989 ], [ %4515, %4502 ]
  %4647 = phi float [ %4516, %4660 ], [ %4516, %4741 ], [ %5000, %4989 ], [ %4516, %4502 ]
  %4648 = phi float [ %4517, %4660 ], [ %4517, %4741 ], [ %5001, %4989 ], [ %4517, %4502 ]
  %4649 = phi float [ %4518, %4660 ], [ %4518, %4741 ], [ %4847, %4989 ], [ %4518, %4502 ]
  %4650 = phi float [ %4519, %4660 ], [ %4519, %4741 ], [ %4848, %4989 ], [ %4519, %4502 ]
  %4651 = phi float [ %4520, %4660 ], [ %4520, %4741 ], [ %4849, %4989 ], [ %4520, %4502 ]
  %4652 = phi float [ %4521, %4660 ], [ %4521, %4741 ], [ %4921, %4989 ], [ %4521, %4502 ]
  %4653 = phi float [ %4522, %4660 ], [ %4522, %4741 ], [ %4918, %4989 ], [ %4522, %4502 ]
  %4654 = phi float [ %4523, %4660 ], [ %4523, %4741 ], [ %4915, %4989 ], [ %4523, %4502 ]
  %4655 = phi float [ %4524, %4660 ], [ %4524, %4741 ], [ %4864, %4989 ], [ %4524, %4502 ]
  %4656 = phi float [ %4525, %4660 ], [ %4525, %4741 ], [ %4859, %4989 ], [ %4525, %4502 ]
  %4657 = phi float [ %4526, %4660 ], [ %4526, %4741 ], [ %4860, %4989 ], [ %4526, %4502 ]
  %4658 = phi float [ %4527, %4660 ], [ %4527, %4741 ], [ %4861, %4989 ], [ %4527, %4502 ]
  %4659 = icmp eq i32 %4584, %4501
  br i1 %4659, label %5002, label %4502

; <label>:4660                                    ; preds = %4502
  %4661 = extractvalue %dx.types.ResRet.f32 %4554, 3
  %4662 = extractvalue %dx.types.ResRet.f32 %4554, 1
  %4663 = extractvalue %dx.types.ResRet.f32 %4554, 0
  %4664 = extractvalue %dx.types.ResRet.f32 %4544, 1
  %4665 = extractvalue %dx.types.ResRet.f32 %4544, 0
  %4666 = extractvalue %dx.types.ResRet.i32 %4540, 3
  %4667 = extractvalue %dx.types.ResRet.i32 %4540, 2
  %4668 = add i32 %4666, 0
  %4669 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4668, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4671 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4669, %dx.types.Handle %4670, float %4593, float %4600, float undef, float undef, i32 0, i32 0, i32 undef, float %4621, float %4623, float undef, float %4622, float %4624, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4672 = extractvalue %dx.types.ResRet.f32 %4671, 0
  %4673 = fmul fast float %4672, %4665
  %4674 = fadd fast float %4673, %4664
  %4675 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4676 = fmul fast float %4593, %4549
  %4677 = call float @dx.op.tertiary.f32(i32 46, float %4550, float %4600, float %4676)  ; FMad(a,b,c)
  %4678 = fadd fast float %4677, %4663
  %4679 = fmul fast float %4593, %4551
  %4680 = call float @dx.op.tertiary.f32(i32 46, float %4552, float %4600, float %4679)  ; FMad(a,b,c)
  %4681 = fadd fast float %4680, %4662
  %4682 = fmul fast float %4621, %4549
  %4683 = call float @dx.op.tertiary.f32(i32 46, float %4550, float %4623, float %4682)  ; FMad(a,b,c)
  %4684 = fmul fast float %4621, %4551
  %4685 = call float @dx.op.tertiary.f32(i32 46, float %4552, float %4623, float %4684)  ; FMad(a,b,c)
  %4686 = fmul fast float %4622, %4549
  %4687 = call float @dx.op.tertiary.f32(i32 46, float %4550, float %4624, float %4686)  ; FMad(a,b,c)
  %4688 = fmul fast float %4622, %4551
  %4689 = call float @dx.op.tertiary.f32(i32 46, float %4552, float %4624, float %4688)  ; FMad(a,b,c)
  %4690 = add i32 %4667, 0
  %4691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4690, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4692 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4691, %dx.types.Handle %4670, float %4678, float %4681, float undef, float undef, i32 0, i32 0, i32 undef, float %4683, float %4685, float undef, float %4687, float %4689, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4693 = extractvalue %dx.types.ResRet.f32 %4692, 0
  %4694 = and i32 %4585, 1024
  %4695 = icmp ne i32 %4694, 0
  %4696 = fcmp fast ogt float %4693, 0x3FE0101020000000
  %4697 = uitofp i1 %4696 to float
  %4698 = select i1 %4695, float %4697, float %4693
  %4699 = and i32 %4585, 8192
  %4700 = icmp ne i32 %4699, 0
  %4701 = select i1 %4700, float %4661, float 1.000000e+00
  %4702 = fmul fast float %4593, 2.000000e+00
  %4703 = fadd fast float %4702, -1.000000e+00
  %4704 = call float @dx.op.unary.f32(i32 6, float %4703)  ; FAbs(value)
  %4705 = fmul fast float %4704, %4582
  %4706 = fsub fast float %4705, %4582
  %4707 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4708 = fmul fast float %4600, 2.000000e+00
  %4709 = fadd fast float %4708, -1.000000e+00
  %4710 = call float @dx.op.unary.f32(i32 6, float %4709)  ; FAbs(value)
  %4711 = fmul fast float %4710, %4583
  %4712 = fsub fast float %4711, %4583
  %4713 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4714 = fmul fast float %4612, %4545
  %4715 = fsub fast float %4714, %4545
  %4716 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4717 = fmul fast float %4675, %4701
  %4718 = fmul fast float %4717, %4672
  %4719 = fmul fast float %4718, %4707
  %4720 = fmul fast float %4719, %4698
  %4721 = fmul fast float %4720, %4713
  %4722 = fmul fast float %4721, %4716
  %4723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4724 = extractvalue %dx.types.CBufRet.f32 %4723, 1
  %4725 = extractvalue %dx.types.CBufRet.f32 %4723, 0
  %4726 = fsub fast float %4629, %4725
  %4727 = fmul fast float %4726, %4724
  %4728 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4729 = fmul fast float %4722, %4546
  %4730 = fadd fast float %4722, %4546
  %4731 = fmul fast float %4730, %4555
  %4732 = fsub fast float %4731, %4555
  %4733 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4734 = and i32 %4585, 128
  %4735 = icmp ne i32 %4734, 0
  %4736 = select i1 %4735, float %4733, float %4729
  %4737 = fmul fast float %4736, %4728
  %4738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4739 = extractvalue %dx.types.CBufRet.f32 %4738, 0
  %4740 = fcmp fast ugt float %4737, %4739
  br i1 %4740, label %4741, label %4634

; <label>:4741                                    ; preds = %4660
  %4742 = select i1 %4700, float %4737, float 0.000000e+00
  %4743 = fadd fast float %4742, %4504
  %4744 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  br i1 %4700, label %4634, label %4745

; <label>:4745                                    ; preds = %4741
  %4746 = and i32 %4585, 4
  %4747 = and i32 %4585, 8
  %4748 = add i32 %4541, 0
  %4749 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4748, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4751 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4749, %dx.types.Handle %4750, float %4678, float %4681, float undef, float undef, i32 0, i32 0, i32 undef, float %4683, float %4685, float undef, float %4687, float %4689, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4752 = extractvalue %dx.types.ResRet.f32 %4751, 0
  %4753 = extractvalue %dx.types.ResRet.f32 %4751, 1
  %4754 = extractvalue %dx.types.ResRet.f32 %4751, 2
  %4755 = extractvalue %dx.types.ResRet.f32 %4751, 3
  %4756 = bitcast float %4567 to i32
  %4757 = and i32 %4756, 255
  %4758 = uitofp i32 %4757 to float
  %4759 = lshr i32 %4756, 8
  %4760 = and i32 %4759, 255
  %4761 = uitofp i32 %4760 to float
  %4762 = fmul fast float %4755, %4758
  %4763 = fadd fast float %4762, %4761
  %4764 = fmul fast float %4763, 0x3F70101000000000
  %4765 = add i32 %4542, 0
  %4766 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4765, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4767 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4766, %dx.types.Handle %4750, float %4678, float %4681, float undef, float undef, i32 0, i32 0, i32 undef, float %4683, float %4685, float undef, float %4687, float %4689, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4768 = extractvalue %dx.types.ResRet.f32 %4767, 0
  %4769 = extractvalue %dx.types.ResRet.f32 %4767, 1
  %4770 = extractvalue %dx.types.ResRet.f32 %4767, 2
  %4771 = extractvalue %dx.types.ResRet.f32 %4767, 3
  %4772 = bitcast float %4561 to i32
  %4773 = and i32 %4772, 255
  %4774 = uitofp i32 %4773 to float
  %4775 = lshr i32 %4772, 8
  %4776 = and i32 %4775, 255
  %4777 = uitofp i32 %4776 to float
  %4778 = lshr i32 %4772, 16
  %4779 = and i32 %4778, 255
  %4780 = uitofp i32 %4779 to float
  %4781 = fmul fast float %4780, 0x3F70101000000000
  %4782 = fmul fast float %4768, %4774
  %4783 = fadd fast float %4782, %4777
  %4784 = fmul fast float %4783, 0x3F70101000000000
  %4785 = fadd fast float %4769, -5.000000e-01
  %4786 = fadd fast float %4771, -5.000000e-01
  %4787 = fmul fast float %4785, %4781
  %4788 = fmul fast float %4786, %4781
  %4789 = fadd fast float %4787, 5.000000e-01
  %4790 = fadd fast float %4788, 5.000000e-01
  %4791 = fmul fast float %4752, %4570
  %4792 = fmul fast float %4753, %4571
  %4793 = fmul fast float %4754, %4572
  %4794 = fmul fast float %4789, 2.000000e+00
  %4795 = fadd fast float %4794, -1.000000e+00
  %4796 = fmul fast float %4790, 2.000000e+00
  %4797 = fadd fast float %4796, -1.000000e+00
  %4798 = fadd fast float %4795, %4797
  %4799 = fmul fast float %4798, 5.000000e-01
  %4800 = fsub fast float %4795, %4797
  %4801 = fmul fast float %4800, 5.000000e-01
  %4802 = call float @dx.op.unary.f32(i32 6, float %4799)  ; FAbs(value)
  %4803 = fsub fast float 1.000000e+00, %4802
  %4804 = call float @dx.op.unary.f32(i32 6, float %4801)  ; FAbs(value)
  %4805 = fsub fast float %4803, %4804
  %4806 = call float @dx.op.dot3.f32(i32 55, float %4799, float %4801, float %4805, float %4799, float %4801, float %4805)  ; Dot3(ax,ay,az,bx,by,bz)
  %4807 = call float @dx.op.unary.f32(i32 25, float %4806)  ; Rsqrt(value)
  %4808 = fmul fast float %4799, %4807
  %4809 = fmul fast float %4801, %4807
  %4810 = fmul fast float %4807, %4805
  %4811 = fmul fast float %4810, %4535
  %4812 = fmul fast float %4810, %4536
  %4813 = fmul fast float %4810, %4537
  %4814 = fmul fast float %4808, %4558
  %4815 = fmul fast float %4808, %4559
  %4816 = fmul fast float %4808, %4560
  %4817 = fadd fast float %4814, %4811
  %4818 = fadd fast float %4815, %4812
  %4819 = fadd fast float %4816, %4813
  %4820 = fmul fast float %4809, %4564
  %4821 = fmul fast float %4809, %4565
  %4822 = fmul fast float %4809, %4566
  %4823 = fadd fast float %4817, %4820
  %4824 = fadd fast float %4818, %4821
  %4825 = fadd fast float %4819, %4822
  %4826 = call float @dx.op.dot3.f32(i32 55, float %4823, float %4824, float %4825, float %4823, float %4824, float %4825)  ; Dot3(ax,ay,az,bx,by,bz)
  %4827 = call float @dx.op.unary.f32(i32 25, float %4826)  ; Rsqrt(value)
  %4828 = fmul fast float %4823, %4827
  %4829 = fmul fast float %4824, %4827
  %4830 = fmul fast float %4825, %4827
  %4831 = icmp ne i32 %4747, 0
  %4832 = select i1 %4831, float 1.000000e+00, float 0.000000e+00
  %4833 = fmul fast float %4737, %4832
  %4834 = and i32 %4585, 1
  %4835 = icmp eq i32 %4834, 0
  br i1 %4835, label %4836, label %4840

; <label>:4836                                    ; preds = %4745
  %4837 = fsub fast float %4828, %4518
  %4838 = fsub fast float %4829, %4519
  %4839 = fsub fast float %4830, %4520
  br label %4840

; <label>:4840                                    ; preds = %4836, %4745
  %4841 = phi float [ %4837, %4836 ], [ %4828, %4745 ]
  %4842 = phi float [ %4838, %4836 ], [ %4829, %4745 ]
  %4843 = phi float [ %4839, %4836 ], [ %4830, %4745 ]
  %4844 = fmul float %4843, %4833
  %4845 = fmul float %4842, %4833
  %4846 = fmul float %4841, %4833
  %4847 = fadd fast float %4846, %4518
  %4848 = fadd fast float %4845, %4519
  %4849 = fadd fast float %4844, %4520
  %4850 = icmp ne i32 %4746, 0
  %4851 = select i1 %4850, float 1.000000e+00, float 0.000000e+00
  %4852 = fmul fast float %4737, %4851
  %4853 = fsub fast float %4791, %4525
  %4854 = fsub fast float %4792, %4526
  %4855 = fsub fast float %4793, %4527
  %4856 = fmul fast float %4853, %4852
  %4857 = fmul fast float %4854, %4852
  %4858 = fmul fast float %4855, %4852
  %4859 = fadd fast float %4856, %4525
  %4860 = fadd fast float %4857, %4526
  %4861 = fadd fast float %4858, %4527
  %4862 = fsub fast float %4764, %4524
  %4863 = fmul fast float %4862, %4852
  %4864 = fadd fast float %4863, %4524
  %4865 = fmul fast float %4852, %4511
  %4866 = fsub fast float %4511, %4865
  %4867 = fmul fast float %4852, %4510
  %4868 = fsub fast float %4510, %4867
  %4869 = bitcast float %4579 to i32
  %4870 = lshr i32 %4869, 16
  %4871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4870)  ; LegacyF16ToF32(value)
  %4872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %4873 = extractvalue %dx.types.ResRet.i32 %4872, 0
  %4874 = and i32 %4873, 1
  %4875 = icmp eq i32 %4874, 0
  br i1 %4875, label %4876, label %4901

; <label>:4876                                    ; preds = %4840
  %4877 = fadd fast float %4764, 0xBFB99999A0000000
  %4878 = call float @dx.op.unary.f32(i32 7, float %4877)  ; Saturate(value)
  %4879 = fmul fast float %4878, 0x3FF1C71C80000000
  %4880 = fsub fast float 1.000000e+00, %4879
  %4881 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4882 = fmul fast float %4881, %4791
  %4883 = fmul fast float %4881, %4792
  %4884 = fmul fast float %4881, %4793
  %4885 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4886 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4887 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4888 = call float @dx.op.binary.f32(i32 35, float %4886, float %4887)  ; FMax(a,b)
  %4889 = call float @dx.op.binary.f32(i32 35, float %4885, float %4888)  ; FMax(a,b)
  %4890 = fcmp fast ogt float %4889, 0.000000e+00
  %4891 = bitcast float %4889 to i32
  %4892 = sub nsw i32 2129859010, %4891
  %4893 = bitcast i32 %4892 to float
  %4894 = select i1 %4890, float %4893, float 0.000000e+00
  %4895 = fmul fast float %4885, %4871
  %4896 = fmul fast float %4886, %4871
  %4897 = fmul fast float %4887, %4871
  %4898 = fmul fast float %4895, %4894
  %4899 = fmul fast float %4896, %4894
  %4900 = fmul fast float %4897, %4894
  br label %4901

; <label>:4901                                    ; preds = %4876, %4840
  %4902 = phi float [ %4871, %4840 ], [ %4898, %4876 ]
  %4903 = phi float [ %4871, %4840 ], [ %4899, %4876 ]
  %4904 = phi float [ %4871, %4840 ], [ %4900, %4876 ]
  %4905 = fsub fast float %4902, %4512
  %4906 = fsub fast float %4903, %4513
  %4907 = fsub fast float %4904, %4514
  %4908 = fmul fast float %4905, %4852
  %4909 = fmul fast float %4906, %4852
  %4910 = fmul fast float %4907, %4852
  %4911 = fadd fast float %4908, %4512
  %4912 = fadd fast float %4909, %4513
  %4913 = fadd fast float %4910, %4514
  %4914 = fadd fast float %4737, %4523
  %4915 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4916 = fsub fast float %4784, %4522
  %4917 = fmul fast float %4916, %4833
  %4918 = fadd fast float %4917, %4522
  %4919 = fsub fast float %4770, %4521
  %4920 = fmul fast float %4919, %4833
  %4921 = fadd fast float %4920, %4521
  br i1 %4835, label %4930, label %4922

; <label>:4922                                    ; preds = %4901
  %4923 = and i32 %4585, 32768
  %4924 = icmp eq i32 %4923, 0
  br i1 %4924, label %4940, label %4925

; <label>:4925                                    ; preds = %4922
  %4926 = fmul fast float %4833, 1.270000e+02
  %4927 = fadd fast float %4926, %4507
  %4928 = fadd fast float %4926, %4508
  %4929 = fadd fast float %4926, %4509
  br label %4940

; <label>:4930                                    ; preds = %4901
  %4931 = fsub fast float 1.270000e+02, %4507
  %4932 = fsub fast float 1.270000e+02, %4508
  %4933 = fsub fast float 1.270000e+02, %4509
  %4934 = fmul fast float %4833, %4931
  %4935 = fmul fast float %4833, %4932
  %4936 = fmul fast float %4833, %4933
  %4937 = fadd fast float %4934, %4507
  %4938 = fadd fast float %4935, %4508
  %4939 = fadd fast float %4936, %4509
  br label %4940

; <label>:4940                                    ; preds = %4930, %4925, %4922
  %4941 = phi float [ %4927, %4925 ], [ %4507, %4922 ], [ %4937, %4930 ]
  %4942 = phi float [ %4928, %4925 ], [ %4508, %4922 ], [ %4938, %4930 ]
  %4943 = phi float [ %4929, %4925 ], [ %4509, %4922 ], [ %4939, %4930 ]
  %4944 = call float @dx.op.dot3.f32(i32 55, float %4791, float %4792, float %4793, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4946 = extractvalue %dx.types.CBufRet.f32 %4945, 0
  %4947 = extractvalue %dx.types.CBufRet.f32 %4945, 1
  %4948 = fmul fast float %4947, %4944
  %4949 = fadd fast float %4948, %4946
  %4950 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4951 = bitcast float %4573 to i32
  %4952 = and i32 %4951, 65535
  %4953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4952)  ; LegacyF16ToF32(value)
  %4954 = lshr i32 %4951, 16
  %4955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4954)  ; LegacyF16ToF32(value)
  %4956 = fcmp fast oge float %4953, 0.000000e+00
  %4957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4958 = extractvalue %dx.types.CBufRet.f32 %4957, 0
  %4959 = select i1 %4956, float %4953, float %4958
  %4960 = fadd fast float %4959, %4955
  %4961 = fsub fast float %4950, %4506
  %4962 = fmul fast float %4961, %4737
  %4963 = fadd fast float %4962, %4506
  %4964 = fmul fast float %4960, %4737
  %4965 = call float @dx.op.binary.f32(i32 35, float %4505, float %4964)  ; FMax(a,b)
  %4966 = and i32 %4585, 16
  %4967 = icmp eq i32 %4966, 0
  br i1 %4967, label %4989, label %4968

; <label>:4968                                    ; preds = %4940
  %4969 = add i32 %4576, 0
  %4970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4969, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4971 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4970, %dx.types.Handle %4750, float %4678, float %4681, float undef, float undef, i32 0, i32 0, i32 undef, float %4683, float %4685, float undef, float %4687, float %4689, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4972 = extractvalue %dx.types.ResRet.f32 %4971, 0
  %4973 = extractvalue %dx.types.ResRet.f32 %4971, 1
  %4974 = extractvalue %dx.types.ResRet.f32 %4971, 2
  %4975 = and i32 %4869, 65535
  %4976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4975)  ; LegacyF16ToF32(value)
  %4977 = fmul fast float %4972, %4570
  %4978 = fmul fast float %4973, %4571
  %4979 = fmul fast float %4974, %4572
  %4980 = and i32 %4585, 16384
  %4981 = icmp ne i32 %4980, 0
  %4982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4983 = extractvalue %dx.types.CBufRet.f32 %4982, 0
  %4984 = select i1 %4981, float %4983, float 1.000000e+00
  %4985 = fmul fast float %4984, %4976
  %4986 = fmul fast float %4977, %4985
  %4987 = fmul fast float %4978, %4985
  %4988 = fmul fast float %4979, %4985
  br label %4989

; <label>:4989                                    ; preds = %4968, %4940
  %4990 = phi float [ %4986, %4968 ], [ 0.000000e+00, %4940 ]
  %4991 = phi float [ %4987, %4968 ], [ 0.000000e+00, %4940 ]
  %4992 = phi float [ %4988, %4968 ], [ 0.000000e+00, %4940 ]
  %4993 = fsub fast float %4990, %4515
  %4994 = fsub fast float %4991, %4516
  %4995 = fsub fast float %4992, %4517
  %4996 = fmul fast float %4993, %4737
  %4997 = fmul fast float %4994, %4737
  %4998 = fmul fast float %4995, %4737
  %4999 = fadd fast float %4996, %4515
  %5000 = fadd fast float %4997, %4516
  %5001 = fadd fast float %4998, %4517
  br label %4634

; <label>:5002                                    ; preds = %4634
  br label %5003

; <label>:5003                                    ; preds = %5002, %4448
  %5004 = phi float [ 0.000000e+00, %4448 ], [ %4635, %5002 ]
  %5005 = phi float [ %4417, %4448 ], [ %4636, %5002 ]
  %5006 = phi float [ %4415, %4448 ], [ %4637, %5002 ]
  %5007 = phi float [ %4405, %4448 ], [ %4638, %5002 ]
  %5008 = phi float [ %4406, %4448 ], [ %4639, %5002 ]
  %5009 = phi float [ %4407, %4448 ], [ %4640, %5002 ]
  %5010 = phi float [ 0.000000e+00, %4448 ], [ %4641, %5002 ]
  %5011 = phi float [ 0.000000e+00, %4448 ], [ %4642, %5002 ]
  %5012 = phi float [ %4408, %4448 ], [ %4643, %5002 ]
  %5013 = phi float [ %4409, %4448 ], [ %4644, %5002 ]
  %5014 = phi float [ %4410, %4448 ], [ %4645, %5002 ]
  %5015 = phi float [ %4402, %4448 ], [ %4646, %5002 ]
  %5016 = phi float [ %4403, %4448 ], [ %4647, %5002 ]
  %5017 = phi float [ %4404, %4448 ], [ %4648, %5002 ]
  %5018 = phi float [ %4443, %4448 ], [ %4649, %5002 ]
  %5019 = phi float [ %4444, %4448 ], [ %4650, %5002 ]
  %5020 = phi float [ %4445, %4448 ], [ %4651, %5002 ]
  %5021 = phi float [ %4413, %4448 ], [ %4652, %5002 ]
  %5022 = phi float [ %4412, %4448 ], [ %4653, %5002 ]
  %5023 = phi float [ 0.000000e+00, %4448 ], [ %4654, %5002 ]
  %5024 = phi float [ %4411, %4448 ], [ %4655, %5002 ]
  %5025 = phi float [ %4399, %4448 ], [ %4656, %5002 ]
  %5026 = phi float [ %4400, %4448 ], [ %4657, %5002 ]
  %5027 = phi float [ %4401, %4448 ], [ %4658, %5002 ]
  %5028 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5019, float %5020, float %5018, float %5019, float %5020)  ; Dot3(ax,ay,az,bx,by,bz)
  %5029 = call float @dx.op.unary.f32(i32 25, float %5028)  ; Rsqrt(value)
  %5030 = fmul fast float %5029, %5018
  %5031 = fmul fast float %5029, %5019
  %5032 = fmul fast float %5029, %5020
  %5033 = fadd fast float %5023, %1240
  %5034 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5035 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5032, float %5030, float %5031, float %5032)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = call float @dx.op.unary.f32(i32 25, float %5035)  ; Rsqrt(value)
  %5037 = fmul fast float %5036, %5030
  %5038 = fmul fast float %5036, %5031
  %5039 = fmul fast float %5036, %5032
  br label %5040

; <label>:5040                                    ; preds = %5003, %4396
  %5041 = phi float [ %5037, %5003 ], [ %4443, %4396 ]
  %5042 = phi float [ %5038, %5003 ], [ %4444, %4396 ]
  %5043 = phi float [ %5039, %5003 ], [ %4445, %4396 ]
  %5044 = phi float [ %5015, %5003 ], [ %4402, %4396 ]
  %5045 = phi float [ %5016, %5003 ], [ %4403, %4396 ]
  %5046 = phi float [ %5017, %5003 ], [ %4404, %4396 ]
  %5047 = phi float [ %5012, %5003 ], [ %4408, %4396 ]
  %5048 = phi float [ %5013, %5003 ], [ %4409, %4396 ]
  %5049 = phi float [ %5014, %5003 ], [ %4410, %4396 ]
  %5050 = phi float [ %5007, %5003 ], [ %4405, %4396 ]
  %5051 = phi float [ %5008, %5003 ], [ %4406, %4396 ]
  %5052 = phi float [ %5009, %5003 ], [ %4407, %4396 ]
  %5053 = phi float [ %5025, %5003 ], [ %4399, %4396 ]
  %5054 = phi float [ %5026, %5003 ], [ %4400, %4396 ]
  %5055 = phi float [ %5027, %5003 ], [ %4401, %4396 ]
  %5056 = phi float [ %5024, %5003 ], [ %4411, %4396 ]
  %5057 = phi float [ %5034, %5003 ], [ %1240, %4396 ]
  %5058 = phi float [ %5022, %5003 ], [ %4412, %4396 ]
  %5059 = phi float [ %5021, %5003 ], [ %4413, %4396 ]
  %5060 = phi float [ %5011, %5003 ], [ 0.000000e+00, %4396 ]
  %5061 = phi float [ %5010, %5003 ], [ 0.000000e+00, %4396 ]
  %5062 = phi float [ %5004, %5003 ], [ 0.000000e+00, %4396 ]
  %5063 = phi float [ %5005, %5003 ], [ %4417, %4396 ]
  %5064 = phi float [ %5006, %5003 ], [ %4415, %4396 ]
  %5065 = fadd fast float %5056, 0xBFB99999A0000000
  %5066 = call float @dx.op.unary.f32(i32 7, float %5065)  ; Saturate(value)
  %5067 = fmul fast float %5066, 0x3FF1C71C80000000
  %5068 = call float @dx.op.binary.f32(i32 36, float %5056, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5069 = fsub fast float 1.000000e+00, %5067
  %5070 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5071 = fmul fast float %5070, %5053
  %5072 = fmul fast float %5070, %5054
  %5073 = fmul fast float %5070, %5055
  %5074 = call float @dx.op.unary.f32(i32 7, float %5071)  ; Saturate(value)
  %5075 = call float @dx.op.unary.f32(i32 7, float %5072)  ; Saturate(value)
  %5076 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5077 = fmul fast float %5067, %5053
  %5078 = fmul fast float %5067, %5054
  %5079 = fmul fast float %5067, %5055
  %5080 = fadd fast float %5077, %5068
  %5081 = fadd fast float %5078, %5068
  %5082 = fadd fast float %5079, %5068
  %5083 = call float @dx.op.unary.f32(i32 7, float %5080)  ; Saturate(value)
  %5084 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5085 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5086 = call float @dx.op.unary.f32(i32 7, float %5058)  ; Saturate(value)
  %5087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %5088 = extractvalue %dx.types.ResRet.i32 %5087, 0
  %5089 = and i32 %5088, 1
  %5090 = icmp eq i32 %5089, 0
  br i1 %5090, label %5105, label %5091

; <label>:5091                                    ; preds = %5040
  %5092 = call float @dx.op.binary.f32(i32 35, float %5075, float %5076)  ; FMax(a,b)
  %5093 = call float @dx.op.binary.f32(i32 35, float %5074, float %5092)  ; FMax(a,b)
  %5094 = fcmp fast ogt float %5093, 0.000000e+00
  %5095 = bitcast float %5093 to i32
  %5096 = sub nsw i32 2129859010, %5095
  %5097 = bitcast i32 %5096 to float
  %5098 = select i1 %5094, float %5097, float 0.000000e+00
  %5099 = fmul fast float %5074, %5047
  %5100 = fmul fast float %5075, %5048
  %5101 = fmul fast float %5076, %5049
  %5102 = fmul fast float %5099, %5098
  %5103 = fmul fast float %5100, %5098
  %5104 = fmul fast float %5101, %5098
  br label %5105

; <label>:5105                                    ; preds = %5091, %5040
  %5106 = phi float [ %5102, %5091 ], [ %5047, %5040 ]
  %5107 = phi float [ %5103, %5091 ], [ %5048, %5040 ]
  %5108 = phi float [ %5104, %5091 ], [ %5049, %5040 ]
  %5109 = call float @dx.op.binary.f32(i32 36, float %5050, float 1.270000e+02)  ; FMin(a,b)
  %5110 = call float @dx.op.binary.f32(i32 36, float %5051, float 1.270000e+02)  ; FMin(a,b)
  %5111 = call float @dx.op.binary.f32(i32 36, float %5052, float 1.270000e+02)  ; FMin(a,b)
  %5112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5113 = extractvalue %dx.types.CBufRet.i32 %5112, 3
  %5114 = and i32 %5113, 8
  %5115 = icmp ne i32 %5114, 0
  %5116 = call float @dx.op.binary.f32(i32 35, float %5074, float %5053)  ; FMax(a,b)
  %5117 = call float @dx.op.binary.f32(i32 35, float %5075, float %5053)  ; FMax(a,b)
  %5118 = call float @dx.op.binary.f32(i32 35, float %5076, float %5053)  ; FMax(a,b)
  %5119 = call float @dx.op.dot3.f32(i32 55, float %5074, float %5075, float %5076, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5120 = select i1 %213, float %5053, float %5074
  %5121 = select i1 %213, float %5119, float %5075
  %5122 = select i1 %213, float 1.000000e+00, float %5076
  %5123 = select i1 %5115, float %5116, float %5120
  %5124 = select i1 %5115, float %5117, float %5121
  %5125 = select i1 %5115, float %5118, float %5122
  %5126 = call float @dx.op.dot3.f32(i32 55, float %5106, float %5107, float %5108, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5127 = select i1 %213, float %5126, float %5106
  %5128 = select i1 %213, float %5126, float %5107
  %5129 = select i1 %213, float %5126, float %5108
  %5130 = and i32 %189, 3
  %5131 = select i1 %183, i32 %5130, i32 0
  %5132 = icmp eq i32 %5131, 1
  br i1 %5132, label %5133, label %5209

; <label>:5133                                    ; preds = %5105
  %5134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5135 = extractvalue %dx.types.CBufRet.f32 %5134, 0
  %5136 = extractvalue %dx.types.CBufRet.f32 %5134, 1
  %5137 = fadd fast float %5135, %152
  %5138 = fadd fast float %5136, %153
  %5139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5140 = extractvalue %dx.types.CBufRet.f32 %5139, 0
  %5141 = extractvalue %dx.types.CBufRet.f32 %5139, 1
  %5142 = fsub fast float %5137, %5140
  %5143 = fsub fast float %5138, %5141
  %5144 = fmul fast float %5142, %5142
  %5145 = fmul fast float %5143, %5143
  %5146 = fadd fast float %5144, %5145
  %5147 = call float @dx.op.unary.f32(i32 24, float %5146)  ; Sqrt(value)
  %5148 = extractvalue %dx.types.CBufRet.f32 %5139, 2
  %5149 = fcmp fast olt float %5147, %5148
  br i1 %5149, label %5150, label %5203

; <label>:5150                                    ; preds = %5133
  %5151 = extractvalue %dx.types.CBufRet.f32 %5134, 2
  %5152 = fadd fast float %5151, %154
  %5153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5153, 0
  %5155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5156 = extractvalue %dx.types.CBufRet.f32 %5155, 0
  %5157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5158 = extractvalue %dx.types.CBufRet.f32 %5157, 0
  %5159 = extractvalue %dx.types.CBufRet.f32 %5153, 1
  %5160 = extractvalue %dx.types.CBufRet.f32 %5155, 1
  %5161 = extractvalue %dx.types.CBufRet.f32 %5157, 1
  %5162 = extractvalue %dx.types.CBufRet.f32 %5153, 3
  %5163 = extractvalue %dx.types.CBufRet.f32 %5155, 3
  %5164 = extractvalue %dx.types.CBufRet.f32 %5157, 3
  %5165 = fadd fast float %5162, %5137
  %5166 = fadd fast float %5163, %5138
  %5167 = fadd fast float %5152, %5164
  %5168 = fmul fast float %5165, %5154
  %5169 = call float @dx.op.tertiary.f32(i32 46, float %5166, float %5156, float %5168)  ; FMad(a,b,c)
  %5170 = call float @dx.op.tertiary.f32(i32 46, float %5167, float %5158, float %5169)  ; FMad(a,b,c)
  %5171 = fmul fast float %5165, %5159
  %5172 = call float @dx.op.tertiary.f32(i32 46, float %5166, float %5160, float %5171)  ; FMad(a,b,c)
  %5173 = call float @dx.op.tertiary.f32(i32 46, float %5167, float %5161, float %5172)  ; FMad(a,b,c)
  %5174 = fsub fast float %5170, %5162
  %5175 = fsub fast float %5173, %5163
  %5176 = fsub fast float %5174, %5140
  %5177 = fadd fast float %5176, %5148
  %5178 = fsub fast float %5175, %5141
  %5179 = fadd fast float %5178, %5148
  %5180 = extractvalue %dx.types.CBufRet.f32 %5139, 3
  %5181 = fmul fast float %5177, %5180
  %5182 = fmul fast float %5179, %5180
  %5183 = call float @dx.op.unary.f32(i32 7, float %5181)  ; Saturate(value)
  %5184 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5185 = fsub fast float 1.000000e+00, %5183
  %5186 = fsub fast float 1.000000e+00, %5184
  %5187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %42, float %5185, float %5186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5188 = extractvalue %dx.types.ResRet.f32 %5187, 0
  %5189 = fcmp fast ugt float %5188, 0.000000e+00
  br i1 %5189, label %5190, label %5203

; <label>:5190                                    ; preds = %5150
  %5191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5192 = extractvalue %dx.types.CBufRet.f32 %5191, 2
  %5193 = fmul fast float %5192, %5188
  %5194 = extractvalue %dx.types.CBufRet.f32 %5191, 3
  %5195 = fadd fast float %5194, %5193
  %5196 = extractvalue %dx.types.CBufRet.f32 %5157, 2
  %5197 = fadd fast float %5195, %5164
  %5198 = fmul fast float %5170, %5158
  %5199 = call float @dx.op.tertiary.f32(i32 46, float %5173, float %5161, float %5198)  ; FMad(a,b,c)
  %5200 = call float @dx.op.tertiary.f32(i32 46, float %5197, float %5196, float %5199)  ; FMad(a,b,c)
  %5201 = fsub fast float %5200, %5164
  %5202 = fsub fast float %5201, %5151
  br label %5203

; <label>:5203                                    ; preds = %5190, %5150, %5133
  %5204 = phi i1 [ true, %5190 ], [ false, %5150 ], [ false, %5133 ]
  %5205 = phi float [ %5202, %5190 ], [ -1.310720e+05, %5150 ], [ -1.310720e+05, %5133 ]
  %5206 = fsub fast float %5205, %154
  %5207 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5208 = select i1 %5204, float %5207, float 1.000000e+00
  br label %5209

; <label>:5209                                    ; preds = %5203, %5105
  %5210 = phi float [ %5208, %5203 ], [ 0.000000e+00, %5105 ]
  %5211 = icmp eq i32 %5131, 3
  %5212 = select i1 %5211, float 1.000000e+00, float %5210
  %5213 = call float @dx.op.binary.f32(i32 35, float %5062, float %5212)  ; FMax(a,b)
  %5214 = call float @dx.op.unary.f32(i32 7, float %5213)  ; Saturate(value)
  %5215 = fcmp fast une float %5214, 0.000000e+00
  %5216 = call float @dx.op.dot3.f32(i32 55, float %152, float %153, float %154, float %152, float %153, float %154)  ; Dot3(ax,ay,az,bx,by,bz)
  %5217 = call float @dx.op.unary.f32(i32 25, float %5216)  ; Rsqrt(value)
  br i1 %5215, label %5225, label %5218

; <label>:5218                                    ; preds = %5209
  %5219 = fmul fast float %5217, %152
  %5220 = fmul fast float %5217, %153
  %5221 = fmul fast float %5217, %154
  %5222 = fsub fast float -0.000000e+00, %5219
  %5223 = fsub fast float -0.000000e+00, %5220
  %5224 = fsub fast float -0.000000e+00, %5221
  br label %5393

; <label>:5225                                    ; preds = %5209
  %5226 = fmul fast float %152, %5217
  %5227 = fsub fast float -0.000000e+00, %5226
  %5228 = fmul fast float %153, %5217
  %5229 = fsub fast float -0.000000e+00, %5228
  %5230 = fmul fast float %154, %5217
  %5231 = fsub fast float -0.000000e+00, %5230
  %5232 = call float @dx.op.dot3.f32(i32 55, float %5227, float %5229, float %5231, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %5233 = fmul fast float %5214, 2.500000e+00
  %5234 = call float @dx.op.unary.f32(i32 7, float %5233)  ; Saturate(value)
  %5235 = fmul fast float %5214, 0x4013FFFFE0000000
  %5236 = fadd fast float %5235, 0xBFFFFFFFE0000000
  %5237 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5238 = fmul fast float %5214, 0x4004000020000000
  %5239 = fadd fast float %5238, 0xBFF8000040000000
  %5240 = call float @dx.op.unary.f32(i32 7, float %5239)  ; Saturate(value)
  %5241 = call float @dx.op.unary.f32(i32 7, float %5234)  ; Saturate(value)
  %5242 = fmul fast float %5065, 1.000000e+01
  %5243 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5244 = fmul fast float %5243, 2.000000e+00
  %5245 = fsub fast float 3.000000e+00, %5244
  %5246 = fmul fast float %5243, %5243
  %5247 = fmul fast float %5246, %5245
  %5248 = fsub fast float 1.000000e+00, %5247
  %5249 = fsub fast float 0x3FE3333340000000, %5086
  %5250 = fmul fast float %5249, 0x400AAAAAA0000000
  %5251 = call float @dx.op.unary.f32(i32 7, float %5250)  ; Saturate(value)
  %5252 = fmul fast float %5248, %5251
  %5253 = fmul fast float %5123, 0x3FEA2B8620000000
  %5254 = fmul fast float %5124, 0x3FEA2B8620000000
  %5255 = fmul fast float %5125, 0x3FEA2B8620000000
  %5256 = fadd fast float %5253, 0x3FC81DFBA0000000
  %5257 = fmul fast float %5256, %5123
  %5258 = fadd fast float %5257, 0x3F910E6020000000
  %5259 = fadd fast float %5254, 0x3FC81DFBA0000000
  %5260 = fmul fast float %5259, %5124
  %5261 = fadd fast float %5260, 0x3F910E6020000000
  %5262 = fadd fast float %5255, 0x3FC81DFBA0000000
  %5263 = fmul fast float %5262, %5125
  %5264 = fadd fast float %5263, 0x3F910E6020000000
  %5265 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5266 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5267 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5268 = fsub fast float %5265, %5123
  %5269 = fsub fast float %5266, %5124
  %5270 = fsub fast float %5267, %5125
  %5271 = fmul fast float %5268, %5241
  %5272 = fmul fast float %5271, %5252
  %5273 = fmul fast float %5269, %5241
  %5274 = fmul fast float %5273, %5252
  %5275 = fmul fast float %5270, %5241
  %5276 = fmul fast float %5275, %5252
  %5277 = fadd fast float %5272, %5123
  %5278 = fadd fast float %5274, %5124
  %5279 = fadd fast float %5276, %5125
  %5280 = fmul fast float %5059, %5059
  %5281 = fmul fast float %5280, %5280
  %5282 = fadd fast float %5237, 1.000000e+00
  %5283 = fsub fast float %5282, %5252
  %5284 = call float @dx.op.unary.f32(i32 7, float %5283)  ; Saturate(value)
  %5285 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5286 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5287 = fsub fast float 1.000000e+00, %5281
  %5288 = call float @dx.op.binary.f32(i32 36, float %5284, float %5287)  ; FMin(a,b)
  %5289 = call float @dx.op.unary.f32(i32 7, float %5240)  ; Saturate(value)
  %5290 = call float @dx.op.binary.f32(i32 35, float %5288, float %5289)  ; FMax(a,b)
  %5291 = fadd fast float %5286, 0xBFE4CCCCC0000000
  %5292 = fmul fast float %5291, 0x4006DB6DA0000000
  %5293 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5294 = fmul fast float %5293, 2.000000e+00
  %5295 = fsub fast float 3.000000e+00, %5294
  %5296 = bitcast float %5083 to i32
  %5297 = ashr i32 %5296, 1
  %5298 = add nsw i32 %5297, 532487669
  %5299 = bitcast i32 %5298 to float
  %5300 = fsub fast float 1.000000e+00, %5299
  %5301 = bitcast float %5300 to i32
  %5302 = sub nsw i32 2129859010, %5301
  %5303 = bitcast i32 %5302 to float
  %5304 = fmul fast float %5303, 2.000000e+00
  %5305 = bitcast float %5084 to i32
  %5306 = ashr i32 %5305, 1
  %5307 = add nsw i32 %5306, 532487669
  %5308 = bitcast i32 %5307 to float
  %5309 = fsub fast float 1.000000e+00, %5308
  %5310 = bitcast float %5309 to i32
  %5311 = sub nsw i32 2129859010, %5310
  %5312 = bitcast i32 %5311 to float
  %5313 = fmul fast float %5312, 2.000000e+00
  %5314 = bitcast float %5085 to i32
  %5315 = ashr i32 %5314, 1
  %5316 = add nsw i32 %5315, 532487669
  %5317 = bitcast i32 %5316 to float
  %5318 = fsub fast float 1.000000e+00, %5317
  %5319 = bitcast float %5318 to i32
  %5320 = sub nsw i32 2129859010, %5319
  %5321 = bitcast i32 %5320 to float
  %5322 = fmul fast float %5321, 2.000000e+00
  %5323 = fsub fast float 0x4002A9FBE0000000, %5304
  %5324 = fadd fast float %5304, 0x3FD54FDF00000000
  %5325 = bitcast float %5324 to i32
  %5326 = sub nsw i32 2129859010, %5325
  %5327 = bitcast i32 %5326 to float
  %5328 = fmul fast float %5327, %5323
  %5329 = fmul fast float %5328, %5328
  %5330 = fsub fast float 0x4002A9FBE0000000, %5313
  %5331 = fadd fast float %5313, 0x3FD54FDF00000000
  %5332 = bitcast float %5331 to i32
  %5333 = sub nsw i32 2129859010, %5332
  %5334 = bitcast i32 %5333 to float
  %5335 = fmul fast float %5334, %5330
  %5336 = fmul fast float %5335, %5335
  %5337 = fsub fast float 0x4002A9FBE0000000, %5322
  %5338 = fadd fast float %5322, 0x3FD54FDF00000000
  %5339 = bitcast float %5338 to i32
  %5340 = sub nsw i32 2129859010, %5339
  %5341 = bitcast i32 %5340 to float
  %5342 = fmul fast float %5341, %5337
  %5343 = fmul fast float %5342, %5342
  %5344 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5329)  ; FMax(a,b)
  %5345 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5336)  ; FMax(a,b)
  %5346 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5343)  ; FMax(a,b)
  %5347 = fsub fast float 1.000000e+00, %5232
  %5348 = fadd fast float %5347, %5248
  %5349 = call float @dx.op.unary.f32(i32 7, float %5348)  ; Saturate(value)
  %5350 = fsub fast float 1.000000e+00, %5212
  %5351 = fmul fast float %5290, %5350
  %5352 = fmul fast float %5293, %5293
  %5353 = fmul fast float %5352, %5351
  %5354 = fmul fast float %5353, %5295
  %5355 = fmul fast float %5350, 0xBFE99999A0000000
  %5356 = fmul fast float %5355, %5241
  %5357 = fmul fast float %5356, %5252
  %5358 = fadd fast float %5357, 1.000000e+00
  %5359 = fadd fast float %5086, -1.000000e+00
  %5360 = fmul fast float %5358, %5359
  %5361 = fadd fast float %5360, 1.000000e+00
  %5362 = fsub fast float %5344, %5083
  %5363 = fsub fast float %5345, %5084
  %5364 = fsub fast float %5346, %5085
  %5365 = fmul fast float %5354, %5362
  %5366 = fmul fast float %5354, %5363
  %5367 = fmul fast float %5354, %5364
  %5368 = fadd fast float %5365, %5083
  %5369 = fadd fast float %5366, %5084
  %5370 = fadd fast float %5367, %5085
  %5371 = fsub fast float %104, %5041
  %5372 = fsub fast float %105, %5042
  %5373 = fsub fast float %106, %5043
  %5374 = fmul fast float %5354, %5371
  %5375 = fmul fast float %5354, %5372
  %5376 = fmul fast float %5354, %5373
  %5377 = fadd fast float %5374, %5041
  %5378 = fadd fast float %5375, %5042
  %5379 = fadd fast float %5376, %5043
  %5380 = fmul fast float %5354, %5349
  %5381 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5382 = fsub fast float 1.000000e+00, %5381
  %5383 = fmul fast float %5380, %5382
  %5384 = fadd fast float %5383, %5381
  %5385 = fsub fast float 1.000000e+00, %5059
  %5386 = fmul fast float %5354, %5385
  %5387 = fadd fast float %5386, %5059
  %5388 = call float @dx.op.dot3.f32(i32 55, float %5377, float %5378, float %5379, float %5377, float %5378, float %5379)  ; Dot3(ax,ay,az,bx,by,bz)
  %5389 = call float @dx.op.unary.f32(i32 25, float %5388)  ; Rsqrt(value)
  %5390 = fmul fast float %5377, %5389
  %5391 = fmul fast float %5378, %5389
  %5392 = fmul fast float %5379, %5389
  br label %5393

; <label>:5393                                    ; preds = %5225, %5218
  %5394 = phi float [ %5224, %5218 ], [ %5231, %5225 ]
  %5395 = phi float [ %5223, %5218 ], [ %5229, %5225 ]
  %5396 = phi float [ %5222, %5218 ], [ %5227, %5225 ]
  %5397 = phi float [ %5221, %5218 ], [ %5230, %5225 ]
  %5398 = phi float [ %5220, %5218 ], [ %5228, %5225 ]
  %5399 = phi float [ %5219, %5218 ], [ %5226, %5225 ]
  %5400 = phi float [ %5083, %5218 ], [ %5368, %5225 ]
  %5401 = phi float [ %5084, %5218 ], [ %5369, %5225 ]
  %5402 = phi float [ %5085, %5218 ], [ %5370, %5225 ]
  %5403 = phi float [ %5123, %5218 ], [ %5277, %5225 ]
  %5404 = phi float [ %5124, %5218 ], [ %5278, %5225 ]
  %5405 = phi float [ %5125, %5218 ], [ %5279, %5225 ]
  %5406 = phi float [ %5041, %5218 ], [ %5390, %5225 ]
  %5407 = phi float [ %5042, %5218 ], [ %5391, %5225 ]
  %5408 = phi float [ %5043, %5218 ], [ %5392, %5225 ]
  %5409 = phi float [ %5086, %5218 ], [ %5384, %5225 ]
  %5410 = phi float [ %5059, %5218 ], [ %5387, %5225 ]
  %5411 = select i1 %213, float 0.000000e+00, float %5402
  %5412 = call float @dx.op.dot3.f32(i32 55, float %5406, float %5407, float %5408, float %5396, float %5395, float %5394)  ; Dot3(ax,ay,az,bx,by,bz)
  %5413 = call float @dx.op.unary.f32(i32 7, float %5412)  ; Saturate(value)
  %5414 = call float @dx.op.dot3.f32(i32 55, float %5399, float %5398, float %5397, float %5406, float %5407, float %5408)  ; Dot3(ax,ay,az,bx,by,bz)
  %5415 = fmul fast float %5414, 2.000000e+00
  %5416 = fmul fast float %5415, %5406
  %5417 = fmul fast float %5415, %5407
  %5418 = fmul fast float %5415, %5408
  %5419 = fsub fast float %5399, %5416
  %5420 = fsub fast float %5398, %5417
  %5421 = fsub fast float %5397, %5418
  %5422 = call float @dx.op.binary.f32(i32 36, float %5410, float 1.000000e+00)  ; FMin(a,b)
  %5423 = fsub fast float 1.000000e+00, %5422
  %5424 = bitcast float %5423 to i32
  %5425 = ashr i32 %5424, 1
  %5426 = add nsw i32 %5425, 532487669
  %5427 = bitcast i32 %5426 to float
  %5428 = fsub fast float 1.000000e+00, %5409
  %5429 = call float @dx.op.binary.f32(i32 35, float %5428, float 0x3F847AE140000000)  ; FMax(a,b)
  %5430 = fmul fast float %5429, %5429
  %5431 = fmul fast float %5430, %5430
  %5432 = call float @dx.op.unary.f32(i32 7, float %5413)  ; Saturate(value)
  %5433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %42, float %5427, float %5431, float %5432, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5434 = extractvalue %dx.types.ResRet.f32 %5433, 0
  %5435 = fsub fast float 1.000000e+00, %5410
  %5436 = bitcast float %5435 to i32
  %5437 = sub nsw i32 2129859010, %5436
  %5438 = call float @dx.op.dot3.f32(i32 55, float %65, float %61, float %57, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5439 = fmul fast float %5438, 0x3FD20DD760000000
  %5440 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %65)  ; FMax(a,b)
  %5441 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5442 = fcmp fast oeq float %5441, 0.000000e+00
  %5443 = fcmp fast oeq float %5440, 0.000000e+00
  %5444 = or i1 %5443, %5442
  br i1 %5444, label %5474, label %5445

; <label>:5445                                    ; preds = %5393
  %5446 = fsub fast float -0.000000e+00, %68
  %5447 = fsub fast float -0.000000e+00, %66
  %5448 = call float @dx.op.unary.f32(i32 24, float %5441)  ; Sqrt(value)
  %5449 = fdiv fast float %5448, %5440
  %5450 = fcmp fast ogt float %5449, 0x3FFB6F8900000000
  %5451 = select i1 %5450, float 0x3FFB6F8900000000, float %5449
  %5452 = fmul fast float %5451, 0x3FE8A23460000000
  %5453 = call float @dx.op.unary.f32(i32 7, float %5452)  ; Saturate(value)
  %5454 = call float @dx.op.binary.f32(i32 35, float %5451, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5455 = fmul fast float %5453, %5440
  %5456 = fmul fast float %5454, 0x3FF279A740000000
  %5457 = fadd fast float %5456, -1.000000e+00
  %5458 = call float @dx.op.dot3.f32(i32 55, float %5446, float %5447, float %67, float %5446, float %5447, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5459 = call float @dx.op.unary.f32(i32 25, float %5458)  ; Rsqrt(value)
  %5460 = fmul fast float %5459, %5446
  %5461 = fmul fast float %5459, %5447
  %5462 = fmul fast float %5459, %67
  %5463 = fmul fast float %5457, %5457
  %5464 = fsub fast float 1.000000e+00, %5463
  %5465 = fmul fast float %5454, 0x40005F8BE0000000
  %5466 = fsub fast float 0x400C5BF8A0000000, %5465
  %5467 = fdiv fast float %5455, %5466
  %5468 = fmul fast float %5467, 0x3FEE31C3C0000000
  %5469 = fmul fast float %5468, %5464
  %5470 = fmul fast float %5454, 0x3FDACB7480000000
  %5471 = fadd fast float %5470, 0xBFD7347680000000
  %5472 = fmul fast float %5471, %5467
  %5473 = fmul fast float %5472, %5464
  br label %5474

; <label>:5474                                    ; preds = %5445, %5393
  %5475 = phi float [ %5460, %5445 ], [ 0.000000e+00, %5393 ]
  %5476 = phi float [ %5461, %5445 ], [ 0.000000e+00, %5393 ]
  %5477 = phi float [ %5462, %5445 ], [ 0.000000e+00, %5393 ]
  %5478 = phi float [ %5469, %5445 ], [ 0.000000e+00, %5393 ]
  %5479 = phi float [ %5473, %5445 ], [ 0.000000e+00, %5393 ]
  %5480 = call float @dx.op.dot3.f32(i32 55, float %5475, float %5476, float %5477, float %5406, float %5407, float %5408)  ; Dot3(ax,ay,az,bx,by,bz)
  %5481 = fmul fast float %5480, 0x3FDF454380000000
  %5482 = fmul fast float %5480, %5480
  %5483 = fmul fast float %5482, 0x3FEE471020000000
  %5484 = fadd fast float %5483, 0xBFD42F6020000000
  %5485 = fmul fast float %5440, 0x3FD20DD760000000
  %5486 = fmul fast float %5484, %5479
  %5487 = fadd fast float %5486, %5485
  %5488 = fmul fast float %5481, %5478
  %5489 = fadd fast float %5487, %5488
  %5490 = fsub fast float %5487, %5488
  %5491 = call float @dx.op.dot3.f32(i32 55, float %5475, float %5476, float %5477, float %5419, float %5420, float %5421)  ; Dot3(ax,ay,az,bx,by,bz)
  %5492 = fmul fast float %5491, 0x3FDF454380000000
  %5493 = fmul fast float %5491, %5491
  %5494 = fmul fast float %5493, 0x3FEE471020000000
  %5495 = fadd fast float %5494, 0xBFD42F6020000000
  %5496 = call float @dx.op.dot3.f32(i32 55, float %5440, float %5478, float %5479, float 0x3FD20DD760000000, float %5492, float %5495)  ; Dot3(ax,ay,az,bx,by,bz)
  %5497 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %61)  ; FMax(a,b)
  %5498 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5499 = fcmp fast oeq float %5498, 0.000000e+00
  %5500 = fcmp fast oeq float %5497, 0.000000e+00
  %5501 = or i1 %5500, %5499
  br i1 %5501, label %5531, label %5502

; <label>:5502                                    ; preds = %5474
  %5503 = fsub fast float -0.000000e+00, %64
  %5504 = fsub fast float -0.000000e+00, %62
  %5505 = call float @dx.op.unary.f32(i32 24, float %5498)  ; Sqrt(value)
  %5506 = fdiv fast float %5505, %5497
  %5507 = fcmp fast ogt float %5506, 0x3FFB6F8900000000
  %5508 = select i1 %5507, float 0x3FFB6F8900000000, float %5506
  %5509 = fmul fast float %5508, 0x3FE8A23460000000
  %5510 = call float @dx.op.unary.f32(i32 7, float %5509)  ; Saturate(value)
  %5511 = call float @dx.op.binary.f32(i32 35, float %5508, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5512 = fmul fast float %5510, %5497
  %5513 = fmul fast float %5511, 0x3FF279A740000000
  %5514 = fadd fast float %5513, -1.000000e+00
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5503, float %5504, float %63, float %5503, float %5504, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = call float @dx.op.unary.f32(i32 25, float %5515)  ; Rsqrt(value)
  %5517 = fmul fast float %5516, %5503
  %5518 = fmul fast float %5516, %5504
  %5519 = fmul fast float %5516, %63
  %5520 = fmul fast float %5514, %5514
  %5521 = fsub fast float 1.000000e+00, %5520
  %5522 = fmul fast float %5511, 0x40005F8BE0000000
  %5523 = fsub fast float 0x400C5BF8A0000000, %5522
  %5524 = fdiv fast float %5512, %5523
  %5525 = fmul fast float %5524, 0x3FEE31C3C0000000
  %5526 = fmul fast float %5525, %5521
  %5527 = fmul fast float %5511, 0x3FDACB7480000000
  %5528 = fadd fast float %5527, 0xBFD7347680000000
  %5529 = fmul fast float %5528, %5524
  %5530 = fmul fast float %5529, %5521
  br label %5531

; <label>:5531                                    ; preds = %5502, %5474
  %5532 = phi float [ %5517, %5502 ], [ 0.000000e+00, %5474 ]
  %5533 = phi float [ %5518, %5502 ], [ 0.000000e+00, %5474 ]
  %5534 = phi float [ %5519, %5502 ], [ 0.000000e+00, %5474 ]
  %5535 = phi float [ %5526, %5502 ], [ 0.000000e+00, %5474 ]
  %5536 = phi float [ %5530, %5502 ], [ 0.000000e+00, %5474 ]
  %5537 = call float @dx.op.dot3.f32(i32 55, float %5532, float %5533, float %5534, float %5406, float %5407, float %5408)  ; Dot3(ax,ay,az,bx,by,bz)
  %5538 = fmul fast float %5537, 0x3FDF454380000000
  %5539 = fmul fast float %5537, %5537
  %5540 = fmul fast float %5539, 0x3FEE471020000000
  %5541 = fadd fast float %5540, 0xBFD42F6020000000
  %5542 = fmul fast float %5497, 0x3FD20DD760000000
  %5543 = fmul fast float %5541, %5536
  %5544 = fadd fast float %5543, %5542
  %5545 = fmul fast float %5538, %5535
  %5546 = fadd fast float %5544, %5545
  %5547 = fsub fast float %5544, %5545
  %5548 = call float @dx.op.dot3.f32(i32 55, float %5532, float %5533, float %5534, float %5419, float %5420, float %5421)  ; Dot3(ax,ay,az,bx,by,bz)
  %5549 = fmul fast float %5548, 0x3FDF454380000000
  %5550 = fmul fast float %5548, %5548
  %5551 = fmul fast float %5550, 0x3FEE471020000000
  %5552 = fadd fast float %5551, 0xBFD42F6020000000
  %5553 = call float @dx.op.dot3.f32(i32 55, float %5497, float %5535, float %5536, float 0x3FD20DD760000000, float %5549, float %5552)  ; Dot3(ax,ay,az,bx,by,bz)
  %5554 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %57)  ; FMax(a,b)
  %5555 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5556 = fcmp fast oeq float %5555, 0.000000e+00
  %5557 = fcmp fast oeq float %5554, 0.000000e+00
  %5558 = or i1 %5557, %5556
  br i1 %5558, label %5588, label %5559

; <label>:5559                                    ; preds = %5531
  %5560 = fsub fast float -0.000000e+00, %60
  %5561 = fsub fast float -0.000000e+00, %58
  %5562 = call float @dx.op.unary.f32(i32 24, float %5555)  ; Sqrt(value)
  %5563 = fdiv fast float %5562, %5554
  %5564 = fcmp fast ogt float %5563, 0x3FFB6F8900000000
  %5565 = select i1 %5564, float 0x3FFB6F8900000000, float %5563
  %5566 = fmul fast float %5565, 0x3FE8A23460000000
  %5567 = call float @dx.op.unary.f32(i32 7, float %5566)  ; Saturate(value)
  %5568 = call float @dx.op.binary.f32(i32 35, float %5565, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5569 = fmul fast float %5567, %5554
  %5570 = fmul fast float %5568, 0x3FF279A740000000
  %5571 = fadd fast float %5570, -1.000000e+00
  %5572 = call float @dx.op.dot3.f32(i32 55, float %5560, float %5561, float %59, float %5560, float %5561, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = call float @dx.op.unary.f32(i32 25, float %5572)  ; Rsqrt(value)
  %5574 = fmul fast float %5573, %5560
  %5575 = fmul fast float %5573, %5561
  %5576 = fmul fast float %5573, %59
  %5577 = fmul fast float %5571, %5571
  %5578 = fsub fast float 1.000000e+00, %5577
  %5579 = fmul fast float %5568, 0x40005F8BE0000000
  %5580 = fsub fast float 0x400C5BF8A0000000, %5579
  %5581 = fdiv fast float %5569, %5580
  %5582 = fmul fast float %5581, 0x3FEE31C3C0000000
  %5583 = fmul fast float %5582, %5578
  %5584 = fmul fast float %5568, 0x3FDACB7480000000
  %5585 = fadd fast float %5584, 0xBFD7347680000000
  %5586 = fmul fast float %5585, %5581
  %5587 = fmul fast float %5586, %5578
  br label %5588

; <label>:5588                                    ; preds = %5559, %5531
  %5589 = phi float [ %5574, %5559 ], [ 0.000000e+00, %5531 ]
  %5590 = phi float [ %5575, %5559 ], [ 0.000000e+00, %5531 ]
  %5591 = phi float [ %5576, %5559 ], [ 0.000000e+00, %5531 ]
  %5592 = phi float [ %5583, %5559 ], [ 0.000000e+00, %5531 ]
  %5593 = phi float [ %5587, %5559 ], [ 0.000000e+00, %5531 ]
  %5594 = call float @dx.op.dot3.f32(i32 55, float %5589, float %5590, float %5591, float %5406, float %5407, float %5408)  ; Dot3(ax,ay,az,bx,by,bz)
  %5595 = fmul fast float %5594, 0x3FDF454380000000
  %5596 = fmul fast float %5594, %5594
  %5597 = fmul fast float %5596, 0x3FEE471020000000
  %5598 = fadd fast float %5597, 0xBFD42F6020000000
  %5599 = fmul fast float %5554, 0x3FD20DD760000000
  %5600 = fmul fast float %5598, %5593
  %5601 = fadd fast float %5600, %5599
  %5602 = fmul fast float %5595, %5592
  %5603 = fadd fast float %5601, %5602
  %5604 = fsub fast float %5601, %5602
  %5605 = call float @dx.op.dot3.f32(i32 55, float %5589, float %5590, float %5591, float %5419, float %5420, float %5421)  ; Dot3(ax,ay,az,bx,by,bz)
  %5606 = fmul fast float %5605, 0x3FDF454380000000
  %5607 = fmul fast float %5605, %5605
  %5608 = fmul fast float %5607, 0x3FEE471020000000
  %5609 = fadd fast float %5608, 0xBFD42F6020000000
  %5610 = call float @dx.op.dot3.f32(i32 55, float %5554, float %5592, float %5593, float 0x3FD20DD760000000, float %5606, float %5609)  ; Dot3(ax,ay,az,bx,by,bz)
  %5611 = call float @dx.op.binary.f32(i32 35, float %5489, float 0.000000e+00)  ; FMax(a,b)
  %5612 = call float @dx.op.binary.f32(i32 35, float %5546, float 0.000000e+00)  ; FMax(a,b)
  %5613 = call float @dx.op.binary.f32(i32 35, float %5603, float 0.000000e+00)  ; FMax(a,b)
  %5614 = call float @dx.op.binary.f32(i32 35, float %5490, float 0.000000e+00)  ; FMax(a,b)
  %5615 = call float @dx.op.binary.f32(i32 35, float %5547, float 0.000000e+00)  ; FMax(a,b)
  %5616 = call float @dx.op.binary.f32(i32 35, float %5604, float 0.000000e+00)  ; FMax(a,b)
  %5617 = call float @dx.op.binary.f32(i32 35, float %5496, float 0.000000e+00)  ; FMax(a,b)
  %5618 = call float @dx.op.binary.f32(i32 35, float %5553, float 0.000000e+00)  ; FMax(a,b)
  %5619 = call float @dx.op.binary.f32(i32 35, float %5610, float 0.000000e+00)  ; FMax(a,b)
  %5620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5621 = extractvalue %dx.types.CBufRet.f32 %5620, 0
  %5622 = call float @dx.op.binary.f32(i32 36, float %5403, float %5621)  ; FMin(a,b)
  %5623 = fmul fast float %5622, %5423
  %5624 = fsub fast float 1.000000e+00, %5623
  %5625 = bitcast float %5624 to i32
  %5626 = sub nsw i32 2129859010, %5625
  %5627 = bitcast i32 %5626 to float
  %5628 = call float @dx.op.binary.f32(i32 36, float %5404, float %5621)  ; FMin(a,b)
  %5629 = fmul fast float %5628, %5423
  %5630 = fsub fast float 1.000000e+00, %5629
  %5631 = bitcast float %5630 to i32
  %5632 = sub nsw i32 2129859010, %5631
  %5633 = bitcast i32 %5632 to float
  %5634 = call float @dx.op.binary.f32(i32 36, float %5405, float %5621)  ; FMin(a,b)
  %5635 = fmul fast float %5634, %5423
  %5636 = fsub fast float 1.000000e+00, %5635
  %5637 = bitcast float %5636 to i32
  %5638 = sub nsw i32 2129859010, %5637
  %5639 = bitcast i32 %5638 to float
  %5640 = fmul fast float %5611, %5422
  %5641 = fmul fast float %5640, %5627
  %5642 = fmul fast float %5612, %5422
  %5643 = fmul fast float %5642, %5633
  %5644 = fmul fast float %5613, %5422
  %5645 = fmul fast float %5644, %5639
  %5646 = call float @dx.op.binary.f32(i32 36, float %5400, float %5621)  ; FMin(a,b)
  %5647 = fmul fast float %5646, %5423
  %5648 = fsub fast float 1.000000e+00, %5647
  %5649 = bitcast float %5648 to i32
  %5650 = sub nsw i32 2129859010, %5649
  %5651 = bitcast i32 %5650 to float
  %5652 = call float @dx.op.binary.f32(i32 36, float %5401, float %5621)  ; FMin(a,b)
  %5653 = fmul fast float %5652, %5423
  %5654 = fsub fast float 1.000000e+00, %5653
  %5655 = bitcast float %5654 to i32
  %5656 = sub nsw i32 2129859010, %5655
  %5657 = bitcast i32 %5656 to float
  %5658 = call float @dx.op.binary.f32(i32 36, float %5411, float %5621)  ; FMin(a,b)
  %5659 = fmul fast float %5658, %5423
  %5660 = fsub fast float 1.000000e+00, %5659
  %5661 = bitcast float %5660 to i32
  %5662 = sub nsw i32 2129859010, %5661
  %5663 = bitcast i32 %5662 to float
  %5664 = fmul fast float %5617, %5422
  %5665 = fmul fast float %5664, %5651
  %5666 = fmul fast float %5618, %5422
  %5667 = fmul fast float %5666, %5657
  %5668 = fmul fast float %5619, %5422
  %5669 = fmul fast float %5668, %5663
  %5670 = call float @dx.op.dot3.f32(i32 55, float %5641, float %5643, float %5645, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5671 = select i1 %213, float 0.000000e+00, float %5641
  %5672 = select i1 %213, float %5670, float %5643
  %5673 = select i1 %213, float 0.000000e+00, float %5645
  %5674 = call float @dx.op.dot3.f32(i32 55, float %5614, float %5615, float %5616, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5675 = select i1 %213, float 0.000000e+00, float %5614
  %5676 = select i1 %213, float %5674, float %5615
  %5677 = select i1 %213, float 0.000000e+00, float %5616
  %5678 = call float @dx.op.dot3.f32(i32 55, float %5665, float %5667, float %5669, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5679 = select i1 %213, float 0.000000e+00, float %5665
  %5680 = select i1 %213, float %5678, float %5667
  %5681 = select i1 %213, float 0.000000e+00, float %5669
  %5682 = fmul fast float %4414, %4414
  %5683 = call float @dx.op.unary.f32(i32 7, float %5682)  ; Saturate(value)
  %5684 = fmul fast float %5413, 9.843750e-01
  %5685 = fmul fast float %5409, 9.843750e-01
  %5686 = fadd fast float %5684, 7.812500e-03
  %5687 = fadd fast float %5685, 7.812500e-03
  %5688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %5686, float %5687, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5689 = extractvalue %dx.types.ResRet.f32 %5688, 0
  %5690 = extractvalue %dx.types.ResRet.f32 %5688, 1
  %5691 = extractvalue %dx.types.ResRet.f32 %5688, 2
  %5692 = extractvalue %dx.types.ResRet.f32 %5688, 3
  %5693 = fsub fast float 1.000000e+00, %5683
  %5694 = fsub fast float %5691, %5689
  %5695 = fsub fast float %5692, %5690
  %5696 = fmul fast float %5694, %5693
  %5697 = fmul fast float %5695, %5693
  %5698 = fadd fast float %5696, %5689
  %5699 = fadd fast float %5697, %5690
  %5700 = fmul fast float %5698, %5400
  %5701 = fmul fast float %5698, %5401
  %5702 = fmul fast float %5698, %5411
  %5703 = fadd fast float %5700, %5699
  %5704 = fadd fast float %5701, %5699
  %5705 = fadd fast float %5702, %5699
  %5706 = fcmp fast ogt float %5060, 0.000000e+00
  br i1 %5706, label %5707, label %5733

; <label>:5707                                    ; preds = %5588
  %5708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5060, float %5413, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5709 = extractvalue %dx.types.ResRet.f32 %5708, 0
  %5710 = extractvalue %dx.types.ResRet.f32 %5708, 1
  %5711 = extractvalue %dx.types.ResRet.f32 %5708, 2
  %5712 = fadd fast float %5709, -5.000000e-01
  %5713 = fadd fast float %5710, -5.000000e-01
  %5714 = fadd fast float %5711, -5.000000e-01
  %5715 = fsub fast float 1.000000e+00, %5400
  %5716 = fsub fast float 1.000000e+00, %5401
  %5717 = fsub fast float 1.000000e+00, %5411
  %5718 = fmul fast float %5400, 4.000000e+00
  %5719 = fmul fast float %5718, %5715
  %5720 = fmul fast float %5719, %5712
  %5721 = fmul fast float %5401, 4.000000e+00
  %5722 = fmul fast float %5721, %5716
  %5723 = fmul fast float %5722, %5713
  %5724 = fmul fast float %5411, 4.000000e+00
  %5725 = fmul fast float %5724, %5717
  %5726 = fmul fast float %5725, %5714
  %5727 = fadd fast float %5720, %5703
  %5728 = fadd fast float %5723, %5704
  %5729 = fadd fast float %5726, %5705
  %5730 = call float @dx.op.unary.f32(i32 7, float %5727)  ; Saturate(value)
  %5731 = call float @dx.op.unary.f32(i32 7, float %5728)  ; Saturate(value)
  %5732 = call float @dx.op.unary.f32(i32 7, float %5729)  ; Saturate(value)
  br label %5733

; <label>:5733                                    ; preds = %5707, %5588
  %5734 = phi float [ %5730, %5707 ], [ %5703, %5588 ]
  %5735 = phi float [ %5731, %5707 ], [ %5704, %5588 ]
  %5736 = phi float [ %5732, %5707 ], [ %5705, %5588 ]
  %5737 = call float @dx.op.binary.f32(i32 35, float %5735, float %5736)  ; FMax(a,b)
  %5738 = call float @dx.op.binary.f32(i32 35, float %5734, float %5737)  ; FMax(a,b)
  %5739 = fsub fast float 1.000000e+00, %5738
  %5740 = fmul fast float %5738, %5409
  %5741 = fadd fast float %5740, %5409
  %5742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5743 = extractvalue %dx.types.CBufRet.f32 %5742, 2
  %5744 = extractvalue %dx.types.CBufRet.f32 %5742, 3
  %5745 = fmul fast float %5741, %5743
  %5746 = fadd fast float %5745, %5744
  %5747 = call float @dx.op.unary.f32(i32 7, float %5746)  ; Saturate(value)
  %5748 = fsub fast float 1.000000e+00, %5434
  %5749 = fadd fast float %5748, %5747
  %5750 = call float @dx.op.unary.f32(i32 7, float %5749)  ; Saturate(value)
  %5751 = fcmp fast olt float %5750, 1.000000e+00
  br i1 %5751, label %5752, label %6200

; <label>:5752                                    ; preds = %5733
  %5753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5754 = extractvalue %dx.types.CBufRet.f32 %5753, 2
  %5755 = extractvalue %dx.types.CBufRet.f32 %5753, 3
  %5756 = fmul fast float %5754, %97
  %5757 = fmul fast float %5755, %98
  %5758 = fptoui float %5756 to i32
  %5759 = fptoui float %5757 to i32
  %5760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5761 = extractvalue %dx.types.CBufRet.f32 %5760, 0
  %5762 = extractvalue %dx.types.CBufRet.f32 %5760, 2
  %5763 = extractvalue %dx.types.CBufRet.f32 %5760, 3
  %5764 = fadd fast float %85, -4.000000e+00
  %5765 = call float @dx.op.binary.f32(i32 35, float %5764, float 0.000000e+00)  ; FMax(a,b)
  %5766 = fadd fast float %5765, %5761
  %5767 = fmul fast float %5766, %5762
  %5768 = call float @dx.op.unary.f32(i32 23, float %5767)  ; Log(value)
  %5769 = fmul fast float %5768, %5763
  %5770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5771 = extractvalue %dx.types.CBufRet.f32 %5770, 2
  %5772 = fmul fast float %5769, %5771
  %5773 = call float @dx.op.unary.f32(i32 7, float %5772)  ; Saturate(value)
  %5774 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5775 = extractvalue %dx.types.CBufRet.i32 %5774, 1
  %5776 = add i32 %5775, -1
  %5777 = uitofp i32 %5775 to float
  %5778 = fmul fast float %5777, %5773
  %5779 = fptoui float %5778 to i32
  %5780 = call i32 @dx.op.binary.i32(i32 40, i32 %5779, i32 %5776)  ; UMin(a,b)
  %5781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5782 = extractvalue %dx.types.CBufRet.i32 %5781, 2
  %5783 = extractvalue %dx.types.CBufRet.i32 %5781, 3
  %5784 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5759, i32 %5782, i32 %5758)  ; UMad(a,b,c)
  %5785 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5780, i32 %5783, i32 %5784)  ; UMad(a,b,c)
  %5786 = call float @dx.op.binary.f32(i32 35, float %85, float 0.000000e+00)  ; FMax(a,b)
  %5787 = fptoui float %5786 to i32
  %5788 = lshr i32 %5787, 5
  %5789 = call i32 @dx.op.binary.i32(i32 40, i32 %5788, i32 8191)  ; UMin(a,b)
  br i1 false, label %5790, label %5797

; <label>:5790                                    ; preds = %5752
  %5791 = fadd fast float 0.000000e+00, %5421
  %5792 = call float @dx.op.dot3.f32(i32 55, float %5419, float %5420, float %5791, float %5419, float %5420, float %5791)  ; Dot3(ax,ay,az,bx,by,bz)
  %5793 = call float @dx.op.unary.f32(i32 25, float %5792)  ; Rsqrt(value)
  %5794 = fmul fast float %5793, %5419
  %5795 = fmul fast float %5793, %5420
  %5796 = fmul fast float %5791, %5793
  br label %5797

; <label>:5797                                    ; preds = %5790, %5752
  %5798 = phi float [ %5794, %5790 ], [ %5419, %5752 ]
  %5799 = phi float [ %5795, %5790 ], [ %5420, %5752 ]
  %5800 = phi float [ %5796, %5790 ], [ %5421, %5752 ]
  %5801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5802 = extractvalue %dx.types.CBufRet.i32 %5801, 2
  %5803 = add nsw i32 %5802, -1
  %5804 = call i32 @dx.op.binary.i32(i32 37, i32 %5803, i32 0)  ; IMax(a,b)
  %5805 = shl i32 %5789, 2
  %5806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5805, i32 undef)  ; BufferLoad(srv,index,wot)
  %5807 = extractvalue %dx.types.ResRet.i32 %5806, 0
  %5808 = lshr i32 %5807, 16
  %5809 = and i32 %5807, 65535
  %5810 = lshr i32 %5807, 21
  %5811 = lshr i32 %5809, 5
  %5812 = call i32 @dx.op.binary.i32(i32 40, i32 %5811, i32 %5804)  ; UMin(a,b)
  %5813 = icmp ugt i32 %5810, %5812
  br i1 %5813, label %6176, label %5814

; <label>:5814                                    ; preds = %5797
  br label %5815

; <label>:5815                                    ; preds = %6168, %5814
  %5816 = phi float [ %6169, %6168 ], [ 0.000000e+00, %5814 ]
  %5817 = phi float [ %6170, %6168 ], [ 0.000000e+00, %5814 ]
  %5818 = phi float [ %6171, %6168 ], [ 0.000000e+00, %5814 ]
  %5819 = phi float [ %6172, %6168 ], [ 1.000000e+00, %5814 ]
  %5820 = phi i32 [ %6173, %6168 ], [ %5810, %5814 ]
  %5821 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5822 = extractvalue %dx.types.CBufRet.i32 %5821, 2
  %5823 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5785, i32 %5822, i32 %5820)  ; UMad(a,b,c)
  %5824 = shl i32 %5823, 2
  %5825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5824, i32 undef)  ; BufferLoad(srv,index,wot)
  %5826 = extractvalue %dx.types.ResRet.i32 %5825, 0
  %5827 = shl i32 %5820, 5
  %5828 = sub nsw i32 %5808, %5827
  %5829 = call i32 @dx.op.binary.i32(i32 37, i32 %5828, i32 0)  ; IMax(a,b)
  %5830 = call i32 @dx.op.binary.i32(i32 38, i32 %5829, i32 31)  ; IMin(a,b)
  %5831 = sub nsw i32 1, %5808
  %5832 = add nsw i32 %5831, %5809
  %5833 = call i32 @dx.op.binary.i32(i32 37, i32 %5832, i32 0)  ; IMax(a,b)
  %5834 = call i32 @dx.op.binary.i32(i32 38, i32 %5833, i32 32)  ; IMin(a,b)
  %5835 = and i32 %5834, 31
  %5836 = shl i32 -1, %5835
  %5837 = xor i32 %5836, -1
  %5838 = and i32 %5830, 31
  %5839 = shl i32 %5837, %5838
  %5840 = icmp eq i32 %5834, 32
  %5841 = select i1 %5840, i32 -1, i32 %5839
  %5842 = and i32 %5841, %5826
  %5843 = icmp eq i32 %5842, 0
  br i1 %5843, label %6168, label %5844

; <label>:5844                                    ; preds = %5815
  br label %5845

; <label>:5845                                    ; preds = %5951, %5844
  %5846 = phi float [ %5952, %5951 ], [ %5816, %5844 ]
  %5847 = phi float [ %5953, %5951 ], [ %5817, %5844 ]
  %5848 = phi float [ %5954, %5951 ], [ %5818, %5844 ]
  %5849 = phi float [ %5955, %5951 ], [ %5819, %5844 ]
  %5850 = phi i32 [ %5855, %5951 ], [ %5842, %5844 ]
  %5851 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5850)  ; FirstbitLo(value)
  %5852 = add i32 %5851, %5827
  %5853 = and i32 %5851, 31
  %5854 = shl i32 1, %5853
  %5855 = xor i32 %5854, %5850
  %5856 = mul i32 %5852, 72
  %5857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5856, i32 undef)  ; BufferLoad(srv,index,wot)
  %5858 = extractvalue %dx.types.ResRet.f32 %5857, 0
  %5859 = extractvalue %dx.types.ResRet.f32 %5857, 1
  %5860 = extractvalue %dx.types.ResRet.f32 %5857, 2
  %5861 = add i32 %5856, 12
  %5862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %5861, i32 undef)  ; BufferLoad(srv,index,wot)
  %5863 = extractvalue %dx.types.ResRet.i32 %5862, 0
  %5864 = add i32 %5856, 16
  %5865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5864, i32 undef)  ; BufferLoad(srv,index,wot)
  %5866 = extractvalue %dx.types.ResRet.f32 %5865, 0
  %5867 = extractvalue %dx.types.ResRet.f32 %5865, 1
  %5868 = extractvalue %dx.types.ResRet.f32 %5865, 2
  %5869 = add i32 %5856, 28
  %5870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5869, i32 undef)  ; BufferLoad(srv,index,wot)
  %5871 = extractvalue %dx.types.ResRet.f32 %5870, 0
  %5872 = add i32 %5856, 32
  %5873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5872, i32 undef)  ; BufferLoad(srv,index,wot)
  %5874 = extractvalue %dx.types.ResRet.f32 %5873, 0
  %5875 = extractvalue %dx.types.ResRet.f32 %5873, 1
  %5876 = extractvalue %dx.types.ResRet.f32 %5873, 2
  %5877 = extractvalue %dx.types.ResRet.f32 %5873, 3
  %5878 = add i32 %5856, 48
  %5879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5878, i32 undef)  ; BufferLoad(srv,index,wot)
  %5880 = extractvalue %dx.types.ResRet.f32 %5879, 0
  %5881 = extractvalue %dx.types.ResRet.f32 %5879, 1
  %5882 = add i32 %5856, 56
  %5883 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5882, i32 undef)  ; BufferLoad(srv,index,wot)
  %5884 = extractvalue %dx.types.ResRet.f32 %5883, 0
  %5885 = extractvalue %dx.types.ResRet.f32 %5883, 1
  %5886 = add i32 %5856, 64
  %5887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5886, i32 undef)  ; BufferLoad(srv,index,wot)
  %5888 = extractvalue %dx.types.ResRet.f32 %5887, 0
  %5889 = extractvalue %dx.types.ResRet.f32 %5887, 1
  %5890 = mul i32 %5852, 60
  %5891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5890, i32 undef)  ; BufferLoad(srv,index,wot)
  %5892 = extractvalue %dx.types.ResRet.f32 %5891, 0
  %5893 = extractvalue %dx.types.ResRet.f32 %5891, 1
  %5894 = extractvalue %dx.types.ResRet.f32 %5891, 2
  %5895 = add i32 %5890, 12
  %5896 = add i32 %5890, 48
  %5897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5896, i32 undef)  ; BufferLoad(srv,index,wot)
  %5898 = extractvalue %dx.types.ResRet.f32 %5897, 0
  %5899 = extractvalue %dx.types.ResRet.f32 %5897, 1
  %5900 = extractvalue %dx.types.ResRet.f32 %5897, 2
  %5901 = and i32 %5863, 32767
  %5902 = bitcast float %5858 to i32
  %5903 = icmp eq i32 %5902, -1
  %5904 = bitcast float %5859 to i32
  %5905 = and i32 %5863, 32768
  %5906 = icmp ne i32 %5905, 0
  %5907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5908 = extractvalue %dx.types.CBufRet.f32 %5907, 0
  %5909 = extractvalue %dx.types.CBufRet.f32 %5907, 1
  %5910 = extractvalue %dx.types.CBufRet.f32 %5907, 2
  %5911 = fsub fast float %5892, %5908
  %5912 = fsub fast float %5893, %5909
  %5913 = fsub fast float %5894, %5910
  %5914 = fsub fast float %152, %5911
  %5915 = fsub fast float %153, %5912
  %5916 = fsub fast float %154, %5913
  %5917 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5895, i32 undef)  ; BufferLoad(srv,index,wot)
  %5918 = extractvalue %dx.types.ResRet.f32 %5917, 0
  %5919 = extractvalue %dx.types.ResRet.f32 %5917, 1
  %5920 = extractvalue %dx.types.ResRet.f32 %5917, 2
  %5921 = call float @dx.op.dot3.f32(i32 55, float %5914, float %5915, float %5916, float %5918, float %5919, float %5920)  ; Dot3(ax,ay,az,bx,by,bz)
  %5922 = add i32 %5890, 24
  %5923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5922, i32 undef)  ; BufferLoad(srv,index,wot)
  %5924 = extractvalue %dx.types.ResRet.f32 %5923, 0
  %5925 = extractvalue %dx.types.ResRet.f32 %5923, 1
  %5926 = extractvalue %dx.types.ResRet.f32 %5923, 2
  %5927 = call float @dx.op.dot3.f32(i32 55, float %5914, float %5915, float %5916, float %5924, float %5925, float %5926)  ; Dot3(ax,ay,az,bx,by,bz)
  %5928 = add i32 %5890, 36
  %5929 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5928, i32 undef)  ; BufferLoad(srv,index,wot)
  %5930 = extractvalue %dx.types.ResRet.f32 %5929, 0
  %5931 = extractvalue %dx.types.ResRet.f32 %5929, 1
  %5932 = extractvalue %dx.types.ResRet.f32 %5929, 2
  %5933 = call float @dx.op.dot3.f32(i32 55, float %5914, float %5915, float %5916, float %5930, float %5931, float %5932)  ; Dot3(ax,ay,az,bx,by,bz)
  %5934 = call float @dx.op.unary.f32(i32 6, float %5921)  ; FAbs(value)
  %5935 = call float @dx.op.unary.f32(i32 6, float %5927)  ; FAbs(value)
  %5936 = call float @dx.op.unary.f32(i32 6, float %5933)  ; FAbs(value)
  %5937 = fsub fast float %5898, %5934
  %5938 = fsub fast float %5899, %5935
  %5939 = fsub fast float %5900, %5936
  %5940 = fmul fast float %5937, %5866
  %5941 = fmul fast float %5938, %5867
  %5942 = fmul fast float %5939, %5868
  %5943 = call float @dx.op.binary.f32(i32 36, float %5941, float %5942)  ; FMin(a,b)
  %5944 = call float @dx.op.binary.f32(i32 36, float %5940, float %5943)  ; FMin(a,b)
  %5945 = call float @dx.op.unary.f32(i32 7, float %5944)  ; Saturate(value)
  %5946 = call float @dx.op.binary.f32(i32 36, float %5849, float %5945)  ; FMin(a,b)
  %5947 = uitofp i1 %5906 to float
  %5948 = fsub fast float 1.000000e+00, %5947
  %5949 = fmul fast float %5946, %5948
  %5950 = fcmp fast ogt float %5949, 0.000000e+00
  br i1 %5950, label %5957, label %5951

; <label>:5951                                    ; preds = %6099, %5845
  %5952 = phi float [ %6163, %6099 ], [ %5846, %5845 ]
  %5953 = phi float [ %6164, %6099 ], [ %5847, %5845 ]
  %5954 = phi float [ %6165, %6099 ], [ %5848, %5845 ]
  %5955 = phi float [ %6166, %6099 ], [ %5849, %5845 ]
  %5956 = icmp eq i32 %5850, %5854
  br i1 %5956, label %6167, label %5845

; <label>:5957                                    ; preds = %5845
  br i1 %5903, label %6015, label %5958

; <label>:5958                                    ; preds = %5957
  %5959 = fsub fast float -0.000000e+00, %5918
  %5960 = fsub fast float -0.000000e+00, %5919
  %5961 = fsub fast float -0.000000e+00, %5920
  %5962 = call float @dx.op.dot3.f32(i32 55, float %5798, float %5799, float %5800, float %5959, float %5960, float %5961)  ; Dot3(ax,ay,az,bx,by,bz)
  %5963 = fsub fast float -0.000000e+00, %5962
  %5964 = call float @dx.op.dot3.f32(i32 55, float %5914, float %5915, float %5916, float %5959, float %5960, float %5961)  ; Dot3(ax,ay,az,bx,by,bz)
  %5965 = fadd fast float %5964, %5881
  %5966 = fadd fast float %5880, %5964
  %5967 = fsub fast float -0.000000e+00, %5966
  %5968 = fcmp ogt float %5962, -0.000000e+00
  %5969 = select i1 %5968, float %5967, float %5965
  %5970 = call float @dx.op.unary.f32(i32 6, float %5963)  ; FAbs(value)
  %5971 = fdiv fast float 1.000000e+00, %5970
  %5972 = fmul fast float %5969, %5971
  %5973 = call float @dx.op.binary.f32(i32 35, float %5972, float 0.000000e+00)  ; FMax(a,b)
  %5974 = fsub fast float -0.000000e+00, %5924
  %5975 = fsub fast float -0.000000e+00, %5925
  %5976 = fsub fast float -0.000000e+00, %5926
  %5977 = call float @dx.op.dot3.f32(i32 55, float %5798, float %5799, float %5800, float %5974, float %5975, float %5976)  ; Dot3(ax,ay,az,bx,by,bz)
  %5978 = fsub fast float -0.000000e+00, %5977
  %5979 = call float @dx.op.dot3.f32(i32 55, float %5914, float %5915, float %5916, float %5974, float %5975, float %5976)  ; Dot3(ax,ay,az,bx,by,bz)
  %5980 = fadd fast float %5979, %5885
  %5981 = fadd fast float %5884, %5979
  %5982 = fsub fast float -0.000000e+00, %5981
  %5983 = fcmp ogt float %5977, -0.000000e+00
  %5984 = select i1 %5983, float %5982, float %5980
  %5985 = call float @dx.op.unary.f32(i32 6, float %5978)  ; FAbs(value)
  %5986 = fdiv fast float 1.000000e+00, %5985
  %5987 = fmul fast float %5984, %5986
  %5988 = call float @dx.op.binary.f32(i32 35, float %5987, float 0.000000e+00)  ; FMax(a,b)
  %5989 = fsub fast float -0.000000e+00, %5930
  %5990 = fsub fast float -0.000000e+00, %5931
  %5991 = fsub fast float -0.000000e+00, %5932
  %5992 = call float @dx.op.dot3.f32(i32 55, float %5798, float %5799, float %5800, float %5989, float %5990, float %5991)  ; Dot3(ax,ay,az,bx,by,bz)
  %5993 = fsub fast float -0.000000e+00, %5992
  %5994 = call float @dx.op.dot3.f32(i32 55, float %5914, float %5915, float %5916, float %5989, float %5990, float %5991)  ; Dot3(ax,ay,az,bx,by,bz)
  %5995 = fadd fast float %5994, %5889
  %5996 = fadd fast float %5888, %5994
  %5997 = fsub fast float -0.000000e+00, %5996
  %5998 = fcmp ogt float %5992, -0.000000e+00
  %5999 = select i1 %5998, float %5997, float %5995
  %6000 = call float @dx.op.unary.f32(i32 6, float %5993)  ; FAbs(value)
  %6001 = fdiv fast float 1.000000e+00, %6000
  %6002 = fmul fast float %5999, %6001
  %6003 = call float @dx.op.binary.f32(i32 35, float %6002, float 0.000000e+00)  ; FMax(a,b)
  %6004 = call float @dx.op.binary.f32(i32 36, float %5988, float %6003)  ; FMin(a,b)
  %6005 = call float @dx.op.binary.f32(i32 36, float %5973, float %6004)  ; FMin(a,b)
  %6006 = fmul fast float %6005, %5798
  %6007 = fmul fast float %6005, %5799
  %6008 = fmul fast float %6005, %5800
  %6009 = fadd fast float %6006, %152
  %6010 = fadd fast float %6007, %153
  %6011 = fadd fast float %6008, %154
  %6012 = fsub fast float %6009, %5858
  %6013 = fsub fast float %6010, %5859
  %6014 = fsub fast float %6011, %5860
  br label %6022

; <label>:6015                                    ; preds = %5957
  %6016 = fmul fast float %5798, 8.096000e+03
  %6017 = fmul fast float %5799, 8.096000e+03
  %6018 = fmul fast float %5800, 8.096000e+03
  %6019 = fadd fast float %6016, %152
  %6020 = fadd fast float %6017, %153
  %6021 = fadd fast float %6018, %154
  br label %6022

; <label>:6022                                    ; preds = %6015, %5958
  %6023 = phi float [ %5798, %6015 ], [ %6012, %5958 ]
  %6024 = phi float [ %5799, %6015 ], [ %6013, %5958 ]
  %6025 = phi float [ %5800, %6015 ], [ %6014, %5958 ]
  %6026 = phi float [ %6019, %6015 ], [ %6009, %5958 ]
  %6027 = phi float [ %6020, %6015 ], [ %6010, %5958 ]
  %6028 = phi float [ %6021, %6015 ], [ %6011, %5958 ]
  %6029 = fcmp fast olt float %5877, 1.000000e+00
  br i1 %6029, label %6030, label %6061, !dx.controlflow.hints !85

; <label>:6030                                    ; preds = %6022
  %6031 = fmul fast float %6025, %5875
  %6032 = fmul fast float %6024, %5876
  %6033 = fsub fast float %6031, %6032
  %6034 = fmul fast float %6023, %5876
  %6035 = fmul fast float %6025, %5874
  %6036 = fsub fast float %6034, %6035
  %6037 = fmul fast float %6024, %5874
  %6038 = fmul fast float %6023, %5875
  %6039 = fsub fast float %6037, %6038
  %6040 = fmul fast float %6033, 2.000000e+00
  %6041 = fmul fast float %6036, 2.000000e+00
  %6042 = fmul fast float %6039, 2.000000e+00
  %6043 = fmul fast float %6040, %5877
  %6044 = fmul fast float %6041, %5877
  %6045 = fmul fast float %6042, %5877
  %6046 = fmul fast float %6042, %5875
  %6047 = fmul fast float %6041, %5876
  %6048 = fmul fast float %6040, %5876
  %6049 = fmul fast float %6042, %5874
  %6050 = fmul fast float %6041, %5874
  %6051 = fmul fast float %6040, %5875
  %6052 = fadd fast float %6046, %6023
  %6053 = fadd fast float %6052, %6043
  %6054 = fsub fast float %6053, %6047
  %6055 = fsub fast float %6024, %6049
  %6056 = fadd fast float %6055, %6044
  %6057 = fadd fast float %6056, %6048
  %6058 = fadd fast float %6045, %6025
  %6059 = fsub fast float %6058, %6051
  %6060 = fadd fast float %6059, %6050
  br label %6061

; <label>:6061                                    ; preds = %6030, %6022
  %6062 = phi float [ %6054, %6030 ], [ %6023, %6022 ]
  %6063 = phi float [ %6057, %6030 ], [ %6024, %6022 ]
  %6064 = phi float [ %6060, %6030 ], [ %6025, %6022 ]
  br i1 %5903, label %6096, label %6065

; <label>:6065                                    ; preds = %6061
  %6066 = fmul fast float %5409, 0x400187C840000000
  %6067 = fadd fast float %6066, 0xC00EFC2120000000
  %6068 = fmul fast float %6067, %5409
  %6069 = fadd fast float %6068, 0x3FE5D16340000000
  %6070 = fmul fast float %6069, %5409
  %6071 = fadd fast float %6070, 1.000000e+00
  %6072 = call float @dx.op.unary.f32(i32 7, float %6071)  ; Saturate(value)
  %6073 = fsub fast float %6026, %152
  %6074 = fsub fast float %6027, %153
  %6075 = fsub fast float %6028, %154
  %6076 = fsub fast float %6026, %5858
  %6077 = fsub fast float %6027, %5859
  %6078 = fsub fast float %6028, %5860
  %6079 = call float @dx.op.dot3.f32(i32 55, float %6073, float %6074, float %6075, float %6073, float %6074, float %6075)  ; Dot3(ax,ay,az,bx,by,bz)
  %6080 = call float @dx.op.dot3.f32(i32 55, float %6076, float %6077, float %6078, float %6076, float %6077, float %6078)  ; Dot3(ax,ay,az,bx,by,bz)
  %6081 = fadd fast float %6080, 0x3EE4F8B580000000
  %6082 = fdiv fast float %6079, %6081
  %6083 = bitcast float %6082 to i32
  %6084 = ashr i32 %6083, 1
  %6085 = add nsw i32 %6084, 532487669
  %6086 = bitcast i32 %6085 to float
  %6087 = fmul fast float %6086, %6072
  %6088 = call float @dx.op.unary.f32(i32 7, float %6087)  ; Saturate(value)
  %6089 = fmul fast float %6088, 0x4009981AE0000000
  %6090 = fsub fast float 0x40111BBD80000000, %6089
  %6091 = fmul fast float %6090, %6088
  %6092 = fadd fast float %6091, 0xC0009F6020000000
  %6093 = fmul fast float %6092, %6088
  %6094 = fadd fast float %6093, 1.000000e+00
  %6095 = call float @dx.op.unary.f32(i32 7, float %6094)  ; Saturate(value)
  br label %6099

; <label>:6096                                    ; preds = %6061
  %6097 = icmp ne i32 %5904, -1
  %6098 = zext i1 %6097 to i32
  br label %6099

; <label>:6099                                    ; preds = %6096, %6065
  %6100 = phi float [ %5409, %6096 ], [ %6095, %6065 ]
  %6101 = phi i32 [ %6098, %6096 ], [ 0, %6065 ]
  %6102 = fmul float %6100, 5.000000e+00
  %6103 = fsub float 5.000000e+00, %6102
  %6104 = icmp ne i32 %6101, 0
  %6105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6106 = extractvalue %dx.types.CBufRet.f32 %6105, 3
  %6107 = fadd fast float %6106, %6103
  %6108 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6107)  ; FMax(a,b)
  %6109 = call float @dx.op.unary.f32(i32 6, float %6062)  ; FAbs(value)
  %6110 = call float @dx.op.unary.f32(i32 6, float %6063)  ; FAbs(value)
  %6111 = fadd fast float %6110, %6109
  %6112 = call float @dx.op.unary.f32(i32 6, float %6064)  ; FAbs(value)
  %6113 = fadd fast float %6111, %6112
  %6114 = fcmp fast oeq float %6113, 0.000000e+00
  %6115 = fdiv fast float 1.000000e+00, %6113
  %6116 = select i1 %6114, float 1.000000e+00, float %6115
  %6117 = fmul fast float %6116, %6062
  %6118 = fmul fast float %6116, %6063
  %6119 = call float @dx.op.unary.f32(i32 6, float %6118)  ; FAbs(value)
  %6120 = call float @dx.op.unary.f32(i32 6, float %6117)  ; FAbs(value)
  %6121 = fsub fast float 1.000000e+00, %6119
  %6122 = fsub fast float 1.000000e+00, %6120
  %6123 = fcmp fast oge float %6117, 0.000000e+00
  %6124 = fcmp fast oge float %6118, 0.000000e+00
  %6125 = select i1 %6123, float 1.000000e+00, float -1.000000e+00
  %6126 = select i1 %6124, float 1.000000e+00, float -1.000000e+00
  %6127 = fcmp fast ole float %6064, 0.000000e+00
  %6128 = fmul fast float %6125, %6121
  %6129 = fmul fast float %6126, %6122
  %6130 = select i1 %6127, float %6128, float %6117
  %6131 = select i1 %6127, float %6129, float %6118
  %6132 = fmul fast float %6130, 5.000000e-01
  %6133 = fmul fast float %6131, 5.000000e-01
  %6134 = fadd fast float %6132, 5.000000e-01
  %6135 = fadd fast float %6133, 5.000000e-01
  %6136 = uitofp i32 %5901 to float
  %6137 = call float @dx.op.binary.f32(i32 36, float %6108, float 3.000000e+00)  ; FMin(a,b)
  %6138 = fadd fast float %6137, 2.000000e+00
  %6139 = call float @dx.op.unary.f32(i32 21, float %6138)  ; Exp(value)
  %6140 = extractvalue %dx.types.CBufRet.f32 %6105, 1
  %6141 = fmul fast float %6140, %6139
  %6142 = fmul fast float %6141, 2.000000e+00
  %6143 = fsub fast float 1.000000e+00, %6142
  %6144 = fmul fast float %6134, %6143
  %6145 = fmul fast float %6135, %6143
  %6146 = fadd fast float %6144, %6141
  %6147 = fadd fast float %6145, %6141
  %6148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %6146, float %6147, float %6136, float undef, i32 0, i32 0, i32 undef, float %6108)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6149 = extractvalue %dx.types.ResRet.f32 %6148, 0
  %6150 = extractvalue %dx.types.ResRet.f32 %6148, 1
  %6151 = extractvalue %dx.types.ResRet.f32 %6148, 2
  %6152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6153 = extractvalue %dx.types.CBufRet.f32 %6152, 3
  %6154 = fmul fast float %6153, %5871
  %6155 = call float @dx.op.binary.f32(i32 36, float %5439, float %6154)  ; FMin(a,b)
  %6156 = select i1 %6104, float %6155, float %6154
  %6157 = fmul fast float %6149, %5949
  %6158 = fmul fast float %6157, %6156
  %6159 = fmul fast float %6150, %5949
  %6160 = fmul fast float %6159, %6156
  %6161 = fmul fast float %6151, %5949
  %6162 = fmul fast float %6161, %6156
  %6163 = fadd fast float %6158, %5846
  %6164 = fadd fast float %6160, %5847
  %6165 = fadd fast float %6162, %5848
  %6166 = fsub fast float %5849, %5949
  br label %5951

; <label>:6167                                    ; preds = %5951
  br label %6168

; <label>:6168                                    ; preds = %6167, %5815
  %6169 = phi float [ %5816, %5815 ], [ %5952, %6167 ]
  %6170 = phi float [ %5817, %5815 ], [ %5953, %6167 ]
  %6171 = phi float [ %5818, %5815 ], [ %5954, %6167 ]
  %6172 = phi float [ %5819, %5815 ], [ %5955, %6167 ]
  %6173 = add i32 %5820, 1
  %6174 = icmp ugt i32 %6173, %5812
  br i1 %6174, label %6175, label %5815, !llvm.loop !86

; <label>:6175                                    ; preds = %6168
  br label %6176

; <label>:6176                                    ; preds = %6175, %5797
  %6177 = phi float [ 0.000000e+00, %5797 ], [ %6169, %6175 ]
  %6178 = phi float [ 0.000000e+00, %5797 ], [ %6170, %6175 ]
  %6179 = phi float [ 0.000000e+00, %5797 ], [ %6171, %6175 ]
  %6180 = call float @dx.op.dot3.f32(i32 55, float %6177, float %6178, float %6179, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6181 = select i1 %213, float 0.000000e+00, float %6177
  %6182 = select i1 %213, float %6180, float %6178
  %6183 = select i1 %213, float 0.000000e+00, float %6179
  %6184 = fcmp fast olt float %5750, 0.000000e+00
  %6185 = call float @dx.op.unary.f32(i32 6, float %5750)  ; FAbs(value)
  %6186 = fmul fast float %6185, %5679
  %6187 = fmul fast float %6185, %5680
  %6188 = fmul fast float %6185, %5681
  %6189 = select i1 %6184, float %5679, float %6186
  %6190 = select i1 %6184, float %5680, float %6187
  %6191 = select i1 %6184, float %5681, float %6188
  %6192 = fsub fast float 1.000000e+00, %6185
  %6193 = call float @dx.op.unary.f32(i32 7, float %6192)  ; Saturate(value)
  %6194 = fmul fast float %6193, %6181
  %6195 = fmul fast float %6193, %6182
  %6196 = fmul fast float %6193, %6183
  %6197 = fadd fast float %6189, %6194
  %6198 = fadd fast float %6190, %6195
  %6199 = fadd fast float %6191, %6196
  br label %6200

; <label>:6200                                    ; preds = %6176, %5733
  %6201 = phi float [ %5679, %5733 ], [ %6197, %6176 ]
  %6202 = phi float [ %5680, %5733 ], [ %6198, %6176 ]
  %6203 = phi float [ %5681, %5733 ], [ %6199, %6176 ]
  %6204 = call float @dx.op.dot3.f32(i32 55, float %5403, float %5404, float %5405, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6205 = fcmp fast ogt float %6204, 0x3E7FF19E20000000
  %6206 = fdiv fast float 1.000000e+00, %6204
  %6207 = select i1 %6205, float %6206, float 0.000000e+00
  %6208 = fmul fast float %6207, %5403
  %6209 = fmul fast float %6207, %5404
  %6210 = fmul fast float %6207, %5405
  %6211 = fadd fast float %6208, -1.000000e+00
  %6212 = fadd fast float %6209, -1.000000e+00
  %6213 = fadd fast float %6210, -1.000000e+00
  %6214 = fmul fast float %6211, 5.000000e-01
  %6215 = fmul fast float %6212, 5.000000e-01
  %6216 = fmul fast float %6213, 5.000000e-01
  %6217 = fadd fast float %6214, 1.000000e+00
  %6218 = fadd fast float %6215, 1.000000e+00
  %6219 = fadd fast float %6216, 1.000000e+00
  %6220 = call float @dx.op.binary.f32(i32 35, float %5413, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6221 = fdiv fast float %4414, %6220
  %6222 = fcmp fast olt float %5109, 1.270000e+02
  %6223 = fcmp fast olt float %5110, 1.270000e+02
  %6224 = fcmp fast olt float %5111, 1.270000e+02
  %6225 = fmul fast float %5109, 0xBFF7154760000000
  %6226 = fmul fast float %6225, %6221
  %6227 = fmul fast float %5110, 0xBFF7154760000000
  %6228 = fmul fast float %6227, %6221
  %6229 = fmul fast float %5111, 0xBFF7154760000000
  %6230 = fmul fast float %6229, %6221
  %6231 = call float @dx.op.unary.f32(i32 21, float %6226)  ; Exp(value)
  %6232 = call float @dx.op.unary.f32(i32 21, float %6228)  ; Exp(value)
  %6233 = call float @dx.op.unary.f32(i32 21, float %6230)  ; Exp(value)
  %6234 = call float @dx.op.unary.f32(i32 7, float %6231)  ; Saturate(value)
  %6235 = call float @dx.op.unary.f32(i32 7, float %6232)  ; Saturate(value)
  %6236 = call float @dx.op.unary.f32(i32 7, float %6233)  ; Saturate(value)
  %6237 = select i1 %6222, float %6234, float 0.000000e+00
  %6238 = select i1 %6223, float %6235, float 0.000000e+00
  %6239 = select i1 %6224, float %6236, float 0.000000e+00
  %6240 = fmul fast float %6237, %5739
  %6241 = fmul fast float %6238, %5739
  %6242 = fmul fast float %6239, %5739
  %6243 = fadd fast float %6240, -1.000000e+00
  %6244 = fadd fast float %6241, -1.000000e+00
  %6245 = fadd fast float %6242, -1.000000e+00
  %6246 = fmul fast float %6243, %5057
  %6247 = fmul fast float %6244, %5057
  %6248 = fmul fast float %6245, %5057
  %6249 = fmul fast float %6201, %5734
  %6250 = fmul fast float %6202, %5735
  %6251 = fmul fast float %6203, %5736
  %6252 = fsub fast float 1.000000e+00, %5413
  %6253 = bitcast float %6252 to i32
  %6254 = sitofp i32 %6253 to float
  %6255 = fmul fast float %6254, 5.000000e+00
  %6256 = fadd fast float %6255, 0xC1EFBF8940000000
  %6257 = fptosi float %6256 to i32
  %6258 = bitcast i32 %6257 to float
  %6259 = fmul fast float %6258, %5061
  %6260 = fmul fast float %5671, %6259
  %6261 = fmul fast float %6260, %5739
  %6262 = fmul fast float %6261, %6217
  %6263 = fmul fast float %5672, %6259
  %6264 = fmul fast float %6263, %5739
  %6265 = fmul fast float %6264, %6218
  %6266 = fmul fast float %5673, %6259
  %6267 = fmul fast float %6266, %5739
  %6268 = fmul fast float %6267, %6219
  %6269 = fadd fast float %6249, %5044
  %6270 = fadd fast float %6269, %6262
  %6271 = fmul fast float %6270, %5057
  %6272 = fadd fast float %6250, %5045
  %6273 = fadd fast float %6272, %6265
  %6274 = fmul fast float %6273, %5057
  %6275 = fadd fast float %6251, %5046
  %6276 = fadd fast float %6275, %6268
  %6277 = fmul fast float %6276, %5057
  %6278 = fmul fast float %5401, 0x4012D0A400000000
  %6279 = fadd fast float %6248, 1.000000e+00
  %6280 = fadd fast float %6247, 1.000000e+00
  %6281 = fadd fast float %6246, 1.000000e+00
  %6282 = fmul fast float %5739, %5673
  %6283 = fmul fast float %5739, %5672
  %6284 = fmul fast float %5739, %5671
  %6285 = fmul fast float %5428, %5057
  %6286 = fsub fast float 1.000000e+00, %6285
  %6287 = call float @dx.op.unary.f32(i32 7, float %6286)  ; Saturate(value)
  %6288 = fsub fast float 1.000000e+00, %6287
  %6289 = fadd fast float %6278, 0x3FDB6377A0000000
  %6290 = fmul fast float %6288, %6289
  %6291 = call float @dx.op.dot3.f32(i32 55, float %5127, float %5128, float %5129, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6292 = fadd fast float %6290, %6291
  %6293 = call float @dx.op.unary.f32(i32 7, float %6292)  ; Saturate(value)
  %6294 = call float @dx.op.binary.f32(i32 35, float %6293, float 0x3F847AE140000000)  ; FMax(a,b)
  %6295 = fmul fast float %6294, %6294
  %6296 = fmul fast float %6295, %6295
  %6297 = fmul fast float %6296, 0xC00A935000000000
  %6298 = call float @dx.op.unary.f32(i32 21, float %6297)  ; Exp(value)
  %6299 = fsub fast float 1.000000e+00, %6298
  %6300 = fmul fast float %6281, %5675
  %6301 = fmul fast float %6300, %6299
  %6302 = fmul fast float %6280, %5676
  %6303 = fmul fast float %6302, %6299
  %6304 = fmul fast float %6279, %5677
  %6305 = fmul fast float %6304, %6299
  %6306 = fadd fast float %6301, %6284
  %6307 = fmul fast float %6306, %5057
  %6308 = fadd fast float %6303, %6283
  %6309 = fmul fast float %6308, %5057
  %6310 = fadd fast float %6305, %6282
  %6311 = fmul fast float %6310, %5057
  %6312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6313 = extractvalue %dx.types.CBufRet.f32 %6312, 3
  %6314 = fcmp fast oeq float %6313, 0.000000e+00
  br i1 %6314, label %7918, label %6315

; <label>:6315                                    ; preds = %6200
  %6316 = extractvalue %dx.types.CBufRet.f32 %6312, 0
  %6317 = extractvalue %dx.types.CBufRet.f32 %6312, 1
  %6318 = extractvalue %dx.types.CBufRet.f32 %6312, 2
  %6319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6320 = extractvalue %dx.types.CBufRet.f32 %6319, 0
  %6321 = extractvalue %dx.types.CBufRet.f32 %6319, 1
  %6322 = extractvalue %dx.types.CBufRet.f32 %6319, 2
  %6323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6324 = extractvalue %dx.types.CBufRet.f32 %6323, 0
  %6325 = extractvalue %dx.types.CBufRet.f32 %6323, 1
  %6326 = call float @dx.op.dot3.f32(i32 55, float %6320, float %6321, float %6322, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6327 = select i1 %213, float %6324, float %6320
  %6328 = select i1 %213, float %6326, float %6321
  %6329 = select i1 %213, float %6325, float %6322
  %6330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6331 = extractvalue %dx.types.CBufRet.f32 %6330, 2
  %6332 = fmul fast float %6331, %104
  %6333 = fmul fast float %6331, %105
  %6334 = fmul fast float %6331, %106
  %6335 = fadd fast float %6332, %152
  %6336 = fadd fast float %6333, %153
  %6337 = fadd fast float %6334, %154
  %6338 = fcmp fast olt float %6313, 0.000000e+00
  br i1 %6338, label %7434, label %6339

; <label>:6339                                    ; preds = %6315
  %6340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6341 = extractvalue %dx.types.CBufRet.f32 %6340, 0
  %6342 = extractvalue %dx.types.CBufRet.f32 %6340, 1
  %6343 = extractvalue %dx.types.CBufRet.f32 %6340, 2
  %6344 = extractvalue %dx.types.CBufRet.f32 %6340, 3
  %6345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6346 = extractvalue %dx.types.CBufRet.f32 %6345, 0
  %6347 = extractvalue %dx.types.CBufRet.f32 %6345, 1
  %6348 = extractvalue %dx.types.CBufRet.f32 %6345, 2
  %6349 = extractvalue %dx.types.CBufRet.f32 %6345, 3
  %6350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6350, 0
  %6352 = extractvalue %dx.types.CBufRet.f32 %6350, 1
  %6353 = extractvalue %dx.types.CBufRet.f32 %6350, 2
  %6354 = extractvalue %dx.types.CBufRet.f32 %6350, 3
  %6355 = fmul fast float %6341, %6335
  %6356 = call float @dx.op.tertiary.f32(i32 46, float %6336, float %6342, float %6355)  ; FMad(a,b,c)
  %6357 = call float @dx.op.tertiary.f32(i32 46, float %6337, float %6343, float %6356)  ; FMad(a,b,c)
  %6358 = fadd fast float %6357, %6344
  %6359 = fmul fast float %6346, %6335
  %6360 = call float @dx.op.tertiary.f32(i32 46, float %6336, float %6347, float %6359)  ; FMad(a,b,c)
  %6361 = call float @dx.op.tertiary.f32(i32 46, float %6337, float %6348, float %6360)  ; FMad(a,b,c)
  %6362 = fadd fast float %6361, %6349
  %6363 = fmul fast float %6351, %6335
  %6364 = call float @dx.op.tertiary.f32(i32 46, float %6336, float %6352, float %6363)  ; FMad(a,b,c)
  %6365 = call float @dx.op.tertiary.f32(i32 46, float %6337, float %6353, float %6364)  ; FMad(a,b,c)
  %6366 = fadd fast float %6365, %6354
  %6367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6368 = extractvalue %dx.types.CBufRet.f32 %6367, 0
  %6369 = extractvalue %dx.types.CBufRet.f32 %6367, 1
  %6370 = extractvalue %dx.types.CBufRet.f32 %6367, 3
  %6371 = fmul fast float %6370, %6358
  %6372 = fmul fast float %6370, %6362
  %6373 = fadd fast float %6371, %6368
  %6374 = fadd fast float %6372, %6369
  %6375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6376 = extractvalue %dx.types.CBufRet.f32 %6375, 0
  %6377 = extractvalue %dx.types.CBufRet.f32 %6375, 1
  %6378 = extractvalue %dx.types.CBufRet.f32 %6375, 3
  %6379 = fmul fast float %6378, %6358
  %6380 = fmul fast float %6378, %6362
  %6381 = fadd fast float %6379, %6376
  %6382 = fadd fast float %6380, %6377
  %6383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6384 = extractvalue %dx.types.CBufRet.f32 %6383, 1
  %6385 = fsub fast float %6384, %6366
  %6386 = extractvalue %dx.types.CBufRet.f32 %6383, 2
  %6387 = fmul fast float %6385, %6386
  %6388 = fsub fast float 1.000000e+00, %6387
  %6389 = call float @dx.op.unary.f32(i32 7, float %6388)  ; Saturate(value)
  %6390 = extractvalue %dx.types.CBufRet.f32 %6375, 2
  %6391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6392 = extractvalue %dx.types.CBufRet.f32 %6391, 2
  %6393 = fadd fast float %6392, %6390
  %6394 = fcmp fast ogt float %6393, 0.000000e+00
  br i1 %6394, label %6395, label %6419

; <label>:6395                                    ; preds = %6339
  %6396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6397 = extractvalue %dx.types.CBufRet.f32 %6396, 0
  %6398 = extractvalue %dx.types.CBufRet.f32 %6396, 1
  %6399 = fsub fast float %6381, %6397
  %6400 = fsub fast float %6382, %6398
  %6401 = fcmp fast olt float %6399, 0.000000e+00
  %6402 = fcmp fast olt float %6400, 0.000000e+00
  %6403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.f32 %6403, 0
  %6405 = extractvalue %dx.types.CBufRet.f32 %6403, 1
  %6406 = extractvalue %dx.types.CBufRet.f32 %6403, 2
  %6407 = extractvalue %dx.types.CBufRet.f32 %6403, 3
  %6408 = select i1 %6401, float %6404, float %6406
  %6409 = select i1 %6402, float %6405, float %6407
  %6410 = fmul fast float %6408, %6399
  %6411 = fmul fast float %6409, %6400
  %6412 = call float @dx.op.unary.f32(i32 6, float %6410)  ; FAbs(value)
  %6413 = call float @dx.op.unary.f32(i32 6, float %6411)  ; FAbs(value)
  %6414 = extractvalue %dx.types.CBufRet.f32 %6330, 0
  %6415 = call float @dx.op.binary.f32(i32 35, float %6412, float %6413)  ; FMax(a,b)
  %6416 = fsub fast float %6414, %6415
  %6417 = call float @dx.op.unary.f32(i32 7, float %6416)  ; Saturate(value)
  %6418 = fmul fast float %6417, %6389
  br label %6419

; <label>:6419                                    ; preds = %6395, %6339
  %6420 = phi float [ %6418, %6395 ], [ 0.000000e+00, %6339 ]
  %6421 = extractvalue %dx.types.CBufRet.f32 %6367, 2
  %6422 = extractvalue %dx.types.CBufRet.f32 %6391, 1
  %6423 = fadd fast float %6422, %6421
  %6424 = fcmp fast ogt float %6423, 0.000000e+00
  %6425 = extractvalue %dx.types.CBufRet.f32 %6330, 0
  br i1 %6424, label %6426, label %6449

; <label>:6426                                    ; preds = %6419
  %6427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6428 = extractvalue %dx.types.CBufRet.f32 %6427, 0
  %6429 = extractvalue %dx.types.CBufRet.f32 %6427, 1
  %6430 = fsub fast float %6373, %6428
  %6431 = fsub fast float %6374, %6429
  %6432 = fcmp fast olt float %6430, 0.000000e+00
  %6433 = fcmp fast olt float %6431, 0.000000e+00
  %6434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6435 = extractvalue %dx.types.CBufRet.f32 %6434, 0
  %6436 = extractvalue %dx.types.CBufRet.f32 %6434, 1
  %6437 = extractvalue %dx.types.CBufRet.f32 %6434, 2
  %6438 = extractvalue %dx.types.CBufRet.f32 %6434, 3
  %6439 = select i1 %6432, float %6435, float %6437
  %6440 = select i1 %6433, float %6436, float %6438
  %6441 = fmul fast float %6439, %6430
  %6442 = fmul fast float %6440, %6431
  %6443 = call float @dx.op.unary.f32(i32 6, float %6441)  ; FAbs(value)
  %6444 = call float @dx.op.unary.f32(i32 6, float %6442)  ; FAbs(value)
  %6445 = call float @dx.op.binary.f32(i32 35, float %6443, float %6444)  ; FMax(a,b)
  %6446 = fsub fast float %6425, %6445
  %6447 = call float @dx.op.unary.f32(i32 7, float %6446)  ; Saturate(value)
  %6448 = fmul fast float %6447, %6389
  br label %6449

; <label>:6449                                    ; preds = %6426, %6419
  %6450 = phi float [ %6448, %6426 ], [ 0.000000e+00, %6419 ]
  %6451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6452 = extractvalue %dx.types.CBufRet.f32 %6451, 1
  %6453 = call float @dx.op.unary.f32(i32 7, float %6452)  ; Saturate(value)
  %6454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6455 = extractvalue %dx.types.CBufRet.f32 %6454, 0
  %6456 = extractvalue %dx.types.CBufRet.f32 %6454, 1
  %6457 = fsub fast float %6358, %6455
  %6458 = fsub fast float %6362, %6456
  %6459 = fcmp fast olt float %6457, 0.000000e+00
  %6460 = fcmp fast olt float %6458, 0.000000e+00
  %6461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6462 = extractvalue %dx.types.CBufRet.f32 %6461, 0
  %6463 = extractvalue %dx.types.CBufRet.f32 %6461, 1
  %6464 = extractvalue %dx.types.CBufRet.f32 %6461, 2
  %6465 = extractvalue %dx.types.CBufRet.f32 %6461, 3
  %6466 = select i1 %6459, float %6462, float %6464
  %6467 = select i1 %6460, float %6463, float %6465
  %6468 = fmul fast float %6466, %6457
  %6469 = fmul fast float %6467, %6458
  %6470 = call float @dx.op.unary.f32(i32 6, float %6468)  ; FAbs(value)
  %6471 = call float @dx.op.unary.f32(i32 6, float %6469)  ; FAbs(value)
  %6472 = call float @dx.op.binary.f32(i32 35, float %6470, float %6471)  ; FMax(a,b)
  %6473 = fsub fast float %6425, %6472
  %6474 = call float @dx.op.unary.f32(i32 7, float %6473)  ; Saturate(value)
  %6475 = call float @dx.op.binary.f32(i32 36, float %6474, float %6453)  ; FMin(a,b)
  %6476 = fmul fast float %6475, %6389
  %6477 = fsub fast float %6450, %6476
  %6478 = fsub fast float %6420, %6450
  %6479 = fsub fast float %6478, %6476
  %6480 = call float @dx.op.binary.f32(i32 35, float %6450, float %6420)  ; FMax(a,b)
  %6481 = call float @dx.op.binary.f32(i32 35, float %6476, float %6480)  ; FMax(a,b)
  %6482 = fcmp fast olt float %6481, 1.000000e+00
  br i1 %6482, label %6483, label %6881, !dx.controlflow.hints !88

; <label>:6483                                    ; preds = %6449
  %6484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6485 = extractvalue %dx.types.CBufRet.f32 %6484, 0
  %6486 = fcmp fast une float %6485, 0.000000e+00
  br i1 %6486, label %6487, label %6881, !dx.controlflow.hints !89

; <label>:6487                                    ; preds = %6483
  %6488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6489 = extractvalue %dx.types.CBufRet.f32 %6488, 0
  %6490 = extractvalue %dx.types.CBufRet.f32 %6488, 1
  %6491 = extractvalue %dx.types.CBufRet.f32 %6488, 2
  %6492 = extractvalue %dx.types.CBufRet.f32 %6488, 3
  %6493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6494 = extractvalue %dx.types.CBufRet.f32 %6493, 0
  %6495 = extractvalue %dx.types.CBufRet.f32 %6493, 1
  %6496 = extractvalue %dx.types.CBufRet.f32 %6493, 2
  %6497 = extractvalue %dx.types.CBufRet.f32 %6493, 3
  %6498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6499 = extractvalue %dx.types.CBufRet.f32 %6498, 0
  %6500 = extractvalue %dx.types.CBufRet.f32 %6498, 1
  %6501 = extractvalue %dx.types.CBufRet.f32 %6498, 2
  %6502 = extractvalue %dx.types.CBufRet.f32 %6498, 3
  %6503 = fmul fast float %6489, %6335
  %6504 = call float @dx.op.tertiary.f32(i32 46, float %6336, float %6490, float %6503)  ; FMad(a,b,c)
  %6505 = call float @dx.op.tertiary.f32(i32 46, float %6337, float %6491, float %6504)  ; FMad(a,b,c)
  %6506 = fadd fast float %6505, %6492
  %6507 = fmul fast float %6494, %6335
  %6508 = call float @dx.op.tertiary.f32(i32 46, float %6336, float %6495, float %6507)  ; FMad(a,b,c)
  %6509 = call float @dx.op.tertiary.f32(i32 46, float %6337, float %6496, float %6508)  ; FMad(a,b,c)
  %6510 = fadd fast float %6509, %6497
  %6511 = fmul fast float %6499, %6335
  %6512 = call float @dx.op.tertiary.f32(i32 46, float %6336, float %6500, float %6511)  ; FMad(a,b,c)
  %6513 = call float @dx.op.tertiary.f32(i32 46, float %6337, float %6501, float %6512)  ; FMad(a,b,c)
  %6514 = fadd fast float %6513, %6502
  %6515 = fcmp fast oge float %6506, 1.000000e+00
  %6516 = fcmp fast oge float %6510, 1.000000e+00
  %6517 = or i1 %6515, %6516
  %6518 = fcmp fast olt float %6506, 0.000000e+00
  %6519 = fcmp fast olt float %6510, 0.000000e+00
  %6520 = or i1 %6518, %6519
  %6521 = or i1 %6517, %6520
  br i1 %6521, label %6881, label %6522, !dx.controlflow.hints !90

; <label>:6522                                    ; preds = %6487
  %6523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6524 = extractvalue %dx.types.CBufRet.f32 %6523, 0
  %6525 = extractvalue %dx.types.CBufRet.f32 %6523, 1
  %6526 = extractvalue %dx.types.CBufRet.f32 %6523, 2
  %6527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6528 = extractvalue %dx.types.CBufRet.i32 %6527, 2
  %6529 = uitofp i32 %6528 to float
  %6530 = extractvalue %dx.types.CBufRet.i32 %6527, 3
  %6531 = uitofp i32 %6530 to float
  %6532 = extractvalue %dx.types.CBufRet.f32 %6523, 3
  %6533 = fmul fast float %6532, 2.000000e+00
  %6534 = fsub fast float %6506, %6524
  %6535 = fsub fast float %6510, %6525
  %6536 = fmul fast float %6533, %6534
  %6537 = fmul fast float %6533, %6535
  %6538 = fdiv fast float 1.000000e+00, %6318
  %6539 = fmul fast float %6537, %6538
  %6540 = call float @dx.op.unary.f32(i32 6, float %6539)  ; FAbs(value)
  %6541 = fmul fast float %6526, %6337
  %6542 = fmul fast float %6541, %6533
  %6543 = call float @dx.op.unary.f32(i32 6, float %6542)  ; FAbs(value)
  %6544 = call float @dx.op.unary.f32(i32 6, float %6536)  ; FAbs(value)
  %6545 = call float @dx.op.binary.f32(i32 35, float %6543, float %6540)  ; FMax(a,b)
  %6546 = call float @dx.op.binary.f32(i32 35, float %6544, float %6545)  ; FMax(a,b)
  %6547 = fmul fast float %6546, 2.000000e+00
  %6548 = call float @dx.op.unary.f32(i32 23, float %6547)  ; Log(value)
  %6549 = call float @dx.op.binary.f32(i32 35, float %6548, float %6529)  ; FMax(a,b)
  %6550 = call float @dx.op.unary.f32(i32 22, float %6549)  ; Frc(value)
  %6551 = fadd fast float %6550, 0xBFEA666660000000
  %6552 = fmul fast float %6551, 8.000000e+00
  %6553 = call float @dx.op.unary.f32(i32 7, float %6552)  ; Saturate(value)
  %6554 = call float @dx.op.unary.f32(i32 27, float %6549)  ; Round_ni(value)
  %6555 = fadd fast float %6554, %6553
  %6556 = call float @dx.op.binary.f32(i32 36, float %6555, float %6531)  ; FMin(a,b)
  %6557 = call float @dx.op.unary.f32(i32 27, float %6556)  ; Round_ni(value)
  %6558 = fsub fast float -0.000000e+00, %6557
  %6559 = call float @dx.op.unary.f32(i32 21, float %6558)  ; Exp(value)
  %6560 = fmul fast float %6559, %6533
  %6561 = fmul fast float %6560, %6506
  %6562 = fmul fast float %6560, %6510
  %6563 = fmul fast float %6561, 2.500000e-01
  %6564 = fmul fast float %6562, 2.500000e-01
  %6565 = fadd fast float %6563, 5.000000e-01
  %6566 = fadd fast float %6564, 5.000000e-01
  %6567 = fsub fast float %6531, %6529
  %6568 = fptoui float %6567 to i32
  %6569 = add i32 %6568, 320
  %6570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %6569)  ; CBufferLoadLegacy(handle,regIndex)
  %6571 = extractvalue %dx.types.CBufRet.f32 %6570, 0
  %6572 = extractvalue %dx.types.CBufRet.f32 %6570, 1
  %6573 = fcmp fast une float %6556, %6531
  %6574 = fsub fast float %6506, %6571
  %6575 = fsub fast float %6510, %6572
  %6576 = call float @dx.op.unary.f32(i32 6, float %6574)  ; FAbs(value)
  %6577 = call float @dx.op.unary.f32(i32 6, float %6575)  ; FAbs(value)
  %6578 = fmul fast float %6576, %6560
  %6579 = fmul fast float %6577, %6560
  %6580 = fcmp fast olt float %6578, 1.000000e+00
  %6581 = fcmp fast olt float %6579, 1.000000e+00
  %6582 = and i1 %6580, %6581
  %6583 = or i1 %6573, %6582
  br i1 %6583, label %6584, label %6881, !dx.controlflow.hints !91

; <label>:6584                                    ; preds = %6522
  %6585 = fmul fast float %6562, 5.000000e-01
  %6586 = fmul fast float %6561, 5.000000e-01
  %6587 = fadd fast float %6585, 5.000000e-01
  %6588 = fadd fast float %6586, 5.000000e-01
  %6589 = sitofp i32 %6528 to float
  %6590 = fsub fast float %6556, %6589
  %6591 = call float @dx.op.unary.f32(i32 27, float %6590)  ; Round_ni(value)
  %6592 = call float @dx.op.unary.f32(i32 22, float %6556)  ; Frc(value)
  %6593 = call float @dx.op.unary.f32(i32 22, float %6588)  ; Frc(value)
  %6594 = call float @dx.op.unary.f32(i32 22, float %6587)  ; Frc(value)
  %6595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6593, float %6594, float %6591, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6596 = extractvalue %dx.types.ResRet.f32 %6595, 0
  %6597 = extractvalue %dx.types.ResRet.f32 %6595, 1
  %6598 = extractvalue %dx.types.ResRet.f32 %6595, 2
  %6599 = extractvalue %dx.types.ResRet.f32 %6595, 3
  %6600 = fcmp fast ogt float %6592, 0.000000e+00
  br i1 %6600, label %6601, label %6622, !dx.controlflow.hints !92

; <label>:6601                                    ; preds = %6584
  %6602 = fadd fast float %6591, 1.000000e+00
  %6603 = call float @dx.op.unary.f32(i32 22, float %6565)  ; Frc(value)
  %6604 = call float @dx.op.unary.f32(i32 22, float %6566)  ; Frc(value)
  %6605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6603, float %6604, float %6602, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6606 = extractvalue %dx.types.ResRet.f32 %6605, 0
  %6607 = extractvalue %dx.types.ResRet.f32 %6605, 1
  %6608 = extractvalue %dx.types.ResRet.f32 %6605, 2
  %6609 = extractvalue %dx.types.ResRet.f32 %6605, 3
  %6610 = fsub fast float %6606, %6596
  %6611 = fsub fast float %6607, %6597
  %6612 = fsub fast float %6608, %6598
  %6613 = fsub fast float %6609, %6599
  %6614 = fmul fast float %6610, %6592
  %6615 = fmul fast float %6611, %6592
  %6616 = fmul fast float %6612, %6592
  %6617 = fmul fast float %6613, %6592
  %6618 = fadd fast float %6614, %6596
  %6619 = fadd fast float %6615, %6597
  %6620 = fadd fast float %6616, %6598
  %6621 = fadd fast float %6617, %6599
  br label %6622

; <label>:6622                                    ; preds = %6601, %6584
  %6623 = phi float [ %6618, %6601 ], [ %6596, %6584 ]
  %6624 = phi float [ %6619, %6601 ], [ %6597, %6584 ]
  %6625 = phi float [ %6620, %6601 ], [ %6598, %6584 ]
  %6626 = phi float [ %6621, %6601 ], [ %6599, %6584 ]
  %6627 = fadd fast float %6623, -5.000000e-01
  %6628 = fadd fast float %6625, -5.000000e-01
  %6629 = fmul fast float %6627, 0xBFD5555560000000
  %6630 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6628, float %6629)  ; FMad(a,b,c)
  %6631 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6624, float 0.000000e+00)  ; FMad(a,b,c)
  %6632 = fadd fast float %6631, %6626
  %6633 = fmul fast float %6627, -7.500000e-01
  %6634 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6628, float %6633)  ; FMad(a,b,c)
  %6635 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6624, float 0.000000e+00)  ; FMad(a,b,c)
  %6636 = fadd fast float %6635, %6626
  %6637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6638 = extractvalue %dx.types.CBufRet.f32 %6637, 0
  %6639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6640 = extractvalue %dx.types.CBufRet.f32 %6639, 0
  %6641 = extractvalue %dx.types.CBufRet.f32 %6639, 1
  %6642 = extractvalue %dx.types.CBufRet.f32 %6639, 2
  %6643 = extractvalue %dx.types.CBufRet.f32 %6639, 3
  %6644 = fsub fast float %6640, %6630
  %6645 = fsub fast float %6641, %6632
  %6646 = fsub fast float %6642, %6634
  %6647 = fsub fast float %6643, %6636
  %6648 = fmul fast float %6644, %6638
  %6649 = fmul fast float %6645, %6638
  %6650 = fmul fast float %6646, %6638
  %6651 = fmul fast float %6647, %6638
  %6652 = fadd fast float %6648, %6630
  %6653 = fadd fast float %6649, %6632
  %6654 = fadd fast float %6650, %6634
  %6655 = fadd fast float %6651, %6636
  %6656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6657 = extractvalue %dx.types.ResRet.i32 %6656, 0
  %6658 = and i32 %6657, 536870911
  %6659 = uitofp i32 %6658 to float
  %6660 = fmul fast float %6659, %6506
  %6661 = fmul fast float %6659, %6510
  %6662 = fptoui float %6660 to i32
  %6663 = fptoui float %6661 to i32
  %6664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6665 = extractvalue %dx.types.ResRet.i32 %6664, 0
  %6666 = and i32 %6665, 31
  %6667 = lshr i32 %6662, %6666
  %6668 = lshr i32 %6663, %6666
  %6669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6670 = extractvalue %dx.types.ResRet.i32 %6669, 0
  %6671 = and i32 %6670, 31
  %6672 = shl i32 1, %6671
  %6673 = call i32 @dx.op.binary.i32(i32 40, i32 %6672, i32 4)  ; UMin(a,b)
  %6674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6675 = extractvalue %dx.types.ResRet.i32 %6674, 0
  %6676 = extractvalue %dx.types.ResRet.i32 %6674, 1
  %6677 = icmp eq i32 %6673, 0
  br i1 %6677, label %6719, label %6678

; <label>:6678                                    ; preds = %6622
  br label %6679

; <label>:6679                                    ; preds = %6707, %6678
  %6680 = phi i32 [ %6710, %6707 ], [ 0, %6678 ]
  %6681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6682 = extractvalue %dx.types.ResRet.i32 %6681, 0
  %6683 = lshr i32 %6682, 16
  %6684 = and i32 %6683, 31
  %6685 = shl i32 %6668, %6684
  %6686 = add i32 %6685, %6667
  %6687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6688 = extractvalue %dx.types.ResRet.i32 %6687, 0
  %6689 = and i32 %6688, 31
  %6690 = shl i32 %6686, %6689
  %6691 = add i32 %6690, %6680
  %6692 = shl i32 %6691, 2
  %6693 = add i32 %6692, 32
  %6694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6693, i32 undef)  ; BufferLoad(srv,index,wot)
  %6695 = extractvalue %dx.types.ResRet.i32 %6694, 0
  %6696 = icmp slt i32 %6695, 0
  %6697 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6680
  %6698 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6680
  %6699 = bitcast float* %6697 to i32*
  %6700 = bitcast float* %6698 to i32*
  br i1 %6696, label %6701, label %6707

; <label>:6701                                    ; preds = %6679
  %6702 = and i32 %6695, 1073741823
  %6703 = add nuw nsw i32 %6702, 20
  %6704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6703, i32 undef)  ; BufferLoad(srv,index,wot)
  %6705 = extractvalue %dx.types.ResRet.i32 %6704, 0
  %6706 = extractvalue %dx.types.ResRet.i32 %6704, 1
  br label %6707

; <label>:6707                                    ; preds = %6701, %6679
  %6708 = phi i32 [ %6705, %6701 ], [ %6675, %6679 ]
  %6709 = phi i32 [ %6706, %6701 ], [ %6676, %6679 ]
  store i32 %6708, i32* %6699, align 4
  store i32 %6709, i32* %6700, align 4
  %6710 = add nuw i32 %6680, 1
  %6711 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6712 = extractvalue %dx.types.CBufRet.i32 %6711, 2
  %6713 = icmp eq i32 %6712, 0
  %6714 = icmp ugt i32 %6695, -1073741825
  %6715 = and i1 %6714, %6713
  %6716 = icmp ult i32 %6710, %6673
  %6717 = and i1 %6715, %6716
  br i1 %6717, label %6679, label %6718

; <label>:6718                                    ; preds = %6707
  br label %6719

; <label>:6719                                    ; preds = %6718, %6622
  %6720 = phi i32 [ 0, %6622 ], [ %6710, %6718 ]
  %6721 = extractvalue %dx.types.CBufRet.f32 %6484, 2
  %6722 = fptoui float %6721 to i32
  %6723 = icmp eq i32 %6722, 0
  br i1 %6723, label %6775, label %6724

; <label>:6724                                    ; preds = %6719
  br label %6725

; <label>:6725                                    ; preds = %6770, %6724
  %6726 = phi i32 [ %6771, %6770 ], [ %6720, %6724 ]
  %6727 = phi i32 [ %6772, %6770 ], [ 0, %6724 ]
  %6728 = lshr i32 %6727, 2
  %6729 = and i32 %6727, 3
  %6730 = add nuw nsw i32 %6728, 83
  %6731 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 %6730)  ; CBufferLoadLegacy(handle,regIndex)
  %6732 = extractvalue %dx.types.CBufRet.i32 %6731, 0
  %6733 = extractvalue %dx.types.CBufRet.i32 %6731, 1
  %6734 = extractvalue %dx.types.CBufRet.i32 %6731, 2
  %6735 = extractvalue %dx.types.CBufRet.i32 %6731, 3
  %6736 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 0
  store i32 %6732, i32* %6736, align 4
  %6737 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 1
  store i32 %6733, i32* %6737, align 4
  %6738 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 2
  store i32 %6734, i32* %6738, align 4
  %6739 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 3
  store i32 %6735, i32* %6739, align 4
  %6740 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 %6729
  %6741 = load i32, i32* %6740, align 4, !tbaa !93, !noalias !97
  %6742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6743 = extractvalue %dx.types.ResRet.i32 %6742, 0
  %6744 = lshr i32 %6743, 16
  %6745 = and i32 %6744, 31
  %6746 = shl i32 %6668, %6745
  %6747 = add i32 %6746, %6667
  %6748 = shl i32 %6747, 2
  %6749 = add i32 %6748, %6741
  %6750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6749, i32 undef)  ; BufferLoad(srv,index,wot)
  %6751 = extractvalue %dx.types.ResRet.i32 %6750, 0
  %6752 = icmp eq i32 %6751, 0
  br i1 %6752, label %6770, label %6753

; <label>:6753                                    ; preds = %6725
  %6754 = icmp slt i32 %6751, 0
  %6755 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6726
  %6756 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6726
  %6757 = bitcast float* %6755 to i32*
  %6758 = bitcast float* %6756 to i32*
  br i1 %6754, label %6759, label %6766

; <label>:6759                                    ; preds = %6753
  %6760 = and i32 %6751, 1073741823
  %6761 = add i32 %6741, 20
  %6762 = add i32 %6761, %6760
  %6763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6762, i32 undef)  ; BufferLoad(srv,index,wot)
  %6764 = extractvalue %dx.types.ResRet.i32 %6763, 0
  %6765 = extractvalue %dx.types.ResRet.i32 %6763, 1
  br label %6766

; <label>:6766                                    ; preds = %6759, %6753
  %6767 = phi i32 [ %6764, %6759 ], [ %6675, %6753 ]
  %6768 = phi i32 [ %6765, %6759 ], [ %6676, %6753 ]
  store i32 %6767, i32* %6757, align 4
  store i32 %6768, i32* %6758, align 4
  %6769 = add i32 %6726, 1
  br label %6770

; <label>:6770                                    ; preds = %6766, %6725
  %6771 = phi i32 [ %6726, %6725 ], [ %6769, %6766 ]
  %6772 = add nuw i32 %6727, 1
  %6773 = icmp eq i32 %6772, %6722
  br i1 %6773, label %6774, label %6725

; <label>:6774                                    ; preds = %6770
  br label %6775

; <label>:6775                                    ; preds = %6774, %6719
  %6776 = phi i32 [ %6720, %6719 ], [ %6771, %6774 ]
  %6777 = icmp eq i32 %6776, 1
  %6778 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 0
  %6779 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  br i1 %6777, label %6780, label %6783

; <label>:6780                                    ; preds = %6775
  %6781 = load float, float* %6778, align 4
  %6782 = load float, float* %6779, align 4
  br label %6810

; <label>:6783                                    ; preds = %6775
  %6784 = load float, float* %6778, align 4
  %6785 = load float, float* %6779, align 4
  %6786 = fdiv fast float 1.000000e+00, %6785
  %6787 = fsub fast float %6784, %6786
  %6788 = icmp ugt i32 %6776, 1
  br i1 %6788, label %6789, label %6805

; <label>:6789                                    ; preds = %6783
  br label %6790

; <label>:6790                                    ; preds = %6790, %6789
  %6791 = phi float [ %6800, %6790 ], [ %6787, %6789 ]
  %6792 = phi float [ %6801, %6790 ], [ %6784, %6789 ]
  %6793 = phi i32 [ %6802, %6790 ], [ 1, %6789 ]
  %6794 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6793
  %6795 = load float, float* %6794, align 4
  %6796 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6793
  %6797 = load float, float* %6796, align 4
  %6798 = fdiv fast float 1.000000e+00, %6797
  %6799 = fsub fast float %6795, %6798
  %6800 = call float @dx.op.binary.f32(i32 36, float %6791, float %6799)  ; FMin(a,b)
  %6801 = call float @dx.op.binary.f32(i32 35, float %6792, float %6795)  ; FMax(a,b)
  %6802 = add nuw i32 %6793, 1
  %6803 = icmp eq i32 %6802, %6776
  br i1 %6803, label %6804, label %6790

; <label>:6804                                    ; preds = %6790
  br label %6805

; <label>:6805                                    ; preds = %6804, %6783
  %6806 = phi float [ %6787, %6783 ], [ %6800, %6804 ]
  %6807 = phi float [ %6784, %6783 ], [ %6801, %6804 ]
  %6808 = fsub fast float %6807, %6806
  %6809 = fdiv fast float 1.000000e+00, %6808
  br label %6810

; <label>:6810                                    ; preds = %6805, %6780
  %6811 = phi float [ %6781, %6780 ], [ %6807, %6805 ]
  %6812 = phi float [ %6782, %6780 ], [ %6809, %6805 ]
  %6813 = fadd fast float %6514, %6811
  %6814 = fmul fast float %6813, %6812
  %6815 = call float @dx.op.unary.f32(i32 7, float %6814)  ; Saturate(value)
  %6816 = fmul fast float %6815, 2.000000e+00
  %6817 = fsub fast float 1.000000e+00, %6816
  %6818 = fmul fast float %6652, %6652
  %6819 = fsub fast float %6653, %6818
  %6820 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6819)  ; FMax(a,b)
  %6821 = fdiv fast float 1.000000e+00, %6820
  %6822 = fmul fast float %6653, %6652
  %6823 = fsub fast float %6654, %6822
  %6824 = fsub fast float %6817, %6652
  %6825 = fmul fast float %6817, %6817
  %6826 = fsub fast float %6825, %6653
  %6827 = fmul fast float %6821, %6823
  %6828 = fmul fast float %6827, %6824
  %6829 = fsub fast float %6826, %6828
  %6830 = fmul fast float %6653, %6653
  %6831 = fsub fast float %6655, %6830
  %6832 = fmul fast float %6823, %6823
  %6833 = fmul fast float %6832, %6821
  %6834 = fsub fast float %6831, %6833
  %6835 = fdiv fast float %6829, %6834
  %6836 = fmul fast float %6835, %6823
  %6837 = fsub fast float %6824, %6836
  %6838 = fmul fast float %6837, %6821
  %6839 = fmul fast float %6838, %6652
  %6840 = fsub fast float 1.000000e+00, %6839
  %6841 = fmul fast float %6835, %6653
  %6842 = fsub fast float %6840, %6841
  %6843 = fmul fast float %6838, %6838
  %6844 = fmul fast float %6835, 4.000000e+00
  %6845 = fmul fast float %6844, %6842
  %6846 = fsub fast float %6843, %6845
  %6847 = call float @dx.op.unary.f32(i32 24, float %6846)  ; Sqrt(value)
  %6848 = fcmp fast oge float %6838, 0.000000e+00
  %6849 = fsub fast float -0.000000e+00, %6847
  %6850 = select i1 %6848, float %6849, float %6847
  %6851 = fsub fast float %6850, %6838
  %6852 = fdiv fast float %6851, %6835
  %6853 = fdiv fast float %6842, %6851
  %6854 = fmul fast float %6852, 5.000000e-01
  %6855 = fmul fast float %6853, 2.000000e+00
  %6856 = select i1 %6848, float %6854, float %6855
  %6857 = select i1 %6848, float %6855, float %6854
  %6858 = call float @dx.op.binary.f32(i32 35, float %6856, float %6857)  ; FMax(a,b)
  %6859 = call float @dx.op.binary.f32(i32 36, float %6856, float %6857)  ; FMin(a,b)
  %6860 = fcmp fast ogt float %6817, %6858
  %6861 = fsub fast float %6817, %6859
  %6862 = fsub fast float %6817, %6858
  %6863 = fsub fast float %6858, %6859
  %6864 = select i1 %6860, float %6862, float %6863
  %6865 = fmul float %6861, %6864
  %6866 = select i1 %6860, float %6859, float %6817
  %6867 = fcmp fast ogt float %6817, %6859
  %6868 = fmul fast float %6866, %6858
  %6869 = fadd fast float %6866, %6858
  %6870 = fmul fast float %6869, %6652
  %6871 = fadd fast float %6868, %6653
  %6872 = fsub fast float %6871, %6870
  %6873 = fdiv fast float %6872, %6865
  %6874 = select i1 %6867, float %6873, float 0.000000e+00
  %6875 = fsub fast float 1.000000e+00, %6874
  %6876 = select i1 %6860, float %6875, float %6874
  %6877 = call float @dx.op.unary.f32(i32 7, float %6876)  ; Saturate(value)
  %6878 = extractvalue %dx.types.CBufRet.f32 %6637, 3
  %6879 = fmul fast float %6878, %6877
  %6880 = fsub fast float 1.000000e+00, %6879
  br label %6881

; <label>:6881                                    ; preds = %6810, %6522, %6487, %6483, %6449
  %6882 = phi float [ 1.000000e+00, %6449 ], [ %6880, %6810 ], [ 1.000000e+00, %6487 ], [ 1.000000e+00, %6522 ], [ 1.000000e+00, %6483 ]
  %6883 = fcmp fast ogt float %6479, 0.000000e+00
  br i1 %6883, label %6884, label %7046, !dx.controlflow.hints !106

; <label>:6884                                    ; preds = %6881
  %6885 = fadd fast float %6392, %6366
  %6886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6887 = extractvalue %dx.types.CBufRet.f32 %6886, 2
  %6888 = extractvalue %dx.types.CBufRet.f32 %6886, 3
  %6889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6890 = extractvalue %dx.types.CBufRet.f32 %6889, 2
  %6891 = call float @dx.op.binary.f32(i32 35, float %6885, float 0.000000e+00)  ; FMax(a,b)
  %6892 = fadd fast float %6891, 0x3F10000000000000
  %6893 = fcmp fast oeq float %6890, 0.000000e+00
  br i1 %6893, label %6894, label %6961

; <label>:6894                                    ; preds = %6884
  %6895 = extractvalue %dx.types.CBufRet.f32 %6886, 1
  %6896 = extractvalue %dx.types.CBufRet.f32 %6886, 0
  %6897 = fmul fast float %6896, %6381
  %6898 = fmul fast float %6895, %6382
  %6899 = fadd fast float %6897, 5.000000e-01
  %6900 = call float @dx.op.unary.f32(i32 27, float %6899)  ; Round_ni(value)
  %6901 = fadd fast float %6898, 5.000000e-01
  %6902 = call float @dx.op.unary.f32(i32 27, float %6901)  ; Round_ni(value)
  %6903 = fsub fast float %6899, %6900
  %6904 = fsub fast float %6901, %6902
  %6905 = fadd fast float %6900, -5.000000e-01
  %6906 = fadd fast float %6902, -5.000000e-01
  %6907 = fmul fast float %6903, 2.000000e+00
  %6908 = fsub fast float 3.000000e+00, %6907
  %6909 = fadd fast float %6907, 1.000000e+00
  %6910 = fsub fast float 2.000000e+00, %6903
  %6911 = bitcast float %6908 to i32
  %6912 = sub nsw i32 2129859010, %6911
  %6913 = bitcast i32 %6912 to float
  %6914 = fmul fast float %6913, %6910
  %6915 = fadd fast float %6914, -1.000000e+00
  %6916 = bitcast float %6909 to i32
  %6917 = sub nsw i32 2129859010, %6916
  %6918 = bitcast i32 %6917 to float
  %6919 = fmul fast float %6918, %6903
  %6920 = fadd fast float %6919, 1.000000e+00
  %6921 = fmul fast float %6904, 2.000000e+00
  %6922 = fsub fast float 3.000000e+00, %6921
  %6923 = fadd fast float %6921, 1.000000e+00
  %6924 = fsub fast float 2.000000e+00, %6904
  %6925 = bitcast float %6922 to i32
  %6926 = sub nsw i32 2129859010, %6925
  %6927 = bitcast i32 %6926 to float
  %6928 = fmul fast float %6927, %6924
  %6929 = fadd fast float %6928, -1.000000e+00
  %6930 = bitcast float %6923 to i32
  %6931 = sub nsw i32 2129859010, %6930
  %6932 = bitcast i32 %6931 to float
  %6933 = fmul fast float %6932, %6904
  %6934 = fadd fast float %6933, 1.000000e+00
  %6935 = fadd fast float %6915, %6905
  %6936 = fmul fast float %6935, %6887
  %6937 = fadd fast float %6929, %6906
  %6938 = fmul fast float %6937, %6888
  %6939 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6936, float %6938, float undef, float undef, i32 0, i32 0, i32 undef, float %6892)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6940 = extractvalue %dx.types.ResRet.f32 %6939, 0
  %6941 = fmul fast float %6940, %6908
  %6942 = fadd fast float %6920, %6905
  %6943 = fmul fast float %6942, %6887
  %6944 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6943, float %6938, float undef, float undef, i32 0, i32 0, i32 undef, float %6892)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6945 = extractvalue %dx.types.ResRet.f32 %6944, 0
  %6946 = fmul fast float %6945, %6909
  %6947 = fadd fast float %6934, %6906
  %6948 = fmul fast float %6947, %6888
  %6949 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6936, float %6948, float undef, float undef, i32 0, i32 0, i32 undef, float %6892)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6950 = extractvalue %dx.types.ResRet.f32 %6949, 0
  %6951 = fmul fast float %6950, %6908
  %6952 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6943, float %6948, float undef, float undef, i32 0, i32 0, i32 undef, float %6892)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6953 = extractvalue %dx.types.ResRet.f32 %6952, 0
  %6954 = fmul fast float %6953, %6909
  %6955 = fadd fast float %6954, %6951
  %6956 = fmul fast float %6955, %6923
  %6957 = fadd fast float %6946, %6941
  %6958 = fmul fast float %6957, %6922
  %6959 = fadd fast float %6958, %6956
  %6960 = fmul fast float %6959, 6.250000e-02
  br label %7046

; <label>:6961                                    ; preds = %6884
  %6962 = fmul fast float %224, 0x401921FB60000000
  %6963 = call float @dx.op.unary.f32(i32 13, float %6962)  ; Sin(value)
  %6964 = call float @dx.op.unary.f32(i32 12, float %6962)  ; Cos(value)
  %6965 = fsub fast float -0.000000e+00, %6963
  br label %6966

; <label>:6966                                    ; preds = %7015, %6961
  %6967 = phi float [ 0.000000e+00, %6961 ], [ %7010, %7015 ]
  %6968 = phi float [ 0.000000e+00, %6961 ], [ %7012, %7015 ]
  %6969 = phi i32 [ 0, %6961 ], [ %7016, %7015 ]
  %6970 = mul i32 %6969, 2
  %6971 = add i32 0, %6970
  %6972 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6971
  %6973 = load float, float* %6972, align 4
  %6974 = mul i32 %6969, 2
  %6975 = add i32 1, %6974
  %6976 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6975
  %6977 = load float, float* %6976, align 4
  %6978 = fmul fast float %6973, %6964
  %6979 = call float @dx.op.tertiary.f32(i32 46, float %6977, float %6965, float %6978)  ; FMad(a,b,c)
  %6980 = fmul fast float %6973, %6963
  %6981 = call float @dx.op.tertiary.f32(i32 46, float %6977, float %6964, float %6980)  ; FMad(a,b,c)
  %6982 = fmul fast float %6979, %6890
  %6983 = fmul fast float %6981, %6890
  %6984 = fadd fast float %6982, %6381
  %6985 = fadd fast float %6983, %6382
  %6986 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %43, float %6984, float %6985, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6987 = extractvalue %dx.types.ResRet.f32 %6986, 0
  %6988 = extractvalue %dx.types.ResRet.f32 %6986, 1
  %6989 = extractvalue %dx.types.ResRet.f32 %6986, 2
  %6990 = extractvalue %dx.types.ResRet.f32 %6986, 3
  %6991 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %6987, float* %6991, align 4
  %6992 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %6988, float* %6992, align 4
  %6993 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %6989, float* %6993, align 4
  %6994 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %6990, float* %6994, align 4
  %6995 = fsub fast float %6987, %6892
  %6996 = fcmp fast olt float %6995, 0.000000e+00
  %6997 = select i1 %6996, float 0.000000e+00, float 1.000000e+00
  %6998 = fadd fast float %6997, %6967
  %6999 = fmul fast float %6997, %6995
  %7000 = fadd fast float %6999, %6968
  br label %7001

; <label>:7001                                    ; preds = %7001, %6966
  %7002 = phi i32 [ 1, %6966 ], [ %7013, %7001 ]
  %7003 = phi float [ %7000, %6966 ], [ %7012, %7001 ]
  %7004 = phi float [ %6998, %6966 ], [ %7010, %7001 ]
  %7005 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %7002
  %7006 = load float, float* %7005, align 4, !tbaa !107, !noalias !97
  %7007 = fsub fast float %7006, %6892
  %7008 = fcmp fast olt float %7007, 0.000000e+00
  %7009 = select i1 %7008, float 0.000000e+00, float 1.000000e+00
  %7010 = fadd fast float %7009, %7004
  %7011 = fmul fast float %7009, %7007
  %7012 = fadd fast float %7011, %7003
  %7013 = add nuw nsw i32 %7002, 1
  %7014 = icmp eq i32 %7013, 4
  br i1 %7014, label %7015, label %7001, !llvm.loop !109

; <label>:7015                                    ; preds = %7001
  %7016 = add nuw nsw i32 %6969, 1
  %7017 = icmp eq i32 %7016, 8
  br i1 %7017, label %7018, label %6966, !llvm.loop !110

; <label>:7018                                    ; preds = %7015
  %7019 = fdiv fast float 1.000000e+00, %7010
  %7020 = fmul fast float %7019, %7012
  %7021 = fdiv fast float 1.000000e+00, %6892
  %7022 = fmul fast float %7020, %7021
  %7023 = call float @dx.op.unary.f32(i32 7, float %7022)  ; Saturate(value)
  %7024 = call float @dx.op.binary.f32(i32 35, float %7023, float 0.000000e+00)  ; FMax(a,b)
  %7025 = fmul fast float %7010, 3.125000e-02
  %7026 = call float @dx.op.unary.f32(i32 7, float %7025)  ; Saturate(value)
  %7027 = fmul fast float %7026, 2.000000e+00
  %7028 = fadd fast float %7027, -1.000000e+00
  %7029 = fcmp fast ogt float %7028, 0.000000e+00
  %7030 = fcmp fast olt float %7028, 0.000000e+00
  %7031 = zext i1 %7029 to i32
  %7032 = zext i1 %7030 to i32
  %7033 = sub nsw i32 %7031, %7032
  %7034 = sitofp i32 %7033 to float
  %7035 = fmul fast float %7034, %7028
  %7036 = fsub fast float 1.000000e+00, %7035
  %7037 = fmul fast float %7036, %7036
  %7038 = fmul fast float %7037, %7036
  %7039 = fsub fast float %7036, %7038
  %7040 = fmul fast float %7039, %7024
  %7041 = fsub fast float 1.000000e+00, %7038
  %7042 = fsub fast float %7041, %7040
  %7043 = fmul fast float %7034, 5.000000e-01
  %7044 = fmul fast float %7043, %7042
  %7045 = fsub fast float 5.000000e-01, %7044
  br label %7046

; <label>:7046                                    ; preds = %7018, %6894, %6881
  %7047 = phi float [ 1.000000e+00, %6881 ], [ %6960, %6894 ], [ %7045, %7018 ]
  %7048 = fcmp fast ogt float %6477, 0.000000e+00
  br i1 %7048, label %7049, label %7213, !dx.controlflow.hints !111

; <label>:7049                                    ; preds = %7046
  %7050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7051 = extractvalue %dx.types.CBufRet.f32 %7050, 1
  %7052 = fadd fast float %7051, %6366
  %7053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7054 = extractvalue %dx.types.CBufRet.f32 %7053, 2
  %7055 = extractvalue %dx.types.CBufRet.f32 %7053, 3
  %7056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7057 = extractvalue %dx.types.CBufRet.f32 %7056, 1
  %7058 = call float @dx.op.binary.f32(i32 35, float %7052, float 0.000000e+00)  ; FMax(a,b)
  %7059 = fadd fast float %7058, 0x3F10000000000000
  %7060 = fcmp fast oeq float %7057, 0.000000e+00
  br i1 %7060, label %7061, label %7128

; <label>:7061                                    ; preds = %7049
  %7062 = extractvalue %dx.types.CBufRet.f32 %7053, 1
  %7063 = extractvalue %dx.types.CBufRet.f32 %7053, 0
  %7064 = fmul fast float %7063, %6373
  %7065 = fmul fast float %7062, %6374
  %7066 = fadd fast float %7064, 5.000000e-01
  %7067 = call float @dx.op.unary.f32(i32 27, float %7066)  ; Round_ni(value)
  %7068 = fadd fast float %7065, 5.000000e-01
  %7069 = call float @dx.op.unary.f32(i32 27, float %7068)  ; Round_ni(value)
  %7070 = fsub fast float %7066, %7067
  %7071 = fsub fast float %7068, %7069
  %7072 = fadd fast float %7067, -5.000000e-01
  %7073 = fadd fast float %7069, -5.000000e-01
  %7074 = fmul fast float %7070, 2.000000e+00
  %7075 = fsub fast float 3.000000e+00, %7074
  %7076 = fadd fast float %7074, 1.000000e+00
  %7077 = fsub fast float 2.000000e+00, %7070
  %7078 = bitcast float %7075 to i32
  %7079 = sub nsw i32 2129859010, %7078
  %7080 = bitcast i32 %7079 to float
  %7081 = fmul fast float %7080, %7077
  %7082 = fadd fast float %7081, -1.000000e+00
  %7083 = bitcast float %7076 to i32
  %7084 = sub nsw i32 2129859010, %7083
  %7085 = bitcast i32 %7084 to float
  %7086 = fmul fast float %7085, %7070
  %7087 = fadd fast float %7086, 1.000000e+00
  %7088 = fmul fast float %7071, 2.000000e+00
  %7089 = fsub fast float 3.000000e+00, %7088
  %7090 = fadd fast float %7088, 1.000000e+00
  %7091 = fsub fast float 2.000000e+00, %7071
  %7092 = bitcast float %7089 to i32
  %7093 = sub nsw i32 2129859010, %7092
  %7094 = bitcast i32 %7093 to float
  %7095 = fmul fast float %7094, %7091
  %7096 = fadd fast float %7095, -1.000000e+00
  %7097 = bitcast float %7090 to i32
  %7098 = sub nsw i32 2129859010, %7097
  %7099 = bitcast i32 %7098 to float
  %7100 = fmul fast float %7099, %7071
  %7101 = fadd fast float %7100, 1.000000e+00
  %7102 = fadd fast float %7082, %7072
  %7103 = fmul fast float %7102, %7054
  %7104 = fadd fast float %7096, %7073
  %7105 = fmul fast float %7104, %7055
  %7106 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7103, float %7105, float undef, float undef, i32 0, i32 0, i32 undef, float %7059)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7107 = extractvalue %dx.types.ResRet.f32 %7106, 0
  %7108 = fmul fast float %7107, %7075
  %7109 = fadd fast float %7087, %7072
  %7110 = fmul fast float %7109, %7054
  %7111 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7110, float %7105, float undef, float undef, i32 0, i32 0, i32 undef, float %7059)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7112 = extractvalue %dx.types.ResRet.f32 %7111, 0
  %7113 = fmul fast float %7112, %7076
  %7114 = fadd fast float %7101, %7073
  %7115 = fmul fast float %7114, %7055
  %7116 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7103, float %7115, float undef, float undef, i32 0, i32 0, i32 undef, float %7059)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7117 = extractvalue %dx.types.ResRet.f32 %7116, 0
  %7118 = fmul fast float %7117, %7075
  %7119 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7110, float %7115, float undef, float undef, i32 0, i32 0, i32 undef, float %7059)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7120 = extractvalue %dx.types.ResRet.f32 %7119, 0
  %7121 = fmul fast float %7120, %7076
  %7122 = fadd fast float %7121, %7118
  %7123 = fmul fast float %7122, %7090
  %7124 = fadd fast float %7113, %7108
  %7125 = fmul fast float %7124, %7089
  %7126 = fadd fast float %7125, %7123
  %7127 = fmul fast float %7126, 6.250000e-02
  br label %7213

; <label>:7128                                    ; preds = %7049
  %7129 = fmul fast float %224, 0x401921FB60000000
  %7130 = call float @dx.op.unary.f32(i32 13, float %7129)  ; Sin(value)
  %7131 = call float @dx.op.unary.f32(i32 12, float %7129)  ; Cos(value)
  %7132 = fsub fast float -0.000000e+00, %7130
  br label %7133

; <label>:7133                                    ; preds = %7182, %7128
  %7134 = phi float [ 0.000000e+00, %7128 ], [ %7177, %7182 ]
  %7135 = phi float [ 0.000000e+00, %7128 ], [ %7179, %7182 ]
  %7136 = phi i32 [ 0, %7128 ], [ %7183, %7182 ]
  %7137 = mul i32 %7136, 2
  %7138 = add i32 0, %7137
  %7139 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7138
  %7140 = load float, float* %7139, align 4
  %7141 = mul i32 %7136, 2
  %7142 = add i32 1, %7141
  %7143 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7142
  %7144 = load float, float* %7143, align 4
  %7145 = fmul fast float %7140, %7131
  %7146 = call float @dx.op.tertiary.f32(i32 46, float %7144, float %7132, float %7145)  ; FMad(a,b,c)
  %7147 = fmul fast float %7140, %7130
  %7148 = call float @dx.op.tertiary.f32(i32 46, float %7144, float %7131, float %7147)  ; FMad(a,b,c)
  %7149 = fmul fast float %7146, %7057
  %7150 = fmul fast float %7148, %7057
  %7151 = fadd fast float %7149, %6373
  %7152 = fadd fast float %7150, %6374
  %7153 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %43, float %7151, float %7152, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7154 = extractvalue %dx.types.ResRet.f32 %7153, 0
  %7155 = extractvalue %dx.types.ResRet.f32 %7153, 1
  %7156 = extractvalue %dx.types.ResRet.f32 %7153, 2
  %7157 = extractvalue %dx.types.ResRet.f32 %7153, 3
  %7158 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 0
  store float %7154, float* %7158, align 4
  %7159 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 1
  store float %7155, float* %7159, align 4
  %7160 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 2
  store float %7156, float* %7160, align 4
  %7161 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 3
  store float %7157, float* %7161, align 4
  %7162 = fsub fast float %7154, %7059
  %7163 = fcmp fast olt float %7162, 0.000000e+00
  %7164 = select i1 %7163, float 0.000000e+00, float 1.000000e+00
  %7165 = fadd fast float %7164, %7134
  %7166 = fmul fast float %7164, %7162
  %7167 = fadd fast float %7166, %7135
  br label %7168

; <label>:7168                                    ; preds = %7168, %7133
  %7169 = phi i32 [ 1, %7133 ], [ %7180, %7168 ]
  %7170 = phi float [ %7167, %7133 ], [ %7179, %7168 ]
  %7171 = phi float [ %7165, %7133 ], [ %7177, %7168 ]
  %7172 = getelementptr [4 x float], [4 x float]* %89, i32 0, i32 %7169
  %7173 = load float, float* %7172, align 4, !tbaa !107, !noalias !97
  %7174 = fsub fast float %7173, %7059
  %7175 = fcmp fast olt float %7174, 0.000000e+00
  %7176 = select i1 %7175, float 0.000000e+00, float 1.000000e+00
  %7177 = fadd fast float %7176, %7171
  %7178 = fmul fast float %7176, %7174
  %7179 = fadd fast float %7178, %7170
  %7180 = add nuw nsw i32 %7169, 1
  %7181 = icmp eq i32 %7180, 4
  br i1 %7181, label %7182, label %7168, !llvm.loop !109

; <label>:7182                                    ; preds = %7168
  %7183 = add nuw nsw i32 %7136, 1
  %7184 = icmp eq i32 %7183, 8
  br i1 %7184, label %7185, label %7133, !llvm.loop !110

; <label>:7185                                    ; preds = %7182
  %7186 = fdiv fast float 1.000000e+00, %7177
  %7187 = fmul fast float %7186, %7179
  %7188 = fdiv fast float 1.000000e+00, %7059
  %7189 = fmul fast float %7187, %7188
  %7190 = call float @dx.op.unary.f32(i32 7, float %7189)  ; Saturate(value)
  %7191 = call float @dx.op.binary.f32(i32 35, float %7190, float 0.000000e+00)  ; FMax(a,b)
  %7192 = fmul fast float %7177, 3.125000e-02
  %7193 = call float @dx.op.unary.f32(i32 7, float %7192)  ; Saturate(value)
  %7194 = fmul fast float %7193, 2.000000e+00
  %7195 = fadd fast float %7194, -1.000000e+00
  %7196 = fcmp fast ogt float %7195, 0.000000e+00
  %7197 = fcmp fast olt float %7195, 0.000000e+00
  %7198 = zext i1 %7196 to i32
  %7199 = zext i1 %7197 to i32
  %7200 = sub nsw i32 %7198, %7199
  %7201 = sitofp i32 %7200 to float
  %7202 = fmul fast float %7201, %7195
  %7203 = fsub fast float 1.000000e+00, %7202
  %7204 = fmul fast float %7203, %7203
  %7205 = fmul fast float %7204, %7203
  %7206 = fsub fast float %7203, %7205
  %7207 = fmul fast float %7206, %7191
  %7208 = fsub fast float 1.000000e+00, %7205
  %7209 = fsub fast float %7208, %7207
  %7210 = fmul fast float %7201, 5.000000e-01
  %7211 = fmul fast float %7210, %7209
  %7212 = fsub fast float 5.000000e-01, %7211
  br label %7213

; <label>:7213                                    ; preds = %7185, %7061, %7046
  %7214 = phi float [ 1.000000e+00, %7046 ], [ %7127, %7061 ], [ %7212, %7185 ]
  %7215 = fcmp fast ogt float %6476, 0.000000e+00
  br i1 %7215, label %7216, label %7380, !dx.controlflow.hints !112

; <label>:7216                                    ; preds = %7213
  %7217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7218 = extractvalue %dx.types.CBufRet.f32 %7217, 0
  %7219 = fadd fast float %7218, %6366
  %7220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7221 = extractvalue %dx.types.CBufRet.f32 %7220, 2
  %7222 = extractvalue %dx.types.CBufRet.f32 %7220, 3
  %7223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7224 = extractvalue %dx.types.CBufRet.f32 %7223, 0
  %7225 = call float @dx.op.binary.f32(i32 35, float %7219, float 0.000000e+00)  ; FMax(a,b)
  %7226 = fadd fast float %7225, 0x3F10000000000000
  %7227 = fcmp fast oeq float %7224, 0.000000e+00
  br i1 %7227, label %7228, label %7295

; <label>:7228                                    ; preds = %7216
  %7229 = extractvalue %dx.types.CBufRet.f32 %7220, 1
  %7230 = extractvalue %dx.types.CBufRet.f32 %7220, 0
  %7231 = fmul fast float %7230, %6358
  %7232 = fmul fast float %7229, %6362
  %7233 = fadd fast float %7231, 5.000000e-01
  %7234 = call float @dx.op.unary.f32(i32 27, float %7233)  ; Round_ni(value)
  %7235 = fadd fast float %7232, 5.000000e-01
  %7236 = call float @dx.op.unary.f32(i32 27, float %7235)  ; Round_ni(value)
  %7237 = fsub fast float %7233, %7234
  %7238 = fsub fast float %7235, %7236
  %7239 = fadd fast float %7234, -5.000000e-01
  %7240 = fadd fast float %7236, -5.000000e-01
  %7241 = fmul fast float %7237, 2.000000e+00
  %7242 = fsub fast float 3.000000e+00, %7241
  %7243 = fadd fast float %7241, 1.000000e+00
  %7244 = fsub fast float 2.000000e+00, %7237
  %7245 = bitcast float %7242 to i32
  %7246 = sub nsw i32 2129859010, %7245
  %7247 = bitcast i32 %7246 to float
  %7248 = fmul fast float %7247, %7244
  %7249 = fadd fast float %7248, -1.000000e+00
  %7250 = bitcast float %7243 to i32
  %7251 = sub nsw i32 2129859010, %7250
  %7252 = bitcast i32 %7251 to float
  %7253 = fmul fast float %7252, %7237
  %7254 = fadd fast float %7253, 1.000000e+00
  %7255 = fmul fast float %7238, 2.000000e+00
  %7256 = fsub fast float 3.000000e+00, %7255
  %7257 = fadd fast float %7255, 1.000000e+00
  %7258 = fsub fast float 2.000000e+00, %7238
  %7259 = bitcast float %7256 to i32
  %7260 = sub nsw i32 2129859010, %7259
  %7261 = bitcast i32 %7260 to float
  %7262 = fmul fast float %7261, %7258
  %7263 = fadd fast float %7262, -1.000000e+00
  %7264 = bitcast float %7257 to i32
  %7265 = sub nsw i32 2129859010, %7264
  %7266 = bitcast i32 %7265 to float
  %7267 = fmul fast float %7266, %7238
  %7268 = fadd fast float %7267, 1.000000e+00
  %7269 = fadd fast float %7249, %7239
  %7270 = fmul fast float %7269, %7221
  %7271 = fadd fast float %7263, %7240
  %7272 = fmul fast float %7271, %7222
  %7273 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7270, float %7272, float undef, float undef, i32 0, i32 0, i32 undef, float %7226)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7274 = extractvalue %dx.types.ResRet.f32 %7273, 0
  %7275 = fmul fast float %7274, %7242
  %7276 = fadd fast float %7254, %7239
  %7277 = fmul fast float %7276, %7221
  %7278 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7277, float %7272, float undef, float undef, i32 0, i32 0, i32 undef, float %7226)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7279 = extractvalue %dx.types.ResRet.f32 %7278, 0
  %7280 = fmul fast float %7279, %7243
  %7281 = fadd fast float %7268, %7240
  %7282 = fmul fast float %7281, %7222
  %7283 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7270, float %7282, float undef, float undef, i32 0, i32 0, i32 undef, float %7226)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7284 = extractvalue %dx.types.ResRet.f32 %7283, 0
  %7285 = fmul fast float %7284, %7242
  %7286 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7277, float %7282, float undef, float undef, i32 0, i32 0, i32 undef, float %7226)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7287 = extractvalue %dx.types.ResRet.f32 %7286, 0
  %7288 = fmul fast float %7287, %7243
  %7289 = fadd fast float %7288, %7285
  %7290 = fmul fast float %7289, %7257
  %7291 = fadd fast float %7280, %7275
  %7292 = fmul fast float %7291, %7256
  %7293 = fadd fast float %7292, %7290
  %7294 = fmul fast float %7293, 6.250000e-02
  br label %7380

; <label>:7295                                    ; preds = %7216
  %7296 = fmul fast float %224, 0x401921FB60000000
  %7297 = call float @dx.op.unary.f32(i32 13, float %7296)  ; Sin(value)
  %7298 = call float @dx.op.unary.f32(i32 12, float %7296)  ; Cos(value)
  %7299 = fsub fast float -0.000000e+00, %7297
  br label %7300

; <label>:7300                                    ; preds = %7349, %7295
  %7301 = phi float [ 0.000000e+00, %7295 ], [ %7344, %7349 ]
  %7302 = phi float [ 0.000000e+00, %7295 ], [ %7346, %7349 ]
  %7303 = phi i32 [ 0, %7295 ], [ %7350, %7349 ]
  %7304 = mul i32 %7303, 2
  %7305 = add i32 0, %7304
  %7306 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7305
  %7307 = load float, float* %7306, align 4
  %7308 = mul i32 %7303, 2
  %7309 = add i32 1, %7308
  %7310 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7309
  %7311 = load float, float* %7310, align 4
  %7312 = fmul fast float %7307, %7298
  %7313 = call float @dx.op.tertiary.f32(i32 46, float %7311, float %7299, float %7312)  ; FMad(a,b,c)
  %7314 = fmul fast float %7307, %7297
  %7315 = call float @dx.op.tertiary.f32(i32 46, float %7311, float %7298, float %7314)  ; FMad(a,b,c)
  %7316 = fmul fast float %7313, %7224
  %7317 = fmul fast float %7315, %7224
  %7318 = fadd fast float %7316, %6358
  %7319 = fadd fast float %7317, %6362
  %7320 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %43, float %7318, float %7319, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7321 = extractvalue %dx.types.ResRet.f32 %7320, 0
  %7322 = extractvalue %dx.types.ResRet.f32 %7320, 1
  %7323 = extractvalue %dx.types.ResRet.f32 %7320, 2
  %7324 = extractvalue %dx.types.ResRet.f32 %7320, 3
  %7325 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 0
  store float %7321, float* %7325, align 4
  %7326 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 1
  store float %7322, float* %7326, align 4
  %7327 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 2
  store float %7323, float* %7327, align 4
  %7328 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 3
  store float %7324, float* %7328, align 4
  %7329 = fsub fast float %7321, %7226
  %7330 = fcmp fast olt float %7329, 0.000000e+00
  %7331 = select i1 %7330, float 0.000000e+00, float 1.000000e+00
  %7332 = fadd fast float %7331, %7301
  %7333 = fmul fast float %7331, %7329
  %7334 = fadd fast float %7333, %7302
  br label %7335

; <label>:7335                                    ; preds = %7335, %7300
  %7336 = phi i32 [ 1, %7300 ], [ %7347, %7335 ]
  %7337 = phi float [ %7334, %7300 ], [ %7346, %7335 ]
  %7338 = phi float [ %7332, %7300 ], [ %7344, %7335 ]
  %7339 = getelementptr [4 x float], [4 x float]* %88, i32 0, i32 %7336
  %7340 = load float, float* %7339, align 4, !tbaa !107, !noalias !97
  %7341 = fsub fast float %7340, %7226
  %7342 = fcmp fast olt float %7341, 0.000000e+00
  %7343 = select i1 %7342, float 0.000000e+00, float 1.000000e+00
  %7344 = fadd fast float %7343, %7338
  %7345 = fmul fast float %7343, %7341
  %7346 = fadd fast float %7345, %7337
  %7347 = add nuw nsw i32 %7336, 1
  %7348 = icmp eq i32 %7347, 4
  br i1 %7348, label %7349, label %7335, !llvm.loop !109

; <label>:7349                                    ; preds = %7335
  %7350 = add nuw nsw i32 %7303, 1
  %7351 = icmp eq i32 %7350, 8
  br i1 %7351, label %7352, label %7300, !llvm.loop !110

; <label>:7352                                    ; preds = %7349
  %7353 = fdiv fast float 1.000000e+00, %7344
  %7354 = fmul fast float %7353, %7346
  %7355 = fdiv fast float 1.000000e+00, %7226
  %7356 = fmul fast float %7354, %7355
  %7357 = call float @dx.op.unary.f32(i32 7, float %7356)  ; Saturate(value)
  %7358 = call float @dx.op.binary.f32(i32 35, float %7357, float 0.000000e+00)  ; FMax(a,b)
  %7359 = fmul fast float %7344, 3.125000e-02
  %7360 = call float @dx.op.unary.f32(i32 7, float %7359)  ; Saturate(value)
  %7361 = fmul fast float %7360, 2.000000e+00
  %7362 = fadd fast float %7361, -1.000000e+00
  %7363 = fcmp fast ogt float %7362, 0.000000e+00
  %7364 = fcmp fast olt float %7362, 0.000000e+00
  %7365 = zext i1 %7363 to i32
  %7366 = zext i1 %7364 to i32
  %7367 = sub nsw i32 %7365, %7366
  %7368 = sitofp i32 %7367 to float
  %7369 = fmul fast float %7368, %7362
  %7370 = fsub fast float 1.000000e+00, %7369
  %7371 = fmul fast float %7370, %7370
  %7372 = fmul fast float %7371, %7370
  %7373 = fsub fast float %7370, %7372
  %7374 = fmul fast float %7373, %7358
  %7375 = fsub fast float 1.000000e+00, %7372
  %7376 = fsub fast float %7375, %7374
  %7377 = fmul fast float %7368, 5.000000e-01
  %7378 = fmul fast float %7377, %7376
  %7379 = fsub fast float 5.000000e-01, %7378
  br label %7380

; <label>:7380                                    ; preds = %7352, %7228, %7213
  %7381 = phi float [ 1.000000e+00, %7213 ], [ %7294, %7228 ], [ %7379, %7352 ]
  %7382 = fsub fast float %7047, %6882
  %7383 = fmul fast float %7382, %6420
  %7384 = fadd fast float %7383, %6882
  %7385 = fsub fast float %7214, %7384
  %7386 = fmul fast float %7385, %6450
  %7387 = fadd fast float %7386, %7384
  %7388 = fsub fast float %7381, %7387
  %7389 = fmul fast float %7388, %6476
  %7390 = fadd fast float %7389, %7387
  %7391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7392 = extractvalue %dx.types.CBufRet.f32 %7391, 2
  %7393 = fcmp fast ogt float %7392, 0.000000e+00
  br i1 %7393, label %7394, label %7434, !dx.controlflow.hints !113

; <label>:7394                                    ; preds = %7380
  %7395 = fcmp fast ugt float %7392, 0.000000e+00
  br i1 %7395, label %7396, label %7431

; <label>:7396                                    ; preds = %7394
  %7397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7398 = extractvalue %dx.types.CBufRet.f32 %7397, 0
  %7399 = extractvalue %dx.types.CBufRet.f32 %7397, 1
  %7400 = extractvalue %dx.types.CBufRet.f32 %7397, 2
  %7401 = extractvalue %dx.types.CBufRet.f32 %7397, 3
  %7402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7403 = extractvalue %dx.types.CBufRet.f32 %7402, 0
  %7404 = extractvalue %dx.types.CBufRet.f32 %7402, 1
  %7405 = extractvalue %dx.types.CBufRet.f32 %7402, 2
  %7406 = extractvalue %dx.types.CBufRet.f32 %7402, 3
  %7407 = extractvalue %dx.types.CBufRet.f32 %7391, 0
  %7408 = extractvalue %dx.types.CBufRet.f32 %7391, 1
  %7409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7410 = extractvalue %dx.types.CBufRet.f32 %7409, 0
  %7411 = extractvalue %dx.types.CBufRet.f32 %7409, 1
  %7412 = extractvalue %dx.types.CBufRet.f32 %7409, 2
  %7413 = fadd fast float %7410, %6335
  %7414 = fadd fast float %7411, %6336
  %7415 = fadd fast float %7412, %6337
  %7416 = fmul fast float %7413, %7398
  %7417 = call float @dx.op.tertiary.f32(i32 46, float %7399, float %7414, float %7416)  ; FMad(a,b,c)
  %7418 = call float @dx.op.tertiary.f32(i32 46, float %7400, float %7415, float %7417)  ; FMad(a,b,c)
  %7419 = fadd fast float %7418, %7401
  %7420 = fmul fast float %7413, %7403
  %7421 = call float @dx.op.tertiary.f32(i32 46, float %7404, float %7414, float %7420)  ; FMad(a,b,c)
  %7422 = call float @dx.op.tertiary.f32(i32 46, float %7405, float %7415, float %7421)  ; FMad(a,b,c)
  %7423 = fadd fast float %7422, %7406
  %7424 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %39, float %7419, float %7423, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7425 = extractvalue %dx.types.ResRet.f32 %7424, 0
  %7426 = fmul fast float %7425, %7408
  %7427 = fadd fast float %7426, %7407
  %7428 = call float @dx.op.unary.f32(i32 7, float %7427)  ; Saturate(value)
  %7429 = fmul fast float %7428, %7392
  %7430 = fsub fast float 1.000000e+00, %7429
  br label %7431

; <label>:7431                                    ; preds = %7396, %7394
  %7432 = phi float [ %7430, %7396 ], [ 1.000000e+00, %7394 ]
  %7433 = fmul fast float %7432, %7390
  br label %7434

; <label>:7434                                    ; preds = %7431, %7380, %6315
  %7435 = phi float [ 1.000000e+00, %6315 ], [ %7433, %7431 ], [ %7390, %7380 ]
  %7436 = call float @dx.op.binary.f32(i32 36, float %7435, float %7435)  ; FMin(a,b)
  %7437 = call float @dx.op.binary.f32(i32 36, float %7435, float %7436)  ; FMin(a,b)
  %7438 = fcmp fast ogt float %7437, 0.000000e+00
  br i1 %7438, label %7439, label %7605, !dx.controlflow.hints !114

; <label>:7439                                    ; preds = %7434
  %7440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7441 = extractvalue %dx.types.CBufRet.f32 %7440, 0
  %7442 = extractvalue %dx.types.CBufRet.f32 %7440, 1
  %7443 = extractvalue %dx.types.CBufRet.f32 %7440, 2
  %7444 = extractvalue %dx.types.CBufRet.f32 %7440, 3
  %7445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7446 = extractvalue %dx.types.CBufRet.f32 %7445, 0
  %7447 = extractvalue %dx.types.CBufRet.f32 %7445, 1
  %7448 = extractvalue %dx.types.CBufRet.f32 %7445, 2
  %7449 = extractvalue %dx.types.CBufRet.f32 %7445, 3
  %7450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7451 = extractvalue %dx.types.CBufRet.f32 %7450, 0
  %7452 = extractvalue %dx.types.CBufRet.f32 %7450, 1
  %7453 = extractvalue %dx.types.CBufRet.f32 %7450, 2
  %7454 = extractvalue %dx.types.CBufRet.f32 %7450, 3
  %7455 = fmul fast float %7441, %6335
  %7456 = call float @dx.op.tertiary.f32(i32 46, float %6336, float %7442, float %7455)  ; FMad(a,b,c)
  %7457 = call float @dx.op.tertiary.f32(i32 46, float %6337, float %7443, float %7456)  ; FMad(a,b,c)
  %7458 = fadd fast float %7457, %7444
  %7459 = fmul fast float %7446, %6335
  %7460 = call float @dx.op.tertiary.f32(i32 46, float %6336, float %7447, float %7459)  ; FMad(a,b,c)
  %7461 = call float @dx.op.tertiary.f32(i32 46, float %6337, float %7448, float %7460)  ; FMad(a,b,c)
  %7462 = fadd fast float %7461, %7449
  %7463 = fmul fast float %7451, %6335
  %7464 = call float @dx.op.tertiary.f32(i32 46, float %6336, float %7452, float %7463)  ; FMad(a,b,c)
  %7465 = call float @dx.op.tertiary.f32(i32 46, float %6337, float %7453, float %7464)  ; FMad(a,b,c)
  %7466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7467 = extractvalue %dx.types.CBufRet.f32 %7466, 0
  %7468 = extractvalue %dx.types.CBufRet.f32 %7466, 1
  %7469 = extractvalue %dx.types.CBufRet.f32 %7466, 3
  %7470 = fmul fast float %7469, %7458
  %7471 = fmul fast float %7469, %7462
  %7472 = fadd fast float %7470, %7467
  %7473 = fadd fast float %7471, %7468
  %7474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7475 = extractvalue %dx.types.CBufRet.f32 %7474, 0
  %7476 = extractvalue %dx.types.CBufRet.f32 %7474, 1
  %7477 = fsub fast float %7472, %7475
  %7478 = fsub fast float %7473, %7476
  %7479 = fcmp fast olt float %7477, 0.000000e+00
  %7480 = fcmp fast olt float %7478, 0.000000e+00
  %7481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7482 = extractvalue %dx.types.CBufRet.f32 %7481, 0
  %7483 = extractvalue %dx.types.CBufRet.f32 %7481, 1
  %7484 = extractvalue %dx.types.CBufRet.f32 %7481, 2
  %7485 = extractvalue %dx.types.CBufRet.f32 %7481, 3
  %7486 = select i1 %7479, float %7482, float %7484
  %7487 = select i1 %7480, float %7483, float %7485
  %7488 = fmul fast float %7486, %7477
  %7489 = fmul fast float %7487, %7478
  %7490 = call float @dx.op.unary.f32(i32 6, float %7488)  ; FAbs(value)
  %7491 = call float @dx.op.unary.f32(i32 6, float %7489)  ; FAbs(value)
  %7492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7493 = extractvalue %dx.types.CBufRet.f32 %7492, 0
  %7494 = call float @dx.op.binary.f32(i32 35, float %7490, float %7491)  ; FMax(a,b)
  %7495 = fsub fast float %7493, %7494
  %7496 = call float @dx.op.unary.f32(i32 7, float %7495)  ; Saturate(value)
  %7497 = fcmp fast ogt float %7496, 0.000000e+00
  br i1 %7497, label %7498, label %7539, !dx.controlflow.hints !115

; <label>:7498                                    ; preds = %7439
  %7499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %42, float %7472, float %7473, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7500 = extractvalue %dx.types.ResRet.f32 %7499, 1
  %7501 = fcmp fast ogt float %7500, 0.000000e+00
  br i1 %7501, label %7502, label %7534

; <label>:7502                                    ; preds = %7498
  %7503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %42, float %7472, float %7473, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7504 = extractvalue %dx.types.ResRet.f32 %7503, 0
  %7505 = extractvalue %dx.types.ResRet.f32 %7503, 1
  %7506 = extractvalue %dx.types.ResRet.f32 %7503, 2
  %7507 = extractvalue %dx.types.ResRet.f32 %7503, 3
  %7508 = fsub fast float 1.000000e+00, %7454
  %7509 = fsub fast float %7508, %7465
  %7510 = fmul fast float %7509, 0x400921FB60000000
  %7511 = fadd fast float %7510, 0x3FF921FB60000000
  %7512 = call float @dx.op.unary.f32(i32 13, float %7511)  ; Sin(value)
  %7513 = fadd fast float %7512, -1.000000e+00
  %7514 = fmul fast float %7513, 0x3FD45F3060000000
  %7515 = fmul fast float %7509, 0x401921FB60000000
  %7516 = fadd fast float %7515, 0x400921FB60000000
  %7517 = call float @dx.op.unary.f32(i32 13, float %7516)  ; Sin(value)
  %7518 = fadd fast float %7517, 0x3E7777A5C0000000
  %7519 = fmul fast float %7518, 0x3FC45F3060000000
  %7520 = fmul fast float %7509, 0x4022D97C80000000
  %7521 = fadd fast float %7520, 0x4012D97C80000000
  %7522 = call float @dx.op.unary.f32(i32 13, float %7521)  ; Sin(value)
  %7523 = fadd fast float %7522, 1.000000e+00
  %7524 = fmul fast float %7523, 0x3FBB2995E0000000
  %7525 = fmul fast float %7509, 0x402921FB60000000
  %7526 = fadd fast float %7525, 0x401921FB60000000
  %7527 = call float @dx.op.unary.f32(i32 13, float %7526)  ; Sin(value)
  %7528 = fadd fast float %7527, 0xBE8777A5C0000000
  %7529 = fmul fast float %7528, 0x3FB45F3060000000
  %7530 = call float @dx.op.dot4.f32(i32 56, float %7504, float %7505, float %7506, float %7507, float %7514, float %7519, float %7524, float %7529)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7531 = fmul fast float %7530, 0xBFF7154760000000
  %7532 = call float @dx.op.unary.f32(i32 21, float %7531)  ; Exp(value)
  %7533 = call float @dx.op.unary.f32(i32 7, float %7532)  ; Saturate(value)
  br label %7534

; <label>:7534                                    ; preds = %7502, %7498
  %7535 = phi float [ %7533, %7502 ], [ 1.000000e+00, %7498 ]
  %7536 = fadd fast float %7535, -1.000000e+00
  %7537 = fmul fast float %7536, %7496
  %7538 = fadd fast float %7537, 1.000000e+00
  br label %7539

; <label>:7539                                    ; preds = %7534, %7439
  %7540 = phi float [ %7538, %7534 ], [ 1.000000e+00, %7439 ]
  %7541 = fmul fast float %7540, %7435
  %7542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7543 = extractvalue %dx.types.CBufRet.f32 %7542, 0
  %7544 = extractvalue %dx.types.CBufRet.f32 %7542, 1
  %7545 = extractvalue %dx.types.CBufRet.f32 %7542, 2
  %7546 = fadd fast float %7543, %152
  %7547 = fadd fast float %7544, %153
  %7548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7549 = extractvalue %dx.types.CBufRet.f32 %7548, 1
  %7550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7551 = extractvalue %dx.types.CBufRet.f32 %7550, 0
  %7552 = extractvalue %dx.types.CBufRet.f32 %7550, 1
  %7553 = extractvalue %dx.types.CBufRet.f32 %7550, 2
  %7554 = fsub fast float -0.000000e+00, %7546
  %7555 = fsub fast float -0.000000e+00, %7547
  %7556 = fsub fast float -0.000000e+00, %154
  %7557 = fsub fast float %7556, %7545
  %7558 = fadd fast float %7557, %7549
  %7559 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7554, float %7555, float %7558)  ; Dot3(ax,ay,az,bx,by,bz)
  %7560 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7551, float %7552, float %7553)  ; Dot3(ax,ay,az,bx,by,bz)
  %7561 = fdiv fast float 1.000000e+00, %7560
  %7562 = fmul fast float %7561, %7559
  %7563 = fmul fast float %7551, %7562
  %7564 = fmul fast float %7552, %7562
  %7565 = fadd fast float %7563, %7546
  %7566 = fadd fast float %7564, %7547
  %7567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7568 = extractvalue %dx.types.CBufRet.f32 %7567, 0
  %7569 = extractvalue %dx.types.CBufRet.f32 %7567, 1
  %7570 = fsub fast float %7565, %7568
  %7571 = fsub fast float %7566, %7569
  %7572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7573 = extractvalue %dx.types.CBufRet.f32 %7572, 2
  %7574 = extractvalue %dx.types.CBufRet.f32 %7572, 3
  %7575 = fmul fast float %7570, %7573
  %7576 = fmul fast float %7571, %7574
  %7577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7578 = extractvalue %dx.types.CBufRet.i32 %7577, 3
  %7579 = icmp eq i32 %7578, 0
  br i1 %7579, label %7585, label %7580

; <label>:7580                                    ; preds = %7539
  %7581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %41, float %7575, float %7576, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7582 = extractvalue %dx.types.ResRet.f32 %7581, 0
  %7583 = extractvalue %dx.types.ResRet.f32 %7581, 1
  %7584 = extractvalue %dx.types.ResRet.f32 %7581, 2
  br label %7590

; <label>:7585                                    ; preds = %7539
  %7586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7575, float %7576, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7587 = extractvalue %dx.types.ResRet.f32 %7586, 0
  %7588 = extractvalue %dx.types.ResRet.f32 %7586, 1
  %7589 = extractvalue %dx.types.ResRet.f32 %7586, 2
  br label %7590

; <label>:7590                                    ; preds = %7585, %7580
  %7591 = phi float [ %7582, %7580 ], [ %7587, %7585 ]
  %7592 = phi float [ %7583, %7580 ], [ %7588, %7585 ]
  %7593 = phi float [ %7584, %7580 ], [ %7589, %7585 ]
  %7594 = extractvalue %dx.types.CBufRet.f32 %7548, 2
  %7595 = fmul fast float %7594, %7591
  %7596 = extractvalue %dx.types.CBufRet.f32 %7548, 0
  %7597 = fsub fast float %7562, %7596
  %7598 = fsub fast float %7597, %7595
  %7599 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7598)  ; FMax(a,b)
  %7600 = fmul fast float %7599, %7592
  %7601 = call float @dx.op.binary.f32(i32 36, float %7593, float %7600)  ; FMin(a,b)
  %7602 = fmul fast float %7601, 0xBFF7154760000000
  %7603 = call float @dx.op.unary.f32(i32 21, float %7602)  ; Exp(value)
  %7604 = fmul fast float %7541, %7603
  br label %7605

; <label>:7605                                    ; preds = %7590, %7434
  %7606 = phi float [ %7604, %7590 ], [ %7435, %7434 ]
  %7607 = call float @dx.op.binary.f32(i32 36, float %7606, float %7606)  ; FMin(a,b)
  %7608 = call float @dx.op.binary.f32(i32 36, float %7606, float %7607)  ; FMin(a,b)
  %7609 = fcmp fast ogt float %7608, 0.000000e+00
  br i1 %7609, label %7610, label %7918, !dx.controlflow.hints !116

; <label>:7610                                    ; preds = %7605
  %7611 = bitcast i32 %5437 to float
  %7612 = fmul fast float %7606, %6327
  %7613 = fmul fast float %7606, %6328
  %7614 = fmul fast float %7606, %6329
  %7615 = fsub fast float %6316, %5399
  %7616 = fsub fast float %6317, %5398
  %7617 = fsub fast float %6318, %5397
  %7618 = call float @dx.op.dot3.f32(i32 55, float %7615, float %7616, float %7617, float %7615, float %7616, float %7617)  ; Dot3(ax,ay,az,bx,by,bz)
  %7619 = call float @dx.op.unary.f32(i32 25, float %7618)  ; Rsqrt(value)
  %7620 = fmul fast float %7619, %7615
  %7621 = fmul fast float %7619, %7616
  %7622 = fmul fast float %7619, %7617
  %7623 = call float @dx.op.dot3.f32(i32 55, float %6316, float %6317, float %6318, float %5406, float %5407, float %5408)  ; Dot3(ax,ay,az,bx,by,bz)
  %7624 = call float @dx.op.dot3.f32(i32 55, float %5396, float %5395, float %5394, float %7620, float %7621, float %7622)  ; Dot3(ax,ay,az,bx,by,bz)
  %7625 = call float @dx.op.unary.f32(i32 7, float %7623)  ; Saturate(value)
  %7626 = fmul fast float %7625, %7625
  %7627 = fmul fast float %7626, %7611
  %7628 = call float @dx.op.unary.f32(i32 7, float %7627)  ; Saturate(value)
  %7629 = fmul fast float %7628, %7625
  %7630 = call float @dx.op.dot3.f32(i32 55, float %5406, float %5407, float %5408, float %7620, float %7621, float %7622)  ; Dot3(ax,ay,az,bx,by,bz)
  %7631 = fmul fast float %7630, %7630
  %7632 = call float @dx.op.unary.f32(i32 6, float %7623)  ; FAbs(value)
  %7633 = fsub fast float 1.000000e+00, %5431
  %7634 = fmul fast float %5413, %5413
  %7635 = fmul fast float %7634, %7633
  %7636 = fadd fast float %7635, %5431
  %7637 = bitcast float %7636 to i32
  %7638 = ashr i32 %7637, 1
  %7639 = add nsw i32 %7638, 532487669
  %7640 = bitcast i32 %7639 to float
  %7641 = fadd fast float %7640, %5413
  %7642 = fmul fast float %5431, %7631
  %7643 = fsub fast float 1.000000e+00, %7631
  %7644 = fadd fast float %7643, %7642
  %7645 = fmul fast float %7632, %7632
  %7646 = fmul fast float %7645, %7633
  %7647 = fadd fast float %7646, %5431
  %7648 = bitcast float %7647 to i32
  %7649 = ashr i32 %7648, 1
  %7650 = add nsw i32 %7649, 532487669
  %7651 = bitcast i32 %7650 to float
  %7652 = fadd fast float %7651, %7632
  %7653 = fmul fast float %7644, %7644
  %7654 = fmul fast float %7653, %7641
  %7655 = fmul fast float %7654, %7652
  %7656 = fdiv fast float 0x3FF0A00000000000, %7655
  %7657 = fmul fast float %7656, %5431
  %7658 = fmul fast float %5683, 0x3FF9999980000000
  %7659 = fsub fast float 5.000000e+00, %7658
  %7660 = call float @dx.op.unary.f32(i32 6, float %7624)  ; FAbs(value)
  %7661 = fsub fast float 1.000000e+00, %7660
  %7662 = fmul fast float %5683, 0x41D9660740000000
  %7663 = fadd fast float %7662, 0xC1EFBF8940000000
  %7664 = bitcast float %7661 to i32
  %7665 = sitofp i32 %7664 to float
  %7666 = fmul fast float %7665, %7659
  %7667 = fadd fast float %7663, %7666
  %7668 = fptosi float %7667 to i32
  %7669 = bitcast i32 %7668 to float
  %7670 = fsub fast float 1.000000e+00, %5400
  %7671 = fsub fast float 1.000000e+00, %5401
  %7672 = fsub fast float 1.000000e+00, %5411
  %7673 = fmul fast float %7669, %7670
  %7674 = fmul fast float %7669, %7671
  %7675 = fmul fast float %7669, %7672
  %7676 = fadd fast float %7673, %5400
  %7677 = fadd fast float %7674, %5401
  %7678 = fadd fast float %7675, %5411
  br i1 %5706, label %7679, label %7702

; <label>:7679                                    ; preds = %7610
  %7680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5060, float %7660, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7681 = extractvalue %dx.types.ResRet.f32 %7680, 0
  %7682 = extractvalue %dx.types.ResRet.f32 %7680, 1
  %7683 = extractvalue %dx.types.ResRet.f32 %7680, 2
  %7684 = fadd fast float %7681, -5.000000e-01
  %7685 = fadd fast float %7682, -5.000000e-01
  %7686 = fadd fast float %7683, -5.000000e-01
  %7687 = fmul fast float %5400, 4.000000e+00
  %7688 = fmul fast float %7687, %7670
  %7689 = fmul fast float %7688, %7684
  %7690 = fmul fast float %5401, 4.000000e+00
  %7691 = fmul fast float %7690, %7671
  %7692 = fmul fast float %7691, %7685
  %7693 = fmul fast float %5411, 4.000000e+00
  %7694 = fmul fast float %7693, %7672
  %7695 = fmul fast float %7694, %7686
  %7696 = fadd fast float %7689, %7676
  %7697 = fadd fast float %7692, %7677
  %7698 = fadd fast float %7695, %7678
  %7699 = call float @dx.op.unary.f32(i32 7, float %7696)  ; Saturate(value)
  %7700 = call float @dx.op.unary.f32(i32 7, float %7697)  ; Saturate(value)
  %7701 = call float @dx.op.unary.f32(i32 7, float %7698)  ; Saturate(value)
  br label %7702

; <label>:7702                                    ; preds = %7679, %7610
  %7703 = phi float [ %7699, %7679 ], [ %7676, %7610 ]
  %7704 = phi float [ %7700, %7679 ], [ %7677, %7610 ]
  %7705 = phi float [ %7701, %7679 ], [ %7678, %7610 ]
  %7706 = fmul fast float %7623, 9.843750e-01
  %7707 = fadd fast float %7706, 7.812500e-03
  %7708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %7707, float %5687, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7709 = extractvalue %dx.types.ResRet.f32 %7708, 0
  %7710 = extractvalue %dx.types.ResRet.f32 %7708, 1
  %7711 = extractvalue %dx.types.ResRet.f32 %7708, 2
  %7712 = extractvalue %dx.types.ResRet.f32 %7708, 3
  %7713 = fsub fast float %7711, %7709
  %7714 = fsub fast float %7712, %7710
  %7715 = fmul fast float %7713, %5693
  %7716 = fmul fast float %7714, %5693
  %7717 = fadd fast float %7715, %7709
  %7718 = fadd fast float %7716, %7710
  %7719 = fmul fast float %7717, %5400
  %7720 = fmul fast float %7717, %5401
  %7721 = fmul fast float %7717, %5411
  %7722 = fadd fast float %7719, %7718
  %7723 = fadd fast float %7720, %7718
  %7724 = fadd fast float %7721, %7718
  br i1 %5706, label %7725, label %7748

; <label>:7725                                    ; preds = %7702
  %7726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5060, float %7623, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7727 = extractvalue %dx.types.ResRet.f32 %7726, 0
  %7728 = extractvalue %dx.types.ResRet.f32 %7726, 1
  %7729 = extractvalue %dx.types.ResRet.f32 %7726, 2
  %7730 = fadd fast float %7727, -5.000000e-01
  %7731 = fadd fast float %7728, -5.000000e-01
  %7732 = fadd fast float %7729, -5.000000e-01
  %7733 = fmul fast float %5400, 4.000000e+00
  %7734 = fmul fast float %7733, %7670
  %7735 = fmul fast float %7734, %7730
  %7736 = fmul fast float %5401, 4.000000e+00
  %7737 = fmul fast float %7736, %7671
  %7738 = fmul fast float %7737, %7731
  %7739 = fmul fast float %5411, 4.000000e+00
  %7740 = fmul fast float %7739, %7672
  %7741 = fmul fast float %7740, %7732
  %7742 = fadd fast float %7735, %7722
  %7743 = fadd fast float %7738, %7723
  %7744 = fadd fast float %7741, %7724
  %7745 = call float @dx.op.unary.f32(i32 7, float %7742)  ; Saturate(value)
  %7746 = call float @dx.op.unary.f32(i32 7, float %7743)  ; Saturate(value)
  %7747 = call float @dx.op.unary.f32(i32 7, float %7744)  ; Saturate(value)
  br label %7748

; <label>:7748                                    ; preds = %7725, %7702
  %7749 = phi float [ %7745, %7725 ], [ %7722, %7702 ]
  %7750 = phi float [ %7746, %7725 ], [ %7723, %7702 ]
  %7751 = phi float [ %7747, %7725 ], [ %7724, %7702 ]
  %7752 = call float @dx.op.binary.f32(i32 35, float %7750, float %7751)  ; FMax(a,b)
  %7753 = call float @dx.op.binary.f32(i32 35, float %7749, float %7752)  ; FMax(a,b)
  %7754 = fsub fast float 1.000000e+00, %7753
  %7755 = call float @dx.op.binary.f32(i32 35, float %7632, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7756 = fdiv fast float %4414, %7755
  %7757 = fmul fast float %6225, %7756
  %7758 = fmul fast float %6227, %7756
  %7759 = fmul fast float %6229, %7756
  %7760 = call float @dx.op.unary.f32(i32 21, float %7757)  ; Exp(value)
  %7761 = call float @dx.op.unary.f32(i32 21, float %7758)  ; Exp(value)
  %7762 = call float @dx.op.unary.f32(i32 21, float %7759)  ; Exp(value)
  %7763 = call float @dx.op.unary.f32(i32 7, float %7760)  ; Saturate(value)
  %7764 = call float @dx.op.unary.f32(i32 7, float %7761)  ; Saturate(value)
  %7765 = call float @dx.op.unary.f32(i32 7, float %7762)  ; Saturate(value)
  %7766 = select i1 %6222, float %7763, float 0.000000e+00
  %7767 = select i1 %6223, float %7764, float 0.000000e+00
  %7768 = select i1 %6224, float %7765, float 0.000000e+00
  %7769 = fsub fast float -0.000000e+00, %5406
  %7770 = fsub fast float -0.000000e+00, %5407
  %7771 = fsub fast float -0.000000e+00, %5408
  %7772 = call float @dx.op.dot3.f32(i32 55, float %6316, float %6317, float %6318, float %7769, float %7770, float %7771)  ; Dot3(ax,ay,az,bx,by,bz)
  %7773 = call float @dx.op.unary.f32(i32 7, float %7772)  ; Saturate(value)
  %7774 = fmul fast float %7773, 9.843750e-01
  %7775 = fadd fast float %7774, 7.812500e-03
  %7776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %7775, float %5687, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7777 = extractvalue %dx.types.ResRet.f32 %7776, 0
  %7778 = extractvalue %dx.types.ResRet.f32 %7776, 1
  %7779 = extractvalue %dx.types.ResRet.f32 %7776, 2
  %7780 = extractvalue %dx.types.ResRet.f32 %7776, 3
  %7781 = fsub fast float %7779, %7777
  %7782 = fsub fast float %7780, %7778
  %7783 = fmul fast float %7781, %5693
  %7784 = fmul fast float %7782, %5693
  %7785 = fadd fast float %7783, %7777
  %7786 = fadd fast float %7784, %7778
  %7787 = fmul fast float %7785, %5400
  %7788 = fmul fast float %7785, %5401
  %7789 = fmul fast float %7785, %5411
  %7790 = fadd fast float %7787, %7786
  %7791 = fadd fast float %7788, %7786
  %7792 = fadd fast float %7789, %7786
  br i1 %5706, label %7793, label %7816

; <label>:7793                                    ; preds = %7748
  %7794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5060, float %7773, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7795 = extractvalue %dx.types.ResRet.f32 %7794, 0
  %7796 = extractvalue %dx.types.ResRet.f32 %7794, 1
  %7797 = extractvalue %dx.types.ResRet.f32 %7794, 2
  %7798 = fadd fast float %7795, -5.000000e-01
  %7799 = fadd fast float %7796, -5.000000e-01
  %7800 = fadd fast float %7797, -5.000000e-01
  %7801 = fmul fast float %5400, 4.000000e+00
  %7802 = fmul fast float %7801, %7670
  %7803 = fmul fast float %7802, %7798
  %7804 = fmul fast float %5401, 4.000000e+00
  %7805 = fmul fast float %7804, %7671
  %7806 = fmul fast float %7805, %7799
  %7807 = fmul fast float %5411, 4.000000e+00
  %7808 = fmul fast float %7807, %7672
  %7809 = fmul fast float %7808, %7800
  %7810 = fadd fast float %7803, %7790
  %7811 = fadd fast float %7806, %7791
  %7812 = fadd fast float %7809, %7792
  %7813 = call float @dx.op.unary.f32(i32 7, float %7810)  ; Saturate(value)
  %7814 = call float @dx.op.unary.f32(i32 7, float %7811)  ; Saturate(value)
  %7815 = call float @dx.op.unary.f32(i32 7, float %7812)  ; Saturate(value)
  br label %7816

; <label>:7816                                    ; preds = %7793, %7748
  %7817 = phi float [ %7813, %7793 ], [ %7790, %7748 ]
  %7818 = phi float [ %7814, %7793 ], [ %7791, %7748 ]
  %7819 = phi float [ %7815, %7793 ], [ %7792, %7748 ]
  %7820 = call float @dx.op.binary.f32(i32 35, float %7818, float %7819)  ; FMax(a,b)
  %7821 = call float @dx.op.binary.f32(i32 35, float %7817, float %7820)  ; FMax(a,b)
  %7822 = fsub fast float 1.000000e+00, %7821
  %7823 = fmul fast float %5428, %6289
  %7824 = fadd fast float %6291, %7823
  %7825 = call float @dx.op.unary.f32(i32 7, float %7824)  ; Saturate(value)
  %7826 = fsub fast float %6316, %5419
  %7827 = fsub fast float %6317, %5420
  %7828 = fsub fast float %6318, %5421
  %7829 = call float @dx.op.dot3.f32(i32 55, float %7826, float %7827, float %7828, float %7826, float %7827, float %7828)  ; Dot3(ax,ay,az,bx,by,bz)
  %7830 = call float @dx.op.unary.f32(i32 25, float %7829)  ; Rsqrt(value)
  %7831 = fmul fast float %7830, %7826
  %7832 = fmul fast float %7830, %7827
  %7833 = fmul fast float %7830, %7828
  %7834 = call float @dx.op.dot3.f32(i32 55, float %7769, float %7770, float %7771, float %7831, float %7832, float %7833)  ; Dot3(ax,ay,az,bx,by,bz)
  %7835 = fmul fast float %7834, %7834
  %7836 = call float @dx.op.unary.f32(i32 6, float %7773)  ; FAbs(value)
  %7837 = call float @dx.op.binary.f32(i32 35, float %7825, float 0x3F847AE140000000)  ; FMax(a,b)
  %7838 = fmul fast float %7837, %7837
  %7839 = fmul fast float %7838, %7838
  %7840 = fsub fast float 1.000000e+00, %7839
  %7841 = fmul fast float %7634, %7840
  %7842 = fadd fast float %7841, %7839
  %7843 = bitcast float %7842 to i32
  %7844 = ashr i32 %7843, 1
  %7845 = add nsw i32 %7844, 532487669
  %7846 = bitcast i32 %7845 to float
  %7847 = fadd fast float %7846, %5413
  %7848 = fmul fast float %7839, %7835
  %7849 = fsub fast float 1.000000e+00, %7835
  %7850 = fadd fast float %7849, %7848
  %7851 = fmul fast float %7836, %7836
  %7852 = fmul fast float %7851, %7840
  %7853 = fadd fast float %7852, %7839
  %7854 = bitcast float %7853 to i32
  %7855 = ashr i32 %7854, 1
  %7856 = add nsw i32 %7855, 532487669
  %7857 = bitcast i32 %7856 to float
  %7858 = fadd fast float %7857, %7836
  %7859 = fmul fast float %7850, %7850
  %7860 = fmul fast float %7859, %7847
  %7861 = fmul fast float %7860, %7858
  %7862 = fdiv fast float 0x3FF0A00000000000, %7861
  %7863 = fmul fast float %7862, %7839
  %7864 = fmul fast float %7773, %7766
  %7865 = fmul fast float %7773, %7767
  %7866 = fmul fast float %7773, %7768
  %7867 = fmul fast float %7864, %7822
  %7868 = fmul fast float %7867, %7863
  %7869 = fmul fast float %7865, %7822
  %7870 = fmul fast float %7869, %7863
  %7871 = fmul fast float %7866, %7822
  %7872 = fmul fast float %7871, %7863
  %7873 = fmul fast float %7703, %7657
  %7874 = fmul fast float %7704, %7657
  %7875 = fmul fast float %7705, %7657
  %7876 = fsub fast float 1.000000e+00, %7624
  %7877 = bitcast float %7876 to i32
  %7878 = sitofp i32 %7877 to float
  %7879 = fmul fast float %7878, 5.000000e+00
  %7880 = fadd fast float %7879, 0xC1EFBF8940000000
  %7881 = fptosi float %7880 to i32
  %7882 = bitcast i32 %7881 to float
  %7883 = fmul fast float %7882, %5061
  %7884 = fmul fast float %7754, %7883
  %7885 = fmul fast float %7884, %6217
  %7886 = fmul fast float %7884, %6218
  %7887 = fmul fast float %7884, %6219
  %7888 = fadd fast float %7885, %7873
  %7889 = fadd fast float %7886, %7874
  %7890 = fadd fast float %7887, %7875
  %7891 = fmul fast float %7888, %7629
  %7892 = fmul fast float %7889, %7629
  %7893 = fmul fast float %7890, %7629
  %7894 = fmul fast float %7629, %7612
  %7895 = fmul fast float %7894, %7754
  %7896 = fmul fast float %7629, %7613
  %7897 = fmul fast float %7896, %7754
  %7898 = fmul fast float %7629, %7614
  %7899 = fmul fast float %7898, %7754
  %7900 = fadd fast float %7891, %7868
  %7901 = fadd fast float %7892, %7870
  %7902 = fadd fast float %7893, %7872
  %7903 = fmul fast float %7900, %7612
  %7904 = fmul fast float %7901, %7613
  %7905 = fmul fast float %7902, %7614
  %7906 = fadd fast float %7895, %6306
  %7907 = fmul fast float %7906, %5057
  %7908 = fadd fast float %7897, %6308
  %7909 = fmul fast float %7908, %5057
  %7910 = fadd fast float %7899, %6310
  %7911 = fmul fast float %7910, %5057
  %7912 = fadd fast float %7903, %6270
  %7913 = fmul fast float %7912, %5057
  %7914 = fadd fast float %7904, %6273
  %7915 = fmul fast float %7914, %5057
  %7916 = fadd fast float %7905, %6276
  %7917 = fmul fast float %7916, %5057
  br label %7918

; <label>:7918                                    ; preds = %7816, %7605, %6200
  %7919 = phi float [ %6271, %6200 ], [ %6271, %7605 ], [ %7913, %7816 ]
  %7920 = phi float [ %6274, %6200 ], [ %6274, %7605 ], [ %7915, %7816 ]
  %7921 = phi float [ %6277, %6200 ], [ %6277, %7605 ], [ %7917, %7816 ]
  %7922 = phi float [ %6307, %6200 ], [ %6307, %7605 ], [ %7907, %7816 ]
  %7923 = phi float [ %6309, %6200 ], [ %6309, %7605 ], [ %7909, %7816 ]
  %7924 = phi float [ %6311, %6200 ], [ %6311, %7605 ], [ %7911, %7816 ]
  %7925 = fmul fast float %6246, %5057
  %7926 = fmul fast float %6247, %5057
  %7927 = fmul fast float %6248, %5057
  %7928 = fadd fast float %7925, 1.000000e+00
  %7929 = fadd fast float %7926, 1.000000e+00
  %7930 = fadd fast float %7927, 1.000000e+00
  %7931 = call float @dx.op.dot3.f32(i32 55, float %7928, float %7929, float %7930, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7932 = fsub fast float 1.000000e+00, %7931
  %7933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7934 = extractvalue %dx.types.CBufRet.f32 %7933, 0
  %7935 = fmul fast float %7934, %6252
  %7936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7937 = extractvalue %dx.types.CBufRet.f32 %7936, 3
  %7938 = fsub fast float 1.000000e+00, %5064
  %7939 = call float @dx.op.unary.f32(i32 7, float %7938)  ; Saturate(value)
  %7940 = fadd fast float %7924, %5063
  %7941 = fmul fast float %7940, %5064
  %7942 = fmul fast float %7939, %7937
  %7943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7944 = extractvalue %dx.types.CBufRet.f32 %7943, 3
  %7945 = fmul fast float %7922, %5403
  %7946 = fmul fast float %7923, %5404
  %7947 = fmul fast float %7924, %5405
  %7948 = fcmp fast ogt float %85, %174
  %7949 = and i1 %7948, %5132
  %7950 = or i1 %5211, %7949
  %7951 = icmp eq i32 %5131, 2
  %7952 = fcmp fast ole float %85, %174
  %7953 = and i1 %7952, %7951
  %7954 = or i1 %7953, %7950
  br i1 %7949, label %7955, label %8212

; <label>:7955                                    ; preds = %7918
  %7956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7957 = extractvalue %dx.types.CBufRet.f32 %7956, 2
  %7958 = extractvalue %dx.types.CBufRet.f32 %7956, 3
  %7959 = fmul fast float %7957, %97
  %7960 = fmul fast float %7958, %98
  %7961 = call float @dx.op.unary.f32(i32 7, float %7959)  ; Saturate(value)
  %7962 = call float @dx.op.unary.f32(i32 7, float %7960)  ; Saturate(value)
  %7963 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %7961, float %7962, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7964 = extractvalue %dx.types.ResRet.f32 %7963, 0
  %7965 = extractvalue %dx.types.ResRet.f32 %7963, 1
  %7966 = extractvalue %dx.types.ResRet.f32 %7963, 2
  %7967 = extractvalue %dx.types.ResRet.f32 %7963, 3
  %7968 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %7961, float %7962, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7969 = extractvalue %dx.types.ResRet.f32 %7968, 0
  %7970 = extractvalue %dx.types.ResRet.f32 %7968, 1
  %7971 = extractvalue %dx.types.ResRet.f32 %7968, 2
  %7972 = extractvalue %dx.types.ResRet.f32 %7968, 3
  %7973 = call float @dx.op.binary.f32(i32 35, float %7965, float %7966)  ; FMax(a,b)
  %7974 = call float @dx.op.binary.f32(i32 35, float %7964, float %7973)  ; FMax(a,b)
  %7975 = call float @dx.op.binary.f32(i32 35, float %7974, float %7967)  ; FMax(a,b)
  %7976 = call float @dx.op.binary.f32(i32 36, float %7970, float %7971)  ; FMin(a,b)
  %7977 = call float @dx.op.binary.f32(i32 36, float %7969, float %7976)  ; FMin(a,b)
  %7978 = call float @dx.op.binary.f32(i32 36, float %7977, float %7972)  ; FMin(a,b)
  %7979 = fmul fast float %7975, 2.550000e+02
  %7980 = fadd fast float %7979, 0x3F70101020000000
  %7981 = fptoui float %7980 to i32
  %7982 = fmul fast float %7978, 2.550000e+02
  %7983 = fadd fast float %7982, 0x3F70101020000000
  %7984 = fptoui float %7983 to i32
  %7985 = icmp ult i32 %7981, %7984
  br i1 %7985, label %7986, label %8154

; <label>:7986                                    ; preds = %7955
  %7987 = fcmp fast ogt float %84, 9.843750e-01
  %7988 = fadd fast float %85, -4.000000e+00
  %7989 = select i1 %7987, float -4.000000e+00, float %7988
  %7990 = call float @dx.op.binary.f32(i32 35, float %7989, float 0.000000e+00)  ; FMax(a,b)
  %7991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7992 = extractvalue %dx.types.CBufRet.f32 %7991, 0
  %7993 = fadd fast float %7992, %7990
  %7994 = extractvalue %dx.types.CBufRet.f32 %7991, 2
  %7995 = fmul fast float %7993, %7994
  %7996 = call float @dx.op.unary.f32(i32 23, float %7995)  ; Log(value)
  %7997 = extractvalue %dx.types.CBufRet.f32 %7991, 3
  %7998 = fmul fast float %7997, %7996
  %7999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8000 = extractvalue %dx.types.CBufRet.f32 %7999, 2
  %8001 = fmul fast float %7998, %8000
  %8002 = call float @dx.op.unary.f32(i32 7, float %8001)  ; Saturate(value)
  %8003 = uitofp i32 %7981 to float
  %8004 = uitofp i32 %7984 to float
  %8005 = fadd fast float %8003, 5.000000e-01
  %8006 = fadd fast float %8004, 5.000000e-01
  %8007 = fmul fast float %8000, %8005
  %8008 = fmul fast float %8000, %8006
  %8009 = fadd fast float %8007, 0x3F0FFB4800000000
  %8010 = fadd fast float %8008, 0xBF0FFB4800000000
  %8011 = call float @dx.op.binary.f32(i32 35, float %8002, float %8009)  ; FMax(a,b)
  %8012 = call float @dx.op.binary.f32(i32 36, float %8011, float %8010)  ; FMin(a,b)
  %8013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8014 = extractvalue %dx.types.CBufRet.f32 %8013, 1
  %8015 = extractvalue %dx.types.CBufRet.f32 %8013, 2
  %8016 = extractvalue %dx.types.CBufRet.f32 %8013, 0
  %8017 = fmul fast float %8014, %8012
  %8018 = fadd fast float %8016, %8017
  %8019 = fadd fast float %8016, %8015
  %8020 = fsub fast float %8014, %8015
  %8021 = fadd fast float %8020, %8016
  %8022 = call float @dx.op.binary.f32(i32 35, float %8018, float %8019)  ; FMax(a,b)
  %8023 = call float @dx.op.binary.f32(i32 36, float %8022, float %8021)  ; FMin(a,b)
  %8024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %7961, float %7962, float %8023, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8025 = extractvalue %dx.types.ResRet.f32 %8024, 0
  %8026 = extractvalue %dx.types.ResRet.f32 %8024, 1
  %8027 = extractvalue %dx.types.ResRet.f32 %8024, 2
  %8028 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8029 = extractvalue %dx.types.CBufRet.i32 %8028, 0
  %8030 = extractvalue %dx.types.CBufRet.i32 %8028, 1
  %8031 = uitofp i32 %8029 to float
  %8032 = uitofp i32 %8030 to float
  %8033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8034 = extractvalue %dx.types.CBufRet.f32 %8033, 0
  %8035 = extractvalue %dx.types.CBufRet.f32 %8033, 1
  %8036 = fmul fast float %8031, %7961
  %8037 = fmul fast float %8032, %7962
  %8038 = fadd fast float %8036, -5.000000e-01
  %8039 = fadd fast float %8037, -5.000000e-01
  %8040 = call float @dx.op.unary.f32(i32 22, float %8038)  ; Frc(value)
  %8041 = call float @dx.op.unary.f32(i32 22, float %8039)  ; Frc(value)
  %8042 = fmul fast float %8040, %8040
  %8043 = fmul fast float %8042, %8040
  %8044 = fsub fast float 3.000000e+00, %8040
  %8045 = fmul fast float %8042, %8044
  %8046 = fmul fast float %8040, 3.000000e+00
  %8047 = fmul fast float %8043, 3.000000e+00
  %8048 = fmul fast float %8042, 6.000000e+00
  %8049 = fsub fast float %8047, %8048
  %8050 = fadd fast float %8049, 4.000000e+00
  %8051 = fmul fast float %8050, 0x3FC5555560000000
  %8052 = fmul fast float %8043, -3.000000e+00
  %8053 = fadd fast float %8042, %8040
  %8054 = fmul fast float %8053, 3.000000e+00
  %8055 = fadd fast float %8052, 1.000000e+00
  %8056 = fadd fast float %8055, %8054
  %8057 = fmul fast float %8043, 0x3FC5555560000000
  %8058 = fmul fast float %8041, %8041
  %8059 = fmul fast float %8058, %8041
  %8060 = fsub fast float 3.000000e+00, %8041
  %8061 = fmul fast float %8058, %8060
  %8062 = fmul fast float %8041, 3.000000e+00
  %8063 = fmul fast float %8059, 3.000000e+00
  %8064 = fmul fast float %8058, 6.000000e+00
  %8065 = fsub fast float %8063, %8064
  %8066 = fadd fast float %8065, 4.000000e+00
  %8067 = fmul fast float %8066, 0x3FC5555560000000
  %8068 = fmul fast float %8059, -3.000000e+00
  %8069 = fadd fast float %8058, %8041
  %8070 = fmul fast float %8069, 3.000000e+00
  %8071 = fadd fast float %8068, 1.000000e+00
  %8072 = fadd fast float %8071, %8070
  %8073 = fmul fast float %8059, 0x3FC5555560000000
  %8074 = fadd fast float %8040, 1.000000e+00
  %8075 = fsub fast float 1.000000e+00, %8046
  %8076 = fadd fast float %8075, %8045
  %8077 = fadd fast float %8076, %8050
  %8078 = fmul fast float %8077, 0x3FC5555560000000
  %8079 = fdiv fast float %8051, %8078
  %8080 = fsub fast float %8074, %8079
  %8081 = fsub fast float 1.000000e+00, %8040
  %8082 = fadd fast float %8056, %8043
  %8083 = fmul fast float %8082, 0x3FC5555560000000
  %8084 = fdiv fast float %8057, %8083
  %8085 = fadd fast float %8081, %8084
  %8086 = fadd fast float %8041, 1.000000e+00
  %8087 = fsub fast float 1.000000e+00, %8062
  %8088 = fadd fast float %8087, %8061
  %8089 = fadd fast float %8088, %8066
  %8090 = fmul fast float %8089, 0x3FC5555560000000
  %8091 = fdiv fast float %8067, %8090
  %8092 = fsub fast float %8086, %8091
  %8093 = fsub fast float 1.000000e+00, %8041
  %8094 = fadd fast float %8072, %8059
  %8095 = fmul fast float %8094, 0x3FC5555560000000
  %8096 = fdiv fast float %8073, %8095
  %8097 = fadd fast float %8096, %8093
  %8098 = fmul fast float %8080, %8034
  %8099 = fsub fast float %7961, %8098
  %8100 = fmul fast float %8085, %8034
  %8101 = fadd fast float %8100, %7961
  %8102 = fmul fast float %8097, %8035
  %8103 = fadd fast float %8102, %7962
  %8104 = fmul fast float %8092, %8035
  %8105 = fsub fast float %7962, %8104
  %8106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8099, float %8105, float %8023, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8107 = extractvalue %dx.types.ResRet.f32 %8106, 0
  %8108 = extractvalue %dx.types.ResRet.f32 %8106, 1
  %8109 = extractvalue %dx.types.ResRet.f32 %8106, 2
  %8110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8101, float %8105, float %8023, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8111 = extractvalue %dx.types.ResRet.f32 %8110, 0
  %8112 = extractvalue %dx.types.ResRet.f32 %8110, 1
  %8113 = extractvalue %dx.types.ResRet.f32 %8110, 2
  %8114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8099, float %8103, float %8023, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8115 = extractvalue %dx.types.ResRet.f32 %8114, 0
  %8116 = extractvalue %dx.types.ResRet.f32 %8114, 1
  %8117 = extractvalue %dx.types.ResRet.f32 %8114, 2
  %8118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8101, float %8103, float %8023, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8119 = extractvalue %dx.types.ResRet.f32 %8118, 0
  %8120 = extractvalue %dx.types.ResRet.f32 %8118, 1
  %8121 = extractvalue %dx.types.ResRet.f32 %8118, 2
  %8122 = fsub fast float %8115, %8107
  %8123 = fsub fast float %8116, %8108
  %8124 = fsub fast float %8117, %8109
  %8125 = fmul fast float %8122, %8095
  %8126 = fmul fast float %8123, %8095
  %8127 = fmul fast float %8124, %8095
  %8128 = fadd fast float %8125, %8107
  %8129 = fadd fast float %8126, %8108
  %8130 = fadd fast float %8127, %8109
  %8131 = fsub fast float %8119, %8111
  %8132 = fsub fast float %8120, %8112
  %8133 = fsub fast float %8121, %8113
  %8134 = fmul fast float %8131, %8095
  %8135 = fmul fast float %8132, %8095
  %8136 = fmul fast float %8133, %8095
  %8137 = fsub fast float %8111, %8128
  %8138 = fadd fast float %8137, %8134
  %8139 = fsub fast float %8112, %8129
  %8140 = fadd fast float %8139, %8135
  %8141 = fsub fast float %8113, %8130
  %8142 = fadd fast float %8141, %8136
  %8143 = fmul fast float %8138, %8083
  %8144 = fmul fast float %8140, %8083
  %8145 = fmul fast float %8142, %8083
  %8146 = fadd fast float %8143, %8128
  %8147 = fadd fast float %8144, %8129
  %8148 = fadd fast float %8145, %8130
  %8149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8150 = extractvalue %dx.types.CBufRet.f32 %8149, 1
  %8151 = fmul fast float %8146, %8150
  %8152 = fmul fast float %8147, %8150
  %8153 = fmul fast float %8148, %8150
  br label %8154

; <label>:8154                                    ; preds = %7986, %7955
  %8155 = phi float [ %8025, %7986 ], [ 1.000000e+00, %7955 ]
  %8156 = phi float [ %8026, %7986 ], [ 1.000000e+00, %7955 ]
  %8157 = phi float [ %8027, %7986 ], [ 1.000000e+00, %7955 ]
  %8158 = phi float [ %8151, %7986 ], [ 0.000000e+00, %7955 ]
  %8159 = phi float [ %8152, %7986 ], [ 0.000000e+00, %7955 ]
  %8160 = phi float [ %8153, %7986 ], [ 0.000000e+00, %7955 ]
  %8161 = fmul fast float %8158, %7932
  %8162 = fmul fast float %8159, %7932
  %8163 = fmul fast float %8160, %7932
  %8164 = call float @dx.op.dot3.f32(i32 55, float %8155, float %8156, float %8157, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8165 = call float @dx.op.dot3.f32(i32 55, float %8161, float %8162, float %8163, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8166 = select i1 %213, float %8164, float %8155
  %8167 = select i1 %213, float %8164, float %8156
  %8168 = select i1 %213, float 1.000000e+00, float %8157
  %8169 = select i1 %213, float %8165, float %8161
  %8170 = select i1 %213, float 0.000000e+00, float %8162
  %8171 = select i1 %213, float 0.000000e+00, float %8163
  %8172 = fmul fast float %8166, %7945
  %8173 = fmul fast float %8167, %7946
  %8174 = fmul fast float %8168, %7947
  %8175 = fadd fast float %8172, %8169
  %8176 = fadd fast float %8173, %8170
  %8177 = fadd fast float %8171, %8174
  %8178 = fmul fast float %8166, %7919
  %8179 = fmul fast float %8167, %7920
  %8180 = fmul fast float %8168, %7921
  %8181 = fmul fast float %122, %7957
  %8182 = fmul fast float %124, %7958
  %8183 = fsub fast float 1.000000e+00, %8181
  %8184 = fsub fast float 1.000000e+00, %8182
  %8185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8186 = extractvalue %dx.types.CBufRet.f32 %8185, 0
  %8187 = extractvalue %dx.types.CBufRet.f32 %8185, 1
  %8188 = extractvalue %dx.types.CBufRet.f32 %8185, 2
  %8189 = fmul fast float %8183, %8186
  %8190 = fmul fast float %8183, %8187
  %8191 = fmul fast float %8183, %8188
  %8192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8193 = extractvalue %dx.types.CBufRet.f32 %8192, 0
  %8194 = extractvalue %dx.types.CBufRet.f32 %8192, 1
  %8195 = extractvalue %dx.types.CBufRet.f32 %8192, 2
  %8196 = fmul fast float %8184, %8193
  %8197 = fmul fast float %8184, %8194
  %8198 = fmul fast float %8184, %8195
  %8199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8200 = extractvalue %dx.types.CBufRet.f32 %8199, 0
  %8201 = extractvalue %dx.types.CBufRet.f32 %8199, 1
  %8202 = extractvalue %dx.types.CBufRet.f32 %8199, 2
  %8203 = fadd fast float %8196, %8200
  %8204 = fadd fast float %8203, %8189
  %8205 = fadd fast float %8197, %8201
  %8206 = fadd fast float %8205, %8190
  %8207 = fadd fast float %8198, %8202
  %8208 = fadd fast float %8207, %8191
  %8209 = fmul fast float %8204, %174
  %8210 = fmul fast float %8206, %174
  %8211 = fmul fast float %8208, %174
  br label %8212

; <label>:8212                                    ; preds = %8154, %7918
  %8213 = phi float [ %8209, %8154 ], [ %152, %7918 ]
  %8214 = phi float [ %8210, %8154 ], [ %153, %7918 ]
  %8215 = phi float [ %8211, %8154 ], [ %154, %7918 ]
  %8216 = phi float [ %174, %8154 ], [ %85, %7918 ]
  %8217 = phi float [ %8175, %8154 ], [ %7945, %7918 ]
  %8218 = phi float [ %8176, %8154 ], [ %7946, %7918 ]
  %8219 = phi float [ %8177, %8154 ], [ %7947, %7918 ]
  %8220 = phi float [ %8178, %8154 ], [ %7919, %7918 ]
  %8221 = phi float [ %8179, %8154 ], [ %7920, %7918 ]
  %8222 = phi float [ %8180, %8154 ], [ %7921, %7918 ]
  %8223 = phi float [ %8155, %8154 ], [ 1.000000e+00, %7918 ]
  br i1 %7954, label %9378, label %8224

; <label>:8224                                    ; preds = %8212
  %8225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8226 = extractvalue %dx.types.CBufRet.f32 %8225, 0
  %8227 = extractvalue %dx.types.CBufRet.f32 %8225, 1
  %8228 = extractvalue %dx.types.CBufRet.f32 %8225, 2
  %8229 = extractvalue %dx.types.CBufRet.f32 %8225, 3
  %8230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8231 = extractvalue %dx.types.CBufRet.f32 %8230, 0
  %8232 = extractvalue %dx.types.CBufRet.f32 %8230, 1
  %8233 = extractvalue %dx.types.CBufRet.f32 %8230, 2
  %8234 = extractvalue %dx.types.CBufRet.f32 %8230, 3
  %8235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8236 = extractvalue %dx.types.CBufRet.f32 %8235, 0
  %8237 = extractvalue %dx.types.CBufRet.f32 %8235, 1
  %8238 = extractvalue %dx.types.CBufRet.f32 %8235, 2
  %8239 = extractvalue %dx.types.CBufRet.f32 %8235, 3
  %8240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8241 = extractvalue %dx.types.CBufRet.f32 %8240, 0
  %8242 = extractvalue %dx.types.CBufRet.f32 %8240, 1
  %8243 = extractvalue %dx.types.CBufRet.f32 %8240, 2
  %8244 = extractvalue %dx.types.CBufRet.f32 %8240, 3
  %8245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8246 = extractvalue %dx.types.CBufRet.f32 %8245, 3
  %8247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8248 = extractvalue %dx.types.CBufRet.f32 %8247, 3
  %8249 = extractvalue %dx.types.CBufRet.f32 %8247, 0
  %8250 = extractvalue %dx.types.CBufRet.f32 %8247, 1
  %8251 = extractvalue %dx.types.CBufRet.f32 %8247, 2
  %8252 = fcmp fast olt float %8251, -5.000000e-01
  %8253 = call float @dx.op.dot3.f32(i32 55, float %8213, float %8214, float %8215, float %8213, float %8214, float %8215)  ; Dot3(ax,ay,az,bx,by,bz)
  %8254 = call float @dx.op.unary.f32(i32 25, float %8253)  ; Rsqrt(value)
  %8255 = fmul fast float %8254, %8253
  %8256 = fmul fast float %8254, %8213
  %8257 = fmul fast float %8254, %8214
  %8258 = fmul fast float %8254, %8215
  %8259 = fadd fast float %8255, %8229
  %8260 = call float @dx.op.dot3.f32(i32 55, float %8256, float %8257, float %8258, float %8226, float %8227, float %8228)  ; Dot3(ax,ay,az,bx,by,bz)
  %8261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8262 = extractvalue %dx.types.CBufRet.i32 %8261, 1
  %8263 = and i32 %8262, 1
  %8264 = icmp ne i32 %8263, 0
  %8265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8266 = extractvalue %dx.types.CBufRet.f32 %8265, 2
  %8267 = fcmp fast ogt float %8266, 0.000000e+00
  %8268 = and i1 %8264, %8267
  br i1 %8268, label %8269, label %8675, !dx.controlflow.hints !117

; <label>:8269                                    ; preds = %8224
  %8270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8271 = extractvalue %dx.types.CBufRet.f32 %8270, 3
  %8272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8273 = extractvalue %dx.types.CBufRet.f32 %8272, 2
  %8274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8275 = extractvalue %dx.types.CBufRet.f32 %8274, 2
  %8276 = fsub fast float %8273, %8275
  %8277 = and i32 %8262, 2
  %8278 = extractvalue %dx.types.CBufRet.i32 %8261, 0
  %8279 = call i32 @dx.op.binary.i32(i32 40, i32 %8278, i32 3)  ; UMin(a,b)
  %8280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8281 = extractvalue %dx.types.CBufRet.f32 %8280, 0
  %8282 = extractvalue %dx.types.CBufRet.f32 %8280, 1
  %8283 = extractvalue %dx.types.CBufRet.f32 %8274, 0
  %8284 = extractvalue %dx.types.CBufRet.f32 %8274, 1
  %8285 = fsub fast float %8281, %8283
  %8286 = fsub fast float %8282, %8284
  %8287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8288 = extractvalue %dx.types.CBufRet.f32 %8287, 0
  %8289 = fcmp fast ogt float %8288, 0.000000e+00
  %8290 = fsub fast float -0.000000e+00, %8285
  %8291 = fsub fast float -0.000000e+00, %8286
  %8292 = call float @dx.op.dot2.f32(i32 54, float %8256, float %8257, float %8256, float %8257)  ; Dot2(ax,ay,bx,by)
  %8293 = call float @dx.op.dot2.f32(i32 54, float %8256, float %8257, float %8290, float %8291)  ; Dot2(ax,ay,bx,by)
  %8294 = fmul fast float %8293, 2.000000e+00
  %8295 = call float @dx.op.dot2.f32(i32 54, float %8290, float %8291, float %8290, float %8291)  ; Dot2(ax,ay,bx,by)
  %8296 = fmul fast float %8288, %8288
  %8297 = fsub fast float %8295, %8296
  %8298 = fmul fast float %8294, %8294
  %8299 = fmul fast float %8292, 4.000000e+00
  %8300 = fmul fast float %8299, %8297
  %8301 = fsub fast float %8298, %8300
  %8302 = fcmp fast ogt float %8301, 0.000000e+00
  br i1 %8302, label %8303, label %8318

; <label>:8303                                    ; preds = %8269
  %8304 = fcmp fast ogt float %8294, 0.000000e+00
  %8305 = call float @dx.op.unary.f32(i32 24, float %8301)  ; Sqrt(value)
  %8306 = fsub fast float -0.000000e+00, %8305
  %8307 = select i1 %8304, float %8305, float %8306
  %8308 = fadd fast float %8307, %8294
  %8309 = fmul float %8308, -5.000000e-01
  %8310 = fdiv fast float %8309, %8292
  %8311 = call float @dx.op.binary.f32(i32 35, float %8310, float 0.000000e+00)  ; FMax(a,b)
  %8312 = call float @dx.op.binary.f32(i32 36, float %8255, float %8311)  ; FMin(a,b)
  %8313 = fdiv fast float %8297, %8309
  %8314 = call float @dx.op.binary.f32(i32 35, float %8313, float 0.000000e+00)  ; FMax(a,b)
  %8315 = call float @dx.op.binary.f32(i32 36, float %8255, float %8314)  ; FMin(a,b)
  %8316 = call float @dx.op.binary.f32(i32 36, float %8312, float %8315)  ; FMin(a,b)
  %8317 = call float @dx.op.binary.f32(i32 35, float %8312, float %8315)  ; FMax(a,b)
  br label %8318

; <label>:8318                                    ; preds = %8303, %8269
  %8319 = phi float [ %8317, %8303 ], [ -1.000000e+00, %8269 ]
  %8320 = phi float [ %8316, %8303 ], [ -1.000000e+00, %8269 ]
  %8321 = phi i1 [ true, %8303 ], [ false, %8269 ]
  %8322 = and i1 %8289, %8321
  br i1 %8322, label %8323, label %8325

; <label>:8323                                    ; preds = %8318
  %8324 = fcmp fast oeq float %8320, %8319
  br i1 %8324, label %8628, label %8326

; <label>:8325                                    ; preds = %8318
  br i1 %8289, label %8628, label %8326

; <label>:8326                                    ; preds = %8325, %8323
  %8327 = phi float [ %8255, %8325 ], [ %8319, %8323 ]
  %8328 = phi float [ 0.000000e+00, %8325 ], [ %8320, %8323 ]
  %8329 = icmp ne i32 %8277, 0
  %8330 = fmul fast float %8327, %8258
  %8331 = fadd fast float %8330, %8271
  %8332 = fmul fast float %8331, %8327
  %8333 = select i1 %8329, float 0.000000e+00, float %8332
  %8334 = fcmp fast oeq float %8258, 0.000000e+00
  %8335 = fdiv fast float %8276, %8258
  %8336 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8335)  ; FMax(a,b)
  %8337 = select i1 %8334, float %8327, float %8336
  %8338 = call float @dx.op.binary.f32(i32 36, float %8327, float %8337)  ; FMin(a,b)
  %8339 = fcmp fast ogt float %8258, 0.000000e+00
  %8340 = fcmp fast olt float %8276, 0.000000e+00
  br i1 %8339, label %8341, label %8398

; <label>:8341                                    ; preds = %8326
  %8342 = icmp eq i32 %8277, 0
  br i1 %8340, label %8343, label %8387

; <label>:8343                                    ; preds = %8341
  %8344 = select i1 %8342, float %8327, float 0.000000e+00
  %8345 = fsub fast float -0.000000e+00, %8344
  %8346 = call float @dx.op.unary.f32(i32 6, float %8345)  ; FAbs(value)
  %8347 = fmul fast float %8344, %8258
  %8348 = fadd fast float %8347, %8271
  %8349 = fmul fast float %8346, %8348
  %8350 = fsub fast float %8333, %8349
  %8351 = fsub fast float %8327, %8346
  %8352 = select i1 %8342, float %8351, float 0.000000e+00
  %8353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8354 = extractvalue %dx.types.CBufRet.f32 %8353, 0
  %8355 = extractvalue %dx.types.CBufRet.f32 %8353, 1
  %8356 = extractvalue %dx.types.CBufRet.f32 %8353, 2
  %8357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8358 = extractvalue %dx.types.CBufRet.f32 %8357, 0
  %8359 = extractvalue %dx.types.CBufRet.f32 %8357, 1
  %8360 = extractvalue %dx.types.CBufRet.f32 %8357, 2
  %8361 = extractvalue %dx.types.CBufRet.f32 %8357, 3
  %8362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8363 = extractvalue %dx.types.CBufRet.f32 %8362, 3
  %8364 = call float @dx.op.binary.f32(i32 36, float %8350, float %8363)  ; FMin(a,b)
  %8365 = fmul fast float %8361, %8352
  %8366 = call float @dx.op.unary.f32(i32 7, float %8365)  ; Saturate(value)
  %8367 = fsub fast float %8358, %8354
  %8368 = fsub fast float %8359, %8355
  %8369 = fsub fast float %8360, %8356
  %8370 = fmul fast float %8366, %8367
  %8371 = fmul fast float %8366, %8368
  %8372 = fmul fast float %8366, %8369
  %8373 = fadd fast float %8370, %8354
  %8374 = fadd fast float %8371, %8355
  %8375 = fadd fast float %8372, %8356
  %8376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8377 = extractvalue %dx.types.CBufRet.f32 %8376, 0
  %8378 = extractvalue %dx.types.CBufRet.f32 %8376, 1
  %8379 = fadd fast float %8378, %8377
  %8380 = call float @dx.op.unary.f32(i32 7, float %8379)  ; Saturate(value)
  %8381 = extractvalue %dx.types.CBufRet.f32 %8376, 2
  %8382 = extractvalue %dx.types.CBufRet.f32 %8376, 3
  %8383 = fadd fast float %8382, %8381
  %8384 = call float @dx.op.unary.f32(i32 7, float %8383)  ; Saturate(value)
  %8385 = fmul fast float %8380, %8364
  %8386 = fmul fast float %8385, %8384
  br label %8628

; <label>:8387                                    ; preds = %8341
  br i1 %8342, label %8388, label %8409

; <label>:8388                                    ; preds = %8387
  %8389 = call float @dx.op.binary.f32(i32 36, float %8338, float %8328)  ; FMin(a,b)
  %8390 = fsub fast float %8338, %8389
  %8391 = fsub fast float %8390, %8327
  %8392 = call float @dx.op.unary.f32(i32 6, float %8391)  ; FAbs(value)
  %8393 = fadd fast float %8390, %8327
  %8394 = fmul fast float %8393, %8258
  %8395 = fadd fast float %8394, %8271
  %8396 = fmul fast float %8395, %8392
  %8397 = fsub fast float %8333, %8396
  br label %8409

; <label>:8398                                    ; preds = %8326
  br i1 %8340, label %8399, label %8409

; <label>:8399                                    ; preds = %8398
  %8400 = call float @dx.op.binary.f32(i32 35, float %8328, float %8338)  ; FMax(a,b)
  %8401 = icmp eq i32 %8277, 0
  %8402 = select i1 %8401, float %8338, float 0.000000e+00
  %8403 = fsub fast float -0.000000e+00, %8402
  %8404 = call float @dx.op.unary.f32(i32 6, float %8403)  ; FAbs(value)
  %8405 = fmul fast float %8402, %8258
  %8406 = fadd fast float %8405, %8271
  %8407 = fmul fast float %8404, %8406
  %8408 = fsub fast float %8333, %8407
  br label %8409

; <label>:8409                                    ; preds = %8399, %8398, %8388, %8387
  %8410 = phi float [ %8328, %8387 ], [ %8328, %8388 ], [ %8400, %8399 ], [ %8328, %8398 ]
  %8411 = phi float [ 0.000000e+00, %8387 ], [ %8392, %8388 ], [ %8404, %8399 ], [ 0.000000e+00, %8398 ]
  %8412 = phi float [ %8333, %8387 ], [ %8397, %8388 ], [ %8408, %8399 ], [ %8333, %8398 ]
  %8413 = phi float [ %8338, %8387 ], [ %8338, %8388 ], [ %8327, %8399 ], [ %8327, %8398 ]
  %8414 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %8414, align 4, !tbaa !107, !noalias !118
  %8415 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %8415, align 4, !tbaa !107, !noalias !118
  %8416 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %8416, align 4, !tbaa !107, !noalias !118
  %8417 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %8417, align 4, !tbaa !107, !noalias !118
  %8418 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %8418, align 4, !tbaa !107, !noalias !118
  %8419 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %8419, align 4, !tbaa !107, !noalias !118
  %8420 = icmp sgt i32 %8279, 0
  br i1 %8420, label %8421, label %8482

; <label>:8421                                    ; preds = %8409
  br label %8422

; <label>:8422                                    ; preds = %8471, %8421
  %8423 = phi i32 [ %8472, %8471 ], [ 0, %8421 ]
  %8424 = phi i32 [ %8473, %8471 ], [ 0, %8421 ]
  %8425 = add nuw i32 %8424, 171
  %8426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %8425)  ; CBufferLoadLegacy(handle,regIndex)
  %8427 = extractvalue %dx.types.CBufRet.f32 %8426, 0
  %8428 = extractvalue %dx.types.CBufRet.f32 %8426, 1
  %8429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8430 = extractvalue %dx.types.CBufRet.f32 %8429, 0
  %8431 = extractvalue %dx.types.CBufRet.f32 %8429, 1
  %8432 = fsub fast float %8427, %8430
  %8433 = fsub fast float %8428, %8431
  %8434 = extractvalue %dx.types.CBufRet.f32 %8426, 2
  %8435 = fsub fast float -0.000000e+00, %8432
  %8436 = fsub fast float -0.000000e+00, %8433
  %8437 = call float @dx.op.dot2.f32(i32 54, float %8256, float %8257, float %8435, float %8436)  ; Dot2(ax,ay,bx,by)
  %8438 = fmul fast float %8437, 2.000000e+00
  %8439 = call float @dx.op.dot2.f32(i32 54, float %8435, float %8436, float %8435, float %8436)  ; Dot2(ax,ay,bx,by)
  %8440 = fmul fast float %8434, %8434
  %8441 = fsub fast float %8439, %8440
  %8442 = fmul fast float %8438, %8438
  %8443 = fmul fast float %8299, %8441
  %8444 = fsub fast float %8442, %8443
  %8445 = fcmp fast ogt float %8444, 0.000000e+00
  br i1 %8445, label %8446, label %8461

; <label>:8446                                    ; preds = %8422
  %8447 = fcmp fast ogt float %8438, 0.000000e+00
  %8448 = call float @dx.op.unary.f32(i32 24, float %8444)  ; Sqrt(value)
  %8449 = fsub fast float -0.000000e+00, %8448
  %8450 = select i1 %8447, float %8448, float %8449
  %8451 = fadd fast float %8450, %8438
  %8452 = fmul float %8451, -5.000000e-01
  %8453 = fdiv fast float %8452, %8292
  %8454 = call float @dx.op.binary.f32(i32 35, float %8453, float 0.000000e+00)  ; FMax(a,b)
  %8455 = call float @dx.op.binary.f32(i32 36, float %8327, float %8454)  ; FMin(a,b)
  %8456 = fdiv fast float %8441, %8452
  %8457 = call float @dx.op.binary.f32(i32 35, float %8456, float 0.000000e+00)  ; FMax(a,b)
  %8458 = call float @dx.op.binary.f32(i32 36, float %8327, float %8457)  ; FMin(a,b)
  %8459 = call float @dx.op.binary.f32(i32 36, float %8455, float %8458)  ; FMin(a,b)
  %8460 = call float @dx.op.binary.f32(i32 35, float %8455, float %8458)  ; FMax(a,b)
  br label %8461

; <label>:8461                                    ; preds = %8446, %8422
  %8462 = phi float [ %8460, %8446 ], [ -1.000000e+00, %8422 ]
  %8463 = phi float [ %8459, %8446 ], [ -1.000000e+00, %8422 ]
  %8464 = phi i1 [ true, %8446 ], [ false, %8422 ]
  br i1 %8464, label %8465, label %8471

; <label>:8465                                    ; preds = %8461
  %8466 = call float @dx.op.binary.f32(i32 35, float %8410, float %8463)  ; FMax(a,b)
  %8467 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8424
  store float %8466, float* %8467, align 4, !tbaa !107, !noalias !118
  %8468 = call float @dx.op.binary.f32(i32 35, float %8410, float %8462)  ; FMax(a,b)
  %8469 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8424
  store float %8468, float* %8469, align 4, !tbaa !107, !noalias !118
  %8470 = add nsw i32 %8423, 1
  br label %8471

; <label>:8471                                    ; preds = %8465, %8461
  %8472 = phi i32 [ %8470, %8465 ], [ %8423, %8461 ]
  %8473 = add nuw nsw i32 %8424, 1
  %8474 = icmp eq i32 %8473, %8279
  br i1 %8474, label %8475, label %8422

; <label>:8475                                    ; preds = %8471
  %8476 = load float, float* %8416, align 4, !tbaa !107, !alias.scope !134, !noalias !137
  %8477 = load float, float* %8415, align 4, !tbaa !107, !alias.scope !140, !noalias !141
  %8478 = load float, float* %8414, align 4, !tbaa !107, !alias.scope !142, !noalias !143
  %8479 = load float, float* %8419, align 4, !tbaa !107, !alias.scope !144, !noalias !147
  %8480 = load float, float* %8418, align 4, !tbaa !107, !alias.scope !150, !noalias !151
  %8481 = load float, float* %8417, align 4, !tbaa !107, !alias.scope !152, !noalias !153
  br label %8482

; <label>:8482                                    ; preds = %8475, %8409
  %8483 = phi float [ -1.000000e+00, %8409 ], [ %8481, %8475 ]
  %8484 = phi float [ -1.000000e+00, %8409 ], [ %8480, %8475 ]
  %8485 = phi float [ -1.000000e+00, %8409 ], [ %8479, %8475 ]
  %8486 = phi float [ -1.000000e+00, %8409 ], [ %8478, %8475 ]
  %8487 = phi float [ -1.000000e+00, %8409 ], [ %8477, %8475 ]
  %8488 = phi float [ -1.000000e+00, %8409 ], [ %8476, %8475 ]
  %8489 = phi i32 [ 0, %8409 ], [ %8472, %8475 ]
  %8490 = call float @dx.op.binary.f32(i32 36, float %8487, float %8488)  ; FMin(a,b)
  %8491 = call float @dx.op.binary.f32(i32 36, float %8486, float %8490)  ; FMin(a,b)
  %8492 = call float @dx.op.binary.f32(i32 35, float %8486, float %8487)  ; FMax(a,b)
  %8493 = call float @dx.op.binary.f32(i32 36, float %8492, float %8488)  ; FMin(a,b)
  %8494 = call float @dx.op.binary.f32(i32 36, float %8486, float %8487)  ; FMin(a,b)
  %8495 = call float @dx.op.binary.f32(i32 35, float %8494, float %8493)  ; FMax(a,b)
  %8496 = call float @dx.op.binary.f32(i32 35, float %8487, float %8488)  ; FMax(a,b)
  %8497 = call float @dx.op.binary.f32(i32 35, float %8486, float %8496)  ; FMax(a,b)
  store float %8491, float* %8414, align 4, !tbaa !107, !alias.scope !142, !noalias !143
  store float %8495, float* %8415, align 4, !tbaa !107, !alias.scope !140, !noalias !141
  store float %8497, float* %8416, align 4, !tbaa !107, !alias.scope !134, !noalias !137
  %8498 = call float @dx.op.binary.f32(i32 36, float %8484, float %8485)  ; FMin(a,b)
  %8499 = call float @dx.op.binary.f32(i32 36, float %8483, float %8498)  ; FMin(a,b)
  %8500 = call float @dx.op.binary.f32(i32 35, float %8483, float %8484)  ; FMax(a,b)
  %8501 = call float @dx.op.binary.f32(i32 36, float %8500, float %8485)  ; FMin(a,b)
  %8502 = call float @dx.op.binary.f32(i32 36, float %8483, float %8484)  ; FMin(a,b)
  %8503 = call float @dx.op.binary.f32(i32 35, float %8502, float %8501)  ; FMax(a,b)
  %8504 = call float @dx.op.binary.f32(i32 35, float %8484, float %8485)  ; FMax(a,b)
  %8505 = call float @dx.op.binary.f32(i32 35, float %8483, float %8504)  ; FMax(a,b)
  store float %8499, float* %8417, align 4, !tbaa !107, !alias.scope !152, !noalias !153
  store float %8503, float* %8418, align 4, !tbaa !107, !alias.scope !150, !noalias !151
  store float %8505, float* %8419, align 4, !tbaa !107, !alias.scope !144, !noalias !147
  %8506 = sub nsw i32 3, %8489
  %8507 = icmp sgt i32 %8506, 2
  br i1 %8507, label %8508, label %8546

; <label>:8508                                    ; preds = %8482
  %8509 = icmp eq i32 %8277, 0
  %8510 = fsub fast float %8327, %8411
  %8511 = select i1 %8509, float %8510, float %8411
  %8512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8513 = extractvalue %dx.types.CBufRet.f32 %8512, 0
  %8514 = extractvalue %dx.types.CBufRet.f32 %8512, 1
  %8515 = extractvalue %dx.types.CBufRet.f32 %8512, 2
  %8516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8517 = extractvalue %dx.types.CBufRet.f32 %8516, 0
  %8518 = extractvalue %dx.types.CBufRet.f32 %8516, 1
  %8519 = extractvalue %dx.types.CBufRet.f32 %8516, 2
  %8520 = extractvalue %dx.types.CBufRet.f32 %8516, 3
  %8521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8522 = extractvalue %dx.types.CBufRet.f32 %8521, 3
  %8523 = call float @dx.op.binary.f32(i32 36, float %8412, float %8522)  ; FMin(a,b)
  %8524 = fmul fast float %8520, %8511
  %8525 = call float @dx.op.unary.f32(i32 7, float %8524)  ; Saturate(value)
  %8526 = fsub fast float %8517, %8513
  %8527 = fsub fast float %8518, %8514
  %8528 = fsub fast float %8519, %8515
  %8529 = fmul fast float %8525, %8526
  %8530 = fmul fast float %8525, %8527
  %8531 = fmul fast float %8525, %8528
  %8532 = fadd fast float %8529, %8513
  %8533 = fadd fast float %8530, %8514
  %8534 = fadd fast float %8531, %8515
  %8535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8536 = extractvalue %dx.types.CBufRet.f32 %8535, 0
  %8537 = extractvalue %dx.types.CBufRet.f32 %8535, 1
  %8538 = fadd fast float %8537, %8536
  %8539 = call float @dx.op.unary.f32(i32 7, float %8538)  ; Saturate(value)
  %8540 = extractvalue %dx.types.CBufRet.f32 %8535, 2
  %8541 = extractvalue %dx.types.CBufRet.f32 %8535, 3
  %8542 = fadd fast float %8541, %8540
  %8543 = call float @dx.op.unary.f32(i32 7, float %8542)  ; Saturate(value)
  %8544 = fmul fast float %8539, %8523
  %8545 = fmul fast float %8544, %8543
  br label %8628

; <label>:8546                                    ; preds = %8482
  %8547 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8506
  %8548 = load float, float* %8547, align 4, !tbaa !107, !noalias !118
  %8549 = fcmp fast olt float %8548, %8413
  %8550 = icmp sgt i32 %8489, 0
  %8551 = and i1 %8550, %8549
  br i1 %8551, label %8552, label %8589

; <label>:8552                                    ; preds = %8546
  br label %8553

; <label>:8553                                    ; preds = %8582, %8552
  %8554 = phi float [ %8583, %8582 ], [ %8411, %8552 ]
  %8555 = phi float [ %8584, %8582 ], [ %8412, %8552 ]
  %8556 = phi float [ %8564, %8582 ], [ %8548, %8552 ]
  %8557 = phi i32 [ %8561, %8582 ], [ %8506, %8552 ]
  %8558 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8557
  %8559 = load float, float* %8558, align 4, !tbaa !107, !noalias !118
  %8560 = icmp slt i32 %8557, 2
  %8561 = add nsw i32 %8557, 1
  %8562 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8561
  %8563 = load float, float* %8562, align 4, !tbaa !107, !noalias !118
  %8564 = select i1 %8560, float %8563, float %8327
  %8565 = call float @dx.op.binary.f32(i32 36, float %8564, float %8559)  ; FMin(a,b)
  %8566 = call float @dx.op.binary.f32(i32 36, float %8413, float %8565)  ; FMin(a,b)
  %8567 = icmp eq i32 %8277, 0
  %8568 = fadd fast float %8566, %8556
  %8569 = fmul fast float %8568, %8258
  %8570 = fadd fast float %8569, %8271
  br i1 %8567, label %8576, label %8571

; <label>:8571                                    ; preds = %8553
  %8572 = fsub fast float %8566, %8556
  %8573 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8572)  ; FMax(a,b)
  %8574 = fmul fast float %8573, %8570
  %8575 = fadd fast float %8574, %8555
  br label %8582

; <label>:8576                                    ; preds = %8553
  %8577 = fsub fast float %8556, %8566
  %8578 = call float @dx.op.unary.f32(i32 6, float %8577)  ; FAbs(value)
  %8579 = fadd fast float %8578, %8554
  %8580 = fmul fast float %8578, %8570
  %8581 = fsub fast float %8555, %8580
  br label %8582

; <label>:8582                                    ; preds = %8576, %8571
  %8583 = phi float [ %8573, %8571 ], [ %8579, %8576 ]
  %8584 = phi float [ %8575, %8571 ], [ %8581, %8576 ]
  %8585 = fcmp fast olt float %8564, %8413
  %8586 = icmp slt i32 %8561, 3
  %8587 = and i1 %8586, %8585
  br i1 %8587, label %8553, label %8588

; <label>:8588                                    ; preds = %8582
  br label %8589

; <label>:8589                                    ; preds = %8588, %8546
  %8590 = phi float [ %8411, %8546 ], [ %8583, %8588 ]
  %8591 = phi float [ %8412, %8546 ], [ %8584, %8588 ]
  %8592 = fsub fast float %8327, %8590
  %8593 = select i1 %8329, float %8590, float %8592
  %8594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8595 = extractvalue %dx.types.CBufRet.f32 %8594, 0
  %8596 = extractvalue %dx.types.CBufRet.f32 %8594, 1
  %8597 = extractvalue %dx.types.CBufRet.f32 %8594, 2
  %8598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8599 = extractvalue %dx.types.CBufRet.f32 %8598, 0
  %8600 = extractvalue %dx.types.CBufRet.f32 %8598, 1
  %8601 = extractvalue %dx.types.CBufRet.f32 %8598, 2
  %8602 = extractvalue %dx.types.CBufRet.f32 %8598, 3
  %8603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8604 = extractvalue %dx.types.CBufRet.f32 %8603, 3
  %8605 = call float @dx.op.binary.f32(i32 36, float %8591, float %8604)  ; FMin(a,b)
  %8606 = fmul fast float %8602, %8593
  %8607 = call float @dx.op.unary.f32(i32 7, float %8606)  ; Saturate(value)
  %8608 = fsub fast float %8599, %8595
  %8609 = fsub fast float %8600, %8596
  %8610 = fsub fast float %8601, %8597
  %8611 = fmul fast float %8607, %8608
  %8612 = fmul fast float %8607, %8609
  %8613 = fmul fast float %8607, %8610
  %8614 = fadd fast float %8611, %8595
  %8615 = fadd fast float %8612, %8596
  %8616 = fadd fast float %8613, %8597
  %8617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8618 = extractvalue %dx.types.CBufRet.f32 %8617, 0
  %8619 = extractvalue %dx.types.CBufRet.f32 %8617, 1
  %8620 = fadd fast float %8619, %8618
  %8621 = call float @dx.op.unary.f32(i32 7, float %8620)  ; Saturate(value)
  %8622 = extractvalue %dx.types.CBufRet.f32 %8617, 2
  %8623 = extractvalue %dx.types.CBufRet.f32 %8617, 3
  %8624 = fadd fast float %8623, %8622
  %8625 = call float @dx.op.unary.f32(i32 7, float %8624)  ; Saturate(value)
  %8626 = fmul fast float %8621, %8605
  %8627 = fmul fast float %8626, %8625
  br label %8628

; <label>:8628                                    ; preds = %8589, %8508, %8343, %8325, %8323
  %8629 = phi float [ %8352, %8343 ], [ %8511, %8508 ], [ %8593, %8589 ], [ 0.000000e+00, %8323 ], [ 0.000000e+00, %8325 ]
  %8630 = phi float [ %8386, %8343 ], [ %8545, %8508 ], [ %8627, %8589 ], [ 0.000000e+00, %8323 ], [ 0.000000e+00, %8325 ]
  %8631 = phi float [ %8373, %8343 ], [ %8532, %8508 ], [ %8614, %8589 ], [ 0.000000e+00, %8323 ], [ 0.000000e+00, %8325 ]
  %8632 = phi float [ %8374, %8343 ], [ %8533, %8508 ], [ %8615, %8589 ], [ 0.000000e+00, %8323 ], [ 0.000000e+00, %8325 ]
  %8633 = phi float [ %8375, %8343 ], [ %8534, %8508 ], [ %8616, %8589 ], [ 0.000000e+00, %8323 ], [ 0.000000e+00, %8325 ]
  %8634 = fmul fast float %8266, %8630
  %8635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8636 = extractvalue %dx.types.CBufRet.f32 %8635, 2
  %8637 = fsub fast float %8273, %8636
  %8638 = fcmp fast olt float %8634, -2.000000e+01
  %8639 = call float @dx.op.unary.f32(i32 21, float %8634)  ; Exp(value)
  %8640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8641 = extractvalue %dx.types.CBufRet.f32 %8640, 2
  %8642 = extractvalue %dx.types.CBufRet.f32 %8640, 3
  %8643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8644 = extractvalue %dx.types.CBufRet.f32 %8643, 2
  %8645 = fmul fast float %8642, %8637
  %8646 = call float @dx.op.unary.f32(i32 7, float %8645)  ; Saturate(value)
  %8647 = fsub fast float 1.000000e+00, %8646
  %8648 = fmul fast float %8258, 5.000000e-01
  %8649 = fadd fast float %8648, 5.000000e-01
  %8650 = call float @dx.op.unary.f32(i32 7, float %8649)  ; Saturate(value)
  %8651 = fsub fast float 1.000000e+00, %8650
  %8652 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8647)  ; FMax(a,b)
  %8653 = fdiv fast float %8651, %8652
  %8654 = fsub fast float %8637, %8215
  %8655 = call float @dx.op.unary.f32(i32 6, float %8654)  ; FAbs(value)
  %8656 = fmul fast float %8655, %8641
  %8657 = call float @dx.op.unary.f32(i32 7, float %8653)  ; Saturate(value)
  %8658 = fsub fast float 1.000000e+00, %8656
  %8659 = fmul fast float %8658, %8657
  %8660 = fadd fast float %8659, %8656
  %8661 = fmul fast float %8644, %8637
  %8662 = call float @dx.op.unary.f32(i32 7, float %8661)  ; Saturate(value)
  %8663 = fsub fast float 1.000000e+00, %8660
  %8664 = fmul fast float %8663, %8662
  %8665 = fadd fast float %8664, %8660
  %8666 = call float @dx.op.unary.f32(i32 7, float %8665)  ; Saturate(value)
  %8667 = fadd fast float %8639, -1.000000e+00
  %8668 = select i1 %8638, float -1.000000e+00, float %8667
  %8669 = fmul fast float %8666, %8668
  %8670 = fadd fast float %8669, 1.000000e+00
  %8671 = fsub fast float -0.000000e+00, %8669
  %8672 = fmul fast float %8631, %8671
  %8673 = fmul fast float %8632, %8671
  %8674 = fmul fast float %8633, %8671
  br label %8675

; <label>:8675                                    ; preds = %8628, %8224
  %8676 = phi float [ %8629, %8628 ], [ 0.000000e+00, %8224 ]
  %8677 = phi float [ %8670, %8628 ], [ 1.000000e+00, %8224 ]
  %8678 = phi float [ %8672, %8628 ], [ 0.000000e+00, %8224 ]
  %8679 = phi float [ %8673, %8628 ], [ 0.000000e+00, %8224 ]
  %8680 = phi float [ %8674, %8628 ], [ 0.000000e+00, %8224 ]
  %8681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8682 = extractvalue %dx.types.CBufRet.f32 %8681, 1
  %8683 = fsub fast float 1.000000e+00, %8677
  %8684 = fmul fast float %8683, %8259
  %8685 = fmul fast float %8684, %8682
  %8686 = fsub fast float %8259, %8685
  br i1 %8252, label %8687, label %8716, !dx.controlflow.hints !154

; <label>:8687                                    ; preds = %8675
  %8688 = fmul fast float %8260, %8249
  %8689 = fadd fast float %8688, %8250
  %8690 = call float @dx.op.unary.f32(i32 7, float %8689)  ; Saturate(value)
  %8691 = fmul fast float %8231, %8686
  %8692 = fsub fast float -0.000000e+00, %8691
  %8693 = fmul fast float %8232, %8686
  %8694 = fsub fast float -0.000000e+00, %8693
  %8695 = call float @dx.op.unary.f32(i32 21, float %8692)  ; Exp(value)
  %8696 = call float @dx.op.unary.f32(i32 21, float %8694)  ; Exp(value)
  %8697 = call float @dx.op.binary.f32(i32 35, float %8239, float %8695)  ; FMax(a,b)
  %8698 = call float @dx.op.binary.f32(i32 35, float %8239, float %8696)  ; FMax(a,b)
  %8699 = fsub fast float %8698, %8697
  %8700 = fmul fast float %8699, %8690
  %8701 = fadd fast float %8700, %8697
  %8702 = call float @dx.op.unary.f32(i32 7, float %8701)  ; Saturate(value)
  %8703 = fsub fast float %8236, %8241
  %8704 = fsub fast float %8237, %8242
  %8705 = fsub fast float %8238, %8243
  %8706 = fmul fast float %8690, %8703
  %8707 = fmul fast float %8690, %8704
  %8708 = fmul fast float %8690, %8705
  %8709 = fadd fast float %8706, %8241
  %8710 = fadd fast float %8707, %8242
  %8711 = fadd fast float %8708, %8243
  %8712 = fsub fast float 1.000000e+00, %8702
  %8713 = fmul fast float %8712, %8709
  %8714 = fmul fast float %8712, %8710
  %8715 = fmul fast float %8712, %8711
  br label %8775

; <label>:8716                                    ; preds = %8675
  %8717 = fmul fast float %8686, %8248
  %8718 = call float @dx.op.unary.f32(i32 7, float %8717)  ; Saturate(value)
  %8719 = fsub fast float 2.000000e+00, %8718
  %8720 = fmul fast float %8718, 9.921875e-01
  %8721 = fmul fast float %8720, %8719
  %8722 = fadd fast float %8721, 3.906250e-03
  %8723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %8722, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8724 = extractvalue %dx.types.ResRet.f32 %8723, 0
  %8725 = fsub fast float %8718, %8724
  %8726 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8725)  ; FMax(a,b)
  %8727 = fmul fast float %8234, %8215
  %8728 = call float @dx.op.unary.f32(i32 6, float %8727)  ; FAbs(value)
  %8729 = fcmp fast ogt float %8728, 0x3EB0C6F7A0000000
  br i1 %8729, label %8730, label %8736, !dx.controlflow.hints !155

; <label>:8730                                    ; preds = %8716
  %8731 = fmul fast float %8727, 0xBFF7154760000000
  %8732 = call float @dx.op.unary.f32(i32 21, float %8731)  ; Exp(value)
  %8733 = fsub fast float 1.000000e+00, %8732
  %8734 = fdiv fast float %8733, %8727
  %8735 = fmul fast float %8734, %8244
  br label %8736

; <label>:8736                                    ; preds = %8730, %8716
  %8737 = phi float [ %8735, %8730 ], [ %8244, %8716 ]
  %8738 = fadd fast float %8737, %8246
  %8739 = fmul fast float %8738, %8726
  %8740 = fmul fast float %8231, %8739
  %8741 = fsub fast float -0.000000e+00, %8740
  %8742 = fmul fast float %8232, %8739
  %8743 = fsub fast float -0.000000e+00, %8742
  %8744 = fmul fast float %8233, %8739
  %8745 = fsub fast float -0.000000e+00, %8744
  %8746 = call float @dx.op.unary.f32(i32 21, float %8741)  ; Exp(value)
  %8747 = call float @dx.op.unary.f32(i32 21, float %8743)  ; Exp(value)
  %8748 = call float @dx.op.unary.f32(i32 21, float %8745)  ; Exp(value)
  %8749 = fmul fast float %8260, %8260
  %8750 = fadd fast float %8749, 1.000000e+00
  %8751 = fmul fast float %8750, 0x3FAE8EC8A0000000
  %8752 = fmul fast float %8751, %8241
  %8753 = fmul fast float %8751, %8242
  %8754 = fmul fast float %8751, %8243
  %8755 = fmul fast float %8260, %8239
  %8756 = fsub fast float 1.000000e+00, %8755
  %8757 = fmul fast float %8239, %8239
  %8758 = fsub fast float 1.000000e+00, %8757
  %8759 = fmul fast float %8758, 0x3FB45F3060000000
  %8760 = fmul fast float %8756, %8756
  %8761 = fdiv fast float 1.000000e+00, %8760
  %8762 = fmul fast float %8759, %8761
  %8763 = fmul fast float %8762, %8236
  %8764 = fmul fast float %8762, %8237
  %8765 = fmul fast float %8762, %8238
  %8766 = fadd fast float %8763, %8752
  %8767 = fadd fast float %8764, %8753
  %8768 = fadd fast float %8765, %8754
  %8769 = fsub fast float 1.000000e+00, %8746
  %8770 = fsub fast float 1.000000e+00, %8747
  %8771 = fsub fast float 1.000000e+00, %8748
  %8772 = fmul fast float %8766, %8769
  %8773 = fmul fast float %8767, %8770
  %8774 = fmul fast float %8768, %8771
  br label %8775

; <label>:8775                                    ; preds = %8736, %8687
  %8776 = phi float [ %8713, %8687 ], [ %8772, %8736 ]
  %8777 = phi float [ %8714, %8687 ], [ %8773, %8736 ]
  %8778 = phi float [ %8715, %8687 ], [ %8774, %8736 ]
  %8779 = phi float [ %8702, %8687 ], [ %8746, %8736 ]
  %8780 = phi float [ %8702, %8687 ], [ %8747, %8736 ]
  %8781 = phi float [ %8702, %8687 ], [ %8748, %8736 ]
  br i1 %8268, label %8782, label %8980, !dx.controlflow.hints !156

; <label>:8782                                    ; preds = %8775
  %8783 = extractvalue %dx.types.CBufRet.f32 %8681, 0
  %8784 = fmul fast float %8783, %8683
  %8785 = fsub fast float %8678, %8776
  %8786 = fsub fast float %8679, %8777
  %8787 = fsub fast float %8680, %8778
  %8788 = fmul fast float %8784, %8785
  %8789 = fmul fast float %8784, %8786
  %8790 = fmul fast float %8784, %8787
  %8791 = fadd fast float %8788, %8776
  %8792 = fadd fast float %8789, %8777
  %8793 = fadd fast float %8790, %8778
  %8794 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8779)  ; FMax(a,b)
  %8795 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8780)  ; FMax(a,b)
  %8796 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8781)  ; FMax(a,b)
  %8797 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8677)  ; FMax(a,b)
  %8798 = call float @dx.op.binary.f32(i32 35, float %8676, float %8686)  ; FMax(a,b)
  %8799 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8798)  ; FMax(a,b)
  %8800 = fdiv fast float %8676, %8799
  %8801 = call float @dx.op.unary.f32(i32 7, float %8800)  ; Saturate(value)
  %8802 = fdiv fast float %8686, %8799
  %8803 = call float @dx.op.unary.f32(i32 7, float %8802)  ; Saturate(value)
  %8804 = fcmp fast une float %8797, 1.000000e+00
  br i1 %8804, label %8805, label %8818, !dx.controlflow.hints !157

; <label>:8805                                    ; preds = %8782
  %8806 = call float @dx.op.unary.f32(i32 23, float %8797)  ; Log(value)
  %8807 = fmul fast float %8806, 0x3FE62E4300000000
  %8808 = fmul fast float %8678, %8807
  %8809 = fsub fast float -0.000000e+00, %8808
  %8810 = fmul fast float %8679, %8807
  %8811 = fsub fast float -0.000000e+00, %8810
  %8812 = fmul fast float %8680, %8807
  %8813 = fsub fast float -0.000000e+00, %8812
  %8814 = fsub fast float 1.000000e+00, %8797
  %8815 = fdiv fast float %8809, %8814
  %8816 = fdiv fast float %8811, %8814
  %8817 = fdiv fast float %8813, %8814
  br label %8818

; <label>:8818                                    ; preds = %8805, %8782
  %8819 = phi float [ %8815, %8805 ], [ %8678, %8782 ]
  %8820 = phi float [ %8816, %8805 ], [ %8679, %8782 ]
  %8821 = phi float [ %8817, %8805 ], [ %8680, %8782 ]
  %8822 = phi float [ %8807, %8805 ], [ 0.000000e+00, %8782 ]
  %8823 = fcmp fast une float %8794, 1.000000e+00
  br i1 %8823, label %8824, label %8831, !dx.controlflow.hints !158

; <label>:8824                                    ; preds = %8818
  %8825 = call float @dx.op.unary.f32(i32 23, float %8794)  ; Log(value)
  %8826 = fmul fast float %8825, 0x3FE62E4300000000
  %8827 = fmul fast float %8791, %8826
  %8828 = fsub fast float -0.000000e+00, %8827
  %8829 = fsub fast float 1.000000e+00, %8794
  %8830 = fdiv fast float %8828, %8829
  br label %8831

; <label>:8831                                    ; preds = %8824, %8818
  %8832 = phi float [ %8830, %8824 ], [ %8791, %8818 ]
  %8833 = phi float [ %8826, %8824 ], [ 0.000000e+00, %8818 ]
  %8834 = fcmp fast une float %8795, 1.000000e+00
  br i1 %8834, label %8835, label %8842, !dx.controlflow.hints !158

; <label>:8835                                    ; preds = %8831
  %8836 = call float @dx.op.unary.f32(i32 23, float %8795)  ; Log(value)
  %8837 = fmul fast float %8836, 0x3FE62E4300000000
  %8838 = fmul fast float %8792, %8837
  %8839 = fsub fast float -0.000000e+00, %8838
  %8840 = fsub fast float 1.000000e+00, %8795
  %8841 = fdiv fast float %8839, %8840
  br label %8842

; <label>:8842                                    ; preds = %8835, %8831
  %8843 = phi float [ %8841, %8835 ], [ %8792, %8831 ]
  %8844 = phi float [ %8837, %8835 ], [ 0.000000e+00, %8831 ]
  %8845 = fcmp fast une float %8796, 1.000000e+00
  br i1 %8845, label %8846, label %8853, !dx.controlflow.hints !158

; <label>:8846                                    ; preds = %8842
  %8847 = call float @dx.op.unary.f32(i32 23, float %8796)  ; Log(value)
  %8848 = fmul fast float %8847, 0x3FE62E4300000000
  %8849 = fmul fast float %8793, %8848
  %8850 = fsub fast float -0.000000e+00, %8849
  %8851 = fsub fast float 1.000000e+00, %8796
  %8852 = fdiv fast float %8850, %8851
  br label %8853

; <label>:8853                                    ; preds = %8846, %8842
  %8854 = phi float [ %8852, %8846 ], [ %8793, %8842 ]
  %8855 = phi float [ %8848, %8846 ], [ 0.000000e+00, %8842 ]
  %8856 = fmul fast float %8819, %8803
  %8857 = fmul fast float %8820, %8803
  %8858 = fmul fast float %8821, %8803
  %8859 = fmul fast float %8822, %8803
  %8860 = fmul fast float %8832, %8801
  %8861 = fmul fast float %8843, %8801
  %8862 = fmul fast float %8854, %8801
  %8863 = fmul fast float %8833, %8801
  %8864 = fmul fast float %8844, %8801
  %8865 = fmul fast float %8855, %8801
  %8866 = fadd fast float %8860, %8856
  %8867 = fadd fast float %8861, %8857
  %8868 = fadd fast float %8862, %8858
  %8869 = fadd fast float %8863, %8859
  %8870 = fadd fast float %8864, %8859
  %8871 = fadd fast float %8865, %8859
  %8872 = fcmp fast une float %8869, 0.000000e+00
  br i1 %8872, label %8873, label %8880, !dx.controlflow.hints !159

; <label>:8873                                    ; preds = %8853
  %8874 = fmul fast float %8869, 0x3FF7154760000000
  %8875 = call float @dx.op.unary.f32(i32 21, float %8874)  ; Exp(value)
  %8876 = fsub fast float 1.000000e+00, %8875
  %8877 = fmul fast float %8866, %8876
  %8878 = fsub fast float -0.000000e+00, %8877
  %8879 = fdiv fast float %8878, %8869
  br label %8880

; <label>:8880                                    ; preds = %8873, %8853
  %8881 = phi float [ %8875, %8873 ], [ 1.000000e+00, %8853 ]
  %8882 = phi float [ %8879, %8873 ], [ %8866, %8853 ]
  %8883 = fcmp fast une float %8870, 0.000000e+00
  br i1 %8883, label %8884, label %8891, !dx.controlflow.hints !159

; <label>:8884                                    ; preds = %8880
  %8885 = fmul fast float %8870, 0x3FF7154760000000
  %8886 = call float @dx.op.unary.f32(i32 21, float %8885)  ; Exp(value)
  %8887 = fsub fast float 1.000000e+00, %8886
  %8888 = fmul fast float %8867, %8887
  %8889 = fsub fast float -0.000000e+00, %8888
  %8890 = fdiv fast float %8889, %8870
  br label %8891

; <label>:8891                                    ; preds = %8884, %8880
  %8892 = phi float [ %8886, %8884 ], [ 1.000000e+00, %8880 ]
  %8893 = phi float [ %8890, %8884 ], [ %8867, %8880 ]
  %8894 = fcmp fast une float %8871, 0.000000e+00
  br i1 %8894, label %8895, label %8902, !dx.controlflow.hints !159

; <label>:8895                                    ; preds = %8891
  %8896 = fmul fast float %8871, 0x3FF7154760000000
  %8897 = call float @dx.op.unary.f32(i32 21, float %8896)  ; Exp(value)
  %8898 = fsub fast float 1.000000e+00, %8897
  %8899 = fmul fast float %8868, %8898
  %8900 = fsub fast float -0.000000e+00, %8899
  %8901 = fdiv fast float %8900, %8871
  br label %8902

; <label>:8902                                    ; preds = %8895, %8891
  %8903 = phi float [ %8897, %8895 ], [ 1.000000e+00, %8891 ]
  %8904 = phi float [ %8901, %8895 ], [ %8868, %8891 ]
  %8905 = fcmp fast ogt float %8801, %8803
  br i1 %8905, label %8906, label %8926

; <label>:8906                                    ; preds = %8902
  %8907 = fsub fast float 1.000000e+00, %8803
  %8908 = fmul fast float %8819, %8907
  %8909 = fmul fast float %8820, %8907
  %8910 = fmul fast float %8821, %8907
  %8911 = fmul fast float %8822, %8907
  %8912 = fcmp fast une float %8911, 0.000000e+00
  br i1 %8912, label %8913, label %8964, !dx.controlflow.hints !160

; <label>:8913                                    ; preds = %8906
  %8914 = fmul fast float %8911, 0x3FF7154760000000
  %8915 = call float @dx.op.unary.f32(i32 21, float %8914)  ; Exp(value)
  %8916 = fsub fast float 1.000000e+00, %8915
  %8917 = fmul fast float %8908, %8916
  %8918 = fsub fast float -0.000000e+00, %8917
  %8919 = fmul fast float %8909, %8916
  %8920 = fsub fast float -0.000000e+00, %8919
  %8921 = fmul fast float %8910, %8916
  %8922 = fsub fast float -0.000000e+00, %8921
  %8923 = fdiv fast float %8918, %8911
  %8924 = fdiv fast float %8920, %8911
  %8925 = fdiv fast float %8922, %8911
  br label %8964

; <label>:8926                                    ; preds = %8902
  %8927 = fsub fast float 1.000000e+00, %8801
  %8928 = fmul fast float %8832, %8927
  %8929 = fmul fast float %8843, %8927
  %8930 = fmul fast float %8854, %8927
  %8931 = fmul fast float %8833, %8927
  %8932 = fmul fast float %8844, %8927
  %8933 = fmul fast float %8855, %8927
  %8934 = fcmp fast une float %8931, 0.000000e+00
  br i1 %8934, label %8935, label %8942, !dx.controlflow.hints !159

; <label>:8935                                    ; preds = %8926
  %8936 = fmul fast float %8931, 0x3FF7154760000000
  %8937 = call float @dx.op.unary.f32(i32 21, float %8936)  ; Exp(value)
  %8938 = fsub fast float 1.000000e+00, %8937
  %8939 = fmul fast float %8928, %8938
  %8940 = fsub fast float -0.000000e+00, %8939
  %8941 = fdiv fast float %8940, %8931
  br label %8942

; <label>:8942                                    ; preds = %8935, %8926
  %8943 = phi float [ %8941, %8935 ], [ %8928, %8926 ]
  %8944 = phi float [ %8937, %8935 ], [ 1.000000e+00, %8926 ]
  %8945 = fcmp fast une float %8932, 0.000000e+00
  br i1 %8945, label %8946, label %8953, !dx.controlflow.hints !159

; <label>:8946                                    ; preds = %8942
  %8947 = fmul fast float %8932, 0x3FF7154760000000
  %8948 = call float @dx.op.unary.f32(i32 21, float %8947)  ; Exp(value)
  %8949 = fsub fast float 1.000000e+00, %8948
  %8950 = fmul fast float %8929, %8949
  %8951 = fsub fast float -0.000000e+00, %8950
  %8952 = fdiv fast float %8951, %8932
  br label %8953

; <label>:8953                                    ; preds = %8946, %8942
  %8954 = phi float [ %8952, %8946 ], [ %8929, %8942 ]
  %8955 = phi float [ %8948, %8946 ], [ 1.000000e+00, %8942 ]
  %8956 = fcmp fast une float %8933, 0.000000e+00
  br i1 %8956, label %8957, label %8964, !dx.controlflow.hints !159

; <label>:8957                                    ; preds = %8953
  %8958 = fmul fast float %8933, 0x3FF7154760000000
  %8959 = call float @dx.op.unary.f32(i32 21, float %8958)  ; Exp(value)
  %8960 = fsub fast float 1.000000e+00, %8959
  %8961 = fmul fast float %8930, %8960
  %8962 = fsub fast float -0.000000e+00, %8961
  %8963 = fdiv fast float %8962, %8933
  br label %8964

; <label>:8964                                    ; preds = %8957, %8953, %8913, %8906
  %8965 = phi float [ %8963, %8957 ], [ %8925, %8913 ], [ %8910, %8906 ], [ %8930, %8953 ]
  %8966 = phi float [ %8954, %8957 ], [ %8924, %8913 ], [ %8909, %8906 ], [ %8954, %8953 ]
  %8967 = phi float [ %8943, %8957 ], [ %8923, %8913 ], [ %8908, %8906 ], [ %8943, %8953 ]
  %8968 = phi float [ %8959, %8957 ], [ %8915, %8913 ], [ 1.000000e+00, %8906 ], [ 1.000000e+00, %8953 ]
  %8969 = phi float [ %8955, %8957 ], [ %8915, %8913 ], [ 1.000000e+00, %8906 ], [ %8955, %8953 ]
  %8970 = phi float [ %8944, %8957 ], [ %8915, %8913 ], [ 1.000000e+00, %8906 ], [ %8944, %8953 ]
  %8971 = fmul fast float %8970, %8882
  %8972 = fmul fast float %8969, %8893
  %8973 = fmul fast float %8968, %8904
  %8974 = fadd fast float %8971, %8967
  %8975 = fadd fast float %8972, %8966
  %8976 = fadd fast float %8973, %8965
  %8977 = fmul fast float %8970, %8881
  %8978 = fmul fast float %8969, %8892
  %8979 = fmul fast float %8968, %8903
  br label %8980

; <label>:8980                                    ; preds = %8964, %8775
  %8981 = phi float [ %8979, %8964 ], [ %8781, %8775 ]
  %8982 = phi float [ %8978, %8964 ], [ %8780, %8775 ]
  %8983 = phi float [ %8977, %8964 ], [ %8779, %8775 ]
  %8984 = phi float [ %8976, %8964 ], [ %8778, %8775 ]
  %8985 = phi float [ %8975, %8964 ], [ %8777, %8775 ]
  %8986 = phi float [ %8974, %8964 ], [ %8776, %8775 ]
  %8987 = fmul fast float %8986, %7932
  %8988 = fmul fast float %8985, %7932
  %8989 = fmul fast float %8984, %7932
  %8990 = fmul fast float %8983, %8223
  %8991 = call float @dx.op.dot3.f32(i32 55, float %8983, float %8982, float %8981, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8992 = call float @dx.op.dot3.f32(i32 55, float %8987, float %8988, float %8989, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8993 = select i1 %213, float %8991, float %8983
  %8994 = select i1 %213, float %8991, float %8982
  %8995 = select i1 %213, float 1.000000e+00, float %8981
  %8996 = select i1 %213, float %8992, float %8987
  %8997 = select i1 %213, float 0.000000e+00, float %8988
  %8998 = select i1 %213, float 0.000000e+00, float %8989
  %8999 = fmul fast float %8993, %8217
  %9000 = fmul fast float %8994, %8218
  %9001 = fmul fast float %8995, %8219
  %9002 = fadd fast float %8999, %8996
  %9003 = fadd fast float %9000, %8997
  %9004 = fadd fast float %8998, %9001
  %9005 = fmul fast float %8993, %8220
  %9006 = fmul fast float %8994, %8221
  %9007 = fmul fast float %8995, %8222
  %9008 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9009 = extractvalue %dx.types.CBufRet.i32 %9008, 0
  %9010 = icmp eq i32 %9009, 0
  br i1 %9010, label %9378, label %9011, !dx.controlflow.hints !161

; <label>:9011                                    ; preds = %8980
  %9012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9013 = extractvalue %dx.types.CBufRet.f32 %9012, 2
  %9014 = extractvalue %dx.types.CBufRet.f32 %9012, 3
  %9015 = fmul fast float %9013, %97
  %9016 = fmul fast float %9014, %98
  %9017 = fmul fast float %9015, 2.000000e+00
  %9018 = fmul fast float %9016, 2.000000e+00
  %9019 = fsub fast float 1.000000e+00, %9017
  %9020 = fsub fast float 1.000000e+00, %9018
  %9021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9022 = extractvalue %dx.types.CBufRet.f32 %9021, 0
  %9023 = extractvalue %dx.types.CBufRet.f32 %9021, 1
  %9024 = extractvalue %dx.types.CBufRet.f32 %9021, 2
  %9025 = fmul fast float %9019, %9022
  %9026 = fmul fast float %9019, %9023
  %9027 = fmul fast float %9019, %9024
  %9028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9029 = extractvalue %dx.types.CBufRet.f32 %9028, 0
  %9030 = extractvalue %dx.types.CBufRet.f32 %9028, 1
  %9031 = extractvalue %dx.types.CBufRet.f32 %9028, 2
  %9032 = fmul fast float %9020, %9029
  %9033 = fmul fast float %9020, %9030
  %9034 = fmul fast float %9020, %9031
  %9035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9036 = extractvalue %dx.types.CBufRet.f32 %9035, 0
  %9037 = extractvalue %dx.types.CBufRet.f32 %9035, 1
  %9038 = extractvalue %dx.types.CBufRet.f32 %9035, 2
  %9039 = fadd fast float %9032, %9036
  %9040 = fadd fast float %9039, %9025
  %9041 = fadd fast float %9033, %9037
  %9042 = fadd fast float %9041, %9026
  %9043 = fadd fast float %9034, %9038
  %9044 = fadd fast float %9043, %9027
  %9045 = fmul fast float %9040, %8216
  %9046 = fmul fast float %9042, %8216
  %9047 = fmul fast float %9044, %8216
  %9048 = fmul fast float %9045, %9045
  %9049 = fmul fast float %9046, %9046
  %9050 = fadd fast float %9048, %9049
  %9051 = fmul fast float %9047, %9047
  %9052 = fadd fast float %9050, %9051
  %9053 = call float @dx.op.unary.f32(i32 24, float %9052)  ; Sqrt(value)
  %9054 = extractvalue %dx.types.CBufRet.f32 %7943, 0
  %9055 = fsub fast float %9053, %9054
  %9056 = extractvalue %dx.types.CBufRet.f32 %7943, 2
  %9057 = fmul fast float %9055, %9056
  %9058 = call float @dx.op.unary.f32(i32 7, float %9057)  ; Saturate(value)
  %9059 = fadd fast float %9058, -5.000000e-01
  %9060 = fmul fast float %9059, 2.000000e+00
  %9061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9062 = extractvalue %dx.types.CBufRet.f32 %9061, 2
  %9063 = call float @dx.op.binary.f32(i32 36, float %9062, float %9060)  ; FMin(a,b)
  %9064 = fsub fast float -0.000000e+00, %9062
  %9065 = fcmp fast ogt float %9063, %9064
  br i1 %9065, label %9066, label %9378, !dx.controlflow.hints !162

; <label>:9066                                    ; preds = %9011
  %9067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9068 = extractvalue %dx.types.CBufRet.f32 %9067, 3
  %9069 = fcmp fast ogt float %9068, 0.000000e+00
  br i1 %9069, label %9070, label %9145, !dx.controlflow.hints !163

; <label>:9070                                    ; preds = %9066
  %9071 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %9072 = extractvalue %dx.types.Dimensions %9071, 0
  %9073 = sitofp i32 %9072 to float
  %9074 = extractvalue %dx.types.Dimensions %9071, 1
  %9075 = sitofp i32 %9074 to float
  %9076 = fmul fast float %9015, %9073
  %9077 = fmul fast float %9016, %9075
  %9078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9079 = extractvalue %dx.types.CBufRet.f32 %9078, 1
  %9080 = fsub fast float -0.000000e+00, %9079
  %9081 = fptoui float %9080 to i32
  %9082 = fptoui float %9076 to i32
  %9083 = fptoui float %9077 to i32
  %9084 = and i32 %9081, 31
  %9085 = lshr i32 %9082, %9084
  %9086 = lshr i32 %9083, %9084
  %9087 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 %9081, i32 %9085, i32 %9086, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9088 = extractvalue %dx.types.ResRet.f32 %9087, 0
  %9089 = fcmp fast olt float %9088, -1.000000e+00
  %9090 = fcmp fast ogt float %9088, -1.000000e+00
  %9091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9092 = extractvalue %dx.types.CBufRet.f32 %9091, 1
  %9093 = select i1 %9090, float %9092, float 1.000000e+00
  %9094 = fadd fast float %9088, 1.000000e+00
  %9095 = fmul fast float %9093, %9094
  %9096 = call float @dx.op.unary.f32(i32 6, float %9095)  ; FAbs(value)
  %9097 = extractvalue %dx.types.CBufRet.f32 %9091, 3
  %9098 = fcmp fast oge float %9096, %9097
  %9099 = select i1 %9098, float 0x4197782600000000, float %9096
  %9100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9101 = extractvalue %dx.types.CBufRet.f32 %9100, 0
  %9102 = extractvalue %dx.types.CBufRet.f32 %9100, 1
  %9103 = extractvalue %dx.types.CBufRet.f32 %9100, 2
  %9104 = select i1 %9089, float %9101, float %9022
  %9105 = select i1 %9089, float %9102, float %9023
  %9106 = select i1 %9089, float %9103, float %9024
  %9107 = fmul fast float %9104, %9019
  %9108 = fmul fast float %9105, %9019
  %9109 = fmul fast float %9106, %9019
  %9110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9111 = extractvalue %dx.types.CBufRet.f32 %9110, 0
  %9112 = extractvalue %dx.types.CBufRet.f32 %9110, 1
  %9113 = extractvalue %dx.types.CBufRet.f32 %9110, 2
  %9114 = select i1 %9089, float %9111, float %9029
  %9115 = select i1 %9089, float %9112, float %9030
  %9116 = select i1 %9089, float %9113, float %9031
  %9117 = fmul fast float %9114, %9020
  %9118 = fmul fast float %9115, %9020
  %9119 = fmul fast float %9116, %9020
  %9120 = fadd fast float %9117, %9107
  %9121 = fadd fast float %9118, %9108
  %9122 = fadd fast float %9119, %9109
  %9123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9124 = extractvalue %dx.types.CBufRet.f32 %9123, 0
  %9125 = extractvalue %dx.types.CBufRet.f32 %9123, 1
  %9126 = extractvalue %dx.types.CBufRet.f32 %9123, 2
  %9127 = select i1 %9089, float %9124, float %9036
  %9128 = select i1 %9089, float %9125, float %9037
  %9129 = select i1 %9089, float %9126, float %9038
  %9130 = fadd fast float %9120, %9127
  %9131 = fadd fast float %9121, %9128
  %9132 = fadd fast float %9122, %9129
  %9133 = fmul fast float %9130, %9099
  %9134 = fmul fast float %9131, %9099
  %9135 = fmul fast float %9132, %9099
  %9136 = fmul fast float %9133, %9133
  %9137 = fmul fast float %9134, %9134
  %9138 = fadd fast float %9136, %9137
  %9139 = fmul fast float %9135, %9135
  %9140 = fadd fast float %9138, %9139
  %9141 = call float @dx.op.unary.f32(i32 24, float %9140)  ; Sqrt(value)
  %9142 = fsub fast float %9141, %9054
  %9143 = fmul fast float %9142, %9056
  %9144 = call float @dx.op.unary.f32(i32 7, float %9143)  ; Saturate(value)
  br label %9145

; <label>:9145                                    ; preds = %9070, %9066
  %9146 = phi float [ %9144, %9070 ], [ 1.000000e+00, %9066 ]
  %9147 = fmul fast float %9063, 5.000000e-01
  %9148 = fadd fast float %9147, 5.000000e-01
  %9149 = call float @dx.op.unary.f32(i32 22, float %9148)  ; Frc(value)
  %9150 = call float @dx.op.unary.f32(i32 27, float %9149)  ; Round_ni(value)
  %9151 = call float @dx.op.unary.f32(i32 22, float %9149)  ; Frc(value)
  %9152 = fmul fast float %9151, 2.000000e+00
  %9153 = fadd fast float %9152, -1.000000e+00
  %9154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %42, float %9015, float %9016, float %9150, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9155 = extractvalue %dx.types.ResRet.f32 %9154, 0
  %9156 = extractvalue %dx.types.ResRet.f32 %9154, 1
  %9157 = extractvalue %dx.types.ResRet.f32 %9154, 2
  %9158 = extractvalue %dx.types.ResRet.f32 %9154, 3
  %9159 = fadd fast float %9155, -5.000000e-01
  %9160 = fadd fast float %9157, -5.000000e-01
  %9161 = fmul fast float %9159, 0xBFD5555560000000
  %9162 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9160, float %9161)  ; FMad(a,b,c)
  %9163 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9156, float 0.000000e+00)  ; FMad(a,b,c)
  %9164 = fadd fast float %9163, %9158
  %9165 = fmul fast float %9159, -7.500000e-01
  %9166 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9160, float %9165)  ; FMad(a,b,c)
  %9167 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9156, float 0.000000e+00)  ; FMad(a,b,c)
  %9168 = fadd fast float %9167, %9158
  %9169 = call float @dx.op.binary.f32(i32 35, float %9162, float -1.000000e+00)  ; FMax(a,b)
  %9170 = call float @dx.op.binary.f32(i32 35, float %9164, float -1.000000e+00)  ; FMax(a,b)
  %9171 = call float @dx.op.binary.f32(i32 35, float %9166, float -1.000000e+00)  ; FMax(a,b)
  %9172 = call float @dx.op.binary.f32(i32 35, float %9168, float -1.000000e+00)  ; FMax(a,b)
  %9173 = call float @dx.op.binary.f32(i32 36, float %9169, float 1.000000e+00)  ; FMin(a,b)
  %9174 = call float @dx.op.binary.f32(i32 36, float %9170, float 1.000000e+00)  ; FMin(a,b)
  %9175 = call float @dx.op.binary.f32(i32 36, float %9171, float 1.000000e+00)  ; FMin(a,b)
  %9176 = call float @dx.op.binary.f32(i32 36, float %9172, float 1.000000e+00)  ; FMin(a,b)
  %9177 = fcmp fast olt float %9173, 0x3FEFFF8020000000
  br i1 %9177, label %9178, label %9293, !dx.controlflow.hints !164

; <label>:9178                                    ; preds = %9145
  %9179 = extractvalue %dx.types.CBufRet.f32 %9061, 3
  %9180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9181 = extractvalue %dx.types.CBufRet.f32 %9180, 0
  %9182 = extractvalue %dx.types.CBufRet.f32 %9180, 1
  %9183 = extractvalue %dx.types.CBufRet.f32 %9180, 2
  %9184 = extractvalue %dx.types.CBufRet.f32 %9180, 3
  %9185 = fsub fast float %9181, %9173
  %9186 = fsub fast float %9182, %9174
  %9187 = fsub fast float %9183, %9175
  %9188 = fsub fast float %9184, %9176
  %9189 = fmul fast float %9185, %9179
  %9190 = fmul fast float %9186, %9179
  %9191 = fmul fast float %9187, %9179
  %9192 = fmul fast float %9188, %9179
  %9193 = fadd fast float %9189, %9173
  %9194 = fadd fast float %9190, %9174
  %9195 = fsub fast float -0.000000e+00, %9194
  %9196 = fadd fast float %9191, %9175
  %9197 = fadd fast float %9192, %9176
  %9198 = fmul fast float %9193, %9193
  %9199 = fsub fast float %9194, %9198
  %9200 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9199)  ; FMax(a,b)
  %9201 = fdiv fast float 1.000000e+00, %9200
  %9202 = fmul fast float %9194, %9193
  %9203 = fsub fast float %9196, %9202
  %9204 = fsub fast float %9153, %9193
  %9205 = fmul fast float %9153, %9153
  %9206 = fsub fast float %9205, %9194
  %9207 = fmul fast float %9204, %9201
  %9208 = fmul fast float %9207, %9203
  %9209 = fsub fast float %9206, %9208
  %9210 = fmul fast float %9194, %9194
  %9211 = fsub fast float %9197, %9210
  %9212 = fmul fast float %9203, %9203
  %9213 = fmul fast float %9212, %9201
  %9214 = fsub fast float %9211, %9213
  %9215 = fdiv fast float %9209, %9214
  %9216 = fmul fast float %9203, %9215
  %9217 = fsub fast float %9204, %9216
  %9218 = fmul fast float %9217, %9201
  %9219 = fmul fast float %9218, %9193
  %9220 = fsub fast float 1.000000e+00, %9219
  %9221 = fmul fast float %9194, %9215
  %9222 = fsub fast float %9220, %9221
  %9223 = fmul fast float %9218, %9218
  %9224 = fmul fast float %9215, 4.000000e+00
  %9225 = fmul fast float %9224, %9222
  %9226 = fsub fast float %9223, %9225
  %9227 = call float @dx.op.unary.f32(i32 24, float %9226)  ; Sqrt(value)
  %9228 = fcmp fast oge float %9218, 0.000000e+00
  %9229 = fsub fast float -0.000000e+00, %9227
  %9230 = select i1 %9228, float %9229, float %9227
  %9231 = fsub fast float %9230, %9218
  %9232 = fdiv fast float %9231, %9215
  %9233 = fdiv fast float %9222, %9231
  %9234 = fmul fast float %9232, 5.000000e-01
  %9235 = fmul fast float %9233, 2.000000e+00
  %9236 = select i1 %9228, float %9234, float %9235
  %9237 = select i1 %9228, float %9235, float %9234
  %9238 = call float @dx.op.binary.f32(i32 35, float %9236, float %9237)  ; FMax(a,b)
  %9239 = call float @dx.op.binary.f32(i32 36, float %9236, float %9237)  ; FMin(a,b)
  %9240 = fcmp fast ogt float %9153, %9239
  br i1 %9240, label %9241, label %9251

; <label>:9241                                    ; preds = %9178
  %9242 = fsub fast float %9153, %9239
  %9243 = fsub fast float %9238, %9239
  %9244 = fmul fast float %9242, %9243
  %9245 = fmul fast float %9238, %9153
  %9246 = fadd fast float %9238, %9153
  %9247 = fmul fast float %9246, %9193
  %9248 = fadd fast float %9245, %9194
  %9249 = fsub fast float %9248, %9247
  %9250 = fdiv fast float %9249, %9244
  br label %9251

; <label>:9251                                    ; preds = %9241, %9178
  %9252 = phi float [ %9250, %9241 ], [ 0.000000e+00, %9178 ]
  %9253 = fcmp fast ogt float %9153, %9238
  %9254 = fsub fast float %9153, %9238
  br i1 %9253, label %9255, label %9265

; <label>:9255                                    ; preds = %9251
  %9256 = fsub fast float %9238, %9239
  %9257 = fmul fast float %9256, %9254
  %9258 = fmul fast float %9239, %9153
  %9259 = fadd fast float %9239, %9153
  %9260 = fmul fast float %9259, %9193
  %9261 = fsub fast float %9195, %9258
  %9262 = fadd fast float %9261, %9260
  %9263 = fdiv fast float %9262, %9257
  %9264 = fadd fast float %9263, %9252
  br label %9265

; <label>:9265                                    ; preds = %9255, %9251
  %9266 = phi float [ %9264, %9255 ], [ %9252, %9251 ]
  %9267 = fsub fast float %9153, %9239
  %9268 = fmul fast float %9267, %9254
  %9269 = fmul fast float %9239, %9238
  %9270 = fadd fast float %9239, %9238
  %9271 = fmul fast float %9270, %9193
  %9272 = fadd fast float %9269, %9194
  %9273 = fsub fast float %9272, %9271
  %9274 = fdiv fast float %9273, %9268
  %9275 = call float @dx.op.unary.f32(i32 7, float %9266)  ; Saturate(value)
  %9276 = fcmp fast oeq float %7944, 0.000000e+00
  %9277 = extractvalue %dx.types.CBufRet.f32 %9061, 0
  %9278 = fcmp fast oeq float %9277, 0.000000e+00
  %9279 = or i1 %9276, %9278
  %9280 = fmul fast float %9277, 2.000000e+00
  %9281 = fadd fast float %9062, %9063
  %9282 = fdiv fast float %9281, %9280
  %9283 = call float @dx.op.unary.f32(i32 7, float %9282)  ; Saturate(value)
  %9284 = fmul fast float %9283, 2.000000e+00
  %9285 = fsub fast float 3.000000e+00, %9284
  %9286 = fmul fast float %9283, %9283
  %9287 = fmul fast float %9286, %9285
  %9288 = select i1 %9279, float 1.000000e+00, float %9287
  %9289 = fmul fast float %9274, %7944
  %9290 = fadd fast float %9275, %9289
  %9291 = call float @dx.op.unary.f32(i32 7, float %9290)  ; Saturate(value)
  %9292 = fmul fast float %9288, %9291
  br label %9293

; <label>:9293                                    ; preds = %9265, %9145
  %9294 = phi float [ %9292, %9265 ], [ 0.000000e+00, %9145 ]
  %9295 = fsub fast float 1.000000e+00, %9294
  %9296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %42, float %9015, float %9016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9297 = extractvalue %dx.types.ResRet.f32 %9296, 0
  %9298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9299 = extractvalue %dx.types.CBufRet.i32 %9298, 2
  %9300 = icmp eq i32 %9299, 0
  br i1 %9300, label %9306, label %9301

; <label>:9301                                    ; preds = %9293
  %9302 = call float @dx.op.unary.f32(i32 7, float %9294)  ; Saturate(value)
  %9303 = fadd fast float %9297, -1.000000e+00
  %9304 = fmul fast float %9302, %9303
  %9305 = fadd fast float %9304, 1.000000e+00
  br label %9306

; <label>:9306                                    ; preds = %9301, %9293
  %9307 = phi float [ %9305, %9301 ], [ %9295, %9293 ]
  br i1 %9069, label %9308, label %9326

; <label>:9308                                    ; preds = %9306
  %9309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9310 = extractvalue %dx.types.CBufRet.f32 %9309, 1
  %9311 = fsub fast float %9146, %9310
  %9312 = call float @dx.op.unary.f32(i32 7, float %9311)  ; Saturate(value)
  %9313 = fsub fast float %9146, %9068
  %9314 = call float @dx.op.unary.f32(i32 7, float %9313)  ; Saturate(value)
  %9315 = fsub fast float %9312, %9314
  %9316 = fsub fast float %9148, %9314
  %9317 = fdiv fast float %9316, %9315
  %9318 = call float @dx.op.unary.f32(i32 7, float %9317)  ; Saturate(value)
  %9319 = fmul fast float %9318, 2.000000e+00
  %9320 = fsub fast float 3.000000e+00, %9319
  %9321 = fsub fast float %9297, %9307
  %9322 = fmul fast float %9318, %9318
  %9323 = fmul fast float %9322, %9321
  %9324 = fmul fast float %9323, %9320
  %9325 = fadd fast float %9324, %9307
  br label %9326

; <label>:9326                                    ; preds = %9308, %9306
  %9327 = phi float [ %9325, %9308 ], [ %9307, %9306 ]
  %9328 = call float @dx.op.binary.f32(i32 35, float %9297, float %9327)  ; FMax(a,b)
  %9329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9330 = extractvalue %dx.types.CBufRet.i32 %9329, 2
  %9331 = and i32 %9330, 1
  %9332 = icmp eq i32 %9331, 0
  %9333 = fcmp fast une float %9328, 1.000000e+00
  %9334 = and i1 %9333, %9332
  br i1 %9334, label %9335, label %9354

; <label>:9335                                    ; preds = %9326
  %9336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %42, float %9015, float %9016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9337 = extractvalue %dx.types.ResRet.f32 %9336, 0
  %9338 = extractvalue %dx.types.ResRet.f32 %9336, 1
  %9339 = extractvalue %dx.types.ResRet.f32 %9336, 2
  %9340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9341 = extractvalue %dx.types.CBufRet.f32 %9340, 1
  %9342 = fmul fast float %9341, %9337
  %9343 = fmul fast float %9341, %9338
  %9344 = fmul fast float %9341, %9339
  %9345 = fcmp fast ogt float %9297, 0x3FEFFF2E40000000
  %9346 = fsub fast float 1.000000e+00, %9328
  %9347 = fsub fast float 1.000000e+00, %9297
  %9348 = fdiv fast float %9346, %9347
  %9349 = call float @dx.op.unary.f32(i32 7, float %9348)  ; Saturate(value)
  %9350 = select i1 %9345, float 0.000000e+00, float %9349
  %9351 = fmul fast float %9342, %9350
  %9352 = fmul fast float %9343, %9350
  %9353 = fmul fast float %9344, %9350
  br label %9354

; <label>:9354                                    ; preds = %9335, %9326
  %9355 = phi float [ 0.000000e+00, %9326 ], [ %9351, %9335 ]
  %9356 = phi float [ 0.000000e+00, %9326 ], [ %9352, %9335 ]
  %9357 = phi float [ 0.000000e+00, %9326 ], [ %9353, %9335 ]
  %9358 = fmul fast float %9355, %7932
  %9359 = fmul fast float %9356, %7932
  %9360 = fmul fast float %9357, %7932
  %9361 = fmul fast float %9328, %8990
  %9362 = call float @dx.op.dot3.f32(i32 55, float %9328, float %9328, float %9328, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9363 = call float @dx.op.dot3.f32(i32 55, float %9358, float %9359, float %9360, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9364 = select i1 %213, float %9362, float %9328
  %9365 = select i1 %213, float 1.000000e+00, float %9328
  %9366 = select i1 %213, float %9363, float %9358
  %9367 = select i1 %213, float 0.000000e+00, float %9359
  %9368 = select i1 %213, float 0.000000e+00, float %9360
  %9369 = fmul fast float %9364, %9002
  %9370 = fmul fast float %9364, %9003
  %9371 = fmul fast float %9365, %9004
  %9372 = fadd fast float %9369, %9366
  %9373 = fadd fast float %9370, %9367
  %9374 = fadd fast float %9368, %9371
  %9375 = fmul fast float %9364, %9005
  %9376 = fmul fast float %9364, %9006
  %9377 = fmul fast float %9365, %9007
  br label %9378

; <label>:9378                                    ; preds = %9354, %9011, %8980, %8212
  %9379 = phi float [ %8217, %8212 ], [ %9002, %8980 ], [ %9372, %9354 ], [ %9002, %9011 ]
  %9380 = phi float [ %8218, %8212 ], [ %9003, %8980 ], [ %9373, %9354 ], [ %9003, %9011 ]
  %9381 = phi float [ %8219, %8212 ], [ %9004, %8980 ], [ %9374, %9354 ], [ %9004, %9011 ]
  %9382 = phi float [ %8220, %8212 ], [ %9005, %8980 ], [ %9375, %9354 ], [ %9005, %9011 ]
  %9383 = phi float [ %8221, %8212 ], [ %9006, %8980 ], [ %9376, %9354 ], [ %9006, %9011 ]
  %9384 = phi float [ %8222, %8212 ], [ %9007, %8980 ], [ %9377, %9354 ], [ %9007, %9011 ]
  %9385 = phi float [ %8223, %8212 ], [ %8990, %8980 ], [ %9361, %9354 ], [ %8990, %9011 ]
  %9386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9387 = extractvalue %dx.types.CBufRet.f32 %9386, 2
  %9388 = extractvalue %dx.types.CBufRet.f32 %9386, 3
  %9389 = fmul fast float %9387, %97
  %9390 = fmul fast float %9388, %98
  %9391 = call float @dx.op.unary.f32(i32 7, float %9389)  ; Saturate(value)
  %9392 = call float @dx.op.unary.f32(i32 7, float %9390)  ; Saturate(value)
  %9393 = select i1 %7954, i32 2, i32 0
  %9394 = or i32 %9393, 1
  %9395 = uitofp i32 %9394 to float
  %9396 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9391, float %9392, float %9395, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9397 = extractvalue %dx.types.ResRet.f32 %9396, 0
  %9398 = extractvalue %dx.types.ResRet.f32 %9396, 1
  %9399 = extractvalue %dx.types.ResRet.f32 %9396, 2
  %9400 = extractvalue %dx.types.ResRet.f32 %9396, 3
  %9401 = add nuw nsw i32 %9393, 2
  %9402 = uitofp i32 %9401 to float
  %9403 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9391, float %9392, float %9402, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9404 = extractvalue %dx.types.ResRet.f32 %9403, 0
  %9405 = extractvalue %dx.types.ResRet.f32 %9403, 1
  %9406 = extractvalue %dx.types.ResRet.f32 %9403, 2
  %9407 = extractvalue %dx.types.ResRet.f32 %9403, 3
  %9408 = call float @dx.op.binary.f32(i32 35, float %9398, float %9399)  ; FMax(a,b)
  %9409 = call float @dx.op.binary.f32(i32 35, float %9397, float %9408)  ; FMax(a,b)
  %9410 = call float @dx.op.binary.f32(i32 35, float %9409, float %9400)  ; FMax(a,b)
  %9411 = call float @dx.op.binary.f32(i32 36, float %9405, float %9406)  ; FMin(a,b)
  %9412 = call float @dx.op.binary.f32(i32 36, float %9404, float %9411)  ; FMin(a,b)
  %9413 = call float @dx.op.binary.f32(i32 36, float %9412, float %9407)  ; FMin(a,b)
  %9414 = fmul fast float %9410, 2.550000e+02
  %9415 = fadd fast float %9414, 0x3F70101020000000
  %9416 = fptoui float %9415 to i32
  %9417 = fmul fast float %9413, 2.550000e+02
  %9418 = fadd fast float %9417, 0x3F70101020000000
  %9419 = fptoui float %9418 to i32
  %9420 = icmp ult i32 %9416, %9419
  br i1 %9420, label %9421, label %9590

; <label>:9421                                    ; preds = %9378
  %9422 = fcmp fast ogt float %84, 9.843750e-01
  %9423 = fadd fast float %8216, -4.000000e+00
  %9424 = select i1 %9422, float -4.000000e+00, float %9423
  %9425 = call float @dx.op.binary.f32(i32 35, float %9424, float 0.000000e+00)  ; FMax(a,b)
  %9426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9427 = extractvalue %dx.types.CBufRet.f32 %9426, 0
  %9428 = fadd fast float %9427, %9425
  %9429 = extractvalue %dx.types.CBufRet.f32 %9426, 2
  %9430 = fmul fast float %9428, %9429
  %9431 = call float @dx.op.unary.f32(i32 23, float %9430)  ; Log(value)
  %9432 = extractvalue %dx.types.CBufRet.f32 %9426, 3
  %9433 = fmul fast float %9432, %9431
  %9434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9435 = extractvalue %dx.types.CBufRet.f32 %9434, 2
  %9436 = fmul fast float %9433, %9435
  %9437 = call float @dx.op.unary.f32(i32 7, float %9436)  ; Saturate(value)
  %9438 = uitofp i32 %9416 to float
  %9439 = uitofp i32 %9419 to float
  %9440 = fadd fast float %9438, 5.000000e-01
  %9441 = fadd fast float %9439, 5.000000e-01
  %9442 = fmul fast float %9435, %9440
  %9443 = fmul fast float %9435, %9441
  %9444 = fadd fast float %9442, 0x3F0FFB4800000000
  %9445 = fadd fast float %9443, 0xBF0FFB4800000000
  %9446 = call float @dx.op.binary.f32(i32 35, float %9437, float %9444)  ; FMax(a,b)
  %9447 = call float @dx.op.binary.f32(i32 36, float %9446, float %9445)  ; FMin(a,b)
  %9448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9449 = extractvalue %dx.types.CBufRet.f32 %9448, 1
  %9450 = extractvalue %dx.types.CBufRet.f32 %9448, 2
  %9451 = extractvalue %dx.types.CBufRet.f32 %9448, 0
  %9452 = select i1 %7954, float %9451, float 0.000000e+00
  %9453 = fmul fast float %9449, %9447
  %9454 = fadd fast float %9452, %9453
  %9455 = fadd fast float %9452, %9450
  %9456 = fsub fast float %9449, %9450
  %9457 = fadd fast float %9456, %9452
  %9458 = call float @dx.op.binary.f32(i32 35, float %9454, float %9455)  ; FMax(a,b)
  %9459 = call float @dx.op.binary.f32(i32 36, float %9458, float %9457)  ; FMin(a,b)
  %9460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %9391, float %9392, float %9459, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9461 = extractvalue %dx.types.ResRet.f32 %9460, 0
  %9462 = extractvalue %dx.types.ResRet.f32 %9460, 1
  %9463 = extractvalue %dx.types.ResRet.f32 %9460, 2
  %9464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9465 = extractvalue %dx.types.CBufRet.i32 %9464, 0
  %9466 = extractvalue %dx.types.CBufRet.i32 %9464, 1
  %9467 = uitofp i32 %9465 to float
  %9468 = uitofp i32 %9466 to float
  %9469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9470 = extractvalue %dx.types.CBufRet.f32 %9469, 0
  %9471 = extractvalue %dx.types.CBufRet.f32 %9469, 1
  %9472 = fmul fast float %9467, %9391
  %9473 = fmul fast float %9468, %9392
  %9474 = fadd fast float %9472, -5.000000e-01
  %9475 = fadd fast float %9473, -5.000000e-01
  %9476 = call float @dx.op.unary.f32(i32 22, float %9474)  ; Frc(value)
  %9477 = call float @dx.op.unary.f32(i32 22, float %9475)  ; Frc(value)
  %9478 = fmul fast float %9476, %9476
  %9479 = fmul fast float %9478, %9476
  %9480 = fsub fast float 3.000000e+00, %9476
  %9481 = fmul fast float %9478, %9480
  %9482 = fmul fast float %9476, 3.000000e+00
  %9483 = fmul fast float %9479, 3.000000e+00
  %9484 = fmul fast float %9478, 6.000000e+00
  %9485 = fsub fast float %9483, %9484
  %9486 = fadd fast float %9485, 4.000000e+00
  %9487 = fmul fast float %9486, 0x3FC5555560000000
  %9488 = fmul fast float %9479, -3.000000e+00
  %9489 = fadd fast float %9478, %9476
  %9490 = fmul fast float %9489, 3.000000e+00
  %9491 = fadd fast float %9488, 1.000000e+00
  %9492 = fadd fast float %9491, %9490
  %9493 = fmul fast float %9479, 0x3FC5555560000000
  %9494 = fmul fast float %9477, %9477
  %9495 = fmul fast float %9494, %9477
  %9496 = fsub fast float 3.000000e+00, %9477
  %9497 = fmul fast float %9494, %9496
  %9498 = fmul fast float %9477, 3.000000e+00
  %9499 = fmul fast float %9495, 3.000000e+00
  %9500 = fmul fast float %9494, 6.000000e+00
  %9501 = fsub fast float %9499, %9500
  %9502 = fadd fast float %9501, 4.000000e+00
  %9503 = fmul fast float %9502, 0x3FC5555560000000
  %9504 = fmul fast float %9495, -3.000000e+00
  %9505 = fadd fast float %9494, %9477
  %9506 = fmul fast float %9505, 3.000000e+00
  %9507 = fadd fast float %9504, 1.000000e+00
  %9508 = fadd fast float %9507, %9506
  %9509 = fmul fast float %9495, 0x3FC5555560000000
  %9510 = fadd fast float %9476, 1.000000e+00
  %9511 = fsub fast float 1.000000e+00, %9482
  %9512 = fadd fast float %9511, %9481
  %9513 = fadd fast float %9512, %9486
  %9514 = fmul fast float %9513, 0x3FC5555560000000
  %9515 = fdiv fast float %9487, %9514
  %9516 = fsub fast float %9510, %9515
  %9517 = fsub fast float 1.000000e+00, %9476
  %9518 = fadd fast float %9492, %9479
  %9519 = fmul fast float %9518, 0x3FC5555560000000
  %9520 = fdiv fast float %9493, %9519
  %9521 = fadd fast float %9517, %9520
  %9522 = fadd fast float %9477, 1.000000e+00
  %9523 = fsub fast float 1.000000e+00, %9498
  %9524 = fadd fast float %9523, %9497
  %9525 = fadd fast float %9524, %9502
  %9526 = fmul fast float %9525, 0x3FC5555560000000
  %9527 = fdiv fast float %9503, %9526
  %9528 = fsub fast float %9522, %9527
  %9529 = fsub fast float 1.000000e+00, %9477
  %9530 = fadd fast float %9508, %9495
  %9531 = fmul fast float %9530, 0x3FC5555560000000
  %9532 = fdiv fast float %9509, %9531
  %9533 = fadd fast float %9532, %9529
  %9534 = fmul fast float %9516, %9470
  %9535 = fsub fast float %9391, %9534
  %9536 = fmul fast float %9521, %9470
  %9537 = fadd fast float %9536, %9391
  %9538 = fmul fast float %9533, %9471
  %9539 = fadd fast float %9538, %9392
  %9540 = fmul fast float %9528, %9471
  %9541 = fsub fast float %9392, %9540
  %9542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9535, float %9541, float %9459, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9543 = extractvalue %dx.types.ResRet.f32 %9542, 0
  %9544 = extractvalue %dx.types.ResRet.f32 %9542, 1
  %9545 = extractvalue %dx.types.ResRet.f32 %9542, 2
  %9546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9537, float %9541, float %9459, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9547 = extractvalue %dx.types.ResRet.f32 %9546, 0
  %9548 = extractvalue %dx.types.ResRet.f32 %9546, 1
  %9549 = extractvalue %dx.types.ResRet.f32 %9546, 2
  %9550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9535, float %9539, float %9459, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9551 = extractvalue %dx.types.ResRet.f32 %9550, 0
  %9552 = extractvalue %dx.types.ResRet.f32 %9550, 1
  %9553 = extractvalue %dx.types.ResRet.f32 %9550, 2
  %9554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9537, float %9539, float %9459, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9555 = extractvalue %dx.types.ResRet.f32 %9554, 0
  %9556 = extractvalue %dx.types.ResRet.f32 %9554, 1
  %9557 = extractvalue %dx.types.ResRet.f32 %9554, 2
  %9558 = fsub fast float %9551, %9543
  %9559 = fsub fast float %9552, %9544
  %9560 = fsub fast float %9553, %9545
  %9561 = fmul fast float %9558, %9531
  %9562 = fmul fast float %9559, %9531
  %9563 = fmul fast float %9560, %9531
  %9564 = fadd fast float %9561, %9543
  %9565 = fadd fast float %9562, %9544
  %9566 = fadd fast float %9563, %9545
  %9567 = fsub fast float %9555, %9547
  %9568 = fsub fast float %9556, %9548
  %9569 = fsub fast float %9557, %9549
  %9570 = fmul fast float %9567, %9531
  %9571 = fmul fast float %9568, %9531
  %9572 = fmul fast float %9569, %9531
  %9573 = fsub fast float %9547, %9564
  %9574 = fadd fast float %9573, %9570
  %9575 = fsub fast float %9548, %9565
  %9576 = fadd fast float %9575, %9571
  %9577 = fsub fast float %9549, %9566
  %9578 = fadd fast float %9577, %9572
  %9579 = fmul fast float %9574, %9519
  %9580 = fmul fast float %9576, %9519
  %9581 = fmul fast float %9578, %9519
  %9582 = fadd fast float %9579, %9564
  %9583 = fadd fast float %9580, %9565
  %9584 = fadd fast float %9581, %9566
  %9585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9586 = extractvalue %dx.types.CBufRet.f32 %9585, 1
  %9587 = fmul fast float %9582, %9586
  %9588 = fmul fast float %9583, %9586
  %9589 = fmul fast float %9584, %9586
  br label %9590

; <label>:9590                                    ; preds = %9421, %9378
  %9591 = phi float [ %9461, %9421 ], [ 1.000000e+00, %9378 ]
  %9592 = phi float [ %9462, %9421 ], [ 1.000000e+00, %9378 ]
  %9593 = phi float [ %9463, %9421 ], [ 1.000000e+00, %9378 ]
  %9594 = phi float [ %9587, %9421 ], [ 0.000000e+00, %9378 ]
  %9595 = phi float [ %9588, %9421 ], [ 0.000000e+00, %9378 ]
  %9596 = phi float [ %9589, %9421 ], [ 0.000000e+00, %9378 ]
  %9597 = fmul fast float %9594, %7932
  %9598 = fmul fast float %9595, %7932
  %9599 = fmul fast float %9596, %7932
  %9600 = fmul fast float %9591, %9385
  %9601 = call float @dx.op.dot3.f32(i32 55, float %9591, float %9592, float %9593, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9602 = call float @dx.op.dot3.f32(i32 55, float %9597, float %9598, float %9599, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9603 = select i1 %213, float %9601, float %9591
  %9604 = select i1 %213, float %9601, float %9592
  %9605 = select i1 %213, float 1.000000e+00, float %9593
  %9606 = select i1 %213, float %9602, float %9597
  %9607 = select i1 %213, float 0.000000e+00, float %9598
  %9608 = select i1 %213, float 0.000000e+00, float %9599
  %9609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9610 = extractvalue %dx.types.CBufRet.i32 %9609, 3
  %9611 = and i32 %9610, 3
  %9612 = icmp ne i32 %9611, 0
  %9613 = and i32 %9610, 4
  %9614 = icmp ne i32 %9613, 0
  %9615 = and i1 %9612, %9614
  %9616 = and i1 %213, %9615
  br i1 %9616, label %9617, label %9623

; <label>:9617                                    ; preds = %9590
  %9618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9619 = extractvalue %dx.types.CBufRet.f32 %9618, 1
  %9620 = fadd fast float %9600, -1.000000e+00
  %9621 = fmul fast float %9619, %9620
  %9622 = fadd fast float %9621, 1.000000e+00
  br label %9623

; <label>:9623                                    ; preds = %9617, %9590
  %9624 = phi float [ %9622, %9617 ], [ %9600, %9590 ]
  %9625 = fadd fast float %9382, %9379
  %9626 = fmul fast float %9603, %9625
  %9627 = fadd fast float %9626, %9606
  %9628 = fadd fast float %9383, %9380
  %9629 = fmul fast float %9604, %9628
  %9630 = fadd fast float %9629, %9607
  %9631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9632 = extractvalue %dx.types.CBufRet.f32 %9631, 0
  br i1 %213, label %9633, label %9656

; <label>:9633                                    ; preds = %9623
  %9634 = fadd fast float %9627, %9630
  %9635 = fmul fast float %9632, %9634
  %9636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9637 = extractvalue %dx.types.CBufRet.f32 %9636, 3
  %9638 = extractvalue %dx.types.CBufRet.f32 %7936, 1
  %9639 = fsub fast float %7941, %7935
  %9640 = fadd fast float %9639, %7942
  %9641 = fsub fast float %9640, %9638
  %9642 = extractvalue %dx.types.CBufRet.f32 %7936, 2
  %9643 = fmul fast float %9641, %9642
  %9644 = call float @dx.op.unary.f32(i32 7, float %9643)  ; Saturate(value)
  %9645 = fsub fast float %9644, %9637
  %9646 = fmul fast float %9645, %9624
  %9647 = fadd fast float %9646, %9637
  %9648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9649 = extractvalue %dx.types.CBufRet.f32 %9648, 0
  %9650 = fsub fast float %9647, %9649
  %9651 = fmul fast float %9650, 1.000000e+01
  %9652 = call float @dx.op.unary.f32(i32 7, float %9651)  ; Saturate(value)
  %9653 = fmul fast float %9652, %7931
  %9654 = fadd fast float %9653, %7932
  %9655 = fmul fast float %9654, %9647
  br label %9680

; <label>:9656                                    ; preds = %9623
  %9657 = fadd fast float %9384, %9381
  %9658 = fmul fast float %9605, %9657
  %9659 = fadd fast float %9658, %9608
  %9660 = fmul fast float %9632, %9627
  %9661 = fmul fast float %9632, %9630
  %9662 = fmul fast float %9632, %9659
  %9663 = call float @dx.op.binary.f32(i32 35, float %9661, float %9662)  ; FMax(a,b)
  %9664 = call float @dx.op.binary.f32(i32 35, float %9660, float %9663)  ; FMax(a,b)
  %9665 = call float @dx.op.binary.f32(i32 35, float %9664, float %7932)  ; FMax(a,b)
  %9666 = fcmp fast ugt float %9665, 0x3F10000000000000
  br i1 %9666, label %9668, label %9667

; <label>:9667                                    ; preds = %9656
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9668

; <label>:9668                                    ; preds = %9667, %9656
  %9669 = add i32 %48, 356
  %9670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %9669, i32 undef)  ; BufferLoad(srv,index,wot)
  %9671 = extractvalue %dx.types.ResRet.i32 %9670, 0
  %9672 = and i32 %9671, 32
  %9673 = icmp eq i32 %9672, 0
  br i1 %9673, label %9680, label %9674

; <label>:9674                                    ; preds = %9668
  %9675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9676 = extractvalue %dx.types.CBufRet.f32 %9675, 0
  %9677 = fmul fast float %9676, 0x3FE99999A0000000
  %9678 = fadd fast float %9676, %9660
  %9679 = fadd fast float %9677, %9662
  br label %9680

; <label>:9680                                    ; preds = %9674, %9668, %9633
  %9681 = phi float [ %9635, %9633 ], [ %9678, %9674 ], [ %9660, %9668 ]
  %9682 = phi float [ %9655, %9633 ], [ %9661, %9674 ], [ %9661, %9668 ]
  %9683 = phi float [ %9654, %9633 ], [ %9679, %9674 ], [ %9662, %9668 ]
  %9684 = phi float [ %9654, %9633 ], [ %7932, %9674 ], [ %7932, %9668 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9685 = call float @dx.op.binary.f32(i32 36, float %9681, float 3.225500e+04)  ; FMin(a,b)
  %9686 = call float @dx.op.binary.f32(i32 36, float %9682, float 3.225500e+04)  ; FMin(a,b)
  %9687 = call float @dx.op.binary.f32(i32 36, float %9683, float 3.225500e+04)  ; FMin(a,b)
  %9688 = call float @dx.op.binary.f32(i32 36, float %9684, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9685)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9686)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9687)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9688)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!61}
!dx.entryPoints = !{!62}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !50, !53}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !29}
!29 = !{i32 0, i32 5}
!30 = !{i32 22, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !37}
!37 = !{i32 0, i32 14}
!38 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!39 = !{i32 30, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!40 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!41 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!43 = !{i32 34, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!44 = !{i32 35, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!45 = !{i32 36, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!46 = !{i32 37, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!47 = !{i32 38, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !37}
!48 = !{i32 39, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!50 = !{!51, !52}
!51 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!52 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!53 = !{!54, !55, !56, !57, !58, !59, !60}
!54 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!55 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!56 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!57 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!58 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!59 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!60 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!61 = !{[46 x i32] [i32 44, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
!62 = !{void ()* @ps_main, !"ps_main", !63, !4, !84}
!63 = !{!64, !82, null}
!64 = !{!65, !68, !69, !71, !73, !74, !75, !76, !77, !78, !79, !81}
!65 = !{i32 0, !"SV_Position", i8 9, i8 3, !66, i8 4, i32 1, i8 4, i32 0, i8 0, !67}
!66 = !{i32 0}
!67 = !{i32 3, i32 15}
!68 = !{i32 1, !"COLOR", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 1, i8 0, !67}
!69 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 2, i8 0, !70}
!70 = !{i32 3, i32 3}
!71 = !{i32 3, !"NORMAL", i8 9, i8 0, !66, i8 2, i32 1, i8 3, i32 3, i8 0, !72}
!72 = !{i32 3, i32 7}
!73 = !{i32 4, !"TANGENT", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 4, i8 0, !67}
!74 = !{i32 5, !"SH_RED", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 5, i8 0, !67}
!75 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 6, i8 0, !67}
!76 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 7, i8 0, !67}
!77 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !66, i8 2, i32 1, i8 2, i32 8, i8 0, !70}
!78 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 9, i8 0, !67}
!79 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !66, i8 1, i32 1, i8 4, i32 10, i8 0, !80}
!80 = !{i32 3, i32 13}
!81 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !66, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!82 = !{!83}
!83 = !{i32 0, !"SV_Target", i8 9, i8 16, !66, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!84 = !{i32 0, i64 16}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = !{!94, !94, i64 0}
!94 = !{!"int", !95, i64 0}
!95 = !{!"omnipotent char", !96, i64 0}
!96 = !{!"Simple C/C++ TBAA"}
!97 = !{!98, !100, !102, !104}
!98 = distinct !{!98, !99, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!99 = distinct !{!99, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!100 = distinct !{!100, !101, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!101 = distinct !{!101, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!102 = distinct !{!102, !103, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!103 = distinct !{!103, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!104 = distinct !{!104, !105, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!105 = distinct !{!105, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = !{!108, !108, i64 0}
!108 = !{!"float", !95, i64 0}
!109 = distinct !{!109, !87}
!110 = distinct !{!110, !87}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = !{!119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!119 = distinct !{!119, !120, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!120 = distinct !{!120, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!121 = distinct !{!121, !122, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!122 = distinct !{!122, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!123 = distinct !{!123, !122, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!124 = distinct !{!124, !125, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!125 = distinct !{!125, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!126 = distinct !{!126, !125, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!127 = distinct !{!127, !125, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!128 = distinct !{!128, !129, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!129 = distinct !{!129, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!130 = distinct !{!130, !129, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!131 = distinct !{!131, !129, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!132 = distinct !{!132, !133, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!133 = distinct !{!133, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"\01?sort@@YAXAIAM00@Z: %c"}
!136 = distinct !{!136, !"\01?sort@@YAXAIAM00@Z"}
!137 = !{!138, !139, !119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!138 = distinct !{!138, !136, !"\01?sort@@YAXAIAM00@Z: %a"}
!139 = distinct !{!139, !136, !"\01?sort@@YAXAIAM00@Z: %b"}
!140 = !{!139}
!141 = !{!138, !135, !119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!142 = !{!138}
!143 = !{!139, !135, !119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!144 = !{!145}
!145 = distinct !{!145, !146, !"\01?sort@@YAXAIAM00@Z: %c"}
!146 = distinct !{!146, !"\01?sort@@YAXAIAM00@Z"}
!147 = !{!148, !149, !119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!148 = distinct !{!148, !146, !"\01?sort@@YAXAIAM00@Z: %a"}
!149 = distinct !{!149, !146, !"\01?sort@@YAXAIAM00@Z: %b"}
!150 = !{!149}
!151 = !{!148, !145, !119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!152 = !{!148}
!153 = !{!149, !145, !119, !121, !123, !124, !126, !127, !128, !130, !131, !132}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 2}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}

